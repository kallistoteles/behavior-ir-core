import Core033.DigestRepresentation
import Core033.ByteOrder

/- Native sparse addresses read the most-significant bit of each digest byte
first. The abstract digest representation is little-endian by byte; this exact
coordinate conversion prevents a silent path/limb-endianness mismatch. -/
namespace Core033.AddressBits

def direction (bytes : Codec.Bytes) (depth : Nat) : Bool :=
  (bytes.getD (depth/8) 0).toBitVec.getLsbD (7-depth%8)

def coordinate (depth : Nat) : Nat := 8*(depth/8)+(7-depth%8)

theorem coordinate_bound (depth : Nat) (bound : depth<256) : coordinate depth<256 := by
  unfold coordinate
  omega

theorem coordinate_involution (depth : Nat) : coordinate (coordinate depth)=depth := by
  unfold coordinate
  omega

theorem full_root_direction (root : Views.Digest) (depth : Nat) (bound : depth<256) :
    direction (DigestRepresentation.bytes root) depth=root.val.testBit (coordinate depth) := by
  have index : depth/8<32 := by omega
  have bitBound : 7-depth%8<8 := by omega
  unfold direction DigestRepresentation.bytes
  rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem (by rw [Codec.encodeLE_size];exact index),Option.getD_some,
    ByteOrder.encode_le_byte 32 root.val (depth/8) index]
  change (BitVec.ofNat 8 (root.val/256^(depth/8))).getLsbD (7-depth%8)=_
  rw [show 256=2^8 by decide,←Nat.pow_mul]
  simp only [BitVec.getLsbD_ofNat,decide_eq_true bitBound,Bool.true_and,Nat.testBit_div_two_pow]
  unfold coordinate
  congr 1
  omega

def wordDirection (word : WordIR.Word) (depth : Nat) : Bool := direction (SHA256.wordBytes word) depth

theorem full_word_direction (word : WordIR.Word) (depth : Nat) (bound : depth<32) :
    wordDirection word depth=word.getLsbD (31-depth) := by
  have index : depth/8<4 := by omega
  have bitBound : 7-depth%8<8 := by omega
  unfold wordDirection direction
  rw [←ByteOrder.little_endian_swapped_is_sha_bytes word]
  rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem (by rw [Codec.encodeLE_size];exact index),Option.getD_some,
    ByteOrder.encode_le_byte 4 _ (depth/8) index,
    ByteOrder.byte_bit _ (depth/8) (7-depth%8) bitBound,
    ByteOrder.swapped_bit _ _ (by omega)]
  rw [show ByteOrder.swapIndex (8*(depth/8)+(7-depth%8))=31-depth by unfold ByteOrder.swapIndex;omega]

end Core033.AddressBits
