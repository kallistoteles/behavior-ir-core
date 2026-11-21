# Source review of the unexecuted parametric conservation checker

Status: static review only. Reviewed the newly permitted [NativeParametricConservation.lean][C1], the previously permitted pinned Lean 4.36.0-rc2 API sources, and newly permitted `Lean/Util/CollectAxioms.lean`. No Lean execution, diagnostics, compilation, tests, binary/IR/environment inspection, fixes, or existing selected/private-file writes occurred. This new review note is the only write. The guard-captured conservation source remains unchanged. Native proof remains **unestablished**; no native admission or change to the existing strict-three-foundation audit is claimed.

## Syntax findings and their evidence limit

1. **The `require` body is missing a `do` introducer before its `unless` statement** at lines 25–26: it is written `: TermElabM Unit :=` followed directly by `unless condition do reject reason`. `unless ... do ...` is Lean do-notation; the intended helper body needs a do block. This is a source-level syntax finding, not an observed compiler error. The reviewed API sources use do notation, but the owning parser definitions are outside the authorized read set, so this review does not claim parser-source confirmation or a tested diagnosis. [checker:25–26][C25]
2. **The bare helper name `prefix` deserves parser-source confirmation** at its declaration and uses, because `prefix` is also Lean's notation-command spelling. Its declaration is `private def prefix ...`, without escaping. Do not present this as a confirmed API/type error from the authorized sources: those files do not establish whether the relevant syntax is reserved or contextual in this pinned parser. Renaming or escaping it would avoid the ambiguity, but no fix was made here. [checker:91–95][C91], [checker:111–119][C111]

No definite wrong `ConstantInfo` accessor, constructor metadata field, `mkApp2` arity, `inferType` result type, or `isDefEq` result type was found in the source portions whose signatures are directly established by the authorized SDK files. The command elaboration plumbing and general imported collection/syntax APIs are not all defined in that allowed source set; this is not a claim that the complete file parses or typechecks.

## What the typed checks actually establish if they execute successfully

The generic comparison uses two fresh locals `J,I : Type`, applies the new function with `mkApp2`, compares its inferred type with `tau(oldFn.type)`, and compares the applied value with `tau(oldFn.value)`. This is the correct direction for a prospective definitional correspondence check; it avoids stripping or guessing how the new function's implicit binders are represented. `withLocalDeclD` creates explicit local declarations, which does not conflict with applying a constant whose own leading parameters are implicit: `mkApp2` builds the elaborated application directly. [checker:129–133][C129], [Expr:709–712][X709], [Meta.Basic:2003–2017][M2003], [Meta.Basic:1042][M1042], [Meta.Basic:2723–2724][M2723]

All five ordered constructors are covered. The code checks exact constructor-name lists; old/new family parameter counts `0 → 2`; zero indices; singleton mutual groups; no nested/recursive/reflexive family; safety; empty universe-parameter lists; constructor owner `induct`; actual position field **`cidx`**; one payload field; and the full inferred type of each new constructor after `J,I` application against the translated original constructor type. These field names and meanings agree with the pinned `InductiveVal`/`ConstructorVal` structures. `value? true` correctly requests an original function value with opaque access enabled, and both functions are additionally required to be safe, nonpartial definitions. [checker:104–142][C104], [Declaration:239–323][D239], [Declaration:443–487][D443]

The translation recursively preserves applications, lambda/forall domain and body expressions, binder annotations, let type/value/body and `nondep`, metadata and its expression, and literals/sorts/bound variables by leaving other nodes unchanged. It inserts fresh `J,I` fvars rather than manually shifted bound variables. Original free/metavariable nodes are rejected. The direct projection-owner check rejects the three explicitly affected names; other projection owners are checked through the shared-dependency traversal before reuse. [checker:64–89][C64], [Expr:298–469][X298]

This translation is deliberately narrow: it maps only the error type and its five constructors, plus the two carriers. It does not map recursors, matchers, no-confusion declarations, or arbitrary carrier-dependent helpers. Such a direct dependency should be rejected by the independent shared-dependency carrier check if its closure reaches either carrier, including through the error family's other constructors. That is a fail-closed limitation for this selected function; it is not support for whole-family auxiliary parameterization. [checker:70–74][C70], [checker:121–126][C121]

## Independent dependency traversal and CollectAxioms

The custom `references` traversal includes both explicit `.const` references and the name stored in `.proj`; it traverses binder domains and bodies and every let type/value/body. `deepAxioms` looks up each reached declaration in the nonexporting environment, traverses `info.type`, traverses `info.value? true`, and adds:

- all inductive mutual-family members and constructors;
- each constructor's owner;
- each recursor's family names, every rule constructor, and every rule RHS.

It rejects missing declarations and exhausted traversal fuel. The global visited-name set prevents family cycles while the pending worklist still visits every newly discovered reference. This is direct source traversal, without using imported axiom-cache summaries. The declared recursor rule fields are exactly `ctor`, `nfields`, and `rhs`; the checker uses `ctor` and `rhs` correctly for dependency collection. [checker:28–62][C28], [Declaration:325–359][D325], [Environment:974–986][E974]

The newly allowed source confirms the public API:

```lean
Lean.collectAxioms [Monad m] [MonadEnv m]
    (constName : Name) : m (Array Name)
```

