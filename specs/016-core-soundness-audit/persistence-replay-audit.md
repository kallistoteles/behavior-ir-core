# Persistence and replay audit

## Scope, authority and evidence

Baseline: Core Release `v0.12.1`, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. This report audits existing
contracts; it changes neither history nor code. Source references use
`crates/behavior-store/src/` unless a complete path is stated.

Reference authority: `PRINCIPLES.md`, `docs/persistence.md`, versioned persistence,
lifecycle, query, migration, read, invocation, command and governance contracts.
The [path/test inventory](evidence/fragments/PERSIST/path-test-inventory.md)
(E-PERSIST-001) accounts for every public path family. E-PERSIST-002 is the
source argument in this report: exact-baseline inspection, no overlay, execution
fields not applicable. Baseline gates and isolated reproductions are separate
execution evidence. B1 scope is reconciled; named collection, supplemental runs
and final joint dispositions are separately tracked. No source argument below
asserts a whole-backend or whole-kernel proof.

E-COORD-009 canonical baseline gates and E-PERSIST-004 historical replay
counterexample have now executed. Their immutable raw logs are separate from
the source arguments; named case collection and remaining supplemental runs
are still reconciled by COORD.

Live state is the finite typed mapping defined by MODEL. History is an immutable
sequence of canonical events rooted in genesis. StateId commits to live entity
content; the same StateId can occur at different positions or forks. Exact history
requires StoreId, position, state and event hash. Versions and reference/index
events are materializations of that sequence, not alternative semantic authority.

## Commit path and mutation inventory

| Boundary ID / path | Pre-state and candidate | Checks before mutation | Mutation / authoritative post-state | Failure interpretation |
| --- | --- | --- | --- | --- |
| B-PERSIST-001 creation v1/v2 | Genesis policy/schema/declarations and finite seed; `store.rs:895–999` | Policy format, exact schema, typed canonical seed, duplicate identities, all Ref targets in seed, full behavior snapshot. MuHash and genesis/event identity computed first. | One `Backend::create` at `:973–975`, with genesis/head/versions/reference events; Store/cache constructed only after returned success. | Typed refusal/read/hash failure leaves Backend uncalled. Successful creation must supply the complete initial product. Failure atomicity/lost-ack/retry semantics are not explicitly defined; F-PERSIST-002 records that bounded gap. There is no Core rollback. |
| B-PERSIST-002 ordinary action v1/v2 | Captured parent, exact behavior, input/context/facts → ALLOW CommitBundle; `:1565–1873`, `:1883–2380` | Store and schema identity, exact behavior/transition hash, allowed result, idempotency, whole-state conflict, v2 exact history, timestamp, rederivation of record/read/write/facts/lifecycle, revisions/old values/declarations, governance, freshness/removals/resulting refs, canonical candidate state and selected incremental child proof. | One `Backend::commit` at `:2344–2358`; versions/removals/ref changes/event/head passed together. Only Applied publishes reusable child validation at `:2360`. | All pre-CAS errors are uncommitted. HeadMoved preserves another writer's complete event. Backend Error may denote no write or lost acknowledgment; it must not be interpreted as guaranteed rollback. |
| B-PERSIST-003 command-only / no entity change | Same action path, with immutable command-intent multiset; `commands.rs`, `store.rs:1883–2380` | Identical whole-candidate/governance/history checks; command bag validates occurrence multiplicity. | Same atomic event includes commands in its archived decision. StateId/revisions may stay equal; event and history position advance. | A command intent in a candidate is not dispatchable committed evidence; output comes only from authenticated committed history. |
| B-PERSIST-004 legacy migration | Head schema/source universe → apply_migration; `:2384–2467` | Canonical commit timestamp, actual current source schema; complete universe from as-of keys/version reads; resolved source/target pair and source validity/requirements/target validity in apply_migration. Legacy required fresh governance refused. | Shared `commit_migration_outcome`, below. | No automatic idempotent retry for the direct legacy convenience path is claimed. Reapplying against changed schema refuses. |
| B-PERSIST-005 prepared migration v2 | Exact HistoryRef, source/target behaviors, complete validated parent → private PreparedMigration; `:256–484` | Exact schema/behavior pair, validated_versions, complete apply_migration; commit repeats preparation and candidate equality. Recovery binds original archived event/context/evidence. Fresh commit checks exact parent/governance. | Shared migration primitive `:2469–2655`, single commit at `:2628–2640`; versions/new schema/ref events/migration event/head. | Preparation writes nothing. Failed CAS/operational failures use ordinary atomic contract. Lost acknowledgment can recover original v2 event without creating another migration. |
| B-PERSIST-006 idempotent action recovery | Record at evaluated position+1; `:1948–2040` | Original complete bundle equality, canonical original event/hash/history, expected parent, version/context pairing; v2 rederivation and original authorization context/time. | No Backend mutation; returns original record/state with already=true. | Later commits do not move original occurrence identity. Retry-time metadata cannot create a new candidate. |

