# Contract and regression evidence mapping

The baseline inventory below was established during planning at `634023a6d504bac927192c964d945c7025b467c4`. Original counts identify that baseline. Performed implementation deltas and source-bound executions are recorded below and in US1–US4 receipts. Older 023/024 reports remain source-bound provenance and do not silently attest current or future revisions.

## Reuse keys

| Key | Existing owning target / exact anchors |
| --- | --- |
| V | Verify `strict_bundle_evidence`: 145 current passing shape, hash, ambiguity, order and duplicate controls |
| VC | Verify `strict_bundle_compatibility`: 7 current passing ordinary-hash separation/read/historical codec controls |
| S | Store `strict_bundle_evidence`: 18 current passing tests; 1 opt-in maintenance capture writer intentionally ignored |
| SC | Store `strict_bundle_compatibility`: 30 current passing historical phase/precedence/archive/migration/read controls |
| P | Verify lib `governance::trusted::bundle_evidence`: 6 current passing independent projection/custody/claim-ownership tests |
| F | Verify `facts_witness_schema`: 8 current passing ordinary six-family, structural/schema/semantic-limit and bounded normalization tests |
| C | Consumer `strict_bundle_evidence`: existing public Orders, signing, mutation, CLI, archive/replay/command and captured-producer controls; inspected, not rerun in planning |
| R | Temporary external public Mark probe: 5 reference rows × 2 routes, all 10 current executions pass; permanent repository coverage is missing |
| H | 023/024 original evidence and 018/022 replay controls: reusable documented provenance/owning tests, not newly executed claims unless present in the receipt |

S includes `producer_laws_all_supported_versions_and_routes` (246 internal actual productions), `bounded_generated_producer_round_trips_and_seed_permutations` (144 bounded productions) and `projection_fixtures_match_actual_producers` (39 captured observations). Those internal case counts are not added to the 214 Cargo-test count. P's `producer_fixture_projection_is_exact` uses an independent original-inner-record oracle, not serializer self-agreement alone.

## Functional requirements

| Requirement | Reuse / planned completion |
| --- | --- |
| FR-001 | Existing closed products, 023 bundle/support contracts, 024 ordinary contract; consolidate in data model and producer-consumer contract |
| FR-002 | S producer/route laws and generated cases; P exact projection; F six-family closure; C facade capture acceptance; preserve existing support inventory |
| FR-003 | VC `ordinary_query_facts_continue_to_reject_bundle_integrity_fields`; F closed ordinary products; no ordinary parser edit |
| FR-004 | V complete closed/type/raw-duplicate/order matrix; migration exact-empty controls; no new permissive consumer |
| FR-005 | V missing/wrong/malformed/domain/bare-array hash controls; S actual output; SC v1 deferred-integrity outcomes |
| FR-006 | S `locally_consistent_forged_members_cannot_publish`, `freshly_authorized_forged_members_cannot_publish`; new isolated live instance/definition/entity/capture controls |
| FR-007 | F `six_families_serialize_and_are_accepted_separately_and_together`, payload/null/open-universe/empty controls and `bounded_map_set_permutations_have_the_same_normalized_serialization` |
| FR-008 | SC/VC historical/unsupported pairing controls; existing H01–H03 and labeled codec provenance |
| FR-009 | S typed producer/archive round trips; P exact original claim/identity preservation; SC historical controls; selected production/fixtures/hash domains unchanged |
| FR-010 | SC original v1 phase/category/precedence cases; V v2 boundary; S authority snapshots/zero publication; new live semantic-control phase assertions |
| FR-011 | R current verification; permanent public Mark regression with both specified routes; reuse C Orders and S intent route coverage |
| FR-012 | V/S/SC/VC/F cover existing negative categories; new live semantic N05–N07 cases below |
| FR-013 | R and C public facade without Approval; document adoption against an actually corrected release, no ecosystem edits |
| FR-014 | Mapping-first delivery, only documented missing tests; no production edit without a demonstrated violation; no redundant closure suite/fixture regeneration |

## Negative controls and owning phases

