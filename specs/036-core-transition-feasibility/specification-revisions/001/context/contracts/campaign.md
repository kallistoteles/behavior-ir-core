# 036 bounded campaign and measurement contract

This is a prospective protocol. Values are planning limits, not measured capacity. Implementation must freeze exact subjects, expected facts, role order, controls and endpoints before runs. No035 sample or stopped gate becomes036 evidence by relabelling it.

## 1. One clock, owned resources and revisions

The first new tool materialization, build, red/green test, proof or quality execution starts one 21600 s monotonic clock with recorded boot ID. Planning reads/writing design documents are outside it. All development/probe/source corrections and final scientific runs inherit this clock. Every executed revision is create-once, source-bound and logged; development observations cannot fill final timing slots.

| Stage | Maximum cumulative wall time |
| --- | ---: |
| S0 preparation and source/tool availability | 1200 s |
| S1 correspondence, including initial extraction probe ≤ 1800 s | 5400 s |
| Q full canonical and scoped quality, across all accepted revisions | 2400 s |
| S2 direct complete-cost diagnosis and same-contract candidate | 1800 s |
| S3 lifecycle, invalidation and recovery | 5400 s |
| S4 compact contract/proof/implementation/comparison | 3600 s |
| S5 closure and independent validation | 1800 s reserved |
| Whole investigation | 21600 s |

These maxima sum to the whole budget; time is not multiplied by revision or candidate. Assign each elapsed execution interval to one stage budget only. A recheck switches the active budget to S1 or Q while the global clock continues; it does not reset the calling stage or create extra allowance. Stop launching non-closing work once 1800 s remain. Each child deadline is clipped to stage remainder, global remainder and closing reserve. Ordinary child limit ≤ 900 s; one complete canonical invocation may use ≤ 1800 s within Q's cumulative2400s; one native extraction/proof child ≤ 1800 s within S1. No borrowing beyond a stage cap or silent increase is permitted. If closure exceeds its reserve the report remains incomplete, not silently extended.

| Resource | Bound and meaning |
| --- | --- |
| CPU/concurrency | One active heavy process group on one recorded available CPU; build/test/Rayon thread settings1. |
| Process address space |8 GiB per process; Lean sublimit4GiB where supported. This is not an aggregate RSS limit. |
| Cache/source/tool growth |6 GiB, all 036-owned source, dependency, extraction-tool, release and gate build roots combined. |
| Newly retained evidence |2 GiB, including binaries, original observations, proof/generated subjects, logs and reproduction. |
| Temporary growth |1 GiB. |
| Combined simultaneous new growth |8 GiB across all registered roots, unique-inode apparent byte accounting. Individual ceilings do not add extra combined allowance. |
| Free disk | ≥ 16 GiB before launch; stop the entire owned process tree at ≤ 4 GiB available. |
| Sampling | At least once per second for owned growth/process observations; retain actual overshoot and reason. |

Record bytes at start, peak observations, termination and closure. Installed035 tools may be reused as explicitly warm read-only inputs. Any new acquisition, including proof-tool components, must be inside registered roots and counted before use; do not hide growth in global Nix/OPAM/Cargo/rustup caches. If the required compatible host closure cannot be acquired within bounds, stop tool availability. No automatic broad installer, full history checkout, historical rehash or unrelated cleanup is allowed.

Retain exact executables before deleting an owned disposable target. Cache cleanup occurs only after its complete process tree/group closes and only under explicitly registered036-owned paths. Record before/after bytes and preserved executable refs. Never delete035 caches/sources/evidence or the two unrelated033 files. Keep immutable inputs outside deletion roots. Gate target starts empty, release cache may be removed after its binaries are retained; cleanup itself is charged.

### Recorder bootstrap before the controller exists