`lib.rs:38–109` has precisely two mutation methods, create and commit. Arbitrary
backend internal files/pages/WAL/fsync operations are outside Core's implementation;
the host must meet the specified commit atomic product and successful creation product. Creation failure semantics remain F-PERSIST-002. The `&mut Backend` receiver
provides exclusive local mutation, not an interprocess transaction by itself. CAS
compares the last canonical record identity, not StateId alone.

### Reference backend mutation and external durability

`InMemoryBackend::commit` (`memory.rs:284–374`) first checks created state, CAS,
canonical event kind/hash, positions/parents, complete versions/removals/reference
product, accumulator state and schema head. Only then does `:356–371` update
version/type/field indexes, removals, reference edges, canonical records and head.
No typed fallible operation remains in that block. Allocation failure/process abort
are not ruled out by this source argument, and in-memory success proves no disk
durability. `create` (`:176–194`) refuses an existing store and applies one accepted
seed product; it has no typed failure after its first mutation.

| Obligation | Primary status | Premises / scope / evidence |
| --- | --- | --- |
| O-PERSIST-001 arbitrary Backend commit atomicity and crash durability | assumed but documented | `Backend` contract `lib.rs:38–47,99–109`; a conforming implementation supplies atomic commit and immutable consistent as-of snapshots. Existing 005 FR-006 scopes atomicity to commit, not create failure semantics. Core cannot roll back an adversarial host's partial mutation. |
| O-PERSIST-002 complete in-memory commit argument validation before typed failure | established by a code invariant | `memory.rs:284–355`; caller supplies legal structured arguments, normal process execution; reference-backend conformance supplements but does not universalize this claim. |
| O-PERSIST-003 commit-only command/event authority and original-event recovery | established by a code invariant | `store.rs:1948–2040,2344–2377`, `commands.rs:127–253`; conforming Backend and canonical history. Dedicated fault/tamper tests provide scoped empirical evidence. |
| O-PERSIST-004 all physical creation/crash windows exercised | not yet established | Existing commit wrapper has no create fault injection. Consumer backend covers only its disclosed persistence windows. This empirical coverage limit is separate from F-PERSIST-002's mathematical contract ambiguity; neither shows a Core partial-write defect. |

### Failure coverage denominator

| Failure point | Source/injection mechanism | What a test can establish | Limits |
| --- | --- | --- | --- |
| Before create call | Genesis/type/schema/ref/full-validity refusals; Store::create | Core does not invoke mutation on rejected seed. | Actual host create failure and partial-create crash not exercised by commit wrapper. |
| Backend read failures | Typed BackendError adapters, Store/load/schema/facts/replay reads | Actually performed failures propagate or appear in specified typed replay divergence. | Every host I/O implementation/path is not covered by an enumerated test alone. |
| Before commit | FaultInjector BeforeWrite (`conformance.rs:10–103`), test FaultBackend abort_before_write | No authoritative state/event/commands land when inner primitive is uncalled. | Not an internal partial-write simulation. |
| CAS interleave | Interleave FirstRead/Commit (`:140–267`), concurrency tests | As-of reads stay at captured position; whole-state/record CAS rejects stale candidate. | Wrapper lands a complete competing event; not a model of every host isolation bug. |
| Invalid atomic product | Reference backend conformance tampering of record/head/versions/removals/refs/schema | Rejection before reference backend mutation. | Not independent enforcement for arbitrary Backend implementations. |
| Partial or missing persisted content | history/command_stream FaultBackend version/record overrides | Replay/commands reject inconsistent canonical materialization before committed output. | Does not universally detect coherent falsification without a trusted external anchor. |
| After commit acknowledgment | FaultInjector AfterWrite; FaultBackend lose_acknowledgment | Error can accompany a completely durable event; exact recovery returns original event. | Error must not be reported as semantic rollback. |
| Process interruption | consumer durable backend fsync/snapshot/atomic rename/directory sync/OS lock | Separate-process prewrite refusal and crash-after-persistence/recovery cases for this test backend. | OS/filesystem and every intermediate crash window remain scoped assumptions; no arbitrary backend proof. |

