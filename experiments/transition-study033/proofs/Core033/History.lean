import Core033.CoreBridge
import Core033.Identity

/- Scoped mathematical history. No global future-state or proof-system soundness
axiom is declared. Native decoding, concrete commitments and actual Nova embedding
must refine this relation before standard crypto assumptions apply to a claim. -/
namespace Core033.History
open Reference Machine

/-- A checked finalized machine execution, with its exact requested parent and
request fixed independently. The trace count cannot be replaced by event count. -/
structure Hop (env : Environment) (parent : Boundary) (request : Request) (context : Bytes)
    (completed : Completed) where
  startMicrosteps : Nat
  startAttempts : Nat
  finish : Machine.State
  count : Nat
  trace : Trace env ⟨.evaluating ⟨parent,request,context⟩,startMicrosteps,startAttempts⟩ finish count
  expectedFrame : completed.evaluation.frame = ⟨parent,request,context⟩
  endpoint : finish.control = .done completed

structure Attempt (env : Environment) (parent : Boundary) (request : Request) (context : Bytes)
    (completed : Completed) where
  startMicrosteps : Nat
  startAttempts : Nat
  finish : Machine.State
  count : Nat
  trace : Trace env ⟨.evaluating ⟨parent,request,context⟩,startMicrosteps,startAttempts⟩ finish count
  expectedFrame : completed.evaluation.frame = ⟨parent,request,context⟩
  endpoint : finish.control = .attemptDone completed

theorem hop_checked (env : Environment) (parent : Boundary) (request : Request) (context : Bytes)
    (completed : Completed) (hop : Hop env parent request context completed)
    (valid : BoundaryValid env parent) (supported : SupportedRequest request) :
    CompletedValid env completed ∧ completed.evaluation.result.outcome = .allowed := by
  have final := trace_preserves env _ _ _ hop.trace (And.intro valid supported)
  rw [hop.endpoint] at final
  exact final

theorem attempt_checked (env : Environment) (parent : Boundary) (request : Request) (context : Bytes)
    (completed : Completed) (attempt : Attempt env parent request context completed)
    (valid : BoundaryValid env parent) (supported : SupportedRequest request) :
    CompletedValid env completed ∧ completed.evaluation.result.outcome ≠ .allowed := by
  have final := trace_preserves env _ _ _ attempt.trace (And.intro valid supported)
  rw [attempt.endpoint] at final
  exact final

theorem non_allowed_business_unchanged (cfg : Config) (state : Reference.State) (request : Request)
    (refused : (F cfg state request).outcome ≠ .allowed) :
    (F cfg state request).after = state ∧ (F cfg state request).effects = [] ∧ (F cfg state request).commands = [] := by
  cases request with
  | create key =>
      by_cases used : key ∈ state.used
      · simp [F,used,refusal]
      · by_cases over : cfg.countCap < state.live.length+1
        · simp [F,used,over,refusal]
        · exact False.elim (refused (by simp [F,used,over,allowed]))
  | set key value =>
      cases found : lookup state key with
      | none => simp [F,found]
      | some row =>
          by_cases nonpositive : value.value ≤ 0
          · simp [F,found,nonpositive,refusal]
          · exact False.elim (refused (by simp [F,found,nonpositive,allowed]))
  | emit => exact False.elim (refused rfl)

theorem omega_equal (a b : Omega) (business : a.business = b.business) (history : a.history = b.history) : a = b := by
  cases a
  cases b
  cases business
  cases history
  rfl

/-- Refusal/evaluation-error attempts cannot mutate the committed boundary or
create committed command occurrences. Operational failures are not these results. -/
theorem attempt_preserves (env : Environment) (parent : Boundary) (request : Request) (context : Bytes)
    (completed : Completed) (attempt : Attempt env parent request context completed)
    (valid : BoundaryValid env parent) (supported : SupportedRequest request) :
    completed.after.subject = parent.subject ∧ completed.evaluation.result.effects = [] ∧
    completed.evaluation.result.commands = [] := by
  obtain ⟨checked,refused⟩ := attempt_checked _ _ _ _ _ attempt valid supported
  have exactK := completed_exact _ _ checked
  have frame := attempt.expectedFrame
  have semantics := checked.1.2.2
  rw [frame] at semantics
  have unchanged := non_allowed_business_unchanged env.cfg parent.subject.business request (semantics ▸ refused)
  have business := checked.2 .business (by simp [required])
  have history := Machine.refused_history_unchanged env completed checked refused
  change completed.after.subject.business = completed.evaluation.result.after at business
  rw [semantics,unchanged.1] at business
  rw [frame] at history
  refine ⟨?_,?_,?_⟩
  · exact omega_equal _ _ business history
  · rw [semantics]; exact unchanged.2.1
  · rw [semantics]; exact unchanged.2.2

