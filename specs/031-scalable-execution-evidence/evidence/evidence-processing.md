# Existing-format evidence processing hypotheses

The baseline numbers and scopes are indexed in US1 and `cost-model.md`. Ranking below concerns investigation value, not a measured speedup. The diagnostic counters measure named byte/call sites, not CPU attribution or all allocations.

| Rank / candidate | Exact site and proposed avoided work | Preserved obligation and premise | Necessary work / feasibility gap |
|---|---|---|---|
| 1: reuse within an immutable operation | `documents::hash_of`, `canonical::tagged_hash`; avoid repeated conversion/serialization/hash of the **same checked value under the same domain** | Exact tag, complete supplied value, canonical exclusion rule, schema/profile/context and immutable lifetime; all performed validation errors unchanged | At least one complete canonical validation/hash remains. No per-document repetition distribution or allocation/CPU attribution yet; benefit unresolved |
| 2: stream canonical serialization into hashing | Same functions; avoid transient canonical String/clone | Same ordered keys, UTF-8 escaping, integer spelling, nested fields and top-level-hash exclusion; complete input float validation including excluded metadata | SHA incremental-input equivalence does not prove serializer/error correspondence. Required output still emitted. No measured end-to-end prototype; unresolved |
| 3: local typed decision reuse | `DecisionRecord::from_json` and callers in command/store/replay checks; avoid reparsing an identical record | Validated native record, exact version, full closed-document/claim checks, exact immutable parent/profile; never trust bundle producer | Query/effect/runtime validation and original-context replay remain. No audited borrow/reuse lifetime/caller mapping; unresolved |
| 4: shared immutable parent representations | complete snapshot/evidence construction in evaluate and commit | Existing complete parent/child evidence, membership and ordered traces unchanged | Can reduce transient copies; cannot omit serialized required universe/members. No allocation census or implementation; unresolved |
| 5: borrowed typed document decode | `documents::decode` clones Json before typed deserialization | Same typed decoder, errors and full supplied value | Counter scope is this helper only. Zero measured calls in a workload excludes it as that workload's demonstrated dominant cost; other backends may differ |
| Reject: drop full observations | parent universe, membership, child traces, errors or command occurrences | Violates unchanged-profile byte/observation equivalence | Counterexamples are detectable by the complete comparator; compact representation needs a separate contract |
| Reject: skip checks from a matching state hash | Store/replay/governance boundaries | State equality does not identify exact history, original event or context | Lost-ack and command-only controls show the missing premises |

## Correspondence argument required before an experiment

An operation-local reuse token must identify both the complete checked immutable input and every semantic/domain parameter. Reusing its result is valid only while these inputs remain equal, the original validation was successful, and no required observation or performed error is removed. This follows from referential equality of a deterministic checked function on identical inputs; it does not authorize treating a producer-supplied hash as a checked token.

For streaming, structural induction over the actual JSON value would need to show identical serialization bytes and errors, then the existing incremental SHA contract gives identical hash input/result. The current canonical implementation validates the complete supplied value even when a top-level `hash` is excluded. Skipping that validation is a specific unsound shortcut. No machine-checked theorem or Rust implementation proof is claimed here.

## Experiment decision

No current-format Core shortcut is implemented by this research. Named processing volume supports the ranking but does not establish the per-site CPU/allocator distribution, repeated identical inputs or safe cross-call lifetime needed to select and evaluate a production-shaped prototype. The precise remaining work is a scoped per-site/profile attribution plus the full caller/validation correspondence and a separately gated isolated patch. Omitting bytes/checks is already rejected rather than prototyped as an optimization.

This is an explicit unresolved feasibility finding, not evidence that copies/parses/hashes are all unavoidable or that no improvement exists. Whole-cycle and consumer/replay costs must be measured for any later patch. Ordinary reference execution remains authoritative.

The measured row-template site is `eval/prepared.rs`'s canonical parent/created merge: unchanged entities extend `out.trace` and observed fields from checked templates. This preserves observations while predicates remain constant. Borrowed/intermediate representations could avoid some copies only if public owned outputs, canonical order and stopped/skipped behavior remain exact. The current counts do not quantify those clones.

The history source offers another precise investigation seam: `commands_since` obtains replay, reconstructed content, snapshot verification and a latest-version prefix before extracting a page. A **within-call** validated materialization could potentially avoid repeated reconstruction without a cross-call stale cache. This remains unresolved pending phase/error-order and complete version/governance correspondence. Small-read history hashing similarly cannot be replaced by a producer-supplied digest.
