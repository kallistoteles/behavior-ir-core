import Core033.MaskedRouting
import Core033.FrameHashControllerGuards
import Core033.PathFrameAdvanceGuards

/- One fixed WordIR step executes the three local parent-frame phases.
Every inactive component receives fixed admitted operands; only the active
component's state is returned. Phase four is the local return point, not a K
public endpoint. Authenticated sibling, paired-path and outer K remain required. -/
namespace Core033.PathRoundDispatch
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def equalPhase (opcode : Word) : Expr := WordEquality.expression (.input 0) (.literal opcode)
def hashActivation : Expr := .bxor (equalPhase 1) (equalPhase 2)
def advanceActivation : Expr := equalPhase 3
def admission : Expr := .bxor hashActivation advanceActivation

def hashFallback (index : Nat) : Word := if index=0 ∨ index=1 then 1 else 0
def advanceFallback (index : Nat) : Word := if index=0 then 3 else if index=1 then 1 else 0
def hashRouter : MaskedRouting.Config := ⟨43,43,hashActivation,id,hashFallback⟩
def advanceRouter : MaskedRouting.Config := ⟨43,43,advanceActivation,id,advanceFallback⟩

def initial : Builder := Builder.empty 43
def hashRouted := WordInline.inline initial hashRouter.program id
def hashInput (index : Nat) := WordInlineOutputs.register initial hashRouter.program id index
def hashed := WordInline.inline hashRouted.2 FrameHashController.program hashInput
def hashOutput (index : Nat) := WordInlineOutputs.register hashRouted.2 FrameHashController.program hashInput index

def advanceRouted := WordInline.inline hashed.2 advanceRouter.program id
def advanceInput (index : Nat) := WordInlineOutputs.register hashed.2 advanceRouter.program id index
def advanced := WordInline.inline advanceRouted.2 PathFrameAdvance.program advanceInput
def advanceOutput (index : Nat) := WordInlineOutputs.register advanceRouted.2 PathFrameAdvance.program advanceInput index

def stateExpression (index : Nat) : Expr := ControlPrimitives.select advanceActivation
  (.input (advanceOutput index)) (.input (hashOutput index))
def finalExpressions := (List.range 43).map stateExpression++[admission]
def finalized := WordSequence.compileAll advanced.2 finalExpressions
def outputs : List Nat := finalized.1.take 43++hashed.1.drop 43++advanced.1.drop 43++finalized.1.drop 43
def program : Program := ⟨43,finalized.2.operations,outputs⟩

theorem hash_activation_bounded : hashActivation.Bounded 43 := by
  simp [hashActivation,equalPhase,WordEquality.expression,ControlPrimitives.zero,
    ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded]

theorem advance_activation_bounded : advanceActivation.Bounded 43 := by
  simp [advanceActivation,equalPhase,WordEquality.expression,ControlPrimitives.zero,
    ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded]

theorem hash_activation_exact (inputs : Nat → Word) : hashActivation.eval inputs=
    WordControl.boolWord (decide (inputs 0=1 ∨ inputs 0=2)) := by
  by_cases first : inputs 0=1
  · have second : inputs 0≠2 := by rw [first];decide
    simp [hashActivation,equalPhase,Expr.eval,WordEquality.expression_meaning,
      WordEquality.equal_word_exact,first,second,WordControl.boolWord]
  · by_cases second : inputs 0=2
    · simp [hashActivation,equalPhase,Expr.eval,WordEquality.expression_meaning,
        WordEquality.equal_word_exact,first,second,WordControl.boolWord]
    · change WordEquality.equalWord (inputs 0) 1 ^^^ WordEquality.equalWord (inputs 0) 2=_
      rw [WordEquality.equal_word_exact,WordEquality.equal_word_exact]
      have neither : ¬(inputs 0=1 ∨ inputs 0=2) := fun either=>either.elim first second
      simp only [decide_eq_false first,decide_eq_false second,decide_eq_false neither,
        WordControl.boolWord,Bool.false_eq_true,if_false]
      rfl

theorem advance_activation_exact (inputs : Nat → Word) : advanceActivation.eval inputs=
    WordControl.boolWord (decide (inputs 0=3)) := by
  exact WordEquality.equal_word_exact (inputs 0) 3

theorem admission_exact (inputs : Nat → Word) : admission.eval inputs=
    WordControl.boolWord (decide (inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3)) := by
  change hashActivation.eval inputs ^^^ advanceActivation.eval inputs=_
  rw [hash_activation_exact,advance_activation_exact]
  by_cases first : inputs 0=1
  · have second : inputs 0≠2 := by rw [first];decide
    have third : inputs 0≠3 := by rw [first];decide
    simp [first,second,third,WordControl.boolWord]
  · by_cases second : inputs 0=2
    · have third : inputs 0≠3 := by rw [second];decide
      simp [first,second,third,WordControl.boolWord]
    · by_cases third : inputs 0=3
      · simp [first,second,third,WordControl.boolWord]
      · have neither : ¬(inputs 0=1 ∨ inputs 0=2) := fun either=>either.elim first second
        have none : ¬(inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3) :=
          fun either=>either.elim first (fun rest=>rest.elim second third)
        simp only [decide_eq_false neither,decide_eq_false third,decide_eq_false none,
          WordControl.boolWord,Bool.false_eq_true,if_false]
        rfl

theorem hash_router_meaning (inputs : Nat → Word) : hashRouter.program.eval inputs=
    (List.range 43).map (fun index=>if inputs 0=1 ∨ inputs 0=2 then inputs index else hashFallback index) := by
  have exactRouter:=MaskedRouting.program_meaning hashRouter hash_activation_bounded
    (by intro index bound;exact bound) inputs _ (hash_activation_exact inputs)
  simpa only [hashRouter,decide_eq_true_eq] using exactRouter

theorem advance_router_meaning (inputs : Nat → Word) : advanceRouter.program.eval inputs=
    (List.range 43).map (fun index=>if inputs 0=3 then inputs index else advanceFallback index) := by
  have exactRouter:=MaskedRouting.program_meaning advanceRouter advance_activation_bounded
    (by intro index bound;exact bound) inputs _ (advance_activation_exact inputs)
  simpa only [advanceRouter,decide_eq_true_eq] using exactRouter

end Core033.PathRoundDispatch
