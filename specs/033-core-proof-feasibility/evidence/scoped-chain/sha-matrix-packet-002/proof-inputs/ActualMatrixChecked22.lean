import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData22
import ActualMatrixData23
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1432 : actualRows1432=WordField.canonicalRows actualModulus 1432 (.rotr 1430 11) := by core033_kernel_decide
theorem stats1432 : actualRows1432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1432=5124 := by core033_kernel_decide
theorem rows1433 : actualRows1433=WordField.canonicalRows actualModulus 1433 (.bxor 1431 1432) := by core033_kernel_decide
theorem stats1433 : actualRows1433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1433=7428 := by core033_kernel_decide
theorem rows1434 : actualRows1434=WordField.canonicalRows actualModulus 1434 (.rotr 1430 25) := by core033_kernel_decide
theorem stats1434 : actualRows1434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1434=5124 := by core033_kernel_decide
theorem rows1435 : actualRows1435=WordField.canonicalRows actualModulus 1435 (.bxor 1433 1434) := by core033_kernel_decide
theorem stats1435 : actualRows1435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1435=7428 := by core033_kernel_decide
theorem rows1436 : actualRows1436=WordField.canonicalRows actualModulus 1436 (.badd 1349 1435) := by core033_kernel_decide
theorem stats1436 : actualRows1436.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1436=5388 := by core033_kernel_decide
theorem rows1437 : actualRows1437=WordField.canonicalRows actualModulus 1437 (.band 1430 1403) := by core033_kernel_decide
theorem stats1437 : actualRows1437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1437=5124 := by core033_kernel_decide
theorem rows1438 : actualRows1438=WordField.canonicalRows actualModulus 1438 (.bnot 1430) := by core033_kernel_decide
theorem stats1438 : actualRows1438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1438=6276 := by core033_kernel_decide
theorem rows1439 : actualRows1439=WordField.canonicalRows actualModulus 1439 (.band 1438 1376) := by core033_kernel_decide
theorem stats1439 : actualRows1439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1439=5124 := by core033_kernel_decide
theorem rows1440 : actualRows1440=WordField.canonicalRows actualModulus 1440 (.bxor 1437 1439) := by core033_kernel_decide
theorem stats1440 : actualRows1440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1440=7428 := by core033_kernel_decide
theorem rows1441 : actualRows1441=WordField.canonicalRows actualModulus 1441 (.badd 1436 1440) := by core033_kernel_decide
theorem stats1441 : actualRows1441.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1441=5388 := by core033_kernel_decide
theorem rows1442 : actualRows1442=WordField.canonicalRows actualModulus 1442 (.literal (BitVec.ofNat 32 3584528711)) := by core033_kernel_decide
theorem stats1442 : actualRows1442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1442=4044 := by core033_kernel_decide
theorem rows1443 : actualRows1443=WordField.canonicalRows actualModulus 1443 (.badd 1441 1442) := by core033_kernel_decide
theorem stats1443 : actualRows1443.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1443=5388 := by core033_kernel_decide
theorem rows1444 : actualRows1444=WordField.canonicalRows actualModulus 1444 (.badd 1443 205) := by core033_kernel_decide
theorem stats1444 : actualRows1444.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1444=5388 := by core033_kernel_decide
theorem rows1445 : actualRows1445=WordField.canonicalRows actualModulus 1445 (.rotr 1429 2) := by core033_kernel_decide
theorem stats1445 : actualRows1445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1445=5124 := by core033_kernel_decide
theorem rows1446 : actualRows1446=WordField.canonicalRows actualModulus 1446 (.rotr 1429 13) := by core033_kernel_decide
theorem stats1446 : actualRows1446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1446=5124 := by core033_kernel_decide
theorem rows1447 : actualRows1447=WordField.canonicalRows actualModulus 1447 (.bxor 1445 1446) := by core033_kernel_decide
theorem stats1447 : actualRows1447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1447=7428 := by core033_kernel_decide
theorem rows1448 : actualRows1448=WordField.canonicalRows actualModulus 1448 (.rotr 1429 22) := by core033_kernel_decide
theorem stats1448 : actualRows1448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1448=5124 := by core033_kernel_decide
theorem rows1449 : actualRows1449=WordField.canonicalRows actualModulus 1449 (.bxor 1447 1448) := by core033_kernel_decide
theorem stats1449 : actualRows1449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1449=7428 := by core033_kernel_decide
theorem rows1450 : actualRows1450=WordField.canonicalRows actualModulus 1450 (.band 1429 1402) := by core033_kernel_decide
theorem stats1450 : actualRows1450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1450=5124 := by core033_kernel_decide
theorem rows1451 : actualRows1451=WordField.canonicalRows actualModulus 1451 (.band 1429 1375) := by core033_kernel_decide
theorem stats1451 : actualRows1451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1451=5124 := by core033_kernel_decide
theorem rows1452 : actualRows1452=WordField.canonicalRows actualModulus 1452 (.bxor 1450 1451) := by core033_kernel_decide
theorem stats1452 : actualRows1452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1452=7428 := by core033_kernel_decide
theorem rows1453 : actualRows1453=WordField.canonicalRows actualModulus 1453 (.band 1402 1375) := by core033_kernel_decide
theorem stats1453 : actualRows1453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1453=5124 := by core033_kernel_decide
theorem rows1454 : actualRows1454=WordField.canonicalRows actualModulus 1454 (.bxor 1452 1453) := by core033_kernel_decide
theorem stats1454 : actualRows1454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1454=7428 := by core033_kernel_decide
theorem rows1455 : actualRows1455=WordField.canonicalRows actualModulus 1455 (.badd 1449 1454) := by core033_kernel_decide
theorem stats1455 : actualRows1455.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1455=5388 := by core033_kernel_decide
theorem rows1456 : actualRows1456=WordField.canonicalRows actualModulus 1456 (.badd 1444 1455) := by core033_kernel_decide
theorem stats1456 : actualRows1456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1456=5388 := by core033_kernel_decide
theorem rows1457 : actualRows1457=WordField.canonicalRows actualModulus 1457 (.badd 1348 1444) := by core033_kernel_decide
theorem stats1457 : actualRows1457.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1457=5388 := by core033_kernel_decide
theorem rows1458 : actualRows1458=WordField.canonicalRows actualModulus 1458 (.rotr 1457 6) := by core033_kernel_decide
theorem stats1458 : actualRows1458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1458=5124 := by core033_kernel_decide
theorem rows1459 : actualRows1459=WordField.canonicalRows actualModulus 1459 (.rotr 1457 11) := by core033_kernel_decide
theorem stats1459 : actualRows1459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1459=5124 := by core033_kernel_decide
theorem rows1460 : actualRows1460=WordField.canonicalRows actualModulus 1460 (.bxor 1458 1459) := by core033_kernel_decide
theorem stats1460 : actualRows1460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1460=7428 := by core033_kernel_decide
theorem rows1461 : actualRows1461=WordField.canonicalRows actualModulus 1461 (.rotr 1457 25) := by core033_kernel_decide
theorem stats1461 : actualRows1461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1461=5124 := by core033_kernel_decide
theorem rows1462 : actualRows1462=WordField.canonicalRows actualModulus 1462 (.bxor 1460 1461) := by core033_kernel_decide
theorem stats1462 : actualRows1462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1462=7428 := by core033_kernel_decide
theorem rows1463 : actualRows1463=WordField.canonicalRows actualModulus 1463 (.badd 1376 1462) := by core033_kernel_decide
theorem stats1463 : actualRows1463.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1463=5388 := by core033_kernel_decide
theorem rows1464 : actualRows1464=WordField.canonicalRows actualModulus 1464 (.band 1457 1430) := by core033_kernel_decide
theorem stats1464 : actualRows1464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1464=5124 := by core033_kernel_decide
theorem rows1465 : actualRows1465=WordField.canonicalRows actualModulus 1465 (.bnot 1457) := by core033_kernel_decide
theorem stats1465 : actualRows1465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1465=6276 := by core033_kernel_decide
theorem rows1466 : actualRows1466=WordField.canonicalRows actualModulus 1466 (.band 1465 1403) := by core033_kernel_decide
theorem stats1466 : actualRows1466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1466=5124 := by core033_kernel_decide
theorem rows1467 : actualRows1467=WordField.canonicalRows actualModulus 1467 (.bxor 1464 1466) := by core033_kernel_decide
theorem stats1467 : actualRows1467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1467=7428 := by core033_kernel_decide
theorem rows1468 : actualRows1468=WordField.canonicalRows actualModulus 1468 (.badd 1463 1467) := by core033_kernel_decide
theorem stats1468 : actualRows1468.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1468=5388 := by core033_kernel_decide
theorem rows1469 : actualRows1469=WordField.canonicalRows actualModulus 1469 (.literal (BitVec.ofNat 32 113926993)) := by core033_kernel_decide
theorem stats1469 : actualRows1469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1469=3756 := by core033_kernel_decide
theorem rows1470 : actualRows1470=WordField.canonicalRows actualModulus 1470 (.badd 1468 1469) := by core033_kernel_decide
theorem stats1470 : actualRows1470.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1470=5388 := by core033_kernel_decide
theorem rows1471 : actualRows1471=WordField.canonicalRows actualModulus 1471 (.badd 1470 218) := by core033_kernel_decide
theorem stats1471 : actualRows1471.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1471=5388 := by core033_kernel_decide
theorem rows1472 : actualRows1472=WordField.canonicalRows actualModulus 1472 (.rotr 1456 2) := by core033_kernel_decide
theorem stats1472 : actualRows1472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1472=5124 := by core033_kernel_decide
theorem rows1473 : actualRows1473=WordField.canonicalRows actualModulus 1473 (.rotr 1456 13) := by core033_kernel_decide
theorem stats1473 : actualRows1473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1473=5124 := by core033_kernel_decide
theorem rows1474 : actualRows1474=WordField.canonicalRows actualModulus 1474 (.bxor 1472 1473) := by core033_kernel_decide
theorem stats1474 : actualRows1474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1474=7428 := by core033_kernel_decide
theorem rows1475 : actualRows1475=WordField.canonicalRows actualModulus 1475 (.rotr 1456 22) := by core033_kernel_decide
theorem stats1475 : actualRows1475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1475=5124 := by core033_kernel_decide
theorem rows1476 : actualRows1476=WordField.canonicalRows actualModulus 1476 (.bxor 1474 1475) := by core033_kernel_decide
theorem stats1476 : actualRows1476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1476=7428 := by core033_kernel_decide
theorem rows1477 : actualRows1477=WordField.canonicalRows actualModulus 1477 (.band 1456 1429) := by core033_kernel_decide
theorem stats1477 : actualRows1477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1477=5124 := by core033_kernel_decide
theorem rows1478 : actualRows1478=WordField.canonicalRows actualModulus 1478 (.band 1456 1402) := by core033_kernel_decide
theorem stats1478 : actualRows1478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1478=5124 := by core033_kernel_decide
theorem rows1479 : actualRows1479=WordField.canonicalRows actualModulus 1479 (.bxor 1477 1478) := by core033_kernel_decide
theorem stats1479 : actualRows1479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1479=7428 := by core033_kernel_decide
theorem rows1480 : actualRows1480=WordField.canonicalRows actualModulus 1480 (.band 1429 1402) := by core033_kernel_decide
theorem stats1480 : actualRows1480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1480=5124 := by core033_kernel_decide
theorem rows1481 : actualRows1481=WordField.canonicalRows actualModulus 1481 (.bxor 1479 1480) := by core033_kernel_decide
theorem stats1481 : actualRows1481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1481=7428 := by core033_kernel_decide
theorem rows1482 : actualRows1482=WordField.canonicalRows actualModulus 1482 (.badd 1476 1481) := by core033_kernel_decide
theorem stats1482 : actualRows1482.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1482=5388 := by core033_kernel_decide
theorem rows1483 : actualRows1483=WordField.canonicalRows actualModulus 1483 (.badd 1471 1482) := by core033_kernel_decide
theorem stats1483 : actualRows1483.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1483=5388 := by core033_kernel_decide
theorem rows1484 : actualRows1484=WordField.canonicalRows actualModulus 1484 (.badd 1375 1471) := by core033_kernel_decide
theorem stats1484 : actualRows1484.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1484=5388 := by core033_kernel_decide
theorem rows1485 : actualRows1485=WordField.canonicalRows actualModulus 1485 (.rotr 1484 6) := by core033_kernel_decide
theorem stats1485 : actualRows1485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1485=5124 := by core033_kernel_decide
theorem rows1486 : actualRows1486=WordField.canonicalRows actualModulus 1486 (.rotr 1484 11) := by core033_kernel_decide
theorem stats1486 : actualRows1486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1486=5124 := by core033_kernel_decide
theorem rows1487 : actualRows1487=WordField.canonicalRows actualModulus 1487 (.bxor 1485 1486) := by core033_kernel_decide
theorem stats1487 : actualRows1487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1487=7428 := by core033_kernel_decide
theorem rows1488 : actualRows1488=WordField.canonicalRows actualModulus 1488 (.rotr 1484 25) := by core033_kernel_decide
theorem stats1488 : actualRows1488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1488=5124 := by core033_kernel_decide
theorem rows1489 : actualRows1489=WordField.canonicalRows actualModulus 1489 (.bxor 1487 1488) := by core033_kernel_decide
theorem stats1489 : actualRows1489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1489=7428 := by core033_kernel_decide
theorem rows1490 : actualRows1490=WordField.canonicalRows actualModulus 1490 (.badd 1403 1489) := by core033_kernel_decide
theorem stats1490 : actualRows1490.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1490=5388 := by core033_kernel_decide
theorem rows1491 : actualRows1491=WordField.canonicalRows actualModulus 1491 (.band 1484 1457) := by core033_kernel_decide
theorem stats1491 : actualRows1491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1491=5124 := by core033_kernel_decide
theorem rows1492 : actualRows1492=WordField.canonicalRows actualModulus 1492 (.bnot 1484) := by core033_kernel_decide
theorem stats1492 : actualRows1492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1492=6276 := by core033_kernel_decide
theorem rows1493 : actualRows1493=WordField.canonicalRows actualModulus 1493 (.band 1492 1430) := by core033_kernel_decide
theorem stats1493 : actualRows1493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1493=5124 := by core033_kernel_decide
theorem rows1494 : actualRows1494=WordField.canonicalRows actualModulus 1494 (.bxor 1491 1493) := by core033_kernel_decide
theorem stats1494 : actualRows1494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1494=7428 := by core033_kernel_decide
theorem rows1495 : actualRows1495=WordField.canonicalRows actualModulus 1495 (.badd 1490 1494) := by core033_kernel_decide
theorem stats1495 : actualRows1495.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1495=5388 := by core033_kernel_decide
def partRows22 : List R1CS.Row := actualRows1432++actualRows1433++actualRows1434++actualRows1435++actualRows1436++actualRows1437++actualRows1438++actualRows1439++actualRows1440++actualRows1441++actualRows1442++actualRows1443++actualRows1444++actualRows1445++actualRows1446++actualRows1447++actualRows1448++actualRows1449++actualRows1450++actualRows1451++actualRows1452++actualRows1453++actualRows1454++actualRows1455++actualRows1456++actualRows1457++actualRows1458++actualRows1459++actualRows1460++actualRows1461++actualRows1462++actualRows1463++actualRows1464++actualRows1465++actualRows1466++actualRows1467++actualRows1468++actualRows1469++actualRows1470++actualRows1471++actualRows1472++actualRows1473++actualRows1474++actualRows1475++actualRows1476++actualRows1477++actualRows1478++actualRows1479++actualRows1480++actualRows1481++actualRows1482++actualRows1483++actualRows1484++actualRows1485++actualRows1486++actualRows1487++actualRows1488++actualRows1489++actualRows1490++actualRows1491++actualRows1492++actualRows1493++actualRows1494++actualRows1495
def partOps22 : List WordIR.Op := [.rotr 1430 11,.bxor 1431 1432,.rotr 1430 25,.bxor 1433 1434,.badd 1349 1435,.band 1430 1403,.bnot 1430,.band 1438 1376,.bxor 1437 1439,.badd 1436 1440,.literal (BitVec.ofNat 32 3584528711),.badd 1441 1442,.badd 1443 205,.rotr 1429 2,.rotr 1429 13,.bxor 1445 1446,.rotr 1429 22,.bxor 1447 1448,.band 1429 1402,.band 1429 1375,.bxor 1450 1451,.band 1402 1375,.bxor 1452 1453,.badd 1449 1454,.badd 1444 1455,.badd 1348 1444,.rotr 1457 6,.rotr 1457 11,.bxor 1458 1459,.rotr 1457 25,.bxor 1460 1461,.badd 1376 1462,.band 1457 1430,.bnot 1457,.band 1465 1403,.bxor 1464 1466,.badd 1463 1467,.literal (BitVec.ofNat 32 113926993),.badd 1468 1469,.badd 1470 218,.rotr 1456 2,.rotr 1456 13,.bxor 1472 1473,.rotr 1456 22,.bxor 1474 1475,.band 1456 1429,.band 1456 1402,.bxor 1477 1478,.band 1429 1402,.bxor 1479 1480,.badd 1476 1481,.badd 1471 1482,.badd 1375 1471,.rotr 1484 6,.rotr 1484 11,.bxor 1485 1486,.rotr 1484 25,.bxor 1487 1488,.badd 1403 1489,.band 1484 1457,.bnot 1484,.band 1492 1430,.bxor 1491 1493,.badd 1490 1494]
theorem partRowsExact22 : partRows22=WordField.rows actualModulus 1432 partOps22 := by
  simp only [partRows22,partOps22,WordField.rows,rows1432,rows1433,rows1434,rows1435,rows1436,rows1437,rows1438,rows1439,rows1440,rows1441,rows1442,rows1443,rows1444,rows1445,rows1446,rows1447,rows1448,rows1449,rows1450,rows1451,rows1452,rows1453,rows1454,rows1455,rows1456,rows1457,rows1458,rows1459,rows1460,rows1461,rows1462,rows1463,rows1464,rows1465,rows1466,rows1467,rows1468,rows1469,rows1470,rows1471,rows1472,rows1473,rows1474,rows1475,rows1476,rows1477,rows1478,rows1479,rows1480,rows1481,rows1482,rows1483,rows1484,rows1485,rows1486,rows1487,rows1488,rows1489,rows1490,rows1491,rows1492,rows1493,rows1494,rows1495,List.append_assoc,List.append_nil]
