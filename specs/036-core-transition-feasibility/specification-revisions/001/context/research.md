# 036 planning research

Planning completed 2026-11-15. These decisions resolve the design questions; they do not establish extraction support, correspondence, quality or performance results. Three read-only research agents inspected native/proof scope, canonical resources and cost/lifecycle seams as requested by `speckit-plan`. No builds, proof checks or benchmarks were run.

## R1 — Native proof is the first feasibility decision

**Decision:** Use a bounded exact-source Charon/Aeneas-to-Lean probe, followed by a compositional correspondence proof only if the real selected call closure is representable. Stop with a source-specific rework result if it is not. No second proof technology is introduced automatically. The full implementation connection remains the first acceptance gate.

**Rationale:** No source-to-proof pipeline exists in 035. `proofs/Reuse035/ObservationModel.lean` quantifies over `OriginalEncoders`; its exactness theorem proves equality inside that model. The actual native subject includes selectors, `Ground::view_step`, `Views::stage/apply/materialize`, original prepared evaluation and fresh invocation envelopes, original history/commit integration and eight-field observation construction. A translated terminal-state helper would leave most obligations open.

Aeneas translates a supported safe-Rust subset through Charon and supports a Lean backend. Its own documentation requires compatible tool versions and identifies language limitations. Therefore it is selected for a probe, not assumed to support this application. See the pinned [official README](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/README.md) and [workflow](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/documentation/getting-started.md).

**Alternatives considered:** Another handwritten model or more finite tests cannot close native correspondence. A full-language verified compiler is outside scope. Rewriting execution into a new small kernel could be a later architecture decision, but would change the subject rather than verify the frozen035 path; it is not this plan's fallback.

### Exact-source probe and trusted boundary

Probe actual source functions in `experiments/reuse-study035/src/{eligibility,ground,views,observation,reference}.rs` and their actual dependencies, including collections and JSON values. Build a call/dependency inventory before extraction; bind all cfg/features, architecture, arithmetic/panic behavior, locks and generated files. Check one actual projection/view relation first, then all required components. A successful small probe is permission to attempt closure, not closure itself.

Original encoders/hashes may be shared semantic functions by congruence only when a source-bound proof establishes identical function identity, equal complete native arguments and equivalent errors/effects in both executions. This avoids proving a cryptographic algorithm merely to prove equality of its two identical uses. It does not permit an opaque function whose specification assumes observation equality, a missing projection relation or unproved backend advancement. Extend the relation to the original native request/context/document information omitted by035's state model.

The trusted-boundary register separates frontend/extractor, source-language/compiler/runtime assumptions, collection/serialization abstractions, actual backend/CAS and exclusive-writer premises. Ordinary compiler correctness may remain an explicit environmental assumption; desired transition/projection/encoder equivalence may not. Unsupported dependencies, unsound opaque stubs, edited generated functions, omitted branches or an incompatible toolchain stop the gate.

### Tool identities resolved for the probe

The native baseline remains Rust/Cargo 1.98.1, Python 3.13.15 and the existing pinned Core/Safety/Nix closure in [035 toolchain](../../experiments/reuse-study035/toolchain.json). The new analysis-only tuple is:

| Component | Fixed planning selection |
| --- | --- |
| Aeneas | `1dc8ad31b1b062a77c50e29144a6c7bba955fa09`, upstream commit2026-11-14 |
| Charon | `454586e9b770231e66d2062993e632dfc06463e2`, from that Aeneas revision's [charon-pin](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/charon-pin) |
| Extraction compiler | `nightly-2026-09-17`, from the pinned Charon [toolchain](https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/rust-toolchain) |
| Analysis Lean | `v4.36.0-rc2`, required by the pinned Aeneas [backend](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/backends/lean/lean-toolchain) |
| Existing035 model check | Lean 4.30.0, unchanged pinned original check; any036 port/extension is separate and freshly checked |

Upstream commit/pin files were read during planning; binaries are not installed or validated by this plan. Materialize this tuple and its build dependencies only within the bounded preparation/probe budget, recording exact bytes/versions/locks before use. Native measurements and the canonical gate remain on stable1.98.1. The analysis/native cfg and source relation must be checked; a different nightly compilation does not prove the stable executable's behavior by hash matching. Any inability to justify this boundary remains a correspondence gap.

The pinned upstream [flake and lock](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/flake.lock) also lock Charon to the selected revision and the main build package set to `02c087f3fe673c9e317f206a627cb6b910336dbe`. Use that immutable build-dependency closure rather than unconstrained OPAM resolution; materialize only the selected native Aeneas/Charon/Lean analysis closure in registered roots. Do not acquire F*/Coq/HOL or all upstream test environments. Record full derivations/locks and actual binaries before use; inability to realize the required closure inside the budget stops availability.

