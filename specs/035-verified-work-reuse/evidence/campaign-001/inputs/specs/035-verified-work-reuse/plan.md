# Implementation Plan: Reuse Verified Core Work with Exact Semantics

**Branch**: `research/034-ab-measurement-002` (actual Git branch) | **Feature**: `035-verified-work-reuse` | **Date**: 2026-11-15 | **Spec**: [spec.md](spec.md)

**Input**: The approved investigation direction, 035 specification at `00e901f5a0215c003044785c6368a99ecb852242`, and the measured/source-bound 034-002 evidence. Spec Kit's resolved BRANCH token is `035-verified-work-reuse`; `.specify/feature.json` selects the feature independently of the actual Git branch.

## Summary

Determine whether an exact established Core ground and incrementally maintained execution/property views can eliminate repeated whole-state/prefix semantic work for one real transition. Compare R (ordinary reference), G (retained ground), V (incremental views with authority re-established) and GV (both), using the unchanged LD8 finish action and original complete outputs/identities. Establish exact execution and validity preservation separately.

Reuse existing 015 validity carry-forward and 029 prepared-evaluation mechanisms. An isolated research Core export connects checked prepared evaluation to the existing fresh invocation envelope and stages exact view updates. Retained ground alone does not remove version materialization, full Safety checks or record hashing. Full required observation/identity work remains on the complete operation path and is separately measured.

This phase delivers a buildable experiment design, not implemented code, passing proofs or a production architecture. A negative or bounded incomplete result is a legitimate investigation outcome; no missing positive criterion becomes passed.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, for native workers and isolated Core adapters; Python 3.13 for preparation, supervision and independent accounting; Lean 4.30.0 for the restricted mathematical model, type/axiom audit and fresh kernel checks. Pin the actual Nix/tool derivations from the existing Core/Safety environment; do not silently follow a newer toolchain. Keep Nix launcher invocation names, not an incorrectly resolved multicall name.

**Primary Dependencies**: Core `63a8c164523275e06ac1d7dc5330db4a899c9d99`; Safety `8c0849fb82343ddf5a4dd99b5070ee985f8ebff0`; exact serde/serde_json/sha2/thiserror and transitive versions already locked by 034. Commit the new standalone locks. Use a local research-only patch of the exported engine workspace so all worker/Safety paths resolve one Core identity. The independent oracle uses the unpatched Git dependency. No production dependency or new proof backend.

**Storage**: `Store<Capture>` over the same memory backend in every treatment, process-private opaque grounds and reconstructible view structures. No imported checked flags or durable authority. Create-once evidence under this feature; ignored source/build/cache/tmp roots owned only by 035. Retain exact executed binaries before any disposable build cleanup. No full repository checkout or historical-archive copy.

**Testing**: Test-first source/record/identity/recorder contracts, exact native upstream differential checks, unchanged LD8/Safety checks, first-error/command/history comparisons, negative/mutation controls, lifecycle and actual CAS/fault tests, general fragment proofs with expected-type/transitive-axiom/fresh-kernel checks, deterministic re-execution, separate timing/work modes and independent closed-archive/accounting validation. Run scoped format/Clippy/tests and the actual canonical `scripts/gates.sh` on the exported candidate workspace; failed/unrun gates block integration and remain explicit in research assessment.

**Target Platform**: Recorded x86_64 Linux/Nix environment, single active heavy process group on one recorded CPU, at most 8 GiB address space per process. Installed/offline dependency and OS-cache conditions are recorded. No external service or paid hardware. Set `CARGO_BUILD_JOBS=1`, `CARGO_INCREMENTAL=0`, `CARGO_PROFILE_DEV_DEBUG=0`, `CARGO_PROFILE_TEST_DEBUG=0`, offline/locked resolution and `RUSTFLAGS=-C target-cpu=x86-64`; use Lean one-thread/4 GiB sublimits within the outer recorder. Record installed source/cache preparation rather than claiming a cold installation.

**Project Type**: Isolated comparative research CLI with a small research-only Core adapter and mathematical model; no production Core API redesign.

**Performance Goals**: Prove/observe semantic work that follows the changed row and actual dependencies instead of unrelated N/H; measure retained-ground, view and interaction effects separately. Strong local feasibility discriminator at N=256,H=8: local semantic median ≤50 ms and at least 4× faster than R; retain a separate complete-operation result, including required canonical hashes/evidence and maintenance. Thresholds and negative outcomes are fixed in [campaign contract](contracts/campaign.md). These are diagnostic research criteria, not product SLAs, p95 or Q6.

**Constraints**: 7200-second final campaign with one immutable monotonic start/boot; 1800-second preparation/scenario, 900-second process; 600-second closing reserve; 8 GiB/process; one CPU; 2 GiB newly retained artifacts, 2 GiB cache, 4 GiB combined growth including temporary data; 16 GiB launch floor and 2 GiB emergency floor. All children obey remaining outer limits. No automatic retry, ceiling increase, changed frozen source or substituted sample.

