import Core033.SHA256Stage
import Core033.SHA256Schedule
import Core033.WordSource

/- Complete shared SHA program under construction. Generation alone grants no
source/matrix/release authority; universal and actual-byte checks are required. -/
namespace Core033.SHA256Compiled
open WordIR WordStage
attribute [local irreducible] WordStage.compile WordStage.emit SHA256Stage.round SHA256Schedule.loop

def inputState : SHA256Stage.State := ⟨0,1,2,3,4,5,6,7⟩
def inputBlock : Fin 16 → Nat := fun i=>8+i.val

def scheduled : Array Nat × Builder :=
  SHA256Schedule.loop (List.range 48) ⟨24,[]⟩ (Array.ofFn inputBlock)

def roundLoop : List Nat → SHA256Stage.State → Builder → Array Nat → SHA256Stage.State × Builder
  | [],state,builder,_ => (state,builder)
  | index::rest,state,builder,words =>
      let next:=SHA256Stage.round builder state (SHA256.constants.getD index 0) (words.getD index 0)
      roundLoop rest next.1 next.2 words

def working : SHA256Stage.State × Builder := roundLoop (List.range 64) inputState scheduled.2 scheduled.1

def feedForward : List (Nat × Nat) → Builder → List Nat × Builder
  | [],builder => ([],builder)
  | pair::rest,builder =>
      let next:=emit builder (.badd pair.1 pair.2)
      let tail:=feedForward rest next.2
      (next.1::tail.1,tail.2)

def finished : List Nat × Builder :=
  feedForward (inputState.registers.zip working.1.registers) working.2

def program : Program := ⟨24,finished.2.operations,finished.1⟩

def expectedState (inputs : Nat → Word) : SHA256.HashState := SHA256Stage.evalState inputs inputState

def expectedBlock (inputs : Nat → Word) : SHA256.Block := fun i=>inputs (inputBlock i)

theorem round_loop_extends (steps : List Nat) : ∀ state builder words,Extends builder (roundLoop steps state builder words).2 := by
  induction steps with
  | nil => intro state builder words;exact extends_refl builder
  | cons index rest ih =>
      intro state builder words
      exact extends_trans _ _ _ (SHA256Stage.round_extends _ _ _ _) (ih _ _ words)

theorem round_loop_meaning (steps : List Nat) : ∀ state builder words inputs,
    state.Bounded builder → SHA256Schedule.Bounded words builder → (∀ index∈steps,index<words.size) →
    SHA256Stage.StateMeaning (roundLoop steps state builder words).2 inputs (roundLoop steps state builder words).1
      (steps.foldl (fun current index=>SHA256.round current (SHA256.constants.getD index 0)
        ((SHA256Schedule.evalWords words builder inputs).getD index 0)) (SHA256Stage.evalState (builder.values inputs) state)) := by
  induction steps with
  | nil => intro state builder words inputs stateBound wordsBound indices;exact ⟨stateBound,rfl⟩
  | cons index rest ih =>
      intro state builder words inputs stateBound wordsBound indices
      have indexBound:=indices index (by simp)
      have registerBound:=wordsBound _ (SHA256Schedule.getD_member words index indexBound)
      let next:=SHA256Stage.round builder state (SHA256.constants.getD index 0) (words.getD index 0)
      have step:=SHA256Stage.round_meaning builder inputs state (SHA256.constants.getD index 0) (words.getD index 0) stateBound registerBound
      change SHA256Stage.StateMeaning next.2 inputs next.1 _ at step
      have extended : Extends builder next.2:=SHA256Stage.round_extends _ _ _ _
      have tail:=ih next.1 next.2 words inputs step.1
        (SHA256Schedule.words_bound_extends _ _ _ extended wordsBound) (by intro i member;exact indices i (List.mem_cons_of_mem _ member))
      have frame:=SHA256Schedule.words_eval_extends words builder next.2 extended wordsBound inputs
      refine ⟨tail.1,?_⟩
      have result:=tail.2
      rw [frame,step.2,SHA256Schedule.eval_getD words builder inputs index indexBound] at result
      exact result

theorem feed_extends (pairs : List (Nat × Nat)) : ∀ builder,Extends builder (feedForward pairs builder).2 := by
  induction pairs with
  | nil => intro builder;exact extends_refl builder
  | cons pair rest ih => intro builder;exact extends_trans _ _ _ (emit_extends _ _) (ih _)

def PairBounded (pairs : List (Nat × Nat)) (builder : Builder) : Prop :=
  ∀ pair∈pairs,pair.1<builder.next ∧ pair.2<builder.next

theorem feed_meaning (pairs : List (Nat × Nat)) : ∀ builder inputs,PairBounded pairs builder →
    (feedForward pairs builder).1.map ((feedForward pairs builder).2.values inputs) =
      pairs.map (fun pair=>builder.values inputs pair.1+builder.values inputs pair.2) := by
  induction pairs with
  | nil => intro builder inputs bound;rfl
  | cons pair rest ih =>
      intro builder inputs bound
      let next:=emit builder (.badd pair.1 pair.2)
      let tail:=feedForward rest next.2
      have head:=bound pair (by simp)
      have extended : Extends builder next.2:=emit_extends _ _
      have tailBound : PairBounded rest next.2 := by
        intro p member
        have old:=bound p (List.mem_cons_of_mem _ member)
        exact ⟨Nat.lt_of_lt_of_le old.1 (extends_next _ _ extended),Nat.lt_of_lt_of_le old.2 (extends_next _ _ extended)⟩
      have tailResult:=ih next.2 inputs tailBound
      have first:=emit_meaning builder (.badd pair.1 pair.2) inputs
      change Meaning next.2 inputs next.1 _ at first
      have last:=meaning_extends next.2 tail.2 (feed_extends rest next.2) inputs next.1 _ first
      have frame : rest.map (fun pair=>next.2.values inputs pair.1+next.2.values inputs pair.2) =
          rest.map (fun pair=>builder.values inputs pair.1+builder.values inputs pair.2) := by
        apply List.map_congr_left
        intro p member
        have old:=bound p (List.mem_cons_of_mem _ member)
        rw [extends_values _ _ extended inputs p.1 old.1,extends_values _ _ extended inputs p.2 old.2]
      change tail.2.values inputs next.1 :: tail.1.map (tail.2.values inputs) = _
      rw [last.2,tailResult,frame]
      rfl

