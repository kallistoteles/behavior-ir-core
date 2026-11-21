# Native child materialization loop: source-only completion plan

Status: **unselected proposal; no Lean elaboration, build, test, extraction, or native admission was performed for this note.** Only the specifically allowed SDK sources, candidate dependencies, Rust view source, and generated materialization loop definitions were inspected. This note proposes an extension; it does not assert that the proposed theorem is checked, that the current running wrapper uses it, or that native B04 is closed. No existing experiment, feature, generated, or `/var/tmp` file was changed.

## Existing facts and exact target

The generated child loop takes a fixed JSON-map argument named `parents`, a child iterator, and a child-output accumulator. Every nonempty iteration creates its fields by inserting `phase` into that fixed map, then inserting `owner`, then inserting the object under the child's id into the accumulator. The recursive loop state contains only the iterator and accumulator; the fixed map is captured by the body closure. Consequently the general theorem must retain an arbitrary **basis** map, rather than silently replacing it with an empty map. [Generated body and loop](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated/Funs.lean:2680).

The corresponding Rust source initializes each child's `fields` with `Map::new()`, inserts phase then owner, and inserts the resulting object into `children`. Thus the later Rust-facing specialization needs the appropriate empty-basis initialization argument. The name `parents` in the generated loop's parameter is not itself evidence that its value is the completed parent output. This note did not inspect the generated outer wrapper. [Rust materialization](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:204).

The candidate component already defines `put`, `Rows`, and `projectedFields`; the latter is precisely phase-then-owner insertion into an arbitrary basis. Its `materialize_empty` theorem returns the unchanged child accumulator on an empty cursor. Its `materialize_step` theorem removes one cursor element and inserts exactly the projected child object. These are source-visible theorem declarations and proof bodies, not a fresh verification result from this investigation. [Definitions](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeProjectionLaws.lean:13), [empty and step laws](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeProjectionLaws.lean:48).

The smallest proposed component addition is one complete-loop equality theorem alongside those two body laws, with a private WP-to-equality helper only if useful. It needs no generated-body replacement, no new iterator API, no new dependency interpretation, and no fuelled reimplementation. In a future authorized isolated candidate, append the theorem to `NativeProjectionLaws.lean` or add a module importing it; do not change the live selected file.

Here is the **independently stated expected type**, expressed directly as a list fold rather than defining the expected answer by calling the generated loop. This is a proposed declaration shape, not checked Lean:

```lean
-- Within Correspondence036.NativeProjectionLaws, with its existing opens.
theorem materialize_loop1_fold
    (basis children : Rows)
    (rows : List (String × views.ChildRow)) :
    views.Views.impl.materialize_loop1
        (serde_json.map.Map.mk basis)
        (alloc.collections.btree.map.Iter.mk rows)
        (serde_json.map.Map.mk children) =
      ok (serde_json.map.Map.mk
        (rows.foldl
          (fun acc entry =>
            put acc entry.1
              (.Object (serde_json.map.Map.mk
                (projectedFields basis entry.2.owner entry.2.phase))))
          children))
```

This type covers all finite stored cursor lists and arbitrary starting accumulator/basis maps under the current candidate interpretations. It preserves list order, repeated ids, replacement behavior, and preexisting accumulator entries through the existing `put` operation. It requires no additional sortedness or no-duplicate premise to express the candidate equation; native representation/order adequacy is a separate obligation. The candidate data layer itself explicitly withholds native map admission and canonical native iteration ordering. [Candidate map boundary](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsData.lean:5), [put uses ordered insertion](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeProjectionLaws.lean:16).

## Exact SDK loop rules and finite decrease

`loop` is a `partial_fixpoint`: bind the body result, recurse on `.cont`, and return `ok` on `.done`. Merely unfolding its definition does not prove finite completion. [Loop definition](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:447).

`loop.spec` takes a measure into any type with `WellFoundedRelation`, an invariant, a final postcondition, the actual body, and the initial state. For every invariant state, the body must satisfy the total WP whose `.done` branch establishes the postcondition and whose `.cont` branch establishes both the invariant and strict decrease according to that relation. The initial invariant is the other premise. `loop.spec_decr_nat` is the existing specialization to `Nat` and `<`, with the same obligations. Neither requires rewriting the generated body into a new recursive function. [General rule](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:757), [natural decrease rule](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:784).

For a fixed basis, abbreviate the fold expression above as `F remaining acc`; fix `target := F rows children`. Use the generated state type

```lean
alloc.collections.btree.map.Iter String views.ChildRow ×
  serde_json.map.Map String NativeValue
```

and these mathematical arguments to `loop.spec_decr_nat`:

```lean
measure p := p.1.remaining.length
inv p     := F p.1.remaining p.2.data = target
post out  := out = serde_json.map.Map.mk target
body p    := views.Views.impl.materialize_loop1.body
               (serde_json.map.Map.mk basis) p.1 p.2
initial   := (alloc.collections.btree.map.Iter.mk rows,
              serde_json.map.Map.mk children)
```

