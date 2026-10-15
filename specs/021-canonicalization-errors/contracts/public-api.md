# Public API and Consumer Migration Contract

**Status:** Implemented interfaces; absent from the pinned baseline. See [coverage](../evidence/coverage.md) for runtime evidence and final external receipts.

**Baseline:** `20d3fd2439e4c4b50f75d8f1e03f56aeb4502e9f`.

**Authority:** [specification](../spec.md), A/A [decisions](../decisions.md), [research R1–R7](../research.md).

## Supported facade and direct signature transition

`behavior-engine` remains the supported programmatic API. Returned artifact methods and fields count even when their type names are not separately re-exported. No new public `Attestation`/`Authorization` export or mandatory checked constructor is required.

| Operation | Baseline | Selected contract |
| --- | --- | --- |
| `behavior_engine::verify::verify(module, profile, cache, solver)` | `Attestation` | `Result<Attestation, CanonicalError>` |
| Returned ordinary/migration `Attestation::to_json_string(&self)` | `String` | `Result<String, CanonicalError>` |
| Returned legacy action/migration `Authorization::to_json_string(&self)` | `String` | `Result<String, CanonicalError>` |
| `behavior_engine::canonical::CanonicalError` | Not explicitly exported | Explicit facade re-export; update sorted `api/engine-surface.txt` |
| `GovernanceError` | `Invalid(&'static str, String)` | Retain `Invalid`, add `Canonicalization { artifact: &'static str, source: CanonicalError }` |
| `canonical::to_canonical_string(&Value)` | Already `Result<String, CanonicalError>` | Same signature and valid bytes |
| `canonical::tagged_hash(&str, &Value)` | Already `Result<String, CanonicalError>` | Same signature/material; full current input checked before self-hash exclusion |
| `verify_migration(...)` | `Attestation` | Unchanged, with R3 construction enforcement; later raw serialization is checked |
| `Profile::to_json()` / `Profile::hash()` | `Json` / `String` | Unchanged, with R3 typed construction enforcement and no empty defaults |
| Legacy `authorize`, `authorize_migration`, `waiver_hash`, `sign_waiver` | Existing `Result<_, GovernanceError>` | Same outer signature; typed canonical source, full input checks before exclusions |
| Authenticated verify/sign/authorize APIs | Existing checked Results / checked types | Same public signatures/protocols; private fresh-report canonical error bridged explicitly |
| Store commit/migrate APIs | Existing `Result<_, StoreError>` | Same signatures; invalid supplied canonical evidence yields `EvidenceMismatch` with cause/path |

Parameter types/order of each existing operation are unchanged. Private `verify_impl`, `assemble` and `verify_complete` adopt the ordinary Result contract. Current `CanonicalError::Float(String)` and `Serialize(String)` remain; add `Clone + PartialEq + Eq` derives to support the governance error source. The governance variant preserves error chaining and a diagnostic such as `canonicalization failed: {artifact}: {source}`.

No old infallible raw serializer or unsafe hash fallback remains supported. `Attestation.value`, `.result`, `.hash`, `.checks`, and `Authorization.value`, `.decision`, `.hash` remain editable. Metadata describes generation-time results and may become stale after edits. Serialization checks current `value`, does not reconcile duplicate fields, recompute semantic validity or turn the retained `.hash` into a checked identity. Existing validators continue doing that work at their boundaries.

## Migration: ordinary verification

The following fragments assume an admitted module, typed Profile and existing `Z3Process`. Completed examples/tests must use only facade APIs and `serde_json`, as in `consumer/`.

Before:

```rust,ignore
let artifact = behavior_engine::verify::verify(&module, &profile, None, &solver);
let text = artifact.to_json_string();
```

After, in a function returning `Result<_, Box<dyn std::error::Error>>`:

```rust,ignore
let artifact = behavior_engine::verify::verify(&module, &profile, None, &solver)?;
let text = artifact.to_json_string()?;
```

`Ok(artifact)` may still have the existing valid `not_verified` result. That is a verification result, not a canonicalization error. A caller publishing output obtains the entire successful text before any write.

## Migration: raw mutation and typed handling

After obtaining a mutable artifact through the facade, preserve its existing identity fields while editing:

```rust,ignore
use behavior_engine::canonical::CanonicalError;

let old_hash = artifact.hash.clone();
artifact.value["findings"] =
    serde_json::json!([{"payload": {"items": [1.5]}}]);
match artifact.to_json_string() {
    Err(CanonicalError::Float(path)) =>
        assert_eq!(path, "$.findings[0].payload.items[0]"),
    other => panic!("expected unsupported-value refusal: {other:?}"),
}
assert_eq!(artifact.hash, old_hash); // Retained metadata supplied no authority.
```

Use the analogous current-value check for a generated legacy authorization; any copied signature/hash fields must not bypass the error. Canonicalizable edits may serialize successfully yet fail the existing semantic/hash/signature validator. No semantic validation claim follows from serializer success.

## Migration: migration reports and authorizations

Migration production retains its proven narrower domain; only serialization changes:

```rust,ignore
// Before: let text = report.to_json_string();
let report = behavior_engine::verify::verify_migration(
    &migration, &source, &target, &profile, None, &solver,
);
let text = report.to_json_string()?;
```

Legacy authorization already returns a Result. Its exact existing parameter order is retained:

```rust,ignore
let authorization = behavior_engine::verify::governance::authorize(
    &policy_json, &module, &record_json, attestation_json.as_deref(),
    &waivers_json, &signed_json, &now,
)?;
// Before: let text = authorization.to_json_string();
let text = authorization.to_json_string()?;
```

Apply the same serialization migration to `authorize_migration`'s returned value. Match `GovernanceError::Canonicalization { artifact, source }` to distinguish canonical input failure from `Invalid` and from a successful refusal decision. Preserve existing signature checks when signing waivers; no new artifact JSON shape is introduced by these examples.

## CLI results and publication

| Outcome | Exit | Canonical artifact output |
| --- | --- | --- |
| Valid verified / allowed result | 0 | Existing exact bytes/newline/file behavior |
| Valid not_verified / inconclusive / refusal result | 1 | Existing valid report/authorization bytes |
| Canonicalization failure | 2 | None; stderr includes `behavior: canonicalization failed:` and relevant cause/path |
| Existing invalid artifact/schema | 2 | Existing behavior; not relabelled as a proof outcome |
| Solver unavailable / trusted infrastructure abort | 3 | Existing diagnostic behavior |
| Usage, profile-file handling and I/O failures | Existing 64 behavior | Existing contract |

For `behavior verify WIRE [--profile PROFILE] [--cache DIRECTORY] [--out FILE]`, both producer and serializer failures must be handled before any output write or stdout emission. A canonicalization failure preserves previous `--out` bytes. `migration verify` and legacy `authorize` serialize their result before `emit`. Existing authenticated output already precomputes both envelope and diagnostics; preserve that order.

A private CLI `canonical_text(&Value) -> Result<String, u8>` centralizes checked text and diagnostic mapping for migration admit/apply, engine-info, signed-waiver and admission-item output. It must not emit itself. Preserve each caller's existing newline and result code. Admission-item conversion also becomes checked, using `CanonicalError::Serialize` for its conversion cause. No new serialization dependency is needed.

The private trusted `CANONICALIZATION_FAILED` bridge is an artifact error (exit 2), not `VERIFICATION_INFRASTRUCTURE` (exit 3). A shared canonical diagnostic formatter must handle this code explicitly in `trusted_error` and direct canonical errors in existing `proof_output`/trusted authorization adapters, as well as the new legacy/direct output paths. Do not rely on existing contextual wrappers to produce the promised prefix automatically. Legacy `GovernanceError::Canonicalization` Display already supplies it through `invalid`. Preserve existing authenticated output sequencing.

## Versioning and documentation delivery

This is 0.x **minor-class** under `docs/versioning.md`; next eligible target from the pinned baseline is **0.14.0**, adjusted only if intervening releases consume it. This implementation does not bump Cargo versions, tag or publish. Document all changed signatures, the new governance variant, full-input hash acceptance restriction and CLI error behavior in `docs/verification.md`, `docs/governance.md` and `docs/versioning.md` during implementation. Preserve valid canonical bytes, hashes, historical profiles and verifier/document versions.

The completed migration flows are exercised in `consumer/tests/canonicalization.rs`; these fragments require the bound fixture values shown there. The retained old-API baseline harness compiled and ran before migration. [Conformance C10–C11](conformance.md) requires both supported success and typed failure plus exact-revision delivery provenance.
