import Assurance034.Claims
namespace Assurance034
-- Reuse the pinned exact-observation proof. Restricted Core032 semantics;
-- application to native LD8 requires an explicit runtime correspondence bridge.
theorem checked_history_exact (c : Core032.Config) (s : Core032.State)
 (ops : List Core032.Operation) (ws : List Core032.Witness)
 (accepted : Core032.checkHistory c s ops ws = true) :
 ws.map Core032.Witness.proposed = Core032.executeHistory c s ops :=
 Core032.history_exact c s ops ws accepted

-- Abstract complete subject relation supplied by the accepted Core contract.
-- Each edge retains its exact before/after coordinates; validity alone is not exact.
def EventStep (exact : Subject → Subject → Prop) (before after : Subject) : Prop :=
 exact before after ∧ after.position = before.position + 1 ∧ after.lineage = before.lineage

theorem history_length_position {exact : Subject → Subject → Prop} {start final : Subject} {states}
 (coverage : Chain (EventStep exact) start states final) :
 final.position = start.position + states.length ∧ final.lineage = start.lineage := by
 induction coverage with
 | nil => exact ⟨by simp,rfl⟩
 | cons step tail ih =>
   constructor
   · simp only [List.length_cons]
     rw [ih.1,step.2.1]
     omega
   · exact ih.2.trans step.2.2

theorem continuation_equivalent {exact : Subject → Subject → Prop} {start basis final : Subject} {prior suffix}
 (established : Chain (EventStep exact) start prior basis) (checkedSuffix : Chain (EventStep exact) basis suffix final) :
 Chain (EventStep exact) start (prior ++ suffix) final := by
 induction established with
 | nil => exact checkedSuffix
 | cons step tail ih => exact .cons step (ih checkedSuffix)

-- The refusal relation is a semantics premise, never evidence derived from a flag.
def Refusal {S C : Type} (before after : S) (oldOutbox newOutbox : List C) : Prop :=
 after = before ∧ newOutbox = oldOutbox

theorem refusal_history_unchanged {S C : Type} (before after : S) (oldOutbox newOutbox : List C)
 (semanticRefusal : Refusal before after oldOutbox newOutbox) :
 after = before ∧ newOutbox = oldOutbox := semanticRefusal

theorem duplicate_commands_preserved {C : Type} (c : C) :
 ([c,c] : List C).length = 2 ∧ ([c,c] : List C)[0]? = some c ∧ ([c,c] : List C)[1]? = some c := by
 simp
end Assurance034
