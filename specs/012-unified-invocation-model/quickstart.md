# Quickstart: validating the unified invocation model

Run inside `nix develop` in behavior-ir-core. The formats are in
[data-model.md](data-model.md); the decoding, pipeline and outcome rules are in
[contracts/invocation-documents.md](contracts/invocation-documents.md).

## 0. Compatibility first (FR-015, FR-016, SC-005)

```sh
scripts/conformance-digest.sh > /tmp/digest-before.json      # on the 0.10.2 tree, before any change
# … after the feature …
scripts/conformance-digest.sh | python3 scripts/digest-subset.py /tmp/digest-before.json
```

Expected:
- Every key of the old digest is present, with an equal hash.
- New keys exist only under `tests/fixtures/invocation/` and the new `schema/` files for the
  invocation, capability-intent and snapshot documents.

## 1. One model, zero to three bindings (US1, SC-001)

```sh
F=tests/fixtures/invocation
behavior invoke $F/modules/ledger.json $F/invocations/register.json $F/snapshots/s1.json   # 0 bindings
behavior invoke $F/modules/ledger.json $F/invocations/suspend.json  $F/snapshots/s1.json   # 1 binding
behavior invoke $F/modules/ledger.json $F/invocations/transfer.json $F/snapshots/s1.json   # 2 bindings
behavior invoke $F/modules/ledger.json $F/invocations/settle3.json  $F/snapshots/s1.json   # 3 bindings
```

Expected: four invocation records with `outcome.stage = "evaluation"`. Each embeds a decision
record identical to the legacy path's record for the same resolved state.

## 2. Reads and actions refuse identically (US1, US4, SC-001, SC-002)

```sh
behavior invoke $F/modules/ledger.json $F/invocations/suspend_unknown.json   $F/snapshots/s1.json  # exit 3
behavior invoke $F/modules/ledger.json $F/invocations/summary_unknown.json   $F/snapshots/s1.json  # exit 3
behavior invoke $F/modules/ledger.json $F/invocations/suspend_wrongtype.json $F/snapshots/s1.json  # exit 3
```

Expected:
- Each record has `outcome.kind = "pre_evaluation_refusal"`, `stage = "BINDING"`, and no inner
  record.
- The action and the read give the same problem:
  `INVALID_BINDING`/`UNKNOWN_BINDING` for the unknown identity, and `WRONG_ENTITY_TYPE` for the
  wrong type.
- `cargo test -p behavior-core --test invocation_conformance` runs every read/action pair for
  every binding outcome.

## 3. Evidence and replay (US2, SC-002)

```sh
behavior invoke-replay $F/modules/ledger.json $F/records/suspend_unknown.expected.json   # exit 0
# alter requested_bindings.customer.id in a copy → exit 2, the path is named
cargo test -p behavior-store --test invocation_store
```

The second command must show:
- the store head and history are unchanged after 10 refused invocations (SC-007);
- every record replays against the store.

## 4. One intent model (US3, SC-003)

```sh
behavior invoke-intent $F/modules/ledger.json $F/intents/register_no_bindings.json $F/snapshots/s1.json --context $F/context.json
behavior invoke-intent $F/modules/ledger.json $F/intents/transfer_two.json         $F/snapshots/s1.json --context $F/context.json
behavior invoke-intent $F/modules/ledger.json $F/intents/with_state.json           $F/snapshots/s1.json --context $F/context.json  # refused: STATE_NOT_ALLOWED
cargo test -p behavior-core --test intents        # legacy targets intents: byte-identical (compatibility conformance)
```

## 5. Admission is unchanged (FR-014, SC-004)

```sh
behavior admit tests/fixtures/wire/valid/fixed_scale.json   # decision-only check_margin: admitted, same identity
cargo test -p behavior-core --test admission                 # every existing diagnostic unchanged
```

## 6. Verification and history (US4, SC-006)

```sh
behavior verify $F/modules/ledger.json
cargo test -p behavior-store --test invocation_history    # history of 0–3-binding actions, data and behavior replay
```

## 7. Gates and consumer

```sh
scripts/gates.sh      # includes check-consumer (invoke, invoke_intent through behavior-engine only)
```
