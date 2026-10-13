# Execution ledger

## Baseline and environment

Integrated source: 9d3fcfeb8764773332bbf5a69881ab0b49644fd9.
Owner: behavior-ir-core, branch019-store-creation-contract, origin
`git@github.com:kallistoteles/behavior-ir-core.git`.
Pinned Rust1.98.1 (edition2024), existing flake.lock/Cargo.lock unchanged.
Nix2.34.8. Linux environment. Required gates: `nix develop -c scripts/gates.sh`
and `nix develop -c scripts/check-consumer.sh --rev <frozen-sha>`.

Resource settings for execution: CARGO_PROFILE_DEV_DEBUG=0,
CARGO_PROFILE_TEST_DEBUG=0, CARGO_INCREMENTAL=0, CARGO_BUILD_JOBS=2.
Shared dependency build artifacts use the existing022 target directory during
test development. No dependency/source override is used. Debug assertions,
overflow checking and optimization settings are unchanged. Disk/setup failures
are not behavioral REDs. Independent Cargo commands may serialize on Cargo's
build lock. Final delivery gates are serialized.

First-party baseline inventory:27 Backend implementations, roles recorded in
../contracts/conformance.md; actual final inventory will be rechecked.
All checklist files are read-only. The outstanding implementation-evidence item
is fulfilled by execution artifacts, not by changing reviewer markers.
External working logs: `/home/kalle/validation-receipts/core019-work/`.
Final frozen-revision receipt: `/home/kalle/validation-receipts/core019/<sha>/`.
Tracked reports do not attempt to embed their containing commit's future SHA.

## Test-first and execution entries

Each lane records commands, collection, actual failing assertions, legal controls
and subsequent results below or in linked lane receipts. Production edits begin
only after relevant behavioral REDs; existing passing controls remain controls.

### Foundation T006–T008

Reviewed13 collected fixture controls. Delegation-only scaffold returned exit101:
2 legal controls passed,11 actual assertions failed for dormant faults, counters,
same-target schedules, partial views and read-error instruments. Implemented the
private instruments afterward;13 passed,0 ignored. Collection exit0 lists13.
Receipts and exact RED source snapshots: external `foundation/{red,green,list}.log`
and companion `.status` files. No production creation semantics changed here.
Cloned handles share one Rc target; plain InMemory clones are independent. Schedules
are consumed outside active inner borrows; positive reference/order controls remain.

### US1 reviewed behavioral baselines

Core/private source receipts: `core-api-red-us1/` and corrected controls in
`core-api-red-confirmed/`; the latter distinguishes17 contract assertions
(8PASS/9FAIL) and6 advanced/recovery REDs for futureUS2. Private cache4 tests
(2PASS/2FAIL) include an activated legal no-op on an advanced equal-StateId Store.
Facade7 tests (4PASS/3FAIL) and collection: `consumer-us1/`. Conformance protocol
4 actual missing-registration failures: `us1-conformance/`.
An incorrect fixture expectation about AuditNote.about (plain Id, not Ref) and
an unactivated GenesisOnly view were corrected; neither is counted as semanticRED.

Plan dependency refinement: T010's nullable authoritative snapshot no-overwrite
control cannot pass before the host integrity slice of T030. Its actual RED was
retained, then only existing-file null G/H rejection was advanced toUS1. Full
locking/retry/durability work remains gated onUS2RED. This removes a sequencing
cycle without changing scope or contract. Root production edits begin after all
four US1 test lanes supplied actual failures and legal controls.

### US1 checkpoint execution

`core-api-us1-green/`:11 exact named US1 Core contract tests PASS,4 private cache
controls PASS. `consumer-us1/green.json`:7 facade tests PASS. The root full17-case
contract run had12PASS/5 futureUS2FAIL; it was not reported as a passing target.
`us1-existing-regressions.log`:57 replay_evidence_authority +10 resulting_state_
boundaries +31 strict_profile_replay PASS,0 ignored, exit0.
`us1-conformance/green-corrected.log`:4 new registration/mutant assertions PASS;
all31 older cases are preserved. Case fixture mistakes (global invariant on0.4,
and excluding delegated BUNDLE_INVALID) were corrected without changing Core
semantics. Entire conformance target confirmation is recorded by its lane receipt.

