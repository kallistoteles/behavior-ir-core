# Internal Data Model: Verified Incremental Validation

This is implementation design under [plan.md](plan.md), not an extension of
canonical State, Wire IR, Backend storage or the supported API.

## Canonical inputs (existing)

- Admitted Module and selected semantic profile: ordinary evaluator meaning,
  entity declarations, constraints, invariants and derived definitions.
- Exact Store/HistoryRef/StateRef: store identity, state content, committed
  position and record identity; equal content alone is insufficient.
- SchemaRef and state/data version: declarations valid at that history position.
- Invocation inputs, context and required semantic/history facts: independently
  validated under the existing contract, including ever_used.

015 creates no alternative source for any of these values.

## Committed validation materialization (private)

| Component | Meaning / invariant |
| --- | --- |
| Parent binding | Exact history/state, schema and admitted semantic content/profile. |
| Validation generation | Current process-local evaluator implementation; no serialized certificate version. |
| Full validity evidence | Full validation succeeded for this exact committed snapshot, or a previously established valid committed snapshot reached it through the proven local theorem. |
| Indexed facts | Live canonical values/keys and ordinary incoming Ref edges sufficient to reconstruct the same facts; no authoritative ever_used cache. |
| Ownership | Store-private disposable entry; rebuild if exact binding or exclusive patching cannot be established. |

Materialization is reconstructible acceleration. Deleting it causes ordinary full
validation from canonical inputs; it does not change semantic validity.

## Conservative eligibility analysis (private)

Input is the admitted module's validation obligation roots and the proposed
transition class. Output is an implementation choice, not a language capability.

Eligible only when the parent binding is exact, there are no removals/schema
changes/migrations/globals, and every ordinary entity constraint/invariant has a
proven row-local complete transitive closure. Synthesized Ref constraints have a
separate no-removal membership proof.

Derived targets resolve exactly as ordinary evaluation does, including profile-
sensitive target hash/name behavior and formal/actual argument substitution.
Ordinary Exists, Referenced, query/fold and other external dependencies are
nonlocal. Unknown dependency means affected. Unused nonlocal derived definitions
are not obligation roots, but an unproven root disqualifies the initial whole-
module optimization. Conservative false negatives are permitted; false local
classifications are not.

## Candidate overlay (private and non-authoritative)

- Parent: borrowed/retained exact committed indexed facts.
- Changes: canonically keyed complete values of every updated and created row.
- Membership: parent live keys plus all created keys; the eligible delta has no removals.
- Reference lookup: final-state membership, including targets created in the same transaction.
- Other facts: ordinary existing providers/contracts; the local validator may not
  fabricate history facts or introduce new query semantics.

Indexed row lookup checks the changes first and then the parent. No full map clone
or universe enumeration is necessary to validate changed/new rows. A fallback or
reference oracle may materialize the full child independently.

## Pending carry-forward (private)

A pending result ties the validated candidate to the exact parent token and
existing candidate/transition identity. It cannot be serialized, returned to a
binding, used by another operation as validity, or substituted for authorization.

After all independent mandatory checks and successful CAS Applied, use the exact
supplied versions/reference changes to patch the materialization and bind it to
the committed child record/head. A pending result contains no authority to predict
which head will commit. Patch failure/ownership uncertainty drops the optimization.

## Cache lifecycle

| Event | Permitted state |
| --- | --- |
| Open/reopen or absent entry | Cold; establish validity through full reference validation. |
| Exact committed parent matches | Reuse its validity only; retain all other mandatory checks. |
| Eligible candidate validated | Private pending result; published cache remains committed parent. |
| Applied with exact pending binding | Child may become reusable committed validity after patching. |
| Unsupported successful transition | No child carry-forward; next state-validation operation uses the full path. |
| DENY/rejection, HeadMoved or backend error | No child publication; at most previously committed evidence remains. |
| Commit applied but acknowledgment lost | No speculative publication; next operation binds actual canonical history and rebuilds if it differs. |
| Mutable backend access, mismatched behavior/profile/schema/history | Invalidate/rebuild; no weak state-hash match. |

## Observation and failure domains

Semantic observation contains existing ALLOW/DENY/evaluation error, changeset,
command intents, resulting validity and required evidence/record identities for
the same canonical inputs. Backend counts/order, cache misses and errors of calls
not performed are outside this projection.

Actual backend failures preserve their current direct-Store or FactError/evaluator
route and ordering. This conceptual distinction adds no public enum or code.
Required snapshot, identity, reference, trust, consistency, concurrency and atomicity
obligations remain mandatory, even when their usual computation is redundant.

## Reference derivative (test/proof only)

For a pure ordinary semantic operator f over complete canonical inputs, a
replacement pair represents diff(before, after). The reference derivative is
D_f(x, dx) = diff(f(x), f(apply(x, dx))). Complete outcomes include value/value,
value/error, error/value and error/error. Composition models use the same ordinary
semantics and preserve lazy evaluation. No runtime graph, signed relation carrier,
materialized aggregate engine or future-admission requirement follows from this model.

## Implemented lifecycle evidence

Private Store `incremental/mod.rs` checks the exact committed/evaluated parent and successor position before constructing Pending, and exact child record/state/effective schema after Applied. Exclusive Arc patching failure clears the materialization. No-op states retain distinct history identities. backend_mut/reopen discard it; mismatched admitted behavior/profile rebuilds from canonical rows. Actual mandatory errors keep their pre-015 routes, including rederivation BUNDLE_INVALID versus direct historical freshness Backend. See evidence.md and the private/integration lifecycle suites; cache existence never defines semantic validity.
