# Conditional canonical row proof route

Status: source-only research; unselected proposal. No compilation, execution, proof acceptance, kernel result, or native admission is claimed. The fixed caller here is the immutable positive-a0494 generated artifact, not the mutable owner tree referenced by its provenance comments. Only this new note was written.

## Conclusion and domain

The proposed `rowSpec` matches the caller's **whole result**, including both maps and payloads: read ID first; reject any non-string/missing ID with `SeedIdentity`; copy a textual ID; dispatch Parent before Child; replace the Parent phase payload or the complete Child `{phase, owner}` object; otherwise return `UnexpectedEntity` with both maps unchanged. Missing fields become `Null`. The Child field insertion order in `childFields` matches the caller exactly. Preserve this structural equality rather than weakening it to lookup equality. [Fixed caller, lines 91–155][caller]; [draft spec, lines 20–62][spec].

`InputDomain` is sufficient for this **conditional model equality**: the only dynamic calls to the fallible string-borrow interpretation are the successful textual ID and `row.entity`. Non-string IDs never borrow the entity. Cloning and map operations in the chosen model are total. No map size, sortedness, or uniqueness premise is needed for this algebraic theorem. This domain is not a native representation invariant: the root proposal's recursive JSON/map validity, sorted/unique native maps, sizes, and library relation must live in a separate future native representation relation (or a later, explicitly stronger domain). Adding such invariants now is unnecessary for reducing this caller and must not imply their native discharge. [Borrow interpretation, lines 89–112][borrow]; [operation definitions, lines 23–71][ops]; [root proposal requirements][roots].

## Minimal helper interface

Use the draft bridges already proposed, with these additional local statements. Below, `D` abbreviates `Correspondence036.NativeRowDictionary.concreteDictionary`; `VIndex` abbreviates the fully qualified external `_root_.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index`; `GAsStr` abbreviates `transition_study036.serde_json.value.Value.impl.as_str`. These are notation in this note, not new implementations.

```lean
-- Polymorphic dictionary normalization, then the concrete read.
generated_index_field (key : Str) (label : String) (v : Value)
  (h : NativeStringBorrow.decode key = some label) :
  VIndex D v key = Result.ok (field v label)

generated_as_str_string (s : String)
  (h : (NativeStringBorrow.ownedBytes s).length ≤ Usize.max) :
  GAsStr (.String s) =
    Result.ok (some (NativeStringBorrow.borrow s h))

-- One such statement for each non-string Value constructor; cases v suffices.
generated_as_str_nonstring (v : Value)
  (h : ∀ s, v ≠ .String s) : GAsStr v = Result.ok none

own_phase : NativeCanonicalRowOperations.ownResult (toStr "phase") = Result.ok "phase"
own_owner : NativeCanonicalRowOperations.ownResult (toStr "owner") = Result.ok "owner"
```

For `generated_index_field`, first expose `value_index_exact`, then delta only the concrete and shared dictionary constructors, the external shared `index_into`, `NativeCanonicalRowOperations.sharedIndex`, and the external Str `index_into`. The resulting read is `indexStr key v`. Apply `index_read key label v h`, reduce the successful bind, and case-split `v` to identify `Option.getD` with `field`. An alternative robust first line is a `change` to `(do let found ← NativeCanonicalRowOperations.indexStr key v; Result.ok (found.getD .Null)) = _`; this is justified by the selected binding definitions, not by replacing generated Funs. Keep `_root_` on external names: generated `Value` and dictionary constructors reside under `transition_study036`, whereas these external read functions do not. [Existing exact helper and concrete dictionary][dictionary]; [eight binding definitions, lines 9–49][bindings]; [external signatures, lines 99–147][externals].

For `generated_as_str_string`, unfold only the generated `as_str`, external `alloc.string.String.Insts.CoreOpsDerefDerefStr.deref`, and its `borrowResult` binding; rewrite `borrow_result_valid s h`, then reduce the successful bind. For `own_phase`/`own_owner`, unfold `ownResult` and use the respective draft `*_decodes` lemma. The generated accessor cases are visible directly in the immutable artifact; the borrow binder fills the deref/as_str external slots with `borrowResult`. [Accessor, lines 77–87][accessor]; [borrow binder, lines 59–73][borrow-bindings]; [draft bridges, lines 23–47][bridges].

## Exact theorem tactic structure

Prove the existing root type unchanged:

```lean
∀ row parents children, InputDomain row parents children →
  transition_study036.reference.state_fact_row row parents children =
    Result.ok (rowSpec row parents children)
```

1. Introduce inputs and `dom`; retain `hentity := dom.1`. Establish the three concrete index equalities for `id`, `phase`, and `owner` using `generated_index_field` plus `B.id_decodes`, `B.phase_decodes`, and `B.owner_decodes`.
2. Unfold the generated caller **once**, rewrite only those index equalities, and reduce successful binds. Do not unfold `orderedInsert` here: leave each insertion as `put` after unfolding just the external insert binding and `Operations.insert`.
3. Use `cases hv : field row.value "id"`. In each non-string constructor branch, unfold `textId`/`rowSpec`, rewrite `hv`, reduce generated `as_str`, `ok_or`, `branch`, `from_residual`, and `FromSame`; close the unchanged maps/error by reflexivity or a narrowly enumerated `simp only`.
4. In the `.String s` branch, obtain `hid : textId row = some s` by simplifying `[textId, hv]`, then `hsize := dom.2 s hid`. Rewrite `generated_as_str_string s hsize`, `ok_or_some`, and `branch`; normalize ID ownership with `B.copy_borrow` (or `ownResult` plus `decode_borrow` after the borrow is exposed).
5. Rewrite entity borrow with `borrow_result_valid row.entity hentity`. Rewrite `B.parent_comparison row.entity hentity`; split `by_cases hp : row.entity = "Parent"`. In the negative branch rewrite `B.child_comparison row.entity hentity`, then split `by_cases hc : row.entity = "Child"`.
6. Parent: normalize clone and insert to `Result.ok`, then fold `put`/`field`. Child: normalize `newMap`, both literal ownership helpers, both clone calls, both field inserts, and the final children insert; fold `childFields`/`put`. Neither branch requires equality, induction, decidability, or enumeration of arbitrary JSON payloads. Unknown entity: both maps and the exact error constructor reduce unchanged.

The monadic reduction names in this backend are `Aeneas.Std.bind_ok` and `Aeneas.Std.bind_tc_ok`; generated `do` blocks can require the latter. `core.option.Option.ok_or_some`/`ok_or_none` are already simp lemmas; `CoreOpsTry.branch`, `CoreOpsTry_traitFromResidualResult.from_residual`, `core.convert.FromSame`, and `core.convert.FromSame.from` are the concrete definitions to expose in the residual branch. [Backend bind lemmas, lines 253–302][bind]; [Option, lines 25–37][option]; [Try/residual and identity conversion, lines 31–37 and 98–117][convert].

This is an uncompiled tactic route, not a claim that one broad `simp` command closes it. Use helper lemmas to avoid accidental expansion of byte decoding, recursive inserts, or derived-row equation machinery.

## SeedIdentity and unrelated keys

After exact equality, `seed_identity_first` should be a rewrite by that equality followed by `simp only [rowSpec, hid]`. There is also a valid stronger prospective model lemma with **no domain premise**: `textId row = none → actual row parents children = .ok (.Err (.Prerequisite (toStr "SeedIdentity")), parents, children)`. Prove it directly by the ID field cases above: the String case contradicts the hypothesis and the remaining cases never use a fallible string borrow. The existing root may retain its declared domain premise. [Caller control flow][caller].

For `other_keys`, rewrite the actual call by exact equality, rewrite `rowSpec` with `hid : textId row = some id`, split the two entity conditions, and apply `put_other_key` to the one updated map. Unknown entity is reflexive; the untouched map is reflexive in both successful branches. Compare only lookups at `query`, as the root requests; do not infer complete map equality from this framing result. [Root expected types][roots]; [draft framing lemma, lines 65–82][bridges].

The framing lemma needs no ordering premise, even for arbitrary malformed list representations. Use induction on `rows` and explicit `cases hc : compare key.toByteArray stored.toByteArray` after exposing one insert equation. In the equality case derive `key = stored` via `String.toByteArray_inj.mp (Std.compare_eq_eq_iff_eq.mp hc)`; substitute, then use `query ≠ key`. In the greater branch lift the induction hypothesis through `fun tail => if query = stored then some previous else tail`. This is the draft's intended proof; controlled compare cases avoid dependence on which matcher a broad `unfold` exposes. No definite theorem-name/type error in the draft bridges was established by this source inspection.

## Pinned SDK names and registration

