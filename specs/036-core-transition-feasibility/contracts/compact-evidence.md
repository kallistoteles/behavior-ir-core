# Core036 restricted canonical compact experiment

Design only. This required prototype is built after accepted legacy diagnosis/lifecycle evidence, not silently omitted after an early failure. It retains the original fragment and has a separately declared memory-backed endpoint. Actual-code correctness/reconstruction and current full quality are mandatory before accepted comparison.

## Actual execution seam

Current `Ground::view_step` calls original observation execution, Store invocation/commit, full view materialization and Capture/history copies. C must branch before these eager constructions. Implement a shared, proved restricted semantic result containing exact outcome/first error, ordered commands and typed row/view delta. Legacy roles may build their full original observation; C stages the delta and canonical compact record into a separate memory CAS.

C checks exact compact parent/subject/writer, validates retained input availability, stages without advancing authority, then atomically accepts state/delta/record at the expected head. Only matching acknowledged acceptance advances the private compact ground. Conflict/precommit failure/lost acknowledgement requires quarantine/reconciliation. This is not a compact wrapper over original Store::commit. Instrumentation must detect hidden new full legacy record/observation/state materialization and original commit in this completion path.

Outside the actual compact selector, reconstruct/check the required original basis and execute the original fallback at its legacy endpoint, charging that work and labelling it fallback rather than compact completion. Invalidate compact authority until a fresh justified basis is established; never cast a compact head into original history. Accepted C timing cells exercise the admitted compact path.

One verified original initial basis is allowed and charged to acquisition/retention. Keep typed state/views plus ordered deltas/requests, not full per-step legacy snapshots. No new Merkle tree or cryptographic proof backend is required.

## Exact contract freeze

Before prototype implementation freeze `core036.compact-transition.v1`, `core036.finish-recipe.v1`, canonical schema/grammar, preimage equations, actual selector and identity/provenance rules as immutable inputs. Later corrections are new explicit contract/source revisions, never post-timing reinterpretation. The following fields/boundaries are mandatory:

| Canonical field | Meaning |
| --- | --- |
| format / recipe_version | Exact compact record and original replay meaning. |
| semantic_subject | Original module/schema/policy interpretation, not tool/proof/build provenance. |
| basis | Exact verified original initial state/history and shared immutable semantic inputs. |
| parent / position | Exact experimental compact head and representable position. |
| request/context/metadata content refs | Complete original inputs and deterministic metadata, with no substituted audit-time clock. |
| outcome / first_error / ordered_commands | Exact minimal semantic result, preserving ordered duplicates; large native values use exact content refs. |
| state_delta | Typed deterministic updates/removals/additions with complete IDs/versions and view dependencies. |
| recipe_state_commitment | Commitment to basis plus ordered deltas, not a claimed computed original state-content ID. |
| retained_inputs / availability_policy | Complete immutable dependency closure and process-lifetime-through-required-audit promise. |
| event_id / child_head | Computed experimental identities, outside their own preimages. |

Canonical content refs contain kind/version/byte-length/digest, not physical path/root/owner IDs. A separate bound transport manifest maps content IDs to actual retained ArtifactRefs. Incidental work IDs, tool/source executable hashes, proof shape, cache/query plan, timing mode, PIDs and filesystem locations stay in a research sidecar and cannot change canonical identity. The original program's semantic identity is normative; proof implementation provenance is not transition meaning.

Canonical experimental JSON has sorted keys, preserved array/command order, UTF-8, no whitespace, exact decimal integers without leading zeros or negative zero, standard boolean/null literals and a frozen escape grammar (quote/backslash escaped, U+0000–U+001F as lowercase `\u00xx`, other valid Unicode emitted directly, no slash escaping). Reject duplicate keys, invalid Unicode, overflow and unsupported versions before allocation. Canonical control values have only their declared integer/string/etc domains. Referenced original JSON uses the original numeric/value domain and source-bound original encoding; do not narrow admitted metadata because the compact codec is simpler. Reference ordering and deterministic delta normalization must be fixed before prototype implementation and proved with the actual encoder before acceptance.

