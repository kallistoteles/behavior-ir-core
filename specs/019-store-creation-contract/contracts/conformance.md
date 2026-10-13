# Conformance, Backend Inventory and Evidence Matrix

Inspection source: frozen integrated 022
`3179b13163cd2bc9134176b78029dd39a5a90c8f`. This is a prospective validation
design, not executed 019 evidence. Existing creation success, commit fault and
entity-create concurrency tests do not establish the new whole-Store outcome law.

## First-party inventory

The inspected Core tree has 27 Rust Backend implementations. Locations below are
relative to Core; `src`/`tests` shorthand in the adapter table is under
`crates/behavior-store`. Re-run inventory after integrating the actual base.

| Implementation | Location | Role / required assessment |
| --- | --- | --- |
| InMemoryBackend | crates/behavior-store/src/memory.rs:167 | Reference host; candidate publication and exact retry; logical evidence only |
| DurableBackend | consumer/tests/support/durable_backend.rs:126 | Test-only persistent host; lock/recovery barriers and creation-specific process windows |
| FaultInjector | crates/behavior-store/src/conformance.rs:30 | Creation currently delegates; existing faults affect commit |
| Interleave | crates/behavior-store/src/conformance.rs:182 | Creation currently delegates; existing schedules land commits |
| AlterRecord | crates/behavior-store/src/conformance.rs:940 | Delegating creation, deliberately corrupts history |
| ReversedKeys | crates/behavior-store/src/conformance.rs:1448 | Delegating positive order-control wrapper |

The remaining 21 adapters must be assessed by role, not promoted to supported
general-purpose hosts merely because they implement the trait:

| Family / locations | Count | Disposition |
| --- | --- | --- |
| Counting — src/store/incremental/workload_tests.rs:55; tests/read_store.rs:256 | 2 | Delegates creation; counter expectations reviewed |
| Counted — tests/incremental_validation.rs:32; resulting_state_history.rs:52; resulting_state_reuse.rs:27; snapshot_reuse.rs:28 | 4 | Delegates creation; preserve cache/history controls |
| Mutant — tests/conformance.rs:64 | 1 | Deliberately nonconforming modes; extend designated controls |
| Reversed — tests/queries.rs:91 | 1 | Delegates creation; positive enumeration control |
| Unindexed — tests/query_perf.rs:72 | 1 | Delegates creation; optional-index positive |
| Faults — tests/resulting_state_commit_faults.rs:27 | 1 | Delegates creation; commit faults do not count for 019 |
| FaultBackend — tests/support/history_backend.rs:18 | 1 | Delegates creation; corruption/commit faults |
| HeadFaultBackend — consumer/tests/strict_profile_replay.rs:504 | 1 | Delegates creation; head-fault timing must respect new open checks |
| AuthorityProbe — src/store/replay_tests.rs:14 | 1 | Read-only adapter intentionally rejects writes |
| Tamper — tests/lifecycle_replay.rs:34; migration_replay.rs:232; query_replay.rs:150; replay.rs:62 | 4 | Read-only negative adapters, not creation hosts |
| AlteredValue — tests/replay.rs:339 | 1 | Read-only negative adapter |
| Permuted — tests/query_order_props.rs:55 | 1 | Read-only order adapter |
| ReadProbeBackend — tests/replay_evidence_authority.rs:128 | 1 | Read-only replay instrument |
| FaultBackend — tests/strict_profile_replay.rs:1620 | 1 | Read-only replay fault instrument |

The inventory assessment records applicable obligations, delegation, genuine
physical storage scope and intentionally nonconforming modes. Fault fixtures may
need to arm corruption after a legal open so the intended later boundary is still
tested; document such setup changes and preserve historical evidence/bytes.

### External migration consumers

Read-only inspection of the ecosystem found PyBackend and AnyBackend in
`crates/behavior-py/src/lib.rs:1702,1833`, and DictBackend in
`python/tests/test_store_conformance.py:13`. DictBackend currently asserts absence
on create; the Rust wrappers delegate. Its supported metadata pins an older
published Core. These are migration notes/future ecosystem work, not Core019 code
or evidence of compatibility with this candidate.

## Shared conformance design

Preserve `run(factory: impl Fn() -> B)` and every existing named case. New cases
use fresh targets and private same-target handles to retain B after by-value
create errors. Bounded schedules occur outside active RefCell borrows; setup
panics are never semantic RED evidence. Deep-cloned InMemory instances are not
two handles to the same target.

Names below are prospective case identities. Register them distinctly from the
existing entity-effect `concurrent_creation_same_identity` and commit `crash_retry`.

