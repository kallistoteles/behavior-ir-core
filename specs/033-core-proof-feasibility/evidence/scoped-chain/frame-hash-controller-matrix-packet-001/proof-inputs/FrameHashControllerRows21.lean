import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData21
import FrameHashControllerInstructionMatrixData22
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1387 : actualRows1387=WordField.canonicalRows actualModulus 1387 (.bxor 1384 1386) := by core033_kernel_decide
theorem stats1387 : actualRows1387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1387=7428 := by core033_kernel_decide
theorem rows1388 : actualRows1388=WordField.canonicalRows actualModulus 1388 (.badd 449 569) := by core033_kernel_decide
theorem stats1388 : actualRows1388.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1388=5388 := by core033_kernel_decide
theorem rows1389 : actualRows1389=WordField.canonicalRows actualModulus 1389 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1389 : actualRows1389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1389=2892 := by core033_kernel_decide
theorem rows1390 : actualRows1390=WordField.canonicalRows actualModulus 1390 (.bnot 1389) := by core033_kernel_decide
theorem stats1390 : actualRows1390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1390=6276 := by core033_kernel_decide
theorem rows1391 : actualRows1391=WordField.canonicalRows actualModulus 1391 (.badd 1388 1390) := by core033_kernel_decide
theorem stats1391 : actualRows1391.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1391=5388 := by core033_kernel_decide
theorem rows1392 : actualRows1392=WordField.canonicalRows actualModulus 1392 (.bnot 1391) := by core033_kernel_decide
theorem stats1392 : actualRows1392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1392=6276 := by core033_kernel_decide
theorem rows1393 : actualRows1393=WordField.canonicalRows actualModulus 1393 (.band 1387 1392) := by core033_kernel_decide
theorem stats1393 : actualRows1393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1393=5124 := by core033_kernel_decide
theorem rows1394 : actualRows1394=WordField.canonicalRows actualModulus 1394 (.bxor 1383 1393) := by core033_kernel_decide
theorem stats1394 : actualRows1394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1394=7428 := by core033_kernel_decide
theorem rows1395 : actualRows1395=WordField.canonicalRows actualModulus 1395 (.shr 1394 31) := by core033_kernel_decide
theorem stats1395 : actualRows1395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1395=2892 := by core033_kernel_decide
theorem rows1396 : actualRows1396=WordField.canonicalRows actualModulus 1396 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1396 : actualRows1396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1396=2892 := by core033_kernel_decide
theorem rows1397 : actualRows1397=WordField.canonicalRows actualModulus 1397 (.bxor 1395 1396) := by core033_kernel_decide
theorem stats1397 : actualRows1397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1397=7428 := by core033_kernel_decide
theorem rows1398 : actualRows1398=WordField.canonicalRows actualModulus 1398 (.band 1379 1397) := by core033_kernel_decide
theorem stats1398 : actualRows1398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1398=5124 := by core033_kernel_decide
theorem rows1399 : actualRows1399=WordField.canonicalRows actualModulus 1399 (.band 1337 1398) := by core033_kernel_decide
theorem stats1399 : actualRows1399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1399=5124 := by core033_kernel_decide
theorem rows1400 : actualRows1400=WordField.canonicalRows actualModulus 1400 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1400 : actualRows1400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1400=2892 := by core033_kernel_decide
theorem rows1401 : actualRows1401=WordField.canonicalRows actualModulus 1401 (.bxor 0 1400) := by core033_kernel_decide
theorem stats1401 : actualRows1401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1401=7428 := by core033_kernel_decide
theorem rows1402 : actualRows1402=WordField.canonicalRows actualModulus 1402 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1402 : actualRows1402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1402=2820 := by core033_kernel_decide
theorem rows1403 : actualRows1403=WordField.canonicalRows actualModulus 1403 (.bnot 1402) := by core033_kernel_decide
theorem stats1403 : actualRows1403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1403=6276 := by core033_kernel_decide
theorem rows1404 : actualRows1404=WordField.canonicalRows actualModulus 1404 (.band 1401 1403) := by core033_kernel_decide
theorem stats1404 : actualRows1404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1404=5124 := by core033_kernel_decide
theorem rows1405 : actualRows1405=WordField.canonicalRows actualModulus 1405 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1405 : actualRows1405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1405=2892 := by core033_kernel_decide
theorem rows1406 : actualRows1406=WordField.canonicalRows actualModulus 1406 (.bxor 0 1405) := by core033_kernel_decide
theorem stats1406 : actualRows1406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1406=7428 := by core033_kernel_decide
theorem rows1407 : actualRows1407=WordField.canonicalRows actualModulus 1407 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1407 : actualRows1407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1407=2820 := by core033_kernel_decide
theorem rows1408 : actualRows1408=WordField.canonicalRows actualModulus 1408 (.bnot 1407) := by core033_kernel_decide
theorem stats1408 : actualRows1408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1408=6276 := by core033_kernel_decide
theorem rows1409 : actualRows1409=WordField.canonicalRows actualModulus 1409 (.bxor 1406 1408) := by core033_kernel_decide
theorem stats1409 : actualRows1409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1409=7428 := by core033_kernel_decide
theorem rows1410 : actualRows1410=WordField.canonicalRows actualModulus 1410 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1410 : actualRows1410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1410=2892 := by core033_kernel_decide
theorem rows1411 : actualRows1411=WordField.canonicalRows actualModulus 1411 (.bxor 0 1410) := by core033_kernel_decide
theorem stats1411 : actualRows1411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1411=7428 := by core033_kernel_decide
theorem rows1412 : actualRows1412=WordField.canonicalRows actualModulus 1412 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1412 : actualRows1412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1412=2820 := by core033_kernel_decide
theorem rows1413 : actualRows1413=WordField.canonicalRows actualModulus 1413 (.bnot 1412) := by core033_kernel_decide
theorem stats1413 : actualRows1413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1413=6276 := by core033_kernel_decide
theorem rows1414 : actualRows1414=WordField.canonicalRows actualModulus 1414 (.badd 1411 1413) := by core033_kernel_decide
theorem stats1414 : actualRows1414.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1414=5388 := by core033_kernel_decide
theorem rows1415 : actualRows1415=WordField.canonicalRows actualModulus 1415 (.bnot 1414) := by core033_kernel_decide
theorem stats1415 : actualRows1415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1415=6276 := by core033_kernel_decide
theorem rows1416 : actualRows1416=WordField.canonicalRows actualModulus 1416 (.band 1409 1415) := by core033_kernel_decide
theorem stats1416 : actualRows1416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1416=5124 := by core033_kernel_decide
theorem rows1417 : actualRows1417=WordField.canonicalRows actualModulus 1417 (.bxor 1404 1416) := by core033_kernel_decide
theorem stats1417 : actualRows1417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1417=7428 := by core033_kernel_decide
theorem rows1418 : actualRows1418=WordField.canonicalRows actualModulus 1418 (.shr 1417 31) := by core033_kernel_decide
theorem stats1418 : actualRows1418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1418=2892 := by core033_kernel_decide
theorem rows1419 : actualRows1419=WordField.canonicalRows actualModulus 1419 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1419 : actualRows1419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1419=2892 := by core033_kernel_decide
theorem rows1420 : actualRows1420=WordField.canonicalRows actualModulus 1420 (.bxor 1418 1419) := by core033_kernel_decide
theorem stats1420 : actualRows1420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1420=7428 := by core033_kernel_decide
theorem rows1421 : actualRows1421=WordField.canonicalRows actualModulus 1421 (.bnot 1420) := by core033_kernel_decide
theorem stats1421 : actualRows1421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1421=6276 := by core033_kernel_decide
theorem rows1422 : actualRows1422=WordField.canonicalRows actualModulus 1422 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1422 : actualRows1422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1422=2892 := by core033_kernel_decide
theorem rows1423 : actualRows1423=WordField.canonicalRows actualModulus 1423 (.badd 1421 1422) := by core033_kernel_decide
theorem stats1423 : actualRows1423.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1423=5388 := by core033_kernel_decide
theorem rows1424 : actualRows1424=WordField.canonicalRows actualModulus 1424 (.band 1423 35) := by core033_kernel_decide
theorem stats1424 : actualRows1424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1424=5124 := by core033_kernel_decide
theorem rows1425 : actualRows1425=WordField.canonicalRows actualModulus 1425 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1425 : actualRows1425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1425=2892 := by core033_kernel_decide
theorem rows1426 : actualRows1426=WordField.canonicalRows actualModulus 1426 (.bxor 0 1425) := by core033_kernel_decide
theorem stats1426 : actualRows1426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1426=7428 := by core033_kernel_decide
theorem rows1427 : actualRows1427=WordField.canonicalRows actualModulus 1427 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1427 : actualRows1427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1427=2820 := by core033_kernel_decide
theorem rows1428 : actualRows1428=WordField.canonicalRows actualModulus 1428 (.bnot 1427) := by core033_kernel_decide
theorem stats1428 : actualRows1428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1428=6276 := by core033_kernel_decide
theorem rows1429 : actualRows1429=WordField.canonicalRows actualModulus 1429 (.band 1426 1428) := by core033_kernel_decide
theorem stats1429 : actualRows1429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1429=5124 := by core033_kernel_decide
theorem rows1430 : actualRows1430=WordField.canonicalRows actualModulus 1430 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1430 : actualRows1430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1430=2892 := by core033_kernel_decide
theorem rows1431 : actualRows1431=WordField.canonicalRows actualModulus 1431 (.bxor 0 1430) := by core033_kernel_decide
theorem stats1431 : actualRows1431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1431=7428 := by core033_kernel_decide
theorem rows1432 : actualRows1432=WordField.canonicalRows actualModulus 1432 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1432 : actualRows1432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1432=2820 := by core033_kernel_decide
theorem rows1433 : actualRows1433=WordField.canonicalRows actualModulus 1433 (.bnot 1432) := by core033_kernel_decide
theorem stats1433 : actualRows1433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1433=6276 := by core033_kernel_decide
theorem rows1434 : actualRows1434=WordField.canonicalRows actualModulus 1434 (.bxor 1431 1433) := by core033_kernel_decide
theorem stats1434 : actualRows1434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1434=7428 := by core033_kernel_decide
theorem rows1435 : actualRows1435=WordField.canonicalRows actualModulus 1435 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1435 : actualRows1435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1435=2892 := by core033_kernel_decide
theorem rows1436 : actualRows1436=WordField.canonicalRows actualModulus 1436 (.bxor 0 1435) := by core033_kernel_decide
theorem stats1436 : actualRows1436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1436=7428 := by core033_kernel_decide
theorem rows1437 : actualRows1437=WordField.canonicalRows actualModulus 1437 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1437 : actualRows1437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1437=2820 := by core033_kernel_decide
theorem rows1438 : actualRows1438=WordField.canonicalRows actualModulus 1438 (.bnot 1437) := by core033_kernel_decide
theorem stats1438 : actualRows1438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1438=6276 := by core033_kernel_decide
theorem rows1439 : actualRows1439=WordField.canonicalRows actualModulus 1439 (.badd 1436 1438) := by core033_kernel_decide
theorem stats1439 : actualRows1439.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1439=5388 := by core033_kernel_decide
theorem rows1440 : actualRows1440=WordField.canonicalRows actualModulus 1440 (.bnot 1439) := by core033_kernel_decide
theorem stats1440 : actualRows1440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1440=6276 := by core033_kernel_decide
theorem rows1441 : actualRows1441=WordField.canonicalRows actualModulus 1441 (.band 1434 1440) := by core033_kernel_decide
theorem stats1441 : actualRows1441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1441=5124 := by core033_kernel_decide
theorem rows1442 : actualRows1442=WordField.canonicalRows actualModulus 1442 (.bxor 1429 1441) := by core033_kernel_decide
theorem stats1442 : actualRows1442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1442=7428 := by core033_kernel_decide
theorem rows1443 : actualRows1443=WordField.canonicalRows actualModulus 1443 (.shr 1442 31) := by core033_kernel_decide
theorem stats1443 : actualRows1443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1443=2892 := by core033_kernel_decide
theorem rows1444 : actualRows1444=WordField.canonicalRows actualModulus 1444 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1444 : actualRows1444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1444=2892 := by core033_kernel_decide
theorem rows1445 : actualRows1445=WordField.canonicalRows actualModulus 1445 (.bxor 1443 1444) := by core033_kernel_decide
theorem stats1445 : actualRows1445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1445=7428 := by core033_kernel_decide
theorem rows1446 : actualRows1446=WordField.canonicalRows actualModulus 1446 (.bnot 1445) := by core033_kernel_decide
theorem stats1446 : actualRows1446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1446=6276 := by core033_kernel_decide
theorem rows1447 : actualRows1447=WordField.canonicalRows actualModulus 1447 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1447 : actualRows1447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1447=2892 := by core033_kernel_decide
theorem rows1448 : actualRows1448=WordField.canonicalRows actualModulus 1448 (.badd 1446 1447) := by core033_kernel_decide
theorem stats1448 : actualRows1448.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1448=5388 := by core033_kernel_decide
theorem rows1449 : actualRows1449=WordField.canonicalRows actualModulus 1449 (.bnot 1448) := by core033_kernel_decide
theorem stats1449 : actualRows1449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1449=6276 := by core033_kernel_decide
theorem rows1450 : actualRows1450=WordField.canonicalRows actualModulus 1450 (.literal (BitVec.ofNat 32 1779033703)) := by core033_kernel_decide
theorem stats1450 : actualRows1450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1450=3972 := by core033_kernel_decide
def partRows21 : List R1CS.Row := actualRows1387++actualRows1388++actualRows1389++actualRows1390++actualRows1391++actualRows1392++actualRows1393++actualRows1394++actualRows1395++actualRows1396++actualRows1397++actualRows1398++actualRows1399++actualRows1400++actualRows1401++actualRows1402++actualRows1403++actualRows1404++actualRows1405++actualRows1406++actualRows1407++actualRows1408++actualRows1409++actualRows1410++actualRows1411++actualRows1412++actualRows1413++actualRows1414++actualRows1415++actualRows1416++actualRows1417++actualRows1418++actualRows1419++actualRows1420++actualRows1421++actualRows1422++actualRows1423++actualRows1424++actualRows1425++actualRows1426++actualRows1427++actualRows1428++actualRows1429++actualRows1430++actualRows1431++actualRows1432++actualRows1433++actualRows1434++actualRows1435++actualRows1436++actualRows1437++actualRows1438++actualRows1439++actualRows1440++actualRows1441++actualRows1442++actualRows1443++actualRows1444++actualRows1445++actualRows1446++actualRows1447++actualRows1448++actualRows1449++actualRows1450
def partOps21 : List WordIR.Op := [.bxor 1384 1386,.badd 449 569,.literal (BitVec.ofNat 32 1048576),.bnot 1389,.badd 1388 1390,.bnot 1391,.band 1387 1392,.bxor 1383 1393,.shr 1394 31,.literal (BitVec.ofNat 32 1),.bxor 1395 1396,.band 1379 1397,.band 1337 1398,.literal (BitVec.ofNat 32 2),.bxor 0 1400,.literal (BitVec.ofNat 32 0),.bnot 1402,.band 1401 1403,.literal (BitVec.ofNat 32 2),.bxor 0 1405,.literal (BitVec.ofNat 32 0),.bnot 1407,.bxor 1406 1408,.literal (BitVec.ofNat 32 2),.bxor 0 1410,.literal (BitVec.ofNat 32 0),.bnot 1412,.badd 1411 1413,.bnot 1414,.band 1409 1415,.bxor 1404 1416,.shr 1417 31,.literal (BitVec.ofNat 32 1),.bxor 1418 1419,.bnot 1420,.literal (BitVec.ofNat 32 1),.badd 1421 1422,.band 1423 35,.literal (BitVec.ofNat 32 2),.bxor 0 1425,.literal (BitVec.ofNat 32 0),.bnot 1427,.band 1426 1428,.literal (BitVec.ofNat 32 2),.bxor 0 1430,.literal (BitVec.ofNat 32 0),.bnot 1432,.bxor 1431 1433,.literal (BitVec.ofNat 32 2),.bxor 0 1435,.literal (BitVec.ofNat 32 0),.bnot 1437,.badd 1436 1438,.bnot 1439,.band 1434 1440,.bxor 1429 1441,.shr 1442 31,.literal (BitVec.ofNat 32 1),.bxor 1443 1444,.bnot 1445,.literal (BitVec.ofNat 32 1),.badd 1446 1447,.bnot 1448,.literal (BitVec.ofNat 32 1779033703)]
theorem partExact21 : partRows21=WordField.rows actualModulus 1387 partOps21 := by
  simp only [partRows21,partOps21,WordField.rows,rows1387,rows1388,rows1389,rows1390,rows1391,rows1392,rows1393,rows1394,rows1395,rows1396,rows1397,rows1398,rows1399,rows1400,rows1401,rows1402,rows1403,rows1404,rows1405,rows1406,rows1407,rows1408,rows1409,rows1410,rows1411,rows1412,rows1413,rows1414,rows1415,rows1416,rows1417,rows1418,rows1419,rows1420,rows1421,rows1422,rows1423,rows1424,rows1425,rows1426,rows1427,rows1428,rows1429,rows1430,rows1431,rows1432,rows1433,rows1434,rows1435,rows1436,rows1437,rows1438,rows1439,rows1440,rows1441,rows1442,rows1443,rows1444,rows1445,rows1446,rows1447,rows1448,rows1449,rows1450,List.append_assoc,List.append_nil]
