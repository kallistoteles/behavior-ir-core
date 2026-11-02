import Core033.Reference
import Core033.SHA256

/- Concrete primitive byte meanings for the frozen codec. Actual generated
source/decoder/field acceptance refinements must still be checked below. -/
namespace Core033.Codec
open Reference
abbrev Bytes := List UInt8

def encodeLE : Nat → Nat → Bytes
  | 0,_ => []
  | width+1,value => UInt8.ofNat value :: encodeLE width (value/256)

def decodeLE : Bytes → Nat
  | [] => 0
  | byte::rest => byte.toNat+256*decodeLE rest

theorem encodeLE_size (width value : Nat) : (encodeLE width value).length = width := by
  induction width generalizing value with
  | zero => rfl
  | succ width ih => simp [encodeLE,ih]

theorem decode_encodeLE (width value : Nat) : decodeLE (encodeLE width value) = value%256^width := by
  induction width generalizing value with
  | zero => simp only [encodeLE,decodeLE,Nat.pow_zero,Nat.mod_one]
  | succ width ih =>
      simp only [encodeLE,decodeLE,ih,UInt8.toNat_ofNat']
      change value%256+256*(value/256%256^width)=value%256^(width+1)
      rw [show 256^(width+1)=256*(256^width) by rw [Nat.pow_succ,Nat.mul_comm]]
      exact Nat.mod_mul.symm

theorem decodeLE_bound (bytes : Bytes) : decodeLE bytes < 256^bytes.length := by
  induction bytes with
  | nil => simp [decodeLE]
  | cons byte rest ih =>
      have byteBound : byte.toNat < 256 := byte.toBitVec.isLt
      simp only [decodeLE,List.length_cons,Nat.pow_succ]
      omega

theorem bounded_integer_roundtrip (width value : Nat) (bound : value < 256^width) :
    decodeLE (encodeLE width value) = value := by rw [decode_encodeLE,Nat.mod_eq_of_lt bound]

theorem bounded_integer_injective (width a b : Nat) (ha : a < 256^width) (hb : b < 256^width)
    (same : encodeLE width a = encodeLE width b) : a = b := by
  have decoded := congrArg decodeLE same
  simpa only [bounded_integer_roundtrip width a ha,bounded_integer_roundtrip width b hb] using decoded

def rawSigned (value : Reference.Int64) : Nat :=
  if value.value < 0 then (value.value+2^64).toNat else value.value.toNat

def signedValue (raw : Nat) : Int := if 2^63 ≤ raw then (raw : Int)-2^64 else raw

theorem signed_raw_bound (value : Reference.Int64) : rawSigned value < 2^64 := by
  have lower := value.lower
  have upper := value.upper
  unfold rawSigned
  split <;> omega

theorem signed_raw_meaning (value : Reference.Int64) : signedValue (rawSigned value) = value.value := by
  have lower := value.lower
  have upper := value.upper
  unfold rawSigned signedValue
  split <;> split <;> omega

def encodeInt64 (value : Reference.Int64) : Bytes := encodeLE 8 (rawSigned value)

theorem signed_bytes_roundtrip (value : Reference.Int64) :
    signedValue (decodeLE (encodeInt64 value)) = value.value := by
  rw [encodeInt64,bounded_integer_roundtrip 8 _ (by simpa using signed_raw_bound value)]
  exact signed_raw_meaning value

theorem signed_bytes_injective (a b : Reference.Int64) (same : encodeInt64 a = encodeInt64 b) : a = b := by
  have decoded := congrArg (fun bytes => signedValue (decodeLE bytes)) same
  dsimp only at decoded
  rw [signed_bytes_roundtrip,signed_bytes_roundtrip] at decoded
  cases a
  cases b
  cases decoded
  rfl

def textBytes (text : String) : Bytes := text.toByteArray.data.toList

theorem text_bytes_exact (a b : String) (same : textBytes a = textBytes b) : a = b := by
  apply String.toByteArray_inj.mp
  apply ByteArray.ext
  exact Array.toList_inj.mp same

def magic : Bytes := textBytes "core033.semantic.v1"++[0]
def record (tag : Fin 65536) (payload : Bytes) : Bytes := magic++encodeLE 2 tag.val++payload

def blob (bytes : Bytes) : Bytes := encodeLE 4 bytes.length++bytes

theorem blob_size (bytes : Bytes) : (blob bytes).length = 4+bytes.length := by simp [blob,encodeLE_size]

/-- An explicit u32 bound is necessary; an oversized value never acquires a
canonical identity through silent truncation. -/
def boundedBlob (maximum : Nat) (bytes : Bytes) : Option Bytes :=
  if bytes.length ≤ maximum ∧ bytes.length < 2^32 then some (blob bytes) else none

theorem oversized_blob_rejected (maximum : Nat) (bytes : Bytes)
    (oversized : maximum < bytes.length ∨ 2^32 ≤ bytes.length) : boundedBlob maximum bytes = none := by
  simp [boundedBlob]
  omega

def readBytes (count : Nat) (bytes : Bytes) : Option (Bytes × Bytes) :=
  if count ≤ bytes.length then some (bytes.take count,bytes.drop count) else none

def readNatural (width : Nat) (bytes : Bytes) : Option (Nat × Bytes) :=
  (readBytes width bytes).map (fun pair => (decodeLE pair.1,pair.2))

def readBlob (maximum : Nat) (bytes : Bytes) : Option (Bytes × Bytes) := do
  let (length,rest) ← readNatural 4 bytes
  if length ≤ maximum then readBytes length rest else none

theorem read_bytes_suffix (prefixBytes suffix : Bytes) :
    readBytes prefixBytes.length (prefixBytes++suffix) = some (prefixBytes,suffix) := by
  simp [readBytes]

theorem read_integer_suffix (width value : Nat) (bound : value < 256^width) (suffix : Bytes) :
    readNatural width (encodeLE width value++suffix) = some (value,suffix) := by
  have read := read_bytes_suffix (encodeLE width value) suffix
  rw [encodeLE_size] at read
  simp only [readNatural,read,Option.map_some]
  rw [bounded_integer_roundtrip width value bound]

theorem read_blob_suffix (maximum : Nat) (bytes suffix : Bytes)
    (bound : bytes.length ≤ maximum) (width : bytes.length < 2^32) :
    readBlob maximum (blob bytes++suffix) = some (bytes,suffix) := by
  unfold readBlob blob
  rw [List.append_assoc,read_integer_suffix 4 _ (by simpa using width)]
  simp only [Bind.bind,Option.bind,if_pos bound]
  exact read_bytes_suffix bytes suffix

theorem blob_parser_checks_before_take (maximum : Nat) (input bytes rest : Bytes)
    (parsed : readBlob maximum input = some (bytes,rest)) : bytes.length ≤ maximum := by
  unfold readBlob at parsed
  cases integer : readNatural 4 input with
  | none => simp [integer,Bind.bind,Option.bind] at parsed
  | some pair =>
      rcases pair with ⟨length,remaining⟩
      simp only [integer,Bind.bind,Option.bind] at parsed
      split at parsed
      · rename_i bound
        unfold readBytes at parsed
        split at parsed
        · have output := Option.some.inj parsed
          have same := congrArg Prod.fst output
          have size := congrArg List.length same
          simp only [List.length_take] at size
          omega
        · cases parsed
      · cases parsed

def decodeText (bytes : Bytes) : Option String := String.fromUTF8? ⟨bytes.toArray⟩

theorem text_roundtrip (text : String) : decodeText (textBytes text) = some text := by
  have same : (⟨(textBytes text).toArray⟩ : ByteArray) = text.toByteArray := by
    apply ByteArray.ext
    simp [textBytes]
  unfold decodeText
  rw [same]
  simp only [String.fromUTF8?,dif_pos text.isValidUTF8]
  congr 1

theorem decoded_text_keeps_bytes (bytes : Bytes) (text : String)
    (decoded : decodeText bytes = some text) : textBytes text = bytes := by
  unfold decodeText String.fromUTF8? at decoded
  split at decoded
  · have same := Option.some.inj decoded
    rw [← same]
    simp [textBytes,String.fromUTF8]
  · cases decoded

def header (tag : Fin 65536) : Bytes := magic++encodeLE 2 tag.val

def readTag (tag : Fin 65536) (bytes : Bytes) : Option Bytes := do
  let (actual,rest) ← readBytes (header tag).length bytes
  if actual = header tag then some rest else none

theorem read_tag_suffix (tag : Fin 65536) (suffix : Bytes) :
    readTag tag (header tag++suffix) = some suffix := by
  simp [readTag,read_bytes_suffix,Bind.bind,Option.bind]

def encodeKey (key : Key) : Bytes := record ⟨1,by decide⟩ (blob (textBytes key.entity)++blob (textBytes key.id))

def readKey (bytes : Bytes) : Option (Key × Bytes) := do
  let rest ← readTag ⟨1,by decide⟩ bytes
  let (entityBytes,rest) ← readBlob 64 rest
  let (idBytes,rest) ← readBlob 64 rest
  let entity ← decodeText entityBytes
  let id ← decodeText idBytes
  if entity = "" then none else some (⟨entity,id⟩,rest)

def KeyBounded (key : Key) : Prop :=
  key.entity ≠ "" ∧ (textBytes key.entity).length ≤ 64 ∧ (textBytes key.id).length ≤ 64

theorem read_key_suffix (key : Key) (bound : KeyBounded key) (suffix : Bytes) :
    readKey (encodeKey key++suffix) = some (key,suffix) := by
  have entityWidth : (textBytes key.entity).length < 2^32 := by have := bound.2.1; omega
  have idWidth : (textBytes key.id).length < 2^32 := by have := bound.2.2; omega
  have shape : encodeKey key++suffix = header ⟨1,by decide⟩++
      (blob (textBytes key.entity)++(blob (textBytes key.id)++suffix)) := by
    simp only [encodeKey,record,header,List.append_assoc]
  rw [shape]
  unfold readKey
  rw [read_tag_suffix]
  simp only [Bind.bind,Option.bind]
  rw [read_blob_suffix 64 _ _ bound.2.1 entityWidth]
  simp only [Bind.bind,Option.bind]
  rw [read_blob_suffix 64 _ _ bound.2.2 idWidth]
  simp only [Bind.bind,Option.bind,text_roundtrip,if_neg bound.1]

theorem magic_size : magic.length = 20 := by decide

theorem key_packet_bound (key : Key) (bound : KeyBounded key) : (encodeKey key).length ≤ 158 := by
  have size : (encodeKey key).length = 30+(textBytes key.entity).length+(textBytes key.id).length := by
    simp [encodeKey,record,blob_size,magic_size,encodeLE_size,Nat.add_assoc]
    omega
  rw [size]
  have := bound.2.1
  have := bound.2.2
  omega

def parseKey (bytes : Bytes) : Option Key :=
  if bytes.length ≤ 1024 then
    match readKey bytes with
    | some (key,[]) => some key
    | _ => none
  else none

theorem key_roundtrip (key : Key) (bound : KeyBounded key) : parseKey (encodeKey key) = some key := by
  have read := read_key_suffix key bound []
  simp only [List.append_nil] at read
  have size : (encodeKey key).length ≤ 1024 := by have := key_packet_bound key bound; omega
  simp [parseKey,size,read]

theorem key_encoding_injective (a b : Key) (ha : KeyBounded a) (hb : KeyBounded b)
    (same : encodeKey a = encodeKey b) : a = b := by
  have parsed := congrArg parseKey same
  rw [key_roundtrip a ha,key_roundtrip b hb] at parsed
  exact Option.some.inj parsed

end Core033.Codec
