import Core033.Machine

/- Core033's authoritative formal semantics for the closed declared operators.
Actual decoder/source/IR refinement remains mandatory T042. The pinned Core
implementation is an oracle for supplementary tests, never a theorem premise. -/
namespace Core033.CoreBridge
open Reference

inductive Ty where
  | int | string | id (entity : String) | entity (name : String)
  deriving DecidableEq

structure Location where
  file : String
  line : Nat
  deriving DecidableEq

def location : Location := ⟨"core033-public.beh",1⟩

inductive Expr where
  | int (value : Reference.Int64) (loc : Location)
  | text (value : String) (loc : Location)
  | param (name : String) (loc : Location)
  | field (param name : String) (loc : Location)
  | gt (left right : Expr) (loc : Location)
  | le (left right : Expr) (loc : Location)
  | select (entity : String) (loc : Location)
  | count (query : Expr) (loc : Location)
  deriving DecidableEq

structure Parameter where
  name : String
  role : String
  type : Ty
  deriving DecidableEq

structure Field where
  name : String
  type : Ty
  loc : Location
  deriving DecidableEq

structure Declaration where
  name : String
  fields : List Field
  loc : Location
  deriving DecidableEq

inductive Effect where
  | create (entity : String) (id : Expr) (fields : List (String × Expr)) (loc : Location)
  | set (param field : String) (value : Expr) (loc : Location)
  deriving DecidableEq

structure Emission where
  command : String
  payload : List (String × Expr)
  loc : Location
  deriving DecidableEq

structure Action where
  name : String
  params : List Parameter
  effects : List Effect
  preconditions : List Expr
  postconditions : List Expr
  commandEffects : List Emission
  loc : Location
  deriving DecidableEq

structure Constraint where
  name : String
  entity : String
  param : String
  body : Expr
  loc : Location
  deriving DecidableEq

structure Invariant where
  name : String
  body : Expr
  loc : Location
  deriving DecidableEq

/-- All unsupported top-level declarations are retained in equality, rather
than dropped before recognition. Actual bytes must refine this whole descriptor. -/
structure Module where
  irVersion : String
  semanticProfile : String
  enums : List Bytes
  nominals : List Bytes
  derived : List Bytes
  reads : List Bytes
  entities : List Declaration
  commands : List Declaration
  constraints : List Constraint
  invariants : List Invariant
  actions : List Action
  deriving DecidableEq

def zero : Reference.Int64 := ⟨0,by decide,by decide⟩
def capValue (cap : Nat) (bound : cap < 2^63) : Reference.Int64 := ⟨cap,by omega,by omega⟩
def positive : Expr := .gt (.field "e" "x" location) (.int zero location) location

def population (cap : Nat) (bound : cap < 2^63) : Expr :=
  .le (.count (.select "E" location) location) (.int (capValue cap bound) location) location

def emissions (cfg : Config) : List Emission :=
  List.replicate cfg.commandCount ⟨"WorkIntent",[("kind",.text "process" location)],location⟩

def action (cfg : Config) (name : String) (params : List Parameter) (effects : List Effect) : Action :=
  ⟨name,params,effects,[],[],emissions cfg,location⟩

def template (cfg : Config) (bound : cfg.countCap < 2^63) : Module :=
  ⟨"0.8","CommandIntents",[],[],[],[],
    [⟨"E",[⟨"x",.int,location⟩,⟨"padding",.string,location⟩],location⟩],
    [⟨"WorkIntent",[⟨"kind",.string,location⟩],location⟩],
    [⟨"positive","E","e",positive,location⟩],
    [⟨"population",population cfg.countCap bound,location⟩],
    [action cfg "create" [⟨"id","input",.id "E"⟩]
      [.create "E" (.param "id" location) [("x",.int one location),("padding",.text cfg.creationPadding location)] location],
     action cfg "set" [⟨"value","input",.int⟩,⟨"e","state",.entity "E"⟩]
      [.set "e" "x" (.param "value" location) location],
     action cfg "emit" [] []]⟩

def recognize (cfg : Config) (bound : cfg.countCap < 2^63) (module : Module) : Bool :=
  decide (module = template cfg bound)

theorem recognized_complete (cfg : Config) (bound : cfg.countCap < 2^63) (module : Module)
    (accepted : recognize cfg bound module = true) : module = template cfg bound :=
  of_decide_eq_true accepted

theorem changed_descriptor_rejected (cfg : Config) (bound : cfg.countCap < 2^63) (module : Module)
    (changed : module ≠ template cfg bound) : recognize cfg bound module = false := by
  simp [recognize,changed]

inductive Value where
  | int (value : Reference.Int64)
  | text (value : String)
  | id (key : Key)
  | rows (rows : List Row)
  | bit (value : Bool)
  deriving DecidableEq

