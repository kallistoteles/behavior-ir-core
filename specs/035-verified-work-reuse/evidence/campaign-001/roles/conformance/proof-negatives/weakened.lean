import Reuse035.Countermodels
import Lean
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
#reuse_audit Reuse035.finish_exact : (True)
