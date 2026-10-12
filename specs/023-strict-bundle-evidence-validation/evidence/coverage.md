# 023 executed coverage and source inventory

This inventory records executed working-source evidence. Entry revision is
`72d4093322aabaedf86c3b322ca3394724b0f6df`; frozen 019 ancestor is
`6ad357c7e9960ce6771fd435adcec9f8018fb7d6`. The genuine test-only RED revision
is `f4641b933a3f5bd65a308623a99895d7ee1a75fb`. Subsequent receipts bind working
source/test digests, not that unchanged source revision. Final T060–T064 remain
an external, exact-revision completion obligation.

The implementation is in [the private codec](../../../crates/behavior-verify/src/governance/trusted/bundle_evidence.rs)
and its single action-candidate integration in
[trusted.rs](../../../crates/behavior-verify/src/governance/trusted.rs).
[Baseline custody](baseline-manifest.md) protects ordinary Facts, legacy dispatch,
replay, historical fixtures, facade/dependencies and all out-of-scope schemas.

## Evidence keys and actual collected targets

All working runs use pinned Nix. Reports bind collected names, source identities,
commands, statuses and external logs. A target name below means the actual Cargo
integration target, never a proposed test name.

| Key | Actual execution and retained evidence |
| --- | --- |
| R | [first-red.md](first-red.md), [verify-boundary-red.md](verify-boundary-red.md): compiled asserting baseline refusals before production edits |
| U1 | [us1.md](us1.md): exact private orders workload, fixed hashes, v1 baseline and activated index controls |
| V | [us2-verify.md](us2-verify.md): Verify `strict_bundle_evidence`, 145 individually collected tests, 0 ignored |
| ST | [us2-store.md](us2-store.md), [us2.md](us2.md): Store `strict_bundle_evidence` forgery/mutation controls, private authenticated orders workload, zero publication snapshots |
| M | [mutations.md](mutations.md): eight compiled isolated mutants killed by ten intended runtime assertions; independent positives and restoration checked |
| H | [us3.md](us3.md), [historical-controls.md](historical-controls.md), [v1-baseline.md](v1-baseline.md): Store30/Verify7 new compatibility controls, unchanged sixteen baseline outcomes, supported history/read/migration regressions |
| PR | [us4-producers.md](us4-producers.md): 246 actual supported producer executions, 144 bounded generated productions, 39 normal package reproductions, three actual migration controls |
| PJ | [us4-projection.md](us4-projection.md): six private Verify tests compare all39 independent package projections and custody/ownership; no reverse dependency |
| S | [schema-red.md](schema-red.md), [us4-schema.md](us4-schema.md): genuine schema REDs then six collected wrapper tests, all pass |
| F | [us4-consumer.md](us4-consumer.md): facade-only consumer and fresh source-bound CLI; working checks are separate from final Git attestation |
| TR | [us4-producers.md](us4-producers.md) Store9 route/lineage and3 query-command cases; [us4-consumer.md](us4-consumer.md) signed archive/recovery/replay/stream and all39 package facade cases; T053 receipts under both transitive directories |
| IX | [us4.md](us4.md) T054 coordinator collection/run: private11 and Store18 mandatory pass; `/home/kalle/validation-receipts/core023/t054/receipt.json` binds stable working code/tests/fixtures |
| RV | [targeted-re-audit.md](targeted-re-audit.md): all12 obligations reviewed, no unresolved scoped blocker; final exact-revision receipt still required |

## Requirements and success criteria

Evidence reuse below is justified by shared private construction and the actual
producer/package identity. It does not substitute source inspection for a required
route execution or promote a structural decoder to a trust boundary.