Do not install every cross-target listed by Charon's toolchain file. Acquire only the recorded host analysis closure needed by the actual invocation, without changing upstream source bytes, and record any component exclusions. Do not use unaccounted global caches or a floating tool version to make the probe appear available. An unavailable compatible tuple is an operational stop, not a semantic refutation.

## R2 — Run the entire canonical gate with an independent cache

**Decision:** Use the unchanged `scripts/gates.sh` on a genuinely indexed036-owned selective source export, a retained actual candidate CLI through supported `BEHAVIOR_BIN`, and an initially empty gate target separate from release workers. Give owned caches6GiB instead of 035's2GiB, within a fixed8GiB simultaneous-growth ceiling and the same21600-second036 clock. This is a proposed bound, not demonstrated sufficiency.

**Rationale:** The 035 receipt records469,060,333 → 2,173,816,717 cache bytes and an actual stop after 354.483 s during workspace tests. It had already disabled incremental compilation and debug information. No per-file growth attribution exists. Reducing retained release/test cache overlap is justified; claiming a missing debug setting or a passed gate would be false.

The full script includes workspace fmt/lint/tests, two validation-work suites, build, determinism, boundary, public surface, external consumer, workflows, terms and shell tests. Correct source discovery matters:035's export contains1634files/10,887,181 bytes including 19 extra gate inputs. Reuse the reviewed selective Git-object source inventory, add every036 dependency explicitly and create a real private Git root/index. Avoid checkout of the historical archive. Terminal `gates: OK`, exit 0, complete logs and an empty process tree are required.

**Alternatives considered:** Narrowing tests, editing the script, carrying a warm mixed-profile cache, raising035's old ceiling, or treating resource exhaustion as an integration exception would not satisfy036. Deleting a live or historical cache is unnecessary and prohibited. Clean only registered036-owned disposable caches after their trees close and binaries are retained.

## R3 — Measure output transport before choosing a format change

**Decision:** Instrument the complete endpoint with an operation-relative interval tree and explicit unclassified remainder. First measure actual write calls/bytes, JSON construction/encoding, transport and `sync_all` independently in diagnostic mode. The first same-contract candidate is buffered output delivery if those measurements justify it; otherwise document an evidence-backed rejection before choosing another source-bound candidate.

**Rationale:** `experiments/reuse-study035/src/io.rs::write` calls `serde_json::to_writer` directly on `File`, appends a newline and syncs. Many small writes are a concrete hypothesis, not a measured explanation. `group.rs::charge_outer_maintenance` currently places remaining duration into semantic maintenance;036 must expose unattributed work honestly. `Ground::view_step` combines view materialization and original observation completion; capture/Store perform additional copies and history hashing.

The candidate must preserve exact serialized bytes/newline, create-new behavior, error reporting and successful explicit flush before file synchronization. Changing syscall grouping is not itself semantic change, but observed failures and partial writes require a contract argument and fault controls. No guaranteed percentage gain is assumed.

**Alternatives considered:** More rule optimization ignores most complete-operation time. Small output wrappers do not prove avoided state/record materialization. Output byte count proves neither a latency floor nor that all 657 ms is serialization. The 943,530 bytes in 035 cover primary plus continuation, and subtracting separate medians does not measure a residual phase.

## R4 — Measure whole sessions with actual changing work

**Decision:** Compare R and GV for lengths 1/8/32/128 in three explicit families: N=256/H=8 distinct-child changes; N=2/H=8 one first change followed by unchanged-content finish operations; N=256/H=8 distinct-child changes with a frozen mid-session invalidation/re-establishment boundary. Use three directly timed sessions and one separate diagnostic session per role/cell, with deterministic reversed role order between replicates.

**Rationale:** The fixture creates N/2 parents and N/2 children. AtN256,128 initially active children allow128 actual changes `c0000`…`c0127` without adding fallback activation. AtN2 only the first finish changes content. `Ground::quarantine`, writer revocation, view-corruption controls, explicit faults and fresh `reestablish` already identify recovery seams; they need new timing and authority evidence.

Measure initial checking/acquisition through every required result delivery and final confirmed endpoint. Report a directly timed session-plus-final-audit interval too. Freeze an invalidation immediately before operation `floor(L/2)+1` (operation 1 for L=1), clearing dependent authority in both roles under the same policy. Retain other fault/restart families as correctness and recovery-cost controls, not silently blend them into uninterrupted payback.

