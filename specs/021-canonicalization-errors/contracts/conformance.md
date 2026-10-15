# Conformance and Evidence Contract

This defines acceptance obligations. Actual focused evidence and the final external receipt location are linked from [coverage](../evidence/coverage.md). Inventory I01–I14 is in [research.md](../research.md); B01–B09 is in [boundaries.md](boundaries.md). Reuse existing tests where they establish the obligation, adapting Result callers without duplicating coverage. Add focused regressions only for missing behavior.

## Independent baseline before production edits

Pin baseline commit `20d3fd2439e4c4b50f75d8f1e03f56aeb4502e9f`, tree `6c26917635f142cf219de8e4672ae894078d0026`, committed locks, Rust 1.98.1, actual Z3 version, profile, fixed semantic time/seeds and fixture hashes. Use isolated cache/output directories. Before implementation capture:

- Canonical ordinary verified and negative reports, including cold/warm output separately with identical identity where existing cached-flag rules require it.
- Canonical migration verified/negative reports, typed Profile normalized output (including meaningful ordering/duplicate/budget boundaries), and action/migration legacy authorization outputs.
- Applicable fixed hashes, policy/waiver/signature outputs, current and historical profile vectors, and valid commit/replay archive identities.

Retain actual bytes plus hashes, generating commands, environment and exit results. Expectations must come from the pinned old implementation or independently frozen existing vectors; never regenerate them with the corrected implementation and call that preservation. Constrain deterministic comparisons to the same solver/profile and actual stable outcomes; wall-clock guard/operational failures are separate controls. Existing successful release receipts do not prove these new comparisons.

## Conformance matrix

| ID | Scope | Required evidence | Reuse / targeted additions |
| --- | --- | --- | --- |
| C01 | I01/I04/I08, B01/B02/B05 | Full valid raw text/hash equivalence; null/empty string/array/object encode correctly; unsupported nested object/array causes `Float(path)`, never empty success | Core `tests/canonical.rs`, verify `tests/hashing.rs` vectors; add missing raw artifact serializer controls |
| C02 | I01/I03/I04, B01/B03/B05 | Generate each ordinary/migration attestation and action/migration authorization via supported paths, then mutate raw nested data; retain generation-time and embedded hash/signature fields; typed refusal without repair | New facade canonicalization target; internal focused serializer cases where helpful; canonicalizable edits serialize but existing validator still refuses invalid meaning |
| C03 | I02 / diagnostic cache, B02 | Directly poison a valid matching cache entry's surviving finding; prove hit reaches ordinary assembly; `verify` returns canonical error, no issued empty identity; cache write skip emits no noncanonical entry | Reuse cache warm/cold/resource tests; add poisoned raw file case. CLI/consumer versions establish public reachability |
| C04 | I03/I05/I06, B03 | Profile no-float construction across enum normalization/u64 boundaries; migration model-derived findings canonical; old/new bytes/hashes and valid semantic results equal; assertions documented locally | Reuse migration content addressing/counterexamples, preservation determinism, Profile tests; independent baseline needed beyond self-equality |
| C05 | I08/I09/I10, B01/B04/B07 | Floats only in excluded top-level `hash` or `checks[].cached` fail before exclusion; canonical excluded values keep prior hash; nested hashes remain content; retained stale identity cannot bypass current check | Core/verify hash vectors, targeted legacy decoder and Store regressions; strict current trusted clone/re-entry controls reused |
| C06 | I04/I09/I13, B04/B05 | Valid waiver hash/signing and both authorization producers preserve bytes/signatures; invalid full inputs produce canonical source; canonicalizable stale hash/result/signature/policy inputs retain existing invalid/refused outcome | Reuse governance deterministic/tamper/waiver cases; add missing typed source and excluded-metadata negatives |
| C07 | I07/I10, B05/B08 | Each supplied legacy Evidence component checked recursively in eligible action and migration paths; unsupported policy/waiver keeps cause/path; stripped attestation metadata cannot bypass migration check; head/records/registry unchanged on failure | Extend existing Store governance/migration fixtures under eligible require:none. Preserve required-legacy upgrade and profile/history refusal phases; valid commit/replay unchanged |
| C08 | B06/B07/B08 | Fresh authenticated cache isolation, complete expected manifest, signatures/context/role/issuer, archived-vs-fresh checks unchanged; private assembly adapter maps canonical failure distinctly; canonicalizable invalid controls still fail | Reuse trusted_verification/trusted_governance and trusted Store/consumer suites; private adapter check is not a demonstrated public fresh-input negative |
| C09 | I11–I14 and CLI artifact callers, B09 | Valid CLI stdout/file bytes/newlines/statuses preserved; poisoned-cache verify exit2, path/cause stderr, zero stdout, pre-existing --out untouched; existing negative1 / infrastructure3 / usage-I/O64 unchanged | Extend cli_verify; retain cli_migration/cli_authorize/cli_engine_info/hash/signature and authenticated no-output controls. No fabricated unreachable float source for generated-only commands |
| C10 | Public Result/export/governance variant, B01/B02/B04/B05/B09 | Compile/run before→after migration examples using only facade + serde_json; successful ordinary/migration/action+ migration authorization, mutable drafts, concrete `CanonicalError`/governance cause handling and poisoned cache failure | `consumer/tests/canonicalization.rs` and the adapted baseline preservation target, adapt existing consumers. Solver is required, not silently skipped |
| C11 | Delivery / no suppression left | Reviewed complete inventory and migration/version docs; all gates, deterministic valid baseline comparison, frozen Git consumer provenance; no new unsafe canonical-to-success adapter | Exact `scripts/gates.sh`, `check-consumer.sh --rev SHA`, public surface check; source review distinguishes ordinary defaults/cache misses |

