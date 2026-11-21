module
public import NativeParametricCanonicalSource
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036
/- UNSELECTED, UNEXECUTED DRAFT. This generic body needs independent lexical
and typed source tie-back certificates; no native admission follows. -/
namespace Correspondence036.ParametricRowTransport
abbrev NativeMap := serde_json.map.Map String serde_json.value.Value

def innerMap {E F : Type} (h : E → F) :
    core.result.Result Unit E → core.result.Result Unit F
  | .Ok value => .Ok value
  | .Err error => .Err (h error)
def rowMap {E F : Type} (h : E → F)
    (row : core.result.Result Unit E × NativeMap × NativeMap) :
    core.result.Result Unit F × NativeMap × NativeMap :=
  (innerMap h row.1, row.2.1, row.2.2)
def outerMap {A B : Type} (f : A → B) (computation : Result A) : Result B :=
  Aeneas.Std.bind computation (fun value => ok (f value))

theorem outerMap_bind_shared {A B C : Type}
    (f : B → C) (m : Result A) (left : A → Result B) (right : A → Result C)
    (next : ∀ value, outerMap f (left value) = right value) :
    outerMap f (Aeneas.Std.bind m left) = Aeneas.Std.bind m right := by
  change Aeneas.Std.bind (Aeneas.Std.bind m left) (fun value => ok (f value)) = _
  rw [Aeneas.Std.bind_assoc]
  exact congrArg (fun continuation => Aeneas.Std.bind m continuation) (funext next)

theorem outerMap_fail {A B : Type} (f : A → B) (error : Aeneas.Std.Error) :
    outerMap f (Result.fail error) = Result.fail error := by
  exact Aeneas.Std.bind_fail _ _
theorem outerMap_div {A B : Type} (f : A → B) :
    outerMap f Result.div = Result.div := by
  exact Aeneas.Std.bind_div _
theorem outerMap_vis {A B : Type} (f : A → B) (effect : RustEffect.Input)
    (continuation : RustEffect.Output effect → Result A) :
    outerMap f (Result.vis effect continuation) =
      Result.vis effect (fun value => outerMap f (continuation value)) := by
  exact Aeneas.Std.bind_vis _ _ _

/-- [transition_study036::reference::state_fact_row]:
    Source: 'src/reference.rs', lines 38:0-60:1 -/
def rowKernel {E : Type} (prerequisite : Str → E) (row : behavior_store.documents.SeedEntity) (parents : serde_json.map.Map String serde_json.value.Value) (children : serde_json.map.Map String serde_json.value.Value) : Result ((core.result.Result Unit E) × (serde_json.map.Map String serde_json.value.Value) × (serde_json.map.Map String serde_json.value.Value)) := do
  let v ← serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index (Shared0T.Insts.Serde_jsonValueIndexIndex Str.Insts.Serde_jsonValueIndexIndex) row.value (toStr "id")
  let o ← serde_json.value.Value.impl.as_str v
  let r ← core.option.Option.ok_or o (prerequisite (toStr "SeedIdentity"))
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
                                                           else ok (core.result.Result.Err (prerequisite (toStr "UnexpectedEntity")), parents, children)
  | core.ops.control_flow.ControlFlow.Break residual => let r1 ← core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual Unit (core.convert.FromSame E) residual
                                                        ok (r1, parents, children)


theorem rowKernel_natural (E F : Type) (mkE : Str → E) (mkF : Str → F)
    (h : E → F) (compat : ∀ text, h (mkE text) = mkF text)
    (row : behavior_store.documents.SeedEntity) (parents children : NativeMap) :
    outerMap (rowMap h) (rowKernel mkE row parents children) =
      rowKernel mkF row parents children := by
  unfold rowKernel
  simp only [Aeneas.Std.bind_tc_eq]
  apply outerMap_bind_shared
  intro idValue
  apply outerMap_bind_shared
  intro identity
  cases identity with
  | none =>
    simp only [core.option.Option.ok_or, core.result.Result.Insts.CoreOpsTry.branch,
      core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
      core.convert.FromSame, core.convert.FromSame.from, Aeneas.Std.bind_tc_eq,
      Aeneas.Std.bind_ok, outerMap, rowMap, innerMap, compat]
  | some borrowedId =>
    simp only [core.option.Option.ok_or, core.result.Result.Insts.CoreOpsTry.branch,
      Aeneas.Std.bind_tc_eq, Aeneas.Std.bind_ok]
    apply outerMap_bind_shared
    intro id
    apply outerMap_bind_shared
    intro entity
    apply outerMap_bind_shared
    intro isParent
    cases isParent with
    | true =>
      apply outerMap_bind_shared
      intro phase
      apply outerMap_bind_shared
      intro copiedPhase
      apply outerMap_bind_shared
      rintro ⟨previous, updatedParents⟩
      simp only [outerMap, rowMap, innerMap, Aeneas.Std.bind_ok]
    | false =>
      apply outerMap_bind_shared
      intro isChild
      cases isChild with
      | false =>
        simp only [outerMap, rowMap, innerMap, Aeneas.Std.bind_ok, compat]
      | true =>
        apply outerMap_bind_shared
        intro fields
        apply outerMap_bind_shared
        intro phaseKey
        apply outerMap_bind_shared
        intro phase
        apply outerMap_bind_shared
        intro copiedPhase
        apply outerMap_bind_shared
        rintro ⟨previousPhase, phaseFields⟩
        apply outerMap_bind_shared
        intro ownerKey
        apply outerMap_bind_shared
        intro owner
        apply outerMap_bind_shared
        intro copiedOwner
        apply outerMap_bind_shared
        rintro ⟨previousOwner, ownerFields⟩
        apply outerMap_bind_shared
        rintro ⟨previousChild, updatedChildren⟩
        simp only [outerMap, rowMap, innerMap, Aeneas.Std.bind_ok]
end Correspondence036.ParametricRowTransport
