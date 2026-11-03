"""Untrusted exact-expression sharing candidate; kernel certificate remains required."""
import argparse, hashlib, json, re
from pathlib import Path

p=argparse.ArgumentParser()
p.add_argument('--out',type=Path,required=True)
a=p.parse_args()
source=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/frame-hash-controller-source-001')
report=json.loads((source/'kernel/report.json').read_text())
if report['outcome']!='Checked' or not report['fresh_kernel_replay']:
    raise RuntimeError('complete original source correspondence required')
raw_ops=(source/'operation-literals.json').read_bytes()
ops=json.loads(raw_ops)
ir=(source/'proof-inputs/ActualFrameHashControllerIR.lean').read_text()
found=re.search(r'def program : WordIR.Program := ⟨43,operationChunks.flatten,\[(.*?)\]⟩',ir)
if found is None or len(ops)!=8827: raise RuntimeError('unexpected complete original IR')
outputs=list(map(int,found[1].split(',')))
if len(outputs)!=125: raise RuntimeError('missing original output')
aliases=list(range(43))
seen={}
shared=[]
for position,op in enumerate(ops):
    pieces=op.split()
    kind=pieces[0]
    if kind=='.literal': key=op
    else:
        old=int(pieces[1])
        if old>=43+position: raise RuntimeError('invalid source operand')
        args=[aliases[old]]
        if kind in ['.band','.bxor','.badd']:
            old=int(pieces[2])
            if old>=43+position: raise RuntimeError('invalid source operand')
            args.append(aliases[old])
        elif kind in ['.rotr','.shr']: args.append(int(pieces[2]))
        elif kind!='.bnot': raise RuntimeError('unsupported operator')
        # No operand reordering, constant folding or algebraic inference.
        key=kind+' '+' '.join(map(str,args))
    if key not in seen:
        seen[key]=43+len(shared)
        shared.append(key)
    aliases.append(seen[key])
mapped=[aliases[index] for index in outputs]
a.out.mkdir(exist_ok=False)
(a.out/'driver.py').write_bytes(Path(__file__).read_bytes())
(a.out/'operations.json').write_text(json.dumps(shared)+'\n')
(a.out/'aliases.json').write_text(json.dumps(aliases)+'\n')
code=['import Core033.WordSharingCertificate','import ActualFrameHashControllerIR','import Core033.KernelDecide',
      'namespace SharedFrameCandidate','open Core033 WordIR WordSharingCertificate',
      'set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
for group,start in enumerate(range(0,len(shared),64)):
    code.append(f'def operations{group} : List Op := ['+','.join(shared[start:start+64])+']')
code.append('def operationChunks : List (List Op) := ['+','.join('operations'+str(i) for i in range((len(shared)+63)//64))+']')
code.append('def target : Program := ⟨43,operationChunks.flatten,['+','.join(map(str,mapped))+']⟩')
code.append('def certificate : Certificate := ⟨['+','.join(map(str,aliases))+']⟩')
code += ['theorem certificate_checked : check ActualFrameHashControllerIR.program target certificate=true := by core033_kernel_decide',
         'theorem complete_meaning (inputs : Nat → Word) : ActualFrameHashControllerIR.program.eval inputs=target.eval inputs :=',
         '  checked_program_meaning _ _ _ certificate_checked inputs','end SharedFrameCandidate']
(a.out/'SharedFrameCandidate.lean').write_text('\n'.join(code)+'\n')
result={'format_version':'core033.untrusted-sharing-candidate.v1','outcome':'PreparedUncheckedSharingCandidate',
        'original_source_receipt_sha256':hashlib.sha256((source/'receipt.json').read_bytes()).hexdigest(),
        'original_ops_sha256':hashlib.sha256(raw_ops).hexdigest(),'original_operations':len(ops),
        'candidate_operations':len(shared),'aliases':len(aliases),'outputs':len(mapped),
        'conditional_same_word_encoding_rows':43*34+sum(35 if op.startswith('.badd ') else 34 for op in shared)+125+82,
        'scope':'pure exact-expression CSE preparation only; no semantic/actual source/matrix/proving-cost authority before kernel certificate and new bindings',
        'g1_pass':False}
(a.out/'receipt.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print(json.dumps(result))
