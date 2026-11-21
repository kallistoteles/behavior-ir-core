# Selector fallback and post-original view rebuild reachability

This is an **unselected, source-only research note**, following [selector-native-refinement-construction-001.md](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/selector-native-refinement-construction-001.md). No build, test, probe, download, process inspection, large generated IR read, extraction, kernel check, or runtime comparison was performed. Only this new note is written. The reported native329 77 tests and twelve finite full comparisons are background context, not results of this investigation. B01–B10, T052 and T059 remain open.

**Finding:** no concrete public-worker R-versus-GV counterexample was found for the specific concern “selector None runs original Core successfully, then a semantically stricter view seed rejects its Valid post-state.” For the declared LD8 module and strong lifecycle policy, original Valid snapshot checks imply every semantic condition checked by `Views::seed`. The native Core version API used by seeding is also the exact helper used by the preceding original snapshot/state exports. The attempted terminal-orphan counterexample fails because original Safety requires an existing owner even for Terminal children. This is a source argument, not a native correspondence theorem or an unconditional theorem about every representable `Ground` internals value. The remaining source/model/hash, cache and host premises are stated below rather than hidden in “valid views.”

## Actual input and caller domain

There is no `src/worker.rs` in this source layout. The public v2 worker implementation is `src/run_v2.rs`, reached by `src/bin/reuse.rs` for `execute`. Its fixed roles map R to no retention/views and GV/B to retention/views. It loads a raw parent, verifies workload and subject identity, freshly rechecks the original Safety bundle, constructs `Ground::supplied`, performs `Ground::check`, then enables views according to role. [entry][entry], [roles][roles], [worker acquisition][worker-acquire].

The protocol recognizes `kind: "session"`, but the actual worker rejects every non-Operation case before execution with `OperationPreparedInputCountOrKind`. A later public worker control must use `kind: "operation"`; it may put several requests in that case. Both the two-request pair branch and the other-length branch execute sequentially against one acquired ground; they are not a reason to model only one invocation. [case kinds][case-kinds], [kind rejection][kind-reject], [pair execution][worker-pair], [other lengths][worker-single].

The worker does **not** synthesize only `c0000`/`p0000` inputs. `raw_oracle::load` admits the referenced original module, resolves referenced ownership/dependency inputs, creates a Capture Store from the referenced original Genesis, validates its initial state, and replays every committed prefix request. It compares actual row count/history to the declared dimensions. The request reader passes the entire referenced semantic JSON and metadata; only the separate context document must match its request field in both Value and serialized bytes. The operation call forwards both actual pair components. Arbitrary finite native IDs/rows/requests remain relevant; the N/H transport caps are not the general proof domain. The existing native exactness source already constructs `owner_alpha` and `record_beta` through genuine acquisition rather than a trusted-view constructor. [raw load][raw-load], [prefix][raw-prefix], [invocation reader][raw-invocation], [operation call][operation], [non-benchmark keys][native-keys].

Raw expected facts are not authority: preparation/replay demands original `status == "Valid"` for each accepted authored step and checks allowed flag, position and post-state. Malformed original invocation payloads are still in the native entry function's representable argument domain; their original errors must be preserved. Such a payload does not become a successful prepared worker case merely because control-envelope parsing accepts its artifact reference. [fact checks][raw-fact], [preparation][raw-prepare].

## The exact potentially troublesome edge

After status/exact-receipt checks and Pending, `view_step` immediately uses the original marked path for Some evidence, Some historical `at`, or failed module/policy selector. For the remaining path it obtains current history and repairs/reseeds views before selection when required. These earlier failures must not be attributed to the post-original rebuild. [ground prerequisites][ground-pre], [early route and repair][ground-route].

When `eligibility::finish` returns None, `view_step` disables prepared evaluation, records fallback diagnostics, invalidates the existing view, and calls `ordinary_step` on the **same whole request and metadata**. It reseeds only when that observation's `original_property_outcomes.status` is `"Valid"`; `?` propagates a reseed error instead of returning the already constructed observation. [selector-None branch][ground-none].

`ordinary_step` first executes/commits Core, then runs original `validate_store_snapshot`, then obtains original `reference::state_facts`, then completes the observation. The original reference helper likewise returns the invocation, bundle, captured commit arguments, before/after histories, full state facts and actual property status. Therefore a successful original invocation alone is insufficient: any Result/effect relation must include the later property/export/seed work. [ordinary step][ground-ordinary], [reference step][reference-step], [timed execution and commit][observation-execute].

The generic branch **can express** the result difference `ordinary_step = Ok(observation)` followed by `rebuild_views = Err(e)`. That syntactic possibility is what the earlier construction note identified. The following source facts address whether its semantic `SeedFailure` cases can arise after a Valid original observation in the real declared fragment.

## Why the semantic seed failures are excluded

The module selector compares the complete original wire string with the embedded LD8 module and the actual analysis policy hash with the fixed strong-policy hash. The embedded wire declares exactly Parent/Child, ParentPhase `{Open,Gone,Abandoned}`, ChildPhase `{Active,Terminal}`, a Child `owner: Ref(Parent)`, and no commands. The builder and analysis source spell out the same enums, fields and strong dependency: terminal `{Terminal}`, prohibited `{Abandoned,Gone}`. [selector][selector], [embedded complete module][ld8-wire], [declared fields/enums][fixture-types], [strong analysis][fixture-analysis].

