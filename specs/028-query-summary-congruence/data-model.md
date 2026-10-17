# Data Model: Private Proof Provenance

No public JSON, IR, query, Store, Facts or Bundle Evidence format is added. The following are conceptual internal records; implementation names may differ. Their relationships implement the [proof contract](contracts/query-summary-congruence.md).

## Count congruence context

| Field | Meaning / invariant |
|-------|---------------------|
| mode | Disabled by default; explicitly enabled only by single-context action/rule/read construction. |
| interpretation | Immutable admitted Behavior/schema identity, with full authoritative identities. |
| session | Enclosing semantic/profile/check world; no registry reuse across verification sessions. |
| parent coordinate | The underlying S for existing parent UFs, even when the caller is encoding S'. |

Migration constructors remain disabled before encoding any source expression. A context change while enabled is forbidden. Profile/budget/version identification remains in the existing verification session and proof metadata; this record does not add a public field.

## Membership source and typed template

| Field | Meaning / invariant |
|-------|---------------------|
| base | Typed admitted base/query-set structure; preserve set operators and operand order. |
| filters | Ordered outer Where predicates plus the original positive Any predicate, retained before equality narrowing; literal true may be omitted. |
| candidate | Full entity type and candidate field/definition identities. |
| skeleton | Operator/type/literal structure with primitive non-candidate reads replaced by typed occurrence ports. |
| certificate | Structural proof that membership is total in the parent domain; absent for uncertified partial forms. |

Template equality is a sufficient semantic relation, not arbitrary equivalence solving. Preserve full identity data and candidate binding. Do not use `short()` or serialized source locations as semantic keys. Existing public query hashes and existing summary applications remain untouched.

## Capture port and frame

A port identifies one primitive source read by deterministic occurrence position and full Core type. Its frame stores the encoded Term in the original environment. Preserve repeated reads rather than deduplicating by name. Different frames can satisfy equality even when names differ; same-named reads can differ between S and S'.

Terms retain exact scalar/ID/fixed-point/option semantics. Optional equality compares presence, then payload when present. Captures of derived non-candidate operations remain unsupported where existing encoding already rejects them; creating provenance does not expand that boundary or re-evaluate a predicate.

## Count occurrence

| Field | Meaning / invariant |
|-------|---------------------|
| origin kind | Actual Count or positive Any. Other operators remain on existing paths. |
| context + template | Immutable identities and supported membership certificate. |
| capture frame | Source-port values, independent of legacy `inst_args` arity. |
| parent application | Exact existing UF application returned by `s_count`, before child delta. |
| error guard | NoError over the original finalized obligations, including their guards. |
| occurrence order | Deterministic local registration index for stable emission/deduplication. |

Capture source before `narrow_of`, but finalize registration after original error wrapping. A fold equality and a Where equality can therefore match despite different existing Eq UF argument layouts. Keep `Inst`, membership evaluation, known-member bounds, slots, `eq_counts` and `unique_links` intact.

## Congruence implication

A relation joins two eligible occurrences with the same context/parent/template. Its antecedent is pointwise typed capture equality and both original no-error guards. Its consequent equates parent applications only. No target property, cardinality bound or desired global invariant becomes a premise.

Lifecycle: disabled → explicit opt-in → source description → original occurrence encoding/error completion → eligible registration → deterministic implication emission → existing unrestricted solver check → existing witness confirmation if needed → disposal. Failed recognition skips the new relation; failed mandatory proof remains a blocking acceptance failure.

## Verification claim and frozen artifact

Claims retain the current public subject/profile/obligation/solver model. Fresh claims identify verifier 0.10.0; check keys separate diagnostic 0.9.0 entries. Trusted proof generation bypasses that cache and applies exact current manifest/policy checks.

Frozen original modules, historical reports and signed archive fixtures retain bytes, hashes, signatures and recorded interpretation. Archive decoding is separate from fresh eligibility. The supplied original report is unsigned diagnostic evidence and must not be treated as a signed governance fixture.

For the demonstrated historical replay dependency, an internal purpose distinguishes an exact canonical committed event from a fresh candidate. The historical purpose authenticates original attested coverage, policy/context and authorization after required recorded-profile reproduction; it does not independently derive a new proof or permit a new commit. Read-only recovery returns the original identity and creates no current-validation certificate. Genuine signed 0.9 action/migration histories must be captured before the verifier bump; all later use is read-only.
