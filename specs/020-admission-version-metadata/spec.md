# Feature Specification: Accurate Admission Version Metadata

**Feature Branch**: `020-admission-version-metadata`

**Created**: 2026-10-11

**Status**: Planned — Phase 0/1 design complete; task generation, implementation and release remain later workflow steps.

**Input**: User-approved draft of Core audit remediation RC-004: make fresh-admission version reporting and refusal diagnostics agree with actual admission, preserve separate historical compatibility, and assess public consumer/versioning consequences before delivery.

## Clarifications

### Session 2026-10-13

- Q: Should 020 correct the existing reporting contract, or introduce a separately versioned consumer contract? → A: Correct the existing reporting contract. Current admission is authoritative; metadata and refusal diagnostics must report the same accepted set. Preserve public field shapes, error codes, CLI statuses and genuinely historical inventories. Correcting erroneous observable values/text requires compatibility assessment and release notes, with a conservative minor-class assessment under the existing release policy, but does not require a new consumer-contract version. A new contract version would require a change to public structure or legitimate consumer semantics, which is outside 020.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Select a version the engine actually admits (Priority: P1)

A binding or integration author checks the engine's current admission capabilities before submitting a newly authored Behavior document. The author can distinguish a currently admitted version from an older format retained for compatibility purposes.

**Why this priority**: False negotiation metadata causes an integration to select a version the same engine then refuses.

**Independent Test**: Compare current admission metadata with otherwise valid representative documents for each reported version and with version-gate refusals for excluded versions. Admission of a version does not promise admission of an invalid document body.

**Acceptance Scenarios**:

1. **Given** the audited admission domain, **When** a consumer reads `accepted_wire_ir` through either supported programmatic reporting or the CLI, **Then** the list is exactly `0.4`, `0.5`, `0.6`, `0.7`, `0.8`, without duplicates and in the existing deterministic version order.
2. **Given** a valid representative document for each current version, **When** the consumer submits it to fresh admission, **Then** admission supports that declared version, subject to its existing structural and semantic requirements.
3. **Given** an otherwise well-formed document declaring `0.1`, `0.2` or `0.3`, **When** fresh admission checks its version, **Then** it remains refused as `UNSUPPORTED_IR_VERSION` and is absent from `accepted_wire_ir`.

---

### User Story 2 - Receive a complete unsupported-version explanation (Priority: P1)

An author submitting an unsupported version receives an accurate explanation of which versions are accepted now, including the current command-capable profile, rather than a stale list that omits a valid alternative.

**Why this priority**: Correct refusal evidence lets the author choose a supported profile without guessing or silently changing a program's meaning.

**Independent Test**: Submit excluded and unknown version strings and compare the accepted versions stated by each refusal with current admission metadata.

**Acceptance Scenarios**:

1. **Given** a refused `0.3` document, **When** the engine reports the version refusal, **Then** its supported-version statement includes all five current versions, including `0.8`, and no excluded version.
2. **Given** an unknown version, **When** admission refuses it, **Then** the error category and CLI failure status retain their existing meaning while the accepted-version explanation agrees with metadata.
3. **Given** the same version refusal inputs, **When** reporting is repeated, **Then** the corrected diagnostic is deterministic and identifies the originally supplied version.

---

### User Story 3 - Retain historical compatibility without claiming fresh acceptance (Priority: P2)

A consumer maintaining historical records continues using the existing supported compatibility paths and frozen identities. Historical format inventories remain distinct from the fresh-admission capability set.

**Why this priority**: Correcting metadata must not re-enable rounded legacy arithmetic or reinterpret recorded programs to make the old advertisement appear true.

**Independent Test**: Compare historical compatibility metadata and existing supported historical serialization/hash/replay outputs with their baseline expectations, alongside the new current-admission list.

**Acceptance Scenarios**:

