module
public import NativeCanonicalRowProofs
@[expose] public section

/- Prospective row specification, not a proof or native admission.
The row-level specification fixes ID-first errors and every map/payload result.
Map lookup/update are the separately declared generic operation semantics;
source/native map refinement remains a mandatory independent obligation.
The domain states only representability bounds, never a desired output equality.
No fixture, population or historical-length restriction is introduced. -/
namespace Correspondence036.NativeCanonicalRow
open Aeneas.Std
abbrev Value := transition_study036.serde_json.value.Value
abbrev Map := serde_json.map.Map String Value
abbrev Row := transition_study036.behavior_store.documents.SeedEntity
abbrev StudyError := transition_study036.error.StudyError
abbrev RowResult := (core.result.Result Unit StudyError) × Map × Map

def lookup : Map → String → Option Value
  | .nil, _ => none
  | .cons stored value rest, key =>
    if key = stored then some value else lookup rest key

def field (value : Value) (key : String) : Value :=
  match value with
  | .Object rows => (lookup rows key).getD .Null
  | _ => .Null

def textId (row : Row) : Option String :=
  match field row.value "id" with
  | .String value => some value
  | _ => none

/-- Data-size premises only; actual caller/Store representation must establish them. -/
def InputDomain (row : Row) (_parents _children : Map) : Prop :=
  (NativeStringBorrow.ownedBytes row.entity).length ≤ Usize.max ∧
  ∀ id, textId row = some id →
    (NativeStringBorrow.ownedBytes id).length ≤ Usize.max

/-- Exact pure result under the separately selected generic map interpretation. -/
def put (rows : Map) (key : String) (value : Value) : Map :=
  (NativeCanonicalRowOperations.orderedInsert key value rows).2

def childFields (row : Row) : Value :=
  .Object (put (put .nil "phase" (field row.value "phase"))
    "owner" (field row.value "owner"))

def rowSpec (row : Row) (parents children : Map) : RowResult :=
  match textId row with
  | none => (.Err (.Prerequisite (toStr "SeedIdentity")), parents, children)
  | some id =>
    if row.entity = "Parent" then
      (.Ok (), put parents id (field row.value "phase"), children)
    else if row.entity = "Child" then
      (.Ok (), parents, put children id (childFields row))
    else (.Err (.Prerequisite (toStr "UnexpectedEntity")), parents, children)

/- Required future roots, independently listed in native-row-root-contract-001.json:
state_fact_row_exact, seed_identity_first and other_keys. No theorem, checked
kernel result, source correspondence or completion is claimed by this draft. -/
end Correspondence036.NativeCanonicalRow
