module
public import NativeStringOperations
public import NativeCollectionIteration
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Candidate primitive interpretations for the complete generated Views context.
The ordered insertion contract is the already proved specification exposed by
NativeJsonMapOperations. Allocation, ownership, source/library/compiler and
native representation adequacy remain explicit separate obligations. This file
does not interpret Store, Views, projection or an expected Core observation. -/

namespace Correspondence036.NativeJsonMapOperations
open Correspondence036.CollectionsData

/-- The same generic insertion specification used by the existing checked
JSON map interface: retain stored keys on replacement and preserve full values. -/
def orderedInsert {K V : Type} (compare : K → K → Ordering) (key : K) (replacement : V) :
    Map K V → Option V × Map K V
| .nil => (none, .cons key replacement .nil)
| .cons stored previous suffix =>
  match compare key stored with
  | .lt => (none, .cons key replacement (.cons stored previous suffix))
  | .eq => (some previous, .cons stored replacement suffix)
  | .gt =>
    let result := orderedInsert compare key replacement suffix
    (result.1, .cons stored previous result.2)

end Correspondence036.NativeJsonMapOperations

@[rust_fun "alloc::string::{core::clone::Clone<alloc::string::String>}::clone"] def alloc.string.String.Insts.CoreCloneClone.clone : String → Result String :=
  fun value => ok value

@[rust_fun "serde_json::map::{serde_json::map::Map<alloc::string::String, serde_json::value::Value>}::new"] def serde_json.map.MapStringValue.impl.new : Result (serde_json.map.Map String serde_json.value.Value) :=
  ok ⟨.nil⟩

@[rust_fun "serde_json::map::{serde_json::map::Map<alloc::string::String, serde_json::value::Value>}::insert"] def serde_json.map.MapStringValue.impl.insert : serde_json.map.Map String serde_json.value.Value → String → serde_json.value.Value → Result ((Option serde_json.value.Value) × (serde_json.map.Map String serde_json.value.Value)) :=
  fun rows key replacement =>
    let result := Correspondence036.NativeJsonMapOperations.orderedInsert
      Correspondence036.NativeKeyOrder.cmpString key replacement rows.data
    ok (result.1, ⟨result.2⟩)

namespace Correspondence036.NativeJsonMapOperations
open Correspondence036.CollectionsData

theorem empty_new : serde_json.map.MapStringValue.impl.new =
    ok (serde_json.map.Map.mk (.nil : Map String serde_json.value.Value)) := rfl

theorem insert_spec (rows : Map String serde_json.value.Value) (key : String)
    (replacement : serde_json.value.Value) :
    serde_json.map.MapStringValue.impl.insert ⟨rows⟩ key replacement =
      let result := orderedInsert NativeKeyOrder.cmpString key replacement rows
      ok (result.1, serde_json.map.Map.mk result.2) := rfl

end Correspondence036.NativeJsonMapOperations
