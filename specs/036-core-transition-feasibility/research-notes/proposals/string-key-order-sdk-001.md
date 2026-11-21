# Reusable pinned SDK facts for String and byte order

Research only, 2026-11-20. **New, unselected note.** This source-only follow-up to [string-key-order-001](string-key-order-001.md) inspects owning sources of the pinned Lean 4.36.0-rc2 SDK. It creates only this note: no builds, tests, private outputs, live outcomes, selected-source edits or native adequacy claims. Existing theorem signatures below are transcribed from source; proposed snippets have not been elaborated or checked.

## Finding and recommended comparator

The pinned SDK already proves the needed **Lean-side** owned String order laws. Its String comparison is directly UTF-8-byte-array comparison, rather than a separate character or locale comparator. `String.compare` is `Ord.compare s.toByteArray t.toByteArray`; `Ord String` selects it. String has `Std.LawfulOrderOrd`, `Std.TransOrd`, `Std.LawfulEqOrd`, `Std.IsLinearOrder`, and `Std.LinearOrderPackage` instances in the same owner. Therefore a prospective owned String model can use `Ord.compare` directly and prove its byte meaning by rewriting; it need not introduce a fresh recursive byte comparator or prove Unicode character-order equivalence. This refines the earlier note's absence claim, which concerned the inspected Aeneas model owners, not the SDK. [String comparison and instances](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Compare.lean:51).

`String.toUTF8` is definitionally `toByteArray`, and the latter is injective. Thus String equality can be reflected through byte arrays using an existing theorem, rather than a new encoding-injectivity proof. These are Lean String facts; equating them with the selected Rust String Eq/Ord dictionaries still requires the source binding and native/library relation. [UTF-8 encoding alias](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Defs.lean:75), [byte-array injectivity](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Defs.lean:107).

## Exact byte conversion bridges

These existing public theorem signatures are available:

```lean
String.compare_toByteArray_toByteArray {s t : String} :
  Ord.compare s.toByteArray t.toByteArray = Ord.compare s t

String.toByteArray_inj {s t : String} :
  s.toByteArray = t.toByteArray ↔ s = t

ByteArray.compare_data_data {a b : ByteArray} :
  Ord.compare a.data b.data = Ord.compare a b

Array.compare_eq_compare_toList {α} [Ord α] {a₁ a₂ : Array α} :
  compare a₁ a₂ = compare a₁.toList a₂.toList

List.compare_toByteArray_toByteArray {l₁ l₂ : List UInt8} :
  compare l₁.toByteArray l₂.toByteArray = compare l₁ l₂

List.toList_data_toByteArray {l : List UInt8} :
  l.toByteArray.data.toList = l

List.toByteArray_inj {l l' : List UInt8} :
  l.toByteArray = l'.toByteArray ↔ l = l'
```

Owners: [String compare bridge](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Compare.lean:61), [String injectivity](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Defs.lean:107), [ByteArray bridge](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Lex.lean:51), [Array bridge](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Ord/Array.lean:69), [List byte-array comparison](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Lex.lean:94), [List conversion inverse](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Bootstrap.lean:41), [List conversion injectivity](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Lemmas.lean:311).

Prefer `bytes s := s.toByteArray.data.toList : List UInt8` as the mathematical byte view. It permits this short proposed proof:

```lean
-- Proposed local lemma; not checked in this investigation.
theorem string_compare_bytes (s t : String) :
    compare s t = compare s.toByteArray.data.toList t.toByteArray.data.toList := by
  rw [← String.compare_toByteArray_toByteArray,
      ← ByteArray.compare_data_data, Array.compare_eq_compare_toList]
```

There is also the order-level chain: `String.toByteArray_lt_toByteArray_iff`, `ByteArray.data_lt_data`, and `Array.lt_toList`; each relates its byte view's `<` to the carrier's `<`. `List.toByteArray_lt_toByteArray` and `List.toByteArray_le_toByteArray` relate conversion to the List lex order. [String order bridges](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Compare.lean:36), [ByteArray order bridges](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Lex.lean:29), [Array order bridge](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Array/Lex/Lemmas.lean:38), [List conversion order bridges](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Lex.lean:82).

## Exact reusable comparison laws

The generic comparison laws live in **Init/Data/Order/Ord.lean**, while comparator constructors live in **Init/Data/Ord/Basic.lean**. The namespace distinction matters. For String, List UInt8, and other carriers with the stated instances, use these existing declarations:

