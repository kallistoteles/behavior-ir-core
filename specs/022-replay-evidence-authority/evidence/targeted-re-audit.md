# Core 022 targeted independent re-audit

This is a review of the uncommitted candidate at implementation-base HEAD
`f0d2a5102adcb0b491cac166f023fd87bb03e7a7`, not a final delivery attestation.
The inspected runtime source digest is
`c0edea339e6b6e599564c2058fb72ffb07abab7b8acdea26a04125a8f43075dc`, using
`/tmp/behavior-022-capture.py`'s source-path-and-content digest definition. The
[Store preservation receipt](runs/us3-controls/store-contract-reviewed/run.json),
[Core preservation receipt](runs/us3-controls/core022-supplementary-preservation-corrected/run.json),
[archive profile receipt](runs/us3-controls/archive-action-profile-outcomes/run.json)
and [authority probe receipt](runs/us3-controls/authority-probes-identity-corrected/run.json)
bind that runtime digest. They are empirical evidence for this candidate, not
receipts for a future committed, rebased, merged or published revision.

The reviewer authored the Store integration tests and inventory reconciliation,
but made no Core or Store production changes. This review independently inspects
the other writers' implementation. It does not claim independent authorship of
its own tests, universal kernel soundness, or completion of the final gates.
Source line references below identify the inspected working tree.

## Obligation assessment

The categories are the contract's categories: established by construction,
inspected invariant, empirical support, documented assumption, and not established.
A construction claim below is limited to the indicated checked boundary; it does
not replace the semantic or Backend premises.

