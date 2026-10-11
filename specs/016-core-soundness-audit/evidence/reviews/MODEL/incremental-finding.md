# Independent significant finding review: INCREMENTAL

Reviewer `/root/audit016_verify`, author `/root/audit016_model`.
R-VERIFY-006; F-INCREMENTAL-001, baseline v0.12.1, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`.

Independently inspected E-INCREMENTAL-002 immutable run.json, source, patch,
stdout and stderr at `../../runs/INCREMENTAL/child-validity-red/` and rechecked
the normative full-validation and ordinary child call boundaries. Source SHA256
`ac905802f0ec8a15f51a464f8aa45973f8e90d9207a460eb11d5d7f7d17fdde2`;
one collected/executed case, zero ignored/filtered, 0 passed/1 failed, exit101.
Compilation completed and the test reaches final direct semantic assertion at68.

The admitted model is legal: target is plain typed Id, not Ref; constraint is
`not exists(e.target)`; initial e0.target="new" and new is absent. Store creation
success/full parent validation establishes the initial valid state. The action
has no old entity binding and creates new whose target="absent" remains absent.
Both new-row own validity and identity freshness can hold while unchanged e0's
constraint becomes false. Ordinary commit succeeds and advances exact position
from0 to1. Backend reconstructed e0 remains unchanged and target new exists.

The final assertion independently states the predicate `!exists_S'(e0.target)`
and fails. It does not depend on production full-validator correctness. Full
child read corroborates the same state with `STATE_INVALID: E#e0: constraint
positive is violated`. If commit had refused, the test explicitly required
unchanged parent; it did not hide an actual refusal as a semantic counterexample.

The complete dependency classifier rejects the nonlocal `exists` dependency;
ineligible ordinary validation produces no Pending child certificate. The
omission is the ordinary/fallback bound/new entity checker, shared with existing
evaluation/replay, failing to discharge an unchanged nonlocal child obligation.
015 compatibility with prior ordinary outcomes cannot override complete committed
state validity. Parent full validation is not full child validation.

**Disposition: accept F-INCREMENTAL-001 as S0 / High.** G3 and ordinary transition
valid-state semantics are concretely violated by a legal admitted action and
successful commit. High is justified by durable invalid authoritative state.
No new legal false PROVEN result, false child certificate, cryptographic failure
or arbitrary lying Backend is demonstrated; do not reclassify as S2 or blame the
correct conservative locality classifier.

Recommended correction remains a separately reviewed smallest resulting-state
obligation fix, with refusal phase/category, historical/versioning and performance
consequences assessed. Full/incremental equality and replay of the same flawed
ordinary computation cannot independently prove G3. The audit applies no repair
and does not infer universal correctness of every optimized derivative from
this counterexample or its scoped differential suite.
