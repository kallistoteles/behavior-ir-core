import Core033.LeafInterpretation
import Core033.BranchViewCodec
import Core033.CodecTags

namespace Core033.UsedNodeCodec
open Views
abbrev UsedNode := Node Unit

def branchRecord (height total : Nat) (left right : Digest) (leftCount rightCount : Nat)
    (positive covered : Bool) : BranchCodec.Branch :=
  ⟨2,256-height,DigestRepresentation.bytes left,DigestRepresentation.bytes right,
    leftCount,rightCount,total,positive,covered⟩

def encode : UsedNode → Codec.Bytes
  | .empty => LeafCodec.encode (LeafInterpretation.ofUsed none)
  | .occupied key value positive => LeafCodec.encode (.used key true positive)
  | .branch height total left right leftCount rightCount positive covered =>
      BranchCodec.encode (branchRecord height total left right leftCount rightCount positive covered)

def Bounded : UsedNode → Prop
  | .empty => True
  | .occupied key value _ => Codec.KeyBounded key
  | .branch height total _ _ leftCount rightCount _ _ =>
      1≤height ∧ height≤256 ∧ total<2^64 ∧ leftCount<2^64 ∧ rightCount<2^64

theorem branch_framed (height total : Nat) (left right : Digest) (leftCount rightCount : Nat)
    (positive covered : Bool) (bounded : Bounded (.branch height total left right leftCount rightCount positive covered)) :
    BranchCodec.Framed (branchRecord height total left right leftCount rightCount positive covered) := by
  refine ⟨Or.inr rfl,?_,DigestRepresentation.bytes_size _,DigestRepresentation.bytes_size _,
    bounded.2.2.2.1,bounded.2.2.2.2,bounded.2.2.1⟩
  change 256-height<256
  have heightPositive:=bounded.1
  omega

theorem branch_node_exact (height total : Nat) (left right : Digest) (leftCount rightCount : Nat)
    (positive covered : Bool)
    (framed : BranchCodec.Framed (branchRecord height total left right leftCount rightCount positive covered))
    (heightBound : height≤256) :
    BranchViewCodec.toNode (α:=Unit) ⟨branchRecord height total left right leftCount rightCount positive covered,framed⟩=
      .branch height total left right leftCount rightCount positive covered := by
  simp only [BranchViewCodec.toNode,branchRecord,DigestRepresentation.of_bytes_bytes]
  rw [show 256-(256-height)=height by omega]

theorem leaf_branch_distinct (leaf : LeafCodec.Leaf) (branch : BranchCodec.Branch) :
    LeafCodec.encode leaf≠BranchCodec.encode branch := by
  cases leaf
  all_goals unfold LeafCodec.encode BranchCodec.encode
  all_goals exact CodecTags.different_tags_distinct_records ⟨80,by decide⟩ ⟨81,by decide⟩ (by decide) _ _

theorem encoded_injective (left right : UsedNode) (leftBound : Bounded left) (rightBound : Bounded right)
    (same : encode left=encode right) : left=right := by
  cases left with
  | empty =>
    cases right with
    | empty => rfl
    | occupied key value positive =>
      cases value
      exact congrArg LeafInterpretation.usedNode
        (LeafCodec.encoded_injective _ _ (LeafInterpretation.used_framed none trivial) rightBound same)
    | branch height total rootL rootR lc rc positive covered =>
      exact False.elim (leaf_branch_distinct _ _ same)
  | occupied key value positive =>
    cases value
    cases right with
    | empty =>
      exact congrArg LeafInterpretation.usedNode
        (LeafCodec.encoded_injective _ _ leftBound (LeafInterpretation.used_framed none trivial) same)
    | occupied key' value' positive' =>
      cases value'
      exact congrArg LeafInterpretation.usedNode
        (LeafCodec.encoded_injective _ _ leftBound rightBound same)
    | branch height total rootL rootR lc rc pos cov =>
      exact False.elim (leaf_branch_distinct _ _ same)
  | branch height total rootL rootR lc rc pos cov =>
    cases right with
    | empty => exact False.elim (leaf_branch_distinct _ _ same.symm)
    | occupied key value positive => exact False.elim (leaf_branch_distinct _ _ same.symm)
    | branch height' total' rootL' rootR' lc' rc' pos' cov' =>
      have first:=branch_framed height total rootL rootR lc rc pos cov leftBound
      have second:=branch_framed height' total' rootL' rootR' lc' rc' pos' cov' rightBound
      have records:=BranchCodec.encoded_injective _ _ first second same
      have typed : (⟨branchRecord height total rootL rootR lc rc pos cov,first⟩ : {record : BranchCodec.Branch // BranchCodec.Framed record})=
          ⟨branchRecord height' total' rootL' rootR' lc' rc' pos' cov',second⟩ := Subtype.ext records
      have nodes:=congrArg (BranchViewCodec.toNode (α:=Unit)) typed
      rw [branch_node_exact _ _ _ _ _ _ _ _ first leftBound.2.1,
        branch_node_exact _ _ _ _ _ _ _ _ second rightBound.2.1] at nodes
      exact nodes

def hash (node : UsedNode) : Digest := DigestRepresentation.hash (encode node)

theorem wrong_node_hash_exposes_concrete_collision (left right : UsedNode)
    (leftBound : Bounded left) (rightBound : Bounded right) (different : left≠right)
    (same : hash left=hash right) : encode left≠encode right ∧
      SHA256.digestBytes (encode left)=SHA256.digestBytes (encode right) := by
  refine ⟨fun equal=>different (encoded_injective left right leftBound rightBound equal),?_⟩
  exact (DigestRepresentation.hash_equality_exact _ _).mp same

end Core033.UsedNodeCodec
