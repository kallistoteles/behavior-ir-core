import Core033.IntegerIngressGuards

namespace Core033.IntegerPublicValue
open R1CS

/-- The public pair itself denotes the original eight bytes. A correct private
decoder result alone does not discharge this public-wire obligation. -/
theorem accepted_public_integer {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : IntegerIngress.program.Valid)
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (IntegerIngressGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<IntegerIngress.program.inputCount →
      valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase IntegerIngress.program)+
      4294967296*valuation (WordMatrix.outputBase IntegerIngress.program+1)=
        ((Codec.decodeLE ((List.range 8).map (fun index=>UInt8.ofNat (inputs index).toNat))) : F) := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p IntegerIngress.program)
    IntegerIngressGuards.wires rfl valuation).mp accepted
  have low:=WordMatrixOutputs.evaluated_output large IntegerIngress.program valid valuation inputs
    forced.1 inputValues 0 (by rw [IntegerIngressGuards.output_count];decide)
  have high:=WordMatrixOutputs.evaluated_output large IntegerIngress.program valid valuation inputs
    forced.1 inputValues 1 (by rw [IntegerIngressGuards.output_count];decide)
  rw [IntegerIngress.program_meaning] at low high
  change valuation (WordMatrix.outputBase IntegerIngress.program+0)=
    ((IntegerIngress.packLE (inputs 0) (inputs 1) (inputs 2) (inputs 3)).toNat : F) at low
  change valuation (WordMatrix.outputBase IntegerIngress.program+1)=
    ((IntegerIngress.packLE (inputs 4) (inputs 5) (inputs 6) (inputs 7)).toNat : F) at high
  simp only [Nat.add_zero] at low
  rw [low,high]
  have raw:=IntegerIngressGuards.accepted_integer large valid valuation inputs accepted inputValues
  simpa only [Nat.cast_add,Nat.cast_mul,Nat.cast_ofNat] using congrArg (fun value : Nat=>(value : F)) raw

end Core033.IntegerPublicValue
