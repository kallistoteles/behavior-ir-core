# Actual-source extraction decomposition after a0135

This is a corrective work note, not a correspondence result or a change to the
required native theorem domain.

The closed a0135 selected `crate::run_v2` in the actual retained a0113 worker and
included the four Core crates `behavior_engine`, `behavior_store`,
`behavior_models` and `behavior_verify`. Its exact source/cfg, command and stderr
are retained under the attempt and `native-extraction/a0135`. Charon returned101
after reporting region-discovery warnings in the actual protocol visitor and
`memory allocation of94464 bytes failed`. No LLBC or generated Lean was emitted.
Do not classify this as successful extraction or a mathematical counterexample.

The next extraction should separate the actual call graph from implementation
bodies of its dependencies:

1. Keep a0135's existing `entrypoints` mode and its meaning immutable in the
   historical source snapshot. Add a distinct `worker-entrypoints` mode selecting
   the same actual `crate::run_v2` root with the normal foreign-opacity rules.
2. Preserve every foreign/opaque declaration, signature, source span, type and
   unresolved dispatch node. These remain unestablished dependencies, not native
   proof premises made valid by being opaque.
3. Use that actual inventory to select smaller Core implementation slices for
   projection, eligibility, prepared evaluation, confirmation and observation
   arguments. Each slice must refer to the same compiled source/configuration and
   close against the composed obligations B01–B10.
4. Declare any legitimate generic runtime primitive explicitly. Do not replace a
   required native projection/evaluation/encoding theorem with its desired
   equality as an axiom. Shared original functions permit congruence only after
   equality of their complete actual native arguments and compatible performed
   errors/effects has been proved.

This does not remove any dependency from the final proof. The successful a0133
view-invalidation/finite-ID helper check remains separate from the unestablished
composed Rust–Lean correspondence. All primary measurements and final completion
remain gated by the actual complete prerequisites.

A possible further split, if the worker extraction itself still reaches the
problematic generic protocol visitor, is an actual shared Rust semantic-entry
function after the unchanged parser/immutable-input-loading prefix. Both real
workers must call that function; no proof-only implementation is allowed. The
unchanged parser may be handled through same-native-function congruence only
with equal complete byte inputs and compatible effects. That does not establish
projection, prepared-evaluator or inherited-validity correctness: those remain
separate mandatory native refinements. In particular, a Core call with different
prepared-facts/cache arguments cannot be declared equivalent merely because its
function name is unchanged.
