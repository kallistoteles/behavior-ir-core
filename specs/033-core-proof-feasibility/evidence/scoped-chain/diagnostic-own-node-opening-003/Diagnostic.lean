import Core033.AuthenticatedSibling
import Core033.AuthenticatedMaintenance

/- Full sibling nodes, as supplied by the native untrusted Opening builder.
The finite transcript binding condition is discharged by concrete node encoding
and SHA collision resistance later; it is not a global hash injectivity axiom. -/
namespace Core033.OwnNodeOpening
open Views Reference

inductive Witness (α : Type) : Nat → Type where
  | leaf (value : Option (Key × α)) : Witness α 0
  | left (child : Witness α n) (sibling : Node α) : Witness α (n+1)
  | right (sibling : Node α) (child : Witness α n) : Witness α (n+1)

def Witness.opening (hash : Node α → Digest) (positive : α → Bool) : Witness α n → Opening α n
  | .leaf value => .leaf value
  | .left child sibling => .left (child.opening hash positive) (AuthenticatedSibling.summarize hash sibling)
  | .right sibling child => .right (AuthenticatedSibling.summarize hash sibling) (child.opening hash positive)

def Witness.messages (hash : Node α → Digest) (positive : α → Bool) (witness : Witness α n) : List (Node α) :=
  (witness.opening hash positive).nodeInput hash positive::match witness with
    | .leaf _ => []
    | .left child sibling => child.messages hash positive++[sibling]
    | .right sibling child => child.messages hash positive++[sibling]

def actualMessages (hash : Node α → Digest) (positive : α → Bool) : (tree : Tree α n) → Path n → List (Node α)
  | .leaf value,.here => [(Tree.leaf value).nodeInput hash positive]
  | tree@(.branch _ left right),.left path => tree.nodeInput hash positive::
      (actualMessages hash positive left path++[right.nodeInput hash positive])
  | tree@(.branch _ left right),.right path => tree.nodeInput hash positive::
      (actualMessages hash positive right path++[left.nodeInput hash positive])

def Binding (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) (witness : Witness α n) : Prop :=
  ∀ actual∈actualMessages hash positive tree (witness.opening hash positive).path,
    ∀ claimed∈witness.messages hash positive,hash actual=hash claimed → actual=claimed

theorem actual_root_member (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) (path : Path n) :
    tree.nodeInput hash positive∈actualMessages hash positive tree path := by
  cases tree <;> cases path <;> exact List.mem_cons_self

theorem claimed_root_member (hash : Node α → Digest) (positive : α → Bool) (witness : Witness α n) :
    (witness.opening hash positive).nodeInput hash positive∈witness.messages hash positive := by
  unfold Witness.messages
  exact List.mem_cons_self

theorem root_node_equal (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) (witness : Witness α n)
    (root : ((witness.opening hash positive).fold hash positive).digest=(tree.summary hash positive).digest)
    (binding : Binding hash positive tree witness) :
    tree.nodeInput hash positive=(witness.opening hash positive).nodeInput hash positive := by
  apply binding _ (actual_root_member hash positive tree _) _ (claimed_root_member hash positive witness)
  rw [←Views.summary_digest hash positive tree,←Views.opening_digest hash positive (witness.opening hash positive)]
  exact root.symm

theorem full_opening (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    ∀ witness : Witness α n,
      ((witness.opening hash positive).fold hash positive).digest=(tree.summary hash positive).digest →
      Binding hash positive tree witness →
        witness.opening hash positive=tree.opening hash positive (witness.opening hash positive).path := by
  induction tree with
  | leaf value =>
    intro witness root binding
    have same:=root_node_equal hash positive (.leaf value) witness root binding
    cases witness with
    | leaf proposed =>
      have exactValue:=Views.leaf_injective positive value proposed same
      change Opening.leaf proposed=Opening.leaf value
      exact congrArg Opening.leaf exactValue.symm
  | branch count left right ihl ihr =>
    intro witness root binding
    have same:=root_node_equal hash positive (.branch count left right) witness root binding
    cases witness with
    | left child sibling =>
      have childRoot : ((child.opening hash positive).fold hash positive).digest=(left.summary hash positive).digest :=
        (Views.branch_left_root same).symm
      have siblingHash : hash (right.nodeInput hash positive)=hash sibling := by
        have hashes:=Views.branch_right_root same
        simpa only [Witness.opening,Opening.nodeInput,AuthenticatedSibling.summarize_digest,Views.summary_digest] using hashes
      have siblingExact : right.nodeInput hash positive=sibling :=
        binding _ (List.mem_cons_of_mem _ (List.mem_append_right _ (by simp)))
          _ (List.mem_cons_of_mem _ (List.mem_append_right _ (by simp))) siblingHash
      have childBinding : Binding hash positive left child := by
        intro actual actualMember claimed claimedMember hashes
        exact binding actual (List.mem_cons_of_mem _ (List.mem_append_left _ actualMember))
          claimed (List.mem_cons_of_mem _ (List.mem_append_left _ claimedMember)) hashes
      have childExact:=ihl child childRoot childBinding
      have summaryExact : AuthenticatedSibling.summarize hash sibling=right.summary hash positive := by
        rw [←siblingExact,AuthenticatedSibling.tree_summary_exact]
      exact AuthenticatedMaintenance.binary_congruence Opening.left childExact summaryExact
    | right sibling child =>
      have childRoot : ((child.opening hash positive).fold hash positive).digest=(right.summary hash positive).digest :=
        (Views.branch_right_root same).symm
      have siblingHash : hash (left.nodeInput hash positive)=hash sibling := by
        have hashes:=Views.branch_left_root same
        simpa only [Witness.opening,Opening.nodeInput,AuthenticatedSibling.summarize_digest,Views.summary_digest] using hashes
      have siblingExact : left.nodeInput hash positive=sibling :=
        binding _ (List.mem_cons_of_mem _ (List.mem_append_right _ (by simp)))
          _ (List.mem_cons_of_mem _ (List.mem_append_right _ (by simp))) siblingHash
      have childBinding : Binding hash positive right child := by
        intro actual actualMember claimed claimedMember hashes
        exact binding actual (List.mem_cons_of_mem _ (List.mem_append_left _ actualMember))
          claimed (List.mem_cons_of_mem _ (List.mem_append_left _ claimedMember)) hashes
      have childExact:=ihr child childRoot childBinding
      have summaryExact : AuthenticatedSibling.summarize hash sibling=left.summary hash positive := by
        rw [←siblingExact,AuthenticatedSibling.tree_summary_exact]
      exact AuthenticatedMaintenance.binary_congruence Opening.right summaryExact childExact

end Core033.OwnNodeOpening
