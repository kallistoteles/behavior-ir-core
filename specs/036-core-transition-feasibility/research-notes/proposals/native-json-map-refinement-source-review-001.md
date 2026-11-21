# JSON map refinement draft: source review

New unselected review. Only the named draft and the five permitted repository
dependencies were read. No Lean/build/test/module execution, private read,
discovery or selected edit was performed. No execution outcome, kernel acceptance
or native admission is inferred.

Owners:

- `L`: proposal `native-json-map-refinement-draft-002.lean`.
- `D`: `experiments/transition-study036/proofs/Correspondence036/Dependencies`.

## Assessment

No definite Lean binder/type/proof mistake or circular desired-result assumption
was identified by manual source inspection. The six-property statement follows
the permitted capture/invariant interfaces, and its proof composes independently
stated input-order/comparator premises with the existing structural capture/write
equation. This remains an unselected, untested draft.

## Gap laws

`gap_old` correctly uses ValidGap's actual-key equality, front/suffix order bounds
and irreflexivity to rule out the query key in those regions. The callback supplied
to `lookup_none_iff.mpr` has the right type: membership of key in front/suffix would
instantiate below/above to `relation key key`, contradicting irreflexivity. In the
occupied case only front absence is needed for the first-match lookup to return
the captured previous payload. Sources: `L:9–31`;
`D/CollectionsInvariant.lean:11–18`; `D/CollectionsGap.lean:187–191`;
`D/CollectionsEntry.lean:89–100`.

`gap_lookup_same` needs the same front absence, then lookup at the rewritten key
returns the replacement. `gap_lookup_other` needs actual=key and query≠key; splitting
the front lookup gives identical front hits or the same suffix lookup. The latter
does not secretly require an additional irreflexivity premise. Sources:
`L:33–68`; `D/NativeJsonMapOperations.lean:14–17`;
`D/CollectionsEntry.lean:89–100`.

`gap_order` matches the existing vacant splice theorem and occupied splice-order
interface. In the occupied branch, substituting actual with key makes the target
definitionally the splice_order conclusion after reducing writeEntry and the pair
projection; an additional equality premise is not missing. Sources: `L:70–83`;
`D/CollectionsGap.lean:166–182`, `:263–270`.

`gap_length` is a structural law on an explicit Entry. A vacant write adds exactly
one row relative to toMap and returns none; an occupied write preserves length
and returns some previous. It does not assume uniqueness or confuse a previous
payload that happens to be a null JSON value with Option.none. The arithmetic
reductions are consistent with length_append. Sources: `L:85–89`;
`D/CollectionsGap.lean:19–25`, `:148–158`;
`D/NativeJsonMapOperations.lean:14–17`.

## Six-property contract

The theorem independently assumes an irreflexive/transitive relation, comparator
lt/eq/gt implications and input Pairwise ordering. It then derives ValidGap using
capture_valid. Its premise is not an assertion that the returned map already
satisfies lookup, frame, ordering or length correctness. Comparator-equal implies
actual key equality explicitly; that law is not inferred from the dictionary's
type. Sources: `L:91–107`; `D/CollectionsGap.lean:225–261`.

The final composition appears type-consistent:

- capture_render transports gap_old's original-map lookup to the input rows;
- gap_lookup_same supplies the new key's replacement lookup;
- rewriting orderedInsert backward through capture_write exposes the same
  captured write throughout the six conclusions;
- gap_lookup_other and capture_render supply every unequal-key frame;
- gap_order and ordered_unique supply Pairwise ordering and WellFormed;
- gap_length, capture_render and the independently proved old-value equality
  turn the structural vacant/occupied increment into the stated input-lookup
  `isNone` increment.

Sources: `L:108–119`; `D/CollectionsGap.lean:91–101`, `:272–278`;
`D/NativeJsonMapOperations.lean:39–50`.

The conjunction has six matching fields, and the `refine` expression supplies
them in the same order. Generic K/V binders and the DecidableEq K instance agree
with lookup_none_iff and lookup_append; no missing generic Value equality instance
is apparent. The reverse simp rule contains no recursive orderedInsert occurrence
on its replacement side, so no source-level rewrite cycle is apparent here.
Sources: `L:7`, `:100–119`; named dependency interfaces above.

## Scope

The result is an abstract pure orderedInsert contract for candidate map data. It
does not yet instantiate the concrete native String comparator laws, establish
source/feature/runtime representation adequacy, or prove native allocation/drop/
error behavior. Existing insert_spec is a separate bridge from the candidate JSON
API to orderedInsert; the draft does not pretend its generic statement alone
proves the native API or desired Core projection/evaluation/observation equality.
Sources: `L:121–123`; `D/NativeJsonMapOperations.lean:8–10`, `:76–84`;
`D/CollectionsInvariant.lean:5–6`.

Fresh checking of the exact expected statements, proof scripts and transitive
dependencies remains necessary. This note records no positive or negative Lean
execution result.
