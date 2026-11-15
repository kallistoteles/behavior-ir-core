import Reuse035.Safety
namespace Reuse035
structure Subject where
 module : String
 policy : String
 profile : String
 writer : String
 deriving DecidableEq
structure Expected where
 subject : Subject
 lineage : String
 position : Nat
 deriving DecidableEq
structure Ground (np nc : Nat) where
 subject : Subject
 state : State np nc
 established : valid state
inductive Publication where
 | applied | refused | stale | uncertain
 deriving DecidableEq

def expectedParent (g : Ground np nc) : Expected :=
 ⟨g.subject,g.state.lineage,g.state.position⟩
-- Actual confirmed publication for this request is a native bridge premise.
-- Coordinates and the admitted existing-child/representability guards are
-- checked again; uncertain receipts have no authority, including on same data.
def promote (g : Ground np nc) (expected : Expected) (t : Fin nc)
 (receipt : Publication) : Option (Ground np nc) :=
 if expected=expectedParent g then
  if (g.state.children t).isSome && decide (representable g.state) then
   match receipt with
   | .applied => some ⟨g.subject,incrementalAfter g.state t,finish_preserves_safety _ _ g.established⟩
   | _ => none
  else none
 else none

theorem ground_advance (g : Ground np nc) (t : Fin nc) (row : Child np)
 (bound : g.state.children t = some row) (fits : representable g.state) :
 ∃ child, promote g (expectedParent g) t .applied = some child ∧
 child.subject=g.subject ∧ child.state=incrementalAfter g.state t ∧ valid child.state := by
 exact ⟨⟨g.subject,incrementalAfter g.state t,finish_preserves_safety _ _ g.established⟩,
  by simp [promote,bound,fits],rfl,rfl,finish_preserves_safety _ _ g.established⟩
theorem refusal_no_promotion (g : Ground np nc) (expected : Expected) (t : Fin nc) :
 promote g expected t .refused = none := by simp [promote]
theorem stale_no_promotion (g : Ground np nc) (expected : Expected) (t : Fin nc) :
 promote g expected t .stale = none ∧
 (expected ≠ expectedParent g → promote g expected t .applied = none) := by
 constructor
 · simp [promote]
 · intro different; simp [promote,different]
theorem uncertain_no_authority (g : Ground np nc) (expected : Expected) (t : Fin nc) :
 promote g expected t .uncertain = none := by simp [promote]
end Reuse035