structure Entry where
  request : Request
  context : Bytes
  result : Result
  after : Boundary

inductive Prefix (env : Environment) (genesis : Boundary) : List Entry → Boundary → Prop where
  | empty : Prefix env genesis [] genesis
  | append {entries parent} (chain : Prefix env genesis entries parent)
      (request : Request) (context : Bytes) (completed : Completed)
      (supported : SupportedRequest request) (hop : Hop env parent request context completed) :
      Prefix env genesis (entries++[⟨request,context,completed.evaluation.result,completed.after⟩]) completed.after

theorem chain_boundary (env : Environment) (genesis : Boundary) (entries : List Entry) (last : Boundary)
    (valid : BoundaryValid env genesis) (chain : Prefix env genesis entries last) : BoundaryValid env last := by
  induction chain with
  | empty => exact valid
  | append chain request context completed supported hop ih =>
      exact completed_boundary _ _ (hop_checked _ _ _ _ _ hop ih supported).1

/-- Exact semantic replay is a theorem specification, not the independent
consumer algorithm. The consumer must verify the compressed proof instead. -/
def Replays (env : Environment) : Boundary → List Entry → Boundary → Prop
  | first,[],last => last = first
  | first,entry::rest,last =>
      KJudgment env.identifier env.cfg first.subject (boundaryView env first) entry.request entry.context
        entry.result entry.after.subject (boundaryView env entry.after) ∧
      entry.result.outcome = .allowed ∧ Replays env entry.after rest last

theorem replay_snoc (env : Environment) (first middle last : Boundary) (entries : List Entry) (entry : Entry)
    (previous : Replays env first entries middle)
    (step : KJudgment env.identifier env.cfg middle.subject (boundaryView env middle) entry.request entry.context
      entry.result entry.after.subject (boundaryView env entry.after))
    (allowed : entry.result.outcome = .allowed) (ending : last = entry.after) :
    Replays env first (entries++[entry]) last := by
  induction entries generalizing first with
  | nil =>
      change middle = first at previous
      subst first
      exact ⟨step,allowed,ending⟩
  | cons head tail ih => exact ⟨previous.1,previous.2.1,ih head.after previous.2.2⟩

theorem chain_exact (env : Environment) (genesis : Boundary) (entries : List Entry) (last : Boundary)
    (valid : BoundaryValid env genesis) (chain : Prefix env genesis entries last) : Replays env genesis entries last := by
  induction chain with
  | empty => rfl
  | @append entries parent chain request context completed supported hop ih =>
      obtain ⟨checked,allowed⟩ := hop_checked _ _ _ _ _ hop (chain_boundary _ _ _ _ valid chain) supported
      have step := completed_exact _ _ checked
      rw [hop.expectedFrame] at step
      exact replay_snoc _ _ _ _ _ _ ih step allowed rfl

theorem replay_position (env : Environment) (first last : Boundary) (entries : List Entry)
    (steps : Replays env first entries last) : last.subject.history.position = first.subject.history.position+entries.length := by
  induction entries generalizing first with
  | nil => change last = first at steps; subst last; simp
  | cons entry rest ih =>
      have final := ih entry.after steps.2.2
      have history := steps.1.2.2.2.2.2.1
      have allowed := steps.2.1
      have position : entry.after.subject.history.position = first.subject.history.position+1 := by
        rw [history]
        simp [nextHistory,allowed]
      simp only [List.length_cons]
      omega

theorem no_unchecked_suffix (env : Environment) (boundary : Boundary) (suffix : List Entry)
    (steps : Replays env boundary suffix boundary) : suffix = [] := by
  have length := replay_position _ _ _ _ steps
  have zero : suffix.length = 0 := by omega
  exact List.length_eq_zero_iff.mp zero

