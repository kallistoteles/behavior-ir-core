# Tasks: Verified Incremental Transitions — Comparative Investigation

**Input**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md), [data-model.md](data-model.md), [contracts/](contracts/) and [quickstart.md](quickstart.md).

**Feature**: Core 032. **Worktree**: `/home/kalle/repos/behavior-ir-core-031`. **Git branch**: `031-scalable-execution-evidence`; feature selection remains independently `032-transition-verification-study`.

**Tests**: Explicitly required by the specification and constitution. Write and run each new control before its corresponding implementation; retain meaningful failing evidence. A missing import alone is not the required semantic red control: also demonstrate the omitted/altered premise against the actual acceptance path. Proof mutations must fail checking without admitted placeholders. Normal test/proof failures never count as successful completion.

**Notation**: All paths are repository-relative. `[P]` means a task can run alongside other ready tasks in different files after its stated prerequisites; it does not authorize concurrent edits to shared files. Task IDs are sequential within the phase layout; the explicit dependency graph governs permitted early US3 work. All boxes start unchecked because generation performs no implementation or experiments.

## Phase 1: Setup — isolated and reproducible study

**Goal**: Establish the isolated workspace, pinned tools and protected-source inventory without changing production requirements.

- [X] T001 Record the source baseline `fc73fa36b959aeaf54cff2f38dd190c4389c3fa1`, current source overlay, branch/feature selection and hashes of protected published fixtures, Core 031 archives and unrelated work in `specs/032-transition-verification-study/evidence/protected-inputs.json`; use this inventory for the final no-modification check.
- [X] T002 Create the standalone Rust workspace in `experiments/transition-study032/Cargo.toml`, `experiments/transition-study032/Cargo.lock` and `experiments/transition-study032/src/lib.rs`, using pinned Rust 1.98.1, existing Core path dependencies, typed errors and `#![forbid(unsafe_code)]`; isolate it with its own workspace boundary without changing the production dependency graph.
- [X] T003 [P] Implement `experiments/transition-study032/shell.nix` and `experiments/transition-study032/proofs/lean-toolchain` using repository-locked nixpkgs `6774f7bc253789b113a4f39285dc0fa100abeacc`, Lean 4.30.0 without mathlib and the existing Rust/Python tools; verify actual executable versions and record derivation/tool identities in `specs/032-transition-verification-study/evidence/toolchain.json` without introducing a second Nix lock or toolchain manager.
- [X] T004 [P] Define the study directory/CLI module skeleton and test-discovery entry points in `specs/032-transition-verification-study/benchmarks/study.py`, `specs/032-transition-verification-study/benchmarks/__init__.py` and `experiments/transition-study032/src/bin/study032.rs`; reserve the planned `proofs`, `prepare`, `proof-smoke`, `verify`, `run`, `recover` and `assess` subcommands without reporting unimplemented operations as successes.

## Phase 2: Foundation — typed artifacts, reference route and resource controls

**Goal**: Shared infrastructure required by every story. Complete this phase before starting story work.

- [X] T005 Write failing artifact-reader controls in `specs/032-transition-verification-study/benchmarks/test_artifacts.py` for unknown/duplicate keys, omitted required fields, numeric/Boolean type changes, changed hashes, malformed compressed support and missing/duplicate attempt keys; establish the expected distinct error channels before T006.
- [X] T006 Implement strict shared artifact loading and schemas in `specs/032-transition-verification-study/benchmarks/artifacts.py` and `specs/032-transition-verification-study/benchmarks/schemas/`; enforce verbatim data-model constraints: "Contract/schema identifiers begin `core032.*.v1`" and "numeric bounds and encodings are mandatory fields rather than implicit defaults"; bind container bytes to original content and reject coercion.
- [X] T007 [P] Write failing forced-full-route and publication-observation tests in `crates/behavior-store/tests/research032.rs`; prove the test can detect accidentally selecting the optimized/candidate path as its reference and can distinguish semantic results from commit conflicts and operational failures.
- [X] T008 Implement the smallest test-only forced-full reference integration needed by T007 in `crates/behavior-store/tests/support/research032_reference.rs` and, only if existing test access is insufficient, `crates/behavior-store/src/store.rs`; reuse Core 031 support, retain authoritative Core evaluation/commit/replay and expose no new production optimization flag or semantic API.
- [X] T009 [P] Write failing resource/preflight/status tests in `specs/032-transition-verification-study/benchmarks/test_profile.py` for phase/whole-chain timeouts, memory/disk exhaustion, wrong CPU profile, concurrent collection, mutated campaign settings and null-versus-zero metrics before T010.
- [X] T010 Implement frozen resource settings and preflight in `specs/032-transition-verification-study/benchmarks/profile.json` and `specs/032-transition-verification-study/benchmarks/profile.py`: CPU 7 measurement/CPU 0 orchestration, one worker, 8 GiB address space, 300 s native/consumer, 900 s proof production, 1800 s whole-case limits and 2 GiB minimum free space; preserve failures and never stop unrelated processes or delete user work.

