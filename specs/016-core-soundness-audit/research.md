# Research: Core Mathematical Soundness and Code Quality Audit

**Feature**: [016 specification](spec.md)
**Date**: 2026-10-10
**Phase**: Planning research only; no completed audit or soundness verdict.

Three research agents inspected the frozen repository independently: semantic
model/runtime–verifier surfaces, persistence/replay/014–015, and execution/tooling.
Their results are consolidated here. They did not change code or run the audit's
required gates. Source references below identify later inspection targets, not
proof that their obligations are satisfied.

## D1 — Preserve an immutable baseline and distinguish executions

**Decision**: Cite release commit `1e286ebcf1d61117320c57df155fa1ef9397e880` as the
audited source. Record audit-branch starting commit
`5949cb111cd6c5af34b0fc9083e78810df450fce` separately; both have tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Run baseline gates in an unchanged
checkout of the release commit. Put new reproductions in isolated test overlays
with exact patch/source identities and never substitute their results for baseline
runs. Historical 014/015 logs remain prior evidence with their original provenance.

**Rationale**: Documentation commits, supplemental tests and instrumented evaluators
must not silently change the revision an audit conclusion covers. A same-tree
merge commit is useful provenance, not a replacement release identity.

**Alternatives considered**: Auditing moving main; running all tests in a mutable
shared checkout; identifying the source only by engine version. Each loses exact
binding between propositions and tested code.

**Sources**: [spec baseline and FR-001](spec.md),
[versioning](../../docs/versioning.md),
[015 evidence](../015-incremental-validation-semantics/evidence.md).

## D2 — Build a complete semantic inventory before specialized conclusions

**Decision**: Start from existing authority, then enumerate actual semantic types,
values, operators, effect forms, argument roles, facts, record/profile versions and
public facade entries. Give each entry an independent mathematical meaning or an
explicit underspecification finding. Reconcile the inventories before parallel
specialist review; permit later additions through a coordinator-owned amendment.

015's 34-family inventory is a seed, not a complete language inventory. Expand
comparison/arithmetic variants, scalar domains, Option/nominal/reference distinctions,
short-circuit/error paths, projections, lifecycle, migrations and invocation forms.

**Rationale**: Separate reviewers must use the same objects and premises. Agreement
between evaluators sharing an implementation is insufficient to establish the
independent validity contract.

**Alternatives considered**: Treating Rust containers as definitions; reusing the
015 inventory without expanding it; letting each specialist invent a private model.
These can omit constructs or produce incompatible assumptions.

**Sources**: [types](../../crates/behavior-core/src/semantic/types.rs),
[values](../../crates/behavior-core/src/semantic/value.rs),
[expressions](../../crates/behavior-core/src/semantic/expr.rs),
[module constructs](../../crates/behavior-core/src/semantic/module.rs),
[facts](../../crates/behavior-core/src/facts.rs),
[015 operator seed](../../crates/behavior-core/src/incremental_proof/operator_inventory.rs),
[public surface](../../api/engine-surface.txt), [PRINCIPLES](../../PRINCIPLES.md).

## D3 — Use seven logical streams with bounded worker concurrency

**Decision**: Use MODEL, VERIFY, IDENTITY, PERSIST, TRUST, INCREMENTAL and QUALITY
streams after the inventory barrier. A coordinator owns shared ledgers, assignments,
source manifests, test-run scheduling and the final summary. With the available
four-agent capacity, run at most three workers plus the coordinator, reassigning
idle workers to later streams. Parallelism is logical and does not require seven
simultaneous agents.

Each report and evidence directory has one writer. Reviewers write separately
owned review notes. Cross-component claims require independent review, not a
majority vote. New tests use isolated overlays, not shared runtime source edits.

**Rationale**: Disjoint writes permit parallel inspection while the coordinator
retains a coherent coverage and evidence chain. One full Cargo gate runner avoids
competing builds and mixed source revisions.

