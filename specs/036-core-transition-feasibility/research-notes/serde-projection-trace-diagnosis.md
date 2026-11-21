# Actual335 projection trace: next exact proof

Research date: 2026-11-18. Read-only source investigation apart from this new note; no builds/tests/downloads, existing selected-file edits, private-attempt mutations, or process inspection. Actual335 may still be closing. Native adequacy and B01–B10 remain unestablished.

The next proof should try **`exact h.1 T`**, immediately after `have h := NonPos.Fix.cond _ s; nonpos_cond_simp at h`. The visible actual335 condition puts the needed universally quantified `serialize_some` continuity fact in the **first conjunct**. No new continuity axiom, collection premise, or native equality premise is needed to attempt this term. This is a proposed proof, not an executed green result.

## What the actual output establishes

Actual335 compiles its copied native Option body successfully; its separate required continuity theorem fails. Its cache command warns for `cont_11 (failed)` and for `cont_12` with “no form matches” on a long `.2` projection of `Fix.unfold`. Those are distinct required directions, and fixing the element-dictionary projection does not itself establish the Serializer-dictionary direction ([NativeOption result](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0335/commands/NativeOption/result.json:1), [OptionContinuity stdout](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0335/commands/OptionContinuity/stdout.txt:1), [exact canary source](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0335/project/OptionContinuity.lean:10)).

The actual Projection module asks for:

```lean
NonPos.Cont (fun d : serde_core.ser.Serialize T => s.serialize_some d)
```

It then obtains `Fix.cond s`, normalizes it, prints the state, and tries `solve_by_elim [And.left, And.right]` ([Projection source](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0335/project/Projection.lean:12)). Its stdout begins with `error: failed` at that final search and a printed local hypothesis whose leading structure is:

```text
h : And
      (∀ (t : Type),
        @NonPos.Cont (Serialize t) (S → t → Result (Result Ok Error))
          instDomFix
          (Shape.dom (... Shape.pi S (... Shape.pi t (... Shape.const Result ...))))
          (the raw PProd projection of s's serialize_some field, specialized to t))
      ...
```

The result type here has two different `Result`s: outer Aeneas partial-result semantics and inner Rust `core.result.Result`. The raw first field projection shown in the actual condition has the exact `{T : Type} → Serialize T → S → T → ...` signature of `serialize_some` ([visible condition](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0335/commands/Projection/stdout.txt:5), [field signature](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Types.lean:958)).

At inspection time Projection stdout contained 258,048 bytes / 2,869 lines and stopped **midway through the fully expanded hypothesis**. No goal marker `⊢` or `Meta.Tactic.solveByElim` search node was retained in those visible bytes. Therefore this note uses the actual Projection source for the requested goal and the visible beginning of actual stdout for `h.1`; it does not claim to have read a complete search trace or the later conjuncts. The root reported a 120-second timeout, but no Projection result JSON was present during this inspection. Printing the entire raw `PProd` type with `pp.all` has obscured the much smaller fact needed for the next check.

## Why forward projection is a better first check than changing Dom

The goal's codomain instance is the usual pointwise `instDomForall` over `S` and `T`; the visible hypothesis uses `Shape.dom` with nested `Shape.pi` and a `Shape.const` leaf. The pinned definitions reduce these to the same pointwise Dom structure:

1. `Shape.dom` returns `Shape.sd.dom`.
2. `Shape.pi` supplies `Model.Shape.pi`, whose `Shape.pi'.dom` is `Dom.pi` of its body's Dom.
3. `Shape.const` supplies `Model.Shape.const`, whose `Shape.const'.dom` is the original supplied Dom, here the same Result monad instance.
4. `instDomForall` itself returns `Dom.pi`.

Thus **source-level definitional conversion is expected**, not an absent mathematical equivalence between two orders. Direct elaboration must confirm this; it has not yet been checked for the actual term ([Shape.dom](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Model/Shape.lean:219), [Shape.pi'.dom](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Model/Shape.lean:381), [Shape.const'.dom](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Model/Shape.lean:287), [model wrappers](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Model/Shape.lean:582), [ordinary Dom instance](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:40)). The generated `Serializer.serialize_some` projection also unfolds to the raw field projection in `h.1` ([projection generator](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:342)).

