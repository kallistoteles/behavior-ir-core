import Init.Data.List.OfFn
import Init.Data.Fin.Lemmas
import Init.Data.Repr
namespace Reuse035
inductive ParentPhase where
 | openState | gone | abandoned
 deriving DecidableEq, Repr
inductive ChildPhase where
 | active | terminal
 deriving DecidableEq, Repr
structure Child (np : Nat) where
 owner : Fin np
 phase : ChildPhase
 deriving DecidableEq, Repr
structure State (np nc : Nat) where
 parents : Fin np → Option ParentPhase
 children : Fin nc → Option (Child np)
 usedParents : Fin np → Bool
 usedChildren : Fin nc → Bool
 position : Nat
 lineage : String
 commands : List String

def terminalize (row : Child np) : Child np := {row with phase := .terminal}
def point (f : Fin n → α) (i : Fin n) (v : α) : Fin n → α := fun j => if j=i then v else f j

def representable (s : State np nc) : Prop := s.position < 18446744073709551615

instance (s : State np nc) : Decidable (representable s) := inferInstanceAs (Decidable (s.position < 18446744073709551615))

def valid (s : State np nc) : Prop :=
 ∀ i row, s.children i = some row →
   (s.parents row.owner).isSome = true ∧
   (row.phase = .active → s.parents row.owner = some .openState)
end Reuse035
