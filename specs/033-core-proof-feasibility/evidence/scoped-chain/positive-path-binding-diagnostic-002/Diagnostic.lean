import Core033.AuthenticatedMaintenance

/- A stronger admitted-state premise than the unrestricted sibling counterexample:
the actual root is positive, and complete tree summaries are covered. This does
not authorize dropping physical caller/genesis/root bindings or change old receipts.
No globally injective finite hash is assumed. -/
namespace Core033.PositivePathBinding
open Views

theorem summary_ext (left right : Summary)
    (count : left.count=right.count) (digest : left.digest=right.digest)
    (positive : left.positive=right.positive) (covered : left.covered=right.covered) : left=right := by
  cases left
  cases right
  simp_all

theorem positive_parent_binds_both_summaries (height count height' count' : Nat)
    (left right claimedLeft claimedRight : Summary)
    (same : (branchNode height count left right : Node α)=
      branchNode height' count' claimedLeft claimedRight)
    (positive : (left.positive && right.positive)=true)
    (covered : (left.covered && right.covered)=true) :
    left=claimedLeft ∧ right=claimedRight := by
  simp only [branchNode,Node.branch.injEq] at same
  obtain ⟨_,_,leftRoot,rightRoot,leftCount,rightCount,positiveSame,coveredSame⟩:=same
  have actualPositive:=Bool.and_eq_true_iff.mp positive
  have actualCovered:=Bool.and_eq_true_iff.mp covered
  have claimedPositive:=Bool.and_eq_true_iff.mp (positiveSame.symm.trans positive)
  have claimedCovered:=Bool.and_eq_true_iff.mp (coveredSame.symm.trans covered)
  exact ⟨summary_ext left claimedLeft leftCount leftRoot
      (actualPositive.1.trans claimedPositive.1.symm) (actualCovered.1.trans claimedCovered.1.symm),
    summary_ext right claimedRight rightCount rightRoot
      (actualPositive.2.trans claimedPositive.2.symm) (actualCovered.2.trans claimedCovered.2.symm)⟩

theorem full_opening (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    ∀ opening : Opening α n,
      (tree.summary hash positive).positive=true →
      (opening.fold hash positive).digest=(tree.summary hash positive).digest →
      PathBinding hash positive tree opening →
      opening=tree.opening hash positive opening.path := by
  induction tree with
  | leaf value =>
    intro opening oldPositive root binding
    have same:=binding _ (root_on_path hash positive _ opening.path)
      _ (opening_root_in_nodes hash positive opening)
      (by simpa only [summary_digest,opening_digest] using root.symm)
    cases opening with
    | leaf claimed =>
      have values:=leaf_injective positive value claimed same
      exact congrArg Opening.leaf values.symm
  | branch count left right ihl ihr =>
    intro opening oldPositive root binding
    have same:=binding _ (root_on_path hash positive _ opening.path)
      _ (opening_root_in_nodes hash positive opening)
      (by simpa only [summary_digest,opening_digest] using root.symm)
    have oldFlags:=Bool.and_eq_true_iff.mp oldPositive
    have covered:=summary_complete hash positive (Tree.branch count left right)
    cases opening with
    | left child sibling =>
      have parts:=positive_parent_binds_both_summaries _ _ _ _
        (left.summary hash positive) (right.summary hash positive)
        (child.fold hash positive) sibling same oldPositive covered
      have childRoot : (child.fold hash positive).digest=(left.summary hash positive).digest :=
        (congrArg Summary.digest parts.1).symm
      have childBinding : PathBinding hash positive left child := by
        intro actual actualMember claimed claimedMember hashes
        exact binding actual (List.mem_cons_of_mem _ actualMember)
          claimed (List.mem_cons_of_mem _ claimedMember) hashes
      have childExact:=ihl child oldFlags.1 childRoot childBinding
      exact AuthenticatedMaintenance.binary_congruence Opening.left childExact parts.2.symm
    | right sibling child =>
      have parts:=positive_parent_binds_both_summaries _ _ _ _
        (left.summary hash positive) (right.summary hash positive)
        sibling (child.fold hash positive) same oldPositive covered
      have childRoot : (child.fold hash positive).digest=(right.summary hash positive).digest :=
        (congrArg Summary.digest parts.2).symm
      have childBinding : PathBinding hash positive right child := by
        intro actual actualMember claimed claimedMember hashes
        exact binding actual (List.mem_cons_of_mem _ actualMember)
          claimed (List.mem_cons_of_mem _ claimedMember) hashes
      have childExact:=ihr child oldFlags.2 childRoot childBinding
      exact AuthenticatedMaintenance.binary_congruence Opening.right parts.1.symm childExact

theorem wrong_full_opening_has_path_collision (hash : Node α → Digest) (positive : α → Bool)
    (tree : Tree α n) (opening : Opening α n)
    (oldPositive : (tree.summary hash positive).positive=true)
    (root : (opening.fold hash positive).digest=(tree.summary hash positive).digest)
    (wrong : opening≠tree.opening hash positive opening.path) :
    ∃ actual∈tree.pathNodes hash positive opening.path,
      ∃ claimed∈opening.nodes hash positive,actual≠claimed ∧ hash actual=hash claimed := by
  classical
  apply Classical.byContradiction
  intro absent
  apply wrong
  apply full_opening hash positive tree opening oldPositive root
  intro actual actualMember claimed claimedMember hashes
  apply Classical.byContradiction
  intro different
  exact absent ⟨actual,actualMember,claimed,claimedMember,different,hashes⟩

end Core033.PositivePathBinding
