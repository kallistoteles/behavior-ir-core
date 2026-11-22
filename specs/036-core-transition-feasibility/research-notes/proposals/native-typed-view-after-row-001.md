# Next source packet: typed seed rows after canonical rows

Source-only proposal, 2026-11-22. No build, extraction, test, kernel check, native admission, or task completion was performed for this note. The supplied handoff places actual506 at generated-model dictionary/noninterference closure, actual507/508 at spec/bridge compilation, and actual509 exact-row closure pending; this note does not independently certify those attempt results. All native/library/runtime and B01–B10 obligations remain open.

## Recommended boundary

Extract the **actual unchanged `views::text` and `views::seed_row`, plus `SeedFailure::into_study`** as the next semantic packet ([source][views-text], [error translation][views-errors]). Preserve generated bodies and all external declarations. This is the smallest row packet that connects canonical JSON rows to typed-map updates without adding Store acquisition or iterator folds. Prove its exact total result under explicitly declared generic operations, then its commuting square with actual `reference::state_fact_row` ([canonical source][canonical]). Do not make pending actual509 a completed premise.

If typed BTree closure cannot yet be represented, first extract `text` and the independent actual `child_entity_value` constructor ([constructor][constructor]); both largely reuse the row JSON/string boundary. That is a useful T053 substep, but cannot substitute for `seed_row`, T054 collection refinement, or materialization correctness. The constructor includes `id`; materialized child facts intentionally contain only `phase` and `owner` ([materialize source][materialize]).

The reviewed immutable a0492 worker contains the same `text`/`seed_row` definitions and line layout ([worker source][worker]); use a new source-bound packet rather than transplanting an older generated declaration. Actual494 generated output currently contains canonical `state_fact_row` and native `Value::as_str`, not these view functions ([generated caller][funs], [generated accessor][accessor]).

## Independently specify the exact row behavior

Define `field(v,k)` by ordinary object lookup, returning JSON Null for absent keys or nonobjects. Define `textSpec(v,k)` as `Ok s` precisely when `field(v,k)=String s`, otherwise `Err Field`. Missing, explicit Null, Bool, every Number, Array and Object all follow the error branch. Native string indexing uses `index_into` and Null fallback, not mutable `index_or_insert` ([owning serde source][index], [fallback][fallback]).

For arbitrary initial typed maps `(P,C,A)`, independently define `seedSpec(k,v,P,C,A)` in this order ([actual source][seed-row]):

| First applicable condition | Exact inner result; typed-map effect |
| --- | --- |
| `textSpec(v.value,"id")=Err Field` | `Err Field`; preserve P,C,A, even if entity names disagree |
| decoded id differs from `k.id` | `Err Identity`; preserve P,C,A; short-circuit entity comparison |
| `k.entity != v.entity` | `Err Identity`; preserve P,C,A |
| entity Parent; phase is nonstring/missing | `Err Field`; preserve P,C,A |
| entity Parent; phase string outside Open/Gone/Abandoned | `Err ParentPhase`; preserve P,C,A |
| entity Parent; valid phase q | `Ok ()`; P[k.id]:=q; **A[k.id]:=empty set**, replacing any prior bucket; preserve C |
| entity Child; owner is nonstring/missing | `Err Field`; preserve P,C,A; phase is not read |
| entity Child; owner string, phase nonstring/missing | `Err Field`; preserve P,C,A |
| entity Child; phase string outside Active/Terminal | `Err ChildPhase`; preserve P,C,A |
| entity Child; valid owner o and phase q | `Ok ()`; C[k.id]:={owner=o,phase=q}; preserve P,A |
| other entity after successful identity checks | `Err UnknownEntity`; preserve P,C,A |

`seed_row` does not inspect `v.id`, revision, created_at or content_hash, and does not check owner existence/lifecycle. Do not silently add these checks to its specification. Owner existence is checked for **all children**, including Terminal children, in `seed_relation`; Active with a non-Open parent yields Lifecycle; Terminal produces no active insertion ([relation source][relations]).

`into_study` maps the seven variants exactly: Field→Prerequisite("TypedViewField"), Identity→"ViewIdentity", ParentPhase→"ViewParentPhase", ChildPhase→"ViewChildPhase", UnknownEntity→"UnknownViewEntity", MissingOwner→"ViewMissingOwner", Lifecycle→"ViewLifecycleViolation" ([mapping][views-errors]). These differ from canonical row errors: canonical always reads id first, yields "SeedIdentity" for a nonstring id, and "UnexpectedEntity" for an unknown entity; it accepts arbitrary phase/owner JSON ([canonical][canonical]). A theorem equating both error results would be false.

