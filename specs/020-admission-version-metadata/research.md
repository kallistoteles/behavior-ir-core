# Research: Accurate Admission Version Metadata

**Date**: 2026-10-13 | **Inspected Core revision**: `af8a0364170a82899fb69c7e18b151ddea8ebdd3`

Phase 0 used two read-only research lanes: decoder/reporting authority and consumer/validation boundaries. No implementation, test execution or release work was performed. The inspected implementation matches integrated main `634023a6d504bac927192c964d945c7025b467c4`; the later revision contains the accepted clarification. All planning unknowns are resolved below.

## R1 — One private fresh-module authority

**Decision**: Put a small ordered descriptor table in `crates/behavior-core/src/wire.rs`, pairing existing version constants with a closed internal module-decoder profile. Exact-string decoder lookup, `format_versions()["accepted_wire_ir"]` and the generic refusal support clause enumerate that same table. Keep the table/profile implementation private or `pub(crate)`; do not export it through `behavior-engine`.

**Rationale**: The current five dispatch branches at `wire.rs:1016–1022` accept exactly `0.4–0.8`. Core `lib.rs:58` separately advertises eight versions, while `admit/mod.rs:105–118` separately names only four accepted versions. A table containing both membership and its existing decoder profile prevents another advertised-only or decoder-only addition. Its explicit order defines representation, not new version semantics.

Preserve the existing profile flags and processing order: top-level shape/key checks and unique `ir_version` validation precede dispatch; Wire 0.8 alone retains strict root decoding/length checks before body decoding. Profile selection remains explicit, including command-free Wire 0.8 documents. Keep historical constants and feature-specific minimum-version checks unchanged. Correct the stale comment that calls 0.4 the only accepted version.

**Alternatives considered**: Correcting two literal lists leaves three authorities. A supported-string slice plus an independent decoder string match also duplicates membership. Range parsing or historical-constant enumeration can infer nonexistent support. A public extensible registry adds contract surface and invalid combinations without need.

## R2 — Keep document-kind boundaries distinct

**Decision**: The table describes fresh **module** admission. Preserve the separate ad hoc read-document gate, which accepts only Wire 0.7, and all record, migration, verifier and historical inventory rules.

**Rationale**: `wire::decode_read_document` at `wire.rs:969–982` has its own gate; `read::admit_read` maps its errors through the existing generic `decode_failure`. The shared phrase “this engine accepts” describes the engine's fresh-module capability, not the supported read-document versions. Keep that wording and the existing error structure; document the distinction and add read-gate controls.

**Alternatives considered**: Applying the module table to all documents silently widens read acceptance. Introducing a new contextual error or capability format expands 020. Read-specific diagnostic redesign is a separate compatibility question, unnecessary for this correction.

## R3 — Test independent truth, then public agreement

**Decision**: Extend existing Core `versions` and CLI `cli_engine_info` targets; add a focused `consumer/tests/admission_versions.rs` facade target. Assert the independent set `0.4–0.8`, actual admission of one existing version-specific witness per member, deterministic ordering and the corrected support clause. Observe metadata/refusal regressions fail before editing production code.

| Version | Existing positive witness | Existing semantic coverage |
| --- | --- | --- |
| 0.4 | `tests/fixtures/wire/valid/exact_closure.json` | Exact arithmetic |
| 0.5 | `tests/fixtures/wire/valid/accounts.json` | Entity lifecycle |
| 0.6 | `tests/fixtures/wire/valid/orders.json` | Queries |
| 0.7 | `tests/fixtures/reads/modules/lab.json` | Reads |
| 0.8 | `tests/fixtures/commands/modules/receipt.json` | Explicit command profile |

**Rationale**: Facade `engine_info()` and CLI `engine-info` already delegate Core reporting. Delegation-only assertions can agree on the same bug. Real witnesses avoid treating a valid version as a promise that every body is valid. Reuse fixtures; generate excluded/unknown/malformed cases in memory or temporary test files rather than duplicating archived documents.

