"""Supplementary all-output vectors only; no optimizer semantic authority."""
import argparse,hashlib,json,re
from pathlib import Path
p=argparse.ArgumentParser()
p.add_argument('--candidate',type=Path,required=True)
p.add_argument('--out',type=Path,required=True)
a=p.parse_args()
original=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/frame-hash-controller-source-001')
old=json.loads((original/'operation-literals.json').read_text())
new=json.loads((a.candidate/'operations.json').read_text())
alias=json.loads((a.candidate/'aliases.json').read_text())
text=(original/'proof-inputs/ActualFrameHashControllerIR.lean').read_text()
match=re.search(r'def program : WordIR.Program := ⟨43,operationChunks.flatten,\[(.*?)\]⟩',text)
if match is None:raise RuntimeError('complete source IR required')
outputs=list(map(int,match[1].split(',')))

def evaluate(ops,inputs,ports):
    values=list(inputs)
    for op in ops:
        pieces=op.split();kind=pieces[0]
        if kind=='.literal':value=int(pieces[-1].rstrip(')'))
        else:
            x=values[int(pieces[1])]
            if kind=='.bnot':value=(~x)&0xffffffff
            elif kind=='.shr':value=x>>int(pieces[2])
            elif kind=='.rotr':
                n=int(pieces[2])%32;value=((x>>n)|(x<<((32-n)%32)))&0xffffffff
            else:
                y=values[int(pieces[2])]
                if kind=='.badd':value=(x+y)&0xffffffff
                elif kind=='.band':value=x&y
                elif kind=='.bxor':value=x^y
                else:raise RuntimeError('unknown operation')
        values.append(value)
    return [values[i] for i in ports]

cases=0
for phase in [0,1,2,3,4,0xffffffff]:
    for counter in [0,1,255,256,0xffffffff]:
        for kind in [0,1,2,0xffffffff]:
            for large in [False,True]:
                inputs=[(0x12345678+i*0x01928374)&0xffffffff for i in range(43)]
                inputs[:3]=[phase,kind,counter]
                inputs[27:31]=[0xffffffff]*4 if large else [1,0,2,0]
                inputs[31:35]=[1,1,0,1] if large else [0,1,0xdeadbeef,1]
                before=evaluate(old,inputs,outputs)
                after=evaluate(new,inputs,[alias[i] for i in outputs])
                if before!=after:raise RuntimeError('sharing candidate changes an original output')
                cases+=1
a.out.mkdir(exist_ok=False)
(a.out/'driver.py').write_bytes(Path(__file__).read_bytes())
r={'outcome':'NativeAllOutputsEqual','cases':cases,'outputs_per_case':len(outputs),
   'candidate_lean_sha256':hashlib.sha256((a.candidate/'SharedFrameCandidate.lean').read_bytes()).hexdigest(),
   'scope':'supplementary finite word-interpreter vectors, including invalid/full-width phases/counters/kinds/counts/flags; no kernel semantic/correspondence or speedup authority',
   'g1_pass':False}
(a.out/'receipt.json').write_text(json.dumps(r,indent=2)+'\n')
print(json.dumps(r))
