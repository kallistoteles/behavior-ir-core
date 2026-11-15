import Assurance034.Segments
import Assurance034.History
import Assurance034.Publication
import Assurance034.Countermodels
open Lean Elab Command Term Meta
elab "#assurance_audit " root:ident " : " expected:term : command => do
  let report ← liftTermElabM do
    let info ← getConstInfo root.getId
    match info with
    | .thmInfo _ => pure ()
    | _ => throwError "Not a theorem"
    let type ← elabTerm expected none
    let type ← instantiateMVars type
    let checked ← Safety.auditExpected root.getId type
    return Json.mkObj [("checked",checked),("type_repr",toJson (reprStr info.type))]
  liftIO <| IO.println s!"CORE034_AUDIT {report.compress}"
#assurance_audit Assurance034.segment_safe : (∀ {np nc} {s final : Safety.Lifecycle.State np nc} {states}
 (initial : Safety.Lifecycle.safe s) (coverage : Chain (CoveredStep np nc) s states final) ,
 Throughout Safety.Lifecycle.safe s states ∧ Safety.Lifecycle.safe final)
#assurance_audit Assurance034.segments_compose : (∀ {S : Type} {R : S → S → Prop} {start boundary final : S} {left right}
 (first : Chain R start left boundary) (second : Chain R boundary right final) ,
 Chain R start (left ++ right) final)
#assurance_audit Assurance034.policy_change_global_claim : (∀ {S : Type} {P Q G : S → Prop} {start boundary : S} {left right}
 (first : Throughout P start left) (second : Throughout Q boundary right)
 (leftImplies : ∀ s, P s → G s) (rightImplies : ∀ s, Q s → G s)
 (adjoining : boundary = (left.getLast?).getD start) ,
 Throughout G start (left ++ right))
#assurance_audit Assurance034.checked_history_exact : (∀ (c : Core032.Config) (s : Core032.State)
 (ops : List Core032.Operation) (ws : List Core032.Witness)
 (accepted : Core032.checkHistory c s ops ws = true) ,
 ws.map Core032.Witness.proposed = Core032.executeHistory c s ops)
#assurance_audit Assurance034.history_length_position : (∀ {exact : Subject → Subject → Prop} {start final : Subject} {states}
 (coverage : Chain (EventStep exact) start states final) ,
 final.position = start.position + states.length ∧ final.lineage = start.lineage)
#assurance_audit Assurance034.continuation_equivalent : (∀ {exact : Subject → Subject → Prop} {start basis final : Subject} {prior suffix}
 (established : Chain (EventStep exact) start prior basis) (checkedSuffix : Chain (EventStep exact) basis suffix final) ,
 Chain (EventStep exact) start (prior ++ suffix) final)
#assurance_audit Assurance034.refusal_history_unchanged : (∀ {S C : Type} (before after : S) (oldOutbox newOutbox : List C)
 (semanticRefusal : Refusal before after oldOutbox newOutbox) ,
 after = before ∧ newOutbox = oldOutbox)
#assurance_audit Assurance034.duplicate_commands_preserved : (∀ {C : Type} (c : C) ,
 ([c,c] : List C).length = 2 ∧ ([c,c] : List C)[0]? = some c ∧ ([c,c] : List C)[1]? = some c)
#assurance_audit Assurance034.publication_conditional : (∀ {S R C : Type} (expected : Subject)
 (candidate current published : Publication S R C)
 (atomic : Published expected candidate current published) ,
 current.subject = expected ∧ published.subject = candidate.subject ∧ published.state = candidate.state ∧
 published.result = candidate.result ∧ published.outbox = candidate.outbox)
#assurance_audit Assurance034.current_valid_not_safe_past : (∃ (old current : Safety.Lifecycle.State 1 1),
 Safety.Lifecycle.safe current ∧ ¬ Safety.Lifecycle.safe old)
#assurance_audit Assurance034.preservation_not_exact_output : (∃ (requested actual : Nat → Nat),
 (∀ n, n > 0 → requested n > 0) ∧ (∀ n, n > 0 → actual n > 0) ∧ requested 1 ≠ actual 1)
#assurance_audit Assurance034.certificate_not_enforcement : (∃ (approved executed : Nat → Nat) (start : Nat),
 (∀ n, n > 0 → approved n > 0) ∧ start > 0 ∧ ¬ executed start > 0)
#assurance_audit Assurance034.metadata_not_verified_basis : (∃ (flag checked : Bool), flag = true ∧ checked = false)
#assurance_audit Assurance034.valid_branch_not_expected_branch : (∃ (expected supplied : List Nat), expected.length = supplied.length ∧ expected ≠ supplied)
#assurance_audit Assurance034.uncontrolled_writer_breaks_induction : (∃ (permitted : Nat → Nat → Prop) (start bad : Nat),
 (∀ s t, permitted s t → s > 0 → t > 0) ∧ start > 0 ∧ bad = 0 ∧ ¬ permitted start bad)
#assurance_audit Assurance034.unsafe_migration : (∃ (validCore safe : Nat → Prop) (old target : Nat),
 validCore old ∧ validCore target ∧ safe old ∧ ¬ safe target)
#assurance_audit Assurance034.weakened_policy_not_global : (∃ (strong weak : Nat → Prop) (state : Nat), weak state ∧ ¬ strong state)
