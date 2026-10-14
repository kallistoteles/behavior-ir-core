# Decisions: Accurate Admission Version Metadata

**Created**: 2026-10-11

**Status**: D-020-001 resolved as A by the user on 2026-10-13; subsequently authorized Phase 0/1 planning is complete in [plan.md](plan.md). No implementation or release publication is authorized by this document alone.

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

**Accepted decision — A**: Correct the existing reporting contract. Existing decoder/admission semantics define the accepted set `{0.4, 0.5, 0.6, 0.7, 0.8}`; public fresh-admission metadata and refusal support statements must report that same set. Preserve field shapes, error codes, CLI statuses and the established values/meanings of separate historical inventories. Historically known versions are not necessarily accepted versions.

Incorrect observable metadata/text is a bug to correct, even when consumers asserted it. Such assertions require compatibility assessment, fixture/documentation updates and migration/release notes; they do not justify keeping false reporting or creating a separately versioned consumer contract. A new contract version would be warranted only for changed public structure or legitimate consumer semantics, neither of which is part of 020.

**Release assessment**: Conservatively minor-class under the existing [0.x release policy](../../docs/versioning.md#release-version-policy-0x), because consumer expectations of CLI/public reporting must adapt. This selects no numerical release or tag and authorizes no publication. Existing error category and CLI exit meaning remain fixed by spec FR-006.

**Read-only consumer observations at clarification**: On integrated Core main `634023a6d504bac927192c964d945c7025b467c4`, [Core version tests](../../crates/behavior-core/tests/versions.rs) and [facade consumer tests](../../consumer/tests/resulting_state_validity.rs) assert the erroneous `accepted_wire_ir` list. The ecosystem's `python/tests/test_core_alignment.py` also asserts that list against its separately pinned, published Core 0.12.0. These observations identify future expectation changes; they are not newly executed tests or evidence that 020 is implemented. The ecosystem pin must remain unchanged until that repository separately adopts a published corrected Core Release. Implementation must assess any further exact-text consumers and validate the corrected contract before delivery.

## Other fixed boundaries

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

No claim is made that correction code has been implemented, tested or released. Authorized commit/push delivery of these clarified documents is tracked separately from implementation and release work. The requirements checklist retains its original review prose; its markers are revalidated for this clarification, from 11/15 to 15/15, with four newly passing items, zero regressions and zero unchecked items.
