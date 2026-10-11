# Audit execution and validation guide

**Feature**: [016 specification](spec.md)
**Status**: Future execution guide; planning has not run these checks or completed
the audit.

The current outputs are the plan, research, work-product model, coordination and
evidence contracts, and this guide. The eleven reports required by FR-040 are later
audit outputs. Follow [the evidence contract](contracts/audit-evidence.md),
[parallel-work contract](contracts/parallel-work.md) and
[data model](data-model.md) when recording results; these conventions are not Core
language or public API contracts.

## 1. Prepare an unchanged baseline

Prerequisites: an existing Core checkout with the published release commit, Git,
Nix and sufficient disk space. Start from this owning repository's root. Do not
use the ecosystem checkout or an experimental dependency override.

Run the following in one shell so its task-specific variables remain available:

```bash
set -eu
audit_repo=$(git rev-parse --show-toplevel)
audit_feature="$audit_repo/specs/016-core-soundness-audit"
audit_revision=1e286ebcf1d61117320c57df155fa1ef9397e880
audit_tree=6a9f9879a9fece5a001ca30ace483a8cde1addd9
audit_tmp=$(mktemp -d "${TMPDIR:-/tmp}/behavior-core-016.XXXXXX")
audit_baseline="$audit_tmp/baseline"
git status --short
git remote -v
git cat-file -e "$audit_revision^{commit}"
git worktree add --detach "$audit_baseline" "$audit_revision"
test "$(git -C "$audit_baseline" rev-parse HEAD)" = "$audit_revision"
test "$(git -C "$audit_baseline" rev-parse 'HEAD^{tree}')" = "$audit_tree"
test -z "$(git -C "$audit_baseline" status --porcelain --untracked-files=all)"
```

Stop on an unsuccessful identity or cleanliness assertion. Fetch the exact
published commit if it is absent; do not substitute current main. The audit
branch's starting commit `5949cb111cd6c5af34b0fc9083e78810df450fce` has the same
tree, but the release revision remains the baseline identity.

Preserve unrelated original-checkout changes. Build products under ignored
`target/` do not change the source baseline; supplemental source/test changes do.

## 2. Capture provenance and environment

COORD owns `evidence/baseline.json`, `evidence/environment.json`,
`evidence/coverage.json` and `evidence/assignments.json`. Populate their defined
fields from captured facts using the linked contracts, without inventing missing
version, coverage or success values. The examples below capture raw inputs for
those manifests; they do not replace them.

```bash
audit_prepare="$audit_feature/evidence/runs/COORD/preparation"
mkdir -p "$audit_feature/evidence/runs/COORD"
mkdir "$audit_prepare"
cd "$audit_baseline"
git rev-parse HEAD 'HEAD^{tree}' > "$audit_prepare/source-identity.txt"
git status --porcelain --untracked-files=all > "$audit_prepare/source-status.txt"
sha256sum Cargo.lock consumer/Cargo.lock flake.lock rust-toolchain.toml \
  > "$audit_prepare/lock-digests.txt"
audit_rc=0
nix develop -c rustc --version > "$audit_prepare/rustc-version.txt" \
  2> "$audit_prepare/rustc-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_prepare/rustc-exit.txt"
audit_rc=0
nix develop -c cargo --version > "$audit_prepare/cargo-version.txt" \
  2> "$audit_prepare/cargo-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_prepare/cargo-exit.txt"
audit_rc=0
nix develop -c python3 --version > "$audit_prepare/python-version.txt" \
  2> "$audit_prepare/python-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_prepare/python-exit.txt"
audit_rc=0
nix develop -c z3 --version > "$audit_prepare/z3-version.txt" \
  2> "$audit_prepare/z3-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_prepare/z3-exit.txt"
audit_rc=0
nix develop -c cargo metadata --locked --no-deps --format-version 1 \
  > "$audit_prepare/workspace-metadata.json" \
  2> "$audit_prepare/metadata-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_prepare/metadata-exit.txt"
```

