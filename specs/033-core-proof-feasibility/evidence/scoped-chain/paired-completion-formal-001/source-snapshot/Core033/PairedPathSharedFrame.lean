import Core033.PairedPathDigestTrace

namespace Core033.PairedPathSharedFrame
open WordIR PairedPathTrace PairedPathContinuity PairedPathDigestTrace
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem midpoint_fields (inputs : Nat → Word) (start : inputs 0=1)
    (index : Nat) (positive : 0<index) (bound : index<47) : iterate 3 inputs index=inputs index := by
  have first : inputs 0≠6 := by rw [start];decide
  have phaseOne : next inputs 0=2 := (next_phase inputs).trans (congrArg (fun word : Word=>word+1) start)
  have second : next inputs 0≠6 := by rw [phaseOne];decide
  have phaseTwo:=after_two_old_phase inputs start
  have third : next (next inputs) 0≠6 := by rw [phaseTwo];decide
  exact (original_word (next (next inputs)) third index positive bound).trans
    ((original_word (next inputs) second index positive bound).trans (original_word inputs first index positive bound))

/- A mathematical view of the initial inputs with the new-round selector.
This is a specification view, not a producer-selected physical phase transition. -/
def newInputs (inputs : Nat → Word) (index : Nat) := if index=0 then (4 : Word) else inputs index

theorem new_original_word (inputs : Nat → Word) (index : Nat) (positive : 0<index) :
    newInputs inputs index=inputs index := if_neg (by omega)

theorem midpoint_new_mask (inputs : Nat → Word) (start : inputs 0=1) :
    PairedPathLocalView.newMask (iterate 3 inputs)=1 :=
  congrArg selectingNew (midpoint_phase inputs start)

theorem exact_new_frame (inputs : Nat → Word) (start : inputs 0=1)
    (index : Nat) (positive : 0<index) (bound : index<35) :
    PairedPathRouting.routedWord (iterate 3 inputs) index=PairedPathRouting.routedWord (newInputs inputs) index := by
  have left:=PairedPathRouteMeaning.exact_original_operands (iterate 3 inputs) index (by omega)
  have right:=PairedPathRouteMeaning.exact_original_operands (newInputs inputs) index (by omega)
  have first:=congrArg (fun mask=>PairedPathRouteMeaning.project (iterate 3 inputs) mask
    (PairedPathLocalView.secondMask (iterate 3 inputs)) (PairedPathLocalView.thirdMask (iterate 3 inputs)) index)
    (midpoint_new_mask inputs start)
  have fields:=PairedPathFrameProjection.frame_congr (iterate 3 inputs) (newInputs inputs) 1
    (PairedPathLocalView.secondMask (iterate 3 inputs)) (PairedPathLocalView.thirdMask (iterate 3 inputs))
    (PairedPathLocalView.secondMask (newInputs inputs)) (PairedPathLocalView.thirdMask (newInputs inputs))
    (by intro position nonzero bounded
        exact (midpoint_fields inputs start position nonzero bounded).trans (new_original_word inputs position nonzero).symm)
    index positive bound
  exact left.trans (first.trans (fields.trans right.symm))

theorem new_message_exact (inputs : Nat → Word) (start : inputs 0=1) :
    PathFrameHashPipeline.message (FrameHashControllerMeaning.frameInputs
      (PairedPathRouting.routedWord (iterate 3 inputs)))=
    PathFrameHashPipeline.message (FrameHashControllerMeaning.frameInputs
      (PairedPathRouting.routedWord (newInputs inputs))) := by
  have same:=WordInline.input_congr PathFrameProgram.program PathFrameProgram.program_valid
    (FrameHashControllerMeaning.frameInputs (PairedPathRouting.routedWord (iterate 3 inputs)))
    (FrameHashControllerMeaning.frameInputs (PairedPathRouting.routedWord (newInputs inputs)))
    (by intro index bound
        change index<34 at bound
        exact exact_new_frame inputs start (1+index) (by omega) (by omega))
  exact congrArg (fun words : List Word=>(words.take 115).map (fun word=>UInt8.ofNat word.toNat)) same

theorem six_step_original_both_messages (inputs : Nat → Word) (start : inputs 0=1) :
    rootBytes (iterate 6 inputs) 55=SHA256.digestBytes (PathFrameHashPipeline.message
      (FrameHashControllerMeaning.frameInputs (PairedPathRouting.routedWord inputs))) ∧
    rootBytes (iterate 6 inputs) 67=SHA256.digestBytes (PathFrameHashPipeline.message
      (FrameHashControllerMeaning.frameInputs (PairedPathRouting.routedWord (newInputs inputs)))) :=
  ⟨(six_step_both_full_digests inputs start).1,
    (six_step_both_full_digests inputs start).2.trans (congrArg SHA256.digestBytes (new_message_exact inputs start))⟩

end Core033.PairedPathSharedFrame
