# Implementation coverage ledger

Core targeted acceptance passes. Exact clean-source full gates and final review remain T058–T059. QS-22 is a separate published-release adoption gate and stays blocked. Tests support the conditional conservativity argument; they do not certify the entire verifier.

## Requirements and success criteria

| ID | Cases / proof | Actual implementation or test evidence |
|---|---|---|
| FR-001 | QS-03–05,07,11 | private count_congruence tests; docs/verification.md |
| FR-002 | QS-01–04 | query_summary_congruence original/minimal/six variants |
| FR-003 | QS-05–06,09 | typed port and option-equality contracts; concretely false capture cases |
| FR-004 | QS-08–09,14 | parent application/delta tests; immutable session and migration-disabled tests |
| FR-005 | QS-08–10 | queries, lifecycle, invocation_bindings, resulting_state_order |
| FR-006 | PO-001–005 | proof-obligations.md; actual implication antecedents and source certificate |
| FR-007 | QS-09,11–12 | read_soundness, soundness_regressions, original error-guard obligations |
| FR-008 | QS-13,20 | cache/solver resource controls; trusted_verification infrastructure classifications |
| FR-009 | QS-10 | all three missing-guard witnesses reconfirmed DENY/POSTCONDITION_FAILED |
| FR-010 | QS-02–05 | minimal ordinary Core queries; no Model-specific production rule |
| FR-011 | QS-01 | original full41 checks; both action-qualified uniqueness subjects proven; public CLI |
| FR-012 | QS-15 | identity-compatibility.json; 45 frozen digests and all item hashes |
| FR-013 | QS-17,23–25 | proof_version_history genuine signed09 data/Behavior replay and recovery |
| FR-014 | QS-16–19 | current verifier10 keys/policies/schema/goldens; docs/versioning.md |
| FR-015 | QS-01,17,20,23–25 | closed fresh manifests vs authenticated historical attested coverage |
| FR-016 | QS-22 | handoff.md explicitly retains downstream published-release blocker |
| FR-017 | QS-06–14 | negative-baseline.json, missing-guard-baseline.json, focused and reused suites |
| FR-018 | QS-08–13,21 | unchanged aggregate paths, deltas and errors; full required gates still pending |
| FR-019 | QS-22 | issue35-current.json: current accurate title/body, read-only snapshot |
| FR-020 | QS-14,19,22 | both migration constructors disabled; six-area review and explicit non-goals |
| FR-021 | QS-01–25 | development receipts plus required clean-source receipt at T058 |
| FR-022 | PO-001–008 | constitution VII, proof-obligations.md and final correspondence review |
| SC-001 | QS-01,15 | us1-green.json, public CLI and identity-compatibility.json |
| SC-002 | QS-02–05 | minimal/control and six generic query/capture variants |
| SC-003 | QS-06–14 | 18 frozen concrete cases, confirmed witnesses,55 focused/reused US2 tests |
| SC-004 | PO-001–008 | unbounded argument and premise-to-code table; final review remains T059 |
| SC-005 | QS-15–20,23–25 | frozen-inputs.json, proof09-compatibility.json, proof-cache-compatibility.json |
| SC-006 | QS-16 | current cold/warm authoritative hash equality; exact final repeat at T058 |
| SC-007 | QS-22 | handoff.md and issue35-current.json consistently retain C19 blocker |
| SC-008 | QS-14–15,21 | no runtime/operator/Model changes; full required gates remain T058 |

## Acceptance cases

Paths without a crate qualifier refer to behavior-verify tests; Store and CLI owners are named explicitly. New/extend/reuse ownership follows [the matrix](../contracts/acceptance-matrix.md).

