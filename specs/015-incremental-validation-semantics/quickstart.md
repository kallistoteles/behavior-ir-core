# Validation Guide: Verified Incremental Validation

**Status**: Execution guide for the authorized private implementation and [tasks](tasks.md).
Run from `/home/kalle/repos/behavior-ir-core-015` in its pinned Nix environment.
Canonical metadata and the original 014 checkout remain unchanged. Current
acceptance evidence is in [evidence.md](evidence.md), not the historical prototype.

## Design-document checks (runnable now)

```bash
git diff --check
nix develop -c scripts/check-terms.sh
nix develop -c scripts/check-public-surface.sh
nix develop -c scripts/check-workflows.sh
```

Parse verification/archive JSON and check relative links. Verify archived prototype digests and original 014 baseline files. These document/boundary checks alone do not verify the algorithm.

## Implementation prerequisites

Follow the generated [tasks.md](tasks.md) from [plan.md](plan.md). Its checked tasks require execution evidence; historical prototype activity is preserved in the
[task archive](prototype/tasks-before-regeneration.json). For each new/refactored
behavior, write and review the relevant test, observe the intended red failure,
then implement. Preserve the actual failing command/log and distinguish fixture
mistakes, compile/API absence and behavioral regressions. Audit historical evidence
for adopted prototype code; new tests cannot establish past test-first compliance.

Add necessary private cfg(test) module declarations during test authoring in T004,
T015, T016 and T029, before implementing the tested helpers/algorithms. T005, T018
and T031 retain this wiring rather than introducing it after their red prerequisite.
For runnable tests, confirm the intended names are collected before the red run.
If missing APIs prevent compilation, record API-absence red only when compiler
diagnostics identify the intended newly wired test files; an unrelated build error
or an unregistered test file is not red evidence. Require nonzero collection and
the intended scenarios once the implementation compiles.

Use [data-model.md](data-model.md), [correctness.md](correctness.md) and the
[private reference model](contracts/delta.md) for expected invariants.

## Differential validation matrix

| Scenario | Required result |
| --- | --- |
| Local update/create and pure nested derived rules | Optimized candidate and independent full-child validator have identical ordered semantic outcomes. |
| Profile-aware derived resolution and formal/actual aliases | Dependency proof matches ordinary evaluation; unknown resolution is affected. |
| Explicit Exists/Referenced, queries, captures, globals or cross-entity closure | Reference workflow is used; no child carry-forward or new pre-CAS refusal. |
| Unused query-derived definition outside any validation root | Does not by itself disqualify otherwise proven local obligations. |
| Changed references, optional refs and mutually referencing creates | Use final simultaneous-state membership; missing targets retain existing refusal order. |
| Previously used removed identity offered for create | Existing historical freshness refusal remains; current absence is insufficient. |
| Removal, migration or unsupported case | Existing lifecycle/schema/refusal behavior; subsequent state-validation operation takes the full path. |
| Malformed rows, key identity mismatch, lazy errors and exact numeric boundaries | Decode suppression, constraints/invariants ordering, values/errors and evidence agree with the ordinary evaluator. |
| Same state content at different history positions/forks, schema/behavior/profile changes | No weak cache match; exact binding or full rebuild. |
| Command-only/no-op changes, governance contexts and stale concurrent handles | Records, command bags, authorization and exact history/CAS stay unchanged. |
| HeadMoved, backend pre-commit failure or lost acknowledgment | No speculative child entry; later operation binds actual canonical history and recovers/rebuilds normally. |
| Required head/record/schema/freshness/version/reference/commit operation fails | Preserve that operation's current StoreError or FactError/evaluator route and ordering. |
| Fault armed only on a redundant universe/unrelated-row read | A bound optimized operation need not perform it or fabricate an I/O error. Clearing/unbinding the cache makes required reads fail normally. |
| Cache discard/reopen or uncertain ownership | Canonical reconstruction yields the same semantic result; no O(N) clone just to rescue an optimization. |

The oracle fully materializes the parent/child independently and invokes ordinary
full validation. It may not reuse the optimized affected set, classifier or incoming
index to determine expected outcomes. Whole-public-workflow comparison separately
checks decisions, changesets, command intents, required semantic observations,
canonical bundles/records/hash/history identities, reads and data/Behavior replay.
The oracle is conditional on the local theorem; it does not authorize new production
refusals in unsupported cases. Investigate the statically identified nonlocal
refusal-boundary possibility separately.

## Focused tests and collection

Current suites can be collected with:

```bash
nix develop -c cargo test -p behavior-core --lib -- --list
nix develop -c cargo test -p behavior-store --lib -- --list
nix develop -c cargo test -p behavior-store --test incremental_validation -- --list
nix develop -c cargo test -p behavior-store --test snapshot_reuse -- --list
```

The registered private modules and existing workflow suites run with:

