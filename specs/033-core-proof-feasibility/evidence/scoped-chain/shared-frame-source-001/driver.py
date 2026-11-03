"""Fresh-check complete actual shared-source bytes against its standalone IR.

Old-program equivalence and numeric matrices remain separate required receipts.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
from source_quote import lean_ascii_expression
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--quoted',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
source=Path('experiments/transition-study033/generated/shared-frame-hash-controller-001/checker_step.rs').resolve();raw=source.read_bytes();lines=raw.splitlines(keepends=True);header=b''.join(lines[:45]);statements=lines[45:-2];footer=b''.join(lines[-2:])
ops=json.loads(Path('experiments/transition-study033/generated/frame-sharing-candidate-001/operations.json').read_text())
if not isinstance(ops,list) or not all(isinstance(operation,str) for operation in ops):raise driver.ProofError('complete actual instruction literal list required')
if len(ops)!=3795 or len(statements)!=3795:raise driver.ProofError('complete actual little-endian byte decoder partition missing')
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';(inputs/'Core033').mkdir(parents=True);targets={}
ng=(len(ops)+63)//64
for g in range(ng):
 start=g*64;stop=min(start+64,len(ops));namespace='ArtifactSharedFrameGroup'+str(g)
 code=['import SharedFrameProgram','import Core033.WordSourceBlocks','import Core033.KernelDecide','namespace '+namespace,'open Core033 WordSource WordSourceBlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000'];names=[]
 for i in range(start,stop):
  code += [f'def op{i} : List WordIR.Op := [{ops[i]}]',f'def bytes{i} : Bytes := '+lean_ascii_expression(statements[i]),f'theorem checked{i} : bytes{i}=statementBytes {43+i} (op{i}.map lower) ∧ bytes{i}.length={len(statements[i])} := by core033_kernel_decide'];# Every instruction theorem stays in the transitive partChain proof closure.
  # Audit the bounded part roots rather than exceeding the frozen target cap.
 code += ['def blocks : List (List WordIR.Op) := ['+','.join(f'op{i}' for i in range(start,stop))+']','def chunks : List Bytes := ['+','.join(f'bytes{i}' for i in range(start,stop))+']','def partOps : List WordIR.Op := blocks.flatten','def partBytes : Bytes := chunks.flatten',f'theorem partChain : BlockChain {43+start} blocks chunks := by','  unfold blocks chunks']
 chain='(.empty _)'
 for i in reversed(range(start,stop)):chain=f'(.cons _ _ _ _ _ checked{i}.1 {chain})'
 code += ['  exact '+chain,f'theorem partChecked : partBytes=statementBytes {43+start} (partOps.map lower) := by','  rw [partBytes,chain_exact partChain,body_exact];rfl',f'theorem partLength : partOps.length={stop-start} := rfl',f'theorem partSize : partBytes.length={sum(map(len,statements[start:stop]))} := by','  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,'+','.join(f'checked{i}.2' for i in range(start,stop))+']','  decide','end '+namespace]
 names+=['partChain','partChecked','partLength','partSize'];(inputs/(namespace+'.lean')).write_text('\n'.join(code)+'\n');targets[namespace]=[namespace+'.'+n for n in names]
code=[f'import ArtifactSharedFrameGroup{g}' for g in range(ng)]+['namespace ArtifactSharedFrameBlocks','open Core033 WordSource WordSourceBlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
code += ['def blocks : List (List WordIR.Op) := ['+','.join(f'ArtifactSharedFrameGroup{g}.partOps' for g in range(ng))+']','def actualBody : List Bytes := ['+','.join(f'ArtifactSharedFrameGroup{g}.partBytes' for g in range(ng))+']','def actualHeader : Bytes := '+lean_ascii_expression(header),'def actualFooter : Bytes := '+lean_ascii_expression(footer),'def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter','theorem partition_checked : SharedFrameProgram.program.operations=blocks.flatten := rfl',f'theorem header_checked : actualHeader=headerBytes 43 125 ∧ actualHeader.length={len(header)} := by core033_kernel_decide',f'theorem footer_checked : actualFooter=suffix SharedFrameProgram.program.outputs ∧ actualFooter.length={len(footer)} := by core033_kernel_decide','theorem body_checked : BlockChain 43 blocks actualBody := by','  unfold blocks actualBody']
chain='(.empty _)'
for g in reversed(range(ng)):chain=f'(.cons _ _ _ _ _ ArtifactSharedFrameGroup{g}.partChecked {chain})'
code += ['  exact '+chain,'theorem actual_size : actualBytes.length≤8388608 := by','  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,'+','.join(f'ArtifactSharedFrameGroup{g}.partSize' for g in range(ng))+']','  decide','theorem actual_validated : validate SharedFrameProgram.program actualBytes=true :=','  validate_from_facts SharedFrameProgram.program actualBytes SharedFrameProgram.safe_checked','    (assembled_bytes_exact SharedFrameProgram.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size','theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (SharedFrameProgram.program.eval inputs) := by','  have result:=actual_bytes_sound SharedFrameProgram.program actualBytes actual_validated inputs','  exact result','end ArtifactSharedFrameBlocks']
(inputs/'ArtifactSharedFrameBlocks.lean').write_text('\n'.join(code)+'\n');targets['ArtifactSharedFrameBlocks']=['ArtifactSharedFrameBlocks.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)','\n'.join(code),re.M)]
seeds=[a.quoted.resolve()]
for seed in seeds:
 prior=json.loads((seed/'report.json').read_text())
 if prior['outcome']!='Checked' or not prior['fresh_kernel_replay']:raise driver.ProofError('fresh checked dependencies required')
 for module,entry in prior['modules'].items():
  f=seed/'compiled'/Path(*module.split('.')).with_suffix('.olean')
  if hashlib.sha256(f.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('changed checked module')
 for relative,entry in prior['seeded_modules'].items():
  if hashlib.sha256((seed/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('changed checked dependency')
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seed/'compiled' for seed in seeds])
if source.read_bytes()!=raw:raise driver.ProofError('actual source changed')
(out/'checker_step.rs').write_bytes(raw)
(out/'operation-literals.json').write_text(json.dumps(ops)+'\n')
receipt={'format_version':'core033.complete-shared-frame-source.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'actual_statement_count':len(statements),'whole_source_correspondence':True,'scope':'complete actual shared Rust bytes denote the standalone shared IR for all inputs; original-program equivalence and actual matrix/whole K remain separate obligations','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
