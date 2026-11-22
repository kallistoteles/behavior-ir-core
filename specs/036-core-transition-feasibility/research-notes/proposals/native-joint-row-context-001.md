# Native joint row context: source-only proposal 001

Status: **unselected; conditional model only**. This note predicts a joint context from primary source. It does not establish compilation, kernel acceptance, native admission, library adequacy, runtime totality, or full-feature completion. The reported actual520 extraction success and earlier actual512/519 checked contexts are task premises, not independently audited here. No implementation, tests, builds, network, SDK enumeration, target/process inspection, or cleanup was performed.

Source shorthand: `E=/data/repos/behavior-ir-core-033/experiments/transition-study036`; `D=E/proofs/Correspondence036/Dependencies`; `G=/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated`. All reads and this note write reject protected basename components before I/O; no real033 or broad evidence root was accessed.

## Exact generated identity and imports

The four inspected actual520 files have these byte counts and SHA-256 values:

| G file | bytes | SHA-256 |
| --- | ---: | --- |
| Types.lean | 6154 | `63d86e10ea09787650cf3dfae0344ef812767266ec5cd1d5ab063ef7260ae9da` |
| Funs.lean | 18657 | `3f1dd8aaa87a80a247c192be2b804ffe5352ec3492d686017ecbed9510cafc14` |
| TypesExternal_Template.lean | 2329 | `a823a470ee5aa755e5e998a990a521615ddc04acc7209285ca6cf2c0ced6f010` |
| FunsExternal_Template.lean | 12256 | `727aaf2d194076ee6e1e9f3ae1cdc277aeda48a71b5bebff8d37223f24242efd` |

[Types:4–5](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated/Types.lean:4) imports `Aeneas` and `SeedCanonicalNames.TypesExternal`; [Funs:4–6](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated/Funs.lean:4) imports `Aeneas`, `SeedCanonicalNames.Types`, and `SeedCanonicalNames.FunsExternal`. [FunsExternal template:5–6](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated/FunsExternal_Template.lean:5) imports `Aeneas` and `SeedCanonicalNames.Types`. Therefore retain these module prefixes without generated-body rewriting. Preserve both original templates as byte-identical, uncompiled inputs; separately completed `TypesExternal`/`FunsExternal` are new files, not byte-identical copies of the templates.

Generated declarations already share the required global `transition_study036` namespace: `SeedEntity`, `EntityKey`, `EntityVersion`, `ChildRow`, and `SeedFailure` occur in [Types:37–147](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated/Types.lean:37); `reference.state_fact_row`, `views.SeedFailure.impl.into_study`, `views.text`, and `views.seed_row` occur in [Funs:151–384](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated/Funs.lean:151). Module shims need no declaration aliases or namespace declarations.

## Exact external union and shared meanings

The union is 20 distinct method declarations: `ROW_PRIMITIVES` eight plus `ROW_DICTIONARY_PRIMITIVES` four plus eight seed-only leaves. `SEED_PRIMITIVES` includes nine overlapping row methods, two borrow leaves, and six typed collection/string leaves; only clone/new/JSON-insert are absent. This follows [row bindings:9–76](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_bindings_v2.py:9), [seed bindings:12–65](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_seed_bindings_v2.py:12), and [borrow bindings:6–9](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_borrow_bindings_v2.py:6).

The following table uses `C=Correspondence036.NativeCanonicalRowOperations`, `T=Correspondence036.NativeTypedSeedOperations`, `B=Correspondence036.NativeStringBorrow`; signature evidence refers to [actual520 FunsExternal_Template](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated/FunsExternal_Template.lean:24). Select each name exactly once, with the source-pinned Rust attribute and full signature retained.

| Exact Lean external name | Selected implementation | Template signature lines |
| --- | --- | --- |
| `Str.Insts.CoreCmpPartialEqStr.eq` | `C.eqStr` | 29 |
| `Str.Insts.AllocBorrowToOwnedString.to_owned` | `C.ownResult` | 59 |
| `Str.Insts.Serde_jsonValueIndexIndex.index_into` | `C.indexStr` | 159–160 |
| `Shared0T.Insts.Serde_jsonValueIndexIndex.index_into` | `C.sharedIndex IndexInst` | 190–192 |
| `serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index` | `C.valueIndex IndexInst` | 200–202 |
| `serde_json.value.Value.Insts.CoreCloneClone.clone` | `C.clone` | 210–211 |
| `serde_json.map.MapStringValue.impl.new` | `C.newMap` | 116–117 |
| `serde_json.map.MapStringValue.impl.insert` | `C.insert` | 125–129 |
| `Str.Insts.Serde_jsonValueIndexIndex.index_into_mut` | `C.unreachedIndexIntoMut` | 148–151 |
| `Str.Insts.Serde_jsonValueIndexIndex.index_or_insert` | `C.unreachedIndexOrInsert` | 137–140 |
| `Shared0T.Insts.Serde_jsonValueIndexIndex.index_into_mut` | `C.sharedIndexIntoMut IndexInst` | 179–182 |
| `Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert` | `C.sharedIndexOrInsert IndexInst` | 168–171 |
| `alloc.string.String.impl.as_str` | `B.borrowResult` | 92 |
| `alloc.string.String.Insts.CoreOpsDerefDerefStr.deref` | `B.borrowResult` | 107–108 |
| `alloc.collections.btree.map.BTreeMap.impl.insert` | `T.insert coreallocAllocatorCloneInst corecmpOrdInst` | 37–41 |
| `alloc.collections.btree.set.BTreeSetTGlobal.impl.new` | `T.newSet T` | 49–51 |
| `alloc.string.String.Insts.CoreCmpPartialEqString.eq` | `T.eqString` | 67–68 |
| `alloc.string.String.Insts.CoreCmpPartialOrdString.partial_cmp` | `T.partialCmpString` | 76–77 |
| `alloc.string.String.Insts.CoreCmpOrd.cmp` | `T.cmpString` | 84–85 |
| `alloc.string.String.Insts.CoreCloneClone.clone` | `T.cloneString` | 99 |

