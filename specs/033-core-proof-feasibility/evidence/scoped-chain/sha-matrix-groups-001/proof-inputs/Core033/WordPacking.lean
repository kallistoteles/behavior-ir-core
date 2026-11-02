import Core033.R1CS
import Core033.SHA256

/- Full-width bit/word packing for both hash u32 words and digest u64 limbs.
No low-word truncation or unconstrained upper limb is allowed by these laws. -/
namespace Core033.WordPacking
open R1CS

theorem natural_bits_value (width value : Nat) : Bits.value width (Nat.testBit value) = value%2^width := by
  induction width with
  | zero => simp only [Bits.value,Nat.pow_zero,Nat.mod_one]
  | succ width ih =>
      rw [Bits.value,ih,Nat.mod_pow_succ]
      by_cases one : value/2^width%2=1
      · simp [Nat.testBit_eq_decide_div_mod_eq,one]
      · have small:=Nat.mod_lt (value/2^width) (by decide : 0<2)
        have zero : value/2^width%2=0 := by omega
        simp [Nat.testBit_eq_decide_div_mod_eq,zero]

theorem value_injective (width : Nat) : ∀ a b : Nat → Bool,Bits.value width a=Bits.value width b →
    ∀ index,index<width → a index=b index := by
  induction width with
  | zero => intro a b same index bound;omega
  | succ width ih =>
      intro a b same
      have smallA:=Bits.bound width a
      have smallB:=Bits.bound width b
      cases bitA : a width <;> cases bitB : b width
      all_goals
        simp [Bits.value,bitA,bitB] at same
        all_goals first | omega |
          have old : Bits.value width a=Bits.value width b := by omega
          intro index bound
          by_cases before : index<width
          · exact ih a b old index before
          · have position : index=width := by omega
            simp only [position,bitA,bitB]

theorem word_bits_value (width : Nat) (word : BitVec width) :
    Bits.value width (fun index=>word.getLsbD index)=word.toNat := by
  change Bits.value width (Nat.testBit word.toNat)=word.toNat
  rw [natural_bits_value,Nat.mod_eq_of_lt word.isLt]

def wordOfBits (width : Nat) (bits : Nat → Bool) : BitVec width := BitVec.ofNat width (Bits.value width bits)

theorem word_of_bits_value (width : Nat) (bits : Nat → Bool) : (wordOfBits width bits).toNat=Bits.value width bits := by
  simp only [wordOfBits,BitVec.toNat_ofNat,Nat.mod_eq_of_lt (Bits.bound width bits)]

theorem word_of_bits_bit (width : Nat) (bits : Nat → Bool) (index : Nat) (bound : index<width) :
    (wordOfBits width bits).getLsbD index=bits index := by
  have value:=word_bits_value width (wordOfBits width bits)
  rw [word_of_bits_value] at value
  exact value_injective width _ _ value index bound

theorem weighted_word {F : Type} [Field F] (width : Nat) (word : BitVec width) :
    weighted width (fun i=>bitValue (F:=F) (word.getLsbD i))=(word.toNat : F) := by
  rw [weighted_cast,word_bits_value]

/-- The bits may come from an untrusted witness: the actual Boolean rows force
one of the two field values before packing. -/
theorem boolean_fields_reify {F : Type} [Field F] (width : Nat) (values : Nat → F)
    (boolean : ∀ i,i<width → values i*(values i-1)=0) :
    ∃ word : BitVec width,(∀ i,i<width → values i=bitValue (word.getLsbD i)) ∧
      weighted width values=(word.toNat : F) := by
  classical
  let bits:=fun i=>decide (values i=1)
  have decoded : ∀ i,i<width → values i=bitValue (bits i) := by
    intro i bound
    rcases boolean_sound (values i) (boolean i bound) with zero|one
    · simp [bits,zero,bitValue]
    · simp [bits,one,bitValue]
  let word:=wordOfBits width bits
  have encoded : ∀ i,i<width → values i=bitValue (word.getLsbD i) := by
    intro i bound
    rw [show word.getLsbD i=bits i from word_of_bits_bit width bits i bound]
    exact decoded i bound
  refine ⟨word,encoded,?_⟩
  rw [weighted_congr width values (fun i=>bitValue (word.getLsbD i)) encoded,weighted_word]

end Core033.WordPacking
