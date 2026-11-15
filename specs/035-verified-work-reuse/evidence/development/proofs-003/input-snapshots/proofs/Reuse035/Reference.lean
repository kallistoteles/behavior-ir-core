import Reuse035.State
namespace Reuse035
-- Reference enumerates the complete finite child universe, then looks up the row.
def referenceRows (s : State np nc) (t : Fin nc) : List (Option (Child np)) :=
 List.ofFn fun i => if i=t then (s.children i).map terminalize else s.children i

def referenceAfter (s : State np nc) (t : Fin nc) : State np nc :=
 {s with children := fun i => ((referenceRows s t)[i.val]?).join, position := s.position+1}

-- None delegates to unchanged ordinary Core, not to a new semantic refusal.
def referenceFinish (s : State np nc) (t : Fin nc) : Option (State np nc) :=
 if (s.children t).isSome && decide (representable s) then some (referenceAfter s t) else none
end Reuse035
