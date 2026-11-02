import Core033.Init

/- Semantic control/obligation machine. T042 must refine this relation with
bounded generated instructions, authenticated memory and actual source/matrices.
A value of this mathematical relation is not a native or cryptographic receipt. -/
namespace Core033.Machine
open Reference Views

structure Environment where
  cfg : Config
  expected : Origin
  encodeInventory : Init.Inventory → Bytes
  sourceHash : Bytes → Bytes
  address : Key → Path 256
  identifier : EventIdentifier

abbrev Boundary := Init.Initialized

def BoundaryValid (env : Environment) (boundary : Boundary) : Prop :=
  InitialValid env.cfg boundary.subject.business ∧
  Init.build env.address (Init.liveEntries boundary.subject.business) = .ok boundary.live ∧
  Init.build env.address (Init.usedEntries boundary.subject.business) = .ok boundary.used ∧
  boundary.subject.history.position < 2^64

def boundaryView (env : Environment) (boundary : Boundary) : ViewMeaning :=
  Init.view env.address boundary.live boundary.used

theorem boundary_J (env : Environment) (boundary : Boundary) (valid : BoundaryValid env boundary) :
    J boundary.subject.business (boundaryView env boundary) :=
  Init.built_J env.address boundary.subject.business boundary.live boundary.used valid.1.1 valid.1.2.1 valid.2.1 valid.2.2.1

structure Frame where
  parent : Boundary
  request : Request
  context : Bytes

structure Evaluation where
  frame : Frame
  result : Result

/-- This evaluator is separately connected to F below; the eventual generated
machine must refine it. It preserves first-failure order and equal commands. -/
def evaluate (cfg : Config) (state : Reference.State) (request : Request) : Result :=
  match request with
  | .create key =>
      if key ∈ state.used then refusal state .lifetime "ENTITY_ID_ALREADY_USED" "ENTITY_ID_ALREADY_USED"
      else if cfg.countCap < state.live.length+1 then refusal state .resultingGlobal "DENY" "INVARIANT_VIOLATED"
      else
        let row : Row := ⟨key,one,cfg.creationPadding⟩
        ⟨.allowed,⟨canonicalRows (state.live++[row]),canonicalKeys (state.used++[key])⟩,
          [.create row],commandBag cfg⟩
  | .set key value =>
      match lookup state key with
      | none => ⟨.evaluationError .binding "Store::evaluate" "ENTITY_NOT_FOUND" key,state,[],[]⟩
      | some _ =>
          if value.value ≤ 0 then refusal state .resultingLocal "DENY" "CONSTRAINT_VIOLATED"
          else
            ⟨.allowed,{state with live := (state.live.map
              (fun row => if row.key=key then {row with x:=value} else row))},[.set key value],commandBag cfg⟩
  | .emit => ⟨.allowed,state,[],commandBag cfg⟩

theorem evaluate_exact (cfg : Config) (state : Reference.State) (request : Request) :
    evaluate cfg state request = F cfg state request := by
  cases request <;> rfl

inductive Obligation where
  | business | history | validState | liveMap | usedMap | coordinates
  deriving DecidableEq

def required : List Obligation := [.business,.history,.validState,.liveMap,.usedMap,.coordinates]

/-- These checks are fixed meanings, not producer-selected approval labels.
Full-state equality/build is the specification of authenticated changed-path
checks. T041/T042 must realize them without putting dense input into native K. -/
def Check (env : Environment) (evaluation : Evaluation) (after : Boundary) : Obligation → Prop
  | .business => after.subject.business = evaluation.result.after
  | .history => after.subject.history = nextHistory env.identifier evaluation.frame.parent.subject
      evaluation.frame.request evaluation.frame.context evaluation.result
  | .validState => Init.validateState env.cfg after.subject.business = true
  | .liveMap => Init.build env.address (Init.liveEntries after.subject.business) = .ok after.live
  | .usedMap => Init.build env.address (Init.usedEntries after.subject.business) = .ok after.used
  | .coordinates => after.subject.history.position < 2^64

structure Work where
  evaluation : Evaluation
  after : Boundary
  verified : List Obligation
  remaining : List Obligation

structure Completed where
  evaluation : Evaluation
  after : Boundary

inductive Control where
  | boot (actual : Origin) (inventory : Init.Inventory)
  | initializing (actual : Origin) (inventory : Init.Inventory)
  | initDone (boundary : Boundary)
  | evaluating (frame : Frame)
  | maintaining (work : Work)
  | finalizing (completed : Completed)
  | done (completed : Completed)
  | attemptDone (completed : Completed)

