"""Resume successful real block compiles; freshly audit/replay the whole closure."""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--previous',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();old=a.previous.resolve();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';shutil.copytree(old/'proof-inputs',inputs)
provenance={};allNames=[]
for command in sorted((old/'kernel').glob('*.compile.command.json')):
 r=json.loads(command.read_text());name=command.name.removesuffix('.compile.command.json')
 if name=='ArtifactIngressBlocks':continue
 if r['exit_code']!=0 or r['timed_out']:raise driver.ProofError('failed block compile: '+name)
 source=old/'proof-inputs'/Path(*name.split('.')).with_suffix('.lean');snapshot=old/'kernel/source-snapshot'/Path(*name.split('.')).with_suffix('.lean');olean=old/'kernel/compiled'/Path(*name.split('.')).with_suffix('.olean')
 if source.read_bytes()!=snapshot.read_bytes() or str(source) not in r['argv'] or str(olean) not in r['argv']:raise driver.ProofError('different actual compiler inputs: '+name)
 provenance[name]={'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'olean_sha256':hashlib.sha256(olean.read_bytes()).hexdigest(),'command_sha256':hashlib.sha256(command.read_bytes()).hexdigest()}
 allNames += [name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',source.read_text(),re.M)]
if len(provenance)!=22:raise driver.ProofError('incomplete successful block inventory')
main=inputs/'ArtifactIngressBlocks.lean';code=main.read_text();ir=(inputs/'ActualIngressIR.lean').read_text();ops=re.search(r'def program : WordIR.Program := ⟨64,\[(.*?)\],',ir)[1].split(',');ng=20
# Materialize each finite operation block once. Small rfl equations bind each
# literal block to its already checked instruction bytes; no whole-program
# normalizer has to unfold 1248 singleton-list flattenings simultaneously.
aliases=[]
for g in range(ng):
 chunk=ops[64*g:min(64*g+64,len(ops))]
 aliases += [f'def partOps{g} : List WordIR.Op := ['+','.join(chunk)+']',f'theorem partPartition{g} : partOps{g}=ArtifactIngressGroup{g}.partOps := rfl',f'theorem partChecked{g} : ArtifactIngressGroup{g}.partBytes=statementBytes {64+64*g} (partOps{g}.map lower) := by',f'  rw [partPartition{g}]',f'  exact ArtifactIngressGroup{g}.partChecked',f'theorem partLength{g} : partOps{g}.length={len(chunk)} := rfl']
code=code.replace('def blocks :', '\n'.join(aliases)+'\ndef blocks :')
for g in range(ng):code=code.replace('def blocks : List (List WordIR.Op) := ['+','.join(f'ArtifactIngressGroup{i}.partOps' for i in range(ng))+']','def blocks : List (List WordIR.Op) := ['+','.join(f'partOps{i}' for i in range(ng))+']')
start=code.index('  exact (.cons ',code.index('theorem body_checked'));stop=code.index('\ntheorem actual_size',start)
body=[]
for g in range(ng):body += [f'  apply BlockChain.cons _ _ _ _ _ partChecked{g}',f'  simp only [partLength{g}]']
body+=['  exact .empty _'];code=code[:start]+'\n'.join(body)+code[stop:];main.write_text(code)
allNames+=['ArtifactIngressBlocks.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)];(out/'seed-provenance.json').write_text(json.dumps(provenance,indent=2,sort_keys=True)+'\n')
r=driver.check_modules(inputs,{'ArtifactIngressBlocks':allNames},out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[old/'kernel/compiled'])
source=Path('experiments/transition-study033/generated/block-ingress-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
receipt={'format_version':'core033.actual-composed-ingress-source.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'actual_statement_count':1248,'scope':'complete actual ingress source; exact byte/source IR equations and all 64 byte flags; physical caller must constrain all byte flags to one','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
