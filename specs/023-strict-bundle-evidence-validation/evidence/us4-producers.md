# US4 actual producers and independent projection package

T043/T044 are supported by actual admitted programs and normal collected tests in
`crates/behavior-store/tests/strict_bundle_evidence.rs`. No historical fixture,
production implementation, dependency or public API was changed by this lane.
This report records working-source evidence; final revision assurance belongs to
the external frozen-candidate receipt.

## Supported domain and generated laws

`producer_laws_all_supported_versions_and_routes` checks 246 actual executions.
Each selected program is admitted under its real Wire contract. Ledger-derived
empty/non-query cases cover Wire 0.4–0.8, lifecycle/reference cases cover 0.5–0.8,
and query/mixed/typed-value cases cover 0.6–0.8. All three producers are exercised:
`Store::evaluate`, `Store::invoke` and `Store::invoke_intent`.

The v1 lineage is exercised only for supported Wire 0.4–0.7/none-policy writes.
V2 exercises none and required enclosing policies throughout its supported
domain. Required cases sign the exact admitted module/candidate, attach checked
evidence and commit with an independent context. Every actual output round-trips
through checked raw bundle decode/hash; v2 candidate adaptation preserves the
original claim and signed subject. Every output commits once and is compared
with its exact archived bundle, including the independently supplied context
that a required commit adds. Precommit and context-enriched archived bundle hashes
are not incorrectly equated.

For all 66 actual v1 cases, the law also explicitly compares semantic bundle
observations with the independent original-record oracle. It removes only the
recognized query `result_hash` from a temporary test-owned bundle view, then uses
the unchanged ordinary Facts parser/serializer. This is a test comparison, not
new v1 runtime validation or a moved phase. Expected observations still originate
exclusively from the actual inner record. Returned v1 metadata identifies S01/S02;
v2 metadata remains S04/S05. This resolves the independent review's SC-002 v1
projection traceability gap without changing the v2 static package.

The fresh test-owned programs use existing constructs and original fixture input
documents without editing their files. The current Wire 0.8 program includes
mandatory command fields and valid effects; old effectless programs are not
blindly retagged or claimed equivalent to current-profile programs.

Additional collected controls are:

- `actual_mixed_producers_emit_all_five_sections`: genuine remove/create and
  query effects jointly produce existence, identity history, incoming references,
  query membership/captures and field observations. It includes both empty and
  nonempty memberships.
- `actual_typed_capture_and_field_values_include_bool_integer_and_option_null`:
  an admitted query probe produces Boolean, integer and Option-null values in
  both actual captures and field observations. Other recipes supply exact money,
  string and identity values, and real nonempty incoming-reference edges.
- `bounded_generated_producer_round_trips_and_seed_permutations`: exhaustive
  finite generation over membership size 0–3, cents 1/17/100, three routes and
  v1/v2, each with original/reversed seed sequence (144 actual productions).
  Checked identity round-trip holds within each output. Across distinct genesis
  sequences, StateId and exact observations agree; record content is compared
  after explicitly excluding its different Store/data-version input. Legacy
  Store lineage identities are not incorrectly equated.
- `omitted_and_null_empty_bundle_observations_share_the_checked_adapter`:
  genuine unconstrained touch output has no observed facts; omitted and explicit
  null bundle representations both adapt to the same empty candidate object.

The collected full Store target was GREEN with 13 mandatory tests and the one
explicit maintenance writer ignored. The writer is not a skipped acceptance
test: it was executed deliberately during capture. Earlier setup/expectation
diagnostics are retained under `initial-laws*` and `producer-laws*`; they concern
test-owned admission requirements, archive-context identity and distinct Store
lineages. No production correction or claimed behavior RED resulted from them.

## Static package and independent expected facts

The reviewed package is:

- `tests/fixtures/strict-bundle-evidence/projection-cases.json`, 39 cases;
  SHA256 `320dc0ae56b187d552700f2f8ead2b4269bd76de9e7117941c397a66c9af8bc3`.
- `tests/fixtures/strict-bundle-evidence/projection-manifest.json`;
  SHA256 `8c7a5726413fba7076c479e210353a11e1ab99d5a5e1b43575e273d68948e830`.

Cases contain `id`, producer/test, support cell, Wire/record/semantic profile,
recipe, original inner ALLOW record, original bundle facts, complete candidate,
expected ordinary Facts and checked bundle. The v2 package covers Wire 0.4–0.8,
all three producers (13 cases each), 18 S04 and 21 S05 cases, with current record
0.8 under its actual legacy or command-intent semantic profile. None-policy and
exactly signed required mixed output are both captured. These are current
producer captures, not fabricated historical records.

Expected Facts are derived solely from each actual inner ALLOW record's `facts`
(or empty object if absent): remove only the separately archived parent universe,
then use the unchanged ordinary Facts parser/serializer. The oracle never reads
bundle `result_hash`, strips integrity fields from the input, calls the new codec,
or copies projection output. Core writes observed Facts before adding that
universe (`eval.rs`); Store subsequently adds query hashes only to the bundle
copy (`facts_json`). The typed-value cases explicitly retain null, rather than
substituting it for a missing field.

