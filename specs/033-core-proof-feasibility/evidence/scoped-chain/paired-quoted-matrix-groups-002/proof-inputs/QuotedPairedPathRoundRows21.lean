import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData22
import PairedPathRoundInstructionMatrixData23
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1440 : actualRows1440=WordField.canonicalRows actualModulus 1440 (.bnot 1395) := by core033_kernel_decide
theorem stats1440 : actualRows1440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1440=6276 := by core033_kernel_decide
theorem rows1441 : actualRows1441=WordField.canonicalRows actualModulus 1441 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1441 : actualRows1441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1441=2892 := by core033_kernel_decide
theorem rows1442 : actualRows1442=WordField.canonicalRows actualModulus 1442 (.badd 1440 1441) := by core033_kernel_decide
theorem stats1442 : actualRows1442.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1442=5388 := by core033_kernel_decide
theorem rows1443 : actualRows1443=WordField.canonicalRows actualModulus 1443 (.bnot 1442) := by core033_kernel_decide
theorem stats1443 : actualRows1443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1443=6276 := by core033_kernel_decide
theorem rows1444 : actualRows1444=WordField.canonicalRows actualModulus 1444 (.band 1443 781) := by core033_kernel_decide
theorem stats1444 : actualRows1444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1444=5124 := by core033_kernel_decide
theorem rows1445 : actualRows1445=WordField.canonicalRows actualModulus 1445 (.bxor 1439 1444) := by core033_kernel_decide
theorem stats1445 : actualRows1445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1445=7428 := by core033_kernel_decide
theorem rows1446 : actualRows1446=WordField.canonicalRows actualModulus 1446 (.bnot 1395) := by core033_kernel_decide
theorem stats1446 : actualRows1446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1446=6276 := by core033_kernel_decide
theorem rows1447 : actualRows1447=WordField.canonicalRows actualModulus 1447 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1447 : actualRows1447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1447=2892 := by core033_kernel_decide
theorem rows1448 : actualRows1448=WordField.canonicalRows actualModulus 1448 (.badd 1446 1447) := by core033_kernel_decide
theorem stats1448 : actualRows1448.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1448=5388 := by core033_kernel_decide
theorem rows1449 : actualRows1449=WordField.canonicalRows actualModulus 1449 (.band 1448 880) := by core033_kernel_decide
theorem stats1449 : actualRows1449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1449=5124 := by core033_kernel_decide
theorem rows1450 : actualRows1450=WordField.canonicalRows actualModulus 1450 (.bnot 1395) := by core033_kernel_decide
theorem stats1450 : actualRows1450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1450=6276 := by core033_kernel_decide
theorem rows1451 : actualRows1451=WordField.canonicalRows actualModulus 1451 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1451 : actualRows1451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1451=2892 := by core033_kernel_decide
theorem rows1452 : actualRows1452=WordField.canonicalRows actualModulus 1452 (.badd 1450 1451) := by core033_kernel_decide
theorem stats1452 : actualRows1452.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1452=5388 := by core033_kernel_decide
theorem rows1453 : actualRows1453=WordField.canonicalRows actualModulus 1453 (.bnot 1452) := by core033_kernel_decide
theorem stats1453 : actualRows1453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1453=6276 := by core033_kernel_decide
theorem rows1454 : actualRows1454=WordField.canonicalRows actualModulus 1454 (.band 1453 792) := by core033_kernel_decide
theorem stats1454 : actualRows1454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1454=5124 := by core033_kernel_decide
theorem rows1455 : actualRows1455=WordField.canonicalRows actualModulus 1455 (.bxor 1449 1454) := by core033_kernel_decide
theorem stats1455 : actualRows1455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1455=7428 := by core033_kernel_decide
theorem rows1456 : actualRows1456=WordField.canonicalRows actualModulus 1456 (.bnot 1395) := by core033_kernel_decide
theorem stats1456 : actualRows1456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1456=6276 := by core033_kernel_decide
theorem rows1457 : actualRows1457=WordField.canonicalRows actualModulus 1457 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1457 : actualRows1457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1457=2892 := by core033_kernel_decide
theorem rows1458 : actualRows1458=WordField.canonicalRows actualModulus 1458 (.badd 1456 1457) := by core033_kernel_decide
theorem stats1458 : actualRows1458.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1458=5388 := by core033_kernel_decide
theorem rows1459 : actualRows1459=WordField.canonicalRows actualModulus 1459 (.band 1458 891) := by core033_kernel_decide
theorem stats1459 : actualRows1459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1459=5124 := by core033_kernel_decide
theorem rows1460 : actualRows1460=WordField.canonicalRows actualModulus 1460 (.bnot 1395) := by core033_kernel_decide
theorem stats1460 : actualRows1460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1460=6276 := by core033_kernel_decide
theorem rows1461 : actualRows1461=WordField.canonicalRows actualModulus 1461 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1461 : actualRows1461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1461=2892 := by core033_kernel_decide
theorem rows1462 : actualRows1462=WordField.canonicalRows actualModulus 1462 (.badd 1460 1461) := by core033_kernel_decide
theorem stats1462 : actualRows1462.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1462=5388 := by core033_kernel_decide
theorem rows1463 : actualRows1463=WordField.canonicalRows actualModulus 1463 (.bnot 1462) := by core033_kernel_decide
theorem stats1463 : actualRows1463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1463=6276 := by core033_kernel_decide
theorem rows1464 : actualRows1464=WordField.canonicalRows actualModulus 1464 (.band 1463 803) := by core033_kernel_decide
theorem stats1464 : actualRows1464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1464=5124 := by core033_kernel_decide
theorem rows1465 : actualRows1465=WordField.canonicalRows actualModulus 1465 (.bxor 1459 1464) := by core033_kernel_decide
theorem stats1465 : actualRows1465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1465=7428 := by core033_kernel_decide
theorem rows1466 : actualRows1466=WordField.canonicalRows actualModulus 1466 (.bnot 1395) := by core033_kernel_decide
theorem stats1466 : actualRows1466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1466=6276 := by core033_kernel_decide
theorem rows1467 : actualRows1467=WordField.canonicalRows actualModulus 1467 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1467 : actualRows1467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1467=2892 := by core033_kernel_decide
theorem rows1468 : actualRows1468=WordField.canonicalRows actualModulus 1468 (.badd 1466 1467) := by core033_kernel_decide
theorem stats1468 : actualRows1468.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1468=5388 := by core033_kernel_decide
theorem rows1469 : actualRows1469=WordField.canonicalRows actualModulus 1469 (.band 1468 902) := by core033_kernel_decide
theorem stats1469 : actualRows1469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1469=5124 := by core033_kernel_decide
theorem rows1470 : actualRows1470=WordField.canonicalRows actualModulus 1470 (.bnot 1395) := by core033_kernel_decide
theorem stats1470 : actualRows1470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1470=6276 := by core033_kernel_decide
theorem rows1471 : actualRows1471=WordField.canonicalRows actualModulus 1471 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1471 : actualRows1471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1471=2892 := by core033_kernel_decide
theorem rows1472 : actualRows1472=WordField.canonicalRows actualModulus 1472 (.badd 1470 1471) := by core033_kernel_decide
theorem stats1472 : actualRows1472.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1472=5388 := by core033_kernel_decide
theorem rows1473 : actualRows1473=WordField.canonicalRows actualModulus 1473 (.bnot 1472) := by core033_kernel_decide
theorem stats1473 : actualRows1473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1473=6276 := by core033_kernel_decide
theorem rows1474 : actualRows1474=WordField.canonicalRows actualModulus 1474 (.band 1473 814) := by core033_kernel_decide
theorem stats1474 : actualRows1474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1474=5124 := by core033_kernel_decide
theorem rows1475 : actualRows1475=WordField.canonicalRows actualModulus 1475 (.bxor 1469 1474) := by core033_kernel_decide
theorem stats1475 : actualRows1475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1475=7428 := by core033_kernel_decide
theorem rows1476 : actualRows1476=WordField.canonicalRows actualModulus 1476 (.bnot 1395) := by core033_kernel_decide
theorem stats1476 : actualRows1476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1476=6276 := by core033_kernel_decide
theorem rows1477 : actualRows1477=WordField.canonicalRows actualModulus 1477 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1477 : actualRows1477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1477=2892 := by core033_kernel_decide
theorem rows1478 : actualRows1478=WordField.canonicalRows actualModulus 1478 (.badd 1476 1477) := by core033_kernel_decide
theorem stats1478 : actualRows1478.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1478=5388 := by core033_kernel_decide
theorem rows1479 : actualRows1479=WordField.canonicalRows actualModulus 1479 (.band 1478 935) := by core033_kernel_decide
theorem stats1479 : actualRows1479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1479=5124 := by core033_kernel_decide
theorem rows1480 : actualRows1480=WordField.canonicalRows actualModulus 1480 (.bnot 1395) := by core033_kernel_decide
theorem stats1480 : actualRows1480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1480=6276 := by core033_kernel_decide
theorem rows1481 : actualRows1481=WordField.canonicalRows actualModulus 1481 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1481 : actualRows1481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1481=2892 := by core033_kernel_decide
theorem rows1482 : actualRows1482=WordField.canonicalRows actualModulus 1482 (.badd 1480 1481) := by core033_kernel_decide
theorem stats1482 : actualRows1482.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1482=5388 := by core033_kernel_decide
theorem rows1483 : actualRows1483=WordField.canonicalRows actualModulus 1483 (.bnot 1482) := by core033_kernel_decide
theorem stats1483 : actualRows1483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1483=6276 := by core033_kernel_decide
theorem rows1484 : actualRows1484=WordField.canonicalRows actualModulus 1484 (.band 1483 913) := by core033_kernel_decide
theorem stats1484 : actualRows1484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1484=5124 := by core033_kernel_decide
theorem rows1485 : actualRows1485=WordField.canonicalRows actualModulus 1485 (.bxor 1479 1484) := by core033_kernel_decide
theorem stats1485 : actualRows1485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1485=7428 := by core033_kernel_decide
theorem rows1486 : actualRows1486=WordField.canonicalRows actualModulus 1486 (.bnot 1395) := by core033_kernel_decide
theorem stats1486 : actualRows1486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1486=6276 := by core033_kernel_decide
theorem rows1487 : actualRows1487=WordField.canonicalRows actualModulus 1487 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1487 : actualRows1487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1487=2892 := by core033_kernel_decide
theorem rows1488 : actualRows1488=WordField.canonicalRows actualModulus 1488 (.badd 1486 1487) := by core033_kernel_decide
theorem stats1488 : actualRows1488.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1488=5388 := by core033_kernel_decide
theorem rows1489 : actualRows1489=WordField.canonicalRows actualModulus 1489 (.band 1488 946) := by core033_kernel_decide
theorem stats1489 : actualRows1489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1489=5124 := by core033_kernel_decide
theorem rows1490 : actualRows1490=WordField.canonicalRows actualModulus 1490 (.bnot 1395) := by core033_kernel_decide
theorem stats1490 : actualRows1490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1490=6276 := by core033_kernel_decide
theorem rows1491 : actualRows1491=WordField.canonicalRows actualModulus 1491 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1491 : actualRows1491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1491=2892 := by core033_kernel_decide
theorem rows1492 : actualRows1492=WordField.canonicalRows actualModulus 1492 (.badd 1490 1491) := by core033_kernel_decide
theorem stats1492 : actualRows1492.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1492=5388 := by core033_kernel_decide
theorem rows1493 : actualRows1493=WordField.canonicalRows actualModulus 1493 (.bnot 1492) := by core033_kernel_decide
theorem stats1493 : actualRows1493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1493=6276 := by core033_kernel_decide
theorem rows1494 : actualRows1494=WordField.canonicalRows actualModulus 1494 (.band 1493 924) := by core033_kernel_decide
theorem stats1494 : actualRows1494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1494=5124 := by core033_kernel_decide
theorem rows1495 : actualRows1495=WordField.canonicalRows actualModulus 1495 (.bxor 1489 1494) := by core033_kernel_decide
theorem stats1495 : actualRows1495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1495=7428 := by core033_kernel_decide
theorem rows1496 : actualRows1496=WordField.canonicalRows actualModulus 1496 (.bnot 1395) := by core033_kernel_decide
theorem stats1496 : actualRows1496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1496=6276 := by core033_kernel_decide
theorem rows1497 : actualRows1497=WordField.canonicalRows actualModulus 1497 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1497 : actualRows1497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1497=2892 := by core033_kernel_decide
theorem rows1498 : actualRows1498=WordField.canonicalRows actualModulus 1498 (.badd 1496 1497) := by core033_kernel_decide
theorem stats1498 : actualRows1498.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1498=5388 := by core033_kernel_decide
theorem rows1499 : actualRows1499=WordField.canonicalRows actualModulus 1499 (.band 1498 968) := by core033_kernel_decide
theorem stats1499 : actualRows1499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1499=5124 := by core033_kernel_decide
theorem rows1500 : actualRows1500=WordField.canonicalRows actualModulus 1500 (.bnot 1395) := by core033_kernel_decide
theorem stats1500 : actualRows1500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1500=6276 := by core033_kernel_decide
theorem rows1501 : actualRows1501=WordField.canonicalRows actualModulus 1501 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1501 : actualRows1501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1501=2892 := by core033_kernel_decide
theorem rows1502 : actualRows1502=WordField.canonicalRows actualModulus 1502 (.badd 1500 1501) := by core033_kernel_decide
theorem stats1502 : actualRows1502.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1502=5388 := by core033_kernel_decide
theorem rows1503 : actualRows1503=WordField.canonicalRows actualModulus 1503 (.bnot 1502) := by core033_kernel_decide
theorem stats1503 : actualRows1503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1503=6276 := by core033_kernel_decide
def partRows21 : List R1CS.Row := actualRows1440++actualRows1441++actualRows1442++actualRows1443++actualRows1444++actualRows1445++actualRows1446++actualRows1447++actualRows1448++actualRows1449++actualRows1450++actualRows1451++actualRows1452++actualRows1453++actualRows1454++actualRows1455++actualRows1456++actualRows1457++actualRows1458++actualRows1459++actualRows1460++actualRows1461++actualRows1462++actualRows1463++actualRows1464++actualRows1465++actualRows1466++actualRows1467++actualRows1468++actualRows1469++actualRows1470++actualRows1471++actualRows1472++actualRows1473++actualRows1474++actualRows1475++actualRows1476++actualRows1477++actualRows1478++actualRows1479++actualRows1480++actualRows1481++actualRows1482++actualRows1483++actualRows1484++actualRows1485++actualRows1486++actualRows1487++actualRows1488++actualRows1489++actualRows1490++actualRows1491++actualRows1492++actualRows1493++actualRows1494++actualRows1495++actualRows1496++actualRows1497++actualRows1498++actualRows1499++actualRows1500++actualRows1501++actualRows1502++actualRows1503
def partOps21 : List WordIR.Op := [.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1440 1441,.bnot 1442,.band 1443 781,.bxor 1439 1444,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1446 1447,.band 1448 880,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1450 1451,.bnot 1452,.band 1453 792,.bxor 1449 1454,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1456 1457,.band 1458 891,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1460 1461,.bnot 1462,.band 1463 803,.bxor 1459 1464,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1466 1467,.band 1468 902,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1470 1471,.bnot 1472,.band 1473 814,.bxor 1469 1474,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1476 1477,.band 1478 935,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1480 1481,.bnot 1482,.band 1483 913,.bxor 1479 1484,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1486 1487,.band 1488 946,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1490 1491,.bnot 1492,.band 1493 924,.bxor 1489 1494,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1496 1497,.band 1498 968,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1500 1501,.bnot 1502]
theorem partExact21 : partRows21=WordField.rows actualModulus 1440 partOps21 := by
  simp only [partRows21,partOps21,WordField.rows,rows1440,rows1441,rows1442,rows1443,rows1444,rows1445,rows1446,rows1447,rows1448,rows1449,rows1450,rows1451,rows1452,rows1453,rows1454,rows1455,rows1456,rows1457,rows1458,rows1459,rows1460,rows1461,rows1462,rows1463,rows1464,rows1465,rows1466,rows1467,rows1468,rows1469,rows1470,rows1471,rows1472,rows1473,rows1474,rows1475,rows1476,rows1477,rows1478,rows1479,rows1480,rows1481,rows1482,rows1483,rows1484,rows1485,rows1486,rows1487,rows1488,rows1489,rows1490,rows1491,rows1492,rows1493,rows1494,rows1495,rows1496,rows1497,rows1498,rows1499,rows1500,rows1501,rows1502,rows1503,List.append_assoc,List.append_nil]