**Scale/Scope**: Unchanged original LD8 module/policy set; optimized finish only, arbitrary finite typed states in its proof domain, ordinary fallback for all other constructs. Five cells, N=2/64/256 and H=8/32/128 varied separately; four treatments, three timing samples plus one separate counter sample per cell/treatment. Exact correctness controls include LD8C, other actions and unsupported/error cases. Full language/native formal correspondence and durable publication stay open.

Technical decisions and source locators are in [research.md](research.md). No planning clarification remains.

## Constitution Check

Pre-research gate: PASS as a bounded research design using normative Core semantics, explicit authority, deterministic execution, complete observations and test-first implementation. Post-design gate: PASS with the same constraints; no new constitutional exception is requested. These are planning checks, not passed implementation/proof gates.

| Principle | Before research | After design |
| --- | --- | --- |
| I. Deterministic authority | Core owns decisions; no AI in runtime. | Typed workers invoke existing evaluator/envelope/commit code; Python only orchestrates and checks accounting. |
| II. Validated inputs | Supplied packets and metadata are untrusted. | Strict typed bounded records, independently expected subject, private ground constructors; unknown input never creates authority. |
| III. Test first | Reviewed intended red before new acceptance/optimization behavior. | Task generation must place parser, lifecycle, selector, observer, mutation and work-control tests before implementation; record actual red/green. |
| IV. Reproducibility | Exact sources, tools, canonical inputs and independent expected facts. | Frozen source/output DAG, retained binaries, complete semantic re-execution; diagnostics excluded from identity. |
| V. Explicit state/audit | Ground provenance and loss of authority are explicit. | Applied-only child promotion; uncertain publication quarantines authority; original records retained and hashed only after writers close. |
| VI. Simplicity | Reuse 015/029 and original Core/Safety. | One standalone worker package, four named bins, one small upstream oracle, narrow finish selector; no general IVM engine/storage/proof backend. |
| VII. Exact semantics/soundness | Exact result differs from mere safety preservation. | Separate general fragment theorems; original observer/encoding/identity path; unknown dependencies fall back; native bridge gaps remain named. |
| Engineering and workflow | Research-only source export and pinned locks; no merge/release. | Scoped gates plus actual canonical script attempt; a resource/gate failure blocks integration without rewriting old evidence. |

## Project Structure

### Documentation (this feature)

```text
specs/035-verified-work-reuse/
├── spec.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── contracts/
│   ├── correctness.md
│   ├── treatments.md
│   ├── campaign.md
│   └── cli.md
├── quickstart.md
└── tasks.md                       # subsequent speckit-tasks output; not created here
```

Later implementation produces `inputs/`, `evidence/development/`, `evidence/campaign-001/`, `report.md`, `assessment.json` and a source/correspondence register. They are not existing evidence of 035 success.

### Source Code (planned; not created by this command)

```text
experiments/reuse-study035/
├── Cargo.toml / Cargo.lock         # standalone package; four named bin targets
├── src/
│   ├── bin/{reference,ground,views,combined}.rs
│   ├── protocol.rs                 # strict input/result records
│   ├── fixtures.rs                 # exact original fixture construction/locations
│   ├── acquire.rs                  # actual prefix/program/Safety ground establishment
│   ├── run.rs                     # timed request→complete observation and maintenance
│   ├── ground.rs                  # typed process-private ownership lifecycle
│   ├── views.rs                   # version/property/dependency view relations
│   └── observation.rs             # original observation comparison/reconstruction
├── oracle/Cargo.toml / Cargo.lock  # unpatched public Core/Safety reference
├── patches/                       # reviewed changes to exported Core only
├── study.py / recorder.py
├── check_proofs.py / validate.py
├── profiles/diagnostic.json
├── expected/                      # authored facts and exact control inventory
├── schemas/                       # research records, never Core/Safety wire changes
├── proofs/Reuse035/                # fragment, views, observations, grounds, work, audit
├── tests/                         # Rust/Python conformance and controls
├── toolchain.json / README.md
└── private/                       # ignored Git exports, builds, source cache, temporary data
```

**Structure Decision**: Only the research export may add internal Store/evaluator seams and optional diagnostics. Use the existing prepared snapshot/evaluation, shared envelope builder, ordinary canonical encoding and actual exact-parent commit. The current checkout's production crates and all 034 source/archives remain unchanged. Source export includes required manifests, crates, fixtures, scripts and consumer/gate inputs from declared Git objects, not historical evidence trees. Every adaptation is retained as a patch and bound before final execution. The export must be its own minimal research-owned Git root/index containing the nonempty complete declared source inventory, so canonical scripts using git ls-files cannot silently discover the enclosing repository. Include unchanged scripts and every fixture/workflow/consumer/ARCHITECTURE input they require. Set BEHAVIOR_BIN to the actual candidate CLI in the private target root for determinism checking. Record this local index separately from pinned upstream identity; do not inject its new revision into normative requests or metadata.

## Phase 0 — completed planning research