There is a more specific source-supported explanation for the search failure than the earlier depth hypothesis: the needed fact is a **universally quantified proposition inside a conjunction**. `solve_by_elim` searches backward by applying the supplied/local lemmas to goals. Applying `And.left` to a goal `P T` asks for `(P T) ∧ ?Q`, whereas the available `h` is `(∀ t, P t) ∧ rest`. The intermediate forward fact `h.1 : ∀ t, P t` is not automatically added by this search. Increasing depth does not supply that missing intermediate. Pinned `mkAssumptionSet` uses local hypotheses plus the requested/default lemmas; it does not flatten conjunction hypotheses. `applyTactics` invokes `g.apply` on each such expression ([solver application](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Tactic/SolveByElim.lean:54), [local assumption construction](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Tactic/SolveByElim.lean:303), [local-hypothesis implementation](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Tactic/SolveByElim.lean:366)).

This explains why even Option's **first** surviving Serializer condition can fail, while a tiny generic condition consisting of a single `∀ t, P t` works. It remains a diagnosis to validate with the direct term and the following controls; the retained trace has not proven that all actual failures have this one cause.

## Smallest next native-derived proof

Keep the exact actual335 `NativeOption` import/binding and original associated-type universe/parameters. Remove `pp.all true` and the global solver trace for this small check. Copy the Projection theorem and change only its final proof step:

```lean
example {T S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant : Type}
    (s : serde_core.ser.Serializer S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant) :
    NonPos.Cont (fun d : serde_core.ser.Serialize T => s.serialize_some d) := by
  have h := NonPos.Fix.cond _ s
  nonpos_cond_simp at h
  exact h.1 T
```

An equivalent second check isolates projection before specialization:

```lean
  have hs := h.1
  exact hs T
```

If the direct term fails conversion, retain **only** the compact inferred type of `h.1 T` and the requested goal, with `pp.all false`, then compare codomain Dom instances and the generated projection head. A useful stronger annotation check is:

```lean
  have hs : ∀ U : Type,
      NonPos.Cont (fun d : serde_core.ser.Serialize U => s.serialize_some d) := h.1
  exact hs T
```

Do not first introduce a `change` that silently chooses a new domain instance. These direct terms ask Lean to check the existing definitional conversion. If conversion genuinely fails, explicitly unfolding the identified definition is the next bounded experiment; adding an equality/continuity axiom is not.

## Minimal logic red/control and narrow correction

In a separate tiny module using the same pinned Lean, the following planned control distinguishes missing forward projection from NonPos's Dom machinery:

```lean
example (P : Type → Prop) (Q : Prop) (T : Type)
    (h : (∀ U : Type, P U) ∧ Q) : P T := by
  fail_if_success solve_by_elim only [h, And.left, And.right]
  exact h.1 T

example (P : Type → Prop) (Q : Prop) (T : Type)
    (h : (∀ U : Type, P U) ∧ Q) : P T := by
  solve_by_elim only [h.1]
```

These are proposed controls and have not been run. If the real direct native-derived proof succeeds, the narrow general correction is to **forward-project normalized conjunctions into leaf facts before backward application** in `nonpos_proj`, or to supply the exact per-field projected fact. Preserve each quantified clause as a whole, allowing `apply` to instantiate its parameters. Recursively split top-level Ands; for a quantified clause whose body itself contains And, either retain the applicable whole clause and recursively open/reabstract its binders, or rely on the existing `forall_and` normalization before splitting. The existing `nonpos_cond_simp` already includes `forall_and` ([macro](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:495)). This is proof automation over `Fix.cond`, not a new model law.

Before using a general fix, register or use just the proved `serialize_some` fact and recheck actual335's exact required `option_element_cont`. Derive its pointwise result from this fact using the existing constant-argument application and lambda laws; this isolates the element-dictionary direction from the separately observed `cont_12` projection lookup problem. Then check actual Vec's wrapper continuity and both collect_map argument directions. The later normalized clauses' projection paths must come from compact actual types, because the current retained stdout does not show them completely.

Require the existing real red and the exact same native-derived theorem green; check wrong-result/type rejection, missing opaque continuity rejection, transitive axioms (especially `sorryAx`), and fresh kernel replay of any new proved roots. A successful direct `serialize_some` proof establishes that library fact for these actual types, not serializer/iterator adequacy, a `Value.serialize` body, source/compiler correspondence, or Core native correctness. `Value.serialize` remains a separate opaque-body/refinement obligation.
