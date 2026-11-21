# Counted impl universe: source-only diagnosis

This note records a fresh source investigation, without running Lean, Rust, tests, builds, downloads, or another probe. Only this note was created. The proposed controls and patches below are **unexecuted candidates**, not new success evidence. Actual332 remains closed/failed after the Funs subprocess's internal 600-second timeout; no `result.json` or native correspondence proof is claimed.

## Finding

The observed `Counted.{0}` versus `Counted.{u_1}` error has a concrete frontend explanation: the selected **standard Lean `do` frontend infers the method at universe 0**, while `impl_def` **generalizes the dictionary header's still-unsolved universe before elaborating its fields**. These two choices disagree. An opaque `BufWriter` model is not needed to produce this error.

The [actual diagnostic](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/commands/Funs/stdout.txt:5105) reports that `Core036LocalTraitImpl187.write` accepts `output.Counted.{0}` but the dictionary expects `output.Counted.{u_1} W`. The [generated dictionary](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:13480) explicitly uses `{W : Type _}` and assigns this independently elaborated method. This is a real universe mismatch, before default-field self-reference resolution can succeed. Later unknown-dictionary diagnostics are consequences of its failed declaration; they do not establish independent causes.

The smallest legitimate elaborator candidate is to defer `impl_def`'s conversion of inferred universe metavariables to parameters until **after** body elaboration and self-reference resolution, matching ordinary data-definition inference. This would let the dictionary infer the same universe as its actual fields. It does **not** make the current standard-`do` method universe-polymorphic. Preserving the additional Lean higher-universe API requires a separate cross-universe `do` frontend repair and the existing Option-pattern regression control.

## Primary-source chain

