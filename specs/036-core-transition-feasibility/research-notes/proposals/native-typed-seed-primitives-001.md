# Native typed-seed primitive source review 001

Unselected proposal; source inspection only. No Lean, extraction, build, runtime, network, or tests were run for this note. No native refinement or completion is established.

Path abbreviations below are exact: `P=/var/tmp/behavior-ir-core036-v2/w001`, `B=P/analysis-backend-build/a0058/lean/Aeneas`, `G=P/native-extraction/a0514/generated`, `N=/var/tmp/behavior-ir-core036-evidence-v2/w001`.
All Lean names below use `open Aeneas Aeneas.Std`; generated packet definitions additionally use namespace `transition_study036` unless the external template places them at the root.

## Packet identity and limits

- [result.json](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/result.json) records extraction/translation exit 0, a0514 and source subject r9541; this is inspection of existing evidence, not a new execution.
- [checkpoint.json](/var/tmp/behavior-ir-core036-evidence-v2/w001/attempts/a0514/checkpoint.json) says stage `succeeded`, acceptance `blocked`, feature incomplete, adoption unactivated.
- `G/Types.lean:42–72` defines complete `serde_json.number.N` (`PosInt U64`, `NegInt I64`, `Float F64`), `Number { n : N }`, and all six `Value` variants. Keep these types intact.
- `G/Funs.lean:137–147` defines `Value.impl.as_str : Value → Result (Option Str)`: String dereferences through an external call; every other variant returns `ok none`, including every Number payload.
- `G/Funs.lean:151–167` defines all seven `SeedFailure.impl.into_study` mappings to `StudyError.Prerequisite (toStr literal)`; no map assumptions are needed for that definition.
- Sources: [Types.lean](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/Types.lean:42), [Funs.lean](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/Funs.lean:137).

## Operations actually implemented in the pinned backend

**Contains.** `B/Std/SliceIter.lean:41–44` owns the exact implementation:

```lean
core.slice.Slice.contains {T : Type _}
  (partialEqInst : core.cmp.PartialEq T T) (s : Slice T) (x : T) : Result Bool :=
  List.anyM (partialEqInst.eq x) s.val
```

Thus calls are `eq x first`, then later literals only after false; comparison failure/divergence propagates. Do not swap arguments without a symmetry contract. No public `contains` specification was found in the pinned `Std` sources. [Owner](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/SliceIter.lean:41).

**Literal arrays and slices.** These are implemented pure constructors, not external assumptions:

```lean
Array.make {α : Type u} (n : Usize) (init : List α)
  (hl : init.length = n.val := by simp) : Array α n
Array.make_val (n : Usize) (init : List α) (hl : init.length = n.val) :
  (Array.make n init hl).val = init
Array.to_slice {α : Type u} {n : Usize} (v : Array α n) : Slice α
Array.val_to_slice {α} {n} (a : Array α n) : a.to_slice.val = a.val
Array.length_to_slice (a : Array α n) : a.to_slice.length = n
```

`Array.make` is `Array.from init`; `Array.to_slice` is `Slice.from v.val`. `lift x = Result.ok x` (`B/Std/Primitives.lean:439`), so the generated `lift (Array.to_slice ...)` cannot fail. `Slice.from_val` and `Slice.eq_iff` expose list contents when needed (`B/Std/SliceDef.lean:39–54`). Sources: [Array.lean](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Array/Array.lean:98), [ArraySlice.lean](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Array/ArraySlice.lean:22), [SliceDef.lean](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/SliceDef.lean:39).

**Default inequality.** `core.cmp.PartialEq.ne.trait_default inst x y` calls `core.cmp.PartialEq.ne.default inst.eq x y`, which computes `ok (¬ (← inst.eq x y))`. The existing public step lemma is exactly:

```lean
core.cmp.PartialEq.ne.trait_default.spec {T : Type _}
  (PartialEqInst : core.cmp.PartialEq T T) (self other : T)
  (hEq : PartialEqInst.eq self other ⦃ b => b ↔ (self = other) ⦄) :
  core.cmp.PartialEq.ne.trait_default PartialEqInst self other
    ⦃ b => b ↔ (self ≠ other) ⦄
```

`core.cmp.PartialEq.ne.default.spec` has the same contract with explicit `eq` instead of the instance. These prove inequality conditional on the equality specification; they do not discharge the packet's external String equality. [Cmp.lean:28–58](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Core/Cmp.lean:28).

