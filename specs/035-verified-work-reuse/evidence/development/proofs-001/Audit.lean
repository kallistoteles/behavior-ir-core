import Reuse035.Countermodels
import Lean.Util.CollectAxioms
open Reuse035
open Lean Elab Command Term Meta
elab "#reuse_audit " root:ident " : " expected:term : command => do
  let report ← liftTermElabM do
    let info ← getConstInfo root.getId
    match info with
    | .thmInfo _ => pure ()
    | _ => throwError "Not a theorem"
    let expectedType ← elabTerm expected none
    let expectedType ← instantiateMVars expectedType
    unless ← isDefEq info.type expectedType do
      throwError "Wrong theorem type"
    let axioms ← collectAxioms root.getId
    unless axioms.all (fun n => #[``propext, ``Classical.choice, ``Quot.sound].contains n) do
      throwError "Forbidden transitive axiom"
    let checked := Json.mkObj [("declaration",toJson root.getId.toString),
      ("axioms",toJson (axioms.map toString |>.qsort (· < ·))),
      ("expected_type_checked",toJson true)]
    return Json.mkObj [("checked",checked),("type_repr",toJson (reprStr info.type))]
  liftIO <| IO.println s!"CORE035_AUDIT {report.compress}"
#reuse_audit Reuse035.finish_frame : (∀ {np nc : Nat} (s : State np nc) (t : Fin nc) (row : Child np), s.children t = some row →
 (incrementalAfter s t).children t = some (terminalize row) ∧
 (∀ i, i ≠ t → (incrementalAfter s t).children i = s.children i) ∧
 (incrementalAfter s t).parents = s.parents ∧ (incrementalAfter s t).usedParents = s.usedParents ∧
 (incrementalAfter s t).usedChildren = s.usedChildren ∧ (terminalize row).owner = row.owner ∧
 (incrementalAfter s t).commands = s.commands ∧ (incrementalAfter s t).lineage = s.lineage ∧
 (incrementalAfter s t).position = s.position+1)
#reuse_audit Reuse035.view_update_exact : (∀ {np nc : Nat} (s : State np nc) (t : Fin nc), advance (rebuild s) t = rebuild (incrementalAfter s t))
#reuse_audit Reuse035.unaffected_result_stable : (∀ {np nc : Nat} (s : State np nc) (t i : Fin nc), i ≠ t →
 ∀ (render : Option (Child np) → CurrentContext → J) (current : CurrentContext),
 rowRecipe render ((incrementalAfter s t).children i) current = rowRecipe render (s.children i) current)
#reuse_audit Reuse035.finish_exact : (∀ {np nc : Nat} (s : State np nc) (t : Fin nc) (e : OriginalEncoders np nc), incrementalOutcome s t e = referenceOutcome s t e)
#reuse_audit Reuse035.observation_reconstruct_exact : (∀ {np nc : Nat} (s : State np nc) (t : Fin nc) (encoders : OriginalEncoders np nc),
 completeObservation encoders s (incrementalAfter s t) = completeObservation encoders s (referenceAfter s t))
#reuse_audit Reuse035.finish_preserves_safety : (∀ {np nc : Nat} (s : State np nc) (t : Fin nc), valid s → valid (incrementalAfter s t))
#reuse_audit Reuse035.ground_advance : (∀ {np nc : Nat} (g : Ground np nc) (t : Fin nc) (row : Child np),
 g.state.children t = some row → representable g.state →
 ∃ child, promote g (expectedParent g) t .applied = some child ∧ child.subject=g.subject ∧
 child.state=incrementalAfter g.state t ∧ valid child.state)
#reuse_audit Reuse035.refusal_no_promotion : (∀ {np nc : Nat} (g : Ground np nc) (expected : Expected) (t : Fin nc), promote g expected t .refused = none)
#reuse_audit Reuse035.stale_no_promotion : (∀ {np nc : Nat} (g : Ground np nc) (expected : Expected) (t : Fin nc), promote g expected t .stale = none ∧
 (expected ≠ expectedParent g → promote g expected t .applied = none))
#reuse_audit Reuse035.uncertain_no_authority : (∀ {np nc : Nat} (g : Ground np nc) (expected : Expected) (t : Fin nc), promote g expected t .uncertain = none)
#reuse_audit Reuse035.semantic_work_bound : (∀ {np nc : Nat} (s : State np nc) (t : Fin nc) (physical : CompletionCharges),
 (measuredFinish s t).1 = incrementalAfter s t ∧ (measuredFinish s t).2 = finishDecisionTrace ∧
 finishDecisionTrace.length = 5 ∧ (finishDecisionTrace.filter (fun x => decide (x=.prefixEvent))).length = 0 ∧
 finishDecisionTrace.length ≤ totalCharges physical)
#reuse_audit Reuse035.fallback_exact : (∀ {α : Sort u} {β : Sort v} (ordinary optimized : α → β) (input : α),
 routed false ordinary optimized input = ordinary input)