theorem input_state_bound : inputState.Bounded (⟨24,[]⟩ : Builder) := by
  simp [SHA256Stage.State.Bounded,SHA256Stage.State.registers,inputState,Builder.next]

theorem input_block_bound : SHA256Schedule.Bounded (Array.ofFn inputBlock) (⟨24,[]⟩ : Builder) := by
  intro register member
  obtain ⟨i,origin⟩ := Array.mem_ofFn.mp member
  subst register
  have bound:=i.isLt
  change 8+i.val < 24
  omega

theorem scheduled_extends : Extends (⟨24,[]⟩ : Builder) scheduled.2 := SHA256Schedule.loop_extends _ _ _
theorem scheduled_bounded : SHA256Schedule.Bounded scheduled.1 scheduled.2 :=
  SHA256Schedule.loop_bounded _ _ _ input_block_bound (by simp)
theorem scheduled_size : scheduled.1.size=64 := by simp [scheduled,SHA256Schedule.loop_size]

theorem scheduled_meaning (inputs : Nat → Word) :
    SHA256Schedule.evalWords scheduled.1 scheduled.2 inputs = SHA256.schedule (expectedBlock inputs) := by
  rw [scheduled,SHA256Schedule.loop_meaning _ _ _ inputs input_block_bound (by simp)]
  simp only [SHA256Schedule.evalWords,Array.map_ofFn,Builder.values,WordIR.run,SHA256.schedule]
  have same : (inputs ∘ inputBlock) = expectedBlock inputs := by funext i;rfl
  rw [same]

theorem working_extends : Extends scheduled.2 working.2 := round_loop_extends _ _ _ _

theorem scheduled_input_state (inputs : Nat → Word) :
    SHA256Stage.StateMeaning scheduled.2 inputs inputState (expectedState inputs) := by
  exact SHA256Stage.state_meaning_extends inputState (⟨24,[]⟩ : Builder) scheduled.2 scheduled_extends inputs _ ⟨input_state_bound,rfl⟩

def expectedWorking (inputs : Nat → Word) : SHA256.HashState :=
  (List.range 64).foldl (fun current index=>SHA256.round current (SHA256.constants.getD index 0)
    ((SHA256.schedule (expectedBlock inputs)).getD index 0)) (expectedState inputs)

theorem working_meaning (inputs : Nat → Word) : SHA256Stage.StateMeaning working.2 inputs working.1 (expectedWorking inputs) := by
  have initial:=scheduled_input_state inputs
  have result:=round_loop_meaning (List.range 64) inputState scheduled.2 scheduled.1 inputs initial.1 scheduled_bounded (by
    intro index member
    have within:=List.mem_range.mp member
    rw [scheduled_size]
    exact within)
  refine ⟨result.1,?_⟩
  have equality:=result.2
  rw [scheduled_meaning inputs,initial.2] at equality
  exact equality

theorem paired_states_bound (a b : SHA256Stage.State) (builder : Builder)
    (first : a.Bounded builder) (second : b.Bounded builder) : PairBounded (a.registers.zip b.registers) builder := by
  intro pair member
  have both:=List.of_mem_zip member
  exact ⟨first pair.1 both.1,second pair.2 both.2⟩

theorem paired_states_add (a b : SHA256Stage.State) (values : Nat → Word) :
    (a.registers.zip b.registers).map (fun pair=>values pair.1+values pair.2) =
      SHA256.stateWords (SHA256.addState (SHA256Stage.evalState values a) (SHA256Stage.evalState values b)) := rfl

theorem finished_extends : Extends (⟨24,[]⟩ : Builder) finished.2 :=
  extends_trans _ _ _ (extends_trans _ _ _ scheduled_extends working_extends) (feed_extends _ _)

theorem finished_meaning (inputs : Nat → Word) :
    finished.1.map (finished.2.values inputs) = SHA256.stateWords (SHA256.compress (expectedState inputs) (expectedBlock inputs)) := by
  have original:=SHA256Stage.state_meaning_extends inputState scheduled.2 working.2 working_extends inputs _ (scheduled_input_state inputs)
  have work:=working_meaning inputs
  have result:=feed_meaning (inputState.registers.zip working.1.registers) working.2 inputs
    (paired_states_bound _ _ _ original.1 work.1)
  rw [paired_states_add,original.2,work.2] at result
  exact result

theorem program_meaning (inputs : Nat → Word) :
    program.eval inputs = SHA256.stateWords (SHA256.compress (expectedState inputs) (expectedBlock inputs)) := by
  have inputCount : finished.2.inputCount=24 := finished_extends.1
  have result:=finished_meaning inputs
  simpa only [program,Program.eval,Builder.values,inputCount] using result

end Core033.SHA256Compiled
