"""First actual artifact gate. No complete Core relation or G1 claim is made."""
import argparse
import json
from pathlib import Path
import shutil
import struct
import sys
import time

import check_artifact as artifacts


def write_json(path, value):
    with path.open("x") as stream:
        json.dump(value, stream, indent=2, sort_keys=True)
        stream.write("\n")


def budget(start):
    elapsed = time.monotonic_ns() - start["monotonic_start_ns"]
    limit = start["first_artifact_budget_ns"]
    if not 0 <= elapsed < limit:
        raise artifacts.driver.ProofError("first-pair active cap not established by conservative elapsed upper bound")
    return {"elapsed_upper_bound_ns": elapsed, "first_artifact_cap_ns": limit,
            "accounting": "continuous same-boot monotonic elapsed upper bound, includes setup, G0 and idle",
            "within_active_cap": True}


def source_mutations(genuine):
    variants = {
        "le": b"pub fn checker_step(x: i64) -> bool { x <= 0_i64 }",
        "constant": b"pub fn checker_step(x: i64) -> bool { x < 1_i64 }",
        "unsigned": b"pub fn checker_step(x: u64) -> bool { x < 0_u64 }",
        "cast": b"pub fn checker_step(x: i64) -> bool { (x as u64) < 0_u64 }",
    }
    for name, prefix in {
        "cfg": '#[cfg(any())]', "attribute": '#[inline(always)]',
        "macro": 'macro_rules! hidden { () => { true } }',
        "unsafe": 'pub unsafe fn hidden() {}',
        "ffi": 'unsafe extern "C" { fn hidden(); }',
        "heap": 'pub fn hidden() { let _ = Vec::<u8>::new(); }',
        "panic": 'pub fn hidden() { panic!("hidden"); }',
        "alternate": 'pub fn accepted() -> bool { true }',
    }.items():
        variants[name] = prefix.encode() + b"\n" + genuine
    return variants


def matrix_mutations(genuine):
    # Walk the independently supplied packet to locate actual encoded fields.
    cursor = 22 + 32
    headers = [struct.unpack_from("<I", genuine, cursor + 4*i)[0] for i in range(6)]
    cursor += 24
    ports = struct.unpack_from("<I", genuine, cursor)[0]
    output_offset = cursor + 4 + (headers[1] + headers[2])*4
    cursor += 4 + ports*4
    row_count_offset = cursor
    count = struct.unpack_from("<I", genuine, cursor)[0]
    cursor += 4
    rows = []
    for _ in range(count):
        start = cursor
        vectors = []
        for _ in range(3):
            terms = struct.unpack_from("<I", genuine, cursor)[0]
            cursor += 4
            vectors.append([cursor + 36*i for i in range(terms)])
            cursor += 36*terms
        rows.append((start, cursor, vectors))
    if cursor != len(genuine) or len(rows) != 66:
        raise artifacts.driver.ProofError("unexpected genuine matrix mutation input")
    missing = bytearray(genuine)
    struct.pack_into("<I", missing, 22+32+16, 65)
    struct.pack_into("<I", missing, row_count_offset, 65)
    del missing[rows[0][0]:rows[0][1]]
    modulus = bytearray(genuine)
    modulus[22] ^= 2
    coefficient = bytearray(genuine)
    coefficient[rows[64][2][0][0]+4] = 2
    output = bytearray(genuine)
    struct.pack_into("<I", output, output_offset, 1)
    sign = bytearray(genuine)
    struct.pack_into("<I", sign, rows[65][2][0][1], 65)
    return {"missing-boolean": missing, "modulus": modulus,
            "coefficient": coefficient, "output-alias": output, "wrong-sign-bit": sign}


def rejection(kind, name, raw, out):
    path = out / (name + (".rs" if kind == "source" else ".bin"))
    path.write_bytes(raw)
    started = time.monotonic_ns()
    try:
        getattr(artifacts, kind)(path, out / name)
    except artifacts.driver.ProofError as exc:
        reason = str(exc)
        # Missing tool/timeout/OOM/type error is not a successful mutation check.
        expected_source = kind == "source" and "Tactic `decide` proved that the proposition" in reason and "is false" in reason
        expected_matrix = kind == "matrix" and all(fragment in reason for fragment in [
            "ArtifactMatrix.lean:", "error: (kernel) application type mismatch",
            "id (Eq.refl true)", "decide (Core033.Matrix.validate actualBytes = true) = true",
        ])
        expected = expected_source or expected_matrix
        result = {"kind": kind, "mutation": name, "sha256": artifacts.digest(raw),
                  "status": "RejectedByActualValidator" if expected else "ControlNotEstablished",
                  "reason": reason, "wall_ns": time.monotonic_ns()-started, "g1_pass": False}
        write_json(out / (name + ".control.json"), result)
        if not expected:
            raise artifacts.driver.ProofError("mutation control did not reach actual validator: " + name) from exc
        return result
    raise artifacts.driver.ProofError("actual altered artifact was accepted: " + name)


