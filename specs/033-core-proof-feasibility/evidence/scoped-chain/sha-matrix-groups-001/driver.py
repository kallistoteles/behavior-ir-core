"""Check every actual numeric SHA matrix row; pending final whole-packet replay.

The numeric quotation reads only the actual binary. Expected instruction literals
are independently taken from the materialized program and must be connected to
that program in the final aggregate. No partial receipt is a release/G1 pass.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
inputs=out/'proof-inputs';(inputs/'Core033').mkdir(parents=True)
q=Path('experiments/transition-study033/generated/sha-word-matrix-quote-001').resolve();meta=json.loads((q/'quote.json').read_text())
raw=Path(meta['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=meta['source_sha256'] or not meta['independent_inverse_byte_equal']:raise driver.ProofError('actual matrix identity/inverse check missing')
shutil.copyfile(q/'quote.json',out/'actual-quote.json');(out/'matrix.bin').write_bytes(raw)
modules=['IR','Bits','R1CS','Reference','SHA256','SHA256Circuit','SHA256Words','WordIR','WordPacking','PackedAdd32','WordPorts','CanonicalLinear','WordField','WordFieldProgram','WordFieldWitness','WordMatrix','WordMatrixWitness','WordMatrixPorts','CanonicalShape','WordRowShape','PackingShape','WordProgramShape','WordMatrixShape','Codec','Matrix','MatrixCodec','MatrixCodecHeader','MatrixCodecBounds','MatrixCodecPayload','MatrixRowBlocks','KernelDecide']
targets={}
for name in modules:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name)
 ns='WordField' if name in ['WordFieldProgram','WordFieldWitness'] else 'WordMatrix' if name=='WordMatrixWitness' else name
 names=re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',source.read_text(),re.M)
 targets['Core033.'+name]=['Core033.'+ns+'.'+n for n in names]
for name in ['ActualMatrixConstants']+[f'ActualMatrixData{i}' for i in range(38)]:
 shutil.copyfile(q/(name+'.lean'),inputs/(name+'.lean'));targets[name]=[]
mat=(p/'Core033/SHAMaterialized.lean').read_text()+'\n'+(p/'Core033/SHAMaterializedFinal.lean').read_text()
fragments={int(n):ops for n,ops in re.findall(r'^def ops(\d+) : List WordIR.Op := \[(.*?)\]\+\+ops\d+$',mat,re.M)}
if set(fragments)!=set(range(1,114)):raise driver.ProofError('incomplete stage inventory')
ops=[op for n in range(1,114) for op in reversed(fragments[n].split(','))]
if len(ops)!=2360 or len(meta['groups'])!=2385:raise driver.ProofError('unexpected bounded matrix shape')
settings=['namespace ActualSHAMatrixRows','open Core033 ActualSHAWordMatrixData','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
parts=[('Inputs',0,24)]+[(str(g),24+start,min(24+start+64,2384)) for g,start in enumerate(range(0,2360,64))]+[('Outputs',2384,2385)]
for label,start,stop in parts:
 name='ActualMatrixChecked'+label
 code=['import Core033.MatrixRowBlocks','import Core033.KernelDecide']+[f'import ActualMatrixData{i}' for i in range(start//64,(stop-1)//64+1)]+settings
 names=[]
 for i in range(start,stop):
  if i<24:expected=f'WordField.booleanBits actualModulus {i}++[WordField.packing actualModulus {i},SHA256Circuit.literalRow (WordField.carry {i}) false]'
  elif i<2384:expected=f'WordField.canonicalRows actualModulus {i} ({ops[i-24]})'
  else:
   expected='['+','.join(f'CanonicalLinear.normalizeRow (WordField.equality actualModulus (WordField.packed {2376+j}) {81057+j})' for j in range(8))+']'
  code += [f'theorem rows{i} : actualRows{i}={expected} := by core033_kernel_decide',f'theorem stats{i} : actualRows{i}.length={meta["groups"][i]["row_count"]} ∧ MatrixRowBlocks.rowsWeight actualRows{i}={meta["groups"][i]["encoded_bytes"]} := by core033_kernel_decide']
  names.extend([f'rows{i}',f'stats{i}'])
 code += [f'def partRows{label} : List R1CS.Row := '+ '++'.join(f'actualRows{i}' for i in range(start,stop))]
 if label.isdigit():
  code += [f'def partOps{label} : List WordIR.Op := ['+','.join(ops[start-24:stop-24])+']',f'theorem partRowsExact{label} : partRows{label}=WordField.rows actualModulus {start} partOps{label} := by',f'  simp only [partRows{label},partOps{label},WordField.rows,'+','.join(f'rows{i}' for i in range(start,stop))+',List.append_assoc,List.append_nil]',f'theorem partOpsLength{label} : partOps{label}.length={stop-start} := by decide']
  names.extend([f'partRowsExact{label}',f'partOpsLength{label}'])
 count=sum(meta['groups'][i]['row_count'] for i in range(start,stop));weight=sum(meta['groups'][i]['encoded_bytes'] for i in range(start,stop))
 code += [f'theorem partStats{label} : partRows{label}.length={count} ∧ MatrixRowBlocks.rowsWeight partRows{label}={weight} := by',f'  simp only [partRows{label},List.length_append,MatrixRowBlocks.rows_weight_append,'+','.join(f'stats{i}.1,stats{i}.2' for i in range(start,stop))+']', '  decide','end ActualSHAMatrixRows']
 names.append('partStats'+label)
 (inputs/(name+'.lean')).write_text('\n'.join(code)+'\n');targets[name]=['ActualSHAMatrixRows.'+n for n in names]
(out/'target-inventory.json').write_text(json.dumps(targets,indent=2)+'\n')
deps=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=deps,fresh_replay=False)
if Path(meta['source']).read_bytes()!=raw:raise driver.ProofError('actual matrix changed')
receipt={'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':False,'actual_source_sha256':meta['source_sha256'],'actual_row_comparisons':2385,'whole_packet_correspondence':False,'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n');print(json.dumps(receipt))
