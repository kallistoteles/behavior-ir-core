"""Bounded actual scalar range instruction-row equations; final packet remains pending."""
import argparse,hashlib,json,re,shutil,subprocess,sys
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--source',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();source=a.source.resolve();sr=json.loads((source/'receipt.json').read_text())
if sr['outcome']!='Checked' or not sr['fresh_kernel_replay']:raise driver.ProofError('checked actual source required')
ir=(source/'proof-inputs/ActualRangeIR.lean').read_text();found=re.search(r'def program : WordIR.Program := ⟨1,\[(.*?)\],\[(.*?)\]⟩',ir)
if not found:raise driver.ProofError('missing complete quoted actual IR')
ops=found[1].split(',');outputs=[int(v) for v in found[2].split(',')]
if len(ops)!=54 or len(outputs)!=3:raise driver.ProofError('unexpected actual admitted scalar range program')
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir();matrix=Path('experiments/transition-study033/generated/scalar-ranges-001/matrix.bin').resolve();raw=matrix.read_bytes();(out/'matrix.bin').write_bytes(raw)
groups=[34]+[35 if op.startswith('.badd ') else 34 for op in ops]+[3];gp=out/'row-groups.json';gp.write_text(json.dumps({'group_sizes':groups})+'\n');quote=out/'actual-quote'
argv=[sys.executable,str(p/'quote_matrix.py'),str(matrix),'--groups',str(gp),'--out',str(quote),'--namespace','RangeInstructionData','--module-prefix','RangeInstructionMatrix'];r=subprocess.run(argv,capture_output=True,timeout=300,check=False);(out/'quotation.txt').write_bytes(r.stdout+r.stderr)
if r.returncode:raise driver.ProofError('independent actual instruction-row quotation failed')
meta=json.loads((quote/'quote.json').read_text());targets={}
for name in ['RangeInstructionMatrixConstants']+[f'RangeInstructionMatrixData{i}' for i in range((len(groups)+63)//64)]:
 shutil.copyfile(quote/(name+'.lean'),inputs/(name+'.lean'));targets[name]=[]
settings=['namespace RangeCheckedRows','open Core033 RangeInstructionData','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
parts=[('Inputs',0,1)]+[(str(g),1+start,min(1+start+64,55)) for g,start in enumerate(range(0,54,64))]+[('Outputs',55,56)]
for label,start,stop in parts:
 name='RangeRows'+label;code=['import ActualRangeIR','import ArtifactRangeBlocks','import Core033.MatrixRowBlocks','import Core033.KernelDecide']+[f'import RangeInstructionMatrixData{i}' for i in range(start//64,(stop-1)//64+1)]+settings;names=[]
 for i in range(start,stop):
  if i<1:expected=f'WordField.booleanBits actualModulus {i}++[WordField.packing actualModulus {i},SHA256Circuit.literalRow (WordField.carry {i}) false]'
  elif i<55:expected=f'WordField.canonicalRows actualModulus {i} ({ops[i-1]})'
  else:expected='WordMatrix.outputRows actualModulus ActualRangeIR.program'
  code += [f'theorem rows{i} : actualRows{i}={expected} := by core033_kernel_decide',f'theorem stats{i} : actualRows{i}.length={meta["groups"][i]["row_count"]} ∧ MatrixRowBlocks.rowsWeight actualRows{i}={meta["groups"][i]["encoded_bytes"]} := by core033_kernel_decide'];names.extend([f'rows{i}',f'stats{i}'])
 code += [f'def partRows{label} : List R1CS.Row := '+'++'.join(f'actualRows{i}' for i in range(start,stop))]
 if label.isdigit():
  code += [f'def partOps{label} : List WordIR.Op := ['+','.join(ops[start-1:stop-1])+']',f'theorem partExact{label} : partRows{label}=WordField.rows actualModulus {start} partOps{label} := by',f'  simp only [partRows{label},partOps{label},WordField.rows,'+','.join(f'rows{i}' for i in range(start,stop))+',List.append_assoc,List.append_nil]',f'theorem partLength{label} : partOps{label}.length={stop-start} := by decide'];names.extend([f'partExact{label}',f'partLength{label}'])
 rows=sum(meta['groups'][i]['row_count'] for i in range(start,stop));weight=sum(meta['groups'][i]['encoded_bytes'] for i in range(start,stop))
 code += [f'theorem partStats{label} : partRows{label}.length={rows} ∧ MatrixRowBlocks.rowsWeight partRows{label}={weight} := by',f'  simp only [partRows{label},List.length_append,MatrixRowBlocks.rows_weight_append,'+','.join(f'stats{i}.1,stats{i}.2' for i in range(start,stop))+']','  decide','end RangeCheckedRows'];names.append('partStats'+label)
 (inputs/(name+'.lean')).write_text('\n'.join(code)+'\n');targets[name]=['RangeCheckedRows.'+n for n in names]
(out/'target-inventory.json').write_text(json.dumps(targets,indent=2)+'\n')
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[source/'kernel/compiled'],fresh_replay=False)
if matrix.read_bytes()!=raw:raise driver.ProofError('actual matrix changed')
receipt={'format_version':'core033.actual-scalar-ranges-row-groups.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':False,'actual_row_groups':len(groups),'matrix_sha256':hashlib.sha256(raw).hexdigest(),'whole_matrix_correspondence':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
