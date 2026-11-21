module
public import NativeJsonMapOperations
public import CollectionsInvariant
@[expose] public section
namespace Correspondence036.NativeJsonMapRefinement
open CollectionsData NativeJsonMapOperations
variable {K V : Type} [DecidableEq K]

theorem gap_old (relation : K → K → Prop) (irreflexive : ∀ key, ¬ relation key key)
    (key : K) (replacement : V) (entry : CollectionsGap.Entry K V)
    (valid : CollectionsGap.ValidGap relation key entry) :
    (writeEntry replacement entry).1 = lookup key (CollectionsGap.toMap entry) := by
  cases entry with
  | vacant front actual suffix =>
    rcases valid with ⟨same, _, _, below, above⟩
    subst actual
    have frontAbsent : lookup key front = none :=
      (CollectionsInvariant.lookup_none_iff key front).mpr
        (fun member => irreflexive key (below key member))
    have suffixAbsent : lookup key suffix = none :=
      (CollectionsInvariant.lookup_none_iff key suffix).mpr
        (fun member => irreflexive key (above key member))
    simp [writeEntry, CollectionsGap.toMap, CollectionsEntry.lookup_append,
      frontAbsent, suffixAbsent]
  | occupied front actual previous suffix =>
    rcases valid with ⟨same, _, _, below, _⟩
    subst actual
    have frontAbsent : lookup key front = none :=
      (CollectionsInvariant.lookup_none_iff key front).mpr
        (fun member => irreflexive key (below key member))
    simp [writeEntry, CollectionsGap.toMap, CollectionsEntry.lookup_append, frontAbsent, lookup]

theorem gap_lookup_same (relation : K → K → Prop)
    (irreflexive : ∀ key, ¬ relation key key) (key : K) (replacement : V)
    (entry : CollectionsGap.Entry K V)
    (valid : CollectionsGap.ValidGap relation key entry) :
    lookup key (writeEntry replacement entry).2 = some replacement := by
  cases entry with
  | vacant front actual suffix =>
    rcases valid with ⟨same, _, _, below, _⟩
    subst actual
    have frontAbsent : lookup key front = none :=
      (CollectionsInvariant.lookup_none_iff key front).mpr
        (fun member => irreflexive key (below key member))
    simp [writeEntry, CollectionsEntry.lookup_append, frontAbsent, lookup]
  | occupied front actual previous suffix =>
    rcases valid with ⟨same, _, _, below, _⟩
    subst actual
    have frontAbsent : lookup key front = none :=
      (CollectionsInvariant.lookup_none_iff key front).mpr
        (fun member => irreflexive key (below key member))
    simp [writeEntry, CollectionsEntry.lookup_append, frontAbsent, lookup]

theorem gap_lookup_other (relation : K → K → Prop) (key query : K)
    (replacement : V) (entry : CollectionsGap.Entry K V)
    (valid : CollectionsGap.ValidGap relation key entry) (different : query ≠ key) :
    lookup query (writeEntry replacement entry).2 = lookup query (CollectionsGap.toMap entry) := by
  cases entry with
  | vacant front actual suffix =>
    rcases valid with ⟨same, _, _, _, _⟩
    subst actual
    simp only [writeEntry, CollectionsGap.toMap, CollectionsEntry.lookup_append]
    cases found : lookup query front <;> simp [lookup, different, found]
  | occupied front actual previous suffix =>
    rcases valid with ⟨same, _, _, _, _⟩
    subst actual
    simp only [writeEntry, CollectionsGap.toMap, CollectionsEntry.lookup_append]
    cases found : lookup query front <;> simp [lookup, different, found]

theorem gap_order (relation : K → K → Prop)
    (transitive : ∀ a b c, relation a b → relation b c → relation a c)
    (key : K) (replacement : V) (entry : CollectionsGap.Entry K V)
    (valid : CollectionsGap.ValidGap relation key entry) :
    (keys (writeEntry replacement entry).2).Pairwise relation := by
  cases entry with
  | vacant front actual suffix =>
    simpa [writeEntry] using CollectionsGap.valid_vacant_splice_order
      relation transitive key front suffix actual replacement valid
  | occupied front actual previous suffix =>
    rcases valid with ⟨same, frontOrdered, suffixOrdered, below, above⟩
    subst actual
    exact CollectionsGap.splice_order relation transitive front suffix key replacement
      frontOrdered suffixOrdered below above

theorem gap_length (replacement : V) (entry : CollectionsGap.Entry K V) :
    length (writeEntry replacement entry).2 = length (CollectionsGap.toMap entry) +
      (if (writeEntry replacement entry).1.isNone then 1 else 0) := by
  cases entry <;>
    simp [writeEntry, CollectionsGap.toMap, CollectionsGap.length_append, length] <;> omega

/- Compose these laws with CollectionsGap.capture_valid, capture_render and
NativeJsonMapOperations.capture_write to obtain public orderedInsert contracts.
This draft contains no native library/admission claim and has not been checked. -/
end Correspondence036.NativeJsonMapRefinement
