module
public import CollectionsFocus
@[expose] public section

/- Unadmitted candidate entry interface. The default thunk remains effectful
and is called in the vacant branch only. Stored keys are preserved; storage
order does not assert Rust iteration order. Native comparator/borrow/allocator
and caller-compatible backward reconstruction remain separate obligations. -/
namespace Correspondence036.CollectionsEntry
open Correspondence036.CollectionsData Correspondence036.CollectionsFocus
open Aeneas.Std Result
variable {Key Value : Type}

inductive Entry (Key Value : Type) where
| vacant : Key → Map Key Value → Entry Key Value
| occupied : Map Key Value → Key → Value → Map Key Value → Entry Key Value

def toMap : Entry Key Value → Map Key Value
| .vacant _ original => original
| .occupied front stored value suffix => append front (.cons stored value suffix)

def fromFocus (key : Key) : Focus Key Value → Entry Key Value
| .absent original => .vacant key original
| .present front stored value suffix => .occupied front stored value suffix

def enter [DecidableEq Key] (key : Key) (map : Map Key Value) :
    Entry Key Value × (Entry Key Value → Map Key Value) :=
  (fromFocus key (capture key map), toMap)

def value : Entry Key Value → Option Value
| .vacant _ _ => none
| .occupied _ _ current _ => some current

/-- No default is evaluated when occupied. The backward function preserves
that branch's captured structural position, without another comparison. -/
def orDefault (default : Unit → Result Value) : Entry Key Value →
    Result (Value × (Value → Entry Key Value))
| .vacant key original => do
  let current ← default ()
  ok (current, fun replacement => .occupied original key replacement .nil)
| .occupied front stored current suffix =>
  ok (current, fun replacement => .occupied front stored replacement suffix)

theorem fromFocus_render (key : Key) (focus : Focus Key Value) :
    toMap (fromFocus key focus) = render focus := by
  cases focus <;> rfl

theorem fromFocus_value (key : Key) (focus : Focus Key Value) :
    value (fromFocus key focus) = readValue focus := by
  cases focus <;> rfl

theorem enter_roundtrip [DecidableEq Key] (key : Key) (map : Map Key Value) :
    (enter key map).2 (enter key map).1 = map := by
  change toMap (fromFocus key (capture key map)) = map
  rw [fromFocus_render, capture_render]

theorem enter_value [DecidableEq Key] (key : Key) (map : Map Key Value) :
    value (enter key map).1 = lookup key map := by
  change value (fromFocus key (capture key map)) = lookup key map
  rw [fromFocus_value, capture_read]

theorem occupied_ignores_default (default : Unit → Result Value)
    (front : Map Key Value) (stored : Key) (current : Value) (suffix : Map Key Value) :
    orDefault default (.occupied front stored current suffix) =
      ok (current, fun replacement => Entry.occupied front stored replacement suffix) := rfl

theorem vacant_calls_default (default : Unit → Result Value)
    (key : Key) (original : Map Key Value) :
    orDefault default (.vacant key original) = (do
      let current ← default ()
      ok (current, fun replacement => Entry.occupied original key replacement .nil)) := rfl

theorem vacant_failure (error : Error) (key : Key) (original : Map Key Value) :
    orDefault (fun _ => fail error) (.vacant key original) = fail error := by
  simp [orDefault]

theorem vacant_divergence (key : Key) (original : Map Key Value) :
    orDefault (fun _ => .div) (.vacant key original) = .div := by
  simp [orDefault]

theorem occupied_replacement (default : Unit → Result Value)
    (front : Map Key Value) (stored : Key) (current replacement : Value)
    (suffix : Map Key Value) :
    (do let (_, backward) ← orDefault default (.occupied front stored current suffix)
        ok (toMap (backward replacement))) =
      ok (append front (.cons stored replacement suffix)) := by
  simp [orDefault, toMap]

theorem lookup_append [DecidableEq Key] (key : Key)
    (left right : Map Key Value) :
    lookup key (append left right) =
      match lookup key left with
      | none => lookup key right
      | some found => some found := by
  induction left with
  | nil => rfl
  | cons stored previous tail ih =>
    by_cases same : key = stored
    · simp [append, lookup, same]
    · simp [append, lookup, same, ih]

theorem vacant_new_value [DecidableEq Key] (key : Key)
    (original : Map Key Value) (absent : lookup key original = none)
    (current replacement : Value) :
    (do let (_, backward) ← orDefault (fun _ => ok current) (.vacant key original)
        ok (lookup key (toMap (backward replacement)))) = ok (some replacement) := by
  simp [orDefault, toMap, lookup_append, absent, lookup]

end Correspondence036.CollectionsEntry
