import Core033.WordInline

namespace Core033.WordInlineOutputs
open WordIR WordStage

def register (builder : Builder) (program : Program) (ports : Nat → Nat) (position : Nat) : Nat :=
  (WordInline.inline builder program ports).1.getD position 0

theorem exact_output (builder : Builder) (program : Program) (valid : program.Valid)
    (ports : Nat → Nat) (bounded : ∀ index,index<program.inputCount → ports index<builder.next)
    (inputs : Nat → Word) (position : Nat) (bound : position<program.outputs.length) :
    Meaning (WordInline.inline builder program ports).2 inputs (register builder program ports position)
      ((program.eval (fun index=>builder.values inputs (ports index))).getD position 0) := by
  have length : (WordInline.inline builder program ports).1.length=program.outputs.length := by
    simp only [WordInline.inline,List.length_map]
  have found : (WordInline.inline builder program ports).1[position]?=
      some (register builder program ports position) := by
    unfold register
    rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem (by rw [length];exact bound),Option.getD_some]
  have value:=congrArg (fun words : List Word=>words.getD position 0)
    (WordInline.complete_meaning builder program valid ports bounded inputs)
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map,found,Option.map_some,Option.getD_some] at value
  exact ⟨WordInline.output_bounds builder program valid ports bounded _ (List.mem_of_getElem? found),value⟩

end Core033.WordInlineOutputs
