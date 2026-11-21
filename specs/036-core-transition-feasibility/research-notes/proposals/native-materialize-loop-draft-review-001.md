# Source-only review of the child materialization loop draft

Status: **untested inspection of a new unselected draft**. No Lean elaboration, build, test, running-wrapper interaction, selected-file modification, or admission audit was performed. This review creates only this new note.

Reviewed [native-materialize-loop-draft-001.lean](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/native-materialize-loop-draft-001.lean:1), the prior source plan, the allowed SDK sources, existing `NativeProjectionLaws`, and the allowed original generated materialization loop definitions.

## Required dependency correction

The draft names `views.Views.impl.materialize_loop1` in its theorem statement and unfolds it in the proof. [Draft lines 23 and 26](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/native-materialize-loop-draft-001.lean:21). A definition of `materialize_loop1.body` alone does not define this separate wrapper constant. The original generated wrapper is:

```lean
@[rust_loop] def views.Views.impl.materialize_loop1
    (parents : serde_json.map.Map String serde_json.value.Value)
    (v21 : alloc.collections.btree.map.Iter String views.ChildRow)
    (children : serde_json.map.Map String serde_json.value.Value) :
    Result (serde_json.map.Map String serde_json.value.Value) := do
  loop
    (fun (v211, children1) =>
      views.Views.impl.materialize_loop1.body parents v211 children1)
    (v21, children)
```

The display above is reformatted for reading; conservation work must use the original bytes and original namespace context. [Original generated wrapper, including attribute and source comment](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated/Funs.lean:2695).

The parent task reports that `NativeProjectionComponents` currently includes only the body. Under that supplied fact, the exact original wrapper must be included in the draft's imported declaration closure before the theorem can typecheck. Including it in `NativeProjectionComponents` is the direct component extension; a new isolated component module importing the existing components and adding the conserved wrapper would also satisfy this dependency without requiring that particular module to change. A body law cannot substitute for the absent constant. `Aeneas.Std.WP` supplies the generic `loop`, not this project-specific wrapper. [Generic loop definition](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:452), [existing projection laws import and body-only theorem uses](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeProjectionLaws.lean:1).

**Read-scope limitation:** `NativeProjectionComponents.lean` itself was not in the earlier explicit source allowlist and was not inspected for this review. Therefore its only-body status is an input supplied by the parent, not independently verified here. If another imported module already defines the exact wrapper, no duplicate definition should be added. Verifying the full import closure requires an explicit source-scope extension.

## Binder, type, and elimination inspection

I found **no definite binder, type, or elimination error** in the draft's proof text, assuming the exact wrapper is available and the existing candidate types/definitions have the shapes already used by `NativeProjectionLaws`. The following points line up with the inspected source:

- `loop.spec_decr_nat` receives its five explicit data arguments in the correct order: measure, invariant, postcondition, body, initial state. Its remaining two premises are the body specification and initial invariant, matching the draft's two bullets. [Draft application](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/native-materialize-loop-draft-001.lean:27), [SDK argument order](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:784).
- The measure is remaining-list length. The invariant computes the final fold from the current suffix and accumulator with the **fixed original basis**. This agrees with the generated wrapper closure and the existing nonempty body law. The last `rfl` is the expected initial-invariant proof. [Draft invariant and initial proof](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/native-materialize-loop-draft-001.lean:28), [body law](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeProjectionLaws.lean:54).
- The state pattern `⟨⟨remaining⟩, ⟨acc⟩⟩` is consistent with the iterator and map wrapper forms used in the existing body equations. After the empty rewrite, `WP.spec_ok` reduces the successful body specification to its done postcondition; congruence under `serde_json.map.Map.mk` reduces the desired map equality to the invariant with an empty suffix. [Draft empty branch](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/native-materialize-loop-draft-001.lean:33), [existing empty law](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeProjectionLaws.lean:48), [successful WP rule](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:96).
- After the nonempty rewrite, the body postcondition is the continuing invariant conjoined with strict decrease. The successor state uses `tail` and the same accumulator update as the left fold; `Nat.lt_succ_self _` has the expected mathematical inequality `tail.length < tail.length + 1`. No decreasing measure is required on the terminal empty branch. [Draft nonempty branch](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/native-materialize-loop-draft-001.lean:40), [SDK continuing and terminal premises](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:789).
- `cases program using Result.cases` uses the SDK's explicit eliminator for the sealed, non-inductive `Result` representation. It has return, visible-effect, and divergence branches. The return branch reduces the hypothesis to `value = expected`; the other two contradict total WP. The `[simp]` attributes on `spec_ok`, `spec_vis`, and `spec_div` make `simp_all` a source-supported sketch. This uses total `spec`, not partial `dspec`. [Draft equality bridge](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/native-materialize-loop-draft-001.lean:17), [eliminator](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:93), [total constructor WP rules](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:96).

The helper's `{α : Type}` fixes the universe to zero. That suffices for the theorem's concrete JSON map result and is not a type error here. If deliberately reused as a universe-polymorphic library helper, its binder could later become `{α : Type u}`; this is optional generalization, not a required repair.

## Independently stated expected type and remaining checks

`foldRows` is defined directly with `List.foldl` and existing `put`/`projectedFields`, so the draft's expected answer is independent of the generated loop. [Draft fold definition](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/proposals/native-materialize-loop-draft-001.lean:13). For a later declaration/type audit, expand the theorem's right-hand side to:

```lean
ok (serde_json.map.Map.mk
  (rows.foldl
    (fun acc entry =>
      put acc entry.1
        (.Object (serde_json.map.Map.mk
          (projectedFields basis entry.2.owner entry.2.phase))))
    children))
```

The expected left-hand side remains the **original** `views.Views.impl.materialize_loop1 ⟨basis⟩ ⟨rows⟩ ⟨children⟩`. No new recursive loop or body replacement is warranted.

The exact availability/names of `List.foldl_nil` and `List.foldl_cons`, and elaboration of the unannotated state lambdas and simplification steps, were not checked. The list-library source was outside the allowed inspection set. These are later elaboration checks, not definite failures found by this review. The SDK does independently demonstrate applying `loop.spec_decr_nat` with a tuple-state projection lambda to an original loop. [SDK worked application](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/SliceIter.lean:469).

Next, after the live wrapper finishes, conserve the exact original wrapper into an isolated candidate's import closure, then run the normal authorized elaboration/check workflow on the draft and independently stated theorem type. Keep any dependency/admission audit separate from the mere fact that a proof elaborates. This review establishes neither a checked loop theorem nor native map/library/compiler adequacy, and does not close whole-native B04. [Existing component boundary](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeProjectionLaws.lean:7).
