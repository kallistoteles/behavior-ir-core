# Deterministic AI System Constitution

## Core Principles

### I. Deterministic Core, Probabilistic Edge

All decisions that change system state or produce a final result MUST be made by
deterministic code: rules, state machines, typed transformations. AI models MAY only
propose, extract, classify, or draft. An AI output is never acted on directly; deterministic
code accepts, rejects, or corrects it.

- AI calls MUST sit behind a trait at a clearly named boundary module; core logic MUST NOT
  depend on a concrete model client.
- Every AI-assisted step MUST have a defined deterministic fallback for when the AI output is
  rejected or unavailable (retry with limits, safe default, or explicit error).

Rationale: the system's behavior must be explainable and guaranteed by code, not by how a
model happens to respond.

### II. Every AI Output Is Validated

AI output MUST be parsed into typed Rust structures before any other code uses it
("parse, don't validate"). Raw model text MUST NOT flow past the boundary module.

- Each AI interaction MUST declare its expected output schema and the rules it is checked
  against (types, ranges, allowed values, cross-field invariants).
- Output that fails parsing or checks MUST be rejected with a typed error; it MUST NOT be
  silently repaired by guessing.

Rationale: treating the model as untrusted input keeps errors local and visible.

### III. Test-First (NON-NEGOTIABLE)

Tests MUST be written, reviewed, and seen to fail before the implementation that makes them
pass. Red → Green → Refactor is enforced for all code.

- Deterministic logic MUST have unit tests; rules and state machines SHOULD also have
  property-based tests (e.g. `proptest`) for their invariants.
- AI-assisted flows MUST be tested with recorded model responses (replay fixtures), including
  malformed, adversarial, and empty responses. Tests MUST NOT call a live model.
- A bug fix MUST start with a test that reproduces the bug.

Rationale: in a system whose value is predictability, tests are the specification.

### IV. Reproducibility and Replay

Given the same inputs, configuration, and recorded AI responses, the system MUST produce
bit-for-bit identical outputs.

- Sources of nondeterminism (clock, randomness, environment, network, AI clients) MUST be
  injected through traits so they can be fixed in tests and replay.
- Iteration order that affects output MUST be deterministic (`BTreeMap`/`BTreeSet`,
  `IndexMap`, or explicit sorting); `HashMap` iteration MUST NOT affect results.
- Model identifiers, prompt templates, and sampling parameters MUST be pinned and versioned.
  Every live AI exchange MUST be recordable (request, response, model version) so any run can
  be replayed offline.

Rationale: a result that cannot be reproduced cannot be debugged, audited, or trusted.

### V. Explicit State and Auditability

System state MUST be modeled explicitly (enums and state machines with defined transitions),
and every decision MUST be traceable to its inputs.

- Illegal states SHOULD be made unrepresentable through types.
- Each decision MUST emit a structured record (e.g. via `tracing`) with its inputs, the rule
  or transition applied, any AI proposal considered, and the outcome.
- Logs MUST NOT contain secrets or credentials.

Rationale: an auditor must be able to answer "why did the system do this?" from the records.

### VI. Simplicity

Start with the simplest design that satisfies the spec. New dependencies, abstractions,
crates, or AI calls MUST be justified in the plan; if deterministic code can do the job, AI
MUST NOT be used for it.

Rationale: every AI call and every layer adds surface for nondeterminism and failure.

### VII. Semantic Authority and Proof Soundness

Core's admitted semantics is the sole authority for the meaning of a Behavior program.
Verification encodings, dependency analyses, execution plans, caches and incremental
validation structures are derived representations. They MUST NOT independently define
semantic truth or replace the obligations imposed by that semantics.

**Sound verification abstraction.** Every supported proof model MUST represent all concrete
behaviors permitted by the applicable Core semantics and explicitly established assumptions.
Let `C` be those concrete behaviors and `A` the symbolic behaviors in a common comparison
domain. Soundness requires `C ⊆ A`; a precision refinement MUST establish `C ⊆ A' ⊆ A`.
Impossible symbolic behaviors may be removed only with a semantic justification. Shared
summaries MUST respect typed domains, Behavior/schema context, captures, state coordinates
and applicable definedness/error rules. Similar syntax or a desired outcome is insufficient.

