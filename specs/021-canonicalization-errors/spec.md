# Feature Specification: Explicit Canonicalization Failure Contracts

**Feature Branch**: `021-canonicalization-errors`

**Created**: 2026-10-11

**Status**: Draft for clarify — discussion only; public boundary and compatibility decisions remain open.

**Input**: User-approved draft of Core audit remediation RC-005: make canonicalization failure explicit at raw public artifact boundaries, justify retained infallibility for constrained constructed values, preserve valid bytes/hashes, and assess public error/API/versioning consequences before implementation.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Distinguish malformed artifact data from successful output (Priority: P1)

A consumer handling a legacy verification attestation or authorization can distinguish successful canonical serialization from failure caused by noncanonical content. A publicly editable artifact containing a floating-point value must not become empty output that looks like a successful operation.

**Why this priority**: Silent empty text loses the failure's provenance and prevents callers from enforcing an explicit artifact boundary.

**Independent Test**: Supply a supported artifact boundary with a nested noncanonical value, exercising the selected construction/serialization contract. Observe explicit rejection or typed failure, with no successful empty document or empty identity.

**Acceptance Scenarios**:

1. **Given** caller-controlled artifact content containing a floating-point number, **When** it reaches the chosen public construction or encoding boundary, **Then** the operation rejects it explicitly with the canonicalization cause; it does not return empty text as successful output.
2. **Given** a valid legacy artifact, **When** the same boundary produces canonical text and identity, **Then** its bytes, hash domain and identity match the existing valid baseline.
3. **Given** empty strings, empty collections or null values that are allowed by the applicable artifact contract, **When** they are encoded, **Then** their proper canonical representations remain distinguishable from encoding failure.

---

### User Story 2 - Preserve valid generated reports and profiles (Priority: P1)

A consumer of ordinary verification, migration verification and legacy authorization continues receiving the same canonical artifacts for valid inputs. A maintainer can tell whether an operation is genuinely fallible or has an enforced construction invariant that excludes canonicalization failure.

**Why this priority**: Replacing every default mechanically risks unnecessary public changes and obscures the narrower guarantees of typed, internally constructed profiles.

**Independent Test**: Compare valid artifact bytes/identities against baseline expectations for each affected path and inspect the stated construction domain for every retained infallible operation.

**Acceptance Scenarios**:

1. **Given** a typed Profile made from check kinds and integer budgets, **When** it produces its normalized document and hash, **Then** it preserves valid baseline bytes/identity; arbitrary raw-JSON mutation is not attributed to that narrower input domain.
2. **Given** valid ordinary and migration verification reports, **When** they are assembled, serialized and hashed, **Then** their valid results, canonical content, cached-flag identity treatment and published hash domains remain unchanged.
3. **Given** an artifact path whose input domain has not been established as canonicalizable, **When** its error contract is reviewed, **Then** it cannot be declared infallible solely because current examples succeed or a function returns a string.
4. **Given** a supported consumer using the facade's returned legacy artifact, **When** the selected boundary contract changes how it handles errors or mutation, **Then** the change is explicitly documented and compatibility-tested rather than hidden behind a default.

---

### User Story 3 - Propagate artifact failure without changing proof authority (Priority: P2)

A host or command-line consumer receives a distinguishable artifact failure instead of a successful empty report, empty hash or fabricated proof outcome. Current authenticated evidence retains its existing independent validation and fresh-proof requirements.

**Why this priority**: Artifact formatting errors must not be confused with a semantic refusal, a failed proof, an inconclusive check or authority to commit.

**Independent Test**: Exercise every reachable canonicalization failure across the inventoried artifact paths and their supported consumers, alongside valid and existing typed-error controls.

**Acceptance Scenarios**:

1. **Given** a canonicalization failure in an affected supported path, **When** a downstream consumer handles the result, **Then** failure remains explicit and cannot become a successful empty artifact or identity at a wrapper boundary.
2. **Given** malformed artifact data, **When** the consumer reports failure, **Then** it preserves the relevant cause/location without silently dropping content, rounding a number or fabricating a replacement document.
3. **Given** an existing semantic verification refusal, inconclusive result or legacy authorization refusal, **When** the correction is applied, **Then** it retains its existing meaning and valid evidence; an encoding failure is a separate result.
4. **Given** current authenticated proof or authorization, **When** the correction is applied, **Then** it does not promote mutable legacy JSON, diagnostic cache entries or an unsigned content hash into trusted authority.

