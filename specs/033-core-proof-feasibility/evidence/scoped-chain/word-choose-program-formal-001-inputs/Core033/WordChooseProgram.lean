import Core033.WordBit
import Core033.ControlPrimitives
import Core033.ScalarRanges

namespace Core033.WordChooseProgram
open WordIR WordStage

def choose (values : Nat → Word) (index : Nat) : Word :=
  if index.testBit 2 then
    if index.testBit 1 then (if index.testBit 0 then values 7 else values 6)
    else (if index.testBit 0 then values 5 else values 4)
  else if index.testBit 1 then (if index.testBit 0 then values 3 else values 2)
  else (if index.testBit 0 then values 1 else values 0)

theorem choose_exact (values : Nat → Word) (index : Nat) (bound : index<8) : choose values index=values index := by
  have cases : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 := by omega
  rcases cases with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
  all_goals simp [choose,Nat.testBit_eq_decide_div_mod_eq]

def selectExpr (bit : Nat) (yes no : Expr) : Expr :=
  ControlPrimitives.select (WordBit.expression 8 bit) yes no

def choiceExpr : Expr := selectExpr 2
  (selectExpr 1 (selectExpr 0 (.input 7) (.input 6)) (selectExpr 0 (.input 5) (.input 4)))
  (selectExpr 1 (selectExpr 0 (.input 3) (.input 2)) (selectExpr 0 (.input 1) (.input 0)))

def flagExpr : Expr := ControlPrimitives.zero (.shr (.input 8) 3)
def expressions : List Expr := [choiceExpr,flagExpr]
def program : Program := WordSequence.program 9 expressions

theorem select_expr_meaning (inputs : Nat → Word) (bit : Nat) (yes no : Expr) :
    (selectExpr bit yes no).eval inputs=(if (inputs 8).getLsbD bit then yes.eval inputs else no.eval inputs) := by
  change ControlPrimitives.selectRaw (WordBit.bitWord (inputs 8) bit) (yes.eval inputs) (no.eval inputs)=_
  rw [WordBit.bit_word_exact]
  exact WordControl.select_word_exact _ _ _

theorem choice_expr_meaning (inputs : Nat → Word) : choiceExpr.eval inputs=choose inputs (inputs 8).toNat := by
  simp only [choiceExpr,select_expr_meaning,Expr.eval,choose]
  rfl

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 9 := by
  simp [expressions,choiceExpr,flagExpr,selectExpr,ControlPrimitives.select,ControlPrimitives.zero,
    ControlPrimitives.less,ControlPrimitives.carry,WordBit.expression,Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) :
    program.eval inputs=[choose inputs (inputs 8).toNat,ScalarRanges.flag 3 (inputs 8)] := by
  rw [program,WordSequence.program_meaning 9 expressions expressions_bounded]
  change [choiceExpr.eval inputs,flagExpr.eval inputs]=_
  rw [choice_expr_meaning]
  rfl

theorem exact_admitted_word (inputs : Nat → Word) (bound : (inputs 8).toNat<8) :
    (program.eval inputs).getD 0 0=inputs (inputs 8).toNat := by
  rw [program_meaning]
  exact choose_exact _ _ bound

theorem admission_exact (inputs : Nat → Word) :
    (program.eval inputs).getD 1 0=WordControl.boolWord (decide ((inputs 8).toNat<8)) := by
  rw [program_meaning]
  exact ScalarRanges.flag_exact _ _

end Core033.WordChooseProgram