**Alternatives considered**: A wholly serial audit; all workers appending to shared
findings; one final verdict per agent; splitting by crate alone. These either waste
independence or hide cross-crate obligations and writing conflicts.

**Sources**: User's explicit parallel-agent direction; [FR-003, FR-037–045](spec.md);
[architecture](../../ARCHITECTURE.md). The handoff protocol is a local audit-work
convention, not a Core API or language contract.

## D4 — Stratify historical contracts instead of treating version labels alike

**Decision**: Track fresh admission, runtime semantic profile, document/record
replay format, schema position and fresh verifier/evidence eligibility as separate
axes. Examine actual decoder acceptance, not a displayed version list alone.
Preserve historical v1 read interpretation and distinguish it from current v2
records and fresh authenticated proof requirements.

**Rationale**: Historical preservation and current authorization are different
obligations. Archived evidence may have intentionally weaker guarantees; it cannot
silently become a current proof. A historical bug remains an audit lead whose
classification must use its applicable contract.

**Alternatives considered**: Using engine version as the complete semantic key;
assuming every advertised wire version is currently admitted; judging all replay
formats by current record guarantees. These erase explicit compatibility boundaries.

**Sources**: [wire decoder](../../crates/behavior-core/src/wire.rs),
[legacy arithmetic compatibility](../../crates/behavior-core/tests/compat_003.rs),
[read paths](../../crates/behavior-core/src/read.rs),
[versioning](../../docs/versioning.md),
[remediation history](../../docs/soundness-remediation.md).

## D5 — Review cross-component proof obligations jointly

**Decision**: Require explicit handoffs for admission→verifier;
plain evaluator→Store→verifier; query/read→identity/replay;
commands→governance/commit/occurrences; schema→historical replay;
and incremental eligibility→full validation→post-CAS evidence. Each handoff records
both sides' exact assumptions and evidence or an open obligation.

The Backend atomic-CAS/as-of contract starts in `behavior-store/src/lib.rs`.
StateId and history are distinct, including command-only histories. Review complete
candidate validity separately from equality with existing full-path behavior.
Reassess the documented non-local creation lead without adding a new refusal.

**Rationale**: Correct pieces do not establish correct composition. A shared helper
can make differential paths agree while both violate a declared invariant.

**Alternatives considered**: Closing claims based on one report's ownership;
using full/optimized agreement as proof of G3; demanding identical backend traces.
These either omit obligations or confuse semantics with operational execution.

**Sources**: [Backend](../../crates/behavior-store/src/lib.rs),
[Store](../../crates/behavior-store/src/store.rs),
[full evaluation](../../crates/behavior-core/src/eval.rs),
[verifier encoding](../../crates/behavior-verify/src/encode.rs),
[relational encoding](../../crates/behavior-verify/src/encode/relational.rs),
[store replay](../../crates/behavior-store/src/replay.rs),
[014/015 internals](../../crates/behavior-store/src/store/incremental/mod.rs),
[existing non-local characterization](../../crates/behavior-store/tests/incremental_validation.rs).

## D6 — Separate evidence class, collection and outcome

**Decision**: Every claim records its reference meaning, enforcing code, premises,
applicable versions and one qualified proof status from the spec. Evidence records
collection, execution, ignored/skipped cases, exact tool/source identities, command,
exit status and verbatim output hashes. A failed property reproducer can establish
a counterexample; a passing characterization test can establish that the observed
behavior exists. Neither repairs the violated obligation.

Tests supplement mathematical reasoning. A report may document unavailable
coverage and conclude `NOT YET SOUND`; it cannot count missing checks as passing.
Shared or circular comparator assumptions are named explicitly.

**Rationale**: Audit completion and kernel soundness are different decisions.
Separating evidence prevents test success, historical logs or speculative statements
from becoming proof authority.

**Alternatives considered**: A single pass/fail flag; treating all failures as a
broken audit; treating all passing tests as a global proof; adding expected-failure
reproductions to the canonical baseline gate. These collapse distinct propositions.

