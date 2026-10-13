# 023 baseline and source custody

Implementation begins from `72d4093322aabaedf86c3b322ca3394724b0f6df` on `023-strict-bundle-evidence-validation`,
remote `git@github.com:kallistoteles/behavior-ir-core.git`, with no unrelated tracked/untracked work.
Frozen 019 implementation `6ad357c7e9960ce6771fd435adcec9f8018fb7d6` is an ancestor.
The earlier merged 019 specification PR is not its implementation delivery.

The external protected source manifest is
`/home/kalle/validation-receipts/core023/baseline/source-manifest.json` (1412 tracked files).
It records repository, revision/tree and individual SHA-256 file digests.
Protected domains include ordinary Core evaluation/Facts, v1 documents/replay,
all old schemas/fixtures, supported facade/API, dependencies and constitution.
Only the scoped source/schema edits named in plan.md may differ; new test fixtures
are separately identified rather than rewriting original archives.

## Setup verification

The sole requirements checklist is 16/16 checked; its markers are read-only.
No extension hooks or owning AGENTS.md exist. Rust output uses ignored target/,
backup files are covered by **/*.rs.bk; .env*, logs and Python caches are ignored.
No Docker/Node/Terraform/Helm configuration was found. Existing .gitignore covers
actual planned outputs; no unrelated ignore expansion is needed.

## Shared fixture contracts and source freeze

The exact RED uses private conformance::orders/ orders_seed/ orders_history, not
the different integration-common seed. Required signed authorization uses a
separate test-owned runner; the original require:none helper remains unchanged.
Codec, compatibility, schema and consumer files have separate owners. The
coordinator serializes source freezes, shared bookkeeping and final gates.
A reviewed, committed test-only revision must be collected and fail at the
intended invalid-observed-facts refusal before any production correction.
Baseline characterization outcomes are compatibility evidence, not correction RED.

## Foundation join (T008)

All 1412 protected tracked file digests still match the entry manifest after
the sixteen baseline characterization tests and H01–H03 custody inspection.
The original ordinary Facts/read, legacy document/hash/replay, dependencies,
facade and schemas are unchanged. Baseline collection/run both returned zero;
16 tests passed, none ignored. See [v1-baseline.md](v1-baseline.md) and
[historical-controls.md](historical-controls.md). The shared exact workload
uses the parent orders seed; the test-only RED must be committed and observed
before any production correction. No source correction has occurred at this join.