| Category | Existing anchor / missing coverage | Applicable refusal |
| --- | --- | --- |
| N01 | V `missing_required_query_result_hash_has_local_diagnostic`; SC `v1_missing_hash_decodes_then_commit_refuses` | V2 local integrity; v1 historical commit |
| N02 | V `wrong_query_result_hash_has_local_diagnostic`; SC wrong-hash counterpart | Same recorded-profile distinction |
| N03 | V digest syntax/type, `different_hash_domain_cannot_attest_query_membership`, `bare_id_array_hash_cannot_attest_member_objects`; SC historical variants | Closed/local-integrity or deferred v1 phase |
| N04 | V `unknown_query_integrity_field_has_local_diagnostic` | Strict structural boundary |
| N05 | V required/type/duplicate instance controls; add well-typed false live query instance | Structural failures locally; semantically false locally admissible claim at commit |
| N06 | V definition/entity shape controls and H snapshot-replay definition controls; add separate false definition/entity live subcases | Exact parent evidence comparison, preserving local acceptance |
| N07 | V capture shape/required/order/duplicate controls and H snapshot-replay missing-capture control; add live capture read/value tamper | Exact parent evidence comparison, preserving local acceptance |
| N08 | S `locally_consistent_forged_members_cannot_publish` and ordinary semantic contradiction controls | Local hash can pass; false members still fail commit |
| N09 | Same S forgery control plus existing history/replay binding controls | Relevant parent/state/history boundary |
| N10 | VC `ordinary_query_facts_continue_to_reject_bundle_integrity_fields` | Strict ordinary decoder |
| N11 | SC `cross_format_and_unknown_bundles_remain_invalid`, `live_commit_cross_format_pairing_keeps_the_earliest_refusal`, `fresh_wire08_v1_commit_keeps_history_upgrade_refusal` | Existing format/profile/upgrade phase and precedence |
| N12 | S locally consistent and freshly authorized forged members; C wrong/stale candidate evidence controls | Semantic/history/binding refusal despite well-formed integrity |

The three planned named live semantic controls may use separately labeled subcases for definition/entity and capture read/value. Use a genuine captured-query bundle, maintain canonical order, correct member hash and resealed outer identity, prove `locally_accepted`, then assert the exact existing Store read-facts mismatch, `authority` equality and zero commit calls. Commit an independent valid counterpart. These tests specify an already-implemented phase; production must not be tightened merely to make local decoding reject them.

## Proof and acceptance mapping

| Proof obligation | Primary contract and evidence |
| --- | --- |
| PO-001 | Data model F/E domains; producer-consumer support inventory; inspected closed products |
| PO-002 | Producer-consumer laws; S/P/F current runs plus bounded construction argument |
| PO-003 | V/VC/F structural/ordinary strictness; unchanged closed decoders |
| PO-004 | Exact existing hash payload and V/S/SC checks; independent truth retained |
| PO-005 | Unchanged evaluator/production scope and exact current R; semantic tampering delta |
| PO-006 | Selected reuse architecture, SC/VC historical controls, no format/hash/schema/fixture change |
| PO-007 | Validation-phases contract, SC competing-defect/operational controls and v2-before-projection invariant |
| PO-008 | R public facade and C supported consumers; no Model-specific dependency |

AC-001/011 map to R and the permanent Mark delta; AC-002/003/007 to S/P/F; AC-004/005/006 to V/VC/S and the N05–N07 delta; AC-008/009/010 to SC/VC and retained H/C replay/governance evidence; AC-012 to final owning-revision gates; AC-013 to consumer adoption notes. No acceptance criterion requires new production code when existing behavior already satisfies it.

## Delivery scope and completion sequence (planned, now executed through T025)

1. Add the permanent Mark public-facade regression, preferably in the existing consumer target with a small test-owned module/helper; avoid new general helpers or duplicate ten files.
2. Extend existing Store strict-bundle tests only for the isolated live semantic cases above.
3. Finalize reviewed contract/evidence/compatibility documentation with performed-versus-pending evidence clearly labeled; reuse every already-covered obligation.
4. Collect/run the targeted additions and applicable existing suites; review all FR/SC/PO obligations and every negative category.
5. Freeze one pushed delivery candidate and complete unchanged canonical gates plus the exact-Git consumer check; retain final revision-bound evidence externally and leave older 023/024 artifacts untouched.

