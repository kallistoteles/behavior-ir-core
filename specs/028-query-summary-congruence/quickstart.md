# Validation Quickstart

Run this guide against the implementation candidate. Required targets and frozen capture fixtures are present; execution receipts, rather than this guide, establish acceptance. Use a Core worktree and keep outputs separate from `evidence/`. The original C19 stays blocked until the separate corrected-release adoption gate.

## 1. Enter the pinned environment and select output storage

From the Core repository root, enter `nix develop` or an equivalent environment with Rust 1.98.1, rustfmt/clippy, Z3 4.16.0 and Python/jsonschema. Check available build space before a workspace build; choose an existing sufficiently large filesystem for `CARGO_TARGET_DIR` if necessary. Planning does not delete build caches or run a build.

```bash
nix develop
```

Inside that shell:

```bash
test -f crates/behavior-verify/Cargo.toml
rustc --version
z3 --version
df -h .
export CORE028_EVIDENCE="$PWD/specs/028-query-summary-congruence/evidence"
export CORE028_OUTPUT="$(mktemp -d -p "${TMPDIR:-/tmp}" core028-validation.XXXXXX)"
export RUST_TEST_THREADS=1
```

Use different Cargo target directories for the released baseline and the candidate. Cargo artifacts from different worktrees must not be shared: path/fingerprint reuse can run an old library despite changed source. The implementation used `/data/core028/baseline-target` and `/data/core028/target`, with temporary files and output on the same adequately sized volume. If repository scripts use `$PWD/target`, point that ignored path to the candidate target directory.

`RUST_TEST_THREADS=1` avoids an existing fake-solver fork/write race. Final validation may use `CARGO_PROFILE_TEST_OPT_LEVEL=1` to keep the unchanged thousand-transition replay properties practical; record that flag. Assertions, case counts and solver budgets remain unchanged.

For a disk-constrained full rebuild, the review acceptance also used `CARGO_INCREMENTAL=0`, `CARGO_PROFILE_DEV_DEBUG=0`, `CARGO_PROFILE_TEST_DEBUG=0` and `CARGO_BUILD_JOBS=4`. These reduce incremental/debug storage and bound build concurrency; they do not disable debug assertions, change test coverage or increase solver budgets. Record the selected flags in the receipt.

Keep the supplied evidence immutable. The six artifact digests are recorded in `baseline.json`; additional released semantic identities are in `semantic-identities.json`.

## 2. Preserve old governed history and establish the semantic regression

Before changing verifier 0.9.0, capture genuine signed action record-0.8 and v2 migration histories with required full proofs using the unchanged pinned 0.14.0 public Rust Store harness. Preserve complete genesis/backend/events, evidence and original policy/context, source/binary digests and baseline replay/exact-recovery outcomes. The CLI does not provide Store commit commands. Do not relabel new proofs as old ones. This capture is a prerequisite for the version bump. The public harness is `consumer/examples/capture_proof09_history.rs`; the immutable result and original harness/source/binary provenance are in `tests/fixtures/query-summary-congruence/proof09-history/`. The harness deliberately asserts verifier0.9 and must run only against the isolated released baseline with unchanged libraries, never the current candidate.

The captured-history tests must pass on the old baseline. After changing only the verifier identity, record their historical-eligibility failure before implementing the archived-purpose bridge; then require green with identical frozen history. This compatibility red/green sequence is separate from the original query-congruence regression.

After adding `query_summary_congruence.rs`, run its original/minimal positive tests against the unchanged encoder. They must fail because expected proof is inconclusive, not because a test only expects a new version string. Preserve that red output. Existing missing-guard controls must already show real postcondition failures.

```bash
cargo test -p behavior-verify --test query_summary_baseline --test query_summary_congruence
```

After implementing the contract, rerun that target and the existing adjacent suites:

```bash
cargo test -p behavior-verify --test queries --test read_soundness --test soundness_regressions --test resulting_state_order --test lifecycle --test invocation_bindings
cargo test -p behavior-verify --test cache --test hashing --test solver --test migration --test resulting_state_governance --test trusted_verification
cargo test -p behavior-cli --test cli_verify --test cli_engine_info --test cli_lifecycle
cargo test -p behavior-store --test trusted_governance
cargo test -p behavior-store --test proof_version_history --test resulting_state_history --test command_governance --test migration_replay --test replay_evidence_authority
cargo build -p behavior-cli
export CORE028_CLI="${CARGO_TARGET_DIR:-$PWD/target}/debug/behavior"
```

The targeted suites cover the applicable [QS-01–QS-20 and QS-23–QS-25](contracts/acceptance-matrix.md), including runtime confirmation of missing-guard witnesses, uncertified partial membership, migration opt-out and genuine older signed-history replay/recovery. The historical fixture loader is `proof_version_history`; the concrete baseline runner is `query_summary_baseline`. QS-21 is the complete gate run; QS-22 is the later release handoff. Reuse existing cases where the matrix identifies complete coverage.

Current checked policies and canonical test artifacts can be reproduced with `cargo run --manifest-path consumer/Cargo.toml --example query_summary_artifacts -- policies` and `-- canonicalization`. These write only the separately named current0.10 fixtures; do not run generators over historical baseline files during final acceptance. Use a separate consumer target directory as in `scripts/check-consumer.sh`.

## 3. Capture candidate provenance and preserve semantic identity

Final acceptance uses a clean committed candidate, including every new helper, test and fixture. Commit through the usual workflow before this capture. Dirty red/green development runs remain useful diagnostics, but a partial diff is not an authoritative source snapshot.

