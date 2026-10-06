# behavior-ir-core
Core defines meaning. Everything else defines ways to author and use that meaning.

Behavior Core is the deterministic semantic kernel of Behavior IR. A behavior is an immutable,
typed, content-addressed description of valid state changes. The core admits it, hashes it,
evaluates it, verifies it, persists it and replays it, with the same result every time.

This repository is the complete authority on what a Behavior program means. Everything needed to
decide that lives here:
- the wire IR and its schemas;
- the type system, admission, canonicalization and content hashing;
- the semantics of expressions, queries, reads, transitions, entity lifecycle and schema
  migrations and durable typed command requests;
- evaluation, SMT verification and governance;
- the persistence contract and replay;
- the conformance fixtures.

Bindings, models, examples and agent skills are built on top of it in the ecosystem repository,
[behavior-ir](https://github.com/kallistoteles/behavior-ir). Nothing here depends on them; see
[ARCHITECTURE.md](ARCHITECTURE.md).

## The public contract

Consumers may rely on four things. The repository separation is not the boundary; this
contract is.

- **`behavior-engine`** (`crates/behavior-engine`): the only supported programmatic Rust API.
  - It has explicit re-exports only, listed in [`api/engine-surface.txt`](api/engine-surface.txt).
  - `behavior-core`, `behavior-store` and `behavior-verify` are internal and may be reorganized.
  - Depend on it by an exact Git revision of a release tag:

    ```toml
    behavior-engine = { git = "https://github.com/kallistoteles/behavior-ir-core", rev = "<release commit>" }
    ```

- **The command-line tool `behavior`** (`crates/behavior-cli`). It covers admission, evaluation,
  reads, intents, replay, verification, authorization, migrations and version reporting. It is a
  consumer of `behavior-engine` like any binding.
- **The document formats and their schemas** (`schema/`): wire IR, migration IR and read
  documents, decision and read records, and store documents. Their versions are in
  [`docs/versioning.md`](docs/versioning.md).
- **The conformance fixtures** (`tests/fixtures/`): inputs with expected results that every
  binding and model must reproduce. Each release also publishes them as an archive.

## Semantics

| Area | Specification | Documents |
|---|---|---|
| Wire IR, admission, hashing, evaluation, intents | `specs/001-verifiable-behavior-ir/` | `PRINCIPLES.md` |
| SMT verification, attestations, governance | `specs/002-smt-verification/` | `docs/verification.md` |
| Fixed-scale decimals, exact arithmetic | `specs/003-fixed-scale-decimals/`, `specs/004-exact-arithmetic-closure/` | |
| Persistence contract, replay | `specs/005-persistence-contract/` | `docs/persistence.md` |
| Entity lifecycle | `specs/006-entity-lifecycle/` | |
| Relational queries | `specs/007-relational-queries/` | |
| Schema evolution and migrations | `specs/009-schema-evolution/` | |
| First-class reads | `specs/010-first-class-reads/` | |
| Durable command intents and trusted governance | `specs/013-durable-command-intents/` | [Commands](docs/commands.md), [governance](docs/governance.md) |

## Development

Requires Nix with flakes. The dev shell provides the pinned Rust toolchain, z3, zig,
cargo-zigbuild and gh.

```bash
nix develop
scripts/gates.sh           # every quality gate of the constitution, as CI runs it
```

`scripts/gates.sh` runs:
- fmt, clippy `-D warnings`, the tests and the build;
- the determinism check (every deterministic operation twice, byte for byte);
- the boundary check (nothing names a binding or model);
- the public-surface check;
- the external consumer build (`consumer/`), which uses only `behavior-engine`;
- the script tests.

## Releases

A Core Release is an annotated tag `v<version>` on one exact commit. It is never moved; a fix is
a new patch release.

- `scripts/release.sh <version>` checks and builds a release locally.
- The `core-release` workflow does the same for a pushed tag and publishes it.

Each release publishes:
- the manifest;
- the checksums;
- the conformance archive (schemas and fixtures);
- the `behavior` CLI for x86_64 Linux (static, musl).

A local build of a release commit has the same checksums as the published one; run
`scripts/release-verify.sh v<version>` to compare them.

## Specifications

Features are specified with GitHub Spec Kit.
- **Numbering:** core features are numbered 012 onward. Features 001–007, 009 and 010 live
  here. `specs/011-core-ecosystem-split/` is a reference copy of the feature that created this
  repository.
- **The ecosystem repository:** ecosystem features are numbered 500 onward and live in
  behavior-ir.
- **Cross-references:** a reference to the other repository names it, for example
  "ecosystem 500".

Layout:
- `crates/behavior-core`: wire, admission, evaluation, reads, migrations.
- `crates/behavior-verify`: SMT verification and governance.
- `crates/behavior-store`: the persistence contract and the in-memory backend.
- `crates/behavior-cli`: the command line.
- `crates/behavior-engine`: the public API.
- `consumer/`, `schema/`, `tests/fixtures/` (see its README), `docs/`, `specs/`.

## Durable external requests

Wire IR0.8 / Core0.12.0 evaluates typed guarded command bags without executing them. Atomic commit makes requests durable in history; checked facade streaming exposes stable committed occurrence IDs. Adapters own actual I/O/retries/status, and explicit later invocations handle domain results. Command-only transitions preserve state identity while advancing history. [Run the trusted CLI/consumer demonstration](specs/013-durable-command-intents/quickstart.md).

Legacy bytes/hashes/replay retain their original version semantics and trust levels. Required store-v2 authorization authenticates exact whole candidates, including commands. This feature is scoped implementation acceptance; the wider Core soundness review remains open.
