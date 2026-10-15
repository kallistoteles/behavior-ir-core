# Quickstart: Canonical Artifact Failure Validation

These commands validate the implemented feature. Focused execution records are linked from [coverage](evidence/coverage.md); final frozen-source gates and exact-Git receipts are separate. See [the API contract](contracts/public-api.md) for before/after consumer migration and [conformance](contracts/conformance.md) for acceptance requirements.

## Setup and baseline

Work from the feature checkout, with its pinned Rust and Nix-provided Z3. Choose build/output directories with sufficient space before compiling; no source cleanup or release publication is required for this guide.

```bash
cd /home/kalle/repos/behavior-ir-core-021
git branch --show-current
git rev-parse HEAD
git rev-parse 'HEAD^{tree}'
nix develop -c rustc --version
nix develop -c z3 --version
```

Before production edits, HEAD is `20d3fd2439e4c4b50f75d8f1e03f56aeb4502e9f`, tree `6c26917635f142cf219de8e4672ae894078d0026`. After implementation record the actual candidate rather than expecting that SHA. Pin dependency locks, actual solver version and fixture hashes alongside outputs. Baseline capture and runtime RED must precede production edits; use an isolated baseline worktree if necessary, preserving existing local work.

Existing focused controls (solver construction is required by the cache/CLI checks):

```bash
nix develop -c cargo test -p behavior-verify --test cache second_run_is_cached_with_the_same_hash -- --exact --nocapture
nix develop -c cargo test -p behavior-verify --test hashing --test governance --test migration
nix develop -c cargo test -p behavior-cli --test cli_verify --test cli_migration --test cli_authorize --test cli_engine_info
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test command_verification -- --nocapture
```

The existing capability smoke test that tolerates absent Z3 is insufficient for this feature's acceptance. These commands do not replace full gates or independent old/new byte comparisons.

## Valid CLI bytes and cache identity

The following captures a valid cold/warm pair using actual CLI syntax. For old/new comparison use the pinned isolated baseline build and retain tool/version provenance. The primary old corpus is already frozen; never overwrite those expected bytes with candidate output.

```bash
run_dir=$(mktemp -d /tmp/core021-canonical.XXXXXX)
nix develop -c cargo build -p behavior-cli
bin_path="$(pwd)/target/debug/behavior"
nix develop -c "$bin_path" verify tests/fixtures/verify/purchase_fixed.json --profile tests/fixtures/governance/preservation_profile.json --cache "$run_dir/cache" --out "$run_dir/cold.json" > "$run_dir/cold.stdout"
nix develop -c "$bin_path" verify tests/fixtures/verify/purchase_fixed.json --profile tests/fixtures/governance/preservation_profile.json --cache "$run_dir/cache" --out "$run_dir/warm.json" > "$run_dir/warm.stdout"
cmp "$run_dir/cold.json" "$run_dir/cold.stdout"
cmp "$run_dir/warm.json" "$run_dir/warm.stdout"
sha256sum "$run_dir/cold.json" "$run_dir/warm.json"
```

Both executions should exit 0 and emit identical file/stdout bytes within each run. Cold and warm complete bytes may differ in cached flags; their embedded authoritative attestation hash must agree under existing exclusion rules. Record that identity explicitly. Use the actual executable location if `CARGO_TARGET_DIR` is overridden; do not accidentally validate an older binary. Corrected cold and warm output must each equal its respective pinned baseline sample. Conformance also requires migration/Profile/authorization samples; ordinary output alone is insufficient.

## Typed-error and persistence regressions

These focused targets are present:

```bash
nix develop -c cargo test -p behavior-core --test canonical
nix develop -c cargo test -p behavior-verify --test canonicalization -- --nocapture
nix develop -c cargo test -p behavior-store --test canonicalization -- --nocapture
nix develop -c cargo test -p behavior-cli --test cli_canonicalization -- --nocapture
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test canonicalization --test canonicalization_preservation -- --nocapture
```

The existing core target includes full-input hashing checks; the new targets exercise the previously missing raw/cache/Store/CLI boundaries. `consumer/tests/canonicalization_preservation.rs` reuses the old capture harness as assertions against all 16 immutable baseline outputs. Required scenarios:

1. Generate ordinary/migration reports and legacy action/migration authorizations through the facade, serialize valid values, then insert a nested float while retaining old hash/signature fields. Expect `CanonicalError::Float(path)`, no replacement text/identity, and preserved draft editability.
2. Seed a real ordinary cache entry, edit its surviving finding to contain a float, and prove the hit reaches assembly. Direct `verify` must fail explicitly. CLI `verify --cache DIR --out FILE` must exit 2, include the cause/path on stderr, emit no stdout artifact, and leave existing `FILE` bytes untouched.
3. Put unsupported values exclusively in excluded `hash` and `checks[].cached`. Check full-value rejection before projection, alongside valid canonical excluded metadata retaining old hash behavior.
4. Supply unsupported legacy Evidence components under an eligible `require:none` action/migration fixture. Expect `EvidenceMismatch` with cause/path and unchanged persisted state/head/records/registry. In particular, migration cannot accept a float hidden in stripped attestation metadata. Required legacy governance fixtures must retain their earlier upgrade refusal.
5. Preserve valid Profile/migration construction, current trusted cache isolation/manifest/context/signature controls, historical replay, and canonicalizable-but-invalid refusals. No unreachable generated-input negative is fabricated.

Write/review baseline-compatible runtime RED probes before fixes, then exercise these typed-result GREEN regressions. A new-signature compile error by itself is not a runtime bug reproduction. Tests must assert the actual cause and boundary, not merely any error.

## Facade migration example

The API contract contains affected before/after snippets. A complete consumer example can use the existing fixture loader, an admitted module, `Profile::default()` and `Z3Process::from_env()`; no internal verifier crate or custom internal solver is needed. After the selected signature change, the key flow is:

```rust,ignore
use behavior_engine::canonical::CanonicalError;
use behavior_engine::verify::verify;

// In the solver-backed consumer harness; module/profile/solver are already bound.
let mut report = verify(&module, &profile, None, &solver)?;
let canonical_text = report.to_json_string()?;
assert!(!canonical_text.is_empty());
let original_hash = report.hash.clone();
report.value["findings"] = serde_json::json!([{"items": [1.5]}]);
assert!(matches!(
    report.to_json_string(),
    Err(CanonicalError::Float(path)) if path == "$.findings[0].items[0]"
));
assert_eq!(report.hash, original_hash);
```

Compile/exercise the completed form in the external consumer with a Result-returning harness (for example `Box<dyn std::error::Error>`), and assert solver availability. Retained `.hash` is generation-time metadata after the edit, not proof of the current draft's identity. A canonicalizable but invalid edit may serialize and must still fail the relevant existing validator.

## Final gates and exact-revision consumer

After implementation, focused GREEN checks and baseline comparisons pass:

```bash
nix develop -c scripts/gates.sh
candidate_sha=$(git rev-parse HEAD)
nix develop -c scripts/check-consumer.sh --rev "$candidate_sha"
```

The second command requires the frozen candidate to be available from the configured Git remote, with harness/fixtures and CLI from that candidate. Capture the actual resolved temporary manifest/lock before script cleanup using the project's receipt approach; also retain resolved library Git SHAs, CLI build SHA, fixture/harness hashes, versions, commands, exit status and logs. The bare command's success without those records is not the complete exact-revision receipt. The script does not put CLI source into the consumer lockfile; its provenance is separate.

Review migration documentation and minor-version assessment together with C10/C11 results. No golden hash rewrite, skipped required case, sealed prior-receipt edit, release tag or publication is part of this validation guide.
