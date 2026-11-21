# Pinned Lean APIs for an independent parametric elaboration check

Status: source-only prospective design for Lean **4.36.0-rc2**, using only the seven permitted Lean source files and the two permitted proposal files. No Lean/Python diagnostics, builds, tests, compiled-environment reads, binary/IR inspection, or selected/private-file changes were performed. This new note is the only write. Native proof remains **unestablished** and feature completion remains **false**.

The [closure proposal](opaque-error-parametric-closure-plan-001.md) supplies the intended transformation; the [Python draft](opaque-error-parametric-source-draft-001.py) supplies only lexical generation checks. Neither establishes the elaborated closure, declaration conservation, kernel acceptance, or native correspondence. The following APIs support a prospective independent checker, with explicit gaps where the permitted source does not establish an API or convention.

## Declaration lookup and complete expression inventory

The exact lookup available in the permitted source is:

```lean
Lean.Environment.find? (env : Environment) (n : Name)
    (skipRealize := false) : Option ConstantInfo
Lean.Environment.constants (env : Environment) : ConstMap
```

`find?` can wait for a constant's information; `constants` uses `env.toKernelEnv.constants`. It must be used in an explicitly chosen, complete checking environment, not confused with a public signature view. The source also exposes `Environment.setExporting (env) (isExporting : Bool) : Environment` and distinguishes public/private views. No environment was opened for this research. [Environment:731–736][E731], [Environment:874–876][E874], [Environment:974–986][E974]

`ConstantInfo` has the variants `axiomInfo`, `defnInfo`, `thmInfo`, `opaqueInfo`, `quotInfo`, `inductInfo`, `ctorInfo`, and `recInfo`. Its precise accessors include:

```lean
ConstantInfo.name        (d : ConstantInfo) : Name
ConstantInfo.levelParams (d : ConstantInfo) : List Name
ConstantInfo.numLevelParams (d : ConstantInfo) : Nat
ConstantInfo.type        (d : ConstantInfo) : Expr
ConstantInfo.value? (info : ConstantInfo) (allowOpaque := false) : Option Expr
ConstantInfo.hasValue (info : ConstantInfo) (allowOpaque := false) : Bool
ConstantInfo.value! (info : ConstantInfo) (allowOpaque := false) : Expr
ConstantInfo.all : ConstantInfo → List Name
ConstantInfo.isUnsafe : ConstantInfo → Bool
ConstantInfo.isPartial : ConstantInfo → Bool
```

Use `value? (allowOpaque := true)` for dependency/conservation inventory: the default omits theorem and opaque bodies. An axiom, inductive, constructor, or recursor has no value through this accessor; in particular, **recursor rule RHSs require a separate traversal**. Match the variants instead of using panic-producing `value!`/`inductiveVal!` on unchecked input. `all` records mutual groups for inductives, definitions, theorems and opaques; for constructors and recursors it returns only their own name. Definition mutual-block metadata is explicitly not kernel semantics. [Declaration:108–146][D108], [Declaration:406–527][D406]

For each declaration, collect dependencies from `ci.type`, every available `ci.value? true`, and every `r.rhs` in `recInfo.rules`. Add metadata edges as well: constructor `induct`; inductive `all` and `ctors`; recursor `all` and each rule's `ctor`; relevant `ci.all` groups. These edges make the intended family closure explicit rather than assuming a recursor has a body returned by `value?`. [Declaration:239–359][D239], [Declaration:459–525][D459]

A pinned expression visitor is:

```lean
Expr.forEach (e : Expr) (f : Expr → m Unit) : m Unit
Expr.forEach' (e : Expr) (f : Expr → m Bool) : m Unit
-- namespace-level requirements:
-- {ω : Type} {m : Type → Type}
-- [STWorld ω m] [MonadLiftT (ST ω) m] [Monad m]
```

It visits binder domains and bodies, all let type/value/body expressions, application sides, metadata's expression, and projection's expression. The callback must collect both `.const n us` and **`.proj typeName idx struct`'s `typeName`**; the latter is a semantic declaration reference stored as a name, not a `.const` child. A raw constant-only visitor misses it. `Expr.forEachWhere` is also declared, with the same monadic requirements, as `(p : Expr → Bool) (f : Expr → m Unit) (e : Expr) (stopWhenVisited := false) : m Unit`; its source implementation visits the same children. Keep pruning disabled for complete inventory. [ForEachExpr:21–42][F21], [ForEachExprWhere:66–94][W66], [Expr:448–469][X448]

