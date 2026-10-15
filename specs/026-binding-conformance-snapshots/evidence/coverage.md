# Feature 026 coverage and evidence

All execution not explicitly linked below remains pending. Expected records must be authored before corrected-request execution.

## Conformance owners and status

| Conformance | Primary task owners | Required acceptance evidence |
| --- | --- | --- |
| C026-01 custody | T002, T014, T016, T028, T031, T032 | Baseline/protected hashes, generator/package custody, historical replay |
| C026-02 closed inventory/world domains | T005, T006, T012–T018, T023 | Ten discovered cases, explicit types/identities, failed inventory mutations |
| C026-03 observation consistency | T006, T012, T013, T015, T020 | All-row Snapshot proof and complete Account incoming edge |
| C026-04 valid parent/child | T006, T012, T013, T015, T020 | Existing Store validation/export plus independent delta-to-child equality |
| C026-05 independent full semantic oracle | T007–T015, T018, T020 | Reviewed ten-file oracle provenance and exact facade/CLI equality |
| C026-06 missing universe | T022–T026 | Raw Core/CLI N01 completeness refusal before body |
| C026-07 inconsistent observation | T022–T026 | Raw Core/CLI N02 consistency refusal before body |
| C026-08 invalid complete parent | T022–T026 | Raw Core/CLI N03 parent-validity refusal before body |
| C026-09 faithful comparison/coverage | T022–T027, T037 | Same-decision semantic/inventory mutations, absent commands, reused real multiplicity tests |
| C026-10 generator/reproducibility | T014, T016, T017, T020, T028, T031 | Twice-generated identical outputs, --check, no oracle/protected writes |
| C026-11 public facade consumers | T012, T013, T015, T020, T024, T039 | Shared facade-only helper, path and exact-Git consumer with actual lock |
| C026-12 CLI/determinism/replay | T014, T018, T020, T031, T037 | Actual ten-case twice-run records/digests and same-profile replay |
| C026-13 real conformance distribution | T014, T020, T028–T032 | Actual archive fragments/extracted data/step-5 semantic rejection and retained step-4/order tests |
| C026-14 final acceptance/navigation/provenance | T019, T030, T034–T041 | Clean candidate, complete unchanged gates, actual capture/CLI hashes, external reviewed receipt |


## Requirements and scenarios

| Source | Required conformance |
| --- | --- |
| FR-001 | C026-02/03/04/05/10 |
| FR-002 | C026-02/03/04/10 |
| FR-003 | C026-04/05/09/11/12 |
| FR-004 | C026-05/11/12/13 |
| FR-005 | C026-02/05/09/11/14 |
| FR-006 | C026-06/07/08 |
| FR-007 | C026-01/02/10 |
| FR-008 | Research source-role table; C026-01/14 |
| FR-009 | C026-01/10/14 |
| FR-010 | Current README + root link; C026-13/14 |
| FR-011 | C026-12/13/14 |
| FR-012 | C026-01/06/07/08/14 |
| FR-013 | Core-owned corpus + unchanged release schemas/no publication; C026-13/14 |
| FR-014 | C026-02/03/04/08 |
| FR-015 | C026-05/09/11/12 |
| SC-001 | C026-02/03/04/05 |
| SC-002 | C026-12/13 |
| SC-003 | C026-02/06/07/08/09 |
| SC-004 | C026-01/14 |
| SC-005 | C026-10 |
| SC-006 | Source-role inventory + C026-11/13/14 |
| SC-007 | C026-05/09 |
| AC-001 | C026-05/11/12 |
| AC-002 | C026-02/10 |
| AC-003 | C026-03 |
| AC-004 | C026-04 |
| AC-005 | C026-04/05/11/12 |
| AC-006 | C026-05/11/12 |
| AC-007 | C026-06/07/08 |
| AC-008 | C026-02/09/11/14 |
| AC-009 | C026-12/13 |
| AC-010 | C026-01/14 |
| AC-011 | C026-01/06/07/08/14 |
| AC-012 | C026-11/12/13 |
| AC-013 | C026-10 |
| AC-014 | C026-05/09 |
| US1/AC1–4 | C026-02/03/04/05/11/12/13 |
| US2/AC1–6 | C026-02/05/06/07/08/09/11/14 |
| US3/AC1–3 | C026-01/10/12/13/14 |

## Completed evidence

- T001: environment.json, baseline source CLI build status 0 and pinned tools.
- T002: source-inventory.md and protected-inputs.json; 4810 protected files, 546 historical fixtures and 42 captures. Only the established 017 README discrepancy is recorded.
- T003: baseline-red.json, ten observed invalid-snapshot outcomes, regression probe status 1.
- T005: module-identities.json and current/cases.json; admission/schema identities only, no corrected action evaluation.
- T006: current/worlds.json contains reviewed explicit W01–W10 parents and independent children. Empty memberships and Ref/plain-Id distinctions follow the corpus contract. Executable world validity remains pending.

