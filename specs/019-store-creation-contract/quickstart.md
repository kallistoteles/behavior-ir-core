# Validation Guide: Initial Store Creation Contract

This guide covers the implemented creation targets. Actual test-first baselines,
collection, source custody and scoped results are linked from
[implementation-report.md](implementation-report.md). A command listing is not
itself a passing019 receipt; final evidence binds an immutable candidate externally.

## Prerequisites and implementation base

Work from the Core019 branch in its owning checkout. Preserve local/untracked work.
Completed022 is integrated with017/018 ancestry; the exact integration source is
recorded in [implementation base](evidence/implementation-base.md). Verify this
checkout and its ancestry using:

```bash
pwd
git remote -v
git status --short
git rev-parse HEAD
git merge-base --is-ancestor 3179b13163cd2bc9134176b78029dd39a5a90c8f HEAD
git merge-base --is-ancestor 391017e536ff64ddf94999ec126bc71799952264 HEAD
git merge-base --is-ancestor 02ba1b715919c132d7304dbc22231dcddc2ba714 HEAD
```

The old draft base was not used for behavioral RED claims. Use the pinned Nix
environment, existing dependency graph and public `behavior-engine` consumer.
Do not edit ecosystem pins or add a development bypass to official gates.

## Test-first collection and execution

The implemented targets below are collected and executable. Retained source-bound
RED/GREEN receipts distinguish new behavior from already passing controls;
compilation/setup failures are excluded. Future changes must likewise retain
legal controls and actual behavioral failures before implementation.

```bash
nix develop -c cargo test -p behavior-store --test creation_contract -- --list
nix develop -c cargo test -p behavior-store --test creation_recovery -- --list
nix develop -c cargo test -p behavior-store --test creation_properties -- --list
nix develop -c cargo test -p behavior-store --test creation_contract
nix develop -c cargo test -p behavior-store --test creation_recovery
nix develop -c cargo test -p behavior-store --test creation_properties
```

Implemented assertions: exact complete initialization, idempotent original
retry, stable established foreign conflict, incomplete-publication refusal,
operational failure preservation, legal read/publication races, advanced/migrated
history preservation and correct cold-cache behavior. Internal certificate tests
may belong in the private Store unit module rather than exposing a public observer.

Shared suite registration and designated mutants run through the existing target:

```bash
nix develop -c cargo test -p behavior-store --test conformance -- --list
nix develop -c cargo test -p behavior-store --test conformance
```

The suite preserves31 prior cases and adds all14 [creation cases](contracts/conformance.md).
Verify new cases run direct Backend retry as well as Store preflight recovery.
Each mutant must fail its designated case with activation evidence; reversed-order
and optional-unindexed controls remain positive.

## Public consumer and actual process windows

The implemented facade/host targets run from the same checkout:

```bash
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test store_creation -- --list
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test store_creation
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test store_creation_crash_recovery -- --list
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test store_creation_crash_recovery
```

The process target launches explicit worker modes at every named host boundary;
fresh observers/retries reopen the same target. It must cover private staging,
post-rename ambiguity, post-durability lost acknowledgment, faulty recovery reads/
sync, and equal/conflicting concurrent initializers. Original module/genesis retry
after later commits, removal or migration preserves actual current history.

Record Linux/filesystem/toolchain identity, stable cooperative lock/target
ownership, durable root setup and sync assumptions. A process exit is not a power
failure simulation. A malformed authoritative snapshot is a failure, not an absent
target to overwrite. Do not count undisclosed or skipped windows as covered.

Run existing command/replay/resulting-validity consumer regressions after durable
host helper changes; final gates include all required targets. Test fixture fault
arming may need to occur after a newly checked legal open so later-boundary tests
continue to exercise their intended obligation.

## Compatibility and targeted re-audit

Inventory all current first-party Backend implementations and roles. Document which
hosts conform and which adapters intentionally violate the contract. Preserve
historical genesis, records, hash vectors and 017/018/022 profile fixtures. Assess
minor-class delivery and provide external migration notes. The exact ecosystem
published-release pin remains unchanged during Core implementation.

Map every [P019 obligation](contracts/proof-obligations.md) to concrete source,
invariants, executed tests/mutants and remaining assumptions. Keep the written law
(O-PERSIST-012) separate from actual host creation faults (O-PERSIST-004). This is
a targeted creation re-audit, not closure of all 016 findings or queued 020/021.

## Final candidate and immutable receipt

Finalize and commit implementation, fixtures, reports and task bookkeeping before
freezing a delivery SHA. Tracked reports cannot embed the final SHA of the same
commit that contains them. Push the candidate for exact Git consumer resolution,
then run from the unchanged frozen checkout:

```bash
nix develop -c scripts/gates.sh
nix develop -c scripts/check-consumer.sh --rev <frozen-pushed-candidate-sha>
```

The canonical script runs fmt, clippy, workspace tests/build, determinism, boundary,
public surface, consumer, workflows, terms and script tests. No substitute gate,
private override or ignored mandatory scenario satisfies delivery.

Bind repository, exact SHA, commands, exit statuses, pinned toolchain/environment
and evidence locations in CI or an external immutable receipt without changing
the frozen tracked checkout. Any subsequent source/report/merge/rebase change
creates a new candidate needing fresh final checks. A passing dependency receipt
does not attest 019; a branch candidate does not automatically attest a different
merge/release SHA. Tagging/release publication is separately requested delivery.
