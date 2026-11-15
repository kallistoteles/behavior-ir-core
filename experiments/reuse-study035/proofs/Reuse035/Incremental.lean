import Reuse035.Reference
namespace Reuse035
-- Candidate makes one point update; it never enumerates referenceRows.
def incrementalAfter (s : State np nc) (t : Fin nc) : State np nc :=
 {s with children := point s.children t ((s.children t).map terminalize), position := s.position+1}
def incrementalFinish (s : State np nc) (t : Fin nc) : Option (State np nc) :=
 match s.children t with
 | none => none
 | some _ => if representable s then some (incrementalAfter s t) else none

structure Views (np nc : Nat) where
 parents : Fin np → Option ParentPhase
 children : Fin nc → Option (Child np)
 activeByOwner : Fin np → Fin nc → Bool

def rebuild (s : State np nc) : Views np nc :=
 ⟨s.parents,s.children,fun p i => match s.children i with
  | none => false
  | some row => decide (row.owner=p ∧ row.phase=.active)⟩

def advance (v : Views np nc) (t : Fin nc) : Views np nc :=
 match v.children t with
 | none => v
 | some row =>
  {v with children := point v.children t (some (terminalize row)),
          activeByOwner := point v.activeByOwner row.owner (point (v.activeByOwner row.owner) t false)}
end Reuse035