Original Safety obtains an acquired export through `store.export_seed_at`; acquisition failure cannot produce Valid. Its inspection checks parent and child statuses against resolved literals, then requires every child to have a string owner and an existing typed Parent row. Only **after** that owner lookup does Terminal exempt a child from the nonprohibited-parent test. A nonterminal child with Gone or Abandoned owner is invalid. The record's status is Valid only with acquisition and empty findings, subject also to successful validator/export identities. [acquired validation][safety-acquire], [phase/owner checks][safety-relation], [status construction][safety-status].

This establishes the following source-level implication for a canonical export of the actual LD8/strong-policy subject; it is not an assumed trusted-view predicate:

| `Views::seed` possible rejection | Why the preceding original Valid export excludes it |
| --- | --- |
| `TypedViewField` | LD8 Core decoding types each row's `id`, phase and Child owner; Safety also explicitly requires nonempty string ID, valid phase and string owner. |
| `ViewIdentity` | The complete Core version walk requires correct typed key, `v.key() == k`, canonical value identity equal to key ID, canonical value equality, and content identity. |
| `ViewParentPhase` | Original parent-status inspection permits exactly the resolved LD8 enum literals Open/Gone/Abandoned. |
| `ViewChildPhase` | Original child-status inspection permits exactly Active/Terminal. Unknown phase is rejected before lifecycle reasoning. |
| `UnknownViewEntity` | The exact LD8 module has only Parent/Child; the complete version walk iterates its declarations and rejects wrong entity keys. Original state-fact construction also rejects an unexpected entity before returning the observation. |
| `ViewMissingOwner` | Safety requires an existing typed Parent for **every** child, including Terminal. |
| `ViewLifecycleViolation` | Active is the only nonterminal LD8 child phase. Parent phase is one of three values; excluding Gone/Abandoned leaves Open. Terminal children impose no Open requirement in either validator or seed relation. |

The owning seed bodies are [row checks][seed-rows] and [relation checks][seed-relations]; native canonical identity/type validation is [version walk][core-versions] and [complete snapshot check][core-check]. Original state-fact construction is [here][reference-state]. The seed active index is built internally from empty maps: every Parent gets an empty bucket and exactly Active children are inserted in their owner's bucket. No caller supplies missing/false buckets, and no restriction to benchmark-generated IDs enters the construction. [seed construction][seed-construction], [relation insertion][seed-relations].

Terminal/Gone and Terminal/Abandoned are consequently **allowed**, and must be kept in a differential control. Active/Gone, Active/Abandoned, missing owner, unknown parent phase and unknown child phase cannot be used as an established Valid source state. The latter cases are useful rejection controls through actual Genesis/acquisition, not permission to construct a raw `trusted = true` view. `stage` by itself has fewer checks, but its raw representable states are not the same thing as worker-reachable seeded views. [stage][stage], [initial acquisition][acquire].

## The repeated Core calls are the same source helper

In the actual native329 patched dependency source, `export_seed_at` calls `validated_versions`; `research035_versions`, which is the API called by `Views::seed`, calls that **same** `validated_versions`. The latter delegates to `versions_for(..., DecisionPurpose::Current)`. Thus seed does not introduce a second, different canonicality validator. [Core export/helper][core-export], [Core research API][core-research], [seed API call][seed-construction].

`ordinary_step` has already called this helper via both Safety export and `state_facts` before returning its observation. `Views::seed` gets the current history and repeats the same helper. Between those calls in this branch, source performs timing arithmetic and diagnostics only, with no backend/head/module/policy mutation. The privately owned Capture forwards head/history/version/key reads to its InMemoryBackend; its only fault modes act in commit. There is no callback or public protocol field inserted between original export and reseed. The current-history construction checks the canonical recorded head. [ordinary step][ground-ordinary], [None branch][ground-none], [Capture reads][capture-reads], [Capture commit][capture-commit], [canonical history][core-history].

On this stable sequential receiver, if the helper returned a canonical complete version map for the successful exports, the repeated helper/history calls have the same semantic basis. The version cache is guarded by exact snapshot identity and trusted state, otherwise a complete walk runs; lock failure for the version-view cache skips its fast path rather than itself becoming a new error. [version routing][core-version-route]. This is useful source evidence for the library-error part of the reachability argument, **not** a discharge of B03/B04 cache/projection correctness against the unpatched original dependency. An incorrect existing cache could make earlier original validation wrong too; proving the native reachable cache relation is still necessary.

Allocation failure, clock-accounting errors, poisoned validation-cache errors, hash failure or host/backend nondeterminism are not established impossible by this note. Some cause error/abort before an ordinary observation exists; some require a separate host/totality relation. They must remain in complete Result/effect specifications. No hypothetical failure of those components is presented here as a source-constructed public JSON witness.

## Concrete attempted witness and later controls

The tempting attempted counterexample is an initial checked LD8 state with Parent `owner_alpha` Open and Child `record_beta` Terminal, followed by:

```json
{"format":"behavior.invocation.v1","capability":"remove_parent","bindings":{"p":{"entity":"Parent","id":"owner_alpha"}},"input":{},"context":{}}
```

This certainly has `finish = None` because its capability differs. It cannot establish the required troublesome conjunction “original observation Valid, later seed missing-owner error”: if removal leaves the child, original Safety reports MISSING_PARENT before the terminal exemption. If Core reference/invariant checking denies removal first, that also defeats this witness. This note does not claim which original removal artifact is returned without executing or fully deriving that action's native evaluation. The exact branch needed for the hypothesized bug is ruled out either way by [Safety's owner-before-terminal order][safety-relation].

A genuine **positive fallback/reseed control**, to author in a new declared native control after the current frozen run, can use the same actual strong-policy subject, arbitrary IDs, and this explicit basis state and request sequence:

```json
{
  "seed": [
    {"entity":"Parent","value":{"id":"owner_alpha","phase":"Gone"}},
    {"entity":"Child","value":{"id":"record_beta","owner":"owner_alpha","phase":"Terminal"}}
  ],
  "prefix": [],
  "context": {},
  "metadata": {"commit_time":"2026-11-20T00:00:00Z","evidence":null,"at":null},
  "requests": [
    {"format":"behavior.invocation.v1","capability":"reopen","bindings":{"p":{"entity":"Parent","id":"owner_alpha"}},"input":{},"context":{}},
    {"format":"behavior.invocation.v1","capability":"finish","bindings":{"c":{"entity":"Child","id":"record_beta"}},"input":{},"context":{}}
  ]
}
```

This is a **semantic case recipe, not a runnable envelope or measured result**: construct a real original Genesis using the existing `fixtures::store_with`/genesis API, package complete referenced bytes/digests/context/metadata/facts with the pattern in `v2_raw_oracle.rs`, prepare and independently replay the oracle, then use an operation case with `N:2,H:0` and those two request references. Inference from the actual action source: reopen changes the Parent to Open with no guards, forcing the selector-None ordinary branch and its valid-post-state reseed; subsequent finish addresses an already Terminal child with the same owner. Compare the entire R/GV observation byte streams, histories and captured packets and require GV to remain Established with exact active views; do not merely assert “both calls returned Ok.” [reopen/finish actions][fixture-actions], [real Genesis helper][genesis-helper], [raw packaging pattern][raw-test], [worker pair][worker-pair].

Add a separate initial Terminal/Abandoned case and a selected finish before reopening so the selector's legitimate non-Open-owner behavior is directly exercised. Add Active/Open success and invalid initial Active/Gone, Active/Abandoned, unknown-phase and missing-owner rejection controls using actual creation/check paths. The public `CaseKindV2::Session` value should separately be checked to receive the worker's current rejection; it must not silently stand for the supported operation sequence. These controls address reachability, not arbitrary direct edits of private view fields.

## Unsupported payloads and publication effects stay explicit

* Different module/policy selector results take the early original path and do not run this post-None rebuild. Different subjects may have arbitrary fields, phases, actions or commands accepted by original Core; do not apply LD8 view assumptions to them. Original checked-program matching binds full admitted module, full analysis JSON, behavior and policy hash, and acquisition verifies them against the actual parent. The existing LD8C command control requires its own checked program and compares ordered duplicate commands on the original route. [module route][ground-route], [full checked matching][checked-match], [acquisition][acquire], [command control][command-test].
* An unsupported capability on the eligible module selects None and preserves original behavior. Extra top-level fields or extra fields inside a binding can even pass the finish selector's inspected-field checks, but original invocation decoding rejects unexpected top-level keys and binding objects other than exactly `entity` and nonempty `id`; no post-original reseed occurs when that decode returns Err. Extra binding-map keys cause selector None; original parameter/binding processing remains authoritative. Extra request `commands` is an unexpected key, while actual module commands are part of full module identity. None of these values may be erased from an exact request theorem. [selector][selector], [original decoder][decode-request], [full invocation forwarding][invoke-helper].
* Some evidence or Some historical `at` uses early original fallback; nonlegacy commit_time alone does not. The full metadata is passed through. Existing metadata/evidence controls compare original records/errors and captured publication state, but do not cover the newly proposed reseed case. [metadata route][ground-route], [metadata controls][metadata-tests].
* After any successful step, Ground checks the expected position and appends a committed request before processing non-Valid property status. Non-Valid observations are returned intact as `Ok` while Ground quarantines; they are not rewritten as DENY or converted into the alleged seed error. On an actual later error, Ground records an already captured commit if needed, quarantines and returns Err. Quarantine removes exact authority and invalidates views without undoing backend publication. [result/effect handler][ground-effects], [quarantine][quarantine].
* LostAcknowledgement is an explicitly simulated commit error **after** Capture has recorded actual Applied. It exits original execution through `?`, before ordinary_step can return a Valid observation and before the post-None rebuild. BeforeCommit/Conflict also exit earlier. The existing lifecycle/publication controls assert quarantine and actual head positions; they are source controls, not tests run by this note. The worker's JSON schema exposes no inject-fault field. [Capture faults][capture-commit], [original commit propagation][observation-execute], [publication controls][publication-tests], [worker envelope][worker-envelope].

