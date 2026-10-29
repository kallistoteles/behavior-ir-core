import Reference
namespace Core032

/-- A checked exact logical anchor is distinct from an untrusted witness snapshot. -/
structure Witness where
  before : State
  proposed : Observation
  deriving BEq, DecidableEq, Repr

/-- Complete deterministic recomputation. No producer approval or retained J is used. -/
def check (c : Config) (expected : State) (operation : Operation) (w : Witness) : Bool :=
  decide (w.before = expected ∧ w.proposed = reference c expected operation)

theorem checker_sound (c : Config) (expected : State) (operation : Operation) (w : Witness)
    (accepted : check c expected operation w = true) :
    w.before = expected ∧ w.proposed = reference c expected operation := by
  exact of_decide_eq_true accepted

theorem checker_complete (c : Config) (expected : State) (operation : Operation) :
    ∃ w, check c expected operation w = true := by
  exact ⟨⟨expected, reference c expected operation⟩, by simp [check]⟩

/-- The result theorem covers refusal and error, not just allowed transitions. -/
theorem accepted_preserves_exact_outcome (c : Config) (expected : State)
    (operation : Operation) (w : Witness) (accepted : check c expected operation w = true) :
    w.proposed.outcome = (reference c expected operation).outcome ∧
    w.proposed.after = (reference c expected operation).after ∧
    w.proposed.commands = (reference c expected operation).commands ∧
    w.proposed.queryMembers = (reference c expected operation).queryMembers := by
  have h := (checker_sound c expected operation w accepted).2
  exact ⟨congrArg Observation.outcome h, congrArg Observation.after h,
    congrArg Observation.commands h, congrArg Observation.queryMembers h⟩

end Core032
