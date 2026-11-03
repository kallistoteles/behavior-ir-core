import ActualKeyVectorIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactKeyVectorFooter
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def actualFooter : Bytes := ("    [r0000015f]\n}\n" : String).toByteArray.data.toList
theorem checked : actualFooter=suffix ActualKeyVectorIR.program.outputs ∧ actualFooter.length=18 := by core033_kernel_decide
end ArtifactKeyVectorFooter
