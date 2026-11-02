import Core033.WordMatrixWitness

namespace Core033.WordMatrixOutputs

theorem evaluated_output {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (program : WordIR.Program) (valid : program.Valid)
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : (WordMatrix.compile p program).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount →
      valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<program.outputs.length) :
    valuation (WordMatrix.outputBase program+position)=
      (((program.eval inputs).getD position 0).toNat : F) := by
  let register:=program.outputs[position]'bound
  have found : program.outputs[position]?=some register := List.getElem?_eq_getElem bound
  have checked:=WordMatrix.matrix_sound_at_output large program valid valuation inputs
    satisfied inputValues position register found
  have evaluated : (program.eval inputs).getD position 0=
      WordIR.run program.inputCount program.operations inputs register := by
    simp only [WordIR.Program.eval,List.getD_eq_getElem?_getD,List.getElem?_map,found,
      Option.map_some,Option.getD_some]
  rw [evaluated]
  exact checked

end Core033.WordMatrixOutputs
