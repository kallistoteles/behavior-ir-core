import Core033.PathFrameGuards
import Core033.BranchWordBounds

namespace Core033.PathFrameEncoding
open WordIR PathFrameProgram PathFrameMeaning

def branchInputs (inputs : Nat → Word) : Nat → Word := ParentBranchProgram.branchInputs (parentInputs inputs)
def message (inputs : Nat → Word) : Codec.Bytes := ((program.eval inputs).take 115).map (fun word=>UInt8.ofNat word.toNat)

theorem byte_prefix (inputs : Nat → Word) :
    (program.eval inputs).take 115=BranchWordProgram.program.eval (branchInputs inputs) := by
  rw [PathFrameMeaning.program_meaning,ParentBranchProgram.program_meaning,BranchCheckedProgram.program_meaning]
  rw [←ParentBranchEncoding.byte_word_count (branchInputs inputs)]
  simp only [branchInputs,List.append_assoc,List.take_left]

theorem full_byte_ranges (inputs : Nat → Word) :
    ∀ word∈(program.eval inputs).take 115,word.toNat<256 := by
  rw [byte_prefix]
  exact BranchWordBounds.all_output_bytes _

theorem original_message (inputs : Nat → Word) : message inputs=BranchWordEncoding.emittedBytes (branchInputs inputs) := by
  rw [message,byte_prefix]
  rfl

theorem message_size (inputs : Nat → Word) : (message inputs).length=115 := by
  rw [message,List.length_map,byte_prefix,ParentBranchEncoding.byte_word_count]

theorem accepted_canonical_message {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (PathFrameGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∃ positive covered,
      BranchCodec.Framed (BranchWordEncoding.branch (branchInputs inputs) positive covered) ∧
      BranchCodec.MetadataAdmitted (BranchWordEncoding.branch (branchInputs inputs) positive covered) ∧
      message inputs=BranchCodec.encode (BranchWordEncoding.branch (branchInputs inputs) positive covered) := by
  obtain ⟨positive,covered,framed,metadata,encoded⟩:=BranchAdmission.admitted_original_encoding (branchInputs inputs)
    (PathFrameGuards.accepted_original_branch_admission large valuation inputs accepted inputValues)
  exact ⟨positive,covered,framed,metadata,(original_message inputs).trans encoded⟩

end Core033.PathFrameEncoding
