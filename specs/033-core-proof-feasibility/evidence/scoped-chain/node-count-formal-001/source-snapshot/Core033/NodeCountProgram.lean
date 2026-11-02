import Core033.NodeCounts
import Core033.ControlPrimitives

namespace Core033.NodeCountProgram
open WordIR WordStage

def withinExpr (low high : WordStage.Expr) : WordStage.Expr :=
  .band (ControlPrimitives.zero high)
    (.bxor (ControlPrimitives.less (.literal 1048576) low) (.literal 1))

def expressions : List WordStage.Expr :=
  let low:=.badd (.input 0) (.input 2)
  let high:=.badd (.badd (.input 1) (.input 3)) (ControlPrimitives.carry (.input 0) (.input 2))
  [low,high,.band (.band (withinExpr (.input 0) (.input 1)) (withinExpr (.input 2) (.input 3)))
    (withinExpr low high)]

def program : WordIR.Program := WordSequence.program 4 expressions

def left (inputs : Nat → Word) : WideControl.Pair := ⟨inputs 0,inputs 1⟩
def right (inputs : Nat → Word) : WideControl.Pair := ⟨inputs 2,inputs 3⟩

def expected (inputs : Nat → Word) : List Word :=
  let sum:=WideControl.add (left inputs) (right inputs)
  [sum.low,sum.high,NodeCounts.allowed (left inputs) (right inputs)]

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 4 := by
  simp [expressions,withinExpr,ControlPrimitives.zero,ControlPrimitives.less,
    ControlPrimitives.carry,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 4 expressions expressions_bounded]
  rfl

theorem admission_exact (inputs : Nat → Word) :
    (program.eval inputs).getD 2 0=WordControl.boolWord
      (decide ((left inputs).raw+(right inputs).raw≤1048576)) := by
  rw [program_meaning]
  exact NodeCounts.allowed_exact _ _

theorem exact_admitted_sum (inputs : Nat → Word)
    (bounded : (left inputs).raw+(right inputs).raw≤1048576) :
    ((program.eval inputs).getD 0 0).toNat+
      4294967296*((program.eval inputs).getD 1 0).toNat=(left inputs).raw+(right inputs).raw := by
  rw [program_meaning]
  exact NodeCounts.exact_sum _ _ bounded

end Core033.NodeCountProgram