[research.md](research.md) resolves the reference pairing, supported action, exact native seams, treatment authority, proof scope, identity/materialization floor, worker build identity, measurement scopes and resource envelope. Read-only parallel research was requested by the planning skill; findings were consolidated against primary local sources. No research recommendation is reported as a new experiment result. A second read-only design review corrected observer context rebinding, direct Safety-report provenance, native coordinate representability, history-copy accounting, bootstrap oracle ordering, immutable source layout, timing-mode timestamps and explicit quality-failure policy. Exported gate inventories must be nonempty and independently indexed; no runtime validation was performed during this planning review.

## Phase 1 — completed design artifacts

- [Data model](data-model.md): canonical subject, process-private ground, view/reconstruction relation, pending child, treatment identity, observations and independent assessment.
- [Correctness contract](contracts/correctness.md): concrete mathematical fragment, required theorem targets, exact observer obligations, fallback and native correspondence boundary.
- [Treatment contract](contracts/treatments.md): two factors, controlled authority/data reset, original result contract, activation controls and conformance inventory.
- [Campaign contract](contracts/campaign.md): fixed matrix, timing/work modes, complete endpoints, thresholds, resource and closure rules.
- [CLI contract](contracts/cli.md): create-once source/export, freeze/build/case/collect/validate operations and outcome semantics.
- [Quickstart](quickstart.md): later implementation validation steps, expected positive/negative evidence and actual test/gate commands.

## Requirement-to-design coverage

| Specification obligations | Primary design/gates |
| --- | --- |
| FR-001–FR-003; SC-001–SC-002 | Original fixture/reference, independent fragment definitions/observer inventory, separate validity proof; G0–G3. |
| FR-004–FR-008 | Ground/view data model, exact subject and process authority, staged Applied-only updates, stale/uncertain/restart controls. |
| FR-009–FR-012; SC-003 | Four actual treatments, unpatched oracle, same acquired-prefix premises, mechanism controls C01–C20 and mode conformance. |
| FR-013–FR-014; SC-004 | General work theorem, source/counter accounting, five controlled growth cells and primary/drain checks. |
| FR-015–FR-017; SC-005–SC-006 | Direct complete endpoint and cycle, timing/work separation, canonical identity/direct-check provenance costs, exact original observation comparison. |
| FR-018–FR-019 | Bounded frozen campaign, inherited revisions, source/worker gates and explicit review/reuse of 015/029/034. |
| FR-020–FR-021; SC-007–SC-008 | Independent close/accounting/replay, full FR/SC dispositions, separate negative/conditional verdicts and unchanged prior/production contracts. |

## Later execution gates

1. **G0 — Source and subject.** Export/verify exact sources/tools/dependencies; preserve original fixture bytes/policies and prior evidence. Validate schemas/recorder/source identity tests. Freeze intended proof types and authored reference facts. No scientific cost samples yet.
2. **G1 — Original endpoint and treatment seams.** Compare the research reference strategy against the unpatched upstream oracle. Prove actual ground retention/discard and view activation/invalidation using mechanism-sensitive tests, same backend and exact subjects. Keep only a selector for the declared finish fragment; other operations remain exact fallback. A seam that cannot be separated is an explicit limitation, not a passed factorial experiment.
3. **G2 — Mathematical obligations.** Construct independent reference/incremental fragment semantics, exact ordered observation assembly, validity and locality laws. Check all declared root types, transitive axioms and fresh replay. Review the source-to-model bridge register. Missing correspondence blocks unconditional native proof claims; a mathematical or conformance failure blocks dependent growth runs.
4. **G3 — Complete native conformance.** Exercise all boundary/mutation families, original Safety properties, exact full outputs/identities, failure/uncertain publication and deterministic replay. Verify distinct worker bytes plus actual enabled mechanisms and timing/work semantic equality. Missing correctness cannot be traded for speed.
5. **G4 — Bounded frozen comparison.** The final freeze starts the one 035 clock. Perform actual preparation/build/oracle/proof/conformance/treatment gates under it, then the five growth cases and all required observations. A group checks its exact program before any authority use, separately charges fresh parent acquisition for each sample and includes full original evidence before its complete endpoint. Retain blocked cases/failures truthfully.
6. **G5 — Independent assessment and limits.** Close writers/processes, validate exact bytes/source contexts, recompute samples/tables, re-execute semantic observations and original checks, account for every FR/SC and publish separate ground/view/interaction/output conclusions. Actual canonical/scoped gates and all failures are reported. Recommendation to integrate requires its numerical guard plus all applicable correctness/gate obligations; no production adoption is authorized here.

Development gates G0–G3 are implemented/tested before source freeze and rerun as final campaign gates. Development receipts are not final cold observations. No source/profile/expected-semantic edits follow that freeze; any separately identified corrective revision inherits the same campaign clock and cannot replace failed samples.

## Complexity Tracking

No constitutional violation or exception is requested. The isolated Core export is needed because public wrapping cannot connect private checked prepared evaluation/version facts to fresh invocation. The four workers are the minimum treatment controls required by the specification; one package shares dependency builds. The upstream oracle prevents the patched reference strategy from becoming its own authority. The finite-map proof is deliberately smaller than a full-language/native implementation theorem, with the remaining boundary explicit.
