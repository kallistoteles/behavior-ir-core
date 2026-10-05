# Contract: atomic commit, command stream and replay

Implements FR-019–035/041–044. [Governance](governance.md) is a shared prerequisite,
not an adapter-execution policy.

## Exact history and v2 commit

HistoryRef (behavior.history_ref.v1) contains store,state,position,record. At0 record=genesis
StoreId, otherwise canonical event hash. StateRef remains the legacy state/position projection.
V2 evaluated_history must match evaluated_state plus exact parent hash; fork-equal state/
position is insufficient.

Commit_bundle.v2 retains read/write/fact/lifecycle metadata, semantic record and commit_time,
adds full evaluated_history and candidate_transition.v2 identity. Evidence is complete v2
when required and archives the compared explicit Q; diagnostics are absent. Transition_record.v2 contains action/migration bundle,
position/previous_record/bundle hash/evaluated/committed/result state, version/lifecycle/
reference changes and governance identities. Domain dispatch follows validated format.

All profile0.8 commits require genesis.v2/evidence_policy.v2, including none and empty K.
A v1 store refuses a new-profile write with HISTORY_FORMAT_UPGRADE_REQUIRED before mutation;
use validated export/new-genesis adoption. This avoids a history-format mode chosen by guards.
State-only/migration commits share the checker and atomic primitive. Historical v1 required
stores follow explicit refusal/adoption rules without changing old documents.

## Atomic algorithm and recovery

1. Validate format/kind/store/behavior/record/candidate identity/full history binding.
2. For recovery, locate already committed position+1 and validate exact evaluated parent,
   candidate/bundle/record integrity and original event; return already=true.
3. Otherwise compare expected parent, evaluated_history and actual full head.
4. Bind module/schema, establish valid snapshot and rederive record/read/write/fact/lifecycle/K.
5. Compare independently supplied Q with signed Q, check ContextHash and bound bundle time,
   and enforce authenticated policy at Q.policy_time. Fresh governed writes without independent
   Q fail CONTEXT_REQUIRED. Archive the compared Q before constructing the event.
6. Construct entity versions/removals/reference events and one canonical event.
7. CAS against evaluated_history.record; atomically write versions/index events/record/head/
   idempotency data.
8. Derive occurrence identities from successful committed event. Never dispatch.

Check all position/revision/count arithmetic. Self-hashed candidates are not proof of evaluation.
Abort/conflict/refusal exposes no commands. Completed write with lost acknowledgment is a
recoverable event, never labeled an actual failed commit.

Command-only means empty version/removal/reference deltas, unchanged StateId/revisions/
universe and advanced position/last_record. Existing allowed no-op treatment remains when
all guards are false and no state change occurs. Recovery returns the same event/occurrences
even after later commits. An intentional repeat needs evaluation at a later exact parent.

## Committed occurrences

Output: command_occurrence_id,store,history_position,commit_record_hash,multiplicity_index,
intent:{declaration,payload,intent_hash}. IDs follow [identity contract](identity-and-records.md).
No occurrence IDs appear in records/candidates. Equal intents have indices0..n-1 per commit.
Copied canonical history agrees; divergent events differ despite equal states.

No public unchecked/from-candidate constructor. Serialized occurrences are claims until
validated against committed history; self-hash proves neither commitment nor authority.
Trusted adapters consume store output. Core cannot prevent unrelated I/O by an adversarial host.

## Whole-event command stream

~~~text
request format = behavior.command_stream_request.v1
after = HistoryRef                      # exclusive
through = optional HistoryRef           # missing/null pins current committed head once
max_records = integer default256, range1..1024
~~~

Scan after.position < position <= observed_head.position in ascending position, at most
max_records whole events. Include command-free actions/migrations; emit every occurrence
from each scanned event sorted by intent key then multiplicity index. Never split/drop a
commit's multiplicity.

~~~text
page format = behavior.command_stream_page.v1
store
after = validated original endpoint
observed_head = pinned ending HistoryRef
items = ordered committed occurrences
next_after = last scanned HistoryRef, or after for empty interval
complete = next_after == observed_head
~~~

Continue incomplete pages with after=next_after,through=observed_head. At completion checkpoint
next_after; later polling may omit through. Appends beyond pinned head are excluded. Empty
items can advance through empty/migration events. max_records bounds scanned events, not
command count/response bytes; one large commit is returned whole.

Wrong store, negative/future/reversed position, bad limit, mismatching state/record, fork,
missing record or broken chain fails explicitly, never a successful empty page. Candidates/
records above committed head are excluded. Reading changes no state/history/checkpoint.
Reference implementation walks history, ignoring command indexes. Future indexes must give
exactly equal results; no authoritative outbox table or extra backend method.

## Replay

Both replay modes share range/genesis/start/end/parent/hash validation, checked positions,
bundle/candidate/document hashes, exact result state and full final HistoryRef. Fix existing
Behavior replay final-StateRef/chain omissions before relying on command-history proof.

Data replay:

- validates archived declaration/type descriptors, canonical values/order/counts/intent hashes;
- reconstructs state/index/chain meaning without the current Behavior module;
- authenticates archived exact policy/profile/manifest/evidence/time when required, checking
  signed manifest identity and report coverage/aggregate;
- derives occurrence IDs only from validated committed events.

Data replay does not re-evaluate Behavior or independently derive proof obligations without
its module. Archived closed manifests are trusted verifier attestations. Behavior replay and
live commit additionally derive/compare them from the exact admitted subject.
Both modes validate the semantic v2 report/manifest domains, exact unique site-key coverage
and archived Q. Role intervals/waiver expiry use archived Q.policy_time, not the current clock.
Non-reproducible/infrastructure aborts cannot appear as signed semantic verification reports.

Behavior replay loads recorded BehaviorHash/profile and migration source/target behaviors,
re-evaluates recorded state/input/context/facts, and compares entire semantic result, K/
multiplicity/observations/trace. Diagnostics are excluded only for new profile; legacy
record domains/comparisons remain preserved.

External adapters/current credentials/endpoints/mutable policies/results are irrelevant.
Replay never dispatches, queues, mutates source store or invokes future actions. Changed
occurrence assertion/declaration/payload/count/fork/event hash fails. Source permutations
produce equal canonical bytes. Invalid security-sensitive representations fail rather than
being accepted as different signed identities; insignificant JSON whitespace is nonsemantic.

## Backend contract and conformance

Backend::commit remains one atomic crash-safe CAS over versions/removals/reference events,
record/head/idempotency. Versioned documents add no second persistence primitive. Custom
backends adapt construction/formats at the minor API release while preserving v1 bytes.

Faults: pre-write abort, wrong-parent CAS, lost acknowledgment after write, missing record
with advanced head, record beyond head, broken chain and partial state/command durability.
Recovery/enumeration detect inconsistency. Conformance detects injected violations; it cannot
prove arbitrary backend completeness/honesty/crash safety.

Test-only consumer backend persists one atomic host snapshot and reopens in a second process
after termination between durable write and acknowledgment. In-memory reopen remains useful
but cannot replace this proof. No production filesystem backend/executor is added to Core.
