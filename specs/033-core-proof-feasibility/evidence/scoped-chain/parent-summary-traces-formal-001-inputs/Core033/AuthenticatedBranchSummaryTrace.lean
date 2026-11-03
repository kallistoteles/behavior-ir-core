import Core033.AuthenticatedBranchCompletion
import Core033.PairedPathSummaryTrace

namespace Core033.AuthenticatedBranchSummaryTrace
open WordIR AuthenticatedBranchCompletion
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

/- Both parent count limbs and both parent aggregate flags come from the same
original changed-child summaries and the sibling derived in the own-node stage.
Full tree/caller binding and no-overflow admission remain explicit obligations. -/
theorem complete_both_parent_summaries (inputs : Nat → Word) (start : inputs 0=1)
    (index : Nat) (bound : index<4) :
    AuthenticatedBranchTrace.iterate 9 inputs (63+index)=
      (PairedPathSummaryTrace.expected (AuthenticatedBranchPairProjection.pairedInputs (midpoint inputs))).getD
        (OwnBranchSummary.metadataSlot index) 0 ∧
    AuthenticatedBranchTrace.iterate 9 inputs (75+index)=
      (PairedPathSummaryTrace.expected (PairedPathSharedFrame.newInputs
        (AuthenticatedBranchPairProjection.pairedInputs (midpoint inputs)))).getD
        (OwnBranchSummary.metadataSlot index) 0 := by
  have paired:=PairedPathSummaryTrace.six_step_original_both_summaries
    (AuthenticatedBranchPairProjection.pairedInputs (midpoint inputs)) (pair_start inputs start) index bound
  exact ⟨(final_positive_port inputs start (63+index) (by omega) (by omega)).trans paired.1,
    (final_positive_port inputs start (75+index) (by omega) (by omega)).trans paired.2⟩

end Core033.AuthenticatedBranchSummaryTrace
