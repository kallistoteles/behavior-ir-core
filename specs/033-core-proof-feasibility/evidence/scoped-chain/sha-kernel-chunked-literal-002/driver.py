"""Diagnose proof-producing call-by-value reduction, with the same kernel/limits.

No native_decide, native axiom, semantic relaxation, or G1 claim is permitted.
"""
import argparse
import os
import shutil
from pathlib import Path
import sys
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p))
import check_targets
from source_quote import lean_ascii_chunks
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True)
parser.add_argument('--seed',type=Path)
parser.add_argument('--reduction',choices=['kernel','cbv'],default='cbv')
parser.add_argument('mode',choices=['count','literal','scope']);args=parser.parse_args()
out=args.out.resolve();out.mkdir(exist_ok=False)
shutil.copyfile(__file__,out/'driver.py')
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain').resolve()
body='import Core033.SHA256Compiled\nimport Lean.Elab.Tactic.Cbv\nimport Core033.KernelDecide\nset_option Elab.async false\nset_option cbv.warning false\nset_option cbv.maxSteps 8000000\nset_option maxRecDepth 65536\nset_option maxHeartbeats 8000000\n'
if args.mode=='count':body+='theorem result : Core033.SHA256Compiled.program.operations.length = 2360 := by decide_cbv\n'
if args.mode=='scope':body+='theorem result : Core033.WordSource.checkSafe (Core033.WordSource.lowerFunction Core033.SHA256Compiled.program)=true := by decide_cbv\n'
if args.mode=='literal':
 raw=Path('experiments/transition-study033/generated/sha-word-001/checker_step.rs').read_bytes();lines=raw.splitlines(keepends=True)
 body+=lean_ascii_chunks(lines[:-3]+[b''.join(lines[-3:])])+'theorem result : (actualChunks.map List.length).sum = 130323 := by decide_cbv\n'
if args.reduction=='kernel':body=body.replace('by decide_cbv','by core033_kernel_decide')
source=out/'Diagnostic.lean';source.write_text(body)
env=dict(os.environ,LEAN_PATH=str(args.seed.resolve() if args.seed else base/'sha-actual-source-004/kernel/compiled'))
check_targets._call(['lean','-j1','-s16384','-o',str(out/'Diagnostic.olean'),str(source)],cwd=out,env=env,log=out/'kernel.txt')
print('Diagnostic proof compiled; no axiom audit/fresh replay has yet established Checked.')