**Justified assumptions.** Every proof assumption MUST be traceable to an enforced Core
guarantee, a verified premise or an explicitly stated restriction of the verification domain.
Unverified desired properties MUST NOT be introduced as assumptions. In particular, a proof
MUST NOT assume its target obligation or the success of a later check. A local postcondition
proof MUST NOT imply unestablished global induction, initial validity or migration preservation.

**Execution equivalence.** Execution optimizations MUST preserve the complete observable
semantic result of reference execution: `Obs(Execute_opt(x)) = Obs(Execute_ref(x))` for the
same inputs under the applicable Core/backend contracts. This includes relevant decisions,
refusals, evaluation errors, evidence and normative validation phases. Overapproximation is
not an execution contract. Backend call counts, execution traces and hypothetical I/O failures
of omitted calls are outside this semantic comparison; operations actually performed retain
their error contracts. Cached or incremental results require established dependency coverage;
unknown dependency means affected. An unjustified optimization MUST fall back to reference
evaluation rather than silently omit a semantic obligation.

**Proof identity and authority.** A verification claim MUST identify its exact subject,
obligations, assumptions, semantic profile and verifier implementation/model context.
Changes to proof encoding, outcomes or assumptions MUST follow versioning and authenticated
evidence rules, prevent incompatible cached results from being reused as new-model results
and produce appropriately versioned fresh evidence. Historical attestations MUST retain
their bytes, identities and recorded claims; a new model MUST NOT automatically promote their
trust or authority. Fresh authorization still applies the relevant policy, including existing
revocation and expiry rules. An inconclusive result MUST NOT acquire proof or authorization
authority merely because its abstract candidate could not be confirmed.

**Conformance.** Every new verification abstraction MUST have a conservativity argument,
positive proof cases, genuine negative cases and unsupported or inconclusive controls.
Solver uncertainty, exhaustion and failed finite witness searches MUST NOT become proof;
an independent supported unrestricted proof is required to establish the obligation.
Counterexample claims MUST retain confirmation against authoritative Core evaluation.
Concrete differential tests support conformance but do not replace the soundness argument
or certify the whole implementation.

Rationale: failure to prove is acceptable and MUST be reported explicitly; a false proof is
not. This does not waive explicit feature precision or acceptance requirements.

## Technology Constraints

- Language: Rust (stable toolchain, pinned via `rust-toolchain.toml`), latest stable edition.
- `Cargo.lock` MUST be committed; dependency versions change only on purpose.
- `cargo fmt --check` and `cargo clippy --all-targets -- -D warnings` MUST pass.
- `unsafe` code is forbidden unless justified in the plan and reviewed; crates SHOULD declare
  `#![forbid(unsafe_code)]` by default.
- Errors MUST be typed (`thiserror` in libraries); `unwrap`/`expect` MUST NOT appear in
  non-test code except where an invariant is documented at the call site.
- Floating-point math that affects decisions MUST have its determinism considered (fixed
  ordering of reductions, or integer/decimal types where exactness matters).

## Development Workflow and Quality Gates

- Work follows the Spec Kit flow: specify → clarify → plan → tasks → implement. Each plan
  MUST include a Constitution Check against the principles above. Core features are numbered
  from 012; the ecosystem repository (behavior-ir) numbers its features from 500.
- The quality gates below are the script `scripts/gates.sh`. Spec Kit's implement phase, the
  release check and CI run exactly it.
- A change MUST NOT merge unless: all tests pass, fmt and clippy are clean, replay fixtures
  exist for any new or changed AI interaction, and a determinism check (running the test
  suite's replay cases twice and comparing outputs) passes.
- Changes to prompts, model versions, or sampling parameters are behavior changes: they MUST
  update replay fixtures and be called out in the change description.
- Code review MUST confirm compliance with this constitution; deviations MUST be recorded
  in the plan's Complexity Tracking with the reason and the simpler alternative rejected.

## Governance

This constitution overrides other project practices and guidance. When they conflict, this
document wins.

- Amendments are made through `/speckit-constitution`, with the change, its reason, and any
  migration steps for existing code described in the same change.
- Versioning follows semantic versioning: MAJOR for removing or redefining a principle,
  MINOR for adding a principle or section or materially expanding guidance, PATCH for
  wording and clarifications.
- Compliance is checked at planning (Constitution Check) and at code review. Unjustified
  violations block merge.

**Version**: 1.1.0 | **Ratified**: 2026-09-23 | **Last Amended**: 2026-10-16
