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


end Core033.WordVectorEquality