inductive EvalError where
  | binding | field | type | countOverflow | scope
  deriving DecidableEq

structure Context where
  state : State
  row : Option Row
  key : Key
  value : Reference.Int64

def countValue (size : Nat) : Except EvalError Value :=
  if bound : size < 2^63 then .ok (.int ⟨size,by omega,by omega⟩) else .error .countOverflow

def eval (context : Context) : Expr → Except EvalError Value
  | .int value _ => .ok (.int value)
  | .text value _ => .ok (.text value)
  | .param name _ =>
      if name="value" then .ok (.int context.value)
      else if name="id" then .ok (.id context.key) else .error .binding
  | .field param name _ =>
      if param="e" ∧ name="x" then
        match context.row with
        | some row => .ok (.int row.x)
        | none => .error .binding
      else .error .field
  | .gt a b _ => do
      let x ← eval context a
      let y ← eval context b
      match x,y with
      | .int x,.int y => .ok (.bit (decide (y.value < x.value)))
      | _,_ => .error .type
  | .le a b _ => do
      let x ← eval context a
      let y ← eval context b
      match x,y with
      | .int x,.int y => .ok (.bit (decide (x.value ≤ y.value)))
      | _,_ => .error .type
  | .select entityName _ => .ok (.rows (context.state.live.filter (fun row => row.key.entity == entityName)))
  | .count query _ => do
      let value ← eval context query
      match value with
      | .rows rows => countValue rows.length
      | _ => .error .type

theorem positive_exact (state : State) (row : Row) (key : Key) (value : Reference.Int64) :
    eval ⟨state,some row,key,value⟩ positive = .ok (.bit (decide (0 < row.x.value))) := by
  simp [eval,positive,zero,Bind.bind,Except.bind]

theorem positive_missing_binding (state : State) (key : Key) (value : Reference.Int64) :
    eval ⟨state,none,key,value⟩ positive = .error .binding := by
  simp [eval,positive,Bind.bind,Except.bind]

theorem select_E_complete (state : State) (entities : ∀ row ∈ state.live, row.key.entity = "E") :
    state.live.filter (fun row => row.key.entity == "E") = state.live := by
  apply List.filter_eq_self.mpr
  intro row member
  simp [entities row member]

theorem count_no_overflow (size : Nat) (bound : size ≤ 1048577) :
    ∃ value, countValue size = .ok (.int value) ∧ value.value = size := by
  have fits : size < 2^63 := by omega
  exact ⟨⟨size,by omega,by omega⟩,by simp [countValue,fits],rfl⟩

theorem population_exact (context : Context) (cap : Nat) (capBound : cap < 2^63)
    (entities : ∀ row ∈ context.state.live, row.key.entity = "E")
    (sizeBound : context.state.live.length < 2^63) :
    eval context (population cap capBound) = .ok (.bit (decide (context.state.live.length ≤ cap))) := by
  simp [eval,population,select_E_complete context.state entities,countValue,sizeBound,capValue,Bind.bind,Except.bind]

def positiveRows (rows : List Row) : Bool := rows.all (fun row => decide (0 < row.x.value))

def setRows (state : State) (key : Key) (value : Reference.Int64) : List Row :=
  state.live.map (fun row => if row.key = key then { row with x := value } else row)

theorem initially_positive (cfg : Config) (state : State) (valid : InitialValid cfg state) :
    positiveRows state.live = true := by
  apply List.all_eq_true.mpr
  intro row member
  exact decide_eq_true (valid.2.2.2.2.1 row member).2

theorem create_positive (cfg : Config) (state : State) (key : Key) (valid : InitialValid cfg state) :
    positiveRows (canonicalRows (state.live++[⟨key,one,cfg.creationPadding⟩])) = true := by
  apply List.all_eq_true.mpr
  intro row member
  simp only [canonicalRows,List.mem_mergeSort,List.mem_append,List.mem_singleton] at member
  rcases member with old | added
  · exact decide_eq_true (valid.2.2.2.2.1 row old).2
  · subst row
    change decide ((0 : Int) < 1) = true
    decide

theorem set_positive_exact (cfg : Config) (state : State) (key : Key) (value : Reference.Int64)
    (valid : InitialValid cfg state) (row : Row) (found : lookup state key = some row) :
    positiveRows (setRows state key value) = decide (0 < value.value) := by
  apply Bool.eq_iff_iff.mpr
  simp only [positiveRows,List.all_eq_true,decide_eq_true_eq]
  constructor
  · intro positive
    have member := List.mem_of_find?_eq_some found
    have sameKey : row.key = key := of_decide_eq_true (List.find?_some (p := fun r : Row => decide (r.key = key)) found)
    have updated : {row with x := value} ∈ setRows state key value := by
      apply List.mem_map.mpr
      exact ⟨row,member,by simp [sameKey]⟩
    exact positive _ updated
  · intro positive updated member
    obtain ⟨original,old,mapped⟩ := List.mem_map.mp member
    subst updated
    split
    · exact positive
    · exact (valid.2.2.2.2.1 original old).2

