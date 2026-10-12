# Validation Guide: Core 022

This is the future implementation validation guide. Commands using proposed 022
targets cannot run until those targets are implemented. No RED/GREEN, gates or
consumer result is claimed by this plan. Use the
[matrix](contracts/validation-matrix.md) and [proof obligations](contracts/proof-obligations.md)
for expected results rather than updating expectations from observed output.

## 1. Check the owning checkout and evidence base

Run from the root of the Core 022 checkout, currently
`/home/kalle/repos/behavior-ir-core-022`, on `022-replay-evidence-authority`:

```bash
git status --short --branch
git remote -v
git rev-parse HEAD
git merge-base --is-ancestor 391017e536ff64ddf94999ec126bc71799952264 HEAD
```

Nix must provide the repository-pinned Rust environment and existing required
tools, including Z3. No ecosystem pin, local binding override or release action
is needed. Name the actual implementation baseline and explain any dependency
change; a matching ancestor does not make the old 018 receipt apply to the new SHA.

Before code changes, create `compatibility-assessment.md` documenting the old
transport reconstruction limit and malformed-snapshot non-match assumption, the
selected phase-sensitive correction and conditional patch-class assessment.
Create `evidence/implementation-base.md` and an execution ledger. Preserve existing
016 audit and frozen 018 fixture/report/receipt custody.

## 2. Retain real failing regressions before implementation

After writing the proposed test targets, list tests and confirm nonzero required
collection, no ignored required cases and exact test names:

```bash
nix develop -c cargo test -p behavior-core --test replay_evidence_authority -- --list
nix develop -c cargo test -p behavior-store --test replay_evidence_authority -- --list
```

Run legal ordinary-read/invocation/binding controls first. Then retain each RED run:

```bash
nix develop -c cargo test -p behavior-store --test replay_evidence_authority store_read_input_array_refusal_replays_original_request -- --exact --nocapture
nix develop -c cargo test -p behavior-store --test replay_evidence_authority store_read_context_array_refusal_replays_original_request -- --exact --nocapture
nix develop -c cargo test -p behavior-store --test replay_evidence_authority host_invocation_input_array_refusal_keeps_invocation_origin -- --exact --nocapture
nix develop -c cargo test -p behavior-store --test replay_evidence_authority host_invocation_binding_shape_refusal_keeps_invocation_origin -- --exact --nocapture
```

Expected baseline: original Core replay matches; Store assertion requiring corrected
match fails for each named counterexample. Also retain a new failing assertion
for the selected genuine malformed-snapshot refusal policy before changing that
path. Write genuine RED controls for new claim reconciliation and deterministic
script behavior before their implementations. Old passing limitation tests and
exploratory narrative do not establish test-first compliance.

For every run, retain the source/test diff, starting revision, command, environment,
exit status, collected/executed tests and stdout/stderr logs. Failed tests must
reach the relevant semantic assertion; a compile/setup failure is not bug evidence.

## 3. Focused GREEN, preservation and adversarial checks

After implementation, the proposed targets must pass all expanded matrix cases:

```bash
nix develop -c cargo test -p behavior-core --test replay_evidence_authority -- --nocapture
nix develop -c cargo test -p behavior-store --test replay_evidence_authority -- --nocapture
nix develop -c cargo test -p behavior-store --lib store::replay_tests -- --nocapture
nix develop -c cargo test -p behavior-core --test strict_profile_replay -- --nocapture
nix develop -c cargo test -p behavior-store --test strict_profile_replay -- --nocapture
```

The existing preservation targets can be run without new 022 target files:

```bash
nix develop -c cargo test -p behavior-core --test read_replay --test read_replay_integrity --test read_record --test read_goldens --test read_soundness --test invocation_replay
nix develop -c cargo test -p behavior-store --test read_store_replay --test read_soundness --test read_schema --test read_history_prop --test invocation_store --test invocation_history --test conformance
nix develop -c cargo test -p behavior-core --test resulting_state_profiles --test command_replay --test invocation_plain --test invocation_intents
nix develop -c cargo test -p behavior-store --test resulting_state_history --test resulting_state_command_history --test command_replay
```

Run the future deterministic protocol and real twice-run runner, then the existing
supported consumer with its new facade-only tests:

```bash
nix develop -c scripts/tests/test_replay_evidence_determinism.sh
nix develop -c scripts/check-replay-evidence-determinism.sh
nix develop -c scripts/check-consumer.sh
```

Expected results include unchanged original record bytes/identities, full evidence
comparison, malformed/contradictory Snapshot matches under true anchors, false
anchors/accepted truth claims rejected, preserved 018 profiles and 017 action
archives, existing performed-error channels and zero fresh authority on all
replay outcomes. Do not count unsupported/N/A cells, zero tests or skipped checks
as passing compatibility coverage.

Create `evidence/matrix-coverage.json`, `evidence/source-custody.json` and
`evidence/targeted-re-audit.md`. Link exact requirements/proof obligations to
collected execution evidence and inspect source independently. The old 018
transport-limit live assertion and malformed-snapshot bundle-probe assertion now
expect match; preserve the old evidence and fresh positive bundle probe.

## 4. Freeze tracked work before final validation

Complete implementation, fixtures, reports and task bookkeeping, then commit the
candidate. Reports can identify their inspected source/base and evidence locations;
they must not try to embed the final SHA of their own containing commit.
Freeze the resulting full SHA and choose a persistent receipt directory outside
the checkout, keyed by that SHA, before running final checks.

```bash
git rev-parse HEAD
git diff --quiet
git diff --cached --quiet
git status --short
nix develop -c scripts/gates.sh
git diff --check
```

The receipt must capture repository, full candidate SHA, command text, exit statuses,
Nix/Rust/toolchain/environment identity, stdout/stderr locations and evidence
checksums. Distinguish failed, skipped, unavailable and inconclusive results.
All eleven gates must actually run, including determinism, script regressions and
external consumer; the gate runner stops on failure. Do not weaken or bypass it.

## 5. Validate the exact revision through the supported facade

The existing `scripts/check-consumer.sh --rev` fetches the pushed Git revision.
Push the frozen candidate branch when needed, then run from that same frozen
checkout, replacing the symbolic argument with its full SHA:

```bash
nix develop -c scripts/check-consumer.sh --rev FULL_FROZEN_CANDIDATE_SHA
git diff --quiet
git diff --cached --quiet
git status --short
```

`--rev` changes only the consumer's facade dependency in a temporary build. Its
tests/fixtures and demonstration CLI come from the invoking candidate checkout,
so all must be at the same frozen revision. No internal-crate import, ecosystem
pin change or development override is release-compatible consumer evidence.

Store final gate/consumer results and the receipt outside the frozen tracked
checkout. Do not amend tracked reports/task checkboxes afterward to embed results;
record final completion in the external receipt. Any tracked change creates a new
candidate requiring fresh final validation. A different merge, squash, rebase or
release SHA requires its own validation even when the source tree appears equal.

This workflow ends at validated delivery evidence. Merge, release versioning,
tags, publication and ecosystem adoption remain separately requested actions.
