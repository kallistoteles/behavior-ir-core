"""Diagnostic actual native SHA boundary runs; not source/matrix correspondence."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import struct
import sys

proofs=Path("experiments/transition-study033/proofs").resolve()
sys.path.insert(0,str(proofs))
import check_targets
source=Path("experiments/transition-study033/generated/sha-word-001/checker_step.rs").resolve()
raw=source.read_bytes()
out=Path("specs/033-core-proof-feasibility/evidence/scoped-chain/sha-word-native-001").resolve()
out.mkdir(exist_ok=False)
snapshot=out/"checker_step.rs";snapshot.write_bytes(raw)
env=dict(os.environ);env.pop("RUSTC_BOOTSTRAP",None)
rustc=shutil.which("rustc")
version=check_targets._call([rustc,"-Vv"],cwd=out,env=env,log=out/"compiler.txt")
if not version.startswith("rustc 1.98.1 ") or "host: x86_64-unknown-linux-gnu" not in version:
    raise ValueError("wrong compiler/target")
flags=["--edition=2024","--target=x86_64-unknown-linux-gnu","-C","opt-level=3","-C","debuginfo=0"]
lib=out/"libsha_word033.rlib"
check_targets._call([rustc,*flags,"--crate-type=rlib","--crate-name","sha_word033",str(snapshot),"-o",str(lib)],cwd=out,env=env,log=out/"library-build.txt")
messages=[b"",b"abc",b"a"*55,b"a"*56,b"a"*64,bytes(range(65)),b"a"*1024]
initial=[0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19]
lines=["fn main() {"]
for msg in messages:
    padded=msg+b"\x80"+b"\0"*((55-len(msg))%64)+struct.pack(">Q",len(msg)*8)
    lines.append("    { let mut state=["+",".join(f"{n}_u32" for n in initial)+"];")
    for offset in range(0,len(padded),64):
        words=struct.unpack(">16I",padded[offset:offset+64])
        args=[f"state[{i}]" for i in range(8)]+[f"{word}_u32" for word in words]
        lines.append("      state=sha_word033::checker_step("+",".join(args)+");")
    lines.append('      println!("'+"{:08x}"*8+'",'+",".join(f"state[{i}]" for i in range(8))+"); }")
lines.append("}")
harness=out/"native_vectors.rs";harness.write_text("\n".join(lines)+"\n")
exe=out/"native-vectors"
check_targets._call([rustc,*flags,str(harness),"--extern","sha_word033="+str(lib),"-o",str(exe)],cwd=out,env=env,log=out/"harness-build.txt")
actual=check_targets._call([str(exe)],cwd=out,env=env,log=out/"native-vectors.txt")
expected="".join(hashlib.sha256(msg).hexdigest()+"\n" for msg in messages)
if actual!=expected:raise ValueError("actual native SHA differs from independent hashlib vectors")
if source.read_bytes()!=raw or snapshot.read_bytes()!=raw:raise ValueError("changed build input")
result={"format_version":"core033.generated-sha-native-diagnostic.v1","outcome":"DiagnosticNativeAgreement","vectors":len(messages),
    "source_sha256":hashlib.sha256(raw).hexdigest(),"source_bytes":len(raw),"library_sha256":hashlib.sha256(lib.read_bytes()).hexdigest(),
    "executable_sha256":hashlib.sha256(exe.read_bytes()).hexdigest(),"harness_sha256":hashlib.sha256(harness.read_bytes()).hexdigest(),
    "compiler":version.strip(),"flags":flags,"source_correspondence":False,"field_correspondence":False,"release_relation_complete":False,"g1_pass":False}
(out/"receipt.json").write_text(json.dumps(result,sort_keys=True,indent=2)+"\n")
print(json.dumps(result,sort_keys=True))
