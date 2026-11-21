module
import all CORE036_MODULE_PREFIX.RecursiveDictionaryGood
public import Lean
public import Lean.Util.CollectAxioms
open Lean Elab Command Term Meta
open Aeneas Aeneas.Std Core036RecursiveDictionary
set_option Aeneas.customDoElab false

elab "#recursive_dictionary_audit" : command => do
  let reports ← liftTermElabM do
    let contType ← elabTerm (← `(NonPos.Cont encoderStep)) none
    let leafType ← elabTerm (← `({Target : Type} → (driverArg : Driver Target) →
      (stateArg : Target) → (valueArg : Nat) →
      Encoder.encode valueEncoder driverArg stateArg (.leaf valueArg) = .ok valueArg)) none
    let arrayType ← elabTerm (← `({Target : Type} → (driverArg : Driver Target) →
      (stateArg : Target) → (childArg : Payload) →
      Encoder.encode valueEncoder driverArg stateArg (.array childArg) =
        Driver.entry driverArg valueEncoder childArg stateArg)) none
    let objectType ← elabTerm (← `({Target : Type} → (driverArg : Driver Target) →
      (stateArg : Target) → (childArg : Payload) →
      Encoder.encode valueEncoder driverArg stateArg (.object childArg) =
        Driver.entry driverArg valueEncoder childArg stateArg)) none
    let roots := #[(``encoderStep_cont, contType), (``leaf_exact, leafType),
      (``array_exact, arrayType), (``object_exact, objectType)]
    let allowed := #[``propext, ``Classical.choice, ``Quot.sound]
    let mut reports := #[]
    for (rootName, expectedType) in roots do
      let info ← getConstInfo rootName
      match info with
      | .thmInfo _ => pure ()
      | _ => throwError "Dictionary audit root is not a theorem"
      unless ← isDefEq info.type expectedType do
        throwError "Dictionary audit theorem has the wrong type"
      let axioms ← collectAxioms rootName
      unless axioms.all allowed.contains do
        throwError "Dictionary audit contains an unapproved axiom"
      let mut rows := #[]
      for axiomName in axioms do
        let axiomInfo ← getConstInfo axiomName
        rows := rows.push <| Json.mkObj [
          ("name", toJson axiomName.toString), ("type_repr", toJson (reprStr axiomInfo.type))]
      reports := reports.push <| Json.mkObj [
        ("declaration", toJson rootName.toString),
        ("type_repr", toJson (reprStr info.type)), ("axioms", Json.arr rows)]
    pure reports
  liftIO <| IO.println s!"CORE036_RECURSIVE_DICTIONARY_AUDIT {Json.compress (Json.arr reports)}"
#recursive_dictionary_audit
