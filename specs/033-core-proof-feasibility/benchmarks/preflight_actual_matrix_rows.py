"""Generate a bounded diagnostic actual-numeric-row comparison; no receipt authority."""
import argparse,json,re,shutil
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);parser.add_argument('--first',type=int,default=0);parser.add_argument('--count',type=int,default=64);a=parser.parse_args()
p=Path('experiments/transition-study033/proofs');q=Path('experiments/transition-study033/generated/sha-word-matrix-quote-001');out=a.out;out.mkdir(exist_ok=False)
mat=(p/'Core033/SHAMaterialized.lean').read_text()+'\n'+(p/'Core033/SHAMaterializedFinal.lean').read_text()
fragments={int(n):ops for n,ops in re.findall(r'^def ops(\d+) : List WordIR.Op := \[(.*?)\]\+\+ops\d+$',mat,re.M)}
ops=[op for n in range(1,114) for op in reversed(fragments[n].split(','))]
meta=json.loads((q/'quote.json').read_text());stop=min(a.first+a.count,len(meta['groups']))
for name in ['ActualMatrixConstants']+[f'ActualMatrixData{i}' for i in range(a.first//64,(stop-1)//64+1)]:shutil.copyfile(q/(name+'.lean'),out/(name+'.lean'))
code=['import Core033.WordMatrix','import Core033.KernelDecide']+[f'import ActualMatrixData{i}' for i in range(a.first//64,(stop-1)//64+1)]+['namespace ActualMatrixPreflight','open Core033 ActualSHAWordMatrixData','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
for i in range(a.first,stop):
 if i<24:expected=f'WordField.booleanBits actualModulus {i}++[WordField.packing actualModulus {i},SHA256Circuit.literalRow (WordField.carry {i}) false]'
 elif i<2384:expected=f'WordField.canonicalRows actualModulus {i} ({ops[i-24]})'
 else:raise ValueError('output group needs separate bridge')
 code += [f'theorem rows{i} : actualRows{i}={expected} := by core033_kernel_decide',f'theorem size{i} : actualRows{i}.length={meta["groups"][i]["row_count"]} := by core033_kernel_decide']
code+=['end ActualMatrixPreflight'];(out/'Compare.lean').write_text('\n'.join(code)+'\n')
