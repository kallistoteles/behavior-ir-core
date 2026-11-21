module
public import NativeKeyOrder
public import Init.Data.String.Basic
public import Init.Data.ByteArray.Lemmas
@[expose] public section

/- Unadmitted byte-preserving String/Str conversion candidate.
ValidStr excludes non-UTF8 Slice inhabitants; owned borrow checks Usize rather
than imposing a U32 restriction. Failure choices on off-source inputs below
are model totalizations, not claims about Rust execution. Native source,
dictionary, runtime/compiler and allocation/error adequacy remain required. -/
namespace Correspondence036.NativeStringCodec
open Aeneas.Std Correspondence036.NativeKeyOrder

@[simp] theorem byteArray_roundtrip (bytes : ByteArray) :
    bytes.data.toList.toByteArray = bytes := by
  apply ByteArray.ext
  rw [List.data_toByteArray, Array.toArray_toList]

@[simp] theorem owned_array (value : String) :
    (ownedBytes value).toByteArray = value.toByteArray := by
  exact byteArray_roundtrip value.toByteArray

@[simp] theorem from_utf8_owned (value : String) :
    String.fromUTF8? value.toByteArray = some value := by
  unfold String.fromUTF8?
  rw [dif_pos value.isValidUTF8]
  rfl

theorem from_utf8_bytes (bytes : ByteArray) (value : String)
    (returned : String.fromUTF8? bytes = some value) :
    value.toByteArray = bytes := by
  unfold String.fromUTF8? at returned
  split at returned
  next valid =>
    have same := Option.some.inj returned
    subst value
    rfl
  next invalid => cases returned

def decode (value : Str) : Option String :=
  String.fromUTF8? (borrowedBytes value).toByteArray

def ValidStr (value : Str) : Prop :=
  (borrowedBytes value).toByteArray.IsValidUTF8

theorem decode_borrow (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    decode (borrow value bound) = some value := by
  simp [decode]

theorem decode_bytes (borrowed : Str) (owned : String)
    (decoded : decode borrowed = some owned) :
    ownedBytes owned = borrowedBytes borrowed := by
  have bytes := from_utf8_bytes _ owned decoded
  unfold ownedBytes
  rw [bytes, List.toList_data_toByteArray]

theorem decode_bound (borrowed : Str) (owned : String)
    (decoded : decode borrowed = some owned) :
    (ownedBytes owned).length ≤ Usize.max := by
  rw [decode_bytes borrowed owned decoded]
  simpa [borrowedBytes] using Slice.property borrowed

theorem borrow_decoded (borrowed : Str) (owned : String)
    (decoded : decode borrowed = some owned) :
    borrow owned (decode_bound borrowed owned decoded) = borrowed := by
  apply (borrowed_bytes_injective _ _).1
  rw [borrow_bytes, decode_bytes borrowed owned decoded]

theorem decode_comparison (left right : Str) (ownedLeft ownedRight : String)
    (decodedLeft : decode left = some ownedLeft)
    (decodedRight : decode right = some ownedRight) :
    cmpString ownedLeft ownedRight = cmpStr left right := by
  unfold cmpString cmpStr
  rw [decode_bytes left ownedLeft decodedLeft,
      decode_bytes right ownedRight decodedRight]

theorem invalid_decode (value : Str) (invalid : ¬ ValidStr value) :
    decode value = none := by
  unfold ValidStr at invalid
  simp [decode, String.fromUTF8?, invalid]

theorem valid_iff_owned_bytes (value : Str) :
    ValidStr value ↔ ∃ owned : String, ownedBytes owned = borrowedBytes value := by
  constructor
  · intro valid
    refine ⟨String.fromUTF8 (borrowedBytes value).toByteArray valid, ?_⟩
    simp [ownedBytes, String.fromUTF8]
  · rintro ⟨owned, bytes⟩
    unfold ValidStr
    rw [← bytes, owned_array]
    exact owned.isValidUTF8

def borrowResult (value : String) : Result Str :=
  if bound : (ownedBytes value).length ≤ Usize.max then
    .ok (borrow value bound)
  else .fail .maximumSizeExceeded

def ownResult (value : Str) : Result String :=
  match decode value with
  | some owned => .ok owned
  | none => .fail .undef

theorem borrow_result_valid (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    borrowResult value = .ok (borrow value bound) := by
  simp [borrowResult, bound]

theorem borrow_result_oversize (value : String)
    (outside : ¬ (ownedBytes value).length ≤ Usize.max) :
    borrowResult value = .fail .maximumSizeExceeded := by
  simp [borrowResult, outside]

theorem own_result_decoded (value : Str) (owned : String)
    (decoded : decode value = some owned) :
    ownResult value = .ok owned := by
  simp [ownResult, decoded]

theorem own_result_invalid (value : Str) (outside : ¬ ValidStr value) :
    ownResult value = .fail .undef := by
  simp [ownResult, invalid_decode value outside]

theorem roundtrip_result (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    (do
      let borrowed ← borrowResult value
      ownResult borrowed) = .ok value := by
  rw [borrow_result_valid value bound]
  simp [ownResult, decode_borrow]

end Correspondence036.NativeStringCodec