Fault injection is a test of a stated host contract. An omitted test remains an
explicit obligation; it never turns the host's promised durability into a proved
Core invariant.

## Index and materialization truth

| Materialization | Canonical derivation | Runtime protection | Reconstruction / detection / limits |
| --- | --- | --- | --- |
| Live type membership | Genesis keys + created identities − removed identities, folded at exact position | Full snapshot validates supplied key type, membership version and removed position (`store.rs:1197–1246`). | `content_at` (`replay.rs:331–369`) reconstructs the key universe from history. `keys_at` completeness/coherence is a Backend contract, not proven by checking only returned members. |
| Optional field index | Canonical entity-version fields and lifetime as-of events | `StoreFacts::query` (`store.rs:647–710`) rechecks actual candidate value/predicate; absent index falls back to keys_at. Evaluation sorts/deduplicates semantic members. | Conformance and indexed/unindexed/reversed query comparisons. False-positive candidates are rechecked; omitted true candidates are not independently recovered in each call. Complete candidate enumeration is a required Backend promise. |
| Reverse Ref index | Typed reference fields of canonical entity values; per-transition add/drop difference | `check_integrity` (`:2683–2735`) adjusts incoming edges with candidate changes and checks removed-target safety; new targets must be created or surviving existing identities. | `replay_index_with` (`replay.rs:1385–1528`) rebuilds edges, checks initial/changed/final targets and schema generation. Runtime incoming completeness remains Backend promise. |
| Validation materialization | Full ordinary snapshot validation, exact schema/module/history key | Private engine-owned Mutex/Arc entry; open cold, backend_mut invalidates (`:1002–1025`), exact key checks (`:1127–1195`), committed-only incremental carry. | Discard/rebuild preserves reference semantics in selected domain; no serialized validated=true field becomes truth. INCREMENTAL owns dependency/error equivalence and uncovered nonlocal child-validity finding. |
| State accumulator / snapshot | MuHash over canonical entity content under historical declaration | Engine derives changes and normalizes accumulator before head. | replay_data and verify_snapshot recompute content/state; reference Backend verifies accepted new-head accumulator consistency. Ordinary warm operations do not recompute the complete history/content root. |
| Command occurrence stream | Canonical committed event's immutable command bag; StoreId/event hash/intent hash/per-intent multiplicity index | commands_since captures exact interval, invokes replay_data, verifies snapshot/canonical latest versions before enumerating occurrences (`commands.rs:127–253`). | Optional indexing/enumeration cannot override canonical records; output is finite whole-event pages, not delivery/execution status. |

No index ordering is semantic. `incoming_at` is treated as a finite set of typed
edges and query memberships as their specified sets; serialization canonically
orders them. Command duplicates remain multiset multiplicity. A content/index
hash is integrity evidence, not authentication of an arbitrary backend source.

O-PERSIST-011 (successful creation has a complete genesis/seed/head product) is
**assumed but documented**, scoped to `lib.rs:40–47` and 005 data model creation.
O-PERSIST-012 (creation failure atomicity, uncertain acknowledgment and retry
outcome) is **not yet established** because authority is unspecified, independently
of fault-test coverage. Commit-only G9 is not silently widened to justify it.

O-PERSIST-005 (index derivability) is **established by a code invariant** for the
specified reconstruction algorithms and conforming canonical history. O-PERSIST-006
(runtime enumeration completeness) is **assumed but documented** under the exact
Backend API. Broader malicious index omission detection at every optimized read
is not claimed. Relevant mutation/order/metamorphic tests remain empirical evidence,
including shared query/evaluator helpers, not a separate mathematical semantics.

## What each replay form proves

