# Feature Specification: Query Evidence Domain Consistency

**Feature Branch**: `025-query-evidence-domains`

**Created**: 2026-10-14

**Status**: Draft — clarified; ready for planning. No runtime reproduction, implementation or delivery is claimed.

**Component**: Behavior IR Core

**Category**: Semantic integrity / evidence validation

**Source issue**: [Core #24 — v2 candidate check rejects Core-produced query facts](https://github.com/kallistoteles/behavior-ir-core/issues/24)

**Related issue**: [Core #21 — Facts/witness schema mismatch](https://github.com/kallistoteles/behavior-ir-core/issues/21), closed by the separate ordinary-schema correction in feature 024.

**Issue-reported affected revisions**: Core 0.12.0 (`b525da4`) and `main` at `634023a`. These are the report's claims, not runtime results established by this specification.

**Specification base**: `634023a6d504bac927192c964d945c7025b467c4`, current fetched `main` when this specification was created. Feature 020's separate PR is not an implicit dependency.

**Input**: Define mathematical observation and evidence domains, producer–consumer closure, independent structural/semantic/integrity obligations and preserved historical validation phases. Treat issue #24 as a concrete contract counterexample to investigate, rather than making Ordinary Facts accept a bundle-specific field.

## Clarifications

### Session 2026-10-14

- Q: If issue #24's reproduction already passes on current `main`, should feature 025 still consolidate the evidence contract and regression coverage? → A: Choose A. Continue 025 as a contract-consolidation and regression feature, not necessarily a production-code fix. First verify the public reproduction against the exact current Core revision. Reuse 023's implementation, validation, contracts and tests; formalize the Ordinary Facts and Bundle Evidence domains, closure laws and integrity obligations. Add only missing regression/conformance coverage. Do not duplicate existing tests or modify production code without a demonstrated contract violation. Documentation-and-tests-only delivery is valid; if all required contracts and tests already exist, a documented evidence mapping is sufficient. Preserve canonical identities, historical profiles and validation-phase boundaries.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Commit valid query-reading actions (Priority: P1)

A consumer of Core's supported public engine can evaluate and commit a valid action that observes a query under CommandIntents with v2 Store genesis. Core can consume its own complete evidence while retaining every existing reason to deny or refuse an invalid transition.

**Why this priority**: Issue #24 reports that a representation mismatch blocks query-reading actions before commitment, including Approval decisions. Establishing that the exact current Core revision handles the public reproduction is the first objective. If 023 already satisfies the contract, 025 reuses it and records the evidence rather than requiring another production correction. The outcome must work independently of any Model.

**Independent Test**: First verify the issue's public reproduction against the exact current Core revision through the supported public engine using `User { name }`, `Doc { title }`, `Mark { doc: Id<Doc>, by: Id<User> }` and `probe(mid: Input Id<Mark>, subject: State Doc, actor: Context Id<User>)`. Seed one User and one Doc, create one Mark with the supplied identity/references, and check all five reference rows below. Retain the emitted authoritative evidence, observed query memberships, resulting Mark and committed history. Cover both direct invocation and frozen evaluation followed by the supported commit path where applicable. Reuse existing 023 tests and validation wherever they establish the required obligation; add only missing coverage. Distinguish a failing regression from an already-correct preservation control at the exact source revision. An already-green case does not require a production edit or an invented RED.

**Acceptance Scenarios**:

1. **Given** an otherwise valid invocation and the appropriate genesis/profile, **When** each reference case is evaluated and committed with its normal prerequisites, **Then** all five commit and the resulting state/evidence match the action's defined meaning.
2. **Given** a query with an observed empty result, **When** the candidate is produced and checked, **Then** that observation and its required integrity evidence survive; absence of members is not interpreted as absence of the observation.
3. **Given** a valid nonempty or captured query within the supported query language, **When** its producer and consumer exchange candidate evidence, **Then** there is no representation mismatch, and the normal semantic and commit checks still apply.
4. **Given** a denied action, stale evaluated position or missing required authorization, **When** its local query hashes are correct, **Then** those independent conditions still prevent commitment according to the existing contract.

| Case | Profile / genesis | Precondition | Expected result |
| --- | --- | --- | --- |
| R1 | Legacy / v1 | `true` | Successful commit |
| R2 | Legacy / v1 | `¬any(select(Mark), d → true)` | Successful commit |
| R3 | CommandIntents / v2, `require: none` | `true` | Successful commit |
| R4 | CommandIntents / v2, `require: none` | `¬any(select(Mark), d → true)` | Successful commit |
| R5 | CommandIntents / v2, `require: none` | `count(select(Mark)) == 0` | Successful commit |

The issue reports R4/R5 as failing cases. A successful result means the expected state transition and authoritative evidence are established, not merely that no exception occurred.

---

### User Story 2 - Reject false or damaged evidence (Priority: P1)

A host can distinguish evidence that can be read from evidence whose integrity and observations are valid. A correctly shaped hash never grants truth, authority or permission to commit.

**Why this priority**: Restoring producer–consumer compatibility must not weaken the semantic kernel or turn attacker-supplied metadata into authority.

**Independent Test**: Mutate a genuine candidate one obligation at a time, preserving or recomputing unrelated outer identities when needed to reach the intended check. Exercise all twelve negative categories, a self-consistent hash over false observations, and positive controls. Record structural, local integrity, semantic/history and commit outcomes separately, including refusal phase/category/precedence where the existing profile defines them. A failed commit publishes no authoritative state/history or command occurrence.

**Acceptance Scenarios**:

1. **Given** missing required, incorrect or malformed query-result integrity evidence, **When** it reaches the profile's applicable boundary, **Then** it is rejected without ignoring, defaulting or silently repairing the evidence.
2. **Given** unsupported fields, ambiguous duplicates or a malformed query identity, **When** the strict evidence boundary checks them, **Then** the document is rejected before lossy normalization can make it appear valid.
3. **Given** a valid-looking result hash over fabricated members, **When** the applicable semantic/history checks compare the observations with their admitted query and evaluated position, **Then** the fabrication is rejected despite local hash consistency.
4. **Given** an incorrect definition binding, capture, member set or history relationship, **When** the applicable checked consumer processes the candidate, **Then** the independent semantic obligation remains enforced at its established phase.
5. **Given** refused evidence and a commit attempt, **When** refusal is returned, **Then** entity values, Store head/history, reference relations and command occurrences retain the existing no-publication guarantee.

---

### User Story 3 - Exchange evidence within its own domain (Priority: P2)

A producer and its corresponding consumer agree on what an ordinary observation or a candidate evidence document represents. Users of ordinary observations retain a strict contract even when candidate evidence carries additional integrity metadata.

**Why this priority**: A general domain law prevents recurrence across evidence formats; accepting arbitrary extensions in the ordinary decoder would hide the contract defect.

**Independent Test**: Inventory supported ordinary and candidate producer/consumer pairings by document kind, recorded format and semantic profile. Round-trip genuine output, representative valid values and bounded generated cases. Cover all six ordinary fact families, empty/omitted observations and supported query/mixed evidence. Preserve the full typed evidence, including integrity metadata, and compare its ordinary projection separately. Label constructed codec controls honestly; they are not historical producer output.

**Acceptance Scenarios**:

1. **Given** admissible Ordinary Facts from any of the six families, **When** they are canonically encoded and decoded by the corresponding ordinary consumer, **Then** they represent exactly the same observations, including omitted versus supplied-empty observations.
2. **Given** valid supported Bundle Evidence, **When** its corresponding profile-specific consumer reads its producer's output, **Then** it recovers the same authoritative evidence and all required integrity information.
3. **Given** validated Bundle Evidence with an ordinary observation projection, **When** that projection is extracted, **Then** all ordinary observations and their existing identities are preserved; projection is not counted as complete evidence validation.
4. **Given** bundle-only `result_hash` metadata supplied as an ordinary query observation, **When** the ordinary Facts decoder checks it, **Then** existing closed-contract refusal is preserved.
5. **Given** an unsupported document/profile pairing, **When** a parser happens to recognize some fields, **Then** recognition does not establish support or relax the selected profile's obligations.

---

### User Story 4 - Preserve history and enable consumer adoption (Priority: P2)

A consumer can continue to decode, replay and validate supported historical records under their recorded contracts. A future release carrying the contract-compliant Core implementation lets Approval replace its temporary known-bug characterization with a positive integration test without a Model-specific workaround; that implementation may already be supplied by 023.

**Why this priority**: Correcting an evidence boundary must preserve existing meaning, canonical identity and the phase at which historical contracts refuse invalid inputs.

**Independent Test**: Compare current and supported historical evidence/records under their own profiles, including Legacy/v1's decode-then-commit behavior and CommandIntents/v2's strict candidate behavior. Cover ordinary witnesses, bundle replay and governance integration. Document release/adoption consequences separately from Core implementation; use the public reproduction to demonstrate that Approval needs no evidence stripping or profile downgrade.

**Acceptance Scenarios**:

1. **Given** supported historical evidence, **When** it is decoded, replayed or governed under its recorded format/profile, **Then** its semantic result, applicable canonical bytes/hashes/signatures and historical identity remain stable.
2. **Given** a historically decodable Legacy/v1 bundle with an invalid result hash, **When** decoding and then commitment are attempted with other prerequisites satisfied, **Then** the baseline decode outcome and later commit refusal retain their phases, categories and precedence.
3. **Given** invalid v2 candidate integrity evidence, **When** its checked candidate boundary processes it, **Then** integrity refusal occurs before semantic projection as required by the established v2 contract.
4. **Given** supported replay/governance paths or an otherwise valid ordinary witness, **When** this correction is applied, **Then** their existing observation, subject, authenticity and authorization obligations remain enforced.
5. **Given** an actually published corrected Core revision is later adopted by Approval, **When** its temporary known-bug test is replaced, **Then** the positive integration test can use the supported query-reading action with unchanged evidence and profile. Publication and the ecosystem edit require their own delivery/adoption work.

### Edge Cases

- Omitted observations mean unknown. An omitted query differs from an observed empty query result; an omitted universe differs from a supplied complete empty universe.
- Empty query membership still carries a result hash wherever the selected evidence contract requires one; no-query evidence does not acquire a synthetic query/hash obligation.
- Null/empty evidence sections follow each existing document kind's own rules. Ordinary Facts validity does not grant permission to archive every ordinary family in every candidate format.
- Multiple query instances can share members/captures while remaining distinct instances; membership ordering uses the existing canonical set representation.
- Missing/non-string/noncanonical hashes, hashes from a different domain and hashes over different members remain distinct invalid inputs.
- A syntactically correct, recomputed hash does not establish that members, definitions or captures match the actual admitted query/history.
- Duplicate raw object keys, query instances, members or captures must retain the applicable strict refusals; no silent map reduction/deduplication may bypass them.
- Queries in preconditions and resulting-state checks retain existing snapshot, capture and effect rules; this feature introduces no new evaluation state.
- Profile, Store genesis, candidate/bundle format, decision record and read-record versions are independent axes. Only documented supported pairings are covered; no artificial Cartesian product or cross-profile hash equality is required.
- Missing permissions, stale candidates, failed concurrency checks and backend failures retain their independent existing outcomes.
- Malformed evidence with multiple defects retains profile-defined error precedence; a newly shared parser must not move a historical refusal earlier.
- The reported failure may already be corrected on the selected source. That is a preservation control, not an observed RED or justification for speculative production edits. Feature 025 still consolidates the required contract and coverage; complete existing coverage permits an evidence-mapping-only delivery.

## Requirements *(mandatory)*

### Purpose and scope

Consolidate the contract between producers and consumers of Ordinary Facts and candidate Bundle Evidence while preserving semantic integrity. Issue #24 is the concrete motivating report. Feature 025 has three distinct objectives: verify correct current behavior through the public reproduction; make the mathematical domains, closure laws and independent validity/integrity obligations explicit; and establish regression coverage against recurrence. This is a contract-consolidation and regression feature, not necessarily a production-code fix. Reuse 023's implementation, validation, contracts and tests. Add only missing documentation or regression/conformance coverage. If existing artifacts establish every required contract and test, a documented evidence mapping is sufficient for scoped completion. It introduces no new query semantics, Approval-specific change or whole-Core soundness claim.

### Mathematical domains and laws

Let $S$ denote an immutable semantic state at a specified history position, $Q$ an admitted query definition with its semantic bindings, and $R = EvalQuery(Q,S)$ its exact deterministic result. An ordinary query observation is abstractly $f_Q=(q,b,R)$, where $q$ identifies the definition/instance and $b$ contains the applicable bindings/captures. Existing distinctions between entity bindings, captures and member evidence remain authoritative. Historical usage observations also depend on their specified history, not only current existence.

The ordinary domain is the product of finite partial observation maps:

$$
\mathcal F = \mathcal F_{existence} \times \mathcal F_{identities}
\times \mathcal F_{references} \times \mathcal F_{queries}
\times \mathcal F_{fields} \times \mathcal F_{universe}.
$$

The factors represent existence, ever-used identities, incoming reference edges, bound query observations, field values and supplied complete per-type universes. Existing type, uniqueness and consistency constraints restrict this product. Missing observations remain unknown: $\neg Observed(Exists(e)) \not\Rightarrow \neg Exists(e)$.

Let $p$ identify an actually supported semantic profile and its recorded evidence format. Its Bundle Evidence domain $\mathcal E_p$ may carry integrity metadata beyond ordinary observations. Conceptually, query evidence is $e_Q=(f_Q,h_Q)$ with

$$
h_Q = H_p(CanonicalResult_p(Q,R)).
$$

$H_p$ and $CanonicalResult_p$ denote the **existing** hash-domain construction and exact canonical payload for that format. They do not authorize adding a query identifier, full result value or any other new input to an existing hash. Integrity metadata exists in its enclosing query/history context. In particular, $\mathcal F \ne \mathcal E_p$; a document containing observations is not automatically an ordinary Facts document.

Where defined, the semantic projection $\pi_F:\mathcal E_p\to\mathcal F$ preserves every ordinary observation:

$$
Observations(\pi_F(e))=Observations(e).
$$

This is a mathematical abstraction, not a requirement for a new public projection API. Checking the projection alone does not validate the original evidence:

$$
ValidFacts(\pi_F(e)) \not\Rightarrow ValidBundle(e).
$$

For each admissible ordinary value $f$ and supported evidence value $e$, the corresponding canonical producer and checked consumer must satisfy:

$$
Decode_F(Encode_F(f))=f,\qquad
Decode_{E,p}(Encode_{E,p}(e))=e.
$$

Equality means equality of the authoritative typed value, including the evidence's integrity metadata; incidental formatting need not survive. Each law is quantified over its stated admissible domain and the consumer's existing phase-local obligations. It does not require a v1 document decoder to acquire a deferred commit-time integrity check. A historically decodable but integrity-invalid v1 document can remain decodable while failing the separate integrity obligation.

Closure concerns representation. For an admitted Behavior $B$ and relevant state/history $S$, full evidence validity requires independent predicates:

$$
ValidEvidence_p(e,S,B)=StructurallyValid_p(e)
\land SemanticallyValid_p(e,S,B)\land IntegrityValid_p(e).
$$

$HashValid(e)\not\Rightarrow ObservationValid(e,S)$. Truth of observations, valid query bindings and historical consistency cannot be inferred from hash syntax or local hash agreement. Where v2 requires integrity validation before projection, that ordering remains mandatory.

For a Store-produced candidate, valid supported evidence must reach the corresponding checked consumer without a representation mismatch. That necessary property does not establish permission to commit. Candidate validity additionally retains every existing decision, subject, governance, authorization, resulting-state and history obligation; actual commitment also retains the existing operational/concurrency prerequisites. No successful-commit theorem follows solely from the round-trip equation.

### Functional Requirements

- **FR-001 — Domain separation**: Core MUST distinguish Ordinary Facts and profile-specific Bundle Evidence at the applicable producer/consumer boundaries, with an explicit supported-domain and document/profile inventory.
- **FR-002 — Producer–consumer closure**: Every supported producer within the scoped ordinary/candidate boundaries MUST produce structurally consumable output for its corresponding checked consumer. Ordinary and bundle round trips MUST preserve their authoritative typed values; bundle projection MUST additionally preserve all ordinary observations. The inventory MUST cover all six ordinary families and every supported candidate producer route, including action and migration routes where applicable, without assuming identical allowed fields.
- **FR-003 — Strict Ordinary Facts**: The ordinary `Facts::from_json` contract MUST retain its closed structure, partial-observation meaning and existing refusals. Bundle-only integrity fields MUST NOT be added as ordinary optional fields to resolve #24.
- **FR-004 — Strict Bundle Evidence**: The corresponding checked evidence consumer MUST recognize the supported complete bundle representation and reject unsupported/malformed fields and ambiguous duplicates under its own recorded contract. No permissive fallback or lossy normalization may hide invalid evidence.
- **FR-005 — Query-result integrity**: Existing required result hashes MUST be checked against the authoritative profile-defined canonical payload/hash construction at the existing applicable phase. Missing required, malformed and incorrect hashes MUST be refused, never ignored, defaulted, treated as authoritative merely by syntax or stripped without discharging their integrity obligation. No hash domain may change silently.
- **FR-006 — Semantic observation integrity**: Existing checks on query instance/definition identity, bound entity/type, captures, member evidence and relevant state/history MUST remain enforced. A locally correct hash over false observations MUST not enable commitment.
- **FR-007 — Complete fact-family compatibility**: Existence, historical identities, references, queries, fields and universe observations MUST retain their ordinary checked representation and meaning, including omitted versus empty values. Candidate formats MUST retain their own allowed-family restrictions.
- **FR-008 — Profile preservation**: Legacy/v1, CommandIntents/v2 and their supported historical document/record pairings MUST retain their recorded semantics. Previously unsupported combinations MUST not acquire support implicitly.
- **FR-009 — Canonical identity preservation**: Existing ordinary/candidate canonical bytes, semantic hashes, signatures and historical identities MUST remain stable under the same supported profile. A demonstrably necessary change MUST receive an explicit compatibility/versioning decision before implementation; this specification does not authorize silently changing an established hash or profile.
- **FR-010 — Validation-phase preservation**: Normative admission, evaluation, candidate-validation, replay and commit boundaries MUST retain their refusal phase, error category and precedence. In particular, Legacy/v1's existing decode-versus-commit distinction and v2's integrity-before-projection requirement MUST be preserved. Failed attempts retain existing no-publication guarantees.
- **FR-011 — Public API verification**: First verify the supported public-engine reproduction from #24 against the exact current Core revision. It MUST satisfy R1–R5 with the expected resulting state, authoritative evidence and committed history. Valid query-reading actions MUST work without an Approval dependency, through the supported direct and frozen candidate routes where applicable. If 023 already establishes these outcomes, retain that implementation and reuse its tests/validation with accurate source-revision attribution. Any proposed production correction requires a demonstrated remaining contract violation on the selected baseline and its actual test-first failure.
- **FR-012 — Negative evidence controls**: Every category N01–N12 below MUST retain rejection at its applicable structural, semantic, integrity or commit boundary, with positive controls and explicit phase/error assertions wherever normative.
- **FR-013 — No ecosystem workaround**: The contract-compliant Core implementation MUST be independently usable by Approval and other Models without evidence stripping, forced legacy profiles or validation bypasses. Consumer documentation MUST identify how the temporary known-bug test can become a positive integration test against an actually corrected release, including a release carrying 023's existing correction; ecosystem adoption is separate work.
- **FR-014 — Bounded consolidation**: This feature MUST NOT introduce new query operators, grouping/transaction primitives, Model rules or business logic. Reuse 023's implementation and existing contract/validation/test artifacts; new regression and conformance tests MUST address demonstrated coverage gaps rather than duplicate existing tests. Production code MUST NOT change without a demonstrated contract violation. Documentation-and-tests-only delivery is valid, and a documented evidence mapping is sufficient where existing artifacts already establish all required contracts and coverage. Every delivery preserves existing semantic and integrity obligations.

### Required negative evidence categories

Each category is independently exercised with a genuine or faithfully constructed positive counterpart. Keep unrelated envelope identities consistent when necessary so refusal demonstrates the intended obligation rather than an earlier incidental mismatch. No universal refusal phase is imposed across different historical profiles.

| ID | Invalid condition | Required distinction |
| --- | --- | --- |
| N01 | Required query result hash missing | Required-field/local integrity refusal at the profile's existing boundary |
| N02 | Well-formed but incorrect result hash | Local integrity failure, not mere syntax or query nonmembership |
| N03 | Malformed hash representation/type/domain encoding | Closed-format or applicable integrity refusal |
| N04 | Unsupported query evidence field | Closed structural refusal |
| N05 | Invalid query instance identity | Applicable identity/semantic refusal |
| N06 | Incorrect query definition binding | Definition/binding validation remains enforced |
| N07 | Inconsistent captures | Capture identity/value and state relationship remain enforced |
| N08 | Inconsistent query members | Query membership validation remains enforced |
| N09 | Evidence inconsistent with the relevant state/history | Historical observation refusal despite internally consistent metadata |
| N10 | Bundle-only metadata supplied to Ordinary Facts | Strict ordinary-domain refusal |
| N11 | Evidence under an incompatible profile/format | Profile-bound refusal; no implicit reinterpretation |
| N12 | Structurally well-formed tampered evidence, including false members with a recomputed matching hash | Semantic/history or applicable integrity refusal; structural acceptance is insufficient |

### Compatibility and planning obligations

Planning MUST compare the selected correction against the exact implementation baseline for candidate serialization, candidate hashes/signatures, historical v2 interpretation, ordinary serialization, governance envelopes, replay, public schemas and error classification/phase. Previously valid supported historical evidence must remain valid; previously invalid evidence must not become valid through permissive parsing.

The plan MUST evaluate both user-proposed alternatives: **A**, reuse or define dedicated strict Bundle Evidence decoding while retaining ordinary decoding; **B**, keep ordinary query observations unchanged and represent integrity metadata as a separate typed evidence component whose complete relationship is checked. These are candidates to assess, not a prescribed implementation or demand for a new public abstraction. Selection is governed by preserved semantic meaning, historical compatibility, integrity obligations, canonical identity and validation phases, rather than line count. If 023's existing machinery already satisfies those obligations, reuse it and record why; evaluating alternatives does not authorize replacing a compliant implementation. Map every requirement to existing contracts, code and validation/tests before identifying genuinely missing work. Reused evidence retains its exact source attribution; evidence from an older revision does not silently become validation of a different delivery revision.

Before implementation, planning MUST establish the following obligations and classify each conclusion as a construction/code invariant, executed evidence or explicit assumption. Bounded tests are not universal proofs.

| Obligation | Required planning result |
| --- | --- |
| PO-001 — Domain correctness | Explicit, noncontradictory ordinary/bundle domains and supported document/profile pairings, including optionality and family restrictions |
| PO-002 — Closure | Producer/consumer inventory and a justified closure argument with actual-output and round-trip evidence planned for every supported route |
| PO-003 — Strictness | Unsupported fields, malformed structures and ambiguity remain rejected at applicable boundaries |
| PO-004 — Integrity preservation | Every required result-hash obligation retains its authoritative payload/domain, consumer and enforcement phase |
| PO-005 — Semantic preservation | Query meanings, bindings, captures, observations and transition outcomes remain unchanged |
| PO-006 — Compatibility | Supported historical profiles and canonical bytes/hashes/signatures/identities retain their meaning; any necessary change has an explicit decision |
| PO-007 — Phase preservation | Existing refusal phases, categories and precedence are mapped and retained, including v1's deferred commit checks |
| PO-008 — Ecosystem independence | The public reproduction and intended correction need no Approval-specific implementation or workaround |

If any obligation cannot be established, planning MUST stop before implementation and identify the unresolved contract. An unverified issue report is not a substitute for a current baseline. Preserve frozen 023/024 artifacts; newly discovered contradictions receive separately attributable evidence rather than rewritten historical claims.

### Key Entities *(include if feature involves data)*

- **Semantic state/history position**: The immutable evaluated snapshot and the historical basis needed to validate observations.
- **Admitted query**: Its definition, instance identity, entity/type bindings, captures and exact deterministic result under existing query semantics.
- **Ordinary Facts**: The six finite partial observation families, with omission meaning unknown and no bundle-only integrity metadata.
- **Bundle Evidence**: A supported profile/format-specific candidate document carrying ordinary observations and its required integrity information, with its own allowed families and closed structure.
- **Query-result integrity binding**: The existing canonical result payload and domain-separated hash, interpreted with its enclosing query/history context.
- **Semantic projection**: Extraction preserving ordinary observations after all checks required before projection; it grants no new validation or commit authority.
- **Candidate**: A proposed action or migration transition subject to existing structural, semantic, integrity, history and governance obligations.
- **Supported pairing**: An actual producer, evidence/document kind, recorded format/profile and corresponding checked consumer; support is established explicitly rather than inferred from parse success.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: All five reference cases R1–R5 commit through the supported public-engine path with the expected Mark state, references, observed query evidence and committed history. Direct/frozen route coverage is explicit; no Model workaround is required.
- **SC-002**: All six ordinary fact families and 100% of inventoried supported candidate producer/consumer pairings have explicit admissible domains and applicable authoritative round-trip/projection evidence. No covered valid producer output fails because of a representation disagreement.
- **SC-003**: All twelve negative categories N01–N12, applicable duplicate/unknown-field controls and the self-consistent-hash/false-observation control are rejected at their required boundary. Zero invalid covered candidates publish authoritative state/history.
- **SC-004**: All covered current/historical controls retain their semantic outcomes, applicable canonical bytes/hashes/signatures and phase/category/precedence. The ordinary domain gains zero bundle-only fields and zero unsupported profile/document pairings become supported.
- **SC-005**: All eight proof obligations have a documented disposition, both architectural alternatives have been assessed, and every compatibility axis has an explicit conclusion before implementation starts. The exact-current-baseline status of the issue reproduction is stated without treating already-green controls as REDs. Every requirement is mapped to existing or genuinely missing contract/validation/test coverage. Zero redundant tests or production edits are required for already-satisfied obligations; a complete evidence mapping is an acceptable delivery when no gaps remain.
- **SC-006**: Applicable Core conformance, replay, governance and regression checks pass on the exact delivery candidate, and supported external-consumer validation uses that same revision. Consumer notes explain the corrected contract and the separate release/adoption condition for Approval's positive integration test. This does not claim whole-Core soundness or completion of ecosystem adoption.

### Acceptance-criteria traceability

| User criterion | Required outcome / evidence |
| --- | --- |
| AC-001 | Public CommandIntents/v2 reproduction succeeds: US1; FR-011; SC-001 |
| AC-002 | Ordinary closure: US3/1; FR-002/007; SC-002 |
| AC-003 | Bundle closure with complete evidence retained: US3/2–3; FR-002; SC-002 |
| AC-004 | Strict ordinary decoding: US3/4; FR-003; N10; SC-003/004 |
| AC-005 | Required result hashes checked: US2/1; FR-005; N01–N03; SC-003 |
| AC-006 | Tampering refused: US2/2–5; FR-006/012; N04–N09/N12; SC-003 |
| AC-007 | Six ordinary families preserved: US3; FR-007; SC-002/004 |
| AC-008 | Legacy/v1 unchanged: R1/R2; US4/1–2; FR-008/010; SC-004 |
| AC-009 | Historical profile/identity/phase preserved: US4/1–3; FR-008–010; SC-004/005 |
| AC-010 | Replay and governance remain valid: US4/4; FR-006/008/010; SC-004/006 |
| AC-011 | No Model-specific workaround: US1; FR-013/014; PO-008; SC-001 |
| AC-012 | Applicable Core checks pass: SC-006 |
| AC-013 | Approval can replace its characterization after corrected-release adoption: US4/5; FR-013; SC-006 |

Completion requires explicit domains and closure, successful valid query-reading commitment, retained strict structural/semantic/integrity checks, demonstrated historical compatibility and passing public reproduction/negative controls. Reuse 023's established implementation and validation; correct only demonstrated remaining violations and add only missing regression/conformance coverage. A documentation-and-tests-only delivery is valid. If existing contracts and tests cover all requirements, 025 may conclude with a documented evidence mapping and applicable exact-revision validation, without redundant implementation or tests. No implementation result is asserted by writing this specification.

## Assumptions

- Core's existing admitted query semantics, canonical hash construction, historical profiles, cryptographic assumptions and conforming Store contracts remain authoritative. No new business logic or trust authority is introduced.
- The issue's affected-release/revision statements are reported evidence. Source inspection at the specification base already shows an action-specific validated bundle-evidence boundary from feature 023, while ordinary Facts remain strict. Whether the exact public reproduction fails on that base has not been executed in the specification/clarification phases. Planning first verifies the reproduction against the exact current Core revision and establishes whether the report reflects a release difference, a distinct route or a remaining defect. A passing reproduction does not cancel 025: the remaining work is bounded contract/coverage consolidation, and complete existing artifacts permit evidence-mapping-only completion.
- Feature 025 is a separately attributable follow-up to [023](../023-strict-bundle-evidence-validation/spec.md), whose scope already required strict bundle integrity and phase preservation. It does not redefine 023's frozen delivery claims or silently reopen its historical artifacts. Feature [024](../024-facts-witness-schema/spec.md) addressed #21's ordinary/witness schema domain; schema acceptance remains distinct from semantic validity.
- The ordinary/candidate inventory is scoped to these observation/evidence boundaries and their supported containing documents, with historical replay/governance controls. It does not require redesigning every Core evidence format, creating new profile combinations or changing a migration route to match an action route.
- The specification is based on current fetched `main`, independently of the unmerged 020 metadata candidate. Integration, merge or release revisions need applicable validation of their own.
- Constitution-mandated test-first work, canonical gates and exact-revision consumer checks belong to the later plan/tasks/implementation workflow. Existing passing controls remain preservation evidence; defect regressions must actually fail before a claimed test-first correction.
- No numerical version, tag, publication, release build, dependency-pin update, Approval edit or pull request is performed by this specify invocation. Actual ecosystem adoption follows a separately delivered corrected Core release under the existing [versioning policy](../../docs/versioning.md).

## Source context and evidence limits

Issue [#24](https://github.com/kallistoteles/behavior-ir-core/issues/24) reports the Store producer's `result_hash`, the ordinary consumer's rejection and the public reproduction. Its proposed direct ordinary-parser round trip is interpreted here through the user's explicit domain separation: bundle producer output belongs to the corresponding bundle consumer, not automatically to Ordinary Facts. Related issue [#21](https://github.com/kallistoteles/behavior-ir-core/issues/21) concerns ordinary wrapper schemas and is closed; neither schema conformance nor domain closure proves observations true.

At the specification base, the [Store producer](https://github.com/kallistoteles/behavior-ir-core/blob/634023a6d504bac927192c964d945c7025b467c4/crates/behavior-store/src/store.rs), [ordinary Facts consumer](https://github.com/kallistoteles/behavior-ir-core/blob/634023a6d504bac927192c964d945c7025b467c4/crates/behavior-core/src/facts.rs), [candidate consumer](https://github.com/kallistoteles/behavior-ir-core/blob/634023a6d504bac927192c964d945c7025b467c4/crates/behavior-verify/src/governance/trusted.rs) and [existing dedicated bundle boundary](https://github.com/kallistoteles/behavior-ir-core/blob/634023a6d504bac927192c964d945c7025b467c4/crates/behavior-verify/src/governance/trusted/bundle_evidence.rs) identify investigation touchpoints, not prescribed new architecture. Source inspection is not an executed reproduction or proof of closure.

The governing law is that each supported evidence domain's own checked consumer can read its producer's admissible output while retaining meaning. Structural readability, semantic validity and integrity are independent necessary obligations; none alone authorizes commitment.
