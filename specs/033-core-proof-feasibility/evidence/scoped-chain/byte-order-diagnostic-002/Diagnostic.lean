import Core033.WordStage
import Core033.WordPacking
import Core033.Codec

namespace Core033.ByteOrder
abbrev Word := WordIR.Word

/-- SHA emits big-endian word bytes; the profile packs digest bytes into
little-endian u64 limbs. This seven-operation permutation makes that boundary
explicit using only already supported u32 primitive operations. -/
def byteSwap (word : Word) : Word :=
  (word.rotateRight 24 &&& 0x00ff00ff) ^^^ (word.rotateRight 8 &&& 0xff00ff00)

def swapIndex (index : Nat) : Nat := 8*(3-index/8)+index%8

theorem swapped_bit (word : Word) (index : Nat) (bound : index<32) :
    (byteSwap word).getLsbD index=word.getLsbD (swapIndex index) := by
  have cases : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 ∨ index=8 ∨ index=9 ∨ index=10 ∨ index=11 ∨ index=12 ∨ index=13 ∨ index=14 ∨ index=15 ∨ index=16 ∨ index=17 ∨ index=18 ∨ index=19 ∨ index=20 ∨ index=21 ∨ index=22 ∨ index=23 ∨ index=24 ∨ index=25 ∨ index=26 ∨ index=27 ∨ index=28 ∨ index=29 ∨ index=30 ∨ index=31 := by omega
  rcases cases with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
  all_goals simp [byteSwap,swapIndex,BitVec.getLsbD_rotateRight]

theorem swap_index_bound (index : Nat) (bound : index<32) : swapIndex index<32 := by
  unfold swapIndex
  omega

theorem swap_index_involution (index : Nat) (bound : index<32) : swapIndex (swapIndex index)=index := by
  unfold swapIndex
  omega

theorem byte_swap_involution (word : Word) : byteSwap (byteSwap word)=word := by
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro index bound
  rw [swapped_bit _ index bound,swapped_bit _ _ (swap_index_bound index bound),swap_index_involution index bound]

def expression (register : Nat) : WordStage.Expr :=
  .bxor (.band (.rotr (.input register) 24) (.literal 0x00ff00ff))
    (.band (.rotr (.input register) 8) (.literal 0xff00ff00))

theorem expression_meaning (values : Nat → Word) (register : Nat) :
    (expression register).eval values=byteSwap (values register) := rfl

theorem encode_le_byte (width value index : Nat) (bound : index<width) :
    (Codec.encodeLE width value)[index]'(by simpa only [Codec.encodeLE_size] using bound)=
      UInt8.ofNat (value/256^index) := by
  induction width generalizing value index with
  | zero => omega
  | succ width ih =>
    cases index with
    | zero => simp [Codec.encodeLE]
    | succ index =>
      simpa only [Codec.encodeLE,List.getElem_cons_succ,Nat.div_div,Nat.pow_succ,Nat.mul_comm] using
        ih (value/256) index (by omega)

theorem byte_bit (word : Word) (offset bit : Nat) (bound : bit<8) :
    (UInt8.ofNat (word.toNat/256^offset)).toBitVec.getLsbD bit=word.getLsbD (8*offset+bit) := by
  change (BitVec.ofNat 8 (word.toNat/256^offset)).getLsbD bit=_
  rw [show 256=2^8 by decide,←Nat.pow_mul]
  simp only [BitVec.getLsbD_ofNat,decide_eq_true bound,Bool.true_and,Nat.testBit_div_two_pow]
  change word.toNat.testBit (bit+8*offset)=word.toNat.testBit (8*offset+bit)
  congr 1
  omega

theorem swapped_byte (word : Word) (offset : Nat) (bound : offset<4) :
    UInt8.ofNat ((byteSwap word).toNat/256^offset)=UInt8.ofNat (word.toNat/256^(3-offset)) := by
  apply UInt8.eq_of_toBitVec_eq
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro bit bitBound
  rw [byte_bit _ _ bit bitBound,byte_bit _ _ bit bitBound,swapped_bit _ _ (by omega)]
  have coordinate : swapIndex (8*offset+bit)=8*(3-offset)+bit := by unfold swapIndex;omega
  rw [coordinate]

theorem byte_modulo (value : Nat) : UInt8.ofNat (value%256)=UInt8.ofNat value := by
  apply UInt8.eq_of_toBitVec_eq
  apply BitVec.eq_of_toNat_eq
  change (value%256)%256=value%256
  exact Nat.mod_mod _ _

theorem little_endian_swapped_is_sha_bytes (word : Word) :
    Codec.encodeLE 4 (byteSwap word).toNat=SHA256.wordBytes word := by
  apply List.ext_getElem
  · rw [Codec.encodeLE_size,SHA256.word_bytes_size]
  · intro index left right
    have bound : index<4 := by simpa only [Codec.encodeLE_size] using left
    rw [encode_le_byte 4 _ index bound]
    simp only [SHA256.wordBytes,List.getElem_map,List.getElem_range,byte_modulo]
    exact swapped_byte word index bound

end Core033.ByteOrder
