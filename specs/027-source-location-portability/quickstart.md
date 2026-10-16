# Quickstart: Validate Source Location Portability

Run from `/home/kalle/repos/behavior-ir-core-027` on `027-source-location-portability`. Read [source-locations.md](contracts/source-locations.md) for authored input/output expectations and [validation.md](contracts/validation.md) for the full matrix. The focused tests below are implementation outputs. Actual commands/statuses are retained under evidence/; final frozen-source acceptance is recorded separately.

## Prerequisites and resources

Use the pinned Nix environment (Rust/Cargo 1.98.1, Python 3.13, Z3 for full gates). Confirm source SHA/status and adequate space before building. Keep build products and temporary consumer copies in task-owned tmpfs storage; do not delete other work or change gates.

```bash
cd /home/kalle/repos/behavior-ir-core-027
git status --short
git rev-parse HEAD
df -h / /dev/shm

export CARGO_TARGET_DIR=/dev/shm/core027-plan-target
export TMPDIR=/dev/shm/core027-tmp
export CARGO_BUILD_JOBS=2
export CARGO_INCREMENTAL=0
export CARGO_PROFILE_DEV_DEBUG=0
export CARGO_PROFILE_TEST_DEBUG=0
export RUST_TEST_THREADS=2
export BEHAVIOR_BIN="$CARGO_TARGET_DIR/debug/behavior"
mkdir -p "$CARGO_TARGET_DIR" "$TMPDIR"
```

Use an existing target only after checking ownership/source and available tmpfs space. A binary's existence does not prove CLI provenance. The planning target contains a baseline library probe, not a validated candidate CLI; build the matching candidate CLI before final consumer acceptance.

## Reproduce the recorded baseline

[baseline-run.json](evidence/baseline-run.json) establishes 30 actual facade rows on `a24b65d`: 26 source-contract failures, 30 successful VALUE 42 results and 30 matching facts-only replays. Rerun the retained probe against the selected checkout without editing production code:

```bash
nix develop -c python3 - <<'PY'
from pathlib import Path
import shutil, subprocess, tempfile
root = Path('/home/kalle/repos/behavior-ir-core-027')
run = Path(tempfile.mkdtemp(prefix='core027-baseline-', dir='/dev/shm'))
(run/'src').mkdir()
(run/'Cargo.toml').write_text(
    '[package]\nname="core027-plan-probe"\nversion="0.0.0"\nedition="2024"\n'
    '[workspace]\n[dependencies]\n'
    f'behavior-engine={{path="{root}/crates/behavior-engine"}}\nserde_json="1"\n')
shutil.copyfile(root/'Cargo.lock', run/'Cargo.lock')
shutil.copyfile(root/'specs/027-source-location-portability/evidence/probes/baseline.rs', run/'src/main.rs')
with (run/'observations.json').open('w') as out:
    result = subprocess.run(['cargo','run','--offline','--quiet','--manifest-path',str(run/'Cargo.toml')], stdout=out)
print('Actual probe status:', result.returncode, 'observations:', run/'observations.json')
raise SystemExit(result.returncode)
PY
```

Expected on the baseline: status **1**, demonstrating missing source behavior. After implementation the same assertions should give status **0**. A compiler failure, panic before JSON output, missing dependency or missing fixture is a setup failure, not the expected RED. This scalar probe does not replace Rescale, diagnostic, Store or historical controls.

## Test-first focused implementation

Before production edits, author/review the new assertions and record their actual relevant failures for mixed-source roots, relative filenames/raw spellings, explicit roots and omitted Rescale recursion. Root absence and discarded-node tests must not infer success from an empty serialized module alone. Expected paths are independent authored contract data.

```bash
nix develop -c cargo test -p behavior-core --lib source_locations
nix develop -c cargo test -p behavior-core --test source_location_portability
nix develop -c cargo test --manifest-path /home/kalle/repos/behavior-ir-core-027/consumer/Cargo.toml --test source_location_portability
```

The implementation must add private root tests under the `source_locations` selection and both named integration targets. Check the reported selected-test counts; a command that runs zero tests does not establish RED or GREEN. Retain commands, source/input hashes, logs and statuses before correction, then rerun the same assertions afterward.

Expected corrected behavior includes exact preservation of `pkg/model.py`, `./pkg/model.py`, `../shared/model.py`, `pkg//model.py` and all four markers, even with explicit roots. Absolute `/repo/app/model.py` and `/repo/lib/model.py` become `app/model.py` and `lib/model.py` automatically. All nested final-IR locations participate, including Rescale.arg; discarded Nodes and domain literals do not.

The public consumer constructs once per case, checks exact results and useful diagnostics, and demonstrates fresh Core and Store replay under each profile with an unchanged Store head. Assert construction provenance independently of canonical v2 record equality.

## Reuse identity and historical checks

```bash
nix develop -c cargo test -p behavior-core --test builder --test hash_properties --test read_admission --test read_soundness --test read_goldens --test record_validation --test read_replay --test read_replay_integrity --test strict_profile_replay --test replay_evidence_authority
nix develop -c cargo test -p behavior-store --test strict_profile_replay
```

Expected: applicable existing tests pass without changing archived records or captured expectations. Legacy provenance remains identity-bearing; v2 diagnostics remain detached; historical same-hash/different-module representation remains refused. Check protected bytes:

```bash
python3 - <<'PY'
from pathlib import Path
import hashlib, json
root = Path('/home/kalle/repos/behavior-ir-core-027')
files = json.loads((root/'specs/027-source-location-portability/evidence/protected-baseline.json').read_text())['files']
changed = [p for p,h in files.items() if hashlib.sha256((root/p).read_bytes()).hexdigest() != h]
assert not changed, changed
print(len(files), 'original fixture/schema/API/lock/toolchain files unchanged')
PY
```

Do not refresh historical goldens. Explain intended fresh path/record differences through the source contract and migration examples.

## Final implementation acceptance

After focused checks and audit, freeze a clean committed candidate. Retain final receipts outside frozen source; run the unchanged complete suite, then exact-Git consumer with the matching CLI:

```bash
nix develop -c scripts/gates.sh
# After the tested candidate is pushed and its actual full SHA is recorded:
nix develop -c scripts/check-consumer.sh --rev "$CORE027_CANDIDATE_SHA"
```

The second command must use the synchronous actual-manifest/lock capture procedure in [validation.md](contracts/validation.md), preserving the real Cargo status. `--rev` changes dependency resolution; it does not independently establish CLI/harness provenance. The ordinary command alone is not the complete receipt. Verify all Core library sources resolve to the full candidate SHA, its CLI matches that source, and source/input/tool hashes remain unchanged. Record reviewed completion metadata separately from the tested implementation.

This guide describes acceptance commands; the external candidate receipt records whether they actually ran. Static release builds, version/tag/publication and issue closure remain separate operations.
