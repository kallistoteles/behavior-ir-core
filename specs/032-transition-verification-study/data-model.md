# Data model: transition study 032

All types below are research artifacts. They do not extend Core state or existing record formats. Contract/schema identifiers begin `core032.*.v1`; numeric bounds and encodings are mandatory fields rather than implicit defaults.

## ReferenceSubject

- Exact admitted module bytes/BehaviorHash, SchemaHash and applicable record/semantic profile.
- Supported-template version and structural inventory: every action, expression, field, rule, effect and command declaration.
- Core source/archive digest, formal-model version, adapter/checker source digests.
- Support classification and reason for every unsupported construct.

Admission alone is insufficient for study support. The recognizer checks the complete typed module against the closed parameterized fragment. Added actions/rules cannot disappear from the inventory. Similar syntax or a producer-supplied hash cannot establish equivalence.

## OperationalState Ω

- Typed live entities and values, in canonical identity order.
- Historical used-identity set, including identities no longer live.
- Store/genesis identity, exact parent history reference/position and current StateId.
- Module/schema/profile context, including any history-bound declaration identity required by Core.

Live content is insufficient to reconstruct Ω. Used identities are typed keys under Core's lifetime contract, not a set of just currently live IDs. A snapshot lacking this metadata is incomplete for creation checking.

## AttemptInput

Action identity, complete parameter bindings, request/captured context and its provenance assumptions, expected parent/history, and publication metadata required by the applicable Core contract. Inputs must distinguish supplied values from trusted assertions. Canonical byte representation and typed interpretation are both bound by the manifest.

## ReferenceObservation

- Exact semantic outcome: ALLOW, refusal, or selected evaluation error.
- Resulting operational state and applicable commit candidate; no commit for refusal/error.
- Typed facts/reads, complete query memberships, canonical ordered rule/subject outcomes and other normative observations.
- Command bag represented as canonical occurrences with multiplicity; no promise about authored emission order or physical dispatch.
- Exact existing-profile bytes, or a study representation plus a declared reconstruction function and complete support.

A separate publication outcome records success, conflict, operational failure, or persisted-before-acknowledgement uncertainty. These cannot overwrite the semantic outcome. Equal state content after a command-only event does not imply unchanged history.

## MaintainedMeaning J and DerivedViews

`J(subject, Ω, context, views)` asserts exact equalities for declared query memberships/cardinalities, incoming-reference sets and retained rule results, including error/definedness and dependency context. Store view entries with query/rule identity, captures, semantic coordinates and complete dependency descriptors.

Lifecycle: `absent → rebuilding → valid(anchor) → valid(next_anchor)` or `invalid`. Only valid entries with matching coordinates can be reused. Unknown dependency means affected. Rebuild verifies full authoritative input before marking valid. A crashed partial update cannot publish valid views for an uncommitted state. These views are disposable derived information, not application state.

## TransitionWitness

Untrusted complete sorted input/output snapshots, lifetime-ID coverage, proposed exact effects, obligation results, selected outcome and canonical commands. Per-row/cell references use typed identity, not positional coincidence. The witness includes all required support and an exact accepted input anchor.

B verifies completeness independently against its input/anchor. Missing/extra/duplicate rows, stale context, invented commands, missing obligations or a wrong-but-safe poststate produce `InvalidWitness`. A valid witness may establish a business refusal/error. Those are different channels.

## VerificationClaim and EvidenceEnvelope

- Subject and checker/model identities; declared supported scope and finite capacities.
- Exact initial Ω or independently accepted reconstruction anchor.
- Attempt count, committed prefix position, proof microstep count and finalization state.
- Study history/output commitments and canonical output occurrence count.
- Existing Core anchor/endpoint/command identities and their independently checked bridge, when claiming Core binding.
- Proof tool/backend/source versions, parameter identity, cryptographic assumptions and implementation trust boundaries.
- Available support inventory, reconstruction promises, actual missing data and authorization exclusions.

Stable semantic claim identity excludes timings, environment paths and randomized proof bytes. Proof blob digests identify transported bytes separately. Digest representation must preserve all bits. Consumers enforce their expected claim rather than accepting whatever claim a proof returns.

## Result channels

| Channel | Values |
|---|---|
| Semantic execution | Allow / Refused / EvaluationError |
| Witness/checker | Accepted / InvalidWitness / Unsupported |
| Proof | Verified / InvalidProof / ResourceExhausted / ToolFailure / NotProduced |
| Core identity bridge | Matched / Mismatch / Unavailable / NotClaimed |
| Data reconstruction | Available / MissingSupport / CorruptSupport |
| Publication | Committed / Conflict / OperationalFailure / AckUnknown / NotAttempted |
| Authority | ExternalAssumption / IndependentlyChecked / NotClaimed |

Combined verified-Core acceptance requires verified proof, matched bridge and exact expected subject/anchor/endpoint. Availability and authority remain explicit independent claims; missing data prevents operations requiring that data. No status is silently coerced into ALLOW, DENY or authorization.

## ExperimentManifest, AttemptRecord and DecisionDossier

The immutable manifest binds source archives, binaries, locks/toolchain identities, model/cases, hand oracles, contract versions, CPU/resource profile, primary points/repetitions and usefulness criteria. A revision creates a new campaign.

Early proof-smoke and final comparative manifests are distinct immutable subjects. Include circuit/parameter-generation recipe identity and measurement mode (`first-use` or `reuse`) in each run's experiment coordinates. First-use has no generated-parameter input; its parameter/key artifact identities are recorded as outputs. Reuse names exact parameter artifacts with provenance and measures loading/validation. Neither mode can use previous proof acceptance as authority. These measurement coordinates do not alter the mathematical semantic claim.

An attempt records case/candidate/repetition, effective conditions, every phase, outcome, raw log/artifact hashes, bytes, resources, counters and uncertainty. Missing metrics are null with reasons, never fabricated zeros. Failed attempts remain indexed. Coverage validation compares expected attempts to actual unique records.

The dossier maps each candidate and consumer profile to correctness support, supported scope, measurements, amortization/capacity, assumptions, residual obligations and adopt-for-follow-up/defer/no-go disposition. No research disposition authorizes production adoption.
