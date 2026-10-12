# 023 coverage and source inventory

This setup inventory is bound to entry revision
`72d4093322aabaedf86c3b322ca3394724b0f6df` and frozen 019 ancestor
`6ad357c7e9960ce6771fd435adcec9f8018fb7d6`. Stable symbols below identify the
baseline source; implementation may move line numbers. See the
[baseline manifest](baseline-manifest.md) for file custody.

**Status: prospective implementation coverage.** This inventory task ran no
correction tests, schema checks, compatibility cases or gates. Proposed test names
are not collected names or completed evidence. Replace them with actual names,
source/fixture digests, commands, statuses and retained run locations when executed.

SC-002 and the [I1/U1 contract](../contracts/producer-projection-evidence.md) require
actual producer output, profile-correct acceptance and independent exact projection
for each supported pairing. Shared invariants explain reuse of captured evidence;
they do not replace execution. PC07 remains structural and H/K custody remains
distinct. No unsupported Cartesian profile product is implied.

## Requirement traceability

| Requirement | Prospective tasks | C023 cases | Executed evidence |
| --- | --- | --- | --- |
| FR-001 | T009–T020, T025 | 01,10 | Pending |
| FR-002 | T013–T017, T047–T050 | 02,12 | Pending |
| FR-003 | T004–T008, T016–T017, T033 | 03,04,06,08,12,14 | Pending |
| FR-004 | T012, T016, T021, T033 | 03,08,12 | Pending |
| FR-005 | T034, T041 | 04,13 | Pending |
| FR-006 | T022–T024 | 04,05,06 | Pending |
| FR-007 | T017, T027, T044–T045 | 02,07 | Pending |
| FR-008 | T025–T029, T053 | 09,10,16 | Pending |
| FR-009 | T033–T042, T050 | 07,08,11,12,13,14,16 | Pending |
| FR-010 | T019, T054 | 06,15 | Pending |
| FR-011 | T043–T055 | 02,07,11,12,14,16 | Pending |
| FR-012 | T003, T009–T011 | 01 | Pending |
| FR-013 | T021–T042, T044–T054 | 08,09,10,11,13,15 | Pending |
| FR-014 | T005, T023–T029, T033 | 05,08,09 | Pending |
| FR-015 | T057–T058 | All; targeted review | Pending |
| FR-016 | T056–T064 | 16 | Pending |
| SC-001 | T010, T018–T019 | 01,10 | Pending |
| SC-002 | T043–T055 | 02,07,11,12,14,16 | Pending |
| SC-003 | T021–T030, T047–T050 | 03,04,05,06,09,12 | Pending |
| SC-004 | T033–T042, T050 | 04,07,08,10,11,12,13,14,16 | Pending |
| SC-005 | T019, T054 | 06,15 | Pending |
| SC-006 | T055–T064 | 16; targeted review | Pending |

## Executable case inventory

Only C023-01's exact private name and C023-07's fixture reproduction recipe are
fixed in the design. Other proposed names may be refined by their owner; retain
case/requirement mapping and bind the actual collected name. All rows are pending.

