import Core033.ByteCursor
import Core033.WordSequence

namespace Core033.ByteCursorProgram
open WordIR WordStage

def subtract (left right : WordStage.Expr) : WordStage.Expr :=
  .badd left (.badd (.bnot right) (.literal 1))

def atMost (left right : WordStage.Expr) : WordStage.Expr :=
  .bxor (ControlPrimitives.less right left) (.literal 1)

def nextExpr : WordStage.Expr := .badd (.input 0) (.input 2)
def remainingExpr : WordStage.Expr := subtract (.input 1) nextExpr
def allowedExpr : WordStage.Expr :=
  .band (.band (atMost (.input 0) (.input 1))
    (atMost (.input 2) (subtract (.input 1) (.input 0))))
      (atMost (.input 1) (.literal 1073741824))

def expressions : List WordStage.Expr :=
  [nextExpr,remainingExpr,allowedExpr,ControlPrimitives.zero remainingExpr]

def program : WordIR.Program := WordSequence.program 3 expressions

def expected (inputs : Nat → Word) : List Word :=
  let position:=ByteCursor.next (inputs 0) (inputs 2)
  let remaining:=ByteCursor.remaining position (inputs 1)
  [position,remaining,ByteCursor.allowed (inputs 0) (inputs 1) (inputs 2),WordControl.zeroWord remaining]

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 3 := by
  simp [expressions,nextExpr,remainingExpr,allowedExpr,atMost,subtract,
    ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 3 expressions expressions_bounded]
  simp only [expected,ByteCursor.remaining,BitVec.sub_eq_add_neg,BitVec.neg_eq_not_add]
  rfl

theorem admission_exact (inputs : Nat → Word) :
    (program.eval inputs).getD 2 0=WordControl.boolWord
      (decide (ByteCursor.Admitted (inputs 0) (inputs 1) (inputs 2))) := by
  rw [program_meaning]
  exact ByteCursor.allowed_exact _ _ _

theorem next_position_exact (inputs : Nat → Word)
    (accepted : ByteCursor.Admitted (inputs 0) (inputs 1) (inputs 2)) :
    ((program.eval inputs).getD 0 0).toNat=(inputs 0).toNat+(inputs 2).toNat := by
  rw [program_meaning]
  exact ByteCursor.next_exact _ _ _ accepted

end Core033.ByteCursorProgram
