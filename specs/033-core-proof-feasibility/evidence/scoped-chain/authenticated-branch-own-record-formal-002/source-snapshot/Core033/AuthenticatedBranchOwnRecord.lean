import Core033.AuthenticatedBranchOwnReturn

namespace Core033.AuthenticatedBranchOwnRecord
open WordIR AuthenticatedBranchRound AuthenticatedBranchTrace AuthenticatedBranchOwnReturn
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem root_parent_index (index : Nat) (bound : index<8) : parentIndex index=11+index := by
  simp only [parentIndex,if_pos bound]

theorem metadata_parent_index (index : Nat) (bound : index<4) :
    parentIndex (8+index)=OwnBranchSummary.summarySlot index := by
  have alternatives : index=0 ∨ index=1 ∨ index=2 ∨ index=3 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl
  all_goals rfl

theorem sibling_root_word (inputs : Nat → Word) (start : inputs 0=1) (index : Nat) (bound : index<8) :
    iterate 3 inputs (35+index)=OwnBranchHash.returned (originalRaw inputs) (11+index) :=
  (sibling_return inputs start index (by omega)).trans
    (congrArg (OwnBranchHash.returned (originalRaw inputs)) (root_parent_index index bound))

theorem sibling_full_digest (inputs : Nat → Word) (start : inputs 0=1)
    (heightPositive : 0<(inputs 2).toNat) (heightBound : (inputs 2).toNat<256)
    (positive covered : Bool)
    (positiveWord : inputs 116=WordControl.boolWord positive)
    (coveredWord : inputs 117=WordControl.boolWord covered) :
    ((List.range 8).map (fun index=>iterate 3 inputs (35+index))).flatMap
      (fun word=>Codec.encodeLE 4 word.toNat)=
        SHA256.digestBytes (BranchCodec.encode (OwnBranchEncoding.branch (originalRaw inputs) positive covered)) := by
  have roots : (List.range 8).map (fun index=>iterate 3 inputs (35+index))=
      (List.range 8).map (fun index=>OwnBranchHash.returned (originalRaw inputs) (11+index)) := by
    apply List.map_congr_left
    intro index member
    exact sibling_root_word inputs start index (List.mem_range.mp member)
  have hash:=OwnBranchHash.original_full_hash (originalRaw inputs) rfl heightPositive heightBound
    positive covered positiveWord coveredWord
  exact (congrArg (fun words : List Word=>words.flatMap (fun word=>Codec.encodeLE 4 word.toNat)) roots).trans hash

theorem sibling_metadata (inputs : Nat → Word) (start : inputs 0=1) (index : Nat) (bound : index<4) :
    iterate 3 inputs (43+index)=
      (ParentMetadataProgram.expected
        (ParentBranchProgram.metadataInputs (OwnBranchParentPorts.expected (originalRaw inputs)))).getD
        (OwnBranchSummary.metadataSlot index) 0 := by
  have assigned:=sibling_return inputs start (8+index) (by omega)
  have indices : 43+index=35+(8+index) := by omega
  have projected:=congrArg (OwnBranchHash.returned (originalRaw inputs)) (metadata_parent_index index bound)
  exact (congrArg (iterate 3 inputs) indices).trans
    (assigned.trans (projected.trans (OwnBranchSummary.returned_metadata (originalRaw inputs) rfl index bound)))

/- This is the complete derived sibling return, not authentication against a
committed old root. The inherited valid state/full opening binding is a caller
obligation and is not replaced by this local hash/metadata theorem. -/
theorem complete_original_return (inputs : Nat → Word) (start : inputs 0=1)
    (heightPositive : 0<(inputs 2).toNat) (heightBound : (inputs 2).toNat<256)
    (positive covered : Bool)
    (positiveWord : inputs 116=WordControl.boolWord positive)
    (coveredWord : inputs 117=WordControl.boolWord covered) :
    (((List.range 8).map (fun index=>iterate 3 inputs (35+index))).flatMap
      (fun word=>Codec.encodeLE 4 word.toNat)=
        SHA256.digestBytes (BranchCodec.encode (OwnBranchEncoding.branch (originalRaw inputs) positive covered))) ∧
    (∀ index,index<4 → iterate 3 inputs (43+index)=
      (ParentMetadataProgram.expected
        (ParentBranchProgram.metadataInputs (OwnBranchParentPorts.expected (originalRaw inputs)))).getD
        (OwnBranchSummary.metadataSlot index) 0) :=
  ⟨sibling_full_digest inputs start heightPositive heightBound positive covered positiveWord coveredWord,
    sibling_metadata inputs start⟩

end Core033.AuthenticatedBranchOwnRecord
