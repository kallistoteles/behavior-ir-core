# Reproduction and actual execution — 034

Read [the decision](decision.md) and [cost assessment](cost-assessment.md) first. The investigation is documented and independently validated as **conditional**, with implementation/release gates blocked and product adoption unactivated. This is not a passed performance campaign or a replacement Core.

## Exact retained inputs

The actual worktree is `/data/repos/behavior-ir-core-033`, on `033-core-proof-feasibility`; the pre-implementation base was `9c25879d35a1c72068a2aad905dd163167076e05`. The user's project checkout is a separate repository. All changes in this delivery are limited to `experiments/assurance-study034/` and `specs/034-safety-assurance-investigation/`.

[Input manifest](evidence/campaign-001/input-manifest.json) SHA-256:

```text
23f83dcb2d6b29dfad6bb3405bf0c07015d1e5578e3959f041a0eeb02816c403
```

It binds actual complete source snapshots, Cargo.lock, profiles, authored LD8/LD8C facts, 44 primary Git source objects, seven exact prior artifacts, build-environment files and tool identities. It has a single boot-bound monotonic start and no future result digests. The prepared manifest does not exist because bootstrap failed. Frozen code, expectations, profile and old evidence were not edited afterward. Final human reports are later authored outputs; their original definition snapshots remain immutable.

The actual public pair is Core `63a8c164523275e06ac1d7dc5330db4a899c9d99` / Safety `8c0849fb82343ddf5a4dd99b5070ee985f8ebff0`. Rust/Cargo are pinned 1.98.1; Python is 3.13.15; Lean/leanchecker are 4.30.0 with the exact installed derivation recorded in the source/tool manifests. Only public `behavior-engine` and `behavior-models` semantic interfaces are used. No new evaluator, crypto backend, C prover attempt, private Core API, production deployment or changed trust/finality contract was introduced.

Tools were preinstalled. Private registry/Git sources were copied from existing local material; no package was downloaded for these experiments. OS caches were uncontrolled. Fresh request workspace would not mean cold OS or installation. Development Rust builds were unoptimized, with later debug-symbol suppression to contain disk usage. Generic x86-64 codegen, one measured CPU, Rayon/OMP/cargo worker count one, private cargo/target/tmp roots, offline locked dependencies and the recorded process limits apply. [Post-run host information](evidence/campaign-001/gates/host-after-run.json) is explicitly a later diagnostic, not a retroactively frozen input.

## Original campaign commands and outcomes

The unchanged [quickstart](quickstart.md) remains the planned guide; it has not been rewritten into a success story. The original executions were:

```sh
python3 experiments/assurance-study034/study.py freeze \
  --profile experiments/assurance-study034/profiles/diagnostic.json \
  --out specs/034-safety-assurance-investigation/evidence/campaign-001

python3 experiments/assurance-study034/study.py run-case \
  --manifest specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json \
  --case bootstrap
```

Freeze exited 0. Bootstrap exited 1. The tool selector resolved `/run/current-system/sw/bin/nix-shell` through its symlink to a multi-call executable named `nix`. Nix uses its invocation name for dispatch; the resulting command rejected the shell filename before Cargo started. See [the exact argv/binding](evidence/campaign-001/roles/build/binding.json), [raw receipt](evidence/campaign-001/roles/build/command/receipt.json) and [stderr](evidence/campaign-001/roles/build/command/stderr.txt). This was neither a compilation failure inside Rust nor a performance limit of Core/Safety.

`run-case` was then attempted once for `proofs`, `integration`, `certification-cold-2`, `certification-cold-3`, `controls` and `growth-D1` through `growth-D6`. Each exited 2 at the prerequisite gate, without running candidate roles. [Blocked-attempt receipts](evidence/campaign-001/blocked-attempts) retain exact commands and summaries. No scientific retry, alternate worker fallback, reset or modified-input run followed the failure.

The planned three certification/checking pairs, all final E01–E15/LD8C controls and all eighteen arrangement/growth cells have zero complete final observations. Their costs are unknown, not zero. There are no percentiles, no invented medians/ranges and no same-guarantee speedup. [The lifecycle index](evidence/campaign-001/lifecycle/index.json) and [24 final cells](comparison.json) account for the unrun work and differing A/B/C contracts.

## Earlier development results and formal scope

The separate [development support index](evidence/campaign-001/supporting-development/index.json) copies principal original bytes; complete original runs remain under [development](evidence/development). They include real complete LD8 certification/checking, checked activation and native lifecycle, distinct A/fresh-B/resident-B processes, separate complete LD8C certification/checking, targeted controls and recovery tests. These are not cold campaign samples.

Development formal run [008](evidence/development/T034-proofs-008/result.json) checked nine intended positive roots and eight explicit countermodels, including exact expected theorem types, transitive axiom allowlist and actual `leanchecker --fresh` replay. Only `propext`, `Classical.choice`, and `Quot.sound` were allowed. Pinned imported proofs, adapted source identities, expected types, original source snapshots and compiled-closure identities are retained. Compiler/tool failures in earlier attempts are preserved separately, not mathematical countermodels. No native end-to-end or circuit correspondence theorem follows.

The E01–E15 map in [assurance-arguments.md](assurance-arguments.md) gives the actual development scope. E14 remains operationally unresolved. Its forced waiting-process stop does not establish business unsafety or an actual Safety tool theorem outcome. E15 rejects substituted version metadata; it does not reproduce an old checker soundness bug. A's all-writer host premise and B's shared-Core/independent-anchor premises remain explicit. Memory acknowledgements never establish Q6 or physical command delivery.

## Quality checks and deviations

