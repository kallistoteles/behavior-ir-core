# Validation guide: Core 029

## Checkout and tools

Use the Core worktree:

```bash
cd /home/kalle/repos/behavior-ir-core-029
git status --short
git rev-parse HEAD
```

Use the repository's pinned Nix tools (Rust 1.98.1 and the locked solver). Installation
and builds are separate from measured execution. The completed G3 command, exact source
and environment are in `evidence/gates-source.json`; `evidence/gates.txt` retains the
full result. Earlier failed/interrupted attempts remain in `evidence/attempts/`.

For this machine's limited disk and the existing mock timeout fixture, the successful
normal gate environment omits debug symbols/incremental cache and serializes outer
test execution. It retains debug assertions and explicit concurrency tests:

```bash
export CARGO_INCREMENTAL=0
export CARGO_PROFILE_DEV_DEBUG=0
export CARGO_PROFILE_TEST_DEBUG=0
export CARGO_BUILD_JOBS=3
export RUST_TEST_THREADS=1
export CARGO_PROFILE_DEV_OPT_LEVEL=1
export CARGO_PROFILE_TEST_OPT_LEVEL=1
```

These settings preserve debug assertions and overflow checks. They do not alter the release measurement profile or frozen budgets.

## Correctness, work and recovery

Inside the pinned environment:

```bash
cargo test -p behavior-core --lib --features validation-work prepared_tests
cargo test -p behavior-store --lib --features validation-work store::incremental::
cargo test -p behavior-store --test incremental_validation --test snapshot_reuse --test migration_context --test migration_evidence
CARGO_TARGET_DIR=target/consumer cargo test --manifest-path consumer/Cargo.toml --test incremental_validation global_creation
scripts/gates.sh
```

Every filter above has executed nonempty tests. Expected outcomes include exact full
record/bundle/commit equality, zero unrelated validation visits in selected steady-state
cases, independently expected entity-1000 ALLOW/entity-1001 DENY, no publication on
refusal, wrong-parent and duplicate-apply rejection, stale/conflicting candidates and
recovery after a real process exits after persistence but before acknowledgement.
The consumer additionally replays the committed segment after dropping prepared state.

The complete normal gate includes the fast prepared-state/work controls and the
measurement-validator failure tests. The controlled scaling campaign is additional
acceptance evidence; ordinary test success alone does not establish performance.

## Release probe and frozen campaign

A single public-API probe continuously grows one Store, commits eight real creations
and performs the final next-evaluation drain:

```bash
cargo run --locked --release -p behavior-store --example global_validation_bench -- 128 8 count create
```

Expected: ALLOW decisions, final E membership 136, Other membership zero, a complete
semantic digest, nonzero final-drain time and `mode: production-like` with `work: null`.
It is a correctness/measurement smoke case, not the full performance acceptance gate.

For diagnostic work attribution, build the same example with `--features validation-work`.
Keep the default and instrumented binaries distinct; their semantic digests and output
sizes must agree. Instrumented timings never determine the numerical timing criteria.

The full 103-case corpus and repetitions are frozen in `evaluation-profile.json` and
`benchmarks/corpus.json`. Saved immutable release-baseline binaries have the identities
in `evidence/baseline-build.json`. The final campaign binds candidate/referenced binaries,
toolchain, harness, G3 source and outcomes in `evidence/campaign-manifest.json`; raw
attempts are in `evidence/scaling.jsonl` and `evidence/reference-final.txt`.

The collectors and evaluator are:

```bash
python3 benchmarks/run.py --help
python3 benchmarks/reference.py --help
python3 benchmarks/evaluate.py --help
python3 benchmarks/evaluate.py --rows evidence/scaling.jsonl --manifest evidence/campaign-manifest.json --output evidence/acceptance.json
```

Run these paths from this feature directory. On the reference machine, measured
collectors/probes use CPU0 and auxiliary orchestration/analysis uses CPU1. Builds finish
before timing begins. The full commands and phase ordering are retained in
`evidence/campaign-orchestration.txt`; this is host-specific research provenance, not a
new release process. Use fresh output paths for another campaign;
collectors retain attempts and the evaluator rejects missing/duplicate repetitions,
wrong provenance, omitted drain, semantic mismatches, mode mixing and missing budgets.
It overwrites a stale passing acceptance file with failure before attempting validation.
All required groups must be complete before evaluation can pass.

The evaluator applies every frozen absolute budget, local/fallback limit and the
quantitative primary/growth requirements. Timing failure is a performance failure,
never an invariant counterexample. Do not relax thresholds from candidate observations.

## Review and limits

Review `correctness.md`, `construct-mapping.md`, `evidence/premise-mutations.md` and
`evidence/us3.md`. The six mutation controls actually break production premises,
require behavioral test failure, restore exact source, then rerun normal controls.
They supplement the conditional argument; they do not prove Rust or Backend correctness.

The supported measured route is `Store::evaluate` → commit → next evaluation. Initial
validation, other query/API shapes, migrations and replay retain their stated costs.
Complete archived universes, member evidence, traces, parsing and hashing impose
output-sized work. See `evaluation-report.md` and
[the public limits](../../docs/incremental-validation.md). No all-global incrementality,
constant-time transaction, private-application endurance or end-to-end machine-proof
claim follows from this corpus.

If production or measurement-harness code changes after G3, renew the required code
gates before final measurements and rerun the affected comparisons. Documentation-only
edits do not require repeating already-passing code checks. Published fixtures/tags,
Core semantics, durable formats and the consumer facade remain unchanged.