| ID | Ownership | Actual controls | Receipt / status |
|---|---|---|---|
| QS-01 | New + extend | query_summary_congruence::unchanged_original_full_c19_is_verified_with_both_local_uniqueness_proofs; CLI original-C19 case | us1-green.json |
| QS-02 | New | query_summary_congruence minimal Any and count-guard controls | us1-green.json |
| QS-03 | New | six membership/capture variants; private Any/Where descriptor contracts | us1-green.json |
| QS-04 | New + reuse | simple equality and compound C19 Narrow::Eq; queries uniqueness controls | us1-green.json, us2-green.json |
| QS-05 | New | equal renamed captures and repeated-read aliases; typed occurrence-port contracts | us1-green.json |
| QS-06 | New | different capture values retain concrete confirmed violations; full type equality | us2-green.json |
| QS-07 | New | different predicates/literals/domains; full declaration and template identity | us2-green.json |
| QS-08 | New + reuse | parent vs resulting count; matching Create +1 and primitive child captures | us2-green.json |
| QS-09 | New + reuse | changed captures/nonmatching/removal fixtures; queries/lifecycle/order/bindings | negative-baseline.json, us2-green.json |
| QS-10 | New | minimal and both original missing-guard witnesses; archived baseline witnesses re-evaluated | missing-guard-baseline.json, us2-green.json |
| QS-11 | New + reuse | partial helper rejection; read_soundness and soundness_regressions | negative-baseline.json, us2-green.json |
| QS-12 | New | removed erroneous parent membership retains ERROR; no certificate from child success | negative-baseline.json, us2-green.json |
| QS-13 | Reuse + new | cache/solver unknown/resource limits; unsupported partial relation cannot become aggregate proof | us2-green.json |
| QS-14 | New + reuse | per-session/context/schema/profile tests; both actual migration constructors default disabled | us2-green.json, us3-green.json |
| QS-15 | New + reuse | all45 frozen SHA256 digests; all original semantic/item hashes; raw historical canonicalizers | identity-compatibility.json |
| QS-16 | Extend + reuse | cache genuine old09 entries miss under10; hashing version separation; current cold/warm equal | proof-cache-compatibility.json |
| QS-17 | Extend | resulting_state_governance/trusted_verification; fresh explicit10 vs immutable08/09 policies | us3-green.json |
| QS-18 | Extend | Store trusted_governance schema controls: fresh10, authentic08/09 and unsupported enum refusal | us3-green.json |
| QS-19 | Extend | five separate current checked golden artifacts; verifier migration and external facade comparisons | current-artifacts.json, us3-green.json |
| QS-20 | Reuse + extend | trusted_verification22 and trusted_governance23 controls: cache bypass, non-proof, role/time/revocation | proof-cache-compatibility.json, us3-green.json |
| QS-21 | Reuse | authoritative scripts/gates.sh on clean committed source | T058 required; pending |
| QS-22 | Handoff | unchanged original full check under a pinned published corrected release | handoff.md; external adoption blocked |
| QS-23 | New + reuse | proof_version_history signed09 action replay/recovery; no certificate/backend change | proof09-baseline.json, proof09-compatibility.json |
| QS-24 | New + reuse | genuine signed09 required-proof v2 migration replay/recovery | proof09-baseline.json, proof09-compatibility.json |
| QS-25 | New + reuse | uncommitted live candidate refuses old evidence; event/subject/context/policy/signature tamper rejects | proof09-compatibility.json; replay_evidence_authority57 |

## Proof obligations

All eight dispositions and the unrestricted premise-to-code argument are in [proof-obligations.md](proof-obligations.md). PO-001–004 bind the typed membership certificate, occurrence ports, parent/context and original error/delta boundaries; PO-005 supplies the conditional conservativity argument; PO-006 binds test-first red/green to the concrete pre-correction oracle; PO-007 binds archive/current identity and purpose separation; PO-008 records six-area impacts and the separate release/global-theorem boundaries. Final exact-source review is T059.

The concrete nonmatching-create and remove/create requests can succeed while their universal postconditions remain false for other captures/removals. Their tests retain confirmed counterexamples, rather than introduce an unconditional delta or desired invariant. Infrastructure retries are described in us3-green.json; assertions and solver budgets were not relaxed.