- [X] T011 Write proof-integrity driver controls in `specs/032-transition-verification-study/benchmarks/test_proofs.py`, using explicitly rejected malicious proof fixtures to detect `sorryAx`, custom/native-evaluation axioms, missing theorem targets, stale artifacts, failed fresh kernel replay and a compiler exit 0 with an unacceptable axiom report; require actual rejection before T012 can pass.
- [X] T012 Implement the fail-closed `proofs` command in `specs/032-transition-verification-study/benchmarks/proofs.py` and structured transitive axiom reporting in `experiments/transition-study032/proofs/Audit.lean`, allowing only `propext`, `Classical.choice`, `Quot.sound`; run pinned Lean plus independent `leanchecker --fresh`, bind checked target/module identities and retain statuses/artifacts so every later theorem gate uses this driver from its first acceptance.

**Checkpoint**: Strict artifact I/O, genuine full reference and reproducible capacity enforcement work independently. The source baseline and protected files are inventoried.

## Phase 3: US1 — Know exactly what each candidate establishes (P1, MVP)

**Goal**: Make the exact computation, support requirements and trust boundaries executable and reviewable before comparing candidates.

**Independent test**: Distinguish equal live states with different used-ID histories, reject a wrong-but-safe transition claim, and report missing reconstruction data separately from claim validity. Verify the six boundaries: execution, safety, historical identity, authority/provenance, retention and availability.

### Tests first

- [X] T013 [P] [US1] Write boundary-contract tests in `experiments/transition-study032/tests/subject_contract.rs` for lifetime-ID reuse, a wrong-but-safe assignment (request requires x=2 while the witness returns x=3, both positive), command-only/duplicate intents, changed context and valid-claim/missing-support separation; require canonical occurrence order/multiplicity rather than authored emission order.
- [X] T014 [P] [US1] Write complete-module recognition and reference-oracle tests in `experiments/transition-study032/tests/module_scope.rs`, adding unauthorized extra actions/rules/effects, wrong types/bindings, unsupported expressions and independent expected outcomes for count 1000/1001, references, laziness and first errors before implementing recognition.

### Implementation and contract evidence

- [X] T015 [US1] Implement `ReferenceSubject`, `OperationalState`, `AttemptInput`, observations and separate result enums in `experiments/transition-study032/src/types.rs`; preserve every field from `data-model.md`, including typed historical used IDs and exact history coordinates. Use exact channel values `Allow/Refused/EvaluationError`, `Accepted/InvalidWitness/Unsupported`, `Verified/InvalidProof/ResourceExhausted/ToolFailure/NotProduced`, `Matched/Mismatch/Unavailable/NotClaimed`, `Available/MissingSupport/CorruptSupport`, `Committed/Conflict/OperationalFailure/AckUnknown/NotAttempted` and `ExternalAssumption/IndependentlyChecked/NotClaimed` without cross-channel coercion.
- [X] T016 [US1] Build the closed public parameterized module/fixture families in `experiments/transition-study032/src/fixtures.rs` and independent hand expectations in `specs/032-transition-verification-study/benchmarks/oracles.json`; include positivity, L=1000 boundaries, refs/lifetimes, captured thresholds, high fanout, commands and error controls; use a separately valid larger L for N=2048/8192 scaling populations.
- [X] T017 [US1] Implement whole admitted-module/template recognition and deterministic action/expression/effect inventories in `experiments/transition-study032/src/subject.rs`; enforce "Admission alone is insufficient for study support" and "Added actions/rules cannot disappear from the inventory"; classify every unsupported construct with a reason rather than matching only selected syntax or hashes.
- [X] T018 [US1] Implement the public-Core input/reference adapter in `experiments/transition-study032/src/reference.rs`, binding exact live and lifetime state, module/schema/profile, request/context and expected parent to T008; preserve the constraint "Inputs must distinguish supplied values from trusted assertions" and keep byte identity and typed interpretation linked.
- [X] T019 [US1] Define the executable Lean reference in `experiments/transition-study032/proofs/State.lean` and `experiments/transition-study032/proofs/Reference.lean`: finite typed maps, used identities, selected rule/error order, checked integer arithmetic, supported lazy/query semantics and canonical command occurrences; state supported-domain bounds separately from arbitrary finite mathematical definitions.
- [X] T020 [US1] Implement complete observation extraction and publication separation in `experiments/transition-study032/src/observation.rs`; preserve exact canonical bytes and normative facts/memberships/traces, with "no commit for refusal/error" and "Equal state content after a command-only event does not imply unchanged history"; make all T013–T014 contract controls pass against actual Core.
- [X] T021 [US1] Write `specs/032-transition-verification-study/evidence/correspondence.md`, mapping each model construct and input to the admitted Core API/semantics and each claim to machine-checked, structural, tested or trusted evidence; separately identify genesis, migration/module-switch, authorization, source truth, renderer and reconstruction obligations with no inferred end-to-end formal claim.
- [X] T022 [US1] Run and retain US1 contract/oracle evidence in `specs/032-transition-verification-study/evidence/us1.json`, including reference-selected errors, the six evidence boundaries, precise supported scope and meaningful negative controls; review `contracts/transition-contract.md` against actual fixture behavior and record any justified clarification before dependent work.