**Shared equality.** `core.cmp.PartialEqShared {A B} (inst : core.cmp.PartialEq A B) : core.cmp.PartialEq A B` forwards fields to `core.cmp.impls.PartialEqShared.eq/ne inst`, whose bodies are `inst.eq/ne x y`; both forwarding functions have `[simp]`. Shared references introduce no new value representation here. [Cmp.lean:245–260](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Core/Cmp.lean:245).

**Global and allocator cloning.** `B/Std/Alloc/Alloc.lean:12–21` implements `alloc.alloc.Global` with sole constructor `.mk`, `alloc.alloc.CloneGlobal.clone (_ : Global) : Result Global := .ok .mk`, and `core.clone.CloneGlobal`. The packet itself defines `core.alloc.AllocatorClone (Self : Type _)` with sole field `cloneCloneInst : core.clone.Clone Self` (`G/Types.lean:24–31`) and `alloc.alloc.Global.Insts.CoreAllocAllocatorClone` with that implemented clone instance (`G/Funs.lean:37–45`). There is no allocator operation or allocator law in this wrapper. [Backend owner](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Alloc/Alloc.lean:12), [packet wrapper](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/Types.lean:24).

## String operations are still external in this packet

`B/Std/Alloc/String.lean:8` only registers Lean `String` as opaque Rust `alloc::string::String`; it implements no methods. `Str := Slice U8` (`B/Std/StringDef.lean:8`); `toStr` converts Lean String bytes to this slice (`B/Std/String.lean:29–38`). `DecidableEq Str` exists, but does not imply the packet's external equality follows it. [String registration](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Alloc/String.lean:8), [literal conversion](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/String.lean:29).

The exact generated external declarations are:

| Name in `G/FunsExternal_Template.lean` | Type | Lines |
| --- | --- | --- |
| `Str.Insts.CoreCmpPartialEqStr.eq` | `Str → Str → Result Bool` | 29 |
| `alloc.string.String.Insts.CoreCmpPartialEqString.eq` | `String → String → Result Bool` | 67–68 |
| `alloc.string.String.Insts.CoreCmpPartialOrdString.partial_cmp` | `String → String → Result (Option Ordering)` | 76–77 |
| `alloc.string.String.Insts.CoreCmpOrd.cmp` | `String → String → Result Ordering` | 84–85 |
| `alloc.string.String.Insts.CoreCloneClone.clone` | `String → Result String` | 99 |
| `alloc.string.String.impl.as_str` | `String → Result Str` | 92 |
| `alloc.string.String.Insts.CoreOpsDerefDerefStr.deref` | `String → Result Str` | 107–108 |
| `Str.Insts.AllocBorrowToOwnedString.to_owned` | `Str → Result String` | 59 |

[Exact template](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/FunsExternal_Template.lean:24). No owning implementation/lemma for those methods was found in pinned `Aeneas/Std`. `G/Funs.lean:47–86` supplies trait records pointing to the external operations, not proofs of order laws. `core.cmp.Ord` itself stores operations, not coherence or transitivity evidence (`B/Std/Core/Cmp.lean:165–175`). A map contract may quantify over an order argument but must explicitly supply any semantic order laws it needs; the record's existence does not provide them.

## BTree boundaries and legitimate generic assumptions

`G/TypesExternal_Template.lean:34–42` axiomatizes `BTreeMap (K V A : Type _) : Type` and `BTreeSet (T A : Type _) : Type`. The only BTree operations in this packet's external function template are (below, `BTreeMap` and `BTreeSet` abbreviate the fully qualified types just named):

```lean
alloc.collections.btree.map.BTreeMap.impl.insert {K V A : Type _}
  (a : core.alloc.AllocatorClone A) (o : core.cmp.Ord K) :
  BTreeMap K V A → K → V → Result (Option V × BTreeMap K V A)
alloc.collections.btree.set.BTreeSetTGlobal.impl.new (T : Type _) :
  Result (BTreeSet T alloc.alloc.Global)
```

These remain external; no pinned BTree implementation was found. Sources: [type holes](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/TypesExternal_Template.lean:29), [operation holes](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/FunsExternal_Template.lean:31). No map `get/remove`, set `insert/remove/contains`, or traversal primitive is called by this generated `seed_row` body. Do not enlarge this boundary using a model's unrelated API.

A conditional generic theorem may assume explicit abstraction functions for each map/set type, a key equality/order relation, and a uniform insert law returning the old optional value plus a map updated at exactly that key, together with a `new` law yielding an empty set. The packet instantiates insert at String keys/Global and three value types: String, ChildRow, BTreeSet String Global. State allocator/comparator conditions explicitly. A total-success contract (`insert ... = ok (...)`, `new ... = ok empty`) is an additional semantic assumption, not a consequence of these axiom types. If failure/divergence is admitted, carry it through the entire monadic result. Parameterized collection laws are legitimate hypotheses for a conditional theorem; replacing holes with a finite-map model is a model instantiation and needs a separate native correspondence proof.

