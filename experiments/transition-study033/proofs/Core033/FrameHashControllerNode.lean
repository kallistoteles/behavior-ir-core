import Core033.FrameHashControllerGuards
import Core033.FrameHashControllerTrace

namespace Core033.FrameHashControllerNode
open WordIR FrameHashController FrameHashControllerMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem accepted_canonical_branch {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (FrameHashControllerGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∃ branch : BranchCodec.Branch,
      BranchCodec.Framed branch ∧ BranchCodec.MetadataAdmitted branch ∧
      PathFrameHashPipeline.message (frameInputs inputs)=BranchCodec.encode branch := by
  have flags:=FrameHashControllerGuards.accepted_frame_flags large valuation inputs accepted inputValues
  obtain ⟨frameValuation,frameAccepted,frameInputsExact⟩:=WordGuardSuffix.admitted_complete (F:=F)
    large PathFrameProgram.program PathFrameProgram.program_valid 115 17
    (by rw [PathFrameProgram.output_count];decide) (frameInputs inputs) flags
  obtain ⟨positive,covered,framed,metadata,message⟩:=PathFrameEncoding.accepted_canonical_message
    large frameValuation (frameInputs inputs) frameAccepted frameInputsExact
  exact ⟨BranchWordEncoding.branch (PathFrameEncoding.branchInputs (frameInputs inputs)) positive covered,
    framed,metadata,message⟩

theorem accepted_two_call_digest {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (FrameHashControllerGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (start : inputs phasePort=1) :
    ∃ branch : BranchCodec.Branch,
      BranchCodec.Framed branch ∧ BranchCodec.MetadataAdmitted branch ∧
      (FrameHashControllerTrace.digestWords inputs).flatMap SHA256.wordBytes=
        SHA256.digestBytes (BranchCodec.encode branch) := by
  obtain ⟨branch,framed,metadata,message⟩:=accepted_canonical_branch large valuation inputs accepted inputValues
  refine ⟨branch,framed,metadata,?_⟩
  rw [FrameHashControllerTrace.complete_digest inputs start,message]

end Core033.FrameHashControllerNode