`capture_projection_fixtures` is an explicitly ignored maintenance writer. It
was deliberately executed with pinned Nix and recorded toolchain/resource flags.
The manifest binds case/profile IDs, raw package digest, capture command,
revision known at capture, working source digests and retained log location. It
does not contain the final SHA of the commit containing this package.

The normal collected `projection_fixtures_match_actual_producers` reexecutes all
39 recipes, compares complete captured outputs and independently extracted
expected Facts, validates package/profile/ID/section/route coverage and digest,
and never writes fixtures. Its execution exited 0 with 1 passed and 0 ignored.
Capturing revision is provenance, not a claim that later HEAD must equal it;
recipe/profile/output mismatch or digest mismatch makes this package stale.

Final package capture/reproduction custody:

```text
/home/kalle/validation-receipts/core023/us4-producers/capture-39/receipt.json
/home/kalle/validation-receipts/core023/us4-producers/reproduction-39/receipt.json
```

These receipts retain collection/commands/statuses, logs, source and package
digests and pinned-toolchain receipt. Earlier 33-case capture and full-target
validation are retained under `capture/` and `reproduction/`, including their
original package bytes; the explicit lower-Wire extension is independently
captured/reproduced above. Current final gates will rerun the complete target.

T045 may now consume this reviewed package from private Verify tests without a
reverse dependency, subprocess producer or public testing export. Migration and
transitive archive/command work are recorded separately below.

## Actual migration producers and versioned dispatch

T046 collection and execution are retained in
`/home/kalle/validation-receipts/core023/us4-producers/migration-v2/receipt.json`.
All three individually executable tests pass; production/test source digests
remained unchanged throughout those runs.

| Collected test | Actual producer/consumer evidence |
| --- | --- |
| `actual_v2_prepared_migration_has_empty_facts_and_matching_archive` | Resolves a real Migration IR 0.1 against exact source/target modules, prepares read-only with facts `{}`, transforms `z=1`, consumes the original candidate, commits and checks v2 archive/report/hash/schema/version plus data and behavior replay. |
| `actual_prepared_migration_refuses_action_bundle_and_semantic_observations` | Actual valid action bundle observations are refused by migration's unchanged ordinary-Facts phase (`invalid observed facts`). Valid ordinary field observations pass that phase but fail the existing requirement that migration facts be exactly `{}`. Enclosing identity is recomputed for both negatives; no event is published. |
| `actual_legacy_preparation_keeps_legacy_migration_dispatch` | A real legacy Store can prepare its existing transient v2 empty candidate, then dispatch commitment through legacy migration. Archived bundle format and candidate remain absent; legacy hash/data/behavior replay succeeds. |

These establish S07/S08/S09 without inventing query-bearing migration support or
moving its historical phases. The first negative expectation was corrected after
source inspection; its retained earlier diagnostic is not a production RED or
an excuse to change migration's versioned contract.

## Transitive archive, recovery, replay and commands

T053's independently collected Store tests are retained in
`/home/kalle/validation-receipts/core023/us4-producers/transitive/receipt.json`.

`actual_query_archives_reopen_recover_after_later_commit_and_replay` checks nine
actual route/lineage cases: each producer under v1-none, v2-none and v2-required.
It archives a query-bearing mixed transition, commits a later transition, reopens,
checks both raw bundles/event identities, and recovers the first transition
idempotently. Recovery preserves head 2 and its later history. Data and behavior
replay each check both events. Complete persisted snapshots (genesis, head,
bounded records, versions/lifetimes, incoming reference views and entire in-memory
backend state) remain unchanged by archive/recovery/replay inspection. Required
archives retain the exact signed evidence and independently supplied context.

`actual_authenticated_query_commands_exist_only_after_committed_history` checks
three actual producer routes for a fresh Wire 0.8 orders+Receipt program. A
query-bearing ALLOW candidate realizes an intent but exposes no committed
occurrence. A self-consistent freshly authorized membership forgery still fails
historical commitment with zero publication and unchanged complete snapshots.
The valid candidate commits with authenticated evidence; reopening then exposes
exactly its committed occurrence at position 1, bound to its actual event hash.
Command enumeration, data replay and behavior replay preserve persisted state.
Tampered archived query evidence prevents occurrence exposure. No command is
dispatched by these Core APIs or tests.

## Reviewed current-source collection and verification

After the v1 projection review correction, the frozen owned target was collected
and rerun in full, and Clippy ran with warnings denied:

```text
/home/kalle/validation-receipts/core023/us4-producers/review-v1-projection/receipt.json
```

Collection, full execution and Clippy all exited 0. There were 18 mandatory tests
passed, 0 failed, and the one explicit maintenance writer ignored by the normal
runner. Every mandatory case was collected; capture had already executed the
maintenance writer deliberately. Source/package digests before and after agree;
the 39-case package and manifest remain byte-identical. The earlier
`post-transitive/` receipt preserves the preceding complete run as additional
evidence. Root-owned T054 and final exact-revision gates still run independently.
