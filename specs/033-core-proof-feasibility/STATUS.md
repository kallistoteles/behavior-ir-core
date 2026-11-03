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
  to the original SHA definition. Its complete actual numeric matrix has now
  passed fresh checking (198 bounded end targets, all 125,904 numeric rows).
  All 20,879,806 matrix bytes are bound to that checked value. The actual
  guarded matrix is also checked (219 bounded end targets, all 125,968 rows).
- Parent count and aggregate flags are computed from the child summaries and
  feed the original branch encoding through the same registers. The mathematical
  composition and exact byte meaning are checked. The native candidate agrees
  with an independent oracle on 660 cases. The actual source, base matrix and
  twelve-guard matrix are checked and fully byte bound.
- Reusing sibling metadata requires authenticating the sibling's own node data
  or proving an equally strong condition. The original parent hash alone does
  not justify every reused aggregate flag. The counterexample and the stronger
  mathematical path contract are checked; physical realization remains open.

The complete computed-parent base matrix is now checked and fully byte bound.
The stronger own-node opening and paired bottom-up path contracts are also
checked. An integrated 34-input parent-frame program derives its own depth,
direction and parent metadata; its 133-output mathematical meaning is checked
and its native candidate agrees with 1,500 independent vectors.
The complete generated source is now checked and byte bound. The seventeen
forced-flag model and honest completeness are checked; its actual numeric
matrix is now checked (92 bounded end targets, all 47,570 numeric rows), and
all 7,118,486 file bytes are bound. The actual seventeen-guard matrix is also
checked (128 bounded end targets, all 47,587 rows). Complete physical K control
remains in progress.

A post-hash path-update candidate now transfers the digest in the original
root byte order, computes the parent metadata and advances the bounded counter.
Its complete 50-output meaning compiles, and 387 independent update vectors plus
256 complete native three-stage chains pass. Fresh replay, exact source/matrix
correspondence and the complete authenticated-path/outer-controller wiring remain
in progress.

The [controller construction design](../../experiments/transition-study033/CONTROLLER.md)
records the concrete phase/state obligations and remaining implementation evidence.
Full-word phase operand routing, component inlining and state output muxes are
now checked (12 targets, fresh replay), as are the fixed admitted inactive frame
inputs (6 targets, fresh replay). A concrete two-compression parent-frame
controller preserves all frame fields, derives padding and controls continuation.
Its native candidate passes 562 full digest cases and 3,934 invalid phase aliases.
Its complete 125-output/72-SHA-input register meaning and both original-padding
byte formulas are now checked with fresh replay. Its complete two-call trace is now checked (36 targets, fresh replay), including
all frame preservation, actual SHA continuation, all 256 final digest bits and
forced full-word phase/frame admission. Honest linked field completeness and
original-node binding are now checked (12 targets, fresh replay). Every actual
source instruction has passed bounded checking; whole-source assembly and the
complete 302,936-row numeric packet remain in progress. Independent numeric
constraint diagnostics accept the honest witness and isolate the exact phase
and terminal-counter guard failures. The whole K controller remains open.

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