Preimages are acyclic: `recipe_root=H(state_recipe_domain,basis,parent_recipe_root,canonical_delta)`; `event_id=H(event_domain,canonical_payload_without_event_or_child_ids)`; `child_head=H(history_domain,parent_head,event_id)`. Use distinct fixed versioned domain tags and explicit length framing in the frozen grammar. A delivered record may then include computed IDs; its transport-file hash is separate. No input manifest references its own future record. Reuse the existing SHA primitive with its declared assumptions; no new security result is claimed.

## Retention and reconstruction

Retain one actually checked original basis/packet, module/policies/schema and all exact ordered request/context/metadata/delta inputs needed by replay. All promised inputs must exist and be reachable before compact acknowledgement; no eviction until required audit and sealed export complete. Charge basis creation, state/view maintenance, per-event data, publication/output and retention growth.

Reconstruction verifies an independently expected subject/parent and every content/ref/version, then replays original Core in order from the verified basis, comparing actual semantic results/deltas at each step. It reconstructs all eight original fields and original state/event/history identities with exact original input metadata and encoders. Keep actual source-bound general proofs of C state/refinement, replay binding/composition and identity mapping. Reusing the original evaluator does not prove missing input/adapter/C delta relations by itself.

Provenance states that original replay occurred during audit and distinguishes values representing original-equivalent calls from calls actually performed at compact completion. An audit does not import a private ground. Missing/corrupt/substituted data, wrong recipe/subject/parent/version or mismatch never returns exact success. Process loss may lose the memory promise; restart from exported raw data requires original authority establishment. Result-file sync is not backend durability.

## Identities and domains

| Identity | Required result |
| --- | --- |
| Original semantic subject | Exact same admitted program/policy/context relation. |
| Semantic state | Actual typed delta state equals reconstructed original state through the general relation. |
| Recipe commitment | Own versioned basis/delta-history commitment; never label it a state-content hash. |
| Original state/event/history | Exact computation/mapping during reconstruction; deferred work charged. No digest cast or candidate-supplied lookup table. |
| Compact event/head | Versioned experimental domain, history-sensitive even when state contents are unchanged. |
| Transport/provenance | Exact artifact bytes and implementation evidence, separate from canonical semantic identities. |

## Comparison endpoints and audit schedule

Measure compact completion directly through its acknowledged memory CAS and required compact output. Also directly measure its enclosing operation through required full original reconstruction/delivery. In the primary comparison protocol reconstruct/deliver each operation's original result before starting its continuation; do the same for every operation in S1/S32. A verified replay consumer may retain its audit cursor across the sequence; its acquisition, memory, retention and work remain charged. It must not feed hidden full-record computation into C completion.

Thus each operation has an observed compact-completion subinterval and a full-delivery total. Each session has a direct acquisition-through-all-required-original-deliveries and final independent-audit total. Do not sum compact subintervals into an unmeasured compact-only session or subtract audit medians. A delayed/batched audit protocol would have different guarantees and requires separately frozen extra runs; do not claim its benefit from this primary protocol.

Compare C with fresh L* at O-D1/O-D3 and changing S1/S32, three timings plus one diagnostic per role/cell. Show different compact-only versus legacy guarantees even when full-delivery totals can be compared. Detect zero new full legacy observations/transition records before each compact completion; previous audited records are separately charged and must not be used by the compact writer. Lower bytes alone cannot pass the cost decision.

## Mandatory controls

Execute actual-code missing/corrupt/substituted data, wrong parent/context/module/recipe/version, attempted early eviction, process-lifetime loss, precommit conflict, lost acknowledgement, wrong delta/command order, identity alias and cache/proof/timing/path-dependent identity controls. Test actual zero-hidden-materialization counters. Complete C semantic/reconstruction/source/proof/full-Q/scoped gates before accepted timings. Failure schedules repair and a new bounded attempt; unbuilt or unproved C cannot become a final rejection.
