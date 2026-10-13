# Quickstart: Future 024 Validation

This is a run guide for implementation, not a test result. New test targets below do not exist yet. Their authoring and actual RED precede schema correction. Run from the owning Core checkout root in its pinned environment; protect the separate frozen023 checkout.

## Prerequisites and baseline

- Source base `4f44fb83054d6d100f55e0b1466196b8cc94b151`, active feature024, public conformance signing fixtures only.
- Existing pinned Rust, Python/jsonschema and Z3 provided by `nix develop`.
- Explicit [support/case inventory](contracts/support-matrix.md) and [test-first custody](contracts/validation-evidence.md).
- Retain original schema/source/fixture digests and initial semantic/historical outputs under external `/home/kalle/validation-receipts/core024/`.

```bash
git status --short
git rev-parse HEAD
nix develop -c rustc --version
nix develop -c python3 -c 'from importlib.metadata import version; print(version("jsonschema"))'
nix develop -c z3 -version
```

Use existing scripts/toolchain; no ecosystem override, new dependency or network signer. A missing solver or failed compilation is a prerequisite error, not an intended semantic RED.

## Collect and establish RED after test authoring

```bash
nix develop -c cargo test -p behavior-verify --test facts_witness_schema -- --list
nix develop -c cargo test -p behavior-verify --test facts_witness_compatibility -- --list
nix develop -c cargo test -p behavior-verify --test facts_witness_schema -- --nocapture
```

Before schema edits, the genuine signed issue report must already pass checked subject validation and runtime DENY reproduction but fail the assertion that the published schema accepts it. For structures the old schema actually admits (wrong aliases and malformed queries/fields/universe), the rejection assertions must fail at that erroneous acceptance. Negatives already rejected by unknown canonical existence/identities/references roots are passing preservation controls, not RED; record the masking and verify their nested constraints after correction. Never create artificial baseline failures using patched diagnostic schemas. Capture the exact intended assertion, source/test/schema identities and exit status; never label successful defect-detection scripts as correction-oriented RED.

## Focused GREEN and original semantic controls after correction

```bash
nix develop -c cargo test -p behavior-verify --test facts_witness_schema
nix develop -c cargo test -p behavior-verify --test facts_witness_compatibility
nix develop -c cargo test -p behavior-core --test facts --test queries --test read_goldens --test read_replay_integrity
nix develop -c cargo test -p behavior-verify --test trusted_verification --test read_soundness --test lifecycle --test queries --test migration
nix develop -c cargo test -p behavior-verify --test strict_bundle_evidence --test strict_bundle_compatibility
nix develop -c cargo test -p behavior-store --test strict_bundle_schema --test strict_bundle_evidence --test strict_bundle_compatibility --test trusted_governance
```

Expected: unchanged original signed evidence becomes schema-valid; every structural negative fails shape validation; permitted payload/null/open entity fields pass; checked semantic/trust refusals remain; archive controls preserve bytes and cannot become fresh proof. Compare each [matrix](contracts/support-matrix.md) row within its profile. A missing expected producer family, zero collected mandatory cases or unsupported historical fixture is a failure/gap, not passing closure evidence.

## Facade consumer

```bash
nix develop -c scripts/check-consumer.sh
```

The prospective consumer suite exercises actual facade/CLI producer, envelope decoding, exact subject and runtime reproduction. Independent schema checks remain workspace-owned: --rev copies no schema/ or specs/ directories. Do not add temporary-relative schema/archive reads. Keep canonical consumer dependencies unchanged.

## Frozen final candidate

Finalize and commit/push implementation, fixtures, reports and pre-freeze bookkeeping before final validation. Leave final task statuses external, as described in the [receipt contract](contracts/validation-evidence.md). From the clean unchanged frozen candidate:

```bash
unset BEHAVIOR_BIN CARGO_TARGET_DIR
nix develop -c scripts/gates.sh
core024_candidate=$(git rev-parse HEAD)
nix develop -c scripts/check-consumer.sh --rev "$core024_candidate"
git status --short
git ls-remote origin refs/heads/024-facts-witness-schema
```

Bind exact SHA/tree, source/schema/fixture/CLI identities, toolchain, commands/statuses and logs. Capture the temporary Git Cargo.lock before cleanup (including Nix nested TMPDIR), and verify all Core packages resolve to that SHA. CLI/fixtures come from the frozen invoking checkout even with --rev. Seal the final external receipt without editing the frozen tracked source/report.

A later merge/rebase/release revision receives its own applicable validation. No release/version/tag or ecosystem adoption occurs through these commands. Report scoped closure, assumptions and remaining unrelated findings; do not claim full016/fullv2 conformance.
