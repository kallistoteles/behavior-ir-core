# Reproduce the Core 031 investigation

The measured campaign and its limits are in [investigation.md](investigation.md) and [baseline manifest](evidence/baseline/campaign-004/manifest.json). This is research tooling for the recorded x86_64 Linux profile. It adds no Core runtime requirement or release process.

Use a fresh ignored run/build directory and the locked Nix environment. Installation, download and compilation are outside native timing. Do not remove other worktrees or user work to obtain space. Preparation requires 2 GiB free, enforces a 300-second/8-GiB-AS child profile and retains complete inputs, source and executable copies. The initial 120-second timeout remains separately archived.

```bash
cd /home/kalle/repos/behavior-ir-core-031
nix develop
export CARGO_BUILD_JOBS=3 CARGO_INCREMENTAL=0
export CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0
export CARGO_PROFILE_DEV_OPT_LEVEL=1 CARGO_PROFILE_TEST_OPT_LEVEL=1
export RUST_TEST_THREADS=1
export CORE031_BUILD="$PWD/target/core031-build"
export CORE031_DIAG="$PWD/target/core031-diagnostic"
export CORE031_RUN="$PWD/target/core031-reproduction"
# These paths must be fresh or purpose-specific; choose a filesystem with space.
df -h .
```

## Focused checks and required gate

```bash
python3 -m unittest discover -s specs/031-scalable-execution-evidence/benchmarks -p 'test_*.py'
CARGO_TARGET_DIR="$CORE031_BUILD" cargo test --locked -p behavior-store --test research031 --test research031_queries
CARGO_TARGET_DIR="$CORE031_BUILD" cargo test --locked -p behavior-store --features validation-work --test research031_queries
CARGO_TARGET_DIR="$CORE031_BUILD" cargo test --locked -p behavior-store --lib --features validation-work research031
CARGO_TARGET_DIR="$CORE031_BUILD" cargo test --locked --manifest-path consumer/Cargo.toml --test research031_history --test research031_recovery
CARGO_TARGET_DIR="$CORE031_BUILD" scripts/gates.sh
```

Expect nonempty tests, cardinality 1000 ALLOW/1001 DENY, full-reference equality, exact counter calibration, native query/error/Option/capture cases, finite-map omission/stale/duplicate controls, whole-event history and separate-process lost-ack recovery. Deliberate red/mutation evidence is retained under `evidence/`; it is distinct from an accidental gate failure. The final gate list is unchanged.

## Build distinct binaries before collection

```bash
CARGO_TARGET_DIR="$CORE031_BUILD" cargo build --locked --release -p behavior-store --example execution_evidence_bench
CARGO_TARGET_DIR="$CORE031_DIAG" cargo build --locked --release -p behavior-store --features validation-work --example execution_evidence_bench
CARGO_TARGET_DIR="$CORE031_DIAG" cargo test --locked --release -p behavior-store --lib --features validation-work --no-run --message-format=json > target/core031-reference-build.jsonl
export CORE031_REFERENCE_BIN="$(python3 - <<'PY'
import json
for line in open('target/core031-reference-build.jsonl'):
    if line.startswith('{'):
        row=json.loads(line)
        if row.get('reason')=='compiler-artifact' and row.get('target',{}).get('name')=='behavior_store' and row.get('executable'):
            print(row['executable'])
PY
)"
```

The reference is a private native libtest route, not a public production flag. Production-like binaries have null work counters; diagnostics are a separate build/group. Verify the actual CPU allocation fits `profile.json` (measurement CPU 7, orchestration CPU 0); change the declared profile before a new campaign on another host rather than silently reusing it.

## Freeze, collect and validate a fresh campaign

