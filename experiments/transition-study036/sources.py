"""Exact owned Git-object export. No network, whole-archive checkout or imported authority."""

import hashlib
import json
import re
import subprocess
from pathlib import Path, PurePosixPath

CORE_REV = "63a8c164523275e06ac1d7dc5330db4a899c9d99"
ROOT = Path(__file__).resolve().parents[2]
PREFIXES = (
    "crates/",
    "consumer/",
    "tests/",
    "schema/",
    "api/",
    "scripts/",
    "docs/",
    ".github/",
    ".specify/memory/",
)
TOP = {
    "Cargo.toml",
    "Cargo.lock",
    "ARCHITECTURE.md",
    "PRINCIPLES.md",
    "LICENSE",
    "README.md",
    "flake.nix",
    "flake.lock",
    "rust-toolchain.toml",
    "rustfmt.toml",
    ".gitignore",
    ".gitattributes",
}
GATE_INPUTS = json.loads(
    (Path(__file__).resolve().parent / "gate-inputs.json").read_text()
)
if GATE_INPUTS["revision"] != CORE_REV:
    raise ValueError("GateInputRevision")
EXTRA = {f["path"] for f in GATE_INPUTS["files"]}
REQUIRED = [
    "Cargo.toml",
    "Cargo.lock",
    "crates/behavior-engine/Cargo.toml",
    "crates/behavior-store/src/store.rs",
    "crates/behavior-core/src/eval.rs",
    "scripts/gates.sh",
    "scripts/check-boundary.sh",
    "scripts/determinism-check.sh",
    "ARCHITECTURE.md",
    "consumer/Cargo.toml",
    "tests/fixtures",
    *sorted(EXTRA),
]


def _git(repo, *args):
    try:
        return subprocess.check_output(
            [
                "git",
                "-c",
                "maintenance.auto=false",
                "-c",
                "gc.auto=0",
                "-c",
                "core.hooksPath=/dev/null",
                "-C",
                str(repo),
                *args,
            ],
            stderr=subprocess.PIPE,
            timeout=30,
        )
    except subprocess.CalledProcessError as e:
        raise ValueError(
            "GitInventoryOrObject:" + e.stderr.decode(errors="replace")[:200]
        ) from e


def _path(name):
    if not isinstance(name, str) or not name or "\\" in name or "\0" in name:
        raise ValueError("SourcePath")
    p = PurePosixPath(name)
    if p.is_absolute() or any(s in {"..", ".git"} for s in p.parts) or str(p) != name:
        raise ValueError("SourcePath")
    return name