/-- Finalizing and inner evaluation/hash states are never public endpoints. -/
def PublicEndpoint : Control → Prop
  | .initDone _ | .done _ | .attemptDone _ => True
  | _ => False

def EvaluationValid (env : Environment) (evaluation : Evaluation) : Prop :=
  BoundaryValid env evaluation.frame.parent ∧ SupportedRequest evaluation.frame.request ∧
  evaluation.result = F env.cfg evaluation.frame.parent.subject.business evaluation.frame.request

def WorkValid (env : Environment) (work : Work) : Prop :=
  EvaluationValid env work.evaluation ∧ work.verified++work.remaining = required ∧
  ∀ obligation ∈ work.verified, Check env work.evaluation work.after obligation

def CompletedValid (env : Environment) (completed : Completed) : Prop :=
  EvaluationValid env completed.evaluation ∧
  ∀ obligation ∈ required, Check env completed.evaluation completed.after obligation

def ControlValid (env : Environment) : Control → Prop
  | .boot _ _ | .initializing _ _ => True
  | .initDone boundary => BoundaryValid env boundary
  | .evaluating frame => BoundaryValid env frame.parent ∧ SupportedRequest frame.request
  | .maintaining work => WorkValid env work
  | .finalizing completed => CompletedValid env completed
  | .done completed => CompletedValid env completed ∧ completed.evaluation.result.outcome = .allowed
  | .attemptDone completed => CompletedValid env completed ∧ completed.evaluation.result.outcome ≠ .allowed

def Reusable : Obligation → Prop
  | .validState | .liveMap | .usedMap => True
  | _ => False

theorem reused_check (env : Environment) (evaluation : Evaluation) (after : Boundary)
    (parentValid : BoundaryValid env evaluation.frame.parent) (obligation : Obligation)
    (kind : Reusable obligation) (business : after.subject.business = evaluation.frame.parent.subject.business)
    (live : after.live = evaluation.frame.parent.live) (used : after.used = evaluation.frame.parent.used) :
    Check env evaluation after obligation := by
  cases obligation with
  | business | history | coordinates => cases kind
  | validState => exact (Init.validate_state_exact _ _).mpr (business ▸ parentValid.1)
  | liveMap => simpa only [Check,business,live] using parentValid.2.1
  | usedMap => simpa only [Check,business,used] using parentValid.2.2.1

theorem completed_boundary (env : Environment) (completed : Completed) (valid : CompletedValid env completed) :
    BoundaryValid env completed.after := by
  refine ⟨(Init.validate_state_exact _ _).mp (valid.2 .validState (by simp [required])),
    valid.2 .liveMap (by simp [required]),valid.2 .usedMap (by simp [required]),
    valid.2 .coordinates (by simp [required])⟩

theorem completed_exact (env : Environment) (completed : Completed) (valid : CompletedValid env completed) :
    KJudgment env.identifier env.cfg completed.evaluation.frame.parent.subject
      (boundaryView env completed.evaluation.frame.parent) completed.evaluation.frame.request
      completed.evaluation.frame.context completed.evaluation.result completed.after.subject
      (boundaryView env completed.after) := by
  exact ⟨valid.1.2.1,valid.1.1.1,boundary_J _ _ valid.1.1,valid.1.2.2,
    valid.2 .business (by simp [required]),valid.2 .history (by simp [required]),
    (completed_boundary _ _ valid).1,boundary_J _ _ (completed_boundary _ _ valid)⟩