theorem create_entities (cfg : Config) (state : State) (key : Key) (valid : InitialValid cfg state)
    (supported : key.entity = "E") :
    ∀ row ∈ canonicalRows (state.live++[⟨key,one,cfg.creationPadding⟩]),row.key.entity = "E" := by
  intro row member
  simp only [canonicalRows,List.mem_mergeSort,List.mem_append,List.mem_singleton] at member
  rcases member with old | added
  · exact (valid.2.2.2.2.1 row old).1
  · subst row
    exact supported

theorem set_entities (cfg : Config) (state : State) (key : Key) (value : Reference.Int64)
    (valid : InitialValid cfg state) : ∀ row ∈ setRows state key value,row.key.entity = "E" := by
  intro row member
  obtain ⟨original,old,mapped⟩ := List.mem_map.mp member
  subst row
  split <;> exact (valid.2.2.2.2.1 original old).1

def finish (cfg : Config) (bound : cfg.countCap < 2^63) (before after : State)
    (effects : List Reference.Effect) : Except EvalError Result :=
  if positiveRows after.live then
    match eval ⟨after,none,⟨"E",""⟩,zero⟩ (population cfg.countCap bound) with
    | .ok (.bit true) => .ok (allowed cfg after effects)
    | .ok (.bit false) => .ok (refusal before .resultingGlobal "DENY" "INVARIANT_VIOLATED")
    | .ok _ => .error .type
    | .error error => .error error
  else .ok (refusal before .resultingLocal "DENY" "CONSTRAINT_VIOLATED")

def execute (cfg : Config) (bound : cfg.countCap < 2^63) (state : State) : Request → Except EvalError Result
  | .create key =>
      if key ∈ state.used then .ok (refusal state .lifetime "ENTITY_ID_ALREADY_USED" "ENTITY_ID_ALREADY_USED")
      else
        let row : Row := ⟨key,one,cfg.creationPadding⟩
        finish cfg bound state ⟨canonicalRows (state.live++[row]),canonicalKeys (state.used++[key])⟩ [.create row]
  | .set key value =>
      match lookup state key with
      | none => .ok ⟨.evaluationError .binding "Store::evaluate" "ENTITY_NOT_FOUND" key,state,[],[]⟩
      | some _ => finish cfg bound state {state with live := setRows state key value} [.set key value]
  | .emit => finish cfg bound state state []

theorem finish_exact (cfg : Config) (bound : cfg.countCap < 2^63) (before after : State)
    (effects : List Reference.Effect)
    (entities : ∀ row ∈ after.live,row.key.entity = "E") (size : after.live.length < 2^63) :
    finish cfg bound before after effects = .ok
      (if positiveRows after.live then
        if cfg.countCap < after.live.length then refusal before .resultingGlobal "DENY" "INVARIANT_VIOLATED"
        else allowed cfg after effects
      else refusal before .resultingLocal "DENY" "CONSTRAINT_VIOLATED") := by
  unfold finish
  rw [population_exact _ _ bound entities size]
  cases positive : positiveRows after.live with
  | false => simp
  | true =>
      by_cases over : cfg.countCap < after.live.length
      · have no : decide (after.live.length ≤ cfg.countCap) = false := by simp; omega
        simp [over,no]
      · have yes : decide (after.live.length ≤ cfg.countCap) = true := by simp; omega
        simp [over,yes]