The first red controller/schema tests run under the unchanged reviewed 035 recorder library, into a new 036 bootstrap root. Supply explicit growth callbacks over registered036 roots; never use its default 035 paths. Its existing 900 s process/2 GiB cache/2 GiB artifact/4 GiB combined limits are stricter than the 036 envelope and apply during this short bootstrap. A free-disk guard must enforce036's4GiB stop as well as the 16 GiB launch condition. Capture the actual initial monotonic start and boot from that raw receipt; keep its original `core035.bounded.v1` tool format instead of claiming it is a preexisting036 tool result.

Before the first such invocation, fix the 036 profile/budgets and owned roots as reviewed input data. The new controller's preflight must adopt and validate the actual bootstrap receipt/profile binding, charge its elapsed time to S0/global time and refuse a new origin. No accepted sample or proof can come from an untested recorder. Bootstrap tests themselves are bounded development evidence. If the bootstrap adapter/guards cannot be justified, stop before heavy tools; do not run them unsupervised.

## 2. Stage prerequisites and source sensitivity

S0 binds the pinned035 inputs, complete selective source/gate inventory, actual tools and initial expected reference subjects. The source export must be its own nonempty indexed Git root; its script and all canonical consumer/workflow/benchmark/fixture inputs must be present.035's1634-source inventory is a starting point, not a maximum that excludes new dependencies.

S1 requires every B01–B10 obligation from [correctness](correctness.md), fresh root/type/axiom checks and actual-code negative controls. Q independently attempts the full unchanged gate even if S1 fails, provided S0 can safely run it. Neither an S1 failure nor Q failure becomes an exception for downstream acceptance. If either is unmet, record exact blocked S2–S4 slots and proceed to closure; read-only historical diagnosis may be reported as such.

S2 requires source-specific S1/Q, full original conformance and actual R/GV mechanism controls. Its diagnosis precedes same-contract optimization selection. A new output candidate must satisfy changed B08/composed correctness, actual controls and Q for its own source before accepted comparison. S3 requires those prerequisites for each included role. S4 requires completed diagnosis/lifecycle assessment, an evidence-backed same-contract disposition, a frozen compact contract and source-linked reconstruction proof before its accepted comparisons. No buffering gain is required to justify investigating compaction; measured remaining costs must justify it.

A source/tool/cfg/semantic profile change invalidates every dependent gate. Reuse exact unchanged proof dependencies only through the explicit dependency relation and required fresh check; full Q reruns against the current accepted source. Q's2400s total includes all reruns. A later blocked candidate does not invalidate earlier correctly bound results. Failure slots remain present; new revision/sample IDs cannot replace them.

## 3. Treatments and original endpoint

| Role | Meaning | Entry controls |
| --- | --- | --- |
| R |035 reference strategy: no cross-operation selected engine-ground retention; original work and full output. | Independent unpatched original comparison, actual discard/establishment controls. |
| GV |035 retained valid ground plus maintained views, exact restricted path. | Source-linked native proof, retain/view/update counters and invalidation controls. |
| B |Optional GV with fixed64KiB buffered original output. | S2 diagnosis supports write opportunity, checked byte/error/flush relation, actual changed write grouping and source-specific Q. |
| C |Optional new versioned compact canonical path. | S4 separate contract/proof/identity/availability gate, actual avoided canonical materialization and source-specific Q. |

Each role is fixed by source-selected executable entry point. Distinct binary hashes alone do not establish activation; label-only controls must fail. R/GV share exact initial authority, canonical requests/context, backend and expected parent/child. The unpatched oracle independently derives full observations with separately authored facts. Record actual source/executable paths from built-worker receipts, never accept an arbitrary worker from evidence.

Legacy complete operation starts immediately before role-specific authorization/invocation work and ends only after actual commit outcome, mandatory ground/view maintenance, complete original observation production, independently selected endpoint check and exact required result-file delivery with newline and file synchronization. Failed/refused endpoints have their actual appropriate contract, not a fabricated successful child. Direct original audit is outside this ordinary endpoint only when the declared original contract permits it; it is then inside a separately measured operation/session-plus-audit endpoint.

