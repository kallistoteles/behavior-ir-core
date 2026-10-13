# Feature Specification: Replay Evidence Authority

**Feature Branch**: `022-replay-evidence-authority`

**Created**: 2026-10-12

**Status**: Clarified draft — ready for planning; no runtime implementation

**Input**: User-authorized specification for the remaining read transport-refusal
and invocation document-origin replay defects. Give record interpretation one
Core authority, preserve Store integrity obligations, and schedule this work
immediately after 018 and before the existing 019–021 queue.

This is a Core correctness remediation, not a language feature. Its implementation
baseline is the frozen 018 candidate
`391017e536ff64ddf94999ec126bc71799952264`, which already includes 017.
022 may be discussed and developed on its own branch before 018 merges; integration
must respect that dependency. A changed dependency requires renewed integration
validation. The 018 receipt does not attest a later 022 revision.

The execution order is **017 → 018 → 022 → 019 → 020 → 021**. Feature numbers and
the independent queued proposals remain unchanged. See the
[coordination overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md).

## Context and evidence boundary

018 already centralizes strict read-record preparation and recorded-profile
selection. Its [implementation report](../018-strict-profile-replay/implementation-report.md)
discloses a remaining Store-origin transport-refusal reconstruction limit.
The subsequent investigation found a second document-origin interpretation defect.
Neither finding is retroactively added to the immutable
[016 audit](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md).

The following feature-local IDs identify the separate remediation claims:

| ID | Observed failure on the 018 baseline | Relevant contract |
| --- | --- | --- |
| F-REPLAY-022-001 | A real Store read with `input: []` or `context: []` records `INVALID_INPUT`, original `refused_request` text and an empty-object echo. Core replay matches; Store reconstructs the echo and mismatches. | [010 read replay](../010-first-class-reads/spec.md), [018 replay boundary](../018-strict-profile-replay/contracts/replay-boundary.md) |
| F-REPLAY-022-002 | A Core host invocation with a coherent actual historical snapshot and an input-shape or binding-shape decode error records `source_kind: invocation`. Core replay matches; Store interprets its document as an intent and mismatches on `outcome.decode_evidence.source_kind`. | [012 invocation documents](../012-unified-invocation-model/contracts/invocation-documents.md) |

Both were reproduced through existing public consumer operations using a Wire 0.8
Culture model, a seeded `Culture#c1` with `measurements = 7`, and the exact Store
data version. The host-invocation cases use a snapshot agreeing with that Store;
they are not fabricated Store-origin invocation records. Positive controls covered
ordinary reads, a semantic input refusal with object-shaped input, Store-origin
intent decode refusals, unknown-binding refusals and wrong-entity-type refusals.
The exploratory program was not retained as a repository fixture or immutable run
receipt. These observations are not a substitute for named, retained failing
regressions before implementation.

The concrete read case is a `ReadRecord`, not the unified invocation envelope.
Unified invocation already distinguishes `evaluated` from
`pre_evaluation_refusal`. Binding refusal may follow successful document decoding:
a requested invocation exists, but no successfully resolved/evaluated invocation
is implied. No new record sum type is required by this specification.

## Clarifications

### Session 2026-10-12

- Q: May Store replay match a recorded decode refusal caused by a malformed supplied snapshot when the actual historical Store coordinate and applicable integrity requirements are independently established? → A: Yes (A). Reproduce the exact original attempted computation and refusal under the recorded profile. The rejected snapshot is evidence of what was attempted, not authoritative state. Obligations are phase-sensitive: do not impose obligations from phases never reached or require state equality for a component that never became semantic state. Independently applicable Store/history/schema/Behavior and integrity obligations remain mandatory. Document the previous non-match expectation and assess the observable compatibility correction before implementation.

Rejected data can be authoritative evidence of what was attempted without being
authoritative evidence of what was true. A matching refusal establishes that the
recorded attempted computation was reproduced under its applicable historical
conditions; it does not validate all content in the rejected document.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Reproduce the original rejected read (Priority: P1)

As an audit consumer, I can replay a Store read rejected while decoding its request
and reproduce the recorded refusal rather than evaluate a replacement request.

**Why this priority**: A valid refusal record currently fails Store replay because
the attempted request is replaced by its empty-object echo.

**Independent Test**: Produce two records from real Store reads, one with
`input: []` and one with `context: []`, using the same valid historical Store
position. Compare standalone and Store-backed replay without changing either record.

