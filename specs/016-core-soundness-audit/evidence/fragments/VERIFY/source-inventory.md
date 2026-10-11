# VERIFY source and assumption inventory

E-VERIFY-001 — inspection-only evidence, 2026-10-10. Baseline
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`; no overlay. Command method:
`rg --files crates/behavior-verify/src crates/behavior-verify/tests docs`,
`rg -n` public/check/encoder declarations, and line-addressed source reads.
Execution fields are not applicable to this source argument. Actual versions,
lock hashes and complete source hashes are in COORD baseline/environment files.

The entire first-party verifier source consists of `lib.rs`, `checks.rs`,
`encode.rs`, `encode/relational.rs`, `reads.rs`, `migration.rs`, `confirm.rs`,
`solver.rs`, `smt.rs`, `cache.rs`, `hashing.rs`, `governance.rs`,
`governance/trusted.rs` and `governance/semantic_proof.rs`. No separate IVM or
abstract-expression runtime is present.

Declared checks: dead_action, evaluation_error, postcondition, preservation,
redundant_precondition, always_true, always_false; preservation also emits
referential_integrity. Migration emits migration_narrowing,
migration_constraint, module_invariant and requirement error sites. Error
obligations classify division_by_zero, numeric_overflow and narrowing;
unencodable representation/domain sites are explicitly inconclusive.

Operator subforms examined: Lit, Field, Param, DerivedRef; all six comparisons;
Add/Sub/Mul integer/fixed-scale/exact and Div exact; ordered short-circuit
And/Or, Not, In; Option tests/coalescing/construction; ToDecimal, Wrap,
Unwrap, Rescale six rounding modes; StrictUnwrap and EnumMap migration forms;
Count and Any/All/Sum/Min/Max/Unique folds; Exists and Referenced. Query kinds:
Select, Where, Union, Intersection, Difference. Module graph/admission and
runtime input domains remain MODEL-owned premises, awaiting B1 reconciliation.

## Distinct guarantees, not one blanket proof

1. Type/sort/range/grid and nested representation safety derive from admission
   and value decoding; unsupported complete bounds refuse certification.
2. State action parameters of the same type must be distinct; read aliases may
   coincide and count once, with equal identity implying equal entity content.
3. Current Wire 0.8 full snapshot validity precedes body execution. Legacy
   plain reads do not establish entity validity; fresh read proofs accordingly
   assume only typed domain. Store strengthens selected invocation premises.
4. Used identities are historical facts, not live StateId membership.
5. Relational proof summaries are unbounded UFs. Three member slots and nice
   values belong only to counterexample search. Free error flags preserve a
   conservative overapproximation of unknown membership/partial-fold errors.
6. Action path assumptions require each earlier condition/no-error. Command
   payload obligations include true guard; commands use pre-state bindings.
7. Migration local proof premises are source validity and requirements, both
   runtime checks; conservative whole-state proofs require carried refs/copied
   invariant fields.
8. Solver UNSAT becomes PROVEN, SAT must confirm a legal evaluator failure;
   unknown or unconfirmed SAT becomes INCONCLUSIVE. Warning witnesses have a
   different nonblocking interpretation.
9. Fresh authenticated proofs derive an exact semantic-site manifest, use no
   development cache and require current verifier0.8.0 / Z3 4.16.0. Archived
   verifier0.7.0 envelopes remain decodable, not automatically current proof.

## Pre-B1 lead

COORD F-COORD-011: public `accepted_wire_ir` in core `lib.rs:58` lists0.1–0.8
while actual decoder `wire.rs:1016` accepts0.4–0.8 and rejects0.1–0.3. Existing
`versions` and CLI `cli_engine_info` tests assert advertised lists;
`compat_003` covers frozen/migrated hashes and serialization, not decoder refusal.
COORD's E-COORD-011 baseline CLI run separately reproduces advertised 0.1–0.3
admission refusal. The existing source targets remain version-scope coverage.
This metadata discrepancy does not by itself establish verifier
unsoundness or justify reintroducing old rounded arithmetic. Recommended
classification after review: S5/Medium capability metadata mismatch, with
historical `wire_ir` compatibility list considered separately.
