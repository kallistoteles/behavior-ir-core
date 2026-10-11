# Verification Coverage: Core017

**Status**: Integrated implementation, all four stories and polish are complete.
Canonical local candidate gates and the exact pushed-revision consumer passed.
Candidate CI passed both required jobs. Evidence head78af33debb006ae50bad7156a885a364d8268a01 passed both required CI
jobs; all68 tasks are complete. Its following status-only commit requires its own
final-head checks before the user report; no release or global soundness claim.

**Authority**: [specification](spec.md), [tasks](tasks.md),
[decision contract](contracts/decision.md), [profile contract](contracts/profiles.md)
and [conditional proof obligations](correctness.md). Actual commands, digests,
controls and exceptions are in [evidence.md](evidence.md), the four story reports
and [targeted re-audit](targeted-re-audit.md). Audit016 remains immutable at
`b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.

## Evidence classification

Construction and code invariants give conditional reasoning. Tests give empirical
support, not universal proof. Actual compiled/admitted semantic RED precedes each
changed behavior; missing files, compilation mistakes, incorrect test expectations
and infrastructure errors remain visible and never count as RED. Deeper assertions
hidden behind a first failing assertion are exercised at GREEN, not individually
claimed observed RED. Collection, execution, task completion, independent review
and delivery are different facts.

The independent finite model reconstructs the simultaneous child and computes
membership, arithmetic, optional references, identity absence and aggregate budget
without production validators or affected-set logic. Canonical order properties
use decoded UTF-8 bytes and independent competing false/error predicates.
Private `full_child` reconstructs independently but shares the production snapshot
validator; differential agreement alone cannot exclude a shared omission.
Current fixture expectations are independently hand-authored; actual outputs never
supply the expected oracle. Gate mocks test protocol collection/refusal; real CLI,
codec/schema and public replay establish the corresponding runtime evidence.

## Functional requirement dispositions

All16 rows have implemented source coverage and scoped GREEN empirical evidence.
The conditional runtime/cache arguments are recorded in the targeted re-audit.
The canonical candidate gate and exact-revision consumer acceptance are GREEN;
both required CI jobs pass on the pushed evidence head; the subsequent
status-only head must also be checked before the user report.

| Requirement | Story / contract / proof | Executed target/task coverage | Acceptance oracle |
| --- | --- | --- | --- |
| FR-001 complete child validity | US1; decision inputs/outcomes; P1/P2 | Core/Store resulting_state_validity; resulting_state_properties; T006/T007, T013–T022 | Every successful reconstructed child satisfies every required obligation; independent audit predicate |
| FR-002 check or prove unaffected | US1/US3; complete schedule; P2/P3/P4 | Lifecycle/nonlocal/global corpus, private dependency/reference tests and reuse tests; T013/T015/T019/T038/T043–T046 | Unknown dependency is affected; no uncovered survivor omitted |
| FR-003 refuse audited creation | US1; decision outcomes; P2 | Core/Store root-cause cases and fresh characterization; T006/T007/T014/T021/T022 | DENY/CONSTRAINT_VIOLATED before success/bundle/commit, unchanged authoritative parent |
| FR-004 every current ordinary path | US1/US2; profile matrix; P2/P4 | Plain/observed/provider, intent/invocation, Store evaluate/invoke/rederive/commit and facade; T023–T029/T035 | Equivalent canonical inputs satisfy the same validity guarantee; no provisional bypass |
| FR-005 existing phase/category | US2; outcome/precedence contract; P3 | resulting_state_order and boundary tests; T006/T007/T023–T028 | Postcondition priority; existing DENY/reached ERROR categories; unrelated stages retain placement |
| FR-006 lifecycle/dependency matrix | US1/US3; coverage constraints; P1/P2 | Creates/updates/removals, survivors, derived aliases, refs, globals, no-op/empty types/command-only and invalid parent; T013–T016/T038 | Simultaneous child; removed rows absent; valid controls succeed; admitted scope only |
| FR-007 reuse is optimization | US3; equivalence boundary; P3/P4 | resulting_state_reuse and private guard/oracle tests; T037/T038/T040–T046 | Same required semantic result/evidence; conservative eligibility and full fallback preserved |
| FR-008 exact evidence binding | US2/US3; exact input model; P4 | Forged/stale bundles, schema/Behavior/profile/history substitutions, same StateId at different positions; T024/T037–T044 | No mismatched proof reuse; historical freshness/refs/authorization/CAS remain mandatory |
| FR-009 promotion only after commit | US3/US4; evidence lifecycle; P4 | resulting_state_commit_faults, commands, recovery/history cases; T039/T045/T048/T053 | Refusal/CAS/non-application publish nothing; durable lost-ack classified through exact history |
| FR-010 explicit compatibility/version matrix | US4; profiles and identity matrix; P5/P6 | Profile/schema, nested/Store/command readers, current verifier/policy/reporting; T005/T008–T012/T025–T035/T047–T059 | Correct fresh0.8 versus archived0.4–0.7; versions/provenance explicit, no guessed dispatch |
| FR-011 immutable history | US4; archive contract; P5 | Archive manifest, byte/hash goldens, original read/migration/occurrence controls; T002/T047–T059 | Original bytes/meaning unchanged; new evidence has deliberate identity consequences |
| FR-012 independent evidence | US1/US3; oracle disclosure; P1/P2/P4 | Concrete membership/model predicates alongside reconstruction/differential tests; T006/T015/T021/T046 | Neither shared-validator equality nor passing bad characterization counts as preservation |
| FR-013 scoped verifier promise | US2; correspondence contract; P6 | resulting_state_order/governance verifier tests and existing preservation/error/query controls; T025/T030–T036/T062 | Exact prefix/assumption/witness scope; conservative INCONCLUSIVE; no invented false PROVEN claim |
| FR-014 error provenance | US2/US3; equivalence/errors; P3/P4 | Actual provider failures, unreachable errors, backend/CAS/non-application/lost-ack controls; T023/T024/T039/T040/T045 | Keep semantic false/error/input/backend categories and mandatory trust obligations distinct |
| FR-015 canonical semantic order | US2; decision/data-model ordering; P3 | resulting_state_order/metamorphic plus backend enumeration/index tests; T006/T018/T020/T061 | Decoded identity bytes, invariants then constraints per entity, semantic descriptors; no diagnostic/layout order |
| FR-016 same-profile first failure/evidence | US2/US3/US4; equivalence/profile contracts; P3/P4/P5 | Mixed false/error cases, cache/backend/layout permutations, typed witnesses and same-profile replay; T021/T023/T037/T047/T061 | Earliest canonical failing obligation wins; no global ERROR-versus-DENY rank; evidence preserved |


## Actual story checkpoints

| Story | Actual executed evidence | Interpretation |
| --- | --- | --- |
| US1 | [US1.md](evidence/US1.md): Core validity14/order6/properties9, Store validity7 and nonlocal characterization1; independent finite64 cases across both language profiles | Invalid untouched-row audit creation refused; valid controls succeed; lifecycle/global/reference/derived obligations covered |
| US2 | [US2.md](evidence/US2.md): Core boundary8, Store boundary10, verifier16 plus existing targeted controls, facade8 and current policy consumers | Postcondition priority, typed unbound SPrime evidence, reached errors and every supported current boundary |
| US3 | [US3.md](evidence/US3.md): reuse12/fault6/private27 plus snapshot10 and required existing targets | Exact cache identity and atomic promotion; passing controls distinct from observed RED; existing stress ignored |
| US4 | [US4.md](evidence/US4.md): profiles23/schema2/invocation replay3, history20/command history12; genuine signed08 archival event; fresh/archived conformance groups; trusted governance20 | Immutable original evidence, strict Current live boundary, read-only exact recovery and profile/identity compatibility |
| Cross-cutting | [T061](evidence/runs/polish/metamorphic/README.md): Core3 + required Store property16×2 actual index modes; independent count12; [T063](evidence/runs/polish/T063/summary.md): real CLI5 Current +106 archives, protocol23, hash/admission19, public surface138, real clean smoke | Exact evidence/identity across metadata, transport, enumeration/cache/index variation; no vacuous index toggles or fabricated dispatch |

Counts describe their named collections. They are not summed into unique proof
counts: some legacy-intent controls repeat across runs. Existing stress tests are
explicitly ignored by the repository suite and are not evidence of SC-007 or a
performance bound. The final canonical suite must run every required test at its
normal count; no private override, skipped required case or protection bypass is
permitted.

## Success-criterion dispositions

| Criterion | Scoped disposition and evidence | Final acceptance |
| --- | --- | --- |
| SC-001 | No successful invalid audit transition/bundle/commit; independent unchanged-row membership predicate and valid control in both language profiles (US1) | Candidate gates and evidence-head CI accepted |
| SC-002 | Current Core/intent/invocation/Store/facade/lifecycle and mixed false/error cases agree; backend/cache/layout properties preserve exact evidence (US2/US3/T061) | Candidate gates + exact-revision consumer and evidence-head CI accepted |
| SC-003 | Independent finite simultaneous-child model and explicit reference/derived/global controls; shared validators disclosed (US1/US3) | Conditional code invariant plus finite empirical evidence; universal formal theorem unestablished |
| SC-004 | Refusal/CAS/non-application do not publish validity or commands; durable lost-ack and exact-history recovery distinguished (US3/US4) | Candidate gates + exact-revision consumer and evidence-head CI accepted |
| SC-005 | 545 original fixtures +42 captures +106 compatibility records +63 artifacts of the genuine signed archive capture unchanged; fixture README-only exception explicit; fresh08/verifier09 identities and strict wrapper schemas documented (US4/T063) | Candidate gates + exact-revision consumer and evidence-head CI accepted |
| SC-006 | [Targeted re-audit](targeted-re-audit.md) separates construction, code invariants, empirical tests, backend/solver assumptions and unestablished obligations | Broader O-VERIFY-008/read confirmation and018–021 remain open; no global SOUND verdict |

## Compatibility and semantic identity

Fresh ordinary actions on admitted Wire0.4–0.8 always use decision08 and
`behavior.complete_resulting_state.v1`; caller data cannot choose archived
execution. Replay of original04–07 decisions and nested wrappers preserves their
original identities/outcomes. Read and migration profiles retain their existing
meaning. Invalid historical ALLOW is evidence of original execution, never a
Current validity certificate. Obsolete uncommitted bundles cannot make a new live
commit; exact already-durable recovery is read-only and occurrence-stable.

Wire/admission, BehaviorHash, SchemaHash, semantic item identity, StateId,
command multiset/occurrence formulas, Backend methods and behavior-engine signatures
retain their contracts. New decision evidence legitimately changes derived
wrapper/candidate/transition/history/occurrence identities. Current verifier09
policies are separately new files; original policies and authenticated08 envelopes
remain immutable historical evidence. Governance/store wrappers reuse canonical
closed07/08 schemas and recognize known09 provenance. Optional trusted-host facts
forwarding and temporary release-smoke complete-parent input are documented current
input adaptations, not invented worlds or historical fixture rewrites.

## Final revision registry

| Check | Revision / evidence | State |
| --- | --- | --- |
| Implementation | 8087346c51b254ef4b509b286e2064c233e0c2ce | Committed |
| Candidate | 1e8dc8194e131ba720640e1e249c9e15842bb5a4; [push.json](evidence/runs/candidate/push.json) | Pushed, PR16 draft |
| Source/test/fixtures | [manifest](evidence/runs/candidate/source-test-fixture-manifest.json); [committed verification](evidence/runs/candidate/staging-verification.json) | Exact manifested committed bytes checked; raw payload whitespace exception disclosed |
| Candidate CI | [actual PR16 head/checks](evidence/runs/candidate/ci/00.stdout.txt),1e8dc8194e131ba720640e1e249c9e15842bb5a4 | gates + consumer SUCCESS; final-head CI still required |
| Canonical gates T065 | [retry capture](evidence/runs/gates/retry/run.json), [verification](evidence/runs/gates/verification.json); same candidate | GREEN: eleven gates;957 workspace +43 consumer tests,0 failed;24 existing ignored/0 filtered; source unchanged |
| Exact revision consumer T066 | [capture](evidence/runs/consumer/run.json), [resolved compiled source](evidence/runs/consumer/verification.json);1e8dc8194e131ba720640e1e249c9e15842bb5a4 | GREEN:43 passed/0 failed/ignored/filtered; public facade only, exact Git checkout HEAD, source unchanged |
| Final evidence T067/T068 | [exact pushed evidence-head checks](evidence/runs/delivery/evidence-head-ci.json),78af33debb006ae50bad7156a885a364d8268a01 | GREEN; all68 tasks complete after verification. Following status-only head requires its own CI before final report |

Manifest payload digest is
`de23cc2f2dd5fad875cd063f6cd15b8f4c0339d1c9410e4683ae3918ab259e57`;
the complete manifest file SHA256 is
`27eba546f09e16fe9754d04fb03f9607312d180f98ed5c1325cbfcf874eedd80`.
All1,053 manifested files match the committed candidate. The separate final
changes are documentation/evidence only. The candidate CI checked out PR merge
`2d2ed30322dcabdcbfa78e96f3da032c620ffeef`; its entire Git tree equals the candidate
([verification](evidence/runs/candidate/ci-verification.json)).

The first local gate attempt exhausted storage during compilation; it executed
no cargo tests. Exact logs and the isolated regenerable-cache cleanup are retained.
The successful retry and consumer supplied compact debug/incremental output
settings, preserving required commands, debug assertions, overflow checks,
selection and normal property counts. Twenty-four repository-ignored workloads
remain unexecuted. Temporary consumer manifest/lock cleanup and the corrected
post-run provenance-reader assertions are explicit evidence limitations, not
semantic failures. No private dependency/build override or gate bypass was used.

Requirements checklist remains13/16 checked; CHK003/013/015 are reviewer-owned and
untouched. Independent joint review is not inferred from these implementation
runs. No merge, tag, selected release version, publication or ecosystem pin change
is performed as part of017 implementation.
