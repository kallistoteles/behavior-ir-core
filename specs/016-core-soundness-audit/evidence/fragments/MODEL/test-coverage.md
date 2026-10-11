# MODEL test coverage and execution requests

Baseline `1e286ebcf1d61117320c57df155fa1ef9397e880`; source inventory and
comparator review are E-MODEL-001. COORD alone schedules compilation/tests.
Source presence alone does not establish collection or execution. Actual collected
names/counts and ignored outcomes now reference E-COORD-009/012/013/016; fixed-seed
supplemental and ignored-order execution are recorded separately.

## Requested existing evidence

| Existing target / decisive cases | Obligations / relevant constructs | Independent assertion and common assumptions | Execution status |
| --- | --- | --- | --- |
| Core `exact`: parses_reduces_and_computes_exactly, text_form_is_finite_decimal_or_fraction, overflow_beyond_512_bits, rounding_table, rounding_names_and_codes, rounding_matches_reference | O002/O003; Int/Decimal/Exact/six rescale modes | hand numeric examples plus i128 Euclidean-division reference for all six modes; property numerator -1,000,000..1,000,000, denominator1..10,000, scale0..4. Output conversion/comparison still shares Exact parser. | executed pass; E-COORD-009/012/013/016 |
| Core `closure_table`: every_typing_row_admits_evaluates_exactly_and_replays, stores_and_rejected_forms, fixed_scale_nodes_inside_exact_arithmetic_are_range_checked | O002/O003/O008/O013 | each documented typing-table example checks type/value/admission and direct runtime/refusal; replay shares evaluator and cannot exclude common defects | executed pass; E-COORD-009/012/013/016 |
| Core `queries`: aggregates_are_exact_and_empty_sets_have_their_values, short_circuiting_uses_canonical_order_and_records_only_what_it_read, a_missing_query_fact_is_unknown_fact, inconsistent_universes_are_refused | O001/O006/O007 | contract values for empty folds, exact sums, canonical reached observations and contradiction rejection; current examples not every huge membership/bound domain | executed pass; E-COORD-009/012/013/016 |
| Core `queries`: a_complete_universe_rejects_contradictory_redundant_query_facts, complete_universe_and_query_fact_overlap_must_agree | O006, prior F-COORD-008 | injected extra membership directly violates declared complete universe; generated Boolean statuses length0..5, fixed id/customer fields. Agreed fact construction shares evaluator; independent contradictory extra id is negative evidence. | executed pass; E-COORD-009/012/013/016 |
| Core `result_state_queries`: a_created_member_joins_the_resulting_set, a_removed_member_leaves_the_resulting_set, a_changed_capture_is_a_new_instance_observed_against_s, a_bound_member_is_reclassified_on_its_resulting_value | O007/O008 | explicit expected membership/capture evidence, no full-state oracle pretending independent from shared evaluator | executed pass; E-COORD-009/012/013/016 |
| Core `read_soundness`: current_reads_validate_constraints_before_evaluating_all_argument_roles, state_invariants_do_not_restrict_entity_valued_input, current_reads_require_a_complete_valid_state_even_without_bound_entities, errors_while_validating_an_argument_do_not_claim_read_body_evaluation | O002/O011/O012 | contract-based outcome checks for state vs input/context role and no premature body observations | executed pass; E-COORD-009/012/013/016 |
| Core `read_soundness`: historical_wire08_v1_records_keep_their_original_read_replay, historical_wire08_read_invocations_replay_their_original_inner_format | O010/O013 | frozen old record replay distinct from newly emitted v2; no assumption that current decoder accepts all historically advertised formats | executed pass; E-COORD-009/012/013/016 |
| Core `read_replay_integrity`: equivalent_exact_decimal_encodings_have_identical_replay_evidence, semantically_equal_redundant_decimal_facts_are_accepted_and_replay | O006/O011/O013; prior F-COORD-008 | spellings1/1.0/1.00 produce byte-identical evidence; redundant1.00 accepts against universe1.0, contradictory2.0 refuses INVALID_STATE. Common decoder/evaluator means this is regression evidence, not general canonical proof. | executed pass; E-COORD-009/012/013/016 |
| Core `invocation_conformance`: actions_and_reads_share_all_applicable_binding_outcomes_at_arities_zero_to_three | O004/O012/O013 | 19 common action/read binding outcomes over arity0..3 including alias/wrong-type/missing/extra/unknown; shares resolver, compares exact refusal stage/problems and replay | executed pass; E-COORD-009/012/013/016 |
| Store `read_store`: a_store_projection_equals_the_plain_projection_of_the_same_state | O011/O012 | public plain-vs-store overlapping projected value equality under same state; not identity equality because store data-version/history evidence differ | executed pass; E-COORD-009/012/013/016 |
| Store `query_order_props`: backend_order_and_indexes_never_change_a_decision | O001/O007/O016 | 1000 deterministic backend permutation seeds, index enabled on even seeds; compare public records to unpermuted reference and periodically behavior replay. Shared evaluator could have common membership defect; this isolates transport order/index difference. | E-MODEL-004 explicitly selected release/ignored/exact run: 1 executed PASS, zero ignored/filtered |
| Store `lifecycle_replay`: a_mixed_history_replays_three_ways, tampering_is_found_at_its_position, a_long_mixed_history_replays | O004/O010/O013 | deterministic1000-event seed7 plus generated tamper kind/position; 10000-event seed11 long case ignored. Data/behavior/index replay have overlapping helpers; injection verifies specific mismatch boundaries, not all backend honesty. | 2 ordinary tests executed pass; 10k long case collected ignored and planned unexecuted, not pass |