**MVP checkpoint**: A reviewable exact reference contract and public executable cases exist. No candidate performance or certification claim is established yet.

## Phase 4: US2 — Compare executable strategies against one reference (P1)

**Goal**: Implement and justify A's inductive reuse and B's independent witness acceptance against the same exact reference.

**Independent test**: The reference/A/B agree over shared supported scope, including 1000 ALLOW/1001 refusal. Actual missing/stale/extra premises fail checking; fallback remains exact; local and high-fanout dependencies are distinguished.

### Tests first

- [X] T023 [P] [US2] Write A's meaningful mutation/recovery tests in `experiments/transition-study032/tests/maintained_views.rs` for omitted initialization, stale counts, missing/new/extra members, incomplete incoming refs, changed captures/context, errors and crashed partial maintenance; establish the failure expected from each corrupted actual reuse premise before T028–T030.
- [X] T024 [P] [US2] Write B's acceptance/completeness and witness mutations in `experiments/transition-study032/tests/witness_checker.rs`, covering missing/extra/duplicate state rows, incomplete used-ID history, mismatched anchors, omitted actions/effects/obligations, invented commands and wrong-but-safe poststates; ensure valid refusal/error witnesses can pass checking while `InvalidWitness` never becomes a semantic denial.
- [X] T025 [P] [US2] Write actual-Core differential/property cases in `crates/behavior-store/tests/research032_equivalence.rs` and pre-implementation compact/export mutation controls in `experiments/transition-study032/tests/encoding.rs` for create/update/remove, aliases, simultaneous effects, checked overflow, lazy/first-error ordering, canonical duplicate commands, unsupported constructs and exact fallback; vary identifiers, declaration order, context and query membership rather than testing only the happy path.

### Independent witness mechanism first

- [X] T026 [US2] Implement untrusted witness production in `experiments/transition-study032/src/witness.rs` and stateless complete-snapshot checking in `experiments/transition-study032/src/checker.rs`; independently bind full sorted state/lifetime inventory to the accepted anchor, verify exact effects/all obligations and outputs, and enforce "Per-row/cell references use typed identity, not positional coincidence" without trusting A's counts/indexes/prior approval.
- [X] T027 [US2] Machine-check `checker_sound` and supported-outcome `checker_complete` in `experiments/transition-study032/proofs/Checker.lean`; demonstrate acceptance of complete witnesses for Allow/Refused/EvaluationError and retain proof-premise mutations that fail. Record remaining Core adapter/Rust checker correspondence assumptions in `specs/032-transition-verification-study/evidence/correspondence.md`.

**Early dependency checkpoint**: T027 plus US1 unlock the US3 Nova spike. Start US3 here if feasible, alongside the independent A branch below; do not wait for final native benchmarking or US4.

### Maintained views and exact interpretation

