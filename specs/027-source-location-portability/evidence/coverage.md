# Feature 027 execution ledger

Baseline diagnosis is executed; corrected-code acceptance is pending.

| Check | Owner | Evidence / status |
| --- | --- | --- |
| C027-01 | Private source_locations + Core absolute_controls; us1-green/final-preflight | PASS; frozen acceptance pending |
| C027-02 | Core relative_spelling/explicit_root + private verbatim; us1-red→green | PASS; frozen acceptance pending |
| C027-03 | Core two Rescale + nested Lambda + discarded Nodes; typed source-audit | PASS; frozen acceptance pending |
| C027-04 | Private permutations/duplicates + Core two checkouts/child CWD; us3-validation | PASS; frozen acceptance pending |
| C027-05 | Core identity/mutation/string custody + private draft payload + hash_properties | PASS; frozen acceptance pending |
| C027-06 | Core admission diagnostics + facade runtime diagnostics; final-preflight | PASS; frozen acceptance pending |
| C027-07 | Core fresh profiles declared/ad hoc success/failure; profile-accounting + profile-matrix-completion | PASS; frozen acceptance pending |
| C027-08 | Core 116 reused historical/identity tests + Store31; us2-validation | PASS; frozen acceptance pending |
| C027-09 | Facade4 tests; us2-consumer-reviewed/final-preflight | PASS; frozen acceptance pending |
| C027-10 | 1127 protected + 76 production source audit; source-audit | PASS; frozen acceptance pending |
| C027-11 | Source/version guide, README navigation, quickstart syntax; documentation-review | PASS; frozen acceptance pending |
| C027-12 | T024–T029 | Pending |

## Complete requirement mapping

| Requirement | Enforcing checks |
| --- | --- |
| FR-001 | C027-01/03/04 |
| FR-002 | C027-02/09 |
| FR-003 | C027-02/06 |
| FR-004 | C027-04/07 |
| FR-005 | C027-01/02 |
| FR-006 | C027-02/11 |
| FR-007 | C027-01/04 |
| FR-008 | C027-03/05 |
| FR-009 | C027-05/06/08 |
| FR-010 | C027-07/08/10 |
| FR-011 | C027-08/10 |
| FR-012 | C027-07/10/11 |
| FR-013 | C027-01–09, RED/GREEN ownership barrier |
| FR-014 | C027-09/12 |
| FR-015 | C027-11 |
| SC-001 | C027-01–04/06/09 |
| SC-002 | C027-09 |
| SC-003 | C027-04/05/07 |
| SC-004 | C027-02/03/05/06 |
| SC-005 | C027-07/08/10 |
| SC-006 | C027-01/04 |
| SC-007 | C027-10/11/12 |
| PO-001 | C027-01/02/03 |
| PO-002 | C027-02/04/06 |
| PO-003 | C027-05 |
| PO-004 | C027-07/08 |
| PO-005 | C027-08/10/11 |
| PO-006 | C027-09/12 |

| Story acceptance scenario | Enforcing checks |
| --- | --- |
| US1/1 | C027-01/02 |
| US1/2 | C027-02/09 |
| US1/3 | C027-04/05/07/09 |
| US1/4 | C027-06 |
| US2/1 | C027-05 |
| US2/2 | C027-07/11 |
| US2/3 | C027-07 |
| US2/4 | C027-08/10 |
| US2/5 | C027-05/08 |
| US3/1 | C027-01/02/04 |
| US3/2 | C027-04 |
| US3/3 | C027-02/11 |
| US3/4 | C027-03/05 |


Existing suites to reuse: hash_properties, read_admission, read_soundness, read_goldens, record_validation, read_replay, read_replay_integrity, strict_profile_replay (Core and Store), replay_evidence_authority. Full gates and exact-Git consumer pending.

US1/1–4 executed: us1-red.json → us1-green.json plus reviewed diagnostic control in us1-diagnostics-reviewed.json. Private 5, Core 7, consumer 3; probe 30/30 VALUE42 + replay. Scalar/projection constructed once for each workflow/profile. Exact provenance asserted separately from v2 records. Identity, historical and final acceptance pending.

US2/1–5 executed: us2-validation.json, us2-consumer-reviewed.json and profile-accounting.md; C027-05/07/08/09 historical and identity obligations pass. Historical custody is rechecked at T023.

US3/1–4 executed: us3-validation.json, final-preflight.json, profile-matrix-completion.json and documentation-review.json. All 15 FR / 7 SC / 6 PO / 13 scenario mappings are covered by the checks above; those involving C027-12 remain pending exact acceptance. T024 candidate freeze is next.
