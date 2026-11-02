import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def block1 : List WordIR.Op := [.rotr 22 17]
def actualBlock1 : Bytes := ("    let r00000018: u32 = r00000016.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem block1_checked : actualBlock1=statementBytes 24 (block1.map lower) ∧ actualBlock1.length=65 := by core033_kernel_decide
end ArtifactSHABlocks