| Replay / record profile | Inputs and positive proposition | Limits / failure / historical behavior |
| --- | --- | --- |
| Plain decision records, historical profiles and command-intent current profile | Strict canonical decode, exact admitted module, recorded action/state/input/context/data_version/facts; evaluate then entire record comparison (`behavior-core/src/record.rs:251–291`). Current command record checked against typed archive/result schema. | Facts are immutable recorded evidence, not a proof that external historical world was truthful. No Backend/current state/dispatch. Historical schemas use the exact supplied historical module, not current module. |
| Plain read_record.v1 | Exact behavior/read identity and recorded request, historical run_version(v1) (`read.rs:140–177`). | Preserves original weaker runtime/evidence, including provenance and old query registry/refusals. Cannot invent snapshot/filter facts absent historically. |
| Plain read_record.v2 | Recorded format/current profile, complete recorded semantic snapshot/facts, arguments/result/observations/error evidence, possible refused raw transport; evaluate same captured evidence and compare. | Current detached diagnostics are excluded; refused_request is restricted to actually undecodable unevaluated INVALID_INPUT with empty observations/derived. Positive standalone replay does not authenticate a store or issuer. |
| Plain invocation/refusal | Exact module, requested typed bindings, immutable binding facts/snapshot, capability/input/context, resolved kind and nested decision/read or semantic refusal (`invocation.rs:1205–end`). | No mutation/dispatch; preserves recorded inner v1 read selection. Transport metadata is evidence attached outside evaluator input; record identity may include it. |
| Store-backed read | Exact StoreId/StateId/position from data_version, schema at recorded position, derive facts via Store::read, compare (`store.rs:1437–1477`). | Current source re-evaluates with current read format, unlike plain historical run_version. F-PERSIST-001 investigates valid historical v1 mismatch. Existing current/past-head/foreign-store tests do not close this profile issue. |
| Store-backed invocation | Plain replay first, exact recorded StoreId/StateId/position, rederive typed bindings/capability at that position and compare (`:1480–1536`). | Same historical inner-read format concern; decode-evidence refusal and metadata handled separately. Backend failures retain operational category. |
| Data history replay | Entire chain/range/genesis/policy/version checks (`replay.rs:55–260`), reconstruct universe/content/schemas, apply canonical recorded writes/lifecycle/versions, rehash all entities/state/records (`:403–1000`). | Does not independently rederive every Behavior obligation or current authenticated proof manifest. Archived v2 authorization validated as immutable authenticated archive; legacy trust remains structural. |
| Behavior history replay | Data replay + exact BehaviorHash keyed modules and migrations; historical schema picked at committed parent; rederive observed facts/read/write/lifecycle and own-record replay; exact trusted evidence subject when applicable (`:1018–1327`). | Cannot use a missing or wrong current module. Positive re-evaluation can share a normative-runtime defect; common invalid-child gap remains INCREMENTAL/MODEL issue, not magically repaired by replay agreement. |
| Reference history replay | Data replay + exact SchemaHash→Module mapping per history generation; recompute Ref edges/event changes and compare Backend index (`:1372–1528`). | This validates the derived reference index; it is not full ordinary transition validity or external authorization. |
| Snapshot verification | Confirm exact historical StateRef, rehash supplied entity content under declaration at its created position, compare accumulator (`:1532–end`). | Snapshot is a cache, never applied as a mutation/history replacement. Its positive proposition is content identity, not all behavior invariants. |
| Committed commands | Checked immutable command archive and occurrence identities derived from canonical exact event. Data replay authenticates structural/archive/history fields; Behavior replay additionally rederives exact emissions. | No replay invokes external business I/O. Host execution/retries/results/checkpoints/exactly-once guarantees are outside Core. |

Replay functions take shared Store references. Engine code performs no Backend
create/commit during replay. A host may use interior mutability or query caches,
but must preserve immutable as-of semantics. `Interleave` is an explicit test
model for a different writer landing a complete event; it does not make replay
itself a semantic writer. Solver or host command execution does not occur in these
replay algorithms.

O-PERSIST-007 (data/history/schema replay integrity) is **established by a code
invariant** for the listed comparisons under conforming immutable history and
assumed digest security; scoped tamper tests supplement it. O-PERSIST-008
(replay/original equivalence for all supported recorded profiles) is **not yet
established**: E-PERSIST-004 supplies a known historical Store-backed counterexample
F-PERSIST-001; current raw duplicate parsing F-TRUST-001 remains separately open.
O-PERSIST-009 (replay non-mutation/no dispatch) is **established by a code invariant**
for first-party replay paths; arbitrary host read-side behavior remains a contract
assumption.