| Case | Required outcome | Prospective name / target | Tasks |
| --- | --- | --- | --- |
| C023-01 | Genuine v2 RED, then 9 evaluations/8 commits/head8; v1 success | `conformance::query_bundle_evidence_tests::orders_history_v2_producer_evidence_completes_eight_commits` | T009–T020 |
| C023-02 | Actual evaluate/invoke/intent producer closure | `producer_routes_round_trip_supported_evidence` in Store `strict_bundle_evidence` | T043–T044 |
| C023-03 | Correct/wrong/malformed/missing hashes and independent vectors | `query_result_hash_vectors`, `query_hash_cases` in Verify hashing/boundary targets | T011–T012, T021 |
| C023-04 | Closed products, types, null/missing, universe and ordinary Facts refusal | `closed_bundle_products`, `ordinary_facts_rejects_result_hash` in Verify boundary/compatibility targets | T022, T034 |
| C023-05 | Raw ambiguity rejected before reduction | `raw_duplicate_object_keys_are_refused` in Verify boundary target | T023 |
| C023-06 | Semantic-key duplicate/order refusal without repair | `supplied_semantic_keys_must_be_strictly_increasing` in Verify boundary target; Store enumeration controls | T024, T054 |
| C023-07 | Independent exact projection, unchanged claim, public mutation checks | `projection_fixtures_match_actual_producers` in Store; `producer_fixture_projection_is_exact` in private Verify codec | T027, T044–T045 |
| C023-08 | Baseline v1 decode/commit/error/operational precedence | `v1_query_integrity_preserves_decode_then_commit`, `v1_competing_errors_preserve_precedence` in Store compatibility | T004–T007, T033 |
| C023-09 | Locally self-consistent forgery fails historical truth; no publication | `locally_valid_forged_members_are_not_committable` in Store boundary target | T026–T029 |
| C023-10 | Exact required authorization, wrong/missing/reused refusal | `required_authorization_orders_history`, `authorization_rebinding_refusals` in Store private conformance | T025, T029 |
| C023-11 | Actual supported S/H controls; K recognition and unsupported refusal | `historical_archive_controls_preserve_profile`, `recognized_decision_codecs` in Store/Verify compatibility | T035–T037 |
| C023-12 | Both scoped schemas agree with producer/archive shape | `current_wrapper_schemas_match_bundle_evidence` in Store schema target | T047–T050 |
| C023-13 | Nine read rows and ordinary/nonquery/017/018/022 controls | `documented_read_profiles_remain_compatible` plus existing owning regressions | T034, T038, T040 |
| C023-14 | Actual empty migrations and original legacy dispatch | `prepared_migration_observations_are_exactly_empty` in Store compatibility/boundary | T039, T046 |
| C023-15 | Activated indexed/unindexed/reversed complete equality | `same_profile_query_index_and_enumeration_equivalence` in Store private/boundary targets | T019, T054 |
| C023-16 | Facade/CLI/archive/recovery/stream and exact Git/source gates | `facade_query_candidate_consumption`, `archived_query_consumers` plus canonical scripts | T051–T055, T060–T064 |

## Proof-obligation inventory

All obligations are pending. Re-audit must distinguish construction, code
invariants, empirical evidence and assumptions; bounded tests are not universal proof.

| Obligation | Claim | C023 cases | Tasks |
| --- | --- | --- | --- |
| P023-01 | Distinct Facts/bundle domains | 04,07 | T013–T017, T034 |
| P023-02 | Raw ambiguity cannot disappear | 05 | T023 |
| P023-03 | Existing required canonical hash | 03 | T012, T015–T016, T021 |
| P023-04 | Canonical/unique evidence without repair | 04,06 | T013, T016, T022–T024 |
| P023-05 | Exact projection/original claim | 02,07 | T017, T027, T044–T045 |
| P023-06 | Complete v1 pipeline retained | 08 | T004–T008, T033, T041 |
| P023-07 | Historical truth independent | 09 | T026–T030, T053 |
| P023-08 | Authority/publication independent | 09,10,16 | T025–T030, T051–T053 |
| P023-09 | Complete supported producer closure | 02,11,14,16 | T043–T055 |
| P023-10 | Only scoped current schema refs change | 12 | T047–T050 |
| P023-11 | Indexes/enumeration nonsemantic | 15 | T019, T054 |
| P023-12 | Actual source/RED/CLI/final custody | 01,16 | T003, T010, T052, T059–T064 |

## Supported cells and custody

Bindings supplement the [support matrix](../contracts/support-matrix.md). The
[historical controls](historical-controls.md) bind exact archive/codec custody.
Version policy is [docs/versioning.md](../../../docs/versioning.md); Store meaning
is [docs/persistence.md](../../../docs/persistence.md); governance obligations are
[docs/governance.md](../../../docs/governance.md). All runtime evidence is pending.

