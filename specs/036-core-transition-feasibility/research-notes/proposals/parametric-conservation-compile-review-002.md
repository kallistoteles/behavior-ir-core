# Second source review of the prospective conservation checker

Status: source-only review of the currently permitted [NativeParametricConservation.lean][C1], against pinned Lean 4.36.0-rc2 SDK source APIs. No Lean execution, builds, tests, diagnostics, compiled-environment/binary/IR reads, selected/private-file edits, or implementation fixes occurred. This new unselected note is the only write. Actual469's metadata is live; this review does not assert that its compilation succeeds. Native proof remains **unestablished** and feature completion remains **false**.

**No remaining concrete API/type mismatch was found in the specifically requested surfaces.** That conclusion is narrower than successful parsing, elaboration, compilation, theorem admission, or independent fresh kernel checking. The API evidence below replaces guesses about `ConstantInfo`, name sets and monad lifts; the final acceptance limitations remain explicit.

## Confirmed current API uses

| Current use | Pinned source evidence | Assessment |
| --- | --- | --- |
| `info.isUnsafe`, `oldFn.isPartial`, `newFn.isPartial` | `ConstantInfo.isUnsafe : ConstantInfo → Bool`; `ConstantInfo.isPartial : ConstantInfo → Bool` | Both accessors exist. `isUnsafe` tests `.defnInfo` safety against `.unsafe`; `isPartial` tests it against `.partial`. Checking both on the required definition variants is appropriate. |
| `info.type`, `info.levelParams`, `info.value? true` | Declared accessors; `value?` accepts `allowOpaque := false` by default | Correct types/argument order; `true` includes theorem and opaque values. |
| `getConstInfo declarationName` | `[Monad m] [MonadEnv m] [MonadError m] → Name → m ConstantInfo` | Exact API exists; unknown constants throw. |
| `.inductInfo` / `.ctorInfo` pattern matching | `ConstantInfo` variants and metadata structures | Correct, including actual constructor-position field `cidx`, owner `induct`, `numParams`, `numFields`. |
| `NameSet := {}`, `.insert`, `.contains` | `NameSet` is `Std.TreeSet Name Name.quickCmp`; explicit empty/insert/contains definitions and instances | Supported. Insertion returns a new set, as used by the accumulator code. |
| `refs.toArray`, `axioms.toArray` | Pinned `CollectAxioms` itself uses `NameSet.toArray` through the underlying tree-set API | Supported idiom. No fabricated `NameSet.toList` method is used. |
| `liftTermElabM check` | `liftTermElabM (x : TermElabM α) : CommandElabM α` | Correct command-to-term bridge. |
| `MetaM` operations inside `TermElabM`; `liftM (addDecl ...)` | `Command.lean` explicitly documents automatic `MetaM` and `CoreM` lifting into `TermElabM` | No extra hand-written term/core runner is required. |

Sources: [Declaration:429–465][D429], [Declaration:306–320][D306], [MonadEnv:85–89][ME85], [NameMap.Basic:50–60][N50], [CollectAxioms:70–75][CA70], [Command:986–1020][CO986].

The newly inspected `Lean/MonadEnv.lean` also defines `getConstInfoInduct`, `getConstInfoCtor`, and `getConstInfoRec`, each with `[Monad m] [MonadEnv m] [MonadError m]` and results `InductiveVal`, `ConstructorVal`, and `RecursorVal` respectively. The current explicit variant matches are valid; changing to these convenience accessors is unnecessary. Their earlier absence from the narrower seven-file read was a source-scope limitation, not absence from Lean. [MonadEnv:136–146][ME136]

`public meta section` places the executor helpers in the appropriate source section for metaprogramming. The previously reported local identifier and record syntax failures are parent-reported compilation observations, not reproduced here. The current source uses `declName`, `require ... := do`, `hasTypeBinders`, and a positional theorem record. This note does not infer new parser failures merely from earlier diagnostics. [checker:5][C5], [checker:25–26][C25], [checker:44–62][C44], [checker:91–95][C91]

## deepAxioms and translation

`references` is structurally recursive over every recursive `Expr` child used by this checker. It visits let type/value/body, binder domain/body, metadata expression and both application sides; it includes the owner name of `.proj`. There is no missing recursive expression child in these cases. [checker:28–36][C28], [Expr:298–469][X298]

`deepAxioms` is explicitly `partial`, so its worklist recursion does not depend on a syntactic termination proof. Both `NameSet` and `TermElabM α` have inhabited instances in the pinned sources. Its seen-name branch consumes a pending item without consuming fuel; its new-name branch inserts the name into `seen` and decrements fuel. The finite dependency worklist therefore does not require fuel to decrease for already-seen duplicates. Exhausted fuel and missing declarations reject the audit. These are runtime bounds and error paths, not API errors. [checker:40–62][C40], [NameMap.Basic:53–55][N53], [TermElabM:412–415][T412]

The recursion correctly traverses `info.type`, `info.value? true`, inductive family and constructor edges, constructor owners, and recursor families plus each rule's `ctor` and `rhs`. The recursor record fields exist with the expected types. There is no assumption that `ConstantInfo.value?` returns a recursor body. The nonexporting `env.find?` is the declared blocking full-information lookup, rather than an imported axiom-summary cache. [checker:47–60][C47], [Declaration:325–359][D325], [Environment:974–986][E974]