1. **Given** the existing historical `wire_ir` inventory, **When** the metadata correction is applied, **Then** that separate field retains its existing values and documented compatibility role; it does not claim every listed version is freshly admitted.
2. **Given** any existing supported historical codec or replay case, **When** the correction is applied, **Then** its bytes, identities, applicability and semantic outcome remain unchanged.
3. **Given** a supported consumer depending on metadata or refusal output, **When** the correction is prepared for delivery, **Then** its compatibility consequences and the chosen release policy are recorded before publication.

### Edge Cases

- A supported version with an invalid body must still fail for the existing body error; advertised version support is not universal document acceptance.
- Legacy rounded profiles remain refused, including when a serializer can represent a historical document using that version.
- Missing or non-string version values retain their existing structural-error distinction; they must not be silently repaired or normalized.
- Unknown, future and noncanonical version spellings must not be accepted by inference from the metadata list.
- The current highest supported version must appear in refusal explanations, even when the refused input predates its introduction.
- Historical wire inventories, decision-record profiles, read-record codecs and verifier/engine versions describe distinct capabilities; correcting one must not conflate them.
- Golden metadata or diagnostic expectations that preserve the false advertisement are evidence to reassess, not reasons to weaken the actual decoder contract.

## Requirements *(mandatory)*

### Scope and existing contract

This is a public metadata/diagnostic correctness correction, originating in **F-COORD-011, S5 / Medium**, not a new Behavior semantic feature. The baseline admits fresh Wire IR `0.4–0.8`; metadata falsely advertises `0.1–0.8`, and unsupported-version text lists only `0.4–0.7`. The historical `wire_ir` inventory is a separately intentional compatibility surface.

The required equality is `AcceptedVersions_metadata = AcceptedVersions_admission = AcceptedVersions_diagnostic = {0.4, 0.5, 0.6, 0.7, 0.8}`. Existing decoder/admission semantics define this accepted set. Historically known versions are a distinct inventory and need not equal the accepted set; historical knowledge does not establish fresh acceptance.

The correction does not expand admission, change arithmetic, add syntax or document versions, modify BehaviorHash/SchemaHash, reinterpret historical records, or change evaluation, verification, governance or replay outcomes. It does not resolve the other findings in Core016.

### Functional Requirements

- **FR-001**: The engine MUST have one authoritative definition of its current fresh-admission version set. Version selection, advertised fresh acceptance and every unsupported-version support statement MUST agree with that definition.
- **FR-002**: `accepted_wire_ir` MUST advertise exactly that set, in deterministic existing version order, through every supported reporting entry point. On the inspected baseline the set is `{0.4, 0.5, 0.6, 0.7, 0.8}`.
- **FR-003**: Unsupported-version diagnostics MUST identify the supplied version and state the complete current accepted set, including `0.8`, without falsely listing historical-only versions.
- **FR-004**: Fresh admission of `0.1–0.3` MUST remain refused. Metadata MUST be corrected to match established admission; re-admitting rounded legacy semantics to match incorrect metadata is forbidden.
- **FR-005**: Historical compatibility inventories, including the existing `wire_ir` field, MUST remain separately identified and unchanged in their established capability meaning and values. Documentation MUST distinguish historically known versions from versions accepted by the current admission path; historical compatibility does not imply fresh admission.
- **FR-006**: Existing error categories, CLI status meanings, supported metadata field names and unrelated metadata contents MUST be preserved by this correction. Exact diagnostic text may change only as required to correct the support statement.
- **FR-007**: Existing admitted program behavior, canonical bytes/hashes, supported historical codec/replay behavior and semantic version gates MUST remain unchanged.
- **FR-008**: Acceptance evidence MUST cover every current version with a valid version-specific document, each excluded legacy version, unknown versions and malformed version values; it MUST compare both supported reporting surfaces with actual admission and refusal results.
- **FR-009**: The consumer assessment MUST identify dependencies on metadata values, refusal text and error categories, explain required expectation changes in migration/release notes, and validate the corrected existing consumer contract before release. Assertions of erroneous values/text MUST NOT require preserving the defect or weakening admission. Ecosystem consumers adopt the correction through their separately declared published Core Release.
- **FR-010**: Delivery MUST correct the existing reporting contract without introducing a new consumer-contract version. Public field shapes, error codes and CLI statuses remain unchanged. Because the observable values/text change and consumers may require adaptation, release assessment MUST conservatively classify the correction as minor-class under the existing 0.x policy and document compatibility consequences. This classification selects no numerical release, tag or publication action. A change to public structure or legitimate consumer semantics would require a separate versioning/scope assessment and is outside 020. The accepted decision is recorded in [decisions.md](decisions.md).
- **FR-011**: Future additions to fresh admission MUST require corresponding metadata and refusal acceptance evidence; a historical version constant alone MUST NOT establish current acceptance.

