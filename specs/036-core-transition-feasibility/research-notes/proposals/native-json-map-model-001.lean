module
public import NativeEntryOperations
public import NativeStringOperations
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Candidate BTree-backed JSON map operations. Preserve all recursive JSON
payloads and stored keys. Allocation/drop/feature/native compiler admission is
separate; these equations do not assert those runtime obligations. -/
namespace Correspondence036.NativeJsonMapOperations
open Correspondence036.CollectionsData

def writeEntry {K V : Type} (replacement : V) : CollectionsGap.Entry K V → Option V × Map K V
| .vacant front key suffix => (none, CollectionsFocus.append front (.cons key replacement suffix))
| .occupied front stored previous suffix =>
    (some previous, CollectionsFocus.append front (.cons stored replacement suffix))

/-- Independent recursive insertion specification; comparison-equal replacement
retains the stored key and returns the previous full payload. -/
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

theorem write_prepend {K V : Type} (stored : K) (previous replacement : V)
    (entry : CollectionsGap.Entry K V) :
    writeEntry replacement (CollectionsGap.prepend stored previous entry) =
      let result := writeEntry replacement entry
      (result.1, Map.cons stored previous result.2) := by
  cases entry <;> rfl

theorem capture_write {K V : Type} (compare : K → K → Ordering) (key : K)
    (replacement : V) (rows : Map K V) :
    writeEntry replacement (CollectionsGap.capture compare key rows) =
      orderedInsert compare key replacement rows := by
  induction rows with
  | nil => rfl
  | cons stored previous suffix ih =>
    cases found : compare key stored with
    | lt => simp [CollectionsGap.capture, orderedInsert, found, writeEntry, CollectionsFocus.append]
    | eq => simp [CollectionsGap.capture, orderedInsert, found, writeEntry, CollectionsFocus.append]
    | gt =>
      simp only [CollectionsGap.capture, found, write_prepend, orderedInsert, ih]

end Correspondence036.NativeJsonMapOperations

-- Exact original source attributes and signatures are inserted prospectively
-- from the frozen producer template; no generated caller body is rewritten.

namespace Correspondence036.NativeJsonMapOperations
open Correspondence036.CollectionsData

theorem insert_spec (rows : Map String serde_json.value.Value) (key : String)
    (replacement : serde_json.value.Value) :
    serde_json.map.MapStringValue.impl.insert ⟨rows⟩ key replacement =
      let result := orderedInsert NativeKeyOrder.cmpString key replacement rows
      ok (result.1, serde_json.map.Map.mk result.2) := by
  simp only [serde_json.map.MapStringValue.impl.insert,
    alloc.string.String.Insts.CoreCmpOrd.cmp, CollectionsGap.captureM_pure,
    bind_ok, capture_write]

theorem empty_new : serde_json.map.MapStringValue.impl.new =
    ok (serde_json.map.Map.mk (.nil : Map String serde_json.value.Value)) := rfl

theorem insert_empty (key : String) (replacement : serde_json.value.Value) :
    serde_json.map.MapStringValue.impl.insert ⟨.nil⟩ key replacement =
      ok (none, serde_json.map.Map.mk (.cons key replacement .nil)) := by
  rw [insert_spec]
  rfl

theorem write_vacant (front suffix : Map String serde_json.value.Value) (key : String)
    (replacement : serde_json.value.Value) :
    writeEntry replacement (.vacant front key suffix) =
      (none, CollectionsFocus.append front (.cons key replacement suffix)) := rfl

theorem write_occupied (front suffix : Map String serde_json.value.Value) (stored : String)
    (previous replacement : serde_json.value.Value) :
    writeEntry replacement (.occupied front stored previous suffix) =
      (some previous, CollectionsFocus.append front (.cons stored replacement suffix)) := rfl

theorem occupied_frame (front suffix : Map String serde_json.value.Value)
    (stored query : String) (previous replacement : serde_json.value.Value)
    (different : query ≠ stored) :
    lookup query (writeEntry replacement (.occupied front stored previous suffix)).2 =
      lookup query (CollectionsGap.toMap (.occupied front stored previous suffix)) := by
  simp only [writeEntry, CollectionsGap.toMap, CollectionsEntry.lookup_append]
  cases found : lookup query front <;> simp [lookup, different, found]

theorem vacant_frame (front suffix : Map String serde_json.value.Value)
    (key query : String) (replacement : serde_json.value.Value)
    (different : query ≠ key) :
    lookup query (writeEntry replacement (.vacant front key suffix)).2 =
      lookup query (CollectionsGap.toMap (.vacant front key suffix)) := by
  simp only [writeEntry, CollectionsGap.toMap, CollectionsEntry.lookup_append]
  cases found : lookup query front <;> simp [lookup, different, found]

end Correspondence036.NativeJsonMapOperations
