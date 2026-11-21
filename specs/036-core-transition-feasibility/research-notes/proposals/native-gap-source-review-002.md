# Captured-gap partition proofs: static follow-up

Status: **new, unselected source review** of the additions in
`CollectionsGap-003.lean:180–266`, against the explicitly permitted retained SDK
`Init/Data/List/Pairwise.lean`. No build, test, elaboration/kernel execution,
private/live output or protected artifact was accessed. Only this new note was
written. The earlier review remains unchanged.

**Finding:** the new proofs supply the previously missing pure-capture-to-gap
ordering link. No definite new binder, induction or branch error was found by
source inspection. Strict uniqueness follows from the new ordered splice result
once irreflexivity is supplied; irreflexivity is not currently in these theorem
statements. None of this is a checked proof result or native admission.

## Added proof review

- `ValidGap` stores actual-key equality, ordered front/suffix, and the two
  below/above bounds for both entry constructors (`CollectionsGap-003.lean:183–187`).
  `front_member` is a left-membership consequence of append rendering
  (`:189–193`). `prepend_valid` retains the actual key and suffix, adds the skipped
  stored key to the front, proves its relations to prior front members through
  `beforeEntry`, and extends the below bound through `beforeKey` (`:195–219`).
  Constructor alternatives and conjunction order match the predicate. No missing
  constructor case was found.
- `capture_valid` explicitly assumes the comparator's less/equal/greater
  implications and transitivity, then inducts on the map (`:221–257`). The less
  branch uses the entire original ordered list as its suffix and transitivity
  from queried key through stored head to the remaining suffix. Equality uses
  `key = stored` in the direction required by `actual = key`; greater uses the
  tail induction hypothesis and rewrites its rendered captured entry back to the
  tail. The intended dependent induction hypothesis accepts `split.2`, the tail
  ordering premise. These are plausible elaboration steps, not observed successful
  tactics; an actual check remains required.
- `valid_vacant_splice_order` unpacks the predicate, substitutes the actual key,
  and applies the existing general splice theorem with the same premise order
  (`:259–266`). The SDK's `List.pairwise_append` is exactly front Pairwise,
  suffix Pairwise and all cross-pair relations, matching that general theorem's
  proof. [SDK Pairwise.lean:170–172](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/List/Pairwise.lean:170)

## Strict order does imply Nodup

Given `ordered : rows.Pairwise relation` and
`irrefl : ∀ a, ¬ relation a a`, relation implies inequality: if related elements
were equal, substitution would contradict `irrefl`. Convert the Pairwise relation
with `List.Pairwise.imp`, then use `List.nodup_iff_pairwise_ne.mpr`. These are the
exact available SDK lemmas at
[Pairwise.lean:52–55](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/List/Pairwise.lean:52)
and [Pairwise.lean:296](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Init/Data/List/Pairwise.lean:296).
The final implication needs neither `DecidableEq` nor an additional transitivity
hypothesis. A proposed proof shape, not executed here, is:

```lean
have separated : rows.Pairwise (fun a b => a ≠ b) :=
  ordered.imp (fun {a b} related same => by
    subst b
    exact irrefl a related)
exact List.nodup_iff_pairwise_ne.mpr separated
```

Apply this to the rows returned by `valid_vacant_splice_order` to obtain the
spliced key list's Nodup and hence the existing model's `WellFormed`. The gap's
below/above bounds plus irreflexivity also exclude the queried key from either
original side. Without irreflexivity the relation could be universally true, so
the current pairwise theorem alone still permits duplicates. A small explicit
strict-order/Nodup corollary would close this *model-level* omission; it does not
require a new data structure.

## Remaining scope and expected subjects

Select four additional theorem roots with independently written expected types:
`front_member`, `prepend_valid`, `capture_valid`, and
`valid_vacant_splice_order`. `ValidGap` itself is a predicate definition, not a
theorem root. Preserve `capture_valid`'s binder order: compare, relation,
transitivity, less/equal/greater implications, queried key, map, ordered premise
(`CollectionsGap-003.lean:221–229`). The task reports that contract002 fixes the
prior syntax and includes the three monadic roots; that separate contract was
not reread in this review. The new partition roots and a strict uniqueness
corollary still need explicit expected-subject coverage and forward-capture
negative controls.

The new result is for pure `capture`; it does not yet state successful monadic
capture validity for a general comparator, arbitrary greater-prefix failure/
divergence propagation, or caller-compatible backward composition. Its
`compare a b = eq → a = b` premise (`:225`) deliberately restricts the admitted
comparator domain: generic native comparator-equal keys can have distinct stored
representatives. Prove that premise for the selected concrete source keys, or
generalize the occupied-key relation while retaining the stored representative;
do not infer structural equality from an arbitrary Ord dictionary.

Source/dictionary/allocator/default/drop/ownership effects, native search-schedule
compatibility and exact external Entry integration remain outside these pure
partition lemmas, as the candidate states at `CollectionsGap-003.lean:6–9`.
