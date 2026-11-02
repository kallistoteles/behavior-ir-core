import Core033.ControlPrimitives

namespace Core033.ScalarRanges
open WordControl

def flag (bits : Nat) (word : Word) : Word := zeroWord (word.ushiftRight bits)

theorem flag_exact (bits : Nat) (word : Word) :
    flag bits word=boolWord (decide (word.toNat<2^bits)) := by
  rw [flag,zero_word_exact]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq]
  constructor
  · intro zero
    have equal:=congrArg BitVec.toNat zero
    simp only [BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow] at equal
    have zeroNat : (0 : Word).toNat=0 := by decide
    rw [zeroNat] at equal
    exact (Nat.div_eq_zero_iff (Nat.two_pow_pos bits)).mp equal
  · intro bound
    apply BitVec.eq_of_toNat_eq
    simp only [BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow]
    change word.toNat/2^bits=0
    exact Nat.div_eq_of_lt bound

theorem boolean_values_exact (word : Word) : word.toNat<2 ↔ word=0 ∨ word=1 := by
  constructor
  · intro bounded
    have values : word.toNat=0 ∨ word.toNat=1 := by omega
    rcases values with zero|one
    · exact Or.inl (BitVec.eq_of_toNat_eq zero)
    · exact Or.inr (BitVec.eq_of_toNat_eq one)
  · rintro (rfl|rfl) <;> decide

def expression (bits : Nat) : WordStage.Expr := ControlPrimitives.zero (.shr (.input 0) bits)
def expressions : List WordStage.Expr := [expression 1,expression 8,expression 16]
def program : WordIR.Program := WordSequence.program 1 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 1 := by
  simp [expressions,expression,ControlPrimitives.zero,ControlPrimitives.less,
    ControlPrimitives.carry,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) :
    program.eval inputs=[flag 1 (inputs 0),flag 8 (inputs 0),flag 16 (inputs 0)] := by
  rw [program,WordSequence.program_meaning 1 expressions expressions_bounded]
  rfl

end Core033.ScalarRanges
