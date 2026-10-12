# Migrating Backend implementations to the creation contract

The corrected Core requires one Backend creation model: an authoritative Store
is absent or complete. Initialization may use private construction steps, but its
publication is atomic. This is a public Backend-contract change despite unchanged
Rust signatures. Under the current 0.x release policy it is minor-class; the exact
release number is selected separately during delivery.

The normative design is [whole-Store creation](../specs/019-store-creation-contract/contracts/store-creation.md).
Existing genesis formats, canonical bytes, StoreId/StateId, records, schema identity
and historical replay profiles retain their meaning. This change concerns creating
the entire Store, independently of ordinary actions that create entities.

## Required implementation changes

| Obligation | What to establish |
| --- | --- |
| Atomic publication | Genesis, original versions, initial head and required coherent views become visible as one complete product. Normal open/evaluate/replay never interprets private staging as a Store. |
| Stable original identity | Recognize the existing canonical genesis/StoreId and its exact complete original initialization. A target path, current StateId or finding one genesis field is insufficient. |
| Idempotent direct Backend retry | On an equivalent legal create request, recover the existing creation without overwriting current data/head/history or creating another initialization. Store preflight recovery cannot substitute for this Backend obligation. |
| Established conflict | Reject a different existing creation deterministically. Failed checks remain operational errors; they are not evidence of conflict or absence. |
| Recovery after later history | Preserve original revision-one/position-zero versions, later revisions/removals, reference history and migrations. Never restore the current Store to its seed. |
| Concurrent initializers | Serialize the actual same-target check/publication against other creators and ordinary committers. Core's earlier absence observation is not the concurrency primitive. |
| Durability | Acknowledge success/recovery only after the host's disclosed persistence barrier. Specify interruption windows and OS/storage assumptions. |
| Corruption and staging | Distinguish missing authoritative data from failed reads or malformed/partial authoritative documents. Private orphaned staging is permitted; corrupt authoritative data is never an absent target to overwrite. |

The host stores and checks the legal initialization product supplied by Core. It
does not introduce another Behavior validator, infer Ref rules from declaration
hashes, generate a new creation hash or require a generic storage runtime. Derived
indexes remain reconstructible and cannot redefine the canonical product.

Legacy-v1 seed sequence contributes to its existing identity. Do not sort/rewrite
it during recovery or compare its raw decimal seed JSON to typed encoded values.
V2 retains its canonical typed-key ordering. Core's module-bearing original-request
recovery verifies the expected normalized seed and required references.

## Error and recovery procedure

Actual storage state and caller knowledge differ. A success establishes complete
publication. A crash, lost response or generic Backend error may leave the caller
uncertain whether publication occurred. Uncertainty is not a public Creating state,
and an error is not an automatic rollback guarantee.

Retain the exact original Module/genesis needed for a retry. Reopen the same target
and resolve its original creation identity and current history. Calling existing
`Store::create` with that original request performs verified identity-bound recovery:
an equivalent complete Store is returned at its actual current history; a complete
foreign creation yields `STORE_CREATION_CONFLICT`. No second initialization occurs.

The first failed attempt keeps its original Backend error unless one bounded check
positively establishes a complete foreign creation. Equivalent evidence or failed
secondary reads do not convert that attempt to success. Retry is explicit; Core
does not loop internally or parse host error messages for semantic classification.

`Store::open` remains module-free and performs structural publication/history
checks. It starts with a cold validity cache and establishes no independent full
Behavior/Ref proof. Original-module creation recovery also starts cold when the inspected history
has advanced or migrated, even if the current StateId equals the original seed.
A concurrent commit after capture of H0 does not invalidate the exact historical
H0 certificate; that certificate cannot justify validity at a later history
position. Recovery does not require a head-stability loop.

These interfaces retain `Result` and existing operational-error channels. The
conceptual KnownAbsent/KnownComplete/UnknownWhetherPublished distinction requires
evidence, not a new enum in every binding. A failed recovery read or synchronization
barrier cannot establish successful recovery or absence.

## Conformance and migration evidence

Run the existing public `behavior-engine::store::conformance::run(factory)` against
fresh targets. Include direct Backend retry; a test that only retries through Store
can hide a non-idempotent Backend because preflight may omit its create method.
Retain complete-product, before-publication failure, lost acknowledgment, conflict,
advanced/migrated recovery, ordering and concurrent-initializer cases.

Supplement shared semantic cases with host-specific fault testing at actual private
writes, publication, synchronization and acknowledgment boundaries. Record the
observed result, reopened product, original/current identity and preserved history.
Process exits do not prove power-loss/device behavior. State assumptions and gaps
explicitly; historical successful-create or commit-only tests prove no new creation
guarantee. Compilation against the trait likewise proves no semantic conformance.

Core's filesystem consumer is one test host, not a mandated physical layout. It
uses a stable cooperative lock, complete private file, file sync, atomic rename and
directory sync. Normal recovery observers establish the required barrier without
rewriting existing data. Its root must already be durably established or its
newly created parent entries must be synchronized separately.

External ecosystem bindings/backends must migrate against the published corrected
Core Release. Existing PyBackend/AnyBackend/DictBackend metadata and required gates
continue to use their exact declared release until that migration. This document
does not update their pin or attest their compatibility with an unpublished branch.

Type compatibility is not semantic conformance. Backends vary in implementation,
not in the meaning of Store creation.
