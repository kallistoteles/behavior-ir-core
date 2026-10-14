# Data model: Query Evidence Domain Consistency

This describes existing mathematical domains and their authoritative representations. It introduces no serialized field, public type, profile, identifier or lifecycle transition.

## 1. Semantic state and query observations

`S` is an immutable semantic snapshot at one specified history position. Historical identity use is interpreted against that history, not inferred from current entity membership. `B` is the exact admitted Behavior. A query `Q` has an admitted definition, entity/type binding, captured values and instance identity. Its exact evaluation produces `R` under existing query semantics.

An ordinary query observation is `fQ = (instance, definition, entity, captures, members)`. `members` contains typed-entity member identities, not necessarily all entity values. Additional observed fields are separate Facts. Query instance identity already binds definition/captures under `behavior.query_instance.v1`; this feature does not change that construction.

Precondition queries retain their incoming-state semantics. Resulting-state queries retain existing effects/capture/baseline rules. No snapshot or phase is added by this model.

## 2. Ordinary Facts domain F

Each factor is a finite partial observation map. The product is restricted by the current checked representation and semantic consistency rules, rather than every arbitrary mutation of a public `Facts` struct.

| Family | Semantic key | Observed value / checked item |
| --- | --- | --- |
| `existence` | `(entity, id)` | Boolean `exists`; item keys `entity,id,exists` |
| `identities` | `(entity, id)` | Boolean `used`, meaning ever-used; keys `entity,id,used` |
| `references` | Target `(entity,id)` | Canonical unique incoming edges; keys `entity,id,incoming`; each edge `entity,id,field` |
| `queries` | Query instance identity | `definition,entity,captures,members`; item also carries `instance`; captures `read,value`, members `id` |
| `fields` | `(entity,id,field)` | Supplied canonical value, including allowed explicit null; keys `entity,id,field,value` |
| `universe` | Entity type | Complete supplied map from member identity to entity value for that type; keys `entity,members`; each member requires `id` and retains allowed entity payload |

Every root family is optional. Missing observation keys mean unknown, not false or an empty result. The empty product is valid structurally. Cross-item/module/state/history consistency remains an additional checked obligation.

The ordinary root and closed items reject unsupported fields. Query items exclude `result_hash`. Universe member payloads are open where the existing ordinary contract requires entity fields; this does not make the surrounding products open.

### Equality and canonical normalization

Let `f ≡F g` mean equality of their six typed observation maps, retaining canonical member/reference invariants and the existing ordinary capture sequence. Ordinary capture arrays retain their supplied order; this model imposes no new sorted/unique capture-read restriction on the ordinary parser. Bundle Evidence's stricter capture rule remains confined to that domain. For admissible canonical values:

`DecodeF(EncodeF(f)) ≡F f`.

Raw input formatting and redundant empty family spelling are not part of semantic equality:

| Inputs | Relationship |
| --- | --- |
| Family omitted versus that family supplied as `[]` | Same empty observation map |
| Query instance omitted versus instance present with `members: []` | Unknown query versus observed empty query; different |
| Universe type omitted versus type present with `members: []` | Unknown universe versus complete supplied empty universe; different |
| Field observation omitted versus observation with `value: null` | Unknown versus explicit allowed null; different |
| Identity `used: false` versus `exists: false` | Different observation families; neither substitutes for the other |

`Id<T>` stores a typed identity and implies neither existence nor a reverse-reference edge. `Ref<T>` is the existing explicit referential-integrity contract. The issue's `Mark.doc/by: Id<...>` therefore stores the expected IDs without creating `Ref` edges. Existing reference-family tests continue to cover actual reference observations.

**Owning sources:** [Facts codec](../../crates/behavior-core/src/facts.rs), [006 identity/reference contract](../006-entity-lifecycle/spec.md), [024 ordinary contract](../024-facts-witness-schema/contracts/ordinary-facts.md).

## 3. Candidate Bundle Evidence domain E(p)

`p` identifies an actually supported combination of semantic profile and recorded evidence format; support is an explicit relation, not every combination of version axes. E(p) is distinct from F.

The existing strict v2 action evidence is a closed product of optional `existence`, `identities`, `references`, `queries`, `fields` arrays. Their ordinary products are retained, except each present query additionally requires `result_hash`. `universe` is forbidden here. Collection keys are strictly increasing and unique under the current tuple ordering; raw duplicates are rejected before lossy JSON reduction. Explicit null family arrays are invalid at this strict boundary. The existing bundle-to-candidate adapter maps absent/null whole observations to `{}` where its format defines that behavior.