Its implementation chooses the nonexporting environment and uses imported precomputed summaries when available. Its fallback explicitly visits recursor **types only**, whereas the custom checker visits their rule RHSs too. It also treats missing lookups as no contribution, whereas this checker rejects them. The imported `Lean.Util.CollectAxioms` module is not called by this file, so its cache behavior does not silently replace the custom dependency check. [CollectAxioms:35–75][A35], [CollectAxioms:126–177][A126]

The source checks that every axiom in the new function's custom closure belongs to the existing three-name allowance; it does not require all three to occur, which is appropriate for an allowed-set policy. The JSON list is a report of this executor-side check. It is not a substitute for the separate fresh kernel acceptance and unchanged independent theorem audit that the parent workflow says will additionally run. [checker:21][C21], [checker:127–149][C127]

## Concrete acceptance gaps and limits of preservation

**The family result sort is not directly validated.** `prefix newInfo.type .default` checks only the first two forall domains and their annotations; it ignores the type after those two binders. Thus this source predicate does not itself assert `newType J I : Type` or that exactly the intended family type follows the prefix. Constructor checks compare against the original type after mapping its result to that same new family, rather than separately comparing `inferType (newType J I)` with `Type`. Fresh welltyped-function/kernel checks can rule out many incompatible sorts indirectly, but that does not turn this local predicate into an explicit exact-family-sort check. This is a completeness gap in the checker, not a demonstrated accepted counterexample for the frozen generated subject. [checker:91–95][C91], [checker:111][C111], [checker:139–142][C139]

**The old payload schema is input-relative.** Exact names, order and one-field counts are independently checked, and new constructor types are compared with translated old types. The checker does not separately assert that the original `InvalidInput`, `Prerequisite`, `Library`, `Json`, and `Io` payload types are respectively `String`, `Str`, `String`, and the two frozen carriers. That may be supplied by separately frozen actual-source identity and its schema check. This file alone establishes a relationship to whatever old declarations it finds; it is not a source-binding certificate. [checker:112][C112], [checker:135–142][C135]

**`inferType` is not full term checking.** The pinned `Meta.Basic` source explicitly demonstrates ill-typed applications and ill-typed lets whose inferred types can nevertheless be returned. The present function/constructor comparisons therefore rely on separate fresh compilation and independent kernel validation of the new root dependencies, as stated in the workflow. `Kernel.check` and `Kernel.isDefEq` are separately declared APIs, but this file does not call them. This is a scope distinction, not a claim that the planned external kernel step is missing. [Meta.Basic:998–1042][M998], [Environment:3155–3185][E3155]

**Definitional equality preserves typed meaning at its comparison boundary, not exact operational syntax.** The two `isDefEq` calls can accept beta/delta/zeta-equivalent terms; unused lets or reducible changes may disappear. Proof irrelevance can also hide proof-term differences. The recursive transformer preserves the original syntax while constructing its expectation, but the actual candidate is compared to that expectation only by definitional equality. Consequently a successful report supports the stated typed substitution correspondence, not a byte-preserving or strict expression-skeleton claim. An extra syntactic checker would also need to compare binder annotations explicitly: `BEq Expr` uses `Expr.eqv`, whose documentation says annotations are ignored. [checker:132–133][C132], [Meta.Basic:2711–2724][M2711], [Expr:801–811][X801]

**Metavariable control is implicit in the environment boundary.** `translate` rejects expression metavariables occurring as nodes, but unchanged constant universe lists and sort levels are not explicitly checked for level metavariables, and the code does not wrap comparison in a selected transparency mode or fresh metavariable depth. `isDefEq` can assign metavariables. Already kernel-accepted original/new declarations should provide the closed, metavariable-free input boundary; if that assumption is relaxed, explicit `hasMVar` checks (including local types) and comparison-state controls are required. This is not evidence of an actual metavariable in the frozen subject. [checker:64–84][C64], [Meta.Basic:2186–2212][M2186], [Meta.Basic:2711–2724][M2711], [Expr:546–569][X546]

**Recursor rule dependency collection is not recursor preservation.** The code reads RHSs to find axioms but does not validate a translated recursor type, counts, reduction rules, or an explicit old/new auxiliary bijection. Its JSON scope correctly says constructor/function substitution only. The permitted metadata source still does not specify a convention justifying a guessed formula such as `newRule.rhs = λ J I, tau(oldRule.rhs)`. No such formula should be added without a separately justified expected-family reconstruction. [checker:57–60][C57], [checker:148][C148], [Declaration:325–387][D325]

The checker neither constructs the original-specialization transport between nominally distinct error inductives nor establishes all-input `Result` transport, actual Rust error representation, native refinement, or feature acceptance. Its source comment and JSON preserve this limit. No source fix or verification claim is made by this review. [checker:8–9][C8], [checker:148–149][C148]

[C1]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:1
[C8]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:8
[C21]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:21
[C25]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:25
[C28]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:28
[C57]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:57
[C64]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:64
[C70]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:70
[C91]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:91
[C104]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:104
[C111]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:111
[C112]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:112
[C121]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:121
[C127]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:127
[C129]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:129
[C132]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:132
[C135]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:135
[C139]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:139
[C148]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:148
[D239]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:239
[D325]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:325
[D443]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:443
[X298]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:298
[X546]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:546
[X709]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:709
[X801]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:801
[E974]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:974
[E3155]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:3155
[M998]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:998
[M1042]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:1042
[M2003]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2003
[M2186]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2186
[M2711]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2711
[M2723]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2723
[A35]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Util/CollectAxioms.lean:35
[A126]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Util/CollectAxioms.lean:126
