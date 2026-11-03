"""Untrusted four-compression witness; full endpoint checked against hashlib."""
import argparse, hashlib, json, re, struct
from pathlib import Path

p=argparse.ArgumentParser()
p.add_argument('--out',type=Path,required=True)
a=p.parse_args()
root=Path('specs/033-core-proof-feasibility/evidence/scoped-chain')
source=root/'hash-block-source-001'
matrix_dir=root/'guarded-hash-block-actual-matrix-002'
for file in [source/'kernel/report.json',matrix_dir/'kernel/report.json']:
    r=json.loads(file.read_text())
    if r['outcome']!='Checked' or not r['fresh_kernel_replay']:
        raise RuntimeError('genuine complete checked source/matrix required')
raw=(matrix_dir/'matrix.bin').read_bytes()
digest=hashlib.sha256(raw).hexdigest()
binding=json.loads((root/'guarded-hash-block-matrix-closed-value-binding-001/receipt.json').read_text())
if binding['outcome']!='BoundCheckedValue' or binding['sha256']!=digest:
    raise RuntimeError('complete actual guarded matrix value binding required')
ops=json.loads((source/'operation-literals.json').read_text())
text=(source/'proof-inputs/ActualHashBlockIR.lean').read_text()
found=re.search(r'def program : WordIR.Program := ⟨72,operationChunks.flatten,\[(.*?)\]⟩',text)
if found is None or len(ops)!=3608: raise RuntimeError('unexpected actual hash IR')
outputs=list(map(int,found[1].split(',')))
variables,ni,np,no,nr,one,nports=[int.from_bytes(raw[54+4*i:58+4*i],'little') for i in range(7)]
if (variables,ni,np,no,nr,one,nports)!=(125193,72,125048,72,125968,0,125192):
    raise RuntimeError('unexpected actual matrix shape')
ports=[int.from_bytes(raw[82+4*i:86+4*i],'little') for i in range(nports)]
if ports[:ni]!=[1+34*i for i in range(72)] or len(outputs)!=72:
    raise RuntimeError('complete input/output port layout differs')

def witness(inputs):
    words=list(inputs)
    carries=[0]*ni
    for op in ops:
        pieces=op.split()
        kind=pieces[0]
        carry=0
        if kind=='.literal': value=int(pieces[-1].rstrip(')'))
        else:
            x=words[int(pieces[1])]
            if kind=='.bnot': value=(~x)&0xffffffff
            elif kind=='.shr': value=x>>int(pieces[2])
            elif kind=='.rotr':
                n=int(pieces[2])%32
                value=((x>>n)|(x<<((32-n)%32)))&0xffffffff
            else:
                y=words[int(pieces[2])]
                if kind=='.badd':
                    total=x+y
                    value=total&0xffffffff
                    carry=total>>32
                elif kind=='.band': value=x&y
                elif kind=='.bxor': value=x^y
                else: raise RuntimeError('unsupported actual operation')
        words.append(value)
        carries.append(carry)
    result=[words[i] for i in outputs]
    if result[8:]!=[1]*64: raise RuntimeError('actual byte guards reject witness')
    wires=[None]*variables
    wires[0]=1
    for register,(value,carry) in enumerate(zip(words,carries)):
        base=1+34*register
        wires[base]=value
        wires[base+1:base+33]=[(value>>bit)&1 for bit in range(32)]
        wires[base+33]=carry
    for wire,value in zip(ports[ni+np:],result): wires[wire]=value
    if any(value is None for value in wires): raise RuntimeError('unassigned actual variable')
    return wires,result[:8]

initial=[0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19]
state=initial
witnesses=[]
blocks=[bytes(64)]*3+[b'\x80'+bytes(55)+(192*8).to_bytes(8,'big')]
for block in blocks:
    wires,state=witness(state+list(block))
    witnesses.append(wires)
expected=list(struct.unpack('>8I',hashlib.sha256(bytes(192)).digest()))
if state!=expected: raise RuntimeError('actual IR four-block endpoint differs from full independent hashlib digest')
a.out.mkdir(exist_ok=False)
(a.out/'driver.py').write_bytes(Path(__file__).read_bytes())
(a.out/'witnesses.json').write_text(json.dumps({'matrix_sha256':digest,'wires':witnesses,'initial':initial,'expected':expected})+'\n')
(a.out/'receipt.json').write_text(json.dumps({'outcome':'UntrustedWitnessPrepared','matrix_sha256':digest,'steps':4,
    'full_hashlib_endpoint_equal':True,'message_bytes':192,'scope':'native preparation only; no Nova embedding, proved original-message binding, Core or G1 authority','g1_pass':False},indent=2)+'\n')
print(json.dumps({'outcome':'UntrustedWitnessPrepared','steps':4,'matrix_sha256':digest,'full_hashlib_endpoint_equal':True,'g1_pass':False}))
