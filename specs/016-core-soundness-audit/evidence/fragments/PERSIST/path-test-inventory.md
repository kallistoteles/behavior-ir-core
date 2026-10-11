# Persistence path/test source inventory

E-PERSIST-001 — Inspection only at release `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree `6a9f9879a9fece5a001ca30ace483a8cde1addd9`, dated 2026-10-10. No test collection/execution asserted by this fragment. Source tests are candidates, not proof. COORD schedules every build/test; PERSIST owns no shared source edit.

## Path denominator

| Path | Baseline source | Authoritative mutation or replay role |
| --- | --- | --- |
| Store creation legacy/v2 | `store.rs:895–999`; `lib.rs:40–47` | One Backend::create for genesis/head/seed/reference edges, after complete seed validation. |
| Ordinary update/create/remove/no-op + command-only commit legacy/v2 | `store.rs:1883–2380` | One Backend::commit after exact bundle/schema/parent/rederivation/evidence/content/reference validation; command-only event changes history without entity-state change. |
| Legacy migration | `store.rs:2384–2467` | Complete source → apply_migration → shared commit_migration_outcome. |
| Prepared v2 migration | `store.rs:256–484` | Candidate/context/governance checked then shared commit_migration_outcome. |
| Shared migration mutation | `store.rs:2469–2655` | One Backend::commit with complete changed versions/schema/history/reference events. |
| Idempotent action recovery | `store.rs:1948–2040` | Recover exact record at evaluated position+1; validate complete original bundle/history and v2 original authorization; never a new write. |
| Store read legacy declared/ad-hoc | `store.rs:1293–1371` | Exact snapshot/schema validation then ordinary read; no mutation. |
| Legacy read intent | `store.rs:1373–1434` | Frozen target validation then Store::read. |
| Unified read/action invocation + refusal | `store.rs:1721–1873` | Exact snapshot/typed bindings; action ALLOW may construct bundle, never commits automatically. |
| Plain transition/command decision replay | `behavior-core/src/record.rs:251–291` | Strict decode + exact module behavior → recorded request/facts → evaluate → complete comparison. No store/dispatch. |
| Plain read v1/v2 replay | `behavior-core/src/read.rs:140–177` | Strict decode + exact behavior/source → run_version selected by recorded read format. No store. |
| Plain invocation/refusal replay | `behavior-core/src/invocation.rs:1205–end` | Checked immutable snapshot/binding/outcome/record evidence; selected historical inner read profile. |
| Store read replay | `store.rs:1437–1477` | Parse, resolve exact recorded StoreId/StateId/position, read facts again and compare. |
| Store invocation replay | `store.rs:1480–1536` | Plain replay first, exact recorded position then reconstruct invocation, preserve transport metadata. |
| Data history replay | `replay.rs:403–1000` | Recompute canonical versions/lifecycle/schema/state/history/governance archive integrity, not standalone Behavior proof. |
| Behavior history replay with/without migrations | `replay.rs:1002–1327` | Data replay plus exact recorded module/migration re-evaluation and read/write/facts/evidence comparison. |
| Reference index replay with/without schema migration | `replay.rs:1372–1528` | Data replay plus content-derived Ref edges; exact schema lookup per generation. |
| Snapshot verification | `replay.rs:1532–end` | Recompute snapshot content identity under recorded declaration generation and compare historical StateRef; no mutation. |
| Committed command stream | `commands.rs:127–253` | Authenticate exact history interval and canonical state before immutable occurrence emission; no external dispatch. |

Full paths and local line references above are subject to the same source root `crates/behavior-store/src/` unless explicitly qualified.

## Mutation and injection denominator

Backend has exactly two mutating methods: create and commit. Internal physical writes cannot be enumerated for arbitrary external implementations. Core can establish all arguments before these calls; Backend explicitly supplies commit atomicity/crash durability; successful creation product is specified, but creation failure/lost-ack/retry semantics remain unclear (F-PERSIST-002). InMemoryBackend::create mutates genesis/head/version/type+field/reference maps (`memory.rs:176–194`); commit validates product then mutates version/index/removal/ref/history/head (`:284–374`). No typed failure occurs between its accepted in-memory mutations; this is not fsync/crash evidence.

`conformance::FaultInjector` (`conformance.rs:10–103`) injects BeforeWrite and AfterWrite only around commit. AfterWrite denotes applied-but-unacknowledged, not rollback or partially durable state. `Interleave` (`:140–267`) injects a complete commit on selected as-of queries or commit; HeadMoved must retain the other writer's complete event. `tests/support/history_backend.rs` adds altered/omitted records, head/genesis/version corruption and commit acknowledgment faults. `consumer/tests/support/durable_backend.rs` uses filesystem snapshot/lock/rename/fsync for one test backend; its separate-process tests are scoped to that host implementation.

Open coverage question: creation-call failure injection and backend-specific internal write/fsync/rename crash windows beyond the existing consumer backend; an outside wrapper cannot prove arbitrary backend honesty.

## Selected source test candidates

Tables list test-like function names recovered from source (including proptest bodies) under their files. They are not collected test counts; support and helper functions are filtered only when preceded by a nearby test attribute or property macro, so actual COORD collection remains authoritative.

### Creation and commit/fault

`crates/behavior-store/tests/commit.rs`

- `genesis_is_validated_and_gives_s0` at line 15.
- `a_transfer_commits_a_new_state` at line 44.
- `outdated_parents_conflict_and_change_nothing` at line 87.
- `denied_decisions_have_no_bundle` at line 110.
- `a_no_op_keeps_the_identity_and_returning_content_repeats_it` at line 124.
- `resubmission_and_late_retries_are_idempotent` at line 153.
- `invalid_bundles_are_refused` at line 175.
- `another_declaration_is_refused` at line 223.
- `unknown_entities_are_not_found` at line 245.
- `crashes_show_all_or_nothing_and_retries_apply_once` at line 262.
- `evaluation_reads_one_consistent_snapshot` at line 303.
- `the_module_must_be_the_behavior_that_made_the_bundle` at line 335.
- `declarations_are_derived_from_the_action_not_the_bundle` at line 363.

`crates/behavior-store/tests/conformance.rs`

- `the_reference_backend_passes_every_case` at line 248.
- `each_broken_backend_fails_its_designated_case` at line 256.
- `reversed_key_order_passes_every_case` at line 283.
- `reference_backend_rejects_inconsistent_atomic_arguments_before_any_write` at line 290.
- `command_history_conformance_detects_missing_or_partial_commands_and_ignores_index_order` at line 375.

`crates/behavior-store/tests/concurrency_props.rs`

- `interleavings_commit_only_on_the_evaluated_state` at line 121.
- `ten_thousand_interleavings` at line 131.

`crates/behavior-store/tests/history_integrity.rs`

- `behavior_replay_validates_its_final_state_as_strictly_as_data_replay` at line 43.
- `both_replay_modes_refuse_false_initial_state_even_for_an_empty_range` at line 57.
- `omitted_record_cannot_become_an_empty_successful_history` at line 66.
- `altered_genesis_or_broken_parent_chain_is_rejected_in_both_replay_modes` at line 77.
- `a_complete_history_anchor_includes_genesis_and_exact_event_identity` at line 105.
- `same_state_same_position_forks_cannot_reuse_a_new_candidate` at line 121.
- `history_position_exhaustion_is_a_typed_refusal_before_backend_write` at line 148.
- `entity_revision_exhaustion_is_a_typed_refusal_before_backend_write` at line 175.
- `exact_recovery_after_later_commits_returns_the_original_event_without_a_write` at line 207.
- `malformed_anchor_formats_and_genesis_record_contradictions_are_not_claims_of_history` at line 225.

`consumer/tests/command_crash_recovery.rs`

- `two_process_recovery_finds_one_durable_mixed_event_after_lost_acknowledgment` at line 65.
- `separate_process_prewrite_failure_exposes_neither_state_nor_request` at line 96.
- `host_storage_is_real_persistence_even_without_command_semantics` at line 109.
- `process_worker` at line 122.

### Lifecycle and integrity

`crates/behavior-store/tests/lifecycle_create.rs`

- `a_creation_commits_version_one_and_extends_the_state` at line 14.
- `an_identity_used_in_the_genesis_cannot_be_created` at line 70.
- `records_without_lifecycle_keep_the_005_shape` at line 83.
- `the_registry_is_keyed_by_type_name_and_id` at line 106.
- `an_existence_read_is_in_the_read_facts_and_rechecked_at_commit` at line 129.

`crates/behavior-store/tests/lifecycle_remove.rs`

- `a_removal_keeps_history_and_frees_nothing` at line 13.

`crates/behavior-store/tests/lifecycle_props.rs`

- `colliding_creations_never_create_an_identity_twice` at line 97.
- `colliding_creations_at_scale` at line 104.

`crates/behavior-store/tests/lifecycle_replay.rs`

- `a_mixed_history_replays_three_ways` at line 98.
- `tampering_is_found_at_its_position` at line 199.
- `a_long_mixed_history_replays` at line 230.

`crates/behavior-store/tests/references.rs`

- `a_seed_reference_must_point_at_a_seed_entity` at line 15.
- `the_index_follows_creations_retargets_and_removals` at line 41.
- `a_reference_read_is_rechecked_at_commit` at line 124.
- `seed_constraints_may_use_existence_and_references` at line 146.

`crates/behavior-store/tests/result_state_props.rs`

- `derived_resulting_state_queries_match_full_reevaluation` at line 217.
- `derived_resulting_state_queries_match_full_reevaluation_10k` at line 226.

### Schema and migration

`crates/behavior-store/tests/schema_binding.rs`

- `a_behavior_only_change_evaluates_and_commits_against_an_existing_store` at line 70.
- `a_difference_in_an_untouched_entity_type_is_refused_before_any_decision` at line 90.
- `a_changed_declaration_of_another_type_is_refused_too` at line 116.
- `committing_with_a_module_of_another_schema_is_refused` at line 146.
- `a_store_without_migrations_is_under_its_genesis_schema` at line 159.
- `schema_at_refuses_a_state_of_another_store` at line 179.
- `the_head_of_a_store_without_migrations_has_no_schema_field` at line 187.
- `the_refusal_lists_every_differing_type_with_both_declarations` at line 201.

`crates/behavior-store/tests/schema_binding_props.rs`

- `behavior_only_edits_always_evaluate` at line 178.
- `every_declaration_edit_is_refused_for_every_action` at line 191.

`crates/behavior-store/tests/migration_store.rs`

- `a_migration_commits_as_one_transition_at_the_next_position` at line 157.
- `after_the_migration_the_store_speaks_only_the_new_schema` at line 209.
- `the_identity_registry_continues_across_a_migration` at line 244.
- `renaming_a_reference_field_moves_its_incoming_edges` at line 269.
- `a_retired_type_with_entities_is_refused` at line 303.
- `a_migration_whose_source_is_not_the_current_schema_is_refused` at line 326.
- `a_store_without_migrations_keeps_its_bytes` at line 343.
- `the_field_index_forgets_fields_a_migration_removed` at line 357.
- `every_refusal_leaves_position_state_head_and_schema_unchanged` at line 405.
- `a_migration_is_all_or_nothing_across_a_crash` at line 452.
- `an_action_evaluated_before_a_migration_conflicts_after_it` at line 487.
- `the_staged_path_broadens_backfills_and_then_narrows` at line 515.
- `reference_replay_follows_the_schema_of_each_position` at line 565.

`crates/behavior-store/tests/migration_replay.rs`

- `a_history_across_three_migrations_replays_without_divergence` at line 188.
- `behavior_replay_needs_the_migration` at line 213.
- `tampering_with_a_migration_is_found_at_its_position` at line 372.
- `ten_thousand_transitions_across_three_migrations_replay` at line 393.

`crates/behavior-store/tests/migration_context.rs`

- `resolved_transform_cannot_be_reinterpreted_by_a_same_schema_source_behavior` at line 49.
- `same_schema_target_behavior_is_part_of_the_prepared_context_even_if_schema_values_fit` at line 68.
- `incompatible_behavior_pair_cannot_receive_a_new_verified_attestation` at line 85.
- `store_refuses_behavior_substitution_without_changing_any_history` at line 100.
- `preparing_exact_pair_is_read_only_and_candidate_binds_both_behaviors` at line 117.
- `trusted_migration_proof_subject_contains_exact_pair_and_rejects_substitution` at line 138.
- `trusted_migration_manifest_includes_requirement_expression_safety` at line 173.
- `migration_candidate_rejects_open_or_contradictory_transformation_products` at line 210.

### Queries and reads

`crates/behavior-store/tests/queries.rs`

- `close_customer_is_decided_over_the_open_orders` at line 16.
- `the_result_hash_changes_when_a_member_joins` at line 51.
- `results_do_not_depend_on_indexes_or_iteration_order` at line 141.
- `type_and_field_indexes_answer_as_of_a_position` at line 158.

`crates/behavior-store/tests/query_replay.rs`

- `a_query_history_replays_both_ways` at line 214.
- `query_tampering_is_found_at_its_position` at line 320.
- `a_thousand_transition_query_history_replays` at line 341.
- `a_long_query_history_replays` at line 351.

`crates/behavior-store/tests/query_order_props.rs`

- `backend_order_and_indexes_never_change_a_decision` at line 187.

`crates/behavior-store/tests/read_store_replay.rs`

- `records_replay_against_the_store_at_their_position` at line 75.
- `a_record_of_another_store_or_state_is_reported` at line 115.

`crates/behavior-store/tests/read_soundness.rs`

- `a_valid_store_does_not_make_invalid_read_input_valid` at line 12.
- `store_query_failures_have_self_contained_evidence_and_do_not_mutate_history` at line 37.
- `store_read_only_query_success_replays_without_accessing_the_store` at line 70.

`crates/behavior-core/tests/read_replay_integrity.rs`

- `a_query_used_only_in_a_declared_read_replays_its_success_and_empty_result` at line 26.
- `historical_v1_query_agreement_refusals_keep_their_original_interpretation` at line 53.
- `a_query_used_only_in_a_projection_replays_its_success` at line 79.
- `an_ad_hoc_read_supplies_its_own_query_definitions_for_replay` at line 94.
- `read_only_fold_queries_replay_their_members_and_field_observations` at line 110.
- `an_ad_hoc_query_replays_the_exact_captured_input` at line 130.
- `equivalent_exact_decimal_encodings_have_identical_replay_evidence` at line 167.
- `semantically_equal_redundant_decimal_facts_are_accepted_and_replay` at line 192.
- `strict_transport_refusals_are_self_contained_replayable_records` at line 216.
- `transport_refusal_evidence_cannot_claim_a_valid_request_or_body_observations` at line 238.

`crates/behavior-core/tests/read_soundness.rs`

- `current_reads_validate_constraints_before_evaluating_all_argument_roles` at line 10.
- `current_query_failure_keeps_the_evidence_needed_to_replay` at line 29.
- `current_read_identity_and_replay_ignore_diagnostic_provenance` at line 43.
- `record_equality_and_round_trip_ignore_detached_diagnostics` at line 58.
- `capability_errors_do_not_disclose_internal_failure_operands` at line 75.
- `untrusted_invocation_rejects_duplicate_json_keys_before_map_reduction` at line 91.
- `state_invariants_do_not_restrict_entity_valued_input` at line 108.
- `current_reads_require_a_complete_valid_state_even_without_bound_entities` at line 126.
- `historical_wire08_v1_records_keep_their_original_read_replay` at line 142.
- `historical_wire08_read_invocations_replay_their_original_inner_format` at line 161.
- `current_record_claims_are_closed_and_tampering_is_detected_by_replay` at line 195.
- `strict_decoding_applies_to_both_read_request_entry_points` at line 213.
- `current_read_records_match_the_independent_schema` at line 227.
- `errors_while_validating_an_argument_do_not_claim_read_body_evaluation` at line 292.

### Invocation and commands

`crates/behavior-store/tests/invocation_history.rs`

- `mixed_invocations_preserve_history_and_replay_from_their_original_positions` at line 10.

`crates/behavior-store/tests/command_stream.rs`

- `exclusive_whole_event_pages_pin_history_and_preserve_duplicate_counts` at line 8.
- `empty_realized_commands_advance_without_splitting_events` at line 40.
- `request_decoder_requires_closed_actual_endpoints_and_bounded_integer_limits` at line 62.
- `wrong_fork_future_reversed_and_mismatched_state_endpoints_are_refused` at line 112.
- `missing_broken_and_uncommitted_records_are_never_successful_empty_pages` at line 147.
- `partial_state_commit_is_refused_before_dispatchable_output` at line 171.
- `migration_is_an_empty_whole_history_event` at line 216.
- `stream_schema_and_checked_decoder_agree_on_transport_shapes` at line 248.

`crates/behavior-store/tests/command_occurrences.rs`

- `duplicate_intents_keep_multiplicity_and_have_independent_golden_occurrence_formula` at line 8.
- `copied_history_agrees_while_equal_state_equal_position_forks_differ` at line 36.
- `intentional_repeat_has_new_occurrence_and_late_recovery_has_original_occurrence` at line 52.
- `emission_permutation_preserves_commit_and_occurrence_multiset_but_count_changes_it` at line 71.

`crates/behavior-store/tests/command_replay.rs`

- `data_replay_needs_no_current_module_and_behavior_replay_needs_exact_semantics` at line 9.
- `altered_archives_counts_occurrence_assertions_parent_or_end_state_fail_both_replays` at line 32.
- `typed_enum_and_nominal_archives_validate_without_current_declarations` at line 76.

`crates/behavior-store/tests/command_only.rs`

- `command_only_commits_advance_history_and_preserve_versions_universe_and_indexes` at line 74.
- `empty_realized_bag_is_a_history_event_and_stale_head_still_conflicts` at line 99.
- `deliberate_repeat_is_new_history_and_old_resubmission_recovers_original_event` at line 124.
- `prewrite_abort_and_lost_response_respect_command_only_atomicity` at line 141.

`consumer/tests/durable_commands.rs`

- `only_committed_store_output_reaches_adapter_and_retry_keeps_idempotency_key` at line 21.
- `candidate_only_bag_does_not_claim_commitment` at line 74.

### Core standalone replay

`crates/behavior-core/tests/replay.rs`

- `every_record_replays` at line 22.
- `changed_behavior_is_a_mismatch` at line 34.
- `altered_record_is_a_mismatch_with_path` at line 47.

`crates/behavior-core/tests/command_replay.rs`

- `allowed_false_guard_and_selected_payload_error_replay_exactly` at line 7.
- `permutations_and_detached_locations_reproduce_same_bytes_and_intents` at line 30.
- `query_binder_and_equal_derived_alias_changes_preserve_semantic_replay` at line 47.
- `changing_declaration_payload_count_hash_facts_or_semantic_trace_diverges` at line 72.
- `duplicate_invocation_record_keys_are_rejected_before_map_reduction` at line 98.
- `legacy_record_keeps_its_exact_provenance_comparison` at line 130.
- `receipt_golden_roundtrip_and_both_record_forms_replay` at line 148.

`crates/behavior-core/tests/invocation_replay.rs`

- `every_evaluated_and_refused_golden_replays_without_a_snapshot` at line 14.
- `semantic_tampering_is_found_at_the_affected_evidence_path` at line 27.
- `rehashing_a_contradictory_envelope_does_not_make_it_valid` at line 64.

`crates/behavior-core/tests/read_replay.rs`

- `every_kind_of_record_replays_from_its_own_facts` at line 121.
- `an_ad_hoc_record_replays_from_its_definition_alone` at line 142.
- `every_altered_field_is_reported` at line 168.

### Store replay

`crates/behavior-store/tests/replay.rs`

- `a_clean_history_replays_both_ways` at line 130.
- `snapshots_are_verified_not_trusted` at line 152.
- `every_tamper_is_found_at_its_position` at line 296.
- `ten_thousand_transitions_replay_and_tampers_are_found` at line 304.
- `stored_values_are_checked_against_their_content_hashes` at line 406.

## Requested execution / coverage handoff

T045/T047 may use canonical workspace execution plus its separately recorded full test listing for existing tests; do not rerun whole suites merely to inflate evidence. Targeted cases needed if baseline gates fail or a lead needs decisive output:

- `cargo test -p behavior-store --test conformance -- --nocapture`: reference/broken/reversed enumeration, atomic argument refusals and missing/partial command history.
- `cargo test -p behavior-store --test history_integrity -- --nocapture`: exact/fork/history/empty-range/end-state/exhaustion/lost-ack properties.
- `cargo test -p behavior-store --test command_stream partial_state_commit_is_refused_before_dispatchable_output -- --exact --nocapture`: output integrity before occurrence publication.
- `cargo test --manifest-path consumer/Cargo.toml --test command_crash_recovery -- --nocapture`: scoped separate-process durable backend evidence.
- Every listed replay/queries/index/property test can be matched against collected/executed gate targets. Missing collection/execution stays open.

New historical read/inner invocation lead needs a disclosed test-only overlay (same conversion used by existing Core standalone historical tests) comparing Core standalone replay with Store-backed replay. PERSIST may supply a test patch; COORD controls worktree/build/run custody. No fix is authorized.
