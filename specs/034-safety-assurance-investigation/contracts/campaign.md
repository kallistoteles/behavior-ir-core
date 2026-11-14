# Frozen campaign and cost contract

Version `core034.campaign.v1`. These ceilings constrain research, not the product's required guarantees. Planning does not run this campaign.

## Resource envelope

| Boundary | Ceiling/condition |
| --- | --- |
| Whole campaign, including source preparation, builds and checks | 7200 s elapsed |
| Preparation sub-budget | 1800 s |
| Individual scenario | 1800 s; also bounded by remaining campaign time |
| Individual process | 900 s maximum; also bounded by every enclosing budget |
| Actual Safety proof tool invocation / whole certification or independent-checking role | 180 s / 300 s, within outer budgets |
| Address space | 8 GiB per process, inherited by children |
| Measured concurrency | One worker; one inherited CPU affinity; `RAYON_NUM_THREADS=1`, `OMP_NUM_THREADS=1`, one compilation job |
| Free disk before each process | At least 16 GiB; otherwise retain preparation/attempt failure and do not start |
| New retained artifacts / new build-cache growth | 2 GiB / 2 GiB; track temporary storage separately within the combined 4 GiB growth budget |
| Emergency disk floor | 2 GiB; stop the whole process group safely and preserve the failure record |

The campaign clock begins at input freeze and is persisted with monotonic time and boot identity. Later commands consume that same clock, including intervening time; a reboot or missing clock provenance cannot reset it. Installation is a recorded precondition, not an invisible runtime optimization. Missing pinned sources/dependencies/tools causes a readiness result, not ambient downloads or changed versions. Cache use, installation/acquisition work already performed and available original source identities are reported separately. Preparation/build times remain visible even when outside an ordinary operation's endpoint.

Use no external service, new hardware or automatic retries. A correction/new campaign gets a new explicit ID and reason and retains the old outcome; it cannot replace an observation in a completed sample set. No archived file, cache linked to immutable evidence or global tool installation is edited/deleted to proceed. Retain executed binaries separately before marking private build targets disposable. Never format through imports into older frozen experiments.

## Frozen subjects and expectations

**LD8 primary:** public-Builder fixture derived from the pinned Safety parent/child reference, with fresh exact admission/certification of its entire subject. Establish eight declared actions, two entity types and three policies. Any claim of identical original identity requires matching the pinned reference's complete admitted module and policies; otherwise name the port as a distinct freshly certified subject.

The hand-specified semantic sequence from empty valid genesis is:

| Attempt | Expected semantic fact | Committed position |
| --- | --- | ---: |
| create parent p1, Open | Allow | 1 |
| create child c1, owner p1, Active | Allow | 2 |
| stop p1 | Refuse while nonterminal child exists | 2 |
| finish c1 | Allow, Terminal | 3 |
| activate c1 against Open p1 | Allow, Active | 4 |
| finish c1 | Allow, Terminal | 5 |
| stop p1 | Allow, Gone | 6 |
| activate c1; create c2 against Gone p1 | Both refuse | 6 |
| remove p1 with surviving terminal child reference | No committed removal | 6 |
| remove c1 | Allow | 7 |
| remove p1 | Allow, no live parent/child | 8 |

Freeze exact Core refusal/error codes, full original decisions, module/policy/history identities and complete before/after state facts during preparation before candidate measurements. Mechanically generated reference records identify their actual Core oracle and must match the authored facts above; they are not evidence of an independently implemented evaluator. Never overwrite expectations from an observed candidate result.

**LD8C supplemental:** separately admitted and freshly certified complete variant with a command-only action emitting two identical intents. Freeze both ordered occurrences and exact unchanged content state/advanced history position. The original LD8 certificate cannot cover it. Add invalid starts, bypass modules, policy changes and migrations as separate controlled subjects with their expected failed premises.

The first pilot uses memory storage. Controlled process interruption or a lost acknowledgement does not turn it into a durable Store. Any Q6 claim remains unestablished without a separately conformant persistent implementation and complete integration. Old SQLite controls retain their old closed-profile subject only.

## Sampling and growth

