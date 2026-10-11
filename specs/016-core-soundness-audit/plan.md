# Implementation Plan: Core Mathematical Soundness and Code Quality Audit

**Branch**: `016-core-soundness-audit` | **Date**: 2026-10-10 | **Spec**: [spec.md](spec.md)

**Input**: The clarified 016 audit specification and the user's explicit request
for parallel multi-agent work.

**Status**: Planning and audit-work design only. No audit finding, verdict,
remediation, completed task or runtime gate result is asserted by this plan.

## Summary

Audit Core Release `v0.12.1` against its existing mathematical contracts. Establish
an inventory of semantic objects and global obligations, examine their enforcing
code and evidence, and deliver the eleven reports required by FR-040. Full
validation remains the reference semantics; optimizations, indexes and storage
techniques remain implementation choices.

Use a coordinator and seven logical specialist streams. First reconcile a common
semantic inventory and invariant draft. Then allow independent streams to inspect
code and collect evidence in parallel under single-file ownership. Require joint
review at cross-component boundaries before integrating findings and issuing one
qualified verdict. With four available agent slots, schedule at most three workers
plus the coordinator in successive waves.

Implementation of this plan means performing the audit and its disclosed
reproduction work. It does not mean fixing findings. Corrections and cleanup are
separate proposals, subject to the spec's explicit change policy.

## Technical Context

**Language/Version**: Existing Rust 1.98.1, edition 2024, pinned by
`rust-toolchain.toml`; English audit documents and existing JSON evidence formats.
No language/toolchain change.

**Primary Dependencies**: Existing serde/serde_json, thiserror, sha2,
rust_decimal and exact-number crates, ed25519-dalek, and existing proptest test
support. `Cargo.lock` and `flake.lock` fix the graph. Nix supplies Rust tooling,
Python 3.13/jsonschema, Z3, Zig/cargo-zigbuild, gh and rg. Capture actual executable
versions during execution. No new dependency is proposed.

**Storage**: Immutable Git source/contract identities and feature-local audit
reports/evidence. Existing Backend/history/CAS contracts are audit subjects, not
new persistence implementations. Supplemental test overlays use separate checkouts.

**Testing**: Existing unit/integration/property/conformance, CLI and external
`behavior-engine` consumer tests; independently justified differential/metamorphic
comparators and disclosed negative reproductions; canonical `scripts/gates.sh`.
New deterministic audit machinery, if later justified, follows test-first.

**Target Platform**: Existing pinned Nix shells on x86_64-linux/aarch64-linux and
Core's current supported consumer contract. Run required checks on the actual
recorded execution platform. No new target or cross-platform guarantee.

**Project Type**: Correctness/quality audit of a semantic library and CLI, producing
reviewable documents and evidence. The public Core API is unchanged.

**Performance Goals**: No optimization target or latency acceptance threshold.
Describe algorithmic costs using semantic quantities and distinguish inherent work
from avoidable repetition. Do not rerun timing benchmarks merely to complete an audit.

**Constraints**: Exact frozen baseline; all historical profiles interpreted under
their own contracts; no silent source corrections; no weakened gates or dependency
overrides; no implied formal proof from tests; no cache/index authority; no
publication or ecosystem changes. One writer per artifact and one full-gate runner.

**Scale/Scope**: Five workspace crates, the supported facade/CLI, independent
consumer, schemas/fixtures, historical semantic/record/evidence profiles, and every
FR-002 construct plus cross-component paths. Complete row/file coverage is measured
against the actual baseline inventory, not a hard-coded operator or test count.

## Constitution Check

*Planning gate: assessed before Phase 0 research and re-evaluated after Phase 1
design. This checks the proposed process, not whether the audited code is sound.*

| Principle / rule | Before research | After design | How the plan satisfies it |
| --- | --- | --- | --- |
| I — Deterministic core | Pass | Pass | Agents inspect and propose evidence; no AI is introduced into Core runtime decisions. |
| II — Validated untrusted input | Pass | Pass | Admission/trust checks are audit targets; agent prose is not runtime authority. Claims require source/evidence validation. |
| III — Test-first | Pass | Pass | Existing-code reproductions preserve baseline behavior. Any new deterministic harness/helper requires a meaningful observed failing test before implementation; historical compliance is not invented. |
| IV — Reproducibility/replay | Pass | Pass | Baseline, locks, tools, inputs, profiles, commands, outputs and test overlays are identified exactly. Independent comparison and historical replay receive explicit review. |
| V — Explicit state/auditability | Pass | Pass | Construct/obligation/evidence/finding records and single owners expose claim lifecycle and every open gap. No secret material is required in logs. |
| VI — Simplicity | Pass | Pass | Markdown/JSON work products and existing tooling suffice. No new crate, audit framework, runtime abstraction or heavy dependency. |
| Typed errors, unsafe and numeric rules | Pass | Pass | Inventory and classify actual invariants and untrusted reachability; do not fix or waive them in planning. Exact domains and verifier assumptions are reviewed together. |
| Pinned graph and required gates | Pass | Pass | Canonical scripts run unchanged on the frozen checkout; overlays and tool limitations are disclosed. Consumer evidence uses the supported facade. |
| Workflow and ownership | Pass | Pass | This phase stops at research/design artifacts. Tasks and audit execution follow later; existing review-owned checklists and unrelated work are preserved. |

