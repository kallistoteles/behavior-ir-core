"""Reject genuine full control-source mutations through the unchanged validator."""
import argparse,hashlib,json,shutil
from pathlib import Path
import check_targets as driver
from source_quote import lean_ascii_expression
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--genuine',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();g=a.genuine.resolve();gr=json.loads((g/'receipt.json').read_text())
if gr['outcome']!='Checked' or not gr['fresh_kernel_replay']:raise driver.ProofError('genuine complete source required')
raw=(g/'checker_step.rs').read_bytes();lines=raw.splitlines(keepends=True);header=b''.join(lines[:9]);statements=lines[9:-2];footer=b''.join(lines[-2:])
if hashlib.sha256(raw).hexdigest()!=gr['source_sha256'] or len(statements)!=53:raise driver.ProofError('wrong genuine source')
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';(inputs/'Core033').mkdir(parents=True);shutil.copyfile(p/'Core033/SourceBlockControl.lean',inputs/'Core033/SourceBlockControl.lean')
mutants=[('wrong-64-low-operation',0,statements[0].replace(b'.wrapping_add(r00000002)',b' ^ r00000002')),('unchecked-addition',0,statements[0].replace(b'.wrapping_add(r00000002)',b' + r00000002')),('wrong-input-wire',0,statements[0].replace(b'r00000002)',b'r00000003)')),('wrong-result-wire',0,statements[0].replace(b'let r00000007:',b'let r00000008:')),('wrong-carry-shift',8,statements[8].replace(b'0000001f_u32',b'0000001e_u32')),('out-of-range-carry-shift',8,statements[8].replace(b'0000001f_u32',b'00000020_u32'))]
code=['import ActualControlBytes','import Core033.SourceBlockControl','namespace ControlSourceMutations','open Core033 WordIR WordSource WordSourceBlocks SourceBlockControl ActualControlBytes','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000'];targets=[];cases=[]
for index in sorted({i for _,i,_ in mutants}):
 before='actualHeader'+('++'+'++'.join(f'bytes{j}' for j in range(index)) if index else '')
 after='++'.join([*(f'bytes{j}' for j in range(index+1,53)),'actualFooter'])
 code += [f'def before{index} : Bytes := '+before,f'def after{index} : Bytes := '+after,f'theorem decomposed{index} : actualBytes=before{index}++bytes{index}++after{index} := by',f'  simp only [actualBytes,actualBody,before{index},after{index},List.flatten_cons,List.flatten_nil,List.append_nil,List.append_assoc]',f'theorem accepted{index} : validate ActualControlIR.program (before{index}++bytes{index}++after{index})=true := by',f'  rw [←decomposed{index}]','  exact actual_validated'];targets.extend([f'decomposed{index}',f'accepted{index}'])
for n,(name,index,bad) in enumerate(mutants):
 if bad==statements[index]:raise driver.ProofError('mutation missed actual source')
 full=header+b''.join(statements[:index])+bad+b''.join(statements[index+1:])+footer;(out/(name+'.rs')).write_bytes(full)
 code += [f'def bad{n} : Bytes := '+lean_ascii_expression(bad),f'theorem component{n} : decide (bad{n}=statementBytes {7+index} (op{index}.map lower))=false := by core033_kernel_decide',f'theorem rejected{n} : validate ActualControlIR.program (before{index}++bad{n}++after{index})=false :=',f'  replacement_rejected ActualControlIR.program before{index} bytes{index} bad{n} after{index} accepted{index}',f'    (same_checked_component bytes{index} bad{n} _ checked{index}.1 component{n})'];targets.extend([f'component{n}',f'rejected{n}']);cases.append({'case':name,'source_sha256':hashlib.sha256(full).hexdigest(),'file':name+'.rs'})
code.append('end ControlSourceMutations');(inputs/'ControlSourceMutations.lean').write_text('\n'.join(code)+'\n')
r=driver.check_modules(inputs,{'Core033.SourceBlockControl':['Core033.SourceBlockControl.replacement_rejected','Core033.SourceBlockControl.same_checked_component'],'ControlSourceMutations':['ControlSourceMutations.'+n for n in targets]},out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[g/'kernel/compiled'])
for case in cases:
 if hashlib.sha256((out/case['file']).read_bytes()).hexdigest()!=case['source_sha256']:raise driver.ProofError('mutated input changed')
 case['outcome']='RejectedByUnchangedWholeSourceValidator'
receipt={'format_version':'core033.control-source-mutations.v1','outcome':r['outcome'],'fresh_kernel_replay':r['fresh_kernel_replay'],'genuine_source_sha256':gr['source_sha256'],'cases':cases,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps({'outcome':r['outcome'],'fresh_kernel_replay':r['fresh_kernel_replay'],'cases':len(cases),'g1_pass':False}))
