# Research Data Model

These are research artifacts, not new Core entities, Store documents or runtime state. Field names below define the minimum logical record; compact JSON/JSONL may reuse existing collector conventions.

## CampaignManifest

- `format`: `core031.campaign.v1`; `campaign_id` and date. The frozen manifest contains only immutable subject, case, profile and artifact bindings; its identity covers all manifest bytes. Lifecycle state is not a manifest field.
- Source commit plus file-tree/patch digest, lock/toolchain/harness/profile identities, exact binaries per mode and declared backend/evidence/record profiles.
- Environment: platform, CPU/affinity, available memory and process limits, durability, cache conditions, load/isolation observations and filesystem free space.
- Case inventory, repetition/order policy, resource limits, measurement boundaries, counter definitions and reference-artifact inventory.
- Relationship: owns immutable ResearchCases and references all observations and candidate patch identities.

Validation: unique identities, complete hashes/profile versions and declared levels; cannot silently change after freezing. Never infer Core authorization from the manifest hash.

Lifecycle: `Draft → Frozen → Collecting → Collected → Assessed`; interrupted campaigns remain `Incomplete`. Record these transitions as append-only `status.jsonl` events bound to the frozen manifest digest. Status events never alter the manifest or its identity. A changed protocol produces an explicitly related new manifest/campaign, retaining the old attempt.

## ResearchCase

- Stable case ID; module/schema/Behavior identity, seed/history/request/context definitions and exact expected outcomes.
- Factors: initial live entities N, prepared history H, actual changed identities D, query/filter/rule descriptors Q, requested payload size and actual required evidence bytes B.
- Fixed transition sequence/window, cold/warm setup, designated final drain, read/replay/history/recovery subscenario and interaction labels.
- Independently specified expected outcomes plus separate frozen full-reference artifacts.

Validation: at least three levels per required axis across the campaign; fixed measured window for history scaling; byte size measured rather than inferred from the payload parameter. Constant-true rules are controls, not evidence of affected global maintenance.

## ReferenceObservation

- Case and exact semantic subject/profile; decisions, typed failures/refusals, selected error/trace order, reads, changes, commands and occurrence identities.
- Canonical decision/bundle/transition documents, entity versions, StateId, exact history/head and applicable replay reports.
- Artifact location, byte length and digest; independent oracle assertions and how they differ from the shared Core reference implementation.

Validation: preserve JSON types and exact canonical bytes; references cannot point outside the declared evidence root. Byte-preserving compression/deduplication is permitted only if original bytes remain recoverable and verified. A digest binds an artifact, not its truth. Frozen reference artifacts precede candidate observations.

## MeasurementRecord

- Campaign/case/attempt/repetition; exact strategy, mode, source/patch/binary identities and command/environment provenance.
- Per-run contiguous cycle and phase timings, setup/open/first-evaluation/recovery/replay/page/process timings as applicable.
- Process HWM and any phase memory estimate with scope; result/evidence/page sizes; scoped counters and unavailable metrics.
- Complete-observation reference; stdout/stderr, return code, interruption and resource events.

Keep separate fields for:

| Dimension | Values / interpretation |
|---|---|
| Collection status | complete, timeout, memory-limit, disk-limit, tool-failure, incomplete |
| Execution outcome | actual Core outcome such as ALLOW, DENY, semantic error, commit refusal or backend error |
| Equivalence | match, mismatch, not-compared, with first divergence |
| Candidate assessment | supported-by-evidence, rejected, unresolved |

Validation: finite nonnegative metrics; absent measurements are explicit, never fabricated zero. A DENY case may collect successfully. Exhaustion is not DENY or a counterexample. Production-like and diagnostic observations cannot be merged into a timing sample.

## OptimizationCandidate

- ID and priority; current-format, incremental-query, future-evidence, history or retention category.
- Hypothesis, mathematical premises/evidence class, construct mapping, supported language, exclusions and exact patch/algorithm identity.
- Expected costs including initialization/maintenance/rebuild/output; measured observations, comparisons and negative controls.
- Dependencies/trust/compatibility changes and unresolved blockers.

Lifecycle: proposed → argued → experimentally assessed where applicable → supported-by-evidence/rejected/unresolved. Supported-by-evidence authorizes a recommendation, not shipping production code.

## EvidenceContractAssessment and ResearchDecision

An assessment records both evidence interpretations, completeness/reconstruction/availability and authority premises, exact version/history boundaries, adversarial controls and future contract changes needed. A decision links cases, candidate, evidence and unresolved premises to one of the three dispositions; includes benefit, limitations and a separately scoped follow-up recommendation.

The final question index maps all seven FR-001 questions and all five investigation areas to these records. Missing mandatory baseline coverage blocks research completion even when candidate no-go conclusions are valid.