def export(
    repo,
    revision,
    out,
    *,
    paths=None,
    required=None,
    patches=(),
    max_bytes=256 * 1024**2,
):
    if not re.fullmatch("[a-f0-9]{40}", revision):
        raise ValueError("ExactGitRevisionRequired")
    repo = Path(repo)
    out = Path(out)
    if out.exists():
        raise FileExistsError(out)
    rows = {}
    for entry in _git(repo, "ls-tree", "-rlz", revision).split(b"\0"):
        if not entry:
            continue
        meta, rawpath = entry.split(b"\t", 1)
        mode, kind, blob, size = meta.decode().split()
        name = rawpath.decode()
        _path(name)
        if kind == "blob":
            rows[name] = (mode, blob, int(size))
    selected = sorted(
        paths
        if paths is not None
        else [n for n in rows if n in TOP or n in EXTRA or n.startswith(PREFIXES)]
    )
    if paths is None:
        for ref in GATE_INPUTS["files"]:
            if ref["path"] not in rows or rows[ref["path"]][1:] != (
                ref["git_blob"],
                ref["bytes"],
            ):
                raise ValueError("GateInputObjectMismatch")
    for name in selected:
        _path(name)
        if name not in rows:
            raise ValueError("MissingSource:" + name)
        if rows[name][0] not in {"100644", "100755"}:
            raise ValueError("SourceModeNotRegular:" + name)
    need = REQUIRED if required is None else required
    for name in need:
        _path(name)
        if not any(n == name or n.startswith(name + "/") for n in selected):
            raise ValueError("MissingRequiredSource:" + name)
    if not selected:
        raise ValueError("EmptySourceInventory")
    if sum(rows[n][2] for n in selected) > max_bytes:
        raise ValueError("ExportByteLimit")
    for patch in patches:
        raw = Path(patch["path"]).read_bytes()
        if hashlib.sha256(raw).hexdigest() != patch["sha256"]:
            raise ValueError("PatchHash")
        # Only declared regular source files can be changed; no new path or symlink escape.
        changed = re.findall(r"^\+\+\+ b/(.+)$", raw.decode(), re.M)
        if not changed or any(_path(n) not in selected for n in changed):
            raise ValueError("PatchScope")
    out.mkdir(parents=True, exist_ok=False)
    files = []
    # Read objects in one bounded git batch, not a process for every file.
    child = subprocess.Popen(
        ["git", "-C", str(repo), "cat-file", "--batch"],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
    )
    try:
        for name in selected:
            mode, blob, size = rows[name]
            child.stdin.write((blob + "\n").encode())
            child.stdin.flush()
            header = child.stdout.readline().decode().split()
            if len(header) != 3 or header[1] != "blob" or int(header[2]) != size:
                raise ValueError("SourceObjectShape")
            raw = child.stdout.read(size)
            if (
                len(raw) != size
                or child.stdout.read(1) != b"\n"
                or hashlib.sha1(b"blob " + str(size).encode() + b"\0" + raw).hexdigest()
                != blob
            ):
                raise ValueError("SourceBlobChanged")
            p = out / name
            p.parent.mkdir(parents=True, exist_ok=True)
            with p.open("xb") as f:
                f.write(raw)
            p.chmod(0o755 if mode == "100755" else 0o644)
            files.append(
                {
                    "path": name,
                    "bytes": size,
                    "sha256": hashlib.sha256(raw).hexdigest(),
                    "git_blob": blob,
                    "mode": mode,
                }
            )
    finally:
        child.stdin.close()
        child.stdout.close()
        if child.wait(timeout=10) != 0:
            raise ValueError("SourceBatchFailed")
    _git(out, "init", "-q")
    for patch in patches:
        _git(out, "apply", "--check", str(Path(patch["path"]).resolve()))
        _git(out, "apply", str(Path(patch["path"]).resolve()))
    for ref in files:
        raw = (out / ref["path"]).read_bytes()
        ref["bytes"] = len(raw)
        ref["sha256"] = hashlib.sha256(raw).hexdigest()
    _git(out, "add", "-f", "--", *selected)
    manifest = {
        "format": "core035.source-export.v1",
        "repository": str(repo),
        "revision": revision,
        "files": files,
        "patches": list(patches),
        "product_adoption": "unactivated",
    }
    verify_export(out, manifest)
    with (out / "source-export.json").open("x") as f:
        json.dump(manifest, f, indent=2)
        f.write("\n")
    return manifest


def verify_export(out, manifest):
    out = Path(out).resolve()
    try:
        top = Path(_git(out, "rev-parse", "--show-toplevel").decode().strip()).resolve()
        names = _git(out, "ls-files", "-z").decode().split("\0")
        names = [n for n in names if n]
    except (OSError, ValueError) as e:
        raise ValueError("GitInventory") from e
    if top != out or not names or set(names) != {f["path"] for f in manifest["files"]}:
        raise ValueError("GitInventory")
    index = {}
    for row in _git(out, "ls-files", "--stage", "-z").split(b"\0"):
        if row:
            meta, name = row.split(b"\t", 1)
            mode, blob, stage = meta.decode().split()
            if stage != "0":
                raise ValueError("GitIndexBytes")
            index[name.decode()] = (mode, blob)
    for ref in manifest["files"]:
        p = out / _path(ref["path"])
        if not p.is_file() or p.is_symlink():
            raise ValueError("SourceBytesChanged:" + ref["path"])
        raw = p.read_bytes()
        if len(raw) != ref["bytes"] or hashlib.sha256(raw).hexdigest() != ref["sha256"]:
            raise ValueError("SourceBytesChanged:" + ref["path"])
        blob = hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
        if index.get(ref["path"]) != (ref["mode"], blob):
            raise ValueError("GitIndexBytes:" + ref["path"])
    return True