| Cell | Baseline source and contract binding | Prospective evidence |
| --- | --- | --- |
| S01 | Store evaluate/commit and v1 documents codec/hash; fresh Wire 0.4–0.7/none, current decision profile | C01/C02/C08, T004–T007/T033/T043 |
| S02 | S01 query subset Wire 0.6/0.7; `facts_json` hashes and exact commit rederivation | C01/C08/C15, T004–T007/T019/T033/T054 |
| S03 | H01 genesis/bundle/decision 0.4; original archive/recovery/upgrade rules, no fresh authenticated authority | C11/C16, T035/T037/T053 |
| S04 | v2 evaluate/adapt/candidate/commit; Wire 0.4–0.8, none and required policies | C02/C10/C16, T025/T043/T051 |
| S05 | S04 query subset Wire 0.6–0.8; serializer and v2 candidate boundary; history truth independent | C01–C10/C15, T009–T032/T043/T054 |
| S06 | H02/H03 actual pre017 decision 0.7/profile 0.8; old candidate/archive contracts | C11/C12/C16, T035/T050/T053 |
| S07 | Actual v2 prepare/commit migration, supported IR 0.1 source/target, observations `{}` | C14, T039/T046 |
| S08 | Legacy MigrationBundle absent format; original decode/hash/commit/replay | C14/C16, T039/T046/T053 |
| S09 | Legacy Store preparation yields transient v2 `{}` candidate; legacy commit dispatch retained | C14, T039/T046 |

Unsupported Wire/query versions, v1 history/trusted upgrade boundaries, cross-format
claims, unknown products, bundle universe and invented query migrations remain
refusal controls in C023-11/14. The nine read rows remain under the existing 018
matrix and C023-13. Replay/local integrity grants no fresh authority.

## Producer–consumer route bindings

Symbols and ranges refer to the entry baseline. All route acceptance/projection
evidence is pending. PC07 is only already-reduced structural convenience; transitive
consumers must point to captured producer/projection evidence plus their route checks.

| Path | Exact baseline file/symbol | Role/domain | Cases / tasks |
| --- | --- | --- | --- |
| PC01 | `crates/behavior-store/src/store.rs:1664–1757` Store::evaluate | Action producer S01/S02/S04/S05 | C02/C07; T043–T045 |
| PC02 | `store.rs:1874–2018` Store::invoke/invoke_mode | Unified fresh action producer; refusals/reads make no fresh bundle | C02/C07; T043–T045 |
| PC03 | `store.rs:1823–1867` Store::invoke_intent | Capability-intent producer wrapper | C02/C07; T043–T045 |
| PC04 | `store.rs:1761–1820,3067–3086` bundle_from_evaluation/facts_json | Single five-section serializer; empty null; query hashes | C02/C07; T043–T045 |
| PC05 | `crates/behavior-store/src/documents.rs:697–724` CommitBundle::governance_candidate | v2 action adapter; null/omitted → `{}` | C02/C07; T043–T045 |
| PC06 | `documents.rs:691–695,742–778` CommitBundle::from_json/hash | v1 structural, v2 checked raw consumer | C02/C08/C11; T004–T007/T033/T043 |
| PC07 | `documents.rs:232–233` documents::decode<T> | Structural convenience, not raw/integrity proof | C02/C05; T023/T043 |
| PC08 | `documents.rs:725–740,782–785` with_trusted_evidence/with_evidence | Exact attachment/rebinding consumer | C07/C10; T025/T027/T043 |
| PC09 | `store.rs:82–89,2024–2280+` commit_with_context/commit/commit_impl | Live commit/recovery, exact history/policy/CAS | C08/C09/C10/C16; T005/T025–T029/T033/T053 |
| PC10 | `store.rs:270–397` prepare_migration/commit_prepared_migration | Actual empty S07/S09 producer/consumer | C14; T039/T046 |
| PC11 | `store.rs:2534–2555,2619+` migrate/commit_migration_outcome | Versioned S07/S08 dispatch | C14; T039/T046 |
| PC12 | `documents.rs:829–875` MigrationBundle::hash | Original legacy or checked v2 archive | C14/C16; T039/T046/T053 |
| PC13 | `documents.rs:916–972` TransitionRecord::hash/check_kind | Versioned action/migration archive wrapper | C11/C14/C16; T035/T039/T053 |
| PC14 | `crates/behavior-store/src/replay.rs:146–254,403+` validate_archived_event/replay_data | Exact data/history; not module-derived truth | C11/C16; T035/T053 |
| PC15 | `replay.rs:1018+,1114–1122,1243–1273` replay_behavior_with/rederive_archived | Exact historical semantic rederivation | C11/C14/C16; T035/T039/T053 |
| PC16 | `crates/behavior-store/src/commands.rs:127–164` commands_since | Checked committed stream; no dispatch | C11/C16; T035/T053 |
| PC17 | `crates/behavior-verify/src/governance/trusted.rs:728–810` authorize_trusted*/validate_trusted_authorization; archived authorization | Opaque exact policy/context candidate consumer | C10/C11/C16; T025/T035/T051–T053 |
| PC18 | `crates/behavior-engine/src/lib.rs:120–153,172–196` | Supported facade, unchanged exports | C16; T051–T053/T062 |
| PC19 | `crates/behavior-cli/src/lib.rs:335–413` governance authorize | Existing raw candidate; no Store commit CLI | C16; T051–T052/T062 |
| PC20 | `schema/governance-v2.schema.json`, `schema/store-v2.schema.json` | Scoped action candidate/non-null bundle refs; empty migration retained | C12; T047–T050 |

