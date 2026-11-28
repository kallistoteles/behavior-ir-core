module
public import NativeWholeTypedText
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Independent complete typed-row specification in the conserved585 context.
Primitive/source/runtime adequacy is not presumed. No Store/context/authority
precondition or desired-result equality is hidden in the representation domain. -/
namespace Correspondence036.NativeWholeTypedSeed
open NativeWholeCanonicalRow NativeKeyOrder

abbrev Value := serde_json.value.Value
abbrev Key := behavior_store.documents.EntityKey
abbrev Version := behavior_store.documents.EntityVersion
abbrev Child := views.ChildRow
abbrev Failure := views.SeedFailure
abbrev Map (V : Type) := CollectionsData.Map String V
abbrev Parents := Map String
abbrev Children := Map Child
abbrev Set := alloc.collections.btree.set.BTreeSet String alloc.alloc.Global
abbrev Active := Map Set
abbrev SeedResult := core.result.Result Unit Failure × Parents × Children × Active
abbrev NativeMap (V : Type) := alloc.collections.btree.map.BTreeMap String V alloc.alloc.Global
abbrev NativeSeedResult := core.result.Result Unit Failure × NativeMap String ×
  NativeMap Child × NativeMap Set

abbrev field := NativeWholeCanonicalRow.field
abbrev textSpec := NativeWholeTypedText.textSpec
abbrev TextDomain := NativeWholeTypedText.TextDomain

def put {V : Type} (key : String) (replacement : V) : Map V → Map V
  | .nil => .cons key replacement .nil
  | .cons stored previous rest =>
    match NativeKeyOrder.cmpString key stored with
    | .lt => .cons key replacement (.cons stored previous rest)
    | .eq => .cons stored replacement rest
    | .gt => .cons stored previous (put key replacement rest)

def errorFrame (failure : Failure) (parents : Parents) (children : Children)
    (active : Active) : SeedResult := (.Err failure, parents, children, active)

def seedSpec (key : Key) (version : Version) (parents : Parents)
    (children : Children) (active : Active) : SeedResult :=
  match textSpec version.value "id" with
  | .Err failure => errorFrame failure parents children active
  | .Ok id =>
    if key.id ≠ id ∨ key.entity ≠ version.entity then errorFrame .Identity parents children active
    else if key.entity = "Parent" then
      match textSpec version.value "phase" with
      | .Err failure => errorFrame failure parents children active
      | .Ok phase =>
        if phase ∈ ["Open", "Gone", "Abandoned"] then
          (.Ok (), put key.id phase parents, children, put key.id ⟨[]⟩ active)
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

def pack (result : SeedResult) : NativeSeedResult :=
  (result.1, ⟨result.2.1⟩, ⟨result.2.2.1⟩, ⟨result.2.2.2⟩)

def InputDomain (key : Key) (version : Version) : Prop :=
  (NativeKeyOrder.ownedBytes key.entity).length ≤ Usize.max ∧ TextDomain version.value

end Correspondence036.NativeWholeTypedSeed
