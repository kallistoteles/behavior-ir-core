# Validation Contract: Feature 027

Test-first implementation and exact acceptance obligations for [spec.md](../spec.md) and [plan.md](../plan.md). Planning has executed only the retained 30-row baseline probe. All corrected-code tests and final acceptance below remain unexecuted until implementation.

## Conformance checks and owners

| Check | Required evidence | Owner |
| --- | --- | --- |
| C027-01 absolute evidence and absent root | Only final-IR absolute names contribute; private None assertion for no absolutes, empty input and marker-only/relative-only cases; root-only `/` stays an absolute root | Builder private unit tests and Core integration target |
| C027-02 verbatim non-absolute filenames | Whole `pkg/model.py`, `./`, `..`, repeated separators and four markers preserved in all-relative, mixed and explicit-root cases; lines unchanged | Core source_location_portability target |
| C027-03 complete typed traversal | Rescale child as only absolute site and as root-broadening site; nested unary/operator/Lambda/projection paths; final-node inventory; unused Nodes excluded | Core target and private walker tests |
| C027-04 source-policy laws | Non-absolute addition, order/duplicate invariance, two consistently relocated absolute prefixes; different working directories and nonexistent paths | Core target; fresh child-process controls as necessary |
| C027-05 data and semantics | Literal data custody, semantic hash invariance plus actual semantic mutation; exact result/observations unchanged | Core target and reused hash_properties/read_admission |
| C027-06 useful diagnostics and phases | One real-file and one marker-attributed failure; exact transformed file/line, same codes and phase; no false requirement to preserve changed display text/order | Core and public consumer targets |
| C027-07 profile-specific fresh records | Legacy ad hoc embedded provenance changes as specified; current v2 canonical records stay invariant; inspect construction provenance independently of v2 record equality | Core/public consumer targets plus reused read_soundness |
| C027-08 historical replay authority | Existing frozen v1/v2 records/IDs valid; full facts-only and exact-position Store replay preserved; same-hash/different-representation mismatch still detected | Existing read_goldens/record_validation/strict_profile_replay/replay_evidence_authority, Core and Store |
| C027-09 one-pass public consumer | Module and ad hoc read constructed once with behavior-engine only; scalar and projection where distinct; exact result, own-profile fresh Core+Store replay; Store head unchanged by reads | New consumer/tests/source_location_portability.rs |
| C027-10 custody and compatibility | Original protected-file hashes equal; all production source changes confined to builder.rs; no API/lock/schema/hash-version/replay changes; intended fresh Rescale differences documented | Audit against protected-baseline and source hashes |
| C027-11 user documentation | Root/None/pass-through rules, concrete mixed/all-relative before/after, legacy-v2 identity distinction, explicit-root boundary, relative-anchor non-goal, minor-class release assessment | docs/source-locations.md, README, docs/versioning.md |
| C027-12 frozen-source acceptance | Full unchanged gates; exact pushed-SHA consumer; matching source CLI; actual manifest/lock capture before cleanup; real statuses, source/tool/input hashes and reviewed external receipt | Implementation delivery audit |

C027-01–03 missing behavior must each have a reviewed, observed behavioral RED before the corresponding production change. The baseline planning probe supports the source diagnosis but does not replace a failing assertion for the omitted Rescale path or for a different test owner's missing behavior. Existing correct absolute-only/marker-only behavior and v2 identity are characterized GREEN and reused.

Use literal expected filename strings from the authored contract. Do not derive expected paths with the helper being tested, compare only decisions, or regenerate golden records from corrected output. Compare full typed/canonical results where the profile defines them; compare expected diagnostic provenance separately. Direct draft-literal traversal controls do not claim that invalid drafts pass admission.

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

## Reused historical evidence

Retain all existing fixture bytes and independently captured hashes. Reuse Core `read_goldens`, `record_validation`, `read_replay`, `read_replay_integrity`, `strict_profile_replay` and `replay_evidence_authority`; reuse Store `strict_profile_replay`. Existing `read_soundness` supplies v2 detached-diagnostics invariance. Existing `hash_properties` and `read_admission` supply semantic location independence and mutation sensitivity. New tests cover only the missing source-construction contracts and their public integration.

No snapshot completion, profile substitution, ignored test, permissive record parser, changed comparison mode or new archive-byte exception is allowed. Preserve exact serialized-module replay binding and Store position/schema/snapshot checks. New fresh-construction expectations never refresh historical evidence.

## Frozen candidate acceptance protocol

1. Complete focused RED/GREEN, positive/negative coverage, documentation and custody audits. Review explicit changed paths; no unjustified source change outside builder.rs.
2. Commit a clean implementation candidate; record full SHA/tree/status, source/input/lock/schema hashes, tool paths/versions/hashes and exact candidate CLI build provenance. Store final receipts outside frozen source at `/home/kalle/validation-receipts/core027/<candidate-sha>/`.
3. Run unchanged `scripts/gates.sh` in the pinned shell with bounded resources and solver available. Record actual command/status/log. Do not mark acceptance on focused-only results, skipped gates or reused receipts from another SHA.
4. Push the candidate and run exact-Git consumer against that full SHA with `BEHAVIOR_BIN` pointing to the CLI built from the same source. `--rev` switches facade dependencies only; do not assume it switches the fixture/demo code or CLI.
5. Capture actual temporary Cargo.toml/Cargo.lock synchronously after the real Cargo process exits and before the parent cleanup executes. Preserve original Cargo status, including signals, separately from capture status. Preflight a success, failure, signal and missing-lock case with disposable stand-ins; never substitute a reconstructed lock for the actual lock. Verify actual manifest revision, all four Core library resolved sources, copied hashes, harness hash and CLI digest.
6. Review source integrity, every conformance mapping and material limits against actual logs. Only then record completion and update task metadata in a separate commit whose changes are explicitly separated from the tested parent. Any production/test correction after freeze requires a new candidate and renewed affected acceptance.

No release, tag, publication, merge, PR creation or issue closure is implied by this protocol. Static musl release double-build validation is a separate release step.