- [X] T028 [US2] Define J and checked initialization/rebuild in `experiments/transition-study032/src/views.rs`, including exact query memberships/counts, incoming refs and selected rule/error outcomes at complete context coordinates; enforce "Unknown dependency means affected" and the lifecycle "absent → rebuilding → valid(anchor) → valid(next_anchor)" or "invalid" with no validity publication for an uncommitted partial update.
- [X] T029 [US2] Implement A's complete-delta/dependency maintenance and execution in `experiments/transition-study032/src/maintained.rs`, preserving J on success/refusal/error, invalidating absent/newly matching members and changed captures, and choosing exact reference fallback or experimental Unsupported for uncovered semantics; do not turn an unproven optimization into execution authority.
- [X] T030 [US2] Machine-check `init_correct`, `maintained_correct` and `rebuild_correct` in `experiments/transition-study032/proofs/Views.lean` and `experiments/transition-study032/proofs/Maintained.lean`, proving exact reference equality plus J preservation rather than invariant preservation alone; retain the corresponding missing-premise proof/checker mutation controls.
- [X] T031 [P] [US2] Implement the compact study observation/support encoding and complete canonical export in `experiments/transition-study032/src/encoding.rs`; preserve existing-profile bytes, complete facts/membership/trace reconstruction and all digest bits, and require unavailable support to produce the separate availability result rather than invented observations.
- [X] T032 [US2] Machine-check the compact interpretation/expansion relation in `experiments/transition-study032/proofs/Observation.lean`, run the prewritten round-trip/export controls in `experiments/transition-study032/tests/encoding.rs`, and explicitly record the remaining canonical serializer/hash correspondence boundary in `specs/032-transition-verification-study/evidence/correspondence.md`.
- [X] T033 [US2] Implement view-loss/cold authoritative reconstruction in `experiments/transition-study032/src/recovery.rs` and verify it in `experiments/transition-study032/tests/view_recovery.rs`; check exact history, lifetime IDs and complete refs before restoring J, and keep missing/corrupt support distinct from invalid computation.
- [X] T034 [US2] Run the full shared correctness/property and actual mutation suite against Core/A/B, retaining cases and red/green outcomes in `specs/032-transition-verification-study/evidence/us2-controls.json`; detect every deliberate essential-premise violation and investigate all mismatches before any favorable recommendation.
- [X] T035 [US2] Integrate the reference/A/B dispatch and exact existing-profile versus interpreted-study outputs in `experiments/transition-study032/src/execution.rs`; keep producer and independent checker phases separate and require declared support/fallback outcomes for every case, including high-fanout and unsupported controls.
- [X] T036 [US2] Record independent A/B correctness dispositions and exact supported-domain/proof/test coverage in `specs/032-transition-verification-study/evidence/us2.json`; identify linear snapshot/output work and remaining trusted implementation correspondence without claiming measured speedup or arbitrary-Core certification.

**Checkpoint**: Two materially different native mechanisms are executable and independently testable. Their complete performance campaign remains US4.

## Phase 5: US3 — Establish accumulated-proof value and cost (P2, early spike)

**Goal**: Produce a real accumulated proof of the same bounded exact computation and verify it in a fresh consumer, including the measured Core identity bridge.

**Independent test**: A successful H≥2 common-model proof plus exact Core bridge verifies independently; altered subject/anchor/endpoints/commands and invalid semantic witnesses fail. Attempts, commits and microsteps remain distinct, as do proved and pending prefixes.

### Tests first

- [X] T037 [P] [US3] Write circuit/encoding conformance and actual constraint-mutation controls in `experiments/transition-study032/tests/circuit_relation.rs`, including wrong-but-safe output, omitted ref/lifetime checks, signed checked arithmetic, partial steps, duplicate commands and a digest collision caused by reducing 256 bits to one scalar; wrong semantic witnesses must not satisfy the supported relation.
- [X] T038 [P] [US3] Write independent consumer/key/claim-binding tests in `experiments/transition-study032/tests/proof_consumer.rs`: wrong module/schema/profile/model/checker, arbitrary producer key, changed initial anchor/step count/returned endpoint/context/output or malformed proof; a cryptographically valid proof for a different claim must fail the wrapper. Add failing early `prepare --scope proof-smoke`/`verify` wiring and immutable-manifest tests in `specs/032-transition-verification-study/benchmarks/test_early_campaign.py`, including separate first-use/reuse timings and rejection of silently cached parameters in first-use mode, before T048.
- [X] T039 [P] [US3] Write exact Core-bridge tests in `experiments/transition-study032/tests/core_bridge.rs` for unlinked intermediate events, changed canonical bytes, MuHash/endpoint mismatches, missing support and unchanged content with different command history; comparing only an unconnected final StateId must fail.

### Proof producer, verifier and early executable gate

