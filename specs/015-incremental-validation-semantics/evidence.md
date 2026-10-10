# Implementation and historical evidence

Current authorized implementation is private, conservatively guarded and separately
verified below. The following earlier sections preserve historical prototype and
workflow records; their old source/gate results are not current acceptance.
Final workload and gate acceptance is recorded in the authorized implementation
sections and verification.json.

## Historical workflow correction (2026-10-10)

The prototype was implemented prematurely while the requested workflow was
clarification, before planning was requested. Its code, tests and recorded results
are retained as evidence of actual local work, not approval of its design or proof
that 015 is complete. [spec.md](spec.md) now frames 015 as an internal optimization
observationally equivalent to the existing full validator. At that point the
plan/tasks were superseded prototype records and real planning remained pending.

The subsequent explicit speckit-plan request produced a new [plan.md](plan.md),
research, private data model, proof obligations and validation guide. Verbatim
pre-planning design is preserved in [prototype/design-before-plan.json](prototype/design-before-plan.json).
No source/test changes, new task generation or implementation verification occurred
in that phase. Historical gate/benchmark results below remain prototype evidence,
not proof that the narrower planned design is implemented or accepted.

The boundary correction changes documentation only. It does not change prototype
source, tests, wire formats, hashes, admission, supported facade exports, canonical
dependency metadata or the original 014 checkout. Source digests and previous gate
results below describe the same prototype code, not acceptance against a new plan.

The prototype has a replacement/reference-result interface and grouped entity-rule
reuse. It has no general signed-relation runtime, expression delta graph or
incremental query/aggregate engine. Its new `pub mod delta` and `pub mod validation`
are workspace implementation interfaces; `behavior-engine` does not expose them.
No machine-checked Behavior proof was produced.

The documentation correction passed `git diff --check`, local Markdown link
checks, verification JSON parsing, all eleven recorded prototype source digests,
the twelve original 014 baseline digests and unchanged canonical ecosystem
dependency metadata. `nix develop -c bash -c 'scripts/check-terms.sh &&
scripts/check-public-surface.sh'` passed. No extension hooks are configured.
The specification checklist remains 7/7. Full runtime gates were not repeated
because source and tests were unchanged; their earlier result remains scoped to
the prototype revision recorded below.

## Provenance

015 uses isolated worktree `/home/kalle/repos/behavior-ir-core-015`, branch
`015-incremental-validation-semantics`, base `b525da46d4282166418a90141f0c94fd099e9b47`.
The twelve pre-existing 014 files were copied unchanged; SHA256 baselines are in
`/tmp/behavior-015-parent-baseline/baseline.json`. The original Core 014 checkout
and ecosystem dependency metadata are not implementation targets. No release
publication or ecosystem compatibility claim follows from local experiments.

## Test-first log

- `/tmp/behavior-015-red-delta.log` and `red-delta-all.log`: newly written result,
  composition and complete operator tests failed to compile for missing delta
  API/inventory before `delta.rs` implementation. This is API-absence red evidence.
- `/tmp/behavior-015-red-validation.log`: missing ValidationPlan/Key APIs before
  witness lowering/shared row-helper implementation.
- `/tmp/behavior-015-red-store.log`: create/read scanned the universe and reference
  node child evidence was discarded on the 014 baseline, before 015 integration.