The shared `eqStr`, `ownResult`, `indexStr`, `sharedIndex`, `valueIndex`, two unreachable mutable methods, and two shared mutable forwards have identical signatures/bodies modulo namespaces, using identical recursive `lookup` equations. Compare [C operations:16–76](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowOperations.lean:16) with [T operations:16–60](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeTypedSeedOperations.lean:16). With one shared generated type universe, the source supports expected definitional compatibility after unfolding their private helper names; a kernel check of that prediction has not been performed. Typed BTree insert and JSON insert are different functions over different carriers, despite the common short name `insert`; fully qualified implementations prevent collision ([T:71–88](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeTypedSeedOperations.lean:71), [C:33–45](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowOperations.lean:33)).

Permitted handwritten-proof adaptation: selecting `C.*` leaves differently named heads in typed `simp`/`change` proofs. Retain the original typed proof source as a pinned input; replace only the exact qualified identifier tokens `NativeTypedSeedOperations.lookup` (lines 13,17), `.indexStr` (21,23,33), `.ownResult` (61), and `.eqStr` (97,99,101,103,115,128) with the corresponding `NativeCanonicalRowOperations.*` tokens, and add one `public import NativeCanonicalRowOperations`. This is exactly 12 token replacements across four identifiers plus one import, not an unrestricted namespace substitution. The complete source scan finds no additional shared operation identifier in [typed proofs:1–266](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeTypedSeedProofs.lean:1). Retain typed `insert` (142,145,147), `cmpString` (149), `eqString` (183), `cloneString` (214,249), and `newSet` (216). Pin an exact adaptation record with source/output hashes, token counts, and import change; reject every other change. Helper lemma statements may consequently mention canonical operations; all five independent root statements remain unchanged. This adaptation predicts tactic alignment but does not establish compilation or kernel success.

The completed type context must use the seed completion, which supplies BTreeMap nil/cons, BTreeSet as List, inert error tokens, the JSON map carrier, and RuntimeNames import; row-only completion rejects unresolved BTree axioms ([seed context:12–41](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_seed_context_v2.py:12), [row context:24–46](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_context_v2.py:24), [borrow completion:31–45](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_json_borrow_probe_v2.py:31), [JSON carrier:16–17](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_lean_check_v2.py:16)). The task's actual514 type-template equality is not rechecked here.

## Minimal acyclic graph

The proposed 20 compiled modules below are a topological order; arrows identify direct local imports. Standard `Aeneas`, `Lean`, and `Init.*` imports remain as in each unchanged source. The two preserved `_Template` inputs are not in this compiled list.