inductive CoreStep (env : Environment) : Control → Control → Bool → Prop where
  | beginInit (actual inventory) : CoreStep env (.boot actual inventory) (.initializing actual inventory) false
  | finishInit (actual inventory boundary)
      (checked : Init.initializeSeed env.encodeInventory env.sourceHash env.address env.cfg env.expected actual inventory = .ok boundary) :
      CoreStep env (.initializing actual inventory) (.initDone boundary) false
  | beginFirst (boundary request context) (supported : SupportedRequest request) :
      CoreStep env (.initDone boundary) (.evaluating ⟨boundary,request,context⟩) true
  | beginNext (completed request context) (supported : SupportedRequest request) :
      CoreStep env (.done completed) (.evaluating ⟨completed.after,request,context⟩) true
  | evaluate (frame after) :
      CoreStep env (.evaluating frame)
        (.maintaining ⟨⟨frame,evaluate env.cfg frame.parent.subject.business frame.request⟩,after,[],required⟩) false
  | check (evaluation after verified obligation tail)
      (checked : Check env evaluation after obligation) :
      CoreStep env (.maintaining ⟨evaluation,after,verified,obligation::tail⟩)
        (.maintaining ⟨evaluation,after,verified++[obligation],tail⟩) false
  | reuse (evaluation after verified obligation tail) (kind : Reusable obligation)
      (business : after.subject.business = evaluation.frame.parent.subject.business)
      (live : after.live = evaluation.frame.parent.live) (used : after.used = evaluation.frame.parent.used) :
      CoreStep env (.maintaining ⟨evaluation,after,verified,obligation::tail⟩)
        (.maintaining ⟨evaluation,after,verified++[obligation],tail⟩) false
  | finishWork (evaluation after verified) :
      CoreStep env (.maintaining ⟨evaluation,after,verified,[]⟩) (.finalizing ⟨evaluation,after⟩) false
  | finishAllowed (completed) (allowed : completed.evaluation.result.outcome = .allowed) :
      CoreStep env (.finalizing completed) (.done completed) false
  | finishAttempt (completed) (refused : completed.evaluation.result.outcome ≠ .allowed) :
      CoreStep env (.finalizing completed) (.attemptDone completed) false

theorem checked_prefix (env : Environment) (evaluation : Evaluation) (after : Boundary)
    (verified : List Obligation) (head : Obligation) (tail : List Obligation)
    (valid : WorkValid env ⟨evaluation,after,verified,head::tail⟩)
    (checked : Check env evaluation after head) :
    WorkValid env ⟨evaluation,after,verified++[head],tail⟩ := by
  refine ⟨valid.1,?_,?_⟩
  · simpa only [List.append_assoc,List.singleton_append] using valid.2.1
  · intro obligation member
    rcases List.mem_append.mp member with old | last
    · exact valid.2.2 obligation old
    · have same : obligation = head := List.mem_singleton.mp last
      subst obligation
      exact checked

theorem core_step_preserves (env : Environment) (before after : Control) (attempt : Bool)
    (step : CoreStep env before after attempt) (valid : ControlValid env before) : ControlValid env after := by
  cases step with
  | beginInit => trivial
  | finishInit actual inventory boundary checked =>
      obtain ⟨live,used,builtLive,builtUsed,output,_,_,initial,_⟩ :=
        Init.initialize_facts env.encodeInventory env.sourceHash env.address env.cfg env.expected actual inventory boundary checked
      subst boundary
      exact ⟨initial,builtLive,builtUsed,by change (0 : Nat) < 2^64; decide⟩
  | beginFirst boundary request context supported => exact ⟨valid,supported⟩
  | beginNext completed request context supported => exact ⟨completed_boundary _ _ valid.1,supported⟩
  | evaluate frame after => exact ⟨⟨valid.1,valid.2,evaluate_exact _ _ _⟩,rfl,by simp⟩
  | check evaluation after verified head tail checked => exact checked_prefix _ _ _ _ _ _ valid checked
  | reuse evaluation after verified head tail kind business live used =>
      exact checked_prefix _ _ _ _ _ _ valid (reused_check _ _ _ valid.1.1 head kind business live used)
  | finishWork evaluation after verified =>
      refine ⟨valid.1,?_⟩
      have all : verified = required := by simpa using valid.2.1
      simpa only [all] using valid.2.2
  | finishAllowed completed allowed => exact ⟨valid,allowed⟩
  | finishAttempt completed refused => exact ⟨valid,refused⟩

structure State where
  control : Control
  microsteps : Nat
  attempts : Nat

/-- Refuse an exhausted operational counter. Never wrap or turn it into a
business refusal. The committed event coordinate lives in the semantic history. -/
structure Step (env : Environment) (before after : State) where
  newAttempt : Bool
  core : CoreStep env before.control after.control newAttempt
  microstep : after.microsteps = before.microsteps+1
  attempt : after.attempts = before.attempts+(if newAttempt then 1 else 0)
  microBound : after.microsteps < 2^64
  attemptBound : after.attempts < 2^64

inductive Trace (env : Environment) : State → State → Nat → Prop where
  | refl (state) : Trace env state state 0
  | cons {first next last count} (step : Step env first next) (rest : Trace env next last count) :
      Trace env first last (count+1)

