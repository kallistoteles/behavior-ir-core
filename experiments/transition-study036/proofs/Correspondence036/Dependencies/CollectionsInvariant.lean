module
public import CollectionsData
@[expose] public section

/- Candidate representation invariants only. Native ordering, concrete
comparison/borrowing, allocator behavior and API admission remain separate. -/
namespace Correspondence036.CollectionsInvariant
open Correspondence036.CollectionsData
variable {Key Value : Type}

theorem lookup_none_iff [DecidableEq Key] (key : Key) (map : Map Key Value) :
    lookup key map = none ↔ key ∉ keys map := by
  induction map with
  | nil => simp [lookup, keys]
  | cons stored previous tail ih =>
    by_cases same : key = stored
    · simp [lookup, keys, same]
    · simp [lookup, keys, same, ih]

theorem keys_insert_absent [DecidableEq Key] (key : Key) (value : Value)
    (map : Map Key Value) (absent : lookup key map = none) :
    keys (CollectionsData.insert key value map).2 = keys map ++ [key] := by
  revert absent
  induction map with
  | nil => intro _; rfl
  | cons stored previous tail ih =>
    intro absent
    by_cases same : key = stored
    · simp [lookup, same] at absent
    · have absent_tail : lookup key tail = none := by
        simpa [lookup, same] using absent
      simp [CollectionsData.insert, keys, same, ih absent_tail]

theorem keys_insert_present [DecidableEq Key] (key : Key) (value : Value)
    (map : Map Key Value) (previous : Value) (present : lookup key map = some previous) :
    keys (CollectionsData.insert key value map).2 = keys map := by
  revert previous
  induction map with
  | nil => intro previous present; simp [lookup] at present
  | cons stored old tail ih =>
    intro previous present
    by_cases same : key = stored
    · simp [CollectionsData.insert, keys, same]
    · have present_tail : lookup key tail = some previous := by
        simpa [lookup, same] using present
      simp [CollectionsData.insert, keys, same, ih previous present_tail]

theorem wellFormed_insert [DecidableEq Key] (key : Key) (value : Value)
    (map : Map Key Value) (valid : WellFormed map) :
    WellFormed (CollectionsData.insert key value map).2 := by
  change (keys (CollectionsData.insert key value map).2).Nodup
  cases found : lookup key map with
  | none =>
    rw [keys_insert_absent key value map found]
    have absent_key : key ∉ keys map := (lookup_none_iff key map).mp found
    apply List.nodup_append.mpr
    refine ⟨valid, by simp, ?_⟩
    intro other other_mem fresh fresh_mem
    have fresh_eq : fresh = key := by simpa using fresh_mem
    subst fresh
    intro equality
    subst other
    exact absent_key other_mem
  | some previous =>
    rw [keys_insert_present key value map previous found]
    exact valid

theorem erase_keys_subset [DecidableEq Key] (key : Key) (map : Map Key Value) :
    keys (erase key map) ⊆ keys map := by
  induction map with
  | nil => simp [erase, keys]
  | cons stored previous tail ih =>
    by_cases same : key = stored
    · simp only [erase, if_pos same, keys]
      exact fun _ member => List.mem_cons_of_mem stored (ih member)
    · simp only [erase, if_neg same, keys]
      exact List.cons_subset_cons stored ih

theorem wellFormed_erase [DecidableEq Key] (key : Key) (map : Map Key Value)
    (valid : WellFormed map) : WellFormed (erase key map) := by
  revert valid
  induction map with
  | nil => intro _; simp [WellFormed, erase, keys]
  | cons stored previous tail ih =>
    intro valid
    have pair : stored ∉ keys tail ∧ (keys tail).Nodup := List.nodup_cons.mp valid
    by_cases same : key = stored
    · simpa [WellFormed, erase, same] using ih pair.2
    · change (keys (erase key (.cons stored previous tail))).Nodup
      simp only [erase, if_neg same, keys]
      apply List.nodup_cons.mpr
      exact ⟨fun member => pair.1 (erase_keys_subset key tail member), ih pair.2⟩

theorem length_keys (map : Map Key Value) : length map = (keys map).length := by
  induction map with
  | nil => rfl
  | cons stored previous tail ih => simp [length, keys, ih]

theorem length_insert_present [DecidableEq Key] (key : Key) (value : Value)
    (map : Map Key Value) (previous : Value) (present : lookup key map = some previous) :
    length (CollectionsData.insert key value map).2 = length map := by
  simpa only [length_keys] using congrArg List.length (keys_insert_present key value map previous present)

end Correspondence036.CollectionsInvariant
