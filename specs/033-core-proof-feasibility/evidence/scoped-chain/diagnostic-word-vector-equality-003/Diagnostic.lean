import Core033.WordSequence
import Core033.ControlPrimitives
import Core033.WordSourceValidity
import Core033.KernelDecide

/- Full-word equality; useful for full key data and full digest/state roots.
No hash-equality, low-bit or caller-Boolean shortcut. The XOR/OR reduction is
materialized once before its zero test, preserving actual register sharing. -/
namespace Core033.WordVectorEquality
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def orExpression (left right : Expr) : Expr := .bnot (.band (.bnot left) (.bnot right))
def reduce : List Expr → Expr
  | [] => .literal 0
  | first::rest => orExpression first (reduce rest)
def differences (count : Nat) : List Expr :=
  (List.range count).map (fun index=>.bxor (.input index) (.input (count+index)))
def expression (count : Nat) := reduce (differences count)

def initial (count : Nat) : Builder := Builder.empty (2*count)
def reduced (count : Nat) := WordStage.compile (expression count) (initial count)
def checked (count : Nat) := WordStage.compile (ControlPrimitives.zero (.input (reduced count).1)) (reduced count).2
def program (count : Nat) : Program := ⟨2*count,(checked count).2.operations,[(checked count).1]⟩

theorem or_meaning (inputs : Nat → Word) (left right : Expr) :
    (orExpression left right).eval inputs=left.eval inputs ||| right.eval inputs := by
  simp only [orExpression,Expr.eval,BitVec.not_and,BitVec.not_not]

theorem reduce_meaning (inputs : Nat → Word) (expressions : List Expr) :
    (reduce expressions).eval inputs=(expressions.map (fun expression=>expression.eval inputs)).foldr (fun x y=>x ||| y) 0 := by
  induction expressions with
  | nil => rfl
  | cons first rest ih => simp only [reduce,or_meaning,List.map_cons,List.foldr_cons,ih]

theorem reduce_bounded (expressions : List Expr) (limit : Nat)
    (bounded : ∀ expression∈expressions,expression.Bounded limit) : (reduce expressions).Bounded limit := by
  induction expressions with
  | nil => trivial
  | cons first rest ih =>
    refine ⟨bounded first (by simp),?_⟩
    exact ih (by intro expression member;exact bounded expression (List.mem_cons_of_mem _ member))

theorem expression_bounded (count : Nat) : (expression count).Bounded (2*count) := by
  apply reduce_bounded
  intro expression member
  obtain ⟨index,inRange,rfl⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp inRange
  change index<2*count ∧ count+index<2*count
  omega

theorem or_zero (left right : Word) : left ||| right=0 ↔ left=0 ∧ right=0 := BitVec.or_eq_zero_iff

theorem xor_zero (left right : Word) : left ^^^ right=0 ↔ left=right := BitVec.xor_eq_zero_iff

theorem or_fold_zero (words : List Word) : words.foldr (fun x y=>x ||| y) 0=0 ↔ ∀ word∈words,word=0 := by
  induction words with
  | nil => simp
  | cons first rest ih => simp only [List.foldr_cons,or_zero,ih,List.forall_mem_cons]

theorem reduction_zero (count : Nat) (inputs : Nat → Word) :
    (expression count).eval inputs=0 ↔ ∀ index,index<count → inputs index=inputs (count+index) := by
  rw [expression,reduce_meaning,or_fold_zero]
  simp only [differences,List.map_map,Function.comp_def,List.forall_mem_map,List.mem_range,
    Expr.eval,xor_zero]

theorem program_meaning (count : Nat) (inputs : Nat → Word) :
    (program count).eval inputs=[WordControl.boolWord (decide (∀ index,index<count → inputs index=inputs (count+index)))] := by
  have reduction:=WordStage.compile_sound (expression count) (initial count) inputs (expression_bounded count)
  have reductionBound : (reduced count).1<(reduced count).2.next := reduction.1
  have reductionValue : (reduced count).2.values inputs (reduced count).1=(expression count).eval inputs := reduction.2
  have tested:=WordStage.compile_sound (ControlPrimitives.zero (.input (reduced count).1))
    (reduced count).2 inputs (by
      simp only [ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded]
      tauto)
  change Meaning (checked count).2 inputs (checked count).1
    (WordControl.zeroWord ((reduced count).2.values inputs (reduced count).1)) at tested
  rw [reductionValue,WordControl.zero_word_exact] at tested
  have bits : decide ((expression count).eval inputs=0)=
      decide (∀ index,index<count → inputs index=inputs (count+index)) :=
    by
      apply Bool.eq_iff_iff.mpr
      simp only [decide_eq_true_eq]
      exact reduction_zero count inputs
  rw [bits] at tested
  have inputsExact : (checked count).2.inputCount=2*count :=
    ((compile_extends _ (reduced count).2).1).trans (compile_extends (expression count) (initial count)).1
  change [WordIR.run (2*count) (checked count).2.operations inputs (checked count).1]=_
  have execution:=congrArg (fun size=>WordIR.run size (checked count).2.operations inputs (checked count).1) inputsExact.symm
  exact congrArg List.singleton (execution.trans tested.2)

def keyProgram := program 48
def digestProgram := program 8

theorem key_valid : keyProgram.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem digest_valid : digestProgram.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

end Core033.WordVectorEquality