- [X] T040 [US3] Pin Nova 0.76.0 at `01b1e2d662a847ed7029770ecbaf6687398899dd` in `experiments/transition-study032/Cargo.toml` and its isolated `Cargo.lock`, default features disabled; select Pallas/Vesta, Pedersen/IPA and Spartan `RelaxedR1CSSNARK`, verify compilation with Rust 1.98.1, and inventory crypto/transitive dependency trust without copying the KZG example backend.
- [X] T041 [US3] Implement fixed-shape bounded operational state, typed identity coverage, historical used-ID bits and canonical padding in `experiments/transition-study032/src/circuit/state.rs`; separate live capacity C, actual N, lifetime capacity, logical attempts, commits and proof microsteps, and constrain selectors/ranges independently of witness values.
- [X] T042 [US3] Implement exact B/reference step constraints in `experiments/transition-study032/src/circuit/step.rs`, covering the declared supported create/update/remove/query/context/error/command cases, complete input/output state, selected error and transaction finalization; constrain every acceptance-relevant value rather than accepting producer success bits or only checking positivity/cardinality.
- [X] T043 [US3] Implement domain-separated length-delimited commitments in `experiments/transition-study032/src/circuit/commitment.rs`; enforce "Digest representation must preserve all bits" using two range-constrained 128-bit limbs or 256 Boolean wires, and bind computed request/context/observations/canonical command occurrences plus parent/child coordinates with fixed endian/padding rules.
- [X] T044 [US3] Machine-check bounded step/history composition and range/encoding lemmas in `experiments/transition-study032/proofs/CircuitContract.lean` and `experiments/transition-study032/proofs/History.lean`; map Rust constraints to the exact checker/model definitions in `specs/032-transition-verification-study/evidence/circuit-correspondence.md`, explicitly separating any unverified circuit translation/SHA gadget correspondence from proved mathematics and crypto assumptions.
- [X] T045 [US3] Implement parameter preparation, folding, serialization and logical-step accounting in `experiments/transition-study032/src/prover.rs`, using the selected compressor's `ck_floor()` hints and counting the first `prove_step` correctly; implement separately identified `first-use` and `reuse` modes. First-use starts with no generated parameters/keys and times their construction within the 900 s proof budget; reuse times loading/identity validation and all new proof work, without using previous proof acceptance. Retain recipe and actual parameter identities, phase/whole-chain costs and separate proof blob versus semantic claim identity.
- [X] T046 [US3] Implement the fresh-process independent verifier in `experiments/transition-study032/src/consumer.rs`, reconstructing/matching pinned circuit parameters and exact expected subject/z0/step count, checking the returned final state against the expected endpoint/output, and enforcing "Stable semantic claim identity excludes timings, environment paths and randomized proof bytes". Consumer first-use reconstructs parameters/keys from the pinned recipe within its 300 s total budget, including proof verification and Core bridge; a separately labeled reuse run times loading/validation and still performs every mandatory check. Never execute code supplied by evidence.
- [X] T047 [US3] Implement the per-event semantic-to-existing-Core bridge in `experiments/transition-study032/src/core_bridge.rs`, reconstructing/binding all committed records, canonical outputs, Core anchors/endpoints/commands and MuHash computations; combined acceptance requires Verified plus Matched plus exact expected subject/anchor/endpoint, with full bridge work measured and no inferred succinct whole-Core-history claim.
- [X] T048 [US3] Implement minimal early preparation/freezing in `specs/032-transition-verification-study/benchmarks/early_campaign.py` and wire `prepare --scope proof-smoke --parameter-mode first-use|reuse`, `proof-smoke` and fresh-consumer `verify` in `specs/032-transition-verification-study/benchmarks/study.py` using T006/T010/T012 and T045–T047, without depending on US4. Freeze a separate early manifest per mode covering actual sources/binaries, small cases/oracles and parameter recipes; reuse preparation takes `--parameters-from` and binds exact first-use parameter outputs/provenance without mutating the first-use manifest before running `specs/032-transition-verification-study/benchmarks/proof_smoke.py`; retain `specs/032-transition-verification-study/evidence/proof-smoke/` with a real H≥2 proof and matched Core bridge, three producer/consumer repetitions per first-use/reuse primary mode, actual commit plus command-only commit/duplicates in the successful suite and separate refusal/remove-reuse/invalid-witness controls. All-timeout attempts cannot satisfy this gate.

### Segment lifecycle and operational boundaries

- [X] T049 [US3] Write checkpoint/partial-publication/suffix-authority/lost-ack controls in `experiments/transition-study032/tests/proof_lifecycle.rs` and create the independent public-consumer tests in `consumer/tests/research032_recovery.rs` before T050. Demonstrate failure for wrong restart shape/anchor, corrupt or partial checkpoints, interrupted publication, a native head beyond the proved head, duplicate recovery commits/commands, incomplete lifetime state and missing support; use only the consumer's existing public `behavior-engine` dependency.
- [X] T050 [US3] Implement proof continuation/recovery and bounded synchronous-versus-asynchronous orchestration in `experiments/transition-study032/src/proof_lifecycle.rs` and the test-only public-API recovery helpers in `consumer/tests/support/research032_recovery.rs` needed by T049; expose native/proved/bridged heads, event/time lag and pending work, reject invalid restarts and make the independent consumer controls pass without duplicate commits or replay dispatch. Preserve the consumer's existing dependency boundary and exclude unchecked module switches/migrations rather than inheriting a segment guarantee.
- [X] T051 [US3] Record setup/folding/finalization and compression applicability in `specs/032-transition-verification-study/evidence/proof-lifecycle.md`; if compression is evaluated, measure its full preparation/prove/verify/key/size costs in `experiments/transition-study032/src/prover.rs`, otherwise state NotImplemented and make no compressed-succinctness claim; do not introduce a second mandatory proof backend.
- [X] T052 [US3] Record successful and failed early proof cases, proof/circuit/source/parameter identities, complete claim bindings and remaining trusted correspondence in `specs/032-transition-verification-study/evidence/us3.json`; distinguish actual feasibility evidence from established theorem scope, data availability, physical execution and deployment authorization.

