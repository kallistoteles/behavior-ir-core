import Core033.Views
import Core033.Codec

namespace Core033.ValueCodec
open Codec

def Bounded (value : Views.LiveValue) : Prop := (textBytes value.padding).length≤768

def encode (value : Views.LiveValue) : Bytes :=
  header ⟨2,by decide⟩++(encodeInt64 value.x++blob (textBytes value.padding))

theorem signed_range (raw : Nat) (bound : raw<2^64) :
    -(2^63 : Int)≤signedValue raw ∧ signedValue raw<(2^63 : Int) := by
  unfold signedValue
  split <;> omega

def ofRaw (raw : Nat) (bound : raw<2^64) : Reference.Int64 :=
  ⟨signedValue raw,(signed_range raw bound).1,(signed_range raw bound).2⟩

theorem signed_value_roundtrip (value : Reference.Int64) : ofRaw (rawSigned value) (signed_raw_bound value)=value := by
  have same:=signed_raw_meaning value
  cases value with
  | mk value lower upper =>
    apply Reference.Int64.ext
    exact same

def read (input : Bytes) : Option (Views.LiveValue × Bytes) := do
  let rest ← readTag ⟨2,by decide⟩ input
  let (raw,rest) ← readNatural 8 rest
  if bounded : raw<2^64 then do
    let (padding,rest) ← readBlob 768 rest
    let text ← decodeText padding
    some (⟨ofRaw raw bounded,text⟩,rest)
  else none

theorem read_suffix (value : Views.LiveValue) (bounded : Bounded value) (suffix : Bytes) :
    read (encode value++suffix)=some (value,suffix) := by
  have width : (textBytes value.padding).length<2^32 := by unfold Bounded at bounded;omega
  have shape : encode value++suffix=header ⟨2,by decide⟩++
      (encodeInt64 value.x++(blob (textBytes value.padding)++suffix)) := by
    simp only [encode,List.append_assoc]
  rw [shape]
  unfold read encodeInt64
  rw [read_tag_suffix]
  simp only [Bind.bind,Option.bind]
  rw [read_integer_suffix 8 _ (signed_raw_bound value.x)]
  simp only [Bind.bind,Option.bind,dif_pos (signed_raw_bound value.x)]
  rw [read_blob_suffix 768 _ _ bounded width]
  simp only [Bind.bind,Option.bind,text_roundtrip,signed_value_roundtrip]

def complete (input : Bytes) : Option Views.LiveValue := do
  let (value,rest) ← read input
  if rest=[] then some value else none

theorem complete_roundtrip (value : Views.LiveValue) (bounded : Bounded value) : complete (encode value)=some value := by
  have parsed:=read_suffix value bounded []
  simp only [List.append_nil] at parsed
  simp only [complete,parsed,Bind.bind,Option.bind,if_pos rfl]

theorem encoded_injective (left right : Views.LiveValue) (leftBound : Bounded left) (rightBound : Bounded right)
    (same : encode left=encode right) : left=right := by
  have parsed:=congrArg complete same
  rw [complete_roundtrip left leftBound,complete_roundtrip right rightBound] at parsed
  exact Option.some.inj parsed

theorem encoded_size (value : Views.LiveValue) : (encode value).length=34+(textBytes value.padding).length := by
  simp [encode,header,magic_size,encodeInt64,encodeLE_size,blob_size]
  omega

end Core033.ValueCodec