No process deviation is requested. Historical violations or defects discovered in
the audited implementation become evidence/findings; they do not retroactively
invalidate or justify this planning sequence. A future unapproved deviation is a
planning/execution error and must be resolved before proceeding with that change.

## Project Structure

### Documentation (this feature)

```text
specs/016-core-soundness-audit/
├── spec.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── contracts/
│   ├── audit-evidence.md
│   └── parallel-work.md
├── tasks.md                         # Future speckit-tasks output
├── semantic-model.md                # Future MODEL report
├── global-invariants.md             # Future MODEL report
├── runtime-verifier-correspondence.md # Future VERIFY report
├── identity-audit.md                # Future IDENTITY report
├── persistence-replay-audit.md       # Future PERSIST report
├── trust-boundary-audit.md           # Future TRUST report
├── incremental-validation-audit.md   # Future INCREMENTAL report
├── code-quality-audit.md             # Future QUALITY report
├── findings.md                      # Future COORD integration
├── proof-obligations.md              # Future COORD integration
├── audit-summary.md                 # Future COORD final assessment
└── evidence/                        # Future audit work products
    ├── baseline.json
    ├── environment.json
    ├── coverage.json
    ├── assignments.json
    ├── fragments/<LANE>/
    ├── runs/<LANE>/
    └── reviews/<REVIEWER>/
```

Planning creates only `plan.md`, `research.md`, `data-model.md`, `quickstart.md`
and the two handoff documents. It does not create `tasks.md`, the eleven audit
reports, a verdict or evidence pretending the audit has run.

### Source Code (repository root)

```text
crates/
├── behavior-core/src/       # Types, admission, exact eval, facts, reads,
│                           # invocation, migrations, commands and records
├── behavior-verify/src/     # Solver encoding/checks, evidence, governance
├── behavior-store/src/      # Backend contract, state/history, Store/replay,
│                           # command occurrences and incremental validation
├── behavior-engine/src/     # Supported public facade
└── behavior-cli/src/        # Facade consumer / transport surface
consumer/                   # Independent supported-API evidence
schema/                     # Current and historical document schemas
api/engine-surface.txt       # Public facade inventory
scripts/                    # Canonical checks and release discipline
specs/                      # Existing versioned contracts and feature evidence
```

**Structure Decision**: Runtime source is inspected, not redesigned. Reports and
agent handoffs are feature-local. Reproductions live in isolated overlays with
complete diffs; workers do not mutate production files or canonical fixtures in
the shared audit checkout. `contracts/` describes audit-work interfaces between
reviewers/agents, not a new Core wire schema, Backend requirement or public API.

## Phase 0 — Research disposition

[research.md](research.md) consolidates three independent read-only planning
investigations into eight decisions: exact baseline; complete inventory; bounded
parallelism; historical strata; cross-component proof obligations; evidence classes;
existing/test-first tooling; and classified code-quality/root-cause review.

All planning unknowns are resolved. Actual findings, test sufficiency and the audit
verdict remain future work rather than open requirements to be guessed. No external
IVM engine or new verification formalism is required.

## Phase 1 — Audit work-product design

[data-model.md](data-model.md) defines metadata fields, relationships, evidence
status and review lifecycle. [audit-evidence.md](contracts/audit-evidence.md)
defines acceptable claim/run provenance. [parallel-work.md](contracts/parallel-work.md)
defines ownership and handoffs. [quickstart.md](quickstart.md) gives runnable future
validation scenarios and distinguishes preparation, collection, execution and verdict.

These artifacts specify how the audit records and communicates evidence. They do
not define Behavior semantics or certify any existing implementation path.

## Execution design for later task generation

### A — Establish source and shared meaning before specialist fanout

COORD freezes the baseline release/checkout/tree, contract/profile versions, lock
hashes, environment and pristine-source manifest. MODEL prepares mathematical
construct and G1–G12 invariant drafts from existing authority. Other workers may
collect disjoint source/facade/profile inventories and prior leads read-only, but
no specialist closes claims before those drafts are reconciled.

