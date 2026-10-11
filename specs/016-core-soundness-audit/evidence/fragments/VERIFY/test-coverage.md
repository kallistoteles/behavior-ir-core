# VERIFY test coverage and execution requests

Baseline: `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Source inspection uses
`/tmp/behavior-core-016.3fbz3jon/baseline`. The source manifest and actual
environment are coordinator-owned. B1 now reconciles scope; E-COORD-009/012–016
establishes actual collected/default-executed cases with ignored cases separate.

| Semantic scope | Baseline integration target / decisive cases | Comparator and limitations |
| --- | --- | --- |
| Aliased read entities / projection member aliases | `behavior-verify --test soundness_regressions`, `repeated_read_bindings_do_not_inflate_the_entity_universe`, `a_projected_member_may_be_the_same_entity_as_a_bound_read_parameter` | A legal concrete singleton universe fails at runtime; verification must not claim `verified`. Runtime evaluator is the confirmation comparator, so tests exercise correspondence rather than independently prove evaluator semantics. |
| Exact representation children / bounds | `soundness_regressions`: rescale, parameter-free read, Boolean parent, nested wrap, heterogeneous denominator fold, i64 minimum, unbounded fold | Runtime concrete errors plus static complete bounds. Some assertions allow conservative admission refusal; this is not false proof. Representation safety is separate from value-level division/range predicates. |
| Filter reachability / false final membership | `--test read_soundness`: all six cases, including difference, nested false base, input-entity invariant and authenticated proof | Counterexamples actually evaluate failing filters; no own-success membership premise. Nested false base allows safe path. Authenticated check compares manifest/report bindings as well as outcomes. |
| Guard and payload activation / ordering | `--test command_safety`: all twelve collected cases | False guard skips payload; guard failure remains active; nested exact bounds and canonical earlier failure are challenged. Runtime confirmation shares evaluator, and authenticated site enumeration shares encoder; complete arithmetic proof remains an open composition obligation. |
| Relational summaries | `--test queries`: expected outcomes, reproduced query facts, no proof outside model, uniqueness under disjunction | Proof summaries are unbounded; three witness slots only aid SAT reconstruction. Precision limitations remain `INCONCLUSIVE`, not unsoundness. |
| Reads | `--test reads`, `--test read_soundness` | Declared value/projection bodies plus record confirmation; ad-hoc reads are evaluated but have no declared-read proof contract. Current and legacy admission domains must remain distinct. |
| Postconditions / errors | `--test errors_and_posts`, `--test preservation` | Fixture classifications and evaluator-replayed witnesses. A confirmed business refusal differs from arithmetic failure. |
| Fixed-scale / exact closure | `--test fixed_scale`, `--test closure`, `--test encode` | Grid, range, rescale and exact ratio checks. Expected Z3 decisions are regression evidence under actual recorded version, not a theorem of all symbolic formulas. |
| Lifecycle / freshness / references | `--test lifecycle`, `--test preservation` | Used identities explicit historical facts; removal witnesses include unbound referrers. All valid histories are not exhaustively generated. |
| Unified binding / invocation | `--test invocation_bindings` | Equivalent resolved canonical parameters produce corresponding obligation classes. Host transport decoding separately challenged by TRUST. |
| Migration | `--test migration` | Transform witnesses are replayed with `transform_one`; requirements and target constraints plus intentionally inconclusive whole-state changes. Local witnesses alone do not establish whole-state validity. |
| Warning semantics | `--test warnings` | Dead/redundant/vacuous checks are warning properties. SAT hides warning conservatively, rather than establishing a safety counterexample. |
| Current trusted proof / manifest / cache separation | `--test trusted_verification`, `--test command_safety`, `--test trusted_governance`, `--test cache` | Fresh authenticated path uses canonical admitted subject and no development cache; raw cache semantics are a distinct trust level. Signing key/solver correctness remain external assumptions. |
| Solver operational boundary | `--test solver`, `--test trusted_verification` | Deterministic resource budget versus wall-clock/process failure; no current authenticated artifact on operational abort. |
| Runtime guarantees used by proofs | Core `--test read_soundness`; Store `--test behavior_validity`, `--test read_soundness` | Current full behavior-valid snapshot/domain before body, input/context constraints but no state invariants on those arguments; replay v1 intentionally historical. |

## Serialized requests

Sent to COORD: full targets `soundness_regressions`, `read_soundness`,
`command_safety`, `queries`, `migration`, `invocation_bindings`,
`errors_and_posts`, `fixed_scale`, `closure`, `preservation`, `warnings`,
`reads`, plus the runtime validity targets. COORD owns heavy execution and
actual collection/count/log custody. No VERIFY compilation has been launched.

## Actual execution and limits

E-COORD-009 is the successful unchanged-baseline pinned canonical gate run.
E-COORD-012/013 lists ordinary/ignored workspace cases; E-COORD-016
(`../../test-collection.json`) crossmatches each target group/name to the full
default gate selection. Workspace793 collected,24 ignored,769 executed;
external consumer33 executed,0 ignored. Quiet test output gives group results,
not individual names; the reconciliation records that limitation. No solver
skip is recorded. No ignored case is counted as a pass.

All ordinary cases in the requested targets executed successfully. Decisive
verify groups include soundness_regressions9, read_soundness6, command_safety12,
queries4, migration4, trusted_verification21 and trusted_governance23. Core
read_soundness14 and Store behavior_validity8/read_soundness3 provide scoped
runtime premise evidence. The named poisoning regression is among the21 actual
trusted_verification cases; supplemental named confirmation is separate.

This supports O-VERIFY-010's selected corpus and individual source arguments.
O001/O004/O005 universal simulation/activation/embedding remain not yet
established. Canonical green tests do not erase E-INCREMENTAL-002's independent
ordinary child-validity counterexample; no legal false PROVEN is inferred from
that G3 omission. Existing historical logs were not substituted for 016 runs.