theorem step_preserves (env : Environment) (before after : State) (step : Step env before after)
    (valid : ControlValid env before.control) : ControlValid env after.control :=
  core_step_preserves env _ _ _ step.core valid

theorem trace_preserves (env : Environment) (before after : State) (count : Nat)
    (trace : Trace env before after count) (valid : ControlValid env before.control) :
    ControlValid env after.control := by
  induction trace with
  | refl => exact valid
  | cons step rest ih => exact ih (step_preserves _ _ _ step valid)

theorem trace_microsteps (env : Environment) (before after : State) (count : Nat)
    (trace : Trace env before after count) : after.microsteps = before.microsteps+count := by
  induction trace with
  | refl => omega
  | cons step rest ih => rw [ih,step.microstep]; omega

theorem trace_attempts_monotone (env : Environment) (before after : State) (count : Nat)
    (trace : Trace env before after count) : before.attempts ≤ after.attempts := by
  induction trace with
  | refl => exact Nat.le_refl _
  | cons step rest ih =>
      have delta := step.attempt
      omega

theorem accepted_done_exact (env : Environment) (before after : State) (count : Nat)
    (trace : Trace env before after count) (valid : ControlValid env before.control)
    (completed : Completed) (endpoint : after.control = .done completed) :
    KJudgment env.identifier env.cfg completed.evaluation.frame.parent.subject
      (boundaryView env completed.evaluation.frame.parent) completed.evaluation.frame.request
      completed.evaluation.frame.context completed.evaluation.result completed.after.subject
      (boundaryView env completed.after) ∧ completed.evaluation.result.outcome = .allowed := by
  have preserved := trace_preserves _ _ _ _ trace valid
  rw [endpoint] at preserved
  exact ⟨completed_exact _ _ preserved.1,preserved.2⟩

theorem accepted_attempt_exact (env : Environment) (before after : State) (count : Nat)
    (trace : Trace env before after count) (valid : ControlValid env before.control)
    (completed : Completed) (endpoint : after.control = .attemptDone completed) :
    KJudgment env.identifier env.cfg completed.evaluation.frame.parent.subject
      (boundaryView env completed.evaluation.frame.parent) completed.evaluation.frame.request
      completed.evaluation.frame.context completed.evaluation.result completed.after.subject
      (boundaryView env completed.after) ∧ completed.evaluation.result.outcome ≠ .allowed := by
  have preserved := trace_preserves _ _ _ _ trace valid
  rw [endpoint] at preserved
  exact ⟨completed_exact _ _ preserved.1,preserved.2⟩

theorem finalizing_is_not_endpoint (completed : Completed) : ¬ PublicEndpoint (.finalizing completed) := by
  simp [PublicEndpoint]

theorem attempt_has_no_successor (env : Environment) (completed : Completed) (after : Control) (newAttempt : Bool) :
    ¬ CoreStep env (.attemptDone completed) after newAttempt := by
  intro step
  cases step

theorem no_omitted_obligation (env : Environment) (work : Work) (valid : WorkValid env work)
    (finished : work.remaining = []) : work.verified = required := by
  simpa only [finished,List.append_nil] using valid.2.1

theorem no_unfinished_finalization (env : Environment) (work : Work) (completed : Completed)
    (attempt : Bool) (step : CoreStep env (.maintaining work) (.finalizing completed) attempt) :
    work.remaining = [] := by
  cases step
  rfl

theorem allowed_event_coordinate (env : Environment) (completed : Completed)
    (valid : CompletedValid env completed) (allowed : completed.evaluation.result.outcome = .allowed) :
    completed.after.subject.history.position = completed.evaluation.frame.parent.subject.history.position+1 := by
  have history := valid.2 .history (by simp [required])
  change completed.after.subject.history = nextHistory _ _ _ _ _ at history
  rw [history]
  simp [nextHistory,allowed]

theorem refused_history_unchanged (env : Environment) (completed : Completed)
    (valid : CompletedValid env completed) (refused : completed.evaluation.result.outcome ≠ .allowed) :
    completed.after.subject.history = completed.evaluation.frame.parent.subject.history := by
  have history := valid.2 .history (by simp [required])
  change completed.after.subject.history = nextHistory _ _ _ _ _ at history
  simpa only [nextHistory,if_neg refused] using history

end Core033.Machine
