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

theorem orderedInsert_contract (compare : K → K → Ordering)
    (relation : K → K → Prop)
    (irreflexive : ∀ key, ¬ relation key key)
    (transitive : ∀ a b c, relation a b → relation b c → relation a c)
    (less : ∀ a b, compare a b = .lt → relation a b)
    (equal : ∀ a b, compare a b = .eq → a = b)
    (greater : ∀ a b, compare a b = .gt → relation b a)
    (key : K) (replacement : V) (rows : Map K V)
    (ordered : (keys rows).Pairwise relation) :
    let result := orderedInsert compare key replacement rows
    result.1 = lookup key rows ∧
    lookup key result.2 = some replacement ∧
    (∀ query, query ≠ key → lookup query result.2 = lookup query rows) ∧
    (keys result.2).Pairwise relation ∧
    WellFormed result.2 ∧
    length result.2 = length rows + (if (lookup key rows).isNone then 1 else 0) := by
  have valid := CollectionsGap.capture_valid compare relation transitive less equal greater key rows ordered
  have old : (writeEntry replacement (CollectionsGap.capture compare key rows)).1 = lookup key rows := by
    simpa only [CollectionsGap.capture_render] using
      gap_old relation irreflexive key replacement (CollectionsGap.capture compare key rows) valid
  have present := gap_lookup_same relation irreflexive key replacement (CollectionsGap.capture compare key rows) valid
  have ordering := gap_order relation transitive key replacement (CollectionsGap.capture compare key rows) valid
  simp only [← capture_write]
  refine ⟨old, present, ?_, ordering, CollectionsGap.ordered_unique relation irreflexive _ ordering, ?_⟩
  · intro query different
    simpa only [CollectionsGap.capture_render] using
      gap_lookup_other relation key query replacement (CollectionsGap.capture compare key rows) valid different
  · have size := gap_length replacement (CollectionsGap.capture compare key rows)
    simpa only [CollectionsGap.capture_render, old] using size

theorem string_orderedInsert_contract
    (key : String) (replacement : transition_study036.serde_json.value.Value)
    (rows : Map String transition_study036.serde_json.value.Value)
    (ordered : (keys rows).Pairwise (fun left right => NativeKeyOrder.cmpString left right = .lt)) :
    let result := orderedInsert NativeKeyOrder.cmpString key replacement rows
    result.1 = lookup key rows ∧
    lookup key result.2 = some replacement ∧
    (∀ query, query ≠ key → lookup query result.2 = lookup query rows) ∧
    (keys result.2).Pairwise (fun left right => NativeKeyOrder.cmpString left right = .lt) ∧
    WellFormed result.2 ∧
    length result.2 = length rows + (if (lookup key rows).isNone then 1 else 0) := by
  apply orderedInsert_contract NativeKeyOrder.cmpString
    (fun left right => NativeKeyOrder.cmpString left right = .lt)
  · intro value related
    have self := (NativeKeyOrder.string_compare_eq value value).mpr rfl
    simp [self] at related
  · intro left middle right first second
    simp only [NativeKeyOrder.string_compare_sdk] at *
    exact Std.TransCmp.lt_trans first second
  · intro _ _ related; exact related
  · intro left right same
    exact (NativeKeyOrder.string_compare_eq left right).mp same
  · intro left right greater
    have swapped := NativeKeyOrder.string_compare_swap left right
    rw [greater] at swapped
    cases reverse : NativeKeyOrder.cmpString right left with
    | lt => rfl
    | eq => simp [reverse] at swapped
    | gt => simp [reverse] at swapped
  · exact ordered

theorem actual_insert_contract
    (key : String) (replacement : transition_study036.serde_json.value.Value)
    (rows : Map String transition_study036.serde_json.value.Value)
    (ordered : (keys rows).Pairwise (fun left right => NativeKeyOrder.cmpString left right = .lt)) :
    ∃ updated : Map String transition_study036.serde_json.value.Value,
      serde_json.map.MapStringValue.impl.insert ⟨rows⟩ key replacement =
        Aeneas.Std.Result.ok (lookup key rows, serde_json.map.Map.mk updated) ∧
      lookup key updated = some replacement ∧
      (∀ query, query ≠ key → lookup query updated = lookup query rows) ∧
      (keys updated).Pairwise (fun left right => NativeKeyOrder.cmpString left right = .lt) ∧
      WellFormed updated ∧
      length updated = length rows + (if (lookup key rows).isNone then 1 else 0) := by
  have facts := string_orderedInsert_contract key replacement rows ordered
  refine ⟨(orderedInsert NativeKeyOrder.cmpString key replacement rows).2, ?_, facts.2⟩
  simpa only [facts.1] using insert_spec rows key replacement

/- This proposed six-property contract still requires actual kernel checking and
concrete comparator/domain/source/runtime admission. It states abstract map
semantics, not a desired Core projection/evaluation/observation equivalence. -/
end Correspondence036.NativeJsonMapRefinement
