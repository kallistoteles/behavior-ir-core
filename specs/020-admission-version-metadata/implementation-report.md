# Core020 implementation report

## Result and scope

The private `MODULE_DECODERS` table now defines exact fresh-module membership and existing decoder profiles. `format_versions()["accepted_wire_ir"]` and generic unsupported-version support text enumerate its ordered keys. All three describe0.4–0.8. Historical0.1–0.7 inventory, document-kind gates, public API/fields/categories/statuses and the existing semantic decoder configurations are preserved.

This report covers implemented source and executed pre-freeze evidence. Final canonical gates and exact Git consumer validation are deliberately pending at the containing commit; their receipt is sealed externally against the frozen pushed SHA. No numeric release, tag/publication, ecosystem adoption or whole-Core soundness verdict is asserted.

## Test-first chain and actual results

The implementation base is `6f35b0cbadce332de19617ac9ae92cbdb1ef8c08`; [custody](evidence/implementation-base.md) and [baseline](evidence/baseline.json) bind its CLI, supported-facade capture, five admitted witnesses and frozen assets. The separate read gate passed before production edits.

Before production changes, collected assertions demonstrated both metadata and stale-clause defects in Core, CLI and facade: Core3 failures/3 controls passing, CLI3 failures/4 controls passing, facade2 failures/1 control passing. The existing facade metadata golden separately failed. These are actual behavioral failures, not setup errors; [RED](evidence/red.json) includes commands, statuses, test/source digests and retained logs.

After descriptor/metadata changes, [US1](evidence/us1-green.json) metadata/profile controls passed while generic clauses remained explicitly red. All three clause checks then demonstrated [US2 RED](evidence/us2-red.json) before the diagnostic edit. [US2 GREEN](evidence/us2-green.json) contains22 passing tests across Core versions/read-wire, CLI and facade, with actual row markers for module positives, excluded/unknown strings, structural headers, duplicate headers and invalid bodies.

[Identity controls](evidence/identity-controls.json) add67 passing tests; [same-profile replay controls](evidence/replay-controls.json) add149. [Compatibility](evidence/compatibility.json) establishes identical admission, canonical serialized wire, item/BehaviorHash/SchemaHash outputs for all five witnesses,29 CLI observations with only the declared correction allowed, unchanged unrelated metadata, and1,101 unchanged schema/fixture/public-surface assets. Golden evidence was not regenerated. The temporary facade capture target used only the public engine and was removed before final delivery.

Formatting intentionally changed source layout and succeeded with command status0. The external observer initially misapplied its immutable-validation guard to that mutation and reported a guard failure; this is documented separately in its formatting receipt and is not counted as passing test/gate evidence. All actual test receipts report unchanged tested source. Required final formatting/clippy checks remain part of the canonical gate.

## Requirements and evidence

| Requirement / outcome | Established pre-freeze evidence |
| --- | --- |
| FR-001/011 | One private ordered membership/profile authority; independent expected set, actual witnesses and three-way agreement; targeted source review. Future versions require updated independent witnesses and agreement assertions. |
| FR-002; SC-001 | Both facade reporting functions and canonical CLI report exactly0.4–0.8; five version-specific documents admit. |
| FR-003; SC-002 | Eight excluded/unknown/noncanonical strings preserve spelling/category and report the exact complete clause; repeated outputs match. |
| FR-004 | Legacy0.1/0.2/0.3 remain unsupported; existing exact-arithmetic/profile controls pass. |
| FR-005 | Historical inventory/other metadata unchanged; independent ad hoc read domain remains0.7; supported historical profile controls pass. |
| FR-006 | Existing field shape, CLI statuses0/2, error categories, non-support text and minimum-feature distinctions preserved. |
| FR-007; SC-003 | Frozen assets, five canonical identity/serialization observations and216 existing identity/replay controls match their normative expectations. |
| FR-008 | Collected Core/CLI/facade matrix exercises positives, excluded/unknown strings, missing/non-string/duplicate headers and supported invalid bodies; read domain is independently characterized. |
| FR-009/010; SC-005 | [Consumer assessment](compatibility-assessment.md) and current versioning/migration notes follow accepted A and minor-class assessment; exact Git validation is pending externally. |
| SC-004 | Repeated canonical reporting/refusals, explicit exact-string membership and distinct document-kind domains; no unordered registry introduced. |

## Proof obligations and limits

By construction the table has five ordered descriptors, and decoder membership and the two projections read those same keys. The closed internal profile maps to the five old configurations; only Commands selects strict root processing and explicit command semantics. Header uniqueness/type checks precede lookup as before. Unknown strings cannot select a default. For accepted inputs the same body decoder/admission functions therefore retain their reference meaning; tests establish concrete instances rather than a whole-kernel proof.

The flags/header ordering were inspected directly against the initial source; static mapping equivalence is a code invariant. Canonical/identity/replay comparisons and matrix outcomes are empirical evidence. Existing backend/solver/versioned-profile contracts remain assumptions of their unchanged paths. Uninspected consumers may require exact-text adaptation; the ecosystem's current published pin remains unchanged.

Pre-freeze remediation evidence supports closure of F-COORD-011 / RC-004 upon successful final gates and exact-revision consumer validation. Other Core016 findings, subsequent release/merge revisions and ecosystem published-release compatibility are separate obligations. Final task completion T023–T026 is external under the [immutable candidate policy](tasks.md#implementation-strategy-and-completion-bookkeeping).
