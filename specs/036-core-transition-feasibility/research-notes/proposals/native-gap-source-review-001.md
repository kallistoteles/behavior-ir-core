# Captured-gap candidate: static source review

Status: **new, unselected review** of `CollectionsGap-002.lean` and
`collections_gap_contract_001.py`. Only those files and the permitted existing
`CollectionsEntry`, `CollectionsFocus` and `CollectionsData` sources were read.
No build, test, kernel check, private/live output or protected artifact was
accessed; only this new note was written.

The captured front/key/suffix data and replacement equations address the old
append-at-end problem. Two contract corrections are needed before an attempted
check: repair the expected-type binder syntax and include the new comparator
laws among expected roots. The source does not yet connect forward capture to
the ordering premises of its splice lemma.

## Corrections and findings

1. **Expected-type strings terminate their quantifier too early.** The fourteen
   strings at `collections_gap_contract_001.py:5` put a comma after the implicit
   type binders, then continue with named binders, for example
   `∀ {Key Value : Type}, (stored : Key) ...`. The comma ends that forall's
   binders; the following parenthesized names are then parsed as terms rather
   than additional forall binders. `splice_lookup` has the same issue after its
   instance binder. Use `∀ {Key Value : Type} (stored : Key) ... , ...`, with
   `∀ {Key Value : Type} [inst : DecidableEq Key] (front suffix : ...) ... , ...`
   for lookup. This is a visible syntax defect in the prospective expectations;
   no actual Lean error output was read or generated here. After correcting the
   commas, no additional binder-order/result-shape mismatch was found by manual
   comparison with the fourteen corresponding statements at
   `CollectionsGap-002.lean:87–178`.

2. **The three new monadic comparator theorems are absent from expected roots.**
   `roots()` returns fourteen earlier structural/default/splice roots
   (`collections_gap_contract_001.py:4–6`) but omits `captureM_pure`,
   `captureM_failure` and `captureM_divergence`
   (`CollectionsGap-002.lean:66–85`). They therefore would not receive their own
   independently declared expected-type/selected-root coverage. Add these three
   exact expectations, preserving their actual implicit types, comparator and
   hypothesis binder order. Their presence in the compiled source alone is
   weaker than selecting them as declared subjects.

3. **The gap and comparator implementations look locally consistent.** Vacant
   rendering restores `append front suffix`; occupied rendering restores the
   stored key/value at that position (`CollectionsGap-002.lean:15–29`). Forward
   capture stops on less/equal and prepends skipped greater rows in their original
   order (`:31–42`). Vacant Default produces an occupied entry with exactly the
   same front/key/suffix; occupied Default preserves its stored key (`:44–50`).
   This fixes the old candidate's use of the whole original map as the new front
   (`experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsEntry.lean:36–42`).
   Backward reconstruction is structural and does not invoke the comparator.
   `captureM` binds each comparison and recursive result, so its scan preserves
   failure/divergence rather than converting it into vacancy (`:54–64`). The two
   direct outcome theorems concern failure/divergence at the current head
   (`:75–85`); general propagation through an arbitrary successful-greater prefix
   is not yet a stated theorem. No definite local state-transition error was
   found; successful elaboration remains unestablished by this review.

4. **The splice proof is conditional and does not prove capture correctness.**
   `splice_order` assumes ordered front/suffix and every front key below the
   inserted key and every suffix key above it, then uses transitivity for cross
   pairs (`CollectionsGap-002.lean:162–178`). Its proof structure matches those
   assumptions; no missing cross-pair case was found statically. There is no
   theorem showing that capture on a sorted map under a lawful concrete
   comparator establishes those gap premises. `capture_render` and
   `enter_roundtrip` hold even for an arbitrarily wrong comparator (`:91–101`),
   because they assert reconstruction only. Add that forward-to-gap relation
   before claiming an ordered insertion protocol. Also distinguish pairwise
   order from uniqueness: the relation is arbitrary and may be reflexive, while
   the existing `WellFormed` is key `Nodup` (`CollectionsData.lean:40–48`).
   Irreflexivity/equality compatibility or explicit absence/uniqueness premises
   are needed for the corresponding native uniqueness claim. `splice_lookup`
   only assumes absence in the front (`:156–160`), which suffices for its stated
   first-lookup result but permits duplicate equal keys in the suffix.

5. **The mutation control targets the intended old bug, narrowly.** The control
   verifies one mutation point before `render_prepend`, replaces the vacant
   closure with append-at-end, and keeps only the prefix plus its example
   (`collections_gap_contract_001.py:9–23`). The unchanged semantic expectation
   `[1,2,3]` then conflicts with the mutant's structural result `[1,3,2]`; this
   follows from the permitted append/keys definitions
   (`CollectionsFocus.lean:12–14`; `CollectionsData.lean:40–42`). It avoids relying
   on failure of an earlier changed theorem. It does not exercise capture's
   comparison branches, comparator outcome propagation, or derived ordering
   premises. The returned `normalized-False` label is a prospective expected
   diagnostic, not an observed rejection; its runner protocol was outside the
   allowed reads. Retain this control and add focused forward-capture controls
   when those forward laws become selected subjects.

The model remains explicitly unadmitted (`CollectionsGap-002.lean:6–9`). Its pure
`enter` and monadic `captureM` do not yet implement the exact external native
Entry API/dictionaries or prove caller compatibility for arbitrary arguments to
`Entry → Map`. A success-render law for `captureM`, lawful comparison/borrow and
native search-schedule binding, concrete ordered-gap invariants, compatible
backward composition, and allocator/default/drop/error/ownership refinement
remain separate obligations. The existing Default fail/divergence statements
(`:103–136`) preserve the local candidate outcomes; they do not establish native
effect adequacy or global rollback.