## Prior-lead disposition

- F-COORD-006: source correction confirmed. `PRINCIPLES.md` Transition and
  T_B signatures include F_H and describe live-state/history distinction;
  `facts.rs:1–15,42` separates current exists/incoming from historical used.
  Lifecycle history/removal/recreation tests exercise distinction. The stale
  introductory `eval.rs:1` comment retains the old short signature; it does not
  override the authority or hide the actual used() input, and is a small QUALITY note.
- F-COORD-008: source normalization (`eval.rs:4043`), complete universe query
  agreement (`1936/2348`), relevant two read_replay_integrity regressions and
  generated contradictory-query cases are identified. Relevant negative/normalization regressions collected and executed in E009/012/013/016;
  source correction is regression-supported on the exact baseline, not by historical prose alone.
- F-MODEL-001: initial prefix-sum lead is an evidenced non-finding under
  007 repeated-addition/FR-020a and docs/verification partial-sum checks. No runtime
  assertion of final-total-only overflow freedom is authorized by those contracts.

## Remaining evidence limits

No machine-checked proof of every scalar/expression composition is supplied.
Existing property frameworks sample finite domains; their seeds/case counts and
actual collection belong in run metadata. Default ignored cases cannot be counted
as executed by a green gate. Replay and full/optimized differential evidence share
some semantic helpers; agreement alone cannot establish full child validity.
Every supplementary unavailable execution must retain an explicit obligation;
coverage review can finish honestly without claiming that missing evidence passed.


## Actual collected and executed accounting

E-COORD-012 lists 168 workspace target/doc groups and 793 tests; E013 lists the
24 ignored tests in corresponding groups. E-COORD-009's first 168 successful
workspace summaries reconcile exactly to 769 default executed passes, 24 ignored,
zero failures/filtered/measured. E-COORD-016 integrates that reconciliation;
E-MODEL-005 independently retains the read-only selected-target alignment and
artifact digests. The later external consumer is a distinct group, not mixed
into workspace counts. No local test runner was invoked by MODEL.

| Selected baseline target | Collected | Default executed pass | Ignored |
| --- | ---: | ---: | ---: |
| Core exact | 6 | 6 | 0 |
| Core closure_table | 3 | 3 | 0 |
| Core queries | 8 | 8 | 0 |
| Core result_state_queries | 4 | 4 | 0 |
| Core read_soundness | 14 | 14 | 0 |
| Core read_replay_integrity | 10 | 10 | 0 |
| Core invocation_conformance | 1 | 1 | 0 |
| Store read_store | 7 | 7 | 0 |
| Store lifecycle_replay | 3 | 2 | 1 |
| Store query_order_props | 1 | 0 | 1 |

The 10k mixed-history stress case and 10k latency/benchmark cases are explicitly
unexecuted supplementary evidence, not passing tests or correctness blockers
solely by being large. Actual 1000-event ordinary history assertions are executed.
The selected 1000 permutation/index order case separately executed in E-MODEL-004;
its result is not inferred from ignored collection. The default accounting table
remains unchanged: supplemental selection does not rewrite the baseline gate.
No 016 TCUP published-pin compatibility or new latency target is claimed.

## Actual supplemental evidence

MODEL independently inspected each immutable run.json, stdout and stderr. All use
the exact release revision/tree, pinned Nix environment and unchanged source status.
The configured proptest seed is 20261010; this fixes the sampled examples, rather
than proving the entire input domain. Existing source defines case counts/ranges.

| Evidence | Actual execution | Generator / independence limit |
| --- | --- | --- |
| E-MODEL-002 [primitive properties](../../runs/MODEL/primitive-properties/run.json) | Core exact6/hash_properties10/queries8/read_replay_integrity10: 34 passed, zero failed/ignored/filtered; exit0 | Exact reference is i128 rounding with limited ranges; hashing reorders existing declarations/metadata; query overlap property has32 cases over Boolean status vectors length0..5. Full hashing/query/replay helpers are partly shared. Default-config exact/hash properties retain source-defined finite sampling. |
| E-MODEL-003 [reference derivatives](../../runs/MODEL/reference-derivatives/run.json) | 4 passed, zero failed/ignored,4 unrelated library tests filtered; exit0 | Complete Value/Error replacement and wrong-parent refusal, documented canonical prefix overflow,96-case operator property over scalar -3..3/vector length0..5, separate default-config composition over a,b -20..19. These use the same full evaluator before/after and are not an independent production optimization proof. |
| E-MODEL-004 [query order1000](../../runs/MODEL/query-order-1000/run.json) | 1 passed, zero failed/ignored/filtered; exit0, exact ignored test explicitly selected in release mode | Seeds1..1000 are coded by the test, independent of proptest's seed. Alternate index/no-index and periodic replay isolate ordering/index representation differences; common evaluator cannot exclude a shared semantic bug. No latency threshold is semantic. |

Stderr's proptest source-parallel persistence messages identify unavailable
failure-persistence source discovery, not skipped tests; actual nonzero test
summaries above establish execution. No supplemental green result closes G3 or
the known Store replay/input defects.

Links: [canonical gates](../../runs/COORD/baseline-gates/run.json),
[collection](../../runs/COORD/collection-workspace/run.json),
[ignored collection](../../runs/COORD/collection-workspace-ignored/run.json),
[independent accounting](../../runs/MODEL/collection-accounting.json).
