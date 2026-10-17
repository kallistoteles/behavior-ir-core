# Feature Specification: Query Summary Congruence in SMT Verification

**Feature Branch**: `028-query-summary-congruence`

**Created**: 2026-10-16

**Status**: Clarified draft — semantic authority, proof/execution contracts and verification context resolved.

**Input**: Specify the local query-summary precision gap in [Core #35](https://github.com/kallistoteles/behavior-ir-core/issues/35). Equivalent query instances over the same state and captures must have congruent count summaries, while every concretely possible behavior remains represented. Preserve runtime semantics, Approval 503 lowering and semantic identity. Keep global induction separate.

**Specification baseline**: Core `main` at `c8c79b48c11403c5e0a6fd5ab81145e0aca06183`, with the same source tree as released Core 0.14.0 at `855f4db4d6da3327c80117191d5719e6bc6b6397`. The investigation also reproduced the failure on released Core 0.13.0. Frozen inputs and prior observations are in [evidence/baseline.md](evidence/baseline.md); they are not acceptance evidence for this feature.

## Clarifications

### Session 2026-10-16

The answers below were supplied by the user; no additional questions were asked.

- Q: Which correctness contract governs each derived representation? → A: Admitted Core semantics is authoritative. Verification must conservatively cover concrete behaviors; execution optimizations must preserve the complete observable semantic result. Derived representations do not define independent semantic truth.
- Q: What context must query-summary equivalence respect? → A: The admitted Behavior/schema interpretation and semantic profile, state coordinate and captures. Review source/target separation for migrations without mandating migration-verifier implementation changes or new public identity fields.
- Q: Which assumptions may a local proof use? → A: Only enforced Core guarantees, verified premises or explicit restrictions of the stated verification domain. Desired global properties, the target postcondition and later successful checks may not be assumed. The abstraction must represent each covered concrete result and error path.
- Q: How does a changed proof encoding affect authority and history? → A: Fresh claims use the correct verifier/model identity and compatibility rules; incompatible cached proofs are not reused as new-model results. Historical attestations remain immutable and gain no automatic trust. Inconclusive results cannot become proof or permission because a candidate failed confirmation; fresh authorization still applies current applicable policy.
- Q: Does feature 028 include a whole-Core soundness audit or a migration/induction framework? → A: No. Planning records a bounded impact review of the six named dependent areas. A systematic audit of all derived representations is separate future work; 028 remains the local query-summary congruence correction and its proof, regression and compatibility obligations.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Prove a local safety condition without changing the authored behavior (Priority: P1)

A behavior author guards an action against an existing matching entity and creates one fresh matching entity. The author can prove that the resulting matching count is one using the existing query semantics. The author does not have to rewrite a Model, change its identity, add a global invariant or implement business-specific verifier logic.

**Why this priority**: C19 is blocked by two inconclusive Approval uniqueness postconditions even though the guard and existing Create delta suffice for their local proof. Full conformance requires a supported proof of the original module.

**Independent Test**: Verify the frozen minimal Core-only example and the original C19 module through supported public verification entry points. Check the original input bytes and semantic identities, both original uniqueness obligations, the complete required verification report and the recorded verification context.

**Acceptance Scenarios**:

1. **Given** a guard `not any(Q,p)` and a postcondition using `count(where(Q,p))`, with the same relevant captures and semantic parent state and with defined, total membership evaluation, **When** the verifier reasons about the precondition and the parent contribution to the postcondition, **Then** it establishes that both refer to the same count; it cannot allow their values to contradict each other solely because the query forms differ.
2. **Given** that the guard establishes zero matching entities, the captures are unchanged and the effect creates exactly one fresh matching entity without another relevant change, **When** the resulting-state count is checked, **Then** the local postcondition `count <= 1` is proven from the guard and effect, without assuming that postcondition or global Approval uniqueness.
3. **Given** the original approve and reject actions from C19, **When** their unchanged admitted module is verified using the required full profile on a frozen corrected Core candidate, **Then** both uniqueness postconditions are proven and the complete report is verified under the existing meaning of each check kind.
4. **Given** an equivalent count-form guard used as a diagnostic control, **When** it is compared with the original guard, **Then** the proof difference is resolved in Core; shipping the rewritten module or changing Approval lowering is not the repair.

---

### User Story 2 - Trust that improved precision cannot hide a real violation (Priority: P1)

A verifier consumer needs proof results to remain conservative. The correction may remove impossible symbolic assignments but must retain every concrete execution covered by the check, including executions that would fail the target postcondition.

**Why this priority**: An inconclusive result is a visible limitation. A false proof could incorrectly support authorization or a safety claim. The missing congruence must be added only where its semantic premises hold.

**Independent Test**: Exercise negative controls with differing predicates, captures, typed domains and state coordinates, plus the missing-guard control and applicable evaluation errors. Compare reported violations and error phases with authoritative evaluation. Review the unbounded conservativity argument separately from finite witness tests.

**Acceptance Scenarios**:

1. **Given** two query instances whose captures, predicates, typed candidate domains or Behavior/schema interpretations can select different members, **When** no equivalence has been established, **Then** the verifier does not force equal summaries. A negative control with a real reachable postcondition violation must not become proven.
2. **Given** an action that changes a relevant capture or changes membership between parent and child, **When** the child is checked, **Then** its summary uses the correct child captures and exact relevant delta; the parent guard's zero is not copied onto an unrelated instance or onto the child count.
3. **Given** the frozen missing-guard controls, **When** they are verified, **Then** the verifier retains the reproduced postcondition violations, confirmed by evaluation as `DENY / POSTCONDITION_FAILED`, rather than proving the property or claiming an invalid commit occurred.
4. **Given** a membership predicate that can fail or has operator-sensitive short-circuit evaluation, **When** value summaries are related, **Then** existing definedness, error, evaluation-order and refusal-phase obligations remain intact. The feature does not replace runtime `any` by runtime `count`.
5. **Given** SAT abstract assignments that cannot be concretized, an exhausted solver budget or unsupported reasoning, **When** no unrestricted proof exists, **Then** the existing applicable inconclusive or unsupported result remains distinct from proof and from a confirmed counterexample.

---

### User Story 3 - Audit versioned proof claims and adopt a corrected release honestly (Priority: P2)

An integrator can distinguish an old inconclusive attestation from a newly generated proof and can tell exactly what was established. The local correction does not silently upgrade historical evidence or imply a global safety theorem.

**Why this priority**: New proof outcomes affect attestations, caches and authenticated-evidence eligibility even though the BehaviorHash and runtime meaning stay unchanged. C19 must remain blocked until the original module actually passes against an adopted corrected release.

**Independent Test**: Preserve and inspect frozen historical verification artifacts, compare new report identities and declared contexts, and verify the documented release handoff. Check that the source issue and specification describe the observed abstract inconsistency rather than an invented concrete duplicate-decision snapshot.

**Acceptance Scenarios**:

1. **Given** the frozen 0.9.0-verifier report that says the original module is not verified, **When** the corrected verifier produces a new proof, **Then** the historical report retains its original bytes, identity and recorded outcome. It is not rewritten or silently presented as a new proof.
2. **Given** caches or authenticated evidence from another verification-model version, **When** fresh verification or governance eligibility is evaluated, **Then** incompatible cached results are not reused as corrected-model claims. Historical evidence gains no automatic trust or authority, and fresh authorization still applies the relevant policy, including existing expiry and revocation rules.
3. **Given** an attestation proving the local postconditions, **When** its scope is inspected, **Then** its exact subject, obligations, justified assumptions, semantic profile and verifier/model context are explicit or bound by the supported claim metadata. It makes no unstated claim about global induction, Approval genesis, imports or migration preservation.
4. **Given** passing Core candidate tests or passing diagnostic variants, **When** feature 506 readiness is reported before corrected-release adoption, **Then** original C19 remains blocked. It can pass only after the unchanged original module satisfies its required check under the pinned corrected release.

### Edge Cases

- An empty membership set makes `any` false and count zero. Equal counts of two different sets do not establish membership equivalence.
- The same capture name can denote different values; different bindings can denote equal values. Congruence follows established semantic equality, not binding spelling alone.
- Equal value sorts do not identify different entity domains or predicates. Different captures may happen to produce equal results; that coincidence does not justify unconditional identification.
- A query in S and one in S' have different coordinates. Equality is allowed only if established by a valid frame or delta argument, not by omitting the coordinate. Relevant capture changes also affect which parent instance contributes to a child summary.
- Equal-looking queries in different Behavior/schema interpretations or semantic profiles do not justify shared summaries. In particular, validity under a migration's source schema does not imply validity under its target schema; source and target remain distinct contexts.
- Fresh matching creation contributes +1. A nonmatching creation contributes zero. Updates and removals retain their existing contributions, and typed identities are not counted twice through aliases.
- An already used or colliding creation identity retains the existing refusal. The +1 obligation applies only to paths that successfully reach the target check with the existing freshness obligations satisfied.
- Partial predicates, short-circuit paths, arithmetic or count range errors, and malformed or inconsistent inputs retain their existing semantics and validation phases. Value congruence does not certify successful evaluation.
- A finite witness search, including its existing three unknown-member slots, cannot bound an unrestricted proof. Witness UNSAT is not proof that the property holds in every concrete state.
- Existing sums, extrema, uniqueness, reads and other query consumers retain their contracts. Equal membership alone does not identify summaries that also depend on different value projections or operators.
- Previously issued inconclusive, negative or successful attestations retain their own recorded claims. New verification contexts may produce new attestations without changing the old artifacts.
- A correctly signed inconclusive attestation records that outcome; unsuccessful concretization does not turn it into proof or satisfy a policy requirement for proof. Preserving its historical interpretation does not bypass fresh authorization, expiry or revocation checks.

## Requirements *(mandatory)*

### Scope and observed problem

The investigation reproduced the exact original C19 module on Core 0.13.0 and 0.14.0, verifier 0.9.0 and Z3 4.16.0. Both runs produced the same full attestation identity and two inconclusive uniqueness postconditions. The guard and postcondition use identical membership predicates and unchanged `subject.id` / `actor` values. The existing Create contribution is already exactly one.

The abstract proof permits one parent-count summary to be zero and the other to be one. The subsequent concretizing witness queries are UNSAT in the recorded reproduction. No concrete duplicate-decision parent snapshot was produced. This is observed precision debt, not a confirmed runtime violation or proof that the whole existing verifier is sound.

This feature establishes count-summary congruence for the required existing quantifier/filter forms. It does not select internal normalization keys, lemma emission, a solver architecture or a public API. It does not require deciding equivalence for arbitrary queries.

Three correctness contracts apply, as distinguished by constitution VII and the existing [execution-equivalence contract](../../ARCHITECTURE.md):

| Area | Required relationship | Authority |
|------|-----------------------|-----------|
| Admitted semantics | Every supported operation has its defined semantic meaning | Core semantics |
| Verification abstraction | `C ⊆ A`; precision refinement establishes `C ⊆ A' ⊆ A` | Derived conservative proof model |
| Execution optimization | `Obs(Execute_opt(x)) = Obs(Execute_ref(x))` | Reference execution under applicable contracts |

For the same canonical state, Behavior, inputs, context and required facts, `Obs` includes semantically relevant decisions, refusals, evaluation errors, evidence and normative validation phases. It excludes backend call counts, internal traces and hypothetical I/O failures of omitted calls; operations actually performed retain their error contracts. This feature does not introduce execution overapproximation or alter the existing incremental-validation rule: unknown dependency means affected. Reuse requires established dependency coverage, with reference evaluation where optimization is unjustified.

Planning records a bounded impact review of six dependent areas: query semantics/identity, proof assumptions, governance/attestations, incremental validation/caches, schema evolution/migration contexts, and determinism/identity/history. Each area is classified affected or unaffected with evidence; the review identifies required compatibility checks without making all six implementation targets. A systematic soundness audit of every use of derived information across Core is a separate proposed follow-up. It is not a deliverable or completion gate of 028.

### Mathematical contract

#### Query instances and semantic equivalence

Let B be an admitted module, S a finite typed semantic state, gamma the relevant captured values, and sigma the explicit state coordinate at the check. Let kappa identify the applicable admitted Behavior/schema interpretation and semantic profile. A query instance for this proof is `I = (Q, gamma, sigma; kappa)` with its typed candidate domain. This context is a semantic requirement, not a prescribed implementation key, new public field or change to public query hashes. Its membership denotation, where defined under existing evaluation rules, is:

\[
M_\kappa(Q,\gamma,\sigma)=\{e\in U_\kappa(\sigma)\mid e\text{ satisfies }Q\text{ with captures }\gamma\}.
\]

Let Gamma contain only assumptions traceable to an enforced Core guarantee, a verified premise or an explicitly stated restriction of the verification domain: applicable type/state rules, prior path conditions and effect-definedness obligations. A state-validity premise such as `Valid_B(S)` is legitimate only if the check's domain actually guarantees it. A desired global Model property is not such a guarantee. Gamma does not assume the target postcondition, later successful checks, an undeclared global Approval property or a finite universe bound in this unrestricted proof.

For the compatible typed, defined membership domain under Gamma and a common interpretation kappa, define extensional instance equivalence by:

\[
I_1\equiv_\Gamma I_2
\iff
\forall\text{ concrete environments satisfying }\Gamma:
M_\kappa(I_1)=M_\kappa(I_2).
\]

This is semantic equality, with reflexivity, symmetry and transitivity on that domain. Same definition, same semantic state and equal relevant captures within the same interpretation are a sufficient case. Cross-context reuse requires a separately established interpretation-compatibility argument; schema or profile coincidence by name is insufficient. Different query forms can also be equivalent when an existing semantic law establishes the same membership. A verifier-recognized sufficient relation may cover fewer cases than this full equivalence relation; every recognized case must imply it.

The required count congruence is:

\[
\boxed{I_1\equiv_\Gamma I_2\Rightarrow Count_\kappa(I_1)=Count_\kappa(I_2)}.
\]

Membership equivalence is not a license to merge unlike aggregate operators, value projections, error obligations or state coordinates.

#### Required quantifier/filter laws

All laws below hold within the compatible interpretation kappa. For an admitted supported base query Q and a predicate p whose membership evaluation is defined and total in the relevant environment, where the compared operations are defined under their existing range/error rules:

\[
Any_\kappa(Q,p,\gamma,\sigma)
\iff Count_\kappa(Where(Q,p),\gamma,\sigma)>0,
\]

\[
\boxed{\neg Any_\kappa(Q,p,\gamma,\sigma)
\iff Count_\kappa(Where(Q,p),\gamma,\sigma)=0}.
\]

The already filtered-query form `not any(Q,true)` is correspondingly coherent with `count(Q) == 0`. Required coverage includes the C19 conjunction of typed subject/actor equalities and the independent minimal Core example. Arbitrary predicate equivalence discovery is not required. Where partial evaluation or range limits matter, the value relationship must be applied with the original definedness and error obligations rather than by assuming successful evaluation.

#### State coordinates and exact delta

Let `N(S,gamma) = |M_kappa(Q,gamma,S)|` within the same interpretation. For an action with unchanged relevant captures and exactly one fresh matching creation, with no other relevant membership change:

\[
N(S',\gamma)=N(S,\gamma)+1.
\]

Consequently, the successful freshness guard implies:

\[
\boxed{N(S,\gamma)=0\Rightarrow N(S',\gamma)=1\Rightarrow N(S',\gamma)\leq1}.
\]

This is a proof from the conditions and effects preceding the target postcondition, not an assumption that the target has already passed. In general, a child summary depends on the correct parent instance at the child captures plus the exact relevant delta; it must not reuse an unrelated guard instance.

#### Conservative refinement and proof boundary

Compare concrete behaviors and symbolic models in the same semantic observation domain for the same check and Gamma. Let C be the behaviors realized by authoritative evaluation, including prefixes that reach and fail the target check; let A and A' be the behaviors permitted by the prior and refined abstractions in that comparison domain. The correction must establish:

\[
\boxed{C\subseteq A'\subseteq A}.
\]

It may exclude impossible symbolic assignments. It must retain every concrete behavior within the declared assumptions. This is a required argument for the supported transformation, not a claim that tests formally prove the entire implementation. A finite witness failure or a hand-added diagnostic equality is not an implemented proof capability.

The abstraction relation must explain what each summary represents. For every concrete environment satisfying the applicable interpretation and Gamma, each successfully evaluated count `n = |M_kappa(I)|` must have a corresponding symbolic valuation with that count in both A and A'. Constraining two summaries to agree is justified only if every covered concrete valuation satisfies that equality. Concrete definedness failures and other applicable error paths must also remain represented under their existing check semantics; a value equality does not eliminate those obligations.

#### Separate global safety claims

The stronger ordinary-transition theorem has the form:

\[
P(S_0)\land\forall a,S,S':\big(P(S)\land T_a(S,S')\Rightarrow P(S')\big).
\]

Its base-state property, complete ownership/effect coverage, local preservation and framing for all other ordinary actions must be established separately. Claiming P for all system-created states additionally requires the relevant genesis, import and migration boundaries to establish or preserve P. None of those Approval-specific global premises is supplied by this local congruence correction or silently added to Gamma. Existing Core validity checks remain normative.

### Functional Requirements

- **FR-001 — Explicit supported equivalence:** Core MUST document the typed query-instance equivalence it uses, its semantic justification and its supported Behavior/schema/profile context. Only established equivalence may constrain summaries to agree; arbitrary query equivalence solving is not required.
- **FR-002 — Quantifier/count coherence:** The required existing `not any` / filtered-count forms MUST impose coherent zero-count conditions under the same semantic state and equivalent captures, including the original compound C19 predicate and the minimal Core-only case.
- **FR-003 — Capture congruence:** Equivalent instances with equal relevant captured values MUST have congruent counts. Unequal or changed captures MUST NOT be identified merely by name, position or common value sort; any further equality requires its own semantic justification.
- **FR-004 — State and interpretation separation:** Parent and resulting-state coordinates and their applicable Behavior/schema/profile interpretations MUST remain explicit. A child count MUST NOT inherit an unqualified parent zero; any relation between them must follow from the correct instance and existing frame/delta semantics. Migration source/target interpretations MUST NOT be silently conflated.
- **FR-005 — Exact effect preservation:** Existing matching/nonmatching creation, update and removal contributions, typed identity handling and creation freshness MUST remain correct. The already valid C19 +1 contribution MUST be preserved.
- **FR-006 — Conservative proofs and justified assumptions:** The refinement MUST preserve all concrete behaviors covered by the check under Gamma. Planning MUST trace every premise to an enforced guarantee, verified premise or explicit verification-domain restriction. A desired invariant, the proof obligation being tested and later conditions MUST NOT be smuggled into Gamma as assumptions.
- **FR-007 — Evaluation and phase preservation:** Runtime query meaning, definedness, short-circuit behavior, checked arithmetic/count ranges, path conditions and applicable validation/refusal phases MUST remain unchanged. Sharing summary values MUST NOT discard error obligations.
- **FR-008 — Honest uncertainty:** Unsupported reasoning, unknown/resource-limited results, unsuccessful witness search and failed confirmation MUST retain their existing non-proof classifications unless a separately supported unrestricted proof establishes the property. Abstract SAT alone MUST NOT be called a concrete counterexample.
- **FR-009 — Confirmed violations:** The original and minimal missing-guard controls MUST retain confirmed postcondition violations with the existing runtime `DENY / POSTCONDITION_FAILED` classification. The correction MUST NOT turn those controls into proof.
- **FR-010 — Generic Core capability:** The congruence rule MUST work for ordinary admitted Core queries independently of Approval names, generated declaration identifiers, Models or ecosystem-private code.
- **FR-011 — Original C19 proof:** A frozen corrected Core candidate MUST prove both original uniqueness postconditions and produce a verified complete report under the required full profile for the unchanged original C19 module. Other check kinds retain their established meanings; not every informative check outcome is named `proven`.
- **FR-012 — Model and runtime identity:** Approval 503 lowering, original IR bytes, BehaviorHash, SchemaHash, public query and item identities, runtime decisions/effects, runtime query evidence and supported historical runtime replay semantics MUST remain unchanged. Rewriting the guard in Approval, adding a business-specific rule or changing the hash to fit the proof is not a correction.
- **FR-013 — Immutable proof history:** Previously issued attestations MUST NOT be rewritten. Their recorded bytes, identities, signatures where present, outcomes and supported archive interpretation MUST remain intact, including the frozen baseline inconclusive attestation. A new verifier MUST NOT automatically promote historical trust or turn historical interpretation into fresh authorization.
- **FR-014 — Versioned fresh claims:** Newly generated attestations may change. The correction MUST follow the existing requirement for a verifier-version bump and a 0.x minor release when verification outcomes change. Planning MUST explicitly cover profile/model identification, invalidation or separation of incompatible cached proofs, and authenticated-evidence eligibility. No old claim may be silently upgraded to the corrected context or greater trust; fresh authorization retains applicable policy, expiry and revocation rules.
- **FR-015 — Explicit claim scope and authority:** Verification evidence MUST identify or bind through its supported metadata the exact subject, proof obligations, justified assumptions, semantic profile and verifier implementation/model/solver context. A local proof MUST NOT claim global induction, base-state validity or migration preservation that was not separately established. Failed concretization MUST NOT turn `INCONCLUSIVE` into `PROVEN` or authority satisfying a proof-required policy. This feature does not require a new attestation schema merely to restate existing metadata.
- **FR-016 — C19 handoff:** C19 MUST remain blocked until the original unchanged module passes the required check under the pinned, published corrected Core release. Candidate tests, diagnostic rewrites, synthetic SMT lemmas and integration-mode success with a recorded blocker are not that handoff. Release publication and ecosystem adoption are separate authorized workflows.
- **FR-017 — Negative controls:** Regression coverage MUST include different captures, different predicates, different typed domains, incompatible Behavior/schema/profile contexts, parent/child separation, changed captures, matching/nonmatching effects and applicable error paths. Context isolation may be demonstrated at the owning verification-session boundary; a new cross-schema proof API is not required. Concrete expectations and refusal classes MUST be established against authoritative semantics before implementing the correction.
- **FR-018 — Preserved query consumers:** Existing query/fold families, evidence decoding, runtime semantics and historical profiles MUST retain their contracts. Count membership congruence MUST NOT be used to equate aggregates with different additional semantic inputs.
- **FR-019 — Correct issue characterization:** Issue #35 MUST describe the inconsistent abstract assignment and unsuccessful concretization accurately, without claiming the recorded run produced a concrete duplicate-decision state or proved a global Approval safety failure.
- **FR-020 — Separate global obligations and audit:** Global induction, Approval-specific genesis/import validity, complete structural ownership and migration preservation MUST remain separate proof obligations. This correction MUST NOT introduce grouped module invariants, a general induction framework, new Core semantic primitives or Approval-specific verification rules. The proposed whole-Core derived-representation soundness audit remains separate follow-up work, not an implementation mandate for 028.
- **FR-021 — Executable acceptance and provenance:** Applicable Core conformance/regression gates MUST pass. Acceptance evidence MUST bind the exact corrected source, verification binary/release, original module identity, verifier and solver versions, selected profile/budget, check outcomes and authoritative attestation identity. Reuse existing cases where they cover a requirement; add only missing coverage.
- **FR-022 — Governing correctness contracts:** Planning and review MUST apply constitution VII, Semantic Authority and Proof Soundness, and discharge the proof obligations below. They MUST distinguish verification conservativity from execution observational equivalence and preserve the existing dependency/fallback rules. A precision improvement does not by itself certify the full verifier or every storage/integration contract.

### Key Entities

- **Query instance**: An admitted typed query definition, its relevant captured values and explicit semantic state coordinate within a Behavior/schema/profile interpretation; its membership and evaluation obligations are distinct concerns. This proof-level description does not change public instance identity.
- **Established equivalence**: A semantically justified relationship under Gamma, potentially between different existing query forms, sufficient to relate compatible count summaries.
- **Count summary and delta**: The parent membership cardinality and the exact relevant state change used to derive a resulting-state count at the appropriate captures.
- **Check context Gamma**: The declared assumptions and previously established path conditions at a particular obligation, each with a justified source and scope, excluding the target and later checks. Validity of an old schema or a desired global Model property does not establish validity under a new schema.
- **Verification claim**: A versioned outcome for a specific obligation/profile and subject; it is distinct from runtime success, a concrete counterexample and a global theorem.
- **Frozen reproduction evidence**: The unchanged original module and baseline attestation, independent minimal cases and recorded pre-change observations, identified by content hashes and pinned revisions.

### Planning and proof obligations

- **PO-001 — Equivalence domain:** State the recognized sufficient relation, candidate typing/binding rules, Behavior/schema/profile interpretation and definedness conditions; establish that each recognized case implies equal membership. Cover the required existing query forms without requiring arbitrary equivalence discovery.
- **PO-002 — Captures, coordinates and interpretation:** Establish sound congruence under equal captures, the same semantic coordinate and a compatible interpretation, with sound separation otherwise. Explain how the appropriate parent instance is selected when child captures change. Review migration source/target isolation without expanding the required proof coverage to migration verification.
- **PO-003 — Delta correctness:** Establish the existing exact contribution for matching/nonmatching fresh creation and applicable updates/removals, with typed identity/freshness and alias obligations intact.
- **PO-004 — Operational semantics:** Establish preservation of error conditions, short-circuit paths, checked ranges and check ordering. The semantic value law must not remove a concretely possible error path. If derived execution/dependency structures are touched, establish the full observational-equivalence and dependency contract above; verification overapproximation is insufficient for execution.
- **PO-005 — Conservative abstraction:** Establish `C ⊆ A' ⊆ A` for the supported refinement in a common observation domain, stating the relation from concrete membership/count/error results to symbolic valuations and tracing Gamma to its justified sources. Exclude circular assumptions and finite-universe proof bounds. Inability to establish this obligation prevents implementation acceptance.
- **PO-006 — Positive and negative evidence:** Map required acceptance cases to existing or missing regression coverage. Preserve original C19 and its minimal generic counterpart alongside all required false-proof and confirmed-violation controls.
- **PO-007 — Identity and proof compatibility:** Establish unchanged runtime/Model identities, including BehaviorHash, SchemaHash and public query identities, and immutable historical proof artifacts. Document verifier versioning, incompatible-cache invalidation/separation, exact claim context, governance eligibility and release compatibility. Show that neither a new model nor failed concretization promotes an old claim or bypasses fresh policy, expiry or revocation rules.
- **PO-008 — Scope, impact and adoption:** Demonstrate the original Core proof without ecosystem workarounds. Complete the six-area impact classification above, record the separate release/C19 adoption gate and excluded global base/ownership/migration obligations, and preserve migration source/target context separation without claiming migration proofs discharged. Do not expand implementation to unaffected areas or the separate whole-Core audit. Any unresolved dependency that prevents the local soundness or compatibility argument remains an explicit blocker.

Planning must identify an unresolved contract rather than select an implementation that cannot satisfy these obligations. The distinction between semantic definition, verifier conservativity and implementation conformance remains explicit.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: Both original Approval uniqueness postconditions are proven and the required complete verification report is verified on the frozen corrected Core candidate; the original input bytes, BehaviorHash and SchemaHash match the baseline exactly.
- **SC-002**: The independent minimal Core example proves the same local zero-plus-one property without Models or business-specific rules, and all required equivalent-query positive cases have consistent proof outcomes.
- **SC-003**: All mandatory negative categories retain their declared non-proof or confirmed-violation outcomes. The two original missing-guard obligations and the minimal missing-guard obligation retain reproduced `POSTCONDITION_FAILED` denials; none becomes a false proof.
- **SC-004**: All eight proof obligations are addressed before implementation acceptance, with an explicit conservativity argument, justified-premise mapping, six-area impact classification and no use of bounded witness failure as an unrestricted proof.
- **SC-005**: Every selected frozen historical artifact retains its exact bytes, identity and recorded meaning; old inconclusive reports remain old inconclusive reports. Fresh claims identify their actual verification context, incompatible cached claims are excluded from new-model reuse, and governance controls demonstrate that historical or inconclusive evidence gains no automatic proof authority.
- **SC-006**: Repeated runs with identical pinned inputs and verification context produce equivalent claims and the same authoritative attestation identity, preserving existing treatment of non-authoritative cache metadata.
- **SC-007**: Source issue wording, acceptance evidence and handoff documentation consistently distinguish the local precision repair, original C19's release-adoption gate and the separate global theorem. C19 is never reported as passed on diagnostic or source-only evidence.
- **SC-008**: Applicable existing conformance/regression gates pass, runtime/Model behavior and identities stay unchanged, and no new runtime operator, grouped invariant or Approval-specific rule is required.

## Assumptions

- This is precision completion constrained by soundness. The observed conservative overapproximation is not evidence of a runtime safety violation or a whole-verifier correctness proof.
- Mandatory equivalence coverage starts with identical supported typed definitions under equal captures and the existing quantifier/filter laws needed for total predicates, including the C19 conjunction. General algebraic equivalence solving and new query forms are outside scope.
- The original C19 module is pinned to ecosystem revision `44d6e5d4382e30504dd391ad6d53b1d68618d649`, BehaviorHash `sha256:a04ba37ab89e051e448abb760bd754bbb0955125fd22ba8da927b8529a531779`; corrected runtime or Model authoring is not a dependency.
- Existing Core typed-state validity, freshness, evidence/integrity and supported proof/profile boundaries remain normative. Separating global Approval base-state obligations does not relax those existing Core requirements.
- A future global theorem must separately establish its actual base state, complete action/effect coverage and framing, and validity across genesis, import and migration boundaries. The local correction neither supplies that theorem nor makes a general inductive framework an automatic requirement for Core feature completeness.
- The binding engineering rule is constitution VII, Semantic Authority and Proof Soundness, added in the accompanying 1.1.0 amendment. Its earlier wording was an uncommitted draft; these clarifications remain part of that single amendment from 1.0.1. Existing principles, test-first discipline and required quality gates also remain applicable.
- The proposed systematic soundness review of Core's derived representations is future work to scope independently. This feature's bounded impact review does not claim that such an audit has occurred or that all existing abstractions are certified.
- Specification/planning does not publish a release or adopt a new ecosystem pin. Core implementation acceptance and downstream C19 unblocking are related but separate milestones.
