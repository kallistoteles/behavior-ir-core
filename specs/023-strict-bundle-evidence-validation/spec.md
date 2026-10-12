# Feature Specification: Strict Bundle Evidence Validation

**Feature Branch**: `023-strict-bundle-evidence-validation`

**Created**: 2026-10-12

**Status**: Tasks generated — ready for cross-artifact analysis; correctness remediation, no correction implementation yet.

**Input**: Create a separate Core remediation for F019-EXTERNAL-QUERY-001. Distinguish semantic Facts from bundle evidence, strictly validate profile-defined query result hashes, preserve supported historical formats and ordinary Facts, and establish producer–consumer compatibility before resuming the queued features.

## Clarifications

### Session 2026-10-12

- Q: Should 023 preserve when invalid v1 bundle evidence is rejected, or move that rejection into document decoding for v1 as well? → A: Preserve v1's existing decode-versus-commit boundary, observable errors and precedence. Apply strict bundle-evidence integrity validation at the v2 candidate boundary before semantic projection. Underlying verification may be shared only where each profile's versioned behavior is preserved. Moving v1 rejection earlier is a separate public compatibility change.

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

**Independent Test**: Alter one bundle/evidence component at a time, keeping unrelated required identities internally consistent where necessary to reach the intended check. Exercise strict v2 candidate consumption independently of live commitment, and retain positive controls. Compare v1 decoding and commit refusal with the historical baseline. Observe deterministic refusal at each profile's applicable boundary and unchanged authoritative Store material on failed commit attempts.

**Acceptance Scenarios**:

1. **Given** a supported v2 query evidence item with the correct canonical result hash, **When** the strict candidate boundary validates it, **Then** the field is recognized and verified before its semantic Facts can be projected for ordinary validation.
2. **Given** a hash for different members, a malformed hash, or a missing hash where the selected format requires one, **When** it reaches v2 candidate validation or v1's historical commit checks, **Then** it is deterministically rejected as invalid evidence at the profile's applicable phase; it is not repaired or accepted as a query mismatch.
3. **Given** unknown fields, duplicate object keys, duplicate query instances or duplicate members in v2 candidate evidence, **When** they reach its strict boundary, **Then** they are rejected without lossy map reduction or silent deduplication; v1 retains its existing decoding and commit rules.
4. **Given** fabricated members with a correctly recomputed result hash and otherwise internally consistent envelope, **When** commitment checks the evidence against the exact evaluated Store position, **Then** the historical-observation check still rejects the fabrication.
5. **Given** rejected evidence, **When** a commit is attempted, **Then** no authoritative entity, head, history, reference relation or command occurrence is published.

---

### User Story 3 - Preserve document and historical boundaries (Priority: P2)

A consumer continues to use ordinary Facts, supported bundle formats and read records according to their existing distinct contracts. A correction to candidate consumption does not change what a historical document means.

**Why this priority**: Tolerating bundle fields in ordinary Facts would erase the missing type boundary and create new compatibility ambiguities.

**Independent Test**: Build an explicit supported document/profile matrix from the existing contracts, identifying document decoding, integrity validation and historical/commit validation separately. Test each supported producer–consumer pairing, ordinary Facts rejection of bundle-only fields, historical bundle/record fixtures and standalone query-read controls. Lock v1's decode outcome and subsequent commit rejection for invalid query hashes against the baseline, including phase, error category and precedence. Previously unsupported pairings remain unsupported.

**Acceptance Scenarios**:

