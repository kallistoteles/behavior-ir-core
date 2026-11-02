import Core033.LiveNodeCodec
import Core033.UsedNodeCodec

/- Reusing a sibling summary is justified by the sibling's own authenticated
node preimage, not by aggregate flags in the opened parent. -/
namespace Core033.AuthenticatedSibling
open Views

def summarize (hash : Node α → Digest) (node : Node α) : Summary :=
  match node with
  | .empty => ⟨0,hash node,true,true⟩
  | .occupied _ _ positive => ⟨1,hash node,positive,true⟩
  | .branch _ total _ _ _ _ positive covered => ⟨total,hash node,positive,covered⟩

theorem summarize_digest (hash : Node α → Digest) (node : Node α) : (summarize hash node).digest=hash node := by
  cases node <;> rfl

theorem tree_summary_exact (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    summarize hash (tree.nodeInput hash positive)=tree.summary hash positive := by
  cases tree with
  | leaf value => cases value <;> rfl
  | branch count left right => rfl

theorem claimed_hash_exact (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n)
    (claimed : Summary) (node : Node α) (decoded : claimed=summarize hash node)
    (root : claimed.digest=(tree.summary hash positive).digest) :
    hash (tree.nodeInput hash positive)=hash node :=
  (Views.summary_digest hash positive tree).symm.trans
    (root.symm.trans ((congrArg Summary.digest decoded).trans (summarize_digest hash node)))

theorem wrong_live_sibling_metadata_exposes_collision (tree : Tree LiveValue n)
    (claimed : Summary) (node : Node LiveValue)
    (decoded : claimed=summarize LiveNodeCodec.hash node)
    (root : claimed.digest=(tree.summary LiveNodeCodec.hash LeafInterpretation.positive).digest)
    (actualBounded : LiveNodeCodec.Bounded (tree.nodeInput LiveNodeCodec.hash LeafInterpretation.positive))
    (claimedBounded : LiveNodeCodec.Bounded node)
    (wrong : claimed≠tree.summary LiveNodeCodec.hash LeafInterpretation.positive) :
    LiveNodeCodec.encode (tree.nodeInput LiveNodeCodec.hash LeafInterpretation.positive)≠LiveNodeCodec.encode node ∧
      SHA256.digestBytes (LiveNodeCodec.encode (tree.nodeInput LiveNodeCodec.hash LeafInterpretation.positive))=
        SHA256.digestBytes (LiveNodeCodec.encode node) := by
  have different : tree.nodeInput LiveNodeCodec.hash LeafInterpretation.positive≠node := by
    intro same
    apply wrong
    rw [decoded,←same,tree_summary_exact]
  exact LiveNodeCodec.wrong_node_hash_exposes_concrete_collision _ _ actualBounded claimedBounded different
    (claimed_hash_exact LiveNodeCodec.hash LeafInterpretation.positive tree claimed node decoded root)

theorem wrong_used_sibling_metadata_exposes_collision (tree : Tree Unit n)
    (claimed : Summary) (node : Node Unit)
    (decoded : claimed=summarize UsedNodeCodec.hash node)
    (root : claimed.digest=(tree.summary UsedNodeCodec.hash (fun _=>true)).digest)
    (actualBounded : UsedNodeCodec.Bounded (tree.nodeInput UsedNodeCodec.hash (fun _=>true)))
    (claimedBounded : UsedNodeCodec.Bounded node)
    (wrong : claimed≠tree.summary UsedNodeCodec.hash (fun _=>true)) :
    UsedNodeCodec.encode (tree.nodeInput UsedNodeCodec.hash (fun _=>true))≠UsedNodeCodec.encode node ∧
      SHA256.digestBytes (UsedNodeCodec.encode (tree.nodeInput UsedNodeCodec.hash (fun _=>true)))=
        SHA256.digestBytes (UsedNodeCodec.encode node) := by
  have different : tree.nodeInput UsedNodeCodec.hash (fun _=>true)≠node := by
    intro same
    apply wrong
    rw [decoded,←same,tree_summary_exact]
  exact UsedNodeCodec.wrong_node_hash_exposes_concrete_collision _ _ actualBounded claimedBounded different
    (claimed_hash_exact UsedNodeCodec.hash (fun _=>true) tree claimed node decoded root)

end Core033.AuthenticatedSibling
