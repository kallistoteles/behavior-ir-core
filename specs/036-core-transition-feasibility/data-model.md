# Core036 revision-2 data model

Design only. Implement these versioned research records and strict validators; v1 records remain readable only under their original schemas/context. No record grants a process-private ground or proves its own assertions.

## Common representation and validation

All v2 control records contain exact `format`, `work_id`, `record_id`, `specification_ref`, `source_subject_ref` where applicable, typed `outcome`, `product_adoption: "unactivated"`, `inputs` and a nonempty `reason`/`blocking_ref` for unfinished work. Record formats use `core036.<kind>.v2`; canonical experimental formats keep the separately frozen `core036.compact-transition.v1` and `core036.finish-recipe.v1` names. Never reinterpret a v1 document as v2.

Reject duplicate keys, trailing content, nonfinite values, unknown versions/fields, invalid UTF-8, overflows, absolute/escaping paths, symlink escapes, missing parents and changed referenced bytes. Default bounds: UTF-8 IDs ≤256 bytes, reference paths ≤1024 bytes, control record ≤4 MiB, closure/input manifest ≤32 MiB and ≤20,000 refs, original/compact/reconstruction artifact ≤64 MiB, nesting ≤128, request stream ≤128 operations, measurement N≤256/H≤128. Check bounds before recursive allocation. Control counts/durations/offsets are exact nonnegative u64 values. These research transport bounds are not theorem bounds. Original semantic payloads follow their original schemas and numeric domains; a narrower controller parser must not silently change admitted Core inputs.

An `ArtifactRef` is `{root_id,path,bytes,sha256}`. `root_id` selects a controller/verifier-owned registered root, not a candidate-provided executable or filesystem root. Verify exact bytes before interpretation; roots and per-filesystem accounting come from independently selected context. Historical refs preserve their v1 grammar. Root-relative byte identity is not semantic authority.

## WorkContext and historical mapping

`WorkContext` binds specification-v2 digest, all eight deliverables, 22 FR/eight SC identifiers, original Core/Safety/035 identities, archived-v1 manifests/closed indexes, resource-root registry, fixed comparison contracts, required slots and expected verifier context. It contains no invented future artifact hashes.

`HistoricalMapping` maps each intentionally revised logical v1 document path/hash to its exact copy under `specification-revisions/001/`. Unamended historical files retain their original expected paths/bytes. The old `inputs/baseline.json` is unchanged; new inputs bind v2 plus this mapping. Two unrelated033 files retain recorded size/mtime/inode checks. Do not perform a whole historical archive scan.

Feature states: `declared → in_progress ↔ checkpointed → completed`. `unfinished_external_dependency` may describe a checkpoint, never completion. Only the final completion evaluator may create `completed`, after all deliverables, criteria, gates, controls and required experiment/reproduction slots are satisfied. Writing a report or closing an attempt does not change this predicate.

## Attempt, allocation and resource events

`AttemptDeclaration` has stage, sequence, predecessor, exact source/tool/profile/workload refs, corrective action, prospective allocation, roots/volumes, sampled/hard limits, reserved closure time and expected slots. First attempt links the preserved v1 attempt without adopting its expired clock. A successor declaration refers only to already-existing predecessor records.

Attempt transitions: `declared → running → succeeded | failed | resource_stopped | interrupted → closed`. Record actual `(boot_id,start_monotonic_ns)`, UTC endpoints, child exits/signals, exclusive stage/controller/cleanup intervals, observed resource deltas and closed descendant tree. Do not subtract clocks from different boots. Across boots sum closed measured durations and list calendar gaps separately.

`Checkpoint` binds cause, last confirmed raw state/head if available, incomplete slots, exact pending tasks, still-current gates, owned closed disposable caches and successor correction. After restart, serialized facts are unverified until actual original establishment; a checkpoint does not serialize executable authority. Failed partial sessions do not become completed timing observations.

`RootRegistry` records resolved path, ownership, filesystem device, role, lifetime, mutable/read-only status and cap. Owned source/cache, tmp, evidence and registered additional shared-store paths have disjoint accounting by device/inode. Temporary files are excluded from cache totals when counted separately. Record volume free samples, existing warm baseline and attributable new shared-store closure. Unknown aggregate/shared memory is `null` with scope/reason, not zero.

## SourceSubject, build and proof dependency graph

`SourceSubject` binds all selected source/dependency/patch/lock bytes, target/features/cfg/panic/arithmetic settings, compiler/extractor/kernel closures, original semantics, backend, endpoint and model/proof statements. `BuildReceipt` binds actual emitted executable hashes and source profile; retain binaries before cleaning closed caches. Oracle subject is separately bound to unpatched original code.

`CorrespondenceObligation` has B01–B10 ID, actual functions/monomorphizations/call closure, native/model relation, expected theorem type, generated-source refs, premise classification, transitive axiom inventory, checking receipts and control results. Statuses include `unestablished`, `in_progress`, `proved_for_declared_subject`, `checked_conformance_only`, `explicit_external_premise`, `refuted`. A helper proof cannot set the composed status. Domain-specific desired equality cannot be an external premise.

