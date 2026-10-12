# US2 invocation authority review

Inspected uncommitted runtime SHA-256 `638cc154c24b3854cd6b826b1a078236eed308d9b9fef58557bc8058f427e6b4` on implementation-base HEAD `f0d2a5102adcb0b491cac166f023fd87bb03e7a7`. This is scoped invocation closure, not final delivery or whole-kernel soundness.

| Obligations / requirements | Inspected invariant and retained evidence |
| --- | --- |
| O022-01/03; FR-003/005 | Core `invocation/replay.rs:64` strictly prepares the original record; `:303` reproduces and compares the complete original computation before deriving route or progress. Private exact-module binding prevents reuse under an equal-hash different representation. Intent, invocation and documents origins remain distinct; a recorded stage is not proof. |
| O022-04/05; FR-004/012/017 | Existing atomic Snapshot decoding is retained. Only successfully accepted components create claims. Rejected documents remain attempted-request evidence; accepted sparse archives retain their original missing values/facts. Store never fills the original archive from history. |
| O022-06/07; FR-004/009/012 | Core derives typed claims and compares answers in `invocation/replay.rs:196,487,542`. Store `store/replay_evidence.rs` loads surviving canonical historical versions and rederives exhaustive universes and incoming references. Existing Core query registry/capture checking remains authoritative (`eval.rs:2092`). Identity-only resolver surrogates establish existence, not an invented entity value. |
| O022-08; FR-009 | Core owns envelope metadata/sealing and full first-difference comparison (`invocation/replay.rs:560`). Existing inner-read profiles and archived decisions retain their reference meanings. |
| O022-10; FR-011 | `Store::replay_invocation` (`store.rs:1546`) uses checked replay routes. The existing Fresh-only bundle guard and archived action rederivation remain. Replay probes retain a genuine fresh ALLOW/bundle-positive control and zero replay bundle construction. |
| O022-11; FR-010 | Ordinary Store invocation routes still fully validate the historical snapshot before resolution, including UNKNOWN_CAPABILITY with DECODE stage. Direct historical-load Backend failures remain operational; evaluated-body FactError remains in the existing evaluator route without eager claim preloads. Schema binding precedes additional history checks. |
| O022-13; FR-013 | Separate baseline R022-03/04 and supplied-Snapshot RED receipts predate invocation edits. New claim/origin RED runs bind the unchanged US1 runtime; all relevant US2 assertions are now GREEN. Setup/resource failures are excluded explicitly. |

Concrete source links: [Core replay authority](../../../crates/behavior-core/src/invocation/replay.rs), [Core query comparison](../../../crates/behavior-core/src/eval.rs), [Store routing](../../../crates/behavior-store/src/store.rs), [canonical historical answers](../../../crates/behavior-store/src/store/replay_evidence.rs).

Finding evidence remains separate:

- R022-03: [baseline RED](runs/baseline/r022-03-red/run.json), [exact GREEN](runs/us2-green/r022-03/run.json).
- R022-04: [baseline RED](runs/baseline/r022-04-red/run.json), [exact GREEN](runs/us2-green/r022-04/run.json).
- Original malformed/contradictory Snapshot RED and the US2 claim/origin assertions are indexed in the [execution ledger](execution-ledger.md). No earlier failing run was rewritten.
- [Core contract](runs/us2-green/core-contract/run.json): 25 passing tests; [Store contract](runs/us2-green/store-contract/run.json): 42; [facade contract](runs/us2-green/consumer-contract/run.json): 12; [bundle probes](runs/us2-green/bundle-probes/run.json): 2, including the fresh positive control.
- [Core invocation preservation](runs/us2-green/core-invocation-preservation/run.json): 34; [Store invocation preservation](runs/us2-green/store-invocation-preservation/run.json): 35, including the complete live 018 support-matrix target; [canonical consumer gate](runs/us2-green/facade-consumer-gate/run.json): 62 substantive tests. Zero-test auxiliary targets are not compatibility evidence.

All commands above exit zero, with no ignored required tests. The two live limitation assertions are intentionally corrected under the [compatibility assessment](../compatibility-assessment.md); original names, fixture bytes and frozen reports remain intact.

F-REPLAY-022-002 is addressed within this invocation scope, with SC-001/003/004/006 evidence. Broader US3 authority/error/history coverage, independent re-audit and exact-revision final validation remain required.

Residual premises: coherent immutable canonical Backend history and complete primary enumeration; existing typed decoding, canonical identities and full validation; historical capture limits. Endpoint checks are not a full-prefix adversarial backend audit. Reconstructed parent caches are acceleration, never candidate authority. No Wire, schema/hash rules, supported facade API, Backend method, verifier version or fresh execution contract changes.
