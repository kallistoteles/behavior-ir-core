module
public import CollectionsEntry
public import Init.Data.List.Pairwise
@[expose] public section

/- Candidate captured ordered insertion gap. This is not a native Entry model
admission. The source-facing payload/allocator/dictionary/caller relation remains
required. Unlike the earlier unordered entry model, vacant insertion preserves
the actual captured front/suffix rather than appending after the entire map. -/
namespace Correspondence036.CollectionsGap
open Correspondence036.CollectionsData Correspondence036.CollectionsFocus
open Aeneas.Std Result
variable {Key Value : Type}

inductive Entry (Key Value : Type) where
| vacant : Map Key Value → Key → Map Key Value → Entry Key Value
| occupied : Map Key Value → Key → Value → Map Key Value → Entry Key Value

def toMap : Entry Key Value → Map Key Value
| .vacant front _ suffix => append front suffix
| .occupied front stored current suffix => append front (.cons stored current suffix)

def value : Entry Key Value → Option Value
| .vacant _ _ _ => none
| .occupied _ _ current _ => some current

def prepend (stored : Key) (current : Value) : Entry Key Value → Entry Key Value
| .vacant front key suffix => .vacant (.cons stored current front) key suffix
| .occupied front key previous suffix => .occupied (.cons stored current front) key previous suffix

def capture (compare : Key → Key → Ordering) (key : Key) :
    Map Key Value → Entry Key Value
| .nil => .vacant .nil key .nil
| .cons stored current suffix =>
  match compare key stored with
  | .lt => .vacant .nil key (.cons stored current suffix)
  | .eq => .occupied .nil stored current suffix
  | .gt => prepend stored current (capture compare key suffix)

def enter (compare : Key → Key → Ordering) (key : Key) (map : Map Key Value) :
    Entry Key Value × (Entry Key Value → Map Key Value) :=
  (capture compare key map, toMap)

def orDefault (default : Unit → Result Value) : Entry Key Value →
    Result (Value × (Value → Entry Key Value))
| .vacant front key suffix => do
  let current ← default ()
  ok (current, fun replacement => .occupied front key replacement suffix)
| .occupied front stored current suffix =>
  ok (current, fun replacement => .occupied front stored replacement suffix)

/-- The source-facing comparator may fail or diverge. Search preserves the
first such outcome and never performs a comparison in the backward function. -/
def captureM (compare : Key → Key → Result Ordering) (key : Key) :
    Map Key Value → Result (Entry Key Value)
| .nil => ok (.vacant .nil key .nil)
| .cons stored current suffix => do
  let found ← compare key stored
  match found with
  | .lt => ok (.vacant .nil key (.cons stored current suffix))
  | .eq => ok (.occupied .nil stored current suffix)
  | .gt => do
    let entry ← captureM compare key suffix
    ok (prepend stored current entry)

theorem captureM_pure (compare : Key → Key → Ordering) (key : Key)
    (map : Map Key Value) :
    captureM (fun left right => ok (compare left right)) key map =
      ok (capture compare key map) := by
  induction map with
  | nil => rfl
  | cons stored current suffix ih =>
    cases found : compare key stored <;> simp [captureM, capture, found, ih]

theorem captureM_failure (compare : Key → Key → Result Ordering)
    (key stored : Key) (current : Value) (suffix : Map Key Value)
    (error : Error) (failed : compare key stored = fail error) :
    captureM compare key (.cons stored current suffix) = fail error := by
  simp [captureM, failed]

theorem captureM_divergence (compare : Key → Key → Result Ordering)
    (key stored : Key) (current : Value) (suffix : Map Key Value)
    (diverged : compare key stored = .div) :
    captureM compare key (.cons stored current suffix) = .div := by
  simp [captureM, diverged]

theorem render_prepend (stored : Key) (current : Value) (entry : Entry Key Value) :
    toMap (prepend stored current entry) = .cons stored current (toMap entry) := by
  cases entry <;> rfl

theorem capture_render (compare : Key → Key → Ordering) (key : Key)
    (map : Map Key Value) : toMap (capture compare key map) = map := by
  induction map with
  | nil => rfl
  | cons stored current suffix ih =>
    cases found : compare key stored <;>
      simp [capture, found, toMap, append, render_prepend, ih]