`GateResult` identifies proof/quality/conformance/activation/endpoint/source prerequisites with `met | unmet | blocked`, evidence refs and invalidation dependencies. A change to any semantic/source/tool/backend/endpoint dependency invalidates affected gates; explicit dependency equivalence may retain unaffected gates. Cache warmth is comparability metadata, not a reason to reuse stale proof.

## Private ground and transition state

`Ground` is an unimportable native capability bound to exact semantic subject, parent, owner/writer epoch, original checked facts and maintained views. States: `unverified → checking → established`; operation staging creates `pending`; only confirmed matching acceptance creates `established(child)`. Conflict, precommit failure, uncertain acknowledgement, wrong history/context/view/writer or restart causes quarantine/invalidation until justified reconciliation or fresh establishment. Same state contents do not imply same history.

`PendingTransition` retains exact expected parent, typed effect/delta, complete request/context/metadata, outcome, ordered commands and pending view updates. No view/ground advancement before confirmation. Legacy R/GV/B use original Store/Capture. C uses its separately typed compact head and proven correspondence; no cast between history domains.

## Workload and operation

`Workload` binds independently authored expected facts, exact original program/policy/captures, fixture/stream bytes, N/H, ordered requests/metadata, initial parent and authority, family/length, change/no-change classification and fault schedule. Independent oracle creates expected observations before candidate acceptance; candidates cannot select the expected subject or comparison projection.

`OperationObservation` binds attempt/slot/mode/role/mechanism, exact parent/request/child, endpoint contract, complete timing, interval tree, all eight original fields where required, identities, original comparison, work/resource quantities and actual output/error. Separate phases include semantic evaluation, ground/views, materialization, observation construction/encoding, identity/hash, copies, commit/ack, delivery/sync and endpoint checks.

`IntervalTree` spans have unique IDs, parent ID, monotonic start/end offsets and execution scope. Exclusive siblings must be disjoint and contained. Complete duration equals summed exclusive classified work plus a nonnegative explicit remainder. Nested commit totals are not added again; overhead and unclassified work remain visible. Timing mode disables detailed counters/spans; diagnostic mode must return identical results.

`Quantity` has `value`, `unit`, `scope`, `method`, `reason_if_unavailable`. Distinguish logical visits, rows/records, actual bytes copied/hashed/encoded/written, underlying Write calls, retained bytes, sampled process RSS and direct-child high-water values. Payload size is not allocated bytes; Write calls are not syscall counts.

## LifecycleSession

Fields: role/family/length/replicate/mode, real program-context establishment receipt, fresh state/history acquisition, ordered operation refs, faults/reacquisition, final head, directly timed required endpoint, enclosing audit total, memory/retained data and required cleanup. No ground crosses independent sessions.

A worker may hold a genuinely checked immutable program context across fresh sessions. Label resident-program session totals; directly enclose cold worker and first cold session, never synthesize them with added medians. Invalidation occurs before operation `floor(L/2)+1`; for L1 this precedes operation1.

## Compact record, retained basis and replay

`CompactTransition` binds contract/recipe version, original semantic subject, compact parent, exact original request/context/metadata refs, typed result/errors/commands/delta, immutable retained-input root, availability promise and new experimental event/head. Canonical content refs contain kind/version/length/digest only; physical root/path/owner resolution lives in a separately bound transport manifest. Canonical incidental provenance remains outside identity. The commitment names a state recipe, not an uncomputed original state-content ID.

`RetainedBasis` contains one actually verified initial original state/history packet, module/schema/policies and deterministic source context. Subsequent deltas/requests/metadata share that basis without hidden full per-step legacy records. References form an acyclic DAG; a record cannot hash its own future identifier. Retain all required input through declared final audit and sealed export. Memory process loss is outside durability and must produce explicit reconstruction/authority loss.

`ReconstructionResult` verifies independent expected subject and all retained inputs, executes the bound original replay recipe in order, checks actual delta/state/outcome relations and delivers exact original observations/legacy identities. Provenance says `original_replay_at_audit`, not that original calls ran at compact completion. Missing/corrupt/substituted input, wrong version/parent or mismatch is never exact success. Replay does not create the original compact process's ground.

## Assessment and final evidence DAG

`Assessment` separately reports operational status, correspondence, semantic equality, cost comparability, candidate usefulness, prerequisite state and product adoption. It maps all FR/SC and eight deliverables to actual evidence. Intermediate reports may contain gaps; final completion may not use gap documentation as satisfaction.

Close and seal attempts first. A frozen candidate assessment references only existing closed subjects/results. Independently selected reproduction uses separate roots and seals its own results. Final assessment/completion then references those earlier seals and records; no assessment or manifest hashes its own future form. Missing required sample/proof/quality/reproduction keeps `feature_complete=false`. Exact workflow and controls are in [reproduction](contracts/reproduction.md).
