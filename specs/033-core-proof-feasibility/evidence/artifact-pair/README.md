# First actual artifact pair — work in progress

T023–T031 are complete. The test-design tasks T023–T027 record meaningful
initial failures, not functioning K, endpoint, Nova or checkpoint implementations.
Those future interfaces still return `Unsupported`; their acceptance tests remain
red until the corresponding implementation tasks exist.

The signed-negative64 IR and value-only Rust lowering have universal proofs.
The actual source-byte parser, standalone pinned rustc build and native boundary
checks passed, with fresh kernel replay and all12 source mutations rejected.
The field relation has67 variables and66 constraints and proves full-range
soundness and completeness over a field of the declared characteristic.

T032's actual matrix parser and actual-byte validation compile and pass axiom
inspection. The five early matrix mutations are rejected. The separate fresh
kernel replay exceeded the original300-second engineering tool limit; a retained
retry with a larger recorded build budget is in progress. This is not a passed
first-pair gate. The generator emitted54 source bytes and10,538 matrix bytes;
the formatted source builds as a standalone crate. The combined source/IR/matrix
bridge compiles. T034 still requires its frozen inputs, final fresh replay and
strict actual-validator controls before further machine construction.

The ordinary compiler/runtime/ISA, Lean kernel and standard field/proof-system
assumptions remain explicit. Full Core extraction, full K/hash/codec primitives,
actual Nova embedding, compressed initialized history, durable publication and
all runtime quantiles remain unestablished. `g1_pass` is false throughout.

All command durations here are engineering work, not certified runtime latency.
Failed attempts remain evidence, including recursion, memory and tool-time limits.
The immutable G0 input/profile artifacts and earlier studies are unchanged.

Provenance correction: `actual-matrix-negative-controls.json` recorded the
recorder file's hash at command completion, after that file had been edited.
Its executed recorder was the version at commit dd10357, SHA256
`456ee71cd2481f14c8116519eef85bf48b2db640d101b8652f3244507cfb0306`;
the raw receipt's `466cc188…` value identifies the later on-disk version.
Raw outputs and timing are retained unchanged; this note corrects that field's
interpretation. Subsequent recorder versions capture their own hash at startup.
