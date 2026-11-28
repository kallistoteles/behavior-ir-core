# Complete native source and whole-view lowering

Native 583 closes the source-packaging repair from the previous note. Its
source r9607 freezes 8,144 references and includes all 80 required native Rust
source/expected-fixture files. The actual preflight and retained-source replay
both pass; the extractor selects 236 source/fixture/test files, including both
previously omitted session modules.

## What actually passed

The declared `us1-views` integration slice passed 10 protocol tests, one targeted
view refinement test and three canonical-fold tests. Formatting and Clippy
passed. Real optimized R/GV/B workers and the separate unpatched original
oracle built successfully, with compiled dependency/configuration bindings.
The missing-worker-feature build failed as expected with 101. The actual
arbitrary-precision JSON mutant compiled and was then rejected with
`NativeCompileJsonRepresentation`.

The complete attempt closed with actual exit 0, no resource stop, unchanged
source bytes, empty process tree/group and matching final storage inventories.
Its 5,131,210-byte resource receipt is readable under the unchanged 32 MiB cap.
Receipt SHA-256: 7874dda682fe7b5a4bbc9a2d9ec238da1bf2b4b5dbef433c7e6ce6e816a4bc9c.
Native result SHA-256: b948fbeb218082f538b0bcb15d2927926485b2930909e67d7767a15fb87876bb.
Checkpoint SHA-256: 8dc82b38aabbb2b15169d0de3c89149513190d4602830206047eed9e63625388.

This is the declared integration slice. It does not supply the full 123-test
suite, the 12 retained-executable observation comparisons or native proof.
Those final obligations remain required.

## Actual whole-view extraction 584

The repaired complete source compiled in the real Charon pipeline. Metadata,
compiler/configuration checks and extraction all exited 0. Charon retained a
4,096,077-byte LLBC graph with the entire Views module and canonical
`reference::state_facts`. The earlier E0583 module-packaging errors did not
recur. The attempt closed cleanly with no stop/source error or storage mismatch.

Aeneas translation exited 1 before producing Lean files. The configuration
incorrectly reused the separate retained-allocator layout producer's flags.
Those deliberately preserve actual String/Vec/allocator layouts without the
`aeneas` preset. The stock translator explicitly refuses that profile.
This exact refusal is already an intentional boundary in the existing
String-memory source study; it must not be mistaken for translated code.

The correction uses the supported Aeneas preset and the exact source-support
selection from successful 546, with the new whole-view roots and current fully
frozen native sources. A regression against the actual 584 configuration first
failed, then all three profile controls passed. The90 existing extraction
controls also passed. The new early guard rejects this incompatible combination
before another expensive extraction. Layout-only producers keep their existing
flags and behavior.

Contract 007 preserves 584's actual allocator/String/JSON layout graph as a
separate source dependency. The semantic translation preserves every external
node. Source-bound generic String/str/sequence/map/set/JSON interpretations and
their complete domain/error/effect/caller bridges remain mandatory open work.
No whole-Views, Store projection/evaluator or desired observation is admitted
as a runtime primitive. No source-layout correspondence is inferred from the
preset or from an opaque type declaration.

## Status

The corrected whole-view translation must now be run. B01–B10 and complete
B/C/lifecycle/reproduction work remain open. There are still 65/153 checked
tasks and no accepted timing, diagnostic or reproduction observations. This
note records actual repairs and prerequisite results, not feature completion.