```lean
Std.ReflOrd.compare_self {α : Type u} [Ord α] [Std.ReflOrd α] {a : α} :
  compare a a = .eq
-- Also exported as Std.compare_self.

Std.OrientedOrd.eq_swap [Ord α] [Std.OrientedOrd α] {a b : α} :
  compare a b = (compare b a).swap

Std.TransOrd.isLE_trans [Ord α] [Std.TransOrd α] {a b c : α} :
  (compare a b).isLE → (compare b c).isLE → (compare a c).isLE

Std.TransCmp.lt_trans [Std.TransCmp cmp] {a b c : α}
    (hab : cmp a b = .lt) (hbc : cmp b c = .lt) : cmp a c = .lt

Std.LawfulEqOrd.compare_eq_iff_eq [Ord α] [Std.LawfulEqOrd α] {a b : α} :
  compare a b = .eq ↔ a = b
-- Also exported as Std.compare_eq_iff_eq.

Std.LawfulEqCmp.compare_eq_iff_eq [Std.LawfulEqCmp cmp] {a b : α} :
  cmp a b = .eq ↔ a = b
```

The last two distinguish an Ord instance from an explicitly passed pure comparator. For reversal of an explicit comparator use the class field `Std.OrientedCmp.eq_swap`, with signature `cmp a b = (cmp b a).swap`. Strict transitivity similarly uses `TransCmp`, avoiding an unnecessary new Ord instance. [reflexivity and export](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/Ord.lean:58), [orientation](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/Ord.lean:80), [non-strict transitivity](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/Ord.lean:194), [strict transitivity](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/Ord.lean:247), [equality reflection and exports](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/Ord.lean:329).

`Std.TransCmp` extends `Std.OrientedCmp`; orientation supplies reflexivity. For strict-order propositions, `Std.compare_eq_lt` has signature `[Ord α] [LT α] [LE α] [Std.LawfulOrderOrd α] [Std.LawfulOrderLT α] → (compare a b = .lt ↔ a < b)`. `Std.compare_eq_gt` has the same assumptions and result `(compare a b = .gt ↔ b < a)`. These names are owned by `Order/FactoriesExtra.lean`. Do not confuse `Std.compare_eq_eq`, whose conclusion uses Boolean `a == b`, with `Std.compare_eq_iff_eq`, whose conclusion is logical `a = b`. [strict-order bridge and Boolean equality bridge](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/FactoriesExtra.lean:55).

For example, the proposed String comparator can discharge reflexivity with `Std.compare_self`, equality reflection with `Std.compare_eq_iff_eq`, reversal with `Std.OrientedOrd.eq_swap`, and strict transitivity with `Std.TransCmp.lt_trans (cmp := (compare : String → String → Ordering))`. All of these are Lean-side laws of the SDK-selected comparator. Total outcome is a three-constructor Ordering case split; together with equality reflection, orientation and transitivity this yields the needed total-order comparator facts. String also has the existing linear-order instances cited above.

## Byte lists, unsigned bytes, and prefix controls

`Ord (List α)` uses `List.compareLex compare`. Its defining equations are exactly empty/empty = eq, empty/nonempty = lt, nonempty/empty = gt, and head comparison followed by tail comparison on eq. Existing equation lemmas are `List.compare_cons_cons`, `List.compare_nil_cons`, `List.compare_cons_nil`, `List.compare_nil_nil`; the custom-comparator versions are `List.compareLex_cons_cons`, `List.compareLex_nil_cons`, `List.compareLex_cons_nil`, and `List.compareLex_nil_nil`. Thus no fresh recursive lex implementation is needed. [definition and equations](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Ord/Basic.lean:515).

The SDK has `Std.TransOrd UInt8` and `Std.LawfulEqOrd UInt8` instances. List instances lift reflexivity, equality reflection, orientation and transitivity from their elements. Byte comparison is unsigned: `UInt8.lt_iff_toNat_lt {a b : UInt8} : a < b ↔ a.toNat < b.toNat` and the corresponding `le_iff_toNat_le` are emitted by the `declare_uint_theorems UInt8 8` macro invocation. [UInt8 comparator/instances](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Ord/UInt.lean:27), [List law instances](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/Ord.lean:717), [numeric byte-order lemmas](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/UInt/Lemmas.lean:66), [UInt8 macro invocation](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/UInt/Lemmas.lean:260).

For a shared prefix, `List.compare_append_append_of_length_eq [Ord α] (h : l₁.length = l₂.length)` proves `compare (l₁ ++ l₃) (l₂ ++ l₄) = (compare l₁ l₂).then (compare l₃ l₄)`. Set `l₁ = l₂`, use `Std.compare_self` and `Ordering.eq_then`, then apply the empty/nonempty equations. This directly supports the empty, NUL and multibyte-prefix controls from the first note; nothing in the List equations treats zero as termination. [append comparison theorem](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/Ord.lean:745), [Ordering.then equations](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Ord/Basic.lean:269).

When converting byte types, use the exact existing theorem:

```lean
List.compare_map_map [Ord α] {β} [Ord β] (f : α → β)
    (hf : ∀ a b, compare (f a) (f b) = compare a b) {l₁ l₂ : List α} :
  compare (l₁.map f) (l₂.map f) = compare l₁ l₂
```

