import Reuse035.Work
namespace Reuse035
-- Safe identity execution is NOT exact finish. Both before and after are safe.
def witness : State 1 1 :=
 ⟨fun _=>some .openState,fun _=>some ⟨⟨0,by decide⟩,.active⟩,
  fun _=>true,fun _=>true,0,"origin",[]⟩
theorem safe_but_wrong : valid witness ∧ valid (incrementalAfter witness 0) ∧
 witness.children 0 ≠ (incrementalAfter witness 0).children 0 := by
 refine ⟨?_,finish_preserves_safety _ _ ?_,?_⟩
 · intro i row bound; simp [witness] at bound; subst row; simp [witness]
 · intro i row bound; simp [witness] at bound; subst row; simp [witness]
 · simp [witness,incrementalAfter,point,terminalize]

def coordinates (ctx : CurrentContext) : J := .array [ctx.subject,ctx.phase,ctx.history,ctx.memo]
theorem stale_coordinates_differ :
 coordinates ⟨.null,.null,.number 0,.null⟩ ≠
 coordinates ⟨.null,.null,.number 1,.null⟩ := by
 intro h
 cases h

theorem corrupt_empty_bucket :
 (rebuild witness).activeByOwner 0 0 = true ∧
 (advance (rebuild witness) 0).activeByOwner 0 0 = false := by
 simp [rebuild,advance,witness,point]
end Reuse035
