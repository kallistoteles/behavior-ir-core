import Core033.NodeCountGuards

namespace Core033.NodeCountPublicValue

theorem exact_public_sum {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : NodeCountProgram.program.Valid)
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (NodeCountGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<NodeCountProgram.program.inputCount →
      valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase NodeCountProgram.program)+
      4294967296*valuation (WordMatrix.outputBase NodeCountProgram.program+1)=
        (((NodeCountProgram.left inputs).raw+(NodeCountProgram.right inputs).raw : Nat) : F) := by
  have original:=((GuardMatrix.satisfaction_exact (WordMatrix.compile p NodeCountProgram.program)
    NodeCountGuards.wires rfl valuation).mp accepted).1
  have low:=WordMatrixOutputs.evaluated_output large NodeCountProgram.program valid valuation inputs
    original inputValues 0 (by rw [NodeCountGuards.output_count];decide)
  have high:=WordMatrixOutputs.evaluated_output large NodeCountProgram.program valid valuation inputs
    original inputValues 1 (by rw [NodeCountGuards.output_count];decide)
  simp only [Nat.add_zero] at low
  rw [low,high]
  have raw:=NodeCountGuards.accepted_sum large valid valuation inputs accepted inputValues
  simpa only [Nat.cast_add,Nat.cast_mul,Nat.cast_ofNat] using congrArg (fun value : Nat=>(value : F)) raw

end Core033.NodeCountPublicValue
