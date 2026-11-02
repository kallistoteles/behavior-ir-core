import Core033.ByteOrder

namespace Core033.ByteLimbCodec
open ByteOrder

theorem encode_decode_exact (bytes : List UInt8) :
    Codec.encodeLE bytes.length (Codec.decodeLE bytes)=bytes := by
  induction bytes with
  | nil => rfl
  | cons byte rest ih =>
    have bound : byte.toNat<256 := byte.toBitVec.isLt
    have quotient : (byte.toNat+256*Codec.decodeLE rest)/256=Codec.decodeLE rest := by omega
    simp only [List.length_cons,Codec.decodeLE,Codec.encodeLE,quotient,ih]
    congr 1
    apply UInt8.eq_of_toBitVec_eq
    apply BitVec.eq_of_toNat_eq
    change (byte.toNat+256*Codec.decodeLE rest)%256=byte.toNat
    omega

theorem decode_append (left right : List UInt8) :
    Codec.decodeLE (left++right)=Codec.decodeLE left+256^left.length*Codec.decodeLE right := by
  induction left with
  | nil => simp [Codec.decodeLE]
  | cons byte rest ih =>
    simp [Codec.decodeLE,ih,Nat.mul_add,Nat.pow_succ,Nat.mul_assoc,Nat.add_assoc,Nat.mul_comm,Nat.mul_left_comm]

def packPair (low high : Word) : Nat := (byteSwap low).toNat+4294967296*(byteSwap high).toNat

theorem pair_full_u64_range (low high : Word) : packPair low high<2^64 := by
  have a:=(byteSwap low).isLt
  have b:=(byteSwap high).isLt
  unfold packPair
  omega

theorem decoded_sha_word (word : Word) : Codec.decodeLE (SHA256.wordBytes word)=(byteSwap word).toNat := by
  rw [←little_endian_swapped_is_sha_bytes]
  exact Codec.bounded_integer_roundtrip 4 _ (byteSwap word).isLt

theorem packed_pair_bytes (low high : Word) :
    Codec.encodeLE 8 (packPair low high)=SHA256.wordBytes low++SHA256.wordBytes high := by
  have decoded : Codec.decodeLE (SHA256.wordBytes low++SHA256.wordBytes high)=packPair low high := by
    rw [decode_append,SHA256.word_bytes_size,decoded_sha_word,decoded_sha_word]
    rfl
  have encoded:=encode_decode_exact (SHA256.wordBytes low++SHA256.wordBytes high)
  rw [decoded] at encoded
  simpa only [List.length_append,SHA256.word_bytes_size] using encoded

def packedLimbs (state : SHA256.HashState) : List Nat :=
  [packPair state.a state.b,packPair state.c state.d,packPair state.e state.f,packPair state.g state.h]

theorem exactly_four_limbs (state : SHA256.HashState) : (packedLimbs state).length=4 := rfl

theorem all_four_limbs_in_range (state : SHA256.HashState) : ∀ limb∈packedLimbs state,limb<2^64 := by
  intro limb member
  simp only [packedLimbs,List.mem_cons,List.not_mem_nil,or_false] at member
  rcases member with rfl|rfl|rfl|rfl <;> exact pair_full_u64_range _ _

theorem encoded_full_digest (state : SHA256.HashState) :
    (packedLimbs state).flatMap (Codec.encodeLE 8)=SHA256.stateBytes state := by
  simp only [packedLimbs,List.flatMap_cons,List.flatMap_nil,packed_pair_bytes,
    SHA256.stateBytes,SHA256.stateWords,List.append_nil,List.append_assoc]

end Core033.ByteLimbCodec
