# G1 — checked parent and exact reproduction seam

The minimal seam is implemented; unchanged child rules still use ordinary evaluation.
This gate does not assert G2 performance, final correspondence closure or feature completion.

## Executed controls

- `cargo test -p behavior-core --lib --features validation-work prepared_tests -- --nocapture`: 7 passed (g1-core.txt).
- `cargo test -p behavior-store --lib --features validation-work store::incremental:: -- --skip supported_global_cycles_do_not_revalidate_unchanged_rows`: 33 passed, 3 explicitly ignored measurement workloads (g1-store.txt). The separate G2 regression remains deliberately red.
- `cargo test -p behavior-store --lib --features validation-work prepared_store_cycle -- --nocapture`: 1 passed (g1-cycle.txt).
- `cargo clippy -p behavior-core -p behavior-store --all-targets --features validation-work -- -D warnings`: passed.

The initial Core compile failure is retained in g1-red.txt; the independently executed
Store regression failed with 114 snapshot-row validations before integration
(g1-store-red.txt). The same Store cycle now performs zero such validations, versus
162 in deliberately uncached reference execution. It still performs 49 child-row visits
and 57 predicates; eliminating eligible unchanged-row semantic work belongs to G2.
Complete records, bundles, committed outcomes and final evaluation compare exactly.

## Construction and authority

`PreparedSnapshot::new` captures the full provider state, normalizes it and executes
Core's existing complete-state validator. Neither serialization, a Boolean nor record
parsing can instantiate this type. Full canonical module content binds observable source
locations as well as BehaviorHash. Invalid state and confused identities are rejected.

Evaluation uses the same decoder, binding checks, transition interpreter, child rules,
global rules and record builder. Only already-established parent validation is omitted.
The thin bound-state consistency check retains the ordinary error messages. Invalid
requests, mismatched values, alias refusals and same-hash/different-location modules
are compared with ordinary execution; incompatible modules use ordinary evaluation.

`CheckedEvaluation` is produced only by this actual execution. Reproduction reconstructs
the request through the existing strict record/profile parser and compares the entire
submitted record with that actual expected execution. It may reuse this complete
execution evidence at its exact private parent epoch; an approval flag is not accepted.
No proposed change list is trusted. A changed request or absent matching evidence runs
actual evaluation again. Archived records retain their original reproduction path.

A private allocation identity binds pending deltas to one state epoch, including no-op
transitions. Independently constructed equal-content parents cannot apply each other's
delta. Applying the same child twice fails. The marker is held alive, preventing address
reuse from conferring authority. No module content or state is cloned merely to advance
this marker. Store adds its existing exact history/schema/module/profile identity, and
only an exact successful CAS carries the checked child. Removal and migration do not
obtain pending authority through this seam. Existing invalidation/recovery controls stay
in the focused suite; the broader adversarial matrix is still pending in US2/US3.

## Trust and phase review

This is a conditional implementation argument plus differential/negative tests, not a
machine-checked proof of Rust or Backend completeness. The public Backend's immutable
snapshot/history and CAS contracts remain trusted. A cached evaluation depends on that
history continuity, including used-identity facts; Core's opaque state alone does not
certify a Store head. No persistent state, semantic hash, record format or consumer
facade has changed. Prepared-state APIs are hidden workspace interfaces in behavior-core.

The counter calibration now explicitly selects the full reference strategy, since
ordinary optimized execution should no longer exhibit its formerly calibrated full
scans. A Clippy duplicate-module error was fixed by importing the same neutral fixture
module in unit tests. The shared workload source's sole change is fixture-module
visibility (`mod` to `pub(crate) mod`); its measurements, inputs and outputs are identical.
Saved immutable baseline binaries/source hashes remain unchanged; the final campaign
must record the candidate harness hash and this source-only adaptation.

## Final sharing check

Before the final G3 campaign, a new control reproduced unnecessary deep cloning of
checked execution records/observations (`shared-evidence-red.txt`). Checked execution
now shares an immutable private result through Arc. Reproduction compares the entire
submitted record against the borrowed expected record and returns the checked result
without cloning it only to discard it. Store retains this shared evidence and makes
only the owned public record/observation products required by its unchanged interfaces.
A pointer-identity regression checks that sharing clones neither complete record nor
complete observations. Parent-state ownership and delta-only CAS promotion are unchanged.
The Core/Store focused controls, Clippy and all six premise mutations were renewed after
this change. Earlier partial G3 logs are retained in attempts; they cannot authorize G4.
