# Contract: public API additions (`behavior-engine`)

Every item below is an explicit re-export, added to `api/engine-surface.txt`. Existing items are
unchanged.

| Path | Item |
|---|---|
| `invocation::TypedIdentity` | `{ entity: String, id: String }` |
| `invocation::RequestedInvocation` | decoded `behavior.invocation.v1` |
| `invocation::CapabilityIntent` | decoded `behavior.capability_intent.v1`; `.into_invocation(context)` |
| `invocation::Snapshot` | decoded `behavior.snapshot.v1` |
| `invocation::InvocationRecord` | `as_json()`, `to_json_string()`, `record_id()`, `outcome_kind()`, `refusal_stage()`, `inner_record()` |
| `invocation::invoke_with_snapshot` | `(module, &RequestedInvocation, &Snapshot) -> Result<InvocationRecord, TransportError>` |
| `invocation::invoke_intent_with_snapshot` | `(module, intent_text, context, &Snapshot) -> Result<InvocationRecord, TransportError>` |
| `invocation::check_capability_intent` | `(module, intent_text) -> Result<(Option<CapabilityIntent>, Vec<IntentError>), TransportError>` |
| `invocation::invoke_document` | `(module, document_text, snapshot_text, Option<&Json> host_context) -> Result<InvocationRecord, TransportError>`; complete CLI document boundary, including snapshot refusals |
| `invocation::IntentError`, `invocation::TransportError` | Typed semantic diagnostics and transport failures |
| `invocation::replay_invocation` | `(module, record_text) -> ReplayResult` |
| `canonical::tagged_hash` | moved from verify (same bytes) |

## Store additions

| Method | Signature | Notes |
|---|---|---|
| `Store::invoke` | `(&self, module, &RequestedInvocation, commit_time, evidence, at: Option<&StateRef>) -> R<Invocation>` | `Invocation { record: InvocationRecord, bundle: Option<CommitBundle> }`. A bundle exists only for an evaluated `ALLOW` action at the head. Reads and past positions never get a bundle. |
| `Store::invoke_intent` | `(&self, module, intent_text, context, commit_time, at) -> R<Invocation>` | Semantic decode problems of a parseable intent yield an invocation record (`pre_evaluation_refusal`, stage `DECODE`). Unparseable text, backend failures, a schema mismatch or a foreign position are `Err`. |
| `Store::replay_invocation` | `(&self, module, record_text) -> R<ReplayResult>` | FR-009 against the store |

`Err` is used only where today's store returns errors with no record: backend failure, a schema
mismatch, or a position that is not a state of this store. Everything about the invocation
itself yields a record (FR-008). Unparseable or non-canonicalizable transport
documents are errors without an invocation record.
