import Core033.PathFrameAdvance
import Core033.WordGuardSuffix

namespace Core033.PathFrameAdvanceGuards
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev program := PathFrameAdvance.program
def wires := WordGuardSuffix.wires program 43 7
def compile (p : Nat) := WordGuardSuffix.compile p program 43 7

theorem program_valid : program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem output_count : program.outputs.length=50 := by core033_kernel_decide

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount :=
  WordGuardSuffix.wire_bounds p program 43 7 (by rw [output_count])

end Core033.PathFrameAdvanceGuards
