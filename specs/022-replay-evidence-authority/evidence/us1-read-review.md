# US1 scoped read authority review

Reviewed the uncommitted implementation with runtime source SHA-256
`349bb2dd35a918dc6bd6897672ba6b2dfca551b4dfcd56142695bc0ac488b080`
on implementation-base HEAD `f0d2a5102adcb0b491cac166f023fd87bb03e7a7`.
This is read-path closure evidence, not final delivery or whole-kernel soundness.

| Obligation / requirements | Inspected invariant and evidence |
| --- | --- |
| O022-01/02; FR-001/002 | `read.rs` selects original request/source/profile. `reproduce_prepared_read` executes that exact text and compares the complete record; `reproduce_read_transport_refusal` exposes its private proof only after agreement and actual request-parser refusal. Echoes cannot replace failed sections. Store consumes typed demands and Core's result. |
| O022-08; FR-007/009 | Preparation retains existing strict/header/profile/source ordering; complete comparison includes the original identity and all evidence. The new integration profile also checks the admitted module's complete serialized representation, not only equal semantic hashes. Historical v1 provenance and unsupported raw-archive controls pass. |
| O022-11; FR-010 | `Store::replay_read` retains coordinate, schema binding and actual snapshot validation before reproduction. Added canonical history checks follow those prerequisites. Direct Backend errors propagate; actual callback `FactError` behavior remains unchanged. Wrong-schema/late-fault probes pass in both directions. |
| O022-13; FR-013 | Separate original R022-01/02 baseline RED receipts, exact-name GREEN receipts and facade RED/GREEN demonstrate the defects and correction. The new exact-module check has its own meaningful RED/GREEN. Test-support errors remain explicitly excluded. |

Concrete source: [Core checked read helpers](../../../crates/behavior-core/src/read.rs),
[existing request parser](../../../crates/behavior-core/src/eval.rs),
[Store replay integration](../../../crates/behavior-store/src/store.rs) and
[bounded history check](../../../crates/behavior-store/src/store/replay_evidence.rs).
The latter does not implement a second read evaluator.

Separate finding evidence:

- R022-01: [baseline RED](runs/baseline/r022-01-red/run.json),
  [exact GREEN](runs/us1-green/r022-01/run.json).
- R022-02: [baseline RED](runs/baseline/r022-02-red/run.json),
  [exact GREEN](runs/us1-green/r022-02/run.json).
- Public facade: [input RED](runs/us1-red/consumer-input/run.json),
  [context RED](runs/us1-red/consumer-context/run.json),
  [three-test GREEN](runs/us1-green/consumer-read-contract/run.json).
- Exact module binding: [RED](runs/us1-red/core-module-binding/run.json),
  [seventeen-test Core GREEN](runs/us1-green/core-read-contract/run.json).
- [Nine Store read controls](runs/us1-green/store-read-contract/run.json),
  [Core preservation targets](runs/us1-green/core-read-preservation/run.json),
  [Store preservation targets](runs/us1-green/store-read-preservation/run.json),
  and [canonical consumer check](runs/us1-green/facade-consumer-gate/run.json)
  all exit zero. The consumer check includes ordinary zero-test doc targets;
  those are not counted as required compatibility cases.

SC-001's two read members are established within this scope. SC-003 has targeted
identity, comparison, schema/error precedence and supported-facade evidence. The
live 018 transport-limit expectation now matches, with its original name/label
and immutable archive unchanged; see the [compatibility assessment](../compatibility-assessment.md).
No record/hash/schema, Backend method, supported facade export or fresh-evaluation
contract changed. New APIs are hidden Core-to-Store implementation hooks.

Residual premises: immutable coherent Backend history/enumeration, existing exact
typed decoding, canonical hashing and full validator semantics. Endpoint history
checks do not constitute a full-prefix backend audit. Safe parent cache population
remains reconstructible; no read path constructs a bundle or candidate validity.

F-REPLAY-022-001 is addressed in the read implementation with the above scoped
evidence. F-REPLAY-022-002, broader US3 coverage, independent re-audit and frozen
revision gates/consumer evidence remain required; this report does not close them.