Primary lifecycle sessions start with the same independently checked resident program context and no retained state ground; every fresh state/history acquisition is inside each session. To avoid paying a roughly70-second program check for every workload cell, one fixed-role worker owns that program context while running the frozen sessions with fresh independent grounds. Each replicate starts fresh workers and actually checks the program. Retain the directly timed cold worker lifecycle and cold first session including that check, separately from resident-program session totals. Do not add a separate setup median to individual sessions or infer unmeasured cold totals for other lengths. Both roles use the same starting knowledge and actual checks; a supplied flag never establishes that context. Payback is reported only at observed lengths; no interpolation is labelled observed.

**Alternatives considered:** Adding independent median costs, replaying unchanged requests as 128 changes, or keeping every observation in RAM would conceal the question. Full history/retention is still charged and measured; streamed evidence limits controller memory without removing mandatory output.

## R5 — Compact transport and canonical compaction are different

**Decision:** Design one bounded, separately versioned canonical compact transition prototype only after diagnosis and prerequisite acceptance. Classify a compact wrapper around unchanged legacy commit as transport-only. It cannot establish avoidance of legacy canonical materialization. Compact canonical state/event/history identity relationships must be explicit, and original identities may be deferred to exact reconstruction if that is what the new contract declares.

**Rationale:** Actual `Store::history_with_head` retrieves/clones current and previous complete records and hashes them. The memory backend verifies the original record/event/head/version relationships and stores cloned records. Omitting a large outer response therefore does not remove that work. Legacy identities can depend on full legacy evidence.

A compact record binds the exact semantic profile, parent, original request/context/metadata, result/error/ordered commands, state delta, retained-input manifest, recipe version, experimental child coordinate and completion/availability conditions. Retained inputs must determine all eight original fields; no new cryptographic backend is required. The prospective recipe's feasibility is proved and tested before acceptance, not assumed by giving it a version.

**Alternatives considered:** Calling a compact digest the legacy history identity, leaving required evidence in an unbound cache, adopting a product migration or hiding reconstruction time would change or weaken the contract. A genuine new canonical path is larger than a transport optimization, which is why its implementation is gated and limited to `finish`.

## R6 — Source revisions and bounded execution remain observable

**Decision:** One 036 clock begins before the first new tool materialization/build/test/proof/quality execution. All subsequent development/probe revisions and final campaign inherit it. Freeze budgets, stage rules, expected theorem/control inventory and workload before execution; freeze each exact source revision before its runs. Any changed measured path needs its own correspondence and full quality result before accepted timing.

**Rationale:** Proof and tool acquisition may dominate. Development cannot be hidden before a fresh benchmark clock, nor can a later optimization reuse a gate for different source. To avoid requiring an unimplemented036 controller to supervise its own first red tests, bootstrap with the existing reviewed 035 recorder in a new 036 output root, explicitly measuring only036 roots and retaining its true tool/schema identity. Its actual first start/boot becomes the inherited036 origin; the new controller adopts that receipt rather than resetting time. The bootstrap uses the older stricter byte/process ceilings until the tested036 controller is available. Reuse checked unchanged proof dependencies only with an exact dependency binding; no gate is promoted across a changed subject by label.

**Alternatives considered:** An unlimited exploratory phase, a new clock after each correction or building all candidates before the correspondence gate would defeat the bounded investigation. Failure at an early stage still produces an honest useful report with explicit blocked downstream slots.

## R7 — Evidence and reproduction are separate from truth of a candidate

**Decision:** Retain create-once manifest-linked records, exact executables/source subjects, raw observations and separate statuses for operational completion, proof, native correspondence, conformance, comparability and acceptance. Independent validation recomputes summaries, replays full original cases, freshly checks accepted proof roots and verifies recorded gate/worker bindings. Any unavailable independent full reproduction remains an explicit limitation and blocks the corresponding positive reproduction claim.

**Rationale:** A report may be complete and reproducible while rejecting the candidate. Three timing observations support diagnostic medians/ranges only. Evidence records never import private execution authority, and file synchronization never establishes application durability.

**Alternatives considered:** A single green flag, report-selected verifiers, median-only tables or retrospective expected outcomes conceal which condition failed. Entire archive rehashing is neither needed nor budgeted: preserve selected pinned prior manifests and unrelated files while binding the new source/evidence closure.

## Resolved design questions

The tool tuple, closure strategy, bounded failure policy, unchanged gate strategy, first cost hypothesis, exact workload families, compact identity boundary and reproduction contract are chosen above. Their success remains empirical/formal work for implementation. No unanswered planning clarification is replaced by an assumed favorable outcome.