Reconcile every FR-002 construct with semantic enums/operator variants,
public-facade entries, schemas/record forms and execution-path families. Enumerate
actual historical admission/evaluation/replay/verification distinctions. Flag
unclear meaning as S4 rather than using current implementation to decide it.

The inventory barrier freezes IDs, version applicability, ownership and initial
obligations. Later omissions require a recorded amendment and affected-review
reopen; a frozen inventory is not permission to ignore newly discovered constructs.

### B — Inspect independent streams in bounded parallel waves

| Stream | Single-writer report ownership | Primary inspection subjects | Required outside review |
| --- | --- | --- | --- |
| MODEL | `semantic-model.md`, `global-invariants.md` | Types/values, arithmetic, expressions, derived/query/read/effect semantics, lifecycle, invocation and commands; existing contract authority | VERIFY and relevant PERSIST/TRUST/IDENTITY claims |
| VERIFY | `runtime-verifier-correspondence.md` | Admission/runtime guarantees, encoding assumptions, all checks, numeric/alias/short-circuit/query/command/migration/error cases | MODEL; TRUST for current authenticated proof coverage |
| IDENTITY | `identity-audit.md` | All hash domains, canonicalization, metadata, collection order/multiplicity, cycles, state versus history | PERSIST and TRUST; MODEL for equivalence definitions |
| PERSIST | `persistence-replay-audit.md` | Backend contract, ordinary/migration commit, atomicity/failure paths, indexes, every standalone/store-backed replay form and command recovery | IDENTITY, TRUST and INCREMENTAL |
| TRUST | `trust-boundary-audit.md` | Caller/transport/host/backend/adapter boundaries; facts/evidence, policy/context/state binding; integrity/authentication/authorization | VERIFY, PERSIST and MODEL invocation paths |
| INCREMENTAL | `incremental-validation-audit.md` | 014/015 exact parent binding, transitive locality, complete changed rows, references/freshness, candidate/CAS publication, fallback/rebuild | MODEL and PERSIST; IDENTITY for cache keys |
| QUALITY | `code-quality-audit.md` | Source/crate boundaries, types/modes, duplication, panic/unsafe reachability, mutation lifetime, naming/comments and complexity | Every subject owner for associated invariant claims |
| COORD | `findings.md`, `proof-obligations.md`, `audit-summary.md`, shared metadata | Coverage, provenance, gate scheduling, integration, root causes and qualified final assessment | A different worker reviews integration and verdict premises |

Each stream contributes namespaced construct/obligation/evidence/finding drafts to
its own fragment directory. No two workers append to a canonical shared ledger.
The source read sets may overlap; report/evidence write sets may not. Idle workers
may take the next stream after handing over their previous artifacts. Full Cargo
runs are scheduled by COORD; separate worktrees/targets prevent source mixing, and
concurrent heavy suites are avoided.

### C — Collect and challenge evidence without correcting behavior

Record exact collection and execution separately. Map applicable unit/negative,
differential/property/metamorphic/fault coverage to each obligation. Use independent
reference meanings and reconstructed parent/child snapshots rather than an oracle
sharing the optimizer's affected set or eligibility guard. Also examine declared
validity directly: two agreeing implementation paths may share a defect.

Reassess every relevant prior remediation lead and the non-local creation lead.
Map every backend mutation boundary and test CAS/refusal/lost-response cases using
existing injectors and durable consumer evidence where applicable. Trust violations
must distinguish required checks from assumptions outside a valid Backend contract.

Additional reproductions use exact-base test overlays. Record expected failing
counterexamples independently of canonical baseline gates. Do not introduce new
pre-commit validation or rewrite fixtures to obtain green results. New harness or
validator behavior, if necessary, first gets a meaningful failing test; no such
implementation is mandated by this plan.

COORD runs the unchanged full gate on the pristine baseline and retains actual
exit/output, skipped checks and coverage. Assess all-feature and stronger tooling
against specific uncovered risks, not as automatic extra suites. Baseline gate
failure remains a real audit result; discovery does not repair it or declare an
execution pass. Since the script stops at the first failure, COORD then schedules
every remaining feasible stage using its exact unchanged command from the baseline
`scripts/gates.sh`. Record each follow-up independently under the same source and
environment; prerequisite-blocked or unavailable stages remain explicit gaps.
Follow-up success never converts the failed canonical run into a pass.
Finishing an audit report is distinct from being eligible to merge
or release code under the constitution.

### D — Review composition, reconcile findings and qualify the verdict

