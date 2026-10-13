# Contract: Ordinary Facts in the Current V2 Wrappers

Implements the representation requirements of FR-002–009/012 without creating new runtime semantics. Current wrapper assets: `schema/governance-v2.schema.json`, `schema/store-v2.schema.json`.

## Root and helper inventory

Keep existing `$defs/facts` and its witness references. Replace its erroneous root names with six optional typed arrays. Root type object; additionalProperties:false; no required family and no minItems.

Proposed new ordinary helpers, mirrored identically in both wrappers:

| Helper | Required properties and types | Closed product |
|--------|-------------------------------|----------------|
| fact_existence | entity:string, id:string, exists:boolean | Yes |
| fact_identity | entity:string, id:string, used:boolean | Yes |
| fact_edge | entity:string, id:string, field:string | Yes |
| fact_reference | entity:string, id:string, incoming:array<fact_edge> | Yes |
| fact_capture | read:string, value:json_data | Yes |
| fact_member | id:string | Yes |
| fact_query | instance:string, definition:string, entity:string, captures:array<fact_capture>, members:array<fact_member> | Yes |
| fact_field | entity:string, id:string, field:string, value:json_data | Yes |
| fact_universe_member | id:string; additional properties:json_data | No; application fields remain open |
| fact_universe | entity:string, members:array<fact_universe_member> | Yes |

Root dispatch: existence→fact_existence, identities→fact_identity, references→fact_reference, queries→fact_query, fields→fact_field, universe→fact_universe.

All listed item properties are required, including value when null. Strings have the existing basic string domain, without new hash/nonempty patterns. Arrays may be empty. `exists`, `used`, `incoming` remain correct item properties but invalid root families.

Reuse unchanged `$defs/json_data` at payload positions. Do not use its generic shape for whole family/item products. Do not substitute scalar/entity_value for field/capture values or dynamic universe properties. Do not widen shared json_data to floating-point values.

## Collection and normalization obligations

Captures retain order. Query members and incoming edges have existing set semantics; families are mappings. No new schema uniqueItems/canonical-order rule is added: duplicates by semantic key and normalization remain checked-Core obligations. Basic shape may accept duplicate or contradictory observations that Core then refuses.

Ordinary query has no result_hash. All existing bundle_* helpers remain identical to the baseline; bundle evidence retains its distinct integrity contract and lacks ordinary supplied universe.

## Enclosing documents

Invocation witness optionally references `$defs/facts`; its state/input/context/result product is unchanged. Migration refusal witness is unchanged and acquires no Facts section. Governance root permits envelopes; Store root does not. Store evidence.verifications[] embeds envelopes, which can also be checked directly through the embedded definition in focused tests.

## Preservation boundary

The allowed schema edit set is the existing facts definition and ten new ordinary helper definitions in each wrapper. All other existing definitions, root unions, identifiers, bundle products and other schema assets are protected. Existing runtime/parser/serializer/hash/facade/backend/dependency code remains unchanged.

If implementation shows a valid current/historical document needs a different semantic or enclosing shape, report the discrepancy and reassess scope instead of silently changing it.
