# Unified capability invocation

Use `behavior-engine::invocation` for new capability boundaries. A requested
invocation identifies a declared capability and its state bindings; resolution
supplies the entity values from one exact snapshot or Store position. Reads and
actions use the same resolution procedure. Capability kind determines what
evaluation can produce.

```json
{"format":"behavior.invocation.v1","capability":"transfer","bindings":{"from_":{"entity":"Account","id":"a1"},"to":{"entity":"Account","id":"a2"}},"input":{"amount":20},"context":{}}
```

A typed identity is exactly `{entity,id}`, with two nonempty strings. It is a
request to resolve an `Id<T>` and can name an absent entity. It contains no state.
Resolution checks declared state parameters, entity types, existence and aliases
at the same position. Zero bindings use this procedure too; a capability never
needs a dummy entity to run.

Consistent snapshot facts may add values beyond the explicit entity table;
resolution uses those universe values too. Known existence without an available
entity value yields `INCOMPLETE_SNAPSHOT` at DECODE, rather than asserting absence
or a contradiction. This refusal archives the snapshot evidence for replay.

The fixtures in `tests/fixtures/invocation/` provide a zero-binding
`register_customer`, one-binding `suspend_customer`, two-binding `transfer` and
three-binding `settle`. Reads include `customer_count` without bindings,
`customer_summary(customer)`, `pair_total(a,b)` and `triple_total(a,b,c)`.
Use a declared read for new observation-only capabilities. Legacy decision-only
actions retain their meaning.

## Evidence and replay

Every invocation produces a `behavior.invocation_record.v1` envelope. It names
the capability/kind, BehaviorHash, SchemaHash, exact data version, requested
bindings, input, host context and binding facts. Its `invocation:sha256:…`
identity hashes its canonical JSON without `record_id`, under
`behavior.invocation_record.v1`.

- A `DECODE` refusal records document problems or contradictory snapshot evidence.
- A `BINDING` refusal records missing/extra bindings, wrong types, absent identities
  or aliases.
- An `evaluated` outcome contains the unchanged legacy decision/read record and
  its identity, including denied decisions and evaluation errors.

A failure before evaluation has no inner record. Diagnostics report independently
decidable problems in canonical order and do not invent missing-binding errors
for an identity that was supplied but could not be decoded. Decode refusals
archive original documents in `outcome.decode_evidence` when the envelope alone
would lose the invalid key or snapshot that caused the failure.

Core replay reconstructs resolution/evaluation from recorded values and facts.
It rejects contradictions between the envelope and inner record even if the
envelope hash was recomputed. Store replay additionally checks the exact recorded
position and resolves bindings against that historical Store state.

Refusals never enter store history. Neither reads nor evaluated invocations
append history. `Store::invoke` returns a candidate bundle only for an allowed
action at the captured head; `Store::commit` is the separate write boundary.
Actions evaluated at a past position have no candidate. Invocation envelopes
remain host evidence; the committed record retains the original transition form.

## Capability intents

Untrusted callers use `behavior.capability_intent.v1`: the same capability,
bindings and input, with optional object `metadata`. They cannot supply state,
context or legacy `targets`. The host supplies context explicitly to
`invoke_intent_with_snapshot` or `Store::invoke_intent`. Metadata becomes
`intent_metadata` and affects only the envelope identity; it never reaches the
evaluator. `check_capability_intent` checks shape and statically decidable binding
constraints; invocation checks actual existence against a snapshot.

The document APIs return typed transport errors for unparseable JSON or values
that cannot be canonically represented. Parseable semantic errors produce refusal
records. Plain `evaluate` and read evaluation remain the resolved-level APIs for
trusted hosts that explicitly supply entity values and facts.

## CLI and compatibility

```sh
behavior invoke ledger.json transfer.json snapshot.json
behavior invoke-intent ledger.json intent.json snapshot.json --context context.json
behavior invoke-replay ledger.json record.json
```

Invocation commands exit 0 for any evaluated result, 3 for a pre-evaluation
refusal and 2 for invalid transport or wire. Replay exits 0 for a match and 2
for a mismatch; malformed command usage exits 64.

| Compatibility path | Current capability boundary |
|---|---|
| Resolved `EvaluationRequest` / `eval` | `behavior.invocation.v1` / `invoke` |
| Legacy action intent with `targets` / `intent` | `behavior.capability_intent.v1` / `invoke-intent` |
| Legacy read intent / `read-intent` | `behavior.capability_intent.v1` / `invoke-intent` |
| Legacy resolved read request / `read` | `behavior.invocation.v1` / `invoke` |
| Decision/read replay | `invoke-replay` for invocation envelopes |

Compatibility paths are frozen. Existing Wire IR 0.7 admission, arithmetic,
record bytes, identities, verifier semantics and store history are unchanged.
