# Implementation plan

## Design

The Store owns a Mutex-protected optional cache entry containing exact history,
schema identity, canonical admitted wire content and Arc<SeedFacts>. Cache lookup
occurs after existing state/schema binding. Use the Backend contract's immutable
historical snapshots; never use a content hash as a substitute for position.

Keep full validation as the reference. A fail-closed expression allowlist proves
locality of every entity rule and the selected update-only action. Reject global
invariants, references, derived expressions, queries and lifecycle from the local
class. Changed values are checked through check_behavior_snapshot (no globals in
this class). After Applied, move/update the uniquely owned retained snapshot;
never clone the complete map to carry validity. Other transitions remain cold at
their new position. History-only used facts still come from the backend.

## Constitution check

Deterministic semantics and public contracts remain unchanged. New tests precede
implementation and are observed red. No new dependency, unsafe code, public
Backend method, bypass or persistent certificate is introduced. Mutex preserves
Store's existing Send/Sync capabilities. Required gates, public consumer checks,
and determinism checks run in the pinned Nix environment.

## Verification

Counting-backend integration tests cover warm reuse, local commits, fallback,
identity separation, lifetime facts, error propagation and CAS refusal. Generative
tests compare local delta checks with full validation on valid parents including
invalid children; store sequences compare canonical outputs/replay with cold
stores. Record inherent full-universe record cost separately from validation.

## Complexity tracking

One in-memory snapshot costs O(N) space; the cold path already materializes it.
Warm identity checking costs O(|B| + |schema| + |event|), including exact module
comparison and event hashing. Local child validation/update costs O(k log N) plus
rule/value cost. If an event contains the whole universe, identity checking can
also scale with N. Whole-state records/queries and cold fallback are not claimed
constant-time. See correctness.md for assumptions and proof.
