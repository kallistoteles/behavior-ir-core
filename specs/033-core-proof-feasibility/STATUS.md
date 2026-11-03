# Core G0–G1 feasibility: current status

Updated 2026-11-03. **G0 is established. G1 is still in progress.**
41 of 93 tasks are complete; T042 is the current open task. This experiment has
not yet produced a certified initialized transition or a measured G1 latency.

The objective is to test whether exact incremental Core execution, deferred
observation materialization and an accumulated cryptographic proof can deliver
millisecond-scale finished results. A patch to the existing Core implementation
is not the intended outcome. The proposed latency thresholds are acceptance
criteria, not measured results.

The checked foundation includes the scoped Core semantics, complete initial
validity, authenticated live/used maps, exact changed-path laws, canonical record
formats and full SHA-256 meaning. Many individual generated Rust functions and
actual numeric matrices have complete correspondence proofs and full artifact
byte bindings; see the [derived coverage index](t042-primitive-coverage.json).

The latest completed results are:

- The complete digest-address selector has checked actual source, base matrix,
  forced range checks and complete byte bindings. Every one of the 256 original
  byte-MSB-first address positions is covered by its mathematical contract.
- One shared-register byte/SHA block has complete actual-source correspondence
  with 3,948 fresh-checked targets. All 190,979 source bytes are bound. Its model
  and guard proofs connect all 64 raw byte inputs and all eight SHA field outputs
  to the original SHA definition. Its complete actual numeric matrix is still
  being checked.
- Parent count and aggregate flags are computed from the child summaries and
  feed the original branch encoding through the same registers. The mathematical
  composition and exact byte meaning are checked. The native candidate agrees
  with an independent oracle on 660 cases; actual-source/matrix checking continues.
- Reusing sibling metadata requires authenticating the sibling's own node data
  or proving an equally strong condition. The original parent hash alone does
  not justify every reused aggregate flag. The counterexample and the stronger
  mathematical path contract are checked; physical realization remains open.

The essential remaining work is the complete physical K controller, exact
request/node/stream/state bindings, Init and terminal-state enforcement, the real
Nova embedding and compressed chain, independent verification, durable publication
and the full measurement campaigns. Native checker/backend interfaces remain
explicitly `Unsupported` until their obligations are established.

A successful primitive, native vector run or mathematical model does not pass
G1. The full initialized proof chain must be correct, complete and independently
verified, and its finished durable result must meet the latency criteria. All
current construction/proof-driver durations are engineering costs.

The [task list](tasks.md) is authoritative for completion. The
[construction journal](evidence/scoped-chain/README.md) records exact scopes,
failures and later results without rewriting earlier evidence. The original
120-hour construction clock continues without resetting; it conservatively
includes elapsed wall time between continuation messages.
