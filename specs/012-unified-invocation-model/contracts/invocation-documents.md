# Contract: invocation documents

The formats are defined in [data-model.md](../data-model.md). This contract fixes how each
document is decoded and what each outcome means.

## Decoding (all three documents)

- **Unknown top-level keys are refused.** Every independently determinable problem is listed
  with a JSON path (FR-008c). This
  follows the existing intent decoding style (`WRONG_TYPE`, `UNEXPECTED_KEY`).
- **`format` must equal the document's tag**, otherwise `UNSUPPORTED_FORMAT` naming both
  values.
- **Binding values must be typed identities.** A string, an object with extra keys or an empty
  `id` gives `INVALID_IDENTITY` at `bindings.<param>`.
- **Capability intents may not carry `state`, `context` or `targets`**: `STATE_NOT_ALLOWED`,
  `CONTEXT_FROM_HOST` and `LEGACY_TARGETS` respectively (FR-013).

## Pipeline

```text
capability intent ──(host adds context)──► requested invocation
requested invocation ──resolve(snapshot | store position)──►
    problems?  → invocation record, outcome.kind = "pre_evaluation_refusal",
                 stage DECODE or BINDING                           (no evaluation)
    else       → resolved invocation ──evaluate (existing evaluator)──►
                 invocation record, outcome.stage = "evaluation"   (+ inner record)
```

**Resolution order.** Each step adds its problems to one list, and the list is reported in full:
1. capability exists;
2. binding map against state parameters (missing, extra, not a state parameter);
3. each typed identity: type equals the parameter's type, then existence at the snapshot;
4. alias check over the bound identities.

**Evaluation.**
- Actions run through the existing transition evaluator. The request is built exactly as
  `Store::evaluate` builds it today: `state` holds the resolved entity values.
- Reads run through the existing read evaluator. Their `state` holds the resolved values.
- Inner records are therefore byte-identical to what the legacy paths produce for the same
  resolved state.

## Outcomes

| Situation | Outcome | Inner record |
|---|---|---|
| Document is not JSON | no record (transport or syntax error) | — |
| Format, key, capability or identity problems; contradictory snapshot | `pre_evaluation_refusal`, `DECODE` | none |
| Missing, extra or non-state bindings; unknown identity; wrong type; alias | `pre_evaluation_refusal`, `BINDING` | none |
| Bindings resolved, action evaluated (`ALLOW`, `DENY`, `INVALID_INPUT`, `ERROR`) | `evaluated` | decision record |
| Bindings resolved, read evaluated (`VALUE`, `EVALUATION_ERROR`, `INVALID_INPUT`) | `evaluated` | read record |

## Store behavior

- `invoke` and `invoke_intent` never append to history. An `evaluated` outcome with an `ALLOW`
  action also returns the commit bundle, exactly as `Store::evaluate` does today. Committing it
  is a separate call, as today.
- Ten refused invocations leave head, position and history unchanged (SC-007).

## Replay

- **From the record alone** (`replay_invocation`):
  1. recompute `record_id`;
  2. re-run resolution against the recorded binding facts and resolved values;
  3. replay the inner record with its existing replay;
  4. check consistency.

  Any difference is reported with the first differing path.
  Decode refusals archive original documents in `outcome.decode_evidence` where
  necessary to reproduce the invalid field or contradictory snapshot. Replay
  re-decodes this archive rather than trusting recorded diagnostic assertions.
- **Against the store** (`Store::replay_invocation`): additionally, the `data_version` must name
  a state of this store, and the recorded binding facts must equal the store's facts at that
  position.
