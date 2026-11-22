module
public import Aeneas
public import Init.Data.String.Basic
public import Init.Data.ByteArray.Lemmas
@[expose] public section

/- Standalone prospective byte-view interpretation. No generated Core type or
previous extraction context is imported. Native receiver/lifetime/frame and
compiler/source interpretation require the separately declared generic boundary.
The oversized-model failure is an off-native-domain totalization only. -/
namespace Correspondence036.NativeStringBorrow
open Aeneas.Std

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

theorem borrow_length (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    (borrowedBytes (borrow value bound)).length = value.toByteArray.size := by
  simp [ownedBytes]

@[simp] theorem byteArray_roundtrip (bytes : ByteArray) :
    bytes.data.toList.toByteArray = bytes := by
  apply ByteArray.ext
  rw [List.data_toByteArray, Array.toArray_toList]

@[simp] theorem owned_array (value : String) :
    (ownedBytes value).toByteArray = value.toByteArray := by
  exact byteArray_roundtrip value.toByteArray

def ValidStr (value : Str) : Prop :=
  (borrowedBytes value).toByteArray.IsValidUTF8

theorem borrow_valid_utf8 (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    ValidStr (borrow value bound) := by
  simpa [ValidStr] using value.isValidUTF8

def decode (value : Str) : Option String :=
  String.fromUTF8? (borrowedBytes value).toByteArray

@[simp] theorem from_utf8_owned (value : String) :
    String.fromUTF8? value.toByteArray = some value := by
  unfold String.fromUTF8?
  rw [dif_pos value.isValidUTF8]
  rfl

theorem decode_borrow (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    decode (borrow value bound) = some value := by
  simp [decode]

def borrowResult (value : String) : Result Str :=
  if bound : (ownedBytes value).length ≤ Usize.max then
    .ok (borrow value bound)
  else .fail .maximumSizeExceeded

theorem borrow_result_valid (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    borrowResult value = .ok (borrow value bound) := by
  simp [borrowResult, bound]

theorem borrow_result_oversize (value : String)
    (outside : ¬ (ownedBytes value).length ≤ Usize.max) :
    borrowResult value = .fail .maximumSizeExceeded := by
  simp [borrowResult, outside]

end Correspondence036.NativeStringBorrow
