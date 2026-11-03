import Core033.Codec
import Core033.WordIR

namespace Core033.WordSequenceCodec
open WordIR

def encode (words : List Word) : Codec.Bytes := words.flatMap (fun word=>Codec.encodeLE 4 word.toNat)

theorem encoded_size (words : List Word) : (encode words).length=4*words.length := by
  induction words with
  | nil => rfl
  | cons first rest ih =>
    simp only [encode,List.flatMap_cons,List.length_append,Codec.encodeLE_size] at *
    simp only [List.length_cons]
    omega

theorem read_head (first : Word) (rest : List Word) :
    Codec.readNatural 4 (encode (first::rest))=some (first.toNat,encode rest) :=
  Codec.read_integer_suffix 4 first.toNat (by change first.toNat<4294967296;exact first.isLt) (encode rest)

theorem encoding_injective (left : List Word) : ∀ right,encode left=encode right → left=right := by
  induction left with
  | nil =>
    intro right same
    have size:=congrArg List.length same
    rw [encoded_size,encoded_size] at size
    have empty : right.length=0 := by simp only [List.length_nil] at size;omega
    rw [List.length_eq_zero_iff.mp empty]
  | cons first rest ih =>
    intro right same
    cases right with
    | nil =>
      have size:=congrArg List.length same
      rw [encoded_size,encoded_size] at size
      simp only [List.length_cons,List.length_nil] at size
      omega
    | cons next tail =>
      have pair:=Option.some.inj ((read_head first rest).symm.trans
        ((congrArg (Codec.readNatural 4) same).trans (read_head next tail)))
      have head:=BitVec.eq_of_toNat_eq (congrArg Prod.fst pair)
      have remaining:=ih tail (congrArg Prod.snd pair)
      cases head
      exact congrArg (List.cons first) remaining

end Core033.WordSequenceCodec