1. **Given** ordinary query Facts containing a bundle-only `result_hash`, **When** they are supplied to the ordinary Facts boundary, **Then** existing strict rejection is preserved.
2. **Given** supported historical bundle evidence, **When** it is consumed under its own recorded format/profile, **Then** the correction preserves its established interpretation, canonical bytes, hash domains and identities.
3. **Given** standalone or Store-backed query reads under supported read profiles, **When** they are evaluated and replayed, **Then** their existing evidence contracts are unchanged.
4. **Given** an unsupported format/profile combination or an integrity field in a document kind that forbids it, **When** it is supplied, **Then** parsing ability does not establish new support.
5. **Given** evidence with invalid schema, Store/history binding, authorization or concurrency basis, **When** all local result hashes are valid, **Then** the existing independent refusal or operational behavior remains enforced.
6. **Given** a structurally decodable v1 bundle with an invalid query result hash, **When** it is decoded and then submitted for commitment with its other prerequisites satisfied, **Then** decoding preserves the baseline outcome and commit rejects it at the historical boundary without publishing state.
7. **Given** an invalid v2 query result hash, **When** the candidate boundary consumes it, **Then** integrity validation rejects it before semantic Facts projection.
8. **Given** v1 evidence with multiple defects or an applicable operational failure, **When** its historical pipeline selects an outcome, **Then** 023 preserves the baseline phase, category and precedence rather than giving a newly introduced early hash check priority.

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
- A historically decodable v1 document is not necessarily integrity-valid or committable. Preserve its decode result while retaining the historical commit rejection; different profiles need not reject at the same phase.

## Requirements *(mandatory)*

This corrects a producer–consumer trust boundary. It introduces no query language feature or new definition of transition validity.

The mathematical distinction is:

`Facts ≠ BundleEvidence`

`BundleEvidence = (semantic observations, profile-defined integrity evidence)`

For a valid evidence object E and a supported profile v, define Produce_v(E) as the corresponding existing evidence serialization and Validate_v as its closed-document/local-integrity consumer at the phase that the profile defines. Validate_v does not require moving the v1 decoder's historical checks:

`Validate_v(Produce_v(E)) = Ok`

After successful validation, semantic projection must recover E's observations exactly. This law covers the bundle/candidate boundary, not all evidence formats in Core. It does not assert that local integrity proves historical truth, authentication, authorization, resulting-state validity or a successful live commit.

For v1, distinguish document decoding D1 from historical commit validation C1. Its observable pipeline P1 distinguishes decode refusal, commit refusal and commitment, while retaining the existing operational error contract. Require $P1_{after}(r,h) = P1_{before}(r,h)$ for the same historical contract inputs, including phase, error category and precedence. If D1 and C1 preserve their historical functions, pipeline equality follows by composition; implementation evidence must establish those premises rather than infer them from this equation alone. Backend call traces and hypothetical failures of omitted operations are not added to semantic equivalence.

A structurally decodable v1 bundle with an invalid query hash is the compatibility counterexample to moving integrity checks into decoding: historically it reaches commit refusal; the changed decoder would instead produce decode refusal. Those outcomes are observably different. Preserving the boundary still requires $Committed_{v1}(B,h) \Rightarrow Integrity_{v1}(B)$. For v2, successful candidate integrity consumption implies every required query hash agrees with its canonical members before projection. Neither implication establishes the truth of those members at the historical Store position or authorization to commit.

### Functional Requirements

