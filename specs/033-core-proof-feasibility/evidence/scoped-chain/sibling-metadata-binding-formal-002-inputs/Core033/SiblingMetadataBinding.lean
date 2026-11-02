import Core033.BranchViewCodec

/- Concrete format counterexample: the parent binds the AND of child flags,
not each sibling flag separately. K must authenticate a sibling node's own
metadata before using it to maintain a changed path. Root-only opening/value
soundness does not by itself justify sibling metadata reuse. -/
namespace Core033.SiblingMetadataBinding
open Views

def before (root : Digest) : Summary := ⟨1,root,false,true⟩
def after (root : Digest) : Summary := ⟨1,root,true,true⟩
def sibling (root : Digest) : Summary := ⟨1,root,true,true⟩
def fakeSibling (root : Digest) : Summary := ⟨1,root,false,true⟩

theorem sibling_root_count_unchanged (root : Digest) :
    (sibling root).digest=(fakeSibling root).digest ∧
      (sibling root).count=(fakeSibling root).count := ⟨rfl,rfl⟩

theorem old_original_preimage_identical (beforeRoot siblingRoot : Digest) :
    BranchCodec.encode (BranchViewCodec.record 1 1 (before beforeRoot) (sibling siblingRoot))=
      BranchCodec.encode (BranchViewCodec.record 1 1 (before beforeRoot) (fakeSibling siblingRoot)) := rfl

theorem old_concrete_hash_identical (beforeRoot siblingRoot : Digest) :
    BranchViewCodec.hash 1 1 (before beforeRoot) (sibling siblingRoot)=
      BranchViewCodec.hash 1 1 (before beforeRoot) (fakeSibling siblingRoot) := rfl

theorem changed_positive_metadata_wrong (afterRoot siblingRoot : Digest) :
    ((after afterRoot).positive && (sibling siblingRoot).positive)≠
      ((after afterRoot).positive && (fakeSibling siblingRoot).positive) := by change true≠false;decide

theorem changed_original_preimages_different (afterRoot siblingRoot : Digest) :
    BranchCodec.encode (BranchViewCodec.record 1 1 (after afterRoot) (sibling siblingRoot))≠
      BranchCodec.encode (BranchViewCodec.record 1 1 (after afterRoot) (fakeSibling siblingRoot)) := by
  intro same
  have first:=BranchViewCodec.record_framed 1 1 (after afterRoot) (sibling siblingRoot)
    (Or.inl rfl) (by decide) (by decide) (by change (2:Nat)≤1048576;decide)
  have second:=BranchViewCodec.record_framed 1 1 (after afterRoot) (fakeSibling siblingRoot)
    (Or.inl rfl) (by decide) (by decide) (by change (2:Nat)≤1048576;decide)
  have records:=BranchCodec.encoded_injective _ _ first second same
  have flags:=congrArg BranchCodec.Branch.positive records
  change true=false at flags
  cases flags

end Core033.SiblingMetadataBinding
