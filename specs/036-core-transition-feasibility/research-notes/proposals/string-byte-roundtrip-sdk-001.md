# Pinned SDK String/byte roundtrip and checked decoding

Research only, 2026-11-21. **New, unselected note.** Bounded primary-source inspection only; no builds, tests, downloads, current/private/live-output reads, selected-file edits, or inference about the running iterator probe. Existing declarations below are transcribed from the retained Lean 4.36.0-rc2 SDK/Aeneas sources. Proposed local lemmas and snippets are not elaborated or checked by this investigation. The native Rust 1.98.1 source gap in [native-stdlib-source-001](native-stdlib-source-001.md) remains.

## Actual computable decoder and representation

The checked decoder is **`String.fromUTF8?`**, not `String.ofByteArray?`. The bounded owning String-source query found the former definition and no latter definition. Its exact declaration/body is:

```lean
@[inline, expose] def String.fromUTF8? (a : ByteArray) : Option String :=
  if h : a.IsValidUTF8 then some (String.fromUTF8 a h) else none
```

The required `Decidable a.IsValidUTF8` is implemented through the computable Boolean validator, whose recursive definition has a decreasing byte-count measure. Thus this supplies a computable Str-byte-list → Option String route without assuming that arbitrary Str bytes are valid. The SDK also has `String.fromUTF8!`, which panics on invalid bytes; the Option form exposes invalidity explicitly and is suitable for the prospective model. [validator definition](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Basic.lean:88), [decidable validity and checked decoder](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Basic.lean:178), [panic decoder](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Basic.lean:188).

The proof-taking constructor wrapper has the exact signature/body:

```lean
def String.fromUTF8 (a : ByteArray) (h : a.IsValidUTF8) : String :=
  .ofByteArray a h

@[simp] theorem String.fromUTF8_eq_ofByteArray {a : ByteArray} {h : a.IsValidUTF8} :
  String.fromUTF8 a h = String.ofByteArray a h := rfl
```

The SDK String representation has constructor `String.ofByteArray`, a field `toByteArray : ByteArray`, and a proof field `isValidUTF8 : ByteArray.IsValidUTF8 toByteArray`. Consequently the mathematical constructor preserves the complete bytes, including NUL and multibyte sequences; the proof field establishes validity rather than normalization or substitution. `String.toUTF8` is definitionally `toByteArray`. Both String construction/projection and the validator have runtime extern annotations, so these Lean definitions do not establish external-runtime/native adequacy. [String representation](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Prelude.lean:3689), [fromUTF8 and toUTF8 owners](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Defs.lean:64).

## Existing validity and equality lemmas

The exact existing validity signatures are:

```lean
ByteArray.isSome_utf8Decode?_eq_validateUTF8 {b : ByteArray} :
  b.utf8Decode?.isSome = b.validateUTF8

ByteArray.isSome_utf8Decode?_iff {b : ByteArray} :
  b.utf8Decode?.isSome ↔ ByteArray.IsValidUTF8 b

@[simp] ByteArray.validateUTF8_eq_true_iff {b : ByteArray} :
  b.validateUTF8 = true ↔ ByteArray.IsValidUTF8 b

@[simp] ByteArray.validateUTF8_eq_false_iff {b : ByteArray} :
  b.validateUTF8 = false ↔ ¬ ByteArray.IsValidUTF8 b

String.toByteArray_inj {s t : String} :
  s.toByteArray = t.toByteArray ↔ s = t
```

`ByteArray.utf8Decode?` returns `Option (Array Char)` and is a separate operation from `String.fromUTF8?`; do not substitute one type/signature for the other. [character-array decoder](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Basic.lean:69), [validator equality](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Basic.lean:130), [validity equivalences](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Basic.lean:164), [String byte injectivity](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Defs.lean:107).

`ByteArray.IsValidUTF8 b` itself has constructor `.intro (m : List Char) (hm : b = m.utf8Encode)`. An existential byte-representation equivalence with a String can therefore be proved directly: `b.IsValidUTF8 ↔ ∃ s : String, s.toByteArray = b`. Forward, choose `String.fromUTF8 b h`; backward, transport `s.isValidUTF8` along the equality. This is a proposed local lemma, not an identified named SDK theorem. [validity proposition and String representation](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Prelude.lean:3669).

## ByteArray/list inverse facts

Keep the model's existing byte view **`.data.toList`**. The following are exact existing declarations:

```lean
@[simp] List.toList_data_toByteArray {l : List UInt8} :
  l.toByteArray.data.toList = l

@[simp] List.data_toByteArray {l : List UInt8} :
  l.toByteArray.data = l.toArray

@[simp] List.size_toByteArray {l : List UInt8} :
  l.toByteArray.size = l.length

@[simp] List.toByteArray_inj {l l' : List UInt8} :
  l.toByteArray = l'.toByteArray ↔ l = l'

ByteArray.ext : {x y : ByteArray} → x.data = y.data → x = y

@[simp, grind =] Array.toArray_toList {xs : Array α} :
  xs.toList.toArray = xs

Array.ext' {xs ys : Array α} (h : xs.toList = ys.toList) : xs = ys

@[simp] Array.toList_inj {xs ys : Array α} :
  xs.toList = ys.toList ↔ xs = ys
```