def bridge(out):
    inputs = out / "bridge-inputs"
    (inputs / "Core033").mkdir(parents=True)
    shutil.copyfile(artifacts.PROOFS / "Core033/Pair.lean", inputs / "Core033/Pair.lean")
    (inputs / "ArtifactPair.lean").write_text(
        "import ArtifactSource\nimport ArtifactMatrix\nimport Core033.Pair\nnamespace ArtifactPair\n"
        "theorem actual_sound {F : Type} [Field F] [CharP F Core033.R1CS.pallasScalarModulus]\n"
        " (inputs : Core033.IR.Inputs) (output : F)\n"
        " (relation : Core033.Matrix.Denotes ArtifactMatrix.actualBytes ((inputs.words ⟨0, by decide⟩).raw : F) output) :\n"
        " Core033.SourceParser.NativeDenotes ArtifactSource.actualBytes inputs (Core033.IR.eval inputs Core033.IR.firstPrimitive) ∧\n"
        " output = Core033.R1CS.bitValue (Core033.IR.eval inputs Core033.IR.firstPrimitive) :=\n"
        " Core033.Pair.actual_pair_sound _ _ inputs output ArtifactSource.actual_validated ArtifactMatrix.actual_validated relation\n"
        "theorem actual_complete {F : Type} [Field F] [CharP F Core033.R1CS.pallasScalarModulus]\n"
        " (inputs : Core033.IR.Inputs) :\n"
        " Core033.SourceParser.NativeDenotes ArtifactSource.actualBytes inputs (Core033.IR.eval inputs Core033.IR.firstPrimitive) ∧\n"
        " Core033.Matrix.Denotes ArtifactMatrix.actualBytes ((inputs.words ⟨0, by decide⟩).raw : F)\n"
        "  (Core033.R1CS.bitValue (Core033.IR.eval inputs Core033.IR.firstPrimitive)) :=\n"
        " Core033.Pair.actual_pair_complete _ _ inputs ArtifactSource.actual_validated ArtifactMatrix.actual_validated\n"
        "end ArtifactPair\n")
    dependencies = [out / "source/kernel/compiled", out / "matrix/kernel/compiled",
                    *sorted((artifacts.PROOFS / ".lake/packages").glob("*/.lake/build/lib/lean"))]
    return artifacts.driver.check_modules(inputs, {
        "Core033.Pair": ["Core033.Pair.actual_pair_sound", "Core033.Pair.actual_pair_complete"],
        "ArtifactPair": ["ArtifactPair.actual_sound", "ArtifactPair.actual_complete"],
    }, out / "bridge-kernel", audit_source=artifacts.PROOFS / "Audit.lean", dependency_paths=dependencies)


def run(manifest_path, out):
    manifest_raw = manifest_path.read_bytes()
    manifest = json.loads(manifest_raw)
    paths = {name: Path(value["path"]) for name, value in manifest["inputs"].items()}
    for tool in ["lean", "leanchecker", "rustc", "rustfmt", "python3"]:
        selected = shutil.which(tool)
        if selected is None or Path(selected).resolve() != paths["tool_"+tool]:
            raise artifacts.driver.ProofError("actual tool differs from frozen input: " + tool)
    dependencies = {p.resolve() for p in (artifacts.PROOFS / ".lake/packages").glob("*/.lake/build/lib/lean/**/*.olean*")
                    if not p.name.endswith(".hash")}
    if dependencies != {p for name, p in paths.items() if name.startswith("dependency_")}:
        raise artifacts.driver.ProofError("actual proof dependency inventory differs from frozen inputs")
    review = json.loads(paths["g0_review"].read_bytes())
    if review["scope_result"] != "AcceptedForFirstArtifactPair" or review["g1_pass"] is not False:
        raise artifacts.driver.ProofError("G0 scope review does not authorize the first pair")
    if review["contract"]["sha256"] != artifacts.digest(paths["g0_contract"].read_bytes()):
        raise artifacts.driver.ProofError("G0 contract/review binding changed")
    start = json.loads(paths["budget_start"].read_text().splitlines()[0])
    baseline = json.loads(paths["baseline"].read_bytes())
    if start["task"] != "T001" or start["started_at"] != baseline["created_at"] or start["first_artifact_budget_ns"] != 144000000000000:
        raise artifacts.driver.ProofError("budget start is not the recorded T001 identity")
    budget(start)
    out.mkdir(parents=True, exist_ok=False)
    try:
        # The final aggregate freshly replays both imported artifact modules and
        # their transitive dependencies together. Staged receipts say pending.
        source = artifacts.source(paths["native_source"], out / "source", fresh_replay=False)
        matrix = artifacts.matrix(paths["ir_matrix"], out / "matrix", fresh_replay=False)
        combined = bridge(out)
        controls = out / "controls"
        controls.mkdir()
        results = []
        for kind, variants in [
            ("source", source_mutations(paths["native_source"].read_bytes())),
            ("matrix", matrix_mutations(paths["ir_matrix"].read_bytes())),
        ]:
            for name, raw in variants.items():
                results.append(rejection(kind, name, raw, controls))
                budget(start)
        result = {"format_version": "core033.first-pair.v1", "status": "FirstPairChecked",
                  "input_manifest_sha256": artifacts.digest(manifest_raw),
                  "source": source, "matrix": matrix, "controls": results,
                  "combined_proof_receipt": str(out / "bridge-kernel/report.json"),
                  "combined_fresh_kernel_replay": combined["fresh_kernel_replay"],
                  "budget": budget(start), "g1_pass": False, "release_relation_complete": False,
                  "scope": "actual full-range signed-negative64 source/IR/matrix primitive only",
                  "pending": ["full machine and Core bridge", "hash/codec primitives", "actual Nova embedding",
                              "cryptographic initialized chain", "durable publication", "complete cost campaign"]}
        write_json(out / "receipt.json", result)
        return result
    except (artifacts.driver.ProofError, OSError, ValueError) as exc:
        write_json(out / "failure.json", {"format_version": "core033.first-pair-failure.v1",
                   "input_manifest_sha256": artifacts.digest(manifest_raw), "status": "NotEstablished",
                   "reason": str(exc), "g1_pass": False})
        raise


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    try:
        result = run(args.manifest.resolve(), args.out.resolve())
    except (artifacts.driver.ProofError, OSError, ValueError, KeyError) as exc:
        print(json.dumps({"status": "NotEstablished", "reason": str(exc), "g1_pass": False}), file=sys.stderr)
        return 3
    print(json.dumps(result, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
