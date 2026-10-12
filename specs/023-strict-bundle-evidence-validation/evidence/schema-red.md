# Scoped current-wrapper schema RED

Before either wrapper changed, `strict_bundle_schema` collected six compiled
tests. A real accounts-derived Wire 0.7 action produced all five observed sections,
passed runtime bundle/candidate consumption and committed successfully. It removed
unreferenced Customer c3, created c4, and evaluated Account-owner count and balance
sum queries under a normal v2 none-policy Store.

The exact positive wrapper test then failed with status 101 because the current
schema rejected this actual otherwise valid candidate. The independently executed
query-only structural control also failed with status 101: the existing wrapper
accepted an observed query item whose `result_hash` was removed. This partial
document is explicitly a local schema control, not claimed complete commit evidence.

Collected failing names:

- `wrappers_accept_actual_mixed_candidates_bundles_and_original_archives`
- `query_only_local_schema_controls_require_integrity_and_closed_items`

Commands used `nix develop -c env CARGO_BUILD_JOBS=2 CARGO_PROFILE_DEV_DEBUG=0
CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --test strict_bundle_schema`,
first with `-- --list`, then each exact name with `-- --exact --nocapture`.
Runtime production was separately exercised with
`mixed_runtime_producer_covers_all_five_observed_sections -- --exact --nocapture`.

External custody:
`/home/kalle/validation-receipts/core023/us4-schema-red/receipt.json`.
It contains the known source revision, test/runtime/schema SHA-256 digests, copied
pre-edit test and both assets, collection/run logs and statuses. Digests were
checked again before the schema correction; both original wrappers matched the
entry manifest. Python/jsonschema availability, compilation and producer failures
were not counted as RED. This is an asserting working-source snapshot, not a claim
of an additional committed test-only revision or frozen final-delivery assurance.
