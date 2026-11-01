# Core033 campaign and assessment contract

This is a prospective protocol, not benchmark evidence. The [spec](../spec.md)
defines the target guarantees; [runtime](runtime.md) defines their endpoints.

## Frozen inputs and ceilings

Before any measured run, `freeze` records available source/spec/plan/lock/executable
hashes, intended IR/codec/backend and RNG overlay, security/authority premises,
storage configuration, exact module/request bytes and seeds, kernel/CPU/microcode/
affinity/threading, filesystem/device/RAM, cache/process mode and ordered schedule.
It also fixes output slots. It does not demand formal receipts or keys not yet
produced. Subsequent correspondence and preparation receipts link this immutable
input manifest; a separate immutable release manifest binds their actual checked
source/matrices/augmented embedding/keys. Runs reference both. Failed preparation
has a failure receipt and can still be assessed; no input manifest is rewritten.

The initial declaration is 27 parent scenarios: N={128,2048,8192}, H={1,128,8192},
U/N={1,16,128}. N means live population at the measured parent, U includes permanent
used IDs, H counts committed events in the claimed suffix. Keep N fixed while
building H using sets/command-only events. Measure a creation on its own copy of
the same parent, not on an accidentally growing shared parent. The cap-1000
boundary uses 999/1000 live rows separately.

Large U has an explicit complete input/origin claim. Use an authoritative Core
snapshot with actual retained lifetime evidence, or a declared trusted new genesis
with no pre-genesis historical claim. Where an existing Core Store comparator
requires preparatory history, actually construct/validate it and charge that work;
do not fabricate versions/records or assume a live-only snapshot supplies U.
If the chosen reference input cannot be established within limits, mark that
cell blocked rather than weakening the reference's backend contract.

| Limit | Frozen first-campaign value |
| --- | --- |
| Semantic input | ID≤64 bytes; entity/context/command output each≤1 KiB; affected obligations≤16. |
| Population capacity | At most 2^20 used identities; larger inputs are explicit resource limits, not truncated sets. |
| Worker/thread profile | One measured worker, one selected allowed CPU, `RAYON_NUM_THREADS=1`; cross-thread replay is a separate control. |
| Per process/attempt | 8 GiB memory, 900 s wall; actual RSS/I/O scopes recorded. |
| Per scenario/campaign | 1800 s scenario; 8 h total campaign wall; 64 GiB generated artifacts and ≥16 GiB free before starting. |
| Pilot | Three real attempts per selected smoke case before full collection; retained as pilot, never 100-sample quantiles. |
| Completed latency scenario | 100 whole observations, retain failed attempts and slower successes; no outlier filtering. |
| Sustained discriminator | One producer, 5 arrivals/s for 60 s, queue bound128, then drain within remaining campaign ceiling. Queue wait belongs to request latency. |

Formal construction is itself a feasibility risk. The first artifact-pair
milestone has a frozen five-engineering-day cap; the complete G0/G1 implementation
attempt has a further fifteen-engineering-day cap. One day means eight hours of
logged active work, not invisible parallel CPU time. Record actual person/agent
work and compute separately. These are proposed experiment stop budgets, not
delivery estimates; changing them requires an explicit revised study protocol.
At a cap, publish exact unmet targets and a negative/not-established assessment,
not a promised future proof marked complete.

Kernel-checking release artifacts, builds and dependency fetches have their own
absolute work/byte records. Prebuilt release construction is not an ordinary
business request, but runtime admission, parameter/key derivation and actual
cold loads are charged wherever they occur. No deployment work is hidden in a
supposedly free installation.

## Scenario coverage

For each reachable parent cell collect create, field-set, command-only certified
durable results and fresh-consumer checks. Required lifecycle/control scenarios:

1. First use from actual runtime preparation to empty certified genesis.
2. Raw seed intake and complete Init/J/root construction for each declared size.
3. Parent-prefix construction and evidence/checkpoint retention.
4. Warm native producer/K diagnostics, separately named from full durable certificate.
5. Whole synchronous certified publication, including repeated actual conflicts/retries.
6. New-process consumer: cold trusted material loading, required certificate transfer,
   actual verification, complete expected-subject comparison.
