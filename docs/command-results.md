# Explicit external results

A command intent describes requested work. A successful commit makes that request durable;
external success is a later host observation. Core has no callback, delivery-status store,
scheduler or implicit continuation.

The payment fixture models `attempt_id`, status and provider reference as ordinary domain
fields. `request_payment` changes status to REQUESTED and emits ChargeCard with amount in
minor units, explicit SEK currency and the supplied business attempt ID. A host consumes
only the checked committed stream, executes outside Core, and supplies success/failure to
`record_payment_result` in a later invocation. The result action checks both REQUESTED status
and the explicit attempt ID before committing another transition. Wrong correlation refuses.
Neither receiving a response nor evaluating the result action commits anything automatically.

```text
request invocation → commit request + intent → host provider
                                               ↓ explicit response data
result invocation  → explicit later commit ← host chooses capability
```

`CommandIntentHash` identifies what was requested. `CommandOccurrenceId` identifies which
committed occurrence requested it and can be a target idempotency key. `attempt_id` expresses
business correlation across transitions. These identities serve separate purposes: Core does
not derive a domain attempt ID from a history position or occurrence ID.

Run the facade-only host mock from the repository root:

```sh
cargo run --manifest-path consumer/Cargo.toml --example command_results -- success
cargo run --manifest-path consumer/Cargo.toml --example command_results -- failure
```

The example attempts delivery twice; its mock provider explicitly deduplicates by occurrence
ID. That is a property of the mock target, not an exactly-once execution promise from Core.
Adapter retry/checkpoint/status data stays with the host. If a domain needs compensation,
retry eligibility or ordering, model it through explicit entities/actions and later input.
For A-before-B causality, commit A, accept its explicit result, then request B. Ordering within
a single command multiset is never an execution sequence.

The original committed event and intents remain immutable after either result. They replay
without the provider response, current credentials, endpoint configuration or host checkpoints.
