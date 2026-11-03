import Core033.OwnBranchParentPorts

namespace Core033.OwnBranchEncoding
open WordIR OwnBranchCoordinates OwnBranchParentPorts
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def branch (inputs : Nat → Word) (positive covered : Bool) : BranchCodec.Branch :=
  BranchWordEncoding.branch (ParentBranchProgram.branchInputs (expected inputs)) positive covered

theorem message_parent (frame : Nat → Word) : PathFrameEncoding.message frame=
    ParentBranchEncoding.emittedBytes (PathFrameMeaning.parentInputs frame) := by
  rw [PathFrameEncoding.message,ParentBranchEncoding.emittedBytes,
    PathFrameEncoding.byte_prefix,ParentBranchEncoding.byte_prefix]

theorem original_message (inputs : Nat → Word) (heightPositive : 0<(inputs 0).toNat)
    (heightBound : (inputs 0).toNat<256) (positive covered : Bool)
    (positiveWord : inputs 22=WordControl.boolWord positive)
    (coveredWord : inputs 23=WordControl.boolWord covered) :
    PathFrameHashPipeline.message (frameInputs inputs)=BranchCodec.encode (branch inputs positive covered) := by
  have same:=WordInline.input_congr ParentBranchProgram.program PathFrameProgram.parent_valid
    (PathFrameMeaning.parentInputs (frameInputs inputs)) (expected inputs)
    (exact_ports inputs heightPositive heightBound)
  have bytes:=congrArg (fun words : List Word=>(words.take 115).map (fun word=>UInt8.ofNat word.toNat)) same
  have encoded:=ParentBranchEncoding.exact_computed_branch_bytes (expected inputs) positive true covered true
    positiveWord rfl coveredWord rfl
  have complete:=bytes.trans encoded
  exact (message_parent (frameInputs inputs)).trans (by
    simpa only [Bool.and_true,branch] using complete)

theorem original_kind (inputs : Nat → Word) (positive covered : Bool) :
    (branch inputs positive covered).kind=(inputs 1).toNat := rfl

theorem original_depth (inputs : Nat → Word) (positive covered : Bool)
    (heightPositive : 0<(inputs 0).toNat) (heightBound : (inputs 0).toNat<256) :
    (branch inputs positive covered).depth=256-(inputs 0).toNat :=
  depth_exact inputs heightPositive heightBound

theorem framed (inputs : Nat → Word) (positive covered : Bool)
    (kind : (inputs 1).toNat=1 ∨ (inputs 1).toNat=2)
    (heightPositive : 0<(inputs 0).toNat) (heightBound : (inputs 0).toNat<256) :
    BranchCodec.Framed (branch inputs positive covered) := by
  apply BranchWordEncoding.represented_fields_framed
  · exact kind
  · change (PathCounterProgram.depth (frameInputs inputs 1)).toNat<256
    rw [depth_exact inputs heightPositive heightBound]
    omega

theorem metadata_admitted (inputs : Nat → Word) (positive covered : Bool)
    (bound : WideControl.Pair.raw ⟨inputs 18,inputs 19⟩+
      WideControl.Pair.raw ⟨inputs 20,inputs 21⟩≤1048576) :
    BranchCodec.MetadataAdmitted (branch inputs positive covered) := by
  have total:=ParentBranchEncoding.total_exact (expected inputs) bound
  exact ⟨total,bound⟩

end Core033.OwnBranchEncoding
