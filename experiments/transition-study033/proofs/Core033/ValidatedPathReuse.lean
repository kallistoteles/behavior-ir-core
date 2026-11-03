import Core033.PositivePathBinding
import Core033.Machine
import Core033.LeafInterpretation

/- Derive the positive-root premise from actual typed initialization/boundary
validity. These semantic theorems do not supply missing physical K bindings. -/
namespace Core033.ValidatedPathReuse
open Reference Views

theorem put_preserves_all (positive : α → Bool) (tree : Tree α n)
    (path : Path n) (key : Key) (value : α) (next : Tree α n)
    (all : tree.All positive) (newPositive : positive value=true)
    (result : tree.put path key value=.ok next) : next.All positive := by
  intro query stored actual found
  by_cases same : query=path
  · subst query
    rw [Views.put_target tree path key value result] at found
    have values:=congrArg Prod.snd (Option.some.inj found)
    have sameValue : value=actual := values
    rw [←sameValue]
    exact newPositive
  · rw [Views.put_other tree path query key value result same] at found
    exact all query stored actual found

theorem construct_preserves_all (positive : α → Bool) (address : Key → Path n)
    (entries : List (Key × α)) : ∀ (tree next : Tree α n),
      tree.All positive → (∀ entry∈entries,positive entry.2=true) →
      Init.construct address tree entries=.ok next → next.All positive := by
  induction entries with
  | nil =>
    intro tree next all entriesPositive result
    simp only [Init.construct,Except.ok.injEq] at result
    subst next
    exact all
  | cons entry rest induction =>
    intro tree next all entriesPositive result
    cases step : tree.put (address entry.1) entry.1 entry.2 with
    | error collision => simp [Init.construct,step] at result
    | ok middle =>
      simp only [Init.construct,step] at result
      apply induction middle next
      · exact put_preserves_all positive tree (address entry.1) entry.1 entry.2 middle
          all (entriesPositive entry (List.mem_cons_self)) step
      · intro later member
        exact entriesPositive later (List.mem_cons_of_mem _ member)
      · exact result

theorem build_all (positive : α → Bool) (address : Key → Path n)
    (entries : List (Key × α)) (tree : Tree α n)
    (entriesPositive : ∀ entry∈entries,positive entry.2=true)
    (result : Init.build address entries=.ok tree) : tree.All positive := by
  apply construct_preserves_all positive address entries (Tree.empty n) tree _ entriesPositive result
  intro path key value found
  rw [Views.empty_lookup] at found
  cases found

theorem live_entries_positive (cfg : Config) (state : State) (valid : InitialValid cfg state) :
    ∀ entry∈Init.liveEntries state,LeafInterpretation.positive entry.2=true := by
  intro entry member
  obtain ⟨row,inRows,same⟩:=List.mem_map.mp member
  subst entry
  obtain ⟨_,_,_,_,positiveRows,_,_,_⟩:=valid
  change decide (0<row.x.value)=true
  exact decide_eq_true_eq.mpr (positiveRows row inRows).2

theorem boundary_live_all (env : Machine.Environment) (boundary : Machine.Boundary)
    (valid : Machine.BoundaryValid env boundary) : boundary.live.All LeafInterpretation.positive :=
  build_all LeafInterpretation.positive env.address (Init.liveEntries boundary.subject.business)
    boundary.live (live_entries_positive env.cfg boundary.subject.business valid.1) valid.2.1

theorem boundary_live_root_positive (hash : Node LiveValue → Digest)
    (env : Machine.Environment) (boundary : Machine.Boundary)
    (valid : Machine.BoundaryValid env boundary) :
    (boundary.live.summary hash LeafInterpretation.positive).positive=true :=
  (Views.summary_positive_exact hash LeafInterpretation.positive boundary.live).mpr
    (boundary_live_all env boundary valid)

theorem boundary_full_live_opening (hash : Node LiveValue → Digest)
    (env : Machine.Environment) (boundary : Machine.Boundary)
    (valid : Machine.BoundaryValid env boundary) (opening : Opening LiveValue 256)
    (root : (opening.fold hash LeafInterpretation.positive).digest=
      (boundary.live.summary hash LeafInterpretation.positive).digest)
    (binding : PathBinding hash LeafInterpretation.positive boundary.live opening) :
    opening=boundary.live.opening hash LeafInterpretation.positive opening.path :=
  PositivePathBinding.full_opening hash LeafInterpretation.positive boundary.live opening
    (boundary_live_root_positive hash env boundary valid) root binding

theorem full_used_opening (hash : Node Unit → Digest) (tree : UsedTree)
    (opening : Opening Unit 256)
    (root : (opening.fold hash (fun _=>true)).digest=(tree.summary hash (fun _=>true)).digest)
    (binding : PathBinding hash (fun _=>true) tree opening) :
    opening=tree.opening hash (fun _=>true) opening.path :=
  PositivePathBinding.full_opening hash (fun _=>true) tree opening
    (PositivePathBinding.true_predicate_root hash tree) root binding

theorem boundary_live_good (env : Machine.Environment) (boundary : Machine.Boundary)
    (valid : Machine.BoundaryValid env boundary) : boundary.live.Good := by
  have unique : ((Init.liveEntries boundary.subject.business).map Prod.fst).Nodup := by
    rw [Init.live_entry_keys]
    exact valid.1.1
  exact (Init.build_count env.address (Init.liveEntries boundary.subject.business)
    boundary.live unique valid.2.1).1

theorem changed_live_full_summary (hash : Node LiveValue → Digest)
    (env : Machine.Environment) (boundary : Machine.Boundary)
    (valid : Machine.BoundaryValid env boundary) (opening : Opening LiveValue 256)
    (key : Key) (value : LiveValue) (next : LiveTree)
    (result : boundary.live.put opening.path key value=.ok next)
    (root : (opening.fold hash LeafInterpretation.positive).digest=
      (boundary.live.summary hash LeafInterpretation.positive).digest)
    (binding : PathBinding hash LeafInterpretation.positive boundary.live opening) :
    (opening.replaceTip (some (key,value))).fold hash LeafInterpretation.positive=
      next.summary hash LeafInterpretation.positive := by
  have exactOpening:=boundary_full_live_opening hash env boundary valid opening root binding
  calc
    (opening.replaceTip (some (key,value))).fold hash LeafInterpretation.positive=
        ((boundary.live.opening hash LeafInterpretation.positive opening.path).replaceTip
          (some (key,value))).fold hash LeafInterpretation.positive :=
      congrArg (fun candidate : Opening LiveValue 256=>
        (candidate.replaceTip (some (key,value))).fold hash LeafInterpretation.positive) exactOpening
    _=next.summary hash LeafInterpretation.positive :=
      Views.updated_opening_root hash LeafInterpretation.positive boundary.live opening.path key value
        (boundary_live_good env boundary valid) result

end Core033.ValidatedPathReuse