### Key Entities *(include if feature involves data)*

- **Current admission set**: The finite set of exact version identifiers the engine supports for fresh document admission; body validity remains a separate obligation.
- **Historical compatibility inventory**: Previously defined format/codec capabilities with their existing applicability, distinct from fresh admission.
- **Unsupported-version refusal**: Existing structured refusal category and supplied-version evidence, accompanied by an accurate current support statement.
- **Consumer compatibility assessment**: Evidence about observable metadata/diagnostic changes and the release policy selected for affected supported consumers.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: For 100% of current admitted version profiles, a valid representative document agrees with the version advertised by both supported reporting surfaces; no excluded version is advertised as current.
- **SC-002**: For every excluded legacy version and each covered unknown version, refusal explains exactly the same accepted set as metadata, including the highest supported version.
- **SC-003**: Every covered historical compatibility case retains its recorded baseline outcome, canonical bytes and identities; no formerly refused legacy arithmetic profile becomes admitted. Known Core016 replay defects are not reported as fixed or passing by this metadata correction.
- **SC-004**: All reporting/refusal acceptance cases produce deterministic results, with no contradictory version inventories or newly conflated document kinds.
- **SC-005**: Before delivery, all affected supported consumer expectations have explicit evidence, migration/release notes describe the corrected values/text, and the existing-contract/minor-class delivery policy is followed without introducing a new consumer-contract version. Numerical release selection remains part of separately authorized release preparation.

## Assumptions

- D-020-001 was resolved as A during **clarify**. The user subsequently authorized **plan** on 2026-10-13; its Phase 0/1 artifacts are in [plan.md](plan.md). Planning/document delivery does not execute task generation, implementation code, new tests, altered fixtures or release publication.
- Draft checkout base is `5949cb111cd6c5af34b0fc9083e78810df450fce`, whose source tree matches the audit's released baseline `1e286ebcf1d61117320c57df155fa1ef9397e880` / v0.12.1. The audit record is pinned separately to `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.
- Clarification was grounded against integrated Core main `634023a6d504bac927192c964d945c7025b467c4`; the metadata/admission/diagnostic mismatch remains present there. This identifies the inspected source, not implementation or acceptance evidence for 020.
- The supported Rust facade, CLI, versioned documents and conformance assets are the owning Core contracts. Ecosystem release pins and binding updates are separate follow-up work if the consumer assessment requires them.
- Historical lists are preserved according to their existing contract; no new generalized historical decoder capability is inferred from an inventory entry.
- A later authorized implementation must follow the Core constitution's test-first workflow and exact-revision gates. Existing audit evidence demonstrates the defect, not completion or past test-first compliance for a future correction.
- Immutable evidence: [Core016 finding and RC-004](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md#f-coord-011--advertised-fresh-admission-versions-disagree-with-decoder), [E-COORD-011 actual metadata/refusal run](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/runs/COORD/admission-metadata/run.json), [independent review](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/reviews/MODEL/admission-metadata-review.md).
- Related discussion material: [remediation overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md) and [targeted re-audit outline](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/targeted-re-audit.md). These are discussion-branch links, separate from immutable Core016 evidence; they do not authorize implementation or assert gate/runtime execution for this draft.
