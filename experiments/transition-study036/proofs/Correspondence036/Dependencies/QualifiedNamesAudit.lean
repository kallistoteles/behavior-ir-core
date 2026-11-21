import QualifiedNamesControl
import Lean
import Lean.Util.CollectAxioms
open Lean Elab Command Term Meta
elab "#qualified_names_audit" : command => do
  liftTermElabM do
    let roots := #[``Core036QualifiedNames.atomic_exact,
      ``Core036QualifiedNames.qualified_left_exact,
      ``Core036QualifiedNames.qualified_right_exact]
    let allowed := #[``propext, ``Classical.choice, ``Quot.sound]
    for root in roots do
      match ← getConstInfo root with
      | .thmInfo _ => pure ()
      | _ => throwError "Qualified-name root is not a theorem"
      let axioms ← collectAxioms root
      unless axioms.all (fun n => allowed.contains n) do
        throwError "Unexpected qualified-name proof axiom"
  liftIO <| IO.println "CORE036_QUALIFIED_NAMES_AUDIT_OK"
#qualified_names_audit
