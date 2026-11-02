import Core033.WordSourceBlocks

namespace Core033.SourceParameters
open WordSource

inductive Chain : Nat → List Bytes → Prop where
  | empty (first : Nat) : Chain first []
  | cons (first : Nat) (line : Bytes) (tail : List Bytes)
      (checked : line=parameterBytes first 1) (remaining : Chain (first+1) tail) :
      Chain first (line::tail)

theorem chain_exact {first : Nat} {actual : List Bytes} (checked : Chain first actual) :
    actual.flatten=parameterBytes first actual.length := by
  induction checked with
  | empty first => rfl
  | cons first line tail checked remaining ih =>
    simp only [List.flatten_cons,List.length_cons,checked,ih,parameterBytes,List.append_nil,List.append_assoc]

end Core033.SourceParameters
