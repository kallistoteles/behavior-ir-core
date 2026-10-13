# Origin, mathematical scope and priority

## Owning repository and source

This is feature **024 in behavior-ir-core**, specified from [Core issue #21](https://github.com/kallistoteles/behavior-ir-core/issues/21):
**Facts/witness v2 schemas define the wrong domain and reject Core-produced counterexamples**.
The issue is open and was read from GitHub during specification.

The original identifier is **F023-EXTERNAL-FACTS-SCHEMA-001**, classified S5 / Medium with associated structural underspecification. The [023 follow-up](../023-strict-bundle-evidence-validation/follow-up-findings.md) deliberately left it open. The issue's investigation supplies a genuine authenticated producer/runtime/schema reproduction beyond that earlier source-level observation. It does not demonstrate an invalid commit, authority bypass or verifier PROVEN/runtime mismatch.

The isolated specification checkout starts from frozen 023 delivery candidate `4f44fb83054d6d100f55e0b1466196b8cc94b151`. Its mandatory gates, exact-Git consumer validation and final delivery receipts were completed before 024. The sealed source remains unchanged. Feature 024 is a draft, not implemented or validated as a correction.

## Confirmed definition disagreement

| Observation family | Existing ordinary canonical root | Erroneous wrapper root | Item-level property, where applicable |
|--------------------|----------------------------------|------------------------|---------------------------------------|
| Existence | `existence` | `exists` | `exists` |
| Historical usage | `identities` | `used` | `used` |
| Incoming references | `references` | `incoming` | `incoming` |
| Query memberships | `queries` | `queries` | Existing query product |
| Field observations | `fields` | `fields` | Existing field product |
| Supplied complete universes | `universe` | `universe` | Existing universe/entity products |

Both wrappers additionally describe the values of all six root families only as general `json_data`. Examples such as `{"queries":42}`, `{"fields":[{}]}` and `{"universe":true}` therefore pass the advertised Facts shape but cannot represent the corresponding observation products. An ordinary query with bundle-only `result_hash` also passes this permissive shape and fails the existing closed ordinary consumer.

At live GitHub main revision `f587be37da58028d10188b1699b00adc4dff9487`, both affected `$defs/facts` and `$defs/witness` definitions matched the investigated 023 definitions. This establishes pre-existing source/schema debt, not a regression introduced by 023. It does not mean the main checkout was subjected to the complete signed reproduction: that run used the named 023 revision.

## Mathematical obligations

For each supported profile p, let F_p be its admissible ordinary Facts products, E_p their existing canonical encoding, D_p the corresponding checked decoder, and L_p the corrected schema language.

The required faithful-encoding and producer/schema closure laws are:

```text
for f in F_p:
    D_p(E_p(f)) = f
    E_p(f) belongs to L_p
```

An admissible product is not every value a broad implementation container can hold. Its finite observation maps and values must obey the applicable contract. The equations do not authorize changing historical encodings or interpreting one profile through another.

The second law is falsified by the issue's genuine existence observation. The correction must also describe the existing structural observation products rather than arbitrary family values.

However, schema acceptance is not required to equal full semantic acceptance:

```text
SchemaShape(document) is not SemanticValidity(document, module, state, history)
SchemaShape(document) is not AuthenticationOrAuthorization(document)
```

Semantic key uniqueness, contradictions, module-dependent types, recorded historical truth, exact subject binding and cryptographic trust remain obligations of their applicable checked boundaries. Plain schema validation cannot establish them independently. In particular, schema validation after generic JSON decoding does not establish raw duplicate-object-key rejection.

Ordinary query facts exclude bundle integrity fields. [023](../023-strict-bundle-evidence-validation/spec.md) remains the separate contract for validated bundle observations and projection; its existing result-hash law must not be imposed on ordinary Facts.

Missing observations remain unknown. Empty Facts are permitted structurally. A complete supplied empty universe and an omitted universe are different evidence and must not be normalized into the same semantic assertion.

## Exact discovery evidence and its limits

The investigation ran an admitted Wire 0.5 Marker/Customer action with postcondition `exists(id)` through the current authenticated producer, exact subject validation and ordinary runtime reproduction. The generated signed counterexample contains `facts.existence` and a complete supplied universe. Its report is correctly `not_verified`; the producer's exit 1 is a completed counterexample result, not an infrastructure abort.

The Core accepts the envelope and reproduces `DENY`. The governance root schema and the Store's embedded envelope/witness definitions reject the same evidence. In a diagnostic in-memory schema copy, correcting only the three root names makes the unchanged envelope pass. No tracked schema, canonical record, signature or hash was changed.

A separate 20-case difference matrix covers empty/unknown roots, every family, aliases, scalar/malformed products, bundle-field leakage and semantic duplicate controls. Schema/decoder disagreements that reflect additional semantic checks are not automatically schema defects.

The [issue](https://github.com/kallistoteles/behavior-ir-core/issues/21) contains the executed self-contained reproduction. Supporting immutable investigation artifacts are retained at `/home/kalle/validation-receipts/facts-schema-investigation-20261013/`, including:

- `investigation-receipt.json`, sealed digest `d20220ee61bca73ac23ababa13b28f21d1db2f83616f4a0a8148cfbee743a058`;
- `module.json`, original signed `envelope.json` and producer outputs;
- `core-probe-results.json` and `schema-probe-results.json`;
- `reproduce.py`, its successful output, and `published-issue.json`;
- `publication-receipt.json`, binding the published issue body to the investigation.

These are defect-discovery evidence. The implementation must create a correction-oriented assertion, observe its failure on the named baseline before changing schemas, then establish its success. A script that exits successfully because it detects the defect is not that test-first RED. No new executable test is introduced by specifying 024.

## Source references

All links below bind the investigated immutable 023 revision:

- [Ordinary Facts domain and consumer](https://github.com/kallistoteles/behavior-ir-core/blob/4f44fb83054d6d100f55e0b1466196b8cc94b151/crates/behavior-core/src/facts.rs#L98-L459) and [serializer](https://github.com/kallistoteles/behavior-ir-core/blob/4f44fb83054d6d100f55e0b1466196b8cc94b151/crates/behavior-core/src/facts.rs#L470-L537).
- [Runtime counterexample confirmation](https://github.com/kallistoteles/behavior-ir-core/blob/4f44fb83054d6d100f55e0b1466196b8cc94b151/crates/behavior-verify/src/confirm.rs#L284-L322).
- [Witness shape/ordinary consumer](https://github.com/kallistoteles/behavior-ir-core/blob/4f44fb83054d6d100f55e0b1466196b8cc94b151/crates/behavior-verify/src/governance/trusted.rs#L2243-L2305).
- [Governance Facts definition](https://github.com/kallistoteles/behavior-ir-core/blob/4f44fb83054d6d100f55e0b1466196b8cc94b151/schema/governance-v2.schema.json#L1282-L1307) and [witness reference](https://github.com/kallistoteles/behavior-ir-core/blob/4f44fb83054d6d100f55e0b1466196b8cc94b151/schema/governance-v2.schema.json#L2726-L2739).
- [Store Facts definition](https://github.com/kallistoteles/behavior-ir-core/blob/4f44fb83054d6d100f55e0b1466196b8cc94b151/schema/store-v2.schema.json#L1282-L1307) and [witness reference](https://github.com/kallistoteles/behavior-ir-core/blob/4f44fb83054d6d100f55e0b1466196b8cc94b151/schema/store-v2.schema.json#L2726-L2739).

## Numbering, isolation and priority

Core features 020 and 021 already exist; issue #21 is a GitHub identifier, not reassignment of feature 021. Feature 024 uses the next available sequential Core number and its own branch/worktree. 023 remains frozen and [PR #20](https://github.com/kallistoteles/behavior-ir-core/pull/20) retains its own review/integration lifecycle.

The selected follow-up priority is:

**023 scoped delivery → 024 specification/clarification/planning/tasks/analysis/implementation → targeted ordinary-Facts/witness re-audit → 020 → 021**.

Earlier 017/018/022/019 dependencies remain inherited through 023; this work order does not claim their branches or 023 have merged to main. Later integration must respect ancestry and be checked at the actual resulting revision. This document does not modify the separate coordination checkout or immutable 016/019/023 evidence.

024 does not include a general schema rewrite, a new evidence engine, the queued version metadata/canonicalization work, semantic changes to evaluation/replay/governance, or a release/pin update. Planning must assess public schema acceptance-domain and consumer compatibility under the current [versioning policy](../../docs/versioning.md) before implementation/delivery decisions.
