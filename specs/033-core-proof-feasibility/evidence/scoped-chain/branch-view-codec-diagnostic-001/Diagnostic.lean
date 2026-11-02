import Core033.DigestRepresentation
import Core033.BranchCodec

/- Exact byte meaning of a branch in the original sparse-view model. The
native root depth is 256-height; each child root retains all 32 digest bytes. -/
namespace Core033.BranchViewCodec
open Views

def record (kind height : Nat) (left right : Summary) : BranchCodec.Branch :=
  ⟨kind,256-height,DigestRepresentation.bytes left.digest,DigestRepresentation.bytes right.digest,
    left.count,right.count,left.count+right.count,left.positive && right.positive,left.covered && right.covered⟩

theorem record_framed (kind height : Nat) (left right : Summary)
    (kindValid : kind=1 ∨ kind=2) (heightPositive : 1≤height) (heightBound : height≤256)
    (bounded : left.count+right.count≤1048576) : BranchCodec.Framed (record kind height left right) := by
  refine ⟨kindValid,by change 256-height<256;omega,
    DigestRepresentation.bytes_size _,DigestRepresentation.bytes_size _,?_,?_,?_⟩
  all_goals change _<2^64;omega

theorem record_metadata (kind height : Nat) (left right : Summary)
    (bounded : left.count+right.count≤1048576) : BranchCodec.MetadataAdmitted (record kind height left right) :=
  ⟨rfl,bounded⟩

def toNode {α : Type} (input : {record : BranchCodec.Branch // BranchCodec.Framed record}) : Node α :=
  .branch (256-input.val.depth) input.val.totalCount
    (DigestRepresentation.ofBytes input.val.left input.property.2.2.1)
    (DigestRepresentation.ofBytes input.val.right input.property.2.2.2.1)
    input.val.leftCount input.val.rightCount input.val.positive input.val.covered

theorem record_node_exact {α : Type} (kind height : Nat) (left right : Summary)
    (valid : BranchCodec.Framed (record kind height left right)) (heightBound : height≤256) :
    toNode (α:=α) ⟨record kind height left right,valid⟩=
      branchNode height (left.count+right.count) left right := by
  simp only [toNode,record,branchNode,DigestRepresentation.of_bytes_bytes]
  rw [show 256-(256-height)=height by omega]

theorem encoded_node_injective {α : Type} (kind height height' : Nat) (left right left' right' : Summary)
    (first : BranchCodec.Framed (record kind height left right))
    (second : BranchCodec.Framed (record kind height' left' right'))
    (heightBound : height≤256) (heightBound' : height'≤256)
    (same : BranchCodec.encode (record kind height left right)=BranchCodec.encode (record kind height' left' right')) :
    (branchNode height (left.count+right.count) left right : Node α)=
      branchNode height' (left'.count+right'.count) left' right' := by
  have records:=BranchCodec.encoded_injective _ _ first second same
  have typed : (⟨record kind height left right,first⟩ : {record : BranchCodec.Branch // BranchCodec.Framed record})=
      ⟨record kind height' left' right',second⟩ := Subtype.ext records
  have nodes:=congrArg (toNode (α:=α)) typed
  rw [record_node_exact _ _ _ _ first heightBound,record_node_exact _ _ _ _ second heightBound'] at nodes
  exact nodes

def hash (kind height : Nat) (left right : Summary) : Digest :=
  DigestRepresentation.hash (BranchCodec.encode (record kind height left right))

theorem wrong_branch_hash_exposes_concrete_collision {α : Type}
    (kind height height' : Nat) (left right left' right' : Summary)
    (first : BranchCodec.Framed (record kind height left right))
    (second : BranchCodec.Framed (record kind height' left' right'))
    (heightBound : height≤256) (heightBound' : height'≤256)
    (different : (branchNode height (left.count+right.count) left right : Node α)≠
      branchNode height' (left'.count+right'.count) left' right')
    (equalHashes : hash kind height left right=hash kind height' left' right') :
    BranchCodec.encode (record kind height left right)≠BranchCodec.encode (record kind height' left' right') ∧
      SHA256.digestBytes (BranchCodec.encode (record kind height left right))=
        SHA256.digestBytes (BranchCodec.encode (record kind height' left' right')) := by
  constructor
  · intro same
    exact different (encoded_node_injective kind height height' left right left' right' first second heightBound heightBound' same)
  · exact (DigestRepresentation.hash_equality_exact _ _).mp equalHashes

end Core033.BranchViewCodec
