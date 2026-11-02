import Std

/- Independent closed-subject meaning. This file defines proof obligations; it
does not assume or establish the later actual-Core/source/matrix bridges. -/
namespace Core033.Reference

abbrev Bytes := List UInt8

structure Key where
  entity : String
  id : String
  deriving DecidableEq, Repr

/-- Mathematical Int64, without narrowing the admitted positive/negative domain. -/
structure Int64 where
  value : Int
  lower : -(2^63 : Int) ≤ value
  upper : value < (2^63 : Int)
  deriving DecidableEq

def one : Int64 := ⟨1, by decide, by decide⟩

structure Row where
  key : Key
  x : Int64
  padding : String
  deriving DecidableEq

structure Config where
  countCap : Nat
  creationPadding : String
  commandCount : Nat
  deriving DecidableEq

structure State where
  live : List Row
  used : List Key
  deriving DecidableEq

structure HistorySubject where
  lineage : Bytes
  anchor : Bytes
  position : Nat
  previousEvent : Option Bytes
  activeSubject : Bytes
  deriving DecidableEq

/-- Full semantic state: business content and the independently bound history. -/
structure Omega where
  business : State
  history : HistorySubject
  deriving DecidableEq

inductive Request where
  | create (key : Key)
  | set (key : Key) (value : Int64)
  | emit
  deriving DecidableEq

structure Command where
  name : String
  kind : String
  deriving DecidableEq

def workIntent : Command := ⟨"WorkIntent", "process"⟩
def commandBag (cfg : Config) : List Command := List.replicate cfg.commandCount workIntent

inductive Phase where
  | binding | lifetime | resultingLocal | resultingGlobal | done
  deriving DecidableEq

inductive Outcome where
  | allowed
  | refused (phase : Phase) (resultCode reasonCode : String)
  | evaluationError (phase : Phase) (layer code : String) (subject : Key)
  deriving DecidableEq

inductive Effect where
  | create (row : Row)
  | set (key : Key) (value : Int64)
  deriving DecidableEq

structure Result where
  outcome : Outcome
  after : State
  effects : List Effect
  commands : List Command
  deriving DecidableEq

def liveKeys (s : State) : List Key := s.live.map Row.key
def lookup (s : State) (k : Key) : Option Row := s.live.find? (fun row => decide (row.key = k))

def keyLess (a b : Key) : Prop := a.entity < b.entity ∨ (a.entity = b.entity ∧ a.id < b.id)
instance (a b : Key) : Decidable (keyLess a b) := inferInstanceAs (Decidable (_ ∨ _))
def canonicalRows (rows : List Row) : List Row :=
  rows.mergeSort (fun a b => decide (keyLess a.key b.key ∨ a.key = b.key))
def canonicalKeys (keys : List Key) : List Key :=
  keys.mergeSort (fun a b => decide (keyLess a b ∨ a = b))

def SupportedRequest : Request → Prop
  | .create key => key.entity = "E"
  | .set key _ => key.entity = "E"
  | .emit => True

/-- Exact genesis validity. A producer's cached approvals are not an argument. -/
def InitialValid (cfg : Config) (s : State) : Prop :=
  (liveKeys s).Nodup ∧ s.used.Nodup ∧
  (liveKeys s).Pairwise keyLess ∧ s.used.Pairwise keyLess ∧
  (∀ row ∈ s.live, row.key.entity = "E" ∧ 0 < row.x.value) ∧
  (∀ key ∈ s.used, key.entity = "E") ∧
  (∀ key ∈ liveKeys s, key ∈ s.used) ∧ s.live.length ≤ cfg.countCap

def refusal (s : State) (phase : Phase) (resultCode reasonCode : String) : Result :=
  ⟨.refused phase resultCode reasonCode, s, [], []⟩

def allowed (cfg : Config) (s : State) (effects : List Effect) : Result :=
  ⟨.allowed, s, effects, commandBag cfg⟩

/-- Fixed-template business result under a valid complete parent. Errors from
absent set bindings retain the actual Store::evaluate layer and code. Raw malformed
JSON/unsupported subjects remain ingress/scope outcomes outside this typed F. -/
def F (cfg : Config) (s : State) (request : Request) : Result :=
  match request with
  | .create key =>
    if key ∈ s.used then
      refusal s .lifetime "ENTITY_ID_ALREADY_USED" "ENTITY_ID_ALREADY_USED"
    else if cfg.countCap < s.live.length + 1 then
      refusal s .resultingGlobal "DENY" "INVARIANT_VIOLATED"
    else
      let row : Row := ⟨key, one, cfg.creationPadding⟩
      allowed cfg ⟨canonicalRows (s.live ++ [row]), canonicalKeys (s.used ++ [key])⟩ [.create row]
  | .set key value =>
    match lookup s key with
    | none => ⟨.evaluationError .binding "Store::evaluate" "ENTITY_NOT_FOUND" key, s, [], []⟩
    | some _ =>
      if value.value ≤ 0 then
        refusal s .resultingLocal "DENY" "CONSTRAINT_VIOLATED"
      else
        let live := s.live.map (fun row => if row.key = key then { row with x := value } else row)
        allowed cfg { s with live := live } [.set key value]
  | .emit => allowed cfg s []

