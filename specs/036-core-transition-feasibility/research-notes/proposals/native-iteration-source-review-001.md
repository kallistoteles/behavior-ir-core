# Native iterator candidate: source review

Status: **new, unselected research note** reviewing the unselected
`NativeCollectionIteration-001.lean`. No implementation or selected file changed.
No tests, builds, downloads, private artifacts, raw IR, live outputs or process
inspection were used. No conclusion about a0437 follows from this review. Neither
protected binary artifact was accessed.

**Finding:** no definite local iterator-state or take/drop specification defect
was found in this deliberately UNADMITTED library model. Its important remaining
requirements are source binding and a conditional ordered representation relation;
its own comments correctly leave native ownership/effect adequacy open. This is a
static assessment, not evidence that the Lean declarations elaborate or that any
theorem has passed a kernel check.

## Concrete source findings

1. **Stored order is preserved; ascending order is not established.** All five
   initializers use `CollectionsOrder.entries map.data` (or its key projection),
   without sorting or an ordering premise
   (`NativeCollectionIteration-001.lean:27–35,59–74`). The owning `entries`
   definition simply unfolds the stored cons order
   (`experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsOrder.lean:12–18`).
   Even `CollectionsData.WellFormed` only means distinct keys
   (`proofs/Correspondence036/Dependencies/CollectionsData.lean:40–48`): a stored
   sequence with distinct descending Nat keys is allowed and will be traversed
   in descending order. Thus adding only `WellFormed` would not justify a sorted
   traversal claim. The candidate explicitly acknowledges this at lines 9–12,
   so it is an admission gap, not an incorrect stated theorem.

   **Small next step:** retain the exact external API signatures and make any
   ordered-traversal theorem conditional on a representation relation requiring
   `entries map.data` to be ordered by the concrete native comparison. For a
   normalized model, the existing owner already states the needed pairwise order
   result under transitivity/totality
   (`CollectionsOrder.lean:77–85,99–106`). Do not silently sort inside this iterator
   API or assume the pure comparison equals native `Ord`.

2. **The local cursor equations account for consumption and exhaustion.** The
   five `next` definitions return head/tail, project only the value for `Values`,
   and preserve an empty cursor after returning `none`
   (`NativeCollectionIteration-001.lean:18–21,41–53,80–92`). `consume` threads the
   returned cursor, propagates `Result` failure through its monadic binds, stops
   at `none`, and performs no step at count zero (lines 98–107). The five general
   take/drop statements cover arbitrary counts, including counts beyond length
   (lines 148–196). Named full-consumption and exhausted-cursor corollaries are
   supplied only for the shared BTree iterator (lines 198–208); the corresponding
   owned/JSON/keys/values statements are consequences of their general laws, not
   a discovered semantic hole. Add those small corollaries only if they become
   independently selected expected proof roots.

3. **Allocator, ownership, drop and native failure behavior remain unmodelled.**
   The four APIs with an allocator dictionary accept it but do not use it
   (`NativeCollectionIteration-001.lean:27–44,59–60`), and all ten bodies return
   `.ok`. The actual positive type owners retain allocator type parameters only
   as phantoms and carry neither ownership tokens nor an allocation/drop/world
   state (`NativeCollectionsData.lean:5–24`). Borrowed and owned cursors therefore
   share the same row-consumption mathematics without proving the same native
   effects. The generic `consume` can propagate errors, but that does not establish
   which native operations may fail. These facts agree with the candidate's
   explicit scope comment (lines 9–12). **No local correction is required for its
   stated unadmitted role.** Native admission must separately bind each relevant
   effect/error/ownership premise to the extracted call context; avoid claiming
   that accepting an allocator dictionary proves those premises. The correctness
   contract requires this separation
   (`../../contracts/correctness.md:28–40,44`).

4. **Exact generated signature/source equality is still unverified here.** The
   file visibly contains ten distinct annotated candidate definitions with Rust
   names, concrete source-location comments and the expected cursor/result
   shapes (`NativeCollectionIteration-001.lean:14–92`). JSON rows use the actual
   generated `transition_study036.serde_json.value.Value` through the opened
   namespace/`NativeValue` abbreviation (lines 6,66–96), consistent with the
   positive iterator owner (`NativeJsonIterators.lean:9–15`). No obvious local
   `Bool`/erased-Value or residual-cursor type mismatch was found. However,
   comments and `rust_fun` strings do not authenticate equality to closed365's
   generated signatures. This review did not read private closed365 files, so it
   cannot certify binder order, implicitness, universes, dictionary type or
   complete generated template preservation against that producer.

   **Small integration requirement:** before selecting the candidate, use the
   established source-bound replacement pattern: freeze the generated template
   and the ten original block bytes/hashes, verify each exact declaration once,
   replace only those axiom blocks, and preserve every other generated binding.
   Independently declare expected initializer/step/consumption theorem types.
   Ensure the final import context contains only one declaration for each target
   name; importing this file beside an unchanged original `FunsExternal` with the
   same axioms would be a declaration collision. This is a prospective integration
   condition, not evidence that the unselected file currently collides. The
   existing replacement owner is
   `experiments/transition-study036/native_collection_layout_probe_v2.py:244–268` (its
   `NativeCollectionLayoutBlockMarker`, `BlockShape`, `BlockChanged` and
   `NodeLoss` checks); independent theorem-kind/type/axiom checks are owned by
   `experiments/transition-study036/check_proofs.py:85–97`.

The candidate can remain an unselected pure iterator model without broader
architecture changes. Its own equations do not establish the actual Rust/native
refinement required by `contracts/correctness.md:32–40`; source-bound selection,
fresh checking, concrete ordering and native adequacy remain distinct work.
