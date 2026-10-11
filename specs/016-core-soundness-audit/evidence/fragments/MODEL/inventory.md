# MODEL source and subform inventory

Baseline: `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Source review is E-MODEL-001;
no build or test execution is implied by this inventory. The report's C-MODEL IDs
are stable families; suffixes below identify exhaustive subforms, not new runtime IDs.

## Closed algebra source coverage

| Source | Actual closed forms | Accounted denominator |
| --- | --- | --- |
| `semantic/types.rs:123` | Bool, Int, Decimal, String, Option, Enum, Nominal, Exact, Id, Entity | 10 Type variants |
| `semantic/types.rs:51,98,200` | Prim Bool/Int/Decimal/String; Unit Dimensionless/Nominal; Conv Keep/ToDecimal/Some | 4 primitive bases, 2 exact units, 3 conversions |
| `semantic/types.rs:206,216` | Eq/Ne/Lt/Le/Gt/Ge; Add/Sub/Mul/Div | 6 comparisons, 4 arithmetic operators |
| `semantic/types.rs:226` | Cmp, Arith, And, Or, Not, In, IsNone, IsSome, ValueOr, Some, ToDecimal, Wrap, Unwrap | 13 typing-signature families, expanded by comparisons/arithmetic |
| `semantic/value.rs:15` | Bool, Int, Dec, Str, None, Entity, Exact | 7 implementation value variants; nominal/enum/id meaning remains type-indexed |
| `semantic/expr.rs:12` | Lit, Field, Param, DerivedRef, Cmp, Arith, And, Or, Not, In, IsNone, IsSome, ValueOr, Some, ToDecimal, Wrap, Unwrap, Rescale, Exists, Referenced, Count, Fold, StrictUnwrap, EnumMap | 24 expression families |
| `semantic/expr.rs:77,103,125` | Fold Any/All/Sum/Min/Max/Unique; Set Union/Intersection/Difference; Query Select/Where/Set | 6 fold subforms, 3 set subforms, 3 query families (5 expanded query operators) |
| `exact.rs:22` | HalfEven, HalfUp, Down, Up, Floor, Ceiling | 6 rounding modes |
| `semantic/expr.rs:61` | EnumMap strict=false/true; StrictUnwrap migration-only | 2 mapping modes, plus narrowing unwrap |
| `semantic/module.rs:14,47` | Enum/Nominal/Entity/Derived/Invariant/Action/Constraint/Read/Command; Read/State/Input/Context | 9 name-table kinds, 4 parameter roles |
| `wire.rs:65` | DerivedKind Derived/Rule | 2 derived declaration roles |
| `semantic/module.rs:267,286,316` | update cell, create complete entity, remove bound entity | 3 state-effect forms |
| `semantic/module.rs:441,460,508` | Item Field/Derived; Over Query/Param; ReadBody Value/Project | 2 projection items, 2 projection sources, 2 read bodies |
| `semantic/types.rs:16` | Legacy, CommandIntents | 2 runtime semantic profiles; transport format is a different axis |
| `facts.rs:104` | existence, identities, references, queries, fields, universe | 6 fact sections; universe complete supplied input, other sections partial observations |
| `facts.rs:42` | exists, used, incoming, query, field, entity | 6 provider questions, all snapshot-bound; entity transport may service field observations |
| `migration/mod.rs:76` | Copy, Expr | 2 migration field sources; retirement is a separate type-level transformation |
| `wire.rs:332` | Lit/Field/Param/Derived/Op/In/Wrap/Rescale/Select/Lambda/StrictUnwrap/EnumMap | 12 Wire expression families; admission resolves into above semantic algebra |
| `wire.rs:260,294` | 25 OpName variants; 7 LambdaOp variants | 25 ordinary Wire operator tokens and 7 lambda tokens (Where + six folds) |

Expanding the semantic expression families by Cmp (6), Arith (4), Fold (6),
Rescale (6) and EnumMap (2) gives **43 expression subforms**, plus **5 query
operators**. This count intentionally does not pretend to exhaust type/domain,
role, profile or error combinations. Literal payloads are classified by all 10
Type forms, with exact/entity input exclusions. Fold/domain admission restrictions
and profile-specific observation/error rules are separate inventory axes.

## Non-algebra and cross-component families

C-MODEL-001–060 in `semantic-model.md` account for scalars, nominal identities,
expressions/predicates, declarations, schemas, state/lifetimes, historical facts,
queries, effects/deltas/actions, reads/projections, invocation, commands,
canonical identity, persistence/replay, governance/verification and private reuse.
Public facade/CLI symbols, identity domain details, record/profile dispatch and
mutation boundaries are reconciled from COORD/PERSIST/IDENTITY/VERIFY/TRUST;
this inventory does not use an implementation source-file count as semantic coverage.

## Source/authority limitations

The old feature-001 engine API and old Python contracts are historical sources,
not today's supported Rust facade. `PRINCIPLES.md` provides reference meaning;
versioned feature contracts refine exact domains and evidence profiles.
All code-invariant claims are conditional on successful admission/decoding and
conforming providers. No complete formal global proof is asserted.
