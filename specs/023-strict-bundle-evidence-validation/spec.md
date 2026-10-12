# Feature Specification: Strict Bundle Evidence Validation

**Feature Branch**: `023-strict-bundle-evidence-validation`

**Created**: 2026-10-12

**Status**: Draft for clarify — correctness remediation; specification only.

**Input**: Create a separate Core remediation for F019-EXTERNAL-QUERY-001. Distinguish semantic Facts from bundle evidence, strictly validate profile-defined query result hashes, preserve supported historical formats and ordinary Facts, and establish producer–consumer compatibility before resuming the queued features.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Commit supported query-bearing transitions (Priority: P1)

A Store consumer can execute an otherwise valid transition that observes a query under the supported trusted v2 profile. Core can consume the evidence it generated and commit the transition after all existing semantic, historical and authorization checks succeed.

**Why this priority**: The reproduced failure blocks legal writes before the first commit. A supported producer and its corresponding consumer disagree on their document kind.

**Independent Test**: Turn the retained `orders_history` diagnostic into an asserting regression on the frozen 019 baseline. Show that the valid v2 workload fails with `BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts` before correction; after correction, complete the intended history. Run v1, optional-index and non-query controls against the same respective profiles.

**Acceptance Scenarios**:

1. **Given** the valid `orders_history` module, seed and normal reference host under v2, **When** query-bearing transitions produce candidates and proceed through the existing commit checks, **Then** correct evidence is accepted and the workload reaches its expected eight commits without dropping query observations.
2. **Given** the same previously supported workload under v1, **When** it is evaluated and committed, **Then** its existing result, record bytes, identities and historical interpretation are preserved.
3. **Given** equivalent indexed, unindexed and reordered backend enumeration under one profile and otherwise identical semantic inputs, **When** the workload runs, **Then** semantic outcomes, recorded observations, canonical identities and resulting history agree within that profile.
4. **Given** an otherwise valid ordinary transition observing no queries, **When** its evidence is produced and consumed, **Then** its existing behavior is unchanged.
5. **Given** valid observed queries with empty and nonempty memberships, **When** their bundles are consumed, **Then** both follow their defined integrity contract; an empty result is not treated as absent evidence.

---

### User Story 2 - Reject malformed or forged evidence (Priority: P1)

A host consuming candidate evidence can distinguish a well-formed integrity-checked envelope from malformed or internally inconsistent evidence. Acceptance of an integrity field never grants semantic truth or commit authority.

**Why this priority**: Fixing false rejection must preserve the strict trust boundary and the checks preventing forged observations from becoming authoritative.

**Independent Test**: Alter one bundle/evidence component at a time, keeping unrelated required identities internally consistent where necessary to reach the intended check. Exercise strict consumption independently of live commitment, and retain positive controls. Observe deterministic refusal and unchanged authoritative Store material on failed commit attempts.

**Acceptance Scenarios**:

1. **Given** a supported query evidence item with the correct canonical result hash, **When** the strict bundle boundary validates it, **Then** the field is recognized and verified before its semantic Facts can be used.
2. **Given** a hash for different members, a malformed hash, or a missing hash where the selected format requires one, **When** the evidence is consumed, **Then** it is deterministically rejected as invalid evidence; it is not repaired or accepted as a query mismatch.
3. **Given** unknown fields, duplicate object keys, duplicate query instances or duplicate members, **When** they reach the applicable strict bundle boundary, **Then** they are rejected without lossy map reduction or silent deduplication.
4. **Given** fabricated members with a correctly recomputed result hash and otherwise internally consistent envelope, **When** commitment checks the evidence against the exact evaluated Store position, **Then** the historical-observation check still rejects the fabrication.
5. **Given** rejected evidence, **When** a commit is attempted, **Then** no authoritative entity, head, history, reference relation or command occurrence is published.

---

### User Story 3 - Preserve document and historical boundaries (Priority: P2)

A consumer continues to use ordinary Facts, supported bundle formats and read records according to their existing distinct contracts. A correction to candidate consumption does not change what a historical document means.