No filesystem-result sync is called Q6. Application state acknowledgement is memory-backed in R/GV/B. Any changed completion/availability endpoint in C is explicitly not the same operation guarantee.

## 4. Complete-cost diagnosis matrix

Use the exact compatible035 population/history fixture and local affected action:

| Cell | Total objects N | Initial history H |
| --- | ---: | ---: |
| D1 |2|8|
| D2 |64|8|
| D3 |256|8|
| D4 |2|32|
| D5 |2|128|

Each object population is N/2 parents and N/2 children. Run R/GV with three timing observations and one separate diagnostic observation per cell/role: the base two-role design has30timing and 10 diagnostic observations, each with a directly measured first operation and continuation. Do not carry035's four-role count into036. Optional B repeats the same five cells after eligibility, adding15timing/5 diagnostic observations.

Each sample acquires a fresh actually checked parent under the same resident checked program context, then runs the primary finish and same-process continuation with required output. Retain direct primary, continuation and enclosing two-operation totals. Rotate role order by replicate: R → GV, GV → R, R → GV; diagnostic order is GV → R. For B, freeze a three-role balanced rotation before any accepted B measurements; preserve earlier R/GV samples and report candidate-revision/cache comparability rather than treating a later source revision as a simultaneous factorial run.

Record raw ns and medians/min/max only. Do not call triplets p50/p95, significance, throughput or product SLAs. Instrumented timing is diagnostic; accepted timing mode must not serialize extra records solely to count their sizes. Both modes must return the exact same semantic result.

### Attribution and units

Use one operation-relative interval tree, direct same-operation nested timestamps, exclusive children and explicit remainder. Distinguish actual evaluation/validation, ground/view maintenance, materialization, observation construction, canonical identity/hashing, capture/backend copies, commit, JSON encoding, writes, file sync and endpoint checking. Fine nested spans do not add to already inclusive parent totals. Never turn a difference of aggregated medians into a phase.

Report logical rows/history records accessed, complete objects/records materialized, view updates, bytes encoded/read/written/copied/hashed, retained data and actual write calls. `Write::write` calls and OS syscalls are different units; call them syscalls only with actual bounded syscall tracing and a pinned tracer receipt. A counting writer in diagnostic mode may establish write-interface calls, not infer OS counts. Report exact retained-file sizes separately from allocation estimates. Sample RSS and direct-child high-water RSS are scoped observations, not exact allocator or aggregate shared-page accounting. Unknowns stay `null` with reasons.

The buffered candidate is selected only after measuring the unbuffered path. Its allocation/flush/error costs stay inside the complete endpoint. Reject it if it changes normative results, hides work, fails actual activation or lacks current proof/quality; no minimum percentage gain is invented in advance. Compare whether complete cost and retained memory improve, regress or remain indistinguishable in this diagnostic sample.

## 5. Lifecycle matrix and real payback

Primary lifecycle sessions start from a genuinely established resident program context and no established state ground. All initial state/history replay/checking and view seeding occur inside each directly timed session. One worker may retain its actually checked program context while running the frozen sessions, but never carry an engine ground across independent sessions. Retain its actual cold start/program-check cost and enclosing complete worker lifecycle; report the directly measured cold first session separately. Do not invent cold totals for other lengths or add setup medians.

| Family | N,H | Request sequence | Invalidation |
| --- | --- | --- | --- |
| F-change |256,8|Finish distinct `c0000`…`c{L−1}`; all L operations change content.|None.|
| F-unchanged |2,8|Finish `c0000` repeatedly; first changes content, remaining L−1 do not.|None.|
| F-invalidated |256,8|Same distinct-child sequence as F-change.|Before operation `floor(L/2)+1`, revoke/quarantine selected engine authority and freshly reconcile/establish under a frozen identical policy. ForL1 this is before operation 1.|

