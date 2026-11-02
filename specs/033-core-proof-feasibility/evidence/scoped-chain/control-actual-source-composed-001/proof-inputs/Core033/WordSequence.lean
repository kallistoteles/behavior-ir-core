import Core033.WordStage

namespace Core033.WordSequence
open WordIR WordStage
attribute [local irreducible] WordStage.compile WordStage.emit

def compileAll : Builder → List WordStage.Expr → List Nat × Builder
  | builder,[] => ([],builder)
  | builder,expression::rest =>
    let first:=WordStage.compile expression builder
    let tail:=compileAll first.2 rest
    (first.1::tail.1,tail.2)

theorem all_extends (expressions : List WordStage.Expr) : ∀ builder,
    Extends builder (compileAll builder expressions).2 := by
  induction expressions with
  | nil => intro builder;exact extends_refl builder
  | cons expression rest ih =>
    intro builder
    exact extends_trans _ _ _ (compile_extends expression builder) (ih (WordStage.compile expression builder).2)

theorem all_sound (expressions : List WordStage.Expr) : ∀ builder inputs,
    (∀ expression∈expressions,expression.Bounded builder.next) →
    (∀ register∈(compileAll builder expressions).1,register<(compileAll builder expressions).2.next) ∧
    (compileAll builder expressions).1.map ((compileAll builder expressions).2.values inputs)=
      expressions.map (fun expression=>expression.eval (builder.values inputs)) := by
  induction expressions with
  | nil => intro builder inputs bounds;exact ⟨by simp [compileAll],rfl⟩
  | cons expression rest ih =>
    intro builder inputs bounds
    have headBound:=bounds expression (by simp)
    have restBounds : ∀ e∈rest,e.Bounded builder.next := by intro e he;exact bounds e (List.mem_cons_of_mem expression he)
    have first:=compile_sound expression builder inputs headBound
    have extended:=compile_extends expression builder
    have tailExtended:=all_extends rest (WordStage.compile expression builder).2
    have tail:=ih (WordStage.compile expression builder).2 inputs
      (by intro e he;exact bounded_mono e _ _ (extends_next _ _ extended) (restBounds e he))
    have headKept:=meaning_extends _ _ tailExtended inputs _ _ first
    constructor
    · intro register member
      change register∈(WordStage.compile expression builder).1::(compileAll (WordStage.compile expression builder).2 rest).1 at member
      rcases List.mem_cons.mp member with same|inside
      · subst register;exact headKept.1
      · exact tail.1 register inside
    · change (compileAll (WordStage.compile expression builder).2 rest).2.values inputs (WordStage.compile expression builder).1::
          (compileAll (WordStage.compile expression builder).2 rest).1.map ((compileAll (WordStage.compile expression builder).2 rest).2.values inputs)=_
      rw [headKept.2,tail.2]
      simp only [List.map_cons,List.cons.injEq,true_and]
      apply List.map_congr_left
      intro e he
      exact eval_congr e builder.next _ _ (restBounds e he)
        (by intro index bound;exact extends_values _ _ extended inputs index bound)

def program (inputCount : Nat) (expressions : List WordStage.Expr) : WordIR.Program :=
  let result:=compileAll (Builder.empty inputCount) expressions
  ⟨inputCount,result.2.operations,result.1⟩

theorem program_meaning (inputCount : Nat) (expressions : List WordStage.Expr)
    (bounds : ∀ expression∈expressions,expression.Bounded inputCount) (inputs : Nat → WordIR.Word) :
    (program inputCount expressions).eval inputs=expressions.map (fun expression=>expression.eval inputs) := by
  have result:=all_sound expressions (Builder.empty inputCount) inputs bounds
  have sameInputs : (compileAll (Builder.empty inputCount) expressions).2.inputCount=inputCount :=
    (all_extends expressions (Builder.empty inputCount)).1
  have actualResult:=result.2
  simp only [Builder.values] at actualResult
  rw [sameInputs] at actualResult
  simpa only [program,WordIR.Program.eval,Builder.empty,Builder.operations,
    List.reverse_nil,WordIR.run] using actualResult

end Core033.WordSequence
