# Quickstart: validate durable commands after implementation

Runnable acceptance scenarios for the Core0.12.0 candidate in [plan.md](plan.md).
Use `nix develop` before these commands for the pinned toolchain and solver.
Acceptance is recorded in implementation-log.md; no product tag/publication is implied.

## Prerequisites and baseline

Run from behavior-ir-core root using pinned Rust1.98.1 and Z3 4.16.0. Complete012 and G1/G2/G3
before command acceptance. Keys below are deterministic test fixtures, not host credentials.

~~~sh
rustc --version
z3 -version
scripts/check-public-surface.sh
scripts/check-boundary.sh
~~~

Archive published valid wire/record/hash/diagnostic fixtures and digest. New verifier outcomes
are separate; do not turn historical structural attestations into trusted past evidence.
See [semantic IR](contracts/semantic-ir.md), [governance](contracts/governance.md) and
[store/replay](contracts/store-and-replay.md).

## Prove prerequisites

Implement first creates these named test targets and observes their relevant failures:

~~~sh
cargo test -p behavior-verify --test trusted_governance
cargo test -p behavior-verify --test trusted_verification
cargo test -p behavior-verify --test soundness_regressions
cargo test -p behavior-store --test trusted_governance
cargo test -p behavior-store --test history_integrity
cargo test -p behavior-store --test behavior_validity
cargo test -p behavior-store --test migration_context
cargo test -p behavior-core --test record_validation
~~~

Expected: forged/unsigned/untrusted evidence, poisoned cache, wrong exact bindings, omitted
obligations, invalid calendar dates and ambiguous new documents refuse. False proof regressions
are repaired or conservatively blocked. Refusal preserves all state/history/index/idempotency
components. None needs no authorization; valid authenticated state/migration commits pass.
Legacy required stores refuse new governed writes with TRUSTED_GOVERNANCE_UPGRADE_REQUIRED.
Validated export/new-genesis adoption preserves state content in a new lineage; old history
retains structural trust and original policy/evidence.

## Canonical semantics, guards and verifier

~~~sh
cargo test -p behavior-core --test command_admission
cargo test -p behavior-core --test command_evaluation
cargo test -p behavior-core --test command_identity
cargo test -p behavior-verify --test command_safety
cargo test -p behavior-core --test command_replay
~~~

Expected: definition/product permutations preserve hashes/semantic bytes/errors/observations.
Multiplicity changes identity. Omitted guard=true. False cost!=0 around income/cost evaluates
and observes no payload; reachable true-guard failure aborts and gets a verifier finding.
Relocation/binder spelling/equal aliases change no semantic evidence.

CLI uses complete implementation fixtures:

~~~sh
cargo run -q -p behavior-cli -- admit tests/fixtures/commands/modules/receipt.json
cargo run -q -p behavior-cli -- invoke tests/fixtures/commands/modules/receipt.json tests/fixtures/commands/invocations/receipt.json tests/fixtures/commands/snapshots/receipt.json
cargo run -q -p behavior-cli -- invoke-replay tests/fixtures/commands/modules/receipt.json tests/fixtures/commands/records/receipt.invocation.json
cargo run -q -p behavior-cli -- engine-info
~~~

Expected: Wire0.8/inner record0.7/canonical candidate intents, no commit/dispatch. Engine-info
lists accepted inputs/new formats. All legacy golden bytes remain unchanged.

## Trusted commit and stream through facade

The facade-only consumer example uses a test-only host persistence backend. prepare creates
v2 fixture store, evaluates and writes candidate.json, bundle.json and independent context.json without
commit. The fixture context has policy_time=2026-10-05T12:00:00Z, policy-bound commit time or
null as required by the fixture policy, and its exact declared context product. CLI produces actual
fresh proof/signed authorization. Run:

~~~sh
command_demo_dir="$(mktemp -d)"
cargo run -q --manifest-path consumer/Cargo.toml --example durable_commands -- prepare --root "$command_demo_dir"
cargo run -q -p behavior-cli -- governance verify tests/fixtures/commands/modules/receipt.json --profile tests/fixtures/governance-v2/profile.json --seed tests/fixtures/governance-v2/verifier.seed --out "$command_demo_dir/verification.json"
cargo run -q -p behavior-cli -- governance authorize "$command_demo_dir/candidate.json" --wire tests/fixtures/commands/modules/receipt.json --evidence-policy tests/fixtures/governance-v2/evidence-policy-verifier-0.8.json --policy tests/fixtures/governance-v2/policy-verifier-0.8.json --verification "$command_demo_dir/verification.json" --seed tests/fixtures/governance-v2/authorizer.seed --context "$command_demo_dir/context.json" --now 2026-10-05T12:00:00Z --out "$command_demo_dir/evidence.json"
cargo run -q --manifest-path consumer/Cargo.toml --example durable_commands -- commit --root "$command_demo_dir" --evidence "$command_demo_dir/evidence.json" --context "$command_demo_dir/context.json"
cargo run -q --manifest-path consumer/Cargo.toml --example durable_commands -- stream --root "$command_demo_dir"
~~~

Command-only receipt leaves StateId/revisions/universe unchanged, advances history once and
exposes one occurrence. Repeat commit recovers already=true/same ID. Prepare at new head then
intentionally repeat for a new occurrence. Host mock adapter runs only after committed stream.
Separate negatives alter payload/count/policy/parent: refuse without history. Self-hashed ALLOW
without trusted signature cannot pass.
The host reads Q independently from context.json and calls commit_with_context; it does not
copy Q from evidence. Repeat recovery uses the original committed Q/event. Governed migrations
use the same context-bearing checker. Source relocation leaves semantic ReportHash/envelope
content unchanged; a timeout/non-reproducible abort yields CLI exit3 and no signed output.

## Atomicity, forks and process recovery

~~~sh
cargo test -p behavior-store --test durable_commands
cargo test -p behavior-store --test command_stream
cargo test -p behavior-store --test command_replay
cargo test --manifest-path consumer/Cargo.toml --test durable_commands
cargo test --manifest-path consumer/Cargo.toml --test command_crash_recovery
cargo run -q --manifest-path consumer/Cargo.toml --example durable_commands -- crash-recovery --root "$command_demo_dir"
~~~

Expected: mixed abort exposes neither result; lost response after durable write recovers one
event in a second process. Copies reproduce IDs; fork-equal genesis/position/state diverge.
Bad cursors fail; empty/migration pages advance; pinned pages exclude later appends and keep
commit multiplicity whole. Replay detects tampering/endpoints/chain with zero business I/O.

## Full acceptance and release

~~~sh
scripts/gates.sh
scripts/check-consumer.sh --rev <exact-already-pushed-SHA>
scripts/release-check.sh --skip-gates
~~~

After implementation gates, scripts/check-consumer.sh --rev uses the exact already-pushed
revision before artifact construction/publication. Planning creates no merge/release/tag.
See [complete validation matrix](contracts/validation-matrix.md).
