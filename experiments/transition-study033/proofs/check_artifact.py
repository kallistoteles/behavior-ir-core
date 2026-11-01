"""Kernel-check actual source bytes, then compile those bytes as a standalone crate.

This is developer build orchestration, not a portable verifier or a G1 receipt.
The generator is not consulted: the validation goal quotes the actual input.
"""
import argparse
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import shutil
import sys

PROOFS = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location("core033_targets", PROOFS / "check_targets.py")
driver = importlib.util.module_from_spec(spec)
spec.loader.exec_module(driver)


def digest(raw):
    return hashlib.sha256(raw).hexdigest()


def lean_bytes(raw):
    # Bound syntax/elaborator nesting independently of the packet's length.
    chunks = [raw[i:i + 64] for i in range(0, len(raw), 64)]
    definitions = "".join(
        f"def bytes{i} : List UInt8 := [" + ",".join(map(str, chunk)) + "]\n"
        for i, chunk in enumerate(chunks)
    )
    return definitions + "def actualBytes : List UInt8 := [" + ",".join(
        f"bytes{i}" for i in range(len(chunks))
    ) + "].flatten\n"


def source(path, out, *, fresh_replay=True):
    path, out = Path(path).resolve(), Path(out).resolve()
    if path.stat().st_size > 8 * 1024**2:
        raise driver.ProofError("source exceeds frozen bound")
    raw = path.read_bytes()
    out.mkdir(parents=True, exist_ok=False)
    inputs = out / "proof-inputs"
    (inputs / "Core033").mkdir(parents=True)
    # These are checked language/translation definitions, not generator output.
    for module in ["IR", "Source", "SourceParser"]:
        shutil.copyfile(PROOFS / "Core033" / (module + ".lean"), inputs / "Core033" / (module + ".lean"))
    numbers = ",".join(map(str, raw))
    (inputs / "ArtifactSource.lean").write_text(
        "import Core033.SourceParser\nnamespace ArtifactSource\n"
        "def actualBytes : List UInt8 := [" + numbers + "]\n"
        "theorem actual_validated : Core033.SourceParser.validate actualBytes = true := by decide\n"
        "theorem actual_meaning (inputs : Core033.IR.Inputs) :\n"
        "  Core033.SourceParser.NativeDenotes actualBytes inputs (Core033.IR.eval inputs Core033.IR.firstPrimitive) :=\n"
        "  Core033.SourceParser.actual_bytes_sound actualBytes inputs actual_validated\n"
        "end ArtifactSource\n"
    )
    snapshot = out / "checker_step.rs"
    snapshot.write_bytes(raw)
    targets = {
        "Core033.IR": ["Core033.IR.Word64.raw_bound", "Core033.IR.Word64.signed_bounds", "Core033.IR.Word64.negative_iff", "Core033.IR.firstPrimitive_signed_meaning"],
        "Core033.Source": ["Core033.Source.lower_preserves"],
        "Core033.SourceParser": ["Core033.SourceParser.scan_spec", "Core033.SourceParser.lex_sound", "Core033.SourceParser.literal_sound", "Core033.SourceParser.tokens_sound", "Core033.SourceParser.parser_sound", "Core033.SourceParser.actual_bytes_sound"],
        "ArtifactSource": ["ArtifactSource.actual_validated", "ArtifactSource.actual_meaning"],
    }
    report = driver.check_modules(inputs, targets, out / "kernel", audit_source=PROOFS / "Audit.lean", fresh_replay=fresh_replay)
    if path.read_bytes() != raw or snapshot.read_bytes() != raw:
        raise driver.ProofError("actual input changed during source validation")
    rustc = shutil.which("rustc")
    if not rustc:
        raise driver.ProofError("pinned rustc required")
    env = dict(os.environ)
    env.pop("RUSTC_BOOTSTRAP", None)
    version = driver._call([rustc, "-Vv"], cwd=out, env=env, log=out / "rustc-version.txt")
    if not version.startswith("rustc 1.98.1 ") or "host: x86_64-unknown-linux-gnu" not in version:
        raise driver.ProofError("unexpected compiler/version/host")
    # The validated file is the entire crate: no parent module may shadow i64/bool.
    library = out / "libcore033_checked.rlib"
    flags = ["--edition=2024", "--target=x86_64-unknown-linux-gnu", "-C", "opt-level=3", "-C", "debuginfo=0"]
    driver._call([rustc, *flags, "--crate-name", "core033_checked", "--crate-type=rlib", str(snapshot), "-o", str(library)],
                 cwd=out, env=env, log=out / "native-library-build.txt")
    harness = out / "native_harness.rs"
    harness.write_text(
        "fn main() {\n"
        "    for x in [i64::MIN, -1_i64, 0_i64, 1_i64, i64::MAX] {\n"
        "        println!(\"{} {}\", x, core033_checked::checker_step(x));\n"
        "    }\n}\n"
    )
    executable = out / "native-smoke"
    driver._call([rustc, *flags, str(harness), "--extern", "core033_checked=" + str(library), "-o", str(executable)],
                 cwd=out, env=env, log=out / "native-harness-build.txt")
    stdout = driver._call([str(executable)], cwd=out, env=env, log=out / "native-boundaries.txt")
    expected = "-9223372036854775808 true\n-1 true\n0 false\n1 false\n9223372036854775807 false\n"
    if stdout != expected:
        raise driver.ProofError("compiled source disagrees on actual native boundary controls")
    if snapshot.read_bytes() != raw or path.read_bytes() != raw:
        raise driver.ProofError("compiled input changed during native build")
    result = {"format_version": "core033.source-correspondence.v1", "source_sha256": digest(raw),
              "compiled_input_sha256": digest(snapshot.read_bytes()), "executable_sha256": digest(executable.read_bytes()),
              "library_sha256": digest(library.read_bytes()), "harness_sha256": digest(harness.read_bytes()),
              "compiler": {"path": rustc, "sha256": digest(Path(rustc).read_bytes()), "version": version, "flags": flags},
              "proof_receipt": str(out / "kernel/report.json"), "theorems": len(report["theorems"]), "fresh_kernel_replay": fresh_replay,
              "scope": "actual standalone signed-negative64 source/AST/IR; ordinary pinned compiler/runtime/ISA TCB",
              "g1_pass": False}
    (out / "receipt.json").write_text(json.dumps(result, sort_keys=True, indent=2) + "\n")
    return result


