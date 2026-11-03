import Core033.WordControl
import Core033.WordStage

namespace Core033.WordBit
open WordIR

def bitWord (word : Word) (bit : Nat) : Word := word.ushiftRight bit &&& 1

theorem bit_word_exact (word : Word) (bit : Nat) :
    bitWord word bit=WordControl.boolWord (word.getLsbD bit) := by
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro index bound
  by_cases zero : index=0
  · subst index
    cases value : word.getLsbD bit <;> simp [bitWord,WordControl.boolWord,BitVec.getLsbD_ushiftRight,value]
  · cases value : word.getLsbD bit <;> simp [bitWord,WordControl.boolWord,BitVec.getLsbD_ushiftRight,zero]

theorem bit_word_range (word : Word) (bit : Nat) : (bitWord word bit).toNat≤1 := by
  rw [bit_word_exact]
  exact WordControl.bool_word_range _

def expression (register bit : Nat) : WordStage.Expr := .band (.shr (.input register) bit) (.literal 1)

theorem expression_meaning (inputs : Nat → Word) (register bit : Nat) :
    (expression register bit).eval inputs=bitWord (inputs register) bit := rfl

end Core033.WordBit
