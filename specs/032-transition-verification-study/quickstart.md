# Validation guide: Core 032

The study is implemented in the isolated `experiments/transition-study032` workspace. Core runtime semantics, its dependency graph and published formats are unchanged. This guide uses the actual CLI; retained results are linked separately from commands for a new run. Never overwrite an existing result directory.

## Environment and preparation

The current Core worktree is `/home/kalle/repos/behavior-ir-core-031`, on branch `031-scalable-execution-evidence`; `.specify/feature.json` selects Feature032. The isolated shell imports the existing repository lock: Rust1.98.1, Python3.13 and Lean4.30.0. Installation/download is outside measurement. Nova0.76.0 uses the documented Cargo-only portability overlay; all upstream Rust source is preserved.

```bash
cd /home/kalle/repos/behavior-ir-core-031
df -h . /data
git status --short
nix-shell experiments/transition-study032/shell.nix
export CARGO_TARGET_DIR=/data/core028/core031-target
export CARGO_BUILD_JOBS=3 CARGO_INCREMENTAL=0
export CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0
export CARGO_PROFILE_DEV_OPT_LEVEL=1 CARGO_PROFILE_TEST_OPT_LEVEL=1
export CARGO_PROFILE_RELEASE_DEBUG=0 RUST_TEST_THREADS=1
export CORE032_NEW="$PWD/target/core032-new-run"
```

Choose a new `CORE032_NEW` for every run. Measurements require CPU7 and CPU0 availability, at least2GiB free disk and the frozen limits in [profile.json](benchmarks/profile.json). OS file cache is not flushed. A fresh process/workspace excludes earlier accepted results; installed dependencies are available. Do not overlap timed campaigns or run unrelated heavy checks against the measurement CPU.

## Bounded correctness and proof checks

Run within the shell above:

```bash
python3 specs/032-transition-verification-study/benchmarks/study.py --help
python3 specs/032-transition-verification-study/benchmarks/study.py proofs \
  --output "$CORE032_NEW/logical-proofs"
python3 -m unittest discover \
  -s specs/032-transition-verification-study/benchmarks -p 'test_*.py'
cargo test --locked --offline \
  --manifest-path experiments/transition-study032/Cargo.toml --tests -- --test-threads=1
cargo test --locked -p behavior-store --lib research032 -- --nocapture
cargo test --locked -p behavior-store --test research032 --test research032_equivalence
cargo test --locked --manifest-path consumer/Cargo.toml --test research032_recovery
```

The proof command checks14 named logical targets, structured transitive axiom dependencies and fresh kernel replay. Only `propext`, `Classical.choice`, `Quot.sound` are allowed. The fresh process uses the same pinned Lean kernel implementation. It is not independent verification of Rust/Core/R1CS correspondence. The Python proof-integrity suite intentionally constructs rejected proofs; successful tests mean those controls were rejected. These checks take several minutes.

Native tests cover actual Core outcomes, 1000/1001 cardinality, reference integrity, lifetime identity reuse, context/query coverage, same-value writes, errors/lazy branches, canonical command multiplicity, actual DAG expansion and hostile witnesses. Ordinary Cargo tests leave two expensive actual-Nova controls ignored until supplied with a generated proof/independently derived parameters; the recovery command below executes them explicitly.

## Build and freeze a new comparison

```bash
# Dependency installation is outside measurement; needed on a new machine.
cargo fetch --locked --manifest-path experiments/transition-study032/Cargo.toml
python3 specs/032-transition-verification-study/benchmarks/build_tools.py \
  --output "$CORE032_NEW/build"
```

This builds optimized tools and records their exact paths/hashes. Use that report to freeze a comparative manifest (the subprocess argument array avoids shell interpolation):

```bash
python3 - "$CORE032_NEW" <<'PYCODE'
import json, pathlib, subprocess, sys
base = pathlib.Path(sys.argv[1])
tools = json.loads((base / 'build/report.json').read_text())['tools']
command = [sys.executable, 'specs/032-transition-verification-study/benchmarks/study.py',
           'prepare', '--scope', 'comparative', '--parameter-mode', 'first-use',
           '--binary', tools['native']['path'], '--manifest', str(base / 'campaign/manifest.json')]
for role in ('reference', 'nova', 'consumer', 'proof_controls', 'proof_consumer'):
    command += ['--' + role.replace('_', '-'), tools[role]['path']]
subprocess.run(command, check=True)
PYCODE
python3 specs/032-transition-verification-study/benchmarks/study.py run \
  --manifest "$CORE032_NEW/campaign/manifest.json" \
  --output "$CORE032_NEW/campaign" --phase all
```

Preparation generates and freezes genuine Core inputs outside timing, plus sources, tools, contracts, cases, hardware and resource limits. The native matrix contains16 deduplicated points, three strategies, two output profiles and three repetitions:288 attempts. The proof matrix contains C=1/4/16 and H=1/2/8; C1/H2 has three first-use and three explicitly separate reuse pairs. This is a long experiment, not a smoke command. Every resource failure is retained.

The forced-full reference and A/B all return the same measured suffix after real prefix preparation. A maintains checked views and still pays full J/Core evidence costs. B runs producer and independent whole-history checker in distinct processes. The `study` profile actually transports a shared DAG and performs complete expansion; it does not merely estimate compressed size.