theorem replay_identity (env : Environment) (first last : Boundary) (entries : List Entry)
    (steps : Replays env first entries last) :
    last.subject.history.lineage = first.subject.history.lineage ∧
    last.subject.history.anchor = first.subject.history.anchor ∧
    last.subject.history.activeSubject = first.subject.history.activeSubject := by
  induction entries generalizing first with
  | nil => change last = first at steps; subst last; exact ⟨rfl,rfl,rfl⟩
  | cons entry rest ih =>
      have final := ih entry.after steps.2.2
      have history := steps.1.2.2.2.2.2.1
      rw [history] at final
      simpa [nextHistory,steps.2.1] using final

structure InitializedPrefix (env : Environment) (entries : List Entry) (last : Boundary) where
  actual : Origin
  inventory : Init.Inventory
  genesis : Boundary
  initialized : Init.initializeSeed env.encodeInventory env.sourceHash env.address env.cfg env.expected actual inventory = .ok genesis
  chain : Prefix env genesis entries last

theorem initialized_boundary (env : Environment) (actual : Origin) (inventory : Init.Inventory) (genesis : Boundary)
    (initialized : Init.initializeSeed env.encodeInventory env.sourceHash env.address env.cfg env.expected actual inventory = .ok genesis) :
    BoundaryValid env genesis := by
  obtain ⟨live,used,builtLive,builtUsed,output,_,_,initial,_⟩ :=
    Init.initialize_facts env.encodeInventory env.sourceHash env.address env.cfg env.expected actual inventory genesis initialized
  subst genesis
  exact ⟨initial,builtLive,builtUsed,by change (0 : Nat) < 2^64; decide⟩

/-- A valid complete genesis and all finalized transitions imply exact declared
history and current J. Concrete hash/source/matrix/backend/consumer refinements
are separate gates, not assumptions hidden in this induction. -/
theorem scoped_history (env : Environment) (entries : List Entry) (last : Boundary)
    (history : InitializedPrefix env entries last) :
    ExpectedOrigin env.expected history.actual ∧ OriginShape history.actual history.genesis.subject ∧
    BoundaryValid env last ∧ J last.subject.business (boundaryView env last) ∧
    Replays env history.genesis entries last ∧ last.subject.history.position = entries.length := by
  have origin := Init.initialize_sound env.encodeInventory env.sourceHash env.address env.cfg env.expected
    history.actual history.inventory history.genesis history.initialized
  have initial := initialized_boundary _ _ _ _ history.initialized
  have valid := chain_boundary _ _ _ _ initial history.chain
  have replay := chain_exact _ _ _ _ initial history.chain
  have position := replay_position _ _ _ _ replay
  have start := origin.2.1.1
  have zero : history.genesis.subject.history.position = 0 := by rw [start]
  exact ⟨origin.1,origin.2.1,valid,boundary_J _ _ valid,replay,by omega⟩

theorem microsteps_bound_to_trace (env : Environment) (parent : Boundary) (request : Request) (context : Bytes)
    (completed : Completed) (hop : Hop env parent request context completed) :
    hop.finish.microsteps = hop.startMicrosteps+hop.count :=
  trace_microsteps _ _ _ _ hop.trace

theorem zero_trace_identity (env : Environment) (before after : Machine.State) (trace : Trace env before after 0) :
    before = after := by
  cases trace
  rfl

theorem accepted_hop_has_actual_steps (env : Environment) (parent : Boundary) (request : Request) (context : Bytes)
    (completed : Completed) (hop : Hop env parent request context completed) : 0 < hop.count := by
  cases count : hop.count with
  | zero =>
      have trace := hop.trace
      rw [count] at trace
      have identical := zero_trace_identity _ _ _ trace
      have controls := congrArg Machine.State.control identical
      rw [hop.endpoint] at controls
      cases controls
  | succ n => omega

theorem allowed_event_and_output (env : Environment) (parent : Boundary) (request : Request) (context : Bytes)
    (completed : Completed) (hop : Hop env parent request context completed)
    (valid : BoundaryValid env parent) (supported : SupportedRequest request) :
    completed.evaluation.result = F env.cfg parent.subject.business request ∧
    completed.after.subject.history.previousEvent =
      some (env.identifier parent.subject request context completed.evaluation.result) := by
  obtain ⟨checked,allowed⟩ := hop_checked _ _ _ _ _ hop valid supported
  have result := checked.1.2.2
  rw [hop.expectedFrame] at result
  have history := checked.2 .history (by simp [required])
  change completed.after.subject.history = nextHistory _ _ _ _ _ at history
  rw [hop.expectedFrame] at history
  refine ⟨result,?_⟩
  rw [history]
  simp [nextHistory,allowed]

end Core033.History
