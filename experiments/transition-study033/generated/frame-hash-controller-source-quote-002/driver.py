"""Untrusted declaration partitioning; preserves every independently quoted literal.

The resulting IR still needs the kernel's complete equality/safety proof. This
preparation does not alter semantic limits or grant correspondence authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--previous',type=Path,required=True);parser.add_argument('--module',required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
old=a.previous.resolve();out=a.out.resolve();(out/'proof-inputs').mkdir(parents=True,exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
if not re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]*',a.module):raise ValueError('invalid module')
source=old/'proof-inputs'/(a.module+'.lean');code=source.read_text();match=re.search(r'def program : WordIR.Program := ⟨([0-9]+),\[(.*?)\],\[(.*?)\]⟩',code)
if not match:raise ValueError('complete flat actual IR required')
count=int(match[1]);operations=match[2].split(',');outputs=match[3];chunks=[operations[index:index+64] for index in range(0,len(operations),64)]
replacement='\n'.join(f'def operations{group} : List WordIR.Op := ['+','.join(chunk)+']' for group,chunk in enumerate(chunks))+'\ndef operationChunks : List (List WordIR.Op) := ['+','.join('operations'+str(group) for group in range(len(chunks)))+']\ndef program : WordIR.Program := ⟨'+str(count)+',operationChunks.flatten,['+outputs+']⟩'
code=code[:match.start()]+replacement+code[match.end():];(out/'proof-inputs'/(a.module+'.lean')).write_text(code);(out/'operation-literals.json').write_text(json.dumps(operations)+'\n')
meta=json.loads((old/'quote.json').read_text());raw=Path(meta['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=meta['source_sha256']:raise ValueError('actual source changed')
meta['declaration_partition']='64-operation literal blocks; all original instruction literals retained';meta['previous_quotation_sha256']=hashlib.sha256((old/'quote.json').read_bytes()).hexdigest();(out/'quote.json').write_text(json.dumps(meta,indent=2,sort_keys=True)+'\n');print(json.dumps({'outcome':'PartitionedUnchecked','operations':len(operations),'declaration_blocks':len(chunks),'g1_pass':False}))
