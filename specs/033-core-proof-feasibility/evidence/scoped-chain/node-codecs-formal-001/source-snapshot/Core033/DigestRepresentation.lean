import Core033.Views
import Core033.ByteLimbCodec

/- A lossless representation of the complete 32-byte digest in the abstract
view's Fin(2^256). This is an encoding, never reduction modulo the proof field. -/
namespace Core033.DigestRepresentation

def bytes (digest : Views.Digest) : Codec.Bytes := Codec.encodeLE 32 digest.val

theorem bytes_size (digest : Views.Digest) : (bytes digest).length=32 := Codec.encodeLE_size _ _

def ofBytes (value : Codec.Bytes) (size : value.length=32) : Views.Digest :=
  ⟨Codec.decodeLE value,by have bound:=Codec.decodeLE_bound value;rw [size] at bound;exact bound⟩

theorem bytes_of_bytes (value : Codec.Bytes) (size : value.length=32) : bytes (ofBytes value size)=value := by
  have exactBytes:=ByteLimbCodec.encode_decode_exact value
  rw [size] at exactBytes
  exact exactBytes

theorem of_bytes_bytes (digest : Views.Digest) : ofBytes (bytes digest) (bytes_size digest)=digest := by
  apply Fin.ext
  exact Codec.bounded_integer_roundtrip 32 digest.val digest.isLt

theorem bytes_injective (left right : Views.Digest) (same : bytes left=bytes right) : left=right := by
  apply Fin.ext
  exact Codec.bounded_integer_injective 32 left.val right.val left.isLt right.isLt same

theorem of_bytes_injective (left right : Codec.Bytes) (leftSize : left.length=32) (rightSize : right.length=32)
    (same : ofBytes left leftSize=ofBytes right rightSize) : left=right := by
  have equality:=congrArg bytes same
  rw [bytes_of_bytes,bytes_of_bytes] at equality
  exact equality

def hash (message : Codec.Bytes) : Views.Digest :=
  ofBytes (SHA256.digestBytes message) (SHA256.digest_size message)

theorem hash_bytes_exact (message : Codec.Bytes) : bytes (hash message)=SHA256.digestBytes message :=
  bytes_of_bytes _ _

theorem hash_equality_exact (left right : Codec.Bytes) :
    hash left=hash right ↔ SHA256.digestBytes left=SHA256.digestBytes right := by
  constructor
  · intro same
    exact of_bytes_injective _ _ _ _ same
  · intro same
    apply Fin.ext
    exact congrArg Codec.decodeLE same

end Core033.DigestRepresentation