| Requirement | Executed evidence and exact responsibility |
| --- | --- |
| FR-001 | R/U1: `orders_history_v2_producer_evidence_completes_eight_commits` goes from head0 refusal to9 records/8 commits/head8; required-auth counterpart also succeeds |
| FR-002 | V/PJ/S: distinct closed owned BundleEvidence, unchanged Facts consumer, two scoped wrapper references |
| FR-003 | V/H/PR: strict v2 shape/order/integrity then projection; all16 original v1 decode/commit phase/category/cause documents equal baseline |
| FR-004 | U1/V/H/M: independent fixed hash vectors, required digest syntax/equality, empty/nonempty members, historical v1 later rejection retained |
| FR-005 | H: `ordinary_query_facts_continue_to_reject_bundle_integrity_fields`; protected Facts source/ordinary schemas unchanged |
| FR-006 | V/M: raw duplicate keys before reduction; each nested product, semantic-key duplicate/order and unknown-field control collected independently |
| FR-007 | PJ/ST: exact independent Facts equality, original candidate JSON/hash/signature subject retained, owned validated data and public mutation rechecks |
| FR-008 | ST/H/F/TR: rehashed and freshly signed fabricated membership still refuses, exact policy/history/CAS/child/publication obligations retained |
| FR-009 | H/S/PJ: original historical profiles, archives and all9 read support rows; legacy/migration phases and every out-of-scope identity/schema protected |
| FR-010 | U1/PR/IX: same-profile index/scan/reversed complete equality and activation; separate distinct-genesis metamorphic comparisons |
| FR-011 | PR/PJ/H/S/F/TR: all S01–S09 and PC01–PC20 bindings below, actual same-profile output accepted plus exact projection |
| FR-012 | R: exact frozen compiled, collected asserting RED before codec integration |
| FR-013 | V/ST/H/PR/PJ/S/F/IX: complete scoped positive/adversarial/compatibility/producer domain, no mandatory ignored cases |
| FR-014 | V/ST/H/F: deterministic existing category/path, raw/local/outer-hash distinction, activated backend-error precedence, unchanged authoritative state on refusal |
| FR-015 | RV: independent P023 review required before freeze; no full016 closure claimed |
| FR-016 | Reports distinguish 019 creation from023 query correction; final clean pushed SHA/gates/Git consumer required externally |
| SC-001 | R/U1: exact workload and supported v1 control, none/required policies separately exercised |
| SC-002 | PR/PJ/H/S/F/TR: every stated support cell/route binds actual acceptance and same-profile projection; PC07 remains structural |
| SC-003 | V/ST/M/S: intended hash/shape/raw/semantic-key refusals and full no-publication controls |
| SC-004 | H/S/PR: baseline v1 pipeline, ordinary/read/migration/history identities, unsupported refusal boundaries unchanged |
| SC-005 | U1/PR/IX: complete same-profile canonical outputs with proven adapter activation |
| SC-006 | RV and final external T060–T064: targeted evidence chain plus immutable-revision checks; working GREEN alone does not close delivery |

## C023 executable cases

Names refer to collected tests in the linked targets; the evidence reports retain
full collection lists, including macro-generated independently executable cases.

| Case | Actual test binding | Evidence |
| --- | --- | --- |
| 01 | Store private `conformance::query_bundle_evidence_tests::orders_history_v2_producer_evidence_completes_eight_commits`, `orders_history_v1_original_workload_still_completes` | R/U1 |
| 02 | Store `producer_laws_all_supported_versions_and_routes`, `actual_mixed_producers_emit_all_five_sections`, `actual_typed_capture_and_field_values_include_bool_integer_and_option_null` | PR |
| 03 | Verify `wrong_query_result_hash_has_local_diagnostic`, `missing_required_query_result_hash_has_local_diagnostic`, `different_hash_domain_cannot_attest_query_membership`, `bare_id_array_hash_cannot_attest_member_objects`, digest syntax cases; Verify hashing fixed vectors | U1/V/M |
| 04 | Verify `all_five_observed_sections_are_accepted_together`, `missing_capture_value_is_not_defaulted_to_null`, `universe_is_not_a_candidate_observed_section`, product/type/null generated cases; Verify compatibility ordinary hash refusal | V/H |
| 05 | Verify `duplicate_whole_candidate_key_is_rejected_before_reduction` and independently collected raw root/nested/escaped/equal-value/numeric cases | V/M |
| 06 | Verify `distinct_query_objects_with_same_instance_are_not_merged`, `duplicate_members_with_matching_hash_are_not_deduplicated`, all section/edge/capture order controls | V/M |
| 07 | Store `projection_fixtures_match_actual_producers`, public mutation controls; private Verify `producer_fixture_projection_is_exact`, ownership/custody tests | PR/PJ/ST |
| 08 | Store compatibility original16 named baseline cases: correct/wrong/domain/malformed/non-string/missing hash plus earlier Store/transition/parent/head/time/schema/declaration and performed record/head failures | H/M |
| 09 | Store `locally_consistent_forged_members_cannot_publish`, `freshly_authorized_forged_members_cannot_publish` | ST/M |
| 10 | Private `required_authorization_orders_history_authenticates_all_eight_commits`, `query_integrity_does_not_waive_required_authorization`, `authorization_for_other_valid_query_candidate_is_refused`, `prior_query_authorization_cannot_be_reused_after_commit` | U1/ST/F |
| 11 | Store compatibility H01/H02/H03 tests, Verify K01/K02 legacy-codec controls; unsupported Wire/query/cross-format/fresh authority refusals | H |
| 12 | Store `strict_bundle_schema` six collected tests over actual mixed producers, genuine H02/H03 archives, required closed/hash shape and wrong-digest runtime distinction | S |
| 13 | Verify compatibility ordinary Facts/query-read controls; owning Core/Store 017,018,022 suites and all9 read support rows | H/F |
| 14 | Store `actual_v2_prepared_migration_has_empty_facts_and_matching_archive`, `actual_prepared_migration_refuses_action_bundle_and_semantic_observations`, `actual_legacy_preparation_keeps_legacy_migration_dispatch` | H/PR/F |
| 15 | Private `same_profile_v1_index_scan_and_reversed_enumeration_are_equivalent`, `same_profile_v2_index_scan_and_reversed_enumeration_are_equivalent`; generated seed controls | U1/PR/IX |
| 16 | Consumer `strict_bundle_evidence`14 tests including all39 producer captures, signed archive/recovery/replays and exactly-once committed stream; canonical source/Git scripts remain final receipt obligations | H/F/TR/RV |