**Checkpoint**: The mandatory small accumulated proof and fresh consumer work before US4 collection. A proof for the study profile alone does not satisfy claimed existing-Core binding without T047's matched bridge.

## Phase 6: US4 — Make a reproducible architecture decision (P2)

**Goal**: Freeze and execute independent scaling/full-lifecycle measurements, then issue justified candidate and consumer dispositions.

**Independent test**: Reproduce primary native points and the small proof from public frozen inputs; independently scale N/H; reconstruct after view loss; validate complete attempt coverage including failures; trace every final conclusion to mathematical, tested, measured or explicit trusted evidence.

### Tests first

- [X] T053 [P] [US4] Write collector/manifest/completeness tests in `specs/032-transition-verification-study/benchmarks/test_campaign.py` for missing/duplicate repetitions, dropped failures, changed binaries/cases/protocol, wrong reference selection and amended limits without a new campaign; completion must not accept an all-exhausted small-proof suite or omit either native strategy.
- [X] T054 [P] [US4] Write full-cost/reconstruction/assessment tests in `specs/032-transition-verification-study/benchmarks/test_metrics.py` and `specs/032-transition-verification-study/benchmarks/test_assess.py`, ensuring producer/consumer and bridge costs are counted, phase medians are not summed into a cycle, unmeasured work is unknown and a favorable folding time with a linear bridge cannot become end-to-end succinctness.

### Frozen cases, collection and analysis

**Retained amendment:** `campaign-001` remains an incomplete historical run. Its per-witness B checker repeatedly rebuilt the prefix; `campaign-002` freezes the independently checked whole-history refinement, with the same complete claim. See `evidence/campaign-001/amendment.json` and `evidence/batch-checker-correspondence.md`. Old samples are not pooled into the replacement campaign.

- [X] T055 [US4] Define exact primary points/deduplication and support classifications in `specs/032-transition-verification-study/benchmarks/cases.json`: independent N=128/512/2048/8192 and H=8/32/128, D=1/2/8, R=1/4/16, filter terms=1/2/4 and padding=16/256/4096, plus local/high-fanout, lifetime, refs/context/commands/recovery controls; declare proof capacities C=1/4/16, H=1/2/8 and all actual ID/command bounds before collection.
- [X] T056 [US4] Extend T048's working preparation/verification wiring with `prepare --scope comparative`, `run`, `recover` and `assess` in `specs/032-transition-verification-study/benchmarks/study.py` and `specs/032-transition-verification-study/benchmarks/campaign.py`, reusing its freezer/append-only indexing and Core 031 collectors without rewriting archives; pin input/source overlays, executables, locks and comparison profiles and never silently retry under changed conditions. The final comparative manifest is new and must not overwrite or reinterpret early manifests; freeze reuse-group input manifests against actual generated parameter identities before each group starts timing.
- [X] T057 [US4] Add scoped timing/resource/byte and allocation/copy/parse/hash instrumentation in `experiments/transition-study032/src/metrics.rs` and `specs/032-transition-verification-study/benchmarks/metrics.py`; include initialization, publication, parameters, folding/checking, bridge/export, paging and cold recovery; enforce "Missing metrics are null with reasons, never fabricated zeros" and keep diagnostics separate from production-like runs.
- [X] T058 [US4] Build and freeze the exact final source overlays, binaries, subject/case/oracle/contract hashes, tool/circuit/parameter-recipe identities, effective hardware/limits, first-use/reuse profiles and usefulness criteria into `specs/032-transition-verification-study/evidence/campaign-002/manifest.json`; review equality of compared claims and both output profiles before final performance evaluation. Freeze generated parameter artifacts only for explicit reuse inputs; first-use derives fresh parameters inside timing and records their resulting identities. Amendments create a new retained campaign; preserve T048's earlier independent manifest/results.
- [X] T059 [US4] Execute three independent reference/A/B repetitions per declared applicable native primary point using T058, retaining complete samples/errors/timeouts in `specs/032-transition-verification-study/evidence/campaign-002/native/`; measure eight real repeated creations for N growth and hold N fixed for H growth, with exact-byte or checked-interpretation equality and independent boundary oracles.
- [X] T060 [US4] Execute the declared accumulated-proof capacity matrix and three fresh producer/consumer repetitions per first-use/reuse primary mode at the successful small point, retaining all attempts in `specs/032-transition-verification-study/evidence/campaign-002/proofs/`; include fresh parameter/key derivation in first-use and timed loading/validation in reuse, separate attempts/commits/microsteps, setup/folding/compression/bridge work and capacity failures, and require three successful scales before making a scaling claim.
- [X] T061 [US4] Execute cold view/proof recovery, complete export, command paging, concurrent commit/lost-ack and bounded async-arrival experiments through the public-consumer test `consumer/tests/research032_recovery.rs` created in T049 and made green in T050, plus the study harness; retain costs and native/proved/bridged-prefix lag in `specs/032-transition-verification-study/evidence/campaign-002/recovery/` and demonstrate missing-support behavior independently of proof validity.
- [X] T062 [US4] Package exact public inputs/support/proofs/logs with content-checked bounded lossless containers using `specs/032-transition-verification-study/benchmarks/package_evidence.py`, and reproduce the small native/proof/bridge/reconstruction checks from a fresh consumer context; index successful reproduction and unavailable artifacts in `specs/032-transition-verification-study/evidence/portable/index.json` without copying private application data.
- [X] T063 [US4] Analyze raw paired samples, resource/evidence costs, initialization/rebuild amortization and independent N/H/affected-work slopes in `specs/032-transition-verification-study/evidence/cost-model.md`; distinguish measured counters from estimates, necessary output from avoidable work, and folding verification from complete Core verification; retain uncertainty and all limitations rather than inventing a speedup target.
- [X] T064 [US4] Write `specs/032-transition-verification-study/investigation.md` with a separate disposition for A, B and accumulated verification across local execution, independent checking/replay and succinct history; justify scope, mathematical support, measured trade-offs, trust changes, adoption requirements and defer/no-go outcomes without preselecting a hybrid or treating a missing experiment as a valid no-go.
- [X] T065 [US4] Implement and run the final evidence assessor in `specs/032-transition-verification-study/benchmarks/assess.py`, validating FR-001–018/SC-001–006, all primary repetitions/failures, A/B exactness, machine-checked proof scope and the successful small proof+bridge, and write `specs/032-transition-verification-study/evidence/assessment.json` with incomplete work explicitly blocking completion.

