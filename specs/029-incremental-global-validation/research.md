# Research: incremental validation with global rules

**Date:** 2026-10-25. **Status:** planning research; source inspection and existing
reproduction evidence, not a completed implementation or capacity measurement.

## R1 — Explain the complete path before selecting an optimization

**Decision:** Extend the existing incremental-validation implementation, but include
Core evaluation and commit reproduction in the design. A Store-only eligibility
change is insufficient.

**Evidence:** The released baseline is Core 0.15.0 at
`6b93898a9375113f7a8946f23ab5535319b6f5d6`; the planning checkout is the subsequent
release merge `aff31ddda163e343be616cb378388e464b90933b`. Record both revisions in
measurements and verify source equivalence rather than conflating their identities.
The neutral Gap 008 reproduction establishes post-commit enumeration at populations
1, 16, 128 and 512 when a global invariant is present. Its same-head and fixed-state
history controls narrow the mechanism; its timings do not establish whole-cycle
capacity. Its `count(Target) >= 0` is tautological and does not meet this feature's
affected-global acceptance criterion. Import minimal neutral fixtures into this
repository during implementation; do not add a runtime/build dependency on the
separate ecosystem research directory or a private application.

Source inspection identifies these distinct costs:

| Stage | Current implementation | Consequence |
|---|---|---|
| Parent validity | `crates/behavior-store/src/store.rs`: `validate_snapshot`, `validate_snapshot_full` | Cache misses enumerate and validate the complete snapshot. |
| Promotion eligibility | `store/incremental/dependency.rs`: `local_module` | Any global invariant disables the existing incremental path. |
| In-memory provider | `store.rs`: `SeedFacts::query`; `crates/behavior-core/src/eval.rs`: `provider_snapshot` | Complete cached values are scanned, copied and decoded even without Backend reads. |
| Core parent checks | `eval.rs`: `validate_complete_snapshot`, `validate_snapshot_bindings` | Exact-parent validity is checked again. |
| Core child checks | `eval.rs`: `complete_child`, `run_complete_child_rules` | Unchanged rows are reconstructed and their rules reevaluated. |
| Commit reproduction | `store.rs`: `rederive_for`; `crates/behavior-core/src/record.rs`: reproduction | Execution and complete-record comparison run again. |
| Evidence and publication | `eval.rs`: universe/trace output; Store/Backend event hashing and cloning | Current records require complete evidence; their cost survives a validation optimization. |
| Next request | `store.rs`: snapshot identity; `memory.rs`: record lookup | Fetching and hashing the preceding event can itself depend on record size. |

**Rationale:** Backend-call counts alone miss repeated decoding, rule evaluation and
copying. Removing `global_invariants().is_empty()` would also be unsound: the current
changed-row `Candidate` cannot supply complete query semantics.

**Alternatives considered:** Cache promotion alone; raising thresholds; disabling
global checks. None meets the complete-path correctness and growth requirements.

## R2 — Select the first affected pattern without changing the language

**Decision:** Target existing admitted expressions equivalent to the explicitly
recognized typed form `count(select(T)) <= K`, with a literal integer bound and no
filter/capture. Support ordinary updates and fresh creations first. Retain existing
row-local rules, synthesized reference checks and no-removal premises. Include
constant global controls and unaffected updates under the nonconstant count rule.

For live typed identities `U_T(S)` and fresh, distinct creations `C_T`, with no
removals:

`U_T(S') = U_T(S) ∪ C_T`, with disjoint union, hence
`|U_T(S')| = |U_T(S)| + |C_T|`.

Updates preserve membership. The count can therefore change while unchanged rows
need no new semantic validation. The bound must permit creation 1000 and refuse
1001 when `K = 1000`. An action's complete admitted effects, not its name or origin,
determine eligibility. Multiple creations, aliases and reference targets require
the existing freshness, typing and simultaneous-state semantics.

