# Execution ledger

No historical audit log is attributed to this implementation base. New command receipts bind current HEAD, source/test digests, exact command, exit status, collected/executed counts and separate stdout/stderr log paths. Runtime outcomes distinguish semantic RED, GREEN, preservation controls and unavailable evidence.

Initial baseline: [implementation-base.md](implementation-base.md). Final frozen-candidate gates and exact-revision consumer evidence remain pending until an external immutable receipt is produced.

## Runs

- `baseline/environment`: command receipt [baseline/environment/run.json](runs/baseline/environment/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.
- `baseline/preservation`: command receipt [baseline/preservation/run.json](runs/baseline/preservation/run.json); exit 0; ['ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s', 'ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s', 'ok. 10 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s', 'ok. 14 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.52s']. Interpretation supplied by the reviewed checkpoint.
- `baseline/store-collection`: command receipt [baseline/store-collection/run.json](runs/baseline/store-collection/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.
- `baseline/capture-store`: command receipt [baseline/capture-store/run.json](runs/baseline/capture-store/run.json); exit 0; ['ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.08s']. Interpretation supplied by the reviewed checkpoint.
- `baseline/capture-store-binding`: command receipt [baseline/capture-store-binding/run.json](runs/baseline/capture-store-binding/run.json); exit 0; ['ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.11s']. Interpretation supplied by the reviewed checkpoint.
- `baseline/capture-core`: command receipt [baseline/capture-core/run.json](runs/baseline/capture-core/run.json); exit 0; ['ok. 2 passed; 0 failed; 0 ignored; 0 measured; 8 filtered out; finished in 0.07s']. Interpretation supplied by the reviewed checkpoint.
- `baseline/core-controls`: command receipt [baseline/core-controls/run.json](runs/baseline/core-controls/run.json); exit 0; ['ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s']. Interpretation supplied by the reviewed checkpoint.
- `baseline/historical_wire08_v1_read_must_replay_against_its_exact_store_position`: command receipt [baseline/historical_wire08_v1_read_must_replay_against_its_exact_store_position/run.json](runs/baseline/historical_wire08_v1_read_must_replay_against_its_exact_store_position/run.json); exit 101; ['FAILED. 0 passed; 1 failed; 0 ignored; 0 measured; 2 filtered out; finished in 0.01s']. Interpretation supplied by the reviewed checkpoint.
- `baseline/historical_wire08_v1_inner_read_must_replay_as_store_invocation`: command receipt [baseline/historical_wire08_v1_inner_read_must_replay_as_store_invocation/run.json](runs/baseline/historical_wire08_v1_inner_read_must_replay_as_store_invocation/run.json); exit 101; ['FAILED. 0 passed; 1 failed; 0 ignored; 0 measured; 2 filtered out; finished in 0.02s']. Interpretation supplied by the reviewed checkpoint.
- `baseline/store_replay_rejects_contradictory_duplicate_current_read_result`: command receipt [baseline/store_replay_rejects_contradictory_duplicate_current_read_result/run.json](runs/baseline/store_replay_rejects_contradictory_duplicate_current_read_result/run.json); exit 101; ['FAILED. 0 passed; 1 failed; 0 ignored; 0 measured; 2 filtered out; finished in 0.02s']. Interpretation supplied by the reviewed checkpoint.

## Foundation checkpoint — fresh semantic RED

All three top-level audit regressions independently collected/executed exactly one test on production baseline `6ccd4327c7b1e647bc0a6d1bbc8f2557659af2fb`. Each returned cargo101 for the intended semantic assertion, after passing valid standalone/current Store controls and exact coordinate checks. Historical read failed at `facts` (v1 omitted capture replaced with fresh v2 universe); inner invocation failed at `outcome.record.facts`; contradictory duplicate current result was accepted by Store after map reduction. No production runtime changed. Core018 controls passed4/4. Existing preservation controls passed35/35. Temporary unit capture reached the existing historical evaluator directly, and asserted byte equality of independently reproduced audit read/invocation against the retained original counterexamples; capture source is retained under baseline/capture-sources. Temporary overlays were removed before RED runs.

These are test-first evidence for018, distinct from016 audit failures. The capture runs establish fixture provenance and are not called semantic RED.
- `baseline/core-collection`: command receipt [baseline/core-collection/run.json](runs/baseline/core-collection/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.
- `us1-before/core`: command receipt [us1-before/core/run.json](runs/us1-before/core/run.json); exit 0; ['ok. 11 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.19s']. Interpretation supplied by the reviewed checkpoint.
- `us1-before/store`: command receipt [us1-before/store/run.json](runs/us1-before/store/run.json); exit 101; ['FAILED. 9 passed; 7 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.11s']. Interpretation supplied by the reviewed checkpoint.
- `us1-before/capture-auxiliary`: command receipt [us1-before/capture-auxiliary/run.json](runs/us1-before/capture-auxiliary/run.json); exit 101; see logs. Interpretation supplied by the reviewed checkpoint.
- `us1-before/capture-auxiliary-corrected`: command receipt [us1-before/capture-auxiliary-corrected/run.json](runs/us1-before/capture-auxiliary-corrected/run.json); exit 0; ['ok. 1 passed; 0 failed; 0 ignored; 0 measured; 8 filtered out; finished in 0.02s']. Interpretation supplied by the reviewed checkpoint.
- `us1-before/collection`: command receipt [us1-before/collection/run.json](runs/us1-before/collection/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.
- `us1-before/history-corrected`: command receipt [us1-before/history-corrected/run.json](runs/us1-before/history-corrected/run.json); exit 101; ['FAILED. 0 passed; 1 failed; 0 ignored; 0 measured; 15 filtered out; finished in 0.02s']. Interpretation supplied by the reviewed checkpoint.
- `us1-before/core-complete`: command receipt [us1-before/core-complete/run.json](runs/us1-before/core-complete/run.json); exit 0; ['ok. 13 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.18s']. Interpretation supplied by the reviewed checkpoint.
- `us1-before/checked-interface-unavailable`: command receipt [us1-before/checked-interface-unavailable/run.json](runs/us1-before/checked-interface-unavailable/run.json); exit 101; see logs. Interpretation supplied by the reviewed checkpoint.
- `us1-before/invocation-interface-unavailable`: command receipt [us1-before/invocation-interface-unavailable/run.json](runs/us1-before/invocation-interface-unavailable/run.json); exit 101; see logs. Interpretation supplied by the reviewed checkpoint.
- `us1-green/checked-profile`: command receipt [us1-green/checked-profile/run.json](runs/us1-green/checked-profile/run.json); exit 101; ['FAILED. 8 passed; 1 failed; 0 ignored; 0 measured; 8 filtered out; finished in 0.00s']. Interpretation supplied by the reviewed checkpoint.
- `us1-green/store`: command receipt [us1-green/store/run.json](runs/us1-green/store/run.json); exit 0; ['ok. 16 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.15s']. Interpretation supplied by the reviewed checkpoint.
- `us1-green/checked-profile-corrected`: command receipt [us1-green/checked-profile-corrected/run.json](runs/us1-green/checked-profile-corrected/run.json); exit 0; ['ok. 9 passed; 0 failed; 0 ignored; 0 measured; 8 filtered out; finished in 0.00s']. Interpretation supplied by the reviewed checkpoint.
- `us1-green/core-and-preservation`: command receipt [us1-green/core-and-preservation/run.json](runs/us1-green/core-and-preservation/run.json); exit 0; ['ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.02s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.02s', 'ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.02s', 'ok. 10 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s', 'ok. 14 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.45s', 'ok. 13 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.29s']. Interpretation supplied by the reviewed checkpoint.
- `us1-green/core-coverage`: command receipt [us1-green/core-coverage/run.json](runs/us1-green/core-coverage/run.json); exit 0; ['ok. 13 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.18s']. Interpretation supplied by the reviewed checkpoint.
- `us1-green/store-preservation`: command receipt [us1-green/store-preservation/run.json](runs/us1-green/store-preservation/run.json); exit 0; ['ok. 6 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 56.65s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.64s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.24s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 29.08s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.16s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.34s']. Interpretation supplied by the reviewed checkpoint.

## US1 checkpoint

T008–T018 are verified. See [us1-profile-review.md](us1-profile-review.md) for construction arguments, same-profile coverage, original identities, genuine RED/GREEN and explicit setup/unavailable evidence distinctions. All new Core13, Store16 and internal9 tests pass; existing Core35 and Store18 preservation tests pass. US2/US3 and exact frozen revision checks remain pending.
- `us2-before/consumer`: command receipt [us2-before/consumer/run.json](runs/us2-before/consumer/run.json); exit 0; ['ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s']. Interpretation supplied by the reviewed checkpoint.
- `us2-before/store`: command receipt [us2-before/store/run.json](runs/us2-before/store/run.json); exit 0; ['ok. 20 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.39s']. Interpretation supplied by the reviewed checkpoint.
- `us2-before/core`: command receipt [us2-before/core/run.json](runs/us2-before/core/run.json); exit 0; ['ok. 19 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.32s']. Interpretation supplied by the reviewed checkpoint.
- `us2-before/collection`: command receipt [us2-before/collection/run.json](runs/us2-before/collection/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.
- `us2-green/all`: command receipt [us2-green/all/run.json](runs/us2-green/all/run.json); exit 0; ['ok. 19 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.32s', 'ok. 20 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.37s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s']. Interpretation supplied by the reviewed checkpoint.

## US2 checkpoint

T019–T025 verified. Collection explicitly finds19Core/20Store/3consumer tests; all42pass at US2-before and US2-green. No further production correction was needed after US1 strict preparation. Named duplicate foundation RED remains the genuine test-first evidence. [us2-boundary-review.md](us2-boundary-review.md) maps requirements, diagnostics and frozen request limits. Coverage has330required cells executed;138US3cells pending; auxiliary tokens are explained separately.
- `us3-before/no-bundle`: command receipt [us3-before/no-bundle/run.json](runs/us3-before/no-bundle/run.json); exit 101; ['FAILED. 0 passed; 1 failed; 0 ignored; 0 measured; 30 filtered out; finished in 0.00s']. Interpretation supplied by the reviewed checkpoint.
- `us3-before/no-bundle-corrected-setup`: command receipt [us3-before/no-bundle-corrected-setup/run.json](runs/us3-before/no-bundle-corrected-setup/run.json); exit 101; ['FAILED. 0 passed; 1 failed; 0 ignored; 0 measured; 30 filtered out; finished in 0.02s']. Interpretation supplied by the reviewed checkpoint.
- `us3-before/core`: command receipt [us3-before/core/run.json](runs/us3-before/core/run.json); exit 0; ['ok. 25 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.37s']. Interpretation supplied by the reviewed checkpoint.
- `us3-before/store`: command receipt [us3-before/store/run.json](runs/us3-before/store/run.json); exit 101; ['FAILED. 30 passed; 1 failed; 0 ignored; 0 measured; 0 filtered out; finished in 8.88s']. Interpretation supplied by the reviewed checkpoint.
- `us3-before/collection`: command receipt [us3-before/collection/run.json](runs/us3-before/collection/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.
- `us3-before/store-reviewed`: command receipt [us3-before/store-reviewed/run.json](runs/us3-before/store-reviewed/run.json); exit 0; ['ok. 31 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 9.08s']. Interpretation supplied by the reviewed checkpoint.
- `us3-green/no-bundle`: command receipt [us3-green/no-bundle/run.json](runs/us3-green/no-bundle/run.json); exit 0; ['ok. 1 passed; 0 failed; 0 ignored; 0 measured; 30 filtered out; finished in 0.01s']. Interpretation supplied by the reviewed checkpoint.
- `us3-green/all`: command receipt [us3-green/all/run.json](runs/us3-green/all/run.json); exit 0; ['ok. 25 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.38s', 'ok. 31 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 10.43s']. Interpretation supplied by the reviewed checkpoint.
- `us3-green/fixture-custody`: command receipt [us3-green/fixture-custody/run.json](runs/us3-green/fixture-custody/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.
- `us3-before/decode-document-no-bundle`: command receipt [us3-before/decode-document-no-bundle/run.json](runs/us3-before/decode-document-no-bundle/run.json); exit 101; ['FAILED. 0 passed; 1 failed; 0 ignored; 0 measured; 31 filtered out; finished in 0.01s']. Interpretation supplied by the reviewed checkpoint.
- `us3-green/decode-document-no-bundle`: command receipt [us3-green/decode-document-no-bundle/run.json](runs/us3-green/decode-document-no-bundle/run.json); exit 0; ['ok. 2 passed; 0 failed; 0 ignored; 0 measured; 30 filtered out; finished in 0.01s']. Interpretation supplied by the reviewed checkpoint.
- `us3-green/after-authority-review`: command receipt [us3-green/after-authority-review/run.json](runs/us3-green/after-authority-review/run.json); exit 0; ['ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s', 'ok. 25 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.42s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.55s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.66s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.21s', 'ok. 12 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.23s', 'ok. 20 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.22s', 'ok. 31 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 8.81s']. Interpretation supplied by the reviewed checkpoint.
- `us3-collateral/preservation`: command receipt [us3-collateral/preservation/run.json](runs/us3-collateral/preservation/run.json); exit 0; ['ok. 8 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s', 'ok. 23 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.17s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.53s', 'ok. 6 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 56.76s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.66s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.30s', 'ok. 3 passed; 0 failed; 1 ignored; 0 measured; 0 filtered out; finished in 697.48s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 29.37s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.15s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.34s', 'ok. 12 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.24s', 'ok. 20 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.20s']. Interpretation supplied by the reviewed checkpoint.

## US3 checkpoint (T031–T034)

The implementation base remains local integration commit
`6ccd4327c7b1e647bc0a6d1bbc8f2557659af2fb`, incorporating017
`02ba1b715919c132d7304dbc22231dcddc2ba714`;017 is still a draft PR,
not main-merged or represented as human-reviewed. The collateral preservation
command passes all default selected Core and Store tests, including the full
1000-transition migration/tamper property corpus. One existing ignored
10000-transition migration stress test remains skipped, not passing evidence.
The additional decode-evidence authority review has its own genuine RED/GREEN;
after its correction, all56 new Core/Store integration tests and the affected
existing invocation/command/017 controls pass. The private two-bundle probes
pass2/2. Migration and read reconstruction paths were unchanged by that
intent-mode correction; final integrated and frozen gates still cover the
actual delivery source. Strict reconciliation now derives468 required triples,
58 unsupported-boundary pairs and five declared auxiliary cells from
`us3-green/after-authority-review`; no missing or unexpected cells.
All260 retained fixture file checksums are unchanged.

T033/T034 are complete; phase6 consumer/determinism/documentation work may begin.
- `integration-preflight/fmt-clippy`: command receipt [integration-preflight/fmt-clippy/run.json](runs/integration-preflight/fmt-clippy/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.
- `determinism-red/hook`: command receipt [determinism-red/hook/run.json](runs/determinism-red/hook/run.json); exit 1; see logs. Interpretation supplied by the reviewed checkpoint.
- `determinism-red/protocol-unavailable`: command receipt [determinism-red/protocol-unavailable/run.json](runs/determinism-red/protocol-unavailable/run.json); exit 1; see logs. Interpretation supplied by the reviewed checkpoint.
- `determinism-red/runner-unavailable`: command receipt [determinism-red/runner-unavailable/run.json](runs/determinism-red/runner-unavailable/run.json); exit 1; see logs. Interpretation supplied by the reviewed checkpoint.

## Determinism test-first boundary (T036)

`determinism-red/hook` executes the unchanged outer determinism script in a
disposable protocol-only checkout: its positive legacy mocked run exits0, but
the new exact-one018-hook assertion fails because the hook is never called.
The retained inner output/status is `details/results.json`; the missing hook is
genuine executable test-first evidence. The protocol sandbox's intentionally
missing solver is not semantic verification evidence or a final-gate pass.
`determinism-red/protocol-unavailable` records the absent new checker interface.
The first runner scaffold had a test command bug (omitted `cargo run`) and
failed argument parsing, not a semantic assertion or production defect. That
receipt remains visible; the corrected missing-example scaffold is separately
recorded before implementation. Capture retains output/status logs rather than
absolute fixture symlinks or generated protocol mock checkouts.
- `determinism-red/runner-unavailable-corrected`: command receipt [determinism-red/runner-unavailable-corrected/run.json](runs/determinism-red/runner-unavailable-corrected/run.json); exit 1; see logs. Interpretation supplied by the reviewed checkpoint.
- `documentation/link-check`: command receipt [documentation/link-check/run.json](runs/documentation/link-check/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.
- `facade-green/complete`: command receipt [facade-green/complete/run.json](runs/facade-green/complete/run.json); exit 0; ['ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s', 'ok. 10 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 5.01s', 'ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.67s', 'ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 1.18s', 'ok. 5 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.04s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.22s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.75s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.76s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.49s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.25s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.25s', 'ok. 8 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.05s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.05s', 'ok. 7 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.28s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.30s', 'ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s']. Interpretation supplied by the reviewed checkpoint.
- `determinism-green/protocol-and-runner`: command receipt [determinism-green/protocol-and-runner/run.json](runs/determinism-green/protocol-and-runner/run.json); exit 0; see logs. Interpretation supplied by the reviewed checkpoint.

## Cross-cutting checkpoint (T035–T040)

The public facade consumer collects7 Core018 tests and all seven pass through
the canonical consumer script, alongside existing consumer tests (no ignored
tests). Empty library/doc-test targets supply no correctness evidence.
Default `test_replay_determinism.sh` passes its parent-hook failure-propagation
checks, eighteen protocol output/exit/digest cases and real Store runner/negative
fixture controls. The real checker executes all four retained Store cases twice
and passes. Workspace clippy over all targets passes after pinned formatting.
Only additive018 digest keys and the new hook are introduced; historical goldens
and digest keys remain unchanged. Command/output receipts are
`facade-green/complete` and `determinism-green/protocol-and-runner`.
Documentation links pass45 local target checks. A different-agent final review
finds no further profile/order/authority or determinism-default defect.
T035–T040 are complete; integrated evidence and targeted re-audit remain.
- `integrated/validation`: command receipt [integrated/validation/run.json](runs/integrated/validation/run.json); exit 0; ['ok. 9 passed; 0 failed; 0 ignored; 0 measured; 8 filtered out; finished in 0.00s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 30 filtered out; finished in 0.01s', 'ok. 8 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s', 'ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.24s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.28s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.03s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.02s', 'ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.02s', 'ok. 10 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s', 'ok. 14 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.63s', 'ok. 23 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.14s', 'ok. 25 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.36s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.53s', 'ok. 6 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 56.81s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.65s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.23s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 29.22s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.16s', 'ok. 3 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.35s', 'ok. 12 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.26s', 'ok. 20 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.22s', 'ok. 31 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 9.12s', 'ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s', 'ok. 10 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 5.00s', 'ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.63s', 'ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 1.19s', 'ok. 5 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.04s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.22s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.76s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.77s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.33s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.14s', 'ok. 2 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.25s', 'ok. 8 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.04s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.05s', 'ok. 7 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.21s', 'ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.30s', 'ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s']. Interpretation supplied by the reviewed checkpoint.
- `integrated/matrix-only`: command receipt [integrated/matrix-only/run.json](runs/integrated/matrix-only/run.json); exit 0; ['ok. 25 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.50s', 'ok. 31 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 9.19s']. Interpretation supplied by the reviewed checkpoint.

## Integrated checkpoint (T041)

`integrated/validation` exits0 after complete new Core/Store suites and collection,
9Core/2Store private units, quickstart preservation/conformance/017/command
targets, all canonical facade consumer targets, default018 script tests and the
full existing determinism gate with actual Z3 available. No018 requirement uses
an empty library/doc-test target as evidence. The separate nonempty
`integrated/matrix-only` command passes25Core/31Store; strict reconciliation
records468 required triples,58 concrete refusal-boundary pairs and five declared
auxiliary cells, with no missing/extra/ignored/zero-test required coverage.
Existing default-ignored large stress cases remain disclosed by collateral/final
workspace receipts, not counted as passes. All260 retained fixture checksums
still match. Core facade, dependency metadata, canonical/hash/record code and
existing historical read goldens remain unchanged. T041 is complete.

## Targeted assessment and freeze preparation (T042/T043)

The implementation report maps all16FR/6SC/12P obligations and the four qualified
016 propositions. Its different-agent read-only review checked immutable016 text,
all21 report link targets, conditional equivalence and pending final receipt;
no concrete correction was required. Only the two scoped RC-002 defects are
corrected. Whole-profile/global audit obligations and the newly disclosed
pre-existing Store-origin transport-refusal reconstruction limit remain open.
The report/ledger contain known base revisions and actual pre-freeze command
evidence, never their containing commit's final SHA.

The explicit freeze includes018 implementation, tests, fixtures, docs and prior
related planning/clarification artifacts. The existing reviewer-owned checklist
is preserved without implementation edits. Public facade, Backend/record/hash
domains, Cargo versions/dependencies, existing historical goldens and release
pins are unchanged by018. `source-custody.json` captures18 key implementation/
test/fixture/public-boundary SHA-256 digests;260 retained data checksums match.
Final gates, diff, toolchain and pushed exact-revision consumer validation remain
pending and will be recorded only at the external location specified in
`validation-location.md`. T001–T042 are checked; T043–T046 remain pending in
this frozen snapshot and receive post-freeze completion evidence externally.

Staging inspection finds36 intentional blank-at-EOF diagnostics, all
in retained verbatim Cargo stdout logs. No source/document whitespace defect is
reported. Those raw logs are preserved rather than normalized or silently
rewritten; this auxiliary staged check is not reported as passing. Required
final clean-checkout `git diff --check` remains pending with the frozen gates.