[List-to-ByteArray list inverse and ByteArray ext](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Bootstrap.lean:36), [data and size equations](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Lemmas.lean:70), [List-to-ByteArray injectivity](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Lemmas.lean:311), [Array ext and inverse](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Array/Basic.lean:85), [Array list injectivity](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Array/Lemmas.lean:47).

The reverse ByteArray roundtrip is a small proposed local lemma:

```lean
-- New lemma sketch only, not checked here.
theorem byteArray_data_list_roundtrip (b : ByteArray) :
    b.data.toList.toByteArray = b := by
  apply ByteArray.ext
  rw [List.data_toByteArray, Array.toArray_toList]
```

The same sources give injectivity of the byte-list view without needing a new representation assumption: from `x.data.toList = y.data.toList`, use `Array.ext'`, then `ByteArray.ext`. Conversely apply `congrArg (fun b : ByteArray => b.data.toList)` to ByteArray equality. Composing this with `String.toByteArray_inj` proves `ownedBytes s = ownedBytes t ↔ s = t` for the current `ownedBytes` definition.

## Minimal owned/borrowed roundtrip construction

Let `ownedBytes s := s.toByteArray.data.toList` and `borrowedBytes q := q.val.map toLeanByte`, using the draft's bit-exact U8→UInt8 conversion. Define the prospective decoder as:

```lean
-- Model definition sketch only.
def decodeStr? (q : Aeneas.Std.Str) : Option String :=
  String.fromUTF8? (borrowedBytes q).toByteArray
```

For owned bytes, the ByteArray inverse proves `(ownedBytes s).toByteArray = s.toByteArray`. For `s.toByteArray`, the UTF-8 premise is already supplied by `s.isValidUTF8`. Thus the needed owned decoder roundtrip has this short proposed local proof:

```lean
-- New lemma sketch only, not checked here.
theorem fromUTF8?_owned (s : String) :
    String.fromUTF8? s.toByteArray = some s := by
  unfold String.fromUTF8?
  rw [dif_pos s.isValidUTF8]
  rfl
```

No named `String.fromUTF8?` roundtrip theorem was identified by the bounded owning String-source query; do not cite a fabricated one. The above proof follows from the actual definition, constructor eta and proof irrelevance. The same definition gives local proof obligations with simple validity case splits:

- If `h : b.IsValidUTF8`, then `String.fromUTF8? b = some (String.fromUTF8 b h)`.
- If `h : ¬ b.IsValidUTF8`, then `String.fromUTF8? b = none`.
- `String.fromUTF8? b = some s` implies `s.toByteArray = b`.
- `(String.fromUTF8? b).isSome ↔ b.IsValidUTF8`, and `String.fromUTF8? b = none ↔ ¬ b.IsValidUTF8`.

For `decodeStr? q = some s`, project the successful result's bytes and apply `List.toList_data_toByteArray` to obtain **`ownedBytes s = borrowedBytes q`**. This gives exact content preservation and SDK comparison coherence, rather than merely preservation of decoded characters. For `q = borrow s bound`, the existing draft's `borrow_bytes`, ByteArray inverse and owned decoder roundtrip prove `decodeStr? q = some s`. Conversely, for a valid q decoded to s, use the byte equality, byte conversion inverse and Slice equality reflection to prove borrowing s returns q; its bound must be transported from q's Slice bound. [Aeneas Slice bound/equality](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/SliceDef.lean:15), [Slice equality reflection](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/SliceDef.lean:53).

Crucially, a **Str is already Usize-bounded** by its Slice carrier, and mapping the fixed byte conversion preserves length. Invalid UTF-8 remains possible because Str has no validity field. Thus checked Str decoding needs a UTF-8 premise for its success theorem, but does not need a second arbitrary Usize restriction. In the opposite owned→Str direction, Lean String has UTF-8 validity but no Aeneas Usize bound; `bound : (ownedBytes s).length ≤ Usize.max` remains a necessary input or an explicit checked branch. None of these model domains alone establishes the actual native Rust allocation/representation domain.

## Aeneas failure constructors for off-domain totalization

The existing `Aeneas.Std.Error` constructors include `assertionFailure`, `maximumSizeExceeded`, `panic`, and `undef` (also integerOverflow, divisionByZero and arrayOutOfBounds). Exact constructors/operations include:

```lean
Aeneas.Std.Error.undef : Aeneas.Std.Error
Aeneas.Std.Error.maximumSizeExceeded : Aeneas.Std.Error
Aeneas.Std.Result.fail {α} (e : Aeneas.Std.Error) : Aeneas.Std.Result α
```

`Result.fail e` is a failure effect with no successful continuation, not `Option.none` and not divergence. The source supplies `[simp] fail_not_ok`, `fail_not_div`, and `bind_fail`, so its failure branch remains visible in proofs. [Error and Result definitions](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:39), [failure construction](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:79), [failure disjointness](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:178), [bind_fail](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:258).

A prospective totalization can return `.fail .undef` on invalid Str bytes and `.fail .maximumSizeExceeded` on an owned String whose byte length exceeds Usize. These are **declared model choices outside the proposed source domain**, not statements that Rust produces these errors, panics or undefined behavior. Prefer an explicit decoder Option first, then convert `none` into the selected model failure at the operation boundary. On related valid source values, prove those failure branches unreachable and show the Result operation is exactly `.ok` of the byte-preserving String/Str result. A global success claim for all Str or all Lean String inputs would be false for the proposed domains; a native primitive admission still requires exact source/dictionary/effect and compiler/library justification.