**Rationale:** This is a meaningful affected global property with a small proof
surface. Count conversion in `eval.rs` is checked `usize` to `i64`; the design must
preserve representability and error behavior rather than silently substitute
unbounded arithmetic. A derived count is checked data tied to a valid complete
snapshot, never independent authorization.

**Alternatives considered:** Filtered counts, arbitrary aggregates, general query
incrementalization and optimized removals. They require additional dependency,
definedness and correspondence arguments. They remain executable through existing
reference behavior; no previously supported program becomes inadmissible. Mixed
modules may conservatively use reference execution when full coverage is absent.

## R3 — Reuse mathematical work with an explicit correspondence obligation

**Decision:** Reuse Feature 015's conditional row-local and reference-monotonicity
arguments. Extend them with exact membership/count and complete-observation lemmas.
Do not label these written arguments machine-checked or claim end-to-end formal
verification. No new production dependency or proof toolchain is selected.

Existing local authority:

- `specs/015-incremental-validation-semantics/correctness.md` establishes a
  conditional arbitrary-state argument for valid parents, complete row locality,
  updates/creates and no globals/removals.
- Its `construct-mapping.md` identifies ordinary scalar semantics and reference-only
  query families. Its test-only replacement derivative recomputes both complete
  results; it specifies exactness but is not an efficient production algorithm.
- Its `research.md` explicitly distinguishes DBSP's theory from this Rust
  implementation's correspondence obligation.

Existing verified algorithms were checked against primary sources:

| Source | Established contribution | Applicability and decision |
|---|---|---|
| [DBSP paper](https://mihaibudiu.github.io/work/budiu-vldb23.pdf) | Incrementalization theory with machine-checked theorems | Useful algebraic foundation; does not prove Core's errors, ordered traces, identities or backend phases. |
| [DBSP formalization](https://github.com/tchajed/database-stream-processing-theory) | Formal stream, relation and aggregation development | Reference for mathematical laws; no proof or implementation dependency imported. |
| [Certified Graph View Maintenance with Regular Datalog](https://doi.org/10.1017/S1471068418000224) | Coq development of an incremental graph-query engine and its correctness | A verified engine exists for its own language; adapting its language and trusted boundary is disproportionate for this initial count pattern. |

**Rationale:** Reusing a theorem requires establishing its premises and a refinement
mapping to the actual semantics. An algebra over relations does not automatically
cover Core's checked arithmetic, partial expressions, lazy evaluation or normative
validation phases. The simple disjoint-cardinality law is sufficient for the selected
aggregate; the difficult work is exact execution correspondence and complete coverage.

**Alternatives considered:** Embed a general DBSP runtime; port a verified query
engine; require a new Lean formalization of all Core execution. These add substantial
scope without removing the concrete correspondence work. Reconsider only if an
identified mathematical obligation cannot be discharged within the selected design.

## R4 — Core owns reusable semantic evidence

**Decision:** Design an opaque Core-owned prepared-state value whose construction
establishes complete typed state validity. Core derives eligible child evidence from
actual evaluated effects. Store binds that semantic evidence to exact history and
publishes it only after exact successful CAS. Reuse it during evaluation and commit
reproduction, preserving ordinary APIs and records.

The capability must not be constructible from caller assertions, untrusted bundle
fields, a count alone, or a supplied `valid=true`. Core's private fields and checked
constructors establish its content/module/profile binding; Store adds the complete
history/schema identity and continuity checks. A cross-crate Rust interface may be
needed inside the workspace, but it is not a new `behavior-engine` consumer bypass.
Boundary/public-surface checks must verify this distinction.

**Rationale:** There is currently no trusted prepared-state evaluation/reproduction
seam. This is the first feasibility gate, before a large implementation. Preserve
full reference entry points and reconstruct untrusted bundle claims independently
against the exact parent. A producer's proposed changes cannot establish their own
validity. Unknown coverage selects reference execution at the existing phase.

**Alternatives considered:** Trust Store-supplied Boolean flags; trust serialized
cache state; optimize only evaluation while leaving full commit revalidation. The
first two introduce authority without proof; the last fails whole-cycle acceptance.

## R5 — Preserve complete observations, not only valid/invalid

**Decision:** Prove equality of complete observable results at each existing phase.
Separate the snapshot check's ordered accumulated failures from action execution's
fail-fast/skipped-rule traces. Preserve complete universe, query members, derived
values, read facts, commands, canonical records and commit outcomes.

Unchanged successful row results may be reused only with complete dependency and
evidence correspondence. Re-emitting their reference trace/observations can still
take output-sized work; replacing them with an invented "cached true" trace is
forbidden. Malformed changed rows and unsupported expressions must retain ordinary
decode/error activation. Never assume a later check succeeds to justify an earlier
omission, and never add a new pre-CAS refusal merely to simplify cache preparation.

**Rationale:** Record 0.8 carries the complete universe and per-subject observations.
Necessary enumeration/serialization cannot disappear while bytes stay compatible.
Repeated semantic validation, decoding and avoidable copying can be reduced without
claiming constant total transaction cost.

**Alternatives considered:** Compact new records, count-only replacement query facts,
or matching final decisions alone. They change the contract or miss observable errors.

## R6 — Measure and freeze a meaningful whole-cycle acceptance profile

**Decision:** First extend the existing private full-reference comparator and collect
controlled baseline pilots. Freeze numeric budgets, a quantitative growth-related
benefit threshold, resource conditions and workload sizes before final candidate
evaluation. These are required implementation deliverables, not missing user choices.

Use 1, 16, 128 and 512 live entities plus at least two larger populations. Start pilots
at 2048 and 8192; freeze or explicitly amend them using baseline capacity evidence,
never candidate success. Each measured creation run grows one Store continuously.
Use at least three independent sequential repetitions, without competing heavy builds.
Include fixed-population/increasing-history and unrelated-type controls.

The profile must cover immutable released baseline, full-reference strategy and
candidate on identical inputs. Measure preparation/open, evaluate, commit/reproduction,
CAS/publication and final next-evaluation drain. Use nonoverlapping accounting. Count
in-memory rows visited, decodes, rule evaluations, member tests, copies, serialized
and hashed bytes, Backend work and output size. Report residual full-state work.

Separate production-like release timing from instrumented diagnostic work runs. Detailed
counters/tracing must be absent from timed hot paths in the former; the latter explain
work and report their own overhead without establishing latency or speedup acceptance.
Freeze both modes' source/build identities and repetitions, check semantic parity, and
derive numerical timing criteria only from production-like baseline runs. Do not correct
timings by subtracting estimated instrumentation overhead. Complete G3 and the finalized
profile validator's normal gates before the final G4 campaign; code/harness changes require
renewed applicable gate evidence and affected measurements.

**Rationale:** Existing evidence cannot justify a new millisecond budget or percentage.
The acceptance profile must contain actual numbers before the final evaluation;
planning must not manufacture them or let the candidate choose its passing criterion.

**Alternatives considered:** Isolated validation benchmarks, Backend counts alone,
one seeded create, or fixed flat latency. None demonstrates the specified whole-path
growth improvement under unchanged output contracts.

## Evidence classification and remaining work

Source inspection establishes mechanisms; the existing neutral execution establishes
the reported enumeration behavior. The cardinality law and Feature 015 reasoning
are mathematical inputs, not proof of the new code. New complete-observation arguments,
test-first negative controls, baseline pilots and candidate measurements remain required.
Backend completeness, Core interpretation, dependency/effect extraction, implementation
of evidence reuse and publication remain explicit trusted components.

If the prepared-state seam cannot preserve all observations while removing repeated
unchanged-state validation from evaluation and commit, stop at that feasibility gate
and report the exact blocker. A partial cache improvement cannot close Feature 029.
