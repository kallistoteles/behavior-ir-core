import Core033.Reference

/- Logical identity/recipe laws. Hash and native/codec/renderer refinement are
separate required bridges; no cryptographic/native axiom is introduced here. -/
namespace Core033.Identity
open Reference

structure SemanticParent where
  lineage : Bytes
  anchor : Bytes
  position : Nat
  previousEvent : Option Bytes
  contentRoot : Bytes
  usedRoot : Bytes
  activeSubject : Bytes
  deriving DecidableEq

/-- The fixed template emits one repeated WorkIntent; count retains every copy. -/
structure EventMeaning where
  parent : SemanticParent
  request : Request
  capturedContext : Bytes
  outcome : Outcome
  effects : List Effect
  commandMultiplicity : Nat
  observationRecipe : ObservationRecipe
  deriving DecidableEq

structure Derivation where
  helperRoots : Bytes
  proofRandomness : Bytes
  checkpoint : Bytes
  microsteps : Nat
  strategy : String

structure Occurrence where
  event : Bytes
  ordinal : Nat
  deriving DecidableEq

def eventId (hash : EventMeaning → Bytes) (meaning : EventMeaning) (_ : Derivation) : Bytes :=
  hash meaning

def occurrences (hash : EventMeaning → Bytes) (meaning : EventMeaning) (d : Derivation) : List Occurrence :=
  (List.range meaning.commandMultiplicity).map (fun i => ⟨eventId hash meaning d, i⟩)

def recipe (version : String) (module parent : Bytes) (before : State)
    (request : Request) (context : Bytes) : ObservationRecipe :=
  ⟨version, module, parent, before, request, context⟩

theorem logical_determinism (cfg : Config) (s : State) (request : Request)
    (a b : Result) (ha : a = F cfg s request) (hb : b = F cfg s request) : a = b :=
  ha.trans hb.symm

theorem recipe_unique (version : String) (module parent : Bytes) (before : State)
    (request : Request) (context : Bytes) (a b : ObservationRecipe)
    (ha : a = recipe version module parent before request context)
    (hb : b = recipe version module parent before request context) : a = b :=
  ha.trans hb.symm

theorem expansion_meaning (cfg : Config) (version : String) (module parent : Bytes)
    (before : State) (request : Request) (context : Bytes) :
    ExpandMeaning cfg (recipe version module parent before request context) = F cfg before request := rfl

theorem expansion_deterministic (cfg : Config) (r : ObservationRecipe)
    (a b : Result) (ha : a = ExpandMeaning cfg r) (hb : b = ExpandMeaning cfg r) : a = b :=
  ha.trans hb.symm

theorem strategy_independent (hash : EventMeaning → Bytes) (meaning : EventMeaning)
    (a b : Derivation) : eventId hash meaning a = eventId hash meaning b := rfl

theorem occurrences_strategy_independent (hash : EventMeaning → Bytes) (meaning : EventMeaning)
    (a b : Derivation) : occurrences hash meaning a = occurrences hash meaning b := rfl

theorem occurrence_count (hash : EventMeaning → Bytes) (meaning : EventMeaning) (d : Derivation) :
    (occurrences hash meaning d).length = meaning.commandMultiplicity := by
  simp [occurrences]

theorem equal_command_payloads_remain_distinct (id : Bytes) :
    (Occurrence.mk id 0) ≠ (Occurrence.mk id 1) := by
  intro h
  have impossible := congrArg Occurrence.ordinal h
  cases impossible

theorem occurrence_event_is_already_fixed (hash : EventMeaning → Bytes)
    (meaning : EventMeaning) (d : Derivation) (ordinal : Nat) :
    (Occurrence.mk (eventId hash meaning d) ordinal).event = hash meaning := rfl

/-- Dependency order is semantic parent, then event, then command occurrence.
An unchanged content root still advances the event position. -/
theorem parent_precedes_event (parent : SemanticParent) : parent.position < parent.position + 1 :=
  Nat.lt_succ_self parent.position

inductive IdentityNode where
  | parent (position : Nat)
  | event (parentPosition : Nat)
  | occurrence (parentPosition ordinal : Nat)

def dependencyRank : IdentityNode → Nat
  | .parent p => 3 * p
  | .event p => 3 * p + 1
  | .occurrence p _ => 3 * p + 2

def Dependency (previous next : IdentityNode) : Prop := dependencyRank previous < dependencyRank next

theorem dependency_wellFounded : WellFounded Dependency := (measure dependencyRank).wf

theorem event_precedes_occurrences (p ordinal : Nat) :
    Dependency (.event p) (.occurrence p ordinal) := by
  simp [Dependency, dependencyRank]

theorem identity_does_not_depend_on_occurrence_construction
    (hash : EventMeaning → Bytes) (meaning : EventMeaning) (d : Derivation)
    (first second : List Occurrence) :
    (eventId hash meaning d, first).1 = (eventId hash meaning d, second).1 := rfl

end Core033.Identity