## Early small accumulated proof only

For a new bounded proof run instead of the full comparison:

```bash
python3 specs/032-transition-verification-study/benchmarks/study.py prepare \
  --scope proof-smoke --parameter-mode first-use \
  --binary "$CARGO_TARGET_DIR/release/nova_study" \
  --case specs/032-transition-verification-study/benchmarks/inputs/proof-c1-h2.json \
  --manifest "$CORE032_NEW/early-first.json"
python3 specs/032-transition-verification-study/benchmarks/study.py proof-smoke \
  --manifest "$CORE032_NEW/early-first.json" --output "$CORE032_NEW/early-first-runs"
python3 specs/032-transition-verification-study/benchmarks/study.py prepare \
  --scope proof-smoke --parameter-mode reuse \
  --binary "$CARGO_TARGET_DIR/release/nova_study" \
  --case specs/032-transition-verification-study/benchmarks/inputs/proof-c1-h2.json \
  --parameters-from "$CORE032_NEW/early-first-runs/index.json" \
  --manifest "$CORE032_NEW/early-reuse.json"
python3 specs/032-transition-verification-study/benchmarks/study.py proof-smoke \
  --manifest "$CORE032_NEW/early-reuse.json" --output "$CORE032_NEW/early-reuse-runs"
```

Each mode performs three fresh producer/consumer pairs. The early sampler reports process phases; it does not retain a per-pair contiguous whole interval. The separately frozen `timed-reuse-001` group supplies that metric for the final study; do not infer it by summing phase medians. First-use independently derives parameters inside both budgets; reuse loads and validates the exact consumer-derived parameter artifact and still verifies every new proof. The output manifest/index is input provenance, never prior proof authority.

An explicit additional fresh consumer can be run against an actual retained proof:

```bash
python3 specs/032-transition-verification-study/benchmarks/study.py verify \
  --manifest "$CORE032_NEW/early-first.json" \
  --proof "$CORE032_NEW/early-first-runs/case0-rep0/proof.bin" \
  --output "$CORE032_NEW/additional-consumer"
```

Acceptance is actual Nova verification **and** exact Core bridge agreement. The recursive proof is not compressed. The circuit does not compute Core MuHash/canonical history: the full independent Core bridge is mandatory and prevents a combined succinct-history claim. Proof validity supplies neither missing data nor authorization.

## Reconstruction, assessment and regression

```bash
python3 specs/032-transition-verification-study/benchmarks/study.py recover \
  --manifest "$CORE032_NEW/campaign/manifest.json" \
  --output "$CORE032_NEW/campaign/recovery"
python3 specs/032-transition-verification-study/benchmarks/run_checks.py \
  --scope final --output "$CORE032_NEW/checks"
scripts/gates.sh
git diff --check
```

In the retained campaign002, `recover` returns nonzero because the N8192 eight-creation anchor was not produced under the native budget. Its raw failure/unavailable record is preserved. The separate frozen N128/N8192 one-event cold protocol and `recovery-validation.json` establish the stated independent cold-rebuild scope. They do not turn the unavailable primary case into a success.

Recovery executes public persisted-before-acknowledgement/lost-ack/conflict/replay/command-paging controls, real proof-wrapper mutations, checkpoint continuation, bounded asynchronous lag and cold view reconstruction. Missing support remains distinct from invalid proof or business refusal. A pending proof cannot cover a later native head.

The final assessor expects the feature evidence layout, including cost model, dossier, compatibility audit and portable consumer report. Its actual command is:

```bash
python3 specs/032-transition-verification-study/benchmarks/study.py assess \
  --manifest specs/032-transition-verification-study/evidence/campaign-002/manifest.json \
  --output "$CORE032_NEW/assessment.json"
```

It must fail if mandatory evidence is absent. A candidate no-go does not waive a missing experiment. This workflow does not authorize commits, pushes, publication or production adoption.

## Retained execution provenance

- [Optimized final tool build](evidence/build-release-004/report.json).
- [Checked logical theorems and fresh replay](evidence/native-proofs-006/report.json).
- [Actual premise mutations](evidence/red-green/proof-mutations/index.json).
- [Corrected early first-use runs](evidence/proof-smoke/first-use-002-runs/index.json) and [reuse runs](evidence/proof-smoke/reuse-002-runs/index.json).
- [Early001 timing qualification](evidence/proof-smoke/early-001-protocol-annotation.json): proofs valid; controller-affinity protocol nonconforming and performance excluded.
- [Superseded campaign amendment](evidence/campaign-001/amendment.json): incomplete old B implementation, preserved unchanged.
- [Current frozen comparison](evidence/campaign-002/manifest.json): campaign completeness is determined by retained indexes and final assessment, never by this link's existence.

## Recompute the derived lifecycle analysis

The raw inputs remain unchanged; select a fresh output path:

```bash
python3 specs/032-transition-verification-study/benchmarks/lifecycle_analysis.py \
  --output "$CORE032_NEW/lifecycle-costs.json"
```

The full matrix, supplementary timed reuse and cold-recovery indexes must already exist. The first failed root gate is retained in `evidence/gates/`; the final unchanged rerun is `evidence/gates-002/`. Its repair changes only test-module visibility/import wiring, documented by `test-wiring-amendment.json`, and preserves all established fixture bytes.
