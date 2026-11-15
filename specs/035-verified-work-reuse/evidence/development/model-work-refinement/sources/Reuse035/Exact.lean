import Reuse035.Observation
namespace Reuse035
theorem finish_state_exact (s : State np nc) (t : Fin nc) :
 incrementalFinish s t = referenceFinish s t := by
 cases bound : s.children t <;>
  simp [incrementalFinish,referenceFinish,bound,reference_after_eq]

structure Outcome (np nc : Nat) where
 state : State np nc
 observation : J

def referenceOutcome (s : State np nc) (t : Fin nc) (e : OriginalEncoders np nc) : Option (Outcome np nc) :=
 (referenceFinish s t).map fun after => ⟨after,completeObservation e s after⟩
def incrementalOutcome (s : State np nc) (t : Fin nc) (e : OriginalEncoders np nc) : Option (Outcome np nc) :=
 (incrementalFinish s t).map fun after => ⟨after,completeObservation e s after⟩

theorem finish_exact (s : State np nc) (t : Fin nc) (e : OriginalEncoders np nc) :
 incrementalOutcome s t e = referenceOutcome s t e := by
 simp [incrementalOutcome,referenceOutcome,finish_state_exact]

def routed (selected : Bool) (ordinary optimized : α → β) (input : α) : β :=
 if selected then optimized input else ordinary input

theorem fallback_exact {α β : Type} (ordinary optimized : α → β) (input : α) :
 routed false ordinary optimized input = ordinary input := rfl
end Reuse035
