import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def block1 : List WordIR.Op := [.rotr 22 17,.rotr 22 19,.bxor 24 25,.shr 22 10,.bxor 26 27,.badd 28 17,.rotr 9 7,.rotr 9 18,.bxor 30 31,.shr 9 3,.bxor 32 33,.badd 29 34,.badd 35 8]
def actualBlock1 : Bytes := ("    let r00000018: u32 = r00000016.rotate_right(0x00000011_u32);\n    let r00000019: u32 = r00000016.rotate_right(0x00000013_u32);\n    let r0000001a: u32 = r00000018 ^ r00000019;\n    let r0000001b: u32 = r00000016 >> 0x0000000a_u32;\n    let r0000001c: u32 = r0000001a ^ r0000001b;\n    let r0000001d: u32 = r0000001c.wrapping_add(r00000011);\n    let r0000001e: u32 = r00000009.rotate_right(0x00000007_u32);\n    let r0000001f: u32 = r00000009.rotate_right(0x00000012_u32);\n    let r00000020: u32 = r0000001e ^ r0000001f;\n    let r00000021: u32 = r00000009 >> 0x00000003_u32;\n    let r00000022: u32 = r00000020 ^ r00000021;\n    let r00000023: u32 = r0000001d.wrapping_add(r00000022);\n    let r00000024: u32 = r00000023.wrapping_add(r00000008);\n" : String).toByteArray.data.toList
theorem block1_checked : actualBlock1=statementBytes 24 (block1.map lower) ∧ actualBlock1.length=740 := by core033_kernel_decide
end ArtifactSHABlocks
