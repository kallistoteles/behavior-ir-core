# Correctness Obligations: Verified Incremental Validation

This document supplies the conditional argument and implementation obligations
for the [plan](plan.md). It is not a machine-checked proof or a claim that the
historical prototype met the revised design. Current implementation/test evidence is linked below.

## Reference and preconditions

Fix the exact admitted behavior/validation semantics M and a committed canonical
parent S for which full validity has been established. Let S' = apply(S, dS).
The optimized theorem is restricted to updates/creates with no removals, schema
change or migration, no global invariants, and proven row-local closure of all
ordinary entity rules. Synthesized Ref obligations are handled separately below.
All existing transition, historical freshness, integrity, governance, consistency
and atomicity obligations remain independently required. In particular, ordinary
lifecycle conflict checks enforce distinct created identities within the atomic
bag, and ordinary state-parameter alias checks remain in force; historical
freshness alone does not discharge these separate obligations.

Full validation includes row decoding, key/identity matching, constraints and
invariants, reference obligations and active evaluation errors. For this guard,
module obligations are absent. Its result is an ordered failure list, not merely
a Boolean.

## Unchanged ordinary row obligations

For an unchanged key k, its complete canonical value and admitted semantics are
identical in S and S'. Complete transitive locality establishes that its obligation
has no other varying input. Therefore its ordinary result, including reachable
errors and diagnostic behavior, is identical. Parent validity establishes that
result has no active failure, so omitting it contributes no child failure.

The classifier must establish actual row provenance through nested derived argument
binding and profile-sensitive resolution. Pure syntax, an empty discovered dependency
list or previously unexecuted branches are insufficient. Unknown dependency means
affected and selects full reference behavior.

## Unchanged synthesized references

The eligible delta never removes a target identity. Thus live_S(target) implies
live_S'(target). A required Ref target of an unchanged valid row remains present;
an unchanged None optional reference remains None. No ordinary cross-entity rule
gets this special treatment. The proof is for the exact synthesized Ref obligation,
not arbitrary Exists/Referenced/query predicates.

## Changed and created rows

Validate every complete updated/created row with the existing ordinary validator
against coherent final-state facts, including all simultaneously created targets.
No optimized scalar semantics or alternate decoder is involved. Candidate identity
freshness is still established using historical ever_used under the existing
transition/commit contract; absence from S or S' is not sufficient.

Because omitted rows have empty failure lists, concatenating changed-row failures
in canonical entity/id order equals the complete child failure list. Preserve
within-row decode suppression, identity-mismatch behavior, constraints before
invariants, their name ordering, short-circuiting and exact numeric/error semantics.
Consequently, under the stated guard:

    IncrementalValidate(S, dS, M) = FullValidate(apply(S, dS), M)

Equality here covers the complete semantic validation result and required
observations, not backend access traces.

## Fallback and public workflow equivalence

Outside the guard no child theorem is used. Preserve the existing full-validation
sites and ordinary action/commit/refusal phases, and do not carry child validity.
The next ordinary state-validation operation reconstructs and fully checks the child.
Do not insert an additional pre-CAS rejection as a fallback implementation detail.
Any independent normative gap discovered in the legacy workflow needs separate
investigation and justification.

Public equivalence additionally requires that ordinary request validation,
rederivation, governance, observed semantic facts, command bags, canonical records,
hashes and replay stay unchanged. Local validity evidence proves none of these
other obligations by itself.

## Publication and reconstruction

Pending candidate validation changes no published validity authority. Applied must
refer to the exact expected parent and supplied candidate committed atomically.
Only then may cache values/edges be patched and bound to the committed child.
HeadMoved, refusal, error or uncertain acknowledgment publishes no child. Ownership
or binding uncertainty drops the entry. Rebuilding from canonical state/history
must recover equivalent facts and full validity results.

## Operational failures and trust domain

Operations may be eliminated; proof obligations may not. An omitted operation's
mandatory obligation requires equivalent established evidence. Every actually
performed operation retains its existing error route. Hypothetical I/O failures
of unnecessary omitted operations are not part of semantic equivalence.

The theorem assumes the existing valid Backend contract. Mandatory conformance,
integrity and trust checks are not waived; extra reads solely to uncover arbitrary
backend lies outside the operation's required inputs are not demanded.

## Evidence needed before implementation acceptance

An independent full-child oracle must not reuse the optimized scope/classifier or
reference index. Differential/property and fault tests must cover the guarded theorem,
complete diagnostics, exact version bindings, operational failures, cache lifecycle
and complete public semantic projections. Tests provide empirical evidence; written
arguments require review, and no external DBSP/IVM result proves this code.
Historical prototype green gates and reference-carrier tests do not establish that
the revised implementation is complete or that new work followed test-first practice.

## Revised US1 implementation anchors

`store/incremental/dependency.rs` guards the entire module; `candidate.rs` overlays complete changed/created rows; `mod.rs` validates those ordered rows using the ordinary full validator and binds pending evidence to both exact parent and child. Ordinary unmodified rows retain local inputs; synthesized Ref existence is monotone because no row is removed. New/changed refs are checked against the simultaneous child. Freshness remains a separate historical backend obligation. No unsupported module is pre-CAS full-validated by this optimization. The independent canonical oracle in `tests.rs` compares complete diagnostics, including decoding/identity errors and missing Ref targets. These are conditional mathematical arguments plus empirical tests, not a machine-checked proof.

## Implemented lifecycle evidence

Private Store `incremental/mod.rs` checks the exact committed/evaluated parent and successor position before constructing Pending, and exact child record/state/effective schema after Applied. Exclusive Arc patching failure clears the materialization. No-op states retain distinct history identities. backend_mut/reopen discard it; mismatched admitted behavior/profile rebuilds from canonical rows. Actual mandatory errors keep their pre-015 routes, including rederivation BUNDLE_INVALID versus direct historical freshness Backend. See evidence.md and the private/integration lifecycle suites; cache existence never defines semantic validity.