PATCH_ORDER = (
    "ground.patch",
    "prepared-invocation.patch",
    "checked-promotion.patch",
    "version-views.patch",
    "work-counters.patch",
    "phase-clocks.patch",
    "format.patch",
    "quality.patch",
    "v2/quality-timeout-fixture.patch",
    "v2/core-phase-spans-inline.patch",
)


def reviewed_patches():
    directory = Path(__file__).resolve().parent / "patches"
    return [
        {
            "path": str(directory / name),
            "sha256": hashlib.sha256((directory / name).read_bytes()).hexdigest(),
        }
        for name in PATCH_ORDER
        if (directory / name).exists()
    ]


def reconcile(out, receipt):
    """Development only: verify every candidate byte against Git + ordered patches.
    A final frozen context never calls this mutating preparation function.
    """
    import shutil
    from artifact_io import write_once

    out = Path(out)
    receipt = Path(receipt)
    receipt.mkdir(parents=True, exist_ok=False)
    old = (out / "source-export.json").read_bytes()
    write_once(receipt / "prior-source-export.json", old)
    temp = receipt / "verified-export"
    manifest = export(ROOT, CORE_REV, temp, patches=reviewed_patches())
    added = []
    for ref in manifest["files"]:
        target = out / ref["path"]
        if not target.exists():
            if ref["path"] not in EXTRA or not target.resolve().is_relative_to(
                out.resolve()
            ):
                raise ValueError("UnexpectedMissingSource")
            target.parent.mkdir(parents=True, exist_ok=True)
            with target.open("xb") as f:
                f.write((temp / ref["path"]).read_bytes())
            target.chmod(0o755 if ref["mode"] == "100755" else 0o644)
            added.append(ref)
        if (out / ref["path"]).read_bytes() != (temp / ref["path"]).read_bytes():
            raise ValueError("PatchChainDoesNotReproduce:" + ref["path"])
    # Only owned disposable source metadata/index is updated, never frozen input.
    manifest["repository"] = str(ROOT)
    (out / "source-export.json").write_text(json.dumps(manifest, indent=2) + "\n")
    _git(out, "add", "-f", "--", *[r["path"] for r in manifest["files"]])
    verify_export(out, manifest)
    write_once(receipt / "verified-source-export.json", manifest)
    write_once(
        receipt / "result.json",
        {
            "format": "core035.source-reconciliation.v1",
            "files": len(manifest["files"]),
            "patches": manifest["patches"],
            "byte_equal": True,
            "added_exact_gate_inputs": added,
            "product_adoption": "unactivated",
        },
    )
    # The duplicate export is an owned disposable verifier work product. Preserve
    # its complete manifest/result, not another unnecessary source copy.
    shutil.rmtree(temp)
    return manifest


def validate_index(names):
    required = {
        "Cargo.toml",
        "Cargo.lock",
        "scripts/gates.sh",
        "ARCHITECTURE.md",
        "consumer/Cargo.toml",
    }
    if not names or not required.issubset(names):
        raise ValueError("MissingCanonicalIndex")
    return True


