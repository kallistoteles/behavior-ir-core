"""Check every ASCII code through Lean's parser/kernel, including quote escapes."""
import os
from pathlib import Path
import sys

p=Path("experiments/transition-study033/proofs").resolve()
sys.path.insert(0,str(p))
import check_targets
from source_quote import lean_ascii_bytes
out=Path("specs/033-core-proof-feasibility/evidence/scoped-chain/source-quote-002").resolve()
out.mkdir(exist_ok=False)
source=out/"QuoteExact.lean"
source.write_text("import Core033.KernelDecide\nset_option maxRecDepth 65536\n"+lean_ascii_bytes(bytes(range(128)))+
    "theorem quote_exact : actualBytes = (List.range 128).map UInt8.ofNat := by core033_kernel_decide\n")
env=dict(os.environ,LEAN_PATH=str(p/".lake/build/lib/lean"))
check_targets._call(["lean","-j1",str(source)],cwd=out,env=env,log=out/"kernel-quote-check.txt")
try:lean_ascii_bytes(b"\xff")
except UnicodeDecodeError:pass
else:raise ValueError("non-ASCII source was silently recoded")
print("Every ASCII byte preserved through actual Lean quoting; non-ASCII source rejected without recoding.")