**Acceptance Scenarios**:

1. **Given** a real Store-origin current read record rejected because `input` is
   an array, **When** it is replayed under its recorded profile, **Then** both
   replay routes match the original `INVALID_INPUT` evidence and record identity.
2. **Given** the equivalent failure in `context`, **When** it is replayed,
   **Then** the original rejection is reproduced rather than treating `{}` as
   the supplied context.
3. **Given** a valid request refused later for an unexpected argument, **When**
   it is replayed, **Then** its existing interpretation and evidence are preserved;
   it is not recategorized as an original-text transport refusal.

---

### User Story 2 - Preserve the kind of attempted invocation (Priority: P1)

As a host integrator, I can replay a decode refusal without an invocation document
being interpreted as a capability intent or a document archive losing its origin.

**Why this priority**: The recorded input boundary determines which decoding rules
and refusal evidence must be reproduced.

**Independent Test**: Produce host-invocation decode refusals with a coherent
snapshot at the actual Store position, and compare them with Store-origin intent
refusals and successful invocation controls.

**Acceptance Scenarios**:

1. **Given** a host invocation with `input: []` and a coherent Store-bound snapshot,
   **When** its `source_kind: invocation` decode refusal is replayed against that
   Store, **Then** it matches under the invocation decoding rules and retains its
   original identity.
2. **Given** a host invocation whose binding value is a string instead of a typed
   identity, **When** its decode refusal is replayed, **Then** the original
   invocation document is reproduced; it is not changed into an intent document.
3. **Given** a Store-origin intent rejected during decoding, **When** it is
   replayed, **Then** its existing matching behavior, origin and metadata remain.
4. **Given** a binding refusal after successful invocation decoding, **When** it
   is replayed, **Then** resolution is reproduced against actual historical Store
   evidence without inventing an evaluated inner record or missing original text.
5. **Given** a documents-origin record whose supplied snapshot failed decoding
   because `entities` was an object rather than a list, or whose contradictory
   supplied facts produced a decoding refusal, **When** Core reproduces that exact
   refusal and independently applicable Store anchoring/integrity checks succeed,
   **Then** Store replay matches the original complete refusal evidence. The rejected
   snapshot is not required to become or equal a semantic historical state.

---

### User Story 3 - Keep historical replay and Store integrity trustworthy (Priority: P2)

As a consumer, I retain the supported historical replay contract while Store
continues to verify claims against its actual immutable history.

**Why this priority**: Sharing record interpretation must preserve independent
Store evidence checks; record self-consistency cannot establish historical truth.

**Independent Test**: Exercise the existing supported read/profile/version and
invocation compatibility domain, then alter history coordinates, entity evidence,
schema, original documents and nested records independently.

**Acceptance Scenarios**:

1. **Given** a supported historical or current record with matching Store evidence,
   **When** replayed after later writes or migrations, **Then** it reproduces under
   the recorded profile and historical schema, not the current head's interpretation.
2. **Given** a self-consistent binding/evaluation record falsely asserting as
   established historical evidence that an existing entity is absent, **When** Store
   replay checks it, **Then** it remains nonmatching even if standalone replay matches
   the recorded assertions.
3. **Given** malformed or ambiguous raw record evidence, **When** replayed,
   **Then** it produces a deterministic non-match under the applicable existing
   profile rules before lossy representation can erase the ambiguity.
4. **Given** a backend operation required by replay fails, **When** the failure is
   returned, **Then** its existing operational/evaluation error contract is retained.
5. **Given** any matching, mismatching or refused replay attempt, **When** it ends,
   **Then** canonical Store state/history and committed commands are unchanged and
   no fresh commit authority or external dispatch is produced.
6. **Given** an otherwise reproducible document-decoding refusal with a foreign
   Store identity, nonexistent/wrong history coordinate or incorrect historical
   schema/Behavior binding, **When** Store replay checks it, **Then** it remains
   nonmatching; the decoding refusal does not waive independent historical anchoring.

### Edge Cases

- Original refused text differs from the record's diagnostic echoes; decoding
  failure must not establish a decoded value for the failed section.
- `refused_request` is absent, has the wrong type, claims a valid request, or appears
  in a profile where it was never supported.
- Original document kind, format, data version or recorded outcome contradicts
  the envelope, inner record or actual historical Store evidence.