Run three sequential fresh-workspace Safety construction/checking pairs for the small primary subject, including the bootstrap pair. Cold means installed pinned dependencies, no reused request results and a new request workspace; OS cache is uncontrolled. Record both role time and complete preparation dependency costs. No proof process is required in ordinary A/B transitions after the declared program/deployment checks, but its earlier cost and exact reused authority remain reported.

Use six diagnostic cells, three observations per role/cell:

| Cell | Parent/child pairs P | Prepared committed history H |
| --- | ---: | ---: |
| D1 | 1 | 8 |
| D2 | 32 | 8 |
| D3 | 128 | 8 |
| D4 | 1 | 32 |
| D5 | 1 | 128 |
| D6 | 128 | 128 |

Here live rows N = 2P at the measured parent. Start from an explicitly declared valid seed of P Open-parent/Active-child pairs, with no claim about a pre-import history. Prepare H using alternating finish/activate operations on one designated child, leaving it Active because H is even. Measure a single finish operation, D = one relevant operation. Freeze the exact parent for each repetition and charge its preparation separately. This growth fixture is distinct from LD8's empty-genesis lifecycle subject.

Compare A production, fresh B consumption and resident B continuation on identical requested subjects where meaningful. A production and B checking are different roles, not interchangeable product latency measurements. Capture actual changed rows, policy/dependency counts, materialized bytes and available work counters; unavailable internal query counts are null with reasons. The restricted language does not support an arbitrary relevant-change sweep; no such scalability claim is made.

Report all three observations, median/range and failures, with no p50/p95 assertion. The 033 target figures are reference labels for their original finished certified/durable endpoint. Any later percentile profile needs a separately frozen ≥100-complete-sample cell and new declared budget. Do not sum unrelated medians or silently filter slow/failed attempts.

## Complete timing endpoints

| Role | Start → finish |
| --- | --- |
| Source/build preparation | Freeze clock/source readiness → retained verified worker/tools, admitted fixtures and prepared-manifest completion |
| Program certification | Role launch → exact subject extraction, generic/concrete proof checks, type/axiom audit, fresh kernel replay and closed persisted assessment |
| Independent program rechecking | New process/material loading → full expected subject/coverage checking, actual proof regeneration/replay and persisted result |
| Deployment | Request to establish segment → certificate/basis loads, exclusive boundary, full snapshot validation, exact-anchor confirmation and active response |
| A ordinary operation | Caller request launch → actual evaluation, necessary checks, commit/refusal, original result and assurance sidecar completion; memory acknowledgement labeled explicitly |
| Fresh B history consumer | New process and retained input reads → independent packet reconstruction, data/behavior checks, boundary/certificate checks required by requested claims and full expected-endpoint result |
| Resident B extension | Incoming request/candidate reads → consumer evaluation/full result comparison, commit of matching result and complete endpoint confirmation; include internal prefix work |
| Restart/transfer/lost-state recovery | New process/open request → required re-establishment and first useful verified operation; retained-storage assumptions and cold loads remain explicit |
| Historical audit | Audit request/material loading → declared execution/safety argument reconstructed or exact missing evidence reported |
| C | Import original exact study clock/subject/limits/result; never synthesize a comparable LD8 duration from an unrelated proof |

If role costs overlap, report them as intervals or a directly measured whole, not additive medians. If access, source, security or finality differs, mark the comparison accordingly. Any pending work remains visible; there is no asynchronous product activation.

## Failure and evidence lifecycle

Freeze all case definitions and expected control reasons first. Run bootstrap, formal gates and primary integration before growth. Stop growth after subject/correctness failure, failed formal authority, resource stop or insufficient remaining budget; retain `not_run` cells. All fifteen controls still receive truthful dispositions. A report can be complete and conditional/negative without claiming those controls ran.

The supervisor records exact argv/environment selection, source/tool/binary identities, whole wall time, child results and stop reasons. Apply and record limits before exec. Use process-group termination/reaping, confirm no descendants remain, and retain stderr/stdout even on failure. Distinguish direct waited-child resource values from sampled tree values and enforced limits; unknown aggregate peaks remain null.

On success or failure close every backend/file/database handle and child first. Hash final evidence only then and validate it in another process. A stale hash, late checkpoint mutation, missing log or leftover process invalidates that attempt's archive. Preserve both failed and corrected attempts with separate receipts; do not repair old measurements. Final decisions account for the 24 cells, fifteen edge cases and all FR/SC obligations.
