import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData21
import PairedPathRoundInstructionMatrixData22
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1376 : actualRows1376=WordField.canonicalRows actualModulus 1376 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1376 : actualRows1376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1376=2820 := by core033_kernel_decide
theorem rows1377 : actualRows1377=WordField.canonicalRows actualModulus 1377 (.bnot 1376) := by core033_kernel_decide
theorem stats1377 : actualRows1377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1377=6276 := by core033_kernel_decide
theorem rows1378 : actualRows1378=WordField.canonicalRows actualModulus 1378 (.band 1375 1377) := by core033_kernel_decide
theorem stats1378 : actualRows1378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1378=5124 := by core033_kernel_decide
theorem rows1379 : actualRows1379=WordField.canonicalRows actualModulus 1379 (.shr 1141 5) := by core033_kernel_decide
theorem stats1379 : actualRows1379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1379=4764 := by core033_kernel_decide
theorem rows1380 : actualRows1380=WordField.canonicalRows actualModulus 1380 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1380 : actualRows1380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1380=2820 := by core033_kernel_decide
theorem rows1381 : actualRows1381=WordField.canonicalRows actualModulus 1381 (.bnot 1380) := by core033_kernel_decide
theorem stats1381 : actualRows1381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1381=6276 := by core033_kernel_decide
theorem rows1382 : actualRows1382=WordField.canonicalRows actualModulus 1382 (.bxor 1379 1381) := by core033_kernel_decide
theorem stats1382 : actualRows1382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1382=7428 := by core033_kernel_decide
theorem rows1383 : actualRows1383=WordField.canonicalRows actualModulus 1383 (.shr 1141 5) := by core033_kernel_decide
theorem stats1383 : actualRows1383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1383=4764 := by core033_kernel_decide
theorem rows1384 : actualRows1384=WordField.canonicalRows actualModulus 1384 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1384 : actualRows1384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1384=2820 := by core033_kernel_decide
theorem rows1385 : actualRows1385=WordField.canonicalRows actualModulus 1385 (.bnot 1384) := by core033_kernel_decide
theorem stats1385 : actualRows1385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1385=6276 := by core033_kernel_decide
theorem rows1386 : actualRows1386=WordField.canonicalRows actualModulus 1386 (.badd 1383 1385) := by core033_kernel_decide
theorem stats1386 : actualRows1386.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1386=5388 := by core033_kernel_decide
theorem rows1387 : actualRows1387=WordField.canonicalRows actualModulus 1387 (.bnot 1386) := by core033_kernel_decide
theorem stats1387 : actualRows1387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1387=6276 := by core033_kernel_decide
theorem rows1388 : actualRows1388=WordField.canonicalRows actualModulus 1388 (.band 1382 1387) := by core033_kernel_decide
theorem stats1388 : actualRows1388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1388=5124 := by core033_kernel_decide
theorem rows1389 : actualRows1389=WordField.canonicalRows actualModulus 1389 (.bxor 1378 1388) := by core033_kernel_decide
theorem stats1389 : actualRows1389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1389=7428 := by core033_kernel_decide
theorem rows1390 : actualRows1390=WordField.canonicalRows actualModulus 1390 (.shr 1389 31) := by core033_kernel_decide
theorem stats1390 : actualRows1390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1390=2892 := by core033_kernel_decide
theorem rows1391 : actualRows1391=WordField.canonicalRows actualModulus 1391 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1391 : actualRows1391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1391=2892 := by core033_kernel_decide
theorem rows1392 : actualRows1392=WordField.canonicalRows actualModulus 1392 (.bxor 1390 1391) := by core033_kernel_decide
theorem stats1392 : actualRows1392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1392=7428 := by core033_kernel_decide
theorem rows1393 : actualRows1393=WordField.canonicalRows actualModulus 1393 (.shr 1374 0) := by core033_kernel_decide
theorem stats1393 : actualRows1393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1393=5124 := by core033_kernel_decide
theorem rows1394 : actualRows1394=WordField.canonicalRows actualModulus 1394 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1394 : actualRows1394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1394=2892 := by core033_kernel_decide
theorem rows1395 : actualRows1395=WordField.canonicalRows actualModulus 1395 (.band 1393 1394) := by core033_kernel_decide
theorem stats1395 : actualRows1395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1395=5124 := by core033_kernel_decide
theorem rows1396 : actualRows1396=WordField.canonicalRows actualModulus 1396 (.bnot 1395) := by core033_kernel_decide
theorem stats1396 : actualRows1396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1396=6276 := by core033_kernel_decide
theorem rows1397 : actualRows1397=WordField.canonicalRows actualModulus 1397 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1397 : actualRows1397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1397=2892 := by core033_kernel_decide
theorem rows1398 : actualRows1398=WordField.canonicalRows actualModulus 1398 (.badd 1396 1397) := by core033_kernel_decide
theorem stats1398 : actualRows1398.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1398=5388 := by core033_kernel_decide
theorem rows1399 : actualRows1399=WordField.canonicalRows actualModulus 1399 (.band 1398 825) := by core033_kernel_decide
theorem stats1399 : actualRows1399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1399=5124 := by core033_kernel_decide
theorem rows1400 : actualRows1400=WordField.canonicalRows actualModulus 1400 (.bnot 1395) := by core033_kernel_decide
theorem stats1400 : actualRows1400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1400=6276 := by core033_kernel_decide
theorem rows1401 : actualRows1401=WordField.canonicalRows actualModulus 1401 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1401 : actualRows1401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1401=2892 := by core033_kernel_decide
theorem rows1402 : actualRows1402=WordField.canonicalRows actualModulus 1402 (.badd 1400 1401) := by core033_kernel_decide
theorem stats1402 : actualRows1402.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1402=5388 := by core033_kernel_decide
theorem rows1403 : actualRows1403=WordField.canonicalRows actualModulus 1403 (.bnot 1402) := by core033_kernel_decide
theorem stats1403 : actualRows1403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1403=6276 := by core033_kernel_decide
theorem rows1404 : actualRows1404=WordField.canonicalRows actualModulus 1404 (.band 1403 737) := by core033_kernel_decide
theorem stats1404 : actualRows1404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1404=5124 := by core033_kernel_decide
theorem rows1405 : actualRows1405=WordField.canonicalRows actualModulus 1405 (.bxor 1399 1404) := by core033_kernel_decide
theorem stats1405 : actualRows1405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1405=7428 := by core033_kernel_decide
theorem rows1406 : actualRows1406=WordField.canonicalRows actualModulus 1406 (.bnot 1395) := by core033_kernel_decide
theorem stats1406 : actualRows1406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1406=6276 := by core033_kernel_decide
theorem rows1407 : actualRows1407=WordField.canonicalRows actualModulus 1407 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1407 : actualRows1407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1407=2892 := by core033_kernel_decide
theorem rows1408 : actualRows1408=WordField.canonicalRows actualModulus 1408 (.badd 1406 1407) := by core033_kernel_decide
theorem stats1408 : actualRows1408.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1408=5388 := by core033_kernel_decide
theorem rows1409 : actualRows1409=WordField.canonicalRows actualModulus 1409 (.band 1408 836) := by core033_kernel_decide
theorem stats1409 : actualRows1409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1409=5124 := by core033_kernel_decide
theorem rows1410 : actualRows1410=WordField.canonicalRows actualModulus 1410 (.bnot 1395) := by core033_kernel_decide
theorem stats1410 : actualRows1410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1410=6276 := by core033_kernel_decide
theorem rows1411 : actualRows1411=WordField.canonicalRows actualModulus 1411 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1411 : actualRows1411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1411=2892 := by core033_kernel_decide
theorem rows1412 : actualRows1412=WordField.canonicalRows actualModulus 1412 (.badd 1410 1411) := by core033_kernel_decide
theorem stats1412 : actualRows1412.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1412=5388 := by core033_kernel_decide
theorem rows1413 : actualRows1413=WordField.canonicalRows actualModulus 1413 (.bnot 1412) := by core033_kernel_decide
theorem stats1413 : actualRows1413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1413=6276 := by core033_kernel_decide
theorem rows1414 : actualRows1414=WordField.canonicalRows actualModulus 1414 (.band 1413 748) := by core033_kernel_decide
theorem stats1414 : actualRows1414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1414=5124 := by core033_kernel_decide
theorem rows1415 : actualRows1415=WordField.canonicalRows actualModulus 1415 (.bxor 1409 1414) := by core033_kernel_decide
theorem stats1415 : actualRows1415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1415=7428 := by core033_kernel_decide
theorem rows1416 : actualRows1416=WordField.canonicalRows actualModulus 1416 (.bnot 1395) := by core033_kernel_decide
theorem stats1416 : actualRows1416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1416=6276 := by core033_kernel_decide
theorem rows1417 : actualRows1417=WordField.canonicalRows actualModulus 1417 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1417 : actualRows1417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1417=2892 := by core033_kernel_decide
theorem rows1418 : actualRows1418=WordField.canonicalRows actualModulus 1418 (.badd 1416 1417) := by core033_kernel_decide
theorem stats1418 : actualRows1418.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1418=5388 := by core033_kernel_decide
theorem rows1419 : actualRows1419=WordField.canonicalRows actualModulus 1419 (.band 1418 847) := by core033_kernel_decide
theorem stats1419 : actualRows1419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1419=5124 := by core033_kernel_decide
theorem rows1420 : actualRows1420=WordField.canonicalRows actualModulus 1420 (.bnot 1395) := by core033_kernel_decide
theorem stats1420 : actualRows1420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1420=6276 := by core033_kernel_decide
theorem rows1421 : actualRows1421=WordField.canonicalRows actualModulus 1421 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1421 : actualRows1421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1421=2892 := by core033_kernel_decide
theorem rows1422 : actualRows1422=WordField.canonicalRows actualModulus 1422 (.badd 1420 1421) := by core033_kernel_decide
theorem stats1422 : actualRows1422.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1422=5388 := by core033_kernel_decide
theorem rows1423 : actualRows1423=WordField.canonicalRows actualModulus 1423 (.bnot 1422) := by core033_kernel_decide
theorem stats1423 : actualRows1423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1423=6276 := by core033_kernel_decide
theorem rows1424 : actualRows1424=WordField.canonicalRows actualModulus 1424 (.band 1423 759) := by core033_kernel_decide
theorem stats1424 : actualRows1424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1424=5124 := by core033_kernel_decide
theorem rows1425 : actualRows1425=WordField.canonicalRows actualModulus 1425 (.bxor 1419 1424) := by core033_kernel_decide
theorem stats1425 : actualRows1425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1425=7428 := by core033_kernel_decide
theorem rows1426 : actualRows1426=WordField.canonicalRows actualModulus 1426 (.bnot 1395) := by core033_kernel_decide
theorem stats1426 : actualRows1426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1426=6276 := by core033_kernel_decide
theorem rows1427 : actualRows1427=WordField.canonicalRows actualModulus 1427 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1427 : actualRows1427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1427=2892 := by core033_kernel_decide
theorem rows1428 : actualRows1428=WordField.canonicalRows actualModulus 1428 (.badd 1426 1427) := by core033_kernel_decide
theorem stats1428 : actualRows1428.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1428=5388 := by core033_kernel_decide
theorem rows1429 : actualRows1429=WordField.canonicalRows actualModulus 1429 (.band 1428 858) := by core033_kernel_decide
theorem stats1429 : actualRows1429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1429=5124 := by core033_kernel_decide
theorem rows1430 : actualRows1430=WordField.canonicalRows actualModulus 1430 (.bnot 1395) := by core033_kernel_decide
theorem stats1430 : actualRows1430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1430=6276 := by core033_kernel_decide
theorem rows1431 : actualRows1431=WordField.canonicalRows actualModulus 1431 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1431 : actualRows1431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1431=2892 := by core033_kernel_decide
theorem rows1432 : actualRows1432=WordField.canonicalRows actualModulus 1432 (.badd 1430 1431) := by core033_kernel_decide
theorem stats1432 : actualRows1432.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1432=5388 := by core033_kernel_decide
theorem rows1433 : actualRows1433=WordField.canonicalRows actualModulus 1433 (.bnot 1432) := by core033_kernel_decide
theorem stats1433 : actualRows1433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1433=6276 := by core033_kernel_decide
theorem rows1434 : actualRows1434=WordField.canonicalRows actualModulus 1434 (.band 1433 770) := by core033_kernel_decide
theorem stats1434 : actualRows1434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1434=5124 := by core033_kernel_decide
theorem rows1435 : actualRows1435=WordField.canonicalRows actualModulus 1435 (.bxor 1429 1434) := by core033_kernel_decide
theorem stats1435 : actualRows1435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1435=7428 := by core033_kernel_decide
theorem rows1436 : actualRows1436=WordField.canonicalRows actualModulus 1436 (.bnot 1395) := by core033_kernel_decide
theorem stats1436 : actualRows1436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1436=6276 := by core033_kernel_decide
theorem rows1437 : actualRows1437=WordField.canonicalRows actualModulus 1437 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1437 : actualRows1437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1437=2892 := by core033_kernel_decide
theorem rows1438 : actualRows1438=WordField.canonicalRows actualModulus 1438 (.badd 1436 1437) := by core033_kernel_decide
theorem stats1438 : actualRows1438.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1438=5388 := by core033_kernel_decide
theorem rows1439 : actualRows1439=WordField.canonicalRows actualModulus 1439 (.band 1438 869) := by core033_kernel_decide
theorem stats1439 : actualRows1439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1439=5124 := by core033_kernel_decide
def partRows20 : List R1CS.Row := actualRows1376++actualRows1377++actualRows1378++actualRows1379++actualRows1380++actualRows1381++actualRows1382++actualRows1383++actualRows1384++actualRows1385++actualRows1386++actualRows1387++actualRows1388++actualRows1389++actualRows1390++actualRows1391++actualRows1392++actualRows1393++actualRows1394++actualRows1395++actualRows1396++actualRows1397++actualRows1398++actualRows1399++actualRows1400++actualRows1401++actualRows1402++actualRows1403++actualRows1404++actualRows1405++actualRows1406++actualRows1407++actualRows1408++actualRows1409++actualRows1410++actualRows1411++actualRows1412++actualRows1413++actualRows1414++actualRows1415++actualRows1416++actualRows1417++actualRows1418++actualRows1419++actualRows1420++actualRows1421++actualRows1422++actualRows1423++actualRows1424++actualRows1425++actualRows1426++actualRows1427++actualRows1428++actualRows1429++actualRows1430++actualRows1431++actualRows1432++actualRows1433++actualRows1434++actualRows1435++actualRows1436++actualRows1437++actualRows1438++actualRows1439
def partOps20 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 1376,.band 1375 1377,.shr 1141 5,.literal (BitVec.ofNat 32 0),.bnot 1380,.bxor 1379 1381,.shr 1141 5,.literal (BitVec.ofNat 32 0),.bnot 1384,.badd 1383 1385,.bnot 1386,.band 1382 1387,.bxor 1378 1388,.shr 1389 31,.literal (BitVec.ofNat 32 1),.bxor 1390 1391,.shr 1374 0,.literal (BitVec.ofNat 32 1),.band 1393 1394,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1396 1397,.band 1398 825,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1400 1401,.bnot 1402,.band 1403 737,.bxor 1399 1404,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1406 1407,.band 1408 836,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1410 1411,.bnot 1412,.band 1413 748,.bxor 1409 1414,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1416 1417,.band 1418 847,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1420 1421,.bnot 1422,.band 1423 759,.bxor 1419 1424,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1426 1427,.band 1428 858,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1430 1431,.bnot 1432,.band 1433 770,.bxor 1429 1434,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1436 1437,.band 1438 869]
theorem partExact20 : partRows20=WordField.rows actualModulus 1376 partOps20 := by
  simp only [partRows20,partOps20,WordField.rows,rows1376,rows1377,rows1378,rows1379,rows1380,rows1381,rows1382,rows1383,rows1384,rows1385,rows1386,rows1387,rows1388,rows1389,rows1390,rows1391,rows1392,rows1393,rows1394,rows1395,rows1396,rows1397,rows1398,rows1399,rows1400,rows1401,rows1402,rows1403,rows1404,rows1405,rows1406,rows1407,rows1408,rows1409,rows1410,rows1411,rows1412,rows1413,rows1414,rows1415,rows1416,rows1417,rows1418,rows1419,rows1420,rows1421,rows1422,rows1423,rows1424,rows1425,rows1426,rows1427,rows1428,rows1429,rows1430,rows1431,rows1432,rows1433,rows1434,rows1435,rows1436,rows1437,rows1438,rows1439,List.append_assoc,List.append_nil]
