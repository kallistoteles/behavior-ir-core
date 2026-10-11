# US4 — Historical reproduction and current authority

Status: US4 T047–T059 complete with scoped acceptance GREEN and reviewed profile/identity matrix. Canonical gates/exact-SHA delivery remain pending.

## Reviewed test-first evidence

[Core profiles](runs/US4/core-profile-red/summary.md) collected and executed 21
cases: 16 passing controls and 5 intended nested-archive failures, zero ignored or
filtered. An additional [typed normalization control](runs/US4/core-normalization-control/run.json)
passed before production: raw outer Money `"100"` normalizes to inner `"100.00"`;
rehashed outer `"101"` refuses. This is empirical existing behavior, not new RED.
Replay consistency compares typed semantic inputs rather than raw JSON spellings.
Four original wrappers contain decisions 0.4, 0.5, 0.6 and 0.7. Their
standalone decisions reproduce under frozen semantics, but the wrapper still
calls current evaluation. The fifth failure is the archived tampering test's
original positive prerequisite; its mutation loop is not individually claimed
as observed RED. Current 0.8 tamper, fresh audited refusal, standalone old records,
read and no-body refusal controls passed.

[Command readers](runs/US4/commands/README.md) collected and executed 12 cases after
legal fixture correction: 8 passing controls and 4 intended failures. Each failure
re-seals a v1 command-free 0.8 event, first establishes structural data replay, and
then observes an empty successful command page despite an unknown/missing or
contradictory nested profile. The existing v2 candidate boundary already rejects
these faults. Frozen 0.7 occurrence bytes, current bag multiplicity, whole-event
cursor movement and signed exact-candidate substitution controls passed. Initial
admission-only setup failures are retained and excluded from semantic RED.

The [supplementary original signed event](runs/US4/signed-archive08-baseline/summary.md)
was produced and committed by immutable pre017 source, using actual verifier 0.8.0
and authorizer signatures. Original commit and exact retry succeeded with
unchanged canonical store and command-stream bytes. This is separate from the
initial 546-fixture/42-capture manifest. Its empty obligation inventory does not
prove verifier completeness for nonempty constraints.

[Store history RED](runs/US4/store/summary.md) collected and executed 20 cases:
10 passing controls and 10 intended failures, zero ignored or filtered. Genuine
signed data authentication already passes. Seven failures concern old Store
behavior/recovery and three first fail at Core nested replay. The exact signed
behavior/recovery assertions remain unchanged to expose any subsequent current
verifier-manifest mismatch after profile bridging. Their initial failure is only
record reproduction; a trust-route defect is not yet claimed observed. Real
migration/historical reads, invalid historical-child refusal, current proof
ineligibility, four obsolete live candidates and context/data-version
substitutions are passing controls. Compiler and rational-string seed mistakes
are retained separately and excluded from RED.

The root independently verified all 315 supplementary baseline source digests,
63 artifact bytes/digests and 42 original captures before starting US4 production.

## Intended implementation boundary

An internal evidence-bound reproduction helper selects a validated immutable
record's profile, derives its request and exact-compares the full output.
It exposes no fresh historical strategy option through behavior-engine.
Standalone and nested replay share that selection. Envelope input/context,
capability, typed bindings and data version must agree with nested evidence.

Live commit accepts only the current complete-validation profile. Historical
Store replay and exact committed-event recovery may reproduce the original
profile against actual immutable history and its exact schema. They do not
publish current validation certificates or new command occurrences. Fresh work
at a historical position remains current execution. Historical invalid children
remain recorded; ordinary current work refuses invalid parents without repair.

Authenticated archive coverage and fresh current-subject proof eligibility are
separate obligations. The genuine signed event must first demonstrate the actual
historical failure before any narrow trust-dispatch correction is implemented.
Current proof admission, candidate identity, policy, signatures, independent
context, freshness and CAS requirements remain mandatory for new writes.


## Actual profile and identity matrix

The [acceptance run](runs/US4/acceptance-green/run.json) executed71 tests,
zero failures/ignored, plus public-surface PASS. It supplements the following
actual targeted runs. This is scoped evidence, not the final workspace gate.

