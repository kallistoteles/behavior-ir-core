# Quickstart: Validate Binding Conformance 026

**Status**: Implementation validation guide. Targets and corrected fixtures are implemented; focused facade/CLI/package and negative checks pass. Exact frozen-candidate acceptance is recorded in the external receipt linked from evidence/coverage.md.

Read the [current corpus](contracts/current-corpus.md), [semantic comparison](contracts/semantic-results.md) and [validation](contracts/validation.md) contracts first. The reference source is `a24b65d26efaf62342daf5ab0f455540dfd61ed1`; execution must additionally record the exact candidate SHA/CLI and required tool/lock hashes.

## Prerequisites

- Work in Core on `026-binding-conformance-snapshots`; this session reuses `/home/kalle/repos/behavior-ir-core-021` rather than creating another worktree.
- Use the pinned Nix development shell, Rust 1.98.1 and Python 3.13 (observed 3.13.15). Full gates require the pinned available Z3 4.16.0.
- Before implementation, write/review independent full expected records and record a real baseline-compatible ten-case runtime RED. Do not count missing planned files or compile errors as reproduction of #29.
- For each helper/generator/runner implementation, first execute its reviewed focused assertions and retain relevant behavioral RED, then rerun those same assertions GREEN. Helper assertions may use authored worlds/oracles directly; runner/determinism RED waits for generated requests. Execute US2 controls before corrections, preserving already-correct controls as GREEN characterization. Follow the owner barriers and receipt paths in tasks.md; setup failures do not substitute for behavioral RED.
- Use a task-owned temporary output directory. Do not delete old source/fixture data or sealed receipts. Keep builds within available disk/RAM capacity.

```sh
cd /home/kalle/repos/behavior-ir-core-021
nix develop -c bash
export CARGO_INCREMENTAL=0 CARGO_BUILD_JOBS=2 RUST_TEST_THREADS=2
export CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0
```

These resource settings preserve ordinary debug assertions and test selection while reducing generated artifact size. Record the actual settings in acceptance evidence.

## 1. Validate the authored worlds and exact semantic oracles

Run the shared facade contracts:

```sh
cargo test -p behavior-engine --test binding_conformance -- --nocapture
```

Expected: all W01–W10 establish complete/consistent/valid parent worlds, then unchanged evaluation matches its independently authored complete Record08 oracle. Expected child worlds agree with exact deltas/lifecycle, including surviving unrelated rows. Five results are ALLOW and five DENY/PRECONDITION_FAILED; invalid input is not a successful denied case.

Separate tests must establish N01/N02/N03 with the exact existing INVALID_STATE_SNAPSHOT / INCONSISTENT_FACTS / INVALID_STATE_SNAPSHOT codes and no body effects. Same-decision effect/reason/identity/evidence mutations must fail exact comparison. The tests must not import internal crates or use a world-completion helper.

## 2. Regenerate only current requests

```sh
python3 tests/fixtures/bindings/generate_current.py --check
core026_tmp="$(mktemp -d)"
python3 tests/fixtures/bindings/generate_current.py --output-dir "$core026_tmp/a"
python3 tests/fixtures/bindings/generate_current.py --output-dir "$core026_tmp/b"
diff -r "$core026_tmp/a" "$core026_tmp/b"
diff -r tests/fixtures/bindings/current/requests "$core026_tmp/a"
```

Expected: exact case/type coverage, deliberate empty universes from authored worlds, identical generated requests and no protected-file changes. Never run the historical generator to rewrite old bindings. Expectations and worlds remain independently reviewed generator inputs.

## 3. Exercise the current CLI corpus

```sh
cargo build -p behavior-cli
python3 tests/fixtures/bindings/current/check.py \
  --root "$PWD" --cli "$PWD/target/debug/behavior" \
  --output "$core026_tmp/cli"
```

Expected: exactly ten discovered cases; module bytes/admission/item/schema identities match; exits are 0 for ALLOW and 1 for DENY. Each request runs twice unchanged, produces the full expected semantic record and replays with matches true. No additional normalization, fabricated commands or request git_revision provenance is used.

The runner's result artifacts are actual execution evidence, not expected records to check in.

## 4. Validate the real extracted package path

New fixture files must be tracked before a positive production packaging test because archive creation selects `git ls-files`.

```sh
BEHAVIOR_BIN="$PWD/target/debug/behavior" \
  scripts/tests/test_binding_conformance.sh
```

Expected: the actual archive-production block packages current files; the exact release conformance step runs the extracted checker against extracted data and the same absolute candidate CLI outside the checkout. Missing/extra/duplicate entries and changed expectations refuse. Existing historical bytes, archive manifests, step-4 smoke behavior and release ordering remain unchanged.

This is focused archive validation using a debug CLI. It neither builds/publishes a release nor proves static musl double-build reproducibility.

## 5. Run mandatory candidate gates and the external consumer

After focused checks pass, freeze, commit and push the complete clean candidate before the final full gates. Retain its full SHA/tree and keep execution receipts outside that source tree. Any later source change requires a new candidate and revalidation.

```sh
scripts/gates.sh
```

The script remains unchanged. It collects new workspace tests, the extended determinism target, external facade consumer and script/package tests alongside all old required checks.

After the final gates pass on that frozen source:

```sh
core026_candidate="$(git rev-parse HEAD)"
core026_receipt="/home/kalle/validation-receipts/core026/$core026_candidate"
core026_real_cargo="$(command -v cargo)"
# Prepare the receipt-scoped wrapper described in the validation contract first.
test -x "$core026_receipt/cargo-bin/cargo"
CORE026_REAL_CARGO="$core026_real_cargo" \
CORE026_CAPTURE_DIR="$core026_receipt/consumer" \
PATH="$core026_receipt/cargo-bin:$PATH" \
BEHAVIOR_BIN="$PWD/target/debug/behavior" \
  scripts/check-consumer.sh --rev "$core026_candidate"
test -f "$core026_receipt/consumer/Cargo.toml"
test -f "$core026_receipt/consumer/Cargo.lock"
```

Prepare the synchronous Cargo wrapper before this invocation, as specified in [validation](contracts/validation.md). It must delegate to the real Cargo and capture the actual resolved files before returning to cleanup. Merely finding two files is insufficient: validate capture status/hashes and require every Core package to resolve to the candidate, and bind the separately built CLI by source/hash. Save final logs/receipts outside frozen source at `/home/kalle/validation-receipts/core026/<candidate-sha>/`.

Expected: unchanged gates and exact-Git consumer pass with matching source, harness, fixture, binary and dependency provenance. A source fix after freezing requires a new candidate and revalidation. Completion metadata must not be confused with the tested source.

## 6. Consumer navigation and future release

The delivered root README points to `tests/fixtures/bindings/current/README.md`; that packaged document explains cases.json, current requests, independent expectations and the identity comparison. Historical pairs remain labelled historical.

A future authorized release must still execute the normal complete release workflow, including actual static binary validation, double-build reproducibility and existing release-manifest/checksum checks. The corpus reference commit and caller git_revision do not replace that release provenance. No release/version/tag operation belongs to this planning step or fixture implementation by implication.
