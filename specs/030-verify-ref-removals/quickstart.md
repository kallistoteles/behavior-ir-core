# Core 030 validation guide

Implementation worktree: `/home/kalle/repos/behavior-ir-core-030`, branch
`030-verify-ref-removals`. Core 0.15 baseline content is preserved; current verifier
source is 0.11.0. This feature does not publish a release or change downstream pins.

## Tools

Use the pinned Nix development tools: Rust/Cargo 1.98.1 and Z3 4.16.0. The exact
local validation environment and build settings are in [evidence](evidence/README.md).

```bash
cd /home/kalle/repos/behavior-ir-core-030
rustc --version
cargo --version
z3 --version
```

## Mandatory proof and runtime matrix

```bash
cargo test --locked -p behavior-verify --test ref_removals --test ref_removals_semantics --test resulting_state_order
CARGO_TARGET_DIR=target/consumer cargo test --locked --manifest-path consumer/Cargo.toml --test ref_removals
cargo test --locked -p behavior-store --test proof_version_history
```

All three patterns (free, joint and retarget removal) have nonempty real reference
proofs in IR 0.7 and 0.8. [G1](evidence/g1.md) covers allowed/refused Store execution,
complete child inspection, unrelated referrers and replay after dropping proof artifacts.
[G2](evidence/us3.md) covers actual early failures, independent finite-state oracles,
resource uncertainty and [source mutations](evidence/mutations.md).
[G3](evidence/us4.md) covers current trusted inventories/cache context plus genuine
0.10 archives. Historical fixtures remain unchanged.

## Public CLI

```bash
mkdir -p target/core030-evidence
cargo run --locked -p behavior-cli -- verify tests/fixtures/verify/ref-removals/guarded.json --profile tests/fixtures/governance/preservation_profile.json --out target/core030-evidence/guarded-report.json
cargo run --locked -p behavior-cli -- verify tests/fixtures/verify/ref-removals/joint.json --profile tests/fixtures/governance/preservation_profile.json --out target/core030-evidence/joint-report.json
cargo run --locked -p behavior-cli -- verify tests/fixtures/verify/ref-removals/retarget.json --profile tests/fixtures/governance/preservation_profile.json --out target/core030-evidence/retarget-report.json
```

Each report has actual `reference_world` preservation checks with `proven` outcomes.
An Id/no-holder report may have zero checks and is a separate control, not Ref proof.
CLI success is 0, not verified is 1, invalid input is 2; solver infrastructure failure
is 3. Removing guards can produce a confirmed early synthesized-reference failure or
truthful inconclusiveness, never a false proof. See [the semantic contract](contracts/reference-preservation.md)
and [supported patterns/trust boundaries](../../docs/verification.md#complete-world-reference-preservation-verifier-011).

## Resource and compatibility reproduction

```bash
cargo build --locked -p behavior-engine --example ref_removal_resources
python specs/030-verify-ref-removals/evidence/measure-resources.py
python specs/030-verify-ref-removals/evidence/audit-compatibility.py
scripts/gates.sh
git diff --check
```

[Resources](evidence/resources.json) retain all six exact inputs, full default profiles,
per-query scripts/outcomes/timing, auxiliary versus selected-site counts, whole-process
resources and exact source digests. Default budgets remain 20,000,000 rlimit and
60,000ms guard. The measurement adapter uses the workspace's existing solver trait
and calls the public facade; no external consumer API/dependency was added.
Performance timings are separate from semantic evidence identity. Installation/build
cost is excluded and OS caches are documented rather than claimed cold.

[Compatibility](evidence/compatibility.md) checks all frozen fixtures and actual old
runtime records/replay. [Final gates](evidence/gates.txt) and their
[source/environment context](evidence/gates-context.json) are the acceptance record.
The reviewed [arbitrary-finite argument](correctness.md) and
[construct correspondence](construct-mapping.md) distinguish solver proofs, finite tests
and trusted Rust/backend correspondence. These do not claim end-to-end Lean verification.