/-- Extensional meaning of authenticated views; concrete nodes/roots come later. -/
structure ViewMeaning where
  liveMembership : Key → Bool
  usedMembership : Key → Bool
  liveCount : Nat
  positive : Key → Bool
  localCoverage : Key → Bool

def Represents (s : State) (v : ViewMeaning) : Prop :=
  (∀ key, v.liveMembership key = decide (key ∈ liveKeys s)) ∧
  (∀ key, v.usedMembership key = decide (key ∈ s.used))

def J (s : State) (v : ViewMeaning) : Prop :=
  Represents s v ∧ v.liveCount = s.live.length ∧
  (∀ key, v.positive key = (lookup s key).any (fun row => decide (0 < row.x.value))) ∧
  (∀ key, v.localCoverage key = decide (key ∈ liveKeys s))

inductive OriginKind where
  | empty | newSeed | adoption
  deriving DecidableEq

structure Origin where
  kind : OriginKind
  authority : String
  sourceDigest : Bytes
  lineage : Bytes
  semanticAnchor : Bytes
  activeSubject : Bytes
  declaredLive : Nat
  declaredUsed : Nat

def ExpectedOrigin (expected actual : Origin) : Prop :=
  actual.kind = expected.kind ∧ actual.authority = expected.authority ∧
  actual.sourceDigest = expected.sourceDigest ∧
  actual.lineage = expected.lineage ∧ actual.semanticAnchor = expected.semanticAnchor ∧
  actual.activeSubject = expected.activeSubject ∧
  actual.declaredLive = expected.declaredLive ∧ actual.declaredUsed = expected.declaredUsed

def OriginShape (origin : Origin) (s : Omega) : Prop :=
  s.history = ⟨origin.lineage, origin.semanticAnchor, 0, none, origin.activeSubject⟩ ∧
  origin.declaredLive = s.business.live.length ∧ origin.declaredUsed = s.business.used.length ∧
  match origin.kind with
  | .empty => s.business.live = [] ∧ s.business.used = []
  | .newSeed => True
  | .adoption => False

/-- Event identifier over the full exact subject. Its canonical byte/hash/native
refinement is mandatory later, rather than a custom semantic axiom here. -/
abbrev EventIdentifier := Omega → Request → Bytes → Result → Bytes

def nextHistory (identifier : EventIdentifier) (before : Omega) (request : Request)
    (context : Bytes) (result : Result) : HistorySubject :=
  if result.outcome = .allowed then
    { before.history with
      position := before.history.position + 1
      previousEvent := some (identifier before request context result) }
  else before.history

/-- Semantic obligation, not the later generated verifier's acceptance function. -/
def KJudgment (identifier : EventIdentifier) (cfg : Config) (before : Omega) (view : ViewMeaning)
    (request : Request) (context : Bytes) (result : Result) (after : Omega) (afterView : ViewMeaning) : Prop :=
  SupportedRequest request ∧ InitialValid cfg before.business ∧ J before.business view ∧
  result = F cfg before.business request ∧ after.business = result.after ∧
  after.history = nextHistory identifier before request context result ∧
  InitialValid cfg after.business ∧ J after.business afterView

def InitSoundStatement (cfg : Config) (expected : Origin)
    (accept : Origin → Omega → ViewMeaning → Prop) : Prop :=
  ∀ origin state view, accept origin state view →
    ExpectedOrigin expected origin ∧ OriginShape origin state ∧
    InitialValid cfg state.business ∧ Represents state.business view ∧ J state.business view

def StepSoundStatement (identifier : EventIdentifier) (cfg : Config)
    (accept : Omega → ViewMeaning → Request → Bytes → Result → Omega → ViewMeaning → Prop) : Prop :=
  ∀ before view request context result after afterView,
    accept before view request context result after afterView →
    KJudgment identifier cfg before view request context result after afterView

/-- A full logical observation recipe is deterministic data. The renderer must
later refine actual Core records, including diagnostics/first-failure evidence. -/
structure ObservationRecipe where
  evaluatorVersion : String
  completeModuleDescriptor : Bytes
  semanticParent : Bytes
  before : Omega
  request : Request
  capturedContext : Bytes
  deriving DecidableEq

def ExpandMeaning (cfg : Config) (recipe : ObservationRecipe) : Result :=
  F cfg recipe.before.business recipe.request

/-- Named open obligations are inventory, never axiom declarations. -/
def openBridges : List String := [
  "Core033.CoreBridge.template_sound", "Core033.Init.valid",
  "Core033.Machine.exact", "Core033.Source.actual_bytes_sound",
  "Core033.Matrix.actual_relation_sound", "Core033.Codec.acceptance_refines",
  "Core033.Embedding.actual_nova_ports", "Core033.SHA256.stream_sound",
  "Core033.History.scoped_history", "Core033.Observation.actual_core_expansion"]

end Core033.Reference
