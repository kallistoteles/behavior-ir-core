# Core033 research: durable repository and honest campaign

2026-11-01. Planning evidence only: no adapter was implemented, no dependencies
were installed, and no benchmark or power-loss experiment was run for this note.
The normative scope is [spec.md](../spec.md). Decisions below are implementation
choices for a bounded G0–G1 experiment, not proof of production storage refinement.

## Decision: one SQLite database is the durable publication domain

Use an experiment-local `Repository` implementation with a memory adapter and a
SQLite adapter. Do not extend the released `behavior_store::Backend` merely to
make the new evidence fit the legacy interface. Its current
[trait](../../../crates/behavior-store/src/lib.rs) binds `create/commit` to legacy
`Genesis`, `TransitionRecord`, versions and materialized reference/index changes.
Its [reference implementation](../../../crates/behavior-store/src/memory.rs) is
explicitly in-memory. Both are useful contract/oracle precedents, not existing
durable certified-state adapters.

Select `rusqlite = "=0.41.1"`, `default-features = false`, `features = ["bundled"]`
inside the isolated experiment, with its own committed lockfile. The upstream
[v0.41.1 manifest](https://github.com/rusqlite/rusqlite/blob/v0.41.1/Cargo.toml)
declares Rust 1.89 as its minimum and a bundled SQLite feature; this fits Core's
pinned Rust 1.98.1. The same release's
[SQLite header](https://github.com/rusqlite/rusqlite/blob/v0.41.1/libsqlite3-sys/sqlite3/sqlite3.h#L143)
pins SQLite 3.54.0 and source ID
`2026-10-09 15:46:58 be8d059e9a49089ab2dce5ed26dd87aaf598fdc5fbe0b107c0dd758464bcd5e3`.
At implementation, lock the resolved crate checksums and record runtime
`sqlite_version()`, `sqlite_source_id()` and compile options. Reject a substituted
runtime library. No unsafe code is proposed in Core-owned Rust; SQLite's C/FFI
implementation is an explicitly trusted storage dependency.

Configuration for every connection: `journal_mode=WAL` (verify returned mode),
`synchronous=FULL`, `foreign_keys=ON`, `busy_timeout=1000`. Set a 4096-byte page
size before database creation and freeze `wal_autocheckpoint=1000`. Ordinary
measurements include automatic checkpoints when they occur; record final explicit
checkpoint/close work as lifecycle cost too. Use one local filesystem database,
not `ATTACH` or a network filesystem.

SQLite documents FULL-mode commit durability under its VFS/disk assumptions,
while WAL/NORMAL can lose recent commits after power loss. Its WAL contract also
requires same-host access and gives no cross-database atomicity. These statements
justify the selected configuration, not a Core-specific proof of the adapter.
[Synchronous contract](https://www.sqlite.org/pragma.html#pragma_synchronous),
[WAL contract](https://www.sqlite.org/wal.html).

The current SQLite primary documentation records a WAL-reset corruption bug
fixed in 3.51.3 and later. The selected bundled 3.54.0 is beyond that fix; the
runtime source check prevents accidental use of an older system library.
[WAL-reset history](https://www.sqlite.org/wal.html#walreset).

**Rationale:** A single transaction can durably publish all required object BLOBs,
roots, proof, request result, retention and outbox. This removes an unnecessary
cross-resource protocol between external proof files and a head database.
Preparing/proving a candidate happens outside the write transaction. Inserting
its actual new BLOBs and final metadata is real publication work and is timed.

**Alternatives considered:** Memory alone cannot satisfy the durable latency
claim. A filesystem object directory plus journal/rename needs additional directory
sync, object-closure and crash-recovery work. A remote server introduces unnecessary
network/authority dependencies. SQLite rollback/EXTRA could be a separate valid
experiment, but is not silently substituted when the WAL/FULL case is slow.

## Logical tables and publication protocol

Use strict typed bindings and a versioned schema. Digests and unsigned counters
are canonical BLOBs where their range exceeds SQLite's signed INTEGER domain;
never truncate a u64 or digest to fit a database integer. Indexes used only for
operational lookup do not establish semantic view correctness.

| Table | Required meaning |
| --- | --- |
| `objects` | Immutable digest→(kind, codec, byte length, bytes), including state nodes, observation support, certificates and continuation objects. Reject mismatched existing bytes; never overwrite. |
| `heads` | One current publication manifest/subject, semantic head and activation coordinate per lineage. |
| `request_results` | Unique `(lineage, request_id)` with original request/parent/context digest and exact result reference, including semantic refusals. |
| `events` | Unique `(lineage, position)` and event identity, with the manifest and exact prior semantic head. |
| `outbox` | Ordered `(lineage, event_id, ordinal)`→intent payload reference; equal payloads at different ordinals remain separate. |
| `pins` | Object-retention owners for published heads, historical reconstruction, outbox and continuation. |

All normative values are checked against the accepted semantic subject before
publication. SQL foreign keys help detect operational omissions but do not prove
J, query completeness or cryptographic correctness.

1. Read a short authoritative snapshot and resolve any existing request ID. Read
   authenticated required parent objects, then close the transaction before proving.
2. Compute the private candidate, run K, produce/compress the certificate and
   independently verify its exact expected subject. Build immutable object bytes
   in private memory/files, with temporary files having no publication authority.
3. Start `BEGIN IMMEDIATE`. Re-read `(lineage, request_id)` **before** new parent
   CAS: identical original digest returns the stored result; a different digest
   returns ID-reuse error. This rule applies equally to refusals and commits.
4. Check the exact old head and complete activation coordinate. A mismatch is
   conflict, never implicit rebasing with new time/context. For success, insert all
   new required objects, update pins, insert event/outbox/request-result rows and
   move head in this same transaction. Existing reachable object durability is
   inherited from the prior committed storage invariant; only newly referenced
   objects require new closure checks.
5. For a semantic refusal, insert its certified request result and support under
   the same atomic uniqueness rule, after validating the expected parent; move no
   business event/head/outbox coordinate. A refusal race therefore cannot evade
   uniqueness merely because head stays unchanged.
6. `COMMIT` under WAL/FULL is the acknowledgement barrier. Return success only
   after it completes. On errors during commit/acknowledgement, report uncertain
   status where appropriate; do not assert rollback just because the caller saw an error.

SQLite serializes writers; `BEGIN IMMEDIATE` obtains the write transaction at
entry and can report busy. The one-second busy ceiling is an operational timeout,
not business denial. Contention/wait/retry stays within observed latency.
[Transaction control](https://www.sqlite.org/lang_transaction.html).

Recovery opens the same database with its WAL, lets SQLite recover its transaction,
then resolves the original unique ID in a fresh authoritative transaction. A
published result returns the original event, context, certificate and command IDs.
A missing result after pending writer recovery permits only an exact-ID/original-
digest retry under the same atomic protocol; it never authorizes a new idempotency
key or an assumption that a stale replica proves absence. A valid losing-branch
certificate never becomes the canonical head. No external command dispatch occurs
inside replay or proof verification; physical exactly-once delivery is outside G1.

Keep all study support pinned and disable GC for G1. This is an intentionally
simple retention contract, with actual growth measured. A valid proof may coexist
with unavailable historical support; return a distinct audit-unavailable result.
Do not put unauthenticated object absence into the semantic entity/query domain.

For the first durable baseline, persist a complete prover continuation checkpoint
at each published commit and charge its actual bytes/write cost. It is not proof
of native J merely because it deserializes. Restore with the exact subject and the
selected backend's consistency contract, and independently verify every resulting
final certificate. Deliberate checkpoint loss triggers a separately measured
rebuild from retained derivations, or explicit unavailable status. A periodic
checkpoint optimization is a separately frozen comparison, not an uncharged
change to the cold-start promise.

Basic G1 fault controls: kill before transaction start, after object inserts but
before commit, and after commit but before acknowledgement; then reopen and resolve.
Also exercise two connections racing the same request ID (equal/different digests),
two different requests at one parent, corrupt/missing object bytes, and unavailable
continuation. These are meaningful process-crash controls, not a physical power-loss
or fully verified storage refinement claim. Those broader claims remain G4.

## Decision: a new frozen collector, reusing audited patterns rather than outcomes

Keep new sources under `experiments/transition-study033/`, collectors and campaign
inputs under `specs/033-core-proof-feasibility/benchmarks/`, and generated evidence
under a fresh campaign directory. Do not modify or run existing sealed 032 or
project-side final-study artifacts as scratch work.

Useful precedents are 032's
[manifest preparation/complete-attempt coverage](../../032-transition-verification-study/benchmarks/campaign.py),
[absence-aware summaries](../../032-transition-verification-study/benchmarks/metrics.py),
[resource/process runner](../../032-transition-verification-study/benchmarks/profile.py),
and [frozen profile](../../032-transition-verification-study/benchmarks/profile.json).
Its old diagnostics explicitly exclude Core/Nova/allocator totals; do not promote
those counters to comprehensive accounting. Reusing its source patterns does not
reuse its measurements or resolve its old full-replay bridge.

Freeze the full declared matrix `N∈{128,2048,8192}`, `H∈{1,128,8192}`,
`U/N∈{1,16,128}`: 27 parent scenarios. Keep N constant while constructing H
using field updates/command-only events; measure a creation on a private copy of
that parent separately. U>N comes from explicitly checked or trusted-new-genesis
lifetime inventory, with exactly that origin claim; it does not fabricate proof
of a pre-genesis history. Separate cap-1000 positive/refusal tests use N=999/1000;
scaling module caps must allow their declared population and request sequence.

Freeze exact module/request hashes, local affectedness ≤16, ID≤64 bytes and each
entity payload/context/command output≤1 KiB. Per declared parent run create,
field-update and command-only requests, plus independent recipient checks. Record
native producer, native checker and full certified durable receipt separately.
All three end at named distinct status coordinates; only the last is eligible
for the ordinary synchronous target.

Use 100 whole observations per completed timing scenario, retain all failures
and slow successes, and publish nearest-rank p50/p95 plus uncertainty computed
by a fixed documented method. For example, 10,000 bootstrap resamples with fixed
analysis seed 3301 are a reproducible descriptive interval, not a proof of an
unseen population quantile. Candidate/reference order is balanced and frozen.
Each cold run starts a new process; explicitly label OS page-cache state. Do not
flush a shared host cache or claim cold disk merely because the process is new.

Proposed first campaign ceilings, frozen before any timing: one measured worker;
8 GiB process memory; 900 s per proof/setup/operation attempt; 1800 s whole
scenario; 8 h campaign wall limit; 64 GiB generated-artifact ceiling with at least
16 GiB free before starting. CPUs are selected from the actual allowed affinity
mask and recorded before collection, not assumed to be the old host's CPU 7.
Use a three-attempt smoke stage before large collections, with all work retained.
If ceilings prevent completion, publish blocked/incomplete scenarios and no
positive all-target G1 verdict. A short smoke is never relabeled as a 100-sample p95.

Thresholds remain those in the spec: ordinary certified durable p50≤50 ms and
p95≤100 ms; fresh independent request-to-verdict p95≤100 ms, including required
certificate transfer/cold material; first empty initialization and cold restart
through first useful bounded operation p95≤250 ms. Runtime key generation,
admission/compilation and actual load/validation count where performed.
Initialization/import, full reconstruction, forced checkpoint loss, final database
checkpoint/close and long-prefix construction retain their absolute times/bytes.

Freeze a sustained comparison separately: single producer, 5 arrivals/s for 60 s,
bounded queue length 128, then drain or reach the campaign limit. Record queue
wait, tail, outstanding requests and admission failure; asynchronous proof backlog
is not a faster synchronous receipt. This load is a declared discriminator,
not a throughput guarantee for arbitrary modules.

Whole-request wall time includes input reading, authentication, witness generation,
K, fold, compression, final independent verification, SQLite insertion/commit and
actual retries. Process wall time additionally reports launch/preparation/close.
Phase counters can overlap; do not add separately sampled medians. Report max RSS,
proof/key/checkpoint sizes, SQLite database/WAL size and actual I/O counters under
their stated scope. Summarize full lifecycle, not just warmed key reuse.

## Decision: compare exact semantic projections, not new versus old bytes

Use authoritative Core execution and the archived final **view** candidate from
the project-side [report and reproduction bundle](https://github.com/kallistoteles/behavior-ir-project/blob/7bc141fbc1b110dcac88d5c6702083d40733db8e/docs/research/core-final-investigation-20261031/report.md)
as separate comparison identities. Its source base matches this study's baseline,
but the cumulative patch is not already merged here. Verify the retained source/
executable manifest, or rebuild the archived patch in a separate clean checkout;
do not apply it to the 033 source branch. Record the exact chosen executable and
toolchain and do not present the 22–31% prior campaign result as a new timing.

Compare normalized exact result, refusals/errors/phases, entity values/lifetimes,
event order, requested observation reconstruction and ordered command payloads.
Keep old/new identity algorithms explicit and compare any migration relation only
if actually established. New compact receipt bytes will differ by design. An old
native commit does not implement a compressed certified receipt, so report both
latencies with their guarantees; no speedup ratio between unlike endpoints.

If synchronous proof cost fails, the assessment may still preserve demonstrated
native incremental/compact-observation benefits with their own exactness evidence.
It must not claim the failed complete architecture passed. SQLite adequacy or a
slow first checkpoint policy also does not prove all possible backends impossible.
