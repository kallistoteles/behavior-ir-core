# Research: complete-world Ref-target removal verification

Date: 2026-10-26. Source inspection against the Core 0.15.0 checkout; no prototype,
proof execution, new benchmark or implementation result is claimed. Read-only research
covered encoding, runtime and evidence independently. Decisions below resolve the
technical choices needed for planning; implementation must establish their correspondence.

## R1 — Preserve the actual problem and failure schedule

**Decision:** Treat this as a verification-coverage gap. Retain the refusal until the
earlier complete-child reference obligations have a sound replacement.

**Rationale:** `encode.rs::ActionEncoding::build` deliberately refuses removal of a type
with incoming Ref declarations. The old final `StepKind::Integrity` Boolean cannot
represent an earlier unbound child's synthesized Ref failure. Core `run_transition`
executes postconditions, complete-child rules, globals, then removal integrity.
`run_complete_child_rules` orders subjects by decoded (type,id), invariants before
constraints, and synthesized reference constraints by field. Unsafe removal can produce
`constraint_post` / `CONSTRAINT_VIOLATED` before `DANGLING_REFERENCE` is reachable.

**Alternatives considered:** Removing the refusal exposes incomplete reasoning. Replacing
Ref with Id changes the domain property. Proving only the later integrity check can be
vacuous. None satisfies FR-003/004 or preserves the assurance contract.

**Sources:** `crates/behavior-verify/src/encode.rs` (`ActionEncoding::build`, `path`,
`noerr`); `checks.rs` (`preservation`, `integrity`); `crates/behavior-core/src/eval.rs`
(`run_transition`, `complete_child`, `run_complete_child_rules`, `incoming_prime`).
Neutral baseline provenance is the ecosystem's `docs/research/core-0.15.0-gaps/gap-009.md`
and `evidence/009-*.json`. Port minimal neutral inputs into Core; no ecosystem build dependency.
The baseline harness completing successfully is not proof support: its
`--require-supported` mode is the relevant failing signal.

## R2 — Partition the real finite reference world

**Decision:** Use a per-source-type, per-field residual summary plus exact actual effect
contributions. The partition is a mathematical contract, not a new runtime index.

**Rationale:** Let B_U be the distinct state-bound source rows of type U. For a present
reference field r:U→T and typed target t, let N_r(t) count all source rows referencing t.
Then U_r(t) = N_r(t) − Σ[b∈B_U][r_S(b)=t] counts unchanged unbound sources. It is
nonnegative. For optional references, absent values contribute zero. Read/input entity
parameters are not automatically excluded from this residual: only actual state bindings
belong to the replacement partition. Alias/freshness premises remain the existing ones.

`incoming_prime` removes old edges of removed/state-bound sources, then adds surviving
state-bound resulting fields and created fields. Unbound rows remain unchanged. Parent
validity therefore preserves their references unless a target is removed. Bound/created
present refs must point into the actual complete child. This works for arbitrary finite
worlds, including unrelated entities, multiple fields/types and removed self/cycle edges.

U is mathematical summary arithmetic; do not insert a runtime subtraction or globally
bound the world by an SMT witness size. Actual Count expressions retain checked
representability, ordinary errors and their no-error premises.

**Alternatives considered:** Bound rows alone omit unknown referrers. A single unconstrained
residual Boolean cannot connect filtered incoming counts to a particular field. A
general graph/query engine is unnecessary for this partition.

## R3 — Reuse query correspondence, with a new explicit bridge

**Decision:** Extend the existing unrestricted parent summaries only with justified
reference-membership relationships. Reuse `encode/relational.rs` and
`encode/count_congruence.rs`; do not replace their query semantics.

**Rationale:** `referenced_term` combines a residual referrer fact with explicit known
sources. Connect that private residual interpretation coherently to the complete
per-field inventory: residual incoming existence is OR_r(U_r(t)>0). Distinguish this
from complete incoming-edge facts and concrete witness serialization. Do not reinterpret
an existing observed fact silently. `confirm.rs` currently constructs an unbound referrer
plus known incoming edges, so it needs explicit correspondence tests for the new summary.

Typed required-Ref equality filters already fit the total-parent membership descriptor.
The bridge additionally checks source coordinate, type/declaration, actual target capture,
bindings, module/schema/profile and expression definedness. Similar hashes or field
spellings are insufficient. Keep original query obligations and Count conversion errors.

The descriptor recognizes option tests but currently not `Some` / `StrictUnwrap`.
Account for optional edge presence in the summary itself; do not pretend arbitrary
optional incoming-count syntax already has a totality certificate. A new recognition
law needs its own correspondence argument and controls; otherwise retain fallback.
The three mandatory required-Ref positives do not depend on this optional extension.

**Alternatives considered:** Global equality between superficially similar queries is
unsound. Quantifying arbitrary authored expressions expands scope. Fixed slots remain
counterexample aids only; bounded UNSAT cannot discharge these universal obligations.

## R4 — Prove a sufficient lemma before simplifying failure paths

**Decision:** At entry j to complete-child checking, establish a guard/effect-derived
lemma `Prefix_j ⇒ RefValid(S')`. Only a discharged lemma may justify that omitted
unbound Ref checks cannot fail in a later proof path. Keep the lemma's actual guard.

**Rationale:** Prefix_j includes only established earlier reachability, definedness,
freshness/lifecycle and applicable postcondition success. It excludes all child checks,
later globals and final integrity success. Prove zero residual incoming refs for removed
targets and valid child targets for every surviving changed/created present reference.
This is sufficient to neutralize reference failure contributions without guessing the
canonical position of arbitrary unknown rows. Unchanged local rules still require the
existing valid-parent/frame argument; changed/created row rules remain actual checks.

