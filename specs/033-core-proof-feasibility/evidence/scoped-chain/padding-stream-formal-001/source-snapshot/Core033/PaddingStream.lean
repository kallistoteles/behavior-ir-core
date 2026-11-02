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

theorem block_lookup (bytes : Bytes) (number index : Nat) (bound : index<64) :
    (block bytes number).getD index 0=(pad bytes).getD (64*number+index) 0 := by
  simp only [block,List.getD_eq_getElem?_getD,List.getElem?_map,
    List.getElem?_range bound,Option.map_some,Option.getD_some,byte_at_exact]

theorem drop_lookup (bytes : Bytes) (count index : Nat) :
    (bytes.drop count).getD index 0=bytes.getD (count+index) 0 := by
  simp only [List.getD_eq_getElem?_getD,List.getElem?_drop]

theorem word_from_block (bytes : Bytes) (number offset : Nat) (bound : offset+3<64) :
    wordFromBytes (block bytes number) offset=wordFromBytes ((pad bytes).drop (64*number)) offset := by
  have same : ∀ index,index<64 → (block bytes number).getD index 0=
      ((pad bytes).drop (64*number)).getD index 0 := by
    intro index bound
    rw [block_lookup bytes number index bound,drop_lookup]
  unfold wordFromBytes
  rw [same offset (by omega),same (offset+1) (by omega),same (offset+2) (by omega),same (offset+3) bound]

theorem parsed_block_exact (bytes : Bytes) (number : Nat) :
    parseBlock (block bytes number)=parseBlock ((pad bytes).drop (64*number)) := by
  funext index
  exact word_from_block bytes number (4*index.val) (by have bound:=index.isLt;omega)

theorem hash_stream_step (bytes : Bytes) (state : HashStream.State) (valid : HashStream.Valid bytes state) :
    (HashStream.next state).current=compress state.current (parseBlock (block bytes state.processed)) := by
  change compress state.current (parseBlock state.buffer)=_
  rw [valid.2.2,parsed_block_exact]

end Core033.PaddingStream
