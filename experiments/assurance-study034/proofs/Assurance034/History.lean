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

-- Abstract publication behavior, independent of the chosen business semantics.
-- A semantic refusal carries the original reason and proposes no state/outbox.
inductive SemanticResult (S C : Type) where
 | allowed (after : S) (commands : List C)
 | refused (originalCode : String)
def applyResult {S C : Type} (before : S) (outbox : List C) : SemanticResult S C → S × List C
 | .allowed after commands => (after,outbox ++ commands)
 | .refused _ => (before,outbox)

theorem refusal_history_unchanged {S C : Type} (before : S) (outbox : List C) (originalCode : String) :
 applyResult before outbox (.refused originalCode) = (before,outbox) := rfl

theorem duplicate_commands_preserved {C : Type} (c : C) :
 ([c,c] : List C).length = 2 ∧ ([c,c] : List C)[0]? = some c ∧ ([c,c] : List C)[1]? = some c := by
 simp
end Assurance034