```bash
nix develop -c cargo test -p behavior-core --lib incremental_proof
nix develop -c cargo test -p behavior-store --lib store::incremental
nix develop -c cargo test -p behavior-store --test incremental_validation
nix develop -c cargo test -p behavior-store --test behavior_validity
nix develop -c cargo test -p behavior-store --test schema_binding
nix develop -c cargo test -p behavior-store --test migration_store
nix develop -c cargo test -p behavior-store --test trusted_governance
nix develop -c cargo test -p behavior-store --test command_only
nix develop -c cargo test -p behavior-store --test command_replay
nix develop -c scripts/check-consumer.sh
```

The private filter names are registered and collected. Require
nonzero test collection and the intended scenarios; a successful command collecting
zero tests, an ignored test or an inconclusive proof is not a passing result.

## Workload measurements

Use identical canonical seeds, fixed clocks/inputs and sequential warm/read,
update-one/read and create-one/read series at approximately 10k entities. Measure
write, immediately following read and combined pair separately; setup/initial full
validation is separate. Compare a private optimized strategy with a genuine full-
parent/full-candidate strategy for eligible models; verify semantic outputs and
record identities first. Record raw samples, sample count, p50/p95 where justified,
CPU/platform/build profile/source/fixture digests and validation-work counters.

Keep validity-checking counters separate from total backend reads. On eligible
warm operations, assert zero unchanged-row validation and zero validation-related
full-universe enumeration: traversals of all live keys/rows to reconstruct
validation facts or check state validity. Report total backend reads alongside
those counters, including mandatory record/replay-universe, integrity, query and
other contract-required access. Do not infer total I/O is zero from skipped
validation work, or change a mandatory operation to improve a counter. Initial
cold validation belongs to the separate setup measurement.

Aim for at least 30 measured pairs per final series, explain smaller samples, and
avoid concurrent build load or document its effect. Large queries, fan-in and
record profiles remain separately visible; no universal latency guarantee follows.

The retained historical Rust parent-only comparator is:

```bash
nix develop -c cargo test --release -p behavior-store \
  --test incremental_validation \
  repeated_warm_update_read_and_create_read_workloads \
  -- --ignored --exact --nocapture
```

It rebuilds only the reference parent and still shares incremental candidate
validation. Label it parent-reconstruction-only. It cannot serve as the planned
full-candidate comparator; do not silently relabel previous samples.

TCUP measurements use its real persistent handlers/JSONL and synthetic seed in a
separate private runtime/build environment. A full reference variant may use an
explicit untracked instrumentation patch in a separate Core experiment; record
its exact diff and native extension/source provenance. It must force the candidate
oracle, add no supported flag/API, and must not modify or bypass canonical gates.
Rebuild both native variants for the intended revision; hashing the current source
beside an older binary does not prove they correspond. Handler timing is not a
live MCP transport measurement. Private results cannot clear TCUP's published-pin
SC-007 or establish release compatibility.

## Required final implementation checks

After tasks/implementation, from the owning Core root run:

```bash
nix develop -c scripts/gates.sh
git diff --check
```

The script includes fmt/clippy, workspace tests/build, determinism, boundary,
public surface, external consumer, workflows, terminology and script tests.
Keep canonical dependencies and required checks unchanged. Record exact revision,
command/logs and consumer evidence. Planning-phase document checks and historical
prototype gates are not acceptance gates for the revised code. No publication, tag,
ecosystem dependency change or release claim belongs to this planning command.


## Implementation execution provenance

The immutable pre-015/014 workflow checkout is `/tmp/behavior-015-reference-core`, built from the recorded base plus the original 014 dirty-file overlay. The original checkout is never edited. Prototype sources are archived in `prototype/source/`; prototype gate results are historical, not revised implementation acceptance.

Per-phase red/green logs use `/tmp/behavior-015-impl-<phase>-<red|green>.log`. Run tests in the pinned environment, e.g. `nix develop -c env CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 CARGO_INCREMENTAL=0 CARGO_BUILD_JOBS=2 cargo test -p behavior-store --lib store::incremental`. Check nonzero test counts; a missing helper is red only when compiler diagnostics identify the newly registered test module. Final gates use the unchanged `scripts/gates.sh`.

Profiles: all admitted existing semantic profiles remain supported; locality follows ordinary profile-sensitive derived resolution. Fixed seeds and clocks come from soundness fixtures and TCUP integration seeds. Timed experiments use isolated native builds and never change official dependency metadata.

## Revised collected suites and workloads

```bash
nix develop -c cargo test -p behavior-core --lib incremental_proof
nix develop -c cargo test -p behavior-store --lib store::incremental
nix develop -c cargo test -p behavior-store --test incremental_validation --test snapshot_reuse
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test incremental_validation
python3 -m unittest discover -s specs/015-incremental-validation-semantics/benchmarks -p test_tcup_workload.py
```

The Core model and Store oracle/control modules are already privately registered under cfg(test). Check actual nonzero collection and explicit ignored timing tests. New final timings and isolated native build steps are documented in [benchmarks/README.md](benchmarks/README.md); the old reopen-only comparator is historical evidence. Required final gates remain the unchanged owning scripts/gates.sh in pinned Nix.
