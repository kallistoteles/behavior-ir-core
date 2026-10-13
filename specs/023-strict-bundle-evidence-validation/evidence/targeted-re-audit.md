# 023 targeted trust/query/evidence re-audit

**Review state: complete for the T055 working-source checkpoint. No unresolved
scoped production or evidence blocker was identified.** R023-01 is closed below.
Final frozen-revision gates and exact pushed Git consumer validation remain
mandatory external delivery obligations; this review does not attest them.

## Scope, source and reviewer independence

This review concerns F019-EXTERNAL-QUERY-001 and P023-01–12. It is not another
full 016 audit, a physical backend durability audit or a declaration that all v2
Store/schema paths conform. No review-owned production or test change is made.

The reviewer authored the initial source/coverage inventory and the isolated
mutation runner/report. The reviewer did **not** author the production codec,
candidate integration, wrapper schema correction or producer/projection/consumer
test implementations. Source/semantic review is independent of those authors;
mutation-evidence review is not independent of its own machinery. That boundary
is explicit rather than claimed as independent external certification.

Reference source is frozen 019 `6ad357c7e9960ce6771fd435adcec9f8018fb7d6`
and implementation-entry `72d4093322aabaedf86c3b322ca3394724b0f6df`.
The genuine clean test-only RED is `f4641b933a3f5bd65a308623a99895d7ee1a75fb`.
Later evidence binds working-file digests; it does not attest that unchanged RED
commit or the eventual containing delivery commit.

## Implementation inspection

- Ordinary Core Facts, evaluation, record/read logic, v1 document/replay,
  facade/CLI implementation, dependency metadata and constitution remain protected.
  Recomputing all 1,412 entry-manifest digests identifies only the permitted
  existing code/test paths and two scoped current wrapper assets as changed.
- The sole production Store edit aliases `TAG_QUERY_RESULT` to the identical
  `behavior.query_result.v1` value. `facts_json`, rederivation, history checks,
  signatures, CAS/atomic publication and resulting-state validity code are unchanged.
- The new private codec checks closed typed products, required versus nullable
  values, canonical JSON, strictly increasing semantic keys and required digest
  syntax/equality before creating owned validated evidence. Its production prefix
  matches the isolated mutation checkpoint; later additions are private tests.
- Only the v2 action-candidate branch uses this constructor/projection. Migration
  retains the unchanged ordinary-Facts/empty-object boundary; v1 decode, hash,
  commitment and replay gain no new codec or earlier check.
- Projection consumes owned evidence, removes only the recognized query integrity
  field and delegates to unchanged Facts parsing. Candidate claim JSON remains
  separate and unchanged for its established hash and signed subject.

## Proof-obligation assessment

Construction describes restrictions encoded in private types/interfaces; code
invariant describes inspected sequencing/unchanged authoritative logic; tests
are empirical controls. None substitutes a universal proof or backend assumptions.

| Obligation | Construction / inspected code invariant | Empirical evidence inspected | Remaining assumption / completion |
| --- | --- | --- | --- |
| P023-01 — distinct domains | Private closed BundleEvidence and owned validated product; ordinary Facts unchanged | Verify boundary145, ordinary hash-field refusal, independent package projections | Ordinary/witness schema debt remains separate |
| P023-02 — raw ambiguity | Existing strict whole-document decoder precedes typed candidate; PC07 remains already-reduced structural convenience | Raw root/nested/escaped/equal-value duplicate and no-float controls | No recoverable raw-key uniqueness claim for a pre-reduced Value |
| P023-03 — canonical digest | Required canonical lowercase digest; existing tagged member-object hash; no result defaulting in consumer | Literal vectors, empty/nonempty/hash-domain/encoding negatives; M01–M03 | SHA-256 collision resistance and existing canonical encoder correctness |
| P023-04 — no repair | Compare vector keys before map/set projection; strict tuple/string order and uniqueness | Every section/edge/capture/member controls; M05/M06 detect normalization/permissiveness | Finite adversarial suite is not exhaustive proof |
| P023-05 — exact projection | Consumed owned data; only result_hash removed; original claim retained | Actual39 independent record-oracle projections, ownership/mutation/custody controls, M04 | Current package represents bounded legal domains; normal reproduction must remain GREEN |
| P023-06 — v1 pipeline | Legacy codec/commit/replay sequencing unchanged; identical-value alias adds no check | Sixteen exact baseline outcome documents, genuine earlier/operational error controls; M08 catches phase movement | Preservation theorem relies on unchanged authoritative functions and conforming backend contract |
| P023-07 — historical truth | Full parent rederivation/equality remains mandatory after local validation | Correctly rehashed none/signed forgeries refuse; M07 removal permits actual Committed and is detected | Honest/conforming historical backend reads remain assumed |
| P023-08 — authority/publication | Existing independent policy/context/signature, exact history/schema, child validity/CAS/publication checks preserved | Authenticated9/eight workload, authorization failures, no-publication snapshots; T053 signed archive/recovery/replay/committed-command controls | No physical crash proof; conforming canonical Store/Backend and cryptographic contracts remain assumptions |
| P023-09 — producer closure | Existing serializer and explicit S01–S09/PC01–PC20 domain; unsupported combinations retained | 246 actual producer runs including66 explicit v1 projection comparisons; 144 bounded generations; package39 and executed migration/history/facade/schema routes | Coverage proves each inventoried route has evidence; bounded tests alone do not prove the universal law for every legal payload |
| P023-10 — scoped schemas | Nine added closed products and exactly two action-observation refs per wrapper; all original other definitions preserved | Two asserting pre-edit failures then schema6 GREEN over producers/H02/H03 and shape/digest controls | Schemas do not establish raw uniqueness, ordering or cryptographic equality |
| P023-11 — index neutrality | Unchanged canonical semantic producer; optional access strategy does not alter meaning | US1/T054 complete indexed/scan/reversed equality and activation, generated seed controls | Distinct Store lineages are not equated; backend implementation conformance remains assumed |
| P023-12 — revision custody | Clean asserting RED and immutable final receipt workflow; no containing-SHA self-reference | RED status101, stable working receipts/source-bound CLI, eight isolated compiled mutation kills/restoration | Final clean pushed candidate, canonical gates and exact Git consumer remain pending |