Register real complete-world reference preservation sites in reports and trusted manifests.
The auxiliary lemma does not substitute for these sites or prove action feasibility.
Every mandatory positive must have an allowed concrete execution and nonempty relevant
proof coverage. Existing unrelated same-type child-order/nonlocal-rule limitations remain.

If the stronger lemma is unavailable or inconclusive, do not assume its conclusion or
issue proof. A satisfiable auxiliary goal is not automatically a counterexample to a
particular runtime check: confirm exact reachability, subject and failure against Core.
Failed confirmation is inconclusive, never evidence for proof.

**Alternatives considered:** Modeling every arbitrary-world first-failure order is more
general than needed for these positives. Assuming later integrity success is circular.
Using the stronger lemma to change an existing check's meaning is also rejected.

## R5 — Mandatory guards remain useful for unbounded unrelated populations

**Decision:** Use three domain-neutral acceptance patterns with required Ref fields.

- Minimal: required `not referenced(old.id)`, then remove old.
- Joint removal: bound holder points to old; its field's total incoming count at old is
  one; every other incoming class is zero; remove holder and old.
- Retarget/removal: the same incoming guards, plus a distinct existing new target;
  assign holder's reference to new, then remove old in the same action.

**Rationale:** A typed query `count(where(select(Holder), row.target == old.id))`
and the known matching holder establish zero residual incoming references while allowing
arbitrarily many unrelated holders. Equivalently, a recognized query can exclude every
distinct bound source explicitly. All declarations must contribute, not only Holder.target.
Actual child fields handle simultaneous creation and retargeting toward a removed target.

**Alternatives considered:** A whole-type cardinality-one guard is a possible diagnostic
control, but is insufficient as the sole mixed acceptance fixture: it avoids exercising
arbitrary unrelated populations. Original one-holder runtime examples lack sufficient
universal guards and are retained as runtime controls rather than mislabeled proof positives.

## R6 — Version proof authority and preserve old evidence

**Decision:** Use verifier 0.11.0. Engine delivery is a minor release under
`docs/versioning.md`; no engine release/tag is selected or published by this plan.

**Rationale:** Coverage/outcomes and the trusted site inventory change. Cache dependencies
must include every otherwise-unmentioned incoming type/field, conservatively exact full
module identity. `checks.rs::action_dependencies` presently focuses on queried/bound
types and is insufficient if an untouched removal action gains another incoming declaration.
Trusted site enumeration in `governance/semantic_proof.rs` must be derived independently
of the diagnostic encoder report; no omitted/duplicate site may acquire fresh authority.

`VerificationManifest::from_json` and `VerificationEnvelopeV2::from_json` in `trusted.rs`
currently allow selected old versions plus current. A bump without explicitly retaining
0.10 would accidentally remove archive support. Capture genuine nonempty signed 0.10
action AND migration histories before the bump; retain archive authentication/replay
and exact-original-event recovery, but reject stale evidence for fresh requests/commits.
Create separate current-0.11 canonicalization expectations and policies; never update old
fixture bytes or adopt new policies into existing Stores automatically.

**Alternatives considered:** Reusing 0.10 keys hides changed proof meaning. Accepting every
historical artifact for fresh authority conflates replay and authorization. A new evidence
transport/process is unnecessary; extend the existing canonical site mechanism.

## R7 — Existing results and trust assessment

**Decision:** Reuse finite-set partition/cardinality laws and existing Core verification
machinery. No additional formal tool is justified before the concrete need is demonstrated.

**Rationale:** Feature 006's residual referrers, 007/025's unrestricted summaries and
effect deltas, 017's complete-child prefix, and 028's typed summary congruence provide
the relevant local reasoning. These are reviewed implementation/semantic arguments,
not a machine-checked theorem about this new bridge or the Rust implementation.

Established formal-library results include zero-cardinality/emptiness and disjoint-union
cardinality in [Mathlib Finset.Card](https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Finset/Card.html)
(`card_eq_zero`, `card_filter_eq_zero_iff`, `card_union_of_disjoint`) and finite union
membership in [Finset.Union](https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Finset/Union.html).
These support the mathematical decomposition; they do not establish Core extraction,
typed query totality, canonical failure order or witness correspondence. No Mathlib
dependency or machine-checked Core proof is claimed. External references inspected
2026-10-26 are background, not pinned verification components.

The TCB remains admitted Core semantics, typed extraction/SMT correspondence, solver,
site/manifest/canonicalization code and backend snapshot contracts used for confirmation.
Finite tests and kernel/library theorems do not remove unverified implementation boundaries.

## R8 — Validation and resources

**Decision:** Use existing normal gates plus the focused positive/negative/mutation,
archive/current and public consumer matrix in [validation](contracts/validation.md).
Retain default solver budgets and report whole-invocation resources separately.

**Rationale:** Real nonempty reference checks, allowed runtime cases and exact failure
confirmation are independent acceptance conditions. Record profile, solver/source, query
count, time/resource limits, outcomes and trust class. Repeated deterministic semantic
reports exclude incidental resource timing from their semantic identity. Unsupported,
timeout and failed confirmation remain truthful; none is a mathematical counterexample.

**Alternatives considered:** Exit code alone cannot distinguish empty success from actual
proof. An enlarged resource limit cannot repair missing semantics. New external production
integration or a separate release process adds no necessary evidence for this feature.
