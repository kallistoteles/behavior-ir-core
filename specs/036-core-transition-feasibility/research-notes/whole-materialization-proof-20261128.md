# Complete generated materialization: checked helper, 28 November 2026

The actual a0588/r9612 run freshly checked three theorems about the **complete generated `Views::materialize`**, in the unified Views/reference extraction from a0585. All 23 compile/audit/export/kernel commands returned zero. The outer attempt also closed successfully, with unchanged sources, no resource stop, empty process tree/group, matching incremental/final storage accounting, and a verified attempt seal.

This is a checked helper under explicit candidate primitive interpretations. It does **not** establish native Rust/library/runtime correspondence, the Store/canonical-reconstruction relation, stage/apply preservation, or full B01–B10. Feature completion remains **65/153 tasks, 0/141 accepted timings, 0/47 diagnostics, 0/26 reproductions**. No task checkbox was advanced by this helper.

## What was actually checked

| Root | Exact subject |
| --- | --- |
| `parent_loop_fold` | The actual generated parent loop equals the specified ordered insertion fold for arbitrary represented rows and initial map. |
| `materialize_exact` | The complete actual generated materializer equals the specified parent/child projection for every represented `Views` value. |
| `materialize_frame` | Equal parent and child maps imply equal materialized values; other view fields do not affect this function's result. |

The roots are declared independently in [the project factory](../../../experiments/transition-study036/native_whole_views_context_v2.py) and proved in [NativeWholeViewsMaterialize.lean](../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeWholeViewsMaterialize.lean). The existing [child-loop proof](../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeMaterializeLoop.lean) and component laws were reused unchanged.

Exact expected types and the full transitive axiom inventory passed the executing audit. Every root uses only `propext`, `Classical.choice`, and `Quot.sound`. The selected roots and all their transitive dependencies were exported and accepted by a fresh Lean kernel: `Lean default kernel accepts the solution`. This does not claim rechecking every unrelated constant in the complete imported project.

## Conserved source and explicit open dependencies

The a0585 `Types.lean` and `Funs.lean` bytes are copied unchanged. The entire generated Views/reference context remains present, including `seed`, `stage`, `apply`, and `reference::state_facts`. No unrelated external call node is dropped to make compilation pass. Of the actual 85 external function nodes, 16 receive explicitly labelled candidate primitive definitions and 69 remain unbound external nodes, including Store dependencies. Six collection type holes receive positive candidate representations. Their source/API/layout/ordering/ownership/allocation/effect/compiler adequacy remains required work.

[NativeWholeViewsOperations.lean](../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeWholeViewsOperations.lean) exposes the existing generic ordered-insertion specification. It does not replace Views, Store, an evaluator, or an expected observation with a primitive. The checked equation is to this explicit candidate projection, **not yet to native canonical reconstruction**.

The [fixed driver](../../../experiments/transition-study036/native_whole_views_probe_v2.py) verifies the sealed a0585 producer, all four generated hashes, current model source references, the pinned tools, and the entire SDK inventory before and after checking. Exact generated-source and runtime-signature mutation controls remain active.

## Actual failures and corrections retained

1. **a0586/r9610:** compilation rejected a missing `CollectionsInvariant` import. New project tests reproduced both the missing dependency and failure to reject an unavailable local import. The corrected factory includes this module and checks local imports in dependency order before Lean starts. Six controls subsequently passed.
2. **a0587/r9611:** all earlier modules, the complete generated functions, and the reused child-loop proof compiled. The new proof failed on generated pair destructuring and a still-folded `String::to_owned` call. The correction adds the applicable `uncurry_apply_pair` reductions and explicitly unfolds `to_owned`, without changing theorem types, generated code, primitive definitions, or domains.
3. **a0588/r9612:** all three corrected roots passed compilation, exact-type/axiom audit, export validation, and fresh kernel checking. Six project controls also passed before this attempt. Two unused-simp warnings are retained in the actual compiler output; no full scoped-quality completion is inferred.

The failed metadata invocation `whole-views-proof-resume-002` omitted the required `--profile` argument and was rejected before creating a new attempt. Its corrected invocation and original failure are retained. Later [metadata launcher v36](../inputs/v2/bootstrap-metadata-v36.py) performs unchanged `study.py freeze` and `resume` commands sequentially in one supervised tree, retaining both actual zero exits and the same profile/240-second child bound.

The helper source subject was narrowed from inherited historical attempt logs to its actual current Python/control files, 14 model sources, sealed a0585 artifacts, and pinned tool manifests. It contains 298 references; the driver still checks all SDK bytes before/after. This is an explicit helper scope, not a reduction of the final native correspondence or reproduction obligations. Resource bounds, reader limits, source-conservation rules, and theorem types were not relaxed.

## Closed evidence identities

All paths below are relative to the registered roots. These references identify retained evidence; they are not executable authority or accepting result flags.

| Root/path | Bytes | SHA-256 |
| --- | ---: | --- |
| `future_evidence:attempts/a0588/checkpoint.json` | 1,561 | `e239ad5d878b07dc17b1640b53f514fc54291bfcfd65e136c8edb531cafee198` |
| `future_evidence:attempts/a0588/child/receipt.json` | 1,050,896 | `071e99d66c58e6c2b9681cbf34d6df8135701a991e2a48fab99f8b99561a70ce` |
| `private:ground-lean-probe/a0588/result.json` | 37,495 | `c4167a7aab7e85fcbce6107c6a2f73f8cd03e1ad5341e6df1ce0c4de13356544` |
| `private:ground-lean-probe/a0588/declared-proof/result.json` | 36,738 | `312859e99a5719c08dddd352533de93a1e4a131de2322af7b087e0f78365207e` |
| `private:ground-lean-probe/a0588/source-binding.json` | 10,376 | `65f75cab5a86630de9f3802e2e06156b259d062a028149e68e118cf357f8309d` |

The final accounted bytes were cache **38,271,507,635**, temporary **4,273,260,941**, and artifacts **10,155,465,293**, with root/data free bytes **31,476,830,208 / 4,533,035,008**. This attempt required no additional cleanup. Previous owned-cache reclamation and all old failed/sealed records remain preserved.

## Remaining implementation

Connect the typed views to actual canonical Store rows and full values; prove seed/relation construction and stage/apply preservation in the same conserved type context; justify the candidate primitive APIs at their native boundaries; then compose authority, prepared evaluation, Safety, complete observations, performed output/publication effects, and entrypoints. Full native checking, B/C, lifecycle measurements, final quality/conformance, and independent reproduction remain mandatory.
