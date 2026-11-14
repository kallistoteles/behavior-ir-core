# Planning research: Safety assurance and Core architecture

2026-11-14. Phase 0 decisions for [034](spec.md). This resolves planning choices; it does not execute the investigation or choose a production trust/finality contract. Three read-only research reviews covered Safety integration, assurance arguments and measurement. No builds, proof runs or experiments were performed during planning.

## 1. Preserve the questions rather than select the answer

**Decision:** Compare A, checked program plus validated and enforced deployment segment; B, independent exact history checking and continuation; C, unchanged strong 033. Use all six claim classes and eight situations in the specification. Product choices about host trust, recipients, acceptable onboarding work and finality remain named outputs of the investigation.

**Rationale:** Safety independent rechecking concerns a module/policy preservation argument. It is not automatically the same operation as certifying actual historical execution. Correct history remains a fixed goal; arrangements may establish it under different explicit authorities or fail to establish it. A valid later snapshot cannot validate an earlier prefix.

**Alternatives considered:** Assume synchronous prefix proofs are necessary; adopt asynchronous finality immediately; treat host approval or a hash as independent execution proof. Each would prejudge the investigation or conceal a changed claim.

**Sources:** Safety [proof contract](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/specs/510-safety-models/contracts/proof-contract.md), [evidence/deployment contract](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/specs/510-safety-models/contracts/evidence-and-deployment.md), and Core [033](../033-core-proof-feasibility/spec.md).

## 2. Use the actual released Safety/Core pairing

**Decision:** Build a standalone research harness with public `behavior-models` at ecosystem commit `8c0849fb82343ddf5a4dd99b5070ee985f8ebff0` and public `behavior-engine` at Core commit `63a8c164523275e06ac1d7dc5330db4a899c9d99` (0.16.0). Commit its resolved lockfile. Research Core `5cad2ff5cb1c82abfdd6ad8f8a1d7b72c4425047` is a source/evidence baseline, not an interchangeable certified engine.

**Rationale:** The pinned Safety root `core-release.json` names that exact Core release. Its build reads repository-root metadata; evidence binds its root lock/toolchain and embedded proof sources. Public engine exports cover creation, evaluation, commit, full history positions, snapshot export, transitions and data/behavior replay. There is no need to depend on private Core crates or patch production semantics.

Prefer exact git dependencies using existing immutable local objects/cache. Verify that direct and Safety-transitive dependencies resolve to one identical engine package identity, using Safety's exact repository/revision declaration. An offline export must preserve the complete pinned source tree and workspace metadata, with commit/tree and file bindings checked before use. The readable `/data/repos/behavior-ir-512` working copy has stale Git administration in this environment; obtain pinned ecosystem objects through `/data/repos/behaviour-ir`, not by assuming that working copy's current bytes are authoritative. Preinstalled wheels/bundles remain unverified transport until their declared source/artifact identities and required checks pass.

**Alternatives considered:** Retarget Safety to the newer research checkout; copy only its crate directory; execute an unidentified existing wheel. Each obscures the dependency identity or omits inputs. Source differences observed between release and research code do not automatically establish certificate compatibility.

