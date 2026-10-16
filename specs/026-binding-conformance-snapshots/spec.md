# Feature Specification: Complete Parent Snapshots for Binding Conformance

**Feature Branch**: `026-binding-conformance-snapshots`

**Created**: 2026-10-15

**Status**: Clarified — user-supplied mathematical contract integrated; ready for planning.

**Input**: Specify [Core issue #29 — Binding conformance fixtures lack complete parent snapshots](https://github.com/kallistoteles/behavior-ir-core/issues/29). Restore usable, Core-owned binding examples under current evaluation rules, add regression protection, and preserve historical evidence. User refinement: a conformance fixture must represent one unambiguous, complete, consistent and valid parent state and reproduce a specified semantic result under an exact Core revision; presence of universe sections alone is insufficient.

**Specification baseline**: Current Core `main`, `a24b65d26efaf62342daf5ab0f455540dfd61ed1`, after PR #30. The published affected release is 0.13.0. Inspection confirmed that the relevant fixtures and evaluation sources match the validated pre-merge source; all ten supplied binding requests still produce `INVALID_INPUT` / `INVALID_STATE_SNAPSHOT` when evaluated unchanged.

## Clarifications

### Session 2026-10-15

The following decisions were supplied directly by the user before the clarification pass; they are not answers to newly asked questions.

- Q: What makes a behavioral conformance fixture admissible? → A: It must describe one unambiguous parent state that is complete, internally consistent and valid under the admitted module, with explicit input/context and an independently specified result under a pinned Core revision.
- Q: May missing worlds be completed from bound entities or assumed empty types? → A: No. The generator must start from an explicitly authored test world. Empty universes must be deliberate assertions, never inferred from missing data.
- Q: What must semantic result comparison preserve? → A: Decisions, meaningful refusal reasons, effects, applicable command intents and multiplicity, and required identities must remain observable. A precisely specified comparison may exclude only metadata the existing contract classifies as nonsemantic.
- Q: Do invalid-snapshot negatives count among the ten behavioral examples? → A: No. The ten examples are valid-world ALLOW/DENY cases. Incomplete, inconsistent and invalid-parent controls are separate and retain their existing failure classes.
- Q: What may the correction change? → A: Keep this a bounded Core feature for fixture soundness and executable conformance: correct authoritative generation, current fixtures and regression/distribution checks, preserve historical evidence, and add no Core primitive or semantic relaxation.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Run the supplied binding examples unchanged (Priority: P1)

A binding maintainer takes the examples supplied by Core and evaluates each allowed and refused case. Each example describes one explicit, complete, consistent and valid starting world under the selected Core revision, so the maintainer can compare intended semantic results without inventing missing entities or adapting requests locally.

**Why this priority**: All ten current examples fail before their intended rules are reached. This prevents consumers from using the conformance package for its advertised purpose.

**Independent Test**: Establish completeness, consistency and parent validity for all ten worlds, then evaluate the distributed requests unchanged under the pinned Core revision. Compare the authoritative expected decision, refusal evidence, effects, applicable commands and identities using the declared semantic comparison.

**Acceptance Scenarios**:

1. **Given** each of the five current binding modules, **When** its supplied `allowed` request is evaluated unchanged, **Then** the decision is `ALLOW`, its expected field or lifecycle effects occur, and the resulting state satisfies the existing validation rules.
2. **Given** each corresponding `refused` request, **When** it is evaluated unchanged, **Then** the decision is `DENY` with the intended `PRECONDITION_FAILED` reason and no applied changes; snapshot rejection or an unrelated error does not satisfy this scenario.
3. **Given** the current conformance package outside the Core checkout, **When** a consumer selects the documented module and request files, **Then** those same ten cases run without a consumer-owned world builder, request repair, or access to private test data.
4. **Given** a fixture with universe sections for every type, **When** its bound values, observations and state rules are checked, **Then** it is eligible for behavioral conformance only if those checks establish one consistent valid parent; section presence alone is insufficient.

---

### User Story 2 - Detect incomplete or inconsistent examples before delivery (Priority: P1)

A Core maintainer receives an actionable regression failure when a binding example stops exercising its intended rule. Valid examples and deliberately invalid controls demonstrate that the complete-parent requirement remains enforced.

**Why this priority**: The defect escaped because the binding examples were generated and packaged without testing their decisions. A correction must prevent that same drift.

**Independent Test**: Exercise the distributed examples in Core's required checks, then remove a required parent section or contradict an existing observation and confirm refusal under the existing validation contract.

**Acceptance Scenarios**:

1. **Given** the current ten-case corpus, **When** normal Core regression checks run, **Then** every case is evaluated and compared with independently specified expected results; no required case is silently skipped.
2. **Given** a complete example, **When** a required entity universe is omitted, **Then** fresh evaluation retains the existing incomplete-snapshot refusal instead of treating the missing universe as empty.
3. **Given** a snapshot that contradicts bound state or supplied reference/query observations, **When** it is evaluated, **Then** the existing applicable input-validation refusal remains distinct from a valid domain denial.
4. **Given** a generator or fixture change that makes an allowed case fail or a refused case allow, **When** regression checks run, **Then** the mismatch fails the checks with the domain and case identified; expectations are not regenerated from that execution to conceal it.
5. **Given** a complete, internally consistent parent that violates an applicable state constraint, reference obligation or invariant, **When** the separate invalid-parent control runs, **Then** the existing invalid-parent refusal remains observable and does not count as a behavioral DENY case.
6. **Given** two results with the same decision but different authoritative effects or refusal reasons, **When** the declared comparison is applied, **Then** they differ; applicable command multiplicity and required identities cannot be erased to make a comparison pass.

---

### User Story 3 - Preserve historical conformance while publishing current examples (Priority: P2)

A consumer can distinguish runnable current examples from historical inputs and decision records. Maintainers can regenerate and package the current examples without altering historical evidence or the identities of the example modules.

**Why this priority**: The existing binding files are included in feature 017's immutable archive inventory. Correcting current examples must not silently reinterpret that evidence.

**Independent Test**: Compare historical files and module identities with their pinned baseline, regenerate current examples twice, and evaluate the examples extracted from a candidate conformance package.

**Acceptance Scenarios**:

1. **Given** the historical binding inputs, source requests, records and archive manifests, **When** current examples are introduced, **Then** those historical artifacts retain their original bytes and replay meaning, and the five binding modules retain their canonical bytes and identities.
2. **Given** the same declared fixture worlds and generation inputs, **When** current examples are regenerated twice, **Then** both outputs are identical and agree with the checked-in current examples.
3. **Given** a candidate conformance package, **When** it is extracted into an otherwise empty working directory, **Then** documentation identifies the current examples and their expected decisions, and evaluation/replay requires no files or hidden fixture completion from the source checkout.

### Edge Cases

- A declared entity type with no members requires an explicit empty universe. An omitted universe is unknown, not evidence that the type is empty.
- A bound state entity must agree with its complete snapshot row; conflicting copies must remain invalid.
- Reference observations require the actual typed referencing rows in the fixture world. An incoming-reference assertion alone cannot substitute for a complete parent.
- Query examples may involve unbound entities or references to other entities. Their complete worlds must include the actual supporting rows, including those unrelated to the selected state parameter when required for validity.
- Context parameters retain their existing role. A context entity or a plain identifier is not automatically an assertion of persisted membership or a reference target.
- A zero-revenue project must be denied by its existing guard; a division error or snapshot error is not an equivalent refused example.
- A customer with an open order and a customer referenced by an account must fail their intended guards, rather than pass because supporting rows were omitted.
- The same source request can be historical evidence in one use and the starting point for a current example in another. Its historical role must not be overwritten to fix the current use.
- Intentionally malformed or incomplete negative fixtures must remain invalid controls; they must not be swept into automatic fixture completion.
- Every type can be present while the world is still invalid: wrongly typed values, duplicate/conflicting identities, dangling references or violated invariants must not pass as complete valid worlds.
- Two serializations of the same typed value may have an existing canonical equivalence, but comparison must not round numbers, erase a relevant witness or deduplicate command intents.
- These five legacy modules introduce no command declarations. Command assertions must follow their actual profile, including applicable absence/emptiness; coverage must not invent a command workload or silently broaden the module semantics.

## Requirements *(mandatory)*

### Scope and semantic contract

This feature establishes fixture soundness and executable conformance for the `invoice`, `project_margin`, `accounts`, `ledger` and `orders` examples, their authoritative generator/source worlds and the Core conformance distribution. It corrects conformance evidence, not Core's definition of valid evaluation.

### Mathematical model

Let \(B\) be an admitted Behavior module, \(\mathcal T(B)\) its declared entity types, \(v\) the exact Core revision with its applicable profiles, \(a\) an action, \(\beta\) its state bindings, \(I\) its input, \(C\) its explicit context, \(S\) its parent state and \(F_S\) the supplied observations. Any required historical evidence remains explicit under Core's existing contract; a live universe does not invent used-identity history.

For each type \(T\), its finite parent universe is a partial map:

\[
U_S(T):Id(T)\rightharpoonup EntityValue(T).
\]

**Completeness** requires the exact declared type domain and complete membership:

\[
\boxed{\operatorname{dom}(F_S.universe)=\mathcal T(B)}
\qquad
\boxed{F_S.universe(T)=U_S(T)}.
\]

An explicitly empty universe is a valid assertion about the authored world. A missing universe is unknown:

\[
T\notin\operatorname{dom}(F_S.universe)
\not\Rightarrow U_S(T)=\varnothing.
\]

**Consistency**, written \(Consistent_B(F_S,\beta,S)\), means that all supplied observations and state bindings describe the same state according to existing Core semantics. Every state-bound entity appears with the same typed identity and value in its universe. Repeated descriptions, fields, existence, reference and query observations must agree wherever supplied and applicable. No observation may contradict the authored world. Context values retain their declared role; an Id is not silently reinterpreted as a Ref.

**Parent validity**, written \(Valid_B(S)\), is the existing state-validity predicate: typed values and canonical identities, applicable reference integrity, entity constraints/invariants and module invariants must hold without evaluation errors. It is independent of universe completeness:

\[
Complete_B(F_S)\not\Rightarrow Valid_B(S).
\]

A current behavioral fixture must identify one parent state, up to Core's existing canonical semantic equality, and establish:

\[
\boxed{Complete_B(F_S)\land Consistent_B(F_S,\beta,S)\land Valid_B(S)}.
\]

These are separate proof obligations over the explicit fixture world, not permission to fill omissions from bindings. An intentionally invalid control is outside this behavioral fixture domain. State validity must be established before an ALLOW/DENY result is accepted as behavioral conformance; no new evaluator phase or validation primitive is introduced.

**Deterministic evaluation** under the pinned revision is:

\[
Eval_{v,B}(a,\beta,S,I,C)=R.
\]

\(R\) is Core's authoritative result, conceptually \(ALLOW(\Delta S,K,\ldots)\) or \(DENY(reasons,\ldots)\), where \(K\) denotes command intents only where the existing profile supports them. Invalid input/snapshot, integrity refusal and evaluation failure are distinct classes, not alternative successful interpretations of a behavioral denial. Evaluation describes an allowed candidate transition; it does not itself establish a Store commit or command delivery. Denied cases must have no applied/committed state change or committed command delivery.

**Semantic comparison and cross-binding conformance** use one explicitly defined \(N_{v,B}\), not a binding-specific selection of convenient fields. For equivalent module constructions through two conforming bindings \(L_1,L_2\):

\[
Meaning_v(L_1(B))=Meaning_v(L_2(B)),
\]

\[
\boxed{N_{v,B}(Eval_{L_1}(f))=N_{v,B}(Eval_{L_2}(f))=Expected_f}.
\]

The bindings call the same Core semantics; this equation does not authorize independent evaluator implementations. The comparison must preserve:

| Semantic component | Required comparison |
| --- | --- |
| Version, module and action | Exact pinned Core/profile identity and required behavior, action and item identities |
| Decision and refusal | Exact decision class, relevant reason codes and authoritative subject/obligation evidence; preserve existing meaningful order |
| State effects | Typed field deltas and lifecycle effects, including identity, before/after values and the resulting semantic state |
| Commands | Applicable command identity, payload and multiplicity under the existing profile; no set conversion that loses multiplicity |
| Evidence and record identity | Required semantic observations, validity witnesses and defined result/record hashes wherever the existing conformance contract requires them |

Only metadata already classified as nonsemantic by the applicable Core contract may be excluded. Normalization must not hide changed decisions, reasons, effects, commands or required identities. Existing canonical value equivalences remain authoritative; no new rounding/coercion or relaxed equality is introduced. Planning must bind these components to an exact field/identity comparison for the pinned profile before tests are implemented, and identify any excluded diagnostic fields explicitly.

### Required fixture coverage

The intended decision matrix is:

| Domain | Action | Allowed case | Refused case |
| --- | --- | --- | --- |
| invoice | `approve_invoice` | Within the actor's approval limit: `ALLOW` | Above the limit: `DENY` / `PRECONDITION_FAILED` |
| project_margin | `flag_project` | Positive revenue and the existing high-risk condition: `ALLOW` | Guarded zero revenue: `DENY` / `PRECONDITION_FAILED` |
| accounts | `remove_customer` | No incoming account reference: `ALLOW` | Existing incoming account reference: `DENY` / `PRECONDITION_FAILED` |
| ledger | `transfer` | Existing affordable positive transfer: `ALLOW` | Existing unaffordable transfer: `DENY` / `PRECONDITION_FAILED` |
| orders | `close_customer` | No open order for the selected customer: `ALLOW` | Existing open order for that customer: `DENY` / `PRECONDITION_FAILED` |

Existing action inputs, guards and module meaning remain authoritative. Adding explicit supporting state is not permission to change a scenario to obtain its label. Expectations must describe the intended effects and relevant refusal evidence independently of generated actual records.

Historical binding files are listed in [feature 017's archive manifest](../../tests/fixtures/resulting-state-validity/archive-manifest.json). The correction must provide a separately identifiable current corpus and direct consumers to it; it must not overwrite those archived files or update their recorded digests to make changed history appear original. Planning selects the current corpus's concrete location and documentation layout. Published release archives are immutable.

### Functional Requirements

- **FR-001**: Core MUST provide one self-contained current allowed request and one self-contained current refused request for each of the five binding modules, covering all ten cases in the decision matrix. Each fixture MUST pin the applicable Core revision/profile and identify its explicit parent world, bindings, input, context and independently specified semantic expectation.
- **FR-002**: Every current request MUST include an explicit complete parent universe for every declared entity type, consistent with its state bindings, semantic value types, identities and supplied observations. Empty membership MUST be an explicit fixture-world assertion. Neither the generator nor a consumer may infer complete membership from bound entities alone or treat an omitted type as empty.
- **FR-003**: Each allowed case MUST produce `ALLOW` with its independently specified field/lifecycle effects and applicable command intents. Each refused case MUST produce `DENY` with its intended precondition refusal, no applied/committed state changes and no committed command delivery. `INVALID_INPUT`, `INVALID_STATE_SNAPSHOT`, integrity refusal, `ERROR` or an unrelated denial MUST NOT count as the intended result. Evaluation alone MUST NOT be reported as a successful commit.
- **FR-004**: The current distributed requests MUST run unchanged through Core's supported plain-request evaluation path, including the supplied command-line evaluator. Tests and downstream consumers MUST NOT patch them, add missing state, strip evidence or select weaker validation to obtain success.
- **FR-005**: Core's required regression checks MUST discover and evaluate the actual current binding corpus and assert all ten intended semantic results under the pinned Core revision. Missing, duplicate or unclassified current cases MUST fail coverage rather than be silently omitted. Tests MUST identify failures by domain and case, assert required effects/reasons/commands/identities and MUST NOT derive expectations from the actual evaluator output.
- **FR-006**: Separate negative controls MUST cover omission of a required universe, inconsistency between a complete world and bound state or supplied observations, and a complete consistent parent that violates applicable state-validity requirements. Existing refusal categories and validation phases MUST remain enforced. These controls MUST NOT replace any of the ten valid-world behavioral cases.
- **FR-007**: The authoritative fixture generator MUST produce the reviewed complete current requests from explicitly declared test worlds. Correcting generated output by hand without updating its authoritative source is insufficient. Regeneration MUST be deterministic and MUST NOT reintroduce incomplete historical requests, change historical fixture files or silently update expectations to match runtime output.
- **FR-008**: Planning MUST inventory every source used to construct these ten binding requests and its relevant uses, classifying historical evidence, current fresh evaluation and intentional negative inputs. Correct current uses or supply separate current variants as needed; do not expand this into an unrelated rewrite of the entire fixture corpus.
- **FR-009**: Historical requests, decision records, golden expectations, archive manifests and published release assets MUST retain their original bytes and interpretation. The five binding modules MUST retain their existing canonical bytes, behavior/item hashes and declared semantics.
- **FR-010**: Core MUST clearly identify the current corpus, expected results, applicable evaluation contract and relationship to historical examples in consumer documentation. Historical examples MUST NOT remain the undocumented default route for current binding conformance.
- **FR-011**: Candidate conformance packaging MUST include the current examples, their required modules and result expectations. Verification of extracted package contents MUST demonstrate that all ten current cases evaluate unchanged without source-checkout-only files or consumer-owned fixture knowledge. Resulting current records MUST replay consistently under their own recorded profile.
- **FR-012**: The correction MUST preserve the existing evaluator, query/lifecycle/reference meaning, complete-parent validation, canonicalization, supported historical profiles and rejection boundaries. It MUST NOT introduce implicit snapshot completion or a new production semantic rule to accommodate faulty examples.
- **FR-013**: The delivery MUST remain owned by Core. An ecosystem workaround is not acceptance, and no release publication, tag change or replacement of the existing 0.13.0 conformance asset is authorized by this feature.
- **FR-014**: Every behavioral fixture MUST represent one unambiguous parent state under Core's existing canonical semantic equality. Before accepting its business-rule outcome as conformance, evidence MUST separately establish completeness, consistency of all supplied facts/bindings and `Valid_B(S)`, including applicable typing, identity, reference, constraint and invariant obligations. Universe-section presence or an observed DENY is not proof of parent validity.
- **FR-015**: Core MUST publish the precise semantic comparison contract for these fixtures under the pinned revision/profile. It MUST preserve all authoritative components listed in the mathematical model and required module/result identities, explicitly classify any excluded diagnostic metadata, and reject meaningful differences even when decision labels agree. No binding-specific weakening of normalization is permitted.

### Proof obligations

Planning MUST map each obligation to the explicit fixture-world evidence, existing enforcing Core checks and required executable regression/package controls. An unresolved obligation blocks implementation planning; the response must identify the unresolved contract rather than weaken it.

- **PO-001 — Completeness**: For every current fixture \(f\), \(\operatorname{dom}(F_f.universe)=\mathcal T(B_f)\) and each universe equals the declared test world's full typed membership, including deliberate empty types.
- **PO-002 — Consistency and unambiguity**: There is a state \(S_f\) such that \(Consistent_{B_f}(F_f,\beta_f,S_f)\); any state represented by that same complete fixture is semantically equal to \(S_f\). All state-bound values and applicable observations agree with it. Historical-only facts retain their explicit evidence contract.
- **PO-003 — Parent validity**: \(Valid_{B_f}(S_f)\) holds independently of whether the action is allowed. Establish applicable type, identity, reference and invariant/constraint obligations using the existing Core semantics.
- **PO-004 — Behavioral fidelity**: \(N_{v,B_f}(Eval_{v,B_f}(a_f,\beta_f,S_f,I_f,C_f))=Expected_f\). Expectations are independently specified; invalid-snapshot or unrelated failures do not satisfy the equation.
- **PO-005 — Reproducibility**: Regenerating from the same pinned sources and declared worlds produces identical authoritative fixture content and preserves deterministic evaluation/replay at that revision.
- **PO-006 — Historical preservation**: Frozen archived fixture bytes, recorded identities, profile interpretation and published assets remain unchanged.
- **PO-007 — No semantic relaxation**: Only supplied current conformance evidence, generation, documentation and executable validation change. Existing evaluation validity, refusal phases and business rules remain authoritative; no new Core primitive is required.
- **PO-008 — Comparison fidelity**: The declared comparison preserves meaningful decisions, reasons, effects, applicable commands/multiplicity and required identities. Separate comparator controls must detect changed authoritative output even when the top-level decision is unchanged.

### Acceptance criteria

- **AC-001**: All ten current requests reach the independently specified behavioral outcome on the exact pinned Core revision.
- **AC-002**: Every declared entity type has an explicit, complete universe matching the intended test world.
- **AC-003**: All state bindings, identities, values and supplied observations agree with that same parent state.
- **AC-004**: Every behavioral fixture's parent satisfies `Valid_B(S)` independently of action allowance.
- **AC-005**: Allowed fixtures produce the expected authoritative state effects and applicable command intents.
- **AC-006**: Denied fixtures reach the intended precondition refusal with no applied/committed changes or committed command delivery.
- **AC-007**: Separate omitted-universe controls retain the appropriate invalid-snapshot refusal; inconsistency and invalid-parent controls retain their applicable existing refusal classes.
- **AC-008**: Required Core regression checks discover and execute every current binding case automatically; missing or unclassified cases cannot pass unnoticed.
- **AC-009**: An extracted candidate conformance package supplies runnable corrected examples, expectations and replayable current results without private completion data.
- **AC-010**: Frozen historical archives, inputs, module identities and published artifacts remain unchanged.
- **AC-011**: No evaluation semantics, complete-parent requirement, history interpretation or validation phase is relaxed.
- **AC-012**: External bindings need no fixture-specific state completion workaround to execute the published current examples unchanged.
- **AC-013**: Authoritative generation reproduces the reviewed current corpus identically from pinned inputs and explicitly declared worlds.
- **AC-014**: The semantic comparison is precisely documented and detects meaningful effect/reason/identity differences with equal decision labels; applicable command multiplicity is preserved.

### Definition of done

The feature is complete when the ten current examples identify complete, consistent and valid parent worlds, reproduce their independent semantic expectations under the exact supported Core revision, and can be generated and executed as distributed. Required Core checks enforce these contracts, the PO/AC evidence mapping is complete, and historical evidence and production semantics remain unchanged. A consumer's ability to guess or repair missing state is never part of conformance.

The governing principle is:

\[
\boxed{ConformanceFixture=CompleteWorld+ConsistentWorld+ValidWorld+DeterministicEvaluation+VerifiedExpectedResult}.
\]

### Key Entities *(include if feature involves data)*

- **Binding module**: One of the five existing admitted example behaviors whose meaning and identities bindings compare.
- **Current conformance case**: A pinned Core revision/profile and admitted module, explicit complete consistent valid parent world, state bindings/action/input/context and an independently specified semantic expected result.
- **Complete parent world**: Full typed membership of every declared entity type at the starting position, including explicit empty memberships. Completeness alone supplies neither observation consistency nor state validity.
- **Semantic result comparison**: One declared profile-specific comparison that preserves decisions, relevant reasons/witnesses, typed effects, applicable commands/multiplicity and required identities while excluding only already nonsemantic metadata.
- **Historical fixture**: An immutable input, expected result, record or manifest retained for its original producer/profile and replay contract.
- **Conformance package**: Core-owned distributed modules, requests, expectations and documentation sufficient for an external consumer to reproduce the advertised examples.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: All ten current examples separately establish complete, consistent and valid parent worlds and reach their intended semantic outcomes unchanged under the pinned revision: five `ALLOW` and five `DENY`, with expected effects, applicable commands, precondition reasons and required identities. Zero snapshot/integrity/encoding/evaluation failures replace a behavioral outcome.
- **SC-002**: A consumer can run all ten examples from an extracted candidate package with zero request edits, added entities, hidden fixture files or downstream completion helpers; all resulting records replay consistently.
- **SC-003**: Separate omission, inconsistency and invalid-parent controls are refused under the existing validation rules. A wrong expectation, incomplete world, missing case or unclassified case fails the required regression checks. All ten behavioral cases execute without silent skips.
- **SC-004**: All five module identities and canonical representations remain unchanged; all inventoried historical artifacts and previously published release assets retain their original bytes and interpretation.
- **SC-005**: Two regenerations from identical declared fixture inputs produce identical current corpora, matching the reviewed distributed files, while producing no changes to protected historical fixtures.
- **SC-006**: Every source feeding the ten-case corpus has a documented historical/current/negative role, and consumers have one explicit current entry point with independently specified expectations. No Core requirement depends on retaining the ecosystem's temporary fixture-completion workaround.
- **SC-007**: One precisely documented semantic comparison covers 100% of the authoritative component categories applicable to each fixture's profile. Equal decision labels with a changed required effect, refusal reason or identity fail comparison; applicable command multiplicity is never discarded.

## Assumptions

- This is a bounded Core fixture/conformance correction for issue #29. The complete-parent requirement introduced by feature 017 is intentional and remains normative.
- The existing labels mean `ALLOW` and domain `DENY`, as corroborated by the source request expectation tables and action guards. They do not mean merely successful decoding or any nonzero exit status.
- Worlds are explicit, deterministic test data reviewed against the module. The generator requires a complete declared world; it cannot silently default omitted types to empty or synthesize the world solely from state bindings. Supporting entities are authored where required; missing historical rows cannot be inferred as facts about a real state.
- The legacy files in `tests/fixtures/bindings/`, their source requests under `tests/fixtures/requests/` and their recorded archive digests remain historical evidence. A current corpus may reuse the unchanged module files, but current requests and consumer navigation must be separately identifiable.
- The source generator currently lives at `tests/fixtures/wire/build_fixtures.py`; its `binding_fixtures` section is provenance for planning, not a prescribed implementation design.
- This specification follows the existing constitution's test-first, deterministic replay and required quality-gate obligations. The exploratory ten-case reproduction establishes the defect; it does not claim that implementation tests have been authored or a fix delivered.
- Core Release 0.13.0 is the affected release and compatibility baseline, not a claim that corrected current fixtures were executed on that published binary. Planning pins the exact candidate/release revision and its profiles; acceptance must not substitute an unversioned installation or a different CLI for that revision.
- Planning must select the concrete fixture layout, exact semantic field/identity comparison, checked expectation representation and packaging-validation approach, and map PO-001–008 to executable evidence. This phase updates only the specification and its requirements-quality checklist; it does not implement or release the correction.
