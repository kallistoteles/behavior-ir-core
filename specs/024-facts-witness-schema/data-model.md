# Data Model: Existing Ordinary Facts and Witnesses

This describes the existing domain for schema remediation. It introduces no runtime type, Wire construct or public API. See [ordinary contract](contracts/ordinary-facts.md) for the proposed structural representation.

## Domains and boundaries

Let K = (entity type, identity), A = (entity type, identity, field), and Jc = the existing canonical-value carrier. A well-formed normalized ordinary product F consists of six finite partial mappings:

| Component | Key | Value | Collection semantics |
|-----------|-----|-------|----------------------|
| Existence | K | Bool | Mapping; missing means unknown |
| Ever-used identity | K | Bool | Mapping over history, not current existence |
| Incoming references | K | Finite set of (source entity, identity, field) | Mapping to set |
| Query observations | Instance | Definition, entity, captured inputs, members | Mapping; captures sequence; members set |
| Field observations | A | Jc | Mapping; module establishes exact field type |
| Supplied universe | Entity type | Finite identity→entity-value map | Complete only for each supplied type |

Object names and identity strings are structurally strings; exact declarations, typed identity validity and query identities are checked under the applicable module/profile. No schema-only min-length or hash pattern is introduced on ordinary strings.

## Representation versus checked meaning

The wrapper structural domain is the six-family product shape over Jc. Jc includes null, Boolean, bounded i64/u64 integers, strings and recursive arrays/objects; it excludes non-integral numeric values. Raw lexical number spelling and duplicate object keys require the existing strict raw decoder and are not proven by a schema applied after parsing.

Checked admissible Facts additionally satisfy relevant semantic-key uniqueness, contradictions, exact module types, complete-state/parent facts and history obligations. Signature/subject/manifest/policy checks apply at their enclosing boundaries. Therefore structurally accepted evidence need not be checked-semantic evidence.

For a well-formed normalized product f under supported profile p:

```text
Decode_p(Encode_p(f)) = f
Schema_p(Encode_p(f)) = Accept
```

For raw r, Encode(Decode(r)) may normalize omitted empty arrays and map/set order. Raw byte equality is not required. Existing signed/canonical evidence bytes are preserved; normalization is not permission to rewrite archives.

## Observation distinctions

- Omitted family and an empty family array encode an empty partial map; the serializer omits empty families.
- An item observing false existence/usage remains an observation.
- A reference/query item with an empty set remains a known empty observation.
- No universe item for T means no complete universe for T. A T item with members:[] means T's complete universe is empty.
- Explicit payload value:null is present and can represent an Option value when permitted; missing value is malformed.
- Universe entity members are open products requiring string id. Their additional fields carry Jc values and are interpreted by the exact entity schema, not a fixed generic shape.

## Witness and envelope

Invocation counterexample: closed state/input/context/result/facts? product. Migration refusal: closed entity/value/refusal_code product without invocation Facts. Their existing alternatives are unchanged by 024. A non-counterexample check retains witness:null according to existing report checks.

The envelope binds subject, profile, verifier/solver, manifest/report hashes and signature. A module subject contains behavior_hash; a migration subject contains migration and source/target behavior/schema bindings. Wire version comes from the actual admitted module, not an invented envelope property.

Schema acceptance of a not_verified report is legitimate evidence exchange, not proof eligibility or commit authorization. Historical archive authentication and fresh current-subject validation remain separate.

## Lifecycle

There is no new semantic state transition. Existing flow remains:

```text
actual computation → runtime-confirmed counterexample → signed report/envelope
       → structural/schema validation + existing checked consumption
       → exact subject/profile reproduction where applicable
```

Current fresh producers and retained archives use their existing versioned obligations. No parser, historical evaluation or commitment phase moves in this design.