JSON indexing remains a separate boundary: `G/FunsExternal_Template.lean:179–181` gives `Value.Insts.CoreOpsIndexIndexIValue.index {I} (IndexInst : ...Index I) : Value → I → Result Value`; index helper methods at lines 116–171 are also external. A whole `text` contract needs lookup behavior, dereference, and ownership conversion, including non-String and absent-field cases. Proving `Value.as_str`'s transparent match alone does not supply lookup semantics. [Index boundary](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/FunsExternal_Template.lean:173).

## Suggested proof shape, not executed proof code

1. Define local `inst := core.cmp.PartialEqShared Str.Insts.CoreCmpPartialEqStr`. Normalize only `lift`, `Array.val_to_slice`, `Array.make_val`, `core.slice.Slice.contains`, the shared equality forwarding, and the generated trait projection. This exposes two/three `List.anyM` comparisons, in the order actually generated.
2. For an unconditional expansion theorem, keep external equality calls as `Result Bool`; unfold `List.anyM` on the concrete list and retain each short-circuit branch. This states the exact translated operation behavior even if equality fails/diverges.
3. For membership theorems, assume explicitly `hEq : ∀ x y : Str, Str.Insts.CoreCmpPartialEqStr.eq x y = ok (decide (x = y))`. Then propose the following exact conclusions (write separate lemmas, e.g. local names `contains_literal3` and `contains_literal2`; neither exists in the backend):

```lean
core.slice.Slice.contains inst
  (Array.to_slice (Array.make 3#usize [toStr "Open", toStr "Gone", toStr "Abandoned"])) x
  = ok (decide (x = toStr "Open" ∨ x = toStr "Gone" ∨ x = toStr "Abandoned"))
core.slice.Slice.contains inst
  (Array.to_slice (Array.make 2#usize [toStr "Active", toStr "Terminal"])) x
  = ok (decide (x = toStr "Active" ∨ x = toStr "Terminal"))
```

Use Boolean case splits after rewriting `hEq`, or prove a small general `List.anyM` equality lemma by list induction. The pinned proof pattern at `B/Std/Array/ArraySlice.lean:233–265` unfolds `List.anyM`, uses `WP.spec_bind`, and splits returned Bool; its `core.slice.cmp.anyM_pairs_ne_spec` is **private**, so it is an example, not a callable public lemma. [Pattern source](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Array/ArraySlice.lean:233).

4. Prove `text` and then `seed_row` over the full return type, not a success-only Boolean. `seed_row` returns `Result ((core.result.Result Unit SeedFailure) × parents × children × active)` (`G/Funs.lean:188–203`). Keep outer Aeneas failure/divergence distinct from inner Rust `Err`. `B/Std/Primitives.lean:68–87` models `Result` as an ITree, not an inductive success/failure pair; use `Aeneas.Std.bind_ok`, `bind_fail`, `bind_div` (`:253–264`) for equations. `Aeneas.Std.WP.spec_bind`, `spec_mono`, `spec_ok`, `spec_fail`, `spec_div` (`B/Std/WP.lean:96–136`) support total-correctness contracts; partial `dspec` permits divergence and does not prove termination. [Primitives](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:68), [WP](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:96).
5. Discharge Rust `?` using implemented `core.result.Result.Insts.CoreOpsTry.branch` and public `branch_Ok.spec`, `branch_Err.spec`, `branch.step_spec`; use `core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual_Err.spec` with implemented `core.convert.FromSame`. All are owned by `B/Std/Core/Convert.lean:95–188`; the residual conversion preserves SeedFailure here. [Owner](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Core/Convert.lean:95).
6. Preserve evaluation priority and all maps: id field → id mismatch → entity mismatch → entity dispatch; Parent reads phase, validates three literals, clones key, inserts parent, constructs empty set, inserts active; Child reads owner before phase, validates two literals, clones key, inserts child. Every inner error returns the original three maps. Parent success overwrites the active entry with an empty set even if previously present; Child success preserves parents/active. Unknown entity is reached only after identity checks. These facts are from `G/Funs.lean:205–314`, conditional on successful external operations; no MissingOwner/Lifecycle check occurs in this seed body. [Body](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/Funs.lean:205).

This note only narrows the remaining proof boundary. Native/runtime obligations, B01–B10, and whole-feature completion remain unfinished. No evidence selector, active specification/status/task file, historical artifact, source, target, or SDK was changed.
