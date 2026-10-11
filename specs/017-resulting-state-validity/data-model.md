# Data Model: Complete Resulting-State Validity

This design uses existing semantic state. New private scheduling/profile types
and versioned decision evidence do not add Behavior language constructs.

## Semantic and implementation objects

| Object | Mathematical meaning | Representation / authority |
| --- | --- | --- |
| Exact parent S | Finite typed mapping `(entity type, identity) → entity value` under one exact schema/behavior and history position | Canonical state/history; complete facts include empty type universes |
| History facts | History-sensitive predicates such as ever_used | Recorded observations / canonical historical provider; not derivable from live-state absence |
| Delta Δ | Existing simultaneous updates, creations and removals | Ordinary admitted action effects/lifecycle, not an execution-order list |
| Candidate S′ | `apply(S, Δ)` | Private complete overlay; never authoritative before commit |
| Entity obligation | Typed predicate on one child entity with permitted explicit state dependencies | Existing admitted invariant/constraint, including synthesized Ref requirement |
| Global obligation | Existing predicate over state/query inputs | Existing admitted global invariant; checked unless stability is established |
| Obligation result | True, false or reached evaluation error | Existing evaluator result and semantic evidence, not a cached validity bit |
| Schedule | Canonical finite sequence of existing obligations | Corrected profile's first-failure order, independent of backend/delta layout |
| Validation materialization | Reconstructible evidence tied to exact committed input/profile | Store-private cache; never semantic authority |
| Decision record 0.8 | Immutable canonical evidence of fresh current action computation | New evidence version/profile; includes parent universe for evaluated decisions |

## Exact input binding

Bind store/history position, state/data identity, effective schema, admitted
Behavior identity/content and validation computation profile. Equal live values
or StateId at another position do not substitute ever_used, authorization or
history-bound evidence. Standalone evaluation uses an explicit data version and
complete host-supplied facts; it cannot claim Store-backed trust merely by echoing
an identifier.

The existing captured facts adapter supplies current-state values/membership and
references from the exact snapshot, while `used()` remains history-backed. Never
use query/cache order as the semantic entity order.

## Candidate construction

1. Obtain coherent canonical parent values for every declared type.
2. Derive all proposed lifecycle/value effects under the existing action rules.
3. Apply updates, remove deleted identities and add all creations as one child.
4. Evaluate postconditions against the existing SPrime view.
5. Traverse every surviving/created child entity under the corrected schedule.
6. Discharge remaining global/reference/lifecycle obligations in their applicable
   stages before any ordinary success.

A removed entity has no child obligations. A surviving row can reference another
row created by the same delta. Freshness consults historical ever_used separately;
no current membership test can replace it.

## Semantic ordering key

Entity key: admitted nominal type name UTF-8 bytes, then decoded Id string UTF-8
bytes. Do not compare quoted/escaped JSON representations of identities.
Within each entity: invariant category, then constraint category.

Within a category, use an internal semantic sum:

- Declared: existing module-binding `(kind, name, item hash)`.
- Synthesized reference: semantic entity declaration identity, reference field
  name and existing constraint hash.

Declared precedes synthesized; compare constituent semantic strings/hashes
lexicographically. Within one entity/category the kind/entity components are
fixed. Duplicate declared names are admission errors; distinct bindings with
identical bodies remain distinct. Reference field names affect semantic entity
identity. Formatted diagnostics such as `ref(E.field)`, locations, comments and
source declaration layout are excluded. These are scheduling keys, not new hash
inputs or a new public obligation-ID domain.

## Internal execution purpose

| Purpose | Evidence used | May create new history? |
| --- | --- | --- |
| Fresh current | Corrected complete-state profile | Only after all existing checks and atomic commit |
| Archived replay | Validated immutable record-selected original profile | Never |
| Exact committed-event recovery | Exact matching durable history event | No new write; returns existing result |

Module Legacy/CommandIntents still selects language meaning and command forms.
Execution purpose is distinct and private. It must not be set by an invocation
argument, guessed from release/git metadata, or inferred from a caller's desired
outcome. A public fresh request at a past position is still current evaluation,
not archived replay; historical schema/position remains exact.

## Typed witness and observation evidence

Every new child-validity trace step has subject `{entity,id}` and an obligation
kind plus source descriptor. A declared source identifies its semantic binding
name/hash; a synthesized source identifies entity declaration, reference field
and constraint hash. Use these typed products, not an ambiguous concatenated
label or body hash alone. The first failed step identifies the result witness.

Observation routing distinguishes action-bound parameter reads, unbound typed
entity/field reads, parent snapshot facts and derived SPrime values. A field read
cannot disappear because the entity has no action parameter. Existing complete
parent evidence and exact history/CAS checks remain the commitment binding;
identity-aware observations complement them, not another authoritative state.

## Evidence lifecycle

`exact validated parent → candidate evaluation → pending child evidence → atomic
CAS success → exact committed child may be reused`.

Refusal, stale head, non-application or failed checks cannot promote candidate
materialization or commands. After lost acknowledgment of a durable write, exact
history recovery establishes the existing event; no speculative promotion occurs.
Historical ALLOW reproduction creates no current validation certificate.

## Errors and boundaries

False invariant/constraint, reached arithmetic/fact evaluation error, snapshot
input refusal, binding refusal, direct backend failure, CAS conflict and internal
invariant failure retain separate provenance and their applicable existing API
routes. Snapshot capture's current input-refusal route is documented in research;
it must not be mislabeled as UNKNOWN_FACT automatically. First-failure semantics
apply to reached child obligations, not to a global sorting of error categories.

## Cost model

Let n be live rows, b canonical snapshot bytes, r references, d rule dependency
work and c emitted commands. Capture/reconstruction is proportional to state and
required values; child traversal covers every row and its rule/reference
expression work. New
complete evidence can require O(b + d + c) output even when backend reads are
served from a cache. Global query evaluation has its existing additional cost.
With k entity obligation instances and W expression/fact work, constructing and
sorting a schedule can cost O(n log n + k log k + W); traversal of already ordered
inputs avoids those sorting factors. Do not assume arbitrary expressions cost
constant time. A full snapshot record inherently costs O(b); cache presence does
not eliminate
that semantic evidence cost. No constant-time guarantee is inferred.