If implementation-time inventory finds an equivalent existing test, map and reuse it rather than adding a duplicate. If every requirement is already covered, the accepted clarification permits evidence-mapping-only completion after applicable validation. If a genuine production violation appears, establish its actual failing regression and reassess the proof/compatibility obligations before changing only the demonstrated gap.

## Performed US1 delta

The permanent consumer `issue24_public_mark_matrix_preserves_state_and_authoritative_evidence` was collected (one nonzero Cargo test) and executed with ten labeled R1–R5 × invoke/evaluate cases. [US1 receipt](../evidence/us1.json) binds stable source, actual command/log/manifest/lock identities and assertions. This closes FR-011/013, SC-001 and AC-001/011 for the public reproduction. Temporary planning R remains provenance; existing Orders and intent cases remain complementary reused coverage. No production fix is claimed.

## Consolidated closure and strictness bindings

FR-001–005/007, SC-002 and AC-002–007 reuse S actual producer laws (246 internal cases), bounded generated productions (144), unchanged 39 captured projections, P independent `producer_fixture_projection_is_exact`/ownership/custody tests, F six-family/optional-null/open-universe/capture-sequence normalization tests and VC `ordinary_query_facts_continue_to_reject_bundle_integrity_fields`. No new closure suite or fixture was created. The private projection oracle uses the original inner record independently of the bundle serializer. Hash consistency, schema acceptance and typed closure remain distinct from truth at state/history. Execution is bound by US2/US3 receipts; construction invariants and inherited crypto/evaluator/backend assumptions remain as described in the producer contract.

## Performed US2 delta

`locally_consistent_false_query_instance_cannot_publish` covers N05; `locally_consistent_false_query_definition_or_entity_cannot_publish` covers separately labeled N06 definition/entity cases; `locally_consistent_false_query_capture_cannot_publish` covers separately labeled N07 read/value cases. All five passed local acceptance followed by the exact original commit refusal, full authority equality, zero commit calls and a genuine passing counterpart. [US2 receipt](../evidence/us2.json) records 21 Store evidence tests plus 30 compatibility tests passing; the one maintenance writer remains ignored. Existing N01–N04/N08–N12 controls remain reused.

## Performed US3 execution

[US3 evidence](../evidence/us3.json) records actual collection and source-stable runs: 145 strict evidence + 7 compatibility + 8 ordinary schema integration tests, plus 6 private projection tests, all passing. Store actual-producer evidence reuses the unchanged Store target from US2. The later formatting of the standalone consumer does not alter those target inputs. Six-family closure retains ordinary capture sequence and unknown/empty/null distinctions; unsupported bundle universe/null arrays and ordinary result_hash remain rejected.

## Performed US4 and final obligation mapping

[US4 evidence](../evidence/us4.json) records the own-source CLI build/digest, full 15-test public consumer target (including all ten Mark cases after formatting), and reuse of unchanged 30 Store/7 Verify historical controls. H01–H03, labeled K01/K02, read profiles, signed archives/recovery, both replays and command exposure retain their recorded interpretation. All 4,637 protected tracked identities, including production/schema/fixtures/dependencies/API and prior 023/024 artifacts, match baseline. Candidate canonical bytes/hashes/signatures retain the unchanged construction and recorded claims; the tests do not assert cross-profile byte identity.

This supplies FR-008–010/013, SC-004 and AC-008–010/013's scoped implementation/adoption readiness. SC-006 and AC-012 additionally require the frozen candidate gates and exact-Git consumer recorded externally. Authorization, concurrency, backend publication and history consistency remain independent obligations; no result hash or historical replay grants fresh authority. Approval's actual release adoption, merge/publication and whole-Core soundness closure are separate.

SC-005 and PO-001–008 are discharged at the scoped design/review level by [scope-decision](../evidence/scope-decision.md), the domain/producer/phase contracts, performed US1–US4 and [review](../evidence/review.md). FR-014 remains a strict two-test-file/documentation delivery. Final exact-revision empirical checks remain explicit in the immutable-candidate receipt.