US1 establishes checked publication/opening and cache policy under the documented
Backend premises. Retry/preflight/error classification, direct Backend idempotency,
durable locks/barriers/windows and broad history/race evidence remainUS2/US3.

US1 entire conformance target completed exit0/10PASS after the4 evidenced setup
retimings (`us1-conformance/all-green-timing-fixed.log`). T021 checkpoint is closed;
US2 test collection and behavioral RED recording may now begin.

### US2 test-first checkpoint and Core algorithm

StableUS1 production bodies at99fec008 are bound by source manifests. Core baseline
contract20(14PASS/6FAIL),recovery6FAIL,private5(4PASS/1FAIL),properties2FAIL;
additional bounded endpoint-parent open assertions fail atpositions1/2 even with
rehashed head, plus recovery assertion. Use `core-api-us2-baseline/` and
`core-api-us2-endpoint-red/`. Integer-range negative was added as an already-
satisfied control, not a manufactured RED.
Facade12(7PASS/5genuineFAIL),process11(2PASS/9genuineFAIL): `consumer-us2/` corrected
legal-red receipts. All11 dormant requested host modes sampled before aggregate
activation failure. Missing tag values in newly authored migration fixtures were
setup defects corrected before semantic claims; first failed logs retained.
Conformance `us2-conformance/`:3direct equivalent retry REDs atzero/update/migration;
3registrationREDs C3/C4/C11;12private Probe activationREDs (2create,10read).
A missing test import was not a RED. V2 direct variants were declared but not
reached after first v1 failure; finalGREEN must execute both.

Only afterward implemented bounded Core preflight/recovery/classification and
immediate endpoint-parent state check, preserving original operational error
unless structurally complete foreign creation is established. Existing exact
Module-bearing original product inspector is reused; no second semantic validator.
Initial Core21 run gives20PASS/1 pending equivalent-publication race, because the
old reference Backend still rejects direct repeats. This is not whole-targetGREEN;
reference/durable idempotency work begins after retained direct Backend REDs.

### US2 host/reference and core checks

Direct reference retry atzero/update/migration:3PASS, bothv1/v2 loops reached,
`us2-conformance/direct-retry-green.log`. InMemory privately builds a candidate,
uses generic structural opening and assigns once; equivalent retry verifies
original data and preserves existing history. This has logical exclusive-owner
scope and clone/construction cost, not a physical durability claim.

Core whole targets:21contract +9recovery +2property PASS,0ignored, exit0
(`us2-core-complete.log`). Private5PASS plus source manifests in `core-api-us2-green/`.
Root reuse/history regressions:20resulting_state_history +12resulting_state_reuse
+10snapshot_reuse PASS. One preexisting release benchmark remains ignored and is
not creation acceptance evidence (`us2-existing-history.log`).

Durable/facade `consumer-us2/`:12facade +11process tests PASS,0ignored. Every
requested dormant tool boundary now activated;55 scoped observed rows documented
in host-window-coverage.md. Same stable lock guards normal reads, retry, create
and commit; successful observed complete reads establish file/root recovery sync.
Original identity recovery never rewrites the advanced primary snapshot.
Affected consumer regressions:42PASS across7targets,0ignored, fresh019CLI digest
and explicit binary path recorded in lane receipt. No external command dispatch.
SharedUS2case/unit/mutant closure is still pending before T038.

Complexity disclosure: current expected-key filtering costsO(t*s) for t declaration
types; expected incoming filtering costsO(s*r0), in addition to hash/order/validator
work and fixed/schema-history reads. These are implementation costs, not semantic
lower bounds or acceptance performance promises. The planning O(s+r0) sketch is
not claimed as measured/as-implemented complexity. InMemory structural recovery
clones current storage; durable reads parse/sync snapshots under host assumptions.

### US2 closure and build isolation correction

Excluded mutation-contaminated shared-target positives; official source unchanged.
`build-isolation-clean.log`: pinned cargo clean -p behavior-store, exit0.
`core-mutations/isolated/summary.json`:4 marker-free positive baselines,5 activated
assertion failures, source copy restored; dedicated tmpfs mutation target.
`isolated-positive-creation-closure.log`: official-source rebuild exit0,
21contract+10recovery+2properties+16conformance+13commit PASS,0ignored.
Additional legacy endpoint evaluated_against mismatch counterexample failed before
the new equality check, then passed. Commit snapshot race setup opened legally,
then armed FirstRead after its observed checked-open timing failure. T031/T032/
T036/T038 now close; broader US3 work may begin. Final gates remain pending.

