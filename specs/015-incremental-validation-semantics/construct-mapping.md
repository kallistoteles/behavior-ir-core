# Internal Operator Inventory: Verified Incremental Validation

**Status**: Phase 1 coverage/proof inventory. Ordinary evaluator semantics remain
authoritative; this is neither a new semantic layer nor an admission prerequisite.
The inventory is inherited from the prototype and must remain collected/tested
when moved to private test machinery. Revised private-model tests are collected and pass, including the final canonical gate; see [evidence](evidence.md).

The current ExprKind, QueryKind, SetOp and FoldOp families are covered below.
Parameters such as comparison/arithmetic operation, rounding mode and strict/total
mapping retain their current ordinary semantics and test coverage. No scalar
operator acquires an optimized runtime derivative in this first delivery.

D means the generic internal comparison model
`diff(f(x), f(apply(x, dx)))` for complete canonical semantic inputs and outcomes,
including evaluation errors. R is its reference-definition argument. M is the
conditional unchanged-row locality argument in [correctness.md](correctness.md),
applicable only when the whole module/transition passes the conservative guard.
J is the synthesized-Ref no-removal membership argument, not a general join engine.
Changed rows always execute the ordinary evaluator. These are scoped written
arguments, not machine-checked proofs or proof that prototype tests cover the
revised implementation. Backend execution traces are outside the model.

| Operator | Mathematical object | Full semantics | Reference model | Planned row reuse | Argument scope |
| --- | --- | --- | --- | --- | --- |
| Lit | Constant result | Ordinary evaluator | D | Whole-row locality | R, M |
| Field | Scoped projection | Ordinary evaluator | D | Whole-row locality | R, M |
| Param | Scoped projection | Ordinary evaluator | D | Whole-row locality | R, M |
| DerivedRef | Resolved function application | Profile-aware ordinary evaluator | D | Whole-row locality when whole closure is local | R, M |
| Cmp (6 comparisons) | Typed predicate | Ordinary evaluator | D | Whole-row locality | R, M |
| Arith (4 operations) | Checked scalar result | Ordinary evaluator | D | Whole-row locality | R, M |
| And | Ordered lazy result | Ordinary evaluator | D | Whole-row locality | R, M |
| Or | Ordered lazy result | Ordinary evaluator | D | Whole-row locality | R, M |
| Not | Predicate function | Ordinary evaluator | D | Whole-row locality | R, M |
| In | Typed membership predicate | Ordinary evaluator | D | Whole-row locality | R, M |
| IsNone | Option discriminator | Ordinary evaluator | D | Whole-row locality | R, M |
| IsSome | Option discriminator | Ordinary evaluator | D | Whole-row locality | R, M |
| ValueOr | Lazy default function | Ordinary evaluator | D | Whole-row locality | R, M |
| Some | Option constructor | Ordinary evaluator | D | Whole-row locality | R, M |
| ToDecimal | Exact conversion | Ordinary evaluator | D | Whole-row locality | R, M |
| Wrap | Nominal conversion | Ordinary evaluator | D | Whole-row locality | R, M |
| Unwrap | Nominal projection | Ordinary evaluator | D | Whole-row locality | R, M |
| Rescale (6 modes) | Explicit bounded rounding | Ordinary evaluator | D | Whole-row locality | R, M |
| Exists | Typed live-key predicate | Ordinary evaluator | D | Synthesized Ref only | R, J |
| Referenced | Incoming-edge support predicate | Ordinary evaluator | D | Reference | R |
| Count | Checked set cardinality | Ordinary evaluator | D | Reference | R |
| Select | Typed key set | Query evaluator | D | Reference | R |
| Where | Guarded set selection | Query evaluator | D | Reference | R |
| Union | Eager set union | Query evaluator | D | Reference | R |
| Intersection | Eager set intersection | Query evaluator | D | Reference | R |
| Difference | Eager set difference | Query evaluator | D | Reference | R |
| Any | Ordered existential/error result | Fold evaluator | D | Reference | R |
| All | Ordered universal/error result | Fold evaluator | D | Reference | R |
| Sum | Ordered checked aggregate | Fold evaluator | D | Reference | R |
| Min | Optional ordered extremum | Fold evaluator | D | Reference | R |
| Max | Optional ordered extremum | Fold evaluator | D | Reference | R |
| Unique | Ordered encoded-key predicate | Fold evaluator | D | Reference | R |
| StrictUnwrap | Partial option function | Migration evaluator | D | Reference | R |
| EnumMap (total/strict) | Partial enumeration function | Migration evaluator | D | Reference | R |


## Reference authority and dependency roots

The full definitions are [eval.rs](../../crates/behavior-core/src/eval.rs),
[exact.rs](../../crates/behavior-core/src/exact.rs),
[decimal.rs](../../crates/behavior-core/src/decimal.rs) and their existing admission
rules. Full snapshot validation covers decoding/key identity, constraints,
invariants, synthesized references and globals in canonical order. Decode failure
suppresses that row's rules; identity mismatch does not. Constraints precede
invariants and preserve their individual name order and active evaluation errors.

Transitive derived resolution must match the selected profile and actual/formal
bindings. Expr.children alone does not follow a DerivedRef body. Query captures,
Exists/Referenced, aggregates and unknown dependencies make ordinary validation
roots ineligible for the first optimized path. Unused derived definitions are not
roots. Only exact synthesized Ref constraints get the distinct membership proof;
an arbitrary Exists expression never inherits it.

## Reference-only semantics remain supported

Queries keep canonical identity/set membership and existing captured environments.
Folds keep ordered checked arithmetic, first active errors, short-circuiting,
optional empty extrema and uniqueness semantics. Recompute them ordinarily;
there are no maintained group counts, aggregate summaries, signed tuple deltas,
joins/anti-joins or generic delta dataflow nodes in this design. Migration-only
operators retain their existing scopes and rebuild validity through reference
behavior. No new construct is supported or rejected by admission because of 015.

## Independent obligations

Historical ever_used is not live membership. Bindings/input/context, pre/postconditions,
record rederivation, governed evidence/authorization, revisions and observed facts,
content/state/record hashes, CAS, migration and replay remain under their existing
contracts. A validation cache does not discharge them.

Current record profiles that require complete replay universes retain those scans
and bytes. Bulk transport, incremental query execution and optimized removals are
separate proposals. See [plan.md](plan.md) and [quickstart.md](quickstart.md) for
actual first-delivery scope and the missing independent full-candidate evidence.

## Revised implementation evidence

Private `behavior-core/src/incremental_proof/{delta,operator_inventory}.rs` is registered only under cfg(test). Its four collected tests exercise all 34 operator families, complete Result transitions/composition and checked numeric prefix overflow against ordinary eval_in. Store closure tests cover transitive aliases, every lazy branch, unused nonlocal definitions, both admitted profiles, profile-specific hash/name selection, unbound arguments, arity and cycle refusal. Local reuse omits unchanged rows; no scalar/query derivative is optimized.
