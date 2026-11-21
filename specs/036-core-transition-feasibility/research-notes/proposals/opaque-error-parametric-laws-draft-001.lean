module
public import NativeParametricCanonicalSource
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Unexecuted universal parametric derivative of the canonical-row/view-step equations under candidate dependency
interpretations. Primitive field-read facts describe inputs, not desired output
equality. Source/Store/fold/runtime/compiler correspondence remains separate. -/
namespace Correspondence036.NativeParametricCanonicalChild
open CollectionsData NativeProjectionLaws
abbrev NativeValue := transition_study036.serde_json.value.Value

private theorem decoded_phase : NativeStringCodec.decode (toStr "phase") = some "phase" := by
  decide +kernel
private theorem decoded_owner : NativeStringCodec.decode (toStr "owner") = some "owner" := by
  decide +kernel
private theorem decoded_child : NativeStringCodec.decode (toStr "Child") = some "Child" := by
  decide +kernel
private theorem decoded_parent : NativeStringCodec.decode (toStr "Parent") = some "Parent" := by
  decide +kernel
private theorem child_bound : (NativeKeyOrder.ownedBytes "Child").length ≤ Usize.max :=
  NativeStringCodec.decode_bound (toStr "Child") "Child" decoded_child
private theorem borrow_child : NativeKeyOrder.borrow "Child" child_bound = toStr "Child" := by
  exact NativeStringCodec.borrow_decoded (toStr "Child") "Child" decoded_child
private theorem child_not_parent : (toStr "Child" : Str) ≠ toStr "Parent" := by
  intro same
  have decoded := congrArg NativeStringCodec.decode same
  simp only [decoded_child, decoded_parent, Option.some.injEq] at decoded
  exact (by decide +kernel : ("Child" : String) ≠ "Parent") decoded
private theorem as_str_child : alloc.string.String.impl.as_str "Child" = ok (toStr "Child") := by
  rw [NativeStringOperations.as_str_valid "Child" child_bound, borrow_child]

private theorem actual_index_read (key : Str) (raw found : NativeValue)
    (read : _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into key raw = ok (some found)) :
    serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index
      (transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex
        transition_study036.Str.Insts.Serde_jsonValueIndexIndex) raw key = ok found := by
  simp [serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index,
    _root_.Shared0T.Insts.Serde_jsonValueIndexIndex.index_into, read]

theorem canonical_child (J I : Type) (raw : NativeValue) (parents children : Rows)
    (id owner phase : String)
    (idRead : _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into (toStr "id") raw =
      ok (some (transition_study036.serde_json.value.Value.String id)))
    (phaseRead : _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into (toStr "phase") raw =
      ok (some (transition_study036.serde_json.value.Value.String phase)))
    (ownerRead : _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into (toStr "owner") raw =
      ok (some (transition_study036.serde_json.value.Value.String owner)))
    (idBound : (NativeKeyOrder.ownedBytes id).length ≤ Usize.max) :
    reference.parametric_state_fact_row (J := J) (I := I) (behavior_store.documents.SeedEntity.mk "Child" raw)
      ⟨parents⟩ ⟨children⟩ =
      ok (core.result.Result.Ok (), serde_json.map.Map.mk parents,
        serde_json.map.Map.mk (put children id
          (transition_study036.serde_json.value.Value.Object ⟨projectedFields .nil owner phase⟩))) := by
  have idIndex := actual_index_read (toStr "id") raw (.String id) idRead
  have phaseIndex := actual_index_read (toStr "phase") raw (.String phase) phaseRead
  have ownerIndex := actual_index_read (toStr "owner") raw (.String owner) ownerRead
  simp [reference.parametric_state_fact_row, idIndex, phaseIndex, ownerIndex,
    NativeJsonScalarOperations.as_str_string id idBound,
    core.option.Option.ok_or, core.result.Result.Insts.CoreOpsTry.branch,
    as_str_child, _root_.Str.Insts.CoreCmpPartialEqStr.eq, child_not_parent,
    serde_json.value.Value.Insts.CoreCloneClone.clone,
    NativeJsonMapOperations.empty_new, NativeJsonMapOperations.insert_spec,
    _root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
    NativeStringCodec.own_result_decoded _ _ (NativeStringCodec.decode_borrow id idBound),
    NativeStringCodec.own_result_decoded _ _ decoded_phase,
    NativeStringCodec.own_result_decoded _ _ decoded_owner,
    projectedFields, put]

theorem canonical_view_agreement (J I : Type) (raw : NativeValue) (parents children : Rows)
    (id owner phase : String) (tail : List (String × views.ChildRow))
    (idRead : _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into (toStr "id") raw =
      ok (some (transition_study036.serde_json.value.Value.String id)))
    (phaseRead : _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into (toStr "phase") raw =
      ok (some (transition_study036.serde_json.value.Value.String phase)))
    (ownerRead : _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into (toStr "owner") raw =
      ok (some (transition_study036.serde_json.value.Value.String owner)))
    (idBound : (NativeKeyOrder.ownedBytes id).length ≤ Usize.max) :
    let updated := put children id
      (transition_study036.serde_json.value.Value.Object ⟨projectedFields .nil owner phase⟩)
    reference.parametric_state_fact_row (J := J) (I := I) (behavior_store.documents.SeedEntity.mk "Child" raw)
      ⟨parents⟩ ⟨children⟩ =
      ok (core.result.Result.Ok (), serde_json.map.Map.mk parents, serde_json.map.Map.mk updated) ∧
    views.Views.impl.materialize_loop1.body ⟨.nil⟩
      ⟨(id, views.ChildRow.mk owner phase) :: tail⟩ ⟨children⟩ =
      ok (Aeneas.Std.ControlFlow.cont (alloc.collections.btree.map.Iter.mk tail,
        serde_json.map.Map.mk updated)) := by
  exact ⟨canonical_child J I raw parents children id owner phase idRead phaseRead ownerRead idBound,
    NativeProjectionLaws.materialize_step .nil children id (views.ChildRow.mk owner phase) tail⟩

end Correspondence036.NativeParametricCanonicalChild
