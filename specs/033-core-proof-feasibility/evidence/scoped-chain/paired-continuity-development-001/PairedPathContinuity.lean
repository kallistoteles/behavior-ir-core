import Core033.PairedPathAssignments
import Core033.PairedPathFrameProjection
import Core033.PairedPathLocalView
import Core033.PairedPathTrace
import Core033.PathRoundDispatchTrace

namespace Core033.PairedPathContinuity
open WordIR PairedPathRound PairedPathTrace
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem original_word (inputs : Nat → Word) (notSix : inputs 0≠6)
    (index : Nat) (positive : 0<index) (bound : index<47) : next inputs index=inputs index := by
  by_cases counter : index=2
  · subst index
    exact (PairedPathAssignments.counter_word inputs).trans (if_neg notSix)
  · exact PairedPathPorts.preserved_original_port inputs index (by omega)
      (by omega) counter (by omega)

theorem continued_sha (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    PairedPathRouting.routedWord (next inputs) (35+index)=
      PathRoundDispatchTrace.next (PairedPathRouting.routedWord inputs) (35+index) :=
  (PairedPathLocalView.sha_word (next inputs) index bound).trans
    (PairedPathAssignments.sha_word inputs index bound)

def selectingNew (phase : Word) := WordControl.boolWord (decide (phase=4 ∨ phase=5 ∨ phase=6))
def Compressing (phase : Word) : Prop := phase=1 ∨ phase=2 ∨ phase=4 ∨ phase=5

theorem compressing_not_six (phase : Word) (compressing : Compressing phase) : phase≠6 := by
  rcases compressing with rfl|rfl|rfl|rfl
  all_goals decide

theorem selecting_new_stable (phase : Word) (compressing : Compressing phase) :
    selectingNew (phase+1)=selectingNew phase := by
  rcases compressing with rfl|rfl|rfl|rfl
  all_goals decide

theorem next_new_mask (inputs : Nat → Word) (compressing : Compressing (inputs 0)) :
    PairedPathLocalView.newMask (next inputs)=PairedPathLocalView.newMask inputs :=
  (congrArg selectingNew (next_phase inputs)).trans (selecting_new_stable (inputs 0) compressing)

theorem continued_frame (inputs : Nat → Word) (compressing : Compressing (inputs 0))
    (index : Nat) (positive : 0<index) (bound : index<35) :
    PairedPathRouting.routedWord (next inputs) index=PairedPathRouting.routedWord inputs index := by
  have left:=PairedPathRouteMeaning.exact_original_operands (next inputs) index (by omega)
  have right:=PairedPathRouteMeaning.exact_original_operands inputs index (by omega)
  have masks:=congrArg (fun mask=>PairedPathRouteMeaning.project (next inputs) mask
    (PairedPathLocalView.secondMask (next inputs)) (PairedPathLocalView.thirdMask (next inputs)) index)
    (next_new_mask inputs compressing)
  have fields:=PairedPathFrameProjection.frame_congr (next inputs) inputs
    (PairedPathLocalView.newMask inputs)
    (PairedPathLocalView.secondMask (next inputs)) (PairedPathLocalView.thirdMask (next inputs))
    (PairedPathLocalView.secondMask inputs) (PairedPathLocalView.thirdMask inputs)
    (original_word inputs (compressing_not_six (inputs 0) compressing)) index positive bound
  exact left.trans (masks.trans (fields.trans right.symm))

def selectingPhase (phase : Word) : Word :=
  if phase=3 ∨ phase=6 then 3 else if phase=2 ∨ phase=5 then 2 else 1

theorem compressing_phase (phase : Word) (compressing : Compressing phase) :
    selectingPhase phase=1 ∨ selectingPhase phase=2 := by
  rcases compressing with rfl|rfl|rfl|rfl
  all_goals decide

theorem selecting_phase_next (phase : Word) (compressing : Compressing phase) :
    selectingPhase (phase+1)=if selectingPhase phase=2 then 3 else 2 := by
  rcases compressing with rfl|rfl|rfl|rfl
  all_goals decide

theorem local_compressing_phase (inputs : Nat → Word) (compressing : Compressing (inputs 0)) :
    PairedPathRouting.routedWord inputs 0=1 ∨ PairedPathRouting.routedWord inputs 0=2 := by
  have phase:=PairedPathLocalView.phase_word inputs
  have classification:=compressing_phase (inputs 0) compressing
  rcases classification with one|two
  · exact Or.inl (phase.trans one)
  · exact Or.inr (phase.trans two)

theorem continued_phase (inputs : Nat → Word) (compressing : Compressing (inputs 0)) :
    PairedPathRouting.routedWord (next inputs) 0=
      PathRoundDispatchTrace.next (PairedPathRouting.routedWord inputs) 0 := by
  have first:=PairedPathLocalView.phase_word (next inputs)
  have second:=congrArg selectingPhase (next_phase inputs)
  have third:=selecting_phase_next (inputs 0) compressing
  have fourth:=congrArg (fun phase : Word=>if phase=2 then (3 : Word) else 2)
    (PairedPathLocalView.phase_word inputs).symm
  have fifth:=FrameHashControllerState.next_phase (PairedPathRouting.routedWord inputs)
  have sixth:=PathRoundDispatchTrace.hash_state (PairedPathRouting.routedWord inputs)
    (local_compressing_phase inputs compressing) 0 (by decide)
  exact first.trans (second.trans (third.trans (fourth.trans (fifth.symm.trans sixth.symm))))

theorem complete_local_continuation (inputs : Nat → Word) (compressing : Compressing (inputs 0))
    (index : Nat) (bound : index<43) :
    PairedPathRouting.routedWord (next inputs) index=
      PathRoundDispatchTrace.next (PairedPathRouting.routedWord inputs) index := by
  by_cases phase : index=0
  · subst index
    exact continued_phase inputs compressing
  · by_cases frame : index<35
    · have preserved:=FrameHashControllerState.preserved_frame (PairedPathRouting.routedWord inputs)
        (index-1) (by omega)
      have actual:=PathRoundDispatchTrace.hash_state (PairedPathRouting.routedWord inputs)
        (local_compressing_phase inputs compressing) index bound
      have normalized : FrameHashControllerState.next (PairedPathRouting.routedWord inputs) index=
          PairedPathRouting.routedWord inputs index := by
        simpa only [FrameHashController.framePort,Nat.add_sub_of_le (by omega : 1≤index)] using preserved
      exact (continued_frame inputs compressing index (by omega) frame).trans (normalized.symm.trans actual.symm)
    · have word:=continued_sha inputs (index-35) (by omega)
      simpa only [Nat.add_sub_of_le (by omega : 35≤index)] using word

end Core033.PairedPathContinuity
