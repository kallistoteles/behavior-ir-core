"""Isolate bounded kernel work; failures remain diagnostic and confer no authority."""
import argparse
import os
from pathlib import Path
import sys
p=Path("experiments/transition-study033/proofs").resolve();sys.path.insert(0,str(p))
import check_targets
from source_quote import lean_ascii_bytes
parser=argparse.ArgumentParser();parser.add_argument("mode",choices=["count","scope","literal"]);args=parser.parse_args()
base=Path("specs/033-core-proof-feasibility/evidence/scoped-chain").resolve()
out=base/("sha-source-diagnose-"+args.mode+"-001");out.mkdir(exist_ok=False)
body="import Core033.SHA256Compiled\nimport Core033.KernelDecide\nset_option Elab.async false\nset_option maxRecDepth 262144\nset_option maxHeartbeats 8000000\n"
if args.mode=="count":body+="theorem count_exact : Core033.SHA256Compiled.program.operations.length = 2360 := by core033_kernel_decide\n"
if args.mode=="scope":body+="theorem scope_exact : Core033.WordSource.checkSafe (Core033.WordSource.lowerFunction Core033.SHA256Compiled.program) = true := by core033_kernel_decide\n"
if args.mode=="literal":
 raw=Path("experiments/transition-study033/generated/sha-word-001/checker_step.rs").read_bytes()
 body+=lean_ascii_bytes(raw)+"theorem input_size : actualBytes.length = 130323 := by core033_kernel_decide\n"
source=out/"Diagnostic.lean";source.write_text(body)
env=dict(os.environ,LEAN_PATH=str(base/"sha-actual-source-003/kernel/compiled"))
print(check_targets._call(["lean","-j1",str(source)],cwd=out,env=env,log=out/"kernel.txt"))
