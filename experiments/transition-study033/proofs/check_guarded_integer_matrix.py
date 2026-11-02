"""Compose a checked actual base matrix with independently quoted guard rows.

A separate complete closed-value-to-file byte binding is mandatory for the
composed prefix. No generator-output equality is semantic proof authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/integer-ingress-matrix-packet-001').resolve();schema=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/integer-ingress-guards-formal-002').resolve();allNames=[]
for kernel in [base/'kernel',schema]:
 report=json.loads((kernel/'report.json').read_text())
 if report['outcome']!='Checked' or not report['fresh_kernel_replay']:raise driver.ProofError('genuine checked base and guarded schema required')
 for module,entry in report['modules'].items():
  file=kernel/'compiled'/Path(*module.split('.')).with_suffix('.olean')
  if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('changed checked module')
 for relative,entry in report['seeded_modules'].items():
  if hashlib.sha256((kernel/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('changed checked dependency')
 for target in report['theorems']:
  if target['target'] not in allNames:allNames.append(target['target'])
q=Path('experiments/transition-study033/generated/guarded-integer-matrix-quote-001');quote=json.loads((q/'quote.json').read_text());raw=Path(quote['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256'] or not quote['independent_inverse_byte_equal']:raise driver.ProofError('changed independently quoted binary')
targets={}
math=p/'Core033/IntegerPublicValue.lean';(inputs/'Core033').mkdir();shutil.copyfile(math,inputs/'Core033'/math.name);targets['Core033.IntegerPublicValue']=['Core033.IntegerPublicValue.accepted_public_integer']
for module in ['ActualGuardedIntegerMatrixConstants','ActualGuardedIntegerMatrixData2']:
 shutil.copyfile(q/(module+'.lean'),inputs/(module+'.lean'));targets[module]=[]
code='''import ActualGuardedIntegerMatrixData2
import ActualIntegerMatrixPacket
import Core033.IntegerIngressGuards
import Core033.IntegerPublicValue
import Core033.KernelDecide
namespace CheckedGuardedIntegerMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedIntegerData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualIntegerMatrixPacket.actualMatrix
abbrev program := IntegerIngressGuards.program

theorem expected_program : ActualIntegerMatrixPacket.expectedProgram=program :=
  ActualIntegerMatrixPacket.expected_program_exact.trans ActualIntegerIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualIntegerMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=5577 := by
  have counts:=ActualIntegerMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedIntegerData.actualRows165=
    IntegerIngressGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [IntegerIngressGuards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedIntegerData.actualVariableCount,
    ActualGuardedIntegerData.actualInputPorts,ActualGuardedIntegerData.actualPrivatePorts,
    ActualGuardedIntegerData.actualOutputPorts,ActualGuardedIntegerData.actualConstantOne,
    original.rows++ActualGuardedIntegerData.actualRows165⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original IntegerIngressGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=IntegerIngressGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualIntegerMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualIntegerMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualIntegerMatrixPacket.actual_matrix_exact,expected_program]
    exact IntegerIngressGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedIntegerData.actualRows165.length=8 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedIntegerData.actualRows165=960 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=5608 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=833520 := by
  change (original.rows++ActualGuardedIntegerData.actualRows165).length=5608 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedIntegerData.actualRows165)=833520
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualIntegerMatrixPacket.actual_rows_size.1,ActualIntegerMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=8 ∧ actualMatrix.privatePorts.length=5568 ∧
    actualMatrix.outputPorts.length=10 := by
  change ActualGuardedIntegerData.actualInputPorts.length=8 ∧
    ActualGuardedIntegerData.actualPrivatePorts.length=5568 ∧ ActualGuardedIntegerData.actualOutputPorts.length=10
  simp only [ActualGuardedIntegerData.actualInputPorts,ActualGuardedIntegerData.actualPrivatePorts,
    ActualGuardedIntegerData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=855950 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<8 → (inputs index).toNat<256 := by
  rw [guarded_model_exact] at accepted
  exact IntegerIngressGuards.accepted_bytes (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_public_integer {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase program)+4294967296*valuation (WordMatrix.outputBase program+1)=
      ((Codec.decodeLE ((List.range 8).map (fun index=>UInt8.ofNat (inputs index).toNat))) : F) := by
  rw [guarded_model_exact] at accepted
  exact IntegerPublicValue.accepted_public_integer R1CS.modulus_larger_than_word
    program_valid valuation inputs accepted inputValues

end CheckedGuardedIntegerMatrix
'''
(inputs/'CheckedGuardedIntegerMatrix.lean').write_text(code);targets['CheckedGuardedIntegerMatrix']=allNames+['CheckedGuardedIntegerMatrix.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[base/'kernel/compiled',schema/'compiled'])
if Path(quote['source']).read_bytes()!=raw:raise driver.ProofError('actual guarded matrix changed')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-guarded-integer-matrix.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':5608,'base_mathematical_receipt_sha256':hashlib.sha256((base/'receipt.json').read_bytes()).hexdigest(),'guard_tail':'independent actual numeric quotation, eight literal-one rows, kernel checked','prefix_binding':'checked actual base data composed with actual guarded header/tail; complete checked-value-to-file equality required separately','scope':'exact concrete guarded canonical integer relation, public pair and strict parser; authenticated typed bytes, physical record control and whole machine remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
