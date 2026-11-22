module
public import NativeCanonicalRowSpec
public import Init.Data.String.Compare
@[expose] public section

/- Unselected proof candidates. Not compiled, audited or kernel checked.
These bridge the independent row-level specification to the selected generic
operations; they establish no native library/runtime/Core interpretation. -/
namespace Correspondence036.NativeCanonicalRow
open Aeneas.Std
namespace B
open NativeStringBorrow

theorem owned_bytes_injective (a b : String) :
    ownedBytes a = ownedBytes b ↔ a = b := by
  constructor
  · intro same
    apply String.toByteArray_inj.mp
    apply ByteArray.ext
    exact Array.toList_inj.mp same
  · intro same; subst b; rfl

theorem copy_borrow (s : String) (bound : (ownedBytes s).length ≤ Usize.max) :
    (do let key ← borrowResult s; NativeCanonicalRowOperations.ownResult key) =
      Result.ok s := by
  rw [borrow_result_valid s bound]
  simp [NativeCanonicalRowOperations.ownResult, decode_borrow]

theorem id_decodes : decode (toStr "id") = some "id" := by decide +kernel
theorem phase_decodes : decode (toStr "phase") = some "phase" := by decide +kernel
theorem owner_decodes : decode (toStr "owner") = some "owner" := by decide +kernel

theorem parent_bytes : borrowedBytes (toStr "Parent") = ownedBytes "Parent" := by
  decide +kernel
theorem child_bytes : borrowedBytes (toStr "Child") = ownedBytes "Child" := by
  decide +kernel

theorem parent_comparison (s : String) (bound : (ownedBytes s).length ≤ Usize.max) :
    NativeCanonicalRowOperations.eqStr (borrow s bound) (toStr "Parent") =
      Result.ok (decide (s = "Parent")) := by
  simp [NativeCanonicalRowOperations.eqStr, parent_bytes, owned_bytes_injective]

theorem child_comparison (s : String) (bound : (ownedBytes s).length ≤ Usize.max) :
    NativeCanonicalRowOperations.eqStr (borrow s bound) (toStr "Child") =
      Result.ok (decide (s = "Child")) := by
  simp [NativeCanonicalRowOperations.eqStr, child_bytes, owned_bytes_injective]
end B

theorem lookup_operations (rows : Map) (key : String) :
    NativeCanonicalRowOperations.lookup rows key = lookup rows key := by
  induction rows with
  | nil => rfl
  | cons stored value rest ih =>
    simp only [NativeCanonicalRowOperations.lookup, lookup, ih]

theorem index_read (key : Str) (label : String) (value : Value)
    (decoded : NativeStringBorrow.decode key = some label) :
    NativeCanonicalRowOperations.indexStr key value =
      Result.ok (match value with | .Object rows => lookup rows label | _ => none) := by
  cases value <;> simp [NativeCanonicalRowOperations.indexStr, decoded, lookup_operations]

/-- A lookup at an unrelated key is unchanged even for off-native unordered lists. -/
theorem put_other_key (rows : Map) (key query : String) (value : Value)
    (different : query ≠ key) : lookup (put rows key value) query = lookup rows query := by
  induction rows with
  | nil => simp [put, NativeCanonicalRowOperations.orderedInsert, lookup, different]
  | cons stored previous rest ih =>
    unfold put NativeCanonicalRowOperations.orderedInsert
    split
    · simp [lookup, different]
    · rename_i same
      have keys : key = stored := String.toByteArray_inj.mp
        (Std.compare_eq_eq_iff_eq.mp same)
      subst stored
      simp [lookup, different]
    · simpa [lookup, put] using congrArg
        (fun tail => if query = stored then some previous else tail) ih

end Correspondence036.NativeCanonicalRow