**Why this priority**: Tolerating bundle fields in ordinary Facts would erase the missing type boundary and create new compatibility ambiguities.

**Independent Test**: Build an explicit supported document/profile matrix from the existing contracts. Test each supported producer–consumer pairing, ordinary Facts rejection of bundle-only fields, historical bundle/record fixtures and standalone query-read controls. Previously unsupported pairings remain unsupported.

**Acceptance Scenarios**:

1. **Given** ordinary query Facts containing a bundle-only `result_hash`, **When** they are supplied to the ordinary Facts boundary, **Then** existing strict rejection is preserved.
2. **Given** supported historical bundle evidence, **When** it is consumed under its own recorded format/profile, **Then** the correction preserves its established interpretation, canonical bytes, hash domains and identities.
3. **Given** standalone or Store-backed query reads under supported read profiles, **When** they are evaluated and replayed, **Then** their existing evidence contracts are unchanged.
4. **Given** an unsupported format/profile combination or an integrity field in a document kind that forbids it, **When** it is supplied, **Then** parsing ability does not establish new support.
5. **Given** evidence with invalid schema, Store/history binding, authorization or concurrency basis, **When** all local result hashes are valid, **Then** the existing independent refusal or operational behavior remains enforced.

---

### User Story 4 - Keep supported producers and consumers consistent (Priority: P2)

A Core maintainer can demonstrate that every valid evidence object generated by the supported bundle/candidate producers is consumable by its corresponding strict consumer under the same format/profile.

**Why this priority**: A producer–consumer law detects the class of defect rather than only one unexpected field.

**Independent Test**: Inventory the existing producers and consumers at the bundle/candidate observed-facts boundary, including supported action and migration candidates where applicable. Use actual producer output, representative and generated valid observations, strict round trips and negative mutations. A document outside this boundary is a compatibility control, not an additional remediation.

**Acceptance Scenarios**:

1. **Given** a valid evidence object generated under a supported profile, **When** its corresponding strict consumer checks it, **Then** closed-document and local-integrity validation succeeds and extraction preserves exactly the original semantic Facts.
2. **Given** a supported query-bearing v2 transition evidence document Core can produce, **When** it passes through the corresponding v2 validation path with its unchanged required semantic and authorization prerequisites, **Then** no producer–consumer document mismatch blocks it.
3. **Given** empty, single-query, multi-query and mixed query/non-query observations within a supported producer's domain, **When** they are round-tripped, **Then** required evidence, multiplicity rules, ordering and identities are retained.
4. **Given** a document changed after production, **When** it violates a closed-field or integrity obligation, **Then** the corresponding negative control rejects it; round-trip success is not used to establish authenticity of arbitrary supplied content.

### Edge Cases

- Empty query membership still has the result hash required by its bundle format.
- `result_hash` already belongs to bundle evidence introduced in Core feature 007; it is not a newly invented v2 field. Each format's existing requirements must be established explicitly.
- Multiple observed query instances can share members or capture values but retain their distinct existing instance identities.
- Query membership is a semantic set; the existing canonical member representation determines its hash. Backend enumeration order cannot redefine it.
- A plausible-looking but wrong hash, wrong hash-domain encoding, non-string value, malformed digest or duplicate key is invalid evidence.
- A forged membership list can have a self-consistent hash. It still requires exact historical rederivation and all existing authorization checks.
- No-query observations, empty evidence, omitted sections and migration candidates retain their own format-defined rules; query-item obligations must not be imposed on absent query items.
- `universe` belongs to supplied ordinary facts where allowed; no new right to archive it in candidate evidence is inferred from the shared semantic Facts concept.
- Read-record v1/v2, Store genesis/evidence profiles and bundle formats are independent version axes. No artificial Cartesian product or cross-profile equality is assumed.
- Stale history, failed CAS, failed backend operations and failed authorization remain separate from local integrity validation.
- Malformed raw documents must be rejected before duplicate keys can disappear.

## Requirements *(mandatory)*

This corrects a producer–consumer trust boundary. It introduces no query language feature or new definition of transition validity.