### Edge Cases

- A noncanonical number can occur deeply inside a finding, payload, array or object; a top-level-only check is insufficient.
- Canonicalizable content is not necessarily a semantically valid report or an authenticated proof. Existing semantic/hash/signature checks remain separate.
- A returned artifact's exposed value can be changed after initial generation; a construction claim must cover its actual later mutation opportunities.
- A Profile exposes typed check-kind/integer fields and constructs its JSON; it is not equivalent to a mutable arbitrary JSON document.
- Ordinary and migration assembly can combine findings and diagnostic data. Their reachable domains need inspection before claiming canonicalization is impossible.
- Best-effort diagnostic cache write failure may legitimately cause recomputation rather than a semantic artifact error. It must be classified separately from successful empty artifact output.
- Existing valid empty scalar data is not zero-byte output; valid artifact semantics continue deciding which fields are allowed.
- Allocation/process/resource failure and arbitrary dependency panic freedom are separate audit obligations; this feature does not claim a universal totality theorem.

## Requirements *(mandatory)*

### Scope and existing contract

This is a bounded code-quality and artifact error-contract remediation of **F-QUALITY-001, S6 / Low**, originating in RC-005. Core016 establishes that fallible canonicalization over arbitrary JSON can be silently reduced to empty text or an empty hash in legacy artifact paths. It does **not** demonstrate a legal runtime soundness break or forged current authenticated proof.

The canonical encoder remains a partial operation over arbitrary JSON. Valid construction can constrain its domain; otherwise failure needs an explicit result. Encoding success is not proof authenticity or semantic validity. The feature introduces no new Behavior syntax, Wire meaning, arithmetic rule, hash domain or validation strategy.

### Functional Requirements

- **FR-001**: An affected public artifact operation MUST NOT treat canonicalization failure as successful empty text, an empty hash, a fabricated report or a substituted semantic/proof outcome.
- **FR-002**: The feature MUST inventory every canonical serialization/hash failure-suppression site in the affected legacy verification and authorization paths. Each entry MUST state its actual input domain, construction/mutation opportunities, supported consumer reachability, applicable profile, error handling and justification for any retained infallibility.
- **FR-003**: The inventory MUST include ordinary Attestation serialization and assembly, migration attestation assembly, legacy Authorization serialization, and the adjacent Profile document/hash paths. It MUST distinguish raw publicly mutable JSON from typed internally constructed values; it MUST not classify an invariant as established without its enforcing construction evidence.
- **FR-004**: Every inventoried site MUST have an explicit disposition: propagate typed canonicalization failure at the relevant boundary, or enforce/document a constrained valid construction domain that rules out that failure. Unknown reachability or a missing invariant MUST remain an unresolved obligation rather than silent success.
- **FR-005**: Failure handling MUST preserve the relevant canonicalization cause/location and MUST NOT repair input by rounding, dropping fields, guessing values or hashing replacement content. It MUST remain distinct from semantic refusal, verification failure/inconclusiveness and operational backend errors.
- **FR-006**: The public input/result boundary is undecided: [NEEDS CLARIFICATION: Should mutable raw artifact boundaries become explicitly fallible, or should artifacts enforce a checked canonicalizable value domain that prevents invalid construction/mutation?] D-021-001 in decisions.md compares these contracts; narrower typed Profile invariants are assessed separately under either option.
- **FR-007**: Every valid previously supported artifact MUST retain its canonical bytes, applicable hash domain, self-hash/cached-flag exclusions, identity and semantic result. Historical artifacts MUST NOT be rewritten to conceal an error-contract correction.
- **FR-008**: Supported consumer wrappers, including CLI artifact output, MUST preserve the chosen explicit failure contract. An encoding failure MUST NOT be reported as a successful artifact emission or normal proof/authorization outcome.
- **FR-009**: Current authenticated verification/authorization MUST retain its existing strict decoding, complete expected manifest, exact context/issuer bindings and fresh computation requirements. This feature MUST NOT turn legacy artifact mutability or diagnostic caches into authority.
- **FR-010**: Acceptance evidence MUST cover every inventoried site with valid-output equivalence and either a reachable typed-failure case or enforcing construction-domain evidence. Public raw boundaries MUST include nested noncanonical input and post-generation mutation where mutation remains supported. Unreachable cases MUST not be called tested without their premise.
- **FR-011**: Public error/API compatibility and delivery are undecided: [NEEDS CLARIFICATION: Which public return/mutation/error changes and consumer migration/release policy are acceptable for the boundary selected in FR-006?] D-021-002 records options; a breaking signature, field-visibility or CLI error change cannot be assumed compatible.
- **FR-012**: Ordinary option/default behavior and best-effort cache storage MUST be classified by their own contract rather than mechanically rewritten because they use a default. No unclassified canonicalization-to-success default may remain in the completed scope.

