import State
namespace Core032

def terminal (s : State) (outcome : Outcome) (members : List Key := []) : Observation :=
  ⟨outcome, s, [], members⟩

def allowed (c : Config) (before : State) (operation : Operation)
    (rows : List Row) (used : List Key) (members : List Key := []) : Observation :=
  let commands := List.replicate c.commands ({} : Command)
  ⟨.allow, ⟨rows, used, before.events ++ [⟨operation, commands⟩]⟩, commands, members⟩

def relevantParent (c : Config) (s : State) (owner : Option String) : Bool :=
  if c.references then match owner with
    | some p => (lookup s ⟨.parent,p⟩).isSome
    | none => false
  else owner.isNone

def assign (s : State) (ids : List String) (x : Int) : List Row :=
  s.rows.map fun r => match r.value with
    | .child _ padding owner =>
        if r.id ∈ ids then ⟨r.id,.child x padding owner⟩ else r
    | _ => r

/-- Exact logical computation for the closed fragment, not a safety-only predicate.
Core diagnostics, canonical renderings and cryptographic identities retain a reviewed
source-to-model correspondence boundary; this definition does not prove that boundary. -/
def reference (c : Config) (s : State) (operation : Operation) : Observation :=
  match operation with
  | .create ids owner =>
      if ids.length ≠ c.batch then terminal s (.error .arity)
      else if !relevantParent c s owner then terminal s (.error .missingParent)
      else if !(ids.map fun id => Key.mk .child id).Nodup then terminal s (.refused .lifecycleConflict)
      else if ids.any (fun id => s.used.contains ⟨.child,id⟩) then terminal s (.refused .usedIdentity)
      else if count s + ids.length > c.limit then terminal s (.refused .globalCardinality)
      else allowed c s operation
        (s.rows ++ ids.map (fun id => ⟨id,.child 1 c.padding owner⟩))
        (s.used ++ ids.map (fun id => ⟨.child,id⟩))
  | .set ids value =>
      if ids.length ≠ c.batch then terminal s (.error .arity)
      else if ids.any (fun id => (lookup s ⟨.child,id⟩).isNone) then terminal s (.error .missingEntity)
      else if !checkedInt value then terminal s (.error .numericOverflow)
      else if value ≤ 0 then terminal s (.refused .positive)
      else allowed c s operation (assign s ids value) s.used
  | .remove key =>
      if (lookup s key).isNone then terminal s (.error .missingEntity)
      else if key.entity == .parent && s.rows.any (fun r => match r.value with
          | .child _ _ owner => owner == some key.id | _ => false) then
        terminal s (.refused .referencedTarget)
      else allowed c s operation (s.rows.filter (fun r => r.key != key)) s.used
  | .emit => allowed c s operation s.rows s.used
  | .probe threshold maxMatches =>
      let members := (s.rows.filter fun r => match r.value with
        | .child x _ _ => x < threshold | _ => false).map Row.key
      if (members.length : Int) ≤ maxMatches then allowed c s operation s.rows s.used members
      else terminal s (.refused .precondition) members
  | .add id delta =>
      match lookup s ⟨.child,id⟩ with
      | some ⟨_, .child x _ _⟩ =>
          let next := x + delta
          if !checkedInt next then terminal s (.error .numericOverflow)
          else if next ≤ 0 then terminal s (.refused .positive)
          else allowed c s operation (assign s [id] next) s.used
      | _ => terminal s (.error .missingEntity)
  | .lazyCheck id delta enabled =>
      match lookup s ⟨.child,id⟩ with
      | some ⟨_, .child x _ _⟩ =>
          if !enabled then allowed c s operation s.rows s.used
          else if !checkedInt (x + delta) then terminal s (.error .numericOverflow)
          else if x + delta ≤ 0 then terminal s (.refused .precondition)
          else allowed c s operation s.rows s.used
      | _ => terminal s (.error .missingEntity)

end Core032