The mathematical distinction is:

`Facts ≠ BundleEvidence`

`BundleEvidence = (semantic observations, profile-defined integrity evidence)`

For a valid evidence object E and a supported profile v, define Produce_v(E) as the corresponding existing evidence serialization and Validate_v as its closed-document/local-integrity consumer:

`Validate_v(Produce_v(E)) = Ok`

After successful validation, semantic projection must recover E's observations exactly. This law covers the bundle/candidate boundary, not all evidence formats in Core. It does not assert that local integrity proves historical truth, authentication, authorization, resulting-state validity or a successful live commit.

### Functional Requirements

- **FR-001**: Core MUST restore consumption of valid query-bearing v2 transition evidence produced by its corresponding supported producer, including the retained `orders_history` case, while preserving all existing semantic and commit prerequisites.
- **FR-002**: Ordinary semantic Facts and candidate/bundle observed evidence MUST be distinct document kinds and checked domains at the trust boundary. A bundle envelope MUST NOT be passed directly to the ordinary Facts consumer as though it were an ordinary Facts document.
- **FR-003**: Bundle evidence MUST be consumed strictly according to its existing recorded format/profile. The selected contract MUST determine allowed fields, required fields, canonical collection rules and integrity obligations before semantic Facts are extracted.
- **FR-004**: Wherever the supported bundle format defines `result_hash`, Core MUST recognize it only in that document kind and verify it using the existing query-result hash domain and canonical member representation. Incorrect, malformed and format-required missing hashes MUST be rejected, never ignored, defaulted or silently reconstructed.
- **FR-005**: Ordinary Facts parsing MUST retain its existing closed schema and behavior. The correction MUST NOT add an optional `result_hash` field to ordinary Facts or accept other bundle-only fields there.
- **FR-006**: Unknown fields and ambiguous duplicate keys MUST remain rejected at the strict bundle boundary, including nested query evidence. Invalid duplicate instances/members MUST not be normalized into apparently valid evidence.
- **FR-007**: Semantic Facts MAY be projected from validated bundle evidence only after the applicable closed-document and integrity obligations succeed. Projection MUST preserve all semantic observations and their established identities without using integrity metadata as a semantic input.
- **FR-008**: Local integrity validation MUST NOT replace exact Store/history/schema binding, historical fact rederivation, identity freshness, authorization, full resulting-state validity, concurrency/CAS or atomic commitment. A hash is not proof of observation truth or authority.
- **FR-009**: Supported historical formats/profiles MUST retain their meanings, canonical bytes and hash domains. No new support, format field, public semantic API, Wire IR, BehaviorHash/SchemaHash rule or replay reinterpretation is authorized by this feature. Any discovered need for a versioned public-contract change MUST be assessed separately before implementing it.
- **FR-010**: Optional query indexes and backend enumeration order MUST NOT affect semantic outcomes, observed evidence or canonical identities under the same profile. Equivalent v1 and v2 workloads retain their respective contracts; cross-profile record equality is not required.
- **FR-011**: Every valid supported bundle/candidate evidence object produced within the scoped boundary MUST satisfy `Validate_v(Produce_v(E)) = Ok` under the same profile/version. The feature MUST inventory every supported producer–consumer pairing and document the valid domain of this law.
- **FR-012**: The first correction implementation MUST be preceded by an asserting failing regression for the existing normal-host `orders_history` v2 defect. Evidence MUST identify source revision, command, collected test and actual failure before implementation; the earlier print-only diagnostic is discovery evidence, not a passing regression or test-first proof.
- **FR-013**: Acceptance evidence MUST cover valid v1 and v2 query transitions, correct/incorrect/malformed/profile-required missing hashes, unknown fields, ambiguous raw documents, ordinary non-query facts, ordinary Facts rejection of bundle-only fields, supported query reads, index/order independence and actual producer–consumer round trips.
- **FR-014**: Invalid evidence MUST produce deterministic evidence/contract refusal within existing result categories. It MUST NOT be accepted, repaired, reported as a normal query disagreement, or publish any part of a transition. Actually performed backend failures retain their existing operational error contract.
- **FR-015**: Completion MUST include a targeted trust/query/evidence re-audit tracing the distinct document domains, integrity law, semantic projection, retained historical rederivation and positive/negative controls. Neither the full 016 audit nor unrelated findings are implicitly closed.
- **FR-016**: Delivery evidence MUST distinguish 019's established creation scope, the open v2 defect, this remediation's correction and the specifically covered conformance domain. Passing repository gates MUST NOT be reported as full v2 Store conformance while this finding remains open. Final implementation gates and supported-consumer validation MUST bind the exact frozen delivery revision.

