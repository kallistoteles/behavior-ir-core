# 023 implementation evidence and run custody

Evidence is retained externally under `/home/kalle/validation-receipts/core023/`.
The [baseline manifest](baseline-manifest.md), [coverage inventory](coverage.md)
and [historical controls](historical-controls.md) distinguish entry source,
prospective acceptance work and original fixture custody.

## Run classes and required receipt

Keep `baseline/`, `red/`, `working/`, `mutations/`, `review/` and
`final/<frozen-sha>/` separate. Reserved directories do not imply an executed run.
Each command/run retains:

- Repository remote and absolute checkout; exact commit/tree, or base commit
  plus complete working-source/fixture digests if dirty/untracked sources exist.
- Test-file and relevant production/schema/fixture digests; tracked/untracked state.
- Exact command/environment, UTC interval, stdout/stderr logs and digests,
  exit status and actual collected test names/target.
- Pinned Nix/toolchain identity, Python/schema tooling where applicable,
  CLI path/digest and resolved consumer dependency where invoked.
- Intended and actual outcome; explicit baseline, genuine asserting RED,
  working GREEN, activated mutation or final-attestation classification.

Pinned toolchain metadata is retained in
`/home/kalle/validation-receipts/core023/baseline/toolchain.json`.
Agreed resource flags are `CARGO_BUILD_JOBS=2`, `CARGO_PROFILE_DEV_DEBUG=0`
and `CARGO_PROFILE_TEST_DEBUG=0`; record them explicitly. These conserve build
resources and do not override dependencies or bypass gates.

Collect before running assertions. Compiler errors, missing targets, uncollected
filters, timeouts, ignored maintenance captures and print-only diagnostics are
not behavior REDs. The first RED is the normal-host require:none orders regression
failing with invalid observed facts before its first commit. Subsequent behavior
corrections need compiled asserting failures before corresponding code/schema
edits. Already-passing characterization is compatibility evidence, not a new RED.

## Retained 019 diagnostic: discovery only

Setup independently rehashed
`/home/kalle/validation-receipts/core019-work/us3-conformance/query-diagnostic-source.rs`
and matched its retained sidecar:
`2bbd34ccf73f17e024e124517e9be352c8fbe740551695321b3dd289fd06d43b`.
The original source, `receipt.json`, `baseline.json`,
`query-profile-diagnostic.log` and `query-profile-diagnostic.status` are unchanged.

Recorded HEAD is `99fec008c9fa2be13d759f9187399215c20cd053`. The log explicitly
identifies dirty `/home/kalle/repos/behavior-ir-core-019` source and a target under
`/home/kalle/repos/behavior-ir-core-022/target`. The retained sources do not form a
complete immutable dirty-tree snapshot and do not attest frozen 019 execution.
The command was:

```bash
nix develop -c cargo test -p behavior-store --lib diagnostic_only -- --nocapture
```

The collected name was
`conformance::creation::diagnostic_only::isolate_existing_orders_history_profiles_and_index_paths`.
It printed v1 indexed/unindexed `Ok(9)`/head8 and v2 indexed/unindexed
`BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts`/head0, then exited
**0**. These are discovery observations, not correction success, semantic
conformance or test-first compliance. Reproduce independently at a reviewed
test-only 023 revision before production corrections.

## Mutation isolation and source freezes

Use disposable mutation copies and distinct Cargo targets. Retain mutant diffs,
digests, activation and intended assertion failure; never contaminate official
outputs. Normal fixture checks do not write expected data. Only the deliberately
invoked ignored T044 maintenance capture writes the new projection package,
whose expected Facts come independently from inner ALLOW records.

The coordinator pauses writers for the test-only RED freeze and delivery freeze.
Finalize implementation, fixtures, reports and tracked bookkeeping, commit/push,
then freeze a clean candidate. Never embed a containing commit's final SHA in
its own report. Final T060–T064 outcomes belong to the external exact-revision
receipt, not edits of frozen tasks.md.

## Canonical execution and final assurance

Run final checks from the owning Core root in its pinned shell:
`nix develop -c scripts/gates.sh` and
`nix develop -c scripts/check-consumer.sh --rev <frozen-sha>`.
Exact consumer Git resolution alone is insufficient: invoking CLI, fixtures and
consumer must also belong to frozen source. Clear stale `BEHAVIOR_BIN` and
`CARGO_TARGET_DIR`, or bind a verified same-source CLI path/digest; the consumer
script's default binary otherwise assumes `target/debug/behavior`.

The final receipt records repository, exact SHA/tree, commands/statuses,
environment/toolchain, collected tests, digests and evidence/log locations without
mutating the checkout. Later tracked changes, rebase/merge/squash/release SHA
require fresh applicable validation. This task publishes no release and changes
no ecosystem pin.
