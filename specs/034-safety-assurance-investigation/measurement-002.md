# Investigation 034: measured A/B follow-up 002

The repaired runner completed all twelve frozen campaign cases, including all six growth cells and their three repetitions. This establishes a usable bounded diagnostic comparison, not a production latency or cryptographic feasibility result. Ordinary local work is tens of milliseconds in the smallest case, but grows to roughly half a second at 256 entities. A new consumer's full rederivation reaches 152 seconds in the largest case.

Source branch: `research/034-ab-measurement-002`. Executed primary controller source: `a6ff8bbf5cec0809281a8e92a9d2a7763bed2b35`. Public Core: `63a8c164523275e06ac1d7dc5330db4a899c9d99`; Safety: `8c0849fb82343ddf5a4dd99b5070ee985f8ebff0`.

## 1. Repair and preflight

[Preflight 002](evidence/preflight-002/) observed the launcher and legacy-reader regressions fail before repair and pass afterward, exercised the actual named Nix launcher, and checked legacy SHA bindings before read-only decimal parsing. New semantic JSON remains integer-only. The first release build succeeded, but [campaign 002](evidence/campaign-002/) exposed an additional bootstrap cycle: launching the oracle required the prepared manifest that the oracle was intended to produce. That failed campaign is closed and retained, not counted as a measurement.

Three call-site regression tests cover the corrected built-worker/bootstrap path and rejection of failed, unclosed or changed builds. Two more tests bind corrected freezes to predecessor bytes and the same monotonic clock/boot/limits. Campaign 003 inherits campaign 002's original 7,200-second budget; preparation and failed work are not hidden by a fresh clock. Native Rust semantics and public dependencies were not changed by these runner repairs.

## 2. Actual bounded campaign

[Input manifest](evidence/campaign-003/input-manifest.json), [execution outcomes](evidence/campaign-003/campaign-run.json), [closed bytes](evidence/campaign-003/closed-artifacts.json), and [machine-readable costs](measurement-002.json) retain exact inputs, outputs, commands, resource receipts and binary identity. The closed index contains 2,015 files.

The twelve cases comprise bootstrap, fresh abstract proof checks, integration, two additional cold program pairs, adversarial/control cases, and D1–D6. All matched their declared expectations. An intentionally killed/stopped process remains an operational failure even when its fault-injection expectation matches. E14 remains operationally unresolved as a scoped simulation; E15 establishes old-version metadata rejection, not reproduction of an old soundness bug. Seventeen abstract proof roots were freshly checked; native-to-Lean and physical circuit equivalence are still unproved.

Single heavy workers were bounded to one CPU and 8 GiB, 900 seconds per process, 1,800 per scenario and 7,200 inherited campaign seconds. Three repetitions per growth cell are exploratory observations, not p50/p95 estimates.

## 3. Observed costs

All table values are **diagnostic medians in milliseconds**, each from three completed observations. Every transition changes one entity (`D=1`); `N` is population and `H` is parent history length. Repetitions use the same exact parent and expected endpoint. Raw ordered observations and ranges remain in the JSON.

| Cell | N | H | A operation | B fresh work | B basis establishment | B local extension |
|---|---:|---:|---:|---:|---:|---:|
| D1 | 2 | 8 | 29.069 | 399.556 | 350.093 | 22.446 |
| D2 | 64 | 8 | 181.077 | 3,080.161 | 2,739.694 | 153.663 |
| D3 | 256 | 8 | 598.183 | 11,340.186 | 9,762.990 | 536.465 |
| D4 | 2 | 32 | 26.062 | 1,441.698 | 1,482.452 | 27.245 |
| D5 | 2 | 128 | 24.927 | 5,694.467 | 5,609.195 | 28.338 |
| D6 | 256 | 128 | 620.457 | 152,205.647 | 147,972.814 | 563.139 |

A is ordinary producer work. Its operation timer includes embedded request construction, native evaluation and memory commit, full response/assurance-sidecar construction and persisted research response. Parent preparation and program checking are separate.

Fresh B independently reconstructs and checks the history. Its worker interval includes input work and checked-history persistence but ends before final worker summary completion and excludes process launch. Resident B first genuinely establishes its basis; its local-extension timer then covers incoming request/candidate reads, own Core execution/comparison/commit and expected endpoint checks. Checked-history output persistence follows that extension timer. These are different scopes and assurance roles: the table does not establish an equal-guarantee A/B speedup.

Cold program certification/verification roles took 73.247–77.105 seconds including their research wrappers. This admission cost must be accounted for without charging it to every ordinary operation or hiding it from cold-start results.

History length has a large effect on fresh B and basis establishment, while local A and resident extension remain much flatter across H. Population growth is a separate problem: both local paths increase substantially at N=256 despite D=1. This is an observed finite matrix, not a universal asymptotic proof.

## 4. Cost diagnosis and limits

[Cost diagnosis](cost-diagnosis-002.md) combines exact pinned source with six accepted phase-instrumented runs. It identifies repeated prefix passes and full-record/state work. Instrumented outputs match primary checked-report meaning after excluding diagnostic fields. Optional cache-control binaries were identical, so their intended treatment was not established; component probes failed before timing. These are explicitly excluded in [diagnostic validity](evidence/diagnostics-002/validity.json).

This research uses an in-memory Core backend. Research-file fsync does not establish durable application publication (Q6). No production endpoint, p95 target, compressed proof or replay-free fresh-consumer contract has been demonstrated. A checked historical basis can support subsequent local checks under its explicit premises; a producer flag, artifact hash or exit status cannot supply that premise.

## 5. Result of the three requested steps

Runner repair/preflight, the complete bounded A/B campaign, and the source-backed cost investigation are complete. The result justifies separating cold admission/history acquisition from ordinary extension, and demands a Core architecture that maintains checked state/dependency views without repeatedly materializing the full population or historical evidence. It does not select a new trust model, finality policy or production patch. Existing campaign-001 reports and product decisions remain unchanged.
