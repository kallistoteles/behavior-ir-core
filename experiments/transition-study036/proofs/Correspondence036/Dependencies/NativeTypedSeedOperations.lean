module
public import TypedSeedRowNames.Types
public import NativeStringBorrow
public import Init.Data.ByteArray.Lex
@[expose] public section

/- Conditional generic value interpretations for the generated row component.
No native ownership/allocation/panic/drop/runtime interpretation is admitted by
these definitions. Inactive mutable leaves are intentionally unadmitted and may
only be used after the actual-caller read/non-escape proof. Decode failure is an
off-source UTF8 totalization, not a new native error. -/
namespace Correspondence036.NativeTypedSeedOperations
open Aeneas.Std
universe u

abbrev Value := transition_study036.serde_json.value.Value
abbrev Rows := serde_json.map.Map String Value
abbrev Dictionary (K : Type u) := transition_study036.serde_json.value.index.Index K

def eqStr (left right : Str) : Result Bool :=
  .ok (decide (NativeStringBorrow.borrowedBytes left = NativeStringBorrow.borrowedBytes right))

def ownResult (value : Str) : Result String :=
  match NativeStringBorrow.decode value with
  | some owned => .ok owned
  | none => .fail .undef

def lookup : Rows → String → Option Value
  | .nil, _ => none
  | .cons stored value rest, key =>
    if key = stored then some value else lookup rest key

def orderedInsert (key : String) (replacement : Value) : Rows → Option Value × Rows
  | .nil => (none, .cons key replacement .nil)
  | .cons stored previous rest =>
    match compare key.toByteArray stored.toByteArray with
    | .lt => (none, .cons key replacement (.cons stored previous rest))
    | .eq => (some previous, .cons stored replacement rest)
    | .gt =>
      let result := orderedInsert key replacement rest
      (result.1, .cons stored previous result.2)

def newMap : Result Rows := .ok .nil
def insert (rows : Rows) (key : String) (replacement : Value) :
    Result ((Option Value) × Rows) := .ok (orderedInsert key replacement rows)

def indexStr (key : Str) (value : Value) : Result (Option Value) :=
  match value with
  | .Object rows =>
    match NativeStringBorrow.decode key with
    | some owned => .ok (lookup rows owned)
    | none => .fail .undef
  | _ => .ok none

def sharedIndex {K : Type u} (dictionary : Dictionary K) (key : K) (value : Value) :
    Result (Option Value) := dictionary.index_into key value

def valueIndex {K : Type u} (dictionary : Dictionary K) (value : Value) (key : K) :
    Result Value := do
  let found ← dictionary.index_into key value
  .ok (found.getD .Null)

def clone (value : Value) : Result Value := .ok value

/- These two definitions do not model the native mutable APIs. Their full
signatures/fields stay present; universal read noninterference and the exact
generated-source abstraction must prove that they cannot be observed here. -/
def unreachedIndexIntoMut : Str → Value →
    Result ((Option Value) × (Option Value → Value)) := fun _ _ => Result.div
def unreachedIndexOrInsert : Str → Value →
    Result (Value × (Value → Value)) := fun _ _ => Result.div

def sharedIndexIntoMut {K : Type u} (dictionary : Dictionary K) (key : K) (value : Value) :
    Result ((Option Value) × (Option Value → Value)) := dictionary.index_into_mut key value
def sharedIndexOrInsert {K : Type u} (dictionary : Dictionary K) (key : K) (value : Value) :
    Result (Value × (Value → Value)) := dictionary.index_or_insert key value

/- Generic typed collection interpretations. Actual Rust allocation, structural
representation, comparator adequacy and runtime effects remain unestablished. -/
def eqString (left right : String) : Result Bool := .ok (decide (left = right))
def cmpString (left right : String) : Result Ordering :=
  .ok (compare left.toByteArray right.toByteArray)
def partialCmpString (left right : String) : Result (Option Ordering) :=
  .ok (some (compare left.toByteArray right.toByteArray))
def cloneString (value : String) : Result String := .ok value

def insert {K V A : Type}
    (_allocator : transition_study036.core.alloc.AllocatorClone A)
    (order : core.cmp.Ord K)
    (rows : alloc.collections.btree.map.BTreeMap K V A) (key : K) (value : V) :
    Result (Option V × alloc.collections.btree.map.BTreeMap K V A) :=
  match rows with
  | .nil => .ok (none, .cons key value .nil)
  | .cons stored previous rest => do
    let compared ← order.cmp key stored
    match compared with
    | .lt => .ok (none, .cons key value (.cons stored previous rest))
    | .eq => .ok (some previous, .cons stored value rest)
    | .gt =>
      let (old, updated) ← insert _allocator order rest key value
      .ok (old, .cons stored previous updated)

def newSet (T : Type) : Result (alloc.collections.btree.set.BTreeSet T alloc.alloc.Global) :=
  .ok []

end Correspondence036.NativeTypedSeedOperations
