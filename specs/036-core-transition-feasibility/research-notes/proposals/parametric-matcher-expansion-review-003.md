# Source review of owned-original matcher expansion

Status: source-only static review of the currently permitted [conservation checker][C1], pinned Lean 4.36.0-rc2 `Lean/Meta/Match/MatcherInfo.lean`, `Lean/Util/InstantiateLevelParams.lean`, and the relevant previously permitted declaration/expression/admission APIs. No Lean execution, builds, tests, diagnostics, compiled-environment/binary/IR inspection, implementation edits, or selected/private-file writes occurred. Only this new unselected note was written. Native472's live run and metadata were not inspected. Native proof remains **unestablished** and feature completion remains **false**.

**No concrete new compile/API mismatch was found in the matcher changes.** The source supports a narrow, fail-closed delta expansion of safe owned definitions. This is not an observed compilation result or a proof that the selected matcher metadata/bodies are accessible at runtime.

## Exact matcher and universe APIs

The pinned matcher API is:

```lean
Lean.Meta.getMatcherInfo? [Monad m] [MonadEnv m]
    (declName : Name) : m (Option MatcherInfo)
Lean.Meta.isMatcher [Monad m] [MonadEnv m]
    (declName : Name) : m Bool
```

`isMatcher` returns whether an entry exists in the matcher-info environment extension. The current `require (← Lean.Meta.isMatcher declName) ...` is well-typed against that declaration. It does not require a `MetaM`-only overload or return an `Option`. [MatcherInfo:157–167][MI178], [checker:112][C112]

`Expr.instantiateLevelParams (e : Expr) (paramNames : List Name) (lvls : List Level) : Expr` performs the required universe substitution. It traverses expression constants' level lists and sort levels, replacing named universe parameters in supplied order. The source explicitly says mismatched lists use their shorter length, so the current prior equality check on `info.levelParams.length` and `levels.length` is necessary and correct. The expression-field invocation `value.instantiateLevelParams info.levelParams levels` has the right argument order. [InstantiateLevelParams:15–39][U15], [checker:127–132][C127]

No term-argument instantiation is missing when a constant is replaced by its **whole** universe-instantiated definition value. If the old expression is `matcher.{us} a b`, recursive expansion produces `(instantiatedValue) expandedA expandedB`; existing application nodes still supply the arguments to the copied lambda term. No hand-written beta substitution or matcher parameter/motive/discriminant indexing is needed for this delta expansion. The raw binder bodies retain their internal de Bruijn indices, and inserted definition values are closed at the already checked declaration boundary. [checker:122–142][C122], [Expr:360–421][X360]

This avoids guessing matcher arity or elimination-universe position. `MatcherInfo` does expose `numParams`, `numDiscrs`, `altInfos`, `uElimPos?`, and associated motive/alternative positions, but none needs to be used merely to replace a named constant by its own definition. The entire occurrence-level universe list is substituted instead. [MatcherInfo:50–99][MI50]

## Ownership, safety and closure

The current eligibility rule requires a name of the exact shape `.str oldFunction leaf` with `leaf.startsWith "match_"`, then checks actual matcher metadata, `.defnInfo`, and both `!isUnsafe` and `!isPartial`. Its closure follows references in eligible matcher types and values and adds each eligible name to a visited set. This does not generalize operation axioms or relax the three-foundation policy. `.defnInfo` owns the `value` and `safety` fields, and the two `ConstantInfo` safety predicates reject the unsafe and partial definition categories separately. [checker:97–120][C97], [Declaration:108–122][D108], [Declaration:429–441][D429]

The closure's `64` fuel counts newly accepted eligible names; visited or unowned names are skipped. Unowned dependencies are not silently classified as harmless: after expansion, the existing shared-dependency traversal examines the remaining direct references and rejects either old carrier in their transitive type/value/recursor-rule closure. Thus an unsupported carrier-dependent helper or old error recursor should fail this checker rather than receive an invented mapping. The final new-function foundation audit remains present. [checker:104–120][C104], [checker:168–179][C168], [checker:40–62][C40]

Important limits of that eligibility test:

- Matcher metadata is **not independently sufficient compiler provenance**. The pinned source exports `addMatcherInfo`, which can register a name and `MatcherInfo`; `isMatcher` is an extension lookup. The claim that a candidate is an original compiler-generated helper still depends on the independently frozen original-source/module binding, in addition to exact ownership, metadata, kind and safety checks. [MatcherInfo:138–167][MI160]
- Exact direct-parent ownership does not cover private-name encodings, nested matcher names under another helper, or arbitrary matcher-like auxiliaries. The SDK explicitly distinguishes `isMatcherLike` from actual matcher metadata. Rejecting such a carrier-dependent case is restricted support, not permission to widen the rule by substring or infer a fresh operation model. [checker:99–102][C99], [MatcherInfo:185–199][MI211]
- Matcher metadata visibility can be narrower than declaration-body visibility. The extension's export logic filters entries through the exporting environment and omits private definitions at public/server levels. `isMatcher` and the current `getConstInfo` use the current environment; this research did not inspect actual imported metadata or prove that every selected original helper is visible there. Missing metadata/body information may cause a legitimate rejection. The explicit nonexporting environment used by `deepAxioms` does not itself create missing imported matcher metadata. [MatcherInfo:131–146][MI143], [checker:112–120][C112], [checker:129–132][C127]

