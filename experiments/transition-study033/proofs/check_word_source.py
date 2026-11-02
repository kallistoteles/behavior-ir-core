"""Check actual u32 fixture bytes with grammar/SSA proofs, then standalone rustc.

This fixture exercises seven operations. It is not the full SHA/K program and
cannot produce a release, proof-system key, certified transition or G1 pass.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil

import check_targets as driver
from check_artifact import lean_bytes

PROOFS = Path(__file__).resolve().parent
MODULES = ["Reference", "SHA256", "Codec", "WordIR", "WordSource", "WordPrimitive", "KernelDecide"]

def check(path, out, *, fresh_replay=True):
    path, out = Path(path).resolve(), Path(out).resolve()
    if path.stat().st_size > 8 * 1024**2:
        raise driver.ProofError("source exceeds frozen bound")
    raw = path.read_bytes()
    out.mkdir(parents=True, exist_ok=False)
    inputs = out / "proof-inputs"
    (inputs / "Core033").mkdir(parents=True)
    targets = {}
    for module in MODULES:
        source = PROOFS / "Core033" / (module + ".lean")
        shutil.copyfile(source, inputs / "Core033" / source.name)
        names = re.findall(r"^theorem ([A-Za-z_0-9]+)", source.read_text(), re.M)
        targets["Core033." + module] = ["Core033." + module + "." + n for n in names]
    (inputs / "ArtifactWordSource.lean").write_text(
        "import Core033.WordPrimitive\nnamespace ArtifactWordSource\n"
        "set_option Elab.async false\nset_option maxRecDepth 65536\nset_option maxHeartbeats 4000000\n" + lean_bytes(raw) +
        "theorem actual_validated : Core033.WordSource.validate Core033.WordPrimitive.program actualBytes = true := by decide\n"
        "theorem actual_meaning (inputs : Nat → Core033.WordIR.Word) :\n"
        "  Core033.WordSource.NativeDenotes actualBytes inputs (Core033.WordPrimitive.program.eval inputs) :=\n"
        "  Core033.WordSource.actual_bytes_sound Core033.WordPrimitive.program actualBytes actual_validated inputs\n"
        "end ArtifactWordSource\n"
    )
    targets["ArtifactWordSource"] = ["ArtifactWordSource.actual_validated", "ArtifactWordSource.actual_meaning"]
    snapshot = out / "checker_step.rs"
    snapshot.write_bytes(raw)
    report = driver.check_modules(inputs, targets, out / "kernel", audit_source=PROOFS / "Audit.lean", fresh_replay=fresh_replay)
    if path.read_bytes() != raw or snapshot.read_bytes() != raw:
        raise driver.ProofError("actual source changed during checking")
    rustc = shutil.which("rustc")
    if not rustc:
        raise driver.ProofError("pinned rustc unavailable")
    env = dict(os.environ)
    env.pop("RUSTC_BOOTSTRAP", None)
    version = driver._call([rustc, "-Vv"], cwd=out, env=env, log=out / "rustc-version.txt")
    if not version.startswith("rustc 1.98.1 ") or "host: x86_64-unknown-linux-gnu" not in version:
        raise driver.ProofError("wrong compiler/host")
    flags = ["--edition=2024", "--target=x86_64-unknown-linux-gnu", "-C", "opt-level=3", "-C", "debuginfo=0"]
    library = out / "libcore033_word_checked.rlib"
    driver._call([rustc, *flags, "--crate-name", "core033_word_checked", "--crate-type=rlib", str(snapshot), "-o", str(library)],
                 cwd=out, env=env, log=out / "native-library-build.txt")
    cases = [(0, 0, 0), (2**32-1, 2**32-1, 0), (2**31, 2**31-1, 2**32-1), (0xdeadbeef, 0x87654321, 0xabcdef01)]
    harness = out / "native_harness.rs"
    calls = "\n".join(f'    println!("{{:?}}", core033_word_checked::checker_step({a}_u32,{b}_u32,{c}_u32));' for a,b,c in cases)
    harness.write_text("fn main() {\n" + calls + "\n}\n")
    executable = out / "native-boundaries"
    driver._call([rustc, *flags, str(harness), "--extern", "core033_word_checked="+str(library), "-o", str(executable)],
                 cwd=out, env=env, log=out / "native-harness-build.txt")
    actual = driver._call([str(executable)], cwd=out, env=env, log=out / "native-boundaries.txt")
    outputs = []
    for x,y,z in cases:
        a=x & y; b=a ^ z; c=(~b)&0xffffffff; d=(c+0x12345678)&0xffffffff
        e=((d>>13)|(d<<19))&0xffffffff
        outputs.append([a,b,c,d,e,e>>7])
    expected = "".join(str(values)+"\n" for values in outputs)
    if actual != expected:
        raise driver.ProofError("native outputs differ from independent boundary calculation")
    if path.read_bytes() != raw or snapshot.read_bytes() != raw:
        raise driver.ProofError("actual build input changed")
    result = {"format_version": "core033.word-source-correspondence.v1", "scope": "actual seven-op u32 fixture only; full SHA/K/field/codec/backend pending",
        "outcome": report["outcome"], "fresh_kernel_replay": report["fresh_kernel_replay"],
        "source_sha256": hashlib.sha256(raw).hexdigest(), "source_bytes": len(raw),
        "library_sha256": hashlib.sha256(library.read_bytes()).hexdigest(), "executable_sha256": hashlib.sha256(executable.read_bytes()).hexdigest(),
        "harness_sha256": hashlib.sha256(harness.read_bytes()).hexdigest(), "compiler": version.strip(), "flags": flags,
        "proof_report": str(out / "kernel/report.json"), "targets": len(report["theorems"]),
        "release_relation_complete": False, "g1_pass": False}
    (out / "receipt.json").write_text(json.dumps(result, sort_keys=True, indent=2)+"\n")
    return result

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    try:
        print(json.dumps(check(args.input, args.out), sort_keys=True))
    except (OSError, ValueError) as exc:
        print(json.dumps({"status":"RejectedEvidence", "reason":str(exc), "g1_pass":False}))
        return 3
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