## Remaining premises and proof work

The source implication above covers arbitrary finite canonical LD8 states with the **actual strong lifecycle dependency**, without an ID prefix/length/population/history bound beyond the native representations. It is not justified merely by a checked flag, a benchmark fixture enumeration or the finite comparisons. In particular:

1. The router checks only a policy hash, not the analysis structure. `analyze_with_dependencies` derives that hash from resolved policy/dependency inputs, while Ground's checked capability separately binds the complete actual analysis. This note has not proved that the pinned hash uniquely determines the intended dependency configuration over every representable analyzed input. A universal theorem must derive the relevant strong dependency facts from a source-bound subject relation (or explicitly named hash/subject premise); it must not replace the actual public hash-selected domain by a narrower policy domain without disclosure. No collision witness was constructed. [hash construction][analysis-construction], [selector][selector], [checked matching][checked-match].
2. Bind full wire equality to the native semantic LD8 declarations and bind the acquired export/version map to the canonical original Store state. The same-helper observation above reduces the seam but does not prove source/model/compiler/cache correctness or B02–B07.
3. Prove `Valid + canonical source versions + exact stable history` implies successful actual seed, by the native row/relation equations. Then prove the caller's actual result and mutation sequence, preserving early errors, original invocation/commit errors, timing errors and publication/quarantine effects. Do not replace the post-None caller theorem by equality of the two original invocation calls.
4. Run the concrete positive/rejection controls only in a new declared source/control revision after the active frozen work closes. A finite success would still not close B01–B10/T052/T059. This note supplies neither an accepted measurement nor a native proof result.

[entry]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/bin/reuse.rs:2
[roles]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/run_v2.rs:16
[worker-acquire]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/run_v2.rs:134
[case-kinds]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/protocol.rs:535
[kind-reject]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/run_v2.rs:272
[worker-pair]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/run_v2.rs:184
[worker-single]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/run_v2.rs:80
[raw-load]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/raw_oracle.rs:145
[raw-prefix]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/raw_oracle.rs:118
[raw-invocation]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/raw_oracle.rs:49
[operation]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/operation.rs:126
[native-keys]: /data/repos/behavior-ir-core-033/experiments/transition-study036/tests/v2_native_exactness.rs:233
[raw-fact]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/raw_oracle.rs:63
[raw-prepare]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/raw_oracle.rs:241
[ground-pre]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:137
[ground-route]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:277
[ground-none]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:319
[ground-ordinary]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:231
[reference-step]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/reference.rs:89
[observation-execute]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/observation.rs:27
[selector]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/eligibility.rs:5
[ld8-wire]: /data/repos/behavior-ir-core-033/experiments/transition-study036/expected/ld8-module.json:1
[fixture-types]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/fixtures.rs:59
[fixture-analysis]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/fixtures.rs:258
[safety-acquire]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/snapshot.rs:16
[safety-relation]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/snapshot.rs:95
[safety-status]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/snapshot.rs:136
[seed-rows]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:54
[seed-relations]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:106
[seed-construction]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:147
[stage]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:221
[core-versions]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/store.rs:179
[core-check]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-core/src/eval.rs:2390
[reference-state]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/reference.rs:38
[acquire]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/acquire.rs:84
[core-export]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/store.rs:91
[core-research]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/store.rs:1223
[capture-reads]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/capture.rs:129
[capture-commit]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/capture.rs:195
[core-history]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/store.rs:248
[core-version-route]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-store/src/store.rs:122
[fixture-actions]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/fixtures.rs:158
[genesis-helper]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/fixtures.rs:268
[raw-test]: /data/repos/behavior-ir-core-033/experiments/transition-study036/tests/v2_raw_oracle.rs:13
[checked-match]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/safety_check.rs:28
[command-test]: /data/repos/behavior-ir-core-033/experiments/transition-study036/tests/conformance.rs:197
[decode-request]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-core/src/invocation.rs:350
[invoke-helper]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/fixtures.rs:332
[metadata-tests]: /data/repos/behavior-ir-core-033/experiments/transition-study036/tests/v2_native_exactness.rs:46
[ground-effects]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:182
[quarantine]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:411
[publication-tests]: /data/repos/behavior-ir-core-033/experiments/transition-study036/tests/publication.rs:16
[worker-envelope]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/protocol.rs:561
[analysis-construction]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/mod.rs:37

## Follow-up: weak policy admission, seed routing and the hash-selected domain

This follow-up is also source-only, appended while the source-frozen run remains active. It performs no hash evaluation, policy enumeration, runtime experiment or proof check. It sharpens the earlier strong-policy qualification rather than treating it as a restriction already enforced structurally by the worker.

