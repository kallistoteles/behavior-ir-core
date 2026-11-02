import Core033.BranchWordProgram

namespace Core033.BranchWordBounds
open WordIR

theorem header_words_range : ∀ word∈BranchWordProgram.headerBytes.map (fun byte=>BitVec.ofNat 32 byte.toNat),word.toNat<256 := by
  intro word member
  obtain ⟨byte,member,same⟩:=List.mem_map.mp member
  subst word
  have bound : byte.toNat<256 := byte.toNat_lt_size
  rw [BitVec.toNat_ofNat,Nat.mod_eq_of_lt (by omega)]
  exact bound

theorem word_values_range (inputs : Nat → Word) (register : Nat) :
    ∀ word∈BranchWordProgram.wordValues inputs register,word.toNat<256 := by
  intro word member
  obtain ⟨index,member,same⟩:=List.mem_map.mp member
  subst word
  exact WordBytesLE.byte_word_range _ _

theorem field_values_range (inputs : Nat → Word) (start count : Nat) :
    ∀ word∈BranchWordProgram.fieldValues inputs start count,word.toNat<256 := by
  intro word member
  obtain ⟨register,member,inWord⟩:=List.mem_flatMap.mp member
  exact word_values_range inputs register word inWord

theorem all_output_bytes (inputs : Nat → Word) :
    ∀ word∈BranchWordProgram.program.eval inputs,word.toNat<256 := by
  rw [BranchWordProgram.program_meaning]
  have first : ∀ word∈[WordBytesLE.byteWord (inputs 0) 0,WordBytesLE.byteWord (inputs 1) 0,
      WordBytesLE.byteWord (inputs 1) 1],word.toNat<256 := by simp [WordBytesLE.byte_word_range]
  have last : ∀ word∈[WordBytesLE.byteWord (inputs 24) 0,WordBytesLE.byteWord (inputs 25) 0],
      word.toNat<256 := by simp [WordBytesLE.byte_word_range]
  unfold BranchWordProgram.expected
  exact List.forall_mem_append.mpr ⟨header_words_range,List.forall_mem_append.mpr ⟨first,
    List.forall_mem_append.mpr ⟨field_values_range inputs 2 8,
      List.forall_mem_append.mpr ⟨field_values_range inputs 10 8,
        List.forall_mem_append.mpr ⟨field_values_range inputs 18 2,
          List.forall_mem_append.mpr ⟨field_values_range inputs 20 2,
            List.forall_mem_append.mpr ⟨field_values_range inputs 22 2,last⟩⟩⟩⟩⟩⟩⟩

end Core033.BranchWordBounds
