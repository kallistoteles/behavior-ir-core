# Frozen experiment protocol

**Protocol**: `core032.experiment.v1`, planned 2026-10-28. Freeze concrete cases, binaries and effective conditions before final collection. This document defines research acceptance/usefulness criteria; it contains no measured candidate results.

## 1. Subjects and comparable outputs

Reference source is Core 0.16.0 at `fc73fa36b959aeaf54cff2f38dd190c4389c3fa1`, with an archived exact source overlay for any test-only additions. Freeze module bytes, admitted identities, case inputs, independent hand oracles and contract/checker/model versions. Reuse Core 031's forced-full reference and fixtures where suitable, without rewriting archived artifacts. Reference-path selection must be independently checked: a candidate cannot accidentally benchmark itself as reference.

Compare reference, A and B only on identical input/claim/output profiles. Run two explicit modes:

1. **Existing profile**: exact canonical observations/bytes, including their full construction and persistence cost.
2. **Study interpretation**: compact representation with complete retained support and an exact full export; compare the same interpreted observations. Account for future version/identity changes. Never compare a compact decision-only result with a full audit export as if outputs were equal.

B producer cost and independent checking are separate phases and included in relevant whole-chain totals. Reusing A as a possible producer does not let B trust its summaries. Use separate processes and clear trust boundaries.

## 2. Primary native projections

Every declared primary point has three independent repetitions for each applicable strategy/profile, with no failed repetitions dropped. One-axis projections avoid a gratuitous Cartesian explosion:

| Axis | Values | Other coordinates |
|---|---|---|
| Live E population N | 128, 512, 2048, 8192 | H=8, changed rows=1, rules=1; eight real repeated creations |
| Prepared history H | 8, 32, 128 | N=128 held fixed by updates/command-only preparation; same next request |
| Changed rows D | 1, 2, 8 | N=512, H=8; supported actual simultaneous effects or explicitly scoped Unsupported |
| Rules R | 1, 4, 16 | N=512, H=8; all relevant rule outcomes retained |
| Query predicate terms | 1, 2, 4 | N=512, H=8; declared total filter fragment |
| Value/evidence padding | 16, 256, 4096 bytes | N=128, H=8; measure actual output bytes |

Freeze deduplication of overlapping points. Each scaling claim requires at least three actual scales. Vary live N independently of H; do not derive a history slope from a simultaneously growing population. Count-limit scaling cases use a valid frozen L>N+8. The separate L=1000 boundary must allow creation 1000 and refuse 1001.

Required discriminators accompany primary points: local versus captured-threshold high-fanout update; reference/nonreference create/remove; lifetime-used IDs growing at fixed live population; changed context; command-only/duplicate intents; exact errors/lazy branches; conflicting commits and lost acknowledgement. At least three repeats apply to any discriminator promoted to a primary performance claim. Correctness-only finite controls need not become timing campaigns.

## 3. Accumulated-proof points

Run the early spike before the final native campaign. Attempt fixed live capacities C=1/4/16 and logical histories H=1/2/8. Freeze actual initial N, lifetime-ID capacity, command bound and circuit microstep layout for each. Native large-N points do not imply circuit large-N coverage.

The primary small proof point must have H≥2 and complete actual production plus independent verification. The successful small suite must demonstrate an actual commit and command-only commit, canonical duplicates, plus separate refusal/invalid-witness controls. At least one supported accumulated common-model claim and its Core bridge must succeed. Retain every attempted larger point, including exhaustion. A measured scaling claim needs three successful declared scales; otherwise report only observed capacity points and failures.

For the successful primary proof point, perform three fresh producer and three fresh consumer repetitions in each of two separately labeled modes: `first-use` and `reuse`. Independent consumers use a new process/workspace with pinned installed dependencies and evidence as input; previous acceptance is not an input premise. Fresh process does not imply fresh parameters in reuse mode. OS cache state is documented, not falsely called flushed.

The early proof experiment has its own frozen manifest, prepared by the minimal US3 freezer/CLI before the smoke run; it has no dependency on final US4 collection tooling. The later comparative campaign freezes a new manifest for its actual sources/cases. Never overwrite the early manifest or treat its proof as verification of changed final sources.

Measure recursive proof alone and combined proof+Core bridge separately. If compression is evaluated, include its own setup/proving/key/proof size and verification. If it is not implemented, state that explicitly; do not imply compressed succinctness. A valid proof from a different endpoint, wrong key, altered outputs or malformed support must fail the wrapper.

Assess synchronous publication and one bounded asynchronous run with arrivals recorded against proof throughput. Report backlog/lag and proved prefix; a pending proof is not acceptance of the suffix. This is an operational experiment, not a new production publication policy.

## 4. Environment and numerical capacity limits