**Checkpoint**: The dossier is reproducible and complete even if a candidate receives no-go. Missing mandatory experiments, broken correspondence, unexplained mismatches or no successful small proof remain incomplete work.

## Phase 7: Final validation and cross-cutting documentation

- [X] T066 [P] Update `specs/032-transition-verification-study/quickstart.md` from planned interfaces to actual verified commands and retained execution links; independently rerun its bounded validation and record any environment/resource limits without claiming the full campaign ran when only smoke checks did.
- [X] T067 [P] Finalize theorem/circuit/implementation/crypto/identity-bridge assumptions and evidence classes in `specs/032-transition-verification-study/evidence/correspondence.md` and `specs/032-transition-verification-study/research.md`; preserve mathematical guarantees, conditional scope and external availability/authorization boundaries and distinguish new findings from historical Core 031 evidence.
- [X] T068 Run Rust fmt/clippy/tests for `experiments/transition-study032/Cargo.toml`, collector tests and the Lean theorem/transitive-axiom/fresh `leanchecker --fresh` checks through the T012 `proofs` command in `specs/032-transition-verification-study/benchmarks/proofs.py` and retain logs in `specs/032-transition-verification-study/evidence/checks/`, rejecting `sorryAx`, custom axioms and native-evaluation proof axioms with only `propext`, `Classical.choice`, `Quot.sound` allowed.
- [X] T069 Run unchanged `scripts/gates.sh` for changed Core code, the repository determinism/replay checks and the T001 protected-input comparison; retain outputs and a final no-production-semantics/fixture/archive/unrelated-work modification audit in `specs/032-transition-verification-study/evidence/compatibility-final.json`, without weakening gates or cleaning unrelated user work.
- [X] T070 Re-run the evidence assessor, verify every completed checkbox against actual retained results, and create `specs/032-transition-verification-study/evidence/completion.json` linking all four story reports, final gates and dispositions; list nonblocking follow-ups separately and leave incomplete obligations unchecked; do not commit, push, tag, release or adopt an experimental format as part of these tasks.

## Dependencies and execution order

```text
Setup T001–T004
  → Foundation T005–T012
  → US1 T013–T022
  → US2 tests T023–T025
       ├─ B T026–T027 ──────────────→ US3 T037–T048 (early proof gate)
       └─ A T028–T030 ─┐               → T049–T052
          encoding T031–T032 ─┤
          recovery T033 ─────┤
                   → US2 integration T034–T036
  → US4 T053–T065 (requires complete US2 + US3; no final collection before proof gate)
  → Final T066–T070
```

