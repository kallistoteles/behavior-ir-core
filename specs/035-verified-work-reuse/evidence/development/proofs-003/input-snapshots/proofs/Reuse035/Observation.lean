import Reuse035.Views
namespace Reuse035
-- Reuse is over row-dependent recipes. Both evaluations receive the CURRENT
-- context; the theorem does not identify an old-coordinate observation.
theorem unaffected_result_stable (s : State np nc) (t i : Fin nc) (different : i ≠ t)
 (render : Option (Child np) → CurrentContext → J) (current : CurrentContext) :
 rowRecipe render ((incrementalAfter s t).children i) current =
 rowRecipe render (s.children i) current := by
 simp [rowRecipe,incrementalAfter,point,different]

-- Preserve each complete encoder result, including its nested ordered tree.
-- The native fidelity of OriginalEncoders remains an explicit bridge premise;
-- this is not a theorem about an independently reimplemented Rust encoder.
theorem observation_reconstruct_exact (s : State np nc) (t : Fin nc)
 (encoders : OriginalEncoders np nc) :
 completeObservation encoders s (incrementalAfter s t) =
 completeObservation encoders s (referenceAfter s t) := by
 rw [reference_after_eq]
end Reuse035
