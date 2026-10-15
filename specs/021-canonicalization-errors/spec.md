# Feature Specification: Explicit Canonicalization Failure Contracts

**Feature Branch**: `021-canonicalization-errors`

**Created**: 2026-10-11

**Status**: Clarified — ready for planning. Editable raw artifacts, typed canonicalization failures and a direct versioned API transition are selected.

**Input**: User-approved draft of Core audit remediation RC-005: make canonicalization failure explicit at raw public artifact boundaries, justify retained infallibility for constrained constructed values, preserve valid bytes/hashes, and assess public error/API/versioning consequences before implementation.

## Clarifications

### Session 2026-10-15

- Q: Should public artifact JSON remain freely editable with typed serialization errors, or should construction and editing reject unsupported values? → A: Choose A. Preserve existing public construction and editing workflows; affected canonical serialization and hashing return typed errors. Invalid drafts may exist, but failed canonicalization must prevent authoritative identity, signing, attestation issuance, authorization acceptance and persistence wherever a canonical artifact is required. Checked constructors may be optional conveniences; controlled mutation is not required throughout the public object model.
- Q: Which transition should existing consumers receive when affected methods begin returning typed errors? → A: Choose A. Change the affected public signatures directly in an explicitly versioned release under the project's 0.x minor-version policy. Document the breaking changes and provide explicit consumer migration examples. Retain no unsafe legacy serialization/hash path, silent fallback, coercion or partial canonical output. Preserve canonical bytes and hashes for previously valid inputs and require positive and unsupported-input regression coverage.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Distinguish malformed artifact data from successful output (Priority: P1)

A consumer handling a legacy verification attestation or authorization can distinguish successful canonical serialization from failure caused by noncanonical content. A publicly editable artifact containing a floating-point value must not become empty output that looks like a successful operation.

**Why this priority**: Silent empty text loses the failure's provenance and prevents callers from enforcing an explicit artifact boundary.

**Independent Test**: Create or edit a raw artifact draft containing a nested noncanonical value, then invoke its supported canonical serialization/hash boundary. Observe typed failure with the cause/location, with no successful empty document or authoritative identity.

**Acceptance Scenarios**:

1. **Given** caller-controlled artifact content containing a floating-point number, **When** canonical serialization or hashing is requested, **Then** the operation returns a typed canonicalization error with its cause; it does not return empty text as successful output.
2. **Given** a valid legacy artifact, **When** the same boundary produces canonical text and identity, **Then** its bytes, hash domain and identity match the existing valid baseline.
3. **Given** empty strings, empty collections or null values that are allowed by the applicable artifact contract, **When** they are encoded, **Then** their proper canonical representations remain distinguishable from encoding failure.
4. **Given** existing public artifact construction and editing workflows, **When** a caller creates an incomplete draft or inserts an unsupported value, **Then** the raw draft may exist without acquiring authoritative identity; checked constructors are optional conveniences rather than mandatory mutation controls.

---

### User Story 2 - Preserve valid generated reports and profiles (Priority: P1)

A consumer of ordinary verification, migration verification and legacy authorization continues receiving the same canonical artifacts for valid inputs. A maintainer can tell whether an operation is genuinely fallible or has an enforced construction invariant that excludes canonicalization failure.

**Why this priority**: Replacing every default mechanically risks unnecessary public changes and obscures the narrower guarantees of typed, internally constructed profiles.

**Independent Test**: Compare valid artifact bytes/identities against baseline expectations for each affected path and inspect the stated construction domain for every retained infallible operation.

**Acceptance Scenarios**:

1. **Given** a typed Profile made from check kinds and integer budgets, **When** it produces its normalized document and hash, **Then** it preserves valid baseline bytes/identity; arbitrary raw-JSON mutation is not attributed to that narrower input domain.
2. **Given** valid ordinary and migration verification reports, **When** they are assembled, serialized and hashed, **Then** their valid results, canonical content, cached-flag identity treatment and published hash domains remain unchanged.
3. **Given** an artifact path whose input domain has not been established as canonicalizable, **When** its error contract is reviewed, **Then** it cannot be declared infallible solely because current examples succeed or a function returns a string.
4. **Given** a supported consumer using the facade's returned legacy artifact, **When** affected canonical operations expose typed errors, **Then** construction and editing workflows remain supported, while the error/API transition is explicitly documented and compatibility-tested rather than hidden behind a default.
5. **Given** a consumer using an affected old public signature, **When** it migrates to the versioned API, **Then** explicit before/after examples show successful output and typed-error handling through supported APIs; regression coverage demonstrates unchanged valid bytes/hashes and refusal of unsupported values without an unsafe compatibility path.

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
5. **Given** a previously generated artifact edited to contain an unsupported nested value, including one retaining old hash/signature fields, **When** an affected identity, signing, attestation, authorization or persistence boundary requires a canonical artifact, **Then** it refuses with the canonicalization cause before issuing an authoritative result or persisting that result successfully; retained fields cannot bypass the check.
6. **Given** canonicalizable JSON that fails an existing artifact schema, semantic or authentication rule, **When** a trust boundary consumes it, **Then** the existing rule still refuses it; successful encoding alone supplies no valid artifact identity or authority.