## Definitional equality and the certificate

Before translation, the checker compares `rawOriginal` with the matcher-expanded `original` using `Meta.isDefEq`. Replacing accepted safe definition constants with their correctly universe-instantiated values is delta expansion, so that is the appropriate intended definitional relationship. It does not assert syntactic identity, unchanged bytes, branch counts, or a general equivalence between separately declared datatypes. The metalevel comparison's success remains unobserved here. [checker:168–171][C168], [Meta.Basic:2711–2724][M2711]

Only after that expansion does the checker perform carrier substitution, compare `newFunction J I` to `tau(original)`, and generate a theorem using `mkEq`, `mkEqRefl`, forall/lambda abstraction and `addDecl ... (forceExpose := true)`. The certificate's actual declared equation is:

```text
∀ (J I : Type), newFunction J I = tau(expandedOriginalValue, J, I)
```

Its reflexivity value requires the kernel to validate the embedded RHS and convert it to the new function. `mkEq` itself only infers the left operand's type; `addDecl` with kernel checking enabled and the independent fresh kernel pass are the stronger validation boundary. [checker:180–195][C180], [AppBuilder:39–68][A39], [AddDecl:22–33][AD22]

**The raw-to-expanded old-body comparison remains host-side.** This certificate does not separately prove `rawOriginal = expandedOriginal` inside its theorem statement; it proves equality to the translated expanded body. Accordingly exact binding of that expanded body to the frozen original, and correctness of the admitted expansion procedure, remain part of the independent construction/checker obligation. The source makes that step narrow and checks it by `Meta.isDefEq`, but the certificate must not be described as proving an additional original-specialization bridge. No such bridge is newly assumed or established here. [checker:168–171][C168], [checker:187–195][C187]

The previous admission boundaries remain: the `debug.skipKernelTC` option is explicitly rejected; `addDecl` can schedule checking asynchronously and can install a fallback axiom on error before rethrowing; the certificate is submitted before final constructor checks; and the final canonical root must actually use the certificate so the unchanged strict audit/fresh kernel traversal covers its type/value and translated RHS transitively. Certificate-name presence or a JSON marker alone is not acceptance. [checker:145][C145], [checker:193–211][C193], [AddDecl:165–233][AD165]

## Concrete resource/reporting limitations

`expandMatchers` decrements fuel once per recursive path step and passes the same remaining value to sibling branches. Its `4096` bound is therefore a bound on path depth, including unfolding, **not a global bound on node count or total expansion work**. Repeated matcher occurrences can duplicate traversal/work because there is no memoization. A larger term or repeated helper graph can hit heartbeat/stack/work limits despite staying below this path bound. This is a resource limitation, not an axiom-policy change or evidence that this selected function will exceed a limit. [checker:122–142][C122]

The reported `expanded_original_matchers` is the eligible closure set, not an instrumented count/list of expansion events. Some entries may be discovered through another matcher's type and need not occur in the eventual expanded value. Treat the field as the validated matcher-expansion inventory; do not infer per-occurrence expansion counts from it. [checker:117–119][C117], [checker:169–170][C169], [checker:209][C209]

No implementation change is proposed as a confirmed required compile fix by this review. Actual execution, complete source binding, kernel admission, specialization transport, Rust/native correspondence and full feature acceptance remain outside the result established here.

[C1]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:1
[C40]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:40
[C97]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:97
[C99]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:99
[C104]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:104
[C112]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:112
[C117]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:117
[C122]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:122
[C127]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:127
[C145]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:145
[C168]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:168
[C169]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:169
[C180]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:180
[C187]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:187
[C193]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:193
[C209]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:209
[MI50]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Match/MatcherInfo.lean:50
[MI143]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Match/MatcherInfo.lean:131
[MI160]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Match/MatcherInfo.lean:138
[MI178]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Match/MatcherInfo.lean:157
[MI211]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Match/MatcherInfo.lean:185
[U15]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Util/InstantiateLevelParams.lean:15
[D108]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:108
[D429]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:429
[X360]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:360
[M2711]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2711
[A39]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/AppBuilder.lean:39
[AD22]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:22
[AD165]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:165
