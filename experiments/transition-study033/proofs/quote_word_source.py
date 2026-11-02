"""Independently quote actual restricted word-source instructions, unchecked."""
import argparse,hashlib,json,re
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('source',type=Path);p.add_argument('--inputs',type=int,required=True);p.add_argument('--operations',type=int,required=True);p.add_argument('--outputs',type=int,required=True);p.add_argument('--module',required=True);p.add_argument('--model-module',required=True);p.add_argument('--model-program',required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args()
for name in [a.module,a.model_module,a.model_program]:
 if not re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]*(?:\.[A-Za-z_][A-Za-z_0-9]*)*',name):raise ValueError('invalid module/subject name')
raw=a.source.read_bytes();lines=raw.splitlines(keepends=True);statements=lines[a.inputs+2:-2]
if len(statements)!=a.operations:raise ValueError('actual statement count differs')
patterns=[(rb'r([0-9a-f]{8})\.wrapping_add\(r([0-9a-f]{8})\)',lambda m:f'.badd {int(m[1],16)} {int(m[2],16)}'),(rb'r([0-9a-f]{8}) & r([0-9a-f]{8})',lambda m:f'.band {int(m[1],16)} {int(m[2],16)}'),(rb'r([0-9a-f]{8}) \^ r([0-9a-f]{8})',lambda m:f'.bxor {int(m[1],16)} {int(m[2],16)}'),(rb'!r([0-9a-f]{8})',lambda m:f'.bnot {int(m[1],16)}'),(rb'r([0-9a-f]{8}) >> 0x([0-9a-f]{8})_u32',lambda m:f'.shr {int(m[1],16)} {int(m[2],16)}'),(rb'r([0-9a-f]{8})\.rotate_right\(0x([0-9a-f]{8})_u32\)',lambda m:f'.rotr {int(m[1],16)} {int(m[2],16)}'),(rb'0x([0-9a-f]{8})_u32',lambda m:f'.literal (BitVec.ofNat 32 {int(m[1],16)})')]
ops=[]
for i,line in enumerate(statements):
 m=re.fullmatch(rb'    let r([0-9a-f]{8}): u32 = (.*);\n',line)
 if not m or int(m[1],16)!=a.inputs+i:raise ValueError('actual destination/order differs')
 for pattern,quote in patterns:
  found=re.fullmatch(pattern,m[2])
  if found:ops.append(quote(found));break
 else:raise ValueError('unquotable actual statement')
outputs=[int(v,16) for v in re.findall(rb'r([0-9a-f]{8})',lines[-2])]
if len(outputs)!=a.outputs:raise ValueError('actual output count differs')
out=a.out.resolve();(out/'proof-inputs').mkdir(parents=True,exist_ok=False)
code=['import '+a.model_module,'import Core033.WordSourceBlocks','import Core033.KernelDecide','namespace '+a.module,'open Core033','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000',f'def program : WordIR.Program := ⟨{a.inputs},['+','.join(ops)+'],['+','.join(map(str,outputs))+']⟩',f'theorem ir_exact : program={a.model_program} := by core033_kernel_decide','theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide','end '+a.module];(out/'proof-inputs'/(a.module+'.lean')).write_text('\n'.join(code)+'\n');r={'format_version':'core033.actual-word-source-quote.v1','outcome':'QuotedUnchecked','source':str(a.source.resolve()),'source_sha256':hashlib.sha256(raw).hexdigest(),'inputs':a.inputs,'operations':len(ops),'outputs':len(outputs),'kernel_checked':False,'g1_pass':False};(out/'quote.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