The authoritative typed query evidence is `eQ = (fQ, hQ)`. Presence of a query with empty members still requires `hQ`; absence of all queries does not require a fabricated query/hash.

The private `BundleEvidence`/`ValidatedBundleEvidence` types own the validated value. They are implementation machinery already introduced by 023, not new public abstractions. The candidate additionally retains its original claim JSON. Its recorded integrity metadata and format-preserved presence are not lost merely because ordinary projection omits bundle-only fields.

### Existing result-hash binding

For canonical member array `M`, retain:

`hQ = "sha256:" + lowerhex(SHA256(UTF8("behavior.query_result.v1") || 0x00 || UTF8(CanonicalJSON(M))))`.

`M` contains canonical member objects with their `id`; it is not a bare ID array. The hash excludes query instance/definition/captures/full values because those are bound through the enclosing query, candidate and historical checks. This description names the existing algorithm/domain/payload, not a new construction.

### Projection and full typed closure

Where the profile defines it, `πF(e)` removes only already-validated query integrity metadata and recovers all ordinary observations; its universe factor remains empty for this evidence domain. At the v2 boundary, local structural/canonical/integrity checks precede projection. The original candidate claim remains unchanged.

For supported admissible evidence:

`DecodeE,p(EncodeE,p(e)) ≡E,p e` and `Observations(πF(e)) = Observations(e)`.

Equality includes all authoritative typed integrity data. It does not require reformatting preservation or extending ordinary F with a hash. An arbitrary integrity-invalid v1 document is not made locally undecodable by this equation; its phase-local codec contract and deferred integrity checks remain separate.

**Owning sources:** [private evidence boundary](../../crates/behavior-verify/src/governance/trusted/bundle_evidence.rs), [candidate dispatch](../../crates/behavior-verify/src/governance/trusted.rs), [023 bundle contract](../023-strict-bundle-evidence-validation/contracts/bundle-evidence.md).

## 4. Candidates, migrations and containing records

| Object | Existing role and constraint |
| --- | --- |
| Action bundle | Carries decision, evaluated state/history, observed evidence, reads/writes/lifecycle and existing enclosing identities |
| V2 action candidate | Strict checked complete claim, preserving observed evidence and transition identity; local integrity is not authorization |
| Migration candidate | Existing source/target/transformation evidence; `read_facts` is exactly `{}`; no query or empty-array exception is added |
| Ordinary witness | Uses the ordinary F contract inside its own report/envelope; schema acceptance grants no semantic truth or signature authority |
| Read record | Uses its recorded independent read profile and ordinary evidence contract; no bundle hash is added |
| Archived transition | Preserves its recorded profile/format/claim; historical recognition grants no fresh commitment authority |

S01–S09 and PC01–PC20 remain as specified in [023's support matrix](../023-strict-bundle-evidence-validation/contracts/support-matrix.md). In particular, fresh legacy query actions use supported Wire 0.6/0.7; trusted v2 query actions can use Wire 0.6–0.8. Fresh Wire 0.8 commitment to a v1 Store retains its existing upgrade refusal. Legacy preparation's transient v2 empty migration candidate does not turn its committed lineage into v2.

## 5. Independent validity predicates and lifecycle

`ValidEvidencep(e,S,B) = Structuralp(e) ∧ Integrityp(e) ∧ Semanticp(e,S,B)`.

These predicates describe obligations, not a demand that every historical decoder executes all three at once. Integrity proves the supplied member array agrees with its required hash. Semantic validity includes definition/instance/capture correctness and truth at the relevant state/history. `HashValid(e)` does not imply `ObservationValid(e,S)`.

The existing lifecycle is evaluation at one snapshot → ALLOW candidate or recorded refusal → applicable checked document/evidence consumption → exact historical/semantic/governance checks → existing concurrency/publication decision → archived record on success. Evaluation publishes nothing. Refusal retains the established no-publication guarantee. V1 and v2 retain the distinct enforcement phases in [validation-phases.md](contracts/validation-phases.md).

No new query, state transition, timeout, retry, transaction, command-dispatch or Model rule follows from these mathematical domains. A valid candidate still requires every existing independent permission and operational prerequisite to commit.

## Consolidation verification

Implementation review rechecked these products against the unchanged Facts parser, private Bundle Evidence shape/hash/projection and 023/024 contracts. No new sorted/unique rule was imposed on ordinary captures. Existing six-family/normalization and independent projection suites are bound by [US3 evidence](evidence/us3.json); their bounded executed cases support the stated construction argument without proving arbitrary semantic truth.