## P023 proof obligations

Tests are empirical evidence. These classifications describe why bounded evidence
supports the implementation; they are not universal mathematical proof or a claim
of arbitrary Backend correctness.

| Obligation | Construction/code invariant | Empirical evidence / remaining assumption |
| --- | --- | --- |
| 01 distinct domains | Private closed product; ordinary Facts source unchanged | V/H/PJ; separate ordinary/witness schema debt remains open |
| 02 raw ambiguity | Existing strict whole-document decoder precedes candidate validation | V/M; already-reduced PC07 cannot establish raw uniqueness |
| 03 canonical digest | Existing tag/algorithm and exact required syntax/equality | U1/V/M independent vectors; SHA collision resistance assumed |
| 04 no repair | Strict increasing semantic keys checked before map/set projection | V/M; no sort/dedup/default of invalid evidence |
| 05 exact projection | Owned validated construction; consumes temporary copy removing only recognized query hash | PJ/ST/PR all39 exact cases; original candidate unchanged |
| 06 v1 pipeline | New codec only in v2 action branch; legacy dispatcher/history untouched | H sixteen exact baseline documents, competing/operational failures; M8 detects early check |
| 07 historical truth | Existing full parent rederivation/equality remains mandatory | ST/M forged none/signed cases; Backend conformance assumed |
| 08 no authority/publication | Policy/signature/context, exact history, child validity/CAS/publication unchanged | ST/F/TR/H; no physical crash/durability proof inferred |
| 09 producer closure | Complete support inventory, one existing serializer plus profile-specific consumers | PR/PJ/H/F/TR actual routes/cells; bounded legal domains, no unsupported Cartesian support |
| 10 scoped schemas | Nine new closed products and two refs per current wrapper | S before/after parsed and literal definition preservation, actual output/archive controls |
| 11 index neutrality | Existing canonical producer semantics; query modes differ only access strategy | U1/IX activation and complete equal outputs, PR bounded seed permutations |
| 12 revision custody | Frozen test-only RED and external final receipt policy | R/F source-bound CLI; final clean exact-SHA gates/consumer still required |

## Supported semantic cells

These are the actual domains of [support-matrix.md](../contracts/support-matrix.md).
The 39case projection package covers current v2 action observations. V1 has no
new projection: it retains its original historical full rederivation/comparison.
Migration observations are exactly empty; no invented query migration is admitted.

| Cell | Actual support and evidence |
| --- | --- |
| S01 | PR 246-law supported v1 Wire0.4–0.7/none producers, checked structural decode/hash then actual commit; all66 v1 outputs explicitly compare semantic bundle projection with independent inner-record observations |
| S02 | S01 query subset Wire0.6/0.7; U1 exact workload/index controls and H sixteen baseline cases preserve later integrity enforcement |
| S03 | H01 original decision0.4 self-hashed archive: structural read-only recovery/commands and documented upgrade refusal; no captured authentication claim |
| S04 | PR v2 Wire0.4–0.8 three producers, none/required policies; PJ current package exact projection, F candidate/signing/CLI, TR archive/recovery |
| S05 | S04 query subset Wire0.6–0.8; U1 exact9/eight workload; PR/PJ all query/mixed/hash/typed observations and V/ST negatives |
| S06 | H02/H03 genuine immutable pre017 decision0.7/profile0.8 archives; exact original candidate/evidence/context/recovery/replay/commands; S both wrapper acceptance |
| S07 | PR actual MigrationIR0.1 source/target/preparation/commit/report/hash/archive/data and behavior replay; candidate projection exactly{} |
| S08 | H/PR original legacy MigrationBundle absent format, original hash/commit/replay dispatch; exact empty observations |
| S09 | PR legacy preparation emits transient v2 empty candidate then retains original legacy commit dispatch; no fresh v2 history silently introduced |