theorem execute_exact (cfg : Config) (capScope : cfg.countCap ≤ 1048576)
    (bound : cfg.countCap < 2^63) (state : State) (request : Request)
    (valid : InitialValid cfg state) (supported : SupportedRequest request) :
    execute cfg bound state request = .ok (F cfg state request) := by
  have oldCount : state.live.length ≤ cfg.countCap := valid.2.2.2.2.2.2.2
  have oldEntities : ∀ row ∈ state.live,row.key.entity = "E" := fun row member => (valid.2.2.2.2.1 row member).1
  have oldBound : state.live.length < 2^63 := by omega
  cases request with
  | create key =>
      by_cases used : key ∈ state.used
      · simp [execute,F,used]
      · simp only [execute,if_neg used]
        rw [finish_exact]
        · rw [create_positive cfg state key valid]
          simp [F,used,canonicalRows]
        · exact create_entities cfg state key valid supported
        · simp only [canonicalRows,List.length_mergeSort,List.length_append,List.length_singleton]
          omega
  | set key value =>
      cases found : lookup state key with
      | none => simp [execute,F,found]
      | some row =>
          simp only [execute,found]
          rw [finish_exact]
          · have localRule := set_positive_exact cfg state key value valid row found
            rw [localRule]
            have count : (setRows state key value).length = state.live.length := by simp [setRows]
            simp only [F,found]
            by_cases positive : 0 < value.value
            · have no : ¬ value.value ≤ 0 := by omega
              simp [positive,no,Nat.not_lt.mpr oldCount,allowed,setRows]
            · have nonpositive : value.value ≤ 0 := by omega
              simp [positive,nonpositive]
          · exact set_entities cfg state key value valid
          · simpa [setRows] using oldBound
  | emit =>
      unfold execute
      rw [finish_exact cfg bound state state [] oldEntities oldBound]
      simp [F,initially_positive cfg state valid,Nat.not_lt.mpr oldCount]

def executeRecognized (cfg : Config) (bound : cfg.countCap < 2^63) (module : Module)
    (state : State) (request : Request) : Except EvalError Result :=
  if recognize cfg bound module then execute cfg bound state request else .error .scope

theorem template_sound (cfg : Config) (capScope : cfg.countCap ≤ 1048576)
    (bound : cfg.countCap < 2^63) (module : Module) (accepted : recognize cfg bound module = true)
    (state : State) (request : Request) (valid : InitialValid cfg state) (supported : SupportedRequest request) :
    module = template cfg bound ∧ executeRecognized cfg bound module state request = .ok (F cfg state request) := by
  exact ⟨recognized_complete cfg bound module accepted,by
    simp only [executeRecognized,accepted,if_true]
    exact execute_exact cfg capScope bound state request valid supported⟩

def denoteEmission (emission : Emission) : Option Command :=
  match emission.payload with
  | [("kind",.text kind _)] => some ⟨emission.command,kind⟩
  | _ => none

def denoteEmissions (values : List Emission) : Option (List Command) :=
  values.mapM denoteEmission

theorem emissions_exact (cfg : Config) : denoteEmissions (emissions cfg) = some (commandBag cfg) := by
  have copies (n : Nat) : denoteEmissions (List.replicate n
      ⟨"WorkIntent",[("kind",.text "process" location)],location⟩) =
      some (List.replicate n workIntent) := by
    induction n with
    | zero => rfl
    | succ n ih =>
        simp only [denoteEmissions] at ih
        simp [denoteEmissions,List.replicate_succ,denoteEmission,List.mapM_cons,
          Bind.bind,Option.bind,ih,workIntent]
  exact copies cfg.commandCount

theorem duplicate_commands_retained (cfg : Config) : (commandBag cfg).length = cfg.commandCount := by
  simp [commandBag]

theorem literal_creation_fields (state : State) (key : Key) (value : Reference.Int64) (cfg : Config) :
    eval ⟨state,none,key,value⟩ (.int one location) = .ok (.int one) ∧
    eval ⟨state,none,key,value⟩ (.text cfg.creationPadding location) = .ok (.text cfg.creationPadding) ∧
    eval ⟨state,none,key,value⟩ (.param "id" location) = .ok (.id key) := by
  simp [eval]

theorem literal_set_input (context : Context) :
    eval context (.param "value" location) = .ok (.int context.value) := by simp [eval]

theorem observation_meaning (cfg : Config) (capScope : cfg.countCap ≤ 1048576)
    (bound : cfg.countCap < 2^63) (module : Module) (accepted : recognize cfg bound module = true)
    (recipe : ObservationRecipe) (valid : InitialValid cfg recipe.before.business)
    (supported : SupportedRequest recipe.request) :
    executeRecognized cfg bound module recipe.before.business recipe.request = .ok (ExpandMeaning cfg recipe) := by
  exact (template_sound cfg capScope bound module accepted recipe.before.business recipe.request valid supported).2

/-- All observation-visible locations are fixed by the recognized descriptor.
This equality includes nested expression/effect/emission locations. -/
theorem metadata_bound (cfg : Config) (bound : cfg.countCap < 2^63) (module : Module)
    (accepted : recognize cfg bound module = true) :
    module.entities = (template cfg bound).entities ∧ module.commands = (template cfg bound).commands ∧
    module.constraints = (template cfg bound).constraints ∧ module.invariants = (template cfg bound).invariants ∧
    module.actions = (template cfg bound).actions := by
  rw [recognized_complete cfg bound module accepted]
  exact ⟨rfl,rfl,rfl,rfl,rfl⟩

end Core033.CoreBridge