def verify_subject_v2(root, manifest):
    """Verify selected working bytes AND the actual standalone Git index.

    This verifies an explicitly supplied source inventory, not equivalence or
    tool readiness. The work controller separately binds the selected original
    inventory and checks every required runtime consumer before an ENV claim.
    """
    from artifact_io import RootRegistry, digest
    from records import u64

    if not isinstance(manifest, dict) or set(manifest) != {
        "files",
        "indexed_files",
        "required_files",
        "tools",
        "original",
        "patches",
    }:
        raise ValueError("V2SourceManifestFields")
    if type(manifest["original"]) is not bool or not isinstance(
        manifest["patches"], list
    ):
        raise ValueError("V2SourceRole")
    if manifest["original"] and manifest["patches"]:
        raise ValueError("V2PatchedOriginal")
    if (
        not isinstance(manifest["files"], list)
        or not 0 < len(manifest["files"]) <= 20000
    ):
        raise ValueError("V2SourceInventory")
    root = Path(root)
    registry = RootRegistry({"source": root}, readonly=["source"])
    root = registry.roots["source"]
    top = Path(_git(root, "rev-parse", "--show-toplevel").decode().strip()).resolve()
    if top != root:
        raise ValueError("V2NonStandaloneSource")
    indexed = {}
    for row in _git(root, "ls-files", "--stage", "-z").split(b"\0"):
        if row:
            meta, path = row.split(b"\t", 1)
            mode, blob, stage = meta.decode().split()
            if stage != "0" or mode not in {"100644", "100755"}:
                raise ValueError("V2GitIndexStageOrMode")
            name = _path(path.decode())
            if name in indexed:
                raise ValueError("V2GitIndexDuplicate")
            indexed[name] = (mode, blob)
    names = []
    for ref in manifest["files"]:
        if (
            not isinstance(ref, dict)
            or not {"path", "bytes", "sha256"} <= ref.keys()
            or ref.keys() - {"path", "bytes", "sha256", "git_blob", "mode"}
        ):
            raise ValueError("V2SourceFileFields")
        name = _path(ref["path"])
        u64(ref["bytes"])
        path = registry.verify(
            {"root_id": "source", **{k: ref[k] for k in ("path", "bytes", "sha256")}}
        )
        mode = "100755" if path.stat().st_mode & 0o111 else "100644"
        blob = hashlib.sha1(
            b"blob " + str(ref["bytes"]).encode() + b"\0" + path.read_bytes()
        ).hexdigest()
        if indexed.get(name) != (mode, blob) or ("mode" in ref and ref["mode"] != mode):
            raise ValueError("V2SourceIndexBytes:" + name)
        if manifest["original"] and "git_blob" in ref and ref["git_blob"] != blob:
            raise ValueError("V2OriginalBlobChanged:" + name)
        names.append(name)
    expected = manifest["indexed_files"]
    if (
        not isinstance(expected, list)
        or not expected
        or len(names) != len(set(names))
        or len(expected) != len(set(expected))
        or set(expected) != set(names)
        or set(indexed) != set(names)
    ):
        raise ValueError("V2GitInventory")
    if (
        not isinstance(manifest["required_files"], list)
        or len(manifest["required_files"]) > 20000
    ):
        raise ValueError("V2RequiredSourceFiles")
    for name in manifest["required_files"]:
        _path(name)
        if not any(n == name or n.startswith(name + "/") for n in names):
            raise ValueError("V2MissingRuntimeConsumer:" + name)
    if not isinstance(manifest["tools"], list) or len(manifest["tools"]) > 20000:
        raise ValueError("V2SourceTools")
    for tool in manifest["tools"]:
        if (
            not isinstance(tool, dict)
            or set(tool) != {"path", "sha256"}
            or not isinstance(tool["path"], str)
            or not Path(tool["path"]).is_absolute()
            or not Path(tool["path"]).is_file()
            or digest(tool["path"]) != tool["sha256"]
        ):
            raise ValueError("V2ToolBytes")
    for patch in manifest["patches"]:
        if (
            not isinstance(patch, dict)
            or set(patch) != {"path", "sha256"}
            or not isinstance(patch["path"], str)
            or not Path(patch["path"]).is_absolute()
            or not Path(patch["path"]).is_file()
            or digest(patch["path"]) != patch["sha256"]
        ):
            raise ValueError("V2PatchBytes")
    return True


