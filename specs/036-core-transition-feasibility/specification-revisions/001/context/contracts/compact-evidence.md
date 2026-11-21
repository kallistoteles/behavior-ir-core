# 036 experimental compact canonical evidence contract

**Status:** Designed, not implemented or accepted. S4 is gated by native correspondence, canonical quality and complete-cost/lifecycle diagnosis. A transport-only compact wrapper may be useful but does not establish this canonical contract.

## 1. Separate guarantee and version

The experimental format is `core036.compact-transition.v1`, with recipe `core036.finish-recipe.v1`. It covers the exact admitted restricted `finish` semantics and original fallback/error/refusal outcomes covered by its proof; it is not a new Core language or production format. Unsupported reconstruction versions fail explicitly.

Compact completion means the controlled experimental memory backend has atomically acknowledged the exact expected compact parent, applied the exact authorized result/delta, and made the compact record plus all bound reconstruction inputs available under the declared process-lifetime retention contract. Required output-file delivery/sync is also completed. It does not mean full original observation delivery, a new receiver's prefix certification, application durability or retention across process loss.

If the caller requires the original full-delivery guarantee, the endpoint is compact completion **plus** actual exact reconstruction and delivery of all required original fields. Publish this separate total; never use only compact completion as a like-for-like speedup.

## 2. Record fields and canonicalization

Required fields:

| Field | Meaning |
| --- | --- |
| `format`, `recipe_version` | Exact experimental record and reconstruction semantics. |
| `semantic_profile` | Original module/schema/policies and admitted interpretation; exact content refs, not names alone. |
| `semantic_context` | Exact semantic/model/recipe interpretation and enforceable environmental premises; execution provenance is separate. |
| `parent` | Independently expected compact parent coordinate and the bound original reconstruction basis. |
| `request`, `context`, `metadata` | Exact original bindings/input/captures and every deterministic metadata value used by original execution/encoding. No current clock may be substituted during audit. |
| `outcome` | Exact success/refusal/first-error outcome, relevant original validation outcomes and honest provenance. |
| `ordered_commands` | Complete command sequence with duplicates preserved, including an empty sequence. |
| `state_delta` | Exact additions/removals/updates with entity/ID/version dependencies and no ambiguous omission; unchanged-content events remain distinguishable. |
| `child_state_commitment` | Declared canonical semantic-state identity relationship, with proof/mapping status. |
| `retained_inputs` | Immutable verified input-manifest root and exact recipe dependency closure. |
| `availability` | Backend scope, retained roots/owner, minimum lifetime and explicit reconstruction failure behavior. |
| `experimental_child` | Experimental event/history coordinate in its own identity domain, never implicitly a legacy `HistoryRef`. |

Actual source/executable/tool/proof/caching/timing provenance is retained in a separately bound research sidecar. It is not part of the canonical compact event/history preimage. For the same semantic inputs and contract version, cache state, execution plan, proof shape and timing mode must not change canonical identity. Binding evidence to its true implementation remains mandatory, but must not turn incidental execution details into transition meaning.

Canonical experimental payload uses UTF-8 JSON with lexicographically ordered object keys, preserved array order, no insignificant whitespace and an explicitly specified escaping/integer representation. Reuse a source-bound canonical encoder with its exact proof obligation; do not assume a serializer configuration defines a mathematical canonical form automatically. Reject duplicate keys, invalid Unicode, unsupported numeric values and out-of-bound records.

Commitment construction is acyclic: define a canonical payload excluding its own computed event/child identifier, hash it with the explicit domain tag `core036.compact-event.v1` and exact parent coordinate, then place that ID into the final record. Define the experimental history coordinate from the versioned parent/event relation. A retained manifest binds only already existing input bytes, never the future record's own digest. SHA-256 may be reused as an existing commitment primitive; no new cryptographic backend is part of 036.

Planning fixes these required semantic fields and boundaries. Before S4 implementation or accepted measurements, freeze the exact JSON schema, canonical byte grammar, commitment preimage equations and recipe as immutable contract inputs. Ambiguity in any one is a failed S4 entry gate, not permission to select a meaning after timing.

## 3. Retained data and availability

The manifest identifies immutable exact module/policy/schema input, original request/capture/context and metadata, an actually verified initial state/history basis, ordered intervening experimental transitions and any additional original records required by the recipe. Each ref has path/bytes/hash/version and an independently expected subject. Equal file content does not create past verification authority.

