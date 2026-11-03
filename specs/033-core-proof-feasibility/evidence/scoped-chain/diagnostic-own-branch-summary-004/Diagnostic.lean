import Core033.OwnBranchHash

namespace Core033.OwnBranchSummary
open WordIR OwnBranchHash OwnBranchParentPorts
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def hashed (inputs : Nat → Word) := PathFrameThreeStage.afterHash (OwnBranchRouting.routed inputs)

theorem fields_preserved (inputs : Nat → Word) (index : Nat) (bound : index<34) :
    hashed inputs (1+index)=OwnBranchRouting.routed inputs (1+index) := by
  exact (FrameHashControllerState.preserved_frame _ index bound).trans
    (FrameHashControllerState.preserved_frame _ index bound)

theorem metadata_inputs (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    PathFrameAdvanceMeaning.metadataInputs (hashed inputs) index=
      ParentBranchProgram.metadataInputs (expected inputs) index := by
  have preserved:=fields_preserved inputs (26+index) (by omega)
  have projected : PathFrameAdvanceMeaning.metadataInputs (hashed inputs) index=
      OwnBranchRouting.routed inputs (27+index) := by
    have indices : 1+(26+index)=27+index := by omega
    exact (congrArg (hashed inputs) indices.symm).trans
      (preserved.trans (congrArg (OwnBranchRouting.routed inputs) indices))
  apply projected.trans
  have alternatives : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
  all_goals rfl

theorem metadata_evaluation (inputs : Nat → Word) :
    ParentMetadataProgram.program.eval (PathFrameAdvanceMeaning.metadataInputs (hashed inputs))=
      ParentMetadataProgram.expected (ParentBranchProgram.metadataInputs (expected inputs)) :=
  (WordInline.input_congr ParentMetadataProgram.program PathFrameAdvanceMeaning.metadata_valid _ _
    (metadata_inputs inputs)).trans (ParentMetadataProgram.program_meaning _)

/- A projection over abstract evaluated lists prevents the kernel from unfolding
an entire controlled SHA execution just to select a metadata word. -/
def project (frame : Nat → Word) (digest metadata geometry : List Word) (index : Nat) : Word :=
  if index=0 then 4 else if index=2 then geometry.getD 0 0
  else if 11≤index ∧ index<19 then digest.getD (index-11) 0
  else if index=27 then metadata.getD 0 0 else if index=28 then metadata.getD 1 0
  else if index=31 then metadata.getD 3 0 else if index=33 then metadata.getD 4 0
  else frame index

theorem state_projection (frame : Nat → Word) (index : Nat) :
    PathFrameAdvanceMeaning.stateWord frame index=project frame
      (DigestWords.program.eval (PathFrameAdvanceMeaning.digestInputs frame))
      (ParentMetadataProgram.program.eval (PathFrameAdvanceMeaning.metadataInputs frame))
      (PathCounterProgram.program.eval (PathFrameAdvanceMeaning.geometryInputs frame)) index := rfl

def summarySlot (index : Nat) := if index=0 then 27 else if index=1 then 28 else if index=2 then 31 else 33
def metadataSlot (index : Nat) := if index=0 then 0 else if index=1 then 1 else if index=2 then 3 else 4

theorem projected_summary (frame : Nat → Word) (digest metadata geometry : List Word)
    (index : Nat) (bound : index<4) :
    project frame digest metadata geometry (summarySlot index)=metadata.getD (metadataSlot index) 0 := by
  have alternatives : index=0 ∨ index=1 ∨ index=2 ∨ index=3 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl
  all_goals rfl

theorem returned_metadata (inputs : Nat → Word) (start : inputs 24=1)
    (index : Nat) (bound : index<4) :
    returned inputs (summarySlot index)=
      (ParentMetadataProgram.expected (ParentBranchProgram.metadataInputs (expected inputs))).getD (metadataSlot index) 0 := by
  have localState:=PathRoundDispatchTrace.third_state (OwnBranchRouting.routed inputs) start
    (summarySlot index) (by unfold summarySlot;split_ifs <;> decide)
  have advanced:=PathFrameAdvanceSoundness.state_word (hashed inputs) (summarySlot index)
    (by unfold summarySlot;split_ifs <;> decide)
  have projection:=state_projection (hashed inputs) (summarySlot index)
  have selected:=projected_summary (hashed inputs)
    (DigestWords.program.eval (PathFrameAdvanceMeaning.digestInputs (hashed inputs)))
    (ParentMetadataProgram.program.eval (PathFrameAdvanceMeaning.metadataInputs (hashed inputs)))
    (PathCounterProgram.program.eval (PathFrameAdvanceMeaning.geometryInputs (hashed inputs))) index bound
  have values:=congrArg (fun words : List Word=>words.getD (metadataSlot index) 0) (metadata_evaluation inputs)
  exact localState.trans (advanced.trans (projection.trans (selected.trans values)))

end Core033.OwnBranchSummary