## Representation invariant: data, not the desired conclusion

Use an explicit relation from actual native collections/values to finite mathematical maps. It must establish full membership/absence, unique keys, native String byte ordering and complete iteration, not define representation by the desired output equality. At every nested JSON Object preserve full recursive values and keys; arrays preserve order/length and every element. Keep unchanged actual494 Value/Number types: Null/Bool/Number/String/Array/Object and Number PosInt(U64)/NegInt(I64)/Float(F64) ([types][types]). Do not replace Number with Nat, String, fixture values, or an unconstrained new axiom. Native-valid Float constraints and enabled numeric cfg remain separate source-representation obligations.

For single-row exactness require only native representability: UTF-8 borrowed keys and all actually borrowed/copied Strings within native usize limits; valid collection representations and the declared operation semantics. Quantify arbitrary finite maps, arbitrary representable ids/owners, arbitrary JSON fields and every error branch. The row specification currently bounds only entity/id borrow sizes ([row domain][row-spec]); the view packet also borrows/copies phase, owner, key.entity/key.id as reached. Do not accidentally inherit that narrower premise as sufficient. Native allocation/layout limits need their own justification, not N≤256/H≤128 or generated-id assumptions ([borrow boundary][borrow]).

For the successful-seed commuting square additionally establish only:

- `k.id = decoded value.id`, `k.entity = v.entity`, and entity is Parent or Child.
- Parent phase is one of Open/Gone/Abandoned; Child owner is a String and phase is Active/Terminal.
- JSON maps representing P and C have exactly the same memberships and full projected values: Parent id maps to String phase; Child id maps to an object with exactly phase/owner string fields. No `id` member appears inside child facts.

These are inspectable input/representation facts. They may follow from successful `seedSpec`; they are not whole-Core equivalence premises. Retain the full EntityVersion in the versions map; projecting facts does not authorize erasing unrelated JSON fields or metadata from the original state.

For complete `Views::seed` later, add initially empty P/C/A, complete unique EntityKey enumeration, and two separate folds: `seed_rows` clones and consumes versions in EntityKey order, then `seed_relations` clones and consumes children in String-id order ([fold source][seed-folds]). A Parent row clears its bucket; the later relation pass populates it. After success: every child owner exists; dom(A)=dom(P), and A[p] is exactly `{id | C[id].owner=p ∧ C[id].phase=Active}`; Active implies parent Open. Parent buckets may be empty. Do not assert this invariant after a single Child row. Earlier successful rows can remain in local maps before a later fold error; `Views::seed` discards the view and sets trusted true only after both successful passes ([seed public boundary][seed]).

## New dependencies beyond the current row packet

The current ledger binds eight reached primitives and four dictionary fields, while generated `as_str` reaches String deref/borrow separately ([ledger][bindings], [generated accessor][accessor], [row operations][row-ops]). Reuse their **semantics**, after checking each new exact declaration/type/cfg; do not import an older namespace to manufacture linkage. Expected additions below are source calls/types, not a claimed fresh extractor inventory.

| Scope | Required source/type/call closure |
| --- | --- |
| text | New native SeedFailure enum and Result<String,SeedFailure>; actual `text` body; same Value indexing dictionary, generated `as_str`, String deref/borrow and Str::to_owned. Key is arbitrary `&str`, not only id/phase/owner literals. No BTree operation. |
| into_study | Actual exhaustive match and existing StudyError::Prerequisite representation; no new formatting/error-runtime API for this function. Preserve all other StudyError variants ([error source][errors]). |
| seed_row | Full EntityKey and EntityVersion layouts; ChildRow; typed BTreeMap<String,String>, BTreeMap<String,ChildRow>, BTreeMap<String,BTreeSet<String>> plus allocator/dictionaries. String PartialEq (`!=`, including its actual eq/ne dispatch), String::as_str, String::clone; array-to-slice/borrow and `[&str]::contains` at lengths 3 and 2, including reference equality/dictionaries and any generated helper. BTreeMap::insert at all three value instantiations; BTreeSet<String>::new; String Ord/comparator closure used by insert. No set insert, version-map iterator, EntityKey Ord operation, or ChildRow clone is needed by this single-row function. |
| child_entity_value, optional | Existing JSON Map::new/insert, Str::to_owned and Value String/Object constructors; arbitrary three native-valid string arguments. It is an apply-side entity constructor, not the materialization child-fields helper. |
| later seed_rows | BTreeMap<EntityKey,EntityVersion>::clone, owned IntoIterator/next, EntityKey ordering/equality, full EntityVersion/Value cloning, Result/Try propagation for SeedFailure and retained partial effects. |
| later seed_relations | Child-map clone/owned iterator; map get/get_mut String/borrow comparison; active set new/insert; String clone/to_owned; mutable return/reconstruction closure and MissingOwner/Lifecycle errors. |
| later materialize | Actual shared IntoIterator/next for parent and child typed maps; String::clone for ids/phases/owners; existing JSON new/insert; generated loop termination/invariants; complete Views layout with history/versions/active/trusted universally framed as unread fields. No Store call is made by materialize. |

