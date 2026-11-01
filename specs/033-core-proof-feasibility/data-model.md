# Core033 data model

Design for [spec.md](spec.md); no runtime artifacts exist yet. Normative behavior
is in [semantic-and-evidence](contracts/semantic-and-evidence.md) and
[runtime](contracts/runtime.md). All records carry an explicit format version.

## FeasibilityContract and ReleaseRecipe

`FeasibilityContract` contains the baseline/spec identities, complete source
inventory, closed-module parameters, G1/deferred classifications, semantic and
observation profiles, trust assumptions, limits and campaign identity. Changing
a frozen field starts a distinct campaign/release.

`InputManifest` freezes only available source/tool/executable/input identities,
the planned relation/profile, workload, limits and expected output slots. It does
not require future proof receipts or keys. A source/IR correspondence receipt
then binds this manifest; preparation derives actual backend artifacts and
validates their final embedding. An immutable `ReleaseManifest` binds both
receipts, actual shape, pp/pk/vk and input-manifest digest. Run outputs reference
both manifests and form an append-only artifact chain. Neither manifest is
rewritten to fill in outputs that did not exist when it was frozen.

`ReleaseRecipe` binds:

- Full module descriptor/source and semantic profile, including separately bound
  observation/provenance metadata; complete action/obligation inventory.
- Formal targets, transitive axiom report, actual checked Rust bytes/AST/IR,
  actual matrices, field moduli, wire layout and codec version.
- Rust/Lean/mathlib/lock/Nix/target/build identities and executable hashes.
- Nova revision, portable and RNG patches, curves, commitments, compression,
  parameter recipe plus actual pp/pk/vk digests and byte sizes.

`circuit_release` identifies the checked relation independent of proof randomness
and runtime state. Parameter/key identities bind that relation; consumer authority
comes from an independently installed release, not a producer's recipe sidecar.
No certificate includes its own digest in its proved preimage.

## ClosedModuleDescriptor and ScopeEntry

The descriptor is a complete recognized Core IR0.8/CommandIntents template:
`E` with Int64 x and inert padding, positive local constraint, literal count cap,
create/set/emit, fixed `WorkIntent` scalar payload and frozen source metadata.
The descriptor includes all declaration/action names, parameter bindings and
normative phase/order facts. Unrecognized extra declarations are rejected.

Each `ScopeEntry` identifies a source path/constructor/public operation, semantic
profile/version, observable contract, G1 support status, matching formal target,
native/matrix/codec obligation or explicit deferred reason. The inventory includes
all nested arithmetic/comparison/query variants and legacy profiles, not just
top-level ExprKind names. It is generated/reviewed during G0, not assumed complete
because this plan names the common families.

## OriginClaim and SemanticState

`OriginClaim` identifies expected authority, lineage, full module/profile and:

- `Empty`: a genuinely empty state/used set.
- `NewSeed`: complete authoritative input digest, declared sorted inventory,
  live/used counts and any expected roots; no assertion about pre-genesis history.
- `Adoption`: classified but unsupported in G1; it would need an actual old-prefix
  verifier, not merely old/new hashes in one record.

`SemanticState Ω` contains typed live rows, permanent used identities, current
semantic anchor/position/head and fixed module/profile facts. `EntityKey` contains
the complete typed UTF-8 identity, without Unicode normalization invented by 033.
`EntityValue` contains x as Int64 plus exact inert padding. Bounds are operational
profile limits, not changed Int64 arithmetic.

Live and used maps use canonical sparse Merkle trees at 256-bit
`SHA256(typed_key_encoding)` addresses; leaves retain the full typed key to prevent
address/key confusion. Distinct keys at the same digest require explicit collision
handling/failure, never overwriting. Collision resistance is a stated assumption.
Tree encoding has fixed depth/tags, explicit empty subtree roots and deterministic
node shape. Content roots do not depend on insertion order or SQL page layout.

`ViewState V` includes authenticated subtree cardinalities and the checked local
validity/obligation summaries needed for the closed template. Counts are part of
the authenticated node meaning, not an unchecked scalar beside a root.
`J(Ω,V)` is exact equality with the defining functions, including complete
membership and used-ID relationships. Live keys are a subset of used keys.
Changed paths maintain counts; initialization checks the complete supplied seed.
Small live state never licenses forgetting old used IDs.

The global count is derivable from the authenticated live root. Other
strategy-specific helper roots, caches and proof checkpoints are separate
identities and cannot enter the semantic event identity.

## Requests, results and observations

`ExecutionRequest` binds operation, typed bindings/inputs and captured context.
`PublicationRequest` additionally contains lineage, request ID, exact expected
parent/activation and a digest of the complete original request/parent/context.
The request-result table is unique on `(lineage, request_id)`, even for refusal.
The operational idempotency key does not redefine Core business execution.

`SemanticOutcome` is the exact allowed/refused/evaluation-error result under
the reference contract, including phase and complete reconstruction information.
Operational `Conflict`, `Unavailable`, `ResourceFailure`, `IdReuse` and
`UnknownCommitStatus` are separate. Failure to prove is not a business refusal.