theorem partLength21 : partOps21.length=64 := by decide
theorem partStats21 : partRows21.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows21=330600 := by
  simp only [partRows21,List.length_append,MatrixRowBlocks.rows_weight_append,stats1387.1,stats1387.2,stats1388.1,stats1388.2,stats1389.1,stats1389.2,stats1390.1,stats1390.2,stats1391.1,stats1391.2,stats1392.1,stats1392.2,stats1393.1,stats1393.2,stats1394.1,stats1394.2,stats1395.1,stats1395.2,stats1396.1,stats1396.2,stats1397.1,stats1397.2,stats1398.1,stats1398.2,stats1399.1,stats1399.2,stats1400.1,stats1400.2,stats1401.1,stats1401.2,stats1402.1,stats1402.2,stats1403.1,stats1403.2,stats1404.1,stats1404.2,stats1405.1,stats1405.2,stats1406.1,stats1406.2,stats1407.1,stats1407.2,stats1408.1,stats1408.2,stats1409.1,stats1409.2,stats1410.1,stats1410.2,stats1411.1,stats1411.2,stats1412.1,stats1412.2,stats1413.1,stats1413.2,stats1414.1,stats1414.2,stats1415.1,stats1415.2,stats1416.1,stats1416.2,stats1417.1,stats1417.2,stats1418.1,stats1418.2,stats1419.1,stats1419.2,stats1420.1,stats1420.2,stats1421.1,stats1421.2,stats1422.1,stats1422.2,stats1423.1,stats1423.2,stats1424.1,stats1424.2,stats1425.1,stats1425.2,stats1426.1,stats1426.2,stats1427.1,stats1427.2,stats1428.1,stats1428.2,stats1429.1,stats1429.2,stats1430.1,stats1430.2,stats1431.1,stats1431.2,stats1432.1,stats1432.2,stats1433.1,stats1433.2,stats1434.1,stats1434.2,stats1435.1,stats1435.2,stats1436.1,stats1436.2,stats1437.1,stats1437.2,stats1438.1,stats1438.2,stats1439.1,stats1439.2,stats1440.1,stats1440.2,stats1441.1,stats1441.2,stats1442.1,stats1442.2,stats1443.1,stats1443.2,stats1444.1,stats1444.2,stats1445.1,stats1445.2,stats1446.1,stats1446.2,stats1447.1,stats1447.2,stats1448.1,stats1448.2,stats1449.1,stats1449.2,stats1450.1,stats1450.2]
  decide
end FrameHashControllerCheckedRows
