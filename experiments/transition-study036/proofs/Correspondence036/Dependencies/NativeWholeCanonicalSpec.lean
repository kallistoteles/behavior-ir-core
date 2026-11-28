module
public import NativeCanonicalRowProofs
public import NativeProjectionLaws
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Candidate exact specification for the actual whole-context canonical row.
Only representation-size premises occur in the domain. Native APIs, Store
export, actual error carriers and source/compiler adequacy remain open. -/
namespace Correspondence036.NativeWholeCanonicalRow
abbrev Value := transition_study036.serde_json.value.Value
abbrev Rows := CollectionsData.Map String Value
abbrev Row := behavior_store.documents.SeedEntity
abbrev StudyError := error.StudyError
abbrev RowResult := core.result.Result Unit StudyError × Rows × Rows
abbrev lookup := NativeCanonicalRowOperations.lookup

def field (value : Value) (query : String) : Value :=
  match value with
  | .Object rows => (lookup rows.data query).getD .Null
  | _ => .Null

def textId (row : Row) : Option String :=
  match field row.value "id" with
  | .String text => some text
  | _ => none

def InputDomain (row : Row) : Prop :=
  (NativeKeyOrder.ownedBytes row.entity).length ≤ Usize.max ∧
  ∀ id, textId row = some id → (NativeKeyOrder.ownedBytes id).length ≤ Usize.max

abbrev put := NativeProjectionLaws.put

def childFields (row : Row) : Value :=
  .Object ⟨put (put .nil "phase" (field row.value "phase"))
    "owner" (field row.value "owner")⟩

def rowSpec (row : Row) (parents children : Rows) : RowResult :=
  match textId row with
  | none => (.Err (.Prerequisite (toStr "SeedIdentity")), parents, children)
  | some id =>
    if row.entity = "Parent" then
      (.Ok (), put parents id (field row.value "phase"), children)
    else if row.entity = "Child" then
      (.Ok (), parents, put children id (childFields row))
    else (.Err (.Prerequisite (toStr "UnexpectedEntity")), parents, children)

def foldRows : List Row → Rows → Rows → Rows × Rows × Option StudyError
  | [], parents, children => (parents, children, none)
  | row :: tail, parents, children =>
    let step := rowSpec row parents children
    match step.1 with
    | .Ok _ => foldRows tail step.2.1 step.2.2
    | .Err failure => (step.2.1, step.2.2, some failure)

end Correspondence036.NativeWholeCanonicalRow