### Edge Cases

- A noncanonical number can occur deeply inside a finding, payload, array or object; a top-level-only check is insufficient.
- Canonicalizable content is not necessarily a semantically valid report or an authenticated proof. Existing semantic/hash/signature checks remain separate.
- A returned artifact's exposed value can be changed after initial generation; a construction claim must cover its actual later mutation opportunities.
- Hash/signature fields retained in an edited draft are untrusted data until the current value satisfies the required canonicalization and existing validation contracts.
- Storing an explicitly untrusted draft is distinct from successfully persisting an artifact under a contract requiring canonical evidence; this feature does not require every draft store to reject incomplete JSON.
- A Profile exposes typed check-kind/integer fields and constructs its JSON; it is not equivalent to a mutable arbitrary JSON document.
- Ordinary and migration assembly can combine findings and diagnostic data. Their reachable domains need inspection before claiming canonicalization is impossible.
- Best-effort diagnostic cache write failure may legitimately cause recomputation rather than a semantic artifact error. It must be classified separately from successful empty artifact output.
- Existing valid empty scalar data is not zero-byte output; valid artifact semantics continue deciding which fields are allowed.
- Allocation/process/resource failure and arbitrary dependency panic freedom are separate audit obligations; this feature does not claim a universal totality theorem.

## Requirements *(mandatory)*

### Scope and existing contract

This is a bounded code-quality and artifact error-contract remediation of **F-QUALITY-001, S6 / Low**, originating in RC-005. Core016 establishes that fallible canonicalization over arbitrary JSON can be silently reduced to empty text or an empty hash in legacy artifact paths. It does **not** demonstrate a legal runtime soundness break or forged current authenticated proof.

The canonical encoder remains a partial operation over arbitrary JSON. Valid construction can constrain its domain; otherwise failure needs an explicit result. Encoding success is not proof authenticity or semantic validity. The feature introduces no new Behavior syntax, Wire meaning, arithmetic rule, hash domain or validation strategy.

This feature concerns JSON used for verification attestations, authorizations and their affected artifact flows. It does not redesign the JSON describing business rules. Illustrative JSON in the clarification discussion defines no new artifact schema.

Let \(J\) be representable JSON values, \(B\) canonical byte sequences, and \(D_C\subseteq J\) the domain accepted by the existing canonical encoder. Canonicalization is the checked partial function

\[
C:J\rightharpoonup B,\qquad
C_{checked}:J\rightarrow Result(B,CanonicalizationError).
\]

The result type describes the failure contract, not a required new public error-type name. For unsupported values, the checked operation returns an error rather than bytes or a replacement hash. This is total error reporting over the JSON input domain, not a claim about allocation failure or arbitrary dependency panics.

The API contract changes while the canonicalization function retains its meaning. For every previously supported canonicalizable input \(x\in D_C\), under the same artifact profile and baseline semantics:

\[
C_{new}(x)=C_{old}(x),\qquad
C_{checked,new}(x)=Ok(C_{old}(x)).
\]

Previously valid hash operations retain their bytes, tags, exclusions and hash values. The before/after comparison is against the implementation baseline pinned during planning; it does not reinterpret historical verifier or artifact profiles as current ones. Unsupported inputs produce typed errors and no partial canonical result.

Representability, canonicalizability and validity under an artifact profile are separate predicates. Canonicalization success does not establish schema validity, semantic truth, an authentic issuer or authorization. For an affected operation \(A_p\) that issues/accepts authoritative identity, signs, issues an attestation, accepts authorization or persists an artifact requiring canonical evidence:

\[
Success(A_p(j))\Rightarrow
C_{checked}(j)=Ok(b)\ \land\ ExistingValidation_p(j).
\]

Here \(ExistingValidation_p\) includes the existing checks applicable to that boundary; it does not add a new proof or authorization policy. Planning must establish the enforcing checked boundary or construction invariant for each affected path. No failed canonicalization may be promoted into authoritative success, even when the draft carries an earlier hash or signature. Generic canonical encoding remains separate from full artifact validation, and existing supported historical interpretations remain unchanged.

### Functional Requirements