7. New-process certified reopen through the first useful certified durable operation.
8. Full observation/command reconstruction and missing-support audit controls.
9. Missing/corrupt continuation recovery through a useful new operation or explicit
   unavailable result. Never equate prior proof validity with resumability.
10. Process crash/lost ack, same-ID and parent races; final database checkpoint/close.

Cold means new process with documented OS page-cache state. Do not flush a shared
host's caches; label process-cold/page-warm honestly. No resident verifier can be
substituted. Initial/adoption/input access premises must be identical to the
reported claim. Transfer may be local but its actual bytes/time are still measured.

Within each whole sample record monotonic start/end and phases for reads,
authentication, production, K, folding, compression, independent verification,
checkpoint serialization and database write/commit. Work may overlap: measured
wall total is authoritative, not a sum of unrelated median phases. Process launch,
preparation and close are additionally reported in process/lifecycle totals.

For each lifecycle report `install + init/import + prefix build + cold open +
Q operations + fresh checks + audit + recovery + close`, absolute times/bytes and
peak resource values. Cached parameters have a declared lifetime, memory and
rebuild cost. Sustained arrivals expose queueing/backpressure rather than allowing
an unbounded hidden proof backlog.

## Raw sample and artifact schema

Each `Sample` has campaign/scenario/mode/run and original request IDs, exact parent,
N/U/H/D/opened-node and proof-step counts, access/cold/thread profile, named
guarantee endpoint, start/end/phase ns, exact result/status, retries, RSS and scoped
I/O counters, proof/pp/pk/vk/checkpoint/database/WAL bytes and linked artifact hashes.
Missing counters are null with reason, never zero. Each command retains stdout,
stderr and process status. Inputs, sources and generated outputs have manifest
digests and sizes; absent/unreachable outputs have explicit status.

Use nearest-rank p50 and p95 of complete successful whole intervals and report
failure/timeout rates separately. Requiring 100 complete observations prevents
small pilots from establishing targets. Report deterministic 10,000-resample
bootstrap intervals with analysis seed3301 as descriptive uncertainty, not proof
of the population quantile. Success with failures is never presented as universal
success. Reject a positive performance finding if required cell coverage or
sample counts are missing. Do not infer a quantile failure solely from three
slow pilot samples; report observed times and the ceiling/coverage limitation.

## Comparators

Keep distinct identities for actual authoritative Core, forced-full reference
where its route is available and checked, the archived final borrowed-view
optimization, native033 diagnostics and full certified033. Verify/rebuild the
archived patch in its own checkout; don't apply it to this branch or rewrite its
sealed artifacts. Its old six-case percentages are prior evidence, not a new run.

Compare normalized exact outcomes/error phases, typed state/lifetimes, committed
event order, full requested observations and canonical command bags. Old/new IDs
and receipt bytes differ by declared profile. State the different certification
guarantees; do not publish an unqualified speedup ratio between unlike endpoints.
An unavailable comparator is an explicit unmet comparison requirement.

## Assessment and stop rules

`Assessment` includes manifest/artifact identity, complete planned-cell ledger,
all FR/SC coverage, formal/axiom/correspondence receipts, positive/negative control
results, timing/resource summaries, every blocker and a reasoned decision.

| Axis | Passed | Failed / not established |
| --- | --- | --- |
| Correctness | All scoped semantic, source/matrix/codec/history obligations and real controls accepted. | Counterexample or invalid acceptance fails; missing theorem/bridge/blocked control is not established. |
| Performance | All required bounded targets/cells have complete samples and meet their declared quantiles; lifecycle work retained. | Complete sampled target miss fails; insufficient samples/resource-limited coverage is not established with exact ceiling/observed costs. |
| Overall G1 | Both axes passed with no unmet required bridge. | Any other combination cannot pass. |

Predeclared resource limits stop work and preserve all evidence; later cells are
`NotRun(reason,blocking_artifact)`, never silently skipped. Assessment completeness
can be achieved with a reproducible failed/not-established outcome. `Continue`
means scoped G1 passed; `Rework` means a specific bridge/backend/representation
needs a new identified attempt; `Stop` ends this candidate under the declared
constraints. None proves every conceivable architecture impossible.

Native incremental/compact-observation benefits receive their own scoped evidence
status even when synchronous crypto fails. They cannot promote the full chain.
Production activation and a full Core rewrite require later gates, not a positive
exit code from a completed assessment.
