"""Actual u32 source mutations must fail the same semantic validation goal."""
import hashlib
import json
import os
from pathlib import Path
import shutil

import check_targets as driver
from check_artifact import lean_bytes

base = Path("specs/033-core-proof-feasibility/evidence/scoped-chain").resolve()
good = base / "word-actual-source-001"
report = json.loads((good / "kernel/report.json").read_text())
if report["outcome"] != "Checked" or report["fresh_kernel_replay"] is not True:
    raise driver.ProofError("complete fresh positive source receipt required")
raw = (good / "checker_step.rs").read_bytes()
receipt = json.loads((good / "receipt.json").read_text())
if hashlib.sha256(raw).hexdigest() != receipt["source_sha256"]:
    raise driver.ProofError("positive input identity mismatch")
out = base / "word-source-controls-001"
out.mkdir(exist_ok=False)
seed = out / "checked-modules"
(seed / "Core033").mkdir(parents=True)
for module, identity in report["modules"].items():
    if not module.startswith("Core033."):
        continue
    source = good / "kernel/compiled" / Path(*module.split(".")).with_suffix(".olean")
    if hashlib.sha256(source.read_bytes()).hexdigest() != identity["olean_sha256"]:
        raise driver.ProofError("substituted checked semantic module")
    shutil.copyfile(source, seed / "Core033" / source.name)

def replace_once(old,new):
    if raw.count(old) != 1:
        raise driver.ProofError("ambiguous mutation fixture")
    return raw.replace(old,new,1)

mutations = {
    "xor-to-and": replace_once(b"r00000004 ^ r00000002",b"r00000004 & r00000002"),
    "wrapping-add-to-sub": replace_once(b".wrapping_add(",b".wrapping_sub("),
    "literal": replace_once(b"0x12345678_u32",b"0x12345679_u32"),
    "wrong-return": replace_once(b"[r00000004,",b"[r00000005,"),
    "wrong-parameter-type": replace_once(b"r00000000: u32",b"r00000000: u64"),
    "out-of-range-shift": replace_once(b"0x00000007_u32",b"0x00000020_u32"),
    "cfg": b"#[cfg(any())]\n"+raw,
    "macro": b"macro_rules! shadow { () => {0_u32}; }\n"+raw,
    "extra-function": raw+b"pub fn extra() -> u32 { 0_u32 }\n",
    "unsafe": replace_once(b"!r00000005",b"unsafe { !r00000005 }"),
}
results = []
for name,changed in mutations.items():
    directory = out / name
    directory.mkdir()
    (directory / "checker_step.rs").write_bytes(changed)
    source = directory / "ArtifactWordMutation.lean"
    source.write_text("import Core033.WordPrimitive\nset_option Elab.async false\nset_option maxRecDepth 65536\nset_option maxHeartbeats 4000000\n"+
        lean_bytes(changed)+"theorem actual_validated : Core033.WordSource.validate Core033.WordPrimitive.program actualBytes = true := by decide\n")
    env = dict(os.environ, LEAN_PATH=str(seed))
    try:
        driver._call(["lean","-j1",str(source)], cwd=directory, env=env, log=directory / "validator.txt")
    except driver.ProofError:
        diagnostic = (directory / "validator.txt").read_text()
        required = ["Tactic `decide` proved that the proposition", "Core033.WordSource.validate Core033.WordPrimitive.program actualBytes = true", "is false"]
        if not all(marker in diagnostic for marker in required):
            raise driver.ProofError("control failed before actual semantic rejection: "+name)
        results.append({"name":name,"outcome":"RejectedByActualValidator","source_sha256":hashlib.sha256(changed).hexdigest()})
    else:
        raise driver.ProofError("mutation accepted: "+name)
result = {"format_version":"core033.word-source-controls.v1","controls":results,"source_sha256":receipt["source_sha256"],
          "scope":"actual seven-op u32 fixture only; no full release relation","g1_pass":False}
(out / "receipt.json").write_text(json.dumps(result,sort_keys=True,indent=2)+"\n")
print(json.dumps({"strict_rejections":len(results),"g1_pass":False}))
