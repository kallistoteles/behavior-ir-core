import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData21
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1378 : actualRows1378=WordField.canonicalRows actualModulus 1378 (.bxor 1375 1377) := by core033_kernel_decide
theorem stats1378 : actualRows1378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1378=7428 := by core033_kernel_decide
theorem rows1379 : actualRows1379=WordField.canonicalRows actualModulus 1379 (.badd 440 560) := by core033_kernel_decide
theorem stats1379 : actualRows1379.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1379=5388 := by core033_kernel_decide
theorem rows1380 : actualRows1380=WordField.canonicalRows actualModulus 1380 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1380 : actualRows1380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1380=2892 := by core033_kernel_decide
theorem rows1381 : actualRows1381=WordField.canonicalRows actualModulus 1381 (.bnot 1380) := by core033_kernel_decide
theorem stats1381 : actualRows1381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1381=6276 := by core033_kernel_decide
theorem rows1382 : actualRows1382=WordField.canonicalRows actualModulus 1382 (.badd 1379 1381) := by core033_kernel_decide
theorem stats1382 : actualRows1382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1382=5388 := by core033_kernel_decide
theorem rows1383 : actualRows1383=WordField.canonicalRows actualModulus 1383 (.bnot 1382) := by core033_kernel_decide
theorem stats1383 : actualRows1383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1383=6276 := by core033_kernel_decide
theorem rows1384 : actualRows1384=WordField.canonicalRows actualModulus 1384 (.band 1378 1383) := by core033_kernel_decide
theorem stats1384 : actualRows1384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1384=5124 := by core033_kernel_decide
theorem rows1385 : actualRows1385=WordField.canonicalRows actualModulus 1385 (.bxor 1374 1384) := by core033_kernel_decide
theorem stats1385 : actualRows1385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1385=7428 := by core033_kernel_decide
theorem rows1386 : actualRows1386=WordField.canonicalRows actualModulus 1386 (.shr 1385 31) := by core033_kernel_decide
theorem stats1386 : actualRows1386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1386=2892 := by core033_kernel_decide
theorem rows1387 : actualRows1387=WordField.canonicalRows actualModulus 1387 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1387 : actualRows1387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1387=2892 := by core033_kernel_decide
theorem rows1388 : actualRows1388=WordField.canonicalRows actualModulus 1388 (.bxor 1386 1387) := by core033_kernel_decide
theorem stats1388 : actualRows1388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1388=7428 := by core033_kernel_decide
theorem rows1389 : actualRows1389=WordField.canonicalRows actualModulus 1389 (.band 1370 1388) := by core033_kernel_decide
theorem stats1389 : actualRows1389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1389=5124 := by core033_kernel_decide
theorem rows1390 : actualRows1390=WordField.canonicalRows actualModulus 1390 (.band 1328 1389) := by core033_kernel_decide
theorem stats1390 : actualRows1390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1390=5124 := by core033_kernel_decide
def partRows21 : List R1CS.Row := actualRows1378++actualRows1379++actualRows1380++actualRows1381++actualRows1382++actualRows1383++actualRows1384++actualRows1385++actualRows1386++actualRows1387++actualRows1388++actualRows1389++actualRows1390
def partOps21 : List WordIR.Op := [.bxor 1375 1377,.badd 440 560,.literal (BitVec.ofNat 32 1048576),.bnot 1380,.badd 1379 1381,.bnot 1382,.band 1378 1383,.bxor 1374 1384,.shr 1385 31,.literal (BitVec.ofNat 32 1),.bxor 1386 1387,.band 1370 1388,.band 1328 1389]
theorem partExact21 : partRows21=WordField.rows actualModulus 1378 partOps21 := by
  simp only [partRows21,partOps21,WordField.rows,rows1378,rows1379,rows1380,rows1381,rows1382,rows1383,rows1384,rows1385,rows1386,rows1387,rows1388,rows1389,rows1390,List.append_assoc,List.append_nil]
theorem partLength21 : partOps21.length=13 := by decide
theorem partStats21 : partRows21.length=444 ∧ MatrixRowBlocks.rowsWeight partRows21=69660 := by
  simp only [partRows21,List.length_append,MatrixRowBlocks.rows_weight_append,stats1378.1,stats1378.2,stats1379.1,stats1379.2,stats1380.1,stats1380.2,stats1381.1,stats1381.2,stats1382.1,stats1382.2,stats1383.1,stats1383.2,stats1384.1,stats1384.2,stats1385.1,stats1385.2,stats1386.1,stats1386.2,stats1387.1,stats1387.2,stats1388.1,stats1388.2,stats1389.1,stats1389.2,stats1390.1,stats1390.2]
  decide
end PathFrameCheckedRows