### Key Entities *(include if feature involves data)*

- **Semantic Facts**: Observed state/history inputs used by evaluation, such as existence, prior identity use, incoming references, query memberships and field values; governed by their ordinary closed document contract.
- **Bundle evidence**: A supported envelope containing semantic observations and the integrity fields defined by its bundle/profile; distinct from a fact, a decision/read record and authorization.
- **Query integrity evidence**: The existing `result_hash` binding a query's canonical members within the enclosing instance/history context. It establishes local consistency, not authenticity or authority.
- **Validated bundle evidence**: Evidence whose applicable document and local integrity obligations are established; eligible for semantic projection but not independently sufficient for commitment.
- **Supported producer–consumer pairing**: An existing documented format/profile and its producer and strict consumer; excludes combinations never supported.
- **Historical observation check**: The independent comparison of supplied evidence with actual observations at the exact evaluated Store position.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: The asserting `orders_history` regression first reproduces the baseline v2 refusal and then completes all eight expected commits after correction; the supported v1 control remains successful.
- **SC-002**: 100% of the inventoried supported bundle/candidate producer–consumer pairings have a stated valid domain, actual producer-output acceptance evidence and semantic-projection equivalence evidence under the same profile.
- **SC-003**: Every covered wrong, malformed or profile-required missing query hash, unknown field, duplicate key and invalid duplicate membership/instance is rejected deterministically; zero negative cases publish authoritative Store changes.
- **SC-004**: Every covered ordinary Facts, non-query transition, supported historical bundle/record and query-read control retains its baseline result and applicable canonical bytes/identities; no formerly unsupported pairing becomes supported.
- **SC-005**: Indexed, unindexed and reordered executions agree on complete semantic outputs and identities within every covered supported profile.
- **SC-006**: Targeted re-audit establishes an explicit evidence chain for every requirement and records remaining assumptions/gaps; the finding is closed only when the relevant positive and adversarial cases and exact-revision delivery checks pass.

## Assumptions

- This phase creates the specification and its quality review only. Clarify, plan, tasks, analyze and implementation remain subsequent phases. No correction code, new executable test or format change is part of this draft.
- The implementation/discovery base is the frozen Core 019 candidate `6ad357c7e9960ce6771fd435adcec9f8018fb7d6`. It includes the integrated 017/018/022 corrections. Dependency integration or later rebasing requires fresh evidence at the resulting revision.
- 019 has completed its scoped implementation and exact-revision validation, remains separate from this remediation, and leaves F019-EXTERNAL-QUERY-001 open. Full v2 Store conformance is not established by its creation checks.
- Features 020, 021 and 022 already have published branches. Number 023 preserves those references; implementation priority is 019 closeout → 023 → targeted v2 re-audit → 020 → 021.
- Existing hash and canonicalization rules define the result hash. The profile/domain inventory is required planning evidence, not permission to invent new historical requirements.
- Correct result hashes do not imply historical fact truth or authorization. Existing Backend conformance and cryptographic assumptions still apply.
- This feature does not expand into query optimization, a relational incremental engine, a general evidence-framework redesign or the queued canonicalization/version-metadata remediations.
- Release classification and affected consumer compatibility must follow the current Core [versioning policy](../../docs/versioning.md); this draft changes no release version, tag, publication or ecosystem pin.
- Finding, exact baseline and work-order evidence are recorded in [origin and priority](origin-and-priority.md), separate from immutable 016/019 evidence.