def matrix(path, out, *, fresh_replay=True):
    path, out = Path(path).resolve(), Path(out).resolve()
    if path.stat().st_size > 1024**3:
        raise driver.ProofError("matrix exceeds frozen byte bound")
    raw = path.read_bytes()
    out.mkdir(parents=True, exist_ok=False)
    inputs = out / "proof-inputs"
    (inputs / "Core033").mkdir(parents=True)
    for module in ["IR", "Bits", "R1CS", "Matrix", "KernelDecide"]:
        shutil.copyfile(PROOFS / "Core033" / (module + ".lean"), inputs / "Core033" / (module + ".lean"))
    (out / "matrix.bin").write_bytes(raw)
    (inputs / "ArtifactMatrix.lean").write_text(
        "import Core033.Matrix\nimport Core033.KernelDecide\nnamespace ArtifactMatrix\n"
        "set_option maxRecDepth 131072\nset_option maxHeartbeats 4000000\n"
        + lean_bytes(raw) +
        "theorem actual_validated : Core033.Matrix.validate actualBytes = true := by core033_kernel_decide\n"
        "theorem actual_sound {F : Type} [Field F] [CharP F Core033.R1CS.pallasScalarModulus]\n"
        "  (word : Core033.IR.Word64) (output : F)\n"
        "  (relation : Core033.Matrix.Denotes actualBytes (word.raw : F) output) :\n"
        "  output = Core033.R1CS.bitValue word.negative :=\n"
        "  Core033.Matrix.actual_matrix_sound actualBytes word output actual_validated relation\n"
        "theorem actual_complete {F : Type} [Field F] [CharP F Core033.R1CS.pallasScalarModulus]\n"
        "  (word : Core033.IR.Word64) :\n"
        "  Core033.Matrix.Denotes actualBytes (word.raw : F) (Core033.R1CS.bitValue word.negative) :=\n"
        "  Core033.Matrix.actual_matrix_complete actualBytes word actual_validated\n"
        "end ArtifactMatrix\n"
    )
    dependencies = sorted((PROOFS / ".lake/packages").glob("*/.lake/build/lib/lean"))
    targets = {
        "Core033.IR": ["Core033.IR.Word64.raw_bound", "Core033.IR.Word64.negative_iff"],
        "Core033.Bits": ["Core033.Bits.bound", "Core033.Bits.exists_value", "Core033.Bits.high_bit"],
        "Core033.R1CS": ["Core033.R1CS.exported_layout", "Core033.R1CS.exported_wellFormed", "Core033.R1CS.boolean_sound", "Core033.R1CS.compiled_satisfaction", "Core033.R1CS.compiled_sound", "Core033.R1CS.compiled_complete"],
        "Core033.Matrix": ["Core033.Matrix.validation_decodes_actual", "Core033.Matrix.actual_matrix_sound", "Core033.Matrix.actual_matrix_complete"],
        "Core033.KernelDecide": [],
        "ArtifactMatrix": ["ArtifactMatrix.actual_validated", "ArtifactMatrix.actual_sound", "ArtifactMatrix.actual_complete"],
    }
    report = driver.check_modules(inputs, targets, out / "kernel", audit_source=PROOFS / "Audit.lean", dependency_paths=dependencies, fresh_replay=fresh_replay)
    if path.read_bytes() != raw or (out / "matrix.bin").read_bytes() != raw:
        raise driver.ProofError("actual matrix changed during validation")
    result = {"format_version": "core033.matrix-correspondence.v1", "effective_matrix_sha256": digest(raw),
              "output_ports": [2], "input_ports": [1], "constant_one": 0, "variables": 67, "constraints": 66,
              "modulus_hex": "40000000000000000000000000000000224698fc0994a8dd8c46eb2100000001",
              "proof_receipt": str(out / "kernel/report.json"), "theorems": len(report["theorems"]), "fresh_kernel_replay": fresh_replay,
              "scope": "actual canonical IR-matrix bytes; standard field/declared characteristic; real Nova embedding remains pending",
              "g1_pass": False}
    (out / "receipt.json").write_text(json.dumps(result, sort_keys=True, indent=2) + "\n")
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("kind", choices=["source", "matrix"])
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    try:
        result = {"source": source, "matrix": matrix}[args.kind](args.input, args.out)
    except (driver.ProofError, OSError, ValueError) as exc:
        print(json.dumps({"format_version": "core033.artifact-rejection.v1", "status": "RejectedEvidence", "reason": str(exc), "g1_pass": False}), file=sys.stderr)
        return 3
    print(json.dumps(result, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
