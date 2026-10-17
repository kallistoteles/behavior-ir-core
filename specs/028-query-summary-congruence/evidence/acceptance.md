# Core028 implementation acceptance

Core implementation acceptance **passes**. All 60 implementation tasks are complete. **C19 / QS-22 published-release adoption stays blocked.**

The exact validated implementation is `faabb08db990f37e77f1a79e272ba0bb09bbf122` on `028-query-summary-congruence`. The source was clean before and after one uninterrupted complete gate and public CLI capture. Later acceptance/task metadata is a separate administrative commit; it is not the binary's source identity.

[final-receipt.json](final-receipt.json), SHA256 `3b2f74dc3c7f9376dbd8a63e7b82f00a24749a7f6278238039b76b3040f753fa`, binds source, binary, Rust 1.98.1, Z3 version 4.16.0 - 64 bit, profile, outcomes and all 45 frozen digests. The CLI binary SHA256 is `b77955e60724935646618d1f53cf51b19f21005494ba6474d241cc90c2c24d58`. Detailed logs and repeated reports remain at `/data/core028/validation/final-complete`; their digests are in the receipt.

| Validation | Result |
|---|---|
| Authoritative `scripts/gates.sh` | PASS: format, Clippy, workspace tests/build, determinism, boundaries/public surface, external consumer, workflows, terms and script tests |
| Rust test execution summaries across gates | 1702 passed executions, 25 ignored executions across 234 summaries; counts test executions, not distinct proof obligations |
| Original unchanged C19 full profile | Verified; all 41 original check identities retained; both action-qualified uniqueness postconditions proven |
| Current repeat | Same authoritative report hash `sha256:d862a01023de26adf951b9c6dc7a3f36707b183d028fe4ad1a000b7c7c482d34` |
| Original/minimal/count control | All required public CLI invocations exit 0 |
| False-proof/error controls | Frozen concrete oracle, confirmed missing-guard/capture/filter/domain violations, partial/error cases and uncertainty retained |
| Semantic identity | BehaviorHash, SchemaHash and every original item hash unchanged |
| Historical identity | All 45 frozen SHA256 digests match; old 0.9 claims/signatures/policies unchanged |
| Genuine signed 0.9 history | Action and required-proof migration data/Behavior replay and exact recovery pass; live reuse/tampering refuse; no current certificate from recovery |
| Long migration regression | Existing 1,000-transition three-migration replay plus 12 tamper cases pass; existing 10,000-transition stress test remains ignored |
| Release/adoption | Not performed; C19 remains blocked pending a separately published pinned corrected Core release |

The full profile retains the default rlimit 20,000,000 and 60,000 ms operational guard. Test executables use optimization level 1 with debug assertions and serial test execution; test counts/assertions and solver budgets are unchanged. Development startup/fork retries are disclosed in us3-green.json. [clean-checkpoint-retries.json](clean-checkpoint-retries.json) records both failed clean checkpoints and the versioned-golden/worker-protocol corrections. The accepted complete gate itself passed.

[The proof ledger](proof-obligations.md) establishes the conditional unbounded conservativity argument, and [implementation-review.json](implementation-review.json) records its source/authority review. Tests do not establish global induction or certify every existing verifier abstraction. Source issue #35 remains accurately characterized and open; no release, downstream pin or historical trust promotion was made.

See [coverage.md](coverage.md) for all 22 FR, 8 PO, 8 SC and 25 QS owners, and [handoff.md](handoff.md) for the external release gate.
