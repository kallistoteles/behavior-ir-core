# Pinned API plan for a kernel-checked conservation certificate

Status: source-only prospective API research, continuing the [checker source review](parametric-conservation-source-review-001.md). No Lean execution, builds, tests, diagnostics, compiled-environment/binary/IR reads, implementation edits, or existing selected/private-file writes occurred. Only this new note was written. Native proof remains **unestablished**, feature completion remains **false**, and the existing strict-three-foundation acceptance policy is unchanged.

Additional authorized primary sources inspected: pinned Lean 4.36.0-rc2 `Lean/AddDecl.lean`, `Lean/Meta/AppBuilder.lean`, `Lean/Elab/Term.lean`, `Lean/Elab/Term/TermElabM.lean`, `Lean/Parser/Term.lean`, and `Lean/Elab/Notation.lean`. All existed. The last two do not define the questioned `unless`/notation-command token rules, so they do not independently settle the earlier parser caveat. This note concerns certificate construction and admission APIs, not a parser or execution result.

## Exact expression and theorem construction APIs

The pinned `Lean.Meta` APIs are:

```lean
mkEq (a b : Expr) : MetaM Expr
mkEqRefl (a : Expr) : MetaM Expr
```

`mkEq` infers only `a`'s type and its universe, then constructs `Eq a b` with that type. It does **not** independently check `b` or prove equality. `mkEqRefl` similarly constructs `Eq.refl a`, with type `a = a`. Therefore assigning that proof value to a theorem whose declared type is `a = b` is useful precisely because the kernel must validate the declared type and convert `b` to `a`; the builders themselves are not the acceptance boundary. [AppBuilder:39–68][A39]

Inside the same local context `J,I : Type`, let:

```text
newCall = mkApp2 (mkConst independentlyFrozenNewFunction []) J I
rhs     = independentlyCheckedTau(originalFunctionValue, J, I)
eq      ← mkEq newCall rhs
refl    ← mkEqRefl newCall
closedType  ← mkForallFVars #[J,I] eq
closedValue ← mkLambdaFVars #[J,I] refl
```

This is conceptual pseudocode; no implementation is asserted. Retain `usedOnly := false` for both binders and `etaReduce := false` for the lambda, as in the pinned defaults. Construct both closed expressions while those exact two locals are still in scope. `mkForallFVars` and `mkLambdaFVars` abstract free variables and their types in array order. `withLocalDeclD` gives explicit `J,I` locals, so the resulting theorem has explicit type parameters even if the new function itself uses implicit carrier parameters. Direct `mkApp2` application is valid independently of those implicit annotations. [Expr:709–712][X709], [Meta.Basic:1346–1359][M1346], [Meta.Basic:2003–2017][M2003]

The proposed theorem statement is:

```text
∀ (J I : Type), newFunction J I = tau(originalFunctionValue, J, I)
```

The equality is between whole functions after their carrier arguments, including all remaining row/map arguments. If the right side is definitionally the same function, reflexivity suffices; function extensionality is unnecessary. A consumer may rewrite this equality under applications. It is not an equality between the unchanged original nominal error type and its separate new copy, and it is not the original-specialization transport theorem.

The exact record fields are:

```lean
structure ConstantVal where
  name : Name
  levelParams : List Name
  type : Expr
structure TheoremVal extends ConstantVal where
  value : Expr
  all : List Name := [name]
-- Declaration.thmDecl (val : TheoremVal)
```

For the monomorphic checked subject, construct a `Declaration.thmDecl` with an independently frozen fresh public fully qualified `name`, `levelParams := []`, `type := closedType`, `value := closedValue`, and optionally `all := [certificateName]`. There are no theorem `safety`, `hints`, or `isUnsafe` record fields to supply. Check that both closed expressions have no free variables, loose bound variables, or expression/level metavariables before submission; the pinned `hasFVar`, `hasLooseBVars`, and `hasMVar` predicates cover these checks. Preserve actual universe parameters instead of asserting `[]` if the original subject ever becomes universe-polymorphic. [Declaration:90–134][D90], [Declaration:163–170][D163], [Expr:546–569][X546], [Expr:1311][X1311]

## Monadic placement and exact addDecl behavior

The defining aliases and runners are:

```lean
Lean.Meta.MetaM := ReaderT Context $ StateRefT State CoreM
Lean.Elab.Term.TermElabM := ReaderT Context $ StateRefT State MetaM
Lean.Elab.Term.TermElabM.run' (x : TermElabM α)
    (ctx : Context := {}) (s : State := {}) : MetaM α
Lean.Meta.MetaM.run' (x : MetaM α)
    (ctx : Context := {}) (s : State := {}) : CoreM α
```

These transformer stacks support the ordinary upward monad lifts: build expressions using the `MetaM` APIs in the existing `TermElabM` check, then lift the `CoreM` declaration action. A precise intended invocation is:

```lean
liftM (Lean.addDecl declaration (forceExpose := true) : CoreM Unit)
```

