module
public import NativeJsonIterators
public import Init.Data.String.Compare
public import Init.Data.ByteArray.Lex
public import Init.Data.Order.LemmasExtra
@[expose] public section

/- Unadmitted concrete key semantics over the actual generated EntityKey and
Aeneas String/Str carriers. No Rust library/compiler/effect adequacy is assumed
by these definitions. The source relation and dictionary registration are separate.
Borrow takes the actual Usize bound, without imposing the helper's U32 bound. -/
namespace Correspondence036.NativeKeyOrder
open Aeneas.Std

abbrev NativeKey := transition_study036.behavior_store.documents.EntityKey

def toRustByte (byte : UInt8) : U8 := ⟨byte.toBitVec⟩
def toLeanByte (byte : U8) : UInt8 := ⟨byte.bv⟩

@[simp] theorem lean_rust_byte (byte : UInt8) :
    toLeanByte (toRustByte byte) = byte := by cases byte; rfl
@[simp] theorem rust_lean_byte (byte : U8) :
    toRustByte (toLeanByte byte) = byte := by cases byte; rfl

def ownedBytes (value : String) : List UInt8 := value.toByteArray.data.toList
def borrowedBytes (value : Str) : List UInt8 := value.val.map toLeanByte

def borrow (value : String) (bound : (ownedBytes value).length ≤ Usize.max) : Str :=
  Slice.from ((ownedBytes value).map toRustByte) (by simpa using bound)

@[simp] theorem borrow_bytes (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    borrowedBytes (borrow value bound) = ownedBytes value := by
  simp [borrowedBytes, borrow, List.map_map, Function.comp_def]

theorem borrowed_bytes_injective (left right : Str) :
    borrowedBytes left = borrowedBytes right ↔ left = right := by
  constructor
  · intro same
    apply (Slice.eq_iff left right).2
    have mapped := congrArg (List.map toRustByte) same
    simpa [borrowedBytes, List.map_map, Function.comp_def] using mapped
  · intro same; subst right; rfl

def cmpString (left right : String) : Ordering :=
  compare (ownedBytes left) (ownedBytes right)
def cmpStr (left right : Str) : Ordering :=
  compare (borrowedBytes left) (borrowedBytes right)
attribute [local instance] lexOrd
def cmpEntity (left right : NativeKey) : Ordering :=
  compare (left.entity, left.id) (right.entity, right.id)

theorem string_compare_bytes (left right : String) :
    cmpString left right = compare left.toByteArray right.toByteArray := by
  unfold cmpString ownedBytes
  rw [← Array.compare_eq_compare_toList]
  rfl

theorem string_compare_sdk (left right : String) :
    cmpString left right = compare left right := by
  rw [string_compare_bytes]
  rfl

theorem string_compare_eq (left right : String) :
    cmpString left right = .eq ↔ left = right := by
  rw [string_compare_sdk]
  exact Std.compare_eq_eq_iff_eq

theorem string_compare_swap (left right : String) :
    cmpString left right = (cmpString right left).swap := by
  simp only [string_compare_sdk]
  exact Std.OrientedOrd.eq_swap

theorem string_compare_trans (left middle right : String)
    (first : (cmpString left middle).isLE)
    (second : (cmpString middle right).isLE) :
    (cmpString left right).isLE := by
  simp only [string_compare_sdk] at *
  exact Std.TransOrd.isLE_trans first second

theorem string_compare_total (left right : String) :
    (cmpString left right).isLE ∨ (cmpString right left).isLE := by
  rw [string_compare_swap left right]
  cases cmpString right left <;> simp

theorem str_compare_eq (left right : Str) :
    cmpStr left right = .eq ↔ left = right := by
  unfold cmpStr
  rw [Std.compare_eq_eq_iff_eq, borrowed_bytes_injective]

theorem str_compare_trans (left middle right : Str)
    (first : (cmpStr left middle).isLE)
    (second : (cmpStr middle right).isLE) :
    (cmpStr left right).isLE :=
  Std.TransOrd.isLE_trans first second

theorem borrow_compare (left right : String)
    (leftBound : (ownedBytes left).length ≤ Usize.max)
    (rightBound : (ownedBytes right).length ≤ Usize.max) :
    cmpStr (borrow left leftBound) (borrow right rightBound) = cmpString left right := by
  simp [cmpStr, cmpString]

theorem entity_field_order (left right : NativeKey) :
    cmpEntity left right =
      (cmpString left.entity right.entity).then (cmpString left.id right.id) := by
  simp only [string_compare_sdk]
  rfl

theorem entity_compare_eq (left right : NativeKey) :
    cmpEntity left right = .eq ↔ left = right := by
  unfold cmpEntity
  rw [Std.compare_eq_eq_iff_eq]
  cases left; cases right
  simp

theorem entity_compare_trans (left middle right : NativeKey)
    (first : (cmpEntity left middle).isLE)
    (second : (cmpEntity middle right).isLE) :
    (cmpEntity left right).isLE :=
  Std.TransOrd.isLE_trans first second

theorem entity_compare_swap (left right : NativeKey) :
    cmpEntity left right = (cmpEntity right left).swap :=
  Std.OrientedOrd.eq_swap

theorem unicode_control :
    cmpString "z" "é" = .lt ∧ cmpString "é" "€" = .lt ∧
    cmpString "€" "😀" = .lt := by decide +kernel
theorem prefix_control :
    cmpString "" "\u0000" = .lt ∧ cmpString "a" "a\u0000" = .lt ∧
    cmpString "é" "é\u0000" = .lt := by decide +kernel
theorem normalization_control :
    cmpString "é" "é" = .lt := by decide +kernel
theorem entity_priority_control :
    cmpEntity ⟨"a", "z"⟩ ⟨"b", "a"⟩ = .lt ∧
    cmpEntity ⟨"a", "a"⟩ ⟨"a", "b"⟩ = .lt := by decide +kernel
theorem display_collision_control :
    cmpEntity ⟨"a", "b#c"⟩ ⟨"a#b", "c"⟩ ≠ .eq := by decide +kernel

end Correspondence036.NativeKeyOrder