theorem partLength20 : partOps20.length=64 := by decide
theorem partStats20 : partRows20.length=2186 ∧ MatrixRowBlocks.rowsWeight partRows20=331872 := by
  simp only [partRows20,List.length_append,MatrixRowBlocks.rows_weight_append,stats1376.1,stats1376.2,stats1377.1,stats1377.2,stats1378.1,stats1378.2,stats1379.1,stats1379.2,stats1380.1,stats1380.2,stats1381.1,stats1381.2,stats1382.1,stats1382.2,stats1383.1,stats1383.2,stats1384.1,stats1384.2,stats1385.1,stats1385.2,stats1386.1,stats1386.2,stats1387.1,stats1387.2,stats1388.1,stats1388.2,stats1389.1,stats1389.2,stats1390.1,stats1390.2,stats1391.1,stats1391.2,stats1392.1,stats1392.2,stats1393.1,stats1393.2,stats1394.1,stats1394.2,stats1395.1,stats1395.2,stats1396.1,stats1396.2,stats1397.1,stats1397.2,stats1398.1,stats1398.2,stats1399.1,stats1399.2,stats1400.1,stats1400.2,stats1401.1,stats1401.2,stats1402.1,stats1402.2,stats1403.1,stats1403.2,stats1404.1,stats1404.2,stats1405.1,stats1405.2,stats1406.1,stats1406.2,stats1407.1,stats1407.2,stats1408.1,stats1408.2,stats1409.1,stats1409.2,stats1410.1,stats1410.2,stats1411.1,stats1411.2,stats1412.1,stats1412.2,stats1413.1,stats1413.2,stats1414.1,stats1414.2,stats1415.1,stats1415.2,stats1416.1,stats1416.2,stats1417.1,stats1417.2,stats1418.1,stats1418.2,stats1419.1,stats1419.2,stats1420.1,stats1420.2,stats1421.1,stats1421.2,stats1422.1,stats1422.2,stats1423.1,stats1423.2,stats1424.1,stats1424.2,stats1425.1,stats1425.2,stats1426.1,stats1426.2,stats1427.1,stats1427.2,stats1428.1,stats1428.2,stats1429.1,stats1429.2,stats1430.1,stats1430.2,stats1431.1,stats1431.2,stats1432.1,stats1432.2,stats1433.1,stats1433.2,stats1434.1,stats1434.2,stats1435.1,stats1435.2,stats1436.1,stats1436.2,stats1437.1,stats1437.2,stats1438.1,stats1438.2,stats1439.1,stats1439.2]
  decide
end PairedPathRoundCheckedRows
