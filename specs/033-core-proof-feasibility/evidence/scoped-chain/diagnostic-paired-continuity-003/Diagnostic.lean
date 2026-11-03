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

end Core033.PairedPathContinuity
