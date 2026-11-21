"""Recheck a delivered pinned index and actually solve; no package installation."""

import os
from pathlib import Path
import re
import subprocess

from artifact_io import RootRegistry, digest, read, write_once
from nonpos_opam_plan_v2 import (
    COMPILER,
    plan_environment,
    tree_entries,
    verify_recovered_repository,
)


def recover(declaration, out, refs, config, opam, tools):
    recovery = refs.read(config["recovery_ref"])
    if (
        set(recovery)
        != {"format", "checkpoint_ref", "tree_ref", "config_ref", "repositories_ref"}
        or recovery["format"] != "core036.nonpos-opam-recovery-inputs.v2"
    ):
        raise ValueError("NonposRecoveryContext")
    checkpoint_path = refs.verify(recovery["checkpoint_ref"])
    checkpoint = refs.read(recovery["checkpoint_ref"])
    name = checkpoint["attempt_id"]
    work, private = refs.roots["work"], refs.roots["private"]
    if (
        re.fullmatch(r"a[0-9]{4,16}", name) is None
        or checkpoint_path != work / "attempts" / name / "checkpoint.json"
        or checkpoint["stage_outcome"] != "resource_stopped"
        or checkpoint["source_validation_error"] is not None
    ):
        raise ValueError("NonposRecoveryRequiresClosedResourceStop")
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    receipt_path = checkpoint_path.parent / "child/receipt.json"
    if read(receipt_path)["stop_reason"] != "ObservationCadenceMissed":
        raise ValueError("NonposRecoveryStopReason")
    tree_path = refs.verify(recovery["tree_ref"])
    if (
        tree_path
        != private / "nonpos-opam-plan" / name / "commands/repository-tree/stdout.txt"
    ):
        raise ValueError("NonposRecoveryTreeOwnership")
    raw_tree = tree_path.read_bytes()
    expected = tree_entries(raw_tree)
    original = private / "tmp/nonpos-opam-plan" / name
    raw_config = refs.verify(recovery["config_ref"]).read_bytes()
    raw_repositories = refs.verify(recovery["repositories_ref"]).read_bytes()
    opamroot = verify_recovered_repository(
        original, expected, raw_config, raw_repositories
    )
    out.mkdir(parents=True)
    scratch = private / "tmp/nonpos-opam-plan" / declaration["record_id"]
    scratch.mkdir(parents=True, exist_ok=False)
    (scratch / "tmp").mkdir()
    env = plan_environment(tools, scratch, os.environ)
    env["OPAMROOT"] = str(opamroot)
    commands = []

    def run(label, argv, cwd=scratch):
        log = out / "commands" / label
        log.mkdir(parents=True)
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=cwd,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=300,
                check=False,
            )
        row = dict(
            label=label,
            argv=argv,
            cwd=str(cwd),
            exit_code=result.returncode,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        if result.returncode:
            raise ValueError("NonposRecoveryCommand:" + label)
        return (log / "stdout.txt").read_bytes()

    # Existing immutable tool outputs remain rooted by the closed import run.
    packages = sorted({str(Path(*Path(t["path"]).parts[:4])) for t in tools.values()})
    for index, package in enumerate(packages):
        link = private / "gcroots" / name / ("opam-tool-" + str(index))
        if not link.is_symlink() or os.readlink(link) != package:
            raise ValueError("NonposRecoveryToolRoot")
    git = [
        tools["git"]["path"],
        "-c",
        "credential.helper=",
        "-c",
        "core.hooksPath=/dev/null",
    ]
    objects = original / "git-objects"
    if (
        run("repository-head", [*git, "rev-parse", "HEAD"], objects).decode().strip()
        != config["repository_commit"]
    ):
        raise ValueError("NonposRecoveryRepositoryCommit")
    if (
        run(
            "repository-tree",
            [*git, "ls-tree", "-r", "-z", config["repository_commit"]],
            objects,
        )
        != raw_tree
    ):
        raise ValueError("NonposRecoveryRepositoryTree")
    # A serialized opam cache is not authority for the independently checked
    # index. Retain it in this new owned scratch and force fresh metadata parsing.
    saved = scratch / "prior-repository-cache"
    saved.mkdir()
    caches = []
    for path in sorted((opamroot / "repo").glob("state-*.cache")):
        if (
            path.is_symlink()
            or not path.is_file()
            or re.fullmatch(r"state-[A-F0-9]{8}\.cache", path.name) is None
            or path.stat().st_size > 64 * 1024**2
        ):
            raise ValueError("NonposRecoveryCacheFile")
        row = dict(
            original=str(path),
            retained=str(saved / path.name),
            bytes=path.stat().st_size,
            sha256=digest(path),
        )
        path.rename(saved / path.name)
        caches.append(row)
    write_once(out / "retained-prior-cache.json", caches)
    run(
        "compiler-plan",
        [
            str(opam),
            "switch",
            "create",
            "core036",
            COMPILER,
            "--dry-run",
            "--show-actions",
            "--yes",
            "--json=" + str(out / "compiler-plan.json"),
        ],
    )
    plans = sorted(out.glob("compiler-plan*.json"))
    if len(plans) != 1 or not plans[0].stat().st_size:
        raise ValueError("NonposRecoveryCompilerPlanMissing")
    verify_recovered_repository(original, expected, raw_config, raw_repositories)
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-opam-plan.v2",
            source_subject_ref=declaration["source_subject_ref"],
            recovery_ref=config["recovery_ref"],
            recovered_attempt=name,
            repository_commit=config["repository_commit"],
            repository=str(original / "repository"),
            verified_repository_files=len(expected),
            repository_tree_sha256=digest(tree_path),
            mutable_opamroot=str(opamroot),
            scratch=str(scratch),
            compiler=COMPILER,
            compiler_plan=str(plans[0]),
            compiler_plan_sha256=digest(plans[0]),
            bootstrap_ref=config["bootstrap_ref"],
            tools=tools,
            commands=commands,
            prior_attempt_reclassified=False,
            prior_cache_reused=False,
            package_installation_requested=False,
            compiler_build_requested=False,
            zip_extractor_available=False,
            ocaml_compiler_ready=False,
            new_translator_compiled=False,
            translation_backend_adopted=False,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
