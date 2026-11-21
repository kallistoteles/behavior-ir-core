"""Prepare a pinned source-only translator repair; never execute fetched code."""

import argparse
import hashlib
import os
import re
import stat
import subprocess
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2

E = Path(__file__).resolve().parent
R = E.parents[1]
PINNED = "1dc8ad31b1b062a77c50e29144a6c7bba955fa09"
CHARON = "454586e9b770231e66d2062993e632dfc06463e2"
PATCH_DIGEST = "9855632dbae15c9409a235e6ceee32da023e392624c3730e7d43524099767051"
PATHS = [
    "Translate.ml",
    "extract/Extract.ml",
    "extract/ExtractBase.ml",
    "extract/ExtractTypes.ml",
]
ORIGINAL_BLOBS = [
    "52e846ba24f96f048defbb86875c65c07a867f3c",
    "018541a614aec7142918d715da5eb7b1fe47475e",
    "fecf97ba9b8c956750ddd18e0ba48972847077a3",
    "406da87cf207bb664d3695def4827f34bcf6d14b",
]
CANDIDATE_HASHES = [
    "c35d3fa6c085de1e847f67f19b250e9fdc55580b6d1fc5fb4f1605ac4608b08d",
    "ebf29d2340cac479239851219cb642b722008daa7a09c5cf2283ea0cf35c4c7a",
    "69ba91a3601f5695ff61b4ddfdd4d4c2c6bf14092d426e860a492b39c8117071",
    "d2cf448a2933e89a6d9784ca11c5b1f0980289d64349b1e731683ba97d7126fe",
]


def verify_patch(raw, expected_digest):
    if (
        not raw
        or len(raw) > 64 * 1024
        or hashlib.sha256(raw).hexdigest() != expected_digest
        or b"GIT binary patch" in raw
    ):
        raise ValueError("NonposSourcePatchIdentity")
    old = re.findall(rb"^--- a/([^\n]+)$", raw, re.MULTILINE)
    new = re.findall(rb"^\+\+\+ b/([^\n]+)$", raw, re.MULTILINE)
    expected = [path.encode() for path in PATHS]
    if old != expected or new != expected:
        raise ValueError("NonposSourcePatchPaths")
    return list(PATHS)


def verify_charon_pin(raw):
    rows = [
        line.strip()
        for line in raw.splitlines()
        if line.strip() and not line.lstrip().startswith("#")
    ]
    if rows != [CHARON]:
        raise ValueError("NonposPinnedCharon")


