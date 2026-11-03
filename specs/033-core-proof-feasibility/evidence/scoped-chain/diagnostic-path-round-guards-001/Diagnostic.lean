import Core033.PathRoundDispatchMeaning

namespace Core033.PathRoundDispatchGuards
open WordIR PathRoundDispatch PathRoundDispatchMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem program_valid : program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem output_count : program.outputs.length=133 := by
  have hashes : hashed.1.length=125 := by
    change (FrameHashController.program.outputs.map _).length=125
    rw [List.length_map,FrameHashControllerGuards.output_count]
  have advances : advanced.1.length=50 := by
    change (PathFrameAdvance.program.outputs.map _).length=50
    rw [List.length_map,PathFrameAdvanceGuards.output_count]
  have final : finalized.1.length=44 := by
    rw [WordSequenceOutputs.arity]
    simp only [finalExpressions,List.length_append,List.length_map,List.length_range,
      List.length_cons,List.length_nil]
  simp only [program,outputs,List.length_append,List.length_take,List.length_drop,hashes,advances,final]
  decide

def compile (p : Nat) := WordGuardSuffix.compile p program 43 90

theorem guard_wire_bounds (p : Nat) : ∀ wire∈WordGuardSuffix.wires program 43 90,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount :=
  WordGuardSuffix.wire_bounds p program 43 90 (by rw [output_count])

theorem forced_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<90) : (program.eval inputs).getD (43+position) 0=1 :=
  WordGuardSuffix.forced_output_one large program program_valid 43 90 (by rw [output_count])
    valuation inputs accepted inputValues position bound

end Core033.PathRoundDispatchGuards
