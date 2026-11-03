import Core033.WordEquality
import Core033.ScalarRanges

/- A bounded leaf-to-root controller counter. Branch work admits only 0..255;
terminal depth is exactly 256, and larger full-u32 values are rejected. The full
machine must bind these outputs to its phase, next state and original address. -/
namespace Core033.PathCounterProgram
open WordIR WordStage

def depth (processed : Word) : Word := ~~~processed &&& 255
def terminal (processed : Word) : Word := WordEquality.equalWord processed 256
def admitted (processed : Word) : Word := WordControl.lessWord 256 processed ^^^ 1

def expressions : List Expr :=
  [.badd (.input 0) (.literal 1),.band (.bnot (.input 0)) (.literal 255),
   ControlPrimitives.zero (.shr (.input 0) 8),WordEquality.expression (.input 0) (.literal 256),
   .bxor (ControlPrimitives.less (.literal 256) (.input 0)) (.literal 1)]
def program : Program := WordSequence.program 1 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 1 := by
  simp [expressions,Expr.Bounded,WordEquality.expression,ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    [inputs 0+1,depth (inputs 0),ScalarRanges.flag 8 (inputs 0),terminal (inputs 0),admitted (inputs 0)] := by
  rw [program,WordSequence.program_meaning 1 expressions expressions_bounded]
  rfl

theorem depth_exact (processed : Word) : (depth processed).toNat=255-processed.toNat%256 := by
  simp only [depth,BitVec.toNat_and]
  change (~~~processed).toNat &&& (2^8-1)=_
  rw [Nat.and_two_pow_sub_one_eq_mod,BitVec.toNat_not]
  have bound:=processed.isLt
  change (4294967295-processed.toNat)%256=255-processed.toNat%256
  omega

theorem terminal_exact (processed : Word) : terminal processed=WordControl.boolWord (decide (processed.toNat=256)) := by
  rw [terminal,WordEquality.equal_word_exact]
  apply congrArg WordControl.boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq]
  constructor
  · intro same;rw [same];rfl
  · intro same;exact BitVec.eq_of_toNat_eq same

theorem admission_exact (processed : Word) : admitted processed=WordControl.boolWord (decide (processed.toNat≤256)) := by
  rw [admitted,WordControl.less_word_exact,WordControl.bool_not]
  apply congrArg WordControl.boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [Bool.not_eq_true',decide_eq_false_iff_not,decide_eq_true_eq]
  change ¬256<processed.toNat ↔ processed.toNat≤256
  omega

theorem branch_coordinates (processed : Word) (active : processed.toNat<256) :
    (processed+1).toNat=processed.toNat+1 ∧ (depth processed).toNat=255-processed.toNat ∧
      (processed+1).toNat+(depth processed).toNat=256 := by
  have height : (processed+1).toNat=processed.toNat+1 := by
    rw [BitVec.toNat_add]
    change (processed.toNat+1)%4294967296=processed.toNat+1
    exact Nat.mod_eq_of_lt (by omega)
  rw [height,depth_exact,Nat.mod_eq_of_lt active]
  omega

end Core033.PathCounterProgram
