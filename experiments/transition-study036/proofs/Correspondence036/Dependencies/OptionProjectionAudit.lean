module
import all OptionContinuity
import all Projection
import all LogicForward
public import Lean
public import Lean.Util.CollectAxioms
open Lean Elab Command Term Meta

meta partial def isTypeParameter (type : Expr) : MetaM Bool := do
  let type ← whnf type
  if type.isSort then return true
  if type.isForall then
    unless (← whnf type.bindingDomain!).isSort do return false
    forallTelescope type fun _ body => return (← whnf body).isSort
  else
    return false

elab "#option_projection_audit" : command => do
  let rows ← liftTermElabM do
    let roots := #[
      ``transition_study036.option_element_cont,
      ``transition_study036.projection_cont,
      ``logic_forward]
    let expectedOption ← elabTerm (← `(
      {T S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant : Type} →
      NonPos.Cont (@transition_study036.core.option.Option.Insts.Serde_coreSerSerialize.serialize
        T S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant))) none
    let expectedProjection ← elabTerm (← `(
      {T S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant : Type} →
      (s : transition_study036.serde_core.ser.Serializer S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant) →
      NonPos.Cont (fun d : transition_study036.serde_core.ser.Serialize T => s.serialize_some d))) none
    let expectedLogic ← elabTerm (← `(
      (P : Type → Prop) → (Q : Prop) → ((∀ t, P t) ∧ Q) → (T : Type) → P T)) none
    let expected := #[expectedOption, expectedProjection, expectedLogic]
    let mut rows := #[]
    for index in [:roots.size] do
      let rootName := roots[index]!
      let info ← getConstInfo rootName
      match info with
      | .thmInfo _ => pure ()
      | _ => throwError "Selected root is not a theorem"
      unless ← isDefEq info.type expected[index]! do
        throwError "Wrong selected theorem type"
      let mut axioms := #[]
      for axiomName in ← collectAxioms rootName do
        if axiomName == ``sorryAx then throwError "Admitted proof is not checked"
        let axiomInfo ← getConstInfo axiomName
        let foundation := #[``propext, ``Classical.choice, ``Quot.sound].contains axiomName
        let typeParameter ← isTypeParameter axiomInfo.type
        unless foundation || typeParameter do
          throwError m!"Unproved behavioral axiom: {axiomName}"
        axioms := axioms.push <| Json.mkObj [
          ("name", toJson axiomName.toString),
          ("type_repr", toJson (reprStr axiomInfo.type)),
          ("classification", toJson (if foundation then "standard_foundation" else "unproved_external_type_parameter"))]
      rows := rows.push <| Json.mkObj [
        ("declaration", toJson rootName.toString),
        ("type_repr", toJson (reprStr info.type)),
        ("axioms", Json.arr axioms)]
    pure rows
  liftIO <| IO.println s!"CORE036_OPTION_AUDIT {Json.compress (Json.arr rows)}"
#option_projection_audit
