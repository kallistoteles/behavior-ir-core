import Core033.PairedPathSharedFrame
import Core033.LocalParentSummary

namespace Core033.PairedPathSummaryTrace
open WordIR PairedPathTrace
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def expected (inputs : Nat → Word) :=
  ParentMetadataProgram.expected (LocalParentSummary.metadataInputs (PairedPathRouting.routedWord inputs))

theorem metadata_parent_index (index : Nat) (bound : index<4) :
    PairedPathRound.parentIndex (8+index)=OwnBranchSummary.summarySlot index := by
  have cases : index=0 ∨ index=1 ∨ index=2 ∨ index=3 := by omega
  rcases cases with rfl|rfl|rfl|rfl
  all_goals rfl

theorem old_metadata (inputs : Nat → Word) (start : inputs 0=1) (index : Nat) (bound : index<4) :
    iterate 3 inputs (63+index)=(expected inputs).getD (OwnBranchSummary.metadataSlot index) 0 := by
  have stored:=PairedPathAssignments.old_parent_word (next (next inputs)) (8+index) (by omega)
  have phase:=PairedPathDigestTrace.after_two_old_phase inputs start
  have selected := (if_pos phase :
    (if next (next inputs) 0=3 then PairedPathStateMeaning.localWords (next (next inputs))
      (PairedPathRound.parentIndex (8+index)) else next (next inputs) (55+(8+index)))=_)
  have indices : 63+index=55+(8+index) := by omega
  have localIndex:=congrArg (PairedPathStateMeaning.localWords (next (next inputs))) (metadata_parent_index index bound)
  have localReturn:=PairedPathRoundTrace.third_local inputs (Or.inl start) (OwnBranchSummary.summarySlot index)
  have summary:=LocalParentSummary.returned_metadata (PairedPathRouting.routedWord inputs)
    (PairedPathRoundTrace.local_start inputs (Or.inl start)) index bound
  exact (congrArg (iterate 3 inputs) indices).trans
    (stored.trans (selected.trans (localIndex.trans (localReturn.trans summary))))

theorem new_metadata (inputs : Nat → Word) (start : inputs 0=4) (index : Nat) (bound : index<4) :
    iterate 3 inputs (75+index)=(expected inputs).getD (OwnBranchSummary.metadataSlot index) 0 := by
  have stored:=PairedPathAssignments.new_parent_word (next (next inputs)) (8+index) (by omega)
  have phase:=PairedPathDigestTrace.after_two_new_phase inputs start
  have selected := (if_pos phase :
    (if next (next inputs) 0=6 then PairedPathStateMeaning.localWords (next (next inputs))
      (PairedPathRound.parentIndex (8+index)) else next (next inputs) (67+(8+index)))=_)
  have indices : 75+index=67+(8+index) := by omega
  have localIndex:=congrArg (PairedPathStateMeaning.localWords (next (next inputs))) (metadata_parent_index index bound)
  have localReturn:=PairedPathRoundTrace.third_local inputs (Or.inr start) (OwnBranchSummary.summarySlot index)
  have summary:=LocalParentSummary.returned_metadata (PairedPathRouting.routedWord inputs)
    (PairedPathRoundTrace.local_start inputs (Or.inr start)) index bound
  exact (congrArg (iterate 3 inputs) indices).trans
    (stored.trans (selected.trans (localIndex.trans (localReturn.trans summary))))

theorem midpoint_new_expected (inputs : Nat → Word) (start : inputs 0=1) :
    expected (iterate 3 inputs)=expected (PairedPathSharedFrame.newInputs inputs) := by
  have same:=WordInline.input_congr ParentMetadataProgram.program PathFrameAdvanceMeaning.metadata_valid
    (LocalParentSummary.metadataInputs (PairedPathRouting.routedWord (iterate 3 inputs)))
    (LocalParentSummary.metadataInputs (PairedPathRouting.routedWord (PairedPathSharedFrame.newInputs inputs)))
    (by intro index bound
        change index<8 at bound
        exact PairedPathSharedFrame.exact_new_frame inputs start (27+index) (by omega) (by omega))
  exact (ParentMetadataProgram.program_meaning _).symm.trans (same.trans (ParentMetadataProgram.program_meaning _))

theorem six_step_original_both_summaries (inputs : Nat → Word) (start : inputs 0=1)
    (index : Nat) (bound : index<4) :
    iterate 6 inputs (63+index)=(expected inputs).getD (OwnBranchSummary.metadataSlot index) 0 ∧
    iterate 6 inputs (75+index)=(expected (PairedPathSharedFrame.newInputs inputs)).getD (OwnBranchSummary.metadataSlot index) 0 := by
  have split:=PairedPathDigestTrace.iterate_add 3 3 inputs
  have phase:=PairedPathDigestTrace.midpoint_phase inputs start
  have oldPreserved:=PairedPathDigestTrace.old_preserved_three (iterate 3 inputs) phase (8+index) (by omega)
  have oldIndex : 63+index=55+(8+index) := by omega
  have preserved : iterate 3 (iterate 3 inputs) (63+index)=iterate 3 inputs (63+index) := by
    exact (congrArg (iterate 3 (iterate 3 inputs)) oldIndex).trans
      (oldPreserved.trans (congrArg (iterate 3 inputs) oldIndex.symm))
  have newExpected:=congrArg (fun values : List Word=>values.getD (OwnBranchSummary.metadataSlot index) 0)
    (midpoint_new_expected inputs start)
  exact ⟨(congrArg (fun frame=>frame (63+index)) split).trans (preserved.trans (old_metadata inputs start index bound)),
    (congrArg (fun frame=>frame (75+index)) split).trans ((new_metadata (iterate 3 inputs) phase index bound).trans newExpected)⟩

end Core033.PairedPathSummaryTrace
