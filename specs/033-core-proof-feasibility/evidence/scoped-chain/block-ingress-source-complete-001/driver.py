"""Freshly check the entire actual-source closure after bounded compilation."""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--blocks',type=Path,required=True);parser.add_argument('--assembly',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();blocks=a.blocks.resolve();assembly=a.assembly.resolve();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';shutil.copytree(assembly/'proof-inputs',inputs)
allNames=[];provenance={}
for file in sorted(inputs.rglob('*.lean')):
 name='.'.join(file.relative_to(inputs).with_suffix('').parts)
 owner=assembly if name in ['Core033.SourceParameters','ArtifactIngressHeader','ArtifactIngressBlocks'] else blocks
 command=owner/'kernel'/(name+'.compile.command.json');r=json.loads(command.read_text());original=owner/'proof-inputs'/file.relative_to(inputs);snapshot=owner/'kernel/source-snapshot'/file.relative_to(inputs);olean=owner/'kernel/compiled'/file.relative_to(inputs).with_suffix('.olean')
 if r['exit_code']!=0 or r['timed_out']:raise driver.ProofError('failed actual module compile '+name)
 if original.read_bytes()!=snapshot.read_bytes() or original.read_bytes()!=file.read_bytes() or str(original) not in r['argv'] or str(olean) not in r['argv']:raise driver.ProofError('different actual compilation '+name)
 digest=hashlib.sha256(olean.read_bytes()).hexdigest()
 if hashlib.sha256((assembly/'kernel/compiled'/file.relative_to(inputs).with_suffix('.olean')).read_bytes()).hexdigest()!=digest:raise driver.ProofError('different actual assembled seed '+name)
 provenance[name]={'source_sha256':hashlib.sha256(file.read_bytes()).hexdigest(),'olean_sha256':digest,'command_sha256':hashlib.sha256(command.read_bytes()).hexdigest(),'command':str(command)}
 allNames += [name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',file.read_text(),re.M)]
code='''import ArtifactIngressBlocks
namespace ArtifactIngressCertificate
open Core033
def actualBytes : WordSource.Bytes := ArtifactIngressBlocks.actualBytes
theorem whole_checked : WordSource.validate ActualIngressIR.program actualBytes=true :=
  ArtifactIngressBlocks.actual_validated
theorem exact_program_meaning (inputs : Nat → WordIR.Word) :
    WordSource.NativeDenotes actualBytes inputs (BlockIngress.program.eval inputs) :=
  ArtifactIngressBlocks.actual_meaning inputs
end ArtifactIngressCertificate
''';(inputs/'ArtifactIngressCertificate.lean').write_text(code);allNames+=['ArtifactIngressCertificate.whole_checked','ArtifactIngressCertificate.exact_program_meaning'];(out/'seed-provenance.json').write_text(json.dumps(provenance,indent=2,sort_keys=True)+'\n')
r=driver.check_modules(inputs,{'ArtifactIngressCertificate':allNames},out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[assembly/'kernel/compiled'])
source=Path('experiments/transition-study033/generated/block-ingress-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
receipt={'format_version':'core033.actual-composed-ingress-source.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'actual_statement_count':1248,'scope':'complete actual byte-ingress source, independently quoted byte/IR equations and all 64 byte guards; caller must constrain all guards to one','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
