# 036 research data model

All records below are new research interfaces, not production Core/Safety formats. Fields marked required must exist; unavailable measurements use `null` plus a nonempty reason. Serialization of a ground never establishes authorization.

## Common record envelope and references

Each record has `format`, `campaign_id`, `revision_id`, `case_id`, `role`, `outcome`, `product_adoption: "unactivated"`, exact input references and, for unavailable/blocked work, `reason` and `blocking_ref`. All IDs are controller-selected bounded strings, not executable paths chosen by evidence.

An artifact reference is `{path, bytes, sha256}` relative to its independently chosen owned root. Validate the bytes before interpreting the record. Reject absolute paths, `..`, symlink escapes, duplicate JSON keys, trailing content, unknown versions, unexpected fields, truncated records and missing/changed parents. Content hashes identify bytes, not their mathematical truth.

Bounds: UTF-8 IDs ≤ 256 bytes; relative paths ≤ 1024 bytes; ordinary control records ≤ 4 MiB; one full original/compact/reconstruction document ≤ 64 MiB; controller input/closure manifests ≤ 32 MiB with ≤ 20000 references. A request stream has ≤ 128 operations; supported diagnosis N ≤ 256 and initialH ≤ 128. Larger mathematical states are not excluded from a general theorem by these experimental parser bounds. Validate lengths before allocating and stream artifact verification. Exceeding a bound is an explicit invalid/stopped case, never truncation into success.

## 1. Campaign and revision subjects

### CampaignProfile — `core036.profile.v1`

Fields: immutable 035 subject and selected prior manifests; exact semantic/observation/authority context; canonical gate inventory; fixed proof/control statements; tool source tuple and native build profile; allowed owned roots; initial disk conditions; global/stage/process/byte limits; declared cases, role ordering and repetition policy; endpoint/identity contracts; expected publication and reconstruction conditions. The first execution start, captured by the reviewed existing-recorder bootstrap, fixes one boot ID and monotonic origin. The new controller adopts that real bootstrap receipt and profile binding instead of starting a fresh clock. UTC is display metadata, not an elapsed-time authority.

### SourceRevision — `core036.source-revision.v1`

Fields: predecessor revision/reference; exact source files and hashes; reviewed patches; complete source/gate/dependency inventory and private Git index digest; Cargo/proof tool locks; tools and compiler flags/cfg; actual source-to-executable and source-to-generated-proof receipts; applicable prior gate references. A source digest cannot serve as a correspondence theorem.

Transitions: `declared → materialized → frozen → built`; failure is retained. A new revision never edits its parent. Measurements bind one frozen revision. A changed proof/execution dependency invalidates dependent gate acceptance; the global clock/bounds remain inherited.

### GateResult — `core036.gate.v1`

Fields: gate/stage, exact subject/obligation IDs, start/end/deadline, raw command/log/process receipts, exit/signal, expected versus observed result, closed descendants, source/tool identities and prerequisite references. Acceptance is `met`, `unmet` or `blocked`, separately from operational completion. Only a successful complete canonical script can establish canonical-quality `met`.

## 2. Formal connection

### CorrespondenceObligation — `core036.correspondence.v1`

Fields: B01–B10 ID from [correctness](contracts/correctness.md), exact native functions/cfg/closure, reference/model statement and expected theorem type, input-domain relation, transitive axioms/assumptions, generated subject hashes, fresh check receipts, negative controls, status and explicit remaining gap. Statuses: `proved_for_declared_subject`, `checked_conformance_only`, `explicit_external_premise`, `unestablished`, `refuted`, `not_run`.

A claim with an unresolved required native bridge is conditional even if every model theorem passes. External compiler/OS/backend premises are independently identified; an assumption of the desired projection/result/encoding equality is invalid, not an acceptable external premise. Unsupported extraction does not mean a semantic counterexample.

### NativeContextRelation

Relates the full original module/policy/schema interpretation, request and bindings, captures/context and metadata, canonical row identities/versions, history/parent, writer control and error/command behavior to the mathematical state. It includes original observation constructor arguments omitted from 035's small state model. Any restrictions must be enforced by the real selector. Shared encoder/hash calls require identical functions and equal complete native arguments, not similarly named model callbacks.

## 3. Runtime authority and outcomes

### EstablishedGround (private, non-importable)

Fields held by the owning native worker: checked program context, exact canonical state/history subject, currently justified facts, maintained dependency/views relation, confirmed writer/backend ownership and applicable source/semantic context. Evidence may describe these fields but cannot construct the object.

Transitions:

- `unverified → established` only through actual original establishment under the declared authority contract.
- `established → pending` for a proposed exact-parent transition; staged views have no accepted-child authority.
- `pending → established(child)` only after confirmed matching acceptance and proved preservation.
- Refusal preserves only what the actual reference contract permits; no fictitious child is created.
- Failed/conflicting/uncertain publication, changed context or lost writer continuity leads to `invalidated/quarantined` as applicable; reconcile the actual head and freshly establish before dependent reuse.
- Restart/transfer yields `unverified`; no serialized checked flag reactivates a ground.

### OriginalObservation

