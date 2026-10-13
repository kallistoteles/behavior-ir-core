# Validation Guide: Accurate Admission Version Metadata

These are repeatable implementation validation commands. Actual test-first and scoped results are linked from [implementation-report.md](implementation-report.md); a command listing is not a passing receipt. Read the [reporting contract](contracts/admission-reporting.md) and [acceptance matrix](contracts/compatibility-validation.md) before executing them.

## Prerequisites and source custody

Use the owning Core checkout/branch `020-admission-version-metadata`, its locked Nix environment and existing dependencies. Inspect source and preserve unrelated work:

```bash
pwd
git remote -v
git status --short --branch
git rev-parse HEAD
git merge-base --is-ancestor af8a0364170a82899fb69c7e18b151ddea8ebdd3 HEAD
```

The named base is the clarified integrated implementation. If implementation rebases to a later source, record the new exact source and re-establish the baseline/RED observations. No published ecosystem pin or override changes belong to these commands.

## Collect and observe RED before production edits

The expanded targets and new facade target are implemented and collected. Future corrections must author/review assertions and retain behavioral RED before the production edit:

```bash
nix develop -c cargo test -p behavior-core --test versions --test read_wire -- --list
nix develop -c cargo test -p behavior-cli --test cli_engine_info -- --list
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test admission_versions -- --list
```

`consumer/tests/admission_versions.rs` was created during implementation. The historical020 RED was observed against the named baseline with the test overlay, before production edits; the corrected checkout is expected to pass. To reproduce that RED use a separate baseline checkout and the recorded assertions, not the corrected source. Retain collected names, source/test-overlay identities, command/status/logs and failing metadata/refusal assertions. A compile/setup failure is not behavioral RED; positive witnesses and preserved gates must be usable controls.

Expected RED: the current metadata includes0.1–0.3 and the generic refusal clause omits0.8. The three old incorrect metadata expectations are corrected in the test-first phase. Existing audit/integration evidence is not substitute RED for the implementation.

## Focused GREEN and public behavior

After the small authority/projection change, all expanded/new targets must pass:

```bash
nix develop -c cargo test -p behavior-core --test versions --test read_wire
nix develop -c cargo test -p behavior-cli --test cli_engine_info
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test admission_versions
nix develop -c cargo run -q -p behavior-cli -- engine-info
nix develop -c cargo run -q -p behavior-cli -- admit tests/fixtures/commands/modules/receipt.json
```

Expected reporting: `accepted_wire_ir` exactly `0.4–0.8`, historical `wire_ir` unchanged `0.1–0.7`, and all unrelated fields unchanged. The command witness is admitted with status0. The test matrix also admits the other four version-specific witnesses, checks excluded/unknown/malformed/ambiguous cases and confirms body errors and minimum-feature/read-document gates remain distinct. CLI admission refusals have expected status2; the harness must assert that status rather than hiding it with unconditional success.

Repeated canonical reporting/refusal output must match. Compare only the diagnostic support clause when extracting its accepted set; preserved migration text legitimately mentions legacy versions.

## Frozen compatibility and targeted re-audit

Run existing relevant controls; all named targets already exist on the inspected source:

```bash
nix develop -c cargo test -p behavior-core --test admission --test ir_0_4 --test ir_0_5 --test ir_0_6 --test command_admission
nix develop -c cargo test -p behavior-core --test hash_vectors --test schema --test serialize --test read_goldens --test command_identity --test legacy_intents_frozen
nix develop -c cargo test -p behavior-core --test strict_profile_replay --test replay_evidence_authority --test replay
nix develop -c cargo test -p behavior-store --test strict_profile_replay --test replay_evidence_authority
git diff --exit-code af8a0364170a82899fb69c7e18b151ddea8ebdd3 -- schema tests/fixtures api/engine-surface.txt
```

Schema/fixture/public-surface bytes remain unchanged; do not regenerate goldens. Record scoped baseline/candidate equality of successful admission, canonical serialization, hashes and same-profile historical replay, and unchanged metadata/error properties. Allow only corrected `accepted_wire_ir` and generic support-list text. `scripts/conformance-digest.sh --no-outputs` may inventory frozen assets; whole output digest equality would incorrectly forbid the intended diagnostic correction.

Document consumer adaptation and minor-class assessment, including the ecosystem's separately pinned old-release expectations. Map actual evidence to FR-001–011 / SC-001–005 and F-COORD-011 / RC-004. This targeted review establishes no whole-Core or unrelated-audit closure.

## Final candidate and external receipt

Finalize implementation, tests, fixtures if any, reports and task bookkeeping, then commit/push the candidate. This plan expects no fixture edits. From its exact clean checkout, with its own CLI and no dependency/build bypass, run:

```bash
git status --short
core020_candidate_sha="$(git rev-parse HEAD)"
nix develop -c scripts/gates.sh
nix develop -c scripts/check-consumer.sh --rev "$core020_candidate_sha"
```

The canonical gate covers fmt/clippy, tests/build, determinism, boundaries, public surface, external consumer, workflows, terms and script tests. The extra `--rev` run must resolve actual Core dependencies to that pushed SHA; its consumer tests/fixtures and CLI come from the same frozen checkout. No untracked local override or stale `BEHAVIOR_BIN` may substitute a different engine.

CI or an external immutable receipt records repository, exact SHA, commands/statuses, actual dependency resolution, pinned toolchain/environment and log locations. Do not modify the frozen tracked checkout to add its final SHA to a report. Any subsequent tracked change or different merge/release SHA requires fresh final validation. Release-number selection, tags, publication and ecosystem adoption remain separately requested delivery.