theorem partLength21 : partOps21.length=64 := by decide
theorem partStats21 : partRows21.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows21=339216 := by
  simp only [partRows21,List.length_append,MatrixRowBlocks.rows_weight_append,stats1440.1,stats1440.2,stats1441.1,stats1441.2,stats1442.1,stats1442.2,stats1443.1,stats1443.2,stats1444.1,stats1444.2,stats1445.1,stats1445.2,stats1446.1,stats1446.2,stats1447.1,stats1447.2,stats1448.1,stats1448.2,stats1449.1,stats1449.2,stats1450.1,stats1450.2,stats1451.1,stats1451.2,stats1452.1,stats1452.2,stats1453.1,stats1453.2,stats1454.1,stats1454.2,stats1455.1,stats1455.2,stats1456.1,stats1456.2,stats1457.1,stats1457.2,stats1458.1,stats1458.2,stats1459.1,stats1459.2,stats1460.1,stats1460.2,stats1461.1,stats1461.2,stats1462.1,stats1462.2,stats1463.1,stats1463.2,stats1464.1,stats1464.2,stats1465.1,stats1465.2,stats1466.1,stats1466.2,stats1467.1,stats1467.2,stats1468.1,stats1468.2,stats1469.1,stats1469.2,stats1470.1,stats1470.2,stats1471.1,stats1471.2,stats1472.1,stats1472.2,stats1473.1,stats1473.2,stats1474.1,stats1474.2,stats1475.1,stats1475.2,stats1476.1,stats1476.2,stats1477.1,stats1477.2,stats1478.1,stats1478.2,stats1479.1,stats1479.2,stats1480.1,stats1480.2,stats1481.1,stats1481.2,stats1482.1,stats1482.2,stats1483.1,stats1483.2,stats1484.1,stats1484.2,stats1485.1,stats1485.2,stats1486.1,stats1486.2,stats1487.1,stats1487.2,stats1488.1,stats1488.2,stats1489.1,stats1489.2,stats1490.1,stats1490.2,stats1491.1,stats1491.2,stats1492.1,stats1492.2,stats1493.1,stats1493.2,stats1494.1,stats1494.2,stats1495.1,stats1495.2,stats1496.1,stats1496.2,stats1497.1,stats1497.2,stats1498.1,stats1498.2,stats1499.1,stats1499.2,stats1500.1,stats1500.2,stats1501.1,stats1501.2,stats1502.1,stats1502.2,stats1503.1,stats1503.2]
  decide
end QuotedPairedPathRoundCheckedRows