def source_inventory(root):
    rows, total = [], 0
    for directory, dirs, files in os.walk(root, followlinks=False):
        links = [d for d in dirs if (Path(directory) / d).is_symlink()]
        dirs[:] = sorted(d for d in dirs if d != ".git")
        for name in sorted(files + [d for d in links if d != ".git"]):
            path = Path(directory) / name
            mode = path.lstat().st_mode
            if stat.S_ISLNK(mode):
                raw = os.readlink(path).encode()
                kind = "symlink-text"
            elif stat.S_ISREG(mode):
                if path.stat().st_size > 16 * 1024**2:
                    raise ValueError("NonposSourceFileBound")
                raw, kind = path.read_bytes(), "regular"
            else:
                raise ValueError("NonposSourceFileKind")
            total += len(raw)
            if total > 128 * 1024**2 or len(rows) >= 20_000:
                raise ValueError("NonposSourceInventoryBound")
            rows.append(
                dict(
                    path=str(path.relative_to(root)),
                    kind=kind,
                    bytes=len(raw),
                    sha256=hashlib.sha256(raw).hexdigest(),
                )
            )
    if not rows:
        raise ValueError("NonposEmptySource")
    return rows


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    name = declaration["record_id"]
    if out != private / "nonpos-source" / name or out.exists():
        raise ValueError("NonposSourceOutputOwnership")
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    config = read(E / "nonpos-source-inputs-v2.json")
    if (
        set(config)
        != {"format", "patch_ref", "library_result_ref", "library_checkpoint_ref"}
        or config["format"] != "core036.nonpos-source-inputs.v2"
    ):
        raise ValueError("NonposSourceContext")
    patch_path = refs.verify(config["patch_ref"])
    verify_patch(patch_path.read_bytes(), PATCH_DIGEST)
    library = refs.read(config["library_result_ref"])
    checkpoint_path = refs.verify(config["library_checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(config["library_checkpoint_ref"])
    if (
        library["candidate_library_kernel"] != "passed"
        or library["fresh_kernel_check"]["exit_code"] != 0
        or checkpoint["stage_outcome"] != "succeeded"
        or library["translation_backend_adopted"] is not False
    ):
        raise ValueError("NonposCandidateLibraryNotChecked")
    check_prepared_native_v2(E / "toolchain-v2.json")
    tool = read(E / "native-environment-inputs-v2.json")["tools"]["git"]
    if digest(tool["path"]) != tool["sha256"]:
        raise ValueError("NonposSourceGitChanged")
    out.mkdir(parents=True)
    scratch = private / "tmp/nonpos-source" / name
    scratch.mkdir(parents=True, exist_ok=False)
    env = {
        key: value for key, value in os.environ.items() if not key.startswith("GIT_")
    }
    env.update(
        GIT_CONFIG_NOSYSTEM="1",
        GIT_CONFIG_GLOBAL=os.devnull,
        GIT_TERMINAL_PROMPT="0",
        GIT_LFS_SKIP_SMUDGE="1",
    )
    commands = []

    def run(label, args, cwd):
        log = out / "commands" / label
        log.mkdir(parents=True)
        argv = [
            tool["path"],
            "-c",
            "credential.helper=",
            "-c",
            "core.hooksPath=/dev/null",
            "-c",
            "init.templateDir=",
            *args,
        ]
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
        commands.append(row)
        write_once(log / "result.json", row)
        if result.returncode:
            raise ValueError("NonposSourceCommand:" + label)
        return (log / "stdout.txt").read_bytes()

    source_roots = {}
    for repository, commit, directory in (
        ("aeneas", PINNED, "src"),
        ("charon", CHARON, "charon-ml"),
    ):
        root = scratch / repository
        root.mkdir()
        run(repository + "-init", ["init", "--initial-branch=core036"], root)
        run(
            repository + "-remote",
            [
                "remote",
                "add",
                "origin",
                "https://github.com/AeneasVerif/" + repository + ".git",
            ],
            root,
        )
        run(
            repository + "-fetch",
            [
                "-c",
                "protocol.version=2",
                "-c",
                "fetch.fsckObjects=true",
                "fetch",
                "--depth=1",
                "--filter=blob:none",
                "--no-tags",
                "origin",
                commit,
            ],
            root,
        )
        run(
            repository + "-sparse",
            ["sparse-checkout", "set", "--cone", directory],
            root,
        )
        run(repository + "-checkout", ["checkout", "--detach", commit], root)
        head = run(repository + "-head", ["rev-parse", "HEAD"], root).decode().strip()
        if head != commit:
            raise ValueError("NonposSourceCommit")
        source_roots[repository] = root
    original_inventory = {
        name: source_inventory(path) for name, path in source_roots.items()
    }
    aeneas = source_roots["aeneas"]
    for path, expected in zip(PATHS, ORIGINAL_BLOBS, strict=True):
        raw = (aeneas / "src" / path).read_bytes()
        blob = hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
        if blob != expected:
            raise ValueError("NonposPinnedPrinterSource")
    verify_charon_pin((aeneas / "charon-pin").read_text())
    run("patch-check", ["apply", "--check", "--directory=src", str(patch_path)], aeneas)
    run("patch-apply", ["apply", "--directory=src", str(patch_path)], aeneas)
    run("patch-whitespace", ["diff", "--check"], aeneas)
    changed = (
        run("changed-paths", ["diff", "--name-only", "-z"], aeneas).decode().split("\0")
    )
    if sorted(filter(None, changed)) != sorted("src/" + p for p in PATHS):
        raise ValueError("NonposUnexpectedSourceChange")
    for path, expected in zip(PATHS, CANDIDATE_HASHES, strict=True):
        if digest(aeneas / "src" / path) != expected:
            raise ValueError("NonposCandidatePrinterSource")
    write_once(
        out / "source-inventory.json",
        dict(original=original_inventory, candidate_aeneas=source_inventory(aeneas)),
    )
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-source-preparation.v2",
            source_subject_ref=declaration["source_subject_ref"],
            commands=commands,
            pinned_aeneas_commit=PINNED,
            pinned_charon_commit=CHARON,
            source_roots={name: str(path) for name, path in source_roots.items()},
            source_inventory_sha256=digest(out / "source-inventory.json"),
            patch_ref=config["patch_ref"],
            only_expected_printer_files_changed=True,
            source_prepared=True,
            new_translator_compiled=False,
            fetched_source_code_executed=False,
            translation_backend_adopted=False,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
