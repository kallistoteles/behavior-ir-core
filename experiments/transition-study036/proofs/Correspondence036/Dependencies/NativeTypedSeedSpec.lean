module
public import NativeTypedSeedOperations
@[expose] public section

/- Independently specified typed-row contract, conditional on the explicit
collection/value interpretations. No native/runtime adequacy is presumed. -/
namespace Correspondence036.NativeTypedSeed
open Aeneas.Std
abbrev Value := transition_study036.serde_json.value.Value
abbrev Key := transition_study036.behavior_store.documents.EntityKey
abbrev Version := transition_study036.behavior_store.documents.EntityVersion
abbrev Child := transition_study036.views.ChildRow
abbrev Failure := transition_study036.views.SeedFailure
abbrev StudyError := transition_study036.error.StudyError
abbrev Map (V : Type) := alloc.collections.btree.map.BTreeMap String V alloc.alloc.Global
abbrev Parents := Map String
abbrev Children := Map Child
abbrev Active := Map (List String)
abbrev SeedResult := core.result.Result Unit Failure × Parents × Children × Active

def lookup : serde_json.map.Map String Value → String → Option Value
  | .nil, _ => none
  | .cons stored value rest, query => if query = stored then some value else lookup rest query
def field (value : Value) (query : String) : Value :=
  match value with
  | .Object rows => (lookup rows query).getD .Null
  | _ => .Null
def textSpec (value : Value) (query : String) : core.result.Result String Failure :=
  match field value query with
  | .String text => .Ok text
  | _ => .Err .Field

def put {V : Type} (key : String) (replacement : V) : Map V → Map V
  | .nil => .cons key replacement .nil
  | .cons stored previous rest =>
    match compare key.toByteArray stored.toByteArray with
    | .lt => .cons key replacement (.cons stored previous rest)
    | .eq => .cons stored replacement rest
    | .gt => .cons stored previous (put key replacement rest)

def errorFrame (failure : Failure) (parents : Parents) (children : Children) (active : Active) : SeedResult :=
  (.Err failure, parents, children, active)

def seedSpec (key : Key) (version : Version) (parents : Parents) (children : Children) (active : Active) : SeedResult :=
  match textSpec version.value "id" with
  | .Err failure => errorFrame failure parents children active
  | .Ok id =>
    if key.id ≠ id ∨ key.entity ≠ version.entity then errorFrame .Identity parents children active
    else if key.entity = "Parent" then
      match textSpec version.value "phase" with
      | .Err failure => errorFrame failure parents children active
      | .Ok phase =>
        if phase ∈ ["Open", "Gone", "Abandoned"] then
          (.Ok (), put key.id phase parents, children, put key.id [] active)
        else errorFrame .ParentPhase parents children active
    else if key.entity = "Child" then
      match textSpec version.value "owner" with
      | .Err failure => errorFrame failure parents children active
      | .Ok owner =>
        match textSpec version.value "phase" with
        | .Err failure => errorFrame failure parents children active
        | .Ok phase =>
          if phase ∈ ["Active", "Terminal"] then
            (.Ok (), parents, put key.id {owner := owner, phase := phase} children, active)
          else errorFrame .ChildPhase parents children active
    else errorFrame .UnknownEntity parents children active

def publicError : Failure → StudyError
  | .Field => .Prerequisite (toStr "TypedViewField")
  | .Identity => .Prerequisite (toStr "ViewIdentity")
  | .ParentPhase => .Prerequisite (toStr "ViewParentPhase")
  | .ChildPhase => .Prerequisite (toStr "ViewChildPhase")
  | .UnknownEntity => .Prerequisite (toStr "UnknownViewEntity")
  | .MissingOwner => .Prerequisite (toStr "ViewMissingOwner")
  | .Lifecycle => .Prerequisite (toStr "ViewLifecycleViolation")

def TextDomain (value : Value) : Prop :=
  ∀ query text, field value query = .String text →
    (NativeStringBorrow.ownedBytes text).length ≤ Usize.max
def InputDomain (key : Key) (version : Version) : Prop :=
  (NativeStringBorrow.ownedBytes key.entity).length ≤ Usize.max ∧ TextDomain version.value

end Correspondence036.NativeTypedSeed
