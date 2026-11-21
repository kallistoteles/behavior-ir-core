"""Exact original runtime-fixture supplement; existing source/index stays intact."""

import argparse
import hashlib
import os
import re
import subprocess
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from sources import CORE_REV, _path

E = Path(__file__).resolve().parent
R = E.parents[1]


def expected_runtime_inputs():
    spec = read(E / "gate-runtime-inputs-v2.json")
    if (
        set(spec) != {"format", "original_revision", "files", "scope"}
        or spec["format"] != "core036.gate-runtime-inputs.v2"
        or spec["original_revision"] != CORE_REV
    ):
        raise ValueError("GateRuntimeExpectedContext")
    if not isinstance(spec["files"], list) or not 0 < len(spec["files"]) <= 64:
        raise ValueError("GateRuntimeInputCount")
    names = set()
    for row in spec["files"]:
        if (
            set(row) != {"path", "bytes", "sha256", "git_blob", "mode"}
            or row["mode"] != "100644"
        ):
            raise ValueError("GateRuntimeExpectedFileShape")
        name = _path(row["path"])
        if (
            name in names
            or type(row["bytes"]) is not int
            or not 0 <= row["bytes"] <= 4 * 1024**2
            or re.fullmatch("[a-f0-9]{64}", row["sha256"]) is None
            or re.fullmatch("[a-f0-9]{40}", row["git_blob"]) is None
        ):
            raise ValueError("GateRuntimeExpectedFileIdentity")
        names.add(name)
    if sum(x["bytes"] for x in spec["files"]) > 4 * 1024**2:
        raise ValueError("GateRuntimeTotalBound")
    return spec


def validate_gate_runtime_inputs_v2(binding, *, registry, prepared, expected_spec):
    if not isinstance(binding, dict) or set(binding) != {
        "checkpoint_ref",
        "result_ref",
    }:
        raise ValueError("GateRuntimeBindingRequired")
    cp_path = registry.verify(binding["checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = registry.read(binding["checkpoint_ref"])
    declaration = read(cp_path.parent / "declaration.json")
    result_path = registry.verify(binding["result_ref"])
    result = registry.read(binding["result_ref"])
    private = Path(declaration["profile"]["roots"]["cache"])
    if (
        declaration["stage"] != "ENV"
        or declaration["slots"] != ["gate-runtime-fixtures"]
        or cp["stage_outcome"] != "succeeded"
        or result_path
        != private / "gate-runtime-fixtures" / cp["attempt_id"] / "result.json"
        or result["source_subject_ref"] != cp["source_subject_ref"]
        or result["format"] != "core036.gate-runtime-fixtures.v2"
        or result["expected_inputs"] != expected_spec
    ):
        raise ValueError("GateRuntimeProducerOrExpectedInputs")
    expected = {
        (role, row["path"]): row
        for role in ["core-original", "core-reuse"]
        for row in expected_spec["files"]
    }
    if not isinstance(result["files"], list) or len(result["files"]) != len(expected):
        raise ValueError("GateRuntimeIncompleteFiles")
    seen = set()
    for row in result["files"]:
        if set(row) != {"role", "path", "ref"}:
            raise ValueError("GateRuntimeActualFileShape")
        key = (row["role"], row["path"])
        if key not in expected or key in seen:
            raise ValueError("GateRuntimeSubstitutedOrDuplicateFile")
        seen.add(key)
        item = expected[key]
        path = registry.verify(row["ref"])
        root = Path(prepared["sources"][row["role"]]["path"])
        if (
            path != root / item["path"]
            or row["ref"]["bytes"] != item["bytes"]
            or row["ref"]["sha256"] != item["sha256"]
            or path.stat().st_mode & 0o111
        ):
            raise ValueError("GateRuntimeWrongLocationBytesOrMode")
        raw = path.read_bytes()
        if (
            hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
            != item["git_blob"]
        ):
            raise ValueError("GateRuntimeWrongOriginalGitBlob")
    for role in ["core-original", "core-reuse"]:
        if result["base_sources"][role] != prepared["sources"][role]:
            raise ValueError("GateRuntimeDifferentBaseSource")
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    d = read(args.declaration)
    if d["stage"] != "ENV" or d["slots"] != ["gate-runtime-fixtures"]:
        raise ValueError("GateRuntimeDeclaredSlot")
    private = Path(d["profile"]["roots"]["cache"])
    out = Path(args.out)
    if out != private / "gate-runtime-fixtures" / d["record_id"] or out.exists():
        raise ValueError("GateRuntimeOutput")
    prepared = check_prepared_native_v2(E / "toolchain-v2.json")
    spec = expected_runtime_inputs()
    refs = RootRegistry({"repository": R, "private": private}, readonly=["repository"])
    git = prepared["tools"]["git"]
    if digest(git["path"]) != git["sha256"]:
        raise ValueError("GateRuntimePinnedGit")
    out.mkdir(parents=True)
    commands, files = [], []
    env = {
        **os.environ,
        "GIT_OPTIONAL_LOCKS": "0",
        "GIT_CONFIG_NOSYSTEM": "1",
        "GIT_CONFIG_GLOBAL": os.devnull,
    }
    for i, item in enumerate(spec["files"]):
        folder = out / f"blob-{i:03}"
        folder.mkdir()
        argv = [
            git["path"],
            "-c",
            "maintenance.auto=false",
            "-c",
            "gc.auto=0",
            "-c",
            "core.hooksPath=/dev/null",
            "-C",
            str(R),
            "cat-file",
            "blob",
            spec["original_revision"] + ":" + item["path"],
        ]
        child = subprocess.run(
            argv,
            env=env,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=30,
            check=False,
        )
        write_once(folder / "stderr.txt", child.stderr)
        commands.append(
            dict(
                argv=argv,
                exit_code=child.returncode,
                stderr_sha256=digest(folder / "stderr.txt"),
            )
        )
        raw = child.stdout
        if (
            child.returncode
            or len(raw) != item["bytes"]
            or hashlib.sha256(raw).hexdigest() != item["sha256"]
            or hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
            != item["git_blob"]
        ):
            raise ValueError("GateRuntimeOriginalObjectMismatch")
        for role in ["core-original", "core-reuse"]:
            root = Path(prepared["sources"][role]["path"])
            path = root / item["path"]
            refs.path("private", str(path.relative_to(private)), writing=True)
            if path.exists():
                if path.read_bytes() != raw or path.stat().st_mode & 0o111:
                    raise ValueError("GateRuntimeExistingFileDiffers")
            else:
                write_once(path, raw)
                path.chmod(0o644)
            files.append(
                dict(
                    role=role,
                    path=item["path"],
                    ref=refs.reference("private", str(path.relative_to(private))),
                )
            )
    after = check_prepared_native_v2(E / "toolchain-v2.json")
    if after != prepared:
        raise ValueError("GateRuntimeChangedBaseReadiness")
    write_once(
        out / "result.json",
        dict(
            format="core036.gate-runtime-fixtures.v2",
            source_subject_ref=d["source_subject_ref"],
            expected_inputs=spec,
            base_sources=prepared["sources"],
            files=files,
            commands=commands,
            scope="Separately bound original runtime provenance data. All pre-existing selected source/index/manifest bytes preserved; no new validity authority or production behavior.",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
