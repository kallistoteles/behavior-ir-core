# Proof Obligations: Complete Resulting-State Validity

This is a scoped design argument, not a mechanized proof or finding-closure claim.
The authoritative meaning is existing complete validity. Corrected computation
and archived reproduction have different explicit evidence profiles.

## P1 — Candidate coverage

For the complete typed parent map S and legal simultaneous delta Δ, candidate
membership and values must equal `apply(S, Δ)` for every key. Deleted rows are
absent, creations are fresh under historical ever_used, and updates preserve
identity/type. References and queries observe that same simultaneous child.

Evidence required: independent complete reconstruction; simultaneous lifecycle,
reference and empty-type cases; direct membership/arithmetic oracles. The oracle
must not use the optimizer's affected set or read its certificate.

## P2 — Complete resulting-state validity

Let E(S′) enumerate all child entity obligations and G(S′) all applicable remaining
state obligations. Ordinary ALLOW requires successful postconditions, every
member of E(S′) true, and every required G(S′) discharged. A reached error is not
truth. Obligations may be skipped only with established unchanged true results.

Therefore, under the existing exact input/history/typing assumptions:

`Valid(S) ∧ fresh ALLOW(S, I, C, Facts) ⇒ Valid(apply(S, Δ))`.

A later read rejecting the child, or a pair of validators agreeing on an omission,
does not establish this implication. Invalid parents remain a distinct refusal;
017 introduces no repair semantics.

## P3 — Canonical first failure

After successful postconditions, E(S′) is ordered by semantic entity and declaration
keys with invariants before constraints per entity. For its false/error outcomes,
select the least failing key. Backend enumeration, effect layout, cached facts
and affected partitions do not enter the comparator. No global outcome-category
priority displaces that least key. Other established stages keep their placement.

Any optimized implementation must preserve that result and all required semantic
evidence. Skipping true computations can be sound for validity but insufficient
for record equivalence if trace/derived evidence changes; first delivery performs
the reference schedule rather than assuming missing evidence reconstructible.

## P4 — Commit validity and cache lifecycle

A new live commit rederives current evaluation at the exact parent and verifies
all current integrity, freshness, authorization, consistency and CAS obligations.
Only its atomic success can establish reusable child materialization. Exact state
hash equality cannot substitute history/profile bindings. Historical replay or
exact recovery never independently establishes current full validity.

Underlying backend atomicity/durability is an existing documented trust assumption,
not a theorem about every host implementation. Fault tests distinguish refusal,
failed CAS/non-application and already-durable writes with lost acknowledgment.

## P5 — Replay and identity separation

A validated evidence profile determines original computation. Old immutable
records use their original rules and bytes; new 0.8 uses corrected rules and a
complete archived parent. Same-profile canonical inputs reproduce the same
result/evidence. Required historical schema/position is checked by Store-backed
replay. Replay makes no writes or external command calls.

Module/item/schema/live-state identity rules remain unchanged. Evidence-derived
identities change only when newly produced evidence changes. A content hash
proves identity, not authority; candidate-specific authorization must be renewed.

## P6 — Verifier correspondence

Current verifier encoding may assume current runtime's complete valid parent and
child guarantees only at the proper boundary. Symbolic failure prefixes and
witness confirmation must match canonical ordering and record 0.8. If the supported
symbolic domain cannot represent a complete-world obligation/error path, the
corresponding claim is INCONCLUSIVE rather than falsely PROVEN. Version current
encoding/cache provenance; archived envelopes do not become current proof.

This closes neither every verifier obligation nor an alleged false PROVEN case
not established by016. Record exact supported propositions and limitations.

## Evidence classification and targeted re-audit

| Obligation | Construction/invariant to inspect | Empirical evidence | Remaining external assumption |
| --- | --- | --- | --- |
| O-MODEL-005 complete ordinary child | P1/P2 shared evaluator coverage | Independent audit predicate and finite model properties | Coherent complete canonical inputs |
| O-INCREMENTAL-008 reference equivalence | P3/P4 exact profile/cache binding | Full/cache/order and lifecycle fault comparisons | Atomic backend contract |
| O-VERIFY-008 runtime promise alignment | P6 prefixes/versioned witness confirmation | Targeted symbolic false/error cases and conservative results | Solver/result contract within supported model |

Implementation evidence must distinguish proven by construction, code invariant,
empirical coverage, documented assumptions and still-unestablished claims. Capture
source/test digests, exact commands, collected/executed counts and actual RED/GREEN
assertions. Preserve016 unchanged and publish a separate targeted disposition;
no test result alone warrants a global SOUND verdict.