**The public policy input is not the fixture's `weak: bool`.** That Boolean is only the convenience helper in `fixtures::analysis`: false uses prohibited `{Abandoned,Gone}`, true uses `{Gone}`, with terminal `{Terminal}`. The actual worker's `raw_oracle::Policy` has arbitrary `ownership: Vec<Value>` and `dependencies: Vec<Value>`, individually parsed through original public constructors and passed to `analyze_with_dependencies`. The original lifecycle parser accepts selected sets subject to exact keys, unique members and nonempty strings; resolution verifies actual entity/reference/enum/control names. It does not fix `prohibited`, `terminal`, policy count or dependency count to the two fixture choices. [fixture helper][fixture-analysis], [raw Policy and construction][raw-policy], [dependency input parser][policy-input], [dependency resolver][dependency-resolver].

**Neither initial acquisition nor an ordinary-policy fallback unconditionally seeds.** The complete source sequence is:

1. `Ground::check` clears any previous views, calls `acquire::verify`, and establishes exact history/provenance/status on success. It contains no `Views::seed` call. The original initial/actual snapshot checks therefore use the supplied actual analysis, including a weaker dependency, rather than implicitly substituting the strong one. [check body][ground-check], [acquisition][acquire].
2. The worker then calls `ground.enable_views(role.retained())`. Even for GV with `enabled = true`, this sets the Core version-view switch to `enabled && eligibility::module(parent)` and calls `rebuild_views` **only** inside `if enabled && eligibility::module(parent)`. Otherwise it sets `views = None` and disables prepared use. `use_views` remains true, but that alone cannot cause seeding. [worker call][worker-pair], [enable_views guard][enable-views].
3. Every `view_step` starts by testing metadata and `!eligibility::module(parent)`. If the policy hash differs from the pinned literal, it returns `original_step_marked` immediately, before current-history lookup, repair, selector evaluation, or either later reseed. That original path performs no view seed. The analysis and module are privately held in Ground and no public worker request mutates them; multiple requests keep using this guard. [early invocation guard][ground-route], [original marker][original-marker], [private Ground fields][ground-fields].
4. Consequently an unsupported or weak policy with a **nonmatching actual computed hash** does not enter either the initial GV seed or the post-selector-None seed. This is an exact guard fact, not an assertion that the weak state satisfies the strong view invariant. The same rule covers no-dependency or alternative-terminal/prohibited-set policies that original construction/certification admits.

For example, this is a concrete source-level **attempted weak-policy case**, with the same exact LD8 module and two standard ownership policies shown in the existing raw test:

```json
{
  "dependency": {
    "id":"relation", "parent":"Parent", "child":"Child", "owner_field":"owner",
    "parent_state":"phase", "child_state":"phase",
    "prohibited":["Gone"], "terminal":["Terminal"], "ownership":["parents","children"]
  },
  "seed": [
    {"entity":"Parent","value":{"id":"owner_alpha","phase":"Abandoned"}},
    {"entity":"Child","value":{"id":"record_beta","owner":"owner_alpha","phase":"Active"}}
  ],
  "prefix": [],
  "request": {
    "format":"behavior.invocation.v1", "capability":"reopen",
    "bindings":{"p":{"entity":"Parent","id":"owner_alpha"}}, "input":{}, "context":{}
  },
  "metadata":{"commit_time":"2026-11-20T00:00:00Z","evidence":null,"at":null}
}
```

Core's exact LD8 declarations type these values, and original Safety's relation check does not prohibit Active/Abandoned under this supplied `{Gone}` policy: the owner exists and Abandoned is not in that dependency's prohibited set. In contrast, `Views::seed` would return `ViewLifecycleViolation` if invoked on that initial state. This contrast alone is **not** a worker counterexample: the initial seed requires a matching pinned hash, and the actual nonmatching-policy invocation route skips it. The concrete weak-hash inequality has not been evaluated by this source-only note. A later genuine control should construct this real Genesis, obtain/recheck the actual original weak-policy certificate, assert its actual hash comparison result, run R and GV through the worker, compare entire original observations/packets, and check that GV has no active views on the ordinary-policy route. Use an operation case with N=2,H=0 and one request; package actual refs/facts as before. Fresh certification remains a required runtime precondition, not something this recipe claims to have performed. [snapshot relation][safety-relation], [seed lifecycle check][seed-relations], [real original packaging][raw-test].

If one could instead exhibit an actually admitted and freshly checked **unsafe analysis whose computed policy hash equals the pinned strong hash**, the same initial Active/closed-owner state would become a concrete GV-versus-R candidate: `Ground::check` could establish it under the weaker original predicate, then GV's `enable_views(true)` would seed and return `ViewLifecycleViolation`, whereas R would not seed. This would be an **initial view-enablement** failure, not the post-original fallback failure. The required collision/alias analysis has not been constructed; declaring such a hash collision possible in principle is not a witness. At the post-None edge the same missing semantic implication would likewise prevent the earlier strong-policy exclusion from being unconditional. [enable_views guard][enable-views], [pinned selector][selector].

### Exact hash construction and its finite normalized domain

`analyze_with_dependencies` is the public constructor used by the raw path. It resolves ownership, checks all actual operations, resolves dependencies, then computes `policy_set_hash`; the result's hash/dependency/policy fields are crate-private and the type has no `Deserialize` constructor here. `UncertifiedSafetyAnalysis::new` computes the empty-policy hash; it does not accept a caller-supplied hash. Thus a worker cannot just send `"policy_set_hash": "sha256:dd..."` to manufacture an eligible analysis. However these constructor facts do not make SHA injective. [analysis construction][analysis-construction], [analysis fields and constructors][analysis-fields].

