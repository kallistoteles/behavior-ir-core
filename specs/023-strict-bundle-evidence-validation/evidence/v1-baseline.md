# V1 baseline characterization

The tests were authored and collected on Core revision
`72d4093322aabaedf86c3b322ca3394724b0f6df`, before any 023 production or schema
correction. The test target was new working-source evidence, not a committed
test-only RED revision. Existing tracked crate sources were unchanged at this run.

Target: `crates/behavior-store/tests/strict_bundle_compatibility.rs`.
Test SHA-256: `5d2d8109639bd3e7844c98424fe32c0217f5d725c9c30e752313e05cea81e359`.
This initial digest identifies the baseline version; later compatibility additions
must retain and compare these original sixteen cases.

External receipt directory:
`/home/kalle/validation-receipts/core023/baseline-compatibility/`.
It contains `receipt.json`, the complete `source-manifest.json`, `toolchain.txt`,
`collection.log`/`.status`, `run.log`/`.status`, and sorted `outcomes.json`.

Commands, from the owning checkout:

```bash
nix develop -c env CARGO_BUILD_JOBS=2 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --test strict_bundle_compatibility -- --list
nix develop -c env CARGO_BUILD_JOBS=2 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --test strict_bundle_compatibility -- --nocapture --test-threads=1
```

Both statuses were zero. Collection identified sixteen tests; execution passed
all sixteen, with no ignored or filtered cases. Passing characterization is not
test-first RED evidence for the forthcoming correction.

## Decoder versus commitment

Each case begins with actual v1 `place_order` output from the existing integration
orders fixture and seed. This is a compatibility premise, not the separately owned
exact nine-step private-conformance reproduction.

| Query result hash | Raw `CommitBundle::from_json` | Commit |
| --- | --- | --- |
| Original correct digest | Successful structural decode, exact bundle retained | Successful, head 1; one Backend publication |
| Well-shaped wrong digest | Successful structural decode | `BUNDLE_INVALID`: read facts differ from observations at the parent |
| Digest under wrong query-result domain | Successful structural decode | Same historical refusal |
| Malformed digest | Successful structural decode | Same historical refusal |
| Non-string digest | Successful structural decode | Same historical refusal |
| Missing digest | Successful structural decode | Same historical refusal |

The exact invalid-evidence cause is
`BUNDLE_INVALID: the read facts are not the ones the evaluation observed at the parent`.
V1 transition identity binds the decision record; mutating separately supplied
`read_facts` does not require retagging or changing that record. Each changed
bundle is structurally decoded before commitment. Its independent read facts are
not silently repaired by the decoder.

## Earlier-outcome precedence

The following cases combine a wrong query digest with a genuine earlier defect.
The original cause, selected phase and authoritative snapshot are retained in
`outcomes.json` rather than inferred from the new v2 boundary.

| Earlier defect/read failure | Selected outcome before query-integrity comparison |
| --- | --- |
| Other Store identity | `BUNDLE_INVALID`: evaluated against another store |
| Wrong transition identity | `BUNDLE_INVALID`: transition hash differs from record |
| Wrong expected parent | `BUNDLE_INVALID`: expected parent differs from evaluated state |
| Actual concurrent commit | `STATE_CONFLICT`, with current committed head 1 |
| Invalid UTC timestamp | `BUNDLE_INVALID`: commit time is not RFC 3339 UTC |
| Different module schema | `SCHEMA_MISMATCH`, with deterministic declaration differences |
| Wrong action declarations | `BUNDLE_INVALID`: declarations are not the action's |
| Activated `record(1)` read failure | `BACKEND_ERROR: 023 performed record(1) read` |
| Activated first/head schema lookup failure | `BACKEND_ERROR: 023 performed head read 1` |
| Activated second/head consistency lookup failure | `BACKEND_ERROR: 023 performed head read 2` |

Faults are armed only after legal Store creation and evaluation. Each operational
case asserts one activated fault hit; record/consistency cases also assert that
the `record(p+1)` lookup actually executed. These tests do not ask the optimized
implementation to fabricate an error from an operation that was never performed.

Every refusal compares the pre/post genesis, head, bounded records, membership,
versions, lifetimes/identity use, incoming reference views and committed command
fields. A complete `InMemoryBackend` snapshot additionally covers all private
indexes and retained data. No refusing attempt calls `Backend::commit`; the stale
head case preserves the already completed competing commit. Snapshot reads use
the unfaulted inner backend, so they neither consume nor hide activated errors.

## Scope and follow-up

This establishes empirical premises for the named v1 paths and their existing
error precedence. It is not a universal proof of pipeline equivalence, a backend
durability claim, historical authentication, or a v2 producer-consumer fix.
T033 must rerun these cases and compare the retained phase/code/cause and
publication snapshots after implementation. Historical custody and protected
ordinary Facts/read/schema source comparisons are separately owned evidence.
