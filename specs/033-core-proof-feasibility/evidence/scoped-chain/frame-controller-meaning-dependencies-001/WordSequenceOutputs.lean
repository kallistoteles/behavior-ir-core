import Core033.WordSequence

namespace Core033.WordSequenceOutputs
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem arity (builder : Builder) (expressions : List Expr) :
    (WordSequence.compileAll builder expressions).1.length=expressions.length := by
  induction expressions generalizing builder with
  | nil => rfl
  | cons expression rest ih =>
    change (WordSequence.compileAll (WordStage.compile expression builder).2 rest).1.length+1=rest.length+1
    rw [ih]

theorem exact_output (builder : Builder) (expressions : List Expr)
    (bounded : ∀ expression∈expressions,expression.Bounded builder.next)
    (inputs : Nat → Word) (position : Nat) (bound : position<expressions.length) :
    Meaning (WordSequence.compileAll builder expressions).2 inputs
      ((WordSequence.compileAll builder expressions).1.getD position 0)
      (((expressions.map (fun expression=>expression.eval (builder.values inputs)))).getD position 0) := by
  have length:=arity builder expressions
  have found : (WordSequence.compileAll builder expressions).1[position]?=
      some ((WordSequence.compileAll builder expressions).1.getD position 0) := by
    rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem (by rw [length];exact bound),Option.getD_some]
  have sound:=WordSequence.all_sound expressions builder inputs bounded
  have atPosition:=congrArg (fun words : List Word=>words[position]?) sound.2
  dsimp only at atPosition
  rw [List.getElem?_map,found,Option.map_some] at atPosition
  have actual : ((WordSequence.compileAll builder expressions).2.values inputs
      ((WordSequence.compileAll builder expressions).1.getD position 0))=
      (expressions.map (fun expression=>expression.eval (builder.values inputs))).getD position 0 := by
    rw [List.getD_eq_getElem?_getD,←atPosition]
    rfl
  exact ⟨sound.1 _ (List.mem_of_getElem? found),actual⟩

end Core033.WordSequenceOutputs
