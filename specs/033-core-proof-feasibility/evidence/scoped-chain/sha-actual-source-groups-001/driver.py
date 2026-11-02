"""Compose exact actual-instruction byte proofs in bounded groups.

The generator/partition is untrusted. Every byte, IR partition, range and complete
original-source validator is kernel checked, then audited/fresh-replayed.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
from source_quote import lean_ascii_expression
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);parser.add_argument('--group-size',type=int,default=64);a=parser.parse_args()
if not 1<=a.group_size<=128:raise driver.ProofError('bounded group size required')
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
inputs=out/'proof-inputs';(inputs/'Core033').mkdir(parents=True)
modules=['Reference','SHA256','Codec','WordIR','WordSource','WordSourceChunks','WordSourceBlocks','WordStage','SHA256Stage','SHA256Schedule','SHA256Compiled','SHAMaterialized','SHAMaterializedFinal','KernelDecide']
targets={}
for name in modules:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name)
 ns='WordSource' if name=='WordSourceChunks' else 'SHAMaterialized' if name=='SHAMaterializedFinal' else name
 names=re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',source.read_text(),re.M)
 targets['Core033.'+name]=['Core033.'+ns+'.'+n for n in names]
source=Path('experiments/transition-study033/generated/sha-word-001/checker_step.rs').resolve();raw=source.read_bytes();lines=raw.splitlines(keepends=True)
if len(raw)>8388608:raise driver.ProofError('source bound exceeded')
mat=(p/'Core033/SHAMaterialized.lean').read_text()+'\n'+(p/'Core033/SHAMaterializedFinal.lean').read_text()
fragments={int(n):ops for n,ops in re.findall(r'^def ops(\d+) : List WordIR.Op := \[(.*?)\]\+\+ops\d+$',mat,re.M)}
if set(fragments)!=set(range(1,114)):raise driver.ProofError('complete checked-stage inventory required')
operations=[op for n in range(1,114) for op in reversed(fragments[n].split(','))]
if len(operations)!=2360 or len(lines)!=2388:raise driver.ProofError('unexpected actual IR/source shape')
header=b''.join(lines[:26]);statements=lines[26:2386];footer=b''.join(lines[2386:])
if header+b''.join(statements)+footer!=raw:raise driver.ProofError('splitting lost/reordered actual bytes')
imports=['import Core033.SHAMaterializedFinal','import Core033.WordSourceBlocks','import Core033.KernelDecide']
settings=['namespace ArtifactSHABlocks','open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
groups=[]
for g,start in enumerate(range(0,2360,a.group_size)):
 stop=min(start+a.group_size,2360);groups.append((start,stop));module=f'ArtifactSHAGroup{g}'
 code=imports+settings;names=[]
 for i in range(start,stop):
  b=statements[i]
  code += [f'def op{i} : List WordIR.Op := [{operations[i]}]',f'def bytes{i} : Bytes := '+lean_ascii_expression(b),f'theorem checked{i} : bytes{i}=statementBytes {24+i} (op{i}.map lower) ∧ bytes{i}.length={len(b)} := by core033_kernel_decide']
  names.append(f'checked{i}')
 code += [f'def innerBlocks{g} : List (List WordIR.Op) := ['+','.join(f'op{i}' for i in range(start,stop))+']',f'def innerBytes{g} : List Bytes := ['+','.join(f'bytes{i}' for i in range(start,stop))+']',f'def partOps{g} : List WordIR.Op := innerBlocks{g}.flatten',f'def partBytes{g} : Bytes := innerBytes{g}.flatten',f'theorem partChain{g} : BlockChain {24+start} innerBlocks{g} innerBytes{g} := by',f'  unfold innerBlocks{g} innerBytes{g}']
 chain='(.empty _)'
 for i in reversed(range(start,stop)):chain=f'(.cons _ _ _ _ _ checked{i}.1 {chain})'
 code += ['  exact '+chain,f'theorem partChecked{g} : partBytes{g}=statementBytes {24+start} (partOps{g}.map lower) ∧ partBytes{g}.length={sum(map(len,statements[start:stop]))} := by','  constructor',f'  · exact (chain_exact partChain{g}).trans (body_exact innerBlocks{g} {24+start})',f'  · simp only [partBytes{g},WordSource.chunk_sizes_exact,innerBytes{g},List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,'+','.join(f'checked{i}.2' for i in range(start,stop))+']',f'theorem partLength{g} : partOps{g}.length={stop-start} := by',f'  simp only [partOps{g},innerBlocks{g},'+','.join(f'op{i}' for i in range(start,stop))+',List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]','end ArtifactSHABlocks']
 names += [f'partChain{g}',f'partChecked{g}',f'partLength{g}']
 (inputs/(module+'.lean')).write_text('\n'.join(code)+'\n');targets[module]=['ArtifactSHABlocks.'+n for n in names]
code=[f'import ArtifactSHAGroup{g}' for g in range(len(groups))]+settings
code += ['def blocks : List (List WordIR.Op) := ['+','.join(f'partOps{g}' for g in range(len(groups)))+']','def actualBody : List Bytes := ['+','.join(f'partBytes{g}' for g in range(len(groups)))+']','def actualHeader : Bytes := '+lean_ascii_expression(header),'def actualFooter : Bytes := '+lean_ascii_expression(footer),'def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter',f'theorem header_checked : actualHeader=headerBytes 24 8 ∧ actualHeader.length={len(header)} := by core033_kernel_decide',f'theorem footer_checked : actualFooter=suffix SHAMaterialized.outputRegisters ∧ actualFooter.length={len(footer)} := by core033_kernel_decide','theorem safe_checked : checkSafe (lowerFunction SHAMaterialized.program)=true := by core033_kernel_decide']
opsdefs=','.join('SHAMaterialized.ops'+str(i) for i in range(114))
parts=','.join(f'partOps{g},innerBlocks{g}' for g in range(len(groups)))
singletons=','.join(f'op{i}' for i in range(2360))
code += ['theorem partition_checked : SHAMaterialized.program.operations=blocks.flatten := by','  simp only [SHAMaterialized.program,SHAMaterialized.b113,WordStage.Builder.operations,'+opsdefs+',blocks,'+parts+','+singletons+',List.reverse_append,List.reverse_cons,List.reverse_nil,List.flatten_cons,List.flatten_nil,List.append_nil,List.nil_append,List.append_assoc]','theorem body_checked : BlockChain 24 blocks actualBody := by','  unfold blocks actualBody']
chain='(.empty _)'
for g in reversed(range(len(groups))):chain=f'(.cons _ _ _ _ _ partChecked{g}.1 {chain})'
code += ['  exact '+chain,'theorem actual_size : actualBytes.length≤8388608 := by','  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,'+','.join(f'partChecked{g}.2' for g in range(len(groups)))+']','  decide','theorem actual_validated : validate SHAMaterialized.program actualBytes=true := by','  exact validate_from_facts SHAMaterialized.program actualBytes safe_checked','    (assembled_bytes_exact SHAMaterialized.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size','theorem actual_meaning (inputs : Nat → WordIR.Word) :','    NativeDenotes actualBytes inputs (SHA256.stateWords (SHA256.compress (SHA256Compiled.expectedState inputs) (SHA256Compiled.expectedBlock inputs))) := by','  have result:=actual_bytes_sound SHAMaterialized.program actualBytes actual_validated inputs','  rw [SHAMaterialized.program_meaning] at result','  exact result','end ArtifactSHABlocks']
(inputs/'ArtifactSHABlocks.lean').write_text('\n'.join(code)+'\n');(out/'checker_step.rs').write_bytes(raw)
targets['ArtifactSHABlocks']=['ArtifactSHABlocks.'+n for n in ['header_checked','footer_checked','safe_checked','partition_checked','body_checked','actual_size','actual_validated','actual_meaning']]
report=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean')
if source.read_bytes()!=raw:raise driver.ProofError('actual source changed during checking')
native=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/sha-word-native-001');nr=json.loads((native/'receipt.json').read_text())
for name,key in [('checker_step.rs','source_sha256'),('libsha_word033.rlib','library_sha256'),('native-vectors','executable_sha256'),('native_vectors.rs','harness_sha256')]:
 if hashlib.sha256((native/name).read_bytes()).hexdigest()!=nr[key]:raise driver.ProofError('native artifact identity changed')
if (native/'checker_step.rs').read_bytes()!=raw:raise driver.ProofError('different native source')
receipt={'format_version':'core033.sha-block-source-correspondence.v1','outcome':report['outcome'],'fresh_kernel_replay':report['fresh_kernel_replay'],'targets':len(report['theorems']),'source_bytes':len(raw),'source_sha256':hashlib.sha256(raw).hexdigest(),'native_artifacts':nr,'scope':'actual complete SHA compression source; no whole K/field/backend certificate','field_correspondence':False,'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n');print(json.dumps({k:receipt[k] for k in ['outcome','targets','fresh_kernel_replay','source_bytes','g1_pass']}))