Capture actual fresh generated external blocks, monomorphizations, type aliases and reachable dictionaries before choosing bindings. Preserve Result outer failure/divergence separately from Rust inner Result errors. Extract or independently admit a legitimate generic collection primitive with full result/update/frame semantics; the current JSON Map interpretation cannot by itself justify typed BTree insert or native representations. The owning serde Map forwards `new`/`insert` to its cfg-selected backend ([map owner][map-owner]); preserve_order switches BTreeMap to IndexMap. Worker Cargo alone does not establish resolved feature unification ([manifest][cargo]).

Older candidates are context only: `NativeJsonMapOperations` uses a `.data` wrapper and comparator/entry model ([candidate][old-map]), whereas current row operations use the generated direct nil/cons Map ([current][row-ops]). `NativeMaterializeLoop` assumes a conserved loop and carries a `basis` parameter ([candidate loop][old-loop]); actual materialize creates an empty child-fields Map each iteration. Establish an explicit representation/context conversion and match the actual generated loop before reusing those laws. `FiniteNativeIds` supplies a bijection only after receiving a complete duplicate-free enumeration; it does not obtain that enumeration from native maps ([finite-id source][ids]).

## Prospective theorem contract (schematic, not checked Lean)

Fix independently named `field`, `textSpec`, `seedSpec`, `projectParents`, `projectChildren`, and mathematical put/empty-set operations before extraction. `P,C,A` below denote source-represented typed maps, `pj,cj` source-represented JSON fact maps. Derive exact generated function/type names and tuple/update ordering from the new output rather than editing it to fit this sketch.

```text
text_exact(v,key,NativeRep(v,key)):
  generated.views.text v key = outerOk(textSpec(v,decode(key)))

seed_row_exact(k,v,P,C,A,NativeRep(k,v,P,C,A)):
  generated.views.seed_row k v P C A = outerOk(seedSpec(k,v,P,C,A))

seed_row_error_frame(..., seedSpec(...).result = Err e):
  returned result = Err e ∧ returned P=P ∧ returned C=C ∧ returned A=A

seed_failure_into_study_exact(e):
  generated.into_study e = outerOk(publicErrorSpec(e))

seed_row_canonical_commutes(..., MapRep(P,pj), MapRep(C,cj),
                            seedSpec(k,v,P,C,A) = (Ok (),P1,C1,A1)):
  actual state_fact_row {entity:=v.entity,value:=v.value} pj cj
    = outerOk(Ok (),pj1,cj1)
  ∧ MapRep(P1,pj1) ∧ MapRep(C1,cj1)
```

The last conclusion existentially returns pj1/cj1; it must follow from separately specified puts/field shapes and actual exact-row/seed-row theorems, not from assuming canonical/materialized output equality. State Parent/Child same-id updates and arbitrary-other-id preservation separately. Assert the Parent active-bucket reset and Child active-map frame explicitly. Add universal invariance to changing version metadata not read by `seed_row`, and to varying unreachable dictionary mutable fields while keeping all read methods equal. The current proof derives **only canonical row** caller abstraction ([existing caller bridge][row-proofs]); it is not automatically a bridge for new callers.

Next iterator packet contract, only after native collection closure:

```text
seed_folds_materialize(V,h,NativeVersionRep(V), ExactSeedEnumeration(V,rows)):
  successful actual seed_rows + seed_relations from empty maps
  ⇒ actual materialize(view) = canonical fold state_fact_row rows
    ∧ exact memberships/absence/owner/active invariant
    ∧ view.history=h ∧ view.versions=V ∧ view.trusted=true
```

