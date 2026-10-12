# Validation Matrix: Core 022

**Status**: Required future evidence, not executed coverage. This matrix expands
the [specification](../spec.md) and preserves the
[018 supported domain](../../018-strict-profile-replay/contracts/support-matrix.md).
There is no artificial Cartesian product of all versions/profiles/origins.

## Baseline and separate regressions

Capture real operations on the named implementation baseline. Establish legal
controls first; then assert the intended corrected result and observe the semantic
assertion fail. A compilation failure, missing target, zero-test run or passing
known-limitation assertion is not RED.

| ID | Required retained test name | Actual origin / recorded result | Intended result at both applicable boundaries | Finding |
| --- | --- | --- | --- | --- |
| R022-01 | `store_read_input_array_refusal_replays_original_request` | Public Store read, `input: []`, v2 `INVALID_INPUT`; original raw text retained, echo `{}`. | Core and Store match identical original record identity. | F-REPLAY-022-001 |
| R022-02 | `store_read_context_array_refusal_replays_original_request` | Public Store read, `context: []`, v2 `INVALID_INPUT`; original raw text retained. | Core and Store match identical original record identity. | F-REPLAY-022-001 |
| R022-03 | `host_invocation_input_array_refusal_keeps_invocation_origin` | Core host invocation with actual coherent Store snapshot, `input: []`, invocation-origin decode archive. | Core and Store match without converting to intent. | F-REPLAY-022-002 |
| R022-04 | `host_invocation_binding_shape_refusal_keeps_invocation_origin` | Core host invocation with actual coherent Store snapshot, string instead of typed binding identity. | Core and Store match original invocation decode refusal. | F-REPLAY-022-002 |

Use the existing Wire 0.8 Culture model and actual seeded Culture#c1 coordinate
where appropriate. Do not transplant a coordinate into an unrelated standalone
record and call it Store-origin evidence. Each finding needs its own RED/GREEN
commands, exit statuses, assertions and controls, even if it shares implementation.

## Phase-sensitive and historical-truth cases

Families below must be expanded to explicit member case IDs in the implementation
manifest. Each applicable boundary runs its own assertion; N/A and documented
missing-evidence limits remain explained rather than counted as success.

| Family | Members / required variation | Expected interpretation |
| --- | --- | --- |
| P022-SNAPSHOT-REJECTED | `entities: {}` shape error and contradictory accepted-looking entity/facts; documents origin with supplied intent context and host null context. | Genuine Snapshot decode refusal matches Core and correctly anchored Store; rejected payload never becomes state. |
| P022-ANCHOR | Reproducible refusal independently varied with foreign Store, wrong StateId, missing/future/wrong position, wrong historical schema or module Behavior. | Applicable Store non-match; standalone need not detect Store-specific differences. |
| P022-FORGED-PHASE | Resealed wrong stage, source kind, outcome kind, document format, data version or a valid replacement for the failed request. | Actual reproduction/full comparison rejects; label does not waive obligations. |
| P022-ACCEPTED-EARLY | Accepted archived Snapshot plus decoded request followed by a documents-origin resolution refusal; truthful versus false retained values/facts. Separately, accepted caller Snapshot followed by request-shape error emits only an intent/invocation archive. | Retained earlier claims must agree with history. The shape-error archive lacks that Snapshot, so reproduce its documented capture limit without fabricating Snapshot checks. |
| P022-SPARSE | Accepted Snapshot with positive existence but unavailable value, yielding `INCOMPLETE_SNAPSHOT`; omitted universe/value versus explicit empty universe/negative existence. | Truthful incomplete availability can match; explicit false absence/exhaustive membership rejects. Do not complete the attempt from Store. |
| P022-RESOLUTION | Unknown identity, wrong typed identity, some bound aliases before another binding fails, retained bound values, accepted Snapshot followed by binding refusal, ordinary recorded-resolver id-only surrogates. | Actual performed claims preserved; unknown means absence, wrong type does not invent existence; id-only surrogates assert existence rather than full content; no unrecorded body. |
| P022-CLAIMS | Explicit used/existence/fields/universes/incoming-reference/query claims; truthful, substituted, incomplete-checkable and contradictory variants. | Required exact canonical historical truth; unverifiable explicit claims cannot silently match. Use existing query/capture/profile semantics. |
| P022-EXACT-VALUES | Equivalent typed decimals such as `1`, `1.0`, `1.00` versus semantically different values; reordered unordered evidence/index enumeration. | Equivalent typed values agree without archive rewriting; changed truth rejects; canonical results do not depend on incidental enumeration. |
| P022-CAPTURE-LIMITS | Original intent/invocation decode archives without Snapshot, historical v1 with missing required capture, unknown original archive/source. | No fabricated Snapshot or raw text; supported original behavior/capture limits retained. Unknown/inconsistent enclosing evidence rejects. |
| P022-FALSE-SELF-CONSISTENCY | Standalone-consistent records asserting an existing bound entity absent or substituting typed historical content. | Store non-match despite standalone match when actual history contradicts established assertions. |

Do not use a forged `DECODE` label as the only proof of a negative test. Reseal
substituted records where useful so the test establishes semantic checking beyond
simple stale-hash rejection. Whole-record comparison remains mandatory in all cases.

