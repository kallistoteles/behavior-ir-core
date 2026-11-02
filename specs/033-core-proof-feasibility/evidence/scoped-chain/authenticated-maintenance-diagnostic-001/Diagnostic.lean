import Core033.Views

/- Complete changed-path metadata preservation requires exact authenticated
siblings in addition to leaf/value opening soundness. This is the mathematical
path contract; physical node readers and hash/wire realization remain separate. -/
namespace Core033.AuthenticatedMaintenance
open Views Reference

def SiblingsExact (hash : Node α → Digest) (positive : α → Bool) :
    (tree : Tree α n) → Opening α n → Prop
  | .leaf _,.leaf _ => True
  | .branch _ left right,.left child sibling =>
      sibling=right.summary hash positive ∧ SiblingsExact hash positive left child
  | .branch _ left right,.right sibling child =>
      sibling=left.summary hash positive ∧ SiblingsExact hash positive right child

theorem honest_siblings (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    ∀ path,SiblingsExact hash positive tree (tree.opening hash positive path) := by
  induction tree with
  | leaf value => intro path;cases path;trivial
  | branch count left right ihl ihr =>
    intro path
    cases path with
    | left path => exact ⟨rfl,ihl path⟩
    | right path => exact ⟨rfl,ihr path⟩

theorem full_opening_of_value_and_siblings (hash : Node α → Digest) (positive : α → Bool)
    (tree : Tree α n) : ∀ opening : Opening α n,
      SiblingsExact hash positive tree opening → opening.value=tree.lookup opening.path →
        opening=tree.opening hash positive opening.path := by
  induction tree with
  | leaf actual =>
    intro opening siblings value
    cases opening with
    | leaf proposed =>
      change proposed=actual at value
      cases value
      rfl
  | branch count left right ihl ihr =>
    intro opening siblings value
    cases opening with
    | left child sibling =>
      exact congrArg₂ Opening.left (ihl child siblings.2 value) siblings.1
    | right sibling child =>
      exact congrArg₂ Opening.right siblings.1 (ihr child siblings.2 value)

theorem authenticated_full_opening (hash : Node α → Digest) (positive : α → Bool)
    (tree : Tree α n) (opening : Opening α n)
    (root : (opening.fold hash positive).digest=(tree.summary hash positive).digest)
    (binding : PathBinding hash positive tree opening)
    (siblings : SiblingsExact hash positive tree opening) :
    opening=tree.opening hash positive opening.path :=
  full_opening_of_value_and_siblings hash positive tree opening siblings
    (Views.opening_sound hash positive tree opening root binding)

theorem changed_path_full_summary (hash : Node α → Digest) (positive : α → Bool)
    (tree : Tree α n) (opening : Opening α n) (key : Key) (value : α) (next : Tree α n)
    (good : tree.Good) (result : tree.put opening.path key value=.ok next)
    (root : (opening.fold hash positive).digest=(tree.summary hash positive).digest)
    (binding : PathBinding hash positive tree opening)
    (siblings : SiblingsExact hash positive tree opening) :
    (opening.replaceTip (some (key,value))).fold hash positive=next.summary hash positive := by
  have exactOpening:=authenticated_full_opening hash positive tree opening root binding siblings
  calc
    (opening.replaceTip (some (key,value))).fold hash positive=
        ((tree.opening hash positive opening.path).replaceTip (some (key,value))).fold hash positive :=
      congrArg (fun candidate : Opening α n=>(candidate.replaceTip (some (key,value))).fold hash positive) exactOpening
    _=next.summary hash positive:=Views.updated_opening_root hash positive tree opening.path key value good result

end Core033.AuthenticatedMaintenance
