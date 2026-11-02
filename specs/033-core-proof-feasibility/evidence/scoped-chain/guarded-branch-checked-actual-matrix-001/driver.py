"""Compose a checked actual base matrix with independently quoted guard rows.

A separate complete closed-value-to-file byte binding is mandatory for the
composed prefix. No generator-output equality is semantic proof authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/branch-checked-matrix-packet-001').resolve();schema=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/branch-checked-guards-formal-001').resolve();allNames=[]
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
q=Path('experiments/transition-study033/generated/guarded-branch-checked-matrix-quote-001');quote=json.loads((q/'quote.json').read_text());raw=Path(quote['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256'] or not quote['independent_inverse_byte_equal']:raise driver.ProofError('changed independently quoted binary')
targets={}
for module in ['ActualGuardedBranchCheckedMatrixConstants','ActualGuardedBranchCheckedMatrixData9']:
 shutil.copyfile(q/(module+'.lean'),inputs/(module+'.lean'));targets[module]=[]
code='''import ActualGuardedBranchCheckedMatrixData9
import ActualCheckedBranchMatrixPacket
import Core033.BranchCheckedGuards
import Core033.KernelDecide
namespace CheckedGuardedBranchCheckedMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedBranchCheckedData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualCheckedBranchMatrixPacket.actualMatrix
abbrev program := BranchCheckedGuards.program

theorem expected_program : ActualCheckedBranchMatrixPacket.expectedProgram=program :=
  ActualCheckedBranchMatrixPacket.expected_program_exact.trans ActualCheckedBranchIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualCheckedBranchMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=20367 := by
  have counts:=ActualCheckedBranchMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedBranchCheckedData.actualRows600=
    BranchCheckedGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [BranchCheckedGuards.wires,output_base,List.map_cons,List.map_nil,List.range]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedBranchCheckedData.actualVariableCount,
    ActualGuardedBranchCheckedData.actualInputPorts,ActualGuardedBranchCheckedData.actualPrivatePorts,
    ActualGuardedBranchCheckedData.actualOutputPorts,ActualGuardedBranchCheckedData.actualConstantOne,
    original.rows++ActualGuardedBranchCheckedData.actualRows600⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original BranchCheckedGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=BranchCheckedGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualCheckedBranchMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualCheckedBranchMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualCheckedBranchMatrixPacket.actual_matrix_exact,expected_program]
    exact BranchCheckedGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedBranchCheckedData.actualRows600.length=7 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedBranchCheckedData.actualRows600=840 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=20532 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=ROW_WEIGHT := by
  change (original.rows++ActualGuardedBranchCheckedData.actualRows600).length=20532 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedBranchCheckedData.actualRows600)=ROW_WEIGHT
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualCheckedBranchMatrixPacket.actual_rows_size.1,ActualCheckedBranchMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=26 ∧ actualMatrix.privatePorts.length=20340 ∧
    actualMatrix.outputPorts.length=122 := by
  change ActualGuardedBranchCheckedData.actualInputPorts.length=26 ∧
    ActualGuardedBranchCheckedData.actualPrivatePorts.length=20340 ∧ ActualGuardedBranchCheckedData.actualOutputPorts.length=122
  simp only [ActualGuardedBranchCheckedData.actualInputPorts,ActualGuardedBranchCheckedData.actualPrivatePorts,
    ActualGuardedBranchCheckedData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=BINARY_BYTES := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    BranchAdmission.Admitted inputs := by
  rw [guarded_model_exact] at accepted
  exact BranchCheckedGuards.accepted_admission (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (inputs : Nat → WordIR.Word) (admitted : BranchAdmission.Admitted inputs) :
    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  rw [guarded_model_exact]
  exact BranchCheckedGuards.admitted_complete (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid inputs admitted

end CheckedGuardedBranchCheckedMatrix
'''
code=code.replace('ROW_WEIGHT',str(sum(group['encoded_bytes'] for group in quote['groups']))).replace('BINARY_BYTES',str(len(raw)))
(inputs/'CheckedGuardedBranchCheckedMatrix.lean').write_text(code);targets['CheckedGuardedBranchCheckedMatrix']=allNames+['CheckedGuardedBranchCheckedMatrix.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[base/'kernel/compiled',schema/'compiled'])
if Path(quote['source']).read_bytes()!=raw:raise driver.ProofError('actual guarded matrix changed')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-guarded-branch-checked-matrix.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':20532,'base_mathematical_receipt_sha256':hashlib.sha256((base/'receipt.json').read_bytes()).hexdigest(),'guard_tail':'independent actual numeric quotation, seven literal-one rows, kernel checked','prefix_binding':'checked actual base data composed with actual guarded header/tail; complete checked-value-to-file equality required separately','scope':'exact concrete same-input branch byte encoder and all seven forced admission checks, honest completeness and strict parser; authenticated child roots/metadata and whole physical machine remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