| ID / proposed case | Required observations |
| --- | --- |
| C019-01 creation_complete_product | Empty/nonempty seed, required refs, exact G/H0/versions/universes/lifetimes/views; ordinary reopen coherent |
| C019-02 creation_invalid_seed_no_publish | Type/range/schema/duplicate/reference/Behavior refusals; Backend create invocation count remains zero |
| C019-03 creation_before_publication_failure | Before-inner-call fault on isolated absent target; fresh observer sees absence |
| C019-04 creation_lost_ack_recovery | After-successful-inner-call error retained; explicit retry recovers exact original Store |
| C019-05 creation_equivalent_retry | Position-zero retry adds no initialization and preserves canonical primary material |
| C019-06 creation_conflicting_retry | Policy/schema/seed or legacy sequence mismatch gives established conflict; original history unchanged |
| C019-07 creation_advanced_recovery | Update/create/remove and equal-StateId later position preserved; original incarnations still checked |
| C019-08 creation_migrated_recovery | Original Module/G recover actual migrated head cold; fresh old-schema operation still refuses normally |
| C019-09 creation_competing_equivalent | Deterministic same-target publishers initialize once; equivalent result recovers |
| C019-10 creation_competing_conflicting | One complete winner; positively established foreign identity conflicts; no mixed product |
| C019-11 creation_recovery_read_failure | Genesis/head/version/universe/incoming/history failure is operational; no invented absence/conflict/success |
| C019-12 creation_order_independence | Backend enumeration/edge order and canonical object-member order do not change result; optional unindexed path agrees |
| C019-13 creation_incomplete_product | Successful observations with missing seed/head/hash/anchor are refused as incomplete or delegated typed integrity failure |
| C019-14 creation_publication_read_interleaving | None-genesis then publication is legal; Some-genesis then later commit uses one captured history coherently |

Exercise both supported genesis profiles where their existing contracts allow
the scenario. Do not invent a Cartesian policy/profile matrix: v1/v2 retain
their allowed policy pairing and canonicalization. v1 seed sequence reordering
changes creation identity; v2 authoring normalization can yield equivalent G.

Test direct Backend idempotency as well as Store recovery: Store's preflight can
avoid the inner create call on an existing target and therefore cannot alone prove
that the Backend's own retry implementation conforms. Direct calls use legal
Core-derived initialization products, never a second host semantic validator.

## Mutation and test-first controls

Require activated designated controls for rejecting all equivalent retries,
overwriting foreign initialization, resetting an advanced head, duplicating a
visible seed lifetime, accepting equal-current-StateId instead of creation identity,
returning success without full publication, omitting original seed material,
exposing private staging, mixing two requests, treating read failure as absence,
and promoting an initial candidate as an advanced current certificate.

Each control must fail its intended case and show that the mutated path ran.
Reversed-order and optional-unindexed controls must remain positive. A passing
existing baseline scenario is a control, not a manufactured RED. If a cache/history
scenario requires an idempotent test backend to reach the new recovery path, use
a legal activated fixture and identify its assumptions. No claim is made that
the original S4 audit reproduced a partial-write or cache soundness bug.

Preserve test-first records for production and deterministic test-tool changes:
source revision/tree, command/filter, collection list, exit status, actual failing
assertion and legal positive control. Compilation/setup/disk errors are not a
behavioral RED. REDs for newly chosen semantics demonstrate missing behavior,
not retrospective compliance with an unstated old law.

## Durable host fault matrix

The test host's exact named creation boundaries must be exposed by test-only
fault controls before claiming coverage. Fresh-process observers access the same
target, stable lock and authoritative filename; private temp files are permitted.

| Window | Required scoped outcome |
| --- | --- |
| Before staging/lock/read failure | No publication by this attempt; operational failure; no global absence claim with competing actors |
| After temp creation or partial write | Normal APIs see no Store; staging can remain after process exit |
| Complete temp before file sync | Still private; no acknowledged creation |
| File sync complete before rename | Still private; Absent on isolated target |
| Rename failure | Operational error; actual target observations determine outcome |
| Rename complete before directory sync | Complete live bytes may exist; durability unacknowledged; recovery establishes barrier before success |
| Directory sync error | No rollback inference; unavailable durability evidence remains operational |
| Directory sync complete before reply | Lost acknowledgment; exact verified retry/reopen succeeds without rewrite |
| Equivalent retry while/after later commit | Same lock/target, original identity checked; actual history preserved |
| Conflicting parallel initializer | Exactly one complete lineage; established foreign conflict, never mixed seed/head |
| Recovery read/sync failure | No successful recovery or fabricated absence; later retry remains safe |

Run equal/conflicting initializers in separate processes, including creation racing
with a first ordinary commit. Cover empty/nonempty referenced seeds, later removals
and migration. Process termination tests process interruption only; power-loss and
device behavior remain disclosed host assumptions or separate implementation-specific
evidence. Require a durable preexisting root or tested parent-entry synchronization.

Normal durable-host read/reopen must cooperate with writer locking and the recovery
barrier; private lock-held readers prevent deadlocks. Keep commit fault modes and
command process tests intact. The generic shared suite has no physical window hooks
and must not report these host cases as established by around-call wrappers.

## Completion evidence

Future implementation produces an implementation-base record, execution ledger,
first-party assessment, case/window coverage, compatibility/migration assessment,
and targeted re-audit. Every mandatory case is collected and executed; no ignored
required case, silently skipped platform, unknown or failed check counts as passing.

Run all canonical gates and exact-revision facade consumer validation after tracked
artifacts/bookkeeping are finalized and committed. Bind command/exit/environment/
logs externally to the frozen candidate. Future merge/rebase/source edits require
new final validation. Existing 016/017/018/022 receipts remain their original evidence.
