import Core033.PairedPathDigestTrace

namespace Core033.PairedPathCounterTrace
open WordIR PairedPathRound PairedPathTrace PairedPathDigestTrace
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem early_phase_not_six (count : Nat) (bound : count<5) :
    (1 : Word)+BitVec.ofNat 32 count≠6 := by
  have alternatives : count=0 ∨ count=1 ∨ count=2 ∨ count=3 ∨ count=4 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl|rfl
  all_goals decide

theorem counter_before_final (count : Nat) (inputs : Nat → Word) (start : inputs 0=1)
    (bound : count≤5) : iterate count inputs 2=inputs 2 := by
  induction count with
  | zero => rfl
  | succ count induction =>
    have phase:=phase_iterate count inputs
    have initial:=congrArg (fun word : Word=>word+BitVec.ofNat 32 count) start
    have notSix : iterate count inputs 0≠6 := fun same=>
      early_phase_not_six count (by omega) ((phase.trans initial).symm.trans same)
    exact (PairedPathAssignments.counter_word (iterate count inputs)).trans
      ((if_neg notSix).trans (induction (by omega)))

theorem local_final_phase (inputs : Nat → Word) (phase : inputs 0=6) :
    PairedPathRouting.routedWord inputs 0=3 :=
  (PairedPathLocalView.phase_word inputs).trans (congrArg PairedPathContinuity.selectingPhase phase)

theorem local_counter_update (inputs : Nat → Word) (phase : inputs 0=6) :
    PairedPathStateMeaning.localWords inputs 2=inputs 2+1 := by
  have actual:=PathRoundDispatchPorts.state_word (PairedPathRouting.routedWord inputs) 2 (by decide)
  have active:=PathRoundDispatchMeaning.active_advance_state (PairedPathRouting.routedWord inputs)
    (local_final_phase inputs phase) 2
  have update:=PathFrameAdvanceSoundness.counter_word (PairedPathRouting.routedWord inputs)
  have original:=PairedPathLocalView.original_word inputs 2 (by decide) (by decide)
  exact actual.trans (active.trans (update.trans (congrArg (fun word : Word=>word+1) original)))

theorem final_counter (inputs : Nat → Word) (start : inputs 0=1) : iterate 6 inputs 2=inputs 2+1 := by
  have phase : iterate 5 inputs 0=6 :=
    (phase_iterate 5 inputs).trans (congrArg (fun word : Word=>word+BitVec.ofNat 32 5) start)
  have counter:=PairedPathAssignments.counter_word (iterate 5 inputs)
  have selected : (if iterate 5 inputs 0=6 then PairedPathStateMeaning.localWords (iterate 5 inputs) 2
      else iterate 5 inputs 2)=PairedPathStateMeaning.localWords (iterate 5 inputs) 2 := if_pos phase
  exact counter.trans (selected.trans ((local_counter_update (iterate 5 inputs) phase).trans
    (congrArg (fun word : Word=>word+1) (counter_before_final 5 inputs start (by decide)))))

theorem final_unwrapped_counter (inputs : Nat → Word) (start : inputs 0=1) (bound : (inputs 2).toNat<256) :
    (iterate 6 inputs 2).toNat=(inputs 2).toNat+1 :=
  (congrArg BitVec.toNat (final_counter inputs start)).trans (PathCounterProgram.branch_coordinates (inputs 2) bound).1

end Core033.PairedPathCounterTrace
