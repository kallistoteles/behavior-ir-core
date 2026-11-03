import Core033.AddressBits
import Core033.PaddingStream

namespace Core033.AddressBitsStream
open SHA256

theorem word_bytes_lookup (words : List Word) : ∀ index,index<4*words.length →
    (words.flatMap wordBytes).getD index 0=(wordBytes (words.getD (index/4) 0)).getD (index%4) 0 := by
  induction words with
  | nil => intro index bound;simp only [List.length_nil] at bound;omega
  | cons word rest ih =>
    intro index bound
    have size : (wordBytes word).length=4 := word_bytes_size word
    by_cases first : index<4
    · simp only [List.flatMap_cons,PaddingStream.getD_append_cases,size,if_pos first]
      rw [show index/4=0 by omega,Nat.mod_eq_of_lt first]
      rfl
    · have remaining : index-4<4*rest.length := by simp only [List.length_cons] at bound;omega
      simp only [List.flatMap_cons,PaddingStream.getD_append_cases,size,if_neg first]
      rw [ih (index-4) remaining]
      rw [show index/4=(index-4)/4+1 by omega,show index%4=(index-4)%4 by omega]
      rfl

theorem complete_native_digest_direction (state : HashState) (depth : Nat) (bound : depth<256) :
    AddressBits.direction (stateBytes state) depth=
      AddressBits.wordDirection ((stateWords state).getD (depth/32) 0) (depth%32) := by
  have length : (stateWords state).length=8 := rfl
  have lookup:=word_bytes_lookup (stateWords state) (depth/8) (by rw [length];omega)
  unfold AddressBits.direction stateBytes
  rw [lookup]
  rw [show depth/8/4=depth/32 by omega,
    show depth/8%4=depth%32/8 by omega,
    show 7-depth%8=7-(depth%32)%8 by omega]
  rfl

theorem complete_native_digest_word_bit (state : HashState) (depth : Nat) (bound : depth<256) :
    AddressBits.direction (stateBytes state) depth=
      ((stateWords state).getD (depth/32) 0).getLsbD (31-depth%32) := by
  rw [complete_native_digest_direction state depth bound,AddressBits.full_word_direction _ _ (Nat.mod_lt _ (by decide))]

end Core033.AddressBitsStream