## Independent projection and schema inspection

The checked package digest is
`320dc0ae56b187d552700f2f8ead2b4269bd76de9e7117941c397a66c9af8bc3`;
manifest digest is
`8c7a5726413fba7076c479e210353a11e1ab99d5a5e1b43575e273d68948e830`.
The manifest and raw package agree. There are 39 actual current v2 cases,
13 per evaluate/invoke/invoke_intent route, across admitted Wire0.4–0.8.
All current records are decision0.8, with absent legacy semantic_profile versus
actual command profile0.8 preserved; absent is not silently relabeled profile0.8.

Expected Facts come from each original inner ALLOW record, removing only its
separately recorded parent universe and using unchanged Facts serialization.
They are not obtained by stripping hashes from bundle input or by copying the
new codec output. Store's collected normal reproduction reexecutes the recipes;
private Verify tests read the static package and compare exact projection.
Only the explicit ignored maintenance writer can regenerate fixtures; it was
deliberately executed, not counted as a skipped mandatory acceptance test.

Independent parsed comparison of both wrappers with frozen 019 finds nine new
`bundle_*` products and two existing reference changes: action candidate
read_facts and the non-null action CommitBundle read_facts branch. All original
other definitions/values remain equal, including migration {}, null/omitted
placement and ordinary/witness/legacy/read/decision domains. Matching products
require all item fields, reject unknown fields and retain canonical nullable values.
Digest length71 plus the historical regex eliminates its newline-anchor ambiguity
without restricting other semantic strings.

Corrected asset digests are
`f10c478a2173801781f45f332b97fbf4283490c4eb89deb8fe3773868cd015fd`
and `3be602ba979577e0ffbf16e892bcdbb9c10ee9c4501492f066556bcd6ea354d1`.
These are asset identities; semantic SchemaHash/BehaviorHash, hash domains,
format tags and valid historical record bytes are unchanged.

## Resolved review discrepancy

**R023-01 — actual v1 producer projection traceability.** Initial producer-law
code independently captured expected record Facts, but for v1 only asserted
producer/commit/archive equality. The private39 projection package is v2-only.
Source-only reuse of the unchanged serializer cannot replace SC-002/I1's actual
per-supported-pairing projection evidence. Returned v1 case metadata also used
v2 cell labels, although the static package only captures v2.

The coordinator accepted this observation. The Store owner added explicit
**test-only** v1 bundle semantic-view equality against independently extracted
inner-record Facts for all **66** supported v1 route/Wire/recipe cases and corrected
S01/S02 metadata. It changes no production path, legacy validation phase or fixture
package. This was an evidence/test correction, not a production soundness defect.

**Closed.** The inspected source has the explicit equality and correct cell branch.
`/home/kalle/validation-receipts/core023/us4-producers/review-v1-projection/receipt.json`
binds identical source-before/after digests, current source and successful
collection, full target and Clippy statuses. Eighteen mandatory tests pass; only
the deliberately previously executed maintenance writer is ignored by its normal
runner. The original39 package/manifest bytes are unchanged. The independent
T054 coordinator rerun additionally executes these assertions on the same source.

## Completed route/evidence reconciliation

The finalized [coverage inventory](coverage.md) maps every FR/SC, C023/P023,
S01–S09 and PC01–PC20 to actual collected names and retained execution.
SC-002 evidence is actual producer-output acceptance plus independent projection;
shared construction explains reuse of the same package through transitive routes,
while archive/replay/recovery/signing/facade/schema dispatch is also exercised.
PC07 remains an already-reduced structural helper, not a raw trust boundary.
H01 remains structural; H02/H03 retain genuine pre017 decision0.7/profile0.8
custody; K01/K02 remain constructed codec-recognition controls.

