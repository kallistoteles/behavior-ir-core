# Validation guide: Core 029

## Prerequisites and checkout

Use the Core worktree, not the ecosystem or Core 030 worktree:

```bash
cd /home/kalle/repos/behavior-ir-core-029
git status --short
git rev-parse HEAD
```

Planning began detached at `aff31ddda163e343be616cb378388e464b90933b`.
Logical feature: `029-incremental-global-validation`. Preserve existing work. Use the
repository Nix environment/lock and Rust 1.98.1. Installation/build preparation is separate
from measured execution, with complete totals retained in the report.

## Existing commands, runnable before 029 implementation

```bash
nix develop -c cargo test -p behavior-store --test incremental_validation
nix develop -c cargo test -p behavior-store --test snapshot_reuse
nix develop -c cargo test -p behavior-store --lib incremental
nix develop -c scripts/check-consumer.sh
```

Expected: existing local incremental, snapshot reuse and consumer contracts pass in a
configured environment. They do not establish 029's affected-global capacity. No tests
or heavy benchmarks were run by the planning command.

An existing explicit diagnostic workload is available:

```bash
nix develop -c env CARGO_INCREMENTAL=0 CARGO_BUILD_JOBS=2 \
  cargo test --release -p behavior-store --lib controlled_10000_pairs \
  -- --ignored --nocapture
```

This currently covers local warm/update/create-plus-read pairs. It is **not** the
required global creation benchmark. Do not run it alongside other heavy work.

## Required 029 workflow after implementation

These scenarios extend existing test/workload seams. They do not imply that new tests
or harness flags already exist. Implementation must record exact selectors and report
paths here; an empty test filter cannot count as verification.

1. Reproduce post-commit global validation work and see strict work controls fail on
   baseline. Import minimal domain-neutral fixtures only.
2. Collect baseline pilots and freeze the numeric profile specified in
   [contracts/evaluation.md](contracts/evaluation.md), before final candidate evaluation.
   Separate production-like release timing from instrumented work runs; freeze their
   build identities and repetitions and check semantic parity. Include preparation/final
   drain and at least three independent production-like timing growth runs. Derive
   timing criteria only from this mode and report diagnostic overhead separately.
3. Compare optimized/full-reference unrelated updates under `count(select(T)) <= K`.
   Expect identical complete results and no unrelated unchanged-row validity work
   anywhere in the complete cycle.
4. Repeatedly create fresh entities in one growing Store. With K=1000, accept 1000 and
   refuse 1001 without advancing head/history on refusal. Compare complete records and
   actual child validity with independent full reconstruction and expected outcomes.
5. Exercise unsupported/error/mixed-rule cases and every boundary in
   [contracts/validity-reuse.md](contracts/validity-reuse.md). Expect ordinary errors,
   ordering, recovery and independent rejection of tampered bundles.
6. Run each essential-premise mutation control; its test must detect a broken dependency,
   inventory, count, identity or publication premise. Restore valid code before gates.
7. Complete G3 by running the mandatory pipeline below with the finalized measurement/
   profile validator. Record its tested source identity before the final G4 campaign.
8. Execute frozen full-profile comparison at 1, 16, 128, 512 and two larger populations,
   continuously growing each Store. Include fixed-N history, local/fallback controls,
   output bytes and complete-path resource/work accounting. Apply budgets and the growth
   criterion to production-like timings and work criteria to instrumented runs; both
   must pass. Lower Backend counts or instrumented speedups alone are insufficient.

Run the existing mandatory pipeline after implementation and before final measurement:

```bash
nix develop -c scripts/gates.sh
```

If production or harness code changes afterward, renew the required gate evidence and
rerun affected frozen comparisons. Documentation-only edits do not require repeating
already-passing code checks.

Fast 029 correctness/work regressions belong in this pipeline. The explicit controlled
measurement report is additionally required for acceptance. No second release process
or private application benchmark is needed. See [plan.md](plan.md) for blocking gates
and [research.md](research.md) for established evidence versus unexecuted work.

## Readiness record

Retain source/toolchain/fixture/harness identity, frozen profile, raw baseline/candidate
attempts, semantic comparisons, argument/correspondence review and remaining scans.
Account separately for necessary evidence-output growth. A failed timing budget blocks
performance acceptance without implying an invariant violation. Do not claim unmeasured
endurance, all-global incrementality or machine-checked end-to-end correctness.