The `.remaining` field is used by the candidate shared iterator definition; `.data` is used by its JSON iterator initialization laws. The existing candidate `shared_next` law makes the head/tail behavior explicit. [Shared next implementation](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCollectionIteration.lean:18), [shared next law](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCollectionIteration.lean:109), [JSON map data access](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCollectionIteration.lean:142).

Proof obligations are small and concrete:

1. Unfold only the generated `materialize_loop1` wrapper to expose its existing `loop` call. Apply `loop.spec_decr_nat` to that exact captured body. The initial invariant is reflexivity.
2. Destructure the state and its single-field iterator/map wrappers; split the remaining list.
3. Empty list: rewrite using `materialize_empty`. Reduce WP on `ok`; the invariant reduces to `acc = target`, and congruence under `serde_json.map.Map.mk` establishes the done postcondition.
4. Nonempty `(id, row) :: tail`: rewrite using `materialize_step`. Reduce WP on `ok`; the continuing accumulator is exactly `put acc id (.Object ⟨projectedFields basis row.owner row.phase⟩)`. Unfold one `List.foldl` step in the old invariant to obtain the new invariant. The decrease is `tail.length < ((id, row) :: tail).length`, discharged by the elementary strict successor inequality.
5. Convert the resulting total WP with postcondition `out = ⟨target⟩` to the expected equality.

The SDK's slice-iterator proof demonstrates this same rule application pattern on the original loop, including a measure, invariant, body WP, and strict-decrease obligation. Its mutation/backward-function invariant is specific to slices and is not needed for this shared-map cursor. [SDK worked application](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/SliceIter.lean:469).

The existing `consume_all_shared` theorem consumes exactly `rows.length` successful iterator items in a separate fuelled `consume` function. It does not prove the generated materialization loop, which also performs insertions and then observes exhaustion. Reuse the existing body laws with the actual SDK loop rule; no change to `consume` is necessary. [Fuelled consumer](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCollectionIteration.lean:98), [all-items consumer law](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCollectionIteration.lean:198).

## WP-to-equality, with no semantic-library search needed

`WP.spec` is defined using total `DWP`; `WP.dspec` uses partial `DWLP`. The local SDK proves `spec (ok x) p ↔ p x`, and both `spec (.vis e k) p` and `spec div p` equivalent to `False`. By contrast, `dspec div p ↔ True`; a partial spec alone cannot establish the desired successful result equation. [Definitions](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:56), [total constructor rules](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:96), [partial divergence rule](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:164).

A local bridge can therefore have this independent type:

```lean
private theorem eq_ok_of_total_spec
    {α : Type} {r : Result α} {expected : α}
    (h : Aeneas.Std.WP.spec r (fun value => value = expected)) :
    r = ok expected
```

Its source-based proof method is `Result.cases` on `r`: in the return branch use `WP.spec_ok` to rewrite the returned value to `expected`; the visible-effect and divergence branches contradict `WP.spec_vis` and `WP.spec_div`. The SDK explicitly provides `Result.cases` as the cases eliminator for its non-inductive `Result` representation. An initial proof sketch is `cases r <;> simp_all`, relying on those simp-tagged rules; exact elaboration remains to be checked later. [Result representation and eliminator](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:65).

`WP.spec_exists` only yields an existential successful-postcondition value, discarding the program result relation in its conclusion. It is not by itself a result-equality bridge. `Result.match.isOk` is another available bridge if a proof independently establishes a matching observation, but it is unnecessary for the constructor-case method above. The similarly named `Result.of_wp` uses the separate mvcgen `wp` interface, so it is not a direct eliminator for the loop rule's `WP.spec`. [Existential conclusion](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:142), [match-to-equality bridge](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Primitives.lean:208), [mvcgen bridge](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/WP.lean:716).

## Next isolated work and remaining boundaries

1. After the live wrapper finishes, create an isolated candidate that imports the unchanged generated components and existing projection laws. State the full expected equality above independently before supplying its proof.
2. Add the total-WP bridge locally, then prove the loop WP with remaining-list length and the suffix-fold invariant. Elaborate only through the normal authorized candidate workflow; preserve original generated bodies.
3. Record the checked theorem type and its dependency/admission audit separately from this source proposal. Then consider the empty-basis/empty-child-accumulator specialization and composition with parent materialization as separate work.

No additional support source is needed to formulate this plan: the permitted files expose the body equations, loop rule, result eliminator, and total-WP constructor rules. Exact `List.foldl` simplification lemma names, record-elaboration details, and whether imports already expose all required declarations were not checked. If the later elaboration needs their owning source, obtain an explicit read-scope extension rather than reading additional support files under the present allowlist.

Even a future checked loop equality remains a candidate dependency-level component result. The existing projection header explicitly excludes native library/allocator/effect/compiler adequacy, Store/version relations, full folds, and Core B01–B10 correspondence; the iterator header separately withholds native stored-order and allocator/ownership/drop/world adequacy. A new checked fold would address the child-loop fold gap only, leaving these other obligations and whole-native B04 correspondence open. [Projection boundary](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeProjectionLaws.lean:7), [Iterator boundary](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCollectionIteration.lean:9).