An early fixed final-check helper exposed the same Nix dispatch defect. Its format and 52 Python checks passed, while its cargo/repository launcher probes failed before their requested commands. The helper later stopped because it used the new integer-only semantic-wire JSON parser on old diagnostic metadata containing a decimal. [The helper failure record](evidence/campaign-001/gates/controller-failure.json) preserves this separate defect. No old bytes were changed.

Actual scoped Rust tests and Clippy were subsequently run with the correctly named installed alias `/nix/store/f82xir6jh4ad169dpcs8hf32pjzs7sgy-nix-2.34.8/bin/nix-shell`. Its executable SHA-256 is exactly the frozen binary's SHA-256; only the invocation name differs. These were quality gates, not retried bootstrap/measurement roles. Environment included:

```text
CARGO_HOME=/data/repos/behavior-ir-core-033/experiments/assurance-study034/private/cargo
CARGO_TARGET_DIR=/data/repos/behavior-ir-core-033/experiments/assurance-study034/private/target
CARGO_NET_OFFLINE=true
CARGO_INCREMENTAL=0
CARGO_PROFILE_DEV_DEBUG=0
CARGO_PROFILE_TEST_DEBUG=0
RUSTFLAGS=-C target-cpu=x86-64
RAYON_NUM_THREADS=1
OMP_NUM_THREADS=1
CARGO_BUILD_JOBS=1
```

| Check | Actual outcome |
| --- | --- |
| Standalone `cargo test --offline --locked --manifest-path …/Cargo.toml` | 25 Rust tests passed. [Receipt](evidence/campaign-001/gates/scoped-tests-named-tool/receipt.json). |
| Scoped rustfmt | Passed, with `skip_children=true`; imported old Rust source was not formatted. [Receipt](evidence/campaign-001/gates/scoped-format/receipt.json). |
| Standalone `cargo clippy … --all-targets -- -D warnings` | Passed. [Receipt](evidence/campaign-001/gates/scoped-clippy-named-tool/receipt.json). |
| Python `unittest discover … -p 'test_*.py'` | 52 passed. [Receipt](evidence/campaign-001/gates/python-tests/receipt.json). |
| Actual `scripts/gates.sh` | Format and Clippy passed; test compilation was killed at the original 2 GiB cache cap. No repository test stdout; later stages unrun. [Actual receipt](evidence/campaign-001/gates/repository-named-tool/receipt.json). Original `gates/repository.json` remains the earlier failed-launch probe. |
| Two quality-only identical-input LD8 oracle executions | Research semantic digests and complete original invocation/history values equal; 12 attempts/eight commits each. [Result](evidence/campaign-001/gates/determinism-semantic-replay.json). The original prepared-helper `determinism.json` remains not-run. |
| Legacy-format-aware read-only preservation audit | 185 old bound inputs, four old manifests, 44 primary source Git blobs and both public dependency revisions checked. [Result](evidence/campaign-001/preservation.json), [procedure](evidence/preservation_audit.py). |
| Proposed future correction | Two targeted regression tests failed on frozen code, passed on an isolated proposed copy, and `git apply --check` passed. [Binding](evidence/follow-up/binding.json), [patch](follow-up-launcher.patch). Not applied; no new campaign. |

Exact resolved argv, raw stdout/stderr, wall/resource records and process closure are in each linked receipt directory. All heavy execution was sequential. Executed standalone binaries were retained and byte-verified before removal of their disposable debug target. After the repository capacity stop, only its own closed disposable debug target was removed; the stopped gate was not retried. [Cache-maintenance receipts](evidence/campaign-001/gates/cache-maintenance-after-stop.json) preserve the actions. No historical/global cache or the two unrelated untracked 033 binary files was deleted.

The full repository gate did **not** pass. A standalone pass cannot confer release/integration readiness. The separate legacy audit and named-tool checks do not silently repair the frozen helper or manufacture campaign performance results. Supplemental quality scripts and proposed corrections are identified separately from frozen scientific inputs.

## Closing, validation and another reader

After all campaign processes/capture writers closed, [closed-artifacts.json](evidence/campaign-001/closed-artifacts.json) indexed 235 exact files, including source/original evidence copies and blocked attempts. Independently rehashing those bytes succeeds. Quality gates and final authored reports have later separate bindings; no late output rewrites an original role or assessment.

The initial `collect --manifest … --out …/assessment` and separate `validate_report.py --manifest … --assessment …/assessment` both exited 0. For this negative campaign that means complete, consistent source/status/reference/cell/control/FR/SC accounting. The validator explicitly reports the formal gate blocked; it does not create a missing certificate. Final reports, gate outcomes and this reproduction record are then collected into a distinct `assessment-final` and independently validated again. Original assessment bytes are preserved.

Use the retained receipts to review past execution. Create-once commands intentionally reject an existing output; do not rerun them over archived directories. To repeat structural/source validation in the original installed environment, keep the frozen code unchanged, collect into a **new** review directory and run the independent validator against that new directory:

```sh
python3 experiments/assurance-study034/study.py collect \
  --manifest specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json \
  --out specs/034-safety-assurance-investigation/evidence/campaign-001/assessment-review-NEW

python3 experiments/assurance-study034/validate_report.py \
  --manifest specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json \
  --assessment specs/034-safety-assurance-investigation/evidence/campaign-001/assessment-review-NEW
```

This validates archived research; it is not a fresh scientific measurement campaign. Absolute original IPC/tool/source paths and installed Nix identities are deliberate bindings, not a claim of automatic cross-machine portability. A different checkout/environment requires an explicitly prepared new version. Applying the proposed launcher/legacy-reader patch changes frozen code and must happen in a separate future worktree/input version, with its own regression preflight and new bounded campaign. Never rewrite campaign 001's manifest, failures or 033's verdict to accommodate it.

Publication is only the owned 034 research artifacts. There is no production merge, release, deployment, or activation of a trust/finality decision.
