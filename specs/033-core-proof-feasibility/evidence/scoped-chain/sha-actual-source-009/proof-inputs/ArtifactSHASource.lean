import ArtifactSHABytes
import Core033.SHAMaterializedFinal
import Core033.WordSourceChunks
import Core033.KernelDecide
import Lean.Elab.Tactic.Cbv
namespace ArtifactSHASource
set_option cbv.warning false
set_option cbv.maxSteps 8000000
set_option Elab.async false
set_option maxRecDepth 262144
set_option maxHeartbeats 8000000
theorem actual_validated : Core033.WordSource.validateChunks Core033.SHAMaterialized.program actualChunks = true := by core033_kernel_decide
theorem actual_meaning (inputs : Nat → Core033.WordIR.Word) :
  Core033.WordSource.NativeDenotes actualBytes inputs
    (Core033.SHA256.stateWords (Core033.SHA256.compress (Core033.SHA256Compiled.expectedState inputs) (Core033.SHA256Compiled.expectedBlock inputs))) := by
  have result := Core033.WordSource.actual_chunks_sound Core033.SHAMaterialized.program actualChunks actual_validated inputs
  rw [Core033.SHAMaterialized.program_meaning] at result
  exact result
end ArtifactSHASource