Compare only the support clause between “this engine accepts” and “only”: the supplied version and unchanged rounded-arithmetic explanation can legitimately mention excluded versions. Preserve minimum-feature diagnostics, structural errors, duplicate dispatch-key rejection and Wire 0.8 strict decoding. Cover repeated output, invalid bodies and the separate read gate.

**Alternatives considered**: Updating goldens without independent witnesses misses divergence. Collecting every version-looking token in a diagnostic confuses migration guidance with advertised support. A new framework or mutation-testing dependency is unnecessary for this bounded defect.

## R4 — Preserve frozen semantics with a scoped comparison

**Decision**: Use the current integrated implementation as the baseline for unchanged successful admission, item/BehaviorHash/SchemaHash identities, serialization and supported historical replay. Keep all existing schema and fixture bytes unchanged. Retain existing hash, serialization, read-golden, command and replay controls; classify only the planned metadata/support-text differences as intentional.

**Rationale**: `scripts/conformance-digest.sh --no-outputs` inventories frozen schema/fixture bytes. Its full output digest is unsuitable as an unconditional equality claim because unsupported-version admission output intentionally changes. Existing `ir_0_4`, `ir_0_5`, `ir_0_6`, `hash_vectors`, `schema`, `serialize`, `read_goldens`, `strict_profile_replay` and `replay_evidence_authority` targets supply scoped preservation evidence. Existing command-admission tests cover explicit profiles and duplicate version/payload keys.

**Alternatives considered**: Regenerating golden hashes/records would hide a semantic regression. Comparing only against the old Core016 release ignores intervening remediations. Re-running the entire audit or demanding equality of intentionally corrected diagnostic bytes would misstate scope.

## R5 — Correct consumers without a new contract version

**Decision**: Follow accepted [D-020-001](decisions.md). Keep fields, categories and CLI statuses; document the correction as minor-class under the existing 0.x release policy, without selecting a release number or publishing anything.

**Rationale**: Three current Core test locations assert the erroneous accepted list: `crates/behavior-core/tests/versions.rs`, `crates/behavior-cli/tests/cli_engine_info.rs`, and `consumer/tests/resulting_state_validity.rs`. Author/review the independent assertions and narrowly corrected expectations, then collect/run behavioral RED before production edits. The generic refusal prefix, supplied value and migration suffix are preserved; only its support list changes. Inspected tests assert refusal fragments/categories rather than the complete stale text, but this does not establish that external consumers never compare exact text.

The ecosystem repository `behavior-ir` pins published Core 0.12.0 at `b525da46d4282166418a90141f0c94fd099e9b47`. Its `python/tests/test_core_alignment.py` asserts that release's old list, and `docs/versioning.md` describes it. Record adoption follow-ups; do not change that repository, its pin, assets or dependencies in 020. Later adoption must use a published corrected Core Release.

**Alternatives considered**: Keeping erroneous values behind a new contract version perpetuates false reporting. Updating ecosystem expectations before changing its published pin would test the wrong release. Re-admitting legacy arithmetic is expressly forbidden.

## R6 — Canonical validation and revision provenance

**Decision**: Implement under the existing Rust 1.98.1/Nix environment and dependency graph. Run the canonical `nix develop -c scripts/gates.sh` and final `scripts/check-consumer.sh --rev <frozen-pushed-sha>` from that exact clean checkout, using its own CLI. Record final evidence externally or in revision-bound CI.

**Rationale**: `check-consumer.sh --rev` copies consumer tests/fixtures from the invoking checkout and changes its facade dependency to the specified Git revision. Matching source, CLI and actual dependency resolution are required for an exact-revision claim. Tracked reports cannot identify the final SHA of the commit containing those same reports. Any later tracked edit or different merge/release SHA needs fresh final validation.

**Alternatives considered**: A local path override cannot establish release compatibility. A passing parent/integration receipt does not attest 020. Changing gate scripts or public-surface inventories to make a test pass would weaken the contract.
