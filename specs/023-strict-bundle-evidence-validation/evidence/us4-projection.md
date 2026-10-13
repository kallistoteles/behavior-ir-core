# US4 — Independent exact projection

T045 uses the reviewed, actual Store-produced package described in
[us4-producers.md](us4-producers.md). The package contains 39 cases across all
three action producers, Wire 0.4–0.8, all five observation sections and actual
legacy/command-intent record profiles. It is test data, not historical authority.

The private Verify codec tests are collected under
`governance::trusted::bundle_evidence::tests` and run in the pinned Nix shell.
Collection and execution both exit 0: six tests pass, none are ignored.
Source/package digests, exact commands, statuses and logs are retained at
`/home/kalle/validation-receipts/core023/us4-projection/receipt.json`.
The receipt identifies known base `f4641b933a3f5bd65a308623a99895d7ee1a75fb`
and the working source manifest; it is not final candidate attestation.

| Collected test | Established evidence |
| --- | --- |
| `producer_fixture_projection_is_exact` | Every checked projection equals independently recorded ordinary Facts. The oracle is the actual inner ALLOW record, with only parent universe removed. Original candidate JSON/hash remains unchanged. |
| `validated_evidence_owns_actual_producer_data_after_caller_mutation` | Validated evidence owns its data; later caller mutation cannot change it or certify a new malformed claim. |
| `actual_projection_package_covers_all_sections_routes_versions_and_nullable_values` | The package covers the declared routes/profiles, all sections, Boolean/integer/string/null values and empty/nonempty membership. |
| `mismatched_projection_package_digest_is_refused` | Altered package bytes cannot retain the manifest's custody assertion. |
| `missing_projection_profile_custody_is_refused` | A missing per-case profile binding fails the package contract. |
| `stale_projection_record_profile_is_refused` | A record/profile discrepancy fails the package contract. |

Verify reads static files without a Store dependency, subprocess producer or
public testing export. It never refreshes fixtures. Store's normal collected
reproduction test independently executes the 39 capture recipes and never writes
expected results. The explicitly invoked maintenance writer remains distinct
from required acceptance checks.

This supplies exact empirical projection evidence plus the owned-type/code
invariant that projection is available only after validation. It does not prove
all possible inputs, historical truth, authorization or Backend durability.
Final canonical gates will rerun these tests against the frozen source.