- **FR-001**: Core MUST restore consumption of valid query-bearing v2 transition evidence produced by its corresponding supported producer, including the retained `orders_history` case, while preserving all existing semantic and commit prerequisites.
- **FR-002**: Ordinary semantic Facts and candidate/bundle observed evidence MUST be distinct document kinds and checked domains at the v2 candidate trust boundary. A bundle envelope MUST NOT be passed directly to the ordinary Facts consumer as though it were an ordinary Facts document. This does not redefine v1's decoding boundary.
- **FR-003**: Bundle evidence MUST be consumed according to its existing recorded format/profile, with document decoding, evidence integrity and historical/commit validation distinguished. V2 candidate consumption MUST establish its closed schema, required fields, canonical collection rules and integrity before semantic Facts projection. V1 MUST preserve its historical decode-versus-commit placement, observable error categories and precedence; sharing verification code MUST NOT move its checks earlier.
- **FR-004**: Wherever the supported bundle format defines `result_hash`, Core MUST recognize it only in that document kind and verify its agreement with the existing query-result hash domain and canonical member representation at the profile's applicable boundary. V2 MUST reject incorrect, malformed and required missing hashes at candidate validation. V1 MUST retain its historical decoding outcome and commit-integrity enforcement; invalid evidence MUST never authorize a commit or be repaired, ignored, defaulted or silently reconstructed.
- **FR-005**: Ordinary Facts parsing MUST retain its existing closed schema and behavior. The correction MUST NOT add an optional `result_hash` field to ordinary Facts or accept other bundle-only fields there.
- **FR-006**: Unknown fields and ambiguous duplicate keys MUST be rejected at the strict v2 candidate bundle boundary, including nested query evidence. Invalid duplicate instances/members MUST not be normalized into apparently valid evidence. V1's existing decoding and commit rules MUST remain unchanged.
- **FR-007**: At the v2 candidate boundary, semantic Facts MAY be projected from bundle evidence only after its closed-document and integrity obligations succeed. Projection MUST preserve all semantic observations and their established identities without using integrity metadata as a semantic input. It MUST NOT retroactively impose a new integrity phase on v1 decoding.
- **FR-008**: Local integrity validation MUST NOT replace exact Store/history/schema binding, historical fact rederivation, identity freshness, authorization, full resulting-state validity, concurrency/CAS or atomic commitment. A hash is not proof of observation truth or authority.
- **FR-009**: Supported historical formats/profiles MUST retain their meanings, canonical bytes, hash domains and versioned validation boundaries. In particular, the complete observable v1 pipeline MUST match the baseline, including decodable-but-uncommittable evidence and error precedence. No new support, format field, public semantic API, Wire IR, BehaviorHash/SchemaHash rule or replay reinterpretation is authorized by this feature. Moving v1 rejection into decoding is outside 023 and requires a separate public compatibility/versioning assessment.
- **FR-010**: Optional query indexes and backend enumeration order MUST NOT affect semantic outcomes, observed evidence or canonical identities under the same profile. Equivalent v1 and v2 workloads retain their respective contracts; cross-profile record equality is not required.
- **FR-011**: Every valid supported bundle/candidate evidence object produced within the scoped boundary MUST satisfy `Validate_v(Produce_v(E)) = Ok` under the same profile/version. The feature MUST inventory every supported producer–consumer pairing and document the valid domain of this law.
- **FR-012**: The first correction implementation MUST be preceded by an asserting failing regression for the existing normal-host `orders_history` v2 defect. Evidence MUST identify source revision, command, collected test and actual failure before implementation; the earlier print-only diagnostic is discovery evidence, not a passing regression or test-first proof.
- **FR-013**: Acceptance evidence MUST cover valid v1 and v2 query transitions, correct/incorrect/malformed/profile-required missing hashes, unknown fields, ambiguous raw documents, ordinary non-query facts, ordinary Facts rejection of bundle-only fields, supported query reads, index/order independence and actual producer–consumer round trips. It MUST explicitly compare invalid v1 hash decoding with the baseline and retain subsequent commit rejection, reject invalid v2 hashes before projection, and preserve v1 precedence in covered multiple-defect/operational-failure cases.
- **FR-014**: Invalid evidence MUST produce deterministic evidence/contract refusal at its profile's applicable validation phase within existing result categories. It MUST NOT authorize or publish a transition, be repaired or be reported as a normal query disagreement. V1 decode success alone MUST NOT be treated as integrity, historical truth or commit authority. Actually performed backend failures retain their existing operational error contract.
- **FR-015**: Completion MUST include a targeted trust/query/evidence re-audit tracing the distinct document domains, integrity law, semantic projection, retained historical rederivation and positive/negative controls. Neither the full 016 audit nor unrelated findings are implicitly closed.
- **FR-016**: Delivery evidence MUST distinguish 019's established creation scope, the open v2 defect, this remediation's correction and the specifically covered conformance domain. Passing repository gates MUST NOT be reported as full v2 Store conformance while this finding remains open. Final implementation gates and supported-consumer validation MUST bind the exact frozen delivery revision.

### Key Entities *(include if feature involves data)*

