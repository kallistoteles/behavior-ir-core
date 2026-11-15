# Investigation 034: why the work takes time

The measured bottlenecks are broader than one hash function. Full history is rederived in several passes for a fresh consumer, and local execution still processes large state/evidence objects. These conclusions come from the frozen campaign, a separate phase-instrumented baseline, and [exact pinned implementation copies](inputs/measurement-002-sources.json). They do not rely on the invalid optional cache comparison.

## Accepted diagnostic observations

The [diagnostic plan](evidence/diagnostics-002/plan.md) precedes the probes. Six baseline phase observations cover fresh and resident roles at D1 (N=2,H=8), D3 (N=256,H=8) and D5 (N=2,H=128), using primary repetition-1 inputs. All six preserve the original checked-report meaning excluding diagnostics. They are single diagnostic observations, not replacements for primary triplicates. [Raw results](evidence/diagnostics-002/run-001/results.json) retain phase nanoseconds and public-call counts.

### Fresh consumers perform several whole-prefix jobs

At D3, a fresh check took 10,619 ms inside the instrumented full-check interval. Its sequential phases included 2,998 ms of own invocation/commit rederivation, 2,299 ms behavior replay, 1,773 ms explicit data replay, 1,254 ms invocation replay, 793 ms historical property checks, 671 ms reconstruction and 469 ms parent checks. Small uninstrumented gaps and remaining phases explain the rest.

The measured public work counts are nine invocations replayed, nine requests rederived, ten original state checks and nine committed-argument comparisons. Behavior replay itself calls data replay in the pinned [replay source](inputs/measurement-002-primary-sources/02-replay.rs#L1026). These passes establish different checks; deleting one without an equivalence/preservation argument would change the assurance contract. Their current repetition is nevertheless a concrete architecture target.

At D5 the same families increase with history length: own invocation/commit rederivation about 1,835 ms, behavior replay 1,153 ms, explicit data replay 876 ms and invocation replay 789 ms. The primary largest case's fresh worker median is 152,206 ms. This is actual reconstruction and verification work; no succinct prefix certificate has replaced it.

### Local extension still processes population-sized objects

For one D3 resident extension, the measured outer extension interval was 522.897 ms. Nested sequential phases were:

| Phase | Milliseconds |
|---|---:|
| Parent history check | 59.718 |
| Native invoke | 115.001 |
| Candidate comparison | 2.405 |
| Native commit | 186.138 |
| Endpoint history check | 58.622 |
| Original property check | 93.773 |
| Report update | 0.013 |

The nested interval totals 515.678 ms including its unlabelled gaps; input/outer gaps account for the remaining interval. Values are from one and the same operation. They must not be added to unrelated primary medians.

The pinned Store's `versions_for` validates the snapshot, then enumerates and hashes entity versions and reconstructs an accumulator even when a validated-snapshot cache can establish validity ([Store lines 122 onward](inputs/measurement-002-primary-sources/01-store.rs#L122)). Maintaining invariant validity alone therefore does not make the rest of execution depend only on the changed entity.

`current_history()` does **not** replay the full prefix. It derives current/previous record identities (and handles genesis specially). Those records can themselves be large. MemoryBackend retrieves a cloned transition record; record identity hashes its full content. The two history confirmations above cost about 118 ms together, but no valid microbenchmark separated cloning, hashing and serialization, so no arithmetic-level percentage is claimed.

Core already uses an incrementally updated MuHash accumulator with retained numerator/denominator. Inventing an incremental state accumulator is not the missing change. The questions concern when complete entity/version maps and evidence must be reconstructed, how checked views survive transitions, and what exact dependencies each decision requires.

In primary repetition 1, the full A response grows from 6,728 bytes at D1 to 224,025 bytes at D3; corresponding complete history packet sizes grow from roughly 94 KB to 2.13 MB. D6's packet is roughly 29 MB. Keeping full population-shaped response/invocation evidence puts a byte-volume floor under the current interface even if its arithmetic gets cheaper. Changing that format requires a versioned semantics/observation design, not omission of required evidence.

### Research-wrapper and native intervals differ

In the primary small fresh role, native work was about 392 ms and process CPU about 389 ms, while its whole supervised research role was about 5,009 ms. Readiness, process tracking, filesystem cache/evidence scans and post-close work sit outside the native timer. The difference is real, but the optional direct-process/controller profile was not run before its diagnostic subbudget expired. Precise scanner-versus-launch attribution is unmeasured. Neither interval is a durable product request benchmark, and subtracting an estimated wrapper constant would not establish one.

### Checked-basis retention remains a separate hypothesis

The source has a private validated-snapshot cache tied to exact history/schema/behavior/profile. `Store::open` starts cold. The prototype fully checks a prefix, then extracts/reopens its backend; this does not preserve that private cache. Avoiding redundant establishment could help, but correctness needs an explicit exact-basis transfer/preservation contract.

The intended matched cold/retained diagnostic did not establish distinct executed binaries: all three retained worker hashes are identical, and the variant builds reported cached artifacts. Its timings are excluded. No conclusion that cache retention is effective or ineffective is supported. A future causal test must force distinct compiled treatments and verify embedded variant identity before execution.

## Diagnostic failures and research limits

[Validity dispositions](evidence/diagnostics-002/validity.json) retain every exclusion. The hash/copy/wire micro tests supplied a complete HistoryPacket to a BackendPacket decoder and failed before timers. No component timings exist. Direct-process and controller profiling were not run when the shared 600-second diagnostic budget was exhausted; it was not reset. The primary campaign completed before these diagnostic failures and remains unchanged.

## Architecture implications

The evidence supports three distinct design obligations:

1. Establish program validity and a historical basis at an explicit lifecycle boundary, then preserve an exact checked basis across local transitions. A new independent consumer must either do the measured reconstruction or receive another explicitly justified basis; it cannot inherit trust from a producer claim.
2. Make maintained checked views, dependency indexes and transition evidence depend on actual changes where the semantics permits. Prove coverage/preservation before eliminating current passes. The existing cache and incremental accumulator are useful machinery, but do not by themselves remove full map construction and property evaluation.
3. Separate compact canonical transition identity from expensive audit observations if a versioned contract permits it. Demand the same exact results and observable order/error behavior, with complete audit reconstruction, before claiming savings.

The next discriminating experiment should use one frozen transition to test a real checked-basis transfer and one population-independent view update, with guaranteed distinct binaries and original semantic/property checks. This is a bounded architecture experiment, not approval to replace Core or change synchronous finality. This investigation has established the present cost sources and their limits; it has not demonstrated the final millisecond architecture.