- Invocation input decoding succeeds but identity resolution fails; an undecodable
  supplied identity remains a decode problem, not an invented missing binding.
- `source_kind: documents` archives a malformed or contradictory supplied snapshot:
  replay reproduces its verified decoding refusal without turning rejected content
  into authoritative state. It still establishes independent historical anchoring.
- A component successfully became an established semantic input before another
  component failed: preserve the obligations actually established on that path;
  the failed component does not erase earlier independent obligations.
- An asserted `DECODE`/`BINDING` stage is forged to avoid later checks: Core must
  reproduce the original computation and actual failure phase, not trust the label.
- A historical profile never captured sufficient original refusal evidence; 022
  cannot invent that evidence or widen unsupported historical combinations.
- Metadata, formatting and object order are nonsemantic where existing contracts
  say so; original refused transport text retains its existing identity meaning.
- An archived ALLOW action is replayed at the current head; reproduction must not
  create a bundle, promote a validation certificate or publish command candidates.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: Core MUST provide the single authoritative interpretation of recorded
  request evidence, document origin, outcome and supported historical profile.
  Store-backed replay MUST use that interpretation when adding historical evidence.
- **FR-002**: For current read transport refusals, original `refused_request` text
  MUST be the attempted-request evidence. Echo/default fields MUST NOT replace
  undecodable original values. The ordinary record comparison remains mandatory.
- **FR-003**: Invocation refusal replay MUST preserve the recorded `source_kind`
  and its corresponding document-decoding rules. No invocation/document archive
  may be silently interpreted through the intent boundary.
- **FR-004**: Store MUST independently establish the required actual Store identity,
  history position/StateId, historical schema/Behavior and other independently
  applicable integrity obligations. Snapshot, binding and fact reconciliation MUST
  follow the components/phases actually established by the original computation;
  later-phase obligations MUST NOT be imposed retroactively. A standalone match
  MUST NOT substitute for independent Store anchoring.
- **FR-005**: Successful document decoding, successful resolution and evaluation
  MUST remain distinct. A pre-evaluation refusal has no evaluated inner record;
  a binding refusal does not imply that decoding failed.
- **FR-006**: Every currently documented supported profile/version/boundary
  combination MUST retain its reference interpretation under that same profile.
  Cross-profile equality is not required. Explicitly agreed replay-outcome
  corrections in this specification apply; unsupported combinations and historical
  missing-evidence limitations MUST otherwise retain their documented behavior.
- **FR-007**: Strict raw evidence decoding, ambiguity rejection and historical
  request-decoding rules established by 018 MUST be preserved. Original refused
  text MUST NOT be normalized into a supposedly valid decoded request.
- **FR-008**: Wire IR, existing record formats and bytes, BehaviorHash/SchemaHash
  rules, hash domains, public replay result types and Backend contracts MUST NOT
  change. Existing fresh evaluation and invocation remain separate from replay.
- **FR-009**: Replay MUST compare the required complete semantic evidence,
  original record identities, nested records and existing metadata consistency;
  matching only the refusal code or selected document is insufficient.
- **FR-010**: Malformed, ambiguous, inconsistent or mismatching enclosing record
  evidence MUST use the existing non-match/diff contract. Malformed original request
  data inside a valid refusal archive MUST instead be interpreted as attempted-request
  evidence and may reproduce a matching refusal. Actually performed backend operations
  MUST retain their existing error behavior. Hypothetical errors from omitted
  operations are not part of semantic equivalence; mandatory obligations remain.
- **FR-011**: Replay MUST NOT mutate canonical Store state/history, dispatch or
  publish external commands, construct fresh commit authority, or promote an
  uncommitted candidate into reusable validation evidence.
- **FR-012**: Self-consistent records falsely claiming established historical
  state/facts, identity, schema or authorization evidence MUST remain nonmatching.
  Rejected payload content is an attempted input, not an established historical
  assertion; replaying its refusal MUST NOT grant it authority or promote it into
  validated Store evidence.
- **FR-013**: Each feature-local finding MUST have separate retained failing
  regressions on a named baseline before implementation, followed by corrected
  outcomes and legal positive/negative controls. Exploratory observations and
  passing tests that assert an existing limitation are not regression RED evidence.