`Lean.Meta.forEachExpr (e : Expr) (f : Expr → m Unit) : m Unit`, under `[Monad m] [MonadLiftT MetaM m] [MonadControlT MetaM m]`, instead opens binders as fresh locals. It is useful when checking types of subterms; the raw visitor is sufficient for syntactic declaration-reference collection. Neither visitor recursively loads referenced declarations: the checker needs its own visited-name worklist and fixed-point closure. [Meta.ForEachExpr:16–79][MF16]

## The two carriers and the complete error family

The original carrier names must be supplied as independently frozen **fully qualified** names `A_J`, `A_I`, not inferred from suffixes. Require both to be `.axiomInfo`, with empty `levelParams` and type exactly `Expr.sort (Level.succ Level.zero)` (`Type`, i.e. `Type 0`), and record/check safety. This distinguishes nullary global type axioms from functions returning types or universe-polymorphic constants. Their old axioms are inputs to the transformation, not newly generalized operation assumptions. `ConstantVal` owns `name`, `levelParams`, `type`; `AxiomVal` adds `isUnsafe`. [Declaration:90–102][D90], [Expr:350–360][X350], [Expr:825–833][X825]

For `E = StudyError` and the independently frozen new name `E'`, the constructor schema in the permitted draft is the acceptance schema:

| Ordered constructor | One original field | One new field | New result |
| --- | --- | --- | --- |
| `InvalidInput` | `String` | same `String` | `E' J I` |
| `Prerequisite` | `Str` | same `Str` | `E' J I` |
| `Library` | `String` | same `String` | `E' J I` |
| `Json` | `A_J` | `J` | `E' J I` |
| `Io` | `A_I` | `I` | `E' J I` |

The table describes the draft, not a newly observed compiled environment. Check the original elaborated declarations against that schema before deriving expected new ones. Then require:

- The original `E` has `numParams = 0`, `numIndices = 0`, and the five ordered constructors. `E'` is `.inductInfo` with **`numParams = 2`, `numIndices = 0`, and those same five ordered constructor roles**; its type is the expected `∀ (J I : Type), Type`, with the independently chosen binder annotations. Require empty `levelParams` for these monomorphic old/new inductives and their constructors; reject added universe parameters. For other copied declarations preserve their independently checked original universe arity/order.
- Every listed constructor is `.ctorInfo` with `induct = E'`, `cidx = 0,1,2,3,4` respectively, `numParams = 2`, `numFields = 1`, and full type `∀ (J I : Type), fieldType → E' J I`. Check all five full types, including both payload constructors. Constructor spelling alone is insufficient.
- Check `all`, `numNested`, `isRec`, `isUnsafe`, and `isReflexive` against the independently reconstructed family, rather than silently accepting additional mutual/nested types or changed safety.

These are direct fields of `InductiveVal` and `ConstructorVal`; `InductiveVal.numCtors : InductiveVal → Nat` returns `ctors.length`. [Declaration:239–323][D239]

`RecursorVal` has `all`, `numParams`, `numIndices`, `numMotives`, `numMinors`, `rules`, `k`, `isUnsafe` in addition to `ConstantVal`. Each `RecursorRule` has `ctor : Name`, `nfields : Nat`, `rhs : Expr`. Check full recursor type, family, parameter/index/motive/minor counts, rule coverage/order, field counts, safety/K flags, and RHSs against an independently generated expected family; do not ignore `rules` because `value?` is empty. The source gives:

```lean
RecursorVal.getMajorIdx (v : RecursorVal) : Nat
  -- v.numParams + v.numMotives + v.numMinors + v.numIndices
RecursorVal.getMajorInduct (v : RecursorVal) : Name
```

Use the metadata and inspected type together when associating a recursor with the family; `getMajorInduct` internally assumes its type has the expected binder/application shape, so validate shape before relying on it. [Declaration:325–387][D325]

