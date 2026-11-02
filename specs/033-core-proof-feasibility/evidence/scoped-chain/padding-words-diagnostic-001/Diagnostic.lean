import Core033.ControlPrimitives
import Core033.WordSequence
import Core033.HashStream

namespace Core033.PaddingWords
open WordIR WordStage

def lowSix (word : Word) : Word := word &&& 63

theorem low_six_exact (word : Word) : (lowSix word).toNat=word.toNat%64 := by
  change (word &&& (BitVec.ofNat 32 (2^6-1))).toNat=_
  rw [BitVec.toNat_and]
  change word.toNat &&& (2^6-1)=word.toNat%2^6
  exact Nat.and_two_pow_sub_one_eq_mod _ _

def zeroPadding (length : Word) : Word :=
  lowSix (119+(~~~(lowSix length)+1))

theorem zero_padding_exact (length : Word) :
    (zeroPadding length).toNat=SHA256.zeroCount length.toNat := by
  unfold zeroPadding
  rw [low_six_exact,←BitVec.neg_eq_not_add,←BitVec.sub_eq_add_neg]
  have lowBound : (lowSix length).toNat≤(119 : Word).toNat := by
    rw [low_six_exact]
    have bound:=Nat.mod_lt length.toNat (by decide : 0<64)
    change length.toNat%64≤119
    omega
  rw [BitVec.toNat_sub_of_le lowBound,low_six_exact]
  rfl

def totalSize (length : Word) : Word := length+9+zeroPadding length

theorem total_size_exact (length : Word) (profile : length.toNat≤1073741824) :
    (totalSize length).toNat=length.toNat+9+SHA256.zeroCount length.toNat := by
  have zeros:=SHA256.zero_count_bound length.toNat
  simp only [totalSize,BitVec.toNat_add,zero_padding_exact]
  change ((length.toNat+9)%4294967296+SHA256.zeroCount length.toNat)%4294967296=_
  rw [Nat.mod_eq_of_lt (by omega),Nat.mod_eq_of_lt (by omega)]

/-- Two full u32 words encode the SHA 64-bit bit length; the profile's
one-gibibyte bound still needs a nonzero high word at the upper boundary. -/
def bitLengthLow (length : Word) : Word := (length.rotateRight 29) &&& 0xfffffff8
def bitLengthHigh (length : Word) : Word := length.ushiftRight 29

theorem bit_length_high (length : Word) :
    (bitLengthHigh length).toNat=length.toNat*8/4294967296 := by
  simp only [bitLengthHigh,BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow]
  omega

end Core033.PaddingWords
