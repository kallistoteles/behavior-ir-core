# Independent Core/Store replay boundary review

## Scope and source identity

This review inspected the Core and Store production changes for 022, including
the complete new `invocation/replay.rs` and `store/replay_evidence.rs` modules,
their callers, and the existing historical evaluation, Snapshot, history and
Backend contracts they rely on. The reviewer authored the 022 facade consumer
and protocol work, but did not author these Core or Store production changes.
No runtime tests were run and no production files were edited for this review.

**Result: no production blocker identified in the inspected candidate.** This is
a scoped source review, not a proof of universal kernel soundness or an attestation
of final delivery gates. O022-14 remains outstanding.

The inspected checkout's actual HEAD is
`f0d2a5102adcb0b491cac166f023fd87bb03e7a7`. The production changes are uncommitted;
that HEAD is the base revision, **not** an immutable SHA of this candidate.
The following SHA256 fingerprints bind this review to the actual runtime files:

| File | SHA256 |
| --- | --- |
| `crates/behavior-core/src/read.rs` | `fe491dd62663a2be94edfad19798af0e4b060fcb2b04ba6ed77c2c450c403f3e` |
| `crates/behavior-core/src/eval.rs` | `75319e5635f2de8d59cc073daa325f21187313c7714211ef49e98ecd43230b17` |
| `crates/behavior-core/src/invocation.rs` | `2d4ab4ae27c8832536f9443df08e6482ab8ad87558add5bbd7a4fe7bdff5991c` |
| `crates/behavior-core/src/invocation/replay.rs` | `4ee656175fef701cebb2a5a7f667e1d6f61ce70e3c0029d5a524ae0261652db3` |
| `crates/behavior-store/src/store.rs` | `d32fdd99f26fd637809855e2c0c49cce455a48788bcbebad35d5ae04ba000672` |
| `crates/behavior-store/src/store/replay_evidence.rs` | `c7383624aa83155d9af786923525452d667f3711e64d43eeefbbea24ad38d640` |

Source changes after these fingerprints require review refresh. The final
immutable receipt must identify the eventual clean committed delivery revision;
this document cannot provide that receipt in advance.

## Reviewed obligations

The classifications below describe source reasoning. Retained empirical evidence
in the [execution ledger](execution-ledger.md) and
[primary targeted re-audit](targeted-re-audit.md) supplements these arguments;
its tests are neither new executions by this reviewer nor formal proofs.