T053 Store evidence covers nine route/lineage query archive/reopen/recovery cases
and three actual current query-command producer routes, including exact history
recovery after a later commit and refused/forged records exposing no commands.
The facade target has14 collected tests, all passing, with exact signing,
source-bound CLI, complete original39 package consumption, replay/recovery and
idempotent committed occurrence checks. Recorded transitive collection/suite/
Clippy statuses are0 and source/CLI/package custody checks remain affirmative.
These tests enumerate committed evidence; they dispatch no external command.

T054 receipt at `/home/kalle/validation-receipts/core023/t054/receipt.json`
records four successful coordinator collection/run commands: private query
conformance11 and Store evidence18 mandatory cases. The maintenance writer is
separate from acceptance. Independent digest checking found all **4,173** recorded
non-Markdown files match both stable before/after manifests and current source.
Markdown authoring was explicitly excluded from that working-code checkpoint;
the final external receipt must bind the entire committed tree.

This reviewer independently recomputed package/manifest digests and checked all39
raw original-record Facts (only universe removed), record/bundle/candidate/profile
bindings, without invoking the new codec. Receipt inspection verifies the exact
v1 projection correction and completed transitive/index cases. No additional
runtime suite was claimed as executed by the review itself.

## Final scoped conclusion and limits

**No unresolved blocker within 023's reviewed implementation/evidence scope.**
The demonstrated valid v2 false rejection is remediated on the reviewed working
source, while independent historical truth/authorization/publication and versioned
compatibility obligations retain their code and executable evidence. R023-01's
traceability gap is closed through actual tests rather than weakened acceptance.

[Implementation report](../implementation-report.md) and
[compatibility assessment](../compatibility-assessment.md) correctly distinguish
working-source remediation from final frozen delivery and public schema asset
changes from semantic identities. Their scope does not include new language,
record/wire/profile tags, hash rules, facade exports, backend obligations or pins.
The conservative minor-class assessment selects no numerical release.

This conclusion permits finalization/freeze, **not** final delivery attestation.
P023-12/SC-006's remaining exact-revision obligation is canonical gates plus the
exact pushed Git consumer and same-source CLI/fixtures, recorded externally after
all tracked reports/bookkeeping are committed. Any later production change needs
applicable new source review/evidence; a different merge/release SHA needs its own
validation. No containing-commit final SHA is embedded here.

The optional broader consumer-formatting check reported pre-existing formatting
in protected `consumer/tests/capabilities.rs`; its unchanged entry digest confirms
it was not introduced by023. That observation neither weakens required workspace
formatting nor authorizes unrelated cleanup. New/changed files and final required
gates remain independently checked.

F023-EXTERNAL-FACTS-SCHEMA-001 remains open. This review does not close unrelated
016 findings, prove arbitrary backend conformance, select a release/version,
publish artifacts or change an ecosystem pin.

## Reviewed source/asset identities

These SHA-256 values bind the inspected working files and match T054. They are
not semantic hash domains or the final delivery commit identity.

| File | SHA-256 |
| --- | --- |
| [crates/behavior-verify/src/governance/trusted/bundle_evidence.rs](../../../crates/behavior-verify/src/governance/trusted/bundle_evidence.rs) | `8108543cceccd5886b2cfc136d1105f7bb95e6ee6bc09082a36adabf5162f43c` |
| [crates/behavior-verify/src/governance/trusted.rs](../../../crates/behavior-verify/src/governance/trusted.rs) | `d8f34fbed5a3e036c16a79b017436bd39f7164f481b683a7493f085a3953e46e` |
| [crates/behavior-verify/src/hashing.rs](../../../crates/behavior-verify/src/hashing.rs) | `14d6275a94e0ab14e33660696bbecd47067def14708355117769d459ae2c8b35` |
| [crates/behavior-store/src/store.rs](../../../crates/behavior-store/src/store.rs) | `5d5f7b61f177e8f27e7c6f00379e2b0401f4a635d9bf565ecbc3339f03857951` |
| [crates/behavior-store/tests/strict_bundle_evidence.rs](../../../crates/behavior-store/tests/strict_bundle_evidence.rs) | `b2e65486179ca40736072169609198bcec45eee6b4400fea523fa186ad8ec64f` |
| [consumer/tests/strict_bundle_evidence.rs](../../../consumer/tests/strict_bundle_evidence.rs) | `22e6d64ca9ad887aeb1e9bcc9944e58ee9398b27feee105cd889e3c89c8a3525` |
| [schema/governance-v2.schema.json](../../../schema/governance-v2.schema.json) | `f10c478a2173801781f45f332b97fbf4283490c4eb89deb8fe3773868cd015fd` |
| [schema/store-v2.schema.json](../../../schema/store-v2.schema.json) | `3be602ba979577e0ffbf16e892bcdbb9c10ee9c4501492f066556bcd6ea354d1` |
