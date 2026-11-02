import Core033.WordSequence
import Core033.Codec

namespace Core033.WordBytesLE
open WordIR

def byteWord (word : Word) (index : Nat) : Word := word.ushiftRight (8*index) &&& 255

theorem byte_word_nat (word : Word) (index : Nat) :
    (byteWord word index).toNat=(word.toNat/2^(8*index))%256 := by
  simp only [byteWord,BitVec.toNat_and,BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,
    Nat.shiftRight_eq_div_pow]
  change (word.toNat/2^(8*index)) &&& (2^8-1)=(word.toNat/2^(8*index))%2^8
  exact Nat.and_two_pow_sub_one_eq_mod _ _

theorem byte_word_range (word : Word) (index : Nat) : (byteWord word index).toNat<256 := by
  rw [byte_word_nat]
  exact Nat.mod_lt _ (by decide)

theorem byte_value (word : Word) (index : Nat) :
    UInt8.ofNat (byteWord word index).toNat=UInt8.ofNat (word.toNat/256^index) := by
  apply UInt8.toNat.inj
  simp only [UInt8.toNat_ofNat',byte_word_nat,Nat.mod_mod]
  have power : 2^(8*index)=256^index := by rw [Nat.pow_mul];rfl
  rw [power]

def bytes (word : Word) : Codec.Bytes := (List.range 4).map (fun index=>UInt8.ofNat (byteWord word index).toNat)

theorem bytes_exact (word : Word) : bytes word=Codec.encodeLE 4 word.toNat := by
  simp only [bytes,byte_value]
  change [UInt8.ofNat (word.toNat/256^0),UInt8.ofNat (word.toNat/256^1),
    UInt8.ofNat (word.toNat/256^2),UInt8.ofNat (word.toNat/256^3)]=_
  simp only [Codec.encodeLE,Nat.div_div_eq_div_mul,Nat.pow_zero,Nat.pow_one,Nat.div_one]
  rfl

def expression (register index : Nat) : WordStage.Expr := .band (.shr (.input register) (8*index)) (.literal 255)

theorem expression_meaning (inputs : Nat → Word) (register index : Nat) :
    (expression register index).eval inputs=byteWord (inputs register) index := rfl

end Core033.WordBytesLE
