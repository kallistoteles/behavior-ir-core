# Open Decisions: Accurate Admission Version Metadata

**Created**: 2026-10-11

**Status**: Draft for clarify. Recommendations are provisional, not user decisions or release authorization.

## Established boundary

Core016 RC-004 / F-COORD-011 establishes a metadata/diagnostic mismatch, S5 / Medium. Current fresh admission supports `0.4–0.8`; reporting advertises `0.1–0.8`; refusal text lists only `0.4–0.7`. The correction must preserve the intentional refusal of rounded `0.1–0.3` and existing historical compatibility meanings. A green test expecting the wrong list does not redefine admission.

The approved drafting direction is an authoritative current admission-set contract shared by actual support, fresh metadata and refusal explanations. This states the required relationship, not a module/algorithm plan. Field names, categories and historical outputs remain unchanged; unsupported-version text must become accurate.

## D-020-001 — consumer compatibility and delivery policy

**Question**: Does correcting current metadata values and refusal text within the existing public shape require a new consumer-contract version or coordinated compatibility transition?

| Option | Outcome | Implication |
| --- | --- | --- |
| A — Correct the existing contract | Keep current fields/error categories/status meanings; correct `accepted_wire_ir` and refusal text; preserve historical `wire_ir`. | Smallest correction. Consumers depending on erroneous values or exact text must update expectations; release classification follows an explicit compatibility assessment. |
| B — Version the consumer transition | Preserve the same truthful admission relationship but deliver it through an explicitly documented/versioned compatibility transition. | Broader coordination for supported consumers; does not permit continuing a false fresh-acceptance claim or re-enabling legacy semantics. |
| Custom | Specify another rollout with accurate current metadata and preserved historical semantics. | Must explain which public observations change and how supported consumers migrate. |

**Provisional recommendation**: A, because the existing field already claims fresh admission and its content is demonstrably wrong. This is not a decision that a patch release is compatible: exact public expectations, diagnostic consumers and release rules must be assessed first. No release number or new metadata schema is selected.

**Evidence needed for clarify**: Which supported consumers rely on the exact list/text; whether error message bytes are contractual or explanatory; consequences for consumer fixtures/documentation; the owning release policy. Existing error category and CLI exit meaning remain fixed by spec FR-006.

## Decisions that are not open in this draft

- Do not make the advertisement true by admitting old rounded arithmetic.
- A valid declared version does not bypass body typing/admission.
- Historical compatibility, fresh admission, read/decision record codecs and verifier versions remain distinct axes.
- Correct both the advertisement and its stale refusal counterpart; fixing only one leaves the same drift visible.
- Source changes, test design, consumer implementation and release construction wait for the later authorized workflow.

## Evidence custody

Audit commit: `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.

- [Full finding and RC-004](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md#f-coord-011--advertised-fresh-admission-versions-disagree-with-decoder).
- [Source locations and actual run interpretation](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/fragments/COORD/admission-metadata-finding.md): public advertisement Core lib.rs:58, decoder wire.rs:1016–1022, refusal admit/mod.rs:105–118, baseline metadata tests and versioning documentation.
- [Actual E-COORD-011 input/output custody](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/runs/COORD/admission-metadata/run.json). Otherwise-identical retained invoice inputs with legacy version declarations are refused before body interpretation; version-specific accepted witnesses are a future acceptance requirement.

No claim is made that correction code has been implemented, tested or released. Authorized publication of these discussion drafts is tracked separately from implementation and release work.
