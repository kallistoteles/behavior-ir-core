"""Bounded actual fixed local controlled path round instruction-row equations; final packet remains pending."""
import argparse,hashlib,json,re,shutil,subprocess,sys
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--source',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();source=a.source.resolve();sr=json.loads((source/'receipt.json').read_text())
if sr['outcome']!='Checked' or not sr['fresh_kernel_replay']:raise driver.ProofError('fresh checked complete actual IR required; actual source bytes remain separate')
prior=json.loads((source/'kernel/report.json').read_text())
if prior['outcome']!='Checked' or not prior['fresh_kernel_replay']:raise driver.ProofError('genuine fresh actual IR kernel required')
for module,entry in prior['modules'].items():
 file=source/'kernel/compiled'/Path(*module.split('.')).with_suffix('.olean')
 if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('changed checked actual IR module')
for relative,entry in prior['seeded_modules'].items():
 if hashlib.sha256((source/'kernel/compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('changed checked actual IR dependency')
ir=(source/'proof-inputs/ActualPairedPathRoundIR.lean').read_text()
ops=json.loads((source/'operation-literals.json').read_text())
found=re.search(r'def program : WordIR.Program := ⟨96,operationChunks.flatten,\[(.*?)\]⟩',ir)
if not found:raise driver.ProofError('complete chunked actual IR required')
outputs=[int(value) for value in found[1].split(',')]
if len(ops)!=13203 or len(outputs)!=187:raise driver.ProofError('unexpected actual admitted fixed local controlled path round program')
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir();matrix=Path('experiments/transition-study033/generated/paired-path-round-matrix-001/matrix.bin').resolve();raw=matrix.read_bytes();(out/'matrix.bin').write_bytes(raw)
groups=[34]*96+[35 if op.startswith('.badd ') else 34 for op in ops]+[187,91];gp=out/'row-groups.json';gp.write_text(json.dumps({'group_sizes':groups})+'\n');quote=out/'actual-quote'
argv=[sys.executable,str(p/'quote_matrix_compact.py'),str(matrix),'--groups',str(gp),'--out',str(quote),'--namespace','PairedPathRoundInstructionData','--module-prefix','PairedPathRoundInstructionMatrix'];r=subprocess.run(argv,capture_output=True,timeout=300,check=False);(out/'quotation.txt').write_bytes(r.stdout+r.stderr)
if r.returncode:raise driver.ProofError('independent actual instruction-row quotation failed')
meta=json.loads((quote/'quote.json').read_text());targets={}
for name in ['PairedPathRoundInstructionMatrixConstants']+[f'PairedPathRoundInstructionMatrixData{i}' for i in range((len(groups)+63)//64)]:
 shutil.copyfile(quote/(name+'.lean'),inputs/(name+'.lean'));targets[name]=[]
settings=['namespace PairedPathRoundCheckedRows','open Core033 PairedPathRoundInstructionData','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
parts=[('Inputs',0,96)]+[(str(g),96+start,min(96+start+64,13299)) for g,start in enumerate(range(0,13203,64))]+[('Outputs',13299,13300),('Guards',13300,13301)]
for label,start,stop in parts:
 name='PairedPathRoundRows'+label;code=['import ActualPairedPathRoundIR','import Core033.PairedPathRound','import Core033.GuardMatrix','import Core033.MatrixRowBlocks','import Core033.KernelDecide']+[f'import PairedPathRoundInstructionMatrixData{i}' for i in range(start//64,(stop-1)//64+1)]+settings;names=[]
 for i in range(start,stop):
  if i<96:expected=f'WordField.booleanBits actualModulus {i}++[WordField.packing actualModulus {i},SHA256Circuit.literalRow (WordField.carry {i}) false]'
  elif i<13299:expected=f'WordField.canonicalRows actualModulus {i} ({ops[i-96]})'
  elif i==13299:expected='WordMatrix.outputRows actualModulus ActualPairedPathRoundIR.program'
  else:expected='((List.range 91).map (fun index=>WordMatrix.outputBase ActualPairedPathRoundIR.program+96+index)).map (fun wire=>SHA256Circuit.literalRow wire true)'
  code += [f'theorem rows{i} : actualRows{i}={expected} := by core033_kernel_decide',f'theorem stats{i} : actualRows{i}.length={meta["groups"][i]["row_count"]} ∧ MatrixRowBlocks.rowsWeight actualRows{i}={meta["groups"][i]["encoded_bytes"]} := by core033_kernel_decide'];names.extend([f'rows{i}',f'stats{i}'])
 code += [f'def partRows{label} : List R1CS.Row := '+'++'.join(f'actualRows{i}' for i in range(start,stop))]
 if label.isdigit():
  code += [f'def partOps{label} : List WordIR.Op := ['+','.join(ops[start-96:stop-96])+']',f'theorem partExact{label} : partRows{label}=WordField.rows actualModulus {start} partOps{label} := by',f'  simp only [partRows{label},partOps{label},WordField.rows,'+','.join(f'rows{i}' for i in range(start,stop))+',List.append_assoc,List.append_nil]',f'theorem partLength{label} : partOps{label}.length={stop-start} := by decide'];names.extend([f'partExact{label}',f'partLength{label}'])
 rows=sum(meta['groups'][i]['row_count'] for i in range(start,stop));weight=sum(meta['groups'][i]['encoded_bytes'] for i in range(start,stop))
 code += [f'theorem partStats{label} : partRows{label}.length={rows} ∧ MatrixRowBlocks.rowsWeight partRows{label}={weight} := by',f'  simp only [partRows{label},List.length_append,MatrixRowBlocks.rows_weight_append,'+','.join(f'stats{i}.1,stats{i}.2' for i in range(start,stop))+']','  decide','end PairedPathRoundCheckedRows'];names.append('partStats'+label)
 (inputs/(name+'.lean')).write_text('\n'.join(code)+'\n');targets[name]=['PairedPathRoundCheckedRows.'+n for n in names if n.startswith('part')]
(out/'target-inventory.json').write_text(json.dumps(targets,indent=2)+'\n')
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[source/'kernel/compiled'],fresh_replay=False)
if matrix.read_bytes()!=raw:raise driver.ProofError('actual matrix changed')
receipt={'format_version':'core033.actual-shared-byte-sha-row-groups.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':False,'actual_row_groups':len(groups),'matrix_sha256':hashlib.sha256(raw).hexdigest(),'whole_matrix_correspondence':False,'actual_source_byte_correspondence':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