## Evidence update rule

Replace Pending only with actual collected tests, source/capture identity,
commands/statuses and logs. A failure, inconclusive result, skipped maintenance
capture or uncollected target is not acceptance success. Discovery, RED, working
GREEN, mutations and final attestation are separate. This setup does not close
F019-EXTERNAL-QUERY-001 or establish full v2 conformance. Final T060–T064 outcomes
remain externally bound to the frozen source.

## Entry-source file digests

These route digests come from the T001 manifest at the entry revision; they do
not claim later mutable files are unchanged.

| File | SHA-256 |
| --- | --- |
| [crates/behavior-store/src/store.rs](../../../crates/behavior-store/src/store.rs) | `0873418425cedfd1ea9505612084dc4d872c6542629c798b6e9f8f9be51cb137` |
| [crates/behavior-store/src/documents.rs](../../../crates/behavior-store/src/documents.rs) | `87f0fa0a820b5f7fbf7f97f8dabb78f5275255f426525f3bf944662bdc706130` |
| [crates/behavior-store/src/replay.rs](../../../crates/behavior-store/src/replay.rs) | `1b5bf7fd7d9080f0fdc42042e7a12e5996940152de144d0665d5b13458118a87` |
| [crates/behavior-store/src/commands.rs](../../../crates/behavior-store/src/commands.rs) | `4f95097fd63133086b9c246bfc8833a43f6cff50f3f30e854d7032b49aa0b0a1` |
| [crates/behavior-verify/src/governance/trusted.rs](../../../crates/behavior-verify/src/governance/trusted.rs) | `5608b1275004b6e4323f448d99a57c5beca6e458796c7ce89a033c47c3e38f2f` |
| [crates/behavior-core/src/facts.rs](../../../crates/behavior-core/src/facts.rs) | `b4cb3563efa805b36cfc0d6ef7c19aa97c0e778c66176084c480d18d3a5b5ca7` |
| [crates/behavior-core/src/record.rs](../../../crates/behavior-core/src/record.rs) | `185e69d4f3a6055ecc18ee42ad81cae33ba214c2f1962d60405eec333dbcc088` |
| [crates/behavior-engine/src/lib.rs](../../../crates/behavior-engine/src/lib.rs) | `fd5011461900b4219d1b06411f0548d2bde6a183be57b457e9d93191349b7a22` |
| [crates/behavior-cli/src/lib.rs](../../../crates/behavior-cli/src/lib.rs) | `2b97a923b114c289d3c8c39a81ec77578fb9a38812fd412d1d7d9b6e6261fbb1` |
| [schema/governance-v2.schema.json](../../../schema/governance-v2.schema.json) | `1508d88cd98df03f34ee4f5f0b231975b003535c6ecb0f06e0f212d6c45f11d7` |
| [schema/store-v2.schema.json](../../../schema/store-v2.schema.json) | `10d9ce5c9c25076fd9b8bb46a93cdd1a2bf6d1d74fc69efbd32121022a41f7a1` |