## Recorded fields, identity and tampering

This table accounts for semantically relevant fields at every record layer.
`hash_of(tag,self)` includes each serialized field (including optional fields when
present); nested hash exclusion is not recursively applied. A semantic field
change therefore changes canonical preimage/identity under stated cryptographic
assumptions, or a typed version/product check refuses it. A coincidentally equal
finite digest is not mathematically impossible and is not an audit proof claim.

| Layer / complete field groups | Identity or replay protection | Current executable evidence / limits |
| --- | --- | --- |
| Genesis: format, entity_declarations, evidence_policy, seed entity/value | Genesis hash includes all canonical fields (`documents.rs:485–551`); creation schema/type/ref/full-validity, immutable genesis/history comparison. | Genesis/history tampering, wrong schema, duplicate seed, content/state tests. Some arbitrary coherent replacement requires caller-trusted StoreId anchor. |
| EntityContent: entity, declaration, id, value; EntityVersion: content_hash, entity, id, revision, created_at, value | Content excludes revision/position intentionally; Version hash includes them. Replay recalculates content under declaration generation, checks expected revision/created_at/version. | Stored-value/hash and schema-history/lifecycle tampering; identity report owns domain equivalence. |
| StateRef: state, position; HistoryRef: format, store, state, position, record; Head: state_ref, acc_num, acc_den, last_record, schema | StateId excludes position; history anchors include event/store/position. Head is materialized, checked against record/state/accumulator/schema and replay endpoints. | Fork/equal-state/end-state/history/partial materialization regressions. No semantics equates equal StateId with equal history. |
| CommitBundle: format, evaluated_state, behavior_version, store, record, transition_hash, entity_declarations, read_set, write_set, read_facts, write_lifecycle, commit_time, evidence, evaluated_history, authorization_context | `documents.rs:664–780` closed decoding and hash include all present fields; v2 candidate binds exact history/whole semantic content; commit rederives each semantic set and validates original evidence/time. | Commit/tamper/current governance tests, lifecycle query facts, exact-context recovery. Candidate intentionally separates original transition content from attached authorization metadata. |
| ReadEntry: entity,id,revision,fields; WriteEntry: entity,id,field,old,new; LifecycleWrite: op,entity,id | Nested bundle/record identities; commit/replay read/write/lifecycle comparisons against actual parent/evaluation. | Forged fields/revisions/old/new/read_facts tests; record hashes do not replace rederivation. |
| TransitionRecord: format,position,previous_record,kind,bundle,migration,bundle_hash,evaluated_against,committed_on,result_state,new_versions,evidence_policy,authorization,created,removed,ref_changes | `documents.rs:887–974` typed kind/format/parent-position product, full serialized record hash, history/data/Behavior/index replays each cover their relevant domain. | Chain/end-state/omitted-event/command/lifecycle/migration tampering including consistent-hash semantic changes. Ordering/multiplicity remain domain-specific. |
| RemovedEntity: entity,id,last_revision,last_content_hash; RefChange: target,source,field,op | Nested transition hash; lifetime uniqueness, old removed version and content-derived ref difference comparisons. | Removal/registry/reference index and reversed enumeration tests; exact runtime incoming completeness assumes Backend contract. |
| MigrationBundle: format,candidate,evidence,authorization_context,migration_hash,source,target,target_declarations,previous_schema,requirements,report,source_validated,target_validated,verification,commit_time; requirements name/held | Closed serialized bundle hash (`documents.rs:804–878`); schema chain/data_migration checks; Behavior replay recomputes requirements/target values and v2 prepared candidate/governance. | Migration tamper property, omitted migration/exact pair/current schema tests. Legacy reports retain weaker structural evidence; report hash includes diagnostics historically defined as content. |
| Decision record: record_version,semantic_profile,behavior_version,data_version,git_revision,action name/hash,state,input,context,facts,result,reasons,trace,derived,changes,lifecycle,commands, with frozen historical omissions | Exact profile-specific record validation/identity and entire original/re-evaluated comparison. | Core replay/current command records, changed payload/counts/parent/read facts. No unified-profile claim erases historical trace/provenance distinctions. |
| Read record: format,behavior_version,read identity/definition,record_id,data_version,state,input,context,result,derived,observed; optional value,reasons,facts,refused_request | `read.rs:523–861` sealing/closed codec/hash and full selected-profile replay; v2 detached diagnostics excluded, v1 diagnostic provenance remains content. | Current success/error/refusal/schema/transport/historical standalone cases; Store historical issue investigated separately. |
| Invocation record: format,behavior_version,schema,capability,kind,data_version,input,context,requested_bindings,binding_facts,outcome,nested record identity,record_id; optional intent/decode metadata by actual profile | Strict envelope/nested record codec and canonical identity; resolve/replay compares entire result, preserves metadata as defined without evaluator authority. | Invocation documents/schema/history/refusal/replay tests. Historical inner read Store issue remains explicit. |
| Command intents/archive/occurrences: intent type/declaration/payload/hash/count, StoreId/history position/event hash/intent hash/multiplicity index | Exact semantic archive and checked canonical bag; occurrence derived after event commitment, no identity feedback cycle. | Duplicate/permutation/fork/count/forged archive/partial event tests; no external delivery guarantee. |
| Governance evidence/policies/context/manifest/signatures | Bundle/event includes archives; mandatory context/policy/subject/store/history/candidate/evidence checks; integrity/authentication/authorization are distinct. | TRUST/VERIFY/IDENTITY own proof/issuer semantics and negative runs; Data replay's weaker archive proposition is explicit. |