## Capture-safe uniform expression translation

The permitted `Expr` source has all twelve cases: `bvar`, `fvar`, `mvar`, `sort`, `const`, `app`, `lam`, `forallE`, `letE`, `lit`, `mdata`, `proj`. A checker can implement a total recursive translation over these cases without relying on an uninspected replacement helper. Preserve existing binder names, annotations, order, let `nondep` flag, metadata, literal values, universe levels, and application order. [Expr:298–469][X298]

Within two scoped fresh locals `J,I : Type`, let `ρ` be an independently validated renaming map and `D(n)` the fixed-point ordered footprint (`J` before `I`). Conceptual pseudocode, **not compiled Lean**:

```text
tau(const A_J []) = J
tau(const A_I []) = I
tau(const n us) = mkAppN (mkConst (rho n) us) (footprintArgs D(n))
                    if n has a certified transformed counterpart;
                  const n us if independently certified carrier-independent;
                  reject otherwise
tau(app f a) = app (tau f) (tau a)
tau(lam n d b bi) = lam n (tau d) (tau b) bi
tau(forallE n d b bi) = forallE n (tau d) (tau b) bi
tau(letE n t v b nondep) = letE n (tau t) (tau v) (tau b) nondep
tau(mdata md b) = mdata md (tau b)
tau(proj s idx b) = proj (certifiedStructureRename s) idx (tau b)
tau(bvar i / sort u / lit v) = same node
reject unexpected fvars, any mvars, malformed carrier universe instances,
       uncertified projection/index changes, or unsupported family mappings
```

For reused carrier-independent references `ρ` is identity and `D` is empty. A renamed independent declaration has an empty footprint but still needs a certified map entry. For projections the structure name is changed only under a validated field-order correspondence; there is no insertion of `J,I` as extra syntactic projection arguments. Reject an affected projection without such support. The target `StudyError` schema is an inductive, not an invented structure projection schema. `Expr.replaceFn` is unsuitable: its source says it replaces only the head constant of an application spine and preserves arguments/levels; it is not recursive constant replacement throughout a declaration. [Expr:618–680][X618], [Expr:769–775][X769], [Expr:2440–2461][X2440]

The fresh locals avoid hand-written de Bruijn shifting. Original closed expressions can retain their internal `bvar` indices while `tau` inserts `J,I` as fvars; abstract/bind those fvars only after recursively rebuilding the expression. The exact APIs are:

```lean
withLocalDecl (name : Name) (bi : BinderInfo) (type : Expr)
    (k : Expr → n α) (kind : LocalDeclKind := .default) : n α
withLocalDeclD (name : Name) (type : Expr) (k : Expr → n α) : n α
mkForallFVars (xs : Array Expr) (e : Expr)
    (usedOnly : Bool := false) (usedLetOnly : Bool := true)
    (generalizeNondepLet := true)
    (binderInfoForMVars := BinderInfo.implicit) : MetaM Expr
mkLambdaFVars (xs : Array Expr) (e : Expr)
    (usedOnly : Bool := false) (usedLetOnly : Bool := true)
    (etaReduce : Bool := false) (generalizeNondepLet := true)
    (binderInfoForMVars := BinderInfo.implicit) : MetaM Expr
```

