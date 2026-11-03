import Core033.PairedPathContinuity

namespace Core033.PairedPathRoundTrace
open WordIR PairedPathRound PairedPathTrace PairedPathContinuity
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def StartsRound (phase : Word) : Prop := phase=1 ∨ phase=4

theorem starts_compressing (phase : Word) (start : StartsRound phase) : Compressing phase := by
  rcases start with one|four
  · exact Or.inl one
  · exact Or.inr (Or.inr (Or.inl four))

theorem next_compressing (inputs : Nat → Word) (start : StartsRound (inputs 0)) : Compressing (next inputs 0) := by
  have phase:=next_phase inputs
  rcases start with one|four
  · exact Or.inr (Or.inl (phase.trans (congrArg (fun word : Word=>word+1) one)))
  · exact Or.inr (Or.inr (Or.inr (phase.trans (congrArg (fun word : Word=>word+1) four))))

theorem two_routed (inputs : Nat → Word) (start : StartsRound (inputs 0))
    (index : Nat) (bound : index<43) :
    PairedPathRouting.routedWord (next (next inputs)) index=
      PathRoundDispatchTrace.next (PathRoundDispatchTrace.next (PairedPathRouting.routedWord inputs)) index := by
  have actual:=complete_local_continuation (next inputs) (next_compressing inputs start) index bound
  have same:=WordInline.input_congr PathRoundDispatch.program PathRoundDispatchGuards.program_valid
    (PairedPathRouting.routedWord (next inputs))
    (PathRoundDispatchTrace.next (PairedPathRouting.routedWord inputs))
    (complete_local_continuation inputs (starts_compressing (inputs 0) start))
  exact actual.trans (congrArg (fun words : List Word=>words.getD index 0) same)

theorem third_local (inputs : Nat → Word) (start : StartsRound (inputs 0)) (index : Nat) :
    PairedPathStateMeaning.localWords (next (next inputs)) index=
      PathRoundDispatchTrace.next (PathRoundDispatchTrace.next
        (PathRoundDispatchTrace.next (PairedPathRouting.routedWord inputs))) index := by
  have same:=WordInline.input_congr PathRoundDispatch.program PathRoundDispatchGuards.program_valid
    (PairedPathRouting.routedWord (next (next inputs)))
    (PathRoundDispatchTrace.next (PathRoundDispatchTrace.next (PairedPathRouting.routedWord inputs)))
    (two_routed inputs start)
  exact congrArg (fun words : List Word=>words.getD index 0) same

theorem local_start (inputs : Nat → Word) (start : StartsRound (inputs 0)) :
    PairedPathRouting.routedWord inputs 0=1 := by
  have phase:=PairedPathLocalView.phase_word inputs
  have value : selectingPhase (inputs 0)=1 := by
    rcases start with one|four
    · rw [one];decide
    · rw [four];decide
  exact phase.trans value

theorem third_full_digest (inputs : Nat → Word) (start : StartsRound (inputs 0)) :
    ((List.range 8).map (fun index=>PairedPathStateMeaning.localWords (next (next inputs)) (11+index))).flatMap
      (fun word=>Codec.encodeLE 4 word.toNat)=
        SHA256.digestBytes (PathFrameHashPipeline.message
          (FrameHashControllerMeaning.frameInputs (PairedPathRouting.routedWord inputs))) := by
  have roots : (List.range 8).map (fun index=>PairedPathStateMeaning.localWords (next (next inputs)) (11+index))=
      (List.range 8).map (fun index=>PathRoundDispatchTrace.next (PathRoundDispatchTrace.next
        (PathRoundDispatchTrace.next (PairedPathRouting.routedWord inputs))) (11+index)) := by
    apply List.map_congr_left
    intro index _
    exact third_local inputs start (11+index)
  exact (congrArg (fun words : List Word=>words.flatMap (fun word=>Codec.encodeLE 4 word.toNat)) roots).trans
    (PathRoundDispatchTrace.complete_original_root_bytes (PairedPathRouting.routedWord inputs) (local_start inputs start))

end Core033.PairedPathRoundTrace
