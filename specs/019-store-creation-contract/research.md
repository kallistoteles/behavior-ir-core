# Research: Initial Store Creation Contract

**Date**: 2026-10-12. **Method**: Read-only parallel source inspection; no builds,
tests or durability experiments. The clarified local specification is authoritative.
Source observations use frozen integrated 022
`3179b13163cd2bc9134176b78029dd39a5a90c8f`; the 019 draft checkout does not yet
contain that integration. All technical-context decisions are resolved.

## R019-01 — implementation base

**Decision**: Record an implementation revision containing 017/018/022, with
`3179b13163cd2bc9134176b78029dd39a5a90c8f` as inspected required ancestor.
**Rationale**: Validation profiles and replay boundaries changed after the draft base.
**Alternatives considered**: Implement against old published-source draft; rejected
because certificate/replay behavior differs. Merge during planning; unnecessary.

## R019-02 — public state and caller knowledge

**Decision**: Absent → Complete has one atomic publication; staging is private.
Caller knowledge separately distinguishes KnownAbsent/KnownComplete/uncertainty.
**Rationale**: Accepted clarification, not a law inferred from commit atomicity.
**Alternatives considered**: Public Creating/Resume/Abort and negotiated capabilities
were explicitly rejected.
**Evidence**: `crates/behavior-store/src/lib.rs:39–54` describes atomic commit but
only the successful creation product.

## R019-03 — signatures and evidence-based error mapping

**Decision**: Keep existing signatures; `Store::create` with original module/genesis
is verified recovery. Use existing `StoreError::Contract` for stable conflict/incomplete
codes. No host-error-string parsing or new public result enum.
**Rationale**: Complete published evidence can establish exact identity classification.
**Alternatives considered**: CreateOutcome enum, changed BackendError, extra recovery
API; source/API migration is unnecessary. Message parsing proves no semantic fact.
**Evidence**: `lib.rs:43–54`, `documents.rs:54–56,94–98`, `store.rs:919,1027`.

On original Backend creation error, run one bounded classification pass. A positively
verified complete foreign publication yields conflict. Absent, equivalent, incomplete
or unavailable evidence retains the original Backend error. An explicit subsequent
retry recovers equivalent publication; the failing attempt is not converted to success.
Secondary read failure cannot establish absence or hide the primary error.

## R019-04 — original identity and historical profiles

**Decision**: Reuse canonical genesis/StoreId and exact original material at position
zero; preserve current history and migrations.
**Rationale**: Equal live StateId, path or schema does not identify creation.
**Alternatives considered**: Compare current state to seed, reset advanced Store,
sort historical seeds. These lose history or change identity.
**Evidence**: `documents.rs:485–550`: v1 seed sequence remains identity-significant;
v2 requires typed-key order. `store.rs:632` preserves supplied legacy seed order.

## R019-05 — one seed validator, bounded generic open

**Decision**: Extract existing seed validation into a private candidate. Create/
recovery with Module checks exact normalized versions, universes, refs and lifetime
facts. Module-free open checks structural completeness under Backend premises,
stays cold and does not certify Behavior validity.
**Rationale**: Declaration hashes do not supply types/Ref declarations. Raw v1 seed
JSON can differ from normalized persisted values.
**Alternatives considered**: Raw v1 equality, tolerant decimal comparison, pretend
open proves typed semantics, or change open to require Module; rejected.
**Evidence**: `store.rs:919–997,1027–1042`; `behavior-core/src/eval.rs:1843–1847`
decodes then type-aware encodes.

Generic open checks seed keys, historical incarnations, declaration-bound hashes,
lifetimes, seed accumulator and captured head/history/schema. Reference endpoint
structure can be checked, but deriving the complete expected Ref relation requires
Module. No independent semantic proof is claimed for generic opening.

## R019-06 — publication witness and cache authority

**Decision**: Published immutable genesis is the witness; capture one head and check
history as of that position. Absence is read-point-specific. Promote seed validation
only after exact acknowledged/verified position-zero publication; advanced recovery
is cold.
**Rationale**: Separate None-genesis/Some-head reads can straddle legal publication.
Later commits can advance head during recovery. Current create always caches position zero.
**Alternatives considered**: Mixed-read corruption inference, head-stability loops,
seed evidence certifying current advanced state; rejected.
**Evidence**: `store.rs:998–1022,185–264,1156–1190`.