Jointly review the six handoff families in research D5. Another stream reviews each
confirmed S0–S3 finding and every claim spanning multiple components. Review checks
legal-input assumptions, normative sources, comparator independence and exact
revision/evidence; disagreement becomes an open obligation, never a voted conclusion.

COORD integrates stable IDs without renumbering, retains duplicate aliases and
separates symptom grouping from independent findings. Revise shared inventory/
invariant drafts only through the owning writer with amendment provenance.

Group related causes before proposing remediation. Every correction proposal
identifies the exact violated invariant, specification-versus-implementation choice,
smallest change, historical preservation and versioning/public-contract effect.
Implement no correction or internal cleanup in this audit.

Only after coverage reconciliation and independent review does COORD write the
area matrix and one verdict. Open S0–S3 or blocking unestablished obligations require
`NOT YET SOUND`. A passing gate does not establish `SOUND`; tests do not substitute
for the chain from mathematics to code invariants. Scope/assumptions remain explicit
for every positive conclusion. The audit can finish honestly with blockers.

## Requirement allocation and acceptance

| Spec requirements | Planned work products / review responsibility |
| --- | --- |
| FR-001–004 | Baseline/coverage metadata, shared ownership and complete scope/path reconciliation; COORD + all streams |
| FR-005–008 | Semantic model, complete operator/type/profile inventory and invariant drafts; MODEL with independent review |
| FR-009–010 | Guarantee/assumption table and legal-execution proof challenges; VERIFY + MODEL |
| FR-011–013 | Domain identity/equivalence/ordering inventory and metamorphic evidence; IDENTITY + affected streams |
| FR-014–015 | Full result/error algebra and operational/semantic comparison boundaries; MODEL + VERIFY + PERSIST + INCREMENTAL |
| FR-016–019 | Exact-domain 014/015 reasoning, independent reference comparisons and unsupported-path review; INCREMENTAL + MODEL + PERSIST |
| FR-020–025 | All commit/mutation/replay paths, indexes, historical evidence and tampering; PERSIST + IDENTITY + TRUST |
| FR-026–028 | Boundary/evidence/authentication/authorization table and negative evidence; TRUST + VERIFY + PERSIST |
| FR-029–033 | Classified quality/unsafe/panic/mutation/duplication/complexity inventory; QUALITY with all owners |
| FR-034–036 | Coverage collection, run provenance, gate results and honest test-first/reproduction handling; COORD + each evidence owner |
| FR-037–039 | Reviewed stable findings and five-status proof ledger; COORD integrates every stream |
| FR-040–043 | Eleven mutually consistent reports, eleven-area matrix, prior-lead disposition and qualified verdict; COORD + independent reviewer |
| FR-044–045 | Root-cause/minimal-correction proposals only; no repairs, cleanup, publication or ecosystem changes |

| Success criterion | Required completion evidence | Owner / independent review |
| --- | --- | --- |
| SC-001 | Complete construct/subform inventory, evidenced absences and supported underspecification findings | MODEL / VERIFY plus COORD coverage check |
| SC-002 | G1–G12 and additional invariant authority/applicability/status links | MODEL / affected specialist and COORD |
| SC-003 | All verifier assumptions and identity domains mapped to evidence or open obligations | VERIFY + IDENTITY / MODEL, TRUST and PERSIST |
| SC-004 | Every commit/replay/mutation and 014/015 obligation accounted for | PERSIST + INCREMENTAL / MODEL, TRUST and IDENTITY |
| SC-005 | Complete significant-finding fields, severity/category reasons and prior-lead dispositions | COORD integrates all streams / different reviewer for each significant finding |
| SC-006 | Eleven mutually consistent reports and eleven-area assessment | COORD / different worker reviews integration |
| SC-007 | Collection/execution records for all required stages, follow-ups and explicit unavailable coverage | COORD + run owners / reviewer checks exact provenance and outcomes |
| SC-008 | Baseline/source manifest and overlay diffs demonstrate no silent or unapproved correction | COORD / QUALITY and affected report owners |
| SC-009 | Verdict premises trace to the obligation ledger; blockers force NOT YET SOUND | COORD / different worker reviews final assessment |

Criteria are assessed against the reconciled inventory, ledger and report bundle.
Coverage must account for every scoped row/path/domain; unknowns remain
explicit findings or open obligations rather than omitted rows. A completed artifact
bundle is not evidence that the future audit's success criteria already pass.

## Complexity Tracking

No constitution deviation, new runtime abstraction, dependency or general
incremental engine is proposed. Parallel audit work adds ownership/provenance
coordination, not semantic complexity to Core. Seven logical streams use the
available worker pool and can execute serially if slots are unavailable, retaining
the same review and evidence requirements.
