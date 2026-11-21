# Native and analysis B-tree collection contracts

Status: **new, unselected source comparison**. Only the five permitted retained
Rust source files in each source tree and existing E model sources were read.
No binaries, other artifacts, execution outputs, builds, tests or processes were
inspected. Neither protected binary was accessed. Compiler-version labels and
acquisition status were supplied by the task; this note does not independently
reverify them or establish native admission.

**Finding:** the reviewed native 1.98.1 and analysis 1.100 source agree on the
used map/entry/search/forward-iterator data contracts. Two differences require
explicit bridge treatment: the allocator bound changes from `Allocator + Clone`
to `AllocatorClone`, and native set insertion evaluates a concrete marker's
Default while analysis directly constructs that marker. No changed stored-key,
vacant-gap, conditional value-Default, ordering or forward-exhaustion rule was
found in the permitted sources. This is source evidence, not compiler/library
semantic equivalence.

## Source notation

`N` denotes the retained native source directory:
`/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/collections/btree/`.
`A` denotes the analysis source directory:
`/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/`.
Line references below identify the exact file in these directories. Source links:

| File | Native source | Analysis source |
| --- | --- | --- |
| Map | [N map.rs](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/collections/btree/map.rs:33) | [A map.rs](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map.rs:33) |
| Entry | [N map/entry.rs](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/collections/btree/map/entry.rs:19) | [A map/entry.rs](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map/entry.rs:19) |
| Set | [N set.rs](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/collections/btree/set.rs:875) | [A set.rs](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/set.rs:875) |
| Search | [N search.rs](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/collections/btree/search.rs:43) | [A search.rs](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/search.rs:43) |
| Nodes | [N node.rs](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/collections/btree/node.rs:1052) | [A node.rs](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/node.rs:1087) |

The comparison used complete source diffs to locate changes and bounded reads of
the relevant methods. Comment/whitespace/bound-spelling differences were separated
from changed executable expressions; no normalized text comparison is offered as
a proof of Rust behavior.

## Contracts that agree

| Seam | Source facts and exact locations |
| --- | --- |
| Ordering premise | Both require ascending keys under the key type's order, promise key-order iteration, and describe changed key order as a logic error with potentially observable bad behavior: N/A `map.rs:33–58`. This is a lawful/stable native-Ord premise, not a theorem that arbitrary dictionaries are safe. |
| Borrowed mutable lookup | Both require `K: Borrow<Q> + Ord`, `Q: Ord`, search once, return the existing value handle when found and none otherwise: N `map.rs:1006–1015`; A `:1008–1017`. |
| Map insertion and stored key | Both explicitly preserve the existing stored key for an equal-key replacement. `insert` branches through `entry`, updates the occupied value or inserts at the vacant focus: N `map.rs:1018–1055`; A `:1020–1057`. Occupied insertion is `mem::replace` of the value in both: N/A `map/entry.rs:625–629`. Supplied query keys must not replace comparator-equal stored keys. |
| Search and capture | Both `search_tree` descend until a found KV handle or vacant leaf-edge handle: N/A `search.rs:43–65`. Within-node search compares query against borrowed stored key, skips on Greater, returns KV on Equal and insertion edge on Less: N `search.rs:217–232`; A `:225–241`. `map.entry` stores that occupied/vacant handle and clones the allocator in each branch: N `map.rs:1501–1530`; A `:1503–1532`. |
| Entry/default | Both Entry enums have vacant/occupied payloads; vacant carries key, optional cached edge, dormant map and allocator, while occupied carries a KV handle: N/A `map/entry.rs:19–89`. Both `or_default` return the occupied mutable value without evaluating value Default; vacant evaluates value Default then inserts: N/A `:348–367`. Both vacant insertions use the cached handle, perform root/split work if needed, increment length and return an occupied handle: N/A `:425–478`. |
| Structural insertion | Both `node.insert_recursing` use the captured insertion edge, insert/split, ascend and propagate splits: N `node.rs:1058–1089`; A `:1093–1124`. These methods do not perform a new key search or have an `Ord` bound. Leaf insertion uses the edge index and capacity/split logic: N `node.rs:953–983`; A `:980–1011`. |
| Shared forward iteration | Shared map `into_iter` delegates to `iter`; `iter` initializes full range and exact length; `next` returns none at zero, otherwise decrements length and takes the next row: N `map.rs:1722–1741,2703–2710`; A `:1724–1744,2711–2718`. Both declare shared Iter fused: N `:1768`; A `:1771`. |
| Owned forward iteration | Both initialize a dying full range with map length/allocator, then return the next owned KV through `dying_next`: N `map.rs:1884–1900,1932–1941,1960–1965`; A `:1890–1908,1940–1950,1970–1975`. Both declare IntoIter fused: N `:1992`; A `:2002`. |
| Values and keys | Values initializes from `iter` and projects the same row order; its next delegates then projects the value: N `map.rs:2070–2072,2778–2780`; A `:2080–2082,2786–2788`. Keys similarly projects shared rows: N `:1998–2000`; A `:2008–2010`. |
| Set membership/update/removal | Contains delegates to map contains with the same borrowed-order bounds; insert's Boolean reports map absence; remove's Boolean reports map removal success. The stored equal element remains unchanged: N/A `set.rs:606–612,875–905,1053–1059`. The marker-construction difference at line 904 is discussed separately below. |
| Set forward traversal | Set iter wraps map keys; borrowed into_iter delegates to iter, owned into_iter wraps map owned iteration, and next delegates/projects keys. N/A `set.rs:1245–1247,1520–1548,1762–1767,1813–1818`. Both shared and owned iterators declare fused behavior at N/A `:1810,1857`, with the allocator-bound spelling difference on the owned declaration. |

