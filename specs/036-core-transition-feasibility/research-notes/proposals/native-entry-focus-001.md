# Preserve the vacant entry's insertion position

Status: **new, unselected source research and model proposal**. No selected source
or existing note changed. No build, test, private artifact, raw IR, live output or
process inspection was used. Retained Rust reads were limited to the explicitly
allowed `entry.rs` and the `map.rs` entry implementation linked by the interface
note. Neither protected binary was accessed. No outcome of a0441 is inferred.

**Recommendation:** represent a vacant entry by `front`, `key`, and `suffix`,
captured during forward search. Reconstruct its original map as
`append front suffix`; after successful default insertion reconstruct
`append front (.cons key replacement suffix)`. This retains the insertion gap
without rerunning comparison during either backward function. An `original`
field is optional redundant data; if retained, require
`original = append front suffix`.

## Source facts and the precise gap

The retained Rust [VacantEntry fields](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map/entry.rs:47)
contain the moved key, an optional cached leaf-edge handle, dormant mutable map
and allocator (`entry.rs:47–62`). [BTreeMap.entry](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map.rs:1503)
performs forward tree search and stores the found occupied handle or vacant
`GoDown` handle; an empty map has a vacant `None` handle (`map.rs:1503–1530`).

[or_default](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map/entry.rs:348)
branches before invoking Default: occupied uses `into_mut`, vacant evaluates
Default then inserts (`entry.rs:348–367`). [Vacant insertion](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map/entry.rs:425)
uses `insert_entry(...).into_mut`; `insert_entry` inserts at the cached handle,
creates an empty root if necessary, updates length, and returns an occupied
handle (`entry.rs:425–478`). [Occupied into_mut](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map/entry.rs:604)
returns the value at its existing handle (`entry.rs:604–605`). These bodies show
captured-position use; the called node insertion implementation was not audited
here, so this is not a transitive theorem about all native comparison/effects.

The current positive vacant type retains only `original` and `key`, whereas the
occupied type already retains `front/stored/value/suffix`
(`experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCollectionsData.lean:30–40`).
The abstract `CollectionsEntry.orDefault` makes a formerly vacant entry occupied
with `front = original`, `suffix = nil`
(`proofs/Correspondence036/Dependencies/CollectionsEntry.lean:36–42`). Thus it
appends the key. For ordered stored keys `[1,3]`, a vacant key `2` becomes
`[1,3,2]`; this follows directly from the definitions, without execution. Its
existing new-value lookup law remains a valid unordered-model law (lines
102–107), but it is insufficient for native sorted insertion. The existing
`CollectionsFocus.capture` absent branch retains the whole map and loses the
gap, so wrapping that absent result cannot recover the missing position
(`CollectionsFocus.lean:16–22,38–47`).

## Minimal data and protocol

Proposed positive payloads, preserving the external type names/parameters:

```text
VacantEntry K V A   = { front : Map K V, key : K, suffix : Map K V }
OccupiedEntry K V A = { front : Map K V, stored : K, value : V, suffix : Map K V }
render(Vacant f k s)       = append f s
render(Occupied f k v s)   = append f (cons k v s)
valueBackwardVacant f k s replacement = Occupied f k replacement s
valueBackwardOccupied f stored s replacement = Occupied f stored replacement s
```

Here `front` is in original forward order, not a reversed scan accumulator. Empty
maps use `front = suffix = nil`; minimum/maximum insertion use an empty front or
suffix respectively. A length/index alone would also encode a gap but would need
to split the stored original again; front/suffix directly match the existing
occupied representation and make reconstruction structural.

