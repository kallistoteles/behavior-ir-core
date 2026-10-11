# Feature Specification: Strict and Profile-Preserving Store Replay

**Feature Branch**: `018-strict-profile-replay`

**Created**: 2026-10-11

**Status**: Analysed — approved A1/U1 corrections applied; implementation not started

**Input**: User description: "Draft a separate correction for audit 016 RC-002:
preserve supported historical read profiles during Store replay, including read
outcomes inside invocation records, and reject ambiguous current read evidence
before information is lost during decoding. Discuss before planning."

This Core correction addresses **F-PERSIST-001 (S3/Medium)** and
**F-TRUST-001 (S3/Medium)** in the
[immutable 016 findings](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md).
The audit concerns published v0.12.1, source commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`. This draft starts from
`5949cb111cd6c5af34b0fc9083e78810df450fce`, which has the same source tree.
The findings establish two replay boundary defects, not an authenticated forgery,
invalid-state commitment, or a defect in every replay path.

The outcome is faithful replay under the existing record contract. It adds no
Behavior syntax, Wire IR meaning, record format, hash domain or general replay
engine. A shared strict/profile-aware boundary is a possible design to discuss,
not a required internal architecture. See the
[discussion overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md)
and [targeted re-audit scope](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/targeted-re-audit.md).

## Clarifications

### Session 2026-10-11

- Q: Should 018 report malformed or ambiguous replay documents through the existing mismatch result, or introduce a new, versioned refusal result? → A: Preserve the existing `matches`/`diff` contract. Malformed or ambiguous evidence produces `matches: false` with a deterministic reason; backend failures remain operational errors. Introduce no third replay outcome. Use structured reasons where compatible with the existing surface, and interpret valid supported historical evidence under its recorded profile.
- Q: Should 018 verify all documented supported read/profile/module-version combinations, including reads inside invocation records, or only the audit's exact reproductions? → A: Cover the complete documented replay compatibility domain through an explicit support matrix, not an artificial Cartesian product. Preserve historical interpretation, applicable strict rejection and refusal rules across Core and Store boundaries; unsupported combinations remain unsupported. Keep the three audit counterexamples as separate named regressions.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Replay preserved historical evidence (Priority: P1)

As a consumer retaining immutable read evidence, I can replay a supported
historical record against its recorded Store position without a newer evaluator
silently changing its meaning or adding evidence it never captured.

**Why this priority**: Current Store replay rejects supported historical read-v1
records that standalone replay correctly preserves. An immutable archive must
remain interpretable under its recorded profile.

**Independent Test**: Use the audit's exact valid Store/schema/genesis position,
historical Wire 0.8 read-v1 record, and current-v2 and standalone-v1 controls.
Store replay must agree with the historical contract while preserving the archive
and Store head. Repeat for the historical read inside an invocation record.
Also verify every supported row in the contract-derived support matrix, using
the corresponding Core replay path as the historical interpretation reference
and establishing the additional Store binding obligations.

**Acceptance Scenarios**:

1. **Given** a valid historical Wire 0.8 read-v1 record, its exact behavior and a
   conforming Store containing the recorded position, **When** standalone and
   Store-backed replay run, **Then** both report a semantic match without
   substituting v2 facts, diagnostics policy or record identity.
2. **Given** an invocation containing that historical read-v1 outcome, **When**
   Store invocation replay runs, **Then** outer invocation and inner read retain
   their recorded profiles and identities.
3. **Given** a new current-profile read, **When** it is evaluated and replayed,
   **Then** it continues to emit and reproduce the existing current v2 record;
   historical compatibility does not change fresh emission.
4. **Given** any other documented supported module/read-profile combination,
   including a read embedded in a supported invocation, **When** Core and Store
   replay receive the same canonical historical evidence with Store binding
   obligations satisfied, **Then** they agree on match/non-match, recorded
   interpretation and contractually defined semantic diff/evidence and identities.
5. **Given** a combination documented as unsupported, **When** the corrected
   replay boundary receives it, **Then** its documented refusal remains unchanged;
   decoder capability alone cannot establish profile support.

---

### User Story 2 - Refuse ambiguous replay documents (Priority: P1)

As a consumer checking retained evidence, I receive a refusal for contradictory
duplicate keys in a current read document, even if a decoder could discard the
contradiction and recover the original record.

**Why this priority**: Equality after losing information does not establish the
required unambiguous document contract.

**Independent Test**: Start with the audit's valid current read-v2 record and
passing Core/Store controls. Insert an earlier contradictory `result` key while
retaining the existing last result and identity. Both replay boundaries must
refuse the ambiguous document; the valid control must still match.

**Acceptance Scenarios**:

1. **Given** a valid current-v2 read record, **When** a contradictory duplicate
   `result` is inserted, **Then** Store replay returns `matches: false` with a
   deterministic ambiguity reason before selecting one occurrence or reducing
   the document to a map.
2. **Given** a nested duplicate subject to the record's strict decoding contract,
   **When** replay checks it, **Then** it refuses before a lossy representation
   can hide the ambiguity.
3. **Given** the same valid record with insignificant whitespace changed, **When**
   replay checks it, **Then** semantic identity and match are preserved. Required
   duplicate refusal does not make source formatting semantic.

---

### User Story 3 - Preserve Store and evidence obligations (Priority: P2)

As a Store integrator, corrected replay still checks the recorded Store, history
position, state and schema rather than treating standalone agreement as proof
about another Store.

**Why this priority**: Correcting dispatch or decoding must preserve the stronger
Store-backed evidence boundary.

**Independent Test**: Substitute contracted Store/state/history/schema or behavior
coordinates in valid evidence, exercise an actually performed backend failure,
and distinguish mismatch from operational failure without changing Store data.

**Acceptance Scenarios**:

1. **Given** a standalone-replayable record naming a foreign Store or incorrect
   state/position, **When** Store replay checks it, **Then** it refuses the mismatch.
2. **Given** the wrong historical schema or behavior, **When** replay checks it,
   **Then** existing exact binding rules refuse; equal schemas alone cannot select
   another behavior's meaning.
3. **Given** a required backend operation that fails, **When** replay runs,
   **Then** its existing operational error contract remains. Successful and refused
   replay leave Store head, history, state and command exposure unchanged.

### Edge Cases

- Historical v1 retains its missing-capture limits; replay cannot invent absent
  facts or remove historically identity-bearing provenance.
- A Wire 0.8 module can accompany historical v1: module version alone cannot
  choose a read record's replay profile.
- Unknown or incompatible formats refuse instead of defaulting to the current
  profile. Compatibility does not re-admit formerly unsupported IR.
- Wrong identities, read declarations, arguments, observations, refused-request
  evidence and inner/outer invocation identities retain their applicable checks.
- Required key uniqueness applies even when duplicate values agree or an original
  record hash is retained; it follows the document's decoding contract.
- Historical/current semantic errors, observations and diagnostics remain governed
  by their profiles; no global field stripping or fabricated backend errors.
- Store invocation's already-strict standalone preflight must not regress.
- Replay after later writes uses the recorded historical schema/state coordinate.
- Malformed, ambiguous or mismatching evidence produces `matches: false`; an
  operational failure from a required backend operation remains an error. A
  supported historical v1 record is not malformed merely because fresh reads
  use v2.
- The support matrix is derived from existing contracts, not every possible
  pairing of Wire versions, read profiles and invocation profiles. Unsupported
  combinations retain their documented refusal; strict rejection is required
  only as prescribed by the applicable profile.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: The correction MUST cover the complete currently documented replay
  compatibility domain for read-v1/read-v2 across supported module/Wire versions,
  including read outcomes nested in supported invocation records under existing
  meanings. Coverage MUST NOT be limited to the audit counterexamples.
  Other record families are excluded unless a concrete shared-boundary regression
  needs compatibility evidence; this feature does not redefine them.
- **FR-002**: Store replay MUST select the recorded read profile independently
  from fresh-emission defaults, including the inner read of an invocation.
- **FR-003**: Replay MUST reproduce profile-defined results, semantic errors,
  observations, required evidence and identities, including contracted diagnostic
  inclusion/exclusion. It MUST NOT add current facts to historical-v1 comparison
  or remove historically identity-bearing data.
- **FR-004**: Raw replay boundaries in scope MUST enforce existing document
  decoding contracts before reduction can erase violations. In particular,
  contradictory duplicate keys in current read-v2 MUST refuse.
- **FR-005**: A duplicate's location or retained last value MUST NOT bypass required
  key uniqueness. Malformed/unknown fields and numeric representations MUST follow
  exact existing record contracts; sharing a decoder MUST NOT silently tighten
  unrelated frozen legacy formats.
- **FR-006**: Valid historical canonical bytes, identities and golden evidence MUST
  remain unchanged. Insignificant whitespace remains nonsemantic where contracted.
- **FR-007**: Store replay MUST retain exact Store/state/history/schema/behavior
  binding and mandatory integrity/trust obligations. Standalone agreement MUST
  NOT replace those checks.
- **FR-008**: Replay MUST remain read-only, dispatch no external commands and expose
  no uncommitted authority. The correction MUST NOT change fresh evaluation,
  admission, transition validity or genesis semantics.
- **FR-009**: Semantic mismatch and operational backend failure MUST remain
  distinguishable. Actually performed operations retain their error contract;
  omitted unnecessary reads need not fabricate hypothetical errors.
- **FR-010**: Unknown/incompatible/unsupported profiles MUST refuse explicitly
  under the applicable contract rather than silently choose the current profile.
  Documented unsupported combinations MUST retain their prior documented refusal
  behavior; the ability to parse them MUST NOT introduce support or re-admit
  unsupported Wire versions.
- **FR-011**: Evidence MUST cover both historical audit reproductions, duplicate-key
  refusal, their legal standalone/current controls, inner invocation, malformed
  input, exact coordinates/schema/behavior and unchanged-Store cases. Future tests
  MUST be seen failing before correction, as required by the Core constitution;
  audit failures do not establish future test-first compliance retroactively.
  The three audit counterexamples MUST remain separate named regressions:
  F-PERSIST-001 historical read-v1, F-PERSIST-001 read-v1 inside invocation, and
  F-TRUST-001 ambiguous current read-v2. Matrix coverage is additional evidence,
  not a replacement for those regressions.
- **FR-012**: A support matrix MUST enumerate the existing contract's module/Wire
  version, read-record profile, applicable invocation-record profile, standalone
  Core read replay, Store read replay, Core/Store invocation replay support,
  expected historical/current semantics or documented refusal, contract source,
  and historical limitations. It MUST distinguish supported, unsupported and
  inapplicable combinations without treating an artificial Cartesian product as
  the compatibility domain. Every supported row MUST have canonical-valid and
  applicable malformed/ambiguous/refusal evidence at its supported boundaries;
  identified unsupported combinations MUST have their refusal preservation
  checked. v1 missing-capture limitations MUST NOT be claimed repaired by a
  replay match. Missing coverage MUST be visible and MUST NOT count as passing.
- **FR-013**: Eventual consumer/conformance and canonical gate evidence MUST cover
  the correction revision through the supported public boundary. Final validation
  MUST bind the repository, exact frozen commit SHA, commands, exit statuses,
  environment/toolchain identity and log/evidence locations in revision-bound CI
  or an external immutable receipt without modifying the frozen checkout. Tracked
  reports MUST NOT attempt to embed the final SHA of the commit containing them.
  A later merge, squash, rebase or release commit with a different SHA requires
  its own final validation where exact-revision assurance is required. This draft
  claims no new execution, passing correction or release.
- **FR-014**: Replay MUST preserve the existing `matches`/`diff` result and
  backend-error contracts. Malformed, ambiguous or mismatching evidence MUST
  produce `matches: false` with a deterministic, informative reason; failures
  from actually performed backend operations MUST retain their existing
  operational error behavior. No third or separately versioned document-refusal
  outcome is introduced. The existing optional string `diff` remains a string;
  structured internal reasons MAY be rendered through that surface where
  compatible. A public structured `diff` object or new fields are outside this
  correction. Planning MUST document the stable reason information and
  compatibility limits instead of promising a structured public diagnostic
  unavailable under the existing contract. Supported historical evidence MUST
  be interpreted under its recorded profile, not rejected as malformed because
  the fresh-emission profile differs. See [decisions.md](decisions.md).
- **FR-015**: The approved correction MUST document the violated existing contract,
  smallest change, public error/consumer effects and release/versioning treatment,
  preserving historical interpretation. Publication of draft specifications does
  not approve implementation, release tagging/publication or a new record format.
- **FR-016**: For each supported matrix row, Store replay MUST preserve the
  historical interpretation of the corresponding Core replay path. Given the
  same canonical evidence and semantic state with the additional Store integrity
  and exact binding obligations satisfied, match/non-match and contractually
  defined semantic diff/evidence and record/hash identities MUST agree under the
  same recorded profile, separately for every supported profile/version
  combination. Equivalence between read-v1 and read-v2 is neither required nor
  implied; each profile retains its historical semantics and evidence contract.
  This comparison MUST NOT waive Store obligations or require Core replay to
  detect Store-specific mismatches or reproduce operational backend failures.

### Key Entities *(include if feature involves data)*

- **Recorded profile**: Interpretation of a record's result, evidence and identity;
  distinct from fresh emission.
- **Replay document**: Raw evidence checked under its applicable unambiguous
  decoding contract before semantic comparison.
- **Historical Store coordinate**: Exact lineage, state/history position, historical
  schema and applicable behavior needed for Store-backed replay.
- **Read/invocation evidence**: Immutable read result or invocation containing one;
  each applicable profile and identity remains bound.
- **Replay support matrix**: Contract-derived inventory of module/Wire versions,
  record profiles, supported replay boundaries, expected interpretation or
  refusal, provenance and limitations; it records existing support rather than
  defining new support.
- **Replay outcome**: `matches: true` when the evidence reproduces the recorded
  computation, `matches: false` with `diff` for malformed, ambiguous or
  mismatching evidence, or an operational error from an actually performed
  backend operation. Refusal is a reason for non-equivalence, not a third
  semantic outcome.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: All three audit contract failures in RC-002 are reversed on the
  approved correction revision: two valid historical Store cases match and the
  contradictory current read document refuses. All legal controls still match.
- **SC-002**: Every supported row in the contract-derived support matrix has a
  passing canonical-valid preservation case and each applicable malformed,
  ambiguous or historical refusal case at all supported replay boundaries.
  Supported Core/Store pairs agree under FR-016. Identified unsupported rows
  retain documented refusal behavior. Missing or inapplicable combinations and
  historical limits are recorded, never counted as passing coverage.
- **SC-003**: Every historical canonical record/identity retained for compatibility
  evidence is unchanged; fresh reads keep current output and identity rules.
- **SC-004**: All replay scenarios leave authoritative state/head/history unchanged
  and dispatch nothing. Every coordinate substitution in the selected binding
  matrix refuses through the agreed outcome category.
- **SC-005**: Eventual consumer/conformance and required gate evidence covers the
  delivered revision with required cases actually executed and all FR-013 receipt
  bindings present; skipped/unavailable evidence is visible. Producing the final
  receipt leaves the frozen tracked checkout unchanged. A different candidate or
  published commit is not covered by the old receipt. No performance target
  substitutes for replay correctness.
- **SC-006**: Malformed and duplicate-key cases return `matches: false` with a
  nonempty deterministic reason through the existing string `diff`; repeating
  the same evidence under the same replay inputs produces the same result.
  Required backend-failure cases remain operational errors. Existing consumer
  result handling and serialized field types remain compatible.

## Assumptions

- This is an existing-contract Core correction, not new Behavior semantics.
  Public use remains through `behavior-engine` and supported document contracts.
- [Read-v1 preservation](../../docs/soundness-remediation.md) and
  [Store replay](../../docs/persistence.md) define reference behavior. Audit evidence
  is immutable at `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`; green audit gates
  do not discharge the concrete failures.
- Conforming Backend completeness/coherence/immutable history and cryptographic
  premises remain explicit; this feature proves no arbitrary Backend honesty,
  key custody, all legacy encoder bounds or universal verifier soundness.
- A shared validated replay boundary is a candidate design, not a functional
  requirement. Sharing must preserve established semantics and obligations.
- Scope excludes a general migration/transition replay redesign, new IR/hashes,
  complete-child validity (RC-001), initial Store creation outcomes (RC-003) and
  performance optimization.
- The existing refusal surface is confirmed in [decisions.md](decisions.md).
  Compatibility coverage includes the full documented support domain; the
  support matrix must be derived during planning from the existing contracts.
  Release/versioning treatment remains a planning obligation under FR-015;
  this clarification assigns no release number or publication action.