The pinned SDK supplies `String.toByteArray_inj` in `Init/Data/String/Defs.lean:107`, `Array.toList_inj` in `Init/Data/Array/Lemmas.lean:47`, and `Std.compare_eq_eq_iff_eq` with `[Ord α] [LawfulEqOrd α]` in `Init/Data/Order/LemmasExtra.lean:70`. `Init.Data.ByteArray.Lex` imports that order module and provides ByteArray order instances. Consequently the draft equality-to-string route has source support; `Init.Data.String.Compare` is not required merely to prove equal byte arrays imply equal strings. [String injection][string-inj]; [Array injection][array-inj]; [compare equality][compare-eq]; [ByteArray imports/instances][byte-order].

The current selected dictionary proof source includes `saveEqnAffectingOptions destination` followed by `enableRealizationsForConst destination` after `addDecl`. The pinned normal declaration pipeline uses the same ordering. This addresses the reported missing-registration direction at source level only; actual503's prior `rfl` result and actual504's pending status are supplied context, not verified here. No dictionary root acceptance follows from reading those calls. [Current derive command, lines 84–93][derive]; [SDK declaration registration, lines 73–80][registration].

## Conditional operation semantics and unused fields

Using `put := (orderedInsert ...).2` in `rowSpec` is legitimate **conditional row semantics**: it shares an independently declared generic map operation with the bound interpreter while independently spelling out branch priority, exact errors, payload selection, inner-object construction, and map threading. It would be circular to present this as a proof that native serde_json/BTreeMap implements `orderedInsert`, or to claim complete native map refinement merely because both sides reduce to this operation. A stronger independent semantic map spec can later use lookup-update plus sorted/unique canonicality and an explicit relation to native maps. [Draft spec][spec]; [separately declared map operations][ops]; [native-facing template still declares the insert boundary][externals].

The syntactic audit and universal noninterference serve different purposes. The audit checks four concrete dictionary uses, exclusively through the index consumer, exact abstraction/reinstantiation, the concrete dictionary, and the full-result `ReadEq`; it does not by itself prove the consumer ignores mutable fields. The semantic roots `value_index_exact`, shared forwarding/congruence, and `row_read_noninterference` supply that missing fact universally over arbitrary dictionaries agreeing on `index_into`. Together with the exact bridge to the unchanged caller, they are sufficient for **model contextual irrelevance** of the two Str mutable functions and their two shared forwarding functions. An audit restricted to projections alone is insufficient if a dictionary can escape through an opaque consumer; the existing site classification plus consumer semantics closes that gap only when its audited inputs and roots are actually accepted. [Audit, lines 28–88][audit]; [ReadEq, exact helpers and universal row theorem][dictionary]; [four unused binding entries, lines 52–75][bindings].

Remaining independent work includes accepting all eight dictionary roots and the three full row roots against their pinned statements, source-binding the generic/native library interpretations, establishing native borrow ownership/lifetime/frame and map/JSON representation relations, conservative inactive error-carrier non-escape, actual allocation/panic/drop/outcome/runtime/compiler correspondence, and B01–B10/Core/feature composition. `Result.ok` in this selected model establishes none of those native/runtime claims. [Model scope and project assembly][context]; [operation caveat][ops]; [root obligations][roots].

[caller]: /var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:91
[accessor]: /var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:77
[externals]: /var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/FunsExternal_Template.lean:99
[spec]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/NativeCanonicalRowSpec.lean:20
[bridges]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/NativeCanonicalRowBridges.lean:23
[roots]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/native-row-root-contract-001.json:7
[ops]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowOperations.lean:23
[borrow]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringBorrow.lean:89
[borrow-bindings]: /data/repos/behavior-ir-core-033/experiments/transition-study036/native_borrow_bindings_v2.py:59
[bindings]: /data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_bindings_v2.py:9
[dictionary]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowProofs.lean:15
[derive]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowProofs.lean:84
[audit]: /data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_abstraction_v2.py:28
[context]: /data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_context_v2.py:9
[bind]: /var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:253
[option]: /var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Core/CoreOption.lean:25
[convert]: /var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Core/Convert.lean:98
[string-inj]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/String/Defs.lean:107
[array-inj]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Array/Lemmas.lean:47
[compare-eq]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/Order/LemmasExtra.lean:70
[byte-order]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/ByteArray/Lex.lean:9
[registration]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/PreDefinition/Mutual.lean:73
