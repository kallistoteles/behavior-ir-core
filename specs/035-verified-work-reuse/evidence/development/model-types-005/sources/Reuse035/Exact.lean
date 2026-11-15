import Reuse035.Observation
namespace Reuse035
theorem finish_exact (s : State np nc) (t : Fin nc) :
 incrementalFinish s t = referenceFinish s t := by
 cases bound : s.children t <;>
  simp [incrementalFinish,referenceFinish,bound,reference_after_eq]

def routed (selected : Bool) (ordinary optimized : α → β) (input : α) : β :=
 if selected then optimized input else ordinary input

theorem fallback_exact (ordinary optimized : α → β) (input : α) :
 routed false ordinary optimized input = ordinary input := rfl
end Reuse035