1. [Generated `Counted`](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Types.lean:1733) is `structure output.Counted (W : Type _)` with fields `inner : W`, `bytes : U64`, and `calls : Option U64`. [Generated `Write`](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Types.lean:101) is `structure core.io.write.Write (Self : Type _)`; its methods return a result paired with the updated `Self`. Neither declaration itself fixes its parameter at universe 0.
2. The [actual method body](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:13407) sequences a writer operation returning an updated `W` with operations on `U64`, `Option U64`, and low error/result types. For example, lines 13416–13419 bind the writer result, branch on its Rust result, then lift a numeric conversion and checked addition. The `some calls` branch also binds `lift (U64.checked_add calls 1#u64)` before writing. Those low intermediate computations matter even though the final result carries `W`.
3. The [probe command builder](/data/repos/behavior-ir-core-033/experiments/transition-study036/ground_lean_probe_v2.py:280) supplies `-DAeneas.customDoElab=false` for Funs. [Backend selection](/data/repos/behavior-ir-core-033/experiments/transition-study036/ground_lean_probe_v2.py:231) is `analysis-backend-build/a0058/lean`; [context preparation](/data/repos/behavior-ir-core-033/experiments/transition-study036/nonpos_context_v2.py:82) overlays the selected NonPos modules and Aeneas root, retaining the remaining backend. The [185 binding](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/nonpos-qualified-context-inputs-185.json:1) selects a qualified-name repair in NonPos `Top`, not a different `TraitDefault` or `do` elaborator.
4. The selected [Aeneas dispatcher](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Do/Elab.lean:559) sends `customDoElab=false` directly to `Term.elabDo`. The pinned Lean [default `DoOps`](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Do/Basic.lean:310) constructs `Bind.bind` using one `MonadInfo.m`; [Bind's declaration](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Prelude.lean:3882) requires both `α` and `β` to be `Type u`. Consequently low intermediate `Result` computations and a result carrying `W` must share that input universe. The method's unconstrained `Type _` can therefore settle at 0 during ordinary `def` elaboration. The actual diagnostic independently confirms that it did.
5. By comparison, [Aeneas `Result` and `Std.bind`](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:68) provide `bind {α : Type u} {β : Type v}` with independent input/output universes. The [custom frontend](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Do/Elab.lean:59) explicitly constructs each `Result α` at `α`'s own level and calls `Aeneas.Std.bind`, avoiding `Bind.bind`. Thus the underlying Result model supports the relevant cross-universe operation; opacity of `Result` is not a reason to erase that capability.
6. [Pinned `impl_def`](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Tactic/Elab/TraitDefault/Init.lean:374) constructs `fullType`, calls `Term.levelMVarToParam`, and only then elaborates the body. Its comment explicitly says it prevents the body instantiating universes. This freezes the dictionary's `W` at a rigid level parameter, so the already-accepted universe-0 method cannot be used. [Ordinary Lean definitions](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/MutualDef.lean:1147) eagerly generalize **theorem/Prop** headers; data definitions retain body inference. Their [final generalization](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/MutualDef.lean:1438) follows value elaboration. This difference explains why the helper can be accepted with an inferred zero universe but the enclosing `impl_def` is rejected.

This source chain establishes the mechanism, not an executed minimized reproduction. The exact reduced controls below are the next falsifiable check.

## Why the opaque models are a separate issue

The [external `BufWriter`](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/WorkerEntrypointsNames/TypesExternal.lean:212) has the shape `axiom BufWriter (W : Type _) : Type`. Its **result** is Type0; its binder is still `Type _`. A low result universe alone does not prove its argument must have universe 0. More decisively, `BufWriter` does not occur in the type or body of `Core036LocalTraitImpl187.write`, nor in `Counted`'s declaration. The later [buffered_content](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:13490) does use that model; it cannot retroactively change the elaborated write helper.

Likewise [opaque `ok_or_else`](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/WorkerEntrypointsNames/FunsExternal.lean:214) uses `Type _` parameters, and [library `FnOnce`](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Core/Ops.lean:45) has independent universes for `Self`, `Args`, and `Output`. Their declarations do not supply an intrinsic `W : Type` restriction. The reduced control intentionally calls neither opaque function.

There is also a separate, already-visible default-body problem: the [actual log begins](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/commands/Funs/stdout.txt:1) with failure to unfold `core.io.write.Write.write_all.default`; the [external declaration](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/WorkerEntrypointsNames/FunsExternal.lean:150) is an axiom. Fixing a universe constraint cannot supply that missing body. The minimized universe control must avoid this axiom so its red is about the universe alone.

## Rust domain versus extra Lean generality

The [actual Rust declaration](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/output.rs:32) is `impl<W: Write> Write for Counted<W>`; it is not a File-only implementation. Preserve that Rust source and its quantified writer domain. [File's current external model](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/WorkerEntrypointsNames/TypesExternal.lean:87) is Type0, but one model does not prove a correspondence theorem for every Rust `W: Write`.

The translator [deliberately emits `Type _`](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/extract/ExtractBase.ml:1466): its own comment gives higher-universe effects as a reason. [Generic emission](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/extract/ExtractTypes.ml:1354) defaults `poly_types` to true and uses it for item generics; [trait impl emission](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/extract/Extract.ml:3645) calls that generic emitter with its default. The same generator explicitly uses fixed Type for nonpos trait parameters and method-local generic binders where required; this is a designed distinction. [Opaque type codomain emission](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/extract/ExtractTypes.ml:1666) separately prints `Type`.

Accordingly:

- Inferring `W : Type` from the actual method body under the chosen standard frontend is a transparent restriction of this Lean declaration's **additional higher-universe generality**. It is not a Rust source refactor or a File specialization.
- A claim that this still covers **every Rust writer** needs an explicit model/refinement premise mapping the claimed Rust domain into Type0. This investigation has not established that premise. Do not quietly replace a previously claimed `∀ W : Type u` Lean theorem with a Type0 theorem.
- A generator-wide `Type _` → `Type` replacement would erase intended generality across unrelated declarations and is not the smallest supported fix.

## Exact minimal source-derived universe control

Use the exact a0332 Types/context overlay, importing **Types only**, without Funs or FunsExternal. This retains the actual `Write`, `Counted`, error, scalar, slice, and Result representations. The reduced `write` retains the actual writer bind, an actual low checked-add/lift, and actual record update; it intentionally omits counter/error semantics that are irrelevant to this universe test. It is a diagnostic slice, not a replacement implementation or a semantic proof of the whole method.

```lean
module
public import Aeneas
public import WorkerEntrypointsNames.Types
@[expose] public section
open Aeneas Aeneas.Std Result ControlFlow Error
noncomputable section
namespace transition_study036.ImplUniverseControl

set_option Aeneas.customDoElab false

def write
    {W : Type _} (d : core.io.write.Write W)
    (self : output.Counted W) (buf : Slice Std.U8) :
    Result (core.result.Result Std.Usize core.io.error.Error × output.Counted W) := do
  let (r, t) ← d.write self.inner buf
  let _ ← lift (U64.checked_add self.bytes 1#u64)
  ok (r, { self with inner := t })

-- Expected control: body-inferred universe 0; no eager header commitment.
def ordinary {W : Type _} (d : core.io.write.Write W) :
    core.io.write.Write (output.Counted W) := {
  write := write d
  flush := fun self => ok (core.result.Result.Ok (), self)
  write_all := fun self _ => ok (core.result.Result.Ok (), self)
}

-- Expected control: explicit Type0 agrees with the method's actual universe.
impl_def fixed {W : Type} (d : core.io.write.Write W) :
    core.io.write.Write (output.Counted W) := {
  write := write d
  flush := fun self => ok (core.result.Result.Ok (), self)
  write_all := fun self _ => ok (core.result.Result.Ok (), self)
}

set_option pp.universes true in
#check @write
set_option pp.universes true in
#check @ordinary

-- Expected RED on the pinned impl_def, at `write := write d`.
-- It must be the Counted.{0}/Counted.{u} mismatch, not a missing default body.
impl_def inferred {W : Type _} (d : core.io.write.Write W) :
    core.io.write.Write (output.Counted W) := {
  write := write d
  flush := fun self => ok (core.result.Result.Ok (), self)
  write_all := fun self _ => ok (core.result.Result.Ok (), self)
}

end transition_study036.ImplUniverseControl
```

Run the `inferred` declaration as its own expected-failure module when implementing the control, so its failure cannot obscure the positive controls. Do not declare a pass merely because it exits unsuccessfully: require the mismatch at the field and the two successful control declarations. A version of `write` with the low `let _ ← lift ...` removed is a useful independent positive control for polymorphic pure forwarding.

For the second frontend axis, repeat the same source in another namespace with **only** `set_option Aeneas.customDoElab true` changed. Predict that the helper and `inferred` dictionary retain a universe parameter; assert it with an explicit-universe use, rather than relying only on pretty-printing:

```lean
universe u
-- In the custom-frontend namespace, expected positive at arbitrary u.
def acceptsHigher {W : Type u} (d : core.io.write.Write W) :
    core.io.write.Write (output.Counted W) := inferred d
```

With standard `do`, that explicit-universe use of the universe-0 helper must remain a genuine rejection, including after a macro-only repair. This is the guard against calling a Type0 inference repair preservation of higher-universe generality.

## Prior Option failure must remain in scope

The standard frontend was selected deliberately, as recorded in [correction-standard-do-106](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/correction-standard-do-106.json:2). The [a0222 log](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0222/commands/Funs/stdout.txt:983) contains both `none` pattern metavariables and `elabDoMatch: sorryAx is not a matcher` in unchanged `view_step`. [Its source slice](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0222/project/Ground/Funs.lean:5613) binds a pair from an Option match with an initially untyped `(none, none)` branch, then matches the second result. The [existing equivalence control](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/DoElaboration.lean:11) uses already-typed `Result (Option α)` and quantifies `α β : Type`; its arbitrary-effect equality does not test two different universes or this nested pair inference pattern.

This is an exact reduced shape for that second control, also unexecuted here. It should be run under both frontends; if it does not reproduce a0222 under the custom frontend, retain the actual source slice and minimize further, rather than treating this candidate as established red evidence:

```lean
def nested_option_pair {V D : Type}
    (views : Option V) (finish : V → Result (Option D)) :
    Result (Option V × Option D) := do
  let (saved, selected) ←
    match views with
    | none => ok (none, none)
    | some view =>
      do
      let selected1 ← finish view
      ok (views, selected1)
  match selected with
  | none => ok (saved, none)
  | some delta => ok (saved, some delta)
```

Simply re-enabling the custom frontend globally would reintroduce a known regression risk. The [custom match elaborator](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Do/Elab.lean:500) first elaborates a match with holed branch bodies, then fills their metavariables; its discriminant and branch-result type propagation is the source boundary to investigate if the actual nested Option red persists.

## Conditional source patch candidates

**A. Smallest fix for inferred dictionary universes.** Only after the first control has its expected real red, change `TraitDefault/Init.lean` to preserve inferred level metavariables through body elaboration, then generalize the final instantiated type. Candidate transformation, preserving the rest of field resolution and kernel registration:

```diff
       let fullType ← mkForallFVars xs type
-      -- ...generalize before body...
-      let fullType ← Term.levelMVarToParam (← instantiateMVars fullType)
-      let type ← instantiateMVars type
       withAuxDecl shortDeclName fullType declName fun selfFvar => do
         let val ← elabTermEnsuringType valStx (some type)
         Term.synthesizeSyntheticMVarsNoPostponing
         let val ← instantiateMVars val
         let processedVal ← resolveStructFields val selfFvar.fvarId! type
         -- retain the existing no-self-reference check
         let fullVal ← mkLambdaFVars xs processedVal
+        let fullType ← Term.levelMVarToParam (← instantiateMVars fullType)
         let fullVal ← instantiateMVars fullVal
         -- retain level collection, PreDefinition, addAndCompileNonRec
```

This is a source patch candidate, not a verified Lean diff. Recheck unresolved universe handling and scope propagation with the pinned SDK. Required consequences: the reduced standard-frontend `inferred` declaration passes at Type0; explicitly specified `Type u` still rejects the zero-universe helper; a dictionary made only of polymorphic forwarding methods still generalizes; a small exposed self-referential default still resolves; genuine unresolved cycles still reject; fresh independent kernel and axiom audits remain unchanged. The ordinary-definition behavior in pinned Lean is the rationale for this candidate, not license to skip those controls.

**B. Preserve extra higher-universe Lean generality.** Repair the Aeneas custom frontend's actual Option inference red while retaining its existing independent-universe `Std.bind` lowering, then validate both source-derived controls and actual `view_step` before changing the selected frontend. Alternatively, a frontend that reuses Lean's pattern handling but constructs cross-universe `Result` operations would need to handle more than the final `mkBindApp`: [standard `mkFreshResultType`](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Do/Basic.lean:393) already fixes fresh intermediate types to the block's universe, and default `mkMonadApp` reuses the same monad application. Replacing `Bind.bind` alone is therefore not a justified minimal patch.

**C. Explicit Type0 emission is a scoped alternative, not the default recommendation.** If the intended formal contract is explicitly a Type0 model of the full Rust writer domain, a translator option or universe-constraint analysis could emit `Type` consistently for methods, dictionaries, and their users. This must be declared in the contract with its Rust-domain mapping obligation. Hardcoding `Core036LocalTraitImpl187`, rewriting Rust to avoid its counters, globally disabling universe polymorphism, or editing generated Lean output would not be an evidence-based general frontend fix.

None of A–C supplies missing IO default bodies, proves dependency correspondence, completes native B proofs, closes task052, or turns actual332 into a pass.