Here `n` has `[MonadControlT MetaM n] [Monad n]`. Use the same local array `#[J,I]` for type and value (or the declaration's independently computed subset), `usedOnly := false`, `etaReduce := false` for the lambda. Preserve the draft's independently chosen implicit function-carrier binders via `withLocalDecl ... BinderInfo.implicit`, and explicit inductive parameters via `.default`; `withLocalDeclD` always chooses `.default`. A binder merely existing is not proof of correct use: validate both `E' J I` occurrences and every footprint application. `Expr.abstract (e) (xs)` documents outermost-to-innermost array order; `instantiateRev` is its forward-order instantiation convention. [Meta.Basic:853][M853], [Meta.Basic:1346–1362][M1346], [Meta.Basic:2003–2017][M2003], [Expr:1404–1497][X1404]

Opening old binders into fvars and then translating only their body is unsafe if those old local declarations retain untransformed types. Either use the raw recursive strategy above, or rebuild translated local domains and map old fvars to new fvars sequentially. The pinned telescope interfaces are:

```lean
forallTelescope (type : Expr) (k : Array Expr → Expr → n α)
    (cleanupAnnotations := false) : n α
forallBoundedTelescope (type : Expr) (maxFVars? : Option Nat)
    (k : Array Expr → Expr → n α)
    (cleanupAnnotations := false) (whnfType := false) : n α
lambdaTelescope (e : Expr) (k : Array Expr → Expr → n α)
    (cleanupAnnotations := false) : n α
lambdaBoundedTelescope (e : Expr) (maxFVars : Nat)
    (k : Array Expr → Expr → n α) (cleanupAnnotations := false) : n α
```

They temporarily extend the local context, instantiate binders in order and restore the context/cache. Plain `forallTelescope` does not use the reducing variant. `forallBoundedTelescope` is implemented through reducing machinery, so inspect the raw first two `forallE` nodes as well when enforcing literal carrier binders. A useful candidate check opens exactly the new carrier prefix and compares the remainder with `tau(oldType)` using those same locals; similarly open a two-lambda value prefix, or apply the candidate value to the two type locals and compare it with `tau(oldValue)`. Record binder annotations separately: definitional equality is not a binder-annotation conservation check. [Meta.Basic:1763–1820][M1763], [Meta.Basic:1822–1884][M1822]

## Comparison, generated auxiliaries, and fail-closed algorithm

The simplest comparison applies the new declaration to shared fresh type locals rather than stripping candidate telescope binders. `mkApp2 (f a b : Expr) : Expr` is defined in the pinned source as `mkAppB f a b`. Conceptual `MetaM` pseudocode, with lookup/map/safety checks elided and no execution claimed:

```lean
withLocalDeclD `J (.sort (.succ .zero)) fun J =>
withLocalDeclD `I (.sort (.succ .zero)) fun I => do
  let newApplied := mkApp2 (mkConst newFunction oldLevels) J I
  let expectedType := tau oldInfo.type J I
  let expectedValue := tau oldValue J I -- extracted using value? true
  require (← isDefEq (← inferType newApplied) expectedType)
  require (← isDefEq newApplied expectedValue)
  for (oldCtor, newCtor) in independentlyOrderedConstructorPairs do
    let newCtorApplied := mkApp2 (mkConst newCtor []) J I
    require (← isDefEq (← inferType newCtorApplied)
                       (tau oldCtorInfo.type J I))
```

Here `tau` denotes the independent recursive transformer, and `require`/the loop are explanatory pseudocode, not declared Lean APIs. Function universe instances `oldLevels` must be independently instantiated consistently on both sides; monomorphic input means `[]`. Use all five constructor pairs. The original constructor has zero family parameters, so translating its entire original type is exactly the expected type *after* the new constructor's `J,I` applications. Check `numParams : 0 → 2`, `cidx` (the actual metadata field name, not `ctorIdx`), `numFields`, `induct` owner, ordered `ctors`, zero indices, and universe metadata separately. This approach works for implicit or explicit new function-carrier binders because `mkApp2` constructs elaborated applications directly. It does not by itself enforce binder annotations or prove raw syntax conservation. [Expr:711][X711], [Declaration:306–320][D239], [Meta.Basic:1042][M1042], [Meta.Basic:2003–2017][M2003], [Meta.Basic:2723][M2687]

`Lean.Meta.inferType : Expr → MetaM Expr` and `Lean.Meta.isDefEq (t s : Expr) : MetaM Bool` are pinned declarations. `isDefEq` can assign metavariables and uses contextual transparency; `withNewMCtxDepth (k : n α) (allowLevelAssignments := false) : n α` limits assignment of outer metavariables, while `withTransparency (mode : TransparencyMode) : n α → n α` fixes transparency. For an independent comparison require no expression/level metavariables in either term or its local types and choose transparency explicitly. `Expr.hasMVar` checks both kinds, `hasFVar` checks free variables, and `hasLooseBVars` checks dangling bound variables. `inferType` alone is not a source-established substitute for fresh kernel checking. [Meta.Basic:1042][M1042], [Meta.Basic:1484–1496][M1484], [Meta.Basic:2186–2212][M2186], [Meta.Basic:2687–2738][M2687], [Expr:546–569][X546], [Expr:1311][X1311]

The permitted source exposes the stronger boundary directly:

```lean
Lean.Kernel.check (env : Lean.Environment) (lctx : LocalContext)
    (a : Expr) : Except Kernel.Exception Expr
Lean.Kernel.isDefEq (env : Lean.Environment) (lctx : LocalContext)
    (a b : Expr) : Except Kernel.Exception Bool
```

They do not support metavariables. A future checker can check the expected translated value and candidate value, compare their returned types to the expected type, and compare values by kernel definitional equality; every exception is rejection. A **separate structural translation check** should retain exact operational syntax (including branch order, literals, field order and arguments) because definitional equality can erase syntactic differences and proof irrelevance is not proof-term identity. `BEq Expr` delegates to `Expr.eqv`, whose source explicitly ignores binder annotations, so ordinary expression `==` alone is insufficient for that stronger annotation-preservation check. Compare original expressions only after translation into the new family; old `StudyError` and a distinct new inductive are not definitionally equal merely at specialization. [Environment:3155–3185][E3155], [Expr:801–811][X801], [closure proposal](opaque-error-parametric-closure-plan-001.md)

There is a kernel declaration input for independently rebuilding the error family:

```lean
Declaration.inductDecl (lparams : List Name) (nparams : Nat)
    (types : List InductiveType) (isUnsafe : Bool)
-- InductiveType: name : Name; type : Expr; ctors : List Constructor
-- Constructor: name : Name; type : Expr
Lean.Kernel.Environment.addDeclCore (env : Kernel.Environment)
    (maxHeartbeats : USize) (maxRecDepth : USize)
    (decl : Declaration) (cancelTk? : Option IO.CancelToken)
    : Except Kernel.Exception Kernel.Environment
```

These signatures omit source borrow annotations `@&` only. The elaboration-environment plumbing variant is `Lean.Environment.addDeclCore ... (doCheck := true) : Except Kernel.Exception Environment`; never select `doCheck := false` or `addDeclWithoutChecking`. Constructing the expected inductive declaration from checked old constructor types plus the independently fixed five-constructor schema gives a prospective way to obtain a pinned-kernel expected family, instead of accepting producer-supplied recursor RHS conventions. This research does not establish its execution or generated output. [Declaration:151–175][D151], [Environment:308–321][E308], [Environment:828–858][E828]

Do **not** claim `Declaration.getNames` inventories the family: its documentation explicitly excludes elaborator-generated projections and kernel nested-inductive auxiliary recursors. `ConstantInfo.all` also is not a general parent-to-auxiliary index. The source does provide `Environment.getLocalConstantInfos (env) (skipTheoremSubDecls := false) : BaseIO (Array AsyncConstantInfo)`, covering current-module declaration-tree entries including nested asynchronous subdeclarations, and `AsyncConstantInfo.toConstantInfo`. Its documentation says it need not wait for kernel checking. Consequently a completed, authorized environment snapshot/delta is the final inventory boundary, and local enumeration alone is not acceptance evidence. `Environment.lean` itself demonstrates `kenv.constants.foldStage2 (fun names name _ => names.push name) #[]` and `map₂.toList`; the `ConstMap` container definitions/signatures are imported and are outside this source read. [Declaration:187–211][D187], [Declaration:519–525][D519], [Environment:376–400][E376], [Environment:1337–1364][E1337], [Environment:2211–2218][E2211]

Prospective checker algorithm:

```text
1. Bind independent source/module identities, original roots, carrier names,
   expected root types, schema, rename map and allowed transformation rules.
2. From complete authorized old/new snapshots, inventory every declaration;
   compute type/value/recursor-rule references plus family/mutual edges.
   Compute carrier footprints to a fixed point. Reject unknown dependencies.
3. Verify the two original nullary Type axioms and old five-constructor schema.
   Reconstruct and kernel-check the expected new E' family with nparams = 2.
   Compare candidate inductive/constructor/recursor metadata and expressions.
4. For each dependent ordinary declaration, form expected closed type/value
   with tau and scoped carrier fvars, then mkForallFVars/mkLambdaFVars.
   For state_fact_row, compare its complete type AND its complete value;
   every old E/constructor/auxiliary/FromSame type argument follows one map
   and the ordered J,I pair. Kernel-check types/values and compare them.
5. Reconcile every new auxiliary from the complete declaration-boundary delta.
   Validate an explicit bijection by kind, family metadata, universe/binder
   shape, and full translated type/value/rules; do not infer by name prefix.
   Every unpaired or uncheckable affected auxiliary rejects the certificate.
6. Recompute root closure, reject residual A_J/A_I or old dependent references,
   audit axioms with the unchanged foundation policy, and check frozen root
   types. Preserve unselected original declarations in the recorded inventory.
```

For ordinary auxiliaries (`casesOn`, `recOn`, no-confusion, matcher/equation helpers, projections, attribute-generated declarations), spelling in this sentence is illustrative, **not a pinned complete generated-name list**. Type/body translation plus explicit dependency validation can check an individually mapped auxiliary. Complete origin association needs declaration-boundary inventory or instrumentation not specified by these seven files. For kernel recursors, compare with the independently reconstructed expected family, including rule RHSs; the allowed metadata source does **not** specify the binder convention needed to assume `newRule.rhs = λ J I, tau(oldRule.rhs)`. If any auxiliary needs a transformation outside ordinary type/value translation and reconstructed kernel-family comparison, reject it until a separate independently justified rule exists. [Declaration:200–211][D187], [Declaration:325–387][D325], [Environment:1337–1364][E1337]

## Exact unsupported claims and remaining obligations

- `getConstInfo` is called inside permitted Meta sources, but its defining signature is not in them. Neither `getConstInfoInduct` nor `getConstInfoCtor` is declared in these seven files. Use the directly declared `Environment.find?` and match `.inductInfo`/`.ctorInfo` in this plan; do not invent a `ConstInfo` type or an accessor signature from memory. The actual type here is **`ConstantInfo`**. `foldConsts` is used in `Environment.lean` but its definition is likewise outside the permitted files; the explicit visitor above avoids relying on that missing signature. [Meta.Basic:1923][M1923], [Environment:3269][E3269]
- The allowed source does not establish the full generated auxiliary inventory, Aeneas attribute/elaborator behavior, source-to-compiled binding, exact installed binary behavior, or a working checker driver/import harness. `MetaM` is declared as a transformer over `CoreM`; this note does not guess the imported setup/run APIs. [Meta.Basic:742][M742]
- Expression renaming does not prove that two separately declared inductives are equal, nor provide the all-input specialized `Result` transport, Rust/native refinements, or B01–B10 obligations described in the closure proposal. A future successful structural/kernel check would establish only its explicitly bound elaborated transformation claim. The unchanged original specialized root must not be relabeled foundation-only. [closure proposal](opaque-error-parametric-closure-plan-001.md)

No implementation, verification result, compiled closure classification, or native admission is claimed.

[D90]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:90
[D108]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:108
[D151]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:151
[D187]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:187
[D239]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:239
[D325]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:325
[D406]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:406
[D459]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:459
[D519]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Declaration.lean:519
[X298]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:298
[X350]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:350
[X448]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:448
[X546]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:546
[X618]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:618
[X711]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:711
[X769]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:769
[X801]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:801
[X825]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:825
[X1311]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:1311
[X1404]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:1404
[X2440]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:2440
[E308]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:308
[E376]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:376
[E731]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:731
[E828]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:828
[E874]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:874
[E974]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:974
[E1337]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:1337
[E2211]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2211
[E3155]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:3155
[E3269]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:3269
[M742]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:742
[M853]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:853
[M1042]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:1042
[M1346]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:1346
[M1484]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:1484
[M1763]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:1763
[M1822]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:1822
[M1923]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:1923
[M2003]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2003
[M2186]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2186
[M2687]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Basic.lean:2687
[F21]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Util/ForEachExpr.lean:21
[W66]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Util/ForEachExprWhere.lean:66
[MF16]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/ForEachExpr.lean:16