The exact implemented hash pipeline is:

```text
ownership_document = {kind, model_semantic_version, entity_hash,
                      writers: field -> action_hash_set, creators, removers}
dependency_document = {kind, model_semantic_version, parent_hash, child_hash,
                       owner_field, parent_state, child_state,
                       prohibited, terminal, ownership: ownership_model_hash_set}
model_hash = Core.tagged_hash(MODEL_HASH_TAG, normalized_document)
members = sort(all ownership model hashes ++ all dependency model hashes)
policy_set_hash = Core.tagged_hash("behavior.safety_policy_set.v1", {"policies": members})
Core.tagged_hash(tag, doc) = "sha256:" ++ hex(SHA256(UTF8(tag) ++ [0] ++ canonical_json(doc)))
```

The ownership/dependency author IDs are display references, omitted from these normalized semantic documents; dependency control references are resolved to model hashes. Ownership and dependency resolution reject repeated IDs and duplicate normalized model hashes within their corresponding lists, then sort them. The top policy-set helper sorts the concatenated hash list without independently deduplicating it. [ownership document/resolution][ownership-resolver], [dependency document/resolution][dependency-resolver], [policy-set helper][policy-hash], [Core hash bytes][canonical-hash].

For the **fixed exact LD8 module**, the normalized policy/dependency domain is finite, but not just strong/weak:

* There are eight final action names/hashes and only Parent.phase and Child.{phase,owner} assignable fields. Resolution permits only actual module entities/fields/actions, normalizes action selections to sets, and rejects `id` as an assignable field. For an entity with `f` assignable fields and A=8 actions, `(1 + 2^A)^f * 2^(2A)` is a loose upper bound on normalized ownership documents: each field is absent or has one action subset; creators/removers each have one action subset. Structural permission checks further reduce this bound. The arbitrary spellings of author IDs add no new document/hash meaning. [ownership resolution][ownership-resolver], [permission check][ownership-check], [LD8 declarations/actions][ld8-wire].
* The only possible lifecycle orientation in LD8 is Parent as parent, Child as child, owner as owner_field, and their phase enum fields as states: resolution requires the child's nonoptional Ref to the selected parent and enum state fields. Prohibited is a subset of three literals and terminal a subset of two, so there are at most `2^3 * 2^2` phase-set choices **per** possible control-hash subset. Controls are subsets of the finite ownership documents and must cover the required fields and enforce immutable owner. Multiple distinct normalized ownership/dependency documents are allowed; both lists range over finite subsets of their finite record universes. [dependency resolution][dependency-resolver].

This finiteness supplies a possible route to a theorem about the **concrete** hash: prove a complete source-bound normalized-domain enumeration, evaluate the actual hash on every reachable normalized configuration, and establish that every configuration hitting the pinned value implies the required lifecycle predicate. That is finite computation, not a general cryptographic injectivity assumption. This note has neither enumerated that very large domain nor checked that theorem. Merely proving the strong fixture's hash equals the literal, or that the one weak fixture's hash differs, does not prove the implication over all other reachable policy sets.

Accordingly, the exact conclusion is conditional and actionable: **there is no demonstrated ordinary weak-policy reseed bug because nonmatching policies are guarded before every seed; there is also no source proof here that matching hash implies strong semantics over the real public policy domain.** A universal no-counterexample result must close that subject/hash implication or use a source-level structural eligibility predicate whose successful result entails the actual required lifecycle property. Comparing a complete fixed expected analysis would be one possible future implementation choice; it is not the current guard and has not been implemented. The full request/result/effect theorem must continue to expose initial seeding and later reseeding errors until those obligations are discharged.

[raw-policy]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/raw_oracle.rs:22
[policy-input]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/input.rs:42
[dependency-resolver]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/lifecycle_dependency.rs:47
[ground-check]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:73
[enable-views]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:441
[original-marker]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:267
[ground-fields]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:43
[analysis-fields]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/input.rs:220
[ownership-resolver]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/resolve.rs:18
[ownership-check]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/field_ownership.rs:4
[policy-hash]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/identity.rs:15
[canonical-hash]: /var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/crates/behavior-core/src/canonical.rs:133

## Follow-up: certification qualification and a small structural guard

The preceding weak `{Gone}` recipe deliberately left fresh certification as a precondition. Further source reading shows why it must not be advertised as a certified worker witness: when activate/create_child produces a nonterminal child, `check_operation` asks for a mandatory `not in(prohibited)` guard using exactly the supplied set. Membership discovery indexes literal vectors by their **exact set** and only tries different orders of that set; it does not weaken the actual `{Abandoned,Gone}` guard to `{Gone}` by logical implication. Failure records `SAFETY_PARENT_GUARD_REQUIRED`, and certification rejects any analysis issues before kernel work. This is a source reason the particular weak helper may fail certification, not a test result or a universal claim about every alternative policy. [required membership guard][required-guard], [exact candidate set][membership-candidates], [membership matching][membership-match], [certification issue rejection][certify-issues].

