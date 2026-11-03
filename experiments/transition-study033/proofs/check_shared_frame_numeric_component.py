"""Compose actual numeric matrix/parser/source semantics and fresh-replay all.

Every seed is bound to an actual successful compile or its Checked report.
Pending row modules gain Checked status only through this new whole closure.
"""
import argparse,hashlib,json,re,shutil,subprocess,sys
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--previous',type=Path,required=True);parser.add_argument('--source',type=Path,required=True);parser.add_argument('--actual-source',type=Path);parser.add_argument('--independent-data-only',action='store_true');parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
old=a.previous.resolve();source=a.source.resolve();out=a.out.resolve()
rr=json.loads((old/'kernel/report.json').read_text());sr=json.loads((source/'report.json').read_text())
if rr['outcome']!='AxiomAuditedPendingFresh' or rr['fresh_kernel_replay']:raise driver.ProofError('complete audited row modules required')
if sr['outcome']!='Checked' or not sr['fresh_kernel_replay']:raise driver.ProofError('genuine complete source receipt required')
if (a.actual_source is None)==(not a.independent_data_only):raise driver.ProofError('choose actual source receipt or explicit independent-data-only scope')
actualSource=None
if a.actual_source is not None:
 actualSource=a.actual_source.resolve();actualSourceReport=json.loads((actualSource/'kernel/report.json').read_text());actualSourceReceipt=json.loads((actualSource/'receipt.json').read_text())
 if actualSourceReceipt['outcome']!='Checked' or actualSourceReport['outcome']!='Checked' or not actualSourceReport['fresh_kernel_replay']:raise driver.ProofError('separate genuine complete actual shared-source proof required')
 for module,entry in actualSourceReport['modules'].items():
  file=actualSource/'kernel/compiled'/Path(*module.split('.')).with_suffix('.olean')
  if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('changed actual source module')
 for relative,entry in actualSourceReport['seeded_modules'].items():
  if hashlib.sha256((actualSource/'kernel/compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('changed actual source dependency')
# Revalidate every row seed and the independently Checked exact literal-data binding.
for root,report in [(old/'kernel',rr),(source,sr)]:
 for module,entry in report['modules'].items():
  file=root/'compiled'/Path(*module.split('.')).with_suffix('.olean')
  if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('changed kernel module '+str(file))
 for relative,entry in report['seeded_modules'].items():
  if hashlib.sha256((root/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('changed kernel dependency '+relative)
shared='SharedFrameProgram.olean'
sharedExpected=sr['modules']['SharedFrameProgram']['olean_sha256']
if actualSource is not None and hashlib.sha256((actualSource/'kernel/compiled'/shared).read_bytes()).hexdigest()!=sharedExpected:raise driver.ProofError('actual source and matrix use different standalone program bytes')
if hashlib.sha256((old/'kernel/compiled'/shared).read_bytes()).hexdigest()!=sharedExpected:raise driver.ProofError('numeric row closure uses different literal program from exact source/model binding')
out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';shutil.copytree(old/'proof-inputs',inputs);shutil.copytree(old/'actual-quote',out/'actual-quote')
seed_provenance={};all_names=[]
for module,entry in rr['modules'].items():
 relative=Path(*module.split('.'));previous=old/'proof-inputs'/relative.with_suffix('.lean');snapshot=old/'kernel'/entry['source_snapshot'];olean=old/'kernel/compiled'/relative.with_suffix('.olean');command=old/'kernel'/(module+'.compile.command.json');cr=json.loads(command.read_text())
 if previous.read_bytes()!=snapshot.read_bytes() or hashlib.sha256(previous.read_bytes()).hexdigest()!=entry['source_sha256']:raise driver.ProofError('row source mismatch '+module)
 if hashlib.sha256(olean.read_bytes()).hexdigest()!=entry['olean_sha256'] or cr['exit_code']!=0 or cr['timed_out']:raise driver.ProofError('row compilation failed/stale '+module)
 if str(previous) not in cr['argv'] or str(olean) not in cr['argv']:raise driver.ProofError('different actual compiler inputs '+module)
 seed_provenance[module]={'source_sha256':entry['source_sha256'],'olean_sha256':entry['olean_sha256'],'command_sha256':hashlib.sha256(command.read_bytes()).hexdigest(),'command':str(command)}
for module,entry in sr['modules'].items():
 olean=source/'compiled'/Path(*module.split('.')).with_suffix('.olean')
 if hashlib.sha256(olean.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('checked source module changed')
for relative,entry in sr['seeded_modules'].items():
 if hashlib.sha256((source/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('checked source seed changed')
# Final semantic roots transitively audit every source instruction proof.
# Fresh replay checks the complete imported declaration closure.
sourceRoots=[entry for entry in sr['theorems'] if entry['target'] in ['SharedFrameProgram.safe_checked','SharedFrameProgram.program_valid','SharedFrameProgram.output_count']]
if len(sourceRoots)!=3:raise driver.ProofError('complete literal IR safety/validity/output roots required')
for theorem in rr['theorems']+sourceRoots:
 if theorem['target'] not in all_names:all_names.append(theorem['target'])
for file in (source.with_name(source.name+'-inputs')).rglob('*.lean'):
 destination=inputs/file.relative_to(source.with_name(source.name+'-inputs'))
 if destination.exists() and destination.read_bytes()!=file.read_bytes():raise driver.ProofError('different source for common checked module '+str(destination))
 destination.parent.mkdir(parents=True,exist_ok=True);destination.write_bytes(file.read_bytes())
new_targets={}
for name in ['WordSourceValidity','MatrixPrivatePorts','MatrixCodecChunks']:
 f=p/'Core033'/(name+'.lean')
 relative=Path('Core033')/(name+'.olean')
 existing=source/'compiled'/relative
 if existing.exists():
  # Already transitively fresh checked in the genuine source closure. The final
  # theorem's axiom closure is audited again; never replace the seeded module.
  continue
 (inputs/'Core033').mkdir(exist_ok=True)
 shutil.copyfile(f,inputs/'Core033'/f.name)
 new_targets['Core033.'+name]=['Core033.'+name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',f.read_text(),re.M)]
subprocess.run([sys.executable,str(p/'assemble_shared_frame_matrix_prefix.py'),'--inputs',str(inputs)],check=True)
subprocess.run([sys.executable,str(p/'assemble_shared_frame_guarded_packet.py'),'--inputs',str(inputs)],check=True)
# Complete numeric component only. The existing fully Checked/fresh source
# artifact retains its independent scope; no joint source-byte replay claim.
prefix=inputs/'SharedFrameMatrixPrefix.lean';new_targets['SharedFrameMatrixPrefix']=['SharedFrameMatrixPrefix.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',prefix.read_text(),re.M)]
final=inputs/'ActualSharedFrameMatrixPacket.lean';final_names=['ActualSharedFrameMatrixPacket.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',final.read_text(),re.M)]
new_targets['ActualSharedFrameMatrixPacket']=all_names+final_names
(out/'seed-provenance.json').write_text(json.dumps(seed_provenance,indent=2,sort_keys=True)+'\n')
r=driver.check_modules(inputs,new_targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[old/'kernel/compiled'])
raw=(old/'matrix.bin').read_bytes();actual=Path('experiments/transition-study033/generated/shared-frame-hash-controller-001/matrix.bin').resolve()
if actual.read_bytes()!=raw:raise driver.ProofError('actual binary matrix changed')
quote=json.loads((old/'actual-quote/quote.json').read_text())
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256']:raise driver.ProofError('wrong numeric quote binding')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-shared-frame-numeric-component.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':quote['rows'],'terms':quote['terms'],'actual_numeric_rows':True,'strict_parser_roundtrip':True,'input_quotation':'Independent full numeric input quotation; inverse primitive fixed-width encoding byte-equal to actual binary; all quoted semantic numbers checked by kernel. Ordinary file-I/O/literal binding remains named TCB.','complete_source_receipt_sha256':hashlib.sha256((a.actual_source/'receipt.json').read_bytes()).hexdigest() if a.actual_source is not None else None,'exact_program_binding_receipt_sha256':hashlib.sha256((source/'report.json').read_bytes()).hexdigest(),'scope':'complete actual numeric shared-frame matrix data component; every row/output/forced guard against the exact standalone shared IR; actual source bytes need a separate Checked receipt; full old-program equivalence, whole K and G1 remain separate obligations','source_artifact_checked_separately':a.actual_source is not None,'actual_source_scope_reason':'Separate actual-source acceptance remains required; this numeric component never proves source bytes','joint_source_matrix_fresh_closure':False,'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n');print(json.dumps({k:receipt[k] for k in ['outcome','targets','fresh_kernel_replay','matrix_bytes','rows','g1_pass']}))