| Boundary / identity | Actual computation and preservation | Executed evidence |
| --- | --- | --- |
| Fresh ordinary action, Wire0.1–0.8 | Current decision0.8, complete_resulting_state.v1; no fresh archival selector; both Legacy and CommandIntents profiles | US1 validity14/order6/properties9; US2 boundaries; US4 profiles23 |
| Complete versus missing/malformed parent | Exact typed complete parent and every declared empty universe; raw missing/malformed inputs refuse without inventing membership/freshness | profiles23; independent current fixtures7; boundary/facade cases |
| Legacy trusted-host action intent | Optional host facts forwarded unchanged; caller facts/state/context remain forbidden; omitted facts refuse current evaluation | group-c-intent-facts RED2/controls2 then GREEN4; group-c GREEN79 |
| Fresh standalone decision0.8 | Closed codec/schema, canonical typed witness, full archived parent, same-profile replay | current fixtures7; schema2; profiles23; acceptance35 Core |
| Standalone decisions0.4–0.7 | Frozen original computation/bytes, including original invalid ALLOW; no claim that historical child is currently valid | compatibility106 capture; group-a41 including80 action captures; profile controls |
| Historical invocation/intent wrappers | Strict outer/inner consistency with typed normalization; recorded inner profile; exact old wrapper identity | profiles23; invocation replay3; group-c79; actual old wrappers04/05/06/07 |
| Fresh read/no-body invocation | Existing read-v1/v2 and pre-evaluation refusal interpretation/bytes; no new read semantics | group-c archives; whole CLI52; existing Core/read targets in integrated-core-verify |
| Store history and historical schemas | Actual immutable provider facts at recorded position/schema; archived rederivation only after evidence validation | history20; mixed migration/read cases; signed08 supplement |
| Fresh work at historical position | Current computation; no live candidate for past position; original invalid parent refuses without repair | history20 |
| Obsolete uncommitted bundles | No new ordinary commitment or original-proof authority; original four legacy candidates cause zero writes | history20; command history12 |
| Exact already-committed recovery | Original event/already:true and command occurrence IDs; no added write/occurrence/current certificate | history20; fault6; genuine original signed08 event |
| Candidate/profile/context/data substitutions | Strict current live boundary and immutable evidence consistency; candidate hash never grants authority | profiles23; Store boundaries10; history20; current governance4 |
| Command and command-free readers | Version-first closed07/08 decode, including command-free events; unknown/conflicting profiles refuse; original bag/occurrence domains unchanged | command history12; existing occurrence/readers19 |
| Verifier09/current policy | Current provenance/manifest and separately new exact policy pair; old07/08 envelopes remain archival | US2 verifier16; governance4; root verifier53; remaining verifier15; policy09 files |
| Whole-world proof limits | Local supported cases retain their actual outcomes; unknown/nonlocal/same-type child ordering claims are blocking INCONCLUSIVE; no false PROVEN case claimed | US2 order12; verifier-harness15; unary structural evidence and original-transfer refusal |
| Cache/current proof promotion | Exact store/history/schema/Behavior/record-profile key; only atomic Applied permits promotion; historical validity never promoted | US3 reuse12/fault6/private27 +ignored1; history20 |
| Module/item/schema/state identities | Original hash rules/admission/Wire and public facade/Backend signatures unchanged | hash vectors/properties; admission; public-surface PASS; final gate pending |
| Evidence-derived identities | Fresh decision evidence differs deliberately; fresh wrapper/candidate/transition/occurrence hashes use existing domain formulas over new evidence; original archived identities remain exact | group-c independent wrapper hash; command history12; signed baseline occurrence; policy09 exact hashes |

The complete CLI suite executed52 passing tests. Core compatibility groups A/B/C
executed41/36/79 passing collections; repeated legacy-intent inclusion in C is
explicitly disclosed. Root governance/trusted verification executed53 passing
cases after complete-positive-input and policy09 adaptation. The remaining five
verifier targets executed15 passing tests with exact conservative scopes.

## Corrections and limitations

The historical signed08 bridge exposed a second, independently captured RED:
18 history tests passed and two failed because current09 manifest validation was
incorrectly applied to original authenticated08 evidence. A narrow historical
trust dispatch, reached only after exact stored semantic reproduction, made all20
pass. Current live proof eligibility is unchanged and remains current09.

The initial broad Store run exposed stale fresh command policy08 and a structural
evidence workload whose transfer proof is now INCONCLUSIVE. Fresh command tests
select separately new09 policy files; supported structural positive tests use an
explicit admitted freeze/touch-only module, while original ledger transfer retains
INCONCLUSIVE/authorization-refuse/no-write assertions. No attestation is relabeled
verified. A previously vacuous index mutant was independently observed RED, then
the existing conformance case gained a mandatory historical StoreFacts incoming
probe alongside its current snapshot/race assertions. All31 reference conformance
cases and designated mutants pass the corrected harness (six tests), with five
structural-evidence tests and one selected public-facade control passing.

Read confirmation now includes finite universe evidence; two invalid legacy bound
read models cannot reproduce under existing universe consistency checks and remain
INCONCLUSIVE. Paired controls demonstrate unchanged raw legacy read errors and
invalid-universe refusal. This neither changes read semantics nor closes018.

The original315 baseline source,546 fixture and42 capture manifest and106 actual
compatibility records remain immutable. T058 intentionally updates the fixture
navigation README only: its original digest is retained, the documentation exception
is disclosed, and every other historical fixture byte must still match. Original
policies, semantic input/output documents, hashes, signed events and occurrence
identities are never reblessed. The separate genuine signed08 supplement retains
its original source/artifact provenance. Original invalid history is evidence of
original execution, never current validity or automatic store adoption.

All logs distinguish compiled intended RED, passing controls, corrected seed
mistakes and infrastructure/compilation failures. Generic capture manifests may
notice parallel unrelated test edits; scoped production/exercised digests qualify
that flag explicitly. Tests support conditional invariants; they are not a
mechanized universal theorem, independent requirements review or release validation.

T058 documentation and local link/diff checks are recorded in [documentation evidence](runs/US4/documentation/summary.md). The root reviewed the final profile/identity matrix against actual scoped logs; T059 is complete.