Reuse result-oriented history checks. `replay_data().ok` is not a recovery certificate:
report paths may convert Backend errors to divergence. Original-product/current
endpoint checking retains immutable-history premises and is not full-prefix replay.

## R019-07 — host publication and durability

**Decision**: InMemory builds a candidate then publishes once. The durable consumer
keeps its canonical snapshot/stable-lock protocol; equivalent retry verifies original
data and completes recovery sync barriers without rewriting the current snapshot.
**Rationale**: Both existing hosts reject all repeats. The durable helper already
supports create/commit; a focused extension suffices.
**Alternatives considered**: General storage runtime, overwrite on retry, physical
durability claims from InMemory; rejected.
**Evidence**: `memory.rs:176–193`; `consumer/tests/support/durable_backend.rs:38–149`.

Live rename publication and final directory-sync acknowledgment are distinct.
Host read/reopen must cooperate with the stable lock and establish required recovery
durability before claiming success. Use private lock-held readers to avoid nested
locks. An interrupted post-rename publication can become verified Complete after
recovery finishes the required barrier; private construction never becomes a Store.

The bounded durable-host premise is a preexisting durably established root directory;
alternatively host setup must explicitly sync newly created parent entries. Syncing
only root does not establish its own directory entry in its parent. Device/OS/storage
honesty, complete historical answers and exclusive cooperative target ownership remain
explicit assumptions.

Primary references distinguish atomic replacement from persistence:
[Linux rename(2)](https://man7.org/linux/man-pages/man2/rename.2.html),
[Linux fsync(2)](https://man7.org/linux/man-pages/man2/fsync.2.html).
[Rust File::lock](https://doc.rust-lang.org/std/fs/struct.File.html#method.lock)
documents cooperative locking; ordinary nonlocking reads are not assumed blocked.
These support the design, not a pinned-toolchain or power-loss test receipt.

## R019-08 — conformance and realistic fault evidence

**Decision**: Keep shared factory/cases; use private same-target handles for bounded
fault/interleaving tests and designated mutants. Add actual durable-host process
workers at private-write/sync/rename/acknowledgment windows.
**Rationale**: Fresh-target factory supplies no physical crash or staging hooks.
**Alternatives considered**: Relabel commit-only evidence, add public fault capability,
claim two around-call failures cover physical windows; rejected.
**Evidence**: `conformance.rs:1977` registers 31 current cases; crash_retry is commit,
concurrent_creation_same_identity is entity effects. Current durable tests arm
faults after successful creation. See [inventory/matrix](contracts/conformance.md).

## R019-09 — compatibility and immutable evidence

**Decision**: Minor-class public Backend-contract change, migration notes and
first-party assessment. Numerical release/tag/pin changes remain delivery work.
**Rationale**: Compiling hosts can be nonconforming; retry/open behavior changes.
**Alternatives considered**: Internal-cleanup/patch-only story or using old tests as
new guarantee evidence; rejected.
**Evidence**: [Version policy](../../docs/versioning.md), accepted D019-03.
The inspected ecosystem pins v0.12.0 at `b525da46d4282166418a90141f0c94fd099e9b47`;
its PyBackend/AnyBackend/DictBackend require later migration, not Core019 edits.

Finalize tracked reports/bookkeeping, freeze source, then bind gates/consumer receipt
externally to exact SHA. New source/report bytes create a new candidate. Preserve
016 evidence; O-PERSIST-012 written law and O-PERSIST-004 fault coverage stay separate.

## Post-design review

Independent API and durability reviews checked the generated design against the
clarified spec and inspected source. The API review identified one overly broad
absence claim in the proof argument; it was corrected to distinguish this
attempt's nonpublication from competing publication. Both reviews found the
bounded corrected design coherent under its stated Backend/history/durability
premises. This is design review, not code, test or physical-storage evidence.