- **FR-014**: Any intentional replay-outcome correction MUST have an explicit
  compatibility/versioning assessment before implementation. No existing archive,
  016 finding or frozen 018 report/receipt may be rewritten to hide the change.
  The assessment MUST document the previous malformed-snapshot non-match behavior,
  identify its retroactive state-equality assumption, explain its conflict with the
  agreed phase-sensitive model, correct the test expectation and determine the
  applicable public-contract versioning consequences.
- **FR-015**: Final correctness and consumer evidence MUST bind the actual immutable
  delivery revision using the owning repository's required pinned-environment gates
  and supported consumer contract. Failed, skipped and inconclusive evidence MUST
  remain distinguishable from passing results.
- **FR-016**: The targeted re-audit MUST assess each finding separately and the
  affected replay authority, historical integrity, canonical identity and read-only
  obligations. It MUST NOT claim whole-kernel soundness from these corrections.
- **FR-017**: Replay MUST reproduce the original computation through the phase
  that produced the recorded outcome. The phase MUST be established by actual
  profile-aware reproduction, not an unverified record label. Decode refusals
  MUST NOT require semantic state equality for rejected components that never
  became semantic state. Binding refusals retain obligations for already-established
  semantic components; resolved/evaluated paths retain their existing state/fact
  obligations. Independently applicable historical anchoring remains mandatory.

### Key Entities

- **Replay claim**: An immutable record claiming that an attempted operation and
  its semantic outcome can be reproduced under a supported recorded profile.
- **Authoritative attempted-request evidence**: The representation selected by
  the existing profile/outcome contract, including original refused text or an
  archived document with its origin; diagnostic echoes are not interchangeable.
  Its authority concerns what was attempted, not the truth of rejected content.
- **Pre-evaluation refusal**: A recorded decoding/resolution failure with no
  evaluated inner record. Resolution refusal may retain a decoded requested invocation.
- **Historical Store evidence**: The actual canonical state/history/schema and
  required facts established independently at the record's exact Store coordinate.
- **Recorded profile**: The existing historical interpretation bound to the record
  and exact admitted behavior; it cannot authorize an older fresh evaluator.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: All four concrete counterexamples match after correction: read
  input-array, read context-array, invocation input-array and invocation binding-
  shape refusal. Each retains the original semantic outcome and record identity.
- **SC-002**: Every required supported compatibility cell has attributable positive
  and negative evidence; no unsupported or inapplicable cell is counted as success.
- **SC-003**: Existing valid records and historical fixtures retain their canonical
  bytes/identities, and every tested false authoritative-history claim, substitution
  or enclosing-record ambiguity case remains rejected according to its applicable
  contract and the explicitly agreed replay-outcome correction.
- **SC-004**: Every tested replay outcome leaves canonical state/history and
  committed command authority unchanged, with zero fresh bundle construction,
  candidate promotion or external command dispatch.
- **SC-005**: Each finding has an independent scoped closure assessment connecting
  its requirement, named failing baseline, corrected revision, controls and residual
  assumptions; the final delivery evidence identifies one exact tested revision.
- **SC-006**: Malformed and contradictory supplied-snapshot decode refusals with
  correct independent historical anchoring reproduce as matches; equivalent refusal
  records with false anchoring remain nonmatches. Forged failure stages cannot waive
  semantic obligations, and successfully evaluated controls retain their checks.

## Assumptions

- This specification prepares discussion only. Next steps are clarify, plan, tasks
  and implementation; creating it does not authorize a runtime correction or release.
- 022 depends on 018 and its integrated 017 behavior. It can start before their merge,
  but later dependency changes require updating and verifying the actual integration.
- No new language semantics, general replay/IVM engine, public profile selector,
  record migration, ecosystem dependency update or performance target is included.
- The supported domain comes from existing 010/012 contracts and the
  [018 support matrix](../018-strict-profile-replay/contracts/support-matrix.md),
  extended only by an explicitly agreed correction to the documented replay contract.
- Shared record interpretation does not mean unconditional equality between
  standalone and Store replay: Store has additional independently established premises.
- The selected supplied-snapshot contract is matching reproduction of the original
  verified decode refusal under independent Store anchoring, without granting
  semantic state authority to rejected payloads. The baseline
  [malformed-snapshot non-match control](../../crates/behavior-store/src/store/replay_tests.rs)
  must receive the explicit compatibility assessment in FR-014; its old expectation
  is not the normative definition of replay.
- Backend completeness/coherent immutable history and existing durability,
  cryptographic and trust assumptions remain explicit external premises.
