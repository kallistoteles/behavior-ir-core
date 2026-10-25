# Core 029 implementation evidence

## T001 — checkout and environment

- Worktree: `/home/kalle/repos/behavior-ir-core-029`; detached planning checkout
  `aff31ddda163e343be616cb378388e464b90933b`.
- Immutable baseline: Core0.15.0, `6b93898a9375113f7a8946f23ab5535319b6f5d6`.
  `git diff --stat <baseline> HEAD` returned no differences before implementation.
- Rust1.98.1 (`48a229cea`), Cargo1.98.1; locked dependencies unchanged. Z3 4.16.0.
- Reference host: x86_64 Linux, Intel Xeon X5670 @2.93GHz, eight visible CPUs,
  approximately24GiB visible RAM. Resource conditions must be captured again with pilots.
- Tool binaries come from the already installed Nix environment; no toolchain or
  release artifact was modified. Ignore patterns already cover Rust build outputs,
  environment files, editor artifacts and profiling outputs.
- The requirements checklist is16/16 complete; its markers remain reviewer-owned.

## Initial verification

The first attempted exact test filter matched zero tests. That invocation is not a
passing verification and is retained here to prevent treating an empty run as evidence.
Use qualified selectors or verify the executed test count. Build preparation took46.85s;
it is not an execution benchmark. Subsequent results are recorded as they are obtained.

Existing test targets: Store library incremental tests, integration targets
`incremental_validation`, `snapshot_reuse`, migration targets, and the existing public
consumer check. Full acceptance and performance claims remain pending.

## Setup and fixture results

- Implementation now uses Git branch `029-incremental-global-validation` in the same
  worktree; no branch, user work or release tag was replaced.
- `cargo test -p behavior-store --lib store::incremental:: -- --nocapture`:29 passed,
  one explicitly ignored release workload; nonempty execution verified.
- New neutral admission/seed and1000/1001 reference-boundary tests:2 passed.
  Full decision/bundle and committed outcome comparison helpers are exercised.
- Core work-counter calibration first failed with0 snapshot rows instead of3, then
  passed after hooks were implemented. The additional Backend count calibration and
  cross-mode parity remain subject to their subsequent runs.
- Measurement hooks are behind the opt-in `validation-work` Cargo feature. Default
  builds contain no detailed diagnostic counters. No execution decision uses a counter.

## T004–T007 progress

The private full-state reconstruction and independent cardinality-boundary control
pass. The shared workload additionally compares full canonical observation digests for
all four global-rule configurations and five workload shapes, plus a simultaneous
batched-create/multiple-rule case. Reference and normal outcomes agree.

`validation-work` calibration passes on a three-row snapshot, including exactly two
typed Backend enumerations, three returned members and three version reads. Counters
cover actual Core decoding, snapshot/child work, predicates, query membership, selected
explicit copies, cached Store scans, Backend enumeration/versions/record reads/commits
and serialized document bytes at Store hashing. `copied_rows` counts named collection
copy sites, not every allocator operation; `hash_document_json_bytes` measures JSON
size at hash entry, not all domain-tagged hash input bytes. Total-path timing remains
required for work beyond these diagnostic counters.

`baseline-red.txt` now contains four expected failing work controls (true/count globals,
update/create), with passing ALLOW/commit/drain checks. A prior fixture compile error is
preserved separately in `attempts/`; it is not treated as a regression-test result.
No production optimization or capacity acceptance has occurred yet.

## G0 freeze

-309 production-like processes (103 cases ×3), six instrumented growth pilots and
  four full-reference pilots passed with exact observation digest parity.
- Frozen numeric criteria and provenance: `../evaluation-profile.json`; integrity
  digest: `profile-freeze.sha256`. No candidate optimization was evaluated first.
- Latest focused incremental suite with `validation-work`:32 passed,3 explicit
  ignored measurements; the known-red optimization regression was explicitly skipped
  and remains recorded as failing in `baseline-red.txt`.
- Four pilot-runner failure/mode/timeout tests pass. Rust formatting passes.
- Generic conditional reasoning and source mapping are in `../correctness.md` and
  `../construct-mapping.md`. They do not claim a completed observer-reuse proof; G1
  must still establish the concrete evaluator/reproducer correspondence.
