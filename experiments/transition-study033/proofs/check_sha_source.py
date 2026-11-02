"""Bind actual full shared SHA Rust bytes to the universally proved SHA program.

No field/machine/backend or G1 claim follows. Reuses only identity-checked real
native artifacts from the separately retained SHA diagnostic build.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil

import check_targets as driver
from source_quote import lean_ascii_chunks,lean_literal_chunks

proofs=Path(__file__).resolve().parent
base=Path("specs/033-core-proof-feasibility/evidence/scoped-chain").resolve()
source=Path("experiments/transition-study033/generated/sha-word-001/checker_step.rs").resolve()
raw=source.read_bytes()
if len(raw)>8388608:raise driver.ProofError("source exceeds frozen bound")
native=base/"sha-word-native-001"
native_receipt=json.loads((native/"receipt.json").read_text())
artifacts={"checker_step.rs":"source_sha256","libsha_word033.rlib":"library_sha256","native-vectors":"executable_sha256","native_vectors.rs":"harness_sha256"}
def native_identities():
    if native_receipt["outcome"]!="DiagnosticNativeAgreement":raise driver.ProofError("actual native diagnostic missing")
    for name,key in artifacts.items():
        if hashlib.sha256((native/name).read_bytes()).hexdigest()!=native_receipt[key]:
            raise driver.ProofError("native build identity changed: "+name)
    if (native/"checker_step.rs").read_bytes()!=raw:raise driver.ProofError("different source in native build")
native_identities()
parser=argparse.ArgumentParser()
parser.add_argument("--out",type=Path,required=True)
parser.add_argument("--reduction",choices=["kernel","cbv"],default="kernel")
parser.add_argument("--quote",choices=["ascii","literal"],default="ascii")
parser.add_argument("--program",choices=["shared","materialized"],default="shared")
parser.add_argument("--separate-bytes",action="store_true")
args=parser.parse_args()
program_module="SHAMaterializedFinal" if args.program=="materialized" else "SHA256Compiled"
program_namespace="SHAMaterialized" if args.program=="materialized" else "SHA256Compiled"
program_name="Core033."+program_namespace+".program"
out=args.out.resolve()
out.mkdir(exist_ok=False)
shutil.copyfile(__file__,out/"driver.py")
inputs=out/"proof-inputs";(inputs/"Core033").mkdir(parents=True)
modules=["Reference","SHA256","Codec","WordIR","WordSource","WordSourceChunks","WordStage","SHA256Stage","SHA256Schedule","SHA256Compiled","KernelDecide"]
if args.program=="materialized":modules[-1:-1]=["SHAMaterialized","SHAMaterializedFinal"]
targets={}
for name in modules:
    path=proofs/"Core033"/(name+".lean")
    shutil.copyfile(path,inputs/"Core033"/path.name)
    names=re.findall(r"^theorem ([A-Za-z_0-9]+)",path.read_text(),re.M)
    targets["Core033."+name]=["Core033."+("WordSource" if name=="WordSourceChunks" else "SHAMaterialized" if name=="SHAMaterializedFinal" else name)+"."+n for n in names]
lines=raw.splitlines(keepends=True)
chunks=lines[:-3]+[b"".join(lines[-3:])]
if b"".join(chunks)!=raw:raise driver.ProofError("chunking changed actual bytes")
quoted=(lean_literal_chunks if args.quote=="literal" else lean_ascii_chunks)(chunks)+"def actualBytes : List UInt8 := actualChunks.flatten\n"
if args.separate_bytes:
    (inputs/"ArtifactSHABytes.lean").write_text("namespace ArtifactSHASource\nset_option Elab.async false\nset_option maxRecDepth 65536\n"+quoted+"end ArtifactSHASource\n")
    targets["ArtifactSHABytes"]=[]
(inputs/"ArtifactSHASource.lean").write_text(
    ("import ArtifactSHABytes\n" if args.separate_bytes else "")+"import Core033."+program_module+"\nimport Core033.WordSourceChunks\nimport Core033.KernelDecide\nimport Lean.Elab.Tactic.Cbv\nnamespace ArtifactSHASource\n"
    "set_option cbv.warning false\nset_option cbv.maxSteps 8000000\nset_option Elab.async false\nset_option maxRecDepth 262144\nset_option maxHeartbeats 8000000\n"+("" if args.separate_bytes else quoted)+
    "theorem actual_validated : Core033.WordSource.validateChunks "+program_name+" actualChunks = true := by "+("decide_cbv" if args.reduction=="cbv" else "core033_kernel_decide")+"\n"
    "theorem actual_meaning (inputs : Nat → Core033.WordIR.Word) :\n"
    "  Core033.WordSource.NativeDenotes actualBytes inputs\n"
    "    (Core033.SHA256.stateWords (Core033.SHA256.compress (Core033.SHA256Compiled.expectedState inputs) (Core033.SHA256Compiled.expectedBlock inputs))) := by\n"
    "  have result := Core033.WordSource.actual_chunks_sound "+program_name+" actualChunks actual_validated inputs\n"
    "  rw [Core033."+program_namespace+".program_meaning] at result\n"
    "  exact result\nend ArtifactSHASource\n"
)
(out/"checker_step.rs").write_bytes(raw)
targets["ArtifactSHASource"]=["ArtifactSHASource.actual_validated","ArtifactSHASource.actual_meaning"]
report=driver.check_modules(inputs,targets,out/"kernel",audit_source=proofs/"Audit.lean")
if source.read_bytes()!=raw or (out/"checker_step.rs").read_bytes()!=raw:raise driver.ProofError("source changed during proof")
native_identities()
result={"format_version":"core033.sha-source-correspondence.v1","outcome":report["outcome"],"fresh_kernel_replay":report["fresh_kernel_replay"],
    "source_sha256":hashlib.sha256(raw).hexdigest(),"source_bytes":len(raw),"targets":len(report["theorems"]),"proof_report":str(out/"kernel/report.json"),
    "native_artifacts":native_receipt,"scope":"actual complete shared SHA compression source; no whole K/field/backend certificate", "field_correspondence":False,"release_relation_complete":False,"g1_pass":False}
(out/"receipt.json").write_text(json.dumps(result,sort_keys=True,indent=2)+"\n")
print(json.dumps({"outcome":report["outcome"],"targets":len(report["theorems"]),"source_bytes":len(raw),"fresh_kernel_replay":report["fresh_kernel_replay"],"g1_pass":False}))