theorem enter_roundtrip (compare : Key → Key → Ordering) (key : Key)
    (map : Map Key Value) : (enter compare key map).2 (enter compare key map).1 = map :=
  capture_render compare key map

theorem occupied_ignores_default (default : Unit → Result Value)
    (front : Map Key Value) (stored : Key) (current : Value) (suffix : Map Key Value) :
    orDefault default (.occupied front stored current suffix) =
      ok (current, fun replacement => Entry.occupied front stored replacement suffix) := rfl

theorem vacant_calls_default (default : Unit → Result Value)
    (front : Map Key Value) (key : Key) (suffix : Map Key Value) :
    orDefault default (.vacant front key suffix) = (do
      let current ← default ()
      ok (current, fun replacement => Entry.occupied front key replacement suffix)) := rfl

theorem vacant_failure (error : Error) (front : Map Key Value) (key : Key)
    (suffix : Map Key Value) :
    orDefault (fun _ => fail error) (.vacant front key suffix) = fail error := by
  simp [orDefault]

theorem vacant_divergence (front : Map Key Value) (key : Key) (suffix : Map Key Value) :
    orDefault (fun _ => .div) (.vacant front key suffix) = .div := by
  simp [orDefault]

theorem occupied_replacement (default : Unit → Result Value)
    (front : Map Key Value) (stored : Key) (current replacement : Value)
    (suffix : Map Key Value) :
    (do let (_, backward) ← orDefault default (.occupied front stored current suffix)
        ok (toMap (backward replacement))) =
      ok (append front (.cons stored replacement suffix)) := by
  simp [orDefault, toMap]

theorem vacant_replacement (current replacement : Value) (front : Map Key Value)
    (key : Key) (suffix : Map Key Value) :
    (do let (_, backward) ← orDefault (fun _ => ok current) (.vacant front key suffix)
        ok (toMap (backward replacement))) =
      ok (append front (.cons key replacement suffix)) := by
  simp [orDefault, toMap]

theorem keys_append (front suffix : Map Key Value) :
    keys (append front suffix) = keys front ++ keys suffix := by
  induction front with
  | nil => rfl
  | cons stored current tail ih => simp [append, keys, ih]

theorem length_append (front suffix : Map Key Value) :
    length (append front suffix) = length front + length suffix := by
  induction front with
  | nil => rfl
  | cons stored current tail ih => simp [append, length, ih]; omega

theorem splice_length (front suffix : Map Key Value) (key : Key) (current : Value) :
    length (append front (.cons key current suffix)) =
      length (append front suffix) + 1 := by
  simp only [length_append, length]
  omega

theorem splice_lookup [DecidableEq Key] (front suffix : Map Key Value)
    (key : Key) (current : Value) (absentFront : lookup key front = none) :
    lookup key (append front (.cons key current suffix)) = some current := by
  rw [CollectionsEntry.lookup_append, absentFront]
  simp [lookup]

theorem splice_order (relation : Key → Key → Prop)
    (transitive : ∀ a b c, relation a b → relation b c → relation a c)
    (front suffix : Map Key Value) (key : Key) (current : Value)
    (frontOrdered : (keys front).Pairwise relation)
    (suffixOrdered : (keys suffix).Pairwise relation)
    (below : ∀ stored ∈ keys front, relation stored key)
    (above : ∀ stored ∈ keys suffix, relation key stored) :
    (keys (append front (.cons key current suffix))).Pairwise relation := by
  rw [keys_append]
  change (keys front ++ key :: keys suffix).Pairwise relation
  apply List.pairwise_append.mpr
  refine ⟨frontOrdered, List.pairwise_cons.mpr ⟨above, suffixOrdered⟩, ?_⟩
  intro left leftMember right rightMember
  rcases List.mem_cons.mp rightMember with same | tailMember
  · subst right
    exact below left leftMember
  · exact transitive left key right (below left leftMember) (above right tailMember)

/-- A captured gap supplies the exact strict-order premises required for
splice_order. Equality of occupied keys is explicit; no comparator law is assumed
from an Ord dictionary merely because the dictionary has the right type. -/
def ValidGap (relation : Key → Key → Prop) (key : Key) : Entry Key Value → Prop
| .vacant front actual suffix | .occupied front actual _ suffix =>
  actual = key ∧ (keys front).Pairwise relation ∧ (keys suffix).Pairwise relation ∧
    (∀ stored ∈ keys front, relation stored key) ∧
    (∀ stored ∈ keys suffix, relation key stored)

