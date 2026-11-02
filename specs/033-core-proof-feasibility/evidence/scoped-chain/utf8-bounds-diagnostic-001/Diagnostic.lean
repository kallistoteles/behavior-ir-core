import Core033.Utf8Program

namespace Core033.Utf8Bounds
open WordIR Utf8Encoding

theorem part_bound (word : Word) (shift mask prefixValue : Nat)
    (bound : mask+prefixValue<256) : (part word shift mask prefixValue).toNat<256 := by
  have maskSmall : mask<2^32 := by omega
  have prefixSmall : prefixValue<2^32 := by omega
  simp only [part,BitVec.toNat_add,BitVec.toNat_and,BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt maskSmall,Nat.mod_eq_of_lt prefixSmall]
  have masked : (word.ushiftRight shift).toNat &&& mask≤mask := Nat.and_le_right
  rw [Nat.mod_eq_of_lt (show ((word.ushiftRight shift).toNat &&& mask)+prefixValue<2^32 by omega)]
  omega

theorem output_byte_bounds (word : Word) :
    (first word).toNat<256 ∧ (second word).toNat<256 ∧
    (third word).toNat<256 ∧ (fourth word).toNat<256 := by
  have head2:=part_bound word 6 31 192 (by decide)
  have head3:=part_bound word 12 15 224 (by decide)
  have head4:=part_bound word 18 7 240 (by decide)
  have tail0:=part_bound word 0 63 128 (by decide)
  have tail6:=part_bound word 6 63 128 (by decide)
  have tail12:=part_bound word 12 63 128 (by decide)
  simp only [first,second,third,fourth,choose_less,
    show (128 : Word).toNat=128 by decide,
    show (2048 : Word).toNat=2048 by decide,
    show (65536 : Word).toNat=65536 by decide,
    show (0 : Word).toNat=0 by decide]
  by_cases small : word.toNat<128 <;> by_cases middle : word.toNat<2048 <;>
    by_cases large : word.toNat<65536
  all_goals simp only [small,middle,large,if_true,if_false]
  all_goals omega

theorem width_bound (word : Word) : 1≤(width word).toNat ∧ (width word).toNat≤4 := by
  simp only [width,choose_less]
  repeat' split
  all_goals decide

theorem encoding_length (word : Word) : (encoding word).length=(width word).toNat := by
  have bounded:=width_bound word
  simp only [encoding,List.length_take,List.length_map,List.length_cons,List.length_nil]
  omega

theorem encoding_progress (word : Word) :
    1≤(encoding word).length ∧ (encoding word).length≤4 := by
  rw [encoding_length]
  exact width_bound word

theorem no_output_byte_truncation (word : Word) :
    ∀ value∈[first word,second word,third word,fourth word],
      (UInt8.ofNat value.toNat).toNat=value.toNat := by
  intro value member
  have bounds:=output_byte_bounds word
  simp only [List.mem_cons,List.not_mem_nil,or_false] at member
  rcases member with rfl|rfl|rfl|rfl
  all_goals rw [UInt8.toNat_ofNat',Nat.mod_eq_of_lt (by omega)]

end Core033.Utf8Bounds
