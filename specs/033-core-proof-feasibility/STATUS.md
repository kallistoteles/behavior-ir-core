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
byte bindings; see the [derived coverage index](evidence/scoped-chain/t042-primitive-coverage.json).

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
Its complete 50-output meaning is checked (26 targets, fresh replay), and 387
independent update vectors plus 256 complete native three-stage chains pass.
The complete actual source is also checked (85 targets, fresh replay). The actual guarded numeric matrix is checked too (70 bounded end targets,
all 13,314 rows). All 2,071,458 matrix bytes are bound to that checked value. The complete
authenticated-path and outer-controller wiring remain in progress.

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
original-node binding are now checked (12 targets, fresh replay). Its complete actual
source is now checked (625 targets, fresh replay), and all 426,478 file bytes
are bound. The complete 302,936-row numeric packet remains in progress. Independent numeric
constraint diagnostics accept the honest witness and isolate the exact phase
and terminal-counter guard failures. The whole K controller remains open.

The exact original-key byte view and a shared full-word comparison program
are checked (21 targets, fresh replay). The native functions reject a changed
bit in every word of either operand: 3,072 key cases and 512 digest cases, plus
equal controls. Both complete actual source functions are now checked and fully byte bound
(121 key/29 digest targets). The full digest comparison matrix is also checked
(51 targets, 2,450 rows), with all 423,114 bytes bound. The key matrix is checked too (60 targets, 11,970 rows), with all
2,126,314 bytes bound. The surrounding authenticated byte-consumption contract
remains open.

A fixed local three-phase parent-round dispatcher now composes the two hash
steps and post-hash update in one generated function (12,484 instructions).
Its native candidate passes 2,129 all-port cases and 256 complete independent
oracle chains, including rejection after the local return. Mathematical fresh
replay is complete (49 targets), including the exact three-call digest and
terminal return rejection. Complete actual source correspondence is now Checked
(860 bounded targets, fresh replay), with all 591,237 source bytes bound. The
actual numeric component is Checked (676 bounded targets, all 427,671 rows),
with all 67,542,926 matrix bytes bound. Its complete actual source retains its
separate Checked/fresh receipt. This is a
local path component; full K control and own-sibling authentication remain open.

A six-phase paired old/new parent-round candidate now has Checked routing,
state preservation, full-word phase/guard and all 187 physical output contracts
(34 targets, fresh replay). The complete operand/state/assignment composition
is also Checked (31 targets, fresh replay), and phase/preservation over six
steps is Checked (5 targets). It passes 256 native six-step chains against
independent original-record hashes. Its complete 13,203-instruction source
is now Checked (953 bounded targets, fresh replay), and all 625,365 file
bytes bind. Its actual 454,068-row matrix is being checked. Complete six-step
full original-message digest/preservation is Checked (36 targets, fresh replay);
shared original frames, exactly-once unwrapped counter and terminal rejection
are also Checked (16 targets, fresh replay).
An own-sibling branch input adapter has complete actual-source correspondence
(57 targets, fresh replay), all 3,130 bytes bound, and 1,020 native original
record/two-hash controls. Its original-codec/full-digest composition is now Checked
(29 targets, fresh replay), and its returned metadata transfer is Checked too
(7 targets, fresh replay). Its combined record return is Checked (4 targets, fresh replay). The adapter
actual matrix is also Checked (74 targets, all 2,634 rows), and all 382,050
bytes bind. The complete caller/opening binding remains open.

The first whole controller numeric packet failed recursive closed-record
reconstruction. The repaired second packet compiled but exhausted the unchanged
8 GiB fresh-check memory limit. It is not Checked. A compact independent actual
row quotation now retains all 302,936 original rows through ten shared row
families and reversible affine wire runs. All actual row-group equations are
audited, but its joint source/matrix fresh check hit the unchanged 3,600-second
wall limit. It is not Checked. A separately identified complete numeric-component
check has now passed against the same IR (490 bounded targets, all 302,936
rows); the source keeps its independent Checked receipt. Full matrix file binding
has completed for all 48,166,122 bytes. This component does not claim a new joint source/matrix fresh check. A complete digest comparison control passes fresh checking and binds
the same 423,114 bytes; an actual wire-byte mutation remains a Checked mismatch.
No resource limit or frozen meaning changed.

The current nine-phase own-sibling/old/new candidate has Checked basic routing,
state, phase and output contracts (40 targets, fresh replay), and passes 1,020
independent native original-record hash cases. Its complete own-record hash/metadata return is now Checked (65 targets, fresh
replay). The complete nine-step local trace is now Checked too (32 targets,
fresh replay): both original parent digests, unchanged derived sibling and
exactly-once unwrapped counter follow the own-record return. Actual enforcement
of all 91 guards and transfer of all 90 underlying local guards is Checked
(5 targets, fresh replay), with conditional honest component completeness.
Both original parent count limbs and aggregate flags are Checked through
the complete six- and nine-step traces (10 targets, fresh replay). The complete
13,984-instruction actual source is Checked (1,024 bounded targets, fresh
replay), and all 661,463 bytes bind. Its actual matrix and complete path/caller
binding remain open. A
[conditional work-count diagnostic](../../experiments/transition-study033/COST.md)
exposes a major cost concern: this unchanged candidate would instantiate about
1.108 billion constraints across one complete opening, before remaining K work.
That is arithmetic under stated execution assumptions, not measured latency or
a positive G1 result. The expensive update-only phases also remain a construction
choice to revisit after preserving the complete semantics.

A completed untrusted backend cost diagnostic now exposes a concrete Rework
signal for this construction: a real fold takes 1.056 s, compression takes
511.060 s and compressed verification takes 6.718 s for the 302,936-row hash
component on this portable reference host. Both complete endpoints verify.
These are single diagnostic observations with an uncertified Nova embedding,
not G1 quantiles or a full initialized/durable Core transition. The exact
scopes, raw evidence, existing optimized SHA alternative and representation
sharing counts are recorded in [COST.md](../../experiments/transition-study033/COST.md).

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
