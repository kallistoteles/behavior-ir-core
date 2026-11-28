module
public import NativeWholeCanonicalExact
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Actual typed-view text/error functions in the conserved whole context.
Candidate API meanings remain conditional; no Store or native admission. -/
namespace Correspondence036.NativeWholeTypedText
open NativeWholeCanonicalRow NativeKeyOrder NativeStringCodec

abbrev Failure := views.SeedFailure
abbrev Key := behavior_store.documents.EntityKey
abbrev Version := behavior_store.documents.EntityVersion

def textSpec (value : Value) (label : String) : core.result.Result String Failure :=
  match field value label with
  | .String text => .Ok text
  | _ => .Err .Field

def TextDomain (value : Value) : Prop :=
  ∀ label text, field value label = .String text → (ownedBytes text).length ≤ Usize.max

theorem text_exact (value : Value) (key : Str) (label : String)
    (decoded : decode key = some label) (domain : TextDomain value) :
    views.text value key = ok (textSpec value label) := by
  have read := generated_index_field key label value decoded
  dsimp only [NativeRowDictionary.concreteDictionary] at read
  unfold views.text
  rw [read]
  simp only [bind_ok, Aeneas.Std.uncurry_apply_pair]
  cases found : field value label with
  | String text =>
    have bound := domain label text found
    rw [generated_as_str_string text bound]
    simp [textSpec, found, _root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
      ownResult, decode_borrow]
  | Null | Bool _ | Number _ | Array _ | Object _ =>
    simp [textSpec, found, serde_json.value.Value.impl.as_str]

theorem seed_metadata_frame (key : Key) (left right : Version)
    (sameEntity : left.entity = right.entity) (sameValue : left.value = right.value)
    (parents : alloc.collections.btree.map.BTreeMap String String alloc.alloc.Global)
    (children : alloc.collections.btree.map.BTreeMap String views.ChildRow alloc.alloc.Global)
    (active : alloc.collections.btree.map.BTreeMap String
      (alloc.collections.btree.set.BTreeSet String alloc.alloc.Global) alloc.alloc.Global) :
    views.seed_row key left parents children active =
      views.seed_row key right parents children active := by
  simp only [views.seed_row, sameEntity, sameValue]

def publicError : Failure → StudyError
  | .Field => .Prerequisite (toStr "TypedViewField")
  | .Identity => .Prerequisite (toStr "ViewIdentity")
  | .ParentPhase => .Prerequisite (toStr "ViewParentPhase")
  | .ChildPhase => .Prerequisite (toStr "ViewChildPhase")
  | .UnknownEntity => .Prerequisite (toStr "UnknownViewEntity")
  | .MissingOwner => .Prerequisite (toStr "ViewMissingOwner")
  | .Lifecycle => .Prerequisite (toStr "ViewLifecycleViolation")

theorem public_error_exact (failure : Failure) :
    views.SeedFailure.impl.into_study failure = ok (publicError failure) := by
  cases failure <;> rfl

theorem public_error_prerequisite (failure : Failure) :
    ∃ message : Str, views.SeedFailure.impl.into_study failure = ok (.Prerequisite message) := by
  cases failure <;> exact ⟨_, rfl⟩

end Correspondence036.NativeWholeTypedText