Exactly the eight035 fields: `invocation`, `bundle`, `commit_arguments`, `transition_record`, `before_history`, `after_history`, `post_state`, `original_property_outcomes`. Compare complete normative values and original identities; compare exact canonical bytes where the reference declares canonical bytes. Ordinary JSON formatting outside canonical identity domains is not silently promoted into a new Core requirement. The declared delivered research file also preserves its exact original bytes/newline for the same-contract output candidate.

Direct original Safety reports are only records of an actual original validator execution. Derived restricted outcomes carry separate honest provenance and are not forged direct reports.

## 4. Workloads, sessions and observations

### Workload — `core036.workload.v1`

Fields: fixture/profile identity, N/H, exact ordered requests and contexts, initial canonical parent and authority, action/expected result facts independently authored, request stream digest, change/no-change classification and invalidation schedule. Diagnosis uses the five fixed035 cells; lifecycle uses the three families in [campaign](contracts/campaign.md).

### LifecycleSession — `core036.session.v1`

Fields: family/length, replicate/mode, worker/program-context receipt, fresh initial acquisition, ordered operation refs, invalidation/recovery events, final actual head, directly timed session and enclosing session-plus-audit interval, peak/retained memory and output/retention accounts. The source of starting program authority is explicit. No state ground crosses independent sessions.

A worker may own a genuinely checked resident program context for several fresh sessions. Its direct cold-worker interval includes program establishment and all sessions; the first cold-session interval is reported where actually measured. Resident session totals cannot be called cold totals or synthesized by adding a separate program median.

### OperationObservation — `core036.operation.v1`

Fields: mode (`timing` or `diagnostic`), role/mechanism/source, exact request/parent/expected subject, result/child/authority outcome, complete interval, interval tree, original observation artifact, applicable identity map, work/bytes/memory with measurement scopes and unavailable reasons, and original-reference comparison. A worker returns only after required delivery/endpoint confirmation or an explicit failure. Independent expensive reference audits do not disappear: they belong to a declared separately timed endpoint when not mandatory in the ordinary contract.

### IntervalTree

Each span has ID, parent ID, phase, start/end monotonic offset in ns, and execution/thread scope. Siblings in an exclusive attribution are disjoint and contained in the parent; repeated spans may share a phase label but not an ID. `exclusive(parent)=duration(parent)−sum(direct_child_durations)` only for actual nested spans on that same operation. Invariant: complete duration equals exclusive classified work plus an explicit nonnegative remainder. Keep raw invoke/commit totals as nested diagnostics; never sum them again or subtract medians.

Use separate phases for actual semantic evaluation/validation, ground/view maintenance, canonical state materialization, observation construction, encoding, identity/hash work, backend/capture copies, commit acknowledgement, output writes, synchronization and endpoint checks. Clock/measurement overhead and unclassified work are visible. A diagnostic record may expose fine spans/counters that timing mode disables; results must remain equal across modes.

### Quantity

Fields: `value`, `unit`, `scope`, `method`, `reason_if_unavailable`. Units distinguish logical accesses, rows/records, bytes actually encoded/read/written/copied/hashed, write calls, retained logical data, sampled RSS and direct-child high-water RSS. Serialized payload is a proxy with that name, not allocated bytes. Peak RSS is not a proof of live object bytes or shared-page-adjusted aggregate peak.

## 5. Compact experiment

### CompactTransition — `core036.compact-transition.v1`

Fields and canonicalization are in [compact evidence](contracts/compact-evidence.md). Relationship: one exact parent + canonical request/context + result/ordered commands + state delta + recipe/retained input manifest determines a reconstructible original transition. The compact child history is a separate domain unless equality is proved. It cannot authorize a legacy ground by casting its digest.

### RetainedInputManifest — `core036.retained-inputs.v1`

Immutable content-addressed references to the start state/history basis, exact module/policies/captures/metadata and any original dependency needed by the recipe, plus version/order and an availability scope/lifetime. References describe an acyclic dependency graph. A record cannot bind its own future hash; inputs must exist before the child completion that promises their availability.

### ReconstructionResult — `core036.reconstruction.v1`

Fields: record/recipe version, independently expected parent/subject, verified retained-input root, reconstructed eight-field artifact and legacy identity map, actual provenance, elapsed interval and retained/working bytes. `exact_success` requires complete verified inputs and all contract checks; `missing_input`, `corrupt_input`, `wrong_subject`, `unsupported_version` or `mismatch` never certifies success or creates authority.

## 6. Assessment and archive closure

### Assessment — `core036.assessment.v1`

Separate dimensions: operational (`completed/failed/resource_stopped/not_run`); proof/correspondence; semantic (`equal/mismatch/not_evaluated`); cost (`measured/not_measured/not_comparable/confounded`); candidate (`supported_for_fragment/conditional/rejected/undetermined`); stage prerequisites; product adoption always unactivated. Every FR-001–FR-021 and SC-001–SC-007 has an evidence ref or exact gap/blocker.

Per-row timing acceptance requires the applicable source-specific proof, conformance, quality and mechanism gates. Failure/refusal operations retain actual endpoints rather than being averaged as successful transitions. Verdicts never substitute missing costs with zero.

Close all writers/processes before indexing new outputs. Seal a campaign index, then independently validate into a separate root and seal that root. Collection may succeed in producing a fully documented negative assessment; it cannot manufacture a positive gate result. No full historical archive traversal is required.