## Preservation controls and supported profiles

| Family | Required controls |
| --- | --- |
| C022-READ | Valid read; object-shaped input rejected semantically; ordinary binding refusal; evaluation error; current and historical query/fact evidence. |
| C022-ORIGIN | Existing Store-origin intent decode refusal; host invocation success; documents-origin success; binding refusal after successful request decoding. |
| C022-018 | All nine 018 supported rows and applicable read/invocation boundaries, with canonical records, applicable strict negatives and each recorded profile's refusal/error limits. |
| C022-UNSUPPORTED | Existing U01–U10 families, expanded to the stated concrete versions; no new support just because a decoder parses. |
| C022-HISTORY | Matching records after later writes and migrations, exact historical schema and position; wrong coordinate/header/linkage negatives. |
| C022-ACTION | Current 017 complete-resulting-state actions and historical decision 0.4–0.7, including nested invocation, ALLOW/refusal/error and command-producing controls. |

The inherited row IDs are M04-A, M05-A, M06-A, M07-D, M07-A, M08-H-D,
M08-H-A, M08-C-D and M08-C-A. Their authoritative meanings remain in 018's
matrix. Ad-hoc invocation cells stay N/A. No cross-profile equality is asserted.

## Raw evidence strictness

Require root and nested duplicate keys, equal-value duplicates, decoded-equivalent
escaped keys, malformed JSON and substituted inner records at applicable enclosing
boundaries. All produce existing deterministic non-match under their profile.
Whitespace/object-order transformations retain identities where already contracted.
Separate a duplicate inside the raw `refused_request` string: it may be legitimate
attempted-request evidence and must use historical transport-decoding rules.

## Failure injection and zero authority

Exercise required direct head/history/schema/entity/fact loading failures with a
backend probe proving the operation occurred. Preserve their existing operational
error channels. Separately exercise evaluator callback failures and retain their
existing semantic `FactError` behavior. A test double configured to fail only an
omitted later-phase read must not fabricate that error on a verified decode refusal.
It must still prove all independent anchoring operations occurred.

Include co-occurring wrong-schema and snapshot/history read-failure controls.
Preserve existing `bind_schema` prerequisite order on unchanged routes; an added
history check cannot displace that existing schema mismatch with an earlier fault.

For match, non-match, refusal, semantic error and backend failure, capture canonical
Store genesis/head/history/version/index/committed-command authority before and
after. Assert zero backend mutation, fresh bundle construction, candidate certificate
promotion and dispatch/publication. A legal fresh ALLOW control must increment
the bundle probe so a vacuous zero cannot pass. Safe parent cache reconstruction
is excluded from canonical authority and never validates rejected state.

## Two intentional live expectation changes

| Existing test | Old assertion | Required correction / retained evidence |
| --- | --- | --- |
| Store integration `store_origin_transport_refusal_preserves_existing_reconstruction_limit` | Real transport refusal has Core match, Store non-match. | Assert corrected Store match; retain provenance and read-only probes; separately retain all four R022 regressions. |
| Store unit `decoded_document_refusal_replay_does_not_construct_commit_bundle` | Reproducible malformed supplied Snapshot has Store non-match. | Assert Store match under independent anchoring, retain genuine fresh ALLOW positive control and zero replay bundles. |

Explain these changes in `compatibility-assessment.md` before implementation.
An old green limitation test cannot establish test-first compliance. Preserve its
historical 018 fixture/report/receipt bytes; only the live assertion is corrected.
Existing case labels/IDs keep their identity; explicitly annotate the new expected
outcome instead of hiding the old observation by renaming historical evidence.

## Determinism, fixtures and accountable coverage

Add `tests/fixtures/replay/022/matrix.json` and `checksums.json` with independently
captured original records. Expected outcomes are reviewed from the contract,
not accepted automatically from fixed-runtime output. Preserve all prior fixtures.
For each case record its ID, requirement/proof links, origin, module/profile,
applicable boundary, exact historical coordinate, expected outcome and record
identity, fixture checksums and source-custody reference.

The 022 example runs actual facade/Store replay twice and emits nonempty canonical
JSONL. Assert equal exit status zero and identical bytes, exact manifest membership,
no duplicates and correct identity/profile/coordinate/outcome fields. Use distinct
022 case labels; do not replace existing determinism checks or 018 labels/hashes.
Protocol tests must first fail for missing/extra/duplicate cases, wrong expected
fields, empty/noncanonical output, unequal runs/exits, missing or changed fixtures
and gate-hook failure propagation.

`evidence/matrix-coverage.json` maps every required expanded cell to actual collected
test/runner output. Required inventory equals executed inventory; reject zero-test,
ignored required cases, silent skips and unexplained N/A. Source-custody evidence
distinguishes original fixture bytes from intentionally changed Store expectations.

## Required closure evidence

Implementation must produce its named starting revision, retained RED/GREEN runs,
compatibility assessment, source-custody manifest, exact matrix reconciliation and
targeted re-audit. Final gates and facade-consumer results bind the frozen delivery
SHA outside its tracked checkout. See [quickstart](../quickstart.md) and
[proof obligations](proof-obligations.md). Planning does not claim these results.
