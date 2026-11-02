"""Exact whole digest byte-order source via bounded actual instruction byte equations."""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
from source_quote import lean_ascii_expression
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';(inputs/'Core033').mkdir(parents=True)
targets={}
for name in ['ByteOrder','ByteLimbCodec','DigestWords']:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name)
 targets['Core033.'+name]=['Core033.'+name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',source.read_text(),re.M)]
source=Path('experiments/transition-study033/generated/digest-words-001/checker_step.rs').resolve();raw=source.read_bytes();lines=raw.splitlines(keepends=True);header=b''.join(lines[:10]);statements=lines[10:-2];footer=b''.join(lines[-2:]);ops=[]
if header+b''.join(statements)+footer!=raw or len(statements)!=56:raise driver.ProofError('unexpected bounded source partition')
for index,line in enumerate(statements):
 m=re.fullmatch(rb'    let r([0-9a-f]{8}): u32 = (.*);\n',line)
 if not m or int(m[1],16)!=8+index:raise driver.ProofError('unquoted actual statement')
 rhs=m[2];op=None
 patterns=[(rb'r([0-9a-f]{8})\.wrapping_add\(r([0-9a-f]{8})\)',lambda m:f'.badd {int(m[1],16)} {int(m[2],16)}'),(rb'r([0-9a-f]{8}) & r([0-9a-f]{8})',lambda m:f'.band {int(m[1],16)} {int(m[2],16)}'),(rb'r([0-9a-f]{8}) \^ r([0-9a-f]{8})',lambda m:f'.bxor {int(m[1],16)} {int(m[2],16)}'),(rb'!r([0-9a-f]{8})',lambda m:f'.bnot {int(m[1],16)}'),(rb'r([0-9a-f]{8})\.rotate_right\(0x([0-9a-f]{8})_u32\)',lambda m:f'.rotr {int(m[1],16)} {int(m[2],16)}'),(rb'r([0-9a-f]{8}) >> 0x([0-9a-f]{8})_u32',lambda m:f'.shr {int(m[1],16)} {int(m[2],16)}'),(rb'0x([0-9a-f]{8})_u32',lambda m:f'.literal (BitVec.ofNat 32 {int(m[1],16)})')]
 for pattern,quote in patterns:
  found=re.fullmatch(pattern,rhs)
  if found:op=quote(found);break
 if op is None:raise driver.ProofError('unsupported actual statement quotation')
 ops.append(op)
outputs=[int(v,16) for v in re.findall(rb'r([0-9a-f]{8})',lines[-2])]
code=['import Core033.DigestWords','import Core033.WordSourceBlocks','import Core033.KernelDecide','namespace ActualDigestIR','open Core033','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000','def program : WordIR.Program := ⟨8,['+','.join(ops)+'],['+','.join(map(str,outputs))+']⟩','theorem ir_exact : program=DigestWords.program := by core033_kernel_decide','theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide','end ActualDigestIR']
(inputs/'ActualDigestIR.lean').write_text('\n'.join(code)+'\n');targets['ActualDigestIR']=['ActualDigestIR.ir_exact','ActualDigestIR.safe_checked']
code=['import ActualDigestIR','namespace ActualDigestBytes','open Core033 WordSource WordSourceBlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000'];names=[]
for i,(op,line) in enumerate(zip(ops,statements)):
 code += [f'def op{i} : List WordIR.Op := [{op}]',f'def bytes{i} : Bytes := '+lean_ascii_expression(line),f'theorem checked{i} : bytes{i}=statementBytes {8+i} (op{i}.map lower) ∧ bytes{i}.length={len(line)} := by core033_kernel_decide'];names.append(f'checked{i}')
code += ['def blocks : List (List WordIR.Op) := ['+','.join(f'op{i}' for i in range(56))+']','def actualBody : List Bytes := ['+','.join(f'bytes{i}' for i in range(56))+']','def actualHeader : Bytes := '+lean_ascii_expression(header),'def actualFooter : Bytes := '+lean_ascii_expression(footer),'def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter',f'theorem header_checked : actualHeader=headerBytes 8 8 ∧ actualHeader.length={len(header)} := by core033_kernel_decide',f'theorem footer_checked : actualFooter=suffix ActualDigestIR.program.outputs ∧ actualFooter.length={len(footer)} := by core033_kernel_decide','theorem partition_checked : ActualDigestIR.program.operations=blocks.flatten := rfl','theorem body_checked : BlockChain 8 blocks actualBody := by','  unfold blocks actualBody']
chain='(.empty _)'
for i in reversed(range(56)):chain=f'(.cons _ _ _ _ _ checked{i}.1 {chain})'
code+=['  exact '+chain,'theorem actual_size : actualBytes.length≤8388608 := by','  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,'+','.join(f'checked{i}.2' for i in range(56))+']','  decide','theorem actual_validated : validate ActualDigestIR.program actualBytes=true := by','  exact validate_from_facts ActualDigestIR.program actualBytes ActualDigestIR.safe_checked','    (assembled_bytes_exact ActualDigestIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size','theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (((List.range 8).map (fun index=>ByteOrder.byteSwap (inputs index)))) := by','  have result:=actual_bytes_sound ActualDigestIR.program actualBytes actual_validated inputs','  rw [ActualDigestIR.ir_exact,DigestWords.program_meaning] at result','  exact result','end ActualDigestBytes']
names += ['header_checked','footer_checked','partition_checked','body_checked','actual_size','actual_validated','actual_meaning'];(inputs/'ActualDigestBytes.lean').write_text('\n'.join(code)+'\n');targets['ActualDigestBytes']=['ActualDigestBytes.'+n for n in names]
(out/'checker_step.rs').write_bytes(raw);seed=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/control-actual-matrix-003/kernel').resolve();sr=json.loads((seed/'report.json').read_text())
if sr['outcome']!='Checked' or not sr['fresh_kernel_replay']:raise driver.ProofError('checked mathematical/source dependencies required')
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seed/'compiled'])
if source.read_bytes()!=raw:raise driver.ProofError('actual source changed')
native=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/digest-native-001');nr=json.loads((native/'receipt.json').read_text())
for name,key in [('checker_step.rs','source_sha256'),('libdigest033.rlib','library_sha256'),('vectors','harness_sha256')]:
 if hashlib.sha256((native/name).read_bytes()).hexdigest()!=nr[key]:raise driver.ProofError('actual native artifact identity changed')
if (native/'checker_step.rs').read_bytes()!=raw:raise driver.ProofError('native/source mismatch')
receipt={'format_version':'core033.actual-digest-source.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'native_artifacts':nr,'scope':'actual whole 56-instruction digest byte-order source and exact full32-byte SHA/digest profile byte order; not whole K','actual_matrix_bytes':False,'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n');print(json.dumps({k:receipt[k] for k in ['outcome','targets','fresh_kernel_replay','source_bytes','g1_pass']}))
