# Evidence and assessment contract

Version `core034.evidence.v1`. Normative record semantics for the planned harness and report validator. These are separate research artifacts; no Core canonical ID or Safety evidence format is changed.

## General encoding and identity

Use bounded UTF-8 JSON with explicit format/version and strict typed required fields. Reject unknown versions, duplicate object keys, trailing bytes, invalid lengths and missing references. Semantic research records use deterministic key ordering, integer values and original canonical public Core/Safety documents; do not normalize those original documents through a new identity algorithm. No semantic floating-point times or environment paths.

SHA-256 over exact bytes identifies research artifacts; canonical research-record hashing uses its documented deterministic JSON representation and a distinct `core034` domain. Store a record's own digest in its parent/index. A digest is not proof validity, provenance authority or authorization. Timestamps, durations, host paths and resource samples are diagnostic envelopes, not semantic identity inputs.

Required parser limits before allocation/use:

| Item | Maximum |
| --- | ---: |
| Input/prepared manifest or assessment JSON | 16 MiB each |
| Public-backend packet | 64 MiB |
| One original Core record | 8 MiB |
| JSON nesting | 128 |
| Case/claim/source/premise identifiers | 128 UTF-8 bytes |
| Case definitions / observations in one index | 4096 / 16384 |
| Retained new evidence total | 2 GiB |

These are research limits, not a reclassification of Core or Safety language support. Exceeding them produces a scoped resource/unsupported result. Parsers may stream larger indexes only under a newly frozen version/profile; no silent cap change.

## Artifact DAG

1. `input-manifest.json`: exact source and profile identities, original expected semantic facts, planned roles/cases/controls/output slots, tool selection and limits. It precedes preparation and contains no invented future digest.
2. `prepared-manifest.json`: input digest, committed dependency lock and complete selected source tree/proof identities, actual tool/worker binaries, admitted module/action inventory and complete policy set, exact original/oracle record bindings and preparation receipts. It is frozen before measured candidate runs. Generated oracle records are labeled as sharing the trusted Core implementation and must satisfy authored expectations.
3. Role/attempt records: refer to both manifests and exact case/subject; reference original Core/Safety outputs rather than replace their validity. Control alterations occupy separately frozen input slots.
4. Closed-artifact manifest: exact final files, bytes and hashes after all relevant writers/processes/connections stop. Fresh validation rechecks these bytes; a later mutation invalidates that archive.
5. Assessment/report: references validated roles, sources, formal obligations and all comparison/control dispositions. It never gives itself authority by hashing itself into its own claim.

Output slots are create-once. A failed attempt, timeout, wrong archive or unrun case is retained. Corrections use a new attempt/input version and cannot replace a slow or failed observation. Prior 033/Safety bytes and verdicts are read-only.

## Required records

| Record | Required fields |
| --- | --- |
| Source | Repository, exact commit/path, content identity, locator, acquisition and original scope. |
| Origin entry | Category, claim wording, source refs, beneficiary/phase, interpretation, explicit/derived/proposal/unresolved classification, rationale and product decisions. |
| Subject | Engine/model/checker identities, exact module/policy/schema, lineage, complete start/end HistoryRefs, interval and expected authority. |
| Claim | One of six classes, subject, property/observation definition, threat/situation, premise refs, evidence refs, disposition and exclusions. |
| Comparison cell | Arrangement, situation, requested claim IDs, established subset, extra trust, gaps, evidence and cost refs. Exactly 24 cells. |
| Case | Frozen subject/expected outcomes, valid-control link, fixture, roles, measurements, repetitions, budgets and expected control reason. |
| Observation | Case/attempt/role, input/prepared hashes, exact subject, semantic/assurance/operational/cost outcomes, tool/source refs, interval/times, logs/artifacts/resources, stop reason and control result. |
| Formal result | Source/import/data/proposition identities, exact root theorem, complete premise/axiom audit, toolchain, kernel replay, mutation/countermodel outcome and remaining correspondence. |
| Decision | Scope status, all origin/claim/cell/control mappings, complexity dimensions, cost comparability, remaining product decisions and smallest justified next step. |

Resources distinguish enforced per-process address-space/affinity limits; direct-child waited CPU/RSS; observed process-tree RSS/VmSize/CPU with sampling interval; and exact/aggregate values genuinely available. Unknown values are `null` with a reason, never zero. Sampled/shared RSS is not an exact or shared-page-adjusted peak. Whole role/process time includes launch, IPC and output completion as defined in the campaign contract.

## Outcome separation

Each observation has four independent outcome fields:

- `semantic`: original exact Core code/result and decision/record refs, or `not_evaluated`.
- `assurance`: `established_under_premises`, `refuted`, `unestablished`, `unsupported`, `operational_failure`, `not_run`, with exact claim/premise reasons.
- `operational`: completed/build/tool/resource/interruption/archive outcome.
- `cost`: within/exceeded research envelope, not measured or not comparable; any product target separately names its complete endpoint.

`control_result` is separately `targeted_rejection`, `unexpected_acceptance`, `unexpected_rejection`, `operationally_unresolved` or `not_applicable`. A valid control must complete for a targeted rejection group to count as demonstrated. A successful command or expected exit code alone never establishes assurance.

An actual semantic refusal may be correctly checked. A proof tool rejection alone does not establish the application unsafe. Actual counterexample/refuted claims require a checked mathematical countermodel or confirmation by the authoritative Core semantics for the stated concrete subject.

## Independent consumers and recovery

The B packet includes typed public backend creation and successful commit data: genesis/versions, original transition documents, reference changes, removals and heads. Bound packet completeness to the independently expected origin, interval and endpoint; verify all applicable data and behavior replay and original identities. Packet reconstruction, producer success flags and supplied endpoint are not acceptance criteria.

Fresh consumption uses a separate process/workspace with only retained explicitly declared inputs, pinned code/tools and expected subject. It must not depend on a producer's private Store or cache. B intentionally reads/replays its declared history; it is not a C verifier. Record every input path and access scope. Missing/corrupt material cannot trigger undocumented acceptance fallback.

Private checked values may be used only after matching checks. On restart they are absent until re-established. Experiment sidecar segment records are not a new hidden application registry and do not constrain uncoordinated actual writers. If retained storage or a host provides trust, identify it in the claim.

## Final report validation

The validator must reject missing categories, repeated/missing cells, dropped controls, dangling or wrong-scope refs, changed file bytes, missing formal roots/axiom checks, implicit host premises, fabricated certificates, mislabeled memory durability, unqualified fresh-consumer claims and unsupported percentile summaries. It checks all FR/SC mappings, not merely that files exist.

A negative/conditional investigation can be structurally complete when all obligations have truthful dispositions and reproducible reasons. This does not make a failed experiment pass or establish the corresponding positive architecture claim. Report separately: investigation completeness, scoped candidate status, implementation gates and product adoption (always unactivated in this feature).
