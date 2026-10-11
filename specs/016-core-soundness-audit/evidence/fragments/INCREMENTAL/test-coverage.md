# INCREMENTAL coverage and comparator review

Baseline `1e286ebcf1d61117320c57df155fa1ef9397e880`. E-INCREMENTAL-001
source evidence; COORD collected/executed serially. E-COORD-009/012/013/016
establish default execution; E-INCREMENTAL-002 is an actual failing contract assertion.

| Evidence family / exact selected source | Obligations | Method, independence and limits | Current execution |
| --- | --- | --- | --- |
| Store lib incremental tests oracle_reconstructs_complete_parent_and_all_atomic_edits, oracle_detects_unchanged_nonlocal_violation | O004/O008 | complete canonical Backend row reconstruction, all atomic edits/removals applied, refs reconstructed from declarations/value rather than cached incoming/ref_changes; shared ordinary validator disclosed | executed pass; E-COORD-009/012/013/016 |
| Store lib candidate_matches_independent_full_child_including_invalid_rows | O004 |128 cases, n1..19, edit tuples index0..24/value-2..19/kind0..5, vector0..19; identity mismatch/wrong type/missing field/new/changed row complete failure-list equality. Source/validity shared validator means not independent semantic proof. | executed pass; E-COORD-009/012/013/016 |
| Store lib local_validation changed_obligations_equal_full_validation_on_valid_parents | O004 |256 cases, old values1..99, 1..19 rows per two types; edits include type/id/missing/zero-divisor/no-op; historical014guard test-only, not current production eligibility | executed pass; E-COORD-009/012/013/016 |
| Store lib dependency nested_formal_aliases_are_local_but_all_branches_are_analyzed, unused_nonlocal_definitions_are_not_obligation_roots, both_admitted_profiles_preserve_nested_locality, profile_target_resolution_matches_ordinary_hash_then_name_contract | O002 | transitive closure and all branches, profile-specific target resolution; no previous-execution dependency heuristic | executed pass; E-COORD-009/012/013/016 |
| Store lib changed_and_created_refs_see_one_simultaneous_child | O003/O004/O005 | new→old, changed→new coherent overlay versus independent full-child refs; missing target negative explicitly asserted | executed pass; E-COORD-009/012/013/016 |
| Store lib pending_refuses_record_bound_to_another_parent, exact_behavior_profile_and_position_are_bound_even_for_equal_values, uncertain_ownership_and_wrong_child_discard_materialization, mutable_access_and_reopen_have_no_unbound_evidence | O001/O006/O007 | exact event/history/module/profile mismatch, ownership uncertainty, cold reconstruction; no cryptographic authentication of arbitrary backend | executed pass; E-COORD-009/012/013/016 |
| Store integration snapshot_reuse warm/behavior/CAS/global/reference/history/concurrent tests, warm_sequences_match_full_validation | O001/O005/O006/O007/O010 | public warm vs explicit backend_mut cold control; complete ordinary evaluator shared; random sequence xs-2..11 length1..11, n1..11; control differs cache only | executed pass; E-COORD-009/012/013/016; benchmark ignored separately |
| Store integration incremental_validation creates_carry_validity_but_removals_rebuild, failed_create_commit_never_publishes_candidate, global_obligations_preserve_full_validation_boundary, lifecycle_sequences_equal_parent_reconstruction | O004/O005/O006/O010 | public decisions/bundles/committed/head/read-record equality; operation seq1..15 over create/remove/update six ids; each control explicitly evicts cache | executed pass; E-COORD-009/012/013/016 |
| Store integration incoming_reference_indexes_survive_create_detach_and_remove | O003/O005/O007/O010 | reconstruct/compare reverse refs through creation/retarget/removal; removal path excluded from new certificate theorem | executed pass; E-COORD-009/012/013/016 |
| Store integration lost_acknowledgment_rebuilds_the_actual_child_without_speculative_evidence, mandatory_backend_failures_and_redundant_omissions_keep_existing_routes | O005/O006 | backend commit applies then error, next cold rebuild; mandatory head/record/version/removal/incoming/used failure routes preserved; unrelated skipped read may fail hypothetically without being fabricated | executed pass; E-COORD-009/012/013/016 |
| Store integration nonlocal_creation_preserves_014_refusal_boundary | O008 | passing characterization proves currently committed invalid child can subsequently refuse full read; passing result does not prove G3. Local guard rejects module correctly. | characterization pass in E009; independent G3 RED E-INCREMENTAL-002 confirms finding |
| Core lib incremental_proof reference_covers_all_result_transitions_and_rejects_wrong_parent, composition_and_identity_include_errors, every_operator_reference_delta_agrees_with_ordinary_evaluation, reference_sum_preserves_checked_prefix_overflow | O009 | operator property explicitly96 cases old/new scalar-3..3 and vector length0..5 across34seedfamilies; separate composition property a,b-20..19 uses default Proptest configuration. Complete replacement including Error; same fullf before/after, no independent optimized-engine theorem | executed pass; E-COORD-009/012/013/016 |
| Store lib reference_control_reconstructs_parent_and_complete_child | O004/O010 | explicit test-only full-parent/full-child control keeps same ordinary operations and counts full universe; only selected localdomain | executed pass; E-COORD-009/012/013/016 |
| Store ignored controlled_10000_pairs / repeated_warm_update_read_and_create_read_workloads | performance evidence only, O010 supplementary projections | warm/update→read/create→read series; internal control checks fullchild and public outputs at10k, integration100/1k/10k; timingclock operational measurement only, no semantic latencytarget. No new016TCUPpublishedpin claim. | collected ignored; 10k latency/stress rerun explicitly unexecuted, not pass |