inside the existing `TermElabM` computation. This is a prospective expression, not a compiled result. A separately constructed pure `MetaM` certificate builder could instead use its pinned `run'` to return into `CoreM`; do not run a fresh/default term state in the middle of an existing elaboration context just to avoid a normal lift. The inspected `TermElabM` source itself uses `liftM` and inherited `Core` operations. `Lean/Elab/Term.lean` is only the facade importing `Lean.Elab.Term.TermElabM` and reexporting its alias; the latter file is the definition owner. [Meta.Basic:742][M742], [Meta.Basic:818–838][M818], [TermElabM:381][T381], [TermElabM:2255–2274][T2255], [Term:9–10][TF9]

The public declaration API is exactly:

```lean
Lean.addDecl (decl : Declaration) (forceExpose := false) : CoreM Unit
```

`addAndCompile` is a separate API that calls `addDecl` and then compiles a declaration; a theorem certificate requires declaration admission, not a runtime compilation call merely to add its theorem value. [AddDecl:235–251][AD235]

**`forceExpose := true` matters.** In module mode the default `addDecl` presentation exports a theorem as an axiom. The source explicitly says that `forceExpose` preserves the full representation publicly, even for theorems and independently of the current exporting flag. Choose a public nonprivate theorem name: private names have a separate export-suppression branch. This makes the intended theorem value available to downstream checking rather than relying on an opaque public axiom presentation. It does not disable kernel checking. [AddDecl:119–163][AD119], [AddDecl:235–243][AD235]

**`addDecl` respects `debug.skipKernelTC`.** Its private helper calls `Environment.addDeclCore` with `doCheck = !debug.skipKernelTC.get opts`; the kernel-environment wrapper likewise explicitly chooses `addDeclWithoutChecking` when that option is true. The option is registered with default `false`, but the certificate command should reject an enabled current value before admission:

```text
if debug.skipKernelTC.get(currentOptions) then reject "kernel-check-disabled"
```

The source-level expression `debug.skipKernelTC.get (← getOptions)` is the same API used by `AddDecl.lean`. Checking the current option is stronger than relying on the default. It complements, rather than replaces, independent fresh kernel verification. [Environment:75–79][E75], [AddDecl:22–33][AD22], [Environment:836–851][E836]

**Admission may be asynchronous.** `addDeclCore` publishes preliminary constant information and then, when `Elab.async` is enabled, schedules the checking action and records a snapshot task. Its return alone need not mean that kernel checking has completed. With the asynchronous option disabled, the same checking action runs on the current path. In either case final acceptance must require completed, error-free checking and the existing independent fresh kernel pass. Do not label a JSON marker printed immediately after `addDecl` as proof that all asynchronous checks have finished. [AddDecl:165–193][AD165]

**Errors are not evidence.** The checking action calls `Environment.addDeclAux`, catches a failure, attempts a fallback axiom, and rethrows. A failed compilation may therefore leave a placeholder declaration for continued diagnostics. Reject the failure and any fallback/axiom presentation; do not accept a mere successful lookup of the certificate name. `forceExpose` does not change this failure-handling rule. [AddDecl:194–233][AD194]

## Root use and independent fresh-kernel inclusion

A future proof module can import the certificate-producing audit module and use the named certificate directly in the canonical theorem proof, conceptually:

```lean
rw [fullyQualifiedCertificate J I]
-- prove the unchanged canonical target using the translated original body
```

This is a proposed consumer shape, not a validated tactic script. Use the orientation that rewrites `newFunction J I` to the independently translated original value. The original canonical theorem's externally expected statement must remain independently frozen; using the certificate is a proof change, not permission to weaken that statement or add the desired equality as a premise.

The resulting final theorem's elaborated proof must actually reference the public certificate, and the unchanged strict audit/fresh kernel traversal must include the certificate **type and value** transitively. Verify that dependency rather than infer it solely from the presence of `rw` in source. The certificate's type contains `tau(originalValue)`; its proof contains `newFunction`. Kernel checking this theorem validates that translated RHS as a well-typed term at the declared equality type and checks conversion against reflexivity. A hidden bad RHS cannot be justified merely by the earlier permissive `inferType`/`mkEq` builders. The foundational-axiom audit must still cover all referenced definitions and theorems. [AppBuilder:39–68][A39], [Declaration:459–465][D459], [CollectAxioms:53–69][CA53]

This certificate does not turn the host-side translator, JSON report, or source hashing into a theorem. The binding of the embedded RHS to the exact frozen old source, the selected rename/substitution rules, and the required five-constructor checks remains an independent construction/certificate obligation. Once those inputs are bound, the proposed theorem makes the typed equality a kernel-checked mathematical object that the canonical root can use. It still does not prove strict syntactic operational preservation, unchanged generated bytes, constructor-preserving specialization to the old nominal datatype, all-input `Result` transport, Rust/native refinement, or B01–B10 completion.

No certificate was generated or admitted during this research. The API plan is supported by the pinned primary source; its implementation and acceptance remain unestablished.

[A39]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/AppBuilder.lean:39
[D90]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:90
[D163]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:163
[D459]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:459
[X546]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:546
[X709]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:709
[X1311]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:1311
[M742]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:742
[M818]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:818
[M1346]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:1346
[M2003]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2003
[TF9]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Term.lean:9
[T381]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Term/TermElabM.lean:381
[T2255]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Term/TermElabM.lean:2255
[E75]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:75
[E836]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:836
[AD22]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:22
[AD119]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:119
[AD165]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:165
[AD194]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:194
[AD235]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:235
[CA53]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Util/CollectAxioms.lean:53
