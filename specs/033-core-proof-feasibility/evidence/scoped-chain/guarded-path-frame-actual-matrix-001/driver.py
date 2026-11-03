"""Compose a checked actual base matrix with independently quoted guard rows.

A separate complete closed-value-to-file byte binding is mandatory for the
composed prefix. No generator-output equality is semantic proof authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/path-frame-matrix-packet-001').resolve();schema=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/path-frame-guards-formal-001').resolve();allNames=[]
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
q=Path('experiments/transition-study033/generated/guarded-path-frame-matrix-quote-001');quote=json.loads((q/'quote.json').read_text());raw=Path(quote['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256'] or not quote['independent_inverse_byte_equal']:raise driver.ProofError('changed independently quoted binary')
targets={}
for module in ['ActualGuardedPathFrameMatrixConstants','ActualGuardedPathFrameMatrixData21']:
 shutil.copyfile(q/(module+'.lean'),inputs/(module+'.lean'));targets[module]=[]
code='''import ActualGuardedPathFrameMatrixData21
import ActualPathFrameMatrixPacket
import Core033.PathFrameGuards
import Core033.KernelDecide
namespace CheckedGuardedPathFrameMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedPathFrameData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualPathFrameMatrixPacket.actualMatrix
abbrev program := PathFrameGuards.program

theorem expected_program : ActualPathFrameMatrixPacket.expectedProgram=program :=
  ActualPathFrameMatrixPacket.expected_program_exact.trans ActualPathFrameIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualPathFrameMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=47295 := by
  have counts:=ActualPathFrameMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedPathFrameData.actualRows1392=
    PathFrameGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [PathFrameGuards.wires,output_base]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedPathFrameData.actualVariableCount,
    ActualGuardedPathFrameData.actualInputPorts,ActualGuardedPathFrameData.actualPrivatePorts,
    ActualGuardedPathFrameData.actualOutputPorts,ActualGuardedPathFrameData.actualConstantOne,
    original.rows++ActualGuardedPathFrameData.actualRows1392⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original PathFrameGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=PathFrameGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualPathFrameMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualPathFrameMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualPathFrameMatrixPacket.actual_matrix_exact,expected_program]
    exact PathFrameGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedPathFrameData.actualRows1392.length=17 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedPathFrameData.actualRows1392=2040 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=47587 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=ROW_WEIGHT := by
  change (original.rows++ActualGuardedPathFrameData.actualRows1392).length=47587 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedPathFrameData.actualRows1392)=ROW_WEIGHT
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualPathFrameMatrixPacket.actual_rows_size.1,ActualPathFrameMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=34 ∧ actualMatrix.privatePorts.length=47260 ∧
    actualMatrix.outputPorts.length=133 := by
  change ActualGuardedPathFrameData.actualInputPorts.length=34 ∧
    ActualGuardedPathFrameData.actualPrivatePorts.length=47260 ∧ ActualGuardedPathFrameData.actualOutputPorts.length=133
  simp only [ActualGuardedPathFrameData.actualInputPorts,ActualGuardedPathFrameData.actualPrivatePorts,
    ActualGuardedPathFrameData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=BINARY_BYTES := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_forced_flags {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<17) :
    (program.eval inputs).getD (115+position) 0=1 := by
  rw [guarded_model_exact] at accepted
  exact PathFrameGuards.forced_one R1CS.modulus_larger_than_word valuation inputs accepted inputValues position bound

theorem actual_active_counter {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 1).toNat<256 := by
  rw [guarded_model_exact] at accepted
  exact PathFrameGuards.accepted_active R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_next_height {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase program+132)=((inputs 1).toNat+1 : Nat) := by
  rw [guarded_model_exact] at accepted
  exact PathFrameGuards.accepted_height_output R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_original_branch_admitted {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    BranchAdmission.Admitted (ParentBranchProgram.branchInputs (PathFrameMeaning.parentInputs inputs)) := by
  rw [guarded_model_exact] at accepted
  exact PathFrameGuards.accepted_original_branch_admission R1CS.modulus_larger_than_word valuation inputs accepted inputValues

end CheckedGuardedPathFrameMatrix
'''
code=code.replace('ROW_WEIGHT',str(sum(group['encoded_bytes'] for group in quote['groups']))).replace('BINARY_BYTES',str(len(raw)))
(inputs/'CheckedGuardedPathFrameMatrix.lean').write_text(code);targets['CheckedGuardedPathFrameMatrix']=allNames+['CheckedGuardedPathFrameMatrix.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[base/'kernel/compiled',schema/'compiled'])
if Path(quote['source']).read_bytes()!=raw:raise driver.ProofError('actual guarded matrix changed')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-guarded-path-frame-matrix.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':47587,'base_mathematical_receipt_sha256':hashlib.sha256((base/'receipt.json').read_bytes()).hexdigest(),'guard_tail':'independent actual numeric quotation, 17 literal-one rows, kernel checked','prefix_binding':'checked actual base data composed with actual guarded header/tail; complete checked-value-to-file equality required separately','scope':'exact original branch admission, controlled counter and actual next-height port with all 17 forced frame flags, complete numeric rows and strict parser; physical stream/controller bindings remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
