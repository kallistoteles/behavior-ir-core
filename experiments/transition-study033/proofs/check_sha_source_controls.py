"""Prove real altered whole SHA Rust files rejected by the same full validator."""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
from source_quote import lean_ascii_expression
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--genuine',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
genuine=a.genuine.resolve();receipt=json.loads((genuine/'receipt.json').read_text())
if receipt['outcome']!='Checked' or receipt['fresh_kernel_replay'] is not True:raise driver.ProofError('genuine full source must first pass audit and fresh replay')
raw=(genuine/'checker_step.rs').read_bytes()
if hashlib.sha256(raw).hexdigest()!=receipt['source_sha256']:raise driver.ProofError('genuine actual bytes changed')
lines=raw.splitlines(keepends=True);header=b''.join(lines[:26]);first=lines[26];after=b''.join(lines[27:]);body=b''.join(lines[26:2386]);footer=b''.join(lines[2386:])
mutants=[('rotate-left','instruction',first.replace(b'.rotate_right(',b'.rotate_left(')),('wrong-rotation','instruction',first.replace(b'00000011_u32',b'00000012_u32')),('wrong-reference','instruction',first.replace(b'r00000016.',b'r00000017.')),('wrong-result-wire','instruction',first.replace(b'let r00000018:',b'let r00000019:')),('wrong-safe-operation','instruction',first.replace(b'.rotate_right(',b'.wrapping_add(')),('out-of-range-logical-shift','instruction',re.sub(rb'r00000016\.rotate_right\(.*?\)',b'r00000016 >> 0x00000020_u32',first)),('signed-parameter','header',header.replace(b': u32,',b': i32,',1)),('cfg-attribute','header',b'#[cfg(any())]\n'+header),('macro-prefix','header',b'macro_rules! changed { () => {} }\n'+header),('unsafe-first-value','instruction',first.replace(b'= ',b'= unsafe { ',1).replace(b';\n',b' };\n')),('wrong-return','footer',re.sub(rb'r[0-9a-f]{8}',b'r00000000',footer,count=1)),('extra-function','footer',footer+b'pub fn extra() -> u32 { 0 }\n')]
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';(inputs/'Core033').mkdir(parents=True)
shutil.copyfile(p/'Core033/SourceBlockControl.lean',inputs/'Core033/SourceBlockControl.lean')
code=['import ArtifactSHABlocks','import Core033.SourceBlockControl','namespace SHASourceControls','open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks Core033.SourceBlockControl ArtifactSHABlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000','def firstTail : Bytes := innerBytes0.tail.flatten++actualBody.tail.flatten++actualFooter','theorem first_decomposition : actualBytes=actualHeader++bytes0++firstTail := by','  simp only [actualBytes,actualBody,partBytes0,innerBytes0,firstTail,List.tail_cons,List.flatten_cons,List.flatten_nil,List.nil_append,List.append_nil,List.append_assoc]','theorem first_accepted : validate SHAMaterialized.program (actualHeader++bytes0++firstTail)=true := by','  rw [←first_decomposition]','  exact actual_validated','theorem header_accepted : validate SHAMaterialized.program ([]++actualHeader++(actualBody.flatten++actualFooter))=true := by','  simpa only [List.nil_append,List.append_assoc,actualBytes] using actual_validated','theorem footer_accepted : validate SHAMaterialized.program ((actualHeader++actualBody.flatten)++actualFooter++[])=true := by','  simpa only [List.append_nil,actualBytes] using actual_validated']
names=['first_decomposition','first_accepted','header_accepted','footer_accepted'];cases=[]
for i,(name,kind,changed) in enumerate(mutants):
 original={'instruction':first,'header':header,'footer':footer}[kind]
 if changed==original:raise driver.ProofError('mutation did not reach actual file: '+name)
 mutated=header+changed+after if kind=='instruction' else changed+body+footer if kind=='header' else header+body+changed
 path=out/(name+'.rs');path.write_bytes(mutated)
 code += [f'def changed{i} : Bytes := '+lean_ascii_expression(changed)]
 if kind=='instruction':
  before,good,afterTerm='actualHeader','bytes0','firstTail';expected='statementBytes 24 (op0.map lower)';positive='checked0.1';accepted='first_accepted'
 elif kind=='header':
  before,good,afterTerm='[]','actualHeader','(actualBody.flatten++actualFooter)';expected='headerBytes 24 8';positive='header_checked.1';accepted='header_accepted'
 else:
  before,good,afterTerm='(actualHeader++actualBody.flatten)','actualFooter','[]';expected='suffix SHAMaterialized.outputRegisters';positive='footer_checked.1';accepted='footer_accepted'
 code += [f'theorem component{i}_rejected : decide (changed{i}={expected})=false := by core033_kernel_decide',f'theorem whole{i}_rejected : validate SHAMaterialized.program ({before}++changed{i}++{afterTerm})=false :=',f'  replacement_rejected SHAMaterialized.program {before} {good} changed{i} {afterTerm} {accepted}',f'    (same_checked_component {good} changed{i} ({expected}) {positive} component{i}_rejected)']
 names += [f'component{i}_rejected',f'whole{i}_rejected'];cases.append({'name':name,'file':path.name,'sha256':hashlib.sha256(mutated).hexdigest(),'kind':kind,'outcome':'PendingKernelWholeValidatorRejection'})
code += ['end SHASourceControls'];(inputs/'SHASourceControls.lean').write_text('\n'.join(code)+'\n')
targets={'Core033.SourceBlockControl':['Core033.SourceBlockControl.replacement_rejected','Core033.SourceBlockControl.same_checked_component'],'SHASourceControls':['SHASourceControls.'+n for n in names]}
report=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',seeded_modules=[genuine/'kernel/compiled'])
for case in cases:
 if hashlib.sha256((out/case['file']).read_bytes()).hexdigest()!=case['sha256']:raise driver.ProofError('mutated file changed')
 case['outcome']='RejectedByUnchangedWholeSourceValidator'
r={'format_version':'core033.sha-whole-source-controls.v1','outcome':report['outcome'],'fresh_kernel_replay':report['fresh_kernel_replay'],'genuine_source_sha256':receipt['source_sha256'],'genuine_receipt_sha256':hashlib.sha256((genuine/'receipt.json').read_bytes()).hexdigest(),'cases':cases,'scope':'actual whole SHA source only; no field/machine/backend claim','g1_pass':False}
(out/'receipt.json').write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps({'outcome':r['outcome'],'fresh_kernel_replay':r['fresh_kernel_replay'],'cases':len(cases),'g1_pass':False}))