1. `NativeStringBorrow` → no local imports ([source:1–4](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringBorrow.lean:1)).
2. `RuntimeNames` → no local imports ([source:1–2](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/RuntimeNames.lean:1)).
3. `SeedCanonicalNames.TypesExternal` → `RuntimeNames` (seed type completion above).
4. `SeedCanonicalNames.Types` → `SeedCanonicalNames.TypesExternal` (actual520 unchanged).
5. `CanonicalRowNames.Types` → `SeedCanonicalNames.Types` (declaration-free public-import shim).
6. `TypedSeedRowNames.Types` → `SeedCanonicalNames.Types` (same shim form).
7. `NativeCanonicalRowOperations` → `CanonicalRowNames.Types`, `NativeStringBorrow` ([source:1–4](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowOperations.lean:1)).
8. `NativeTypedSeedOperations` → `TypedSeedRowNames.Types`, `NativeStringBorrow` ([source:1–4](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeTypedSeedOperations.lean:1)).
9. `SeedCanonicalNames.FunsExternal` → `SeedCanonicalNames.Types`, `NativeStringBorrow`, BOTH operation modules (new completion of actual520 template).
10. `SeedCanonicalNames.Funs` → `SeedCanonicalNames.Types`, `SeedCanonicalNames.FunsExternal` (actual520 unchanged).
11. `CanonicalRowNames.Funs` → `SeedCanonicalNames.Funs` (declaration-free public-import shim).
12. `TypedSeedRowNames.Funs` → `SeedCanonicalNames.Funs` (same shim form).
13. `NativeCanonicalRowProofs` → `CanonicalRowNames.Funs` ([source:1–3](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowProofs.lean:1)).
14. `RowAbstractionAudit` → `NativeCanonicalRowProofs` ([generator:5–7](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_abstraction_v2.py:5)).
15. `NativeCanonicalRowSpec` → `NativeCanonicalRowProofs` ([source:1–2](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowSpec.lean:1)).
16. `NativeCanonicalRowBridges` → `NativeCanonicalRowSpec` ([source:1–3](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowBridges.lean:1)).
17. `NativeCanonicalRowExact` → `NativeCanonicalRowBridges` ([source:1–2](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowExact.lean:1)).
18. `NativeTypedSeedSpec` → `NativeTypedSeedOperations` ([source:1–2](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeTypedSeedSpec.lean:1)).
19. `NativeTypedSeedProofs` → `NativeTypedSeedSpec`, `TypedSeedRowNames.Funs`, `NativeCanonicalRowOperations` (only the allowlisted handwritten adaptation above; original [source:1–5](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeTypedSeedProofs.lean:1)).
20. `ProofRoot` → `NativeCanonicalRowExact`, `NativeTypedSeedProofs`, `RowAbstractionAudit` (proposed joint root).

No cycle is visible: each operation module imports only types/borrow, never Funs; the Funs shims appear downstream. No declaration-name collision is visible: the actual generated declarations are emitted once, each operation model has its own namespace, canonical and typed theorem namespaces differ, and shims emit nothing. Compiling a second copy of generated Types/Funs under either legacy prefix would instead duplicate global declarations and is forbidden by this design.

## Required guards before any selection

- Guard every pathname component, including resolved/reference-derived components, before I/O against `parameters.bin` and `compression_prover_key.bin`; retain the source-only scope and exact allowlisted files. Never access real033 or broad evidence roots.
- Bind the specific successful actual520 checkpoint/result/source subject and four-file generated inventory; verify paths, byte counts, and hashes before and after the future check. Older extraction proofs do not substitute for this joint source subject.
- Require the four original files byte-identical to the table above; preserve templates separately; pin all unchanged operation/spec sources and canonical proofs, the original typed proof and exact allowlisted adaptation/output, borrow/runtime sources, generated audit, four declaration-free shim bodies, completion output, module order, and root source. Generated Types/Funs bodies and both independent Specs must remain unchanged.
- Require exactly the 20-name union above, nine overlap signatures/Rust attributes equal, no duplicate binding, exact source block size/hash, unique nonoverlapping block replacement, no residual external axiom, and no new axioms/sorry/unsafe declarations. Existing exact-block mechanics are [row bindings:89–147](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_bindings_v2.py:89).
- Preserve independent spec SHA-256 pins `21aa0cf03ce32139c1ea0778140798548a5e4de1fd48965ce2d640c7146158b3` (canonical) and `36b5c313c898be0a97f54d0fafe06bdc53fb399e6585127d4568314d3c08857b` (typed): [canonical context:8,38–52](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_canonical_row_context_v2.py:8), [seed context:7–9,90–105](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_seed_context_v2.py:7).
- Require unchanged canonical proofs and only the allowlisted adapted typed proof to compile in this one graph; check all 16 exact expected root types (row dictionary eight, canonical three, typed five), kernel-export/dependency closure, and allowed axioms. Root contracts are [row context:49–72](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_context_v2.py:49), [canonical context:9](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_canonical_row_context_v2.py:9), [seed context:44–74](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_seed_context_v2.py:44).
- Preserve the independent elaborated-body audit: actual state_fact_row definition, exactly four classified reads, exact closed dictionary abstraction/reinstantiation, complete-result ReadEq, concrete dictionary identity, kernel checking enabled, and rejected ignored-dictionary mutant ([audit:72–128](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_abstraction_v2.py:72)). Mutable field totalizations remain unadmitted.
- Existing builders cannot be combined verbatim: seed fixes ten module keys and typed prefixes ([seed context:125–136](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_seed_context_v2.py:125)); canonical extension requires the exact old base set/root ([canonical context:15–21,38–52](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_canonical_row_context_v2.py:15)). Any future joint builder needs its own exact module/inventory/root contract and rejection controls, without weakening these existing contracts.

All native source correspondence, JSON/BTree/string library refinement, allocator/ownership/lifetime/panic/drop behavior, inactive error non-observation outside the proved component, runtime totality, and full-feature claims remain open. This note selects no candidate and changes no active experiment/specification artifact.
