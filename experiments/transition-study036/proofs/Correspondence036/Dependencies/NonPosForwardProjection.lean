module
public import Aeneas
@[expose] public section
open Lean Meta Elab Tactic

namespace Core036.ProjectionSupport

/-- Add only actual conjunction leaves, preserving universal binders intact. -/
meta partial def addLeaves (goal : MVarId) (proof : Expr) : MetaM MVarId :=
  goal.withContext do
    let type ← instantiateMVars (← inferType proof)
    if type.consumeMData.isAppOfArity ``And 2 then
      let left ← mkAppM ``And.left #[proof]
      let right ← mkAppM ``And.right #[proof]
      let goal ← addLeaves goal left
      addLeaves goal right
    else
      let (_, goal) ← goal.note (← mkFreshUserName `_nonpos_fact) proof
      pure goal

elab "nonpos_forward_conditions" h:ident : tactic => withMainContext do
  let proof ← Term.elabTerm h none
  let goal ← addLeaves (← getMainGoal) proof
  replaceMainGoal [goal]

end Core036.ProjectionSupport

-- Existing continuity laws supply these facts. Only proof search changes.
macro_rules
  | `(tactic| nonpos_proj $e:term) =>
    `(tactic| (have h := NonPos.Fix.cond _ $e; nonpos_cond_simp at h; nonpos_forward_conditions h; solve_by_elim))