| Obligation | Classification and inspected argument |
| --- | --- |
| O022-01 | **Established by construction; inspected invariant.** [Read preparation](../../../crates/behavior-core/src/read.rs#L291) selects the original request, source and recorded profile. [Invocation reproduction](../../../crates/behavior-core/src/invocation/replay.rs#L303) completes the existing reference replay and whole comparison before constructing a private-field reproduced object. Store [read replay](../../../crates/behavior-store/src/store.rs#L1492) and [invocation replay](../../../crates/behavior-store/src/store.rs#L1546) consume those objects and Core-selected demands. Store does not decode an archived host document as an intent or independently choose a nested semantic profile. |
| O022-02 | **Inspected invariant.** [Read preparation](../../../crates/behavior-core/src/read.rs#L291) retains current `refused_request` text; it does not replace failed sections with `input` or `context` echoes. [Transport proof construction](../../../crates/behavior-core/src/read.rs#L344) first reproduces and compares the whole record, then requires the [existing parser's actual refusal result](../../../crates/behavior-core/src/eval.rs#L3993). A syntactically accepted object request with a later semantic error cannot use this proof path. Ordinary evaluation instead receives actual historical state through a Core-built request. |
| O022-03 | **Established by construction; inspected invariant.** [Original invocation replay](../../../crates/behavior-core/src/invocation.rs#L1270) dispatches `intent`, `invocation` and `documents` to their existing constructors and compares the resulting complete envelope. [Progress extraction](../../../crates/behavior-core/src/invocation/replay.rs#L318) then repeats those actual pure decoders, including the supplied-context discriminator. No `stage` field authorizes a waiver. Recorded source/outcome labels can select inspection only after the original constructor and whole comparison have agreed. |
| O022-04 | **Inspected invariant.** Existing [Snapshot decoding](../../../crates/behavior-core/src/invocation.rs#L124) collects structural, typing and consistency errors and exposes `Some(Snapshot)` only when the entire error collection is empty at line265. [Claim extraction](../../../crates/behavior-core/src/invocation/replay.rs#L344) is inside that `Some` branch. Individually well-typed rows from a rejected Snapshot are not promoted to semantic components, and the Store does not inject historical answers into the attempted raw Snapshot. |
| O022-05 | **Inspected invariant; documented capture limit.** [Accepted Snapshot claims](../../../crates/behavior-core/src/invocation/replay.rs#L196) retain explicit values, existence/use/reference/field/universe/query facts. [Performed resolution claims](../../../crates/behavior-core/src/invocation/replay.rs#L162) retain actual `bound` and `unknown` statuses without inventing existence from `wrong_type`. [Historical comparison](../../../crates/behavior-core/src/invocation/replay.rs#L542) requires all demands. A sparse positive existence claim with no available value remains incomplete input to the original resolution, even when Store knows that value. Intent/invocation shape-refusal archives that never captured their earlier caller Snapshot cannot acquire fabricated claims from it. |
| O022-06 | **Inspected invariant; documented Backend premise.** Store [coordinate lookup](../../../crates/behavior-store/src/store.rs#L1648) binds StoreID, StateID and exact position. Schema binding precedes additional history/content reads. [History verification](../../../crates/behavior-store/src/store/replay_evidence.rs#L9) checks canonical history against that StateRef, including refusal paths. [Read module checks](../../../crates/behavior-core/src/read.rs#L190) and [invocation module checks](../../../crates/behavior-core/src/invocation/replay.rs#L44) bind hash, semantic profile and exact serialized module representation. Existing [history inspection](../../../crates/behavior-store/src/store.rs#L185) checks endpoint and immediate linkage; it is not a new audit of every historical event. |
| O022-07 | **Inspected invariant; documented Backend/typing premises.** [Store value loading](../../../crates/behavior-store/src/store/replay_evidence.rs#L19) verifies surviving typed canonical versions, identity/revision/time and content hash. Universes sort/deduplicate complete `keys_at` enumeration and check every surviving member. Incoming edges are reconstructed from those canonical values, without `incoming_at` or field-query indexes. [Core comparison](../../../crates/behavior-core/src/invocation/replay.rs#L487) uses typed canonical values/fields, booleans and sets. [Query reconciliation](../../../crates/behavior-core/src/eval.rs#L2092) reuses the existing registry, exact captures and predicate evaluation against an independently loaded universe, including an empty one. Unavailable definitions/captures do not become vacuous success. |
| O022-08 | **Inspected invariant.** [Existing invocation replay](../../../crates/behavior-core/src/invocation.rs#L1318) retains requested-binding coherence, inner capability/BehaviorHash/DataVersion consistency, resolution, nested reproduction and complete envelope comparison. [Read comparison](../../../crates/behavior-core/src/read.rs#L385) and [invocation completion](../../../crates/behavior-core/src/invocation/replay.rs#L560) call the existing whole-record comparator. Core retains metadata application and sealing; Store no longer duplicates sealing. No semantic-only comparison bypasses inner/enclosing identities or changes the existing first-difference algorithm. |
| O022-09 | **Inspected invariant; empirical domain coverage required separately.** [Read profile selection](../../../crates/behavior-core/src/read.rs#L160) preserves the existing supported v1/module and v2/CommandIntents combinations. [Nested selection](../../../crates/behavior-core/src/invocation.rs#L1418) remains after envelope/fact/resolution prerequisites. Decision0.4–0.7 takes [existing historical rederivation](../../../crates/behavior-store/src/store.rs#L1584), whose [Historical purpose](../../../crates/behavior-store/src/store.rs#L2991) retains full old-parent validity without promoting old validation to a current cache certificate. This argument preserves reference paths; exhaustive 018 and 017 execution attribution belongs to the retained inventory and primary re-audit, not this source review alone. |
| O022-10 | **Established by construction at reviewed Store routes; inspected invariant.** Current evaluated invocation replay uses `Replay` or checked `ArchivedRead`; old action replay calls historical rederivation. The [bundle guard](../../../crates/behavior-store/src/store.rs#L1998) requires `Fresh`, actual head and action ALLOW before bundle construction. Historical rederivation returns ephemeral observation/read/write data, not a bundle. New claim loaders only read Backend methods and use per-call materializations; they do not populate a validity cache. Existing snapshot validation may populate safe committed-parent caches. None of these routes calls Backend create/commit, dispatch or publication. |
| O022-11 | **Inspected invariant.** Read keeps prepare → coordinate → schema → existing full snapshot validation → history → reproduce/execute/compare. Invocation performs full Core reproduction before Store access; ordinary routes retain full prevalidation even for a DECODE-labelled unknown capability. New direct fallible history/value/existence/use/universe reads propagate [Backend errors](../../../crates/behavior-store/src/store.rs#L1631). Evaluated body facts retain [SnapshotFacts callbacks](../../../crates/behavior-store/src/store.rs#L824), including `used_at` mapped to `FactError`, so a callback failure is reproduced semantic evidence/nonmatch rather than silently recategorized as a direct operational preload error. No demands are loaded from rejected Snapshot components. |
| O022-12 | **Inspected unchanged-file invariant; compatibility evidence separate.** `git diff` against HEAD was empty for the supported engine facade/surface, Backend trait, persisted document types, Core canonical/record/serialization/wire/schema/semantic sources, Cargo metadata and schemas. New integration helpers are additive, doc-hidden Core internals with private checked-object fields; they are absent from the unchanged supported engine facade. This does not claim fixture custody or final compatibility gates were re-executed here. The two intentional live outcome corrections require the separate [compatibility assessment](../compatibility-assessment.md). |
| O022-15 | **Independent scoped finding assessment; documented assumptions; final closure pending.** The two findings are assessed separately below. The argument concerns the inspected replay boundary, accepted historical claims and authority/error preservation; it does not close queued019–021 work or other kernel properties. Runtime fingerprints and exact source references bind the argument to this candidate. Final delivery closure still requires O022-14 and completed executed-inventory/evidence reconciliation. |

## Separate finding assessments

**F-REPLAY-022-001 is addressed in the inspected source.** A current real read
transport refusal retains its original array-shaped input/context text. Core
fully reproduces that original request and record before exposing its actual
transport-refusal proof. Store establishes the same canonical coordinate, schema
and existing parent validation prerequisites, then returns that whole comparison.
The empty object echoes are no longer reconstructed as the attempted request.
Ordinary semantic errors continue through historical state evaluation and whole
comparison. This closes the source mechanism behind both input/context
counterexamples without making hashes or labels independent historical authority.

**F-REPLAY-022-002 is addressed in the inspected source.** Original host invocation
shape refusals use `prepare_invocation`, while intent refusals use `prepare_intent`.
The historical Store boundary consumes Core's fully reproduced result rather
than interpreting both documents as intents. Actual Store coordinate/schema/history
anchors remain required. A documents archive contributes historical claims only
after the whole Snapshot has decoded successfully; later resolution refusal does
not discard those accepted claims. The chosen malformed/contradictory Snapshot
decode-refusal correction therefore retains attempted raw evidence while waiving
claims that were never semantically established.

The removed duplicate old-action Store binding reconstruction is not an omitted
historical-value check: Core still verifies requested identities against the inner
state and reproduces wrapper resolution, and [archived rederivation](../../../crates/behavior-store/src/store.rs#L3005)
requires actual parent existence and exact captured values before recomputing
facts under the original decision profile. It constructs no fresh bundle.

## Residual premises and completion limits

- Backend records/versions must remain immutable and coherent, `version_at` must
  provide the stated consistent as-of version, `used_at` must state actual lifetime
  use, and `keys_at` must enumerate every existing entity under the unchanged
  [Backend contract](../../../crates/behavior-store/src/lib.rs#L39). Sorting,
  canonical decoding and content hashes do not prove that an arbitrary dishonest
  Backend has omitted no members. Reference/query reconciliation does not trust
  optional acceleration indexes, but complete canonical enumeration remains a
  premise. Endpoint/header verification does not add a full-prefix history audit.
- Existing declaration identity, typed canonical encoding, exact arithmetic,
  cryptographic hashes and deterministic pure decoders remain dependencies.
  Repeating a decoder with the exact checked module and same archived evidence is
  inspected here; this feature does not re-prove all underlying Core semantics.
- Missing historical captures remain unavailable. An authenticated or authorized
  action requires its existing independent authority evidence; self-consistent
  records or replay success create neither permission nor fresh commit authority.
- Test-first evidence (O022-13), historical-domain execution and empirical
  no-mutation/error probes are assessed through their retained ledger and primary
  re-audit. This review adds source reasoning, not retrospective RED evidence or
  a second runtime test claim. Property-test success is empirical support.
- O022-14 is **not established**: all eleven canonical gates, the supported facade
  consumer and their external immutable custody receipt must cover the eventual
  clean frozen delivery revision. This working-tree review cannot attest a later
  merge, squash, rebase or release SHA.
