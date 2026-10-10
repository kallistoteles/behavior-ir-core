# Conditional correctness of snapshot validation reuse

## Definitions and assumptions

Let B be one admitted module and S_p the complete map of live, canonically keyed
entity values at position p in one Store lineage. Define Valid_B(S_p) by the
existing `check_behavior_snapshot`: successful value decoding, key/identity
agreement, every entity constraint/invariant and every global invariant, with no
evaluation errors. The Store's full path additionally checks keys/version/removal
consistency while materializing S_p.

The theorem assumes the existing Backend contract: successful historical reads
describe one complete, consistent snapshot; historical versions/records never
change; and Applied atomically stores exactly the supplied versions, lifecycle,
indexes, record and head. It also assumes admitted evaluation is deterministic
and the existing record/schema binding and commit rederivation are enforced.
This is not authentication of a dishonest backend or a proof of the entire Core.

Each cache entry binds StoreId, position, state identity, exact event identity,
complete SchemaRef and exact canonical admitted wire content. The cache is private
to a Store instance and contains its own materialized facts. A behavior digest
alone is not used to infer equal modules. Canonical wire equality conservatively
implies equality of the admitted semantic content; extra source differences can
only cause a miss. StoreId/event identities retain the existing cryptographic
identity contract; no new assertion of unconditional hash injectivity is made.

Replay obtains SchemaRef from its independently walked historical prefix, and
passes that same binding into rederivation. It must not consult a later schema
generation to establish an earlier event: corrupt later metadata must remain a
divergence at its own position. Ordinary current/historical requests keep their
existing schema-binding path.

## Same-snapshot reuse

An entry is initially established by full successful validation, or successful
genesis validation plus Backend.create under the contract above. By historical
immutability, the complete values and current-state facts at that exact position
remain the same. Equal canonical module content and equal schema give the same
typing and rules. Determinism therefore gives the same successful predicate.

Request input/context, authorization, binding checks and history-only `used_at`
are not certified by the entry and are still checked for each operation. In
particular S_p = S_q does not imply p = q, or equality of identity-lifetime facts.
The cache key distinguishes p and q even when their content hashes agree.

## Locality lemma

The classifier is an explicit allowlist. Leaves are literals, parameters and
fields in the admitted scope. Inductively, allowed arithmetic, comparisons,
Boolean/option operations, membership and explicit numeric conversions apply
deterministic functions to their child results. Equal local inputs therefore give
equal outputs, including evaluation errors and short-circuit behavior.

Each entity rule has only its own entity parameter. Its dependency footprint is
conservatively that entire entity value: D(R_e) = {e}. Entity typing/identity have
the same footprint. DerivedRef, Exists, Referenced, queries/folds, migration-only
and unknown expression forms are outside the induction. Modules containing global
invariants, derived definitions or reference fields are ineligible. The selected
action must also be allowlisted, without lifecycle or command emissions. This is
deliberately stricter than necessary, so no transitive analysis is inferred.

Thus, within the eligible class:

    ΔS ∩ D(R_e) = ∅  ⇒  R_e(S′) = R_e(S).

A classifier miss is only an optimization miss. Unknown dependency means affected.

## Local transition theorem

Assume a cached Valid_B(S), an eligible update-only action and a fully rederived
candidate whose actual persisted new versions are Δ. Backend atomicity gives
S′ = apply(S, Δ); the key universe is unchanged. The local checker also refuses any
new version whose key is absent from the validated parent.

Partition the obligations into changed keys T and unchanged keys U. The existing
validator checks every obligation for T on the exact prospective persisted values
before Backend.commit. There are no global/reference obligations in this class.
For U, values are identical, so the locality lemma carries all obligations from
Valid_B(S). Together these establish Valid_B(S′). Empty/no-op Δ is the same proof
with T empty; history position still advances independently of content identity.

No parent facts are changed before commit. Applied publishes the proven child
identity and patches only the changed values. HeadMoved/error publishes no child
entry. An uncertain outcome such as lost acknowledgment leaves the old immutable
entry; a later request at the actual new position must miss and validate fully.
An unsupported transition similarly cannot match the parent entry at its child
position. Mutable backend access drops the certificate; Store.open starts cold.

Induction on successful cache establishment and eligible Applied transitions gives:

    every published cache entry certifies its exact snapshot's Valid_B(S).

## Equivalence and limits

Under the assumptions, cache hits omit repeated proof work, not any independent
request/commit check. They preserve semantic results and canonical records. They
do not preserve the backend call trace: a warm hit need not encounter a transient
failure of an entity-read method it no longer calls. Required history/schema and
operation reads still propagate their errors. Cache storage is bounded to one
snapshot; Arc sharing remains private, and &mut Store excludes active readers
when patching. If ownership is not unique, drop the entry rather than clone N
values. No validity decision depends on timing or cache population order.

Generative equality checks against the full validator support regression detection
but are not this proof. Cold validation, backend-binding costs, real queries and
formats that archive/validate a complete replay universe remain potentially O(N)
or more according to the rule/query work. This feature does not change those
formats or assert that every operation becomes constant-time.
