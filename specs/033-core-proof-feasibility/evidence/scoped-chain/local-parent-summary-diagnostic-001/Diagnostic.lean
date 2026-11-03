import Core033.OwnBranchSummary

namespace Core033.LocalParentSummary
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def returned (frame : Nat → Word) :=
  PathRoundDispatchTrace.next (PathRoundDispatchTrace.next (PathRoundDispatchTrace.next frame))
def metadataInputs (frame : Nat → Word) (index : Nat) := frame (27+index)

theorem hashed_fields (frame : Nat → Word) (index : Nat) (bound : index<34) :
    PathFrameThreeStage.afterHash frame (1+index)=frame (1+index) :=
  (FrameHashControllerState.preserved_frame _ index bound).trans
    (FrameHashControllerState.preserved_frame _ index bound)

theorem hashed_metadata_inputs (frame : Nat → Word) (index : Nat) (bound : index<8) :
    PathFrameAdvanceMeaning.metadataInputs (PathFrameThreeStage.afterHash frame) index=metadataInputs frame index := by
  change PathFrameThreeStage.afterHash frame (27+index)=frame (27+index)
  have indices : 27+index=1+(26+index) := by omega
  exact (congrArg (PathFrameThreeStage.afterHash frame) indices).trans
    ((hashed_fields frame (26+index) (by omega)).trans (congrArg frame indices.symm))

theorem metadata_evaluation (frame : Nat → Word) :
    ParentMetadataProgram.program.eval (PathFrameAdvanceMeaning.metadataInputs (PathFrameThreeStage.afterHash frame))=
      ParentMetadataProgram.expected (metadataInputs frame) :=
  (WordInline.input_congr ParentMetadataProgram.program PathFrameAdvanceMeaning.metadata_valid _ _
    (hashed_metadata_inputs frame)).trans (ParentMetadataProgram.program_meaning _)

theorem returned_metadata (frame : Nat → Word) (start : frame 0=1)
    (index : Nat) (bound : index<4) :
    returned frame (OwnBranchSummary.summarySlot index)=
      (ParentMetadataProgram.expected (metadataInputs frame)).getD (OwnBranchSummary.metadataSlot index) 0 := by
  have slotBound : OwnBranchSummary.summarySlot index<43 := by
    unfold OwnBranchSummary.summarySlot
    split_ifs <;> decide
  have localState:=PathRoundDispatchTrace.third_state frame start (OwnBranchSummary.summarySlot index) slotBound
  have advanced:=PathFrameAdvanceSoundness.state_word (PathFrameThreeStage.afterHash frame)
    (OwnBranchSummary.summarySlot index) slotBound
  have projection:=OwnBranchSummary.state_projection (PathFrameThreeStage.afterHash frame) (OwnBranchSummary.summarySlot index)
  have selected:=OwnBranchSummary.projected_summary (PathFrameThreeStage.afterHash frame)
    (DigestWords.program.eval (PathFrameAdvanceMeaning.digestInputs (PathFrameThreeStage.afterHash frame)))
    (ParentMetadataProgram.program.eval (PathFrameAdvanceMeaning.metadataInputs (PathFrameThreeStage.afterHash frame)))
    (PathCounterProgram.program.eval (PathFrameAdvanceMeaning.geometryInputs (PathFrameThreeStage.afterHash frame))) index bound
  have values:=congrArg (fun words : List Word=>words.getD (OwnBranchSummary.metadataSlot index) 0) (metadata_evaluation frame)
  exact localState.trans (advanced.trans (projection.trans (selected.trans values)))

end Core033.LocalParentSummary