All public raw boundaries need reachable negatives. Narrow constructed domains instead require their actual enforcement proof plus valid-output checks. Private defensive error seams are labelled as such. Do not present custom internal solver/Cache access as facade reachability, a skipped solver branch as acceptance, or noncanonical excluded metadata as previously valid full-artifact compatibility.

## RED → GREEN evidence

Write and review the negative before its production fix. Capture a runtime RED on the pinned old code: unsupported raw content silently produces empty text/hash, noncanonical excluded metadata hashes/signs, or eligible migration evidence is accepted. Establish fixture premise and the exact reached boundary. For CLI, assert full process outputs and file state, not just a nonzero status.

New Result signatures cannot compile against the old API. Use a baseline-compatible probe for runtime reproduction, then the typed-result regression for GREEN. A compiler error is useful API migration evidence but not sufficient reproduction of the original runtime bug. Constructor invariants do not require an impossible RED case; add positive domain checks and keep the proof near the assertion.

After minimal implementation, run focused GREEN checks and the valid baseline comparisons. Adapt existing callers without weakening assertions or replacing the solver by a stub in public acceptance. Refactor only after checks pass. Do not update golden identity values or relax error/phase assertions to conceal a changed contract.

## Exact candidate acceptance

Run the repository's unchanged `scripts/gates.sh`: formatting, clippy, workspace tests/build, determinism, boundary, public surface, external consumer, workflows, terminology and script tests. Run with a present pinned Z3. No substitute subset or prior release run counts as feature acceptance.

Freeze the implementation candidate SHA and tree after required changes. Verify the supported consumer against that pushed SHA using `scripts/check-consumer.sh --rev SHA`; the harness/fixtures and CLI must also correspond to the candidate. Retain the actual temporary manifest and generated Cargo.lock before script cleanup, every resolved Core package's Git revision, harness/fixture hashes, actual CLI path/build SHA, tool versions, complete command/environment, exit codes and logs. The consumer resolves library packages, not the CLI; record CLI provenance separately. Do not reconstruct a hypothetical lockfile after the run. Test-only consumer receipt tooling can follow the project's existing receipt approach without weakening or editing gates.

Any later source change invalidates the exact candidate acceptance; rerun the checks affected by that change and the required final gates/consumer against the final frozen revision. A documentation-only correction does not justify repeatedly running expensive checks unless it changes the evidence/contract being validated.

## Requirement traceability

| Requirement | Design / evidence |
| --- | --- |
| FR-001 | Public Result contract; C01/C02/C03/C09 |
| FR-002/003 | Research R2/R3/R6, inventory I01–I14; B01–B09; C11 inventory closure |
| FR-004 | R3 constructor proof or checked propagation per inventory; C01–C10 |
| FR-005 | CanonicalError/source wrapper/Store cause; C01/C03/C06/C07/C09 |
| FR-006 | Raw editable lifecycle and unchanged fields; C02/C10 |
| FR-007 | Independent baseline, unchanged projections/tags/profiles; C01/C04/C05/C06/C08 |
| FR-008 | Complete-text output before write/emit; C09/C10 |
| FR-009 | Reused current authenticated protocols; C08 |
| FR-010 | Site/boundary matrix and genuine reachability/invariant distinctions; C01–C11 |
| FR-011 | Direct signatures, minor-class next target, no parallel unsafe path; C10/C11 |
| FR-012 | Research adjacent-default classification; C03/C11 |
| FR-013 | Current complete value before exclusions, B01–B09; C02/C05/C06/C07/C08/C09 |
| FR-014 | Public API migration contract + existing docs updates + facade tests; C10/C11 |
| SC-001 | I01–I14 + B01–B09 reviewed with disposition and evidence; C11 |
| SC-002 | C01/C02/C03/C05 plus C04 constructor proof |
| SC-003 | Independent baseline and C01/C04/C05/C06/C08 |
| SC-004 | C06/C07/C08/C09/C10 |
| SC-005 | Concrete signatures/mapping/version assessment; C10/C11 |
| SC-006 | B01–B09 enforcement/evidence closure; C05–C09 |
| SC-007 | Complete migration examples, valid/negative consumer evidence, no fallback review; C09/C10/C11 |

Implementation completion requires each matrix obligation to reference an actual test result or a reviewed construction/enforcement proof, not merely this planned matrix. Any unresolved domain or preservation conflict blocks the claim of completion.