```bash
mkdir -p "$CORE031_RUN"
python3 specs/031-scalable-execution-evidence/benchmarks/prepare.py --help
python3 specs/031-scalable-execution-evidence/benchmarks/run.py --help
python3 specs/031-scalable-execution-evidence/benchmarks/prepare.py \
  --output "$CORE031_RUN/reference" \
  --production-binary "$CORE031_BUILD/release/examples/execution_evidence_bench" \
  --diagnostic-binary "$CORE031_DIAG/release/examples/execution_evidence_bench" \
  --reference-binary "$CORE031_REFERENCE_BIN"
python3 specs/031-scalable-execution-evidence/benchmarks/run.py \
  --manifest "$CORE031_RUN/reference/manifest.json" --output "$CORE031_RUN/production" \
  --binary "$CORE031_RUN/reference/binaries/production-like" --strategy baseline --mode production-like
python3 specs/031-scalable-execution-evidence/benchmarks/run.py \
  --manifest "$CORE031_RUN/reference/manifest.json" --output "$CORE031_RUN/diagnostic" \
  --binary "$CORE031_RUN/reference/binaries/diagnostic" --strategy baseline --mode diagnostic
python3 - "$CORE031_RUN/reference/manifest.json" "$CORE031_RUN/production/rows.jsonl" <<'PY'
import json,sys
sys.path.insert(0,'specs/031-scalable-execution-evidence/benchmarks')
import artifacts as a
import run as r
manifest=a.load(sys.argv[1])
rows=[json.loads(line) for line in open(sys.argv[2])]
print(json.dumps(r.assess_rows(rows,manifest,'baseline','production-like'),sort_keys=True))
PY
```

Expect 32 frozen forced-full cases, 96 production observations and 32 diagnostics, all exact-byte matches with independent outcomes/counts/positions and nonzero drain. Raw logs/rows and manifest-bound append-only statuses are retained. A failed or partial run cannot pass coverage; choose a new output directory for a repeat. All builds finish before measurements, and no other research benchmark overlaps the measurement CPU.

A source/protocol change creates a separately identified campaign. The recorded baseline uses archived collector/native version 004, while later independent tests and packing/input-retention helpers are separately identified. A new reproduction freezes its own exact hashes; it does not pretend to have the original binary identity.

## Bounded smoke and lossless artifact reconstruction

On this recorded workspace, the following actual command passed and its output is in [quickstart.txt](evidence/quickstart.txt):

```bash
python3 specs/031-scalable-execution-evidence/benchmarks/smoke.py --help
python3 specs/031-scalable-execution-evidence/benchmarks/smoke.py \
  --base-manifest /data/core028/core031-target/campaign-004/manifest.json \
  --output /data/core028/core031-target/quickstart-smoke-002 \
  --portable-index specs/031-scalable-execution-evidence/evidence/portable/index.json
```

Use your newly prepared reference manifest on another workspace and a fresh output. Expected: one tiny full reference, three exact production comparisons, final E count 5/history position 3, and recovery of the exact 1,918,998-byte published population-128 artifact. This is a smoke, not full scaling coverage or a speedup result. The executed retained run is `quickstart-smoke-001`; `002` above avoids overwriting it.

[portable/index.json](evidence/portable/index.json) binds gzip containers to original raw hashes/lengths and the frozen manifest. The reader checks the evidence root, container integrity, bounded decompression, CRC and original bytes. Its default per-artifact bound is 512 MiB, an explicit research-reader resource bound rather than a Core capacity claim. The source archive contains exact measured input bytes; restore it over a fresh checkout of its recorded `source_commit`, preserving the listed executable paths. Compiled binaries remain retained in the original run and can be rebuilt/frozen under new identities elsewhere. Container hashes do not establish mathematical or governance authority.

New runs can be packaged without changing Core records:

```bash
python3 specs/031-scalable-execution-evidence/benchmarks/package_evidence.py \
  --manifest "$CORE031_RUN/reference/manifest.json" --output "$CORE031_RUN/portable"
```

## Evidence review

Read `evidence/us1.md` through `us5.md`, the cost model, source/correspondence/proof-scope matrix, compatibility audit and final completion index. Phase medians are not additive cycle measurements. Peak memory includes audit retention; Store reopen is not cold disk/index reconstruction; durable recovery does not prove power-loss/device honesty. External formalizations were not independently kernel-replayed. Conditional written arguments and bounded tests do not certify a complete Core optimization.

No tag, release, new Core format, persistent cache authority, lifecycle capability or external/private application review is authorized by this research.