### Key Entities *(include if feature involves data)*

- **Canonicalizable value domain**: Recursive no-float JSON values accepted by the existing canonical encoder; canonicalizability alone does not certify report meaning or authority.
- **Legacy artifact**: A verification attestation, migration attestation or authorization with its current document/hash profile and public construction/mutation opportunities.
- **Canonicalization failure**: A typed encoding/hashing failure with its cause, distinct from proof outcome and semantic validity.
- **Constrained constructed value**: A value whose enforced construction/mutation contract excludes the relevant canonicalization failure; Profile is a narrower candidate domain, not arbitrary JSON.
- **Site-domain inventory**: Complete per-site evidence mapping input domain, reachable consumers, invariant/error disposition and valid-output compatibility.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: 100% of affected canonical serialization/hash failure-suppression sites have a reviewed input-domain, reachability and explicit error/invariant disposition; zero unknown domains are represented as proven infallible.
- **SC-002**: Every covered reachable noncanonical artifact input produces explicit failure or is rejected by its enforced construction boundary; zero cases produce successful empty artifacts or empty identities.
- **SC-003**: Every covered valid artifact path preserves baseline canonical bytes, identities and semantic results across its existing applicable profiles, including ordinary/migration reports, Profile and legacy authorization.
- **SC-004**: All affected supported consumer paths preserve the selected failure contract without confusing artifact failure with proof refusal/inconclusiveness or authenticated authority.
- **SC-005**: Before correction code is delivered, the public boundary choice, typed error/mutation consequences, consumer evidence and release policy are resolved and documented; no current authenticated-proof forgery is claimed without separate evidence.

## Assumptions

- This work is **specification drafting for discussion only**. The user authorized committing/pushing the drafts and opening draft PRs; document publication is tracked separately. Planning, tasks, implementation code, new tests, altered fixtures, release tags and release publication remain outside this draft authorization.
- The next phase is clarify. This draft is not ready for plan while FR-006 and FR-011 remain open; provisional recommendations do not settle those decisions.
- Draft checkout base is `5949cb111cd6c5af34b0fc9083e78810df450fce`, with the same source tree as audited release `1e286ebcf1d61117320c57df155fa1ef9397e880` / v0.12.1. Immutable Core016 evidence is pinned to `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.
- The consumer contract is the supported behavior-engine facade and CLI. Publicly accessible returned fields/methods need assessment even if the internal type is not separately named in the facade export list; consumers must not import internal crates to establish acceptance.
- The preliminary site/domain notes in decisions.md are audit-based discussion evidence, not a completed implementation inventory or proof of all assembly inputs. No tests/gates/runtime experiments were executed for these drafts.
- A later authorized implementation follows the Core constitution's test-first requirements and exact-revision gates. Existing source inspection establishes the S6 risk; it does not prove future red/green compliance or that the correction is implemented.
- Immutable evidence: [Core016 finding and RC-005](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md#f-quality-001--fallible-canonical-errors-silently-become-empty-strings), [full QUALITY finding fields](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/fragments/QUALITY/handoff.md), [independent review](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/reviews/VERIFY/quality-review.md).
- Related discussion material: [remediation overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md) and [targeted re-audit outline](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/targeted-re-audit.md). These discussion-branch links are separate from immutable audit evidence and from implementation/release authorization.
