# Feature Specification: Faithful Facts and Witness Schemas

**Feature Branch**: `024-facts-witness-schema`

**Created**: 2026-10-13

**Status**: Implemented and independently reviewed — tracked source/evidence finalized; exact frozen-revision gates, pushed-Git consumer validation and final completion are recorded externally after commit.

**Input**: Read [Core issue #21](https://github.com/kallistoteles/behavior-ir-core/issues/21) and specify a separate remediation for F023-EXTERNAL-FACTS-SCHEMA-001. Make published ordinary Facts/witness schemas describe the existing canonical document domain, establish producer/schema compatibility and preserve existing semantic and historical boundaries.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Exchange valid counterexample evidence (Priority: P1)

A consumer receiving a genuine Core-produced verification report can validate its documented shape and reproduce its counterexample without translating fact-family names or altering signed evidence.

**Why this priority**: A supported signed report is currently rejected by its published schema even though Core accepts its evidence and reproduces the recorded refusal. This prevents consumers from relying on the advertised document contract.

**Independent Test**: Use an actual authenticated producer to obtain the issue's admitted Marker/Customer counterexample, then check the original report and witness at their applicable document boundaries and reproduce the recorded result. The correction's regression must first fail against the uncorrected published schema; the investigation's successful defect-detection script is discovery evidence, not that regression.

**Acceptance Scenarios**:

1. **Given** the issue's signed report whose witness observes that a Customer does not exist, **When** a consumer validates the report and witness against the applicable current governance and embedded Store contracts, **Then** both accept the unchanged document and Core reproduces the same `DENY`.
2. **Given** valid ordinary Facts containing existence, historical identity use or incoming references, **When** consumers validate their shape, **Then** the existing canonical section names are accepted without renaming evidence or changing its identity.
3. **Given** supported producer outputs containing query, field or supplied-universe facts, **When** their applicable ordinary/witness contracts are checked, **Then** all six fact families are representable, including permitted combinations.
4. **Given** a valid counterexample report with aggregate `not_verified`, **When** it is exchanged, **Then** that aggregate is recognized as a legitimate verification result; schema acceptance neither changes it to verified nor grants authority.

---

### User Story 2 - Reject documents with the wrong structure (Priority: P1)

A consumer can use the published contract to reject documents that cannot represent ordinary Facts, while retaining Core's independent checks for semantic validity and authority.

**Why this priority**: Correcting names alone leaves arbitrary JSON in sections that must represent structured observation families. Consumers need an accurate structural contract as well as acceptance of genuine evidence.

**Independent Test**: Compare positive ordinary Facts with one structural defect at a time: wrong family names, non-array sections, malformed items, missing or additional closed-product fields, and bundle-only query fields. Separately exercise the existing checked rejection of semantically contradictory evidence that is structurally valid.

**Acceptance Scenarios**:

1. **Given** ordinary Facts using `exists`, `used` or `incoming` as root family names instead of `existence`, `identities` or `references`, **When** their structure is checked, **Then** they are rejected; the identically spelled properties inside the corresponding fact items remain valid where defined.
2. **Given** examples such as `{"queries":42}`, `{"fields":[{}]}` or `{"universe":true}`, **When** their structure is checked, **Then** they are rejected as malformed observation families.
3. **Given** an ordinary query item containing bundle-only `result_hash`, **When** the ordinary contract is checked, **Then** it is rejected without making the ordinary consumer permissive or imposing bundle integrity fields on an ordinary query.
4. **Given** a structurally valid document with conflicting semantic keys, facts inconsistent with the exact state/history, or invalid subject/authentication evidence, **When** applicable Core checks run, **Then** the existing refusal is preserved; structural acceptance is never reported as semantic truth or authority.

---

### User Story 3 - Preserve recorded meaning (Priority: P2)

A consumer continues to interpret historical evidence under its recorded profile and retains the same Core results, canonical evidence and identities after the schema correction.

**Why this priority**: This remediation corrects a public representation of existing meaning. Rewriting ordinary evidence or changing historical refusal phases would create a different compatibility problem.

**Independent Test**: Inventory supported document/profile/version pairings and compare current and applicable historical controls within each pairing. Cover ordinary Facts, invocation witnesses, migration refusal witnesses and bundle controls without inventing an unsupported Cartesian product.

**Acceptance Scenarios**:

1. **Given** a supported historical report or witness, **When** it is decoded and reproduced under its recorded profile, **Then** its original Core outcome, canonical bytes, identities and applicable refusal phase/category/precedence are unchanged.
2. **Given** omitted Facts, an empty Facts product, a known empty family or an omitted universe for a type, **When** the document is processed, **Then** their established distinctions are preserved: an unknown observation is not converted to false, and an unknown universe is not converted to an empty universe.
3. **Given** an existing migration refusal witness that has no invocation Facts product, **When** its contract is checked, **Then** it remains a valid distinct witness alternative with its original meaning.
4. **Given** bundle evidence or a previously unsupported document/profile pairing, **When** the ordinary/witness correction is applied, **Then** the existing distinct bundle contract and unsupported-domain refusals remain unchanged.

---

### User Story 4 - Adopt the corrected public contract knowingly (Priority: P2)

A consumer maintainer can determine what changed in the published schema, which supported documents are affected and whether previously generated consumers need updating.

**Why this priority**: The schema is a public contract even when the evaluator's semantics remain unchanged. A correction must explain both newly accepted genuine documents and rejected erroneous structures.

**Independent Test**: Review the affected-domain inventory, supported producer/consumer evidence and compatibility assessment. A maintainer must be able to distinguish a schema correction from a language, record or authorization change without inspecting implementation techniques.

**Acceptance Scenarios**:

1. **Given** a consumer based on the erroneous section names or permissive section definitions, **When** it reads the migration information, **Then** it can identify the canonical families, corrected structural requirements and affected published assets.
2. **Given** the correction's delivery evidence, **When** it is reviewed, **Then** each covered profile has actual producer acceptance, structural rejection and semantic preservation evidence; untested domains and remaining assumptions are explicit.
3. **Given** a published delivery revision different from a previously tested candidate, **When** exact-revision assurance is claimed, **Then** the published revision has its own applicable validation evidence.

### Edge Cases

- Optional `facts` omitted versus `facts: {}`; a present non-object Facts section or a null section is not silently treated as empty.
- Each of the six families omitted or represented by a permitted empty array; false existence/usage observations and explicitly empty incoming/member sets remain observations.
- A supplied complete empty universe for a type versus no supplied universe for that type; unknown remains unknown.
- Nested null values permitted by the selected value contract versus null where an array, object or required string is required.
- Query captures and universe entities retain their existing value/type interpretation; a generic structural contract must not invent a fixed domain model or reject legitimate declared fields.
- Ordinary queries with empty/nonempty members and captures; unknown nested fields or misplaced bundle integrity data.
- Repeated semantic keys or contradictory observations may have valid basic structure and still fail checked Core validation. Raw ambiguity retains the recorded profile's existing treatment.
- A valid signed counterexample is not a verified safety result. A well-shaped unsigned or misbound report is not authenticated authority.
- A verification envelope is a governance root document and an embedded Store evidence document; it is not itself a standalone Store root document.
- Invocation counterexample and migration refusal witnesses retain distinct shapes; one must not acquire the other's required fields.
- Historical profiles and unsupported combinations keep their existing interpretation/refusal rules. Compatibility is compared within the same recorded profile, not between different profiles.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: Published ordinary Facts/witness contracts MUST admit admissible canonical documents produced by the corresponding supported Core/profile. The issue's actual authenticated counterexample MUST establish a baseline failing correction-regression before schema changes, then pass unchanged after correction while reproducing the same refusal.
- **FR-002**: The authoritative ordinary domain MUST cover all six existing fact families: `existence`, `identities`, `references`, `queries`, `fields` and `universe`. The erroneous root aliases MUST not be added to the ordinary Core consumer; item-level `exists`, `used` and `incoming` retain their existing roles.
- **FR-003**: Each family MUST have its existing structural product described: optional array sections, required item properties, basic property types and closed observation-item fields where the existing contract is closed. Generic JSON MUST not substitute for an entire observation family or hide missing/unknown item properties.
- **FR-004**: Missing observations MUST remain unknown. Omitted and explicitly empty families/universes MUST retain their existing distinctions, and no schema requirement may force every ordinary Facts product to include all six families or force every historical witness to contain Facts.
- **FR-005**: Value-bearing positions MUST preserve their existing profile-defined domains, including permitted nulls and schema-dependent entity fields. Structural validation MUST NOT introduce a fixed application schema or replace the exact module/type checks that establish their semantic meaning.
- **FR-006**: Ordinary Facts, bundle evidence and their containing witness/report documents MUST remain distinct contracts. Ordinary queries MUST continue to exclude bundle-only integrity fields such as `result_hash`; the 023 bundle contract and its independent integrity obligations MUST remain intact.
- **FR-007**: Corrected witness contracts MUST describe the applicable existing invocation counterexample and migration refusal alternatives. A signed counterexample report with `not_verified` MUST remain a valid evidence document rather than an infrastructure error or an authorization grant.
- **FR-008**: Structural acceptance MUST not imply semantic validity, historical truth, completeness of verification, authentication or authorization. Applicable Core obligations for duplicate semantic keys, contradictions, exact subject/state/history binding, recorded-profile interpretation and trust MUST retain their existing behavior.
- **FR-009**: The applicable current governance and embedded Store boundaries MUST describe the same ordinary Facts/witness domain for corresponding profiles. Acceptance evidence MUST use the actual supported enclosing document kind; a standalone envelope MUST not be tested as a Store root document.
- **FR-010**: A support inventory MUST identify each affected documented document/profile/version pairing, its authoritative ordinary shape and its enclosing consumer boundary. All listed supported pairings MUST have acceptance/preservation controls; unsupported pairings MUST remain unsupported. Different historical profiles MUST not be required to be mutually equivalent.
- **FR-011**: Historical decoding, runtime reproduction and replay MUST retain their recorded semantics, refusal phases/categories/precedence, canonical bytes and semantic identities. This feature MUST NOT change Wire syntax/admission, record formats, semantic hash domains, verifier meaning, public semantic capabilities or Backend obligations to resolve a schema disagreement.
- **FR-012**: Structural negative coverage MUST include wrong root aliases, non-array families, malformed/missing item properties, wrong basic types, additional closed-product fields and bundle-field leakage. Positive coverage MUST include all six families, permitted combinations, empty/omitted sections and permitted value forms. Existing semantic contradiction and trust failures MUST remain rejected independently.
- **FR-013**: Producer/schema closure MUST be established from actual supported Core-produced evidence, including the signed issue reproduction and applicable containing reports/witnesses. Reviewed invariants and bounded differential/metamorphic examples MUST be distinguished; finite tests alone MUST not be described as a universal mathematical proof.
- **FR-014**: Compatibility assessment MUST identify acceptance-domain changes, affected public schema assets, impacted schema-based consumers and any migration/versioning consequences under the existing release policy. Historical contracts MUST not be silently redefined; a justified schema asset revision MUST not be misrepresented as a new language semantic feature.
- **FR-015**: Completion MUST provide a targeted ordinary-Facts/witness re-audit with a requirement-to-evidence chain, explicit remaining assumptions and exact-revision required validation. It MUST distinguish the scoped finding from 023's completed bundle remediation and the broader 016 audit; unrelated issues are not implicitly closed.

### Key Entities *(include if feature involves data)*

- **Ordinary Facts**: A finite product of typed partial observation maps, encoded using the six existing named families. Missing entries mean unknown; supplied entries may describe state or history without becoming authority independently of their applicable checks.
- **Existence/usage observation**: A typed identity mapped to a Boolean. Existence concerns the evaluated state; usage concerns whether the identity has ever been used in history.
- **Reference observation**: A target typed identity mapped to a finite set of incoming source/identity/field edges.
- **Query/field observation**: A query instance mapped to its existing descriptor, captured inputs and finite member set, or a typed entity/field cell mapped to its observed value. Their canonical representation and identity rules are unchanged.
- **Supplied universe**: An entity type mapped to a complete finite identity-to-entity-value map for that type. Its absence cannot be interpreted as completeness or emptiness.
- **Witness**: The existing profile-defined evidence of a reproducible invocation counterexample or migration refusal, including ordinary Facts only where its alternative permits them.
- **Structural contract**: The allowed document/product shape. It describes representation, not whether the observations are true or the producer has authority.
- **Supported pairing**: A documented format/profile/version and its actual producer, enclosing document and checked consumer; the compatibility domain is explicit rather than all possible combinations.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: The actual signed issue counterexample passes both applicable corrected schema boundaries unchanged, is accepted under its exact subject/profile and reproduces the identical `DENY`; its correction-regression first fails on the uncorrected baseline.
- **SC-002**: All six ordinary fact families have actual serializer/consumer acceptance evidence and a stated structural domain. Every inventoried supported current producer pairing has actual Core-produced evidence accepted by its applicable corrected contract. Historical pairings have their specified archive-preservation and codec-compatibility evidence; constructed codec controls MUST be labelled and MUST NOT be represented as historical producer output. No valid covered canonical producer output is rejected by its applicable corrected contract.
- **SC-003**: Every required structural-negative category is rejected by the applicable corrected shape contract; all covered semantic contradiction, subject and trust failures retain their existing checked refusal. Schema success is never counted as proof of truth or authority.
- **SC-004**: All covered current/historical controls preserve their Core outcomes, canonical evidence bytes, identities and applicable refusal phases/categories/precedence. Zero previously unsupported pairings become supported, and the distinct bundle controls remain unchanged.
- **SC-005**: Consumer-facing documentation accounts for all corrected acceptance-domain changes and affected assets, including migration/versioning consequences and remaining obligations beyond structural validation.
- **SC-006**: Targeted review traces every requirement to evidence or an explicit invariant/assumption; scoped closure is reported only after mandatory delivery checks cover the exact delivered revision. There is no unsupported full-Core soundness or full-Store conformance claim.

## Assumptions

- This is Core correctness/schema remediation, not a new semantic feature. Issue #21 is the authoritative requested scope; the confirmed defect is S5 / Medium with associated structural underspecification, not demonstrated commit or authorization unsoundness.
- The existing canonical ordinary representation defines the correction target. The public schema must describe that representation rather than changing evaluation or historical evidence to match erroneous aliases.
- The specification is based on validated 023 revision `4f44fb83054d6d100f55e0b1466196b8cc94b151`; its investigation is evidence of the defect, not evidence that 024 has been implemented test-first or delivered.
- Feature 024 has its own branch/worktree and does not modify the frozen 023 candidate or its receipts. Dependency integration/rebase requires new applicable validation at the resulting revision.
- Document/profile coverage and release consequences are mandatory planning outputs. This specification chooses no numerical release/tag, introduces no new record/profile, and performs no merge, publication or ecosystem dependency change.
- Correcting the schema does not make supplied facts true. Existing solver, signature/key, exact historical evidence and conforming storage assumptions remain applicable wherever those paths require them.
- The supported document/profile inventory is bounded to ordinary Facts and witnesses in the affected current wrapper contracts and their documented historical controls. This is not an audit or redesign of every Core schema or evidence type.
- Source/schema/test changes belong to the later implementation phase after clarify, plan, tasks and analyze. This command produces requirements and their quality review only.
- [Origin and priority](origin-and-priority.md) records the issue, immutable source/evidence references, work order and separation from the queued metadata/canonicalization remediations. Public compatibility follows the existing [versioning policy](../../docs/versioning.md).