```bash
python3 - <<'PY_CLEAN'
import subprocess
assert not subprocess.check_output(['git','status','--porcelain','--untracked-files=all']), 'Final acceptance requires a clean committed candidate'
PY_CLEAN
git rev-parse HEAD > "$CORE028_OUTPUT/source-head.txt"
sha256sum "$CORE028_CLI" > "$CORE028_OUTPUT/cli.sha256"
"$CORE028_CLI" engine-info > "$CORE028_OUTPUT/engine-info.json"
"$CORE028_CLI" version "$CORE028_EVIDENCE/original-approval.json" > "$CORE028_OUTPUT/behavior-hash.txt"
"$CORE028_CLI" schema-hash "$CORE028_EVIDENCE/original-approval.json" > "$CORE028_OUTPUT/schema-hash.txt"
"$CORE028_CLI" hashes "$CORE028_EVIDENCE/original-approval.json" > "$CORE028_OUTPUT/item-hashes.json"
z3 --version > "$CORE028_OUTPUT/solver-version.txt"
```

Compare the outputs with `semantic-identities.json`: verifier 0.10.0 is expected, but BehaviorHash, SchemaHash and all item hashes must remain identical. Record the exact clean implementation commit and binary digest; a package version alone does not identify the source. The two original uniqueness obligations share a subject-expression hash, so qualify them by action identity as well.

## 4. Verify the unchanged original module and controls

Omitting `--cache` disables the diagnostic cache. Do not invent a `--no-cache` flag. Omitting `--profile` selects the required full default profile (all six kinds, rlimit 20,000,000 and 60,000 ms operational guard).

```bash
"$CORE028_CLI" verify "$CORE028_EVIDENCE/original-approval.json" --out "$CORE028_OUTPUT/original.full.json"
"$CORE028_CLI" verify "$CORE028_EVIDENCE/original-approval.json" --out "$CORE028_OUTPUT/original.repeat.json"
"$CORE028_CLI" verify "$CORE028_EVIDENCE/minimal.json" --profile "$CORE028_EVIDENCE/postcondition-profile.json" --out "$CORE028_OUTPUT/minimal.post.json"
"$CORE028_CLI" verify "$CORE028_EVIDENCE/minimal-count-guard-control.json" --profile "$CORE028_EVIDENCE/postcondition-profile.json" --out "$CORE028_OUTPUT/count-control.post.json"
```

All four invocations must exit 0. Confirm the original obligation identities using the frozen old report:

```bash
python3 - "$CORE028_EVIDENCE" "$CORE028_OUTPUT" <<'PY_CHECK'
from pathlib import Path
import hashlib, json, sys
src, out = map(Path, sys.argv[1:])
old = json.loads((src/'original-verification.json').read_text())
a = json.loads((out/'original.full.json').read_text())
b = json.loads((out/'original.repeat.json').read_text())
identities = json.loads((src/'semantic-identities.json').read_text())
def check_id(c):
    return c['kind'], (c.get('action') or {}).get('hash'), c['subject']['hash']
targets = {check_id(c) for c in old['checks']
           if c['kind'] == 'postcondition' and c['outcome'] == 'inconclusive'}
assert len(targets) == 2
assert a['result'] == 'verified' and a['verifier_version'] == '0.10.0'
assert a['behavior_version'] == old['behavior_version'] == identities['behavior_hash']
assert a['profile'] == old['profile'] and len(a['checks']) == len(old['checks'])
assert all(c['outcome'] == 'proven' for c in a['checks'] if check_id(c) in targets)
assert {check_id(c) for c in a['checks']} == {check_id(c) for c in old['checks']}
assert a['hash'] == b['hash'] and a['hash'] != old['hash']
assert (out/'behavior-hash.txt').read_text().strip() == identities['behavior_hash']
assert (out/'schema-hash.txt').read_text().strip() == identities['schema_hash']
assert json.loads((out/'item-hashes.json').read_text()) == identities['item_hashes']
for name, digest in json.loads((src/'baseline.json').read_text())['artifact_sha256'].items():
    assert hashlib.sha256((src/name).read_bytes()).hexdigest() == digest, name
root = src.parents[2]
for name, digest in json.loads((src/'frozen-inputs.json').read_text())['files'].items():
    assert hashlib.sha256((root/name).read_bytes()).hexdigest() == digest, name
PY_CHECK
```

Informative full-profile outcomes need not all be named `proven`. The minimal missing-guard invocation must instead exit 1 and contain a confirmed postcondition counterexample; the focused suite must re-evaluate that witness as `DENY / POSTCONDITION_FAILED`. It also derives the two original missing-guard variants without touching the frozen input.

## 5. Run complete gates and record the handoff boundary

```bash
bash scripts/gates.sh
```

Run the identity/repeat sequence and gates as one acceptance attempt on the same clean source, without updating tracked task checkboxes during capture. If a gate fails, retain the failure receipt; fix it, create a new clean checkpoint and repeat required acceptance. Only afterwards mark T058 complete.

This is the repository's authoritative gate list. Check versioned archive/schema controls, old-cache separation, fresh authenticated verification and immutable historical bytes as specified in [proof compatibility](contracts/proof-compatibility.md). Record results under the new output directory, never over the frozen baseline reports.

Candidate success satisfies Core implementation validation only. Publish/adopt a corrected minor release through the separate workflows, repeat the unchanged original full check under that pinned artifact, and only then replace C19's ecosystem blocker with passing evidence. The [matrix](contracts/acceptance-matrix.md) and [proof contract](contracts/query-summary-congruence.md) define the acceptance boundary.
