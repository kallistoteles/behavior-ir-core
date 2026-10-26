# Data model: derived reference verification data

These are private conceptual Rust data structures, not new public wire formats or
runtime entities. Concrete names may follow existing encoder conventions.

## Verification context

Fields: exact admitted module identity, schema identity, semantic profile, verifier
version, solver version and verification profile. Relationships: owns the complete
reference inventory, action-world abstraction and all proof sites. Unknown/mismatched
context cannot reuse a summary, diagnostic cache result or current trusted claim.

The incoming schema is a dependency even if a source type is absent from action
parameters and queries. Adding a Ref field while keeping the removal action unchanged
must invalidate corresponding proof authority.

## Reference class

Fields: source entity declaration identity, field identity/name, target declaration
identity, required/optional presence shape and synthesized reference-constraint identity.
Derive classes from the complete admitted module's `reference_fields` / `references_to`.
One source with multiple Ref fields contributes distinct classes. Ordinary Id fields
are excluded. No manually maintained list or action-origin convention is authoritative.

## Reference-world summary

Per reference class and typed target capture:

- Parent incoming membership/count with its typed source-coordinate descriptor.
- Contributions of distinct actual state-bound source identities.
- Residual unbound count/existence, with nonnegativity and partition correspondence.
- Actual surviving bound child references and created references.
- Actual removed source/target identities and resulting existence conditions.
- Definedness guards and source/effect/prefix provenance for every emitted relationship.

Optional absence contributes no edge. Read-role bindings do not become state replacements.
Counts are mathematical summaries; runtime Count errors and conversions remain ordinary.
Residual summaries and complete observed incoming facts have distinct meanings, with an
explicit correspondence and complete concrete witness reconstruction.

## Reference preservation site

Fields: action identity, removed target identity expression, relevant reference class,
source/result coordinate, semantic site/scope, obligation identity, actual earlier prefix,
required no-error predicates and report/manifest addresses.

A complete-world site covers arbitrary surviving sources of its class, including unbound
rows. It is not falsely bound to a made-up action parameter. Existing concrete child
sites keep their identities and meanings. Additional scope must be represented through
the existing canonical site mechanism and included independently in trusted manifests.

## Auxiliary no-failure result

Fields: exact context and child-entry prefix, discharged premises, complete class/effect
inventory and proof outcome. A successful result establishes the sufficient Ref-validity
lemma under that prefix. It grants no runtime authority or independent action-feasibility claim.

```text
inventory complete → candidate obligations → solver proof under real prefix
    → justified later-prefix simplification → ordinary per-site verification
unsupported / unknown / incomplete → inconclusive; no authority
```

Never serialize this as caller-provided truth. A satisfiable stronger auxiliary goal is
not itself a confirmed runtime counterexample. Reuse cannot leak into earlier proof sites.

## Counterexample witness

Existing request/state/input/context and complete facts, plus all relevant unbound
sources, reference fields and target lifetimes required by a candidate. Finite slots
are search resources only. Confirmation must replay the exact actual obligation,
subject and failure prefix. Missing witnesses, wrong failure sites and incomplete
snapshots do not establish either proof or a counterexample.

## Historical and current evidence

Existing formats, canonical envelopes, policies and cache structures remain the transport.
Fresh version is verifier 0.11.0. Historical 0.10 artifacts retain their original bytes,
authenticated manifests and replay/recovery semantics. Fresh eligibility is exact-current
and exact-subject; archived validity does not confer new authorization.
