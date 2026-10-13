# Core020 implementation base

Implementation started from clean branch `020-admission-version-metadata` at `6f35b0cbadce332de19617ac9ae92cbdb1ef8c08`, remote `git@github.com:kallistoteles/behavior-ir-core.git`. This descends from the clarified source `af8a0364170a82899fb69c7e18b151ddea8ebdd3` and integrated main `634023a6d504bac927192c964d945c7025b467c4`. Subsequent planning/task commits changed feature documents only. D-020-001 is resolved as A.

The baseline worktree is detached at that exact implementation base. Baseline CLI construction occurs before test/production edits; its independent copied executable and source digests are retained with the baseline. Audit/parent receipts do not attest020.

Pinned environment: Rust/cargo1.98.1, Z3 4.16.0, repository `flake.lock` and `rust-toolchain.toml`; the command receipts retain their digests. Resource settings are `CARGO_BUILD_JOBS=1`, dev/test debug=0 and incremental=0, with dedicated Cargo/TMP/target locations in `/dev/shm/core020-build`. Registry reuse supplies the same locked dependencies; no Cargo config, path patch, dependency override or gate bypass is introduced. The owning checkout's ignored target symlink points to this task's target.

The existing ignore rules cover target, backup Rust files, Python bytecode, logs and environment files. No Docker/Node/Terraform/Helm configuration was detected and no additional ignore file is required. The built-in requirements checklist has15/15 checked markers and remains read-only. No extension hooks or owning AGENTS.md were present.

Scope is the private module version authority and its reporting projections. Historical inventories, semantics/hashes/replay, schemas/fixtures, public facade, ecosystem pins and release publication remain separate.
