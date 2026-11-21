module
public import CollectionsInvariant
public import Init.Data.List.Sort.Lemmas
@[expose] public section

/- Candidate canonical enumeration only. The supplied pure comparison must
still be related to each concrete native Ord/Borrow instance before admission. -/
namespace Correspondence036.CollectionsOrder
open Correspondence036.CollectionsData Correspondence036.CollectionsInvariant
variable {Key Value : Type}

def entries : Map Key Value → List (Key × Value)
| .nil => []
| .cons key value tail => (key, value) :: entries tail

def ofEntries : List (Key × Value) → Map Key Value
| [] => .nil
| (key, value) :: tail => .cons key value (ofEntries tail)

theorem entries_ofEntries (rows : List (Key × Value)) : entries (ofEntries rows) = rows := by
  induction rows with
  | nil => rfl
  | cons pair tail ih => cases pair; simp [entries, ofEntries, ih]

theorem ofEntries_entries (map : Map Key Value) : ofEntries (entries map) = map := by
  induction map with
  | nil => rfl
  | cons key value tail ih => simp [entries, ofEntries, ih]

theorem entries_keys (map : Map Key Value) : (entries map).map Prod.fst = keys map := by
  induction map with
  | nil => rfl
  | cons key value tail ih => simp [entries, keys, ih]

theorem key_mem_of_entry (key : Key) (value : Value) (map : Map Key Value)
    (member : (key, value) ∈ entries map) : key ∈ keys map := by
  have mapped : key ∈ (entries map).map Prod.fst := List.mem_map.mpr ⟨(key, value), member, rfl⟩
  simpa only [entries_keys] using mapped

theorem lookup_some_iff_entry [DecidableEq Key] (key : Key) (value : Value)
    (map : Map Key Value) (valid : WellFormed map) :
    lookup key map = some value ↔ (key, value) ∈ entries map := by
  revert valid
  induction map with
  | nil => intro _; simp [lookup, entries]
  | cons stored previous tail ih =>
    intro valid
    have pair : stored ∉ keys tail ∧ (keys tail).Nodup := List.nodup_cons.mp valid
    by_cases same : key = stored
    · subst stored
      have missing : (key, value) ∉ entries tail :=
        fun member => pair.1 (key_mem_of_entry key value tail member)
      simp [lookup, entries, missing, eq_comm]
    · have different_pair : (key, value) ≠ (stored, previous) :=
        fun equality => same (congrArg Prod.fst equality)
      simp [lookup, entries, same, different_pair, ih pair.2]

theorem lookup_eq_of_perm [DecidableEq Key] (key : Key)
    (left right : Map Key Value) (valid_left : WellFormed left)
    (valid_right : WellFormed right) (permutation : (entries left).Perm (entries right)) :
    lookup key left = lookup key right := by
  cases found : lookup key left with
  | none =>
    cases other : lookup key right with
    | none => rfl
    | some value =>
      have member := (lookup_some_iff_entry key value right valid_right).mp other
      have present := (lookup_some_iff_entry key value left valid_left).mpr
        (permutation.mem_iff.mpr member)
      simp [found] at present
  | some value =>
    have member := (lookup_some_iff_entry key value left valid_left).mp found
    have present := (lookup_some_iff_entry key value right valid_right).mpr
      (permutation.mem_iff.mp member)
    exact present.symm

def pairLE (le : Key → Key → Bool) (left right : Key × Value) : Bool := le left.1 right.1

def normalize (le : Key → Key → Bool) (map : Map Key Value) : Map Key Value :=
  ofEntries ((entries map).mergeSort (pairLE le))

theorem normalized_entry_perm (le : Key → Key → Bool) (map : Map Key Value) :
    (entries (normalize le map)).Perm (entries map) := by
  simp only [normalize, entries_ofEntries]
  exact List.mergeSort_perm (entries map) (pairLE le)

theorem wellFormed_normalize (le : Key → Key → Bool) (map : Map Key Value)
    (valid : WellFormed map) : WellFormed (normalize le map) := by
  have permutation : (keys (normalize le map)).Perm (keys map) := by
    simpa only [entries_keys] using (normalized_entry_perm le map).map Prod.fst
  exact permutation.nodup_iff.mpr valid

theorem lookup_normalize [DecidableEq Key] (le : Key → Key → Bool) (key : Key)
    (map : Map Key Value) (valid : WellFormed map) :
    lookup key (normalize le map) = lookup key map :=
  lookup_eq_of_perm key (normalize le map) map (wellFormed_normalize le map valid)
    valid (normalized_entry_perm le map)

theorem normalize_order (le : Key → Key → Bool)
    (trans : ∀ a b c, le a b → le b c → le a c)
    (total : ∀ a b, le a b || le b a) (map : Map Key Value) :
    (entries (normalize le map)).Pairwise (pairLE le) := by
  simp only [normalize, entries_ofEntries]
  exact List.pairwise_mergeSort
    (fun a b c ab bc => trans a.1 b.1 c.1 ab bc)
    (fun a b => total a.1 b.1) (entries map)

theorem normalize_idempotent (le : Key → Key → Bool)
    (trans : ∀ a b c, le a b → le b c → le a c)
    (total : ∀ a b, le a b || le b a) (map : Map Key Value) :
    normalize le (normalize le map) = normalize le map := by
  simp only [normalize, entries_ofEntries]
  apply congrArg ofEntries
  exact List.mergeSort_of_pairwise (List.pairwise_mergeSort
    (fun a b c ab bc => trans a.1 b.1 c.1 ab bc)
    (fun a b => total a.1 b.1) (entries map))

end Correspondence036.CollectionsOrder