The initial basis is charged to setup/retention; new shared structural state or delta inputs are charged when produced. A prototype that retains full per-operation legacy observations must disclose those bytes and materializations and fails the claimed avoidance of eager canonical construction. Reusing immutable inputs is allowed, but dropping a dependency just because it is cached is not.

All data necessary for the promised audit must be reachable before compact completion. Minimum lifetime is the entire declared session through completed original reconstruction/audit and archive sealing. No eviction before that endpoint. Read-only reconstruction consumers may use the retained byte DAG and an independently established expected subject; they acquire no Core ground from a producer's certificate field.

The first prototype is memory-backed and promises reconstruction while its owning state/data remain available. If process death loses data, that limitation is explicit; restarting from deliberately exported raw data requires original authority re-establishment. File-fsync of a compact result does not establish persistence of its referenced backend state. A separate durable design would require its own Q6 contract and is out of scope.

Test attempted early eviction, missing/corrupt/substituted inputs, wrong parent/module/context/recipe, and process-lifetime loss. A consumer may diagnose a missing-input condition; it may not return `exact_success`, certify the missing observation or silently fetch an unbound substitute.

## 4. Identity relationships

| Identity | Required disposition |
| --- | --- |
| Semantic program/subject | Same original admitted program and policy meaning; exact binding/projection proof. |
| Semantic state | Exact reconstructed state must agree. Retaining a legacy state ID requires its actual equality proof/computation; otherwise record a versioned explicit mapping. |
| Legacy event | Usually includes complete original evidence. Do not promise it at compact completion unless actual computation is shown and its work charged. Reconstruct later with its exact original preimage. |
| Legacy history | Reconstruct original parent/event/position and prove the mapping. Unchanged state content does not collapse events. No identity cast from compact coordinate. |
| Compact event/history | New explicitly versioned domain and parent/child equations, distinct from original unless equality is actually established. |
| Transport artifact | Digest of delivered file bytes; formatting/delivery identity is separate from state/history and mathematical truth. |

A mapping is not arbitrary lookup data supplied by the candidate: prove it against actual original construction from verified inputs. If computing an old identity itself materializes the large original record, show that cost; the prototype may defer the legacy identity under its new endpoint, but cannot claim unchanged legacy completion semantics.

## 5. Reconstruction obligation

For every admitted finite input `x`, exact retained basis `b` and actual compact execution `c`, the target is:

`Reconstruct(recipe, b, c) = Obs(OriginalCore(x))`.

The theorem covers all eight fields from [correctness](correctness.md), applicable canonical bytes/identities, exact refusal/error and ordered commands. Bind the actual reconstruction code to the proof; a parametric recipe returning an assumed correct observation is invalid. Fresh kernel/type/axiom checks and independent full reference comparisons are both required, with proof and conformance statuses kept separate.

Check the whole dependency DAG before success, with deterministic parsing/order and explicit resource failures. An unavailable/corrupt dependency, mismatched semantic subject, wrong identity relation or unsupported version produces a typed non-success with no authority advancement. Do not fabricate a direct original Safety validation record when the recipe only derives its outcome.

## 6. Actual canonical commit feasibility

Legacy Store currently retrieves and hashes full transition records and the memory backend validates/stores full record content. S4 therefore needs an explicitly experimental compact commit interface if it claims to avoid that work. Define exact-parent compare-and-advance, state/version effects, record/input availability and confirmed-only ground advancement under the same restricted semantic proof. No change reaches the production Store or legacy wire contract.

Before accepting that backend, run actual conflict/precommit/lost-acknowledgement controls and compare reconstructed original observations. A wrapper that calls the full legacy commit underneath is labelled transport-only; its counters cannot claim zero canonical materialization. Building a second general Store is unnecessary: if the minimal restricted contract cannot be implemented/proved within S4, report rework rather than expanding scope.

## 7. Cost and verdict

Charge initial basis, retained data/index maintenance, actual commit/output, future reconstruction and original audit. Report compact completion, transition-plus-reconstruction and full session-plus-audit directly, with comparable legacy endpoints and visible guarantee differences. Record actual avoided materializations and changed retention; smaller output alone is insufficient.

S4 is accepted only if the exact version/schema/identity/availability contract is frozen, its actual implementation and reconstruction are proved for the fragment, all negative controls behave correctly, current quality passes and the measured endpoints are honestly comparable. Performance can still be negative. No result activates production adoption or automatically resolves035's original missing bridges.
