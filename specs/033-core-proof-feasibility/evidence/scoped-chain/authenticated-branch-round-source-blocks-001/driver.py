"""Compose bounded actual little-endian byte decoder byte equations into the unchanged whole validator."""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
from source_quote import lean_ascii_expression
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--quoted',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
source=Path('experiments/transition-study033/generated/authenticated-branch-round-001/checker_step.rs').resolve();raw=source.read_bytes();lines=raw.splitlines(keepends=True);header=b''.join(lines[:120]);statements=lines[120:-2];footer=b''.join(lines[-2:])
ir=(a.quoted/'proof-inputs/ActualAuthenticatedBranchRoundIR.lean').read_text()
ops=json.loads((a.quoted/'operation-literals.json').read_text())
if not isinstance(ops,list) or not all(isinstance(operation,str) for operation in ops):raise driver.ProofError('complete actual instruction literal list required')
if len(ops)!=13984 or len(statements)!=13984:raise driver.ProofError('complete actual little-endian byte decoder partition missing')
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';(inputs/'Core033').mkdir(parents=True);targets={}
for name in ['AuthenticatedBranchRound']:
 math=p/'Core033'/(name+'.lean');shutil.copyfile(math,inputs/'Core033'/math.name);targets['Core033.'+name]=['Core033.'+name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',math.read_text(),re.M)]
(inputs/'ActualAuthenticatedBranchRoundIR.lean').write_text(ir);targets['ActualAuthenticatedBranchRoundIR']=['ActualAuthenticatedBranchRoundIR.ir_exact','ActualAuthenticatedBranchRoundIR.safe_checked']
ng=(len(ops)+63)//64
for g in range(ng):
 start=g*64;stop=min(start+64,len(ops));namespace='ArtifactAuthenticatedBranchRoundGroup'+str(g)
 code=['import ActualAuthenticatedBranchRoundIR','import Core033.WordSourceBlocks','import Core033.KernelDecide','namespace '+namespace,'open Core033 WordSource WordSourceBlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000'];names=[]
 for i in range(start,stop):
  code += [f'def op{i} : List WordIR.Op := [{ops[i]}]',f'def bytes{i} : Bytes := '+lean_ascii_expression(statements[i]),f'theorem checked{i} : bytes{i}=statementBytes {118+i} (op{i}.map lower) ∧ bytes{i}.length={len(statements[i])} := by core033_kernel_decide'];# Every instruction theorem stays in the transitive partChain proof closure.
  # Audit the bounded part roots rather than exceeding the frozen target cap.
 code += ['def blocks : List (List WordIR.Op) := ['+','.join(f'op{i}' for i in range(start,stop))+']','def chunks : List Bytes := ['+','.join(f'bytes{i}' for i in range(start,stop))+']','def partOps : List WordIR.Op := blocks.flatten','def partBytes : Bytes := chunks.flatten',f'theorem partChain : BlockChain {118+start} blocks chunks := by','  unfold blocks chunks']
 chain='(.empty _)'
 for i in reversed(range(start,stop)):chain=f'(.cons _ _ _ _ _ checked{i}.1 {chain})'
 code += ['  exact '+chain,f'theorem partChecked : partBytes=statementBytes {118+start} (partOps.map lower) := by','  rw [partBytes,chain_exact partChain,body_exact];rfl',f'theorem partLength : partOps.length={stop-start} := rfl',f'theorem partSize : partBytes.length={sum(map(len,statements[start:stop]))} := by','  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,'+','.join(f'checked{i}.2' for i in range(start,stop))+']','  decide','end '+namespace]
 names+=['partChain','partChecked','partLength','partSize'];(inputs/(namespace+'.lean')).write_text('\n'.join(code)+'\n');targets[namespace]=[namespace+'.'+n for n in names]
code=[f'import ArtifactAuthenticatedBranchRoundGroup{g}' for g in range(ng)]+['namespace ArtifactAuthenticatedBranchRoundBlocks','open Core033 WordSource WordSourceBlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
code += ['def blocks : List (List WordIR.Op) := ['+','.join(f'ArtifactAuthenticatedBranchRoundGroup{g}.partOps' for g in range(ng))+']','def actualBody : List Bytes := ['+','.join(f'ArtifactAuthenticatedBranchRoundGroup{g}.partBytes' for g in range(ng))+']','def actualHeader : Bytes := '+lean_ascii_expression(header),'def actualFooter : Bytes := '+lean_ascii_expression(footer),'def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter','theorem partition_checked : ActualAuthenticatedBranchRoundIR.program.operations=blocks.flatten := rfl',f'theorem header_checked : actualHeader=headerBytes 118 209 ∧ actualHeader.length={len(header)} := by core033_kernel_decide',f'theorem footer_checked : actualFooter=suffix ActualAuthenticatedBranchRoundIR.program.outputs ∧ actualFooter.length={len(footer)} := by core033_kernel_decide','theorem body_checked : BlockChain 118 blocks actualBody := by','  unfold blocks actualBody']
chain='(.empty _)'
for g in reversed(range(ng)):chain=f'(.cons _ _ _ _ _ ArtifactAuthenticatedBranchRoundGroup{g}.partChecked {chain})'
code += ['  exact '+chain,'theorem actual_size : actualBytes.length≤8388608 := by','  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,'+','.join(f'ArtifactAuthenticatedBranchRoundGroup{g}.partSize' for g in range(ng))+']','  decide','theorem actual_validated : validate ActualAuthenticatedBranchRoundIR.program actualBytes=true :=','  validate_from_facts ActualAuthenticatedBranchRoundIR.program actualBytes ActualAuthenticatedBranchRoundIR.safe_checked','    (assembled_bytes_exact ActualAuthenticatedBranchRoundIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size','theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (AuthenticatedBranchRound.program.eval inputs) := by','  have result:=actual_bytes_sound ActualAuthenticatedBranchRoundIR.program actualBytes actual_validated inputs','  rw [ActualAuthenticatedBranchRoundIR.ir_exact] at result','  exact result','end ArtifactAuthenticatedBranchRoundBlocks']
(inputs/'ArtifactAuthenticatedBranchRoundBlocks.lean').write_text('\n'.join(code)+'\n');targets['ArtifactAuthenticatedBranchRoundBlocks']=['ArtifactAuthenticatedBranchRoundBlocks.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)','\n'.join(code),re.M)]
seeds=[Path('specs/033-core-proof-feasibility/evidence/scoped-chain/'+name) for name in ['path-round-dispatch-formal-001']]
for seed in seeds:
 prior=json.loads((seed/'report.json').read_text())
 if prior['outcome']!='Checked' or not prior['fresh_kernel_replay']:raise driver.ProofError('fresh checked dependencies required')
 for module,entry in prior['modules'].items():
  f=seed/'compiled'/Path(*module.split('.')).with_suffix('.olean')
  if hashlib.sha256(f.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('changed checked module')
 for relative,entry in prior['seeded_modules'].items():
  if hashlib.sha256((seed/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('changed checked dependency')
del targets['ArtifactAuthenticatedBranchRoundBlocks']
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seed/'compiled' for seed in seeds],fresh_replay=False)
if source.read_bytes()!=raw:raise driver.ProofError('actual source changed')
(out/'checker_step.rs').write_bytes(raw)
receipt={'format_version':'core033.actual-authenticated-branch-round-source.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'actual_statement_count':len(statements),'whole_source_correspondence':False,'scope':'fixed own-sibling then old/new parent dispatcher actual instruction bytes and full numeric instruction literals; complete assembly, hash/phase/state semantics and fresh replay still required','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
