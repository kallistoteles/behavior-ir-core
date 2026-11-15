namespace Core032

inductive Entity where
  | child | parent
  deriving BEq, DecidableEq, Repr, Ord

structure Key where
  entity : Entity
  id : String
  deriving BEq, DecidableEq, Repr, Ord

inductive Value where
  | child (x : Int) (padding : String) (owner : Option String)
  | parent (phase : Int)
  deriving BEq, DecidableEq, Repr

structure Row where
  id : String
  value : Value
  deriving BEq, DecidableEq, Repr

def Row.key (r : Row) : Key :=
  ⟨match r.value with | .child .. => .child | .parent .. => .parent, r.id⟩

inductive Operation where
  | create (ids : List String) (owner : Option String)
  | set (ids : List String) (value : Int)
  | remove (key : Key)
  | emit
  | probe (threshold maxMatches : Int)
  | add (id : String) (delta : Int)
  | lazyCheck (id : String) (delta : Int) (enabled : Bool)
  deriving BEq, DecidableEq, Repr

structure Command where
  kind : String := "process"
  deriving BEq, DecidableEq, Repr

structure Event where
  operation : Operation
  commands : List Command
  deriving BEq, DecidableEq, Repr

/-- Canonical finite-map presentation. Distinct typed keys and canonical order
are the supported-state interpretation; history is separate from live contents. -/
def canonicalRows (rows : List Row) : List Row :=
  rows.mergeSort (fun a b => compare a.key b.key != .gt)

def canonicalKeys (keys : List Key) : List Key :=
  keys.mergeSort (fun a b => compare a b != .gt)

/-- Logical ordered history; Core hash/encoding correspondence is a separate bridge. -/
structure State where
  rows : List Row
  used : List Key
  events : List Event
  deriving BEq, DecidableEq, Repr

structure Config where
  limit : Nat
  batch : Nat := 1
  commands : Nat := 0
  padding : String := ""
  references : Bool := false
  deriving BEq, DecidableEq, Repr

inductive Failure where
  | arity | missingEntity | missingParent | usedIdentity | referencedTarget
  | numericOverflow | invalidState | aliasedBinding
  deriving BEq, DecidableEq, Repr

inductive Refusal where
  | globalCardinality | positive | usedIdentity | lifecycleConflict
  | referencedTarget | precondition
  deriving BEq, DecidableEq, Repr

inductive Outcome where
  | allow | refused (reason : Refusal) | error (failure : Failure)
  deriving BEq, DecidableEq, Repr

structure Observation where
  outcome : Outcome
  after : State
  commands : List Command
  queryMembers : List Key
  deriving BEq, DecidableEq, Repr

def children (s : State) : List Row :=
  s.rows.filter fun r => match r.value with | .child .. => true | _ => false

def count (s : State) : Nat := (children s).length

def lookup (s : State) (k : Key) : Option Row :=
  s.rows.find? fun r => r.key == k

def checkedInt (x : Int) : Bool :=
  decide (-(2^63 : Int) ≤ x ∧ x < (2^63 : Int))

/-- Supported prestate validity is checked at initialization, never producer-asserted. -/
def valid (c : Config) (s : State) : Prop :=
  (s.rows.map Row.key).Nodup ∧ s.used.Nodup ∧
  (∀ r ∈ s.rows, r.key ∈ s.used) ∧ count s ≤ c.limit ∧
  (∀ r ∈ s.rows, match r.value with
    | .child x _ owner => 0 < x ∧ checkedInt x = true ∧
        (if c.references then ∃ p, owner = some p ∧ lookup s ⟨.parent,p⟩ ≠ none else owner = none)
    | .parent phase => checkedInt phase = true)

end Core032