**Sources**: [FR-034–042](spec.md),
[constitution](../../.specify/memory/constitution.md),
[existing fault injector](../../crates/behavior-store/src/conformance.rs),
[durable consumer test backend](../../consumer/tests/support/durable_backend.rs).

## D7 — Use existing tools and require test-first for any new machinery

**Decision**: Keep Rust 1.98.1/edition 2024 and the pinned Nix/Cargo dependency graph.
Use the eleven-stage canonical `nix develop -c scripts/gates.sh`. Its format/lint,
workspace tests/build, determinism, boundary, facade, external consumer, workflow,
terminology and script checks remain unchanged. Capture actual execution versions
of Rust, Cargo, Python and Z3 plus lockfile hashes. Explicitly inspect skipped checks;
the determinism script can warn and skip solver checks if Z3 is unavailable.
If the canonical script stops early, preserve its failed outcome and run remaining
feasible stages separately with the unchanged baseline commands; disclose any
prerequisite-blocked checks without claiming a passing full-gate result.

Evaluate all-feature coverage using package metadata before repeating an equivalent
full suite. Miri, sanitizers or fuzzing require a named uncovered risk and compatible
pinned tools; unavailable tooling is recorded. No new dependency, framework or
committed audit utility is currently needed. If later tasks require deterministic
validation/extraction/fault machinery, meaningful failing tests precede that code.

**Rationale**: The repository already supplies its required checks and property
frameworks. Audit tooling must not become an unnecessary subsystem or a way to
bypass the supported dependency/build contract.

**Alternatives considered**: Replacing canonical gates with selected Cargo tests;
adding a generic audit engine; mandating every stronger tool regardless of risk;
concurrent full workspace builds. These weaken evidence or add avoidable complexity.

**Sources**: [toolchain](../../rust-toolchain.toml), [Nix shell](../../flake.nix),
[locks](../../flake.lock), [workspace](../../Cargo.toml),
[gates](../../scripts/gates.sh), [consumer check](../../scripts/check-consumer.sh),
[determinism check](../../scripts/determinism-check.sh).

## D8 — Treat code searches as inventories and root causes as proposals

**Decision**: Inventory first-party production and test/helper source separately,
including inline `cfg(test)` modules. Review every applicable unwrap/expect/panic/
unreachable and unsafe site for its actual invariant and untrusted reachability;
check additional implicit panic routes when a concrete risk warrants it. Each
stream contributes mutation, duplication and complexity notes; QUALITY consolidates
that report without defining new semantics.

After independently reviewed findings are integrated, group shared causes and
propose minimal corrections with versioning and historical consequences. Implement
no fixes or cleanup during this audit. Unresolved disagreement remains an open
obligation; final verdicts follow FR-042, not agent consensus or gate success.

**Rationale**: Search counts, type preference and source duplication are not defect
proofs. Independent review must neither inflate style issues nor silently patch
semantics to make a finding disappear.

**Alternatives considered**: Fixing each suspicious line immediately; treating
forbid-unsafe declarations as an audit of dependency internals; renumbering merged
findings; voting away conflicting interpretations. Each destroys evidence or scope.

**Sources**: [FR-029–033, FR-037–045](spec.md),
[crate entrypoints](../../crates/behavior-core/src/lib.rs),
[Store characterization helper](../../crates/behavior-store/src/store/local_validation.rs),
[private proof tests](../../crates/behavior-core/src/incremental_proof/mod.rs).

## Phase 0 disposition

All planning decisions are resolved by existing requirements, pinned repository
contracts and the explicit multi-agent direction. No additional semantic decision,
new dependency or constitution deviation is needed. Remaining uncertainty concerns
what the future audit will discover, not how its scope or evidence is defined.
These decisions do not classify prior leads, certify Core soundness or complete any
audit report. Phase 1 designs audit work products and coordination only.
