"""Solve fixed translator build dependencies; never install a package here."""

import argparse
import os
from pathlib import Path
import re
import subprocess

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from nonpos_compiler_v2 import PACKAGES
from nonpos_opam_plan_v2 import plan_environment
from nonpos_source_prepare_v2 import PINNED, CHARON, source_inventory

E = Path(__file__).resolve().parent
R = E.parents[1]
REQUESTS = [
    "dune>=3.7",
    "calendar",
    "domainslib",
    "easy_logging",
    "logs",
    "menhir",
    "menhirLib",
    "ocamlgraph",
    "ppx_deriving",
    "ppx_deriving_hash>=0.1.5",
    "ppx_deriving_yojson",
    "ppxlib",
    "progress",
    "unionFind",
    "visitors>=20260520",
    "yojson",
    "zarith",
]


def dependency_solution(plan, required):
    if (
        not isinstance(plan, dict)
        or plan.get("opam-version") != "2.3.0"
        or plan.get("switch") != "core036"
        or not isinstance(plan.get("solution"), list)
        or not 1 <= len(plan["solution"]) <= 128
    ):
        raise ValueError("NonposDependencyPlanContext")
    result, names = [], set()
    for action in plan["solution"]:
        if not isinstance(action, dict) or set(action) != {"install"}:
            raise ValueError("NonposDependencyPlanAction")
        row = action["install"]
        if not isinstance(row, dict) or set(row) != {"name", "version"}:
            raise ValueError("NonposDependencyPlanPackage")
        name, version = row["name"], row["version"]
        if (
            not isinstance(name, str)
            or re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9+_.-]{0,127}", name) is None
            or not isinstance(version, str)
            or re.fullmatch(r"[A-Za-z0-9+_.~=\-]{1,128}", version) is None
            or name in names
            or name in {pair[0] for pair in PACKAGES}
        ):
            raise ValueError("NonposDependencyPackageOrCompilerChange")
        names.add(name)
        result.append((name, version))
    if not set(required) <= names:
        raise ValueError("NonposDependencyMissingRequestedPackage")
    return sorted(result)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    out = Path(args.out)
    name = declaration["record_id"]
    if out != private / "nonpos-dependencies" / name or out.exists():
        raise ValueError("NonposDependencyOutputOwnership")
    config = read(E / "nonpos-dependencies-inputs-v2.json")
    if (
        set(config)
        != {
            "format",
            "compiler_ref",
            "compiler_checkpoint_ref",
            "source_ref",
            "source_checkpoint_ref",
            "request_ref",
        }
        or config["format"] != "core036.nonpos-dependencies-inputs.v2"
    ):
        raise ValueError("NonposDependencyContext")
    for key, prefix in (("compiler", "nonpos-compiler"), ("source", "nonpos-source")):
        checkpoint_path = refs.verify(config[key + "_checkpoint_ref"])
        RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
        checkpoint = refs.read(config[key + "_checkpoint_ref"])
        if (
            checkpoint["stage_outcome"] != "succeeded"
            or refs.verify(config[key + "_ref"])
            != private / prefix / checkpoint["attempt_id"] / "result.json"
        ):
            raise ValueError("NonposDependencyPrerequisiteNotClosed")
    compiler = refs.read(config["compiler_ref"])
    prepared = refs.read(config["source_ref"])
    if (
        compiler["ocaml_compiler_ready"] is not True
        or compiler["smoke_result"] != "42"
        or prepared["source_prepared"] is not True
        or prepared["pinned_aeneas_commit"] != PINNED
        or prepared["pinned_charon_commit"] != CHARON
    ):
        raise ValueError("NonposDependencyPrerequisite")
    inventory_path = refs.verify(config["source_ref"]).parent / "source-inventory.json"
    if digest(inventory_path) != prepared["source_inventory_sha256"]:
        raise ValueError("NonposDependencySourceInventory")
    inventory = read(inventory_path)
    roots = {key: Path(value) for key, value in prepared["source_roots"].items()}
    if (
        source_inventory(roots["aeneas"]) != inventory["candidate_aeneas"]
        or source_inventory(roots["charon"]) != inventory["original"]["charon"]
    ):
        raise ValueError("NonposDependencyPreparedSourceChanged")
    request = refs.read(config["request_ref"])
    if (
        set(request) != {"format", "requests", "source_refs"}
        or request["format"] != "core036.nonpos-dependency-request.v2"
        or request["requests"] != REQUESTS
    ):
        raise ValueError("NonposDependencyRequest")
    expected_metadata = {
        roots["aeneas"] / "src/aeneas.opam",
        roots["charon"] / "charon.opam",
        roots["charon"] / "name_matcher_parser.opam",
    }
    if (
        len(request["source_refs"]) != 3
        or {refs.verify(ref) for ref in request["source_refs"]} != expected_metadata
    ):
        raise ValueError("NonposDependencyMetadataBinding")
    plan = refs.read(compiler["plan_ref"])
    bootstrap = refs.read(plan["bootstrap_ref"])
    opam = Path(bootstrap["executable"])
    if (
        opam != private / "nonpos-opam-bootstrap/a0274/opam-2.3.0-x86_64-linux"
        or digest(opam) != bootstrap["executable_sha256"]
    ):
        raise ValueError("NonposDependencyOpamBytes")
    tools = plan["tools"]
    for tool in tools.values():
        if (
            not Path(tool["path"]).is_relative_to("/nix/store")
            or digest(tool["path"]) != tool["sha256"]
        ):
            raise ValueError("NonposDependencyToolChanged")
    prefix = Path(compiler["compiler_prefix"])
    opamroot = Path(compiler["mutable_opamroot"])
    if prefix != opamroot / "core036" or not opamroot.is_relative_to(
        private / "tmp/nonpos-opam-plan"
    ):
        raise ValueError("NonposDependencyCompilerOwnership")
    for label in ("ocamlc", "ocamlopt"):
        if (
            Path(compiler[label]) != prefix / "bin" / label
            or digest(compiler[label]) != compiler[label + "_sha256"]
        ):
            raise ValueError("NonposDependencyCompilerBytes")
    check_prepared_native_v2(E / "toolchain-v2.json")
    out.mkdir(parents=True)
    scratch = private / "tmp/nonpos-dependencies" / name
    scratch.mkdir(parents=True, exist_ok=False)
    (scratch / "tmp").mkdir()
    env = plan_environment(tools, scratch, os.environ)
    env.update(
        OPAMROOT=str(opamroot),
        OPAMSWITCH="core036",
        PATH=str(prefix / "bin") + os.pathsep + env["PATH"],
    )
    commands = []

    def run(label, argv):
        log = out / "commands" / label
        log.mkdir(parents=True)
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=scratch,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=300,
                check=False,
            )
        row = dict(
            label=label,
            argv=argv,
            exit_code=result.returncode,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        if result.returncode:
            raise ValueError("NonposDependencyCommand:" + label)
        return (log / "stdout.txt").read_bytes()

    for label in ("ocamlc", "ocamlopt"):
        if run(label + "-version", [compiler[label], "-version"]).strip() != b"5.3.0":
            raise ValueError("NonposDependencyCompilerVersion")
    run("install-help", [str(opam), "install", "--help=plain"])
    plan_path = out / "dependency-plan.json"
    run(
        "dependency-plan",
        [
            str(opam),
            "install",
            *REQUESTS,
            "--dry-run",
            "--show-actions",
            "--require-checksums",
            "--no-depexts",
            "--yes",
            "--json=" + str(plan_path),
        ],
    )
    packages = dependency_solution(
        read(plan_path), {re.split(r"[<>=!]", request, 1)[0] for request in REQUESTS}
    )
    for label in ("ocamlc", "ocamlopt"):
        if digest(compiler[label]) != compiler[label + "_sha256"]:
            raise ValueError("NonposDependencyCompilerMutated")
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-dependency-plan.v2",
            source_subject_ref=declaration["source_subject_ref"],
            compiler_ref=config["compiler_ref"],
            source_ref=config["source_ref"],
            request_ref=config["request_ref"],
            plan=str(plan_path),
            plan_sha256=digest(plan_path),
            packages=packages,
            commands=commands,
            compiler_unchanged=True,
            package_installation_requested=False,
            dependency_sources_verified=False,
            dependencies_installed=False,
            new_translator_compiled=False,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