- **Semantic Facts**: Observed state/history inputs used by evaluation, such as existence, prior identity use, incoming references, query memberships and field values; governed by their ordinary closed document contract.
- **Bundle evidence**: A supported envelope containing semantic observations and the integrity fields defined by its bundle/profile; distinct from a fact, a decision/read record and authorization.
- **Query integrity evidence**: The existing `result_hash` binding a query's canonical members within the enclosing instance/history context. It establishes local consistency, not authenticity or authority.
- **Validated bundle evidence**: Evidence whose applicable document and local integrity obligations are established; eligible for semantic projection but not independently sufficient for commitment. A merely decoded v1 bundle does not claim this status.
- **Supported producer–consumer pairing**: An existing documented format/profile and its producer and strict consumer; excludes combinations never supported.
- **Historical observation check**: The independent comparison of supplied evidence with actual observations at the exact evaluated Store position.
- **Versioned validation boundary**: A profile's placement of decoding, integrity and historical/commit checks, including observable refusal phase, category and precedence; code reuse does not make those placements interchangeable.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: The asserting `orders_history` regression first reproduces the baseline v2 refusal and then completes all eight expected commits after correction; the supported v1 control remains successful.
- **SC-002**: 100% of the inventoried supported bundle/candidate producer–consumer pairings have a stated valid domain, actual producer-output acceptance evidence and semantic-projection equivalence evidence under the same profile.
- **SC-003**: Every covered wrong, malformed or profile-required missing query hash, unknown field, duplicate key and invalid duplicate membership/instance is rejected deterministically at its profile's required phase; zero negative cases publish authoritative Store changes.
- **SC-004**: Every covered ordinary Facts, non-query transition, supported historical bundle/record and query-read control retains its baseline result and applicable canonical bytes/identities; no formerly unsupported pairing becomes supported. All covered invalid v1 hash cases retain the baseline decode outcome followed by historical commit rejection. Covered multiple-defect and operational-failure cases preserve the baseline refusal phase, category and precedence.
- **SC-005**: Indexed, unindexed and reordered executions agree on complete semantic outputs and identities within every covered supported profile.
- **SC-006**: Targeted re-audit establishes an explicit evidence chain for every requirement and records remaining assumptions/gaps; the finding is closed only when the relevant positive and adversarial cases and exact-revision delivery checks pass.

## Assumptions

- Specification, clarification and Phase 0/1 design establish requirements and an implementation plan only. Tasks, analyze and implementation remain subsequent phases. No correction code, new executable test or format change is implemented by these artifacts.
- The implementation base and source-level finding are bound to frozen Core 019 candidate `6ad357c7e9960ce6771fd435adcec9f8018fb7d6`, including integrated 017/018/022 corrections. The retained runtime diagnostic ran on dirty in-flight 019 source, recorded HEAD `99fec008c9fa2be13d759f9187399215c20cd053`; it is not a frozen asserting RED. Dependency integration or later rebasing requires fresh evidence at the resulting revision.
- 019 has completed its scoped implementation and exact-revision validation, remains separate from this remediation, and leaves F019-EXTERNAL-QUERY-001 open. Full v2 Store conformance is not established by its creation checks.
- Features 020, 021 and 022 already have published branches. Number 023 preserves those references; implementation priority is 019 closeout → 023 → targeted v2 re-audit → 020 → 021.
- Existing hash and canonicalization rules define the result hash. The profile/domain inventory is required planning evidence, not permission to invent new historical requirements.
- Correct result hashes do not imply historical fact truth or authorization. Existing Backend conformance and cryptographic assumptions still apply.
- V1's existing historical observation comparison enforces query-result integrity at commitment. The accepted compatibility argument is conditional on preserving its actual decoder/commit functions, including relevant operational outcomes; it is a proof obligation for implementation and targeted re-audit, not a completed proof from this draft or an instruction to add a new earlier v1 check.
- This feature does not expand into query optimization, a relational incremental engine, a general evidence-framework redesign or the queued canonicalization/version-metadata remediations.
- Release classification and affected consumer compatibility must follow the current Core [versioning policy](../../docs/versioning.md); this draft changes no release version, tag, publication or ecosystem pin.
- The plan includes separate bundle-observation definitions at the two affected current v2 wrapper schema refs. It preserves ordinary/witness and legacy schema definitions, existing emitted fields, document tags and semantic hash rules; schema asset bytes will change explicitly. The conservative minor-class delivery assessment and remaining ordinary/witness schema debt are documented in [compatibility-assessment.md](compatibility-assessment.md) and [follow-up-findings.md](follow-up-findings.md).
- Finding, exact baseline and work-order evidence are recorded in [origin and priority](origin-and-priority.md), separate from immutable 016/019 evidence.