theorem front_member (entry : Entry Key Value) (stored : Key) :
    (match entry with
     | .vacant front _ _ | .occupied front _ _ _ => stored ∈ keys front) →
      stored ∈ keys (toMap entry) := by
  cases entry <;> simp only [toMap, keys_append, List.mem_append] <;> intro member <;> exact Or.inl member

theorem prepend_valid (relation : Key → Key → Prop) (key stored : Key)
    (current : Value) (entry : Entry Key Value)
    (valid : ValidGap relation key entry)
    (beforeKey : relation stored key)
    (beforeEntry : ∀ member ∈ keys (toMap entry), relation stored member) :
    ValidGap relation key (prepend stored current entry) := by
  cases entry with
  | vacant front actual suffix =>
    rcases valid with ⟨same, frontOrdered, suffixOrdered, below, above⟩
    refine ⟨same, ?_, suffixOrdered, ?_, above⟩
    · apply List.pairwise_cons.mpr
      exact ⟨fun member membership => beforeEntry member (front_member (.vacant front actual suffix) member membership), frontOrdered⟩
    · intro member membership
      rcases List.mem_cons.mp membership with equal | inside
      · subst member; exact beforeKey
      · exact below member inside
  | occupied front actual previous suffix =>
    rcases valid with ⟨same, frontOrdered, suffixOrdered, below, above⟩
    refine ⟨same, ?_, suffixOrdered, ?_, above⟩
    · apply List.pairwise_cons.mpr
      exact ⟨fun member membership => beforeEntry member (front_member (.occupied front actual previous suffix) member membership), frontOrdered⟩
    · intro member membership
      rcases List.mem_cons.mp membership with equal | inside
      · subst member; exact beforeKey
      · exact below member inside

theorem capture_valid (compare : Key → Key → Ordering)
    (relation : Key → Key → Prop)
    (transitive : ∀ a b c, relation a b → relation b c → relation a c)
    (less : ∀ a b, compare a b = .lt → relation a b)
    (equal : ∀ a b, compare a b = .eq → a = b)
    (greater : ∀ a b, compare a b = .gt → relation b a)
    (key : Key) (map : Map Key Value)
    (ordered : (keys map).Pairwise relation) :
    ValidGap relation key (capture compare key map) := by
  induction map with
  | nil => simp [capture, ValidGap, keys]
  | cons stored current suffix ih =>
    have split := List.pairwise_cons.mp ordered
    cases found : compare key stored with
    | lt =>
      simp only [capture, found]
      change ValidGap relation key (.vacant .nil key (.cons stored current suffix))
      refine ⟨rfl, by simp [keys], ordered, by simp [keys], ?_⟩
      intro member membership
      rcases List.mem_cons.mp membership with same | inside
      · subst member; exact less key stored found
      · exact transitive key stored member (less key stored found) (split.1 member inside)
    | eq =>
      have same := equal key stored found
      simp only [capture, found]
      change ValidGap relation key (.occupied .nil stored current suffix)
      refine ⟨same.symm, by simp [keys], split.2, by simp [keys], ?_⟩
      intro member membership
      rw [same]
      exact split.1 member membership
    | gt =>
      simp only [capture, found]
      apply prepend_valid relation key stored current (capture compare key suffix)
      · exact ih split.2
      · exact greater key stored found
      · rw [capture_render]
        exact split.1

theorem valid_vacant_splice_order (relation : Key → Key → Prop)
    (transitive : ∀ a b c, relation a b → relation b c → relation a c)
    (key : Key) (front suffix : Map Key Value) (actual : Key) (current : Value)
    (valid : ValidGap relation key (.vacant front actual suffix)) :
    (keys (append front (.cons actual current suffix))).Pairwise relation := by
  rcases valid with ⟨same, frontOrdered, suffixOrdered, below, above⟩
  subst actual
  exact splice_order relation transitive front suffix key current frontOrdered suffixOrdered below above

end Correspondence036.CollectionsGap