- Setup T003 and T004 can run after T002 without editing its files; T001's initial inventory precedes any source modifications it protects.
- Foundation: T005→T006; T007→T008; T009→T010. All must finish before US1. Shared infrastructure tests are allowed to fail only as retained red controls, not as passing gates.
- US1: T013/T014 precede relevant implementations; T015→T016/T017/T018/T020, T016–T018 support T019's exact mapping, and T022 follows all US1 work. No other story is required to validate US1.
- US2: T023→T028/T029, T024→T026→T027, T025 precedes actual candidate equivalence. T030 depends on the formal reference and A definition. T031→T032. T033 requires J and support. T034–T036 require both candidates/interpretation; no large benchmark collection occurs here.
- US3 can start after US1, T026–T027 and its own tests, while A develops independently. T040→T041→T042→T043; T044 reviews the resulting relation. T038's early CLI/freezer controls and T045/T046/T047 precede T048, which implements its own minimal preparation, manifest freeze and verification wiring without US4 prerequisites. Full compact bridge work also consumes T031–T032 if using that representation. T049 creates both lifecycle and independent consumer controls; T050 implements the helpers and makes them green before T061 executes measurements. T051/T052 close the story. Early smoke uses the minimal same-claim encoding and must not wait for the final campaign.
- US4 tests/case definition may be prepared after US1 without collecting results. T056 extends the already working early freezer/CLI rather than providing a prerequisite to T048. T058 creates a separate final manifest after sources and correctness/proof gates are ready; T059–T061 run sequentially on the measured CPU, not concurrently. T062–T065 require retained data. Final T070 depends on all required tasks.
- Foundation T011→T012 establishes proof-integrity enforcement before any story theorem is accepted; rerun it for T019/T027/T030/T032/T044 and again in T068. A fresh kernel/tool failure or unacceptable axiom cannot be deferred to the final audit.

## Parallel execution examples

These are optional scheduling opportunities, not instructions to launch agents or overlap timed workloads.

| Story | Ready independent tasks | Prerequisites / restrictions |
|---|---|---|
| US1 | T013 contract controls alongside T014 module-scope controls | Foundation complete; separate test files. T019 formal model can later proceed alongside observation adapter T020 once shared types/fixtures are fixed. |
| US2 | T023, T024, T025 test authoring; later A T028–T030 alongside B-derived US3 work | US1 complete; check shared correspondence-file edits sequentially. T031 encoding can proceed alongside A after its contract is stable. |
| US3 | T037 circuit controls, T038 consumer controls, T039 bridge controls | US1 and minimal B available. After circuit interfaces stabilize, producer T045, consumer T046 and bridge T047 use separate files; coordinate shared types first. |
| US4 | T053 collector tests alongside T054 metrics/assessor tests | Contracts stable. T055 cases can be prepared separately; final freezing waits for correctness. Native/proof/recovery timing always uses the measurement CPU sequentially. |

## Implementation strategy and checkpoints

1. **MVP**: Setup, foundation and US1 establish an exact public reference, independent expected outcomes and explicit trust/retention boundaries. Validate without claiming candidate performance or certification.
2. **Early feasibility**: Build minimal B and its scoped theorem, then execute the small Nova proof/fresh consumer/Core bridge before broad measurements. If it fails, retain the result and resolve the bounded feasibility problem; an all-timeout suite is not completion.
3. **Two mechanisms**: Finish A/B mathematical support, actual-Core correspondence controls, reconstruction and exact fallback. Do not broaden the admitted language or weaken unsupported cases to obtain favorable comparisons.
4. **Frozen comparison**: Freeze actual sources, cases, resource conditions and usefulness criteria, then collect the one-axis campaigns and complete lifecycle costs. A protocol change creates a new campaign, preserving failures.
5. **Decision**: Complete separate candidate/consumer dispositions, proof/availability/authority boundaries and unchanged production compatibility gates. No-go or a narrowly scoped next investigation is legitimate; automatic production adoption is not.

## Requirement-to-task coverage

| Requirements | Tasks |
|---|---|
| FR-001–002; SC-001 | T013–T022, T039/T047, T061/T062 |
| FR-003–004; SC-003 | T019/T021, T027–T033, T044, T067/T068 |
| FR-005–006; SC-002 | T014–T018, T023–T036, T059 |
| FR-007–009 | T017/T020/T021, T024–T027, T031–T036, T047 |
| FR-010–011; SC-004 | T037–T048, T052/T060 |
| FR-012–013 | T041/T045–T052, T057/T060/T061 |
| FR-014–016; SC-005 | T001–T010, T053–T063 |
| FR-017; SC-006 | T064/T065/T070 |
| FR-018 | T001–T003, T008, T040, T062, T066–T070 |

**Completion rule**: Tests are empirical evidence; Lean proofs cover the declared mathematical model; extraction/renderer/circuit/crypto boundaries remain explicit. No passing sample, accumulated hash, resource failure, old verifier acceptance or missing artifact can silently become proof, authorization or complete reconstruction.
