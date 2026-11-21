module
import all ImplPositive
import all ImplInferred
import all ImplUniverseLaws
public import Lean
public import Lean.Util.CollectAxioms
open Lean Elab Command Term Meta

meta partial def isTypeParameter (type : Expr) : MetaM Bool := do
  let type ← whnf type
  if type.isSort then return true
  if type.isForall then
    unless (← whnf type.bindingDomain!).isSort do return false
    forallTelescope type fun _ body => return (← whnf body).isSort
  else return false

elab "#impl_universe_audit" : command => do
  let rows ← liftTermElabM do
    let roots := #[``transition_study036.ImplUniverseControl.good_matches,
      ``transition_study036.ImplUniverseControl.inferred_write,
      ``transition_study036.ImplUniverseControl.polymorphic_write]
    let expectedGood ← elabTerm (← `(transition_study036.ImplUniverseControl.good.derived = 5)) none
    let expectedInferred ← elabTerm (← `({W : Type} →
      (d : transition_study036.core.io.write.Write W) →
      (transition_study036.ImplUniverseControl.inferred d).write =
        transition_study036.ImplUniverseControl.write d)) none
    let expectedPolymorphic ← elabTerm (← `({W : Type _} →
      (d : transition_study036.core.io.write.Write W) →
      (transition_study036.ImplUniverseControl.polymorphic d).write =
        transition_study036.ImplUniverseControl.forward d)) none
    let expected := #[expectedGood, expectedInferred, expectedPolymorphic]
    let mut rows := #[]
    for index in [:roots.size] do
      let rootName := roots[index]!
      let info ← getConstInfo rootName
      match info with
      | .thmInfo _ => pure ()
      | _ => throwError "Selected inference root is not a theorem"
      unless ← isDefEq info.type expected[index]! do
        throwError "Wrong inference theorem type"
      let mut axioms := #[]
      for axiomName in ← collectAxioms rootName do
        if axiomName == ``sorryAx then throwError "Admitted inference proof"
        let axiomInfo ← getConstInfo axiomName
        let foundation := #[``propext, ``Classical.choice, ``Quot.sound].contains axiomName
        let parameter ← isTypeParameter axiomInfo.type
        unless foundation || parameter do
          throwError m!"Unproved inference behavioral axiom: {axiomName}"
        axioms := axioms.push <| Json.mkObj [
          ("name", toJson axiomName.toString), ("type_repr", toJson (reprStr axiomInfo.type)),
          ("classification", toJson (if foundation then "standard_foundation" else "unproved_external_type_parameter"))]
      rows := rows.push <| Json.mkObj [
        ("declaration", toJson rootName.toString), ("type_repr", toJson (reprStr info.type)),
        ("axioms", Json.arr axioms)]
    pure rows
  liftIO <| IO.println s!"CORE036_IMPL_INFERENCE_AUDIT {Json.compress (Json.arr rows)}"
#impl_universe_audit
