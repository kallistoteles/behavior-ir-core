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
  by_cases dataByte : position<bytes.length
  · simp [byteAt,pad,getD_append_cases,dataByte,dataEnd]
  · by_cases marker : position=bytes.length
    · subst position
      simp [byteAt,pad,getD_append_cases,dataEnd]
    · by_cases zeros : position<dataEnd bytes
      · have after : bytes.length<position := by omega
        have offset : position-bytes.length-1<zeroCount bytes.length := by unfold dataEnd at zeros;omega
        simp [byteAt,pad,getD_append_cases,dataByte,marker,zeros,dataEnd,after,offset]
      · have after : bytes.length<position := by omega
        have offset : zeroCount bytes.length≤position-bytes.length-1 := by unfold dataEnd at zeros;omega
        have index : position-bytes.length-1-zeroCount bytes.length=position-dataEnd bytes := by unfold dataEnd;omega
        simp [byteAt,pad,getD_append_cases,dataByte,marker,zeros,dataEnd,after,offset,index]

def block (bytes : Bytes) (number : Nat) : Bytes :=
  (List.range 64).map (fun index=>byteAt bytes (64*number+index))

theorem block_size (bytes : Bytes) (number : Nat) : (block bytes number).length=64 := by
  simp [block]

end Core033.PaddingStream