- x86_64-linux KVM; recorded CPU model Intel Xeon X5670 2.93 GHz, eight visible vCPUs. Record actual `lscpu`, usable memory, cgroup/rlimit restrictions, kernel, affinity and competing work for every campaign.
- Native and proof timed children: CPU 7, one worker thread; orchestration CPU 0. Build/install outside timed intervals, no overlapping benchmark. Never stop unrelated user processes.
- Each measured child: 8 GiB address-space limit, measured RSS separately. Native lifecycle operation and independent verification: 300 s wall limit. A proof production history, including its declared parameter/closure work: 900 s wall limit.
- In first-use mode, the 900 s producer limit includes fresh parameter/key construction, witness generation, folding and applicable finalization/compression. The independent consumer's 300 s total includes fresh reconstruction/validation of required parameters/keys, proof verification and the Core identity bridge. In reuse mode, the same limits apply, including parameter loading/identity validation and every new proof/checking operation. Neither mode may omit mandatory checks or relabel exhausted first-use work as successful reuse.
- Whole native eight-transition lifecycle campaign case: 1800 s wall limit. Whole proof experiment including initialization, production, independent checking and bridge: 1800 s wall limit. Phase limits still apply; record incomplete phases. Report contiguous whole-chain wall time, not a sum of medians.
- Minimum 2 GiB free at run preparation; preflight actual per-case retention/storage estimates. Stream lossless containers with raw-byte length/hash verification where appropriate. Do not delete user work, other worktrees, old evidence or uncommitted files to make space. Disk exhaustion is a retained capacity/operational outcome.
- Pin Rust 1.98.1, existing Nix lock, Lean 4.30.0 and Nova commit/locked transitives; freeze build profiles and actual executable hashes. Record parameter/circuit identities. Installation/download/compilation are measured separately from installed cold execution.

These numerical bounds are frozen research capacities, not latency promises. If implementation feasibility requires an amendment, retain the original attempt/manifest, state the reason and start a separately versioned campaign before its evaluation. Do not silently broaden budgets or remove hard cases.

### Parameter preparation and timing boundary

`prepare` builds and freezes sources, executables, inputs, circuit shape and the parameter-generation recipe identity outside timed execution. It does not populate a first-use run with generated parameter/key artifacts. First-use permits installed pinned libraries/toolchains, but starts its timed process before any parameter derivation and records the resulting artifacts/digests as outputs. The consumer independently derives the required parameters/keys from the pinned recipe within its own timing boundary; it does not trust a producer-selected key.

Reuse is a separate experimental group whose manifest names the exact generated parameter artifacts and their provenance. Time their reads, decoding and recipe/circuit identity validation, plus all mandatory production/verification work. Earlier proof acceptance cannot replace checks. Record parameter construction as a separately measured first-use phase and report amortization explicitly; the reuse result alone is not a first-use end-to-end cost.

For each run, record contiguous wall time from before its first required operation to completion, plus nested phase timings. The 1800 s whole-proof limit includes initialization, parameter work, production, independent checking and bridge for that mode. Parameter preparation is never hidden in an untimed preflight. The fixed recipe belongs to the immutable manifest; observed generated-artifact identities belong to append-only result/support records, or to explicit inputs of a later separately identified reuse group.

## 5. Whole-cost instrumentation

Record initialization/anchor validation, prepared history construction, view/index build, affected execution, witness/evidence construction, canonical serialization, persistence/CAS/publication, parameters, witness generation, circuit synthesis, folding, optional compression, independent proof/checker/bridge verification, full export, command paging, reopen and cold reconstruction/recovery.

For each, record contiguous wall time, CPU time, peak RSS/address-space outcome, input/output/stored/transferred bytes and relevant work counters. Scoped allocation/copy/parse/hash counters identify instrumented sites and coverage; unmeasured totals remain unknown. Diagnostic probes run separately from production-like timings. Report retained proof/support versus expanded export bytes distinctly. Record cryptographic setup amortization and rebuild frequency rather than hiding them in an unreported cache.

Clocked observations include semantic attempt/commit/proof-step counts. Record raw samples, medians/ranges, paired comparisons where valid and uncertainty. Three repetitions do not justify strong distributional claims. Source-derived complexity, external benchmarks and actual local measurements have different evidence labels.

## 6. Usefulness and completion policy

Correctness is a prerequisite for every favorable disposition. All deliberate essential-premise violations must be detected by the relevant path; zero unexplained shared-scope mismatches are permitted. Proof resource exhaustion is neither a semantic counterexample nor a successful check.

| Consumer | Frozen decision rule |
|---|---|
| Local execution | Assess complete cycle including view maintenance/evidence/publication. A benefit only inside a predicate or offset by output work is a scoped finding, not an overall improvement. Report initialization/rebuild break-even and remaining growth. |
| Independent checking/replay | Include producer support and consumer transfer/check/reconstruction costs. Require complete exact outcomes, recoverable promised observations and no trust in prior producer approval. A larger witness may still be useful, but its trade-off must be explicit. |
| Succinct historical verification | Require real accumulated proof and expected-claim checking. Report dependency on H, circuit capacity and Core bridge work. History-independent folding with a linear bridge does not meet end-to-end succinct Core verification. |

No invented mandatory percentage speedup is needed to complete this investigation. A candidate that lacks measured useful total benefit receives defer/no-go or a narrowly justified follow-up. The investigation still requires two native mechanisms, successful small accumulated verification, machine-checked scoped support, complete primary records and the final dossier. No-go cannot disguise missing mandatory work.

## 7. Evidence lifecycle and integrity

Prepare → freeze → collect append-only attempts → validate coverage/correctness → independently verify → issue dossier. A source/case/protocol change restarts the affected campaign identity. Include exact source overlays, build/lock/parameter identities, actual commands, raw failures and portable retained support.

Strict schemas reject unknown/duplicate keys, type coercion and missing rows. Artifact checks bind compressed containers to original content and bound decompression. Coverage compares the manifest's expected attempt keys against every actual repetition; missing/duplicate/failed rows cannot silently pass. Never modify Core 031's completion record or published compatibility fixtures.
