# Core036 v2 attempts, resources and comparison contract

This is the prospective execution contract. No existing v1 clock, profile, receipt, sample or seal is changed. The feature stays unfinished until all required deliverables/SC pass; a bounded attempt can close without completing the feature.

## Work and attempt ownership

Use new work IDs `wNNN`, attempt IDs `aNNNN`, source revisions `rNNNN` under `evidence/v2/<work-id>/`. Bind spec-v2 and the archived-v1 logical-path/hash mapping before execution. Each attempt declaration freezes stage, predecessor, correction, source/tool/profile refs, expected slots and numerical allocation. Its actual clock begins at first child/preparation execution; no unrecorded development prelude or retrospective profile choice.

After a stop, close the entire owned process tree, record actual errors/resources, seal the attempt and checkpoint pending work. Declare a corrected successor before its next run. No repeated unchanged retry, partial-session stitching, best-of-retries sampling or hidden cumulative time. Record stage/controller/cleanup intervals exactly once, with per-attempt and cumulative work totals; calendar gaps and different boots stay separate.

### Initial prospective profiles

| Stage | Attempt wall ceiling | Child exceptions (otherwise 900 s) |
| --- | ---: | --- |
| ENV | 7,200 s | Declared tool acquisition/build 3,600 s |
| NATIVE | 14,400 s | Actual-source probe 1,800 s; proof/build 3,600 s |
| Q | 7,200 s | Actual candidate CLI build 1,800 s; entire unchanged gate 3,600 s |
| DIAG | 7,200 s | Each complete operation sample 900 s |
| SESSIONS | 21,600 s | Each whole session 3,600 s |
| COMPACT | 14,400 s | Proof/build 3,600 s; complete comparison sample 900 s |
| REPRO | 14,400 s | Fresh build/full gate/kernel/whole session 3,600 s |
| FINAL | 3,600 s | Validation/aggregation child 900 s |

Reserve 300 s inside every attempt for termination, receipt closure and checkpoint. Do not launch a child whose declared maximum cannot fit remaining time minus reserve. These are initial ceilings, not measured sufficiency or a whole-feature deadline. If an indivisible proof/session needs more, retain the stop and declare a justified larger successor or smaller independently meaningful work packages; never join partial timing intervals into a completed sample. No feature completion is inferred from elapsed time.

## Volumes, memory and shared dependencies

Owned cache/source/tool/build root: `/var/tmp/behavior-ir-core036-v2/<work-id>`; distinct owned tmp beneath it; evidence under `specs/036-core-transition-feasibility/evidence/v2/<work-id>`. Initial caps: cache/source/tools 20 GiB, tmp 4 GiB, retained new evidence 4 GiB, newly registered shared Nix-store closure 8 GiB, combined 36 GiB. Shared paths count once by actual device/inode; exclude separately counted tmp and baseline warm shared inputs. Source/control files outside build roots are explicitly inventoried/accounted rather than hidden.

Admission before new materialization: root filesystem ≥48 GiB free, /data ≥8 GiB. Live stop floors: root 8 GiB, /data 4 GiB. Admission consumes available allocation once; child launches check remaining allocation and live floors rather than demanding the original free reserve again. A new materialization/expanded allocation must show enough current per-volume headroom. A successor may prospectively expand or add a registered future evidence root with justified capacity; it cannot delete, silently relocate or rewrite sealed old artifacts.

Use one active heavy process tree and one CPU, per-process AS cap 8 GiB, ordinary Lean cap 4 GiB, observed descendant-RSS stop threshold 8 GiB and host available-memory floor 4 GiB. Observe at least once per second and at final child closure, including fast children. Sampled aggregate RSS is a conservative observation, not a hard shared-page-adjusted limit. Use a hard group limit only if a tested cgroup capability actually enforces it. Record overshoot, detached descendants, signals and unavailable exact peaks honestly.

Register exact native/analysis/store closures and GC roots before accepted offline runs. Monitor additional shared-store paths and per-volume free space; unrelated host activity must be separated or declared confounding. Do not run global repair/GC concurrently with experiments or blindly kill an unsafe shared-path replacement. Nix daemon/remote builder work is not automatically a descendant of the client and does not inherit its RLIMIT/CPU bounds. Prefer supervised native realization or already available exact substitutes; otherwise capability-test actual builder/task admission, limits and resource attribution before using that service. Untracked heavy service work cannot satisfy resource compliance. All tool/source/dependency acquisition is inside declared attempts. Retain immutable executables and proof subjects before removing only closed owned disposable caches. Historical035/033/v1 roots are not cleanup candidates.

### Bootstrap before the v2 controller exists

Write bootstrap/controller tests and prospective profile inputs first. Run the initial absent-controller red with the existing reviewed recorder as a one-off stricter bounded launcher: ≤60 s, one tree/CPU, existing stricter cache/output limits and private-root outputs on the spacious root filesystem. Explicitly register/capture every callback/root and existing launcher bytes; do not use its default v1 output roots or mutate v1. No tool installation/large source materialization occurs in this bootstrap. Import the exact closed receipt/log bytes into v2 evidence afterward and charge their actual origin/duration to the new work history. Implement the v2 controller only after red; run real disk/stage/detached/final-growth controls before heavier work. This bootstrap is new actual work, not reuse of an old receipt as a fresh clock.