## New direct counterexample overlay

`/tmp/behavior-core-016.3fbz3jon/incremental-overlay`, exact release base,
adds only `crates/behavior-store/tests/audit_016_child_validity.rs`. Root captured
complete patch/hash/provenance and executed it serially as E-INCREMENTAL-002. Target:

`nix develop -c cargo test -p behavior-store --test audit_016_child_validity -- --nocapture`.

The test checks a direct mathematical child obligation independent of both
optimized scope and the full validator: after successful ordinary creation,
unchanged e0.target is "new", and Backend.keys_at(child) contains "new". Thus
`not exists_S'(e0.target)` is false. The next Store read supplies corroborating
full-child STATE_INVALID output. The final assertion demands the unchanged rule
hold and actually fails at line68, exit101, after legal positive setup and commit.
One executed test, zero passed/one failed, zero ignored/filtered; compilation
completed. Child position1 retains e0.target=new, target_exists=true, with full
read STATE_INVALID corroboration. This confirms F-INCREMENTAL-001 directly. No runtime fix or
new helper is included; this is deliberate red-only audit evidence, not a failed
unmodified baseline gate or retrospective test-first compliance claim.


## Actual counts and independent review

E-COORD-012/013/016 plus E009 reconcile Core library8/8 passed/0 ignored (four
incremental reference tests); Store library20 collected/19 passed/1 ignored;
incremental_validation10 collected/9 passed/1 ignored; snapshot_reuse11 collected/
10 passed/1 ignored. Every named ordinary case above is in those default groups.
Private Store incremental namespace has18 collected names including one ignored
controlled 10k workload; historical local_validation property is separately cfg(test).
Fixed-seed oracle/characterization E-INCREMENTAL-003/004 are separately executed
on the same exact unchanged release; their actual results follow.

E-INCREMENTAL-002 [run](../../runs/INCREMENTAL/child-validity-red/run.json) and
R-VERIFY-006 [independent finding review](../../reviews/MODEL/incremental-finding.md)
confirm S0/High. All six retained repro artifact hashes independently matched.
The RED is supplemental evidence, never a passing canonical gate or production fix.

## Actual fixed-seed follow-ups

MODEL/INCREMENTAL independently inspected each run metadata/stdout/stderr and
the source-defined domains. E-INCREMENTAL-003
[baseline-oracles](../../runs/INCREMENTAL/baseline-oracles/run.json) executed17
passed, zero failed,1 ignored controlled10000 workload and2 unrelated historical
library tests filtered; exit0. The selected incremental namespace includes the
128-case candidate/full-child property, dependency closures/aliases/profile
resolution, simultaneous changed/new refs, exact parent/child/cache ownership,
reopen/reset and full-child control. Seed20261010 fixes the proptest sample;
full-child reconstruction remains structurally independent of scope/cache but
shares the ordinary validator. The passing unchanged-nonlocal oracle deliberately
detects a counterexample to changed-only checking.

E-INCREMENTAL-004
[nonlocal-characterization](../../runs/INCREMENTAL/nonlocal-characterization/run.json)
executed1 passed, zero failed/ignored,9 unrelated integration cases filtered;
exit0. It characterizes the successful ordinary create followed by STATE_INVALID,
and therefore supports rather than refutes F-INCREMENTAL-001. It is not a passing
validity-preservation law.

E-MODEL-003 separately executes the four private reference-result/derivative
tests (4 passed/4 filtered); the domains and common full-evaluator dependency are
recorded in MODEL/test-coverage. E-MODEL-004's exact1000 backend-order case also
passes, without rerunning ignored 10k workloads. O004/O010 remain empirically
qualified to these sampled selected domains. O008 remains refuted by direct
E-INCREMENTAL-002 independently of all green differential/characterization runs.
