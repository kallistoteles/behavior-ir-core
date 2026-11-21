module
public import Aeneas
@[expose] public section

/- Candidate positive data layer only. It does not admit a Rust BTreeMap or
serde Map model. Native Ord/Borrow/allocator/backward-function relations,
canonical iteration order, size limits and source consumers remain required.
The storage enumeration is private to a future interface; it is not asserted
to be the ordering returned by native iteration. -/
namespace Correspondence036.CollectionsData

inductive Map (Key Value : Type) where
| nil : Map Key Value
| cons : Key → Value → Map Key Value → Map Key Value

variable {Key Value : Type}

def lookup [DecidableEq Key] (key : Key) : Map Key Value → Option Value
| .nil => none
| .cons stored value tail => if key = stored then some value else lookup key tail

/-- Replacement preserves the stored key; the returned option is the old
lookup result. Native comparator equivalence is a separate obligation. -/
def insert [DecidableEq Key] (key : Key) (value : Value) :
    Map Key Value → Option Value × Map Key Value
| .nil => (none, .cons key value .nil)
| .cons stored previous tail =>
  if key = stored then (some previous, .cons stored value tail)
  else
    let next := insert key value tail
    (next.1, .cons stored previous next.2)

/-- Delete all equivalent entries, making the law total even outside the
future no-duplicate representation relation. On a valid map there is at most one. -/
def erase [DecidableEq Key] (key : Key) : Map Key Value → Map Key Value
| .nil => .nil
| .cons stored value tail =>
  if key = stored then erase key tail else .cons stored value (erase key tail)

def keys : Map Key Value → List Key
| .nil => []
| .cons key _ tail => key :: keys tail

def length : Map Key Value → Nat
| .nil => 0
| .cons _ _ tail => length tail + 1

def WellFormed (map : Map Key Value) : Prop := (keys map).Nodup

@[simp] theorem lookup_nil [DecidableEq Key] (key : Key) :
    lookup key (.nil : Map Key Value) = none := rfl

theorem insert_old [DecidableEq Key] (key : Key) (value : Value)
    (map : Map Key Value) : (insert key value map).1 = lookup key map := by
  induction map with
  | nil => rfl
  | cons stored previous tail ih =>
    by_cases same : key = stored
    · simp [insert, lookup, same]
    · simp [insert, lookup, same, ih]

theorem lookup_insert_same [DecidableEq Key] (key : Key) (value : Value)
    (map : Map Key Value) : lookup key (insert key value map).2 = some value := by
  induction map with
  | nil => simp [insert, lookup]
  | cons stored previous tail ih =>
    by_cases same : key = stored
    · simp [insert, lookup, same]
    · simp [insert, lookup, same, ih]

theorem lookup_insert_other [DecidableEq Key] (key query : Key) (value : Value)
    (map : Map Key Value) (different : query ≠ key) :
    lookup query (insert key value map).2 = lookup query map := by
  induction map with
  | nil => simp [insert, lookup, different]
  | cons stored previous tail ih =>
    by_cases same : key = stored
    · subst stored
      simp [insert, lookup, different]
    · by_cases found : query = stored
      · simp [insert, lookup, same, found]
      · simp [insert, lookup, same, found, ih]

theorem lookup_erase_same [DecidableEq Key] (key : Key) (map : Map Key Value) :
    lookup key (erase key map) = none := by
  induction map with
  | nil => rfl
  | cons stored value tail ih =>
    by_cases same : key = stored <;> simp [erase, lookup, same, ih]

theorem lookup_erase_other [DecidableEq Key] (key query : Key)
    (map : Map Key Value) (different : query ≠ key) :
    lookup query (erase key map) = lookup query map := by
  induction map with
  | nil => rfl
  | cons stored value tail ih =>
    by_cases same : key = stored
    · subst stored
      simp [erase, lookup, different, ih]
    · by_cases found : query = stored
      · simp [erase, lookup, same, found]
      · simp [erase, lookup, same, found, ih]

theorem length_insert_absent [DecidableEq Key] (key : Key) (value : Value)
    (map : Map Key Value) (absent : lookup key map = none) :
    length (insert key value map).2 = length map + 1 := by
  revert absent
  induction map with
  | nil => intro _; rfl
  | cons stored previous tail ih =>
    intro absent
    by_cases same : key = stored
    · simp [lookup, same] at absent
    · have absent_tail : lookup key tail = none := by
        simpa [lookup, same] using absent
      simpa [insert, length, same] using congrArg (fun n => n + 1) (ih absent_tail)

/-- A compile-time strict-positivity control, not a model of native JSON. -/
inductive PositivityControl where
| null : PositivityControl
| object : Map String PositivityControl → PositivityControl

end Correspondence036.CollectionsData
