# Implementation log — Durable Command Intents

## Scope and prerequisites

Implementation checkout: `/home/kalle/repos/behavior-ir-core`, branch
`013-durable-command-intents`. The original 012 checkout and all user-supplied
013 design artifacts are preserved. No release tags or artifacts are published.

## T001 — accepted predecessor

Accepted 012 revision: `1b79a88402852dcb4ba19b9b793d5a5c71bc4263`.
Its source revision is `7f06f02875c20442b68f3e0b68c999cd2a54186f`; the
acceptance commit changes only tasks, review and evidence. All 37 predecessor
tasks are checked after genuine acceptance: the unchanged full gate passed
(449 workspace tests, 21 ignored; 10 consumer tests), all 595 frozen digest keys
are unchanged, the required release performance test passed, and reproducible,
empty-environment/conformance release verification passed. See the predecessor
[review](../012-unified-invocation-model/checklists/implementation-review.md).

Baseline engine info confirms Core 0.11.0, Wire through 0.7, decision records
0.4/0.5/0.6 and verifier 0.6.0. Reserve Wire 0.8, decision record 0.7,
verifier 0.7.0 and Core 0.12.0; local tags contain only v0.10.1/v0.10.2.
No reserved domain has been implemented or reused.

## Evidence discipline

Every new semantic implementation or repair starts with a reviewed compiled
test observed failing for its intended semantic reason. Compiler failures,
scaffolding and already satisfied regressions are distinguished explicitly.
Per-task evidence belongs under `evidence/TNNN.md`; checkpoints consolidate
actual outcomes here. No new test establishes historical test-first compliance.

The prior Core-wide soundness audit remains open. Passing legacy tests proves
neither mathematical soundness nor completion of G1/G2/G3. Commands remain
disabled until those prerequisite contracts pass.

## T002/T003 — frozen compatibility and trust fixtures

Frozen 521 tracked legacy schema/fixture file hashes and 136 established
deterministic output hashes in `tests/fixtures/commands/legacy-baseline.json`.
This includes all published hash vectors and new accepted 012 invocation
goldens; no original fixture was rewritten. Verifier 0.6.0 attestations remain
historical structural evidence; new 0.7.0 outcomes are explicitly separate.

Created canonical test-only authorizer/verifier seeds, exact required/none/deny-all
evidence policies, complete execution policy/profile and explicit bound/unbound
Q. Existing dalek code derived both public keys through the legacy sign-waiver
CLI and matched their established fixture identities. Policy context explicitly
declares Bool/i64/String fields and typed expected values; time is fixed and
keys are distinct. No crypto dependency, environment discovery or live clock
was added. These fixtures do not establish v2 implementation or trust.

T004 baseline gate is pending; no foundational semantic test/code task is accepted.

## T004 — baseline gate passed

Pinned runtime checks: Rust 1.98.1 (48a229cea, 2026-09-01), Z3 4.16.0.
The unchanged `scripts/gates.sh` passed with exit 0 on accepted predecessor
source plus the new setup fixtures: fmt/clippy/workspace tests and build,
determinism, boundary, 93-item facade, external consumer, workflow/terms and
script tests. 449 workspace tests and 10 consumer tests passed; 21 tests were
ignored, not passed. All 521 frozen schema/fixture hashes were independently
rechecked and unchanged. Transcript: /tmp/013-baseline-gates.log.

No Core/Store/Verifier/CLI source changed during setup. Existing tests are
regression evidence, not proof of soundness. T005–T013 must now establish
compiled semantic red evidence before their implementation tasks.
