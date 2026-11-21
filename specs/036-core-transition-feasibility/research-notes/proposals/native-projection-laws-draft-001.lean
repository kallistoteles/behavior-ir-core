module
public import NativeProjectionComponents
@[expose] public section
open Aeneas Aeneas.Std Result ControlFlow
open transition_study036

/- Proposed actual-source component laws under the candidate dependency value
interpretations. They do not establish native library/allocator/effect/compiler
adequacy, Store/version relations, full folds, or Core B01–B10 correspondence.
The original component bytes remain independently conserved and unmodified. -/
namespace Correspondence036.NativeProjectionLaws
open Correspondence036.CollectionsData
abbrev NativeValue := transition_study036.serde_json.value.Value
abbrev Rows := Map String NativeValue

def put (rows : Rows) (key : String) (value : NativeValue) : Rows :=
  (NativeJsonMapOperations.orderedInsert NativeKeyOrder.cmpString key value rows).2

def entityFields (id owner phase : String) : Rows :=
  put (put (put .nil "id" (.String id)) "owner" (.String owner)) "phase" (.String phase)

def projectedFields (basis : Rows) (owner phase : String) : Rows :=
  put (put basis "phase" (.String phase)) "owner" (.String owner)

private theorem decode_id : NativeStringCodec.decode (toStr "id") = some "id" := by
  decide +kernel
private theorem decode_owner : NativeStringCodec.decode (toStr "owner") = some "owner" := by
  decide +kernel
private theorem decode_phase : NativeStringCodec.decode (toStr "phase") = some "phase" := by
  decide +kernel

theorem child_entity_value (id owner phase : Str) (idValue ownerValue phaseValue : String)
    (idDecoded : NativeStringCodec.decode id = some idValue)
    (ownerDecoded : NativeStringCodec.decode owner = some ownerValue)
    (phaseDecoded : NativeStringCodec.decode phase = some phaseValue) :
    views.child_entity_value id owner phase =
      ok (NativeValue.Object ⟨entityFields idValue ownerValue phaseValue⟩) := by
  simp [views.child_entity_value, entityFields, put,
    NativeJsonMapOperations.empty_new, NativeJsonMapOperations.insert_spec,
    _root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
    NativeStringCodec.own_result_decoded _ _ decode_id,
    NativeStringCodec.own_result_decoded _ _ decode_owner,
    NativeStringCodec.own_result_decoded _ _ decode_phase,
    NativeStringCodec.own_result_decoded _ _ idDecoded,
    NativeStringCodec.own_result_decoded _ _ ownerDecoded,
    NativeStringCodec.own_result_decoded _ _ phaseDecoded]

theorem materialize_empty (basis children : Rows) :
    views.Views.impl.materialize_loop1.body ⟨basis⟩ ⟨[]⟩ ⟨children⟩ =
      ok (done (serde_json.map.Map.mk children)) := by
  simp [views.Views.impl.materialize_loop1.body,
    alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next]

theorem materialize_step (basis children : Rows) (id : String) (row : views.ChildRow)
    (tail : List (String × views.ChildRow)) :
    views.Views.impl.materialize_loop1.body ⟨basis⟩ ⟨(id, row) :: tail⟩ ⟨children⟩ =
      ok (cont (alloc.collections.btree.map.Iter.mk tail,
        serde_json.map.Map.mk (put children id
          (.Object ⟨projectedFields basis row.owner row.phase⟩)))) := by
  simp [views.Views.impl.materialize_loop1.body,
    alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next,
    alloc.string.String.Insts.CoreCloneClone.clone,
    NativeJsonMapOperations.insert_spec, projectedFields, put,
    _root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
    NativeStringCodec.own_result_decoded _ _ decode_owner,
    NativeStringCodec.own_result_decoded _ _ decode_phase]

end Correspondence036.NativeProjectionLaws
