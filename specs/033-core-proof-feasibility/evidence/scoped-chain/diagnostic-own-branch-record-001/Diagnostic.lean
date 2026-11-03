import Core033.OwnBranchSummary

namespace Core033.OwnBranchRecord
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def words (frame : Nat → Word) : NodeMetadata.Words :=
  ⟨⟨frame 27,frame 28⟩,frame 31,frame 33⟩

def expectedWords (inputs : Nat → Word) : NodeMetadata.Words :=
  let metadata:=ParentMetadataProgram.expected
    (ParentBranchProgram.metadataInputs (OwnBranchParentPorts.expected inputs))
  ⟨⟨metadata.getD 0 0,metadata.getD 1 0⟩,metadata.getD 3 0,metadata.getD 4 0⟩

theorem words_congr (left right : Nat → Word)
    (same : ∀ index,index<4 → left (OwnBranchSummary.summarySlot index)=right (OwnBranchSummary.summarySlot index)) :
    words left=words right := by
  have low:=same 0 (by decide)
  have high:=same 1 (by decide)
  have positive:=same 2 (by decide)
  have covered:=same 3 (by decide)
  change left 27=right 27 at low
  change left 28=right 28 at high
  change left 31=right 31 at positive
  change left 33=right 33 at covered
  unfold words
  rw [low,high,positive,covered]

def metadataFrame (inputs : Nat → Word) (index : Nat) : Word :=
  let metadata:=ParentMetadataProgram.expected
    (ParentBranchProgram.metadataInputs (OwnBranchParentPorts.expected inputs))
  metadata.getD (if index=27 then 0 else if index=28 then 1 else if index=31 then 3 else 4) 0

theorem projected_frame (inputs : Nat → Word) (index : Nat) (bound : index<4) :
    metadataFrame inputs (OwnBranchSummary.summarySlot index)=
      (ParentMetadataProgram.expected
        (ParentBranchProgram.metadataInputs (OwnBranchParentPorts.expected inputs))).getD
        (OwnBranchSummary.metadataSlot index) 0 := by
  have alternatives : index=0 ∨ index=1 ∨ index=2 ∨ index=3 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl
  all_goals rfl

theorem returned_words (inputs : Nat → Word) (start : inputs 24=1) :
    words (OwnBranchHash.returned inputs)=expectedWords inputs := by
  have same:=words_congr (OwnBranchHash.returned inputs) (metadataFrame inputs) (by
    intro index bound
    exact (OwnBranchSummary.returned_metadata inputs start index bound).trans
      (projected_frame inputs index bound).symm)
  exact same

/- Own record metadata and digest share the original input fields. Authentication
against the committed path and valid genesis is still a caller obligation. -/
theorem complete_record (inputs : Nat → Word) (start : inputs 24=1)
    (heightPositive : 0<(inputs 0).toNat) (heightBound : (inputs 0).toNat<256)
    (positive covered : Bool)
    (positiveWord : inputs 22=WordControl.boolWord positive)
    (coveredWord : inputs 23=WordControl.boolWord covered) :
    words (OwnBranchHash.returned inputs)=expectedWords inputs ∧
    ((List.range 8).map (fun index=>OwnBranchHash.returned inputs (11+index))).flatMap
      (fun word=>Codec.encodeLE 4 word.toNat)=
        SHA256.digestBytes (BranchCodec.encode (OwnBranchEncoding.branch inputs positive covered)) :=
  ⟨returned_words inputs start,
    OwnBranchHash.original_full_hash inputs start heightPositive heightBound positive covered positiveWord coveredWord⟩

end Core033.OwnBranchRecord
