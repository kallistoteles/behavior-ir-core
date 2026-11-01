# Core033 validation quickstart

This is the run guide for the **planned** implementation. The experiment binary,
proof workspace and collector do not exist yet. This planning turn did not run
them or obtain any experimental result. All command behavior is specified in
[runtime](contracts/runtime.md), [semantics](contracts/semantic-and-evidence.md)
and [campaign](contracts/campaign.md).

## Available now: locate and review the feature

From the Core033 worktree:

```sh
cat .specify/feature.json
.specify/scripts/bash/check-prerequisites.sh --json --paths-only
git diff --check
```

Expected feature directory: `specs/033-core-proof-feasibility`. Read spec, plan,
research, data model, contracts and the generated [task list](tasks.md).
`/speckit-analyze` can check consistency before `/speckit-implement`. The task
list starts with the G0 MVP and an early actual-artifact checkpoint; no task or
experiment has been executed by generating it.

## After implementation: prerequisites and build

Use the frozen x86_64 Linux machine and local durable filesystem. Require the
pinned Nix environment, toolchains, locked dependencies, disk/memory capacity,
portable arithmetic and audited RNG overlay. No real private deployment data or
public fixed test entropy is used; synthetic fixtures and streams are recorded.

Planned commands, to run only after the named files/targets are implemented:

```sh
nix-shell experiments/transition-study033/shell.nix
(cd experiments/transition-study033/proofs && lake exe generate --out ../generated)
cargo test --manifest-path experiments/transition-study033/Cargo.toml --locked
cargo fmt --manifest-path experiments/transition-study033/Cargo.toml --check
cargo clippy --manifest-path experiments/transition-study033/Cargo.toml --all-targets --locked -- -D warnings
cargo build --manifest-path experiments/transition-study033/Cargo.toml --release --locked
```

Expected: red-before-green records exist for implemented controls; tests cover
actual acceptance, not only stand-ins. This build alone establishes no G1 result.
Use `experiments/transition-study033/target/release/core-proof-feasibility033` as
the trusted executable for subsequent commands (shown below as `$trial033`).

## Freeze, then check the first actual artifact pair

```sh
trial033=experiments/transition-study033/target/release/core-proof-feasibility033
trial033_dir=specs/033-core-proof-feasibility/evidence/campaign-001
"$trial033" freeze --profile specs/033-core-proof-feasibility/benchmarks/profile.json --out "$trial033_dir"
"$trial033" check-correspondence --manifest "$trial033_dir/manifest.json" --out "$trial033_dir/correspondence"
```

Expected: actual native source and semantic IR/matrices/encodings have kernel-checked
receipts, allowed transitive axioms and fresh replay. Final backend port/augmentation
checks occur in prepare and must pass before a release is produced. Mutated comparison/source,
deleted range constraint and changed public wire/digest limb fail. If the bridge
is not established within its ceiling, preserve the failed target and assess it;
do not claim success from model proofs or proceed as if FR-011 passed.

## Prepare and validate a genuine chain

```sh
"$trial033" prepare --manifest "$trial033_dir/manifest.json" --correspondence "$trial033_dir/correspondence/receipt.json" --out "$trial033_dir/parameters"
trial033_release="$trial033_dir/parameters/release.json"
"$trial033" init --manifest "$trial033_dir/manifest.json" --release "$trial033_release" --origin "$trial033_dir/inputs/empty-origin.json" --repo "$trial033_dir/repository.sqlite" --out "$trial033_dir/init"
"$trial033" execute --manifest "$trial033_dir/manifest.json" --release "$trial033_release" --repo "$trial033_dir/repository.sqlite" --request "$trial033_dir/inputs/create.json" --out "$trial033_dir/create"
"$trial033" verify --trusted-bundle "$trial033_dir/parameters/verifier.bundle" --expected "$trial033_dir/inputs/expected-create.json" --certificate "$trial033_dir/create/certificate.bin" --out "$trial033_dir/fresh-consumer"
```

The verifier bundle is independently selected/derived from the checked release,
not trusted because the producer named it. Expected claims are independently
derived/frozen before collection and checked against authoritative reference
meaning; never copied from an unverified candidate as their own oracle.

Expected: preparation produces an immutable release linked to the immutable input
manifest and source/IR receipt, after checking actual augmented shape and returned
ports. Real compression and exact Done endpoint are accepted without historical
Core replay. Wrong origin/program/profile/endpoint and incomplete phase reject.
Also run the checked seed999→create1000→refuse1001 case, negative x, wrong-but-safe
effects, duplicate commands and command-only history via the frozen fixtures.
Record first-step constructor and full setup/key costs, not only `prove_step`.
These manual commands validate behavior, not the latency target. The collector
measures first-use wall time from before actual runtime preparation through init;
pre-running prepare must not hide it. Every completed cold first-use sample uses
its declared fresh deployment/parameter state. Source/release builds have separately
recorded costs; runtime key/admission work is never reclassified as a free build.

## Durability, reconstruction and recovery

```sh
"$trial033" resolve --repo "$trial033_dir/repository.sqlite" --request "$trial033_dir/inputs/create.json" --out "$trial033_dir/resolved"
"$trial033" audit --manifest "$trial033_dir/manifest.json" --release "$trial033_release" --repo "$trial033_dir/repository.sqlite" --range "$trial033_dir/inputs/audit-range.json" --out "$trial033_dir/audit"
"$trial033" recover --manifest "$trial033_dir/manifest.json" --release "$trial033_release" --repo "$trial033_dir/repository.sqlite" --out "$trial033_dir/recovery"
```

Expected: same-ID retry returns original, different contents fail ID reuse, and
crash/lost-ack tests preserve exactly old-or-new published result with no duplicate
commands. Full observation matches reference meaning. A valid proof with removed
support has unavailable audit; missing checkpoint requires measured rebuild or
explicit unavailable continuation. Also retry equivalent initialization after
head advances and race different-origin
initializers: original initialization is returned without rewinding, incompatible
origin fails and partial authority is corruption. Use isolated disposable test
database copies
for corruption/kill controls, not the retained primary evidence database.

## Collect and publish an honest decision

```sh
python3 specs/033-core-proof-feasibility/benchmarks/campaign.py --manifest "$trial033_dir/manifest.json" --release "$trial033_release"
"$trial033" assess --manifest "$trial033_dir/manifest.json" --release "$trial033_release" --evidence "$trial033_dir" --out "$trial033_dir/assessment.json"
```

If correspondence/preparation failed, assess instead with `--failure-receipt`
and the exact stage failure receipt; a successful release file is not required
to report that failure. Never edit the frozen input manifest to invent missing keys.

Expected: complete planned-cell ledger and whole samples, cold/lifecycle costs,
failure/limit records, immutable artifact manifest and separate correctness/
performance verdicts. Inspect `g1_pass`, not just process exit 0. Under-ceiling
incomplete studies cannot claim p95 targets. A negative assessment is retained
and identifies which independent native/observation benefits remain supported.

Before any integration, run existing repository gates in addition to this
experiment's locked tests/format/lints and formal checks. No production rollout,
legacy trust promotion or external command execution follows from this guide.
