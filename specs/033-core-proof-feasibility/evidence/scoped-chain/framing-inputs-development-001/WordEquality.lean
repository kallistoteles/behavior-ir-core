import Core033.ControlPrimitives

namespace Core033.WordEquality
open WordIR WordStage

def equalWord (a b : Word) : Word := WordControl.zeroWord (a ^^^ b)

theorem equal_word_exact (a b : Word) :
    equalWord a b=WordControl.boolWord (decide (a=b)) := by
  rw [equalWord,WordControl.zero_word_exact]
  apply congrArg WordControl.boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq]
  exact BitVec.xor_eq_zero_iff

def expression (a b : WordStage.Expr) : WordStage.Expr :=
  ControlPrimitives.zero (.bxor a b)

theorem expression_meaning (inputs : Nat → Word) (a b : WordStage.Expr) :
    (expression a b).eval inputs=equalWord (a.eval inputs) (b.eval inputs) := rfl

end Core033.WordEquality
