import Core033.PairedPathRound

namespace Core033.PairedPathValidity
open WordIR PairedPathRound
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem program_valid : program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem output_count : program.outputs.length=187 := by
  have localCount : round.1.length=133 := by
    change (PathRoundDispatch.program.outputs.map _).length=133
    rw [List.length_map,PathRoundDispatchGuards.output_count]
  have finalCount : finalized.1.length=96 := by
    change (WordSequence.compileAll round.2 finalExpressions).1.length=96
    rw [WordSequenceOutputs.arity]
    simp only [finalExpressions,List.length_map,List.length_range]
  simp only [program,outputs,List.length_append,List.length_drop,List.length_cons,List.length_nil,
    finalCount,localCount]
  decide

def compile (p : Nat) := WordGuardSuffix.compile p program 96 91

theorem guard_wire_bounds (p : Nat) : ∀ wire∈WordGuardSuffix.wires program 96 91,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount :=
  WordGuardSuffix.wire_bounds p program 96 91 (by rw [output_count])

end Core033.PairedPathValidity
