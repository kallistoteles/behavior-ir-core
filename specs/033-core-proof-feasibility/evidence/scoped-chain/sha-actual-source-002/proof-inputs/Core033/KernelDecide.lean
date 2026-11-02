import Lean.Elab.Tactic.Decide

/- Ordinary kernel decision checking, without `decide +kernel`'s secondary
elaborator reduction on failure. That diagnostic expansion exhausted resources
on rejected matrix packets. This tactic supplies the same proof term to the
kernel; it neither evaluates natively nor introduces an axiom. -/
open Lean Elab Tactic Meta in
elab "core033_kernel_decide" : tactic => do
  closeMainGoalUsing `core033_kernel_decide fun expectedType _ => do
    let expectedType ← instantiateMVars expectedType
    if expectedType.hasFVar || expectedType.hasMVar then
      throwError "core033_kernel_decide requires a closed proposition"
    let proof ← mkDecideProof expectedType
    let name ← withOptions (Elab.async.set · false) do
      Lean.Meta.mkAuxLemma [] expectedType proof
    return mkConst name