A cleaner alternative-policy control is to keep the two original ownership inputs but use `dependencies: []`. The resolver explicitly accepts no dependencies; certification rejects empty **policies**, not empty dependencies, and original snapshot status can be Valid with nonempty ownership policies and no lifecycle dependencies. This removes the particular exact-guard mismatch above. A second source-admitted weaker dependency choice is prohibited `[]`, terminal `["Active","Terminal"]`: parent destinations are never prohibited and child literal assignments are terminal, so the strong membership requirement is not requested. Actual fresh certification/recheck remains mandatory for either runtime control; neither has been run here. [empty dependency resolution][dependency-resolver], [certification prerequisites][certify-issues], [snapshot status][safety-status], [terminal assignment/parent checks][lifecycle-roles].

### What is retained and where to change routing

The source read in this investigation has no `Original` parent wrapper type. Its relevant types are `reference::Parent`, `Ground` and the observation helper's unrelated `OriginalStep`. `raw_oracle::Policy` owns the original `Vec<Value>` lists locally during `load`; they are parsed into typed constructor inputs, then an `UncertifiedSafetyAnalysis`. `Parent` retains that analysis together with module/Store/origin/prefix requests; it does not retain a second raw-policy vector. Ground privately owns the entire Parent. [raw policy load][raw-load], [Parent fields][parent-fields], [Ground fields][ground-fields], [OriginalStep][observation-execute].

No extra public constructor or retained raw-policy field is necessary to inspect exact current semantics. The original analysis already exposes:

```text
analysis.policies()     -> &[ResolvedOwnership]
analysis.dependencies() -> &[ResolvedDependency]
each resolved record's document() -> serde_json::Value
analysis.to_json()      -> Value containing policies/dependencies with full documents
```

`policy_documents`/`policy_records` themselves are crate-private, but the public getters and `to_json` are sufficient. These normalized documents omit author IDs; ownership control IDs have already been resolved. Thus author-ID aliases need not be mistaken for different semantic policy payloads. [public analysis APIs][analysis-apis], [ownership document][ownership-resolver], [dependency document][dependency-resolver].

The **smallest source change for the seed-safety gap** is to add a structural semantic condition to the existing `eligibility::module` conjunction. Keep the existing exact LD8 wire and policy-hash tests, and require an actual dependency with the exact relevant fields. A conservative form requires exactly one dependency and checks its document by typed JSON equality:

```rust
// Proposed shape only; not an implementation or checked signature claim.
let dependencies = parent.analysis.dependencies();
if dependencies.len() != 1 { return false; }
let document = dependencies[0].document();
document["kind"] == "LifecycleDependency"
    && document["model_semantic_version"] == 1
    && document["owner_field"] == "owner"
    && document["parent_state"] == "phase"
    && document["child_state"] == "phase"
    && document["prohibited"] == json!(["Abandoned", "Gone"])
    && document["terminal"] == json!(["Terminal"])
```

This suggested predicate is about the state relation needed by the view, not equality of every ownership permission. Its source justification does **not** rely on equality of the document's parent/child/model/control hashes: for exact LD8 wire, the resolver must select an actual child field named owner with a nonoptional Ref to the actual parent type. Only Child.owner has that field/reference type, and its target is Parent; the phase field names and literal sets are checked explicitly. `ResolvedDependency` stores those source-resolved names and literal sets, and `document()` serializes them; this relation must be proved from the resolver body, not assumed from document hash values. Require the getter/document serialization refinement in the eventual native theorem. [resolved orientation/type check][dependency-resolver], [resolved fields and document construction][dependency-fields], [LD8 native declarations][fixture-types].

A stricter, easy-to-audit **whole profile** alternative is to freeze the normalized strong `policies` and `dependencies` records from the original analysis in a new selected fixture and compare the current actual `analysis.to_json()` fields with those complete Values in `eligibility::module`. Full analysis JSON equality is stricter still. Unlike a policy-set-hash comparison, matching the serialized prohibited/terminal fields exposes the needed semantics directly; additional fields or policies can safely take ordinary fallback. No such normalized-analysis fixture currently exists among the source's `expected` files; the reference generator does emit original `subject.json` with the full `analysis`, providing the source-owned construction pattern for a later declared fixture. Do not parse the original raw authoring JSON and claim it is the normalized record. [analysis JSON][analysis-apis], [original subject generator][subject-generator].

Use the same strengthened `eligibility::module` for **both** existing guards: `enable_views` must decide before the initial seed and Core version-view switch; `view_step` must decide before each invoke's repair/seed/selector. The current source already calls this shared function at those places. A failed structural match should return false and use the existing original path, without changing original inputs, emitting a new refusal, or turning a successful original operation into Err. Do not first seed and only then inspect the policy. Do not use an externally supplied `checked`/eligible flag or a descriptor derived only from a policy hash. [initial guard][enable-views], [invoke guard][ground-route].

