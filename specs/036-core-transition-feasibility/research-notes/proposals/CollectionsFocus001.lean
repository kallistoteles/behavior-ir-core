module
public import CollectionsData
@[expose] public section

/- Candidate structural mutable focus only. No native Ord/Borrow/allocator or
caller compatibility is admitted by these definitions. In particular None
passed backward on a present focus is not interpreted as native deletion. -/
namespace Correspondence036.CollectionsFocus
open Correspondence036.CollectionsData
variable {Key Value : Type}

def append : Map Key Value → Map Key Value → Map Key Value
| .nil, right => right
| .cons key value tail, right => .cons key value (append tail right)

inductive Focus (Key Value : Type) where
| absent : Map Key Value → Focus Key Value
| present : Map Key Value → Key → Value → Map Key Value → Focus Key Value

def render : Focus Key Value → Map Key Value
| .absent original => original
| .present prefix stored previous suffix => append prefix (.cons stored previous suffix)

def readValue : Focus Key Value → Option Value
| .absent _ => none
| .present _ _ value _ => some value

def writeValue : Focus Key Value → Option Value → Map Key Value
| .absent original, _ => original
| .present prefix stored previous suffix, none => append prefix (.cons stored previous suffix)
| .present prefix stored _ suffix, some value => append prefix (.cons stored value suffix)

def Compatible : Focus Key Value → Option Value → Prop
| .absent _, none => True
| .present _ _ _ _, some _ => True
| _, _ => False

def prepend (key : Key) (value : Value) : Focus Key Value → Focus Key Value
| .absent original => .absent (.cons key value original)
| .present prefix stored previous suffix =>
  .present (.cons key value prefix) stored previous suffix

def capture [DecidableEq Key] (key : Key) : Map Key Value → Focus Key Value
| .nil => .absent .nil
| .cons stored value tail =>
  if key = stored then .present .nil stored value tail
  else prepend stored value (capture key tail)

theorem render_prepend (key : Key) (value : Value) (focus : Focus Key Value) :
    render (prepend key value focus) = .cons key value (render focus) := by
  cases focus <;> rfl

theorem read_prepend (key : Key) (value : Value) (focus : Focus Key Value) :
    readValue (prepend key value focus) = readValue focus := by
  cases focus <;> rfl

theorem write_prepend (key : Key) (value : Value) (focus : Focus Key Value)
    (replacement : Option Value) :
    writeValue (prepend key value focus) replacement =
      .cons key value (writeValue focus replacement) := by
  cases focus <;> cases replacement <;> rfl

theorem capture_render [DecidableEq Key] (key : Key) (map : Map Key Value) :
    render (capture key map) = map := by
  induction map with
  | nil => rfl
  | cons stored value tail ih =>
    by_cases same : key = stored
    · simp [capture, same, render, append]
    · simp [capture, same, render_prepend, ih]

theorem capture_read [DecidableEq Key] (key : Key) (map : Map Key Value) :
    readValue (capture key map) = lookup key map := by
  induction map with
  | nil => rfl
  | cons stored value tail ih =>
    by_cases same : key = stored
    · simp [capture, same, readValue, lookup]
    · simp [capture, same, read_prepend, lookup, ih]

theorem write_old (focus : Focus Key Value) :
    writeValue focus (readValue focus) = render focus := by
  cases focus <;> rfl

theorem capture_write_old [DecidableEq Key] (key : Key) (map : Map Key Value) :
    writeValue (capture key map) (lookup key map) = map := by
  rw [← capture_read key map, write_old, capture_render]

theorem compatible_read (focus : Focus Key Value) : Compatible focus (readValue focus) := by
  cases focus <;> trivial

theorem captured_write_some [DecidableEq Key] (key : Key) (value : Value)
    (map : Map Key Value) :
    writeValue (capture key map) (some value) =
      match lookup key map with
      | none => map
      | some _ => (insert key value map).2 := by
  induction map with
  | nil => rfl
  | cons stored previous tail ih =>
    by_cases same : key = stored
    · simp [capture, same, writeValue, append, lookup, insert]
    · simp only [capture, if_neg same, write_prepend, lookup, insert, if_neg same]
      rw [ih]
      cases found : lookup key tail <;> simp [found]

/-- The precise extracted result shape. It captures once; the backward
function reconstructs the structural focus and performs no comparison. -/
def getMut [DecidableEq Key] (key : Key) (map : Map Key Value) :
    Option Value × (Option Value → Map Key Value) :=
  let focus := capture key map
  (readValue focus, writeValue focus)

theorem getMut_forward [DecidableEq Key] (key : Key) (map : Map Key Value) :
    (getMut key map).1 = lookup key map := capture_read key map

theorem getMut_roundtrip [DecidableEq Key] (key : Key) (map : Map Key Value) :
    (getMut key map).2 (getMut key map).1 = map := by
  change writeValue (capture key map) (readValue (capture key map)) = map
  rw [write_old, capture_render]

theorem getMut_absent_no_insert [DecidableEq Key] (key : Key) (map : Map Key Value)
    (absent : lookup key map = none) (value : Value) :
    (getMut key map).2 (some value) = map := by
  change writeValue (capture key map) (some value) = map
  simp [captured_write_some, absent]

end Correspondence036.CollectionsFocus
