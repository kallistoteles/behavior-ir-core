import Core033.PairedPathLoop
import Core033.PairedPathFinalizeGuards

/- Conditional local terminal composition. Original root selection, actual path
membership, all preceding guards and Init remain physical caller obligations.
Phase 8 is the local return, never a certified public Core endpoint. -/
namespace Core033.PairedPathCompletion
open WordIR PairedPathLoop
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def finished (inputs : Nat → Word) (siblings : Nat → Nat → Word) (index : Nat) : Word :=
  (PairedPathFinalize.program.eval (terminal inputs siblings)).getD index 0

theorem finished_state (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (index : Nat) (bound : index<96) (notPhase : index≠0) :
    finished inputs siblings index=terminal inputs siblings index :=
  (PairedPathFinalizeGuards.state_output _ index bound).trans
    (PairedPathFinalize.state_preserved _ index notPhase)

theorem finished_phase (inputs : Nat → Word) (siblings : Nat → Nat → Word) :
    finished inputs siblings 0=8 :=
  (PairedPathFinalizeGuards.state_output _ 0 (by decide)).trans
    (PairedPathFinalize.final_phase _)

theorem admitted_original_old_root (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (admitted : PairedPathFinalize.Admitted (terminal inputs siblings))
    (index : Nat) (bound : index<8) :
    finished inputs siblings (55+index)=inputs (79+index) := by
  exact (finished_state _ _ (55+index) (by omega) (by omega)).trans
    ((PairedPathFinalize.admitted_old_root _ admitted index bound).trans
      (terminal_context _ _ index (by omega)))

theorem admitted_original_old_count (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (admitted : PairedPathFinalize.Admitted (terminal inputs siblings))
    (index : Nat) (bound : index<2) :
    finished inputs siblings (63+index)=inputs (87+index) := by
  have contextWord : terminal inputs siblings (87+index)=inputs (87+index) := by
    simpa only [Nat.add_assoc] using terminal_context inputs siblings (8+index) (by omega)
  exact (finished_state _ _ (63+index) (by omega) (by omega)).trans
    ((PairedPathFinalize.admitted_old_count _ admitted index bound).trans contextWord)

theorem complete_new_summary_preserved (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (index : Nat) (bound : index<12) :
    finished inputs siblings (67+index)=terminal inputs siblings (67+index) :=
  finished_state _ _ (67+index) (by omega) (by omega)

theorem accepted_original_old_root {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (valuation : Nat → F)
    (accepted : (PairedPathFinalizeGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<96 →
      valuation (WordField.packed index)=((terminal inputs siblings index).toNat : F))
    (index : Nat) (bound : index<8) :
    finished inputs siblings (55+index)=inputs (79+index) :=
  admitted_original_old_root inputs siblings
    (PairedPathFinalizeGuards.accepted_admission large valuation _ accepted inputValues)
    index bound

end Core033.PairedPathCompletion
