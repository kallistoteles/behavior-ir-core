# Data model: investigation 034

Planning design, 2026-11-14. These are research records, not new Core state or identity formats. [Evidence contract](contracts/evidence.md) defines transport/validation; [assurance contract](contracts/assurance.md) defines authority.

## Source and requirement provenance

**SourceRef**: stable source ID, repository, exact commit, path, blob/content digest, section/line locator, acquisition method and original claim scope. Local checkout location is diagnostic metadata, not source identity. A source hash proves byte binding, not mathematical validity or original user intent.

**RequirementOrigin**: ID, category, requested guarantee, beneficiary, lifecycle phase, source references, relevant wording/context, interpretation, classification (`explicit`, `derived`, `proposal`, `unresolved`), justification and decision dependencies. The eight categories are program certification, initial validity, enforcement, history correctness, new recipient, replay restriction, finality and timing.

**ProductDecision**: question, options, trust/guarantee/cost consequences, supporting source/claim references and status (`unresolved`, `proposed`, `explicitly_decided`). Historical approval of an experiment does not populate `explicitly_decided` for a production contract.

## Subjects and assurance

**Subject**: exact engine/model/checker versions, admitted module hash, complete policy-set identity, schema, Store/lineage identity, complete start and expected end `HistoryRef`, interval, declared origin authority and applicable module/policy segments. Keep original Core identifiers unchanged. An endpoint contains state, position and history anchor; state content alone cannot identify the interval.

**Claim**: ID, class, subject, property/complete observation definition, requested threat model and verifier situation, premises, proof/correspondence/control references, assurance disposition and exclusions. Six classes: `program_preservation`, `state_validity`, `exact_transition`, `segment_safety`, `exact_prefix`, `authoritative_publication`.

**Premise**: ID, precise proposition, responsible authority, enforcement/checking method, scope, evidence references and status (`checked`, `explicit_trust`, `unestablished`, `violated`). A known failed module-proof obligation cannot be moved to `explicit_trust`. Runtime/library correspondence and host trust must not be hidden as mathematical conclusions.

**Arrangement**: A/B/C ID, mechanism description, trusted authorities, claim coverage, basis establishment, failure/recovery rules and lifecycle work. An arrangement may be conditional without satisfying the strongest threat model.

**VerifierSituation**: one of eight scenarios, information already available, accepted authorities, retained verified state, required incoming material and requested claim. Every arrangement/scenario comparison cell refers to one explicit requested claim before reporting coverage.

## Basis and deployment lifecycle

**BasisDescriptor**: subject, verified interval, established claim IDs, evidence root, owner/verifier identity and correspondence/trust conditions. Serialized descriptors are unverified data. Actual worker authority is a private checked value created by validation, never by deserialization.

Basis transitions: `absent → supplied_unverified → checking → established_under_premises`; unsuccessful checking yields `unestablished`, `unsupported` or `operational_failure`. A stale/invalidated established basis loses authorization. Continuing verification may extend an established basis only for the exact parent and compatible subject. Recovery from untrusted bytes repeats checks; trusted retained storage is a separately declared premise.

**DeploymentSegment**: exact module/policy tuple, starting full history anchor, validation/certificate references, coordination authority, covered committed interval, activation/deactivation evidence and enforcement premise. `inactive → certificate_checked → boundary_held → state_validated → active`; mismatch, migration, restart or rule/policy change returns to `inactive` before further controlled writes. Failed activation releases coordination without an active segment. No process-local active flag survives restart as authority.

Adjacent segments compose only at an exact shared boundary. Different safety properties need checked implications into any claimed common global property. A new safe segment does not certify an earlier gap. Sidecar host evidence is assurance material with named authority, not a hidden business-state registry or an independently trusted execution proof.

## Input and output DAG

**InputManifest**: format/version, sources, experiment code/tool identities, limits, case plan, authored expected semantic facts, arrangement/threat/claim definitions and immutable output slots. Created before builds and attempts; no future artifact digest is invented.

**PreparedManifest**: input-manifest digest, actual locked dependency/build identities, compiled worker/proof outputs, admitted module/policy/action inventory, trusted certificate-checking results, concrete expected-record identities and preparation observations. Generated reference records identify their shared Core oracle; authored business expectations are checked before freezing them. No measured candidate starts before this subject/expected-output binding exists.

**CaseDefinition**: case ID, arrangement, scenario, requested claims, fixture/subject, initial resources, expected complete semantic facts, expected assurance/operational disposition, measured endpoint, repetitions and control linkage. Frozen definitions cannot be edited after observing results.

**Observation**: case/attempt/role IDs, manifest references, exact subjects, separate semantic/assurance/operational/cost results, start/end clocks, measured endpoint, resource fields, inputs/outputs/log hashes and stop reason. A semantic refusal can be a successfully verified result while advancing no committed history.

**ArtifactRef**: relative path, byte count, digest and role. The referenced bytes must exist after all writers close. A record's own digest lives in its parent/index, not its own hashed body. Artifacts do not confer their own authority.

## Statuses and decision

- Semantic outcome: original Core result and full decision/record reference, or `not_evaluated`. Preserve exact original refusal/error codes.
- Assurance disposition: `established_under_premises`, `refuted`, `unestablished`, `unsupported`, `operational_failure`, `not_run`. A targeted rejection is an observed control result with the rejected claim and reason, not proof that all alternatives are unsafe.
- Operational outcome: `completed`, `build_failed`, `tool_failed`, `resource_stopped`, `interrupted`, `invalid_archive`, `not_run`.
- Cost disposition: `within_research_envelope`, `exceeded`, `not_comparable`, `not_measured`; product-target assessment is separate and names its endpoint.
- Candidate decision: `supported_for_declared_scope`, `conditional`, `rejected`, `undetermined`. None means production adoption.

**DecisionRecord** links origin entries, all 24 comparison cells, all fifteen controls, formal targets, observations, complexity dimensions, open obligations and product decisions. It reports investigation completeness independently from architecture feasibility and implementation completion.

Relations: sources justify origins; origins motivate claims; claims name premises and subjects; arrangements establish or fail those claims in situations; observations test frozen cases; decisions cite the complete evidence graph. Missing references, cycles that grant self-authority, unsupported versions and scope mismatches invalidate acceptance.
