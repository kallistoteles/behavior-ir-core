---
name: behavior-engine-development
description: Change the Behavior engine itself in this repository (the Rust core, verifier, store, CLI, the public `behavior-engine` crate, wire, record and store formats) under the project constitution and the Spec Kit workflow. Use for any change inside crates/, schema/ or the fixtures; never for bindings or applications built on Behavior (those live in the ecosystem repository, behavior-ir).
---

# Developing the Behavior engine

This skill is for work **on** Behavior. Application work **with** Behavior uses the consumer
skills in `skills/`, and those never tell anyone to change the engine. The constitution
(`.specify/memory/constitution.md`) overrides everything here.

## Non-negotiables

- **Test-first.** Write the test, run it, and see it fail for the right reason before writing the
  code that makes it pass. A bug fix starts with a test that reproduces the bug.
- **Determinism.**
  - Use `BTreeMap`/`BTreeSet` or explicit sorting wherever order can reach an output.
  - Never use `HashMap` iteration for results.
  - Clocks, randomness, identities and time are inputs.
- **Soundness first in the verifier.**
  - `proven` must be sound.
  - Anything the encoding cannot decide exactly becomes a fresh symbol or a free flag, so it
    shows up as `inconclusive`, never as a guess.
  - A counterexample counts only after the runtime reproduces it.
- **Code rules.** Errors are typed (`thiserror`). No `unwrap`/`expect` outside tests unless a
  documented invariant justifies it at the call site. No `unsafe`.
- **Consumers do not drive semantics.** A consumer's semantic gap is input to a future feature
  (specify → clarify → plan). It never justifies a quick change to make one application work.

## Workflow

Every feature goes through Spec Kit, one feature directory per branch under `specs/`:
1. `/speckit-specify`
2. `/speckit-clarify`
3. `/speckit-plan`, with its Constitution Check
4. `/speckit-tasks`
5. `/speckit-analyze`
6. `/speckit-implement`

The implementation ends with `specs/<feature>/checklists/implementation-review.md`. It reviews
against every FR and SC, the constitution and the principles, and records deviations and
follow-ups. Mark tasks `[X]` as they are done. Commit only when the maintainer asks.

## Gates

A change is done only when all of these pass:

```bash
scripts/gates.sh                                  # fmt, clippy, tests, build, determinism, boundary,
                                                  # public surface, external consumer, script tests
cargo test --release --workspace -- --ignored     # the exhaustive property, replay and performance runs
scripts/release-check.sh                          # before a release: gates, reproducible build, clean CLI run
```

`scripts/gates.sh` is the same list Spec Kit's implement phase and `core-ci` run.

## The public door

- **Unified capability boundaries use `behavior_engine::invocation`.** Requested
  bindings are typed identities; Core/Store resolve their values at one exact
  snapshot. New observation-only capabilities are declared reads. Legacy action
  and read intents remain frozen compatibility paths.
- **Scope rule for capability-boundary changes:** is the change needed for reads
  and actions to use the same invocation model? Additional semantic primitives
  require their own approved feature; do not introduce them through a boundary fix.

- **`behavior-engine` is the only programmatic API.**
  - Every item a consumer needs is re-exported explicitly from it, one per line, under its
    original module's namespace.
  - `api/engine-surface.txt` lists them, and `scripts/check-public-surface.sh` keeps the two
    equal. A wildcard re-export is refused.
- **Internal crates may change freely.** `behavior-core`, `behavior-store` and `behavior-verify`
  can be reorganized as long as the facade's items keep their meaning.
- **`consumer/` proves the surface suffices.** It is a crate outside the workspace that depends
  on `behavior-engine` alone and exercises every capability a binding needs. Add a test there
  when a binding needs a new item.
- **The core never names a binding, model or the ecosystem repository**
  (`scripts/check-boundary.sh`). A binding feature that needs a new core form starts as a core
  feature and a Core Release; the ecosystem then adopts it by moving its pin.

## Compatibility rules

- **Identities are frozen.**
  - Existing modules keep their item hashes and behavior versions, byte for byte.
  - The snapshots are `tests/fixtures/frozen_versions.json` and the per-feature files, e.g.
    `tests/fixtures/frozen_versions_007.json`. They are checked by the IR version tests, e.g.
    `crates/behavior-core/tests/ir_0_6.rs`.
  - A change to an existing identity is a breaking change: see `docs/versioning.md`.
- **New semantic forms get a new wire IR version.**
  - A new form must be refused in older IR versions (`crates/behavior-core/src/wire.rs`).
  - Documents without new forms keep their old version and bytes.
  - Add the JSON schema under `schema/`.
- **Records and store documents are versioned too.**
  - A record gets a new `record_version` only when it gains new content.
  - A store document format never changes its tag's meaning.
- **Fixtures come from independent generators.**
  - Wire fixtures are written by `tests/fixtures/wire/build_fixtures.py`, which writes JSON
    directly, never through the DSL.
  - Regenerating must leave existing fixtures unchanged.
  - The canonical modules of the example domains (`tests/fixtures/bindings/`) are what every
    language binding must reproduce, identities and decisions alike.
- **Bindings carry no semantics.** A binding only builds nodes and calls the engine through
  `behavior-engine`. Arithmetic, membership, invariants, hashing, verification and persistence
  live in the Rust crates.
- **The public surface is a document.**
  - `api/engine-surface.txt` lists the Rust surface. The CLI commands and the document formats
    are the rest of the contract.
  - Adding to it is a patch release; removing or changing an element is a minor release
    (`docs/versioning.md`).

## Patterns that recur

- **Conformance mutants.** For each backend guarantee, add a conformance case to
  `crates/behavior-store/src/conformance.rs` and a deliberately broken backend in its test that
  must fail exactly that case. Add a positive control (for example reversed key order) that must
  pass everything.
- **Mutation-check property tests.** After a property test passes, break the implementation on
  purpose and confirm the test fails, then restore it.
- **Keep the machine usable.** `target/` grows with every feature. If the disk fills, clear
  `target/debug/incremental` first, since it is regenerated.