K01/K02 are recognition controls in constructed wrappers, not genuine historical
publication. Unsupported formats/upgrade boundaries and query migrations remain
refused. Each read record is interpreted under its own recorded profile; no v1/v2
byte equality is required.

## PC01–PC20 route and projection binding

For transitive consumers, the projection witness is the exact same checked
candidate/archived bundle produced and verified upstream, plus the distinct route
check. No consumer redefines query observations or gains authority from a hash.

| Path | Actual route/source | Acceptance and projection evidence |
| --- | --- | --- |
| PC01 | Store::evaluate | PR all supported versions/recipes/policies; PJ 13 exact captured evaluate cases |
| PC02 | Store::invoke/invoke_mode | PR same domain; PJ 13 captured invoke cases, actual inner ALLOW record oracle |
| PC03 | Store::invoke_intent | PR same domain; PJ 13 captured intent cases |
| PC04 | Store::bundle_from_evaluation/facts_json | PR actual producer laws and all5sections; PJ exact upstream record projection; old body/encoding unchanged |
| PC05 | CommitBundle::governance_candidate | PR everyv2 output checked/adapted; PJ candidate JSON/hash unchanged, empty null/omitted adapters; ST mutation checks |
| PC06 | CommitBundle::from_json/hash | PR each actual output raw-decoded/hash checked; H v1 baseline/historical codec controls; V raw/local refusals |
| PC07 | documents::decode<T> | Structural convenience only: PR typed round-trip is followed by checked raw consumer; V/ST supply trust evidence separately |
| PC08 | with_trusted_evidence/with_evidence | PR actual required candidates signed/attached/committed; ST mutable/stale claim refusals, PJ unchanged exact signed subject |
| PC09 | commit_with_context/commit/commit_impl | U1 authenticated9/eight workload, ST parent truth/nonpublication, H baseline/recovery; TR current query recovery after later commit |
| PC10 | prepare_migration/commit_prepared_migration | PR actual S07/S09 output, exact{} projection, report/source/target checks and action observation refusal |
| PC11 | migrate/commit_migration_outcome | H/PR actual legacy/v2 migration dispatch and replay, F supported facade |
| PC12 | MigrationBundle::hash | H/PR actual archive hash under recorded legacy/v2 format; original empty observations |
| PC13 | TransitionRecord::hash/check_kind | H genuine H01–H03 archives, PR actual migration, TR actual current query/command archives; exact candidate preserved |
| PC14 | validate_archived_event/replay_data | H recorded historical evidence and migration routes; TR same current signed query archive/history, not local hash authority |
| PC15 | replay_behavior_with/rederive_archived | H exact historical profile semantics and context; PR migration; TR current query rederivation under same module/profile |
| PC16 | commands_since | H actual pre017 command archive; TR current query+command no precommit/refused occurrence, exact once after signed commit/recovery |
| PC17 | authorize_trusted*/validate_trusted_authorization | U1/ST/F exact actual candidate module/policy/context/signature; H old receipts gain no new authority, PJ claim unchanged |
| PC18 | behavior-engine facade | F facade-only actual producer/consumer/signing/read/migration; TR replay/reopen/recovery/commands, final Git check remains required |
| PC19 | CLI governance authorize | F fresh source-bound CLI consumes actual query candidate; malformed/rawduplicate output refusal, exact returned evidence commits through facade |
| PC20 | governance-v2/store-v2 schemas | S actual mixed output and historical archives, nine closed defs/two refs each; PJ exact common observation domain; ordinary/witness debt separate |

## Completion limits

The normal package reproduction/projection tests write no expected fixtures.
The deliberately executed ignored capture writer is maintenance, not a skipped
mandatory case. Pre-existing optional query/migration scale tests are separately
reported in H and excluded from passing acceptance evidence.

Working evidence remediates the demonstrated false rejection and supports the
stated private boundary. Independent review is complete; frozen gates/Git consumer validation
remain required before scoped delivery closure. F023-EXTERNAL-FACTS-SCHEMA-001 stays
open; full016 audit, full v2 Store conformance and arbitrary backend durability
are not inferred. No release, merge, version choice or ecosystem adoption occurs.

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