Use arbitrary representable finite populations including empty maps and new ids. Connect the rows to both real Store APIs at the same exact history/module: `research035_versions` calls `validated_versions`; `export_seed_at` calls the same function then consumes `into_values` as `{entity,value}` ([Store bridge][store-bridge], [export][export]). Its owning `versions_for` checks exact history, decoded identity, revision/position, content hash and state accumulator on the slow path and can return a trusted exact-identity cache on the fast path ([Store validation][store-validate]). These are separate B02 caller/cache/backend/complete-enumeration obligations; source inspection is not their proof. EntityKey has ordered fields entity,id; EntityVersion additionally has its own id and history fields ([document layouts][documents]).

## Required controls and retained gaps

For a future attempt, seal the actual selected source bytes, whole generated Types/Funs/external templates, reachable declaration blocks/dictionaries, pinned frontend/compiler, target usize width, resolved Cargo features and cfg, and exact theorem types. Keep actual494 Number/accessor/canonical-row bytes attributable. A source-compatible packet with a different representation context needs an explicit bridge. No new generated executable body may be replaced by a hand-authored model.

Require genuine accepting fresh extraction plus these rejecting source/cfg controls, with intended theorem/result failure distinguished from loader failure:

- `text` ignores its supplied key (uses "id"); retain arbitrary-key cases including non-ASCII/empty keys. Change a nonstring field to acceptance: reject for every JSON variant class, with Number payloads retained.
- Change identity checks/order or read `version.id` instead of `key.id`; use mismatched id/entity with missing id to distinguish Field from Identity, and key/value equality with differing version.id to detect an invented check.
- Child validates phase membership before checking owner: nonstring owner plus an invalid phase string must distinguish actual Field from mutant ChildPhase. Skipping owner validation must also reject. A mere swap of the two text reads can retain the same inner Field result; preserve/audit source call order and outer runtime effects rather than claiming this result control distinguishes that swap. Change phase membership lists: reject invalid phases while retaining all admitted phases.
- Parent preserves an existing nonempty active bucket, or Child changes any bucket: full returned-map theorem must fail; empty-only fixtures would miss this.
- Canonical or materialize swaps owner/phase, materialize inserts id, or omits an empty/top-level map: reject exact child-field/top-level domains. Mutate the actual constructor separately if selected.
- Poison unreachable mutable dictionary fields with arbitrary failures/divergence/results; require a new universal full-result read/non-escape theorem for actual text/seed_row callers. A mutated reached read must reject. Never apply row-only four-site occurrence counts to the new caller.
- Change resolved preserve_order or arbitrary_precision/number cfg without the corresponding complete representation/operation packet: reject source/context binding, not silently coerce to the old BTree/Number model.

The public seed still performs history acquisition and version loading before row errors; preserve their library error precedence when eventually extracting it ([public seed][seed]). `eligibility::finish` checks module/analysis, trusted exact history, position, request shape and `stage`; it does not prove view content validity ([selector][eligibility]). Module/schema/Safety, Store/backend/cache completeness, strings/collection native representations, iteration, clone/borrow/mutable frames, allocator failure/panic/drop behavior, native error/debug conversion, and compiler/runtime/effect adequacy all remain mandatory. Logical `outerOk` under a generic interpretation is not an allocation/runtime guarantee. `stage` and confirmed apply/version/history promotion remain later B04 obligations ([stage/apply][apply]).

This packet contributes exact typed access/error shapes to T053, typed-map update obligations to T054, row/absence/owner representation facts to T058/B02, and the first actual seeding-to-canonical bridge needed by B04. It closes none of those tasks or gates alone ([task requirements][tasks]).

[views-text]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:54
[views-errors]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:29
[seed-row]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:60
[seed-folds]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:95
[relations]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:106
[constructor]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:138
[seed]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:147
[materialize]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:204
[apply]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:221
[canonical]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/reference.rs:38
[eligibility]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/eligibility.rs:16
[errors]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/error.rs:3
[cargo]: /data/repos/behavior-ir-core-033/experiments/transition-study036/Cargo.toml:11
[worker]: /var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/worker/src/views.rs:54
[funs]: /var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:89
[accessor]: /var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:72
[types]: /var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Types.lean:24
[index]: /var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:83
[fallback]: /var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:212
[map-owner]: /var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/map.rs:23
[bindings]: /data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_bindings_v2.py:9
[row-ops]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowOperations.lean:16
[row-spec]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowSpec.lean:34
[borrow]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringBorrow.lean:54
[row-proofs]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowProofs.lean:66
[old-map]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonMapOperations.lean:65
[old-loop]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeMaterializeLoop.lean:15
[ids]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/FiniteNativeIds.lean:10
[store-bridge]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/store.rs:1225
[export]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/store.rs:91
[store-validate]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/store.rs:122
[documents]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/documents.rs:238
[tasks]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/tasks.md:112
