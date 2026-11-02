"""Diagnose proof-producing call-by-value reduction, with the same kernel/limits.

No native_decide, native axiom, semantic relaxation, or G1 claim is permitted.
"""
import argparse
import os
from pathlib import Path
import sys
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p))
import check_targets
from source_quote import lean_ascii_chunks
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True)
parser.add_argument('mode',choices=['count','literal','scope']);args=parser.parse_args()
out=args.out.resolve();out.mkdir(exist_ok=False)
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain').resolve()
body='import Core033.SHA256Compiled\nimport Lean.Elab.Tactic.Cbv\nset_option Elab.async false\nset_option cbv.warning false\nset_option cbv.maxSteps 8000000\nset_option maxRecDepth 65536\nset_option maxHeartbeats 8000000\n'
if args.mode=='count':body+='theorem result : Core033.SHA256Compiled.program.operations.length = 2360 := by decide_cbv\n'
if args.mode=='scope':body+='theorem result : Core033.WordSource.checkSafe (Core033.WordSource.lowerFunction Core033.SHA256Compiled.program)=true := by decide_cbv\n'
if args.mode=='literal':
 raw=Path('experiments/transition-study033/generated/sha-word-001/checker_step.rs').read_bytes();lines=raw.splitlines(keepends=True)
 body+=lean_ascii_chunks(lines[:-3]+[b''.join(lines[-3:])])+'theorem result : (actualChunks.map List.length).sum = 130323 := by decide_cbv\n'
source=out/'Diagnostic.lean';source.write_text(body)
env=dict(os.environ,LEAN_PATH=str(base/'sha-actual-source-004/kernel/compiled'))
check_targets._call(['lean','-j1','-o',str(out/'Diagnostic.olean'),str(source)],cwd=out,env=env,log=out/'kernel.txt')
print('Diagnostic proof compiled; no axiom audit/fresh replay has yet established Checked.')
