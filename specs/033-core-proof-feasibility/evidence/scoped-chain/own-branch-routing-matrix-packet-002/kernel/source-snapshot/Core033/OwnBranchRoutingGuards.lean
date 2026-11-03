import Core033.OwnBranchRouting
import Core033.WordSourceValidity
import Core033.WordGuardSuffix

namespace Core033.OwnBranchRoutingGuards
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem program_valid : OwnBranchRouting.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem output_count : OwnBranchRouting.program.outputs.length=45 := by core033_kernel_decide

def compile (p : Nat) := WordGuardSuffix.compile p OwnBranchRouting.program 43 2

theorem guard_wire_bounds (p : Nat) : ∀ wire∈WordGuardSuffix.wires OwnBranchRouting.program 43 2,
    0<wire ∧ wire<(WordMatrix.compile p OwnBranchRouting.program).variableCount :=
  WordGuardSuffix.wire_bounds p OwnBranchRouting.program 43 2 (by rw [output_count])

end Core033.OwnBranchRoutingGuards