## Differences: type bridge, executable expression, annotations

**Allocator bound is a real type/interface difference.** Native uses
`A: Allocator + Clone`; analysis uses `A: AllocatorClone`, including map and entry
payload types and owned iterator/insert methods (N/A `map.rs:189–200`,
`map/entry.rs:19–24,47–62,75–89,348`; N `node.rs:1058`; A `:1093`). Their clone
call sites in the reviewed methods agree. The defining allocator trait source
is outside the permitted five files, so this audit does not prove that the new
bound is merely an alias or that its instance dispatch/effects equal native
Allocator-plus-Clone. **Required bridge:** bind the actual native allocator and
analysis dictionary realization, including clone/allocation/error behavior,
before erasing it in the positive model. A matching map algorithm does not by
itself justify that erasure.

**Set marker initialization changes an executable expression.** Native
`set.insert` calls `SetValZST::default()`; analysis uses `SetValZST` directly
(N/A `set.rs:900–904`). The same change occurs in sorted set construction at
N/A `:1485–1487`. This is the concrete internal marker's Default, not the user's
map value Default used by `Entry.or_default`; the two should not be conflated.
The marker's defining/default implementation is outside the permitted files.
There is no demonstrated change to set contents, membership Booleans or ordering,
but classifying the removed call as effect-free requires that small owning-source
fact. Preserve this distinction in the source/version bridge rather than silently
asserting full body identity.

**Annotation/refactoring changes do not show a changed selected data contract.**
Analysis adds unsafe-audit/safety comments throughout search/node/map iteration
(for example N `search.rs:203–205,225–230` versus A `:205–210,233–239`; N
`map.rs:1735–1741` versus A `:1737–1744`) and narrows/repositions unsafe blocks
around otherwise corresponding operations (N `node.rs:1822–1848`; A
`:1888–1916`). These are distinct from the bound and marker-expression changes.
The complete files also contain changes outside the selected seam, including
map clear's root extraction spelling (N `map.rs:673`; A `:675`) and reference
spelling in set difference/intersection searches (N/A `set.rs:1974,2071`). This
note does not certify equivalence of those additional APIs or all stdlib code.

## Consequences for the current positive models

1. **The vacant-gap correction is needed for both versions.** Existing
   `NativeCollectionsData.lean:30–40` retains vacant `original/key` but occupied
   `front/stored/value/suffix`; `CollectionsEntry.lean:36–42` appends a new key.
   Both Rust versions retain a previously discovered insertion edge. Therefore
   the proposed vacant `front/key/suffix` split and comparison-free backward
   splice are source-facing requirements, rather than an adaptation demanded
   only by the analysis stdlib. Preserve conditional Default failure/divergence
   as already stated by `CollectionsEntry.lean:62–79`, with separately justified
   allocator/destructor effects.
2. **Stored rows must already satisfy native order.** The iterator model takes
   `CollectionsOrder.entries map.data` and performs head/tail steps
   (`NativeCollectionIteration.lean:18–60`). `entries` preserves stored cons order
   (`CollectionsOrder.lean:12–14`), while `CollectionsData.WellFormed` only says
   key Nodup (`CollectionsData.lean:48`). The take/drop laws
   (`NativeCollectionIteration.lean:148–166,188–208`) need an ordered source
   representation relation to yield either version's native key-order contract.
3. **Permanent empty results are weaker than no native effects.** In both
   versions, owned `dying_next` calls `alloc.clone()` and `deallocating_end` even
   on its zero-length branch (N `map.rs:1935–1937`; A `:1943–1945`), and the
   positive owned next ignores the allocator and returns pure `.ok none` on empty
   (`NativeCollectionIteration.lean:41–44`). The source supports fused returned
   values; it does not support claiming that repeated exhaustion performs no
   clone/deallocation protocol. The deallocating helper itself is outside the
   permitted files, so no physical-deallocation count is inferred. Drop/borrow/
   allocation effects remain explicit, as the model's scope already says at
   `NativeCollectionIteration.lean:9–12`.

No new list/cursor algorithm is indicated by the reviewed version differences.
The minimal next work is an explicit allocator/marker source bridge plus the
already identified ordered representation and vacant-focus laws, followed by the
independently declared source/proof checks. These observations do not discharge
actual native map/set/entry/iterator refinement or the Core correspondence.
