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
def expression (count : Nat) : Expr := reduce (differences count)

def initial (count : Nat) : Builder := Builder.empty (2*count)
def reduced (count : Nat) : Nat × Builder := WordStage.compile (expression count) (initial count)
def checked (count : Nat) : Nat × Builder := WordStage.compile (ControlPrimitives.zero (.input (reduced count).1)) (reduced count).2
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


end Core033.WordVectorEquality