## US1 execution

- T007–T011: oracle-review.md and oracle-input-hashes.json establish independent full-record authoring before corrected requests.
- T012–T018: us1-helper-cycle.json, us1-generator-cycle.json and us1-runner-cycle.json retain actual RED-to-GREEN assertion logs.
- T020: us1-green.json binds all ten full outcomes, world proofs, facade/path consumer, twice CLI/replay and real extracted archive happy path. All 4810 protected-file and independent-input hashes unchanged.
- Package test setup initially omitted production SOURCE_DATE_EPOCH; us1-package-setup-failure.json retains that setup failure, corrected before claiming archive execution.
- US1/AC1–4 are demonstrated by focused checks; production step-5 integration, negative controls and final candidate gates remain pending.

## US2 execution

T022–T024 executed before proposed corrections: us2-workspace-before.json, us2-consumer-before.json and us2-cli-before.json are GREEN characterizations. T025 required no behavior change (us2-corrections.json). us2-green.json binds N01/N02/N03 actual raw Core/CLI phases, 17 same-decision mutations (15 accepted by the typed record decoder, two separately classified cross-field refusals), three additional comparison controls and 17 inventory/oracle refusal controls. Ten behavioral outcomes remain evidenced by US1. Existing real nonempty command multiplicity suites execute in unchanged final gates. US2/AC1–6 are mapped; final gate execution remains pending.

## US3 execution

T028 real step-5 RED is retained at probes/package-step5/red.json: matching tampered working files/archive passed the actual byte gate, while old production step 5 wrongly returned zero. T029–T031 integrated the extracted runner and proved this exact control rejects invoice/allowed /changes/0/new; us3-package-green.json also binds the real happy path, regeneration and all script controls. us3-preservation.json records historical profile/replay/archive tests, original step-4 smoke/order checks and unchanged protected bytes. Root README identifies current data; historical fixture README and generator are untouched. US3/AC1–3 are evidenced. C026-14 final frozen-source acceptance remains pending.

## Final-audit path-boundary correction

T035 identified fixed metadata/source file symlinks bypassing explicit package-root confinement. metadata-boundary-red.json records actual failing facade, runner and generator assertions before correction; metadata-boundary-green.json records the same assertions plus all positive/comparator/package controls GREEN afterward. Only test/tooling path handling changed. This extends T025/T026 and C026-02/09/10/11/13 evidence; the earlier before-change characterizations remain retained. Inventory/oracle controls now include 19 mutations plus the generator historical-source symlink control.

## Proof obligations

| Obligation | Concrete design evidence |
| --- | --- |
| PO-001 completeness | W01–W10 full explicit type/row maps; C026-02/10 |
| PO-002 consistency/unambiguity | Unique typed rows + unchanged bindings + every world row in existing Snapshot::decode; explicit Account edge check; C026-03 |
| PO-003 validity | Existing validated Store initialization/export, simple rule review and independent child worlds; C026-04/08 |
| PO-004 behavioral fidelity | Hand-authored complete oracles + N identity; five allowed/five intended DENY; C026-05/11/12 |
| PO-005 reproducibility | Twice-generation, twice-execution/full replay, real deterministic archive and digests; C026-10/12/13/14 |
| PO-006 historical preservation | Existing inventory and pinned current bytes, no added archive exception, protected old generator; C026-01/10/14 |
| PO-007 no semantic relaxation | No production crate/API/format/gate weakening; phase-specific negatives and reused historical suites; C026-06/07/08/14 |
| PO-008 comparison fidelity | Full semantic object equality including optional presence/ordered evidence; same-decision mutations; C026-09 |


Focused execution is linked above; C026-14 final clean-candidate full gates and exact resolved-lock/CLI provenance remain pending until external acceptance.

T035 source-audit.json verifies all 15 FR, 7 SC, 8 PO, 14 AC and 13 story scenarios have concrete conformance owners/evidence. All 4810 protected bytes, independent expectations, existing public API/dependencies/locks, historical modules/records/generator and unchanged gates are preserved.

## Parent-hook integration correction and renewed audit

The first frozen candidate 1ca8e9ec910a8c5979e2865373affb20eadcaaa4 passed every gate before script tests, then failed isolated 018/022 parent-hook setup. Its external gates.json remains a failed receipt. parent-protocol-red.json retains both focused failures; parent-protocol-green.json records the complete script target passing after adding only unrelated-operation protocol mocks. Every existing replay-hook assertion is unchanged.

Renewed source-audit.json verifies 4,808 unchanged baseline files and two controlled nonhistorical test-setup adaptations with exact before/after hashes. All historical inventory files, five module identities, independent oracle/world inputs, Core production code/API/dependencies/locks and gates remain unchanged. No archive exception is added. A replacement clean candidate must pass full gates and exact-consumer validation; those remain pending.