- **FR-001**: An affected public artifact operation MUST NOT treat canonicalization failure as successful empty text, an empty hash, a fabricated report or a substituted semantic/proof outcome.
- **FR-002**: The feature MUST inventory every canonical serialization/hash failure-suppression site in the affected legacy verification and authorization paths and map their supported identity, signing, attestation, trust and persistence boundaries requiring canonical artifacts. Each entry MUST state its actual input domain, construction/mutation opportunities, supported consumer reachability, applicable profile, error handling and justification for any retained infallibility or existing enforcement reused without a code change.
- **FR-003**: The inventory MUST include ordinary Attestation serialization and assembly, migration attestation assembly, legacy Authorization serialization, and the adjacent Profile document/hash paths. It MUST distinguish raw publicly mutable JSON from typed internally constructed values; it MUST not classify an invariant as established without its enforcing construction evidence.
- **FR-004**: Every inventoried site MUST have an explicit disposition: propagate typed canonicalization failure at the relevant boundary, or enforce/document a constrained valid construction domain that rules out that failure. Unknown reachability or a missing invariant MUST remain an unresolved obligation rather than silent success.
- **FR-005**: Failure handling MUST preserve the relevant canonicalization cause/location and MUST NOT repair input by coercing or rounding values, dropping fields, normalizing away unsupported content, guessing values or hashing replacement content. It MUST remain distinct from semantic refusal, verification failure/inconclusiveness and operational backend errors. Existing canonical ordering and documented normalization of valid inputs remain unchanged.
- **FR-006**: Preserve existing public artifact construction and editing workflows, including representable incomplete or noncanonical raw JSON drafts. Affected public canonical serialization/hash operations over that raw domain MUST expose failures through typed results. Optional checked constructors MAY be provided, but controlled mutation MUST NOT be required throughout the public object model. Narrower typed Profile construction invariants remain assessed separately under FR-004. D-021-001 records the selected contract.
- **FR-007**: Every valid previously supported artifact MUST retain its canonical bytes, applicable hash domain, self-hash/cached-flag exclusions, identity and semantic result. Historical artifacts MUST NOT be rewritten to conceal an error-contract correction.
- **FR-008**: Supported consumer wrappers, including CLI artifact output, MUST preserve the explicit typed-failure contract. Canonicalization MUST complete successfully before a canonical artifact result is emitted or published; canonicalization failure MUST NOT emit a successful or partial canonical artifact or become a normal proof/authorization outcome. Diagnostics may use the existing error channels. This does not redefine operational I/O failure semantics.
- **FR-009**: Current authenticated verification/authorization MUST retain its existing strict decoding, complete expected manifest, exact context/issuer bindings and fresh computation requirements. This feature MUST NOT turn legacy artifact mutability or diagnostic caches into authority.
- **FR-010**: Regression evidence MUST cover every inventoried site and affected canonical-artifact boundary with successful canonicalization and byte/hash equivalence, together with either a reachable typed-failure case or enforcing construction-domain evidence. Public raw boundaries MUST include nested noncanonical input, post-generation mutation, retained old identity/signature fields, and canonicalizable-but-invalid controls for the existing validators. Failure controls MUST establish that no partial canonical artifact is emitted. Unreachable cases MUST not be called tested without their premise.
- **FR-011**: Change affected public signatures directly to typed fallible results in an explicitly versioned release, following the project's 0.x minor-version policy for breaking supported API changes. Preserve the construction/editing contract selected in FR-006. Do not stage a parallel unsafe serialization/hash API or retain a supported canonicalization-to-success fallback. Preserve supported historical artifact profiles and separately justified constrained-domain infallibility. D-021-002 records the selected transition; planning determines the exact error types, CLI mapping and future release number.
- **FR-012**: Ordinary option/default behavior and best-effort cache storage MUST be classified by their own contract rather than mechanically rewritten because they use a default. No unclassified canonicalization-to-success default may remain in the completed scope.
- **FR-013**: Every affected identity, signing, attestation issuance, authorization acceptance and persistence boundary requiring canonical artifacts MUST enforce successful canonicalization of the current artifact value, or consume a value whose enforced construction establishes that success, together with its existing applicable schema, semantic and authentication checks. Failed canonicalization MUST prevent successful authoritative output/persistence; old hash/signature fields MUST NOT substitute for those checks. Existing enforcement MAY be reused with evidence; this requirement introduces no new trust protocol or requirement to constrain draft mutation.
- **FR-014**: Delivery MUST document every breaking supported public signature/error-contract change and provide explicit before/after migration examples for affected consumers, including supported facade usage and CLI artifact/error behavior where affected. Examples MUST demonstrate valid success and typed-failure handling. Migration documentation and consumer regression evidence MUST be reviewed together with the versioning assessment; adding a safe alternative while leaving an unsafe supported path is not completion.

