# T038 private incremental validation evidence

This is test-first evidence for the existing private incremental carry-forward boundary. No production file was changed during the captured run. Root reviewed the assertions before execution and reviewed the resulting logs before any Store production change.

## Actual execution

From the Core017 repository root:

```sh
nix develop -c env CARGO_INCREMENTAL=0 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test --locked -p behavior-store --lib store::incremental:: -- --nocapture
```

Exit status: **101**. Collected results: **24 passed, 3 failed, 1 ignored, 2 filtered out**. Compilation succeeded. The ignored 10,000-pair workload was not executed here; this run makes no latency or benchmark claim.

The three intended RED assertions all fail at the private proof acceptance assertion in `crates/behavior-store/src/store/incremental/tests.rs:380`:

- `pending_current_proof_refuses_changed_or_missing_record_version`: the missing marker nevertheless produces `Some(Pending)`.
- `pending_current_proof_refuses_changed_or_missing_validation_profile`: the missing marker nevertheless produces `Some(Pending)`.
- `pending_current_proof_refuses_conflicting_language_profile`: a Legacy module paired with `behavior.commands.v1` nevertheless produces `Some(Pending)`.

These tests mutate the marker fields of an actual fresh record at an existing private boundary. They demonstrate missing proof-profile guards. They do not claim that the altered object is a valid historical record or that this private acceptance alone bypasses public commit rederivation.

## Passing controls

The selected suite retains existing controls and adds passing checks for current record0.8 eligibility, pending evidence that cannot publish before commit, rebuilding lost materialization at the same exact history, simultaneous synthesized references between created rows, actual removal/global-query records that are ineligible for incremental carry-forward, and complete three-level derived dependencies under both language profiles. Suppressed branches and unknown bindings are classified as affected; unused nonlocal definitions are not themselves obligation roots.

The two-row creation test separately reconstructs parent/child membership and invokes the existing full-child checker, then independently requires acceptance of reciprocal targets and rejection of a missing target. It does not establish historical identity freshness or a public creation commit. The full-child reconstruction path and incremental candidate path share the production `check_behavior_snapshot` semantic checker. The comparison is therefore independent for state reconstruction and membership inputs, not an independent implementation of all validator semantics. Reference differential properties established in US1 remain separate evidence.

The cache-loss test compares exact record and bundle values before and after reconstruction and checks exact history/schema/behavior identity. It does not claim zero semantic work or state-content identity sufficiency. Removal/query tests establish private fast-path ineligibility, not that the private function itself invokes the full fallback.

## Provenance

[`private-red.json`](private-red.json) contains the exact command, elapsed time, exit status, log digests and SHA256 values of both authored test files plus relevant production files before and after execution. All captured source digests are identical before and after. [`private-red.stdout.txt`](private-red.stdout.txt) records collection/results; [`private-red.stderr.txt`](private-red.stderr.txt) records successful compilation and the actual assertion failures.

The resource settings disable incremental artifacts and debug symbols only. Debug assertions and overflow checks retain their default test behavior. No source, dependency, gate or script override was used.
