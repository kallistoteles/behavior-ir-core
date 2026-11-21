module
public import NativeJsonIterators
@[expose] public section

/- Source-facing type/representation checks only. These do not admit native
collection operations, comparison, borrowing, allocation, or a Core bridge. -/
namespace Correspondence036.NativeCollectionLayout
abbrev NativeValue := transition_study036.serde_json.value.Value
abbrev Rows := CollectionsData.Map String NativeValue

theorem btree_storage {K V A : Type} (data : CollectionsData.Map K V) :
    (alloc.collections.btree.map.BTreeMap.mk (A := A) data).data = data := rfl

theorem serde_storage {K V : Type} (data : CollectionsData.Map K V) :
    (serde_json.map.Map.mk data).data = data := rfl

def objectRows : NativeValue → Option Rows
| .Object map => some map.data
| _ => none

theorem object_full_value (data : Rows) :
    objectRows (.Object (serde_json.map.Map.mk data)) = some data := rfl

def jsonAdvance (cursor : serde_json.map.Iter) :
    Option (String × NativeValue) × serde_json.map.Iter :=
  match cursor.remaining with
  | [] => (none, ⟨[]⟩)
  | row :: tail => (some row, ⟨tail⟩)

theorem jsonAdvance_rows (rows : List (String × NativeValue)) :
    jsonAdvance ⟨rows⟩ = (rows.head?, ⟨rows.tail⟩) := by
  cases rows <;> rfl

def keyAdvance (cursor : serde_json.map.Keys) : Option String × serde_json.map.Keys :=
  match cursor.remaining with
  | [] => (none, ⟨[]⟩)
  | key :: tail => (some key, ⟨tail⟩)

theorem keyAdvance_rows (rows : List String) :
    keyAdvance ⟨rows⟩ = (rows.head?, ⟨rows.tail⟩) := by
  cases rows <;> rfl

theorem occupied_value {K V A : Type} (front : CollectionsData.Map K V)
    (stored : K) (value : V) (suffix : CollectionsData.Map K V) :
    (alloc.collections.btree.map.entry.OccupiedEntry.mk (A := A) front stored value suffix).value = value := rfl

theorem vacant_key {K V A : Type} (original : CollectionsData.Map K V) (key : K) :
    (alloc.collections.btree.map.entry.VacantEntry.mk (A := A) original key).key = key := rfl

end Correspondence036.NativeCollectionLayout