**Sources:** pinned ecosystem [Core pin](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/core-release.json), [model manifest](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/crates/behavior-models/Cargo.toml), Core [public facade](https://github.com/kallistoteles/behavior-ir-core/blob/63a8c164523275e06ac1d7dc5330db4a899c9d99/crates/behavior-engine/src/lib.rs).

## 3. Use a real lifecycle example, with fresh subject binding

**Decision:** Derive the primary LD8 fixture from the pinned parent/child reference: two entity types, immutable required owner, three policies and eight committed transitions plus refusals. Author it through the public Rust builder and Safety interface; freeze full admitted module/policy/action identities and independently specified expected states, outcomes and history positions. Freshly certify this exact subject. Compare any claimed reference identity with the pinned reference export; a different hash is a distinct fixture, not a compatible old certificate.

**Rationale:** This exercises the source of the safety argument: valid starts, parent prohibition, child reactivation, reference integrity and removal. A count/x-only K is not a substitute for the Safety Models. The original reference ends at history position eight. Runtime expected results are not learned from the candidate under test; mechanically derived identities and reference-record generation have separately identified oracle/tool inputs and share an explicitly trusted Core implementation.

Add a separately identified LD8C variant for a command-only action with two identical command intents. Its changed module and complete policies require their own fresh certificate. Additional bypass and migration cases intentionally break premises and are not positive fixtures.

**Alternatives considered:** Reuse the closed local K study as the Safety implementation; change the reference and keep its certificate; use only a field-ownership fixture. The first two have the wrong subject; field ownership alone does not discriminate the lifecycle-boundary question.

**Sources:** [parent/child reference](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/models/examples/safety_models/ld_parent_child.py), [deployment controls](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/crates/behavior-models/tests/safety_deployment.rs).

## 4. Separate host enforcement from independent history checking

**Decision:** A uses an explicitly trusted single coordinator: fresh checked certificate, exclusive writer boundary, full-history snapshot validation, exact-anchor confirmation, then activation. Record activation/deactivation evidence as experiment assurance data. All controlled writes and migrations pass through that coordinator. Restart discards active authority and requires re-establishment.

B receives bounded typed packets capturing successful public backend create/commit arguments, including versions, records, removals, reference changes and heads. In a new process it reconstructs an independent `InMemoryBackend`, runs data and behavior replay under the exact module/migration inventory, and compares the independently expected full `HistoryRef`. Where segment-safety claims are requested, check their certificates, validity boundaries and complete transition coverage as well. Reconstruction success or a producer-selected head is not authority.

For resident B continuation, compare an incoming full candidate result against public Core evaluation on the consumer's already established Store, commit only that matching result and check the full expected history endpoint. Internal prefix work remains charged. Existing nonzero-start replay can still validate earlier prefixes; no O(tail) implementation claim is assumed. Untrusted serialized verification flags cannot create a verified basis. Trusted retained storage is a distinct premise; loss of the basis requires complete re-establishment.

**Rationale:** The actual public APIs suffice for a bounded real comparison. The pinned host example explicitly does not persist deployment evidence or constrain bypass backend handles. A bypass control must therefore invalidate A's enforcement premise; the experiment must not pretend its coordinator is a hostile-host security boundary. Importing a snapshot creates a new lineage and cannot replace original-history verification.

**Alternatives considered:** Snapshot import as history proof; persisting a `verified=true` flag; assuming replay starts cheaply at any position; identifying host evidence with cryptographic proof against that host. None supplies the claimed authority.

**Sources:** [host reference](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/models/examples/safety_models/deployment.py), released Core [Store](https://github.com/kallistoteles/behavior-ir-core/blob/63a8c164523275e06ac1d7dc5330db4a899c9d99/crates/behavior-store/src/store.rs) and [replay](https://github.com/kallistoteles/behavior-ir-core/blob/63a8c164523275e06ac1d7dc5330db4a899c9d99/crates/behavior-store/src/replay.rs).

## 5. Reuse established mathematics with a small composition development

**Decision:** Use Lean 4.30.0 from the existing pinned environment. Import/adapt the exact reachable Safety proof sources and a small existing Core 032 exact-history development into a new `Assurance034` namespace. Add only the segment/history/publication composition and countermodels needed for this comparison. Actual import closure, proposition types, axioms and fresh kernel replay are mandatory evidence.

**Rationale:** Safety already proves ownership/frame and lifecycle preservation, including an `action_preserves` theorem with explicit guard/projection/Core-condition premises. Core 032 supplies `checker_sound`, exact outcomes, `history_exact` and `no_unchecked_suffix`. These are reusable results under their premises, not full Rust or deployment proofs. No SHA limb machine, new circuit or proof backend is needed to answer the assurance question.

New targets cover segment induction, exact adjacent boundaries, checked whole-prefix/continuation equivalence, refusal not advancing committed history, preserved duplicate-command occurrences and conditional atomic publication. Different segment policies require an explicit implication/compatibility to any single global safety property. Individually safe segments under different predicates do not establish an unnamed common property.

Countermodels must demonstrate invalid implications, including valid-current-state ⇒ safe-past, preservation ⇒ exact requested result, certificate ⇒ actual enforcement, and serialized metadata ⇒ verified anchor. Compiler failure is not such a countermodel. Allow only `propext`, `Classical.choice`, `Quot.sound`; reject proof holes, custom/native-computation axioms and missing premises hidden as conclusions.

**Alternatives considered:** Extend the enormous 033 generated-source/cryptographic pipeline; claim full Core from small finite tests; presume a library theorem verifies a new adapter. These add irrelevant work or overstate authority. Core 033 source/codec/backend correspondence remains incomplete and is not promoted by this study.

**Sources:** pinned Safety [LifecycleSequence.lean](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/crates/behavior-models/proofs/safety/LifecycleSequence.lean), Core [032 Checker](../../experiments/transition-study032/proofs/Checker.lean), [032 History](../../experiments/transition-study032/proofs/History.lean), and [033 outstanding tasks](../033-core-proof-feasibility/tasks.md). These are primary implementations/proofs to inspect for reuse, not borrowed end-to-end guarantees.

## 6. Bound new work and reuse negative evidence honestly

**Decision:** Use the fixed [campaign contract](contracts/campaign.md): one measured worker/CPU, 8 GiB address space per process, 900 s maximum process, 1800 s preparation/scenario and 7200 s entire campaign including preparation. Safety tools/roles retain 180 s / 300 s ceilings within their outer budgets. Preserve a 16 GiB process-start disk floor and cap new retained artifacts at 2 GiB and build/cache growth at 2 GiB. No automatic retries or budget resets.

Use three sequential cold Safety construction/checking pairs and three observations per six-cell growth profile. Cold is fresh request workspaces with installed pinned dependencies; OS cache is uncontrolled. Report descriptive observations, not percentiles. Percentile work is not scheduled by this plan; adding it requires a separately frozen ≥100-sample cell and does not retroactively alter this campaign.

Reuse actual strong-prefix failures for C. The eight lifecycle cells still receive claim and scope assessments, but no missing C certificate becomes a positive cell. Existing identity, x/count, memory-store and SQLite results have their original subjects. They are not same-module benchmarks for LD8. No new cryptographic backend trial is scheduled.

**Rationale:** This asks a different question from repeating a failed proof run. The current approximately 20 GiB free environment cannot responsibly plan the earlier 64 GiB artifact envelope. Complete cost matters more than unqualified local latency. A/B initially use memory storage; their acknowledgements are not durable C finality. Actual durable Safety publication remains an explicit gap rather than requiring a new production storage engine for the research pilot.

**Alternatives considered:** Full percentile campaign immediately, larger proof limits, or carrying prior positive memory/publication results into a new module. These obscure the actual discriminator or change its endpoint.

**Sources:** [Safety 511 evaluation contract](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/specs/511-safety-certification-scale/contracts/evaluation.md), [034 specification](spec.md), [actual latest prefix failure](../../experiments/core-prefix-compact-20261110/results/assessment-001.json).

## 7. Record resources and close archives correctly

**Decision:** Reuse the pidfd waiting design, with a new 034 supervisor rather than edits to old recorders. Distinguish enforced limits, direct-child waited resource usage and sampled process-tree measurements. Record unavailable exact/aggregate peaks as null with reasons. On failure terminate and reap the whole process group and confirm it is empty. Close every child/handle before final artifact hashing, then independently verify hashes in a separate process.

**Rationale:** Earlier `RUSAGE_CHILDREN` numbers omitted an external prover grandchild. A separate SQLite run's DB/WAL bytes changed after a delayed close/checkpoint; its archive was rightly rejected. Neither mistake should be repeated or repaired by rewriting old receipts.

**Alternatives considered:** Treat client RSS as whole-tree memory; sum sampled RSS as an exact/shared-page-adjusted peak; hash open databases. Each misstates the evidence.

**Sources:** [precise waiting recorder](../../experiments/proof-backend-screen-20261107/run_bounded_precise.py), [resource warning](../../experiments/core-prefix-compact-20261110/results/resource-assessment.json), [archive failure](../../experiments/core-completion-20261110/results/storage-003-artifact-integrity-failure.json).

## Planning resolution

All technical planning choices are resolved above. Host trust, acceptable onboarding work, the intended historical claim and finality adoption are deliberate investigation outputs with comparison alternatives, not missing inputs preventing implementation. The plan authorizes only isolated research. It does not claim a completed investigation, validated runtime bridge, performance result or production contract change.