def selected_paths_v2(repo, revision):
    """Pin both original runtime inventories, including the r003 correction."""
    if revision != CORE_REV:
        raise ValueError("V2OriginalRevision")
    correction = json.loads(
        (
            ROOT
            / "specs/036-core-transition-feasibility/inputs/additional-gate-inputs-r003.json"
        ).read_text()
    )
    additional = correction["added_runtime_test_inputs"]
    rows = {}
    for row in _git(repo, "ls-tree", "-rlz", revision).split(b"\0"):
        if row:
            meta, name = row.split(b"\t", 1)
            mode, kind, blob, size = meta.decode().split()
            if kind == "blob":
                rows[_path(name.decode())] = (blob, int(size))
    for item in [*GATE_INPUTS["files"], *additional]:
        if rows.get(item["path"]) != (item["git_blob"], item["bytes"]):
            raise ValueError("V2RuntimeObjectMismatch:" + item["path"])
    extra = EXTRA | {x["path"] for x in additional}
    return sorted(n for n in rows if n in TOP or n in extra or n.startswith(PREFIXES))


def export_v2(repo, revision, out, *, original, tools, patches=()):
    """Reuse the exact reviewed exporter, then verify a v2 subject inventory."""
    if type(original) is not bool or (original and patches):
        raise ValueError("V2ExportRole")
    if revision != CORE_REV:
        raise ValueError("V2OriginalRevision")
    selected = selected_paths_v2(repo, revision)
    correction = json.loads(
        (
            ROOT
            / "specs/036-core-transition-feasibility/inputs/additional-gate-inputs-r003.json"
        ).read_text()
    )
    required = [
        *REQUIRED,
        *[x["path"] for x in correction["added_runtime_test_inputs"]],
    ]
    legacy = export(
        repo, revision, out, patches=patches, paths=selected, required=required
    )
    exported = {x["path"]: x for x in legacy["files"]}
    for item in [*GATE_INPUTS["files"], *correction["added_runtime_test_inputs"]]:
        if exported[item["path"]]["sha256"] != item["sha256"]:
            raise ValueError("V2RuntimeInputBytes:" + item["path"])
    manifest = {
        "files": legacy["files"],
        "indexed_files": [f["path"] for f in legacy["files"]],
        "required_files": required,
        "tools": tools,
        "original": original,
        "patches": list(patches),
    }
    verify_subject_v2(out, manifest)
    from artifact_io import write_once

    write_once(Path(out) / "subject-inventory-v2.json", manifest)
    return manifest


def resolve_execution_source_v2(reference, declaration, *, registry):
    """Resolve actual run provenance through its immutable declared subject.

    Earlier development receipts named a working source path. Interpret those
    bytes using that run's original snapshot, never today's revised source.
    """
    from records import MANIFEST, validate_ref_v2, validate_v2_record

    validate_ref_v2(reference)
    subject_ref = declaration["source_subject_ref"]
    subject_path = registry.verify(subject_ref)
    if reference == subject_ref:
        return subject_path
    subject = registry.read(subject_ref, limit=MANIFEST)
    validate_v2_record(subject, extra_fields={"files"})
    if subject["format"] != "core036.source.v2" or not isinstance(
        subject.get("files"), list
    ):
        raise ValueError("V2ExecutionSourceSubject")
    for entry in subject["files"]:
        if not isinstance(entry, dict) or set(entry) != {"logical_ref", "snapshot_ref"}:
            raise ValueError("V2ExecutionSourceEntry")
        if entry["logical_ref"] == reference:
            saved = entry["snapshot_ref"]
            validate_ref_v2(saved)
            if (saved["bytes"], saved["sha256"]) != (
                reference["bytes"],
                reference["sha256"],
            ):
                raise ValueError("V2ExecutionSourceIdentity")
            return registry.verify(saved)
    raise ValueError("V2RuntimeSourceNotInDeclaredSubject")