### Key Entities *(include if feature involves data)*

- **Canonicalizable value domain**: Recursive no-float JSON values accepted by the existing canonical encoder; canonicalizability alone does not certify report meaning or authority.
- **Artifact draft**: Representable JSON in the existing editable object model, possibly incomplete or invalid and carrying untrusted identity/signature fields. Its existence grants no authoritative identity or permission.
- **Authoritative artifact operation**: An in-scope identity, signing, attestation issuance, authorization acceptance or persistence operation whose contract requires canonical evidence and the existing profile-specific validation.
- **Legacy artifact**: A verification attestation, migration attestation or authorization with its current document/hash profile and public construction/mutation opportunities.
- **Canonicalization failure**: A typed encoding/hashing failure with its cause, distinct from proof outcome and semantic validity.
- **Constrained constructed value**: A value whose enforced construction/mutation contract excludes the relevant canonicalization failure; Profile is a narrower candidate domain, not arbitrary JSON.
- **Site-domain inventory**: Complete per-site evidence mapping input domain, reachable consumers, invariant/error disposition and valid-output compatibility.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: 100% of affected canonical serialization/hash failure-suppression sites have a reviewed input-domain, reachability and explicit error/invariant disposition; zero unknown domains are represented as proven infallible.
- **SC-002**: Every covered reachable noncanonical raw artifact input produces a typed canonical serialization/hash error; editable drafts remain representable and zero cases produce successful empty artifacts or empty identities. Retained infallibility in narrower constructed domains has enforcing evidence.
- **SC-003**: Every covered valid artifact path preserves baseline canonical bytes, identities and semantic results across its existing applicable profiles, including ordinary/migration reports, Profile and legacy authorization.
- **SC-004**: All affected supported consumer paths preserve the selected failure contract without confusing artifact failure with proof refusal/inconclusiveness or authenticated authority.
- **SC-005**: Before correction code is delivered, the selected raw-value boundary and direct versioned API transition are reflected in concrete typed-error signatures, preserved mutation workflows, consumer migration evidence and an explicit 0.x minor-version assessment; no current authenticated-proof forgery is claimed without separate evidence.
- **SC-006**: 100% of inventoried canonical-artifact trust and persistence boundaries have checked enforcement or construction-domain evidence; zero covered canonicalization failures issue authoritative identity, signatures, attestations, accepted authorizations or successful authoritative persistence. Canonicalizable-but-invalid controls retain their existing refusals.
- **SC-007**: 100% of affected breaking supported public changes have explicit migration examples and regression evidence for valid byte/hash preservation and unsupported-input refusal. Zero affected supported paths retain silent fallback, coercion or partial canonical output on canonicalization failure.

## Assumptions

- This phase updates feature 021's specification and decision records with the accepted clarification. Prior draft document publication is tracked separately; these documents do not assert planning, implementation, new tests or feature 021 release completion.
- D-021-001 and D-021-002 are both resolved as A on 2026-10-15. The specification is ready for planning. Concrete error types, signature details, CLI failure mappings, inventory evidence and the exact future minor-release number are planning work rather than unresolved product choices.
- Draft checkout base is `5949cb111cd6c5af34b0fc9083e78810df450fce`, with the same source tree as audited release `1e286ebcf1d61117320c57df155fa1ef9397e880` / v0.12.1. Immutable Core016 evidence is pinned to `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.
- Clarification source inspection also covers released Core 0.13.0, `15094972191aa0ae79705df0397c551a18745399`, where the raw Attestation/Authorization serialization fallbacks remain. Planning MUST refresh the full inventory against its then-current pinned revision. The separate 0.13.0 release checks are not feature 021 acceptance evidence.
- The consumer contract is the supported behavior-engine facade and CLI. Publicly accessible returned fields/methods need assessment even if the internal type is not separately named in the facade export list; consumers must not import internal crates to establish acceptance.
- The preliminary site/domain notes in decisions.md are audit-based discussion evidence, not a completed implementation inventory or proof of all assembly inputs. No tests/gates/runtime experiments were executed for these drafts.
- A later authorized implementation follows the Core constitution's test-first requirements and exact-revision gates. Existing source inspection establishes the S6 risk; it does not prove future red/green compliance or that the correction is implemented.
- Immutable evidence: [Core016 finding and RC-005](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md#f-quality-001--fallible-canonical-errors-silently-become-empty-strings), [full QUALITY finding fields](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/fragments/QUALITY/handoff.md), [independent review](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/reviews/VERIFY/quality-review.md).
- Related discussion material: [remediation overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md) and [targeted re-audit outline](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/targeted-re-audit.md). These discussion-branch links are separate from immutable audit evidence and from implementation/release authorization.
