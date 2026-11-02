"""Finish exact-source assembly using successful immutable independent builds.

Every imported source/olean is pinned to its original actual compiler invocation;
all named targets are audited again and the complete closure is fresh-replayed.
A preceding aggregate failure never becomes Checked without this new full check.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--previous',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
old=a.previous.resolve();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
inputs=out/'proof-inputs';shutil.copytree(old/'proof-inputs',inputs)
final=inputs/'ArtifactSHABlocks.lean';before=final.read_text();after=before.replace('  simp only [SHAMaterialized.program,','  simp (maxSteps := 10000000) only [SHAMaterialized.program,')
if before==after:raise driver.ProofError('expected single bounded simplifier correction missing')
final.write_text(after)
seeds={};targets=[]
for source in sorted(inputs.rglob('*.lean')):
 relative=source.relative_to(inputs)
 if relative==Path('ArtifactSHABlocks.lean'):continue
 module='.'.join(relative.with_suffix('').parts)
 previous_source=old/'proof-inputs'/relative;snapshot=old/'kernel/source-snapshot'/relative
 olean=old/'kernel/compiled'/relative.with_suffix('.olean')
 command=old/'kernel'/(module+'.compile.command.json')
 if not snapshot.exists() or source.read_bytes()!=snapshot.read_bytes() or source.read_bytes()!=previous_source.read_bytes():raise driver.ProofError('source/compile snapshot mismatch: '+module)
 cr=json.loads(command.read_text())
 if cr['exit_code']!=0 or cr['timed_out'] or not olean.exists():raise driver.ProofError('module lacks a successful actual compiler invocation: '+module)
 if '-s16384' not in cr['argv'] or str(previous_source) not in cr['argv'] or str(olean) not in cr['argv']:raise driver.ProofError('unexpected module compiler/build input')
 seeds[module]={'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'olean_sha256':hashlib.sha256(olean.read_bytes()).hexdigest(),'successful_compile_command':str(command),'compile_command_sha256':hashlib.sha256(command.read_bytes()).hexdigest()}
 ns=('Core033.WordSource' if module=='Core033.WordSourceChunks' else 'Core033.SHAMaterialized' if module=='Core033.SHAMaterializedFinal' else 'ArtifactSHABlocks' if module.startswith('ArtifactSHAGroup') else module)
 targets += [ns+'.'+name for name in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',source.read_text(),re.M)]
targets += ['ArtifactSHABlocks.'+name for name in re.findall(r'^theorem ([A-Za-z_0-9]+)',after,re.M)]
(out/'seed-provenance.json').write_text(json.dumps(seeds,sort_keys=True,indent=2)+'\n')
report=driver.check_modules(inputs,{'ArtifactSHABlocks':targets},out/'kernel',audit_source=p/'Audit.lean',seeded_modules=[old/'kernel/compiled'])
for module,entry in seeds.items():
 relative=Path(*module.split('.')).with_suffix('.lean')
 if hashlib.sha256((inputs/relative).read_bytes()).hexdigest()!=entry['source_sha256']:raise driver.ProofError('seed source changed during final check')
raw=(old/'checker_step.rs').read_bytes();source=Path('experiments/transition-study033/generated/sha-word-001/checker_step.rs').resolve()
if source.read_bytes()!=raw:raise driver.ProofError('actual source changed')
(out/'checker_step.rs').write_bytes(raw)
native=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/sha-word-native-001');nr=json.loads((native/'receipt.json').read_text())
for name,key in [('checker_step.rs','source_sha256'),('libsha_word033.rlib','library_sha256'),('native-vectors','executable_sha256'),('native_vectors.rs','harness_sha256')]:
 if hashlib.sha256((native/name).read_bytes()).hexdigest()!=nr[key]:raise driver.ProofError('native build changed')
if (native/'checker_step.rs').read_bytes()!=raw:raise driver.ProofError('different native source')
r={'format_version':'core033.sha-block-source-correspondence.v1','outcome':report['outcome'],'fresh_kernel_replay':report['fresh_kernel_replay'],'targets':len(report['theorems']),'source_bytes':len(raw),'source_sha256':hashlib.sha256(raw).hexdigest(),'native_artifacts':nr,'successful_module_provenance':str(out/'seed-provenance.json'),'scope':'actual complete SHA compression source; no whole K/actual field matrix/backend certificate','actual_matrix_bytes':False,'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps({k:r[k] for k in ['outcome','targets','fresh_kernel_replay','source_bytes','g1_pass']}))
