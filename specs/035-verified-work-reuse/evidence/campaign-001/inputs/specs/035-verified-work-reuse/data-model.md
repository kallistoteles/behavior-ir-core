# Data model: verified-work reuse 035

Research records use the `core035` domain; original Core/Safety documents remain unchanged. Typed structures, deterministic ordered collections and bounded integer-valued diagnostics are required. Wall clocks, paths, counters and treatment identity never enter Core semantic identity.

## ReferenceSubject

Fields: exact admitted behavior encoding/hash, schema, semantic profile and validation profile, full policy inventory/hash, original locations, expected store/history coordinate (store, position, state and record), request/context and writer-authority scope.

Rules: bind full relevant interpretation, not BehaviorHash alone; expected subject is independently selected. Same state hash with a different event/branch is a different ground. Pin original LD8 module and policies before final comparison. Native source/patch context is a separate verification binding, not a new Behavior field.

## Acquisition and EstablishedGround

Acquisition records actual program/prefix/state checks, independent expected endpoint, exact sources/verifiers, named host/implementation premises, and the resource/timing receipts. Only actual successful acquisition creates an opaque process-private EstablishedGround. It owns or uniquely controls the exact Store and checked subject, relevant verified facts and the proof/implementation context. Its serializable report is diagnostic; there is no Deserialize/Boolean-import authority constructor. Common acquired-prefix provenance is distinct from the selected reusable engine snapshot/validation authorization varied by G. A derived Safety ground uses core035 provenance; it cannot impersonate an original directly executed validation record.

State flow:

`absent → supplied_unverified → checking → established(parent)`

`established(parent) → evaluating → pending(child) → Applied confirmed → established(child)`

Refusal returns no child; the parent may remain established only with unchanged ownership/history premises. Stale/failed publication creates no child. Lost acknowledgement or unknown writer state moves authority to `quarantined`; reconciliation must inspect actual publication and perform the required checking before authority returns. A restart/untrusted transfer yields `supplied_unverified`, never a revived capability. Ground discard clears authorization even if data remains resident.

## DerivedViews

Fields: exact subject, canonical entity/version map, unchanged row facts, relevant reference/owner and active-child index, original property summaries, parameterized ordered observation recipes and explicit context-rebinding/reconstruction relation; proof/selector applicability and complete dependency descriptors; diagnostics for construction/maintenance work and retained bytes.

Rules: data does not independently confer authority. G0V1 re-establishes the validity/coverage needed to use resident data and charges it. Missing, corrupt or mismatched views are rebuilt or use reference fallback. No full-map clone may be described as a constant-size point update. Reconstructible views are not new canonical store state.

## AffectedSet and Eligibility

Fields: selected bound child, owner/reference existence, changed fields, membership/absence dependencies, relevant obligations and observer effects; admitted fragment identity; reason for selector rejection/fallback.

Rules: coverage includes absent/new members and error dependencies, not just prior positive reads. Unknown is affected. Finish is the only mandatory optimized action. All unsupported actions retain ordinary Core; selector rejection is a diagnostic, not a new semantic denial. Original global rules need full work where applicable.

## PendingTransition

Fields: exact parent ground and request, ordinary or checked-prepared result, exact changed rows, candidate view patch, complete original observation/record/hash inputs, candidate bundle and expected child.

Rules: staging supplies no public child authority. Use original envelope/rederivation and actual expected-parent commit. Promote only after confirmed Applied at the exact child; on uncertainty quarantine rather than retain speculative authority. A required canonical identity cannot be left for optional later audit.

## TreatmentIdentity and Mode

Fields: one of R/G/V/GV, intended G/V factors, worker package/bin target, frozen sources/patches, exact build command/toolchain/options, retained executable SHA/size, actual mechanism activation/control evidence, dependency graph and mode `timing` or `work`.

Rules: four distinct executed binaries plus mechanism-sensitive controls are mandatory. Caller-supplied labels do not select runtime authority. Detailed counters are disabled in timing mode and enabled in separate work observations; equal original semantic observations must hold across modes. All use the same backend type and authority premises. Unseparated factors receive an explicit confounded comparison verdict.

## ComparisonCell and Observation

Cell fields: cell ID, N/H/D, canonical origin/parent/request/expected endpoints, authored facts, treatment ordering, sample IDs and required control/gate refs. Timing sample counts are fixed at three per treatment; one work sample is separate.

Observation fields: actual outcome, exact complete original output refs, before/after history, original Safety outcome/reference comparison, interval boundaries, raw integer nanoseconds, process resources, scoped work/byte counters, retained-space costs and closure refs. Unavailable values are null with a reason; zero is an actual zero. No partial operation becomes a complete sample. Store program checking/acquisition separately from directly measured complete ordinary operation, then also retain total process/lifecycle duration.

## ProofTarget and CorrespondenceEntry

ProofTarget fields: root name, independently expected proposition/type, theorem/source/import/tool bindings, actual type check, transitive axioms and fresh-kernel receipt. Source hashes identify bytes, not validity.

CorrespondenceEntry fields: component, exact native/formal locators, applicability, status, named premise and evidence/gap. Mathematical, tested-conformance and unproved native correspondence cannot be merged into one passed flag.

## Assessment and ClosedArchive

Assessment contains distinct retained-ground, incremental-view, interaction, full-observation and complete-endpoint verdicts; every FR/SC disposition; gates/controls; raw-to-summary derivation; conditional bridges; proposed next step; all unsupported/unrun/resource outcomes. Candidate verdicts are `supported_for_fragment`, `conditional`, `rejected`, `undetermined`; semantic, operational, proof and cost statuses remain separate.

Close all owned writers/descendants before hashing. Each ref has declared relative path, byte count, SHA and role. Inputs contain no future-output digests; prepared manifests bind actual built outputs and parent manifests. Final closed indexes bind actual files after process-tree-empty confirmation. Failed revisions/samples remain immutable and cannot be replaced by later successes.

## Bounds and compatibility

Strict parsers reject duplicate keys, trailing bytes, unknown formats/fields, non-integer semantic numbers and path escape. Limits: manifest/prepared/assessment 16 MiB each; public history packet 64 MiB; individual original Core record 8 MiB; JSON nesting 128; identifiers 128 UTF-8 bytes; 4096 cases and 16384 observations. Four treatment IDs and all declared slots are explicit; no unbounded producer-selected inventories or supplied executable paths. Campaign artifact/cache limits apply independently of these per-record bounds.

Existing legacy diagnostic decimals may be read only after exact old-byte SHA verification and outside the new semantic wire. Reuse read-only copies of old evidence; do not migrate, rewrite or promote its claims.