O-PERSIST-010 (record fields accounted) is **established by a code invariant** for
canonical serialized inclusion and the listed profile-specific complete replay
comparisons, with hash assumptions and intentional exclusions stated. Per-field
fault test exhaustiveness is **not yet established**: existing property suites
sample named tampering classes, rather than every possible field/value combination.
This is separate from the source-level inclusion argument. Source/method shared
between replay and original evaluation limits independence of positive comparisons.

## Prior leads and open obligations

Prior historical F5/query/read replay corrections are reassessed from current
source, not closed by historical release claims. Current v2 retains complete facts;
Core `read_replay_integrity` covers resolved read query registry, normalization,
strict refused transport and standalone historical interpretation. Store
`read_soundness` supplies current failed/success query standalone replay after
store disposal and non-mutation. Actual collection/execution is recorded by COORD.
The historical Store-backed read/inner-invocation omission is a separate new lead,
not evidence that the standalone corrections failed.

Independent T049 review found a separate current decoding lead, F-TRUST-001:
`Store::replay_read` uses permissive `serde_json::from_str` at `store.rs:1438`,
while Core standalone replay and ReadRecord parsing use strict duplicate-key
decoding. A conflicting duplicate result may be reduced to the original map and
accepted by Store while Core refuses the text. Current new decoding authority is
`013/contracts/identity-and-records.md:143–146`; Store's exact-record checking
promise is `docs/persistence.md:223–225` and 010 US4. Root authorized TRUST's
test-only reproduction E-TRUST-002 confirmed the final required Store refusal
assertion fails: Core rejects the duplicate, while Store `matches:true` after
reduction. Legal v2 controls, equal reduced map and unchanged head passed; no
compile/control failure. This is confirmed malformed-evidence acceptance, not
an authenticated forgery or legal state transition. Store invocation's
Core preflight protects that particular duplicate parser path. PERSIST accepts
the review lead and excludes blanket Store read strictness/O-PERSIST-008 closure.

The nonlocal create/unchanged invariant invalid-child lead is owned by INCREMENTAL
and MODEL. PERSIST confirms the action path has selected incremental child
validation, not a general full-child validation before every CAS. Replay can
faithfully reproduce an invalid-child runtime result; re-evaluation agreement alone
cannot discharge G3. No earlier 014/015 performance scope exempts ordinary committed
state validity.

### F-PERSIST-001 — historical Store replay profile defect

Classification: S3, Medium, reproduced by E-PERSIST-004; independently accepted
by R-VERIFY-005. At `store.rs:1466–1474` and `:1513–1516`, Store-backed replay selects current
read/invocation evaluation. Plain replay explicitly selects recorded v1 inner
format. A legal historical Wire0.8 v1 read can therefore be refused as a mismatch
solely because current Store replay produces v2. Existing authority explicitly
preserves those records (`docs/soundness-remediation.md:21–31`; `read.rs:140–177`;
Core `tests/read_soundness.rs:142–191`). This is a rejection of valid historical
evidence, not a shown ability to authenticate false evidence.