## Source gates and failure handling

ENV establishes working exact tools/source inventory. NATIVE and Q are independent prerequisite claims; a failure schedules repair and permits independent harness development. Accepted observations require current proof, full canonical/scoped quality, original conformance, actual treatment activation and matching endpoints. New sessions/compact source extends the proof/gate subject before accepted use. If a changed final executable/dependency invalidates earlier rows, rerun those rows and selector inputs; old samples remain retained.

Q uses complete original runtime fixtures (including the three r003 additions), a real source Git index, retained actual candidate CLI through `BEHAVIOR_BIN`, an initially empty declared gate target and unchanged `scripts/gates.sh`. A later warm retry is named warm. Full terminal `gates: OK`, exit0 and closed descendants are required; no partial/full-test exception. The old v1 Q cap remains exhausted historical evidence.

A tool/quality defect must have a reduced reproducer/root cause and corrective source/tool/allocation record. A loader failure is not failed Core semantics. Source/model/cfg changes are new subjects. No semantic-domain narrowing or hidden verification replacement is allowed.

## Endpoints and initial authority

Operation diagnosis starts with the same genuinely checked program context and each role's declared fresh state/history acquisition completed; record acquisition outside that operation and include it in lifecycle totals. A diagnosis sample directly times primary finish, same-process continuation and the enclosing two-operation cycle through mandatory full eight-field output/newline/flush/sync and confirmed memory head. Do not add per-operation medians to claim a cycle time.

Each lifecycle session starts before fresh state/history checking and view preparation under a genuinely checked resident program context, ends after last mandatory output/confirmed endpoint, and has a directly enclosing final-original-audit total. Record cold-worker setup and actual cold-first-session enclosure separately; no added setup median. No state ground crosses independent sessions. Mandatory reclamation/reconciliation is charged; optional archive packing after successful measured delivery is separate attempt work with original-byte hashes and checked decompression.

C completion is a different endpoint: compact memory acceptance, all promised replay inputs available and compact result delivered/synchronized. C plus full original reconstruction/audit is directly measured separately. Neither endpoint implies durable backend publication. All independent oracle work and verification work remains charged at its declared outer audit boundary.

## Frozen primary sample matrix

| Group | Cells / roles | Timing | Diagnostic |
| --- | --- | ---: | ---: |
| Operation diagnosis + B | D1=(2,8), D2=(64,8), D3=(256,8), D4=(2,32), D5=(2,128); R/GV/B | 45 | 15 |
| Lifecycle | F-change, F-unchanged, F-invalidated ×L1/8/32/128; R/GV | 72 | 24 |
| Compact comparison | O-D1, O-D3 (two-operation samples), S1 and S32 (N256/H8 changing sessions); C/L* | 24 | 8 |
| **Total** | Three timing replicates and one separate diagnostic per role/cell | **141** | **47** |

R is original reference, GV combined ground/views, B GV plus real 64 KiB output buffering. All three diagnosis roles cover all five cells; B is required. Choose L* from checked current GV/B by the lowest D3 primary complete-operation median; exact tie chooses GV. Freeze that rule and the actual selection before C comparison; fresh L* samples are required rather than borrowing old timings.

F-change uses N256/H8 and distinct children `c0000`…`c0127`; F-unchanged uses N2/H8 (first change then unchanged content); F-invalidated uses the changing family and invalidates before operation `floor(L/2)+1`, including before operation1 for L1. Both roles lose authority and reacquire under matched policy inside the measured session. Separate fault families cover wrong-history/context, view corruption, refusal/precommit failure, conflict, applied/lost acknowledgement and restart.

Timing role order is deterministic and prospective: operation replicates rotate `[R,GV,B]`, `[GV,B,R]`, `[B,R,GV]`; paired comparisons alternate role order, with third-replicate first role alternated by frozen cell order. Diagnostics run separately and cannot fill timing slots. Each replicate starts fresh fixed-role workers that actually check the program; session grounds are always fresh. All raw observations, failed slots and explicitly justified successor samples remain in the tables.

## Decision rules frozen before results

Correctness: zero full original mismatches and every applicable general proof, quality, fault, source and activation control met. A failed semantic candidate is repaired/replaced; a missing component is unfinished. B activation requires reduced actual underlying Write calls on D3 while complete output bytes match. C activation requires zero full legacy observation/transition-record construction or hidden legacy commit before compact completion, apart from the separately charged initial basis.

Report candidate/baseline median ratios for the same endpoint. Ratio <1.0 is a descriptive median reduction; overlapping ranges are explicitly inconclusive about a robust speed advantage. Non-overlapping observed ranges may be described as such, never as production/statistical certainty. No required speedup is promised. Recommend C's measured cost direction only if compact completion median decreases and required completion+audit and changing-L32+audit medians do not increase; otherwise report no demonstrated benefit/not recommended for that endpoint. Show retention/guarantee trade-offs even when timings improve.

The historical p50≤50 ms/p95≤100 ms certified/durable ambition is comparison context, not a memory-backend SLA. State the measured remaining gap and contract differences. A final negative recommendation is valid only after complete implementation, all 141+47 required observations and [full reproduction](reproduction.md). Unrun slots or budget exhaustion keep the feature unfinished.
