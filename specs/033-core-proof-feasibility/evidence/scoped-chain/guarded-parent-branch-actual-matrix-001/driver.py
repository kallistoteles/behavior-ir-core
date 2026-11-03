"""Compose a checked actual base matrix with independently quoted guard rows.

A separate complete closed-value-to-file byte binding is mandatory for the
composed prefix. No generator-output equality is semantic proof authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/parent-branch-matrix-packet-001').resolve();schema=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/parent-branch-guards-formal-001').resolve();allNames=[]
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
q=Path('experiments/transition-study033/generated/guarded-parent-branch-matrix-quote-001');quote=json.loads((q/'quote.json').read_text());raw=Path(quote['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256'] or not quote['independent_inverse_byte_equal']:raise driver.ProofError('changed independently quoted binary')
targets={}
for module in ['ActualGuardedParentBranchMatrixConstants','ActualGuardedParentBranchMatrixData12']:
 shutil.copyfile(q/(module+'.lean'),inputs/(module+'.lean'));targets[module]=[]
code='''import ActualGuardedParentBranchMatrixData12
import ActualParentBranchMatrixPacket
import Core033.ParentBranchGuards
import Core033.KernelDecide
namespace CheckedGuardedParentBranchMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedParentBranchData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualParentBranchMatrixPacket.actualMatrix
abbrev program := ParentBranchGuards.program

theorem expected_program : ActualParentBranchMatrixPacket.expectedProgram=program :=
  ActualParentBranchMatrixPacket.expected_program_exact.trans ActualParentBranchIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualParentBranchMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=27473 := by
  have counts:=ActualParentBranchMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedParentBranchData.actualRows809=
    ParentBranchGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [ParentBranchGuards.wires,WordGuardSuffix.wires,output_base,List.range_succ,List.range_zero,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedParentBranchData.actualVariableCount,
    ActualGuardedParentBranchData.actualInputPorts,ActualGuardedParentBranchData.actualPrivatePorts,
    ActualGuardedParentBranchData.actualOutputPorts,ActualGuardedParentBranchData.actualConstantOne,
    original.rows++ActualGuardedParentBranchData.actualRows809⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original ParentBranchGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=ParentBranchGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualParentBranchMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualParentBranchMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualParentBranchMatrixPacket.actual_matrix_exact,expected_program]
    exact ParentBranchGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedParentBranchData.actualRows809.length=12 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedParentBranchData.actualRows809=1440 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=27674 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=ROW_WEIGHT := by
  change (original.rows++ActualGuardedParentBranchData.actualRows809).length=27674 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedParentBranchData.actualRows809)=ROW_WEIGHT
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualParentBranchMatrixPacket.actual_rows_size.1,ActualParentBranchMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=26 ∧ actualMatrix.privatePorts.length=27446 ∧
    actualMatrix.outputPorts.length=127 := by
  change ActualGuardedParentBranchData.actualInputPorts.length=26 ∧
    ActualGuardedParentBranchData.actualPrivatePorts.length=27446 ∧ ActualGuardedParentBranchData.actualOutputPorts.length=127
  simp only [ActualGuardedParentBranchData.actualInputPorts,ActualGuardedParentBranchData.actualPrivatePorts,
    ActualGuardedParentBranchData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=BINARY_BYTES := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_count {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    WideControl.Pair.raw ⟨inputs 18,inputs 19⟩+WideControl.Pair.raw ⟨inputs 20,inputs 21⟩≤1048576 := by
  rw [guarded_model_exact] at accepted
  exact ParentBranchGuards.accepted_count R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_child_booleans {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ position,position<4 → ∃ value,BooleanValues.decode (inputs (22+position))=some value := by
  rw [guarded_model_exact] at accepted
  exact ParentBranchGuards.accepted_child_booleans R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_original_branch_admission {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    BranchAdmission.Admitted (ParentBranchProgram.branchInputs inputs) := by
  rw [guarded_model_exact] at accepted
  exact ParentBranchGuards.accepted_branch_admission R1CS.modulus_larger_than_word valuation inputs accepted inputValues

end CheckedGuardedParentBranchMatrix
'''
code=code.replace('ROW_WEIGHT',str(sum(group['encoded_bytes'] for group in quote['groups']))).replace('BINARY_BYTES',str(len(raw)))
(inputs/'CheckedGuardedParentBranchMatrix.lean').write_text(code);targets['CheckedGuardedParentBranchMatrix']=allNames+['CheckedGuardedParentBranchMatrix.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[base/'kernel/compiled',schema/'compiled'])
if Path(quote['source']).read_bytes()!=raw:raise driver.ProofError('actual guarded matrix changed')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-guarded-parent-branch-matrix.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':27674,'base_mathematical_receipt_sha256':hashlib.sha256((base/'receipt.json').read_bytes()).hexdigest(),'guard_tail':'independent actual numeric quotation, twelve literal-one rows, kernel checked','prefix_binding':'checked actual base data composed with actual guarded header/tail; complete checked-value-to-file equality required separately','scope':'exact computed parent branch with twelve forced metadata/type/range checks, complete numeric rows and strict parser; physical child authentication and path/controller inputs remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