- Generated tests initially exposed two test harness mistakes (duplicate derived
  name and treating a removed identity's historical version as a live entity).
  The first canonical gate also rejected a test fixture that placed a query-dependent
  derived rule in an entity constraint (current admission forbids that placement).
  Replaced it with an admitted transitive Exists dependency, retaining global/query
  coverage in its legal scope. Corrected fixtures/live checks; these were not
  product defects or passing tests.
  Their regression seeds remain collected in the test suite.
- `/tmp/behavior-015-red-overlay.log`: active provider error wording differed
  between candidate and reference facts. Observed failure before correction.
- `/tmp/behavior-015-green-core-lib.log`: initial nine Core unit/property tests
  passed. Later additions are covered by the final canonical gate.
- `/tmp/behavior-015-green-store.log`: lifecycle/reference sequences and the
  updated 015 execution assertions passed; timings remain ignored in normal CI.

The original 014 specification, proof and evidence files remain unchanged.
In this isolated 015 checkout the runtime counter assertions in snapshot_reuse.rs
now expect the strictly stronger child reuse. The original 014 checkout's twelve
baseline files are still byte-identical.

## Verification and workload evidence

The canonical `nix develop -c scripts/gates.sh` workflow passed with only Cargo
memory-saving profile/build settings (debug info and incremental compilation off,
two build jobs). No dependency override or gate modification was used. It covers
fmt, clippy with warnings denied, workspace tests/build, deterministic conformance
and history/replay checks, boundary/public surface checks, the supported external
consumer, workflows, terminology and release-script refusal tests. See
[verification.json](verification.json) for source/log digests and the exact command.

The first attempt failed on an invalid query-in-entity-rule test fixture;
the corrected final run passed. Existing ignored long/diagnostic tests remain
ignored; the new controlled release benchmark was executed explicitly. Ignored
tests are not reported as independent passing evidence. A full private tcup
handler benchmark also completed with matching consumer outcomes.

Final `git diff --check`, artifact JSON parsing, relative documentation links,
original 014 SHA256 preservation and ecosystem dependency metadata checks passed.
All changes remain local and uncommitted in the isolated 015 worktree. No release,
tag, GitHub publication, ecosystem pin or canonical tcup acceptance was changed.

## Workload measurements (2026-10-10)

Raw samples: [controlled-results.json](benchmarks/controlled-results.json) and
[tcup-results.json](benchmarks/tcup-results.json). Seven samples per series, release
builds. Other gates/build work ran concurrently, so these are indicative latency
measurements, not isolated hardware performance guarantees.

The comparator forces canonical full-snapshot reconstruction before every
consumer operation. It uses the same 015 transition semantics and does not
replace the candidate derivative with a different public API or disable
validation. Operator/candidate equivalence is tested separately.

| Model / workload | Retained delta result median (ms) | Forced reconstruction median (ms) |
| --- | ---: | ---: |
| Controlled 10,000 / warm | 0.384 | 93.018 |
| Controlled 10,000 / update_read | 7.307 | 202.317 |
| Controlled 10,000 / create_read | 2.534 | 199.029 |
| tcup 10,002 / warm | 21.69 | 1541.16 |
| tcup 10,002 / update_read | 154.94 | 4368.54 |
| tcup 10,002 / create_read | 166.42 | 3841.82 |
| tcup 10,002 / query_3000 | 145.39 | 1777.48 |

For controlled 10,000-row writes followed by reads, the retained strategy made
zero Backend keys_at calls and 3–4 version reads per pair; forced reconstruction
made two keys_at calls and approximately 20,000 version reads. Counter tests, not
the timing samples, establish the absence of universe reads on optimized paths.

The tcup experiment drives the actual persistent TcupServer.call handlers with
its synthetic performance fixture, fixed clock and JSONL Backend. Complete
consumer envelopes/answers match across the two strategies. This includes
register_material → get_record and updating distinct unknown additions →
get_record, plus the 3,000-addition query as a separate large-output workload.
It does not measure a live MCP transport round trip.

Private build provenance: ecosystem commit
`4c120db19aea98ca0fa669263c16a565d1bf75ee`, tcup commit
`22aa45a000bfd3901072bff72b56209268d60184`, isolated Core 015 source hashes and
compiled extension SHA256 are recorded in tcup-results.json. The private checkout
uses an untracked Cargo patch pointing only behavior-engine at this Core checkout.
Both its runtime and target directory are separate from official build/gate paths.
The declared 0.12.0 metadata is unchanged and does not identify the experimental
Core source. This is not published-release compatibility evidence.

Only a test fixture in validation/tests.rs changed after the tcup run (the
query-derived entity rule was rejected by admission and replaced with a legal
transitive Exists case). No production Core source changed after the final
private extension build. The captured source hashes retain their original values.

Tcup's canonical vendored dependency, strict SC-007 xfail and working tree remain
unchanged. A later published Core/ecosystem release and canonical consumer
validation are required before changing that release acceptance result.

## Task generation (2026-10-10)

The user explicitly invoked speckit-tasks after planning. The superseded activity
list is preserved verbatim with its digest in
[prototype/tasks-before-regeneration.json](prototype/tasks-before-regeneration.json).
The new [tasks.md](tasks.md) contains 39 unchecked tasks: setup 3, foundation 2,
US1 9, US2 6, US3 8, US4 7 and final verification 4. It includes test-first work,
an independent full-parent/full-candidate oracle, conservative fallback boundaries,
private proof machinery, Applied-only lifecycle/fault tests and paired workload
measurements. The nine listed parallel groups use separate write targets and
explicit prerequisites; timed runs remain sequential.

This phase changed documents only. No task was executed, no prototype source was
refactored, and no runtime gate or benchmark was repeated. Task generation and
document checks cannot establish acceptance of the future implementation. Full
runtime gates remain T038 work on the actual revised source. No implementation,
commit, publication or canonical dependency update occurred in this phase.


Task-format/ID/story/path checks, quoted data-model constraints, relative links,
JSON/archive digests and `git diff --check` passed. The pinned-Nix terminology,
public-surface, workflow and boundary checks passed. All 291 recorded source/config
files and the original 014 baseline digests remained unchanged; canonical ecosystem
metadata and the clean TCUP worktree were preserved. These are documentation/scope
checks, not runtime acceptance of 015. See the `task_generation` entry in
[verification.json](verification.json).

## Approved analysis remediation (2026-10-10)

After the read-only analysis, the user approved correcting U1 and A1. This was a
separate documentation-editing step, not an implementation or task execution.

U1: T004, T015, T016 and T029 now add necessary private cfg(test) module wiring
during test authoring, before the red run. T005, T018 and T031 retain that wiring.
The guide requires diagnostic evidence from the intended wired test files for
API-absence red, and actual nonzero collection once compilation succeeds. No test
module or implementation source was created or modified by this correction.

A1: SC-004 and the plan/tasks/guide now explicitly measure unchanged-row validation
and validation-related full-universe enumeration on eligible warm operations.
Total backend reads are reported separately, including mandatory record, integrity,
query and replay-universe access. Cold initial validation is measured separately;
the correction does not authorize omitting mandatory reads.

Focused document checks passed: all 39 tasks remain unchecked with sequential IDs
and correct phase/story labels; the agreed wiring and counter-scope corrections
are present; requirement counts remain 15 FR and 6 SC; relative links and historical
archive digests are valid. All 291 protected source/configuration files and the
12 original 014 baseline digests remained unchanged. git diff --check and the
pinned-Nix terminology, public-surface, workflow and boundary checks passed.
Full runtime gates, benchmarks and implementation tasks were not run. The corrected
documents remain local and uncommitted; no release or dependency update occurred.


## Authorized implementation — setup

T001–T003: verified all 12 original 014 baseline digests, all 11 recorded prototype source digests, archived verbatim prototype sources, and created a detached, separate pre-015/014 reference checkout at `/tmp/behavior-015-reference-core`. Historical red/green gaps remain historical; archived prototype gates do not accept this implementation. No original checkout or dependency metadata was changed.

## US1 revised implementation

The independently reconstructed parent/full child oracle passes (128 generated cases plus atomic Ref/malformed-row checks). Red API-absence diagnostics identified the registered oracle and candidate/guard files; the boundary regression failed on prototype removal carry-forward before revision. Green logs: `/tmp/behavior-015-impl-oracle-green.log`, `local-green.log`, `work-green.log`, `boundary-green.log` (same prefix). Local scalar guard, updates/creates overlay, ordinary validator, exact pending child and Applied-only patch are now private Store implementation. Validation-work counters are cfg(test), distinct from backend counters.

The fixed update/create/remove/no-op public workflow was compiled and run against the separately preserved 014 source and revised 015. Complete semantic projection JSON (decisions, bundles, read evidence, records, StateRefs and record hashes) is byte-identical; projection SHA-256: 4ca1f1e460bcdf27357a976bded702ef09816644f7a84f78b59505d01f25b2ea. Each run collected one test.

The nonlocal creation gap is reproduced on both pre-015/014 and revised 015: creating a target passes the existing action/commit boundary; the next state-validating read rejects the resulting state. That pre-existing semantic gap is deliberately not repaired here. Ineligible modules gain no candidate refusal or child certificate. At this intermediate checkpoint lifecycle/fault hardening and full acceptance were pending; final evidence follows below.

## US2 revised implementation

Closure tests first failed for nested row-local aliases; private Core model registration first failed with missing private model/inventory modules. Logs `/tmp/behavior-015-impl-closure-red.log`, `model-red.log`, `resolution-red.log` identify the newly wired tests. Green model collection: four tests, 34 inventoried families, 96 generated ordinary-operator cases plus composition/result/error-prefix checks. Green Store collection: twelve tests (including 128 candidate/full-child cases and derived properties); `/tmp/behavior-015-impl-resolution-green.log`. Both 0.7 and 0.8 profiles are checked; fixture missing `commands` was corrected and is not semantic red evidence. Prototype public delta/validation runtime exports are retired; no new public engine API or operator admission requirement.

## US3 lifecycle and performed-operation evidence

A new private lifecycle test failed because the prototype accepted a record naming a different committed parent (`lifecycle-red.log`). The revised pending guard checks committed_on, evaluated_against and the exact next position; Applied publication also checks effective schema, record, state and exclusive ownership. Sixteen private tests pass in `lifecycle-green.log`. The materialization lives only in the current Store/executable generation; reopen always starts cold.

Actual mandatory head/history reads and explicit load version/removal reads preserve direct Backend errors. Incoming-ref integrity failure at commit preserves Backend; a used_at error during rederivation preserves BUNDLE_INVALID, and a separately injected later historical freshness failure preserves Backend. The same fault test passes on frozen 014 (`fault-014.log`) and 015 (`fault-characterization.log`). Cached warm-read version/incoming reads are legitimately omitted; initial tests assuming they were mandatory were corrected, not treated as evidence of a production bug.

Supported consumer tests pass for update/create/read/reopen, no-op history, canonical data and Behavior replay, command-only and trusted governance (`consumer-green.log`: nine tests). Existing migration, schema, command/governance and 014 suites run in `workflows-green.log` and `workflows-remaining-green.log`; prototype's overbroad global/removal counter expectations were restored to the approved conservative behavior. Historical identity reuse, CAS failure and lost acknowledgment remain covered. Logs have prefix `/tmp/behavior-015-impl-`. The ordinary Core evaluator was restored byte-for-byte to the preserved 014 reference; no new runtime Core validation API remains.

## Workload comparator test-first evidence

The registered private Rust control test first failed with missing with_reference; its green run verifies one independently reconstructed full parent and one complete canonical child, not a shared optimized candidate. The six collected Python stdlib tests first failed with missing validate_result and now pass; they reject parent-only comparison, missing native/source/patch identities, semantic mismatch, incomplete write/read/pair series and false zero-work counters. `benchmark-red/green.log` and `harness-red/green.log` capture collection and outcomes. At this intermediate checkpoint timed experiments and final gates were pending; both are completed below.

## Final controlled workloads and native preparation

The post-formatting release Rust benchmark collected one ignored measurement test and 180 raw samples (30 per strategy/series), with complete paired semantic equality. Median pair milliseconds: optimized warm 0.217, update/read 5.807, create/read 1.814; full-parent/full-candidate reference 88.855, 332.787, 329.254. All eligible optimized samples report zero unchanged-row validation and zero validation-related universe traversal. Source/binary/log SHA and raw write/read/pair/counter samples are in benchmarks/controlled-015-results.json. Only sequential timing ran; no concurrent build/test workload was active during samples.

Both isolated Python extensions were rebuilt from the exact canonical Rust source hashes plus recorded private patches, and imported extension paths/SHA verified. Reference-instrumentation warnings about its intentionally unused optimized overlay are experiment-only; canonical clippy passed with warnings denied. The actual real-handler run initially exposed wrong harness argument names; a collected regression was added and failed, then the worker was corrected to TCUP's canonical get_record/type/id, actual/evidence and creation-result identities. Seven stdlib harness tests now pass (`handler-red/green.log`). This was harness correction, not Core semantics or TCUP source changes.

Optimized TCUP measurement has 10,002 entities and 90 samples, with zero validation-universe or unchanged-row work in every eligible operation. Paired reference timing and acceptance were pending at this checkpoint and are recorded below; no published-pin or SC-007 claim follows from the private native build.

## Revised paired TCUP evidence

Both immutable native builds and all canonical seed/model inputs are recorded in [tcup-015-results.json](benchmarks/tcup-015-results.json). Complete handler results, final head and every committed record are equal across strategies. There are 30 samples per warm/update-read/create-read series (90 per build), over 10,002 canonical seed entities. Setup and initial validity establishment are excluded.

| Strategy | Workload | Write p50 ms | Read p50 ms | Pair p50 ms | Pair p95 ms | Median total backend reads |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| optimized | warm | 0.00 | 18.82 | 18.83 | 21.54 | 6 |
| optimized | update_read | 106.47 | 24.40 | 132.25 | 146.14 | 22 |
| optimized | create_read | 111.74 | 24.76 | 136.99 | 148.96 | 21 |
| reference | warm | 0.00 | 1487.87 | 1487.88 | 1830.11 | 20019 |
| reference | update_read | 4262.76 | 1656.98 | 5935.02 | 6174.85 | 70072 |
| reference | create_read | 4289.57 | 1672.46 | 5973.97 | 6285.70 | 70174.5 |

All optimized samples have zero validation-related full-universe traversal and zero unchanged-row validation; the 60 writes validate exactly 60 changed/new rows. The independent reference executes 210 full parents and 60 full candidates, with 2,702,340 row validations in 270 full-universe passes. These validation counters are separate from all actual Python JSONL backend reads. Host identifier generation, query/history/record work, binding and JSONL costs remain; their latency need not be independent of storage size.

This reference intentionally validates full parents at existing sites and complete eligible children, so its latency is not a reconstruction of published 0.12.0 or original 014. Private instrumentation adds small logging costs. Runs were sequential, after both builds completed, with no concurrent build/test workloads. Raw samples, native binary/source/patch/override hashes, fixed seed/model hashes, revisions and platform are saved; p95 is nearest rank. Historical parent-only controlled-results.json/tcup-results.json remain labeled. No universal constant-time bound, live MCP measurement, published release compatibility or SC-007 pass is claimed.

Production scope remains the private conservative local update/create theorem; bulk reads, removals, global/query/cross-entity incremental kernels, public delta interfaces and a general IVM engine remain outside this feature. The separately reproduced nonlocal creation gap requires its own semantic ticket.


## Final authorized acceptance — T036–T039

All 39 tasks are implemented and verified locally. The unchanged canonical command
`nix develop -c env CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 CARGO_INCREMENTAL=0 CARGO_BUILD_JOBS=2 scripts/gates.sh`
exited zero and ended `gates: OK` on the revised source. It covers formatting,
workspace clippy with warnings denied, collected workspace tests, build,
deterministic conformance, boundary/public surface, the external supported
consumer, workflows, terminology and script refusal tests. The full current
[gate log](evidence/logs/gates-final.txt), [source manifest](evidence/source-manifest.json)
and stage collection summaries in [verification.json](verification.json) are
separate from preserved prototype results. Existing ignored suites are not
reported as passes; the controlled timing test was explicitly executed with
`--release --ignored` and its 180 paired samples are saved separately.

The benchmark's 233 canonical Rust source digests still match the final source.
No Rust code changed after those measurements or final gate execution. Final
status/evidence reconciliation is documentation only. The original 014 checkout's
12 pre-existing files and feature artifacts remain byte-identical. The ordinary
Core evaluator and Store replay implementation match that preserved baseline.
Wire/admission/types, schemas, hash/record definitions, Backend contract, supported
facade, official dependency metadata and gate scripts remain unchanged. The
ecosystem pin and TCUP's canonical SC-007 test are unchanged.

[Verbatim implementation red/green logs and limitations](evidence/test-first-results.json)
preserve real failed attempts as well as successful reruns. Some intermediate logs
contain bad fixtures or stale prototype expectations; those complete logs are not
passing evidence. Exact source digests were not captured at each red run. The
registered source paths and diagnostics are retained, but current/frozen/archive
digests do not retrospectively identify each red-time source. Adopted prototype
code and already passing characterization tests establish no historical
test-first claim. No machine-checked proof has been produced.

Final artifact/link/digest checks and `git diff --check` pass. The review-owned
checklist is unchanged at 7/7. No extension configuration or post-implementation
hooks exist. All files remain local and uncommitted in the isolated 015 worktree;
there was no staging, commit, merge, tag, release publication or dependency update.
The pre-existing nonlocal creation gap is documented separately above and has no
015 fast path. It remains a separate semantic issue.
