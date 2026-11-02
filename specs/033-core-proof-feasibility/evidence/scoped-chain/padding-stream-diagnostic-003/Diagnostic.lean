import Core033.LengthBytes

namespace Core033.PaddingStream
open SHA256

theorem getD_append_cases {α : Type} (left right : List α) (index : Nat) (fallback : α) :
    (left++right).getD index fallback=
      if index<left.length then left.getD index fallback else right.getD (index-left.length) fallback := by
  simp only [List.getD_eq_getElem?_getD,List.getElem?_append]
  split <;> rfl

def dataEnd (bytes : Bytes) : Nat := bytes.length+1+zeroCount bytes.length

def byteAt (bytes : Bytes) (position : Nat) : UInt8 :=
  if position<bytes.length then bytes.getD position 0
  else if position=bytes.length then 128
  else if position<dataEnd bytes then 0
  else (lengthBytes bytes.length).getD (position-dataEnd bytes) 0

theorem byte_at_exact (bytes : Bytes) (position : Nat) :
    byteAt bytes position=(pad bytes).getD position 0 := by
  have formatted : pad bytes=bytes++([128]++
      (List.replicate (zeroCount bytes.length) 0++lengthBytes bytes.length)) := by
    simp only [pad,List.append_assoc]
  rw [formatted,getD_append_cases]
  by_cases dataByte : position<bytes.length
  · simp only [byteAt,if_pos dataByte]
  · simp only [byteAt,if_neg dataByte]
    rw [getD_append_cases]
    by_cases marker : position=bytes.length
    · subst position
      simp
    · have after : bytes.length<position := by omega
      have pastMarker : ¬position-bytes.length<1 := by omega
      simp only [if_neg marker,List.length_cons,List.length_nil,if_neg pastMarker]
      rw [getD_append_cases]
      simp only [List.length_replicate]
      by_cases zeros : position<dataEnd bytes
      · have offset : position-bytes.length-1<zeroCount bytes.length := by unfold dataEnd at zeros;omega
        rw [if_pos zeros,if_pos offset]
        simp only [List.getD_eq_getElem?_getD,List.getElem?_replicate,if_pos offset,Option.getD_some]
      · have offset : ¬position-bytes.length-1<zeroCount bytes.length := by unfold dataEnd at zeros;omega
        have index : position-bytes.length-1-zeroCount bytes.length=position-dataEnd bytes := by unfold dataEnd;omega
        rw [if_neg zeros,if_neg offset,index]

def block (bytes : Bytes) (number : Nat) : Bytes :=
  (List.range 64).map (fun index=>byteAt bytes (64*number+index))

theorem block_size (bytes : Bytes) (number : Nat) : (block bytes number).length=64 := by
  simp [block]

end Core033.PaddingStream
