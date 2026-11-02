# First actual artifact pair — passed scoped gate

T023–T034 are complete. `receipt.json` is copied unchanged from
`checked-pair-002/receipt.json`. Attempt002 passed the combined actual-byte
soundness/completeness targets, fresh kernel replay and all17 strict mutations.
The source, IR and matrix cover the full signed Int64 negative test. The real
matrix has67 variables and66 constraints; it proves soundness and completeness
over a field of the declared characteristic. The source check binds actual
standalone rustc inputs, build recipe, library, harness and executable.

The whole frozen engineering command took796.75 seconds and reported2.88 GB
peak child RSS. These are build/check costs, not certified runtime latency.
The first40-hour cap was satisfied on the original T001 clock. Further
construction has its separately recorded120-hour active-work cap.

The ordinary compiler/runtime/ISA, Lean logic/kernel and standard algebraic
assumptions are explicit. Full Core extraction, full K/hash/codec primitives,
actual Nova embedding, compressed initialized history, durable publication,
observation rendering and all runtime quantiles remain unestablished.
`release_relation_complete` and `g1_pass` are false. T023–T027 are test-design
completion markers: future K/claim/Nova/checkpoint interfaces still return
`Unsupported`, and their acceptance tests remain red until implemented.

`reproduction.md` identifies inputs, commands and portability limits. The
frozen base codec profile, G0 contract/review and earlier studies are unchanged.
Source/matrix staged reports deliberately retain `fresh_kernel_replay=false`;
the final combined receipt references the fresh aggregate replay of their
imported actual modules rather than rewriting those earlier stage reports.

Failed development attempts remain evidence: syntax/recursion and memory
limits, a300-second kernel-tool timeout, an overflowing rejection diagnostic,
and `checked-pair/failure.json` for the first combined module-prefix loading
failure. The initial five mutation assertions required only an error. The
strict rerun exposed the diagnostic failure; the kernel-only tactic fixes it,
and all5 matrix controls now require an explicit kernel decision mismatch.
All12 source controls require an explicit false-validation decision. Tool,
import, memory, recursion, stack and time failures never pass a strict control.
The final attempt uses newly frozen inputs and does not overwrite attempt001.

Provenance correction: `actual-matrix-negative-controls.json` recorded the
recorder file hash at completion, after that file had been edited. Its executed
recorder was the version at commit dd10357, SHA256
`456ee71cd2481f14c8116519eef85bf48b2db640d101b8652f3244507cfb0306`;
the raw receipt's `466cc188…` value identifies the later on-disk version.
Raw outputs/timing are retained unchanged. Subsequent recorder versions capture
their own hash at startup.