`ObservationRecipe` names the exact observation evaluator, full module/metadata,
semantic parent, execution request and captured context. The event also binds
explicit outcome, exact effects and canonical command intents. These inputs
determine the whole observation; support/cache identity is not normative identity.
`Expand` may revisit all requested historical data and computation. Its cost is
owned by reconstruction, and missing support is explicit unavailability.

## Event and command identity

```text
SemanticParent = (lineage, semantic_anchor, position, previous_event_id,
                  content_root, used_root, active_semantic_subject)
CommandIntents = canonical Core multiset sequence, retaining equal elements
EventId = H_profile(SemanticParent, ExecutionRequest, captured_context,
                    exact_outcome, effects, CommandIntents, ObservationRecipe)
OccurrenceId = (EventId, canonical_ordinal)
```

The order here is canonical bag representation, not source-emission or external
execution order. Equal payloads remain different occurrences. Occurrence IDs,
certificate digests, helper roots, microstep counts and producer strategy do not
enter EventId. The output log containing occurrence IDs is updated after EventId,
so the construction is acyclic. Refusal has an `AttemptClaim` and no new event.

## MachineState, CorrespondenceReceipt and Certificate

`MachineState` has fixed-shape public subject commitments plus authenticated
private program/data memory. Its fields bind origin/release/program/profile,
semantic and helper roots, pending request/result, frontier, SHA working state,
phase, microstep counter and committed-event counter. Variable-sized data is
streamed/authenticated, never passed as unconstrained host strings.

```text
Boot → Initialize → InitDone
InitDone/Done → Evaluate → Maintain → Finalize → Done
InitDone/Done → Evaluate → FinalizeAttempt → AttemptDone
```

Phases are semantic machine states, not a mandate for every operation to consume
the same number of microsteps. Accepted final states are InitDone, Done or the
explicitly expected AttemptDone; an inner hash/evaluation state is not a receipt.
Attempts fork the canonical accumulator and cannot replace its committed boundary.

`CorrespondenceReceipt` binds named theorem/axiom receipts, independent expected
IR interpretation, checked actual source/AST, matrices/field/wires, compiler/
executable and recipe. It is a release artifact, not a magic label emitted by
the code generator. Critical mutations must fail actual validators.

The final receipt also checks the actual `StepCircuit::synthesize` ports and
returned `z_next` wires against certified IR input/output indices, their embedding
inside Nova's actual augmented shape and connection to its output hashing. A
correct but unused K submatrix is insufficient. Retain full augmented-shape
identity and reject input/return-wire or embedding mutations.

`CertificateEnvelope` contains format/release/recipe identity, expected boot
subject, microstep count, endpoint claim and actual compressed Nova proof bytes.
Nova verification returns endpoint fields; decode and compare all of them with
the independently expected claim. Event count, attempt identity and proof step
count remain distinct. Envelopes and verification keys have bounded parsers.

## Repository objects and publication states

| Table/object | Key and required fields |
| --- | --- |
| Immutable object | digest → kind, codec, length, bytes; includes nodes, observations, certificate and checkpoint. Same digest/different bytes is corruption. |
| Head | lineage → exact manifest, semantic head, activation, current semantic roots and checkpoint reference. |
| Request result | unique lineage/request_id → original digest, exact status, receipt/support/certificate reference. |
| Event | unique lineage/position and event_id → semantic parent, effect/recipe/intents and manifest. |
| Outbox | lineage/event_id/ordinal → canonical intent reference. No physical dispatch in this study. |
| Pin | owner/promise → reachable root/object; retain all study support, no G1 GC. |

Unsigned u64 values outside SQL's signed range use canonical BLOB encoding, never
casts. Foreign keys are operational checks, not evidence of J.

```text
PrivateCandidate → KChecked → Compressed → IndependentlyVerified
  → DurablePublished → Acknowledged
```

Only the last publication sequence grants committed status. CAS loss discards
the candidate's canonical authority. Commit/ack uncertainty resolves by the exact
original request ID under recovered authoritative storage, not a guessed rollback.
For refusal, the result becomes durable but head/event/outbox do not move.

Initialization has its own create-once transaction: absent lineage becomes a
complete origin/seed/J/certificate/head/pin set atomically. Equivalent original
origin retry returns the original initialization without rewinding an advanced
head; a different origin fails. Partial authoritative data is corruption, not absence.

## Continuation and campaign records

`ProverCheckpoint` binds recursive bytes, origin, recipe, microsteps, exact endpoint
and committed boundary. Restore checks recursive consistency and endpoint; this
does not certify every arbitrary serialized internal value. Final compressed
verification is mandatory after every extension. On loss, rebuild from checked
retained support or report unavailable. Record all resulting time and bytes.

`Sample` records campaign/scenario/run identity, exact parent, endpoint guarantee,
raw wall/phase times, cold/resident state, failures, retries, RSS and byte/I/O
scopes. `Assessment` contains separate completeness/correctness/performance,
all blockers, coverage map and continue/rework/stop. Its full contract is
[campaign.md](contracts/campaign.md).