### US3 tests-first boundary and satisfied production controls

Core `core-api-us3-baseline/` plus corrected `core-api-us3-recovery-confirmed/`:
16recovery,6property laws with32fixed-seed cases each and7private controls PASS.
The first recovery snapshot attempted to serialize RefEdge directly; the compile
failure is setup only, corrected by explicit semantic edge strings. New controls
cover creates/retarget/removal/lifetimes/refs, original self-consistent legacy
substitution, current head/schema mismatches, profile/order laws and a real commit
after captured head. No new production Store correction is justified; T045/T046
verify the existing US2 invariants rather than claiming retroactive RED.

`us3-conformance/receipt.json`:8 actual missing-case registration assertions,
7 dormant schedule/order assertions and6 dormant retry-mutant assertions fail
before their respective instruments/cases. Instrument GREEN7+6 is established.
Direct advanced Backend create/remove and later equal-StateId controls already
pass, preserving all canonical material. No additional memory correction is needed.

Durable US3 facade baseline14:13controlsPASS, one actual missing45-case protocol
assertion fails against37 registrations. Existing process schedules/advanced
windows are passing controls, not a newly discovered host defect. Thus T039–T044
close before the remaining8 shared creation cases are implemented. T045–T048
verify satisfied production invariants; subsequent case/mutant/matrix closure
and independent reviews remain pending.

### US3 closure

`us3-conformance/all-green.log`:33tests/all45shared cases PASS,0ignored;
private-all-green19PASS; order-read-nonempty-green1PASS with explicit nonempty
values underbothprofiles. Activated retry mutants reject missing idempotency,
advanced reset, foreign overwrite, duplicate lifetime, equalStateId foreign
acceptance and mixed lineage. Isolated advanced-certificate mutant remains valid.
`us3-core-historical-closure.log`:141PASS/0ignored (21+16+6+57+10+31).
`us3-private-final.log`:7PASS; `fixture-boxing-controls.log`:13PASS.
Complete-source clippy initially flags a large private scheduled-payload enum;
boxing both payloads changes representation only. `clippy-final-pre-freeze.log`
exit0; no new lint allow or weakened gate.
`consumer-us3/summary.json`:14facade+11process+42legacyPASS; all45durablehost
cases;55 scoped process rows; latestCLI0877d355 digest documented by owner.
The broad facade source manifest overlaps only an unrelated internal test helper
edit; qualified scoped evidence, never an exact-source/frozenreceipt claim.

The optional broad Store preclosure run returned101, because its prebuilt migration
and replay tamper adapters corrupted data before checked open. Both setups were
retimed without changing assertions or archived bytes; the same run passed other
scopes, but is not reported as whole-suiteGREEN. Final canonical frozen gates must
execute the corrected entire source. The observed legacy replay Drop case can
remove a current history endpoint before opening; source-custody records retiming.

A neutral diagnostic reproduced an existing v2 query-commit refusal even on normal
indexed and unindexed reference hosts. Both relevant parser/governance files are
unchanged from integrated022. The defect is recorded separately; finalC12 tests
creation/open/retry and supported nonempty reads instead of silently fixing or
calling that existing transition bug unsupported.

### Cross-cutting review and pre-freeze disposition

Thirty actual Backend implementations are classified by role in backend-assessment.
Independent code reviews and all16 proof/global invariant mappings are complete;
no material bounded creation contradiction remains under explicit host premises.
Migration/version/persistence documentation states one mandatory contract without
changing signatures, historical domains or pins. Protected3828paths verified exact;
new replay property seed is additive; prior historical artifacts remain unchanged.
The final source is prepared for commit/freeze/push. Canonical gates and exact Git
consumer must run afterward; no predecessor receipt or working-source test result
is silently promoted to final delivery evidence.

T060 final document/source checks: all3828 protected paths unchanged, every local
feature/persistence/versioning/migration Markdown link resolves, facade baseline
unchanged, current quickstart targets exist/are collected. Pinned fmt --check and
complete-source clippy both exit0. Review-owned checklist bytes/markers remain
untouched. T001–T060 are complete; T061–T064 retain tracked open markers and will
be recorded only in the frozen candidate's external receipt.
