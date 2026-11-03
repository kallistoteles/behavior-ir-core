"""Compose actual numeric matrix/parser/source semantics and fresh-replay all.

Every seed is bound to an actual successful compile or its Checked report.
Pending row modules gain Checked status only through this new whole closure.
"""
import argparse,hashlib,json,re,shutil,subprocess,sys
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--previous',type=Path,required=True);parser.add_argument('--source',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
old=a.previous.resolve();source=a.source.resolve();out=a.out.resolve()
rr=json.loads((old/'kernel/report.json').read_text());sr=json.loads((source/'kernel/report.json').read_text())
if rr['outcome']!='AxiomAuditedPendingFresh' or rr['fresh_kernel_replay']:raise driver.ProofError('complete audited row modules required')
if sr['outcome']!='Checked' or not sr['fresh_kernel_replay']:raise driver.ProofError('genuine complete source receipt required')
out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';shutil.copytree(old/'proof-inputs',inputs);shutil.copytree(old/'actual-quote',out/'actual-quote')
seed_provenance={};all_names=[]
for module,entry in rr['modules'].items():
 relative=Path(*module.split('.'));previous=old/'proof-inputs'/relative.with_suffix('.lean');snapshot=old/'kernel'/entry['source_snapshot'];olean=old/'kernel/compiled'/relative.with_suffix('.olean');command=old/'kernel'/(module+'.compile.command.json');cr=json.loads(command.read_text())
 if previous.read_bytes()!=snapshot.read_bytes() or hashlib.sha256(previous.read_bytes()).hexdigest()!=entry['source_sha256']:raise driver.ProofError('row source mismatch '+module)
 if hashlib.sha256(olean.read_bytes()).hexdigest()!=entry['olean_sha256'] or cr['exit_code']!=0 or cr['timed_out']:raise driver.ProofError('row compilation failed/stale '+module)
 if str(previous) not in cr['argv'] or str(olean) not in cr['argv']:raise driver.ProofError('different actual compiler inputs '+module)
 seed_provenance[module]={'source_sha256':entry['source_sha256'],'olean_sha256':entry['olean_sha256'],'command_sha256':hashlib.sha256(command.read_bytes()).hexdigest(),'command':str(command)}
for module,entry in sr['modules'].items():
 olean=source/'kernel/compiled'/Path(*module.split('.')).with_suffix('.olean')
 if hashlib.sha256(olean.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('checked source module changed')
for relative,entry in sr['seeded_modules'].items():
 if hashlib.sha256((source/'kernel/compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('checked source seed changed')
sourceRoots=[entry for entry in sr['theorems'] if entry['target'] in ['ArtifactPathFrameBlocks.actual_validated','ArtifactPathFrameBlocks.actual_meaning']]
if len(sourceRoots)!=2:raise driver.ProofError('complete actual source semantic roots required')
for theorem in rr['theorems']+sourceRoots:
 if theorem['target'] not in all_names:all_names.append(theorem['target'])
for file in (source/'proof-inputs').rglob('*.lean'):
 destination=inputs/file.relative_to(source/'proof-inputs')
 if destination.exists() and destination.read_bytes()!=file.read_bytes():raise driver.ProofError('different source for common checked module '+str(destination))
 destination.parent.mkdir(parents=True,exist_ok=True);destination.write_bytes(file.read_bytes())
new_targets={}
for name in ['WordSourceValidity','MatrixPrivatePorts']:
 f=p/'Core033'/(name+'.lean')
 relative=Path('Core033')/(name+'.olean')
 existing=source/'kernel/compiled'/relative
 if existing.exists():
  # Already transitively fresh checked in the genuine source closure. The final
  # theorem's axiom closure is audited again; never replace the seeded module.
  continue
 shutil.copyfile(f,inputs/'Core033'/f.name)
 new_targets['Core033.'+name]=['Core033.'+name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',f.read_text(),re.M)]
subprocess.run([sys.executable,str(p/'assemble_path_frame_matrix.py'),'--inputs',str(inputs)],check=True)
final=inputs/'ActualPathFrameMatrixPacket.lean';final_names=['ActualPathFrameMatrixPacket.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',final.read_text(),re.M)]
new_targets['ActualPathFrameMatrixPacket']=all_names+final_names
(out/'seed-provenance.json').write_text(json.dumps(seed_provenance,indent=2,sort_keys=True)+'\n')
r=driver.check_modules(inputs,new_targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[old/'kernel/compiled',source/'kernel/compiled'])
raw=(old/'matrix.bin').read_bytes();actual=Path('experiments/transition-study033/generated/path-frame-001/matrix.bin').resolve()
if actual.read_bytes()!=raw:raise driver.ProofError('actual binary matrix changed')
quote=json.loads((old/'actual-quote/quote.json').read_text())
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256']:raise driver.ProofError('wrong numeric quote binding')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-integrated-path-frame-matrix-packet.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':quote['rows'],'terms':quote['terms'],'actual_numeric_rows':True,'strict_parser_roundtrip':True,'input_quotation':'Independent full numeric input quotation; inverse primitive fixed-width encoding byte-equal to actual binary; all quoted semantic numbers checked by kernel. Ordinary file-I/O/literal binding remains named TCB.','complete_source_receipt_sha256':hashlib.sha256((source/'receipt.json').read_bytes()).hexdigest(),'scope':'complete actual integrated counter/original-address/word-order/computed-parent frame source/matrix; caller must force all seventeen flags and bind original key/node hash/phase/state context','release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n');print(json.dumps({k:receipt[k] for k in ['outcome','targets','fresh_kernel_replay','matrix_bytes','rows','g1_pass']}))