theorem partOpsLength22 : partOps22.length=64 := by decide
theorem partStats22 : partRows22.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows22=372336 := by
  simp only [partRows22,List.length_append,MatrixRowBlocks.rows_weight_append,stats1432.1,stats1432.2,stats1433.1,stats1433.2,stats1434.1,stats1434.2,stats1435.1,stats1435.2,stats1436.1,stats1436.2,stats1437.1,stats1437.2,stats1438.1,stats1438.2,stats1439.1,stats1439.2,stats1440.1,stats1440.2,stats1441.1,stats1441.2,stats1442.1,stats1442.2,stats1443.1,stats1443.2,stats1444.1,stats1444.2,stats1445.1,stats1445.2,stats1446.1,stats1446.2,stats1447.1,stats1447.2,stats1448.1,stats1448.2,stats1449.1,stats1449.2,stats1450.1,stats1450.2,stats1451.1,stats1451.2,stats1452.1,stats1452.2,stats1453.1,stats1453.2,stats1454.1,stats1454.2,stats1455.1,stats1455.2,stats1456.1,stats1456.2,stats1457.1,stats1457.2,stats1458.1,stats1458.2,stats1459.1,stats1459.2,stats1460.1,stats1460.2,stats1461.1,stats1461.2,stats1462.1,stats1462.2,stats1463.1,stats1463.2,stats1464.1,stats1464.2,stats1465.1,stats1465.2,stats1466.1,stats1466.2,stats1467.1,stats1467.2,stats1468.1,stats1468.2,stats1469.1,stats1469.2,stats1470.1,stats1470.2,stats1471.1,stats1471.2,stats1472.1,stats1472.2,stats1473.1,stats1473.2,stats1474.1,stats1474.2,stats1475.1,stats1475.2,stats1476.1,stats1476.2,stats1477.1,stats1477.2,stats1478.1,stats1478.2,stats1479.1,stats1479.2,stats1480.1,stats1480.2,stats1481.1,stats1481.2,stats1482.1,stats1482.2,stats1483.1,stats1483.2,stats1484.1,stats1484.2,stats1485.1,stats1485.2,stats1486.1,stats1486.2,stats1487.1,stats1487.2,stats1488.1,stats1488.2,stats1489.1,stats1489.2,stats1490.1,stats1490.2,stats1491.1,stats1491.2,stats1492.1,stats1492.2,stats1493.1,stats1493.2,stats1494.1,stats1494.2,stats1495.1,stats1495.2]
  decide
end ActualSHAMatrixRows
