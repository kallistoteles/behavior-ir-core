# Proof Obligations: Core 022

**Status**: Design obligations and required future closure evidence. No new
remediation has been proved or tested by this planning workflow. The targeted
re-audit must distinguish construction guarantees, inspected code invariants,
empirical tests and documented external premises; it cannot infer universal
kernel soundness from a green suite.

## Obligations and requirement coverage

| ID | Claim to establish | Requirement / outcome | Planned construction or invariant | Required empirical / review evidence |
| --- | --- | --- | --- | --- |
| O022-01 | Core alone selects request/profile/origin and complete comparison. | FR-001, FR-003; SC-001 | Bounded checked helpers; Store consumes semantic demands, never its own interpreter. | Separate Core/Store source review and all four regressions. |
| O022-02 | Failed original read sections are never replaced by echoes. | FR-002, FR-007; SC-001 | Selected original text retained; actual trace and whole comparison prove permitted refusal. | R022-01/02 RED/GREEN, semantic object-input control, changed raw text negatives. |
| O022-03 | Request kind is preserved; arbitrary labels cannot authorize a path. | FR-003, FR-005, FR-017; SC-001/006 | Actual intent/invocation/documents decoding; private component evidence from reproduction. | R022-03/04, source/stage substitutions and valid-origin controls. |
| O022-04 | Snapshot decoding failure establishes no semantic Snapshot. | FR-004, FR-012, FR-017; SC-006 | Atomic existing decode result; rejected data used only as attempted-input archive. | Malformed/contradictory Snapshot refusals with true anchors and false-anchor negatives. |
| O022-05 | Later failure retains earlier accepted claims; sparse omission is not absence. | FR-004, FR-005, FR-012, FR-017; SC-003/006 | Actual component trace and claim-scoped reconciliation; unchanged original availability. | Accepted-early, sparse, resolution and false-self-consistency cases. |
| O022-06 | Exact Store coordinate/schema/profile is established independently. | FR-004, FR-012; SC-003/006 | Canonical history/state/schema binding and exact module lifetime/recheck. | Foreign Store, wrong position/state/schema/behavior/header/linkage; later-write/migration controls. |
| O022-07 | Historical semantic claims compare as typed canonical values/sets. | FR-004, FR-009, FR-012; SC-003 | Core claim semantics; canonical surviving-version loaders; existing query/capture/profile registry. | Explicit fact/membership/reference/query substitutions, exact decimals and reordered enumeration. |
| O022-08 | Full envelope/nested identity/evidence/metadata remains compared. | FR-007, FR-009; SC-003 | Existing canonical comparison and Core construction/sealing; unchanged first-diff order. | Resealed semantic substitutions, nested tampering, metadata controls and raw ambiguity cases. |
| O022-09 | Supported historical domain retains its own reference interpretation. | FR-006, FR-008; SC-002/003 | Checked profiles; deferred selection preserves prerequisite order; archive rederivation unchanged. | All applicable 018 rows/U01–U10, capture limits and 017 action/command archive controls. |
| O022-10 | Replay produces no canonical mutation or fresh command/commit authority. | FR-008, FR-011; SC-004 | Replay hooks cannot reach bundle construction; Fresh-only guard remains defense in depth. | Zero mutation/bundle/candidate/dispatch probes on every outcome, fresh ALLOW probe-positive control. |
| O022-11 | Performed errors retain their existing channel and precedence. | FR-010; SC-002/003 | Direct fallible preloads separated from existing evaluator FactError handling. | Probe-confirmed read failures, evaluator errors, omitted-later-read control and unchanged first-diff tests. |
| O022-12 | Corrective outcome changes preserve protected public contracts. | FR-008, FR-014; SC-003 | No formats/hash/schema/API/Backend changes; explicit patch-class assessment before code. | Compare protected files/surface and fixture checksums; document both old live assertions and user-approved correction. |
| O022-13 | Each finding has retained genuine test-first evidence. | FR-013; SC-001/005 | Named baseline captured before new implementation; separate regressions and controls. | Collected tests, failed semantic assertions, source/test diffs, commands/status/log custody and subsequent GREEN. |
| O022-14 | Final claims bind the actual frozen delivery revision. | FR-015; SC-002/005 | Commit then freeze; external immutable receipt, no self-referential tracked SHA. | All eleven gates, exact-revision facade consumer, environment/status/log/checksum receipt and clean final checkout. |
| O022-15 | Findings close independently with limits explicitly retained. | FR-016; SC-005 | Targeted 022 re-audit links requirements → invariants → source → evidence. | Separate closure of F-REPLAY-022-001/002, affected boundaries and residual external assumptions. |

## External premises and limits

- Canonical backend history is immutable, complete and coherent under the existing
  Backend contract. Endpoint/header anchoring is not a new full-prefix audit.
- Existing canonical typed serialization, exact arithmetic, cryptographic hash and
  declaration identity contracts remain premises; 022 does not re-prove all Core.
- Query/index acceleration is reconstructible. Claim truth comes from canonical
  history and existing Core query semantics, never an unverified materialization.
- Historical records can omit evidence. 022 preserves their documented limits;
  it cannot prove claims absent from the recorded compatibility contract.
- Authentication/authorization require their existing independent authority
  evidence. Hash self-consistency is not a new proof of permission.
- Safe existing parent validation caches may be populated. No rejected snapshot
  or uncommitted candidate gains validation authority through replay.

If an obligation depends on another unresolved audit premise, report that dependency
and limit closure rather than silently calling it proved. A targeted review does
not replace independently required gates or broaden scope into 019–021 remediation.

## Targeted re-audit output

Produce `evidence/targeted-re-audit.md` with one row per O022 obligation and separate
finding assessments. Record exact inspected source locations/revision, invariant,
evidence locations and one of: established by construction, inspected invariant,
empirical support, documented assumption, or not established. These labels may be
combined where an argument needs both an invariant and tests; tests alone are not
a formal proof.

Any residual missing obligation blocks the corresponding closure claim. Failed,
inconclusive, skipped and unavailable checks remain distinct. Final delivery
receipts identify the exact source SHA and cannot be borrowed from 018 or a later
different merge/squash/rebase/release SHA.
