module
import all CORE036_MODULE_PREFIX.NativeValueLaws
public import Lean
public import Lean.Util.CollectAxioms
open Lean Elab Command Term Meta
open Aeneas Aeneas.Std transition_study036
set_option Aeneas.customDoElab false

elab "#native_value_audit" : command => do
  let reports ← liftTermElabM do
    let rootName := ``Correspondence036.NativeValueLowering.field_exact
    let expectedType ← elabTerm (← `(
      @serde_core.ser.Serialize.serialize serde_json.value.Value
        serde_json.value.Value.Insts.Serde_coreSerSerialize =
      @serde_json.value.Value.Insts.Serde_coreSerSerialize.serialize)) none
    let info ← getConstInfo rootName
    match info with
    | .thmInfo _ => pure ()
    | _ => throwError "Native Value equation root is not a theorem"
    unless ← isDefEq info.type expectedType do
      throwError "Native Value equation root has the wrong type"
    let axioms ← collectAxioms rootName
    let env ← getEnv
    let foundations := #[``propext, ``Classical.choice, ``Quot.sound]
    let mut rows := #[]
    for axiomName in axioms do
      if axiomName == ``sorryAx then
        throwError "Native Value equation contains sorryAx"
      let axiomInfo ← getConstInfo axiomName
      let origin ← if foundations.contains axiomName then
          pure `standard_foundation
        else match env.getModuleIdxFor? axiomName with
          | none => throwError "Axiom has no bound imported origin"
          | some idx => pure env.header.moduleNames[idx.toNat]!
      if origin == `CORE036_MODULE_PREFIX.NativeValueCandidate ||
          origin == `CORE036_MODULE_PREFIX.NativeValueLaws then
        throwError "New Value component introduced an axiom"
      rows := rows.push <| Json.mkObj [
        ("name", toJson axiomName.toString), ("type_repr", toJson (reprStr axiomInfo.type)),
        ("origin_module", toJson origin.toString),
        ("is_proposition", toJson (← isProp axiomInfo.type)),
        ("classification", toJson (if foundations.contains axiomName then
          "standard_foundation" else "unproved_imported_model_parameter"))]
    pure <| #[Json.mkObj [
      ("declaration", toJson rootName.toString),
      ("type_repr", toJson (reprStr info.type)), ("axioms", Json.arr rows)]]
  liftIO <| IO.println s!"CORE036_NATIVE_VALUE_AUDIT {Json.compress (Json.arr reports)}"
#native_value_audit
