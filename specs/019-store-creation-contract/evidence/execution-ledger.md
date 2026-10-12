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
