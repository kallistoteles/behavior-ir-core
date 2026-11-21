/-- [transition_study036::reference::state_fact_row]:
    Source: 'src/reference.rs', lines 38:0-60:1 -/
def reference.state_fact_row (row : behavior_store.documents.SeedEntity) (parents : serde_json.map.Map String serde_json.value.Value) (children : serde_json.map.Map String serde_json.value.Value) : Result ((core.result.Result Unit error.StudyError) × (serde_json.map.Map String serde_json.value.Value) × (serde_json.map.Map String serde_json.value.Value)) := do
  let v ← serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index (Shared0T.Insts.Serde_jsonValueIndexIndex Str.Insts.Serde_jsonValueIndexIndex) row.value (toStr "id")
  let o ← serde_json.value.Value.impl.as_str v
  let r ← core.option.Option.ok_or o (error.StudyError.Prerequisite (toStr "SeedIdentity"))
  let cf ← core.result.Result.Insts.CoreOpsTry.branch r
  match cf with
  | core.ops.control_flow.ControlFlow.Continue val => let id ← Str.Insts.AllocBorrowToOwnedString.to_owned val
                                                      let s ← alloc.string.String.impl.as_str row.entity
                                                      let b ← Str.Insts.CoreCmpPartialEqStr.eq s (toStr "Parent")
                                                      if b
                                                      then let v1 ← serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index (Shared0T.Insts.Serde_jsonValueIndexIndex Str.Insts.Serde_jsonValueIndexIndex) row.value (toStr "phase")
                                                           let v2 ← serde_json.value.Value.Insts.CoreCloneClone.clone v1
                                                           let (_, parents1) ← serde_json.map.MapStringValue.impl.insert parents id v2
                                                           ok (core.result.Result.Ok (), parents1, children)
                                                      else let b1 ← Str.Insts.CoreCmpPartialEqStr.eq s (toStr "Child")
                                                           if b1
                                                           then let fields ← serde_json.map.MapStringValue.impl.new
                                                                let s1 ← Str.Insts.AllocBorrowToOwnedString.to_owned (toStr "phase")
                                                                let v1 ← serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index (Shared0T.Insts.Serde_jsonValueIndexIndex Str.Insts.Serde_jsonValueIndexIndex) row.value (toStr "phase")
                                                                let v2 ← serde_json.value.Value.Insts.CoreCloneClone.clone v1
                                                                let (_, fields1) ← serde_json.map.MapStringValue.impl.insert fields s1 v2
                                                                let s2 ← Str.Insts.AllocBorrowToOwnedString.to_owned (toStr "owner")
                                                                let v3 ← serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index (Shared0T.Insts.Serde_jsonValueIndexIndex Str.Insts.Serde_jsonValueIndexIndex) row.value (toStr "owner")
                                                                let v4 ← serde_json.value.Value.Insts.CoreCloneClone.clone v3
                                                                let (_, fields2) ← serde_json.map.MapStringValue.impl.insert fields1 s2 v4
                                                                let (_, children1) ← serde_json.map.MapStringValue.impl.insert children id (serde_json.value.Value.Object fields2)
                                                                ok (core.result.Result.Ok (), parents, children1)
                                                           else ok (core.result.Result.Err (error.StudyError.Prerequisite (toStr "UnexpectedEntity")), parents, children)
  | core.ops.control_flow.ControlFlow.Break residual => let r1 ← core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual Unit (core.convert.FromSame error.StudyError) residual
                                                        ok (r1, parents, children)

