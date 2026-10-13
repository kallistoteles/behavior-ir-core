# Contract: Private v2 bundle-evidence validation

This design implements [FR-002–FR-009](../spec.md) at the existing candidate
observed-facts check. It specifies no new public document version or API. V1
placement and historical meaning remain unchanged.

## Local checked interface

Conceptual interface, not a new public trait:

1. Decode already strictly parsed candidate read_facts into a closed private product.
2. Check canonical unique collection keys and query result integrity.
3. Return private owned validated evidence or a typed local problem.
4. Permit semantic Facts projection only from the validated product.
5. Delegate the projected ordinary document to the unchanged Facts parser.

The complete raw candidate must first pass existing `decode_strict`, so duplicate
keys cannot disappear before local parsing. Direct conversion from a reduced JSON
value is not a claim to have checked its original raw text.

Use the exact fields and orders in [data-model.md](../data-model.md). Reject unknown
root/item/capture/member/edge fields, universe, wrong types, duplicate semantic
keys and noncanonical collection order. Required product fields cannot be supplied
by defaults. Empty root/arrays retain their existing permitted representation.
Each query item requires a hash even when it has no members.

## Existing query result integrity

For the already canonical member array M:

```text
ResultHash(M) = "sha256:" + lowercase_hex(
    SHA256(UTF8("behavior.query_result.v1") || 0x00 || UTF8(CanonicalJSON(M)))
)
```

M is `[{"id": string}, ...]`, ordered strictly by id and unique. No sorting or
hash recomputation may silently repair supplied input. Verify the supplied digest
syntax `^sha256:[0-9a-f]{64}$` and equality to this existing algorithm.

Reference vectors independently computed with SHA-256 during design:

| Canonical M | Existing result identity |
| --- | --- |
| `[]` | `sha256:21115dbec5bf6bcf7568f7211fb662ea684c79c6f932d4d50922ffdf1cc4e907` |
| `[{"id":"a"},{"id":"b"}]` | `sha256:f8267fe64300deaaa901f76ee3c60e396c630280602d22b1f5725c38beae4164` |

These are algorithm vectors, not claims that correction tests ran. Add independent
vector controls during implementation alongside actual producer round trips.

Keep one domain constant in Verify hashing and preserve the existing Store constant
as an alias. Reuse existing `document_hash`/Core canonical hashing; no new algorithm,
tag, delimiter, field inclusion or digest representation is introduced.

A result hash binds membership only. Equal results from different instances can
share it. Definition, captures, fields, Store/history, behavior and commands remain
bound by their existing enclosing candidate and record identities. Query-instance
identity retains its different binary definition/capture encoding.

## Semantic projection and original claim

Projection removes only recognized integrity fields from the temporary semantic
view, after integrity validation. It preserves every observed fact section, query
instance/definition/entity/capture/member and field value. Use the unchanged
ordinary Facts parser for its existing semantic construction/rejection rules.

The original candidate JSON remains intact for its hash, signature subject and
archive. Projection must not remove result_hash from that original claim, rewrite
historical bytes, invent observations or turn a current record universe into bundle
evidence. A private validated value owns its checked data and cannot certify a
subsequently mutated public bundle.

## Errors and independent obligations

| Failure | Existing outcome | Phase |
| --- | --- | --- |
| Raw duplicate key or noncanonical JSON number | INVALID_GOVERNANCE_DOCUMENT | Existing whole-document strict decode |
| Local unknown/missing/wrong-typed field, duplicate/order defect | INVALID_CANDIDATE | Candidate observed-evidence check |
| Missing, malformed, wrong-domain or mismatching result_hash | INVALID_CANDIDATE | Candidate observed-evidence check |
| Projected ordinary Facts invalid | INVALID_CANDIDATE | Same local candidate check |
| Original candidate content hash differs | HASH_MISMATCH | Existing enclosing identity check |
| Historical query/field observations differ | Existing Store/replay refusal | Independent historical rederivation |
| Required authorization absent/wrong, stale parent or backend failure | Existing corresponding contract | Existing governance/concurrency/operational phase |

Local failures should retain deterministic cause/location in the existing message
channel. No new public error variant or Wire evidence field is added. Do not leak
crypto helper error categories into the local result-hash boundary. Preserve the
existing order of unrelated candidate checks.

Correct local integrity does not prove observation truth, issuer authority,
identity freshness, schema consistency, complete child validity or committability.
All existing exact historical and atomic obligations remain mandatory.

## V1 compatibility

The new codec is not called from v1 decode, structural hash, commit or replay.
Share the unchanged hash domain/algorithm only. Invalid v1 hashes retain their
baseline decode results and later historical commit/refusal behavior, including
competing defects and actually performed backend errors.

The compatibility requirement is equality of the observable historical pipeline
for the same contract inputs. Earlier rejection can change that function even
when no invalid transition commits. This plan therefore prohibits homogenizing
v1 and v2 phase boundaries.

## Scoped schema correspondence

Both current v2 wrappers gain an equivalent closed bundle-evidence definition,
used only for action candidate facts and non-null action bundle facts. Preserve
bundle omission/null and migration facts exactly `{}`; ordinary/witness and legacy
schema definitions remain untouched.

JSON Schema checks closed structure, required fields and hash syntax. Runtime
checks hash equality, canonical semantic-key ordering and raw duplicate keys.
Schema `uniqueItems` can assist exact duplicate rejection but cannot replace
semantic-key checks. Existing json_data may be reused for values; lexical numeric
canonicality remains a runtime obligation.

Valid producer documents and genuine supported v2 archives must satisfy both
applicable wrapper schema and checked runtime consumer. Schema artifact changes
are disclosed in [compatibility-assessment.md](../compatibility-assessment.md).
