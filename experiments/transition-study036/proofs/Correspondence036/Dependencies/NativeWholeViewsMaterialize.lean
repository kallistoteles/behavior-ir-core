module
public import NativeMaterializeLoop
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Complete generated materialization, conditional on the explicitly defined
primitive interpretations. This is not native/Store/runtime admission. The
existing child-loop theorem is imported unchanged, not re-proved here. -/
namespace Correspondence036.NativeWholeViewsMaterialize
open NativeProjectionLaws

abbrev ParentCursor := alloc.collections.btree.map.Iter String String ×
  serde_json.map.Map String serde_json.value.Value

def parentFold (rows : List (String × String)) (initial : Rows) : Rows :=
  rows.foldl (fun acc entry => put acc entry.1 (.String entry.2)) initial

private theorem eq_ok_of_spec {α : Type} {program : Result α} {expected : α}
    (h : WP.spec program (fun value => value = expected)) : program = ok expected := by
  cases program using Result.cases <;> simp_all

theorem parent_loop_fold (rows : List (String × String)) (initial : Rows) :
    views.Views.impl.materialize_loop0 ⟨rows⟩ ⟨initial⟩ =
      ok (serde_json.map.Map.mk (parentFold rows initial)) := by
  apply eq_ok_of_spec
  unfold views.Views.impl.materialize_loop0
  apply loop.spec_decr_nat
    (fun (state : ParentCursor) => state.1.remaining.length)
    (fun (state : ParentCursor) => parentFold state.1.remaining state.2.data = parentFold rows initial)
    (fun (out : serde_json.map.Map String serde_json.value.Value) => out = ⟨parentFold rows initial⟩)
    (fun (state : ParentCursor) => views.Views.impl.materialize_loop0.body state.1 state.2)
    (alloc.collections.btree.map.Iter.mk rows, serde_json.map.Map.mk initial)
  · rintro ⟨⟨remaining⟩, ⟨acc⟩⟩ invariant
    cases remaining with
    | nil =>
      simp only [views.Views.impl.materialize_loop0.body,
        alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next,
        bind_ok, Aeneas.Std.uncurry_apply_pair, WP.spec_ok]
      apply congrArg serde_json.map.Map.mk
      simpa only [parentFold, List.foldl_nil] using invariant
    | cons entry tail =>
      rcases entry with ⟨id, phase⟩
      simp only [views.Views.impl.materialize_loop0.body,
        alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next,
        alloc.string.String.Insts.CoreCloneClone.clone,
        NativeJsonMapOperations.insert_spec, bind_ok, Aeneas.Std.uncurry_apply_pair,
        WP.spec_ok]
      constructor
      · simpa only [parentFold, List.foldl_cons, put] using invariant
      · exact Nat.lt_succ_self _
  · rfl

def materialized (parents : List (String × String)) (children : List (String × views.ChildRow)) :
    serde_json.value.Value :=
  .Object ⟨put (put .nil "parents" (.Object ⟨parentFold parents .nil⟩))
    "children" (.Object ⟨NativeMaterializeLoop.foldRows .nil children .nil⟩)⟩

theorem parents_decoded : NativeStringCodec.decode (toStr "parents") = some "parents" := by decide +kernel
theorem children_decoded : NativeStringCodec.decode (toStr "children") = some "children" := by decide +kernel

theorem materialize_exact (view : views.Views) :
    views.Views.impl.materialize view = ok (materialized
      (CollectionsOrder.entries view.parents.data)
      (CollectionsOrder.entries view.children.data)) := by
  unfold views.Views.impl.materialize
  simp only [NativeJsonMapOperations.empty_new, bind_ok,
    SharedABTreeMap.Insts.CoreIterTraitsCollectIntoIteratorPairSharedAKSharedAVIter.into_iter]
  rw [parent_loop_fold]
  simp only [bind_ok]
  rw [NativeMaterializeLoop.materialize_loop1_fold]
  simp only [bind_ok, _root_.Str.Insts.AllocBorrowToOwnedString.to_owned]
  rw [NativeStringCodec.own_result_decoded _ _ parents_decoded]
  simp only [bind_ok, NativeJsonMapOperations.insert_spec, Aeneas.Std.uncurry_apply_pair]
  rw [NativeStringCodec.own_result_decoded _ _ children_decoded]
  simp only [bind_ok, NativeJsonMapOperations.insert_spec, Aeneas.Std.uncurry_apply_pair]
  rfl

theorem materialize_frame (left right : views.Views)
    (parents : left.parents = right.parents) (children : left.children = right.children) :
    views.Views.impl.materialize left = views.Views.impl.materialize right := by
  rw [materialize_exact, materialize_exact, parents, children]

end Correspondence036.NativeWholeViewsMaterialize
