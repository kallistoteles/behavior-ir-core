module
public import SeedFoldsNames.Funs
@[expose] public section

/- Actual-source caller laws, following the independently recorded missing-root
run551. These laws do not establish String, collection or runtime adequacy. -/
namespace Correspondence036.NativeJsonSourceIndex
open Aeneas.Std
abbrev Value := transition_study036.serde_json.value.Value
abbrev Dictionary (I : Type) := transition_study036.serde_json.value.index.Index I

theorem null_exact : transition_study036.serde_json.value.index.IndexValueIValue.index.NULL = transition_study036.serde_json.value.Value.Null := by
  unfold transition_study036.serde_json.value.index.IndexValueIValue.index.NULL
  rfl

theorem index_exact {I : Type} (dictionary : Dictionary I) (value : Value) (key : I) :
    transition_study036.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      (do let found ← dictionary.index_into key value
          Result.ok (found.getD transition_study036.serde_json.value.Value.Null)) := by
  unfold transition_study036.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index
  rw [null_exact]
  rfl

theorem index_none {I : Type} (dictionary : Dictionary I) (value : Value) (key : I)
    (observed : dictionary.index_into key value = Result.ok none) :
    transition_study036.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      Result.ok transition_study036.serde_json.value.Value.Null := by
  rw [index_exact, observed]
  rfl

theorem index_some {I : Type} (dictionary : Dictionary I) (value : Value) (key : I)
    (found : Value) (observed : dictionary.index_into key value = Result.ok (some found)) :
    transition_study036.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      Result.ok found := by
  rw [index_exact, observed]
  rfl

theorem index_failure {I : Type} (dictionary : Dictionary I) (value : Value) (key : I)
    (failure : Error) (observed : dictionary.index_into key value = Result.fail failure) :
    transition_study036.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      Result.fail failure := by
  rw [index_exact, observed]
  rfl

theorem index_divergence {I : Type} (dictionary : Dictionary I) (value : Value) (key : I)
    (observed : dictionary.index_into key value = Result.div) :
    transition_study036.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      Result.div := by
  rw [index_exact, observed]
  rfl

theorem index_read_field_only {I : Type} (left right : Dictionary I)
    (same : left.index_into = right.index_into) (value : Value) (key : I) :
    transition_study036.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index left value key =
      transition_study036.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index right value key := by
  rw [index_exact, index_exact, same]
end Correspondence036.NativeJsonSourceIndex