Record command outcomes and stderr according to the evidence contract, including
environment-resolution failures. Identity/cleanliness failures remain hard stops;
captured tool failures do not exit the shell or silently stop unrelated collection.
Use a fresh run directory for each repeat; refuse to overwrite earlier raw evidence.
The pinned toolchain is Rust 1.98.1, edition
2024. Nix and Cargo locks select the dependency graph; record actual executable
versions rather than copying historical logs. Also capture platform, relevant
non-secret environment settings and the resolved `BEHAVIOR_Z3` path. Never record
credentials or unrelated environment secrets.

Use package metadata to evaluate all-feature coverage. If no package feature
changes the applicable build, document that reason instead of mechanically
repeating the same full suite. Miri, sanitizers or fuzzing are supplemental only
when an identified risk warrants them; no automatic new dependency is required.

## 3. Reconcile inventory, then assign parallel review

Before specialist conclusions, reconcile the construct/version inventory,
candidate G1–G12 obligations, public facade surface, identity domains, commit/replay
paths and prior leads. Missing mathematical meaning becomes an open obligation or
finding, not a meaning inferred from the implementation.

The seven logical lanes are MODEL, VERIFY, IDENTITY, PERSIST, TRUST, INCREMENTAL
and QUALITY; COORD integrates shared ledgers and the final assessment. With four
available agent slots, run at most three workers and the coordinator, rotating
completed assignments into later lanes. Read-only inspection can proceed while a
single coordinator-scheduled runner collects tests or executes gates.

Each file and directory has one assigned writer. Lane-owned draft finding and
obligation fragments go in `evidence/fragments/<LANE>/`; raw runs go in
`evidence/runs/<LANE>/`; independent notes go in
`evidence/reviews/<REVIEWER>/`. Use stable namespaced IDs and the handoff rules in
the parallel-work contract. Cross-component claims need a second reviewer who
checks both sides' premises. MODEL retains ownership of the global-invariant
report; COORD integrates canonical findings and the proof-obligation ledger.
Workers submit amendments through their owned fragments instead of editing those
shared ledgers.

## 4. Collect tests and inspect focused existing evidence

Schedule collection/build commands serially. They may require an initial compile;
they are not a substitute for the full required gate. Save stdout, stderr, exit
status and collection/ignored counts in distinct run records.

```bash
audit_focus="$audit_feature/evidence/runs/COORD/focused"
mkdir "$audit_focus"
audit_rc=0
nix develop -c cargo test --workspace -- --list \
  > "$audit_focus/workspace-list.txt" 2> "$audit_focus/workspace-list-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_focus/workspace-list-exit.txt"
audit_rc=0
nix develop -c cargo test --manifest-path consumer/Cargo.toml -- --list \
  > "$audit_focus/consumer-list.txt" 2> "$audit_focus/consumer-list-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_focus/consumer-list-exit.txt"
audit_rc=0
nix develop -c cargo test -p behavior-store --test incremental_validation \
  nonlocal_creation_preserves_014_refusal_boundary -- --exact \
  > "$audit_focus/nonlocal.txt" 2> "$audit_focus/nonlocal-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_focus/nonlocal-exit.txt"
audit_rc=0
nix develop -c cargo test -p behavior-store --lib \
  oracle_detects_unchanged_nonlocal_violation \
  > "$audit_focus/oracle.txt" 2> "$audit_focus/oracle-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_focus/oracle-exit.txt"
audit_rc=0
nix develop -c cargo test -p behavior-core --lib incremental_proof \
  > "$audit_focus/proof.txt" 2> "$audit_focus/proof-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_focus/proof-exit.txt"
```

The non-local creation characterization and independent full-child oracle are
prior leads. A passing characterization confirms its asserted existing behavior;
it does not prove ordinary-transition validity or close an audit finding. Confirm
that each selected test was actually collected; a zero-test filtered run provides
no execution evidence. Inventory ignored tests explicitly rather than counting
them as passing. Coverage review still includes every area in FR-034, not just
these focused examples.

Low-cost boundary checks can be run separately while inspecting their contracts:

```bash
audit_rc=0
nix develop -c scripts/check-public-surface.sh \
  > "$audit_focus/surface.txt" 2> "$audit_focus/surface-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_focus/surface-exit.txt"
audit_rc=0
nix develop -c scripts/check-boundary.sh \
  > "$audit_focus/boundary.txt" 2> "$audit_focus/boundary-stderr.txt" || audit_rc=$?
printf '%s\n' "$audit_rc" > "$audit_focus/boundary-exit.txt"
```

## 5. Run all canonical gates with an honest exit result

Only one full-gate runner is active. Avoid concurrent heavy build/test suites and
resource interference. Preserve canonical scripts, lockfiles and source revision;
selected checks, private overrides or changed refusal behavior cannot replace
the required gate.

```bash
cd "$audit_baseline"
audit_gate_run="$audit_feature/evidence/runs/COORD/baseline-gates"
mkdir "$audit_gate_run"
printf '%s\n' 'nix develop -c scripts/gates.sh' > "$audit_gate_run/command.txt"
audit_gate_rc=0
nix develop -c scripts/gates.sh \
  > "$audit_gate_run/stdout.txt" 2> "$audit_gate_run/stderr.txt" || audit_gate_rc=$?
printf '%s\n' "$audit_gate_rc" > "$audit_gate_run/exit-status.txt"
git status --porcelain --untracked-files=all > "$audit_gate_run/source-status.txt"
```

A nonzero exit remains a failure in the run record. Because the script stops at
the first failed stage, subsequent stages are not executed, not passed. Inspect
the captured result and source status before continuing; do not repair production
code to make discovery evidence green. Hash the captured files and finalize the
run metadata as required by the evidence contract.

COORD must then schedule every remaining feasible stage with its exact unchanged
command from [the baseline gate script](../../scripts/gates.sh), the same source
and environment, and separate stdout/stderr/exit records using the capture pattern
above. Prerequisite-blocked or unavailable stages remain explicit gaps. Follow-up
success never replaces or relabels the original failed canonical run as passing.

The gate covers format, lint, workspace tests/build, determinism, repository
boundary, public surface, external consumer, workflows, terminology and script
tests. Inspect solver-check coverage: a missing-Z3 warning and skipped checks are
a gap even if the script emits a success marker. Optional exact-public-revision
consumer validation is `nix develop -c scripts/check-consumer.sh --rev "$audit_revision"`
when it answers an additional named obligation; it is not a mandatory redundant
run. Required consumer evidence already comes from the unchanged gate.

## 6. Reproduce gaps in separate overlays

New tests, fake backends or instrumentation use disclosed separate worktrees
based on the exact baseline. Record patch/source identities, whether only tests
changed, comparator independence and shared assumptions. Preserve reproduction
inputs and outputs even when a property assertion intentionally fails.

Keep those outcomes separate from unmodified baseline-gate results. A failed
property test may establish a counterexample; a passing characterization may
establish that the defect exists. Neither authorizes a production fix. Any newly
implemented deterministic audit helper requires meaningful red-before-green
evidence under the constitution; tests cannot manufacture past test-first
compliance. See the evidence contract for overlay and result distinctions.

## 7. Review and complete the audit

Completion requires all eleven FR-040 reports, reconciled inventories and G1–G12,
classified evidence-backed findings, independently reviewed cross-boundary claims,
and the eleven-area assessment matrix. Each conclusion traces semantics →
implementation invariant → executable location → qualified evidence. Review any
missing or unavailable check as an explicit obligation with its verdict impact.

The expected outcome is an honest qualified assessment, including `NOT YET SOUND`
when unresolved S0–S3 findings or blocking evidence remain. Completing the audit
does not require a positive verdict. Do not publish a provisional soundness claim,
silently change semantics or begin remediation/cleanup during discovery. Group
proposed root-cause corrections separately with compatibility and versioning
consequences.

Retain temporary baseline/overlay worktrees while evidence is being reviewed.
Once preservation is confirmed, remove only the exact owned unchanged baseline
with `git -C "$audit_repo" worktree remove "$audit_baseline"`; do not force removal
or broadly clean unrelated work.