The documented extracted interfaces must remain unchanged:
`entry : AC → OK → M → K → Result (E × (E → M))` and
`or_default : OK → Default V → AC → E → Result (V × (V → E))`, including
dictionary order and the actual generated `Entry` constructors
([map-primitive-interface-001.md:46–55,66–68](../map-primitive-interface-001.md#L46)).
This note uses that earlier transcription; it did not reread generated private
templates. Allocator `A` and its dictionary remain part of the signature even
when the candidate data has no allocator state.

Forward `entry` must locate the gap or occupied position once. On a vacant
result it must establish that the input map is `append front suffix`, the key is
absent under the admitted native comparison equivalence, all front keys precede
it, and it precedes all suffix keys. On occupied it retains the *stored* key,
not a comparator-equal supplied query key. An ordered list scan can implement
this candidate protocol under source-bound total/pure/stable comparison laws;
it does not reproduce an arbitrary effectful B-tree comparison schedule. Preserve
the supplied `Ord` dictionary, and do not replace comparator equality with Lean
equality without its concrete refinement. The documented effectful dictionary
and search-schedule boundary is
[map-primitive-interface-001.md:68,87–89,95–97](../map-primitive-interface-001.md#L68).

`or_default` occupied returns its current value and value-backward closure without
calling Default. Vacant binds the actual supplied Default operation once; only
its successful value permits the insertion result and closure. The entry-backward
closure then renders the compatible returned entry. Neither backward closure
needs `Ord`, `Default`, a search, or a new comparison. Keep the exported dictionary
arguments in the forward API even if a local reconstruction body does not use
them.

## Required laws before selecting this model

1. **Captured subject and roundtrip.** Rendering the forward entry restores the
   exact original map, including stored keys, values and order. Prove the vacant
   split equation and occupied decomposition independently of default insertion.
2. **Gap validity and ordered splice.** Under the concrete ordering/representation
   relation, absence and the two gap bounds imply that splicing a key/value keeps
   ordered unique keys, adds exactly that key and increases size by one. Vacant
   insertion at the beginning, middle and end are cases of this general law.
   `WellFormed` alone is only key `Nodup`
   (`CollectionsData.lean:40–48`); the normalization owner proves pairwise order
   separately (`CollectionsOrder.lean:99–106`).
3. **Conditional Default and outcomes.** Occupied is independent of the Default
   result, including a failing/diverging dictionary. Vacant calls it once and
   preserves `.fail error`/`.div`, returning no successful value/backward pair on
   those branches. The existing abstract laws already state these outcomes
   (`CollectionsEntry.lean:62–79`). Rust `or_default` itself returns a reference,
   not a Rust `Result`; Aeneas `Result` models extracted failure/divergence. The
   adjacent Rust fallible-thunk method also branches before evaluating the thunk
   (`entry.rs:197–204`), but it is not the selected `or_default` signature.
4. **Backward composition.** For successful vacant default and arbitrary final
   replacement `v`, composing `entry`'s backward with `or_default`'s backward
   gives `append front (.cons key v suffix)`. For occupied it gives
   `append front (.cons stored v suffix)`. Front/suffix and stored key are
   unchanged; no recompare/default invocation occurs during reconstruction.
5. **Caller compatibility.** The total type `E → M` admits arbitrary entries,
   but extracted callers must only return entries belonging to the captured
   focus: same front/suffix, same supplied vacant or stored occupied key; an
   untouched vacant may remain vacant, or become occupied at precisely its gap.
   A successful `or_default` value-backward always yields a compatible occupied
   entry. Prove this composition; do not infer it from the function type or allow
   transplanting an unrelated entry payload to justify the source relation.
6. **Effects and source binding remain explicit.** Default failure preceding
   insertion does not prove global rollback of Default/destructor effects.
   Allocation/allocator clones, OOM/panic/drop/borrow ownership and size bounds
   require their actual refinement. Insertion uses allocator cloning/root work
   and changes native length (`entry.rs:447–478`); an unconditional pure `.ok`
   splice is only a data-level candidate under justified effect premises.
   A prospective selection must bind the new payload, exact generated type/API
   declarations, independently expected theorem types and real negative controls;
   it cannot silently adopt this note as native admission
   (`../../contracts/correctness.md:28–40`).

This seam requires no new map algorithm in backward reconstruction. The necessary
new information is the vacant gap already discovered by forward search, together
with the laws connecting that gap and the two backward functions to the actual
source subject. Existing unordered helpers and notes can remain unchanged.