For every family use L∈{1,8,32,128}, R/GV, three timing replicates and one diagnostic replicate:72 timing and 24 diagnostic sessions. The fixture has128 initially active children at N=256, so the longest changing session needs no activation fallback. Expected streams/endpoints are frozen independently. Further unsupported/context/failure cases are separate controls, not hidden changes to the stream.

Each replicate uses new fixed-role workers that actually establish the program context. Within a worker, run fresh sessions in a fixed family/length order, starting F-change/L=1 so that the first cold session is directly observed; its resident interval is nested. Reverse R/GV launch order between replicates; workers execute serially so no competing heavy process runs. Record the actual OS-cache conditions; no pretend cold installation or cache flushing. Group setup and worker shutdown are directly timed too.

For each session retain a directly measured acquisition-through-last-output interval and its enclosing acquisition-through-required-final-audit interval. The declared audit reconstructs/verifies every delivered original observation against independent original execution/expected facts and checks the final original Safety outcome, with its real cost. Stream per-operation output; do not keep all evidence in RAM for a summary. Report peak/retained state, views, history, result artifacts and deferred data after acquisition, at selected boundaries and at end.

Payback is observed only when a directly measured GV session total is lower than its comparable R total at an actually tested length, with medians and ranges reported. Report ordinary and session-plus-audit endpoints separately, and uninterrupted versus invalidated families separately. No claim of statistical certainty or unmeasured crossover point. Missing/stopped sessions are not zero and prevent complete-cell conclusions.

### Recovery/fault cost controls

Freeze and execute stale/wrong-parent/history, changed relevant capture/context/policy, corrupt/missing views, refusal, precommit failure, actual conflict, Applied-then-lost-acknowledgement and restart/re-establishment controls at a small supported cell and at N=256/H=8 where cost is claimed. All have independent expected results and directly timed recovery when performed. Restart transfers only raw data; original checking must restore authority. A memory commit followed by uncertain delivery is reconciled before continuing. Physical-disk crash recovery remains unimplemented and cannot be inferred.

## 6. Compact comparison and decision

After S2/S3 assessment freeze the selected best eligible legacy role (GV or B), exact compact record/recipe/availability/identity contract and C's source. Run D1/D3 and changing-session lengths 1/32 at N=256/H=8, three timing and one diagnostic observation per role/cell. Use the same inputs, requests and independently expected original outcomes. Retain actual canonical materialization and retained-data counters.

For C measure its own declared compact completion and a directly enclosing completion-plus-exact-original-reconstruction/audit endpoint. For legacy measure the comparable full-output endpoint and the same final original audit. Show guarantee differences explicitly before quoting any timing ratio. A smaller wire response with unchanged internal complete-record construction is transport-only and cannot satisfy canonical-materialization avoidance.

Freeze numerical feasibility/selection thresholds before this optional run using S2 evidence; do not choose a cutoff after seeing C's results. At minimum acceptance requires proof/conformance/identity/availability, genuine avoided work and honest complete/lifecycle cost. Failure to beat legacy is a valid negative finding, not grounds for omitting audit or changing the endpoint. Missing inputs must fail exact reconstruction and must not yield authority.

## 7. Closure, independent validation and final verdict

Stop all owned writers and descendants, inventory only new closed roots, preserve logs and retained executables, then seal a campaign index. Independent validation uses a separately chosen source/verifier context and output root. Recompute every raw-derived table and status, check exact input/output/executable/source references, freshly check accepted theorem roots/axioms, re-execute original conformance cases including genuine negative controls and verify selected prior manifests/unrelated-file preservation. Record any unavailable independent reproduction as a limitation.

No validation process edits a sealed report or source. Subsequent corrected bookkeeping is a new record that references previous bytes. Final assessment maps all 21 FRs and 7 SCs to evidence or a specific gap, with separate native, quality, complete cost, lifecycle and compact verdicts. A successfully produced negative report may exit collection successfully; unmet S1/Q/compact criteria remain unmet and product integration stays unactivated.
