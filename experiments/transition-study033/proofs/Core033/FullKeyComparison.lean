import Core033.RawKeyWords
import Core033.WordVectorEquality

/- The actual comparison consumes both full word vectors. The surrounding K
must establish Represents by consuming the original authenticated/request bytes.
No caller-provided equality flag or hash equality establishes these premises. -/
namespace Core033.FullKeyComparison
open WordIR

def inputs (count : Nat) (left right : List Word) (index : Nat) : Word :=
  if index<count then left.getD index 0 else right.getD (index-count) 0

theorem left_input (count : Nat) (left right : List Word) (index : Nat)
    (bound : index<count) : inputs count left right index=left.getD index 0 := by
  simp only [inputs,if_pos bound]

theorem right_input (count : Nat) (left right : List Word) (index : Nat)
    (bound : index<count) : inputs count left right (count+index)=right.getD index 0 := by
  simp only [inputs,if_neg (show ¬count+index<count by omega),Nat.add_sub_cancel_left]

theorem words_exact (count : Nat) (left right : List Word)
    (leftSize : left.length=count) (rightSize : right.length=count) :
    (∀ index,index<count → inputs count left right index=inputs count left right (count+index)) ↔ left=right := by
  constructor
  · intro equal
    apply List.ext_getElem (leftSize.trans rightSize.symm)
    intro index leftBound rightBound
    rw [List.getElem_eq_getD (fallback:=0),List.getElem_eq_getD (fallback:=0)]
    have bound : index<count := by omega
    exact (left_input count left right index bound).symm.trans
      ((equal index bound).trans (right_input count left right index bound))
  · intro equal index bound
    rw [left_input count left right index bound,right_input count left right index bound,equal]

theorem key_predicate_exact (leftWords rightWords : List Word) (left right : Reference.Key)
    (leftRep : RawKeyWords.Represents leftWords left)
    (rightRep : RawKeyWords.Represents rightWords right)
    (leftBound : Codec.KeyBounded left) (rightBound : Codec.KeyBounded right) :
    (∀ index,index<48 → inputs 48 leftWords rightWords index=inputs 48 leftWords rightWords (48+index)) ↔ left=right :=
  (words_exact 48 leftWords rightWords leftRep.1 rightRep.1).trans
    (RawKeyWords.equality_exact leftWords rightWords left right leftRep rightRep leftBound rightBound)

theorem key_program_exact (leftWords rightWords : List Word) (left right : Reference.Key)
    (leftRep : RawKeyWords.Represents leftWords left)
    (rightRep : RawKeyWords.Represents rightWords right)
    (leftBound : Codec.KeyBounded left) (rightBound : Codec.KeyBounded right) :
    WordVectorEquality.keyProgram.eval (inputs 48 leftWords rightWords)=
      [WordControl.boolWord (decide (left=right))] := by
  rw [WordVectorEquality.keyProgram,WordVectorEquality.program_meaning]
  have exactKeys:=key_predicate_exact leftWords rightWords left right leftRep rightRep leftBound rightBound
  simp only [exactKeys]

end Core033.FullKeyComparison
