"""Fixed closed463 candidate-only axiom diagnostic; no proof admission."""
import hashlib
import os
from pathlib import Path
import subprocess
import tempfile
from artifact_io import RootRegistry
from nonpos_lean_probe_v2 import dependency_library_paths


def main():
    r = Path(__file__).resolve().parents[2]
    private = Path("/var/tmp/behavior-ir-core036-v2/w001")
    work = r / "specs/036-core-transition-feasibility/evidence/v2/w001"
    refs = RootRegistry({"repository": r, "private": private, "work": work})
    cp = refs.read(refs.reference("work", "attempts/a0463/checkpoint.json"))
    receipt = refs.read(refs.reference("work", "attempts/a0463/child/receipt.json"))
    if (cp["outcome"]["operational"] != "closed" or cp["source_validation_error"] is not None
        or receipt["stop_reason"] is not None or not receipt["tree_empty"] or not receipt["group_empty"]):
        raise ValueError("DiagnosticParentNotClosed")
    project = private / "ground-lean-probe/a0463"
    guarded = []
    for directory in (project / "compiled", project / "imports", project / "project"):
        for path in directory.rglob("*"):
            if path.name in {"parameters.bin", "compression_prover_key.bin"}:
                raise ValueError("ProtectedArtifact")
            if path.is_symlink():
                raise ValueError("DiagnosticSymlink")
            if path.is_file():
                guarded.append(refs.reference("private", str(path.relative_to(private))))
    sdk = private / "analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux"
    backend = private / "analysis-backend-build/a0058/lean"
    lean = sdk / "bin/lean"
    tool_hash = hashlib.sha256(lean.read_bytes()).hexdigest()
    raw = "module\npublic import NativeCanonicalChild\n#print axioms Correspondence036.NativeCanonicalChild.canonical_child\n#print axioms Correspondence036.NativeCanonicalChild.canonical_view_agreement\n"
    with tempfile.TemporaryDirectory() as directory:
        source = Path(directory) / "Diagnostic.lean"
        source.write_text(raw)
        env = {**os.environ, "LEAN_PATH": os.pathsep.join(map(str, [project / "compiled", project / "imports", *dependency_library_paths(backend)])), "LEAN_NUM_THREADS": "1"}
        env.pop("LD_PRELOAD", None)
        result = subprocess.run([str(lean), "-j1", "-s131072", "-M4096", str(source)], cwd=backend, env=env, check=False)
        for reference in guarded:
            refs.verify(reference)
        if hashlib.sha256(lean.read_bytes()).hexdigest() != tool_hash:
            raise ValueError("DiagnosticToolChanged")
        return result.returncode


if __name__ == "__main__":
    raise SystemExit(main())
