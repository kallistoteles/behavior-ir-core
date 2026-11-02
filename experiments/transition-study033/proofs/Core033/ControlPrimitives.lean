import Core033.WordSequence
import Core033.WideControl

namespace Core033.ControlPrimitives
open WordIR WordStage

def carry (a b : WordStage.Expr) : WordStage.Expr :=
  .shr (.bxor (.band a b) (.band (.bxor a b) (.bnot (.badd a b)))) 31

def less (a b : WordStage.Expr) : WordStage.Expr := carry b (.bnot a)
def zero (a : WordStage.Expr) : WordStage.Expr := .bxor (less (.literal 0) a) (.literal 1)
def sign (a : WordStage.Expr) : WordStage.Expr := .shr a 31

def select (condition yes no : WordStage.Expr) : WordStage.Expr :=
  let mask:=.badd (.bnot condition) (.literal 1)
  .bxor (.band mask yes) (.band (.bnot mask) no)

def selectRaw (condition yes no : Word) : Word :=
  let mask := ~~~condition+1
  (mask &&& yes) ^^^ ((~~~mask) &&& no)

def expressions : List WordStage.Expr :=
  [.badd (.input 0) (.input 2),
   .badd (.badd (.input 1) (.input 3)) (carry (.input 0) (.input 2)),
   carry (.input 0) (.input 2),less (.input 0) (.input 2),zero (.input 0),sign (.input 1),
   select (.input 4) (.input 5) (.input 6)]

def program : WordIR.Program := WordSequence.program 7 expressions

def expected (inputs : Nat → Word) : List Word :=
  [inputs 0+inputs 2,inputs 1+inputs 3+WordControl.carryWord (inputs 0) (inputs 2),
   WordControl.carryWord (inputs 0) (inputs 2),WordControl.lessWord (inputs 0) (inputs 2),
   WordControl.zeroWord (inputs 0),WordControl.signWord (inputs 1),selectRaw (inputs 4) (inputs 5) (inputs 6)]

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 7 := by
  simp [expressions,carry,less,zero,sign,select,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 7 expressions expressions_bounded]
  rfl

theorem full_u64_addition (inputs : Nat → Word) :
    ((expected inputs).getD 0 0).toNat+4294967296*((expected inputs).getD 1 0).toNat=
      ((WideControl.Pair.raw ⟨inputs 0,inputs 1⟩)+(WideControl.Pair.raw ⟨inputs 2,inputs 3⟩))%2^64 := by
  exact WideControl.pair_add_exact ⟨inputs 0,inputs 1⟩ ⟨inputs 2,inputs 3⟩

theorem conditional_output (inputs : Nat → Word) (condition : Bool)
    (encoded : inputs 4=WordControl.boolWord condition) :
    (expected inputs).getD 6 0=(if condition then inputs 5 else inputs 6) := by
  change selectRaw (inputs 4) (inputs 5) (inputs 6)=_
  rw [encoded]
  exact WordControl.select_word_exact condition (inputs 5) (inputs 6)

end Core033.ControlPrimitives
