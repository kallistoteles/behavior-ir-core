import ActualPathFrameIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathFrameGroup21
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1344 : List WordIR.Op := [.bxor 1375 1377]
def bytes1344 : Bytes := ("    let r00000562: u32 = r0000055f ^ r00000561;\n" : String).toByteArray.data.toList
theorem checked1344 : bytes1344=statementBytes 1378 (op1344.map lower) ∧ bytes1344.length=48 := by core033_kernel_decide
def op1345 : List WordIR.Op := [.badd 440 560]
def bytes1345 : Bytes := ("    let r00000563: u32 = r000001b8.wrapping_add(r00000230);\n" : String).toByteArray.data.toList
theorem checked1345 : bytes1345=statementBytes 1379 (op1345.map lower) ∧ bytes1345.length=60 := by core033_kernel_decide
def op1346 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes1346 : Bytes := ("    let r00000564: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked1346 : bytes1346=statementBytes 1380 (op1346.map lower) ∧ bytes1346.length=41 := by core033_kernel_decide
def op1347 : List WordIR.Op := [.bnot 1380]
def bytes1347 : Bytes := ("    let r00000565: u32 = !r00000564;\n" : String).toByteArray.data.toList
theorem checked1347 : bytes1347=statementBytes 1381 (op1347.map lower) ∧ bytes1347.length=37 := by core033_kernel_decide
def op1348 : List WordIR.Op := [.badd 1379 1381]
def bytes1348 : Bytes := ("    let r00000566: u32 = r00000563.wrapping_add(r00000565);\n" : String).toByteArray.data.toList
theorem checked1348 : bytes1348=statementBytes 1382 (op1348.map lower) ∧ bytes1348.length=60 := by core033_kernel_decide
def op1349 : List WordIR.Op := [.bnot 1382]
def bytes1349 : Bytes := ("    let r00000567: u32 = !r00000566;\n" : String).toByteArray.data.toList
theorem checked1349 : bytes1349=statementBytes 1383 (op1349.map lower) ∧ bytes1349.length=37 := by core033_kernel_decide
def op1350 : List WordIR.Op := [.band 1378 1383]
def bytes1350 : Bytes := ("    let r00000568: u32 = r00000562 & r00000567;\n" : String).toByteArray.data.toList
theorem checked1350 : bytes1350=statementBytes 1384 (op1350.map lower) ∧ bytes1350.length=48 := by core033_kernel_decide
def op1351 : List WordIR.Op := [.bxor 1374 1384]
def bytes1351 : Bytes := ("    let r00000569: u32 = r0000055e ^ r00000568;\n" : String).toByteArray.data.toList
theorem checked1351 : bytes1351=statementBytes 1385 (op1351.map lower) ∧ bytes1351.length=48 := by core033_kernel_decide
def op1352 : List WordIR.Op := [.shr 1385 31]
def bytes1352 : Bytes := ("    let r0000056a: u32 = r00000569 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1352 : bytes1352=statementBytes 1386 (op1352.map lower) ∧ bytes1352.length=54 := by core033_kernel_decide
def op1353 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1353 : Bytes := ("    let r0000056b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1353 : bytes1353=statementBytes 1387 (op1353.map lower) ∧ bytes1353.length=41 := by core033_kernel_decide
def op1354 : List WordIR.Op := [.bxor 1386 1387]
def bytes1354 : Bytes := ("    let r0000056c: u32 = r0000056a ^ r0000056b;\n" : String).toByteArray.data.toList
theorem checked1354 : bytes1354=statementBytes 1388 (op1354.map lower) ∧ bytes1354.length=48 := by core033_kernel_decide
def op1355 : List WordIR.Op := [.band 1370 1388]
def bytes1355 : Bytes := ("    let r0000056d: u32 = r0000055a & r0000056c;\n" : String).toByteArray.data.toList
theorem checked1355 : bytes1355=statementBytes 1389 (op1355.map lower) ∧ bytes1355.length=48 := by core033_kernel_decide
def op1356 : List WordIR.Op := [.band 1328 1389]
def bytes1356 : Bytes := ("    let r0000056e: u32 = r00000530 & r0000056d;\n" : String).toByteArray.data.toList
theorem checked1356 : bytes1356=statementBytes 1390 (op1356.map lower) ∧ bytes1356.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1344,op1345,op1346,op1347,op1348,op1349,op1350,op1351,op1352,op1353,op1354,op1355,op1356]
def chunks : List Bytes := [bytes1344,bytes1345,bytes1346,bytes1347,bytes1348,bytes1349,bytes1350,bytes1351,bytes1352,bytes1353,bytes1354,bytes1355,bytes1356]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1378 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1344.1 (.cons _ _ _ _ _ checked1345.1 (.cons _ _ _ _ _ checked1346.1 (.cons _ _ _ _ _ checked1347.1 (.cons _ _ _ _ _ checked1348.1 (.cons _ _ _ _ _ checked1349.1 (.cons _ _ _ _ _ checked1350.1 (.cons _ _ _ _ _ checked1351.1 (.cons _ _ _ _ _ checked1352.1 (.cons _ _ _ _ _ checked1353.1 (.cons _ _ _ _ _ checked1354.1 (.cons _ _ _ _ _ checked1355.1 (.cons _ _ _ _ _ checked1356.1 (.empty _))))))))))))))
theorem partChecked : partBytes=statementBytes 1378 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=13 := rfl
theorem partSize : partBytes.length=618 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1344.2,checked1345.2,checked1346.2,checked1347.2,checked1348.2,checked1349.2,checked1350.2,checked1351.2,checked1352.2,checked1353.2,checked1354.2,checked1355.2,checked1356.2]
  decide
end ArtifactPathFrameGroup21
