# Contract: growth evaluation and acceptance

## Freeze protocol

Before final candidate evaluation, commit a versioned evaluation profile under this
feature directory, based on controlled baseline pilots. It must contain numeric
whole-cycle budgets and a numeric minimum growth-related benefit against baseline.
An unfilled budget or a criterion selected after observing candidate results cannot
pass acceptance. Pilot measurement is an early implementation deliverable; current
Backend counts provide no justified milliseconds or percentages.

Record baseline release/revision, reference strategy, candidate revision, toolchain and
lock identity, fixture/harness digests, CPU/platform/available cores, RAM/process limits,
build flags/profile, Backend, optional indices, instrumentation and resource conditions.
Specify populations, operation sequences, repeats, summary statistics, variance/rerun
rules, quantitative criteria and semantic expected results. Preserve failed attempts.
A profile amendment requires a recorded reason independent of candidate success and
rerunning affected comparisons. Installation/build and OS cache conditions are explicit.

## Separate timing and diagnostic work measurements

Freeze two measurement modes before baseline pilots and the acceptance-profile freeze:

- **Production-like timing:** Release builds with detailed work counters and tracing
  compiled out or otherwise absent from timed hot paths. Preserve normal Core checks,
  records, hashing and Backend behavior. Use equivalent baseline/candidate build flags
  and measurement conditions; document the remaining timing/resource-probe overhead.
  Derive and assess latency budgets and growth-benefit criteria from this mode only.
- **Instrumented work:** Run the same workloads with detailed counters and phase
  diagnostics to explain validation, traversal, copying and output costs. Label these
  timings diagnostic; they cannot establish production latency or the acceptance speedup.

Identify each mode's exact source/build/harness identity in the profile and raw results.
Verify identical semantic observations between modes for each compared strategy. Report
measured instrumentation overhead separately; do not subtract an estimated overhead to
manufacture a passing timing result. Predeclare repetitions per mode, with at least three
independent sequential production-like timing runs per accepted case. Counters remain
necessary evidence for strict work criteria, even though timing acceptance uses a separate
mode. Recording instrumentation versions alone does not establish unbiased timing.

## Mandatory corpus

| Family | Workload and expectation |
|---|---|
| Local control | No global, same-head evaluation, repeated updates and real creation |
| Constant mechanism control | Global true plus updates/creation; insufficient on its own |
| Unaffected nonconstant | `count(select(T)) <= K`, unrelated field/type updates and unrelated population growth |
| Affected nonconstant | Sequential creations growing one Store under that rule; new validity established without full unchanged-row revalidation |
| Boundary oracle | With K=1000, creation1000 accepted,1001 refused; head/history unchanged on refusal |
| Growth | 1,16,128,512 and at least two larger frozen populations; pilot 2048, 8192 |
| History control | Fixed live population with growing history, and equal live/history endpoints through different histories |
| Dependency dimensions | Multiple types/rules, changed-set size, relevant and irrelevant fields, generated actions and references |
| Fallback | Unsupported nonlocal/partial global mixed with supported rules; removals and migration |
| Error/order oracle | Malformed rows, missing facts, lazy expressions, checked arithmetic, multiple failures and skipped traces |
| Continuity/recovery | Exact-anchor mismatches, conflict, reopen, Backend mutation, migration and lost acknowledgement |
| Output floor | Separate required universe/trace/member bytes and genuinely result-sized queries from validity work |

Use at least three independent sequential repetitions per accepted profile case. Each
creation run actually increases one Store's live state and history, rather than timing
one operation over independent seeded Stores. Run baseline, full-reference strategy and
candidate on identical inputs without competing heavy builds. Full-reference strategy
must reconstruct complete parents AND children, not merely force a parent cache miss.

## Complete-path accounting

Start before the first measured evaluation; include commit, reproduction, publication
and a final next-evaluation drain. Specify nonoverlapping cycle accounting so adjacent
evaluations are not counted twice. Report preparation/genesis/open separately and total
costs including them; do not move scans outside the clock. Include memory/resource use.

Measure Backend enumeration/version work, cached rows traversed, decodes/normalizations,
parent/child rule evaluations, query membership work, snapshot copies, emitted universe
rows/trace/member IDs, serialized/hashed bytes and phase/total wall time. Backend counters
alone cannot establish the absence of in-memory full-state work.

Required output can grow with live state under existing record formats. Report this
floor explicitly; do not promise constant total commit latency. It cannot excuse
repeating equivalent avoidable semantic validation, rebuilding summaries every cycle
or retaining the original cost problem elsewhere in the complete path.

## Conjunctive acceptance

G3's complete correctness controls and existing `scripts/gates.sh` must pass before
the final G4 measurement campaign, including the finalized measurement/profile validator.
Bind gate evidence to the source used for measurement. A subsequent production or harness
change invalidates the affected gate/measurement evidence: rerun the required checks and
affected frozen comparisons before acceptance. Documentation-only changes do not require
repeating already-passing code checks.

All must hold:

1. Zero unexplained complete semantic differences, with independent valid/invalid/error
   expectations and all identity/recovery/premise controls passing.
2. No unrelated unchanged entities revisited solely for validity in supported unaffected
   cases, across the full cycle.
3. Mandatory affected creation establishes the changed global result without validating
   all unchanged entities; the 1000/1001 boundary remains correct.
4. Production-like timing runs of repeated growing workloads satisfy the frozen quantitative
   budgets and growth-benefit criterion against released baseline; local controls meet
   frozen regression limits. Instrumented work results establish the separate work criteria.
5. Remaining full-state work, fallback domains and relevant interactions are measured
   and causally explained. Necessary output bytes are distinguished from avoidable work.

Timing failure is a failed performance requirement, not a semantic counterexample.
Passing work counters alone is not evidence of usable complete-path performance.
Keep fast semantic/work regressions in the existing gates; extend the existing explicit
release-profile measurement seam and retain its report as mandatory feature acceptance.
