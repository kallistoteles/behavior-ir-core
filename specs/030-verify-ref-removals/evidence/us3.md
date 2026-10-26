# US3 / G2 correspondence and uncertainty

Command and raw final results: `g2.txt`, including the verifier library and integration
selectors ref_removals, ref_removals_semantics, resulting_state_order, queries,
query_summary_congruence, query_summary_baseline, solver, facts_witness_compatibility
and facts_witness_schema. The same pinned tools/default budgets as G1 are used.

Earlier `us3-first.txt`/`us3-order-enumeration.txt` record new-test corrections:
an Int effect cannot assign Exact division directly, and skipped trace entries remain
present after refusal. The final partial-effect control uses actual checked Int overflow;
the partial-guard control uses division by zero. `partial-prefix-green.txt` confirms
both controls in both profiles. These were test-shape corrections, not runtime changes.

The independent state oracle exercises 744 required-Ref and 160 optional cases,
plus declaration/type/field/parameter and typed equal-text identity controls. It computes
complete child edges without consulting verifier summaries. Guard refusal is checked
as PRECONDITION_FAILED; a genuinely unsafe unguarded child fails its first synthesized
Ref constraint. A prior postcondition refusal leaves later trace entries skipped. Its
conditional preservation claim may be vacuous; G1's allowed runtime cases remain required.

ResourceLimit (real rlimit=1 and an explicit exhausted solver), empty fabricated SAT
models, unsupported same-type child ordering and rejected Read action roles are distinct
controls. Exhaustion/failed witness construction never produce a proven reference family
or a confirmed counterexample. Successful unrestricted proof controls remain in the
same matrix. No bounded witness-search failure is interpreted as universal validity.

`mutations.md` links six actual production-source premise mutations and exact restored
hashes. Restored source is retested by G2. The class, field, hash and declaration of an
actual Core first Ref failure must all match; a different first failure cannot be
relabelled to fit a desired counterexample. Mutation evidence is implementation sensitivity,
not a universal proof that Rust extraction is correct.

Reviewed mathematical claims and actual symbol mapping are in `../correctness.md` and
`../construct-mapping.md`. The arbitrary-finite argument uses disjoint cardinality
partition and unchanged-row framing, with unrestricted SMT integers. Finite enumeration
and existing formal-library background do not become an end-to-end Lean proof of Core.
Existing nonlocal rules/same-type child schedule limitations are retained explicitly.

G2: 98 tests passed. The first broader run (`g2-schema-red.txt`) found that the
current JSON schemas still allowed verifier versions only through 0.10. They now
explicitly admit 0.11 and its reference_preservation predicate, while requiring that
new predicate's descriptor version to be exactly 0.11. Historical document bytes
were not changed. The same full G2 command then passed (`g2.txt`). This necessary
version-schema integration was pulled forward from US4 to resolve the observed gate.
