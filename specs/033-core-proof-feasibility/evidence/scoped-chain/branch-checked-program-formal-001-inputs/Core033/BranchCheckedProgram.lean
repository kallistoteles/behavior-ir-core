import Core033.WordInline
import Core033.BranchWordEncoding
import Core033.BranchAdmissionProgram
import Core033.WordSourceValidity
import Core033.KernelDecide

namespace Core033.BranchCheckedProgram
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def initial : Builder := Builder.empty 26
def byteStage := WordInline.inline initial BranchWordProgram.program id
def admissionStage := WordInline.inline byteStage.2 BranchAdmissionProgram.program id

def program : Program := ⟨26,admissionStage.2.operations,byteStage.1++admissionStage.1⟩

theorem byte_valid : BranchWordProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem admission_valid : BranchAdmissionProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem byte_ports : ∀ index,index<BranchWordProgram.program.inputCount → id index<initial.next := by
  intro index bound
  exact bound

theorem admission_ports : ∀ index,index<BranchAdmissionProgram.program.inputCount → id index<byteStage.2.next := by
  intro index bound
  rw [byteStage,WordInline.next_exact]
  change index<26+BranchWordProgram.program.operations.length
  change index<26 at bound
  omega

theorem byte_stage_meaning (inputs : Nat → Word) :
    byteStage.1.map (admissionStage.2.values inputs)=BranchWordProgram.program.eval inputs := by
  have first:=WordInline.complete_meaning initial BranchWordProgram.program byte_valid id byte_ports inputs
  have byteMeaning : byteStage.1.map (byteStage.2.values inputs)=BranchWordProgram.program.eval inputs := first
  rw [←byteMeaning]
  apply List.map_congr_left
  intro register member
  exact WordInline.prefix_kept byteStage.2 BranchAdmissionProgram.program id inputs register
    (WordInline.output_bounds initial BranchWordProgram.program byte_valid id byte_ports register member)

theorem admission_stage_meaning (inputs : Nat → Word) :
    admissionStage.1.map (admissionStage.2.values inputs)=BranchAdmissionProgram.program.eval inputs := by
  have meaning:=WordInline.complete_meaning byteStage.2 BranchAdmissionProgram.program admission_valid id admission_ports inputs
  apply meaning.trans
  apply WordInline.input_congr _ admission_valid
  intro index bound
  exact WordInline.prefix_kept initial BranchWordProgram.program id inputs index bound

theorem program_meaning (inputs : Nat → Word) :
    program.eval inputs=BranchWordProgram.program.eval inputs++BranchAdmission.flags inputs := by
  change (byteStage.1++admissionStage.1).map (admissionStage.2.values inputs)=_
  rw [List.map_append,byte_stage_meaning,admission_stage_meaning,BranchAdmissionProgram.program_meaning]

theorem byte_output_arity : BranchWordProgram.program.outputs.length=115 := by core033_kernel_decide

theorem admission_output_arity : BranchAdmissionProgram.program.outputs.length=7 := by core033_kernel_decide

theorem flags_exact (inputs : Nat → Word) : (program.eval inputs).drop 115=BranchAdmission.flags inputs := by
  rw [program_meaning]
  have length : (BranchWordProgram.program.eval inputs).length=115 := by
    change (BranchWordProgram.program.outputs.map _).length=115
    rw [List.length_map,byte_output_arity]
  rw [←length,List.drop_left]

theorem admitted_original_encoding (inputs : Nat → Word)
    (accepted : ∀ flag∈(program.eval inputs).drop 115,flag=1) :
    ∃ positive covered,
      BranchCodec.Framed (BranchWordEncoding.branch inputs positive covered) ∧
      BranchCodec.MetadataAdmitted (BranchWordEncoding.branch inputs positive covered) ∧
      BranchWordEncoding.emittedBytes inputs=BranchCodec.encode (BranchWordEncoding.branch inputs positive covered) := by
  rw [flags_exact] at accepted
  exact BranchAdmission.admitted_original_encoding inputs accepted

end Core033.BranchCheckedProgram