Recomputing this small predicate from the privately owned immutable analysis avoids new descriptor invalidation state. If a later implementation instead computes a private exact descriptor during acquisition, make it bind the actual full module/analysis and clear it alongside views on `check` entry, failed check, quarantine, restart and `into_unverified`; establish it only from the actual analysis after original verification. Invocation routing must still verify the bound descriptor belongs to that same owned subject. The source currently has no numeric epoch field to cite: its authority boundary is privately owned Parent/Capture plus exact history, status and invalidation. Adding an epoch should not be described as already implemented. [check reset][ground-check], [private fields][ground-fields], [quarantine][quarantine], [reestablishment][reestablish].

### A colliding policy hash does not by itself reuse checked authority

There are two distinct identities here. Optimization currently chooses a fragment using wire plus hash. Original checked-program authority already binds more: `CheckedProgram::checked` privately stores `analysis: a.to_json()`, and `matches` requires **complete analysis JSON equality**, complete admitted module equality, behavior and policy hash equality, and a certificate. `acquire::verify` calls `program.matches` before replay. The batch worker also calls it before reusing a checked program in another case. Different prohibited/terminal documents therefore fail checked-program reuse even if their top-level policy hashes are equal. The dependency record arrays in `to_json` retain complete documents, so matching their model hashes does not erase those different literal sets either. [checked binding][checked-match], [analysis JSON][analysis-apis], [acquisition first check][acquire], [batch subject guard][worker-acquire].

`expected["policy_set_hash"]` alone is not an authority token. Ground checks expected module/hash, original replayed packet, exact history, initial/actual original snapshot validity, and the actual checked-program capability. Once established, invocation requires Established status and the exact process-local receipt; stale receipt quarantines before execution. No request can replace the privately owned policy or Store. Releasing the Parent through `into_unverified` quarantines first, and a new Ground must pass real acquisition. [acquisition][acquire], [receipt gate][ground-pre], [ownership/invalidation][quarantine], [reestablishment][reestablish].

Full JSON comparison is an important existing protection, not a complete native refinement proof. In particular this note does not assert that all original certificate/export/cache identities are collision-independent. The concrete claim here is that a different literal-set payload cannot pass the explicit full JSON equality merely because the policy-set-hash strings coincide.

### Forced-equality controls without finding a SHA collision

After the frozen run closes, author a **disposable source mutation** that replaces only the actual optimization policy-hash comparison in `eligibility::module` by true, leaving exact wire and the proposed structural check intact. This makes the real Ground/worker path experience the adverse hash-selector result without any SHA collision or public trusted-view constructor. Keep the original Safety construction/certification and payloads unchanged. Label the result as an injected hash-comparison control; it is not evidence of a real collision.

Use two independently constructed checked subjects with the same LD8 wire:

1. Positive: original three-policy strong profile and a normal Active/Open state. Forced hash match plus actual structural match must still permit the normal view path, followed by complete original comparison.
2. Distinct payload: two original ownership policies, no lifecycle dependency, and the explicit Active/Abandoned seed above. If genuinely certified/acquired, this state is Valid for that actual analysis but fails the strong seed lifecycle relation. Forced hash match must still leave GV on the ordinary path because structural semantics differ; R and GV must return identical complete original observations and actual commit packets. Check views remain inactive. An additional negative source mutant removing the structural comparison should make GV attempt the initial seed and expose `ViewLifecycleViolation`; that demonstrates the control reaches the defended seam, rather than succeeding because the original hash comparison was never bypassed.

A unit helper accepting a supplied Boolean can test the structural predicate, but it is insufficient alone: the required differential control must execute the actual `enable_views` and invoke callers under the source mutation. A test-only flag that globally claims a view trusted would test a different condition and should not be introduced.

Separately exercise **checked-program subject reuse**: use a genuinely checked strong `CheckedProgram` against the different actual analysis and assert `ProgramSubjectMismatch`/quarantine before publication, and assert the batch guard's corresponding mismatch. To ensure this is testing payload rather than a trivial unequal-hash early exit, a private disposable test/source seam can force the hash-only equality checks true while retaining the actual full analysis comparison. For its focused equality test, also normalize only hash-valued fields in both captured/current analysis Values to common test sentinels; preserve all document keys, arrays and prohibited/terminal values, and assert these exact payloads remain unequal. This is a control of the full-document guard, not a new checked constructor or a runtime permission to mutate analysis. Forcing only the outer hash comparison while leaving a different nested hash in full JSON is weaker evidence; label it accordingly. No production authority bypass or externally writable hash/descriptor is needed.

All controls must retain original whole request/metadata forwarding and the current receipt/quarantine/commit effect assertions. The semantic guard proposal and injected controls in this section are design work only. No E source was edited, no test was authored/run, and no new native proof or measurement is claimed.

[required-guard]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/lifecycle_dependency.rs:446
[membership-candidates]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/membership_orders.rs:97
[membership-match]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/guards.rs:234
[certify-issues]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/certify.rs:712
[lifecycle-roles]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/lifecycle_dependency.rs:382
[parent-fields]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/reference.rs:18
[analysis-apis]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/input.rs:258
[dependency-fields]: /var/tmp/behavior-ir-core036-v2/w001/cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/src/safety/lifecycle_dependency.rs:162
[subject-generator]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/reference.rs:237
[reestablish]: /data/repos/behavior-ir-core-033/experiments/transition-study036/src/recovery.rs:4