The disclosed test-only overlay `audit_016_read_v1_replay.rs` asserts exact valid
Store/schema/history, positive current replay, positive standalone historical
replay and the required Store historical replay, while checking unchanged head.
It uses the baseline standalone compatibility conversion and no production fix.
Compile failure or a failure before the positive historical assertion would not
confirm this lead. E-PERSIST-004 executed the unchanged-base overlay under
`nix develop` and reached both final historical Store assertions (test lines50
and86), after positive current Store replay, positive standalone historical
replay and unchanged-head checks. Both Store results are `matches:false`; the
first difference is `facts`, or `outcome.record.facts`, missing in historical v1
and added by current v2 replay. Exit101 is expected contract-counterexample
evidence, not passing test status or an infrastructure failure. Immutable
source/patch, stdout/stderr and `run.json` are in
`evidence/runs/PERSIST/replay-v1-red/`.

Minimal remediation is internal replay profile
selection shared with the existing reference evaluator, preserving historic record
bytes. No new record format/syntax/backend API is implied; consequences must be
reviewed under FR-044 before implementation.

### F-PERSIST-002 — initial creation failure-domain underspecification

Category S4; severity Medium. The successful initialization product is stated,
but the outcome of Backend::create error/partial initialization/lost acknowledgment
and retry/reopen is not given the explicit all-or-none or recovery semantics of
commit. A host cannot derive required post-error outcomes or a consumer decide
safe retry from the canonical contract alone. This is mathematical/API boundary
underspecification, not a reproduced implementation corruption.

Exact authority: `lib.rs:38–47` says commit is atomic/crash-safe, while create lists
genesis/head/seed/refs; `specs/005-persistence-contract/spec.md:322–325` FR-006 lists
commit versions/record/head/idempotency; its `data-model.md:182` describes creation
as storing genesis/seed/initial head; `contracts/store-api.md:99–103` has successful
create/open and before/after-write failure cases for commit. MODEL independently
confirmed this scope. No stronger creation failure law was located.

Affected domain: initial genesis creation for all current Backend/Store formats,
including host durable backends. G9's explicitly specified commit theorem remains
separate; O-PERSIST-011 successful creation and O-PERSIST-012 failure/recovery are
not merged. E-PERSIST-003 is authority inspection plus independent MODEL
confirmation (execution fields not applicable). The no-create-fault tests gap is
O-PERSIST-004 and does not itself establish this ambiguity.

Recommended smallest proposal: define the creation failure/uncertain-success and
retry/reopen contract explicitly, decide whether all-or-none durability or a typed
recoverable uncertain result is intended, assess host/conformance/versioning impact,
and preserve existing immutable genesis/history. Approval under FR-044 is required
for that clarification/contract correction; no runtime change is made in this audit.

## Joint boundaries and report limits

Required T076 handoffs: evaluation→Store→verifier (ordinary valid-child premise);
query/read→identity/replay (membership/facts/format); command→governance→commit
(archive/authority/original occurrence); schema→history (exact declarations);
incremental→full→post-CAS (selection/cache). These require producer/consumer
review, not closure by PERSIST alone. The report supplies B-PERSIST-001–006 and
O-PERSIST-001–012 for COORD integration. No independent final verdict is issued.

Independent T049 reviewer `/root/audit016_verify` accepted the qualified source
accounting in `evidence/reviews/IDENTITY/persistence-review.md`, with execution,
historical v1 profile selection and current duplicate decoding explicitly open.
Author accepts the requests and preserves commit-versus-create failure scope;
actual root-run and named joint dispositions are now recorded below and in
the PERSIST handoff. Source-time leads were not treated as executions.

E-COORD-009 subsequently completed all canonical repository gates successfully
on the unchanged baseline with clean source status. This supplies empirical
tool/test evidence, not a whole-kernel soundness proof. E-PERSIST-004 separately
reproduces F-PERSIST-001; a green preexisting suite did not cover this case.

R-VERIFY-005 (`evidence/reviews/IDENTITY/persist-findings.md`) independently
inspected actual E-PERSIST-004 logs and exact creation authority, accepting
F-PERSIST-001 S3/Medium and F-PERSIST-002 S4/Medium with their bounded scopes.
PERSIST independently inspected E-TRUST-002 raw source/run/stdout/stderr as
cross-boundary evidence; it confirms separate current duplicate parsing.