The custom-comparator variant `List.compareLex_map_map` replaces `hf` by `∀ a b, cmp' (f a) (f b) = cmp a b` and gives `(l₁.map f).compareLex cmp' (l₂.map f) = l₁.compareLex cmp l₂`. The element comparator-preservation hypothesis must actually be proved; the theorem does not infer it from a numerical-looking conversion. [map comparison theorems](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/Ord.lean:750).

For propositional list order, `List.lex_trans`, `List.lex_asymm`, and `List.map_lt_map_iff_of_injective` are available. Their exact roles are broader than needed for direct compare reuse: the last requires both pointwise `<` equivalence and injectivity, while `compare_map_map` requires pointwise comparison equality. [lex transitivity](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/List/Lex.lean:178), [lex asymmetry](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/List/Lex.lean:239), [mapped strict order](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/List/Lex.lean:603).

## Product lex order and EntityKey

The SDK's pair order constructor is **root `lexOrd`**, not `Prod.lexOrd`, and is not declared as a global instance here:

```lean
lexOrd [Ord α] [Ord β] : Ord (α × β)
-- compare := compareLex (compareOn (·.1)) (compareOn (·.2))

compareLex (cmp₁ cmp₂ : α → β → Ordering) (a : α) (b : β) : Ordering
-- := (cmp₁ a b).then (cmp₂ a b)

compareLex_eq_eq {α} {cmp₁ cmp₂} {a b : α} :
  compareLex cmp₁ cmp₂ a b = .eq ↔ cmp₁ a b = .eq ∧ cmp₂ a b = .eq

compareOn [Ord β] (f : α → β) (x y : α) : Ordering
-- := compare (f x) (f y)
```

[pair order constructor](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Ord/Basic.lean:625), [compareLex and equality equation](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Ord/Basic.lean:338), [compareOn](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Ord/Basic.lean:481).

`Order/Ord.lean` installs `lexOrd` locally while defining pair `ReflOrd`, `OrientedOrd`, `TransOrd`, and `LawfulEqOrd` instances. To reuse those laws, explicitly select `letI : Ord (String × String) := lexOrd` in the prospective proof, and compare `(k.entity,k.id)` against `(l.entity,l.id)`. Alternatively define `cmpE := compareLex (compareOn entity) (compareOn id)`. The SDK already lifts ReflCmp/OrientedCmp/TransCmp through each `compareOn` and through `compareLex`. For `LawfulEqCmp cmpE`, prove componentwise equality with `compareLex_eq_eq` plus `Std.compare_eq_iff_eq`, and reconstruct EntityKey equality by destructing its two-string structure. A single projection is not injective; do not infer equality reflection for `compareOn entity` alone. [lex/projection instances and locally selected pair instances](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/Ord.lean:591).

This yields the same mathematical field sequence as the source EntityKey derive, which declares entity before id. Identifying that source-derived dictionary with this Lean construction remains an obligation. [actual EntityKey](/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/documents.rs:238).

## Remaining Str and native work

The SDK facts do not identify Aeneas `U8` with SDK `UInt8`, nor do they make Aeneas `Str := Slice U8` UTF-8-valid. A small route is to define `encode : U8 → UInt8`, prove numeric preservation and injectivity, and compare `q.val.map encode`. The existing List laws then give comparator laws; Slice equality reflection additionally uses `Slice.eq_iff` and injectivity of the element conversion. Define the owned/borrowed relation by `q.val.map encode = s.toByteArray.data.toList`. Under this relation the `string_compare_bytes` bridge gives borrow-order coherence directly. Valid UTF-8 follows from the related String bytes, and size bounds remain separate obligations. [Aeneas Str](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/StringDef.lean:8), [Slice equality reflection](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/SliceDef.lean:53).

The existing Aeneas `toStr` instead maps `s.toByteArray.toList` into U8. **`ByteArray.toList` and `ByteArray.data.toList` are separate definitions.** The former uses an index loop and a reversed accumulator; the SDK bridges above use the latter. The bounded inspected owners supply no identified theorem equating these two list views. If reusing `toStr`, prove that equality rather than assuming definitional equality: an appropriate loop invariant is `loop i r = r.reverse ++ bs.data.toList.drop i` for `i ≤ bs.size`, then instantiate `i = 0, r = []`. Also prove the UInt8→U8→UInt8 round trip and respect `toStr`'s U32-size precondition. Alternatively construct the prospective borrow from `data.toList` with the actual Usize bound, avoiding the extra loop bridge. No new conversion is implemented by this note. [ByteArray.toList definition](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Basic.lean:202), [Aeneas toStr implementation/bound](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/String.lean:29).

String.compare and ByteArray.compare also have `@[extern ...]` annotations. Their Lean definitions and theorems support mathematical model proofs; this note does not verify the external runtime implementations or equate any Lean comparator with selected Rust 1.98 native behavior, analysis 1.100 behavior, compiler derives, allocation, generic effectful dictionaries, or B-tree operations. Preserve the native/source and collection-operation obligations in the first note. No live guard result or proof admission is inferred from this source investigation.