| Obligation | Assessment | Inspected argument and retained evidence |
| --- | --- | --- |
| O022-01 | Established by construction; inspected invariant; empirical support | Core's prepared/reproduced objects have private fields and no wire deserialization. Read profile selection and request extraction are in [read.rs:291](../../../crates/behavior-core/src/read.rs#L291); invocation reproduction first performs the existing whole comparison in [replay.rs:303](../../../crates/behavior-core/src/invocation/replay.rs#L303). Store [store.rs:1492](../../../crates/behavior-store/src/store.rs#L1492) consumes those checked objects and Core-selected evidence requests. Its remaining branches concern historical loading and existing execution modes, not a second request/profile interpreter. Four separately retained regressions and current Core/Store suites support the boundary behavior. |
| O022-02 | Inspected invariant; empirical support | [read.rs:291](../../../crates/behavior-core/src/read.rs#L291) retains current `refused_request` string verbatim; [read.rs:344](../../../crates/behavior-core/src/read.rs#L344) requires complete reproduction and the actual existing transport-refusal predicate before exposing a proof. Object-shaped semantic refusal cannot take that route. R022-01/02 have genuine separate baseline RED and exact GREEN; Core changed-text, valid replacement, missing/nonstring archive and whole-echo/reason negatives remain collected controls. Historical v1 does not acquire current raw-text support. |
| O022-03 | Established by construction; inspected invariant; empirical support | [invocation/replay.rs:303](../../../crates/behavior-core/src/invocation/replay.rs#L303) derives progress only after original Core replay matches. Intent, invocation and documents use their actual decoders and the supplied context discriminator. Recorded `stage`, source label or outcome kind cannot construct progress. R022-03/04, context-discriminator controls, and the paired six forged-phase plus unsupported archive/source negatives all execute. |
| O022-04 | Inspected invariant; empirical support | Existing [Snapshot::decode:124](../../../crates/behavior-core/src/invocation.rs#L124) returns semantic Snapshot only when its error collection is empty. Claim extraction in [replay.rs:347](../../../crates/behavior-core/src/invocation/replay.rs#L347) is guarded by `Some(snapshot)`. Malformed/contradictory originals reproduce; six separately identified atomically contradictory components and a missing mandatory query property establish no claims. False Store coordinates remain refused, including genuine rejected-Snapshot facade attempts. |
| O022-05 | Inspected invariant; empirical support | [replay.rs:196](../../../crates/behavior-core/src/invocation/replay.rs#L196) extracts accepted captured values/facts and [replay.rs:162](../../../crates/behavior-core/src/invocation/replay.rs#L162) extracts performed binding existence claims. History answers are compared after original reproduction and never inserted into the original Snapshot. Positive existence with an unavailable value remains `INCOMPLETE_SNAPSHOT`; omission is not false existence. Unrecorded caller Snapshot contents after host/intent shape refusal are intentionally unavailable. Accepted early value/fact pairs, ordinary identity-only surrogates, and co-occurring alias/unknown binding controls exercise these distinctions. |
| O022-06 | Inspected invariant; empirical support; documented assumption | [store.rs:1651](../../../crates/behavior-store/src/store.rs#L1651) binds lineage, state and exact position; schema binding remains a prerequisite. [verify_replay_history](../../../crates/behavior-store/src/store/replay_evidence.rs#L9) checks canonical historical identity even for verified refusal paths. Module objects recheck hash, profile and exact serialized representation in [read.rs:190](../../../crates/behavior-core/src/read.rs#L190) and [replay.rs:44](../../../crates/behavior-core/src/invocation/replay.rs#L44). Wrong lineage/state/missing/future/incorrect position/schema/Behavior/header/linkage controls pass. 108 original 018 archive executions preserve bytes and identities at original head, after writes and after real migration; equal state at positions0/2 does not preserve an old identity when moved. A coherently resealed new claim about genuine equal content may match. Endpoint checks rely on immutable coherent Backend history and are not a new full-prefix audit. |
| O022-07 | Inspected invariant; empirical support; documented assumption | Core [replay.rs:487](../../../crates/behavior-core/src/invocation/replay.rs#L487) compares typed values/fields, existence/use, exhaustive universes and incoming sets. [Store canonical loaders](../../../crates/behavior-store/src/store/replay_evidence.rs#L18) verify surviving versions, typed canonical content and content identity. References are rederived from surviving canonical rows; optional indexes do not establish truth. Query checking reuses the existing [eval.rs:2032](../../../crates/behavior-core/src/eval.rs#L2032) registry/capture checker through its bounded adapter. Seven truthful/substituted claim families, unavailable/unknown definitions and missing captures, equivalent/different decimal values, reordered complete enumeration and armed optional-index corruption controls pass. Canonical keys must remain complete under the existing Backend contract. |
| O022-08 | Inspected invariant; empirical support | [read.rs:385](../../../crates/behavior-core/src/read.rs#L385) and [replay.rs:560](../../../crates/behavior-core/src/invocation/replay.rs#L560) use the existing complete comparison. Core owns invocation metadata restoration and record sealing. Resealed value, nested profile/identity, metadata, shape/source/phase and decoded-key duplicate attacks remain nonmatches. The existing first difference, including `record_id` before a later altered semantic field, is retained rather than replaced with a new diff grammar. |
| O022-09 | Inspected invariant; empirical support; documented assumption | The reviewed inventory maps all468 inherited018 cells and all62 unsupported/admission cells to concrete existing test branches; attribution alone is not execution. Existing retained 018 suites preserve every applicable row/U01–U10 and documented legacy query/capture limits. Fifteen independently captured action outcomes cover original decision0.4–0.7 and current0.8 ALLOW/DENY/ERROR at both Core/Store boundaries; command0.7/current0.8 use existing017 evidence. Old command routes absent from pre-command profiles remain N/A. Archives are not current output retagged as old profiles; original producer provenance is retained in [archive-actions/receipt.json](../../../tests/fixtures/replay/022/archive-actions/receipt.json). |
| O022-10 | Inspected invariant; empirical support | [store.rs:1998](../../../crates/behavior-store/src/store.rs#L1998) keeps bundle construction Fresh-only. Current evaluated replay uses Replay/ArchivedRead; archived action replay uses existing historical rederivation. [Private probes](../../../crates/behavior-store/src/store/replay_tests.rs#L102) check zero writes/bundles and that any validity cache certificate names a committed parent. Current/archived command ALLOW, mismatch, refusal and semantic-error controls preserve canonical authority and committed command occurrences; a real fresh ALLOW increments the bundle probe. Replay does not dispatch or publish commands. Existing read-only/backend-failure tests and comprehensive historical snapshots add canonical no-mutation checks. Safe parent cache population remains permitted. |
| O022-11 | Inspected invariant; empirical support | Read order is prepare → coordinate → schema binding → existing snapshot validation → additional history check → reproduce/execute/compare. Invocation complete Core comparison precedes Store anchoring; ordinary invocation retains complete prevalidation even for `UNKNOWN_CAPABILITY` labelled DECODE. Schema-mismatch/late-history/entity faults demonstrate hit0 before refusal and a paired true-schema hit with direct `StoreError::Backend`. Accepted archived used-claim preload gives direct Backend error; good ALLOW replay with an actual used evaluator callback failure gives `Ok(nonmatch)`, paired with fresh `ERROR/UNKNOWN_FACT`. Rejected Snapshot omission probes leave later Entity reads untouched while mandatory Record1 anchoring still fails operationally. |
| O022-12 | Inspected invariant; empirical support | Protected Cargo dependency metadata, engine facade source, Backend trait, persisted document types, canonical hash/record implementation, admission/semantic declarations and schemas are unchanged from implementation base. Existing supported signatures and format/hash algorithms are retained; checked Core integration helpers are additive and doc-hidden. The original018 fixture checksum file is intact. All40 original022 record/setup/attempt files remain unchanged in the current fixture tree; the original README and its41-member checksum manifest are preserved separately as the baseline custody view. The evolving fixture README was updated by T044 and is not claimed unchanged. The two intentional live expectation changes are disclosed in [compatibility assessment](../compatibility-assessment.md), with prior reports/archives preserved. New action records retain their actual original versions, including Wire0.7 modules producing decision0.4–0.6. Final exact-revision gates remain separate. |
| O022-13 | Empirical support; inspected evidence custody | Each named R022 baseline receipt executes exactly one failing semantic assertion after valid original/standalone/coordinate prerequisites; runtime digest is unchanged across those REDs. Separate Core/Store controls pass. US1 and US2 barriers and exact subsequent GREENs are retained in [execution ledger](execution-ledger.md). Initial compilation/admission errors, wrong test-support expectations, ENOSPC and capture-model failures are explicitly excluded from RED. Already-green linkage/index/history controls are preservation, not invented test-first evidence. Runner/checker/hook use their own retained runnable baseline RED lanes. |
| O022-14 | **Not established** | The candidate remains an uncommitted working tree. No external immutable final receipt has yet bound all eleven gates and the exact-revision facade consumer to a committed, clean frozen delivery revision. Scoped GREENs, protocol runs and prefreeze clippy do not satisfy this obligation. Commit/freeze, final gates, consumer and external custody remain required; this review cannot attest a later SHA. |
| O022-15 | Inspected invariant; empirical support; documented assumptions; final closure pending O022-14 | F-REPLAY-022-001 and F-REPLAY-022-002 are assessed separately below. Each has original exact-coordinate evidence, separate test-first custody and current passing preservation. This review explicitly retains Backend, historical capture and authority premises and does not claim queued019–021 or whole-kernel remediation. Final delivery closure remains conditional on O022-14 and the coordinator's complete executed-inventory reconciliation. |

## Separate finding closure

**F-REPLAY-022-001: addressed for the inspected candidate.** Both real public Store
reads retain their original array input/context, empty-object echoes and immutable
identities. The baseline failures are [R022-01](runs/baseline/r022-01-red/run.json)
and [R022-02](runs/baseline/r022-02-red/run.json), each exit101, one executed test,
on runtime digest
`d10a589a8b87815536d955421dc9b64f9af7616d656a1d5c196625d134e7fd59`.
Their separately retained exact GREENs are [R022-01](runs/us1-green/r022-01/run.json)
and [R022-02](runs/us1-green/r022-02/run.json). The current 57-test Store suite
includes both, ordinary VALUE/semantic-input/binding controls, actual backend
faults, preserved prevalidation and comparison ordering. The canonical facade
consumer exercises the same public records. Core transport proofs use the original
text; they do not obtain semantic authority from the stored refusal label or echo.

**F-REPLAY-022-002: addressed for the inspected candidate.** Host input-shape and
binding-shape failures retain `source_kind: invocation`; Core's original origin
reproduction remains reference. The baseline failures are
[R022-03](runs/baseline/r022-03-red/run.json) and
[R022-04](runs/baseline/r022-04-red/run.json), each exit101, one executed test,
on the unchanged baseline digest above. Separate exact GREENs are
[R022-03](runs/us2-green/r022-03/run.json) and
[R022-04](runs/us2-green/r022-04/run.json). Current Core, Store and facade suites
retain distinct intent/document routes, genuine malformed/contradictory Snapshot
refusals, accepted sparse/history claims, valid binding/success controls and
resealed forged-origin negatives. Full original Core comparison occurs before
Store loads independent history answers. Matching rejected attempted data does
not establish a semantic Snapshot or excuse independent anchoring.

These are scoped remediation assessments. They do not claim final delivery,
publication, authentication of a new candidate, or soundness of every Core construct.

## Inventory and residual premises

Baseline custody retains the [original README](baseline-fixture-readme.md) and
[original41-member checksum manifest](baseline-fixture-checksums.json) separately.
The current [fixture checksum manifest](../../../tests/fixtures/replay/022/checksums.json)
has100 members:40 unchanged original record/setup/attempt files,59 additive archive-action
files, and the updated evolving README. Its updated README checksum does not alter
the preserved baseline bytes or attest that the current README is unchanged.

[The reviewed matrix](../../../tests/fixtures/replay/022/matrix.json) preserves
116 cases,19 original runner members/38 runner boundaries,468 inherited018 cells,
62 unsupported/admission cells and18 separately pending protocol cells. Seven
atomic Snapshot-rejection auxiliaries are separate positive controls. Accepted
`P022-CLAIMS-*-contradictory` means an internally consistent accepted claim
contradicts canonical history; its negative expectation is preserved and its
explicit overlap with the substituted guard is recorded. It does not mean
Snapshot decoding returned None. A missing syntactic query property is likewise
separate from an accepted complete query fact whose definition is unavailable in
the existing registry. Attribution metadata is not a run receipt, and this reviewer
did not mark pending matrix entries executed.

Four Store-read N/A cells are explained from the actual route: direct fact loading,
used evaluator callback, omitted later Entity loading, and a fresh bundle-positive
control. [SnapshotFacts:824](../../../crates/behavior-store/src/store.rs#L824) uses
validated in-memory SeedFacts for read facts; only identity use delegates to Backend,
and identity-use demand occurs during [action creation](../../../crates/behavior-core/src/eval.rs#L3229), which is absent from read bodies. Required read entity loading and full
snapshot prevalidation have actual separate error probes. Invocation accepted used
claims and action callbacks retain their distinct direct/semantic channels.

Canonical Backend history, complete primary enumeration, immutable genesis and
surviving versions must satisfy the existing persistence contract. A historical
endpoint/header/link check is not an adversarial full-prefix audit. `history_at(0)`
is O(seed): legacy genesis authenticates canonical version-at-zero values, while
trusted v2 genesis uses its retained seed. This integrity cost is preserved and is
not silently skipped to accelerate a refusal. Optional index corruption controls
leave canonical rows and primary enumeration coherent; they do not establish
universal detection of arbitrary malicious Backend behavior.

Existing typed codecs, exact decimal arithmetic, declaration/schema/hash identity,
query/profile registries and cryptographic assumptions remain premises. Historical
capture omissions remain unknowable and are never filled to evaluate a different
attempt. Existing verifier/authorization authority is independent; self-consistent
hashes and replay matching are not authorization. Validated committed-parent cache
reconstruction remains acceleration and cannot certify rejected snapshots or new
uncommitted candidates.

No residual implementation contradiction was found within this bounded review.
O022-14 and final executed-inventory/custody closure are outstanding; the current
scoped receipts cannot substitute for those final requirements.
