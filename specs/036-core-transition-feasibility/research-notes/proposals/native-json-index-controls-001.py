"""Actual candidate-body corruption controls; no native primitive claim."""


def controls(model):
    boundary = "\nnamespace Correspondence036.NativeJsonIndexOperations\n"
    if model.count(boundary) != 2:
        raise ValueError("NativeJsonIndexProofBoundary")
    implementations = boundary.join(model.split(boundary)[:2])
    result = []
    for label, old, new, goal in [
        (
            "wrong-json-read-data",
            "ok (Correspondence036.CollectionsData.lookup owned map.data)",
            "ok (some .Null)",
            """
example (key : Str) (owned : String)
    (decoded : Correspondence036.NativeStringCodec.decode key = some owned) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into key
      (.Object ⟨.cons owned (.Bool true) .nil⟩) = .ok (some (transition_study036.serde_json.value.Value.Bool true)) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_into,
    Correspondence036.NativeJsonIndexOperations.decodeKey, decoded,
    Correspondence036.CollectionsData.lookup]
""",
        ),
        (
            "wrong-json-mutable-frame",
            "fun replacement => .Object ⟨Correspondence036.CollectionsFocus.writeValue focus replacement⟩",
            "fun _ => .Object ⟨.nil⟩",
            """
example (key : Str) (owned : String)
    (decoded : Correspondence036.NativeStringCodec.decode key = some owned) :
    (do let (_, backward) ← _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut key
          (.Object ⟨.cons owned (.Bool true) (.cons "unrelated" .Null .nil)⟩)
        .ok (backward (some (.Bool false)))) =
      .ok (transition_study036.serde_json.value.Value.Object
        ⟨.cons owned (.Bool false) (.cons "unrelated" .Null .nil)⟩) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut,
    Correspondence036.NativeJsonIndexOperations.decodeKey, decoded,
    Correspondence036.CollectionsFocus.capture,
    Correspondence036.CollectionsFocus.writeValue,
    Correspondence036.CollectionsFocus.append]
""",
        ),
        (
            "wrong-json-null-backward",
            "ok (.Null, fun replacement => .Object ⟨Correspondence036.CollectionsFocus.append\n        front (.cons stored replacement suffix)⟩)",
            "ok (.Null, fun _ => .Null)",
            """
example (key : Str) (owned : String)
    (decoded : Correspondence036.NativeStringCodec.decode key = some owned) :
    (do let (_, backward) ← _root_.Str.Insts.Serde_jsonValueIndexIndex.index_or_insert key .Null
        .ok (backward (.Bool true))) =
      .ok (transition_study036.serde_json.value.Value.Object ⟨.cons owned (.Bool true) .nil⟩) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_or_insert,
    _root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
    Correspondence036.NativeStringCodec.own_result_decoded key owned decoded,
    Correspondence036.CollectionsGap.captureM, Correspondence036.CollectionsFocus.append]
""",
        ),
    ]:
        if implementations.count(old) != 1:
            raise ValueError("NativeJsonIndexMutationPoint")
        result.append((label, implementations.replace(old, new) + goal, "normalized-False"))
    return result
