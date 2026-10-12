# Implementation base

Repository: `git@github.com:kallistoteles/behavior-ir-core.git`.
Branch: `018-strict-profile-replay`; owning checkout `/home/kalle/repos/behavior-ir-core-018`.
Original018: `22459889e982068722616edead4132283d6cb7e4`; original main source: `5949cb111cd6c5af34b0fc9083e78810df450fce`.
Immutable016 audit: `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.
Integrated017: `02ba1b715919c132d7304dbc22231dcddc2ba714`.
018 integration commit / initial production baseline: `6ccd4327c7b1e647bc0a6d1bbc8f2557659af2fb`.

017 is delivered on draft [PR16](https://github.com/kallistoteles/behavior-ir-core/pull/16), not merged or approved by a human reviewer. This isolated integration preserves its archived/current decision paths; peer source review and collateral tests provide implementation evidence, not a claim of human approval. Main and all other worktrees remain unchanged.

Pinned Nix is available: Rust1.98.1 (48a229cea), Cargo1.98.1 (797e8a9bc), Z3 4.16.0. The tracked flake.lock/toolchain are unchanged. Only383MB of disk were initially free. The ignored `target` points to private executable tmpfs `/dev/shm/behavior018-target`, seeded with reproducible017 build artifacts; Cargo still rebuilds from this checkout. This is a build cache, not a dependency or validation override. Final evidence records actual environment and source digests.

The existing modified018 requirements checklist is preserved read-only. Its sole pending item requires implementation verification and is not a missing semantic decision; the user explicitly authorized implementation. Other pre-existing018 artifacts are preserved.

Subsequent command receipts record `CARGO_PROFILE_DEV_DEBUG=0`, `CARGO_PROFILE_TEST_DEBUG=0`, `CARGO_INCREMENTAL=0` to limit private build-cache memory. These affect debug symbols/incremental compiler storage, not test collection, semantics, dependencies, gate commands or Z3. The initial preservation run used defaults and passed all35 collected tests.