The translator retains raw bound-variable indices while inserting scoped `J,I` fvars. Subsequent `mkForallFVars`/`mkLambdaFVars` abstraction handles the new binders. Its ordinary syntax translation and the narrow six-member error-family map agree with the intended selected-function check. It still rejects rather than translates affected recursors/helpers discovered in a shared dependency's carrier closure; that is intentional restricted support, not a general whole-family transformation algorithm. [checker:64–89][C64], [Meta.Basic:1346–1359][M1346]

## Certificate construction and lifts

The current positional term is compatible with the declared record nesting:

```text
TheoremVal extends ConstantVal
ConstantVal fields: name, levelParams, type
TheoremVal additional fields: value, all
```

Thus the shape `⟨⟨certificateName, [], certificateType⟩, certificateValue, [certificateName]⟩` supplies the parent `ConstantVal` followed by the two theorem fields. No nonexistent theorem safety/hints field is supplied. [checker:142–145][C142], [Declaration:90–134][D90]

`mkEq newCall transformed : MetaM Expr` constructs the target equality. `mkEqRefl newCall : MetaM Expr` constructs reflexivity. Abstracting the same `#[j,i]` from both gives the proposed universally quantified equation and a lambda proof whose acceptance requires kernel conversion of the translated RHS. `mkEq` itself infers only its left operand's type and does not validate its right operand; the theorem admission/fresh kernel boundary remains necessary. [checker:134–145][C134], [AppBuilder:39–68][A39]

`Lean.addDecl (decl : Declaration) (forceExpose := false) : CoreM Unit` is the API used by the current `liftM <| addDecl ... (forceExpose := true)`. The source transformer aliases are `TermElabM := ReaderT Context (StateRefT State MetaM)` and `MetaM := ReaderT Context (StateRefT State CoreM)`. `Command.lean` explicitly confirms that actions from both underlying monads automatically lift into `TermElabM`, so this use does not require an invented `TermElabM.addDecl` overload. [checker:143–145][C142], [AddDecl:235–243][AD235], [TermElabM:381][T381], [Meta.Basic:742][M742], [Command:986–1004][CO986]

The current checker explicitly rejects `debug.skipKernelTC`, checks the applied new family's inferred codomain against `Type`, and passes `forceExpose := true`. These address the previous disabled-kernel, family-codomain-predicate, and public-theorem-presentation concerns at the relevant source locations. No runtime success is inferred. [checker:98][C98], [checker:130–145][C130], [AddDecl:22–33][AD22], [AddDecl:119–127][AD119]

## Remaining boundaries, not newly established compile failures

- **The certificate is submitted before the final five constructor comparisons.** If a later comparison fails, that audit run fails and cannot count as acceptance, even if the theorem name is already present. The complete command/compilation result must be successful; name presence is insufficient. This is an ordering observation, not a request to alter guard-captured source. [checker:143–154][C142]
- **Kernel checking may be asynchronous.** `addDecl` publishes preliminary information and can schedule the checking action. Its error handler can insert a fallback axiom before rethrowing. The successful return of the host action, lookup of the theorem name, or JSON marker is not independently completed kernel acceptance. The existing completed compilation, strict expected-type/axiom audit and fresh kernel checking must reject all failures/fallbacks. [AddDecl:165–233][AD165]
- **The reported `new_axioms` is computed from `newFunction` before certificate submission.** It is not a second traversal of the certificate's embedded translated RHS. The final canonical root must actually depend on the certificate, and the unchanged independent audit/fresh kernel traversal must include its type/value transitively. A translated old shared dependency can be carrier-free yet use some other forbidden axiom; only the final complete closure audit establishes the required allowed set. [checker:124–145][C124], [checker:155–162][C155]
- **No complete universe-metavariable or structural-identity check is added by these APIs.** The intended already kernel-accepted declaration boundary supplies closed input terms; `isDefEq` can otherwise assign metavariables, and definitional equality is broader than exact expression or byte identity. `BEq Expr` ignores binder annotations. These remain the previously recorded limits of typed conservation. [Meta.Basic:2711–2724][M2711], [Expr:801–811][X801]
- **Source binding and native correspondence remain separate.** This source checks translation relative to the old declarations found by name. It does not itself certify the frozen old-source bytes, constructor-specialization transport between nominally distinct types, all-input outer-`Result` transport, Rust/native refinement, or feature admission.

This review found no new definite API repair to recommend within the requested surfaces. Actual compilation and independent acceptance are deliberately left to the root's authorized execution workflow; none was performed here.

[C1]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:1
[C5]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:5
[C25]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:25
[C28]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:28
[C40]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:40
[C44]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:44
[C47]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:47
[C64]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:64
[C91]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:91
[C98]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:98
[C124]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:124
[C130]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:130
[C134]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:134
[C142]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:142
[C155]: /data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:155
[D90]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:90
[D306]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:306
[D325]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:325
[D429]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:429
[ME85]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/MonadEnv.lean:85
[ME136]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/MonadEnv.lean:136
[N50]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Data/NameMap/Basic.lean:50
[N53]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Data/NameMap/Basic.lean:53
[CA70]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Util/CollectAxioms.lean:70
[CO986]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Command.lean:986
[T381]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Term/TermElabM.lean:381
[T412]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Term/TermElabM.lean:412
[M742]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:742
[M1346]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:1346
[M2711]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2711
[X298]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:298
[X801]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:801
[E974]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:974
[A39]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/AppBuilder.lean:39
[AD22]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:22
[AD119]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:119
[AD165]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:165
[AD235]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:235
