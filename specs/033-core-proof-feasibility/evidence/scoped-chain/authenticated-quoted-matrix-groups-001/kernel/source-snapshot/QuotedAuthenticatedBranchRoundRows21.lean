import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData22
import AuthenticatedBranchRoundInstructionMatrixData23
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1462 : actualRows1462=WordField.canonicalRows actualModulus 1462 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1462 : actualRows1462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1462=2820 := by core033_kernel_decide
theorem rows1463 : actualRows1463=WordField.canonicalRows actualModulus 1463 (.band 1461 1462) := by core033_kernel_decide
theorem stats1463 : actualRows1463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1463=5124 := by core033_kernel_decide
theorem rows1464 : actualRows1464=WordField.canonicalRows actualModulus 1464 (.bxor 1457 1463) := by core033_kernel_decide
theorem stats1464 : actualRows1464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1464=7428 := by core033_kernel_decide
theorem rows1465 : actualRows1465=WordField.canonicalRows actualModulus 1465 (.bnot 1288) := by core033_kernel_decide
theorem stats1465 : actualRows1465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1465=6276 := by core033_kernel_decide
theorem rows1466 : actualRows1466=WordField.canonicalRows actualModulus 1466 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1466 : actualRows1466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1466=2892 := by core033_kernel_decide
theorem rows1467 : actualRows1467=WordField.canonicalRows actualModulus 1467 (.badd 1465 1466) := by core033_kernel_decide
theorem stats1467 : actualRows1467.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1467=5388 := by core033_kernel_decide
theorem rows1468 : actualRows1468=WordField.canonicalRows actualModulus 1468 (.band 1467 923) := by core033_kernel_decide
theorem stats1468 : actualRows1468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1468=5124 := by core033_kernel_decide
theorem rows1469 : actualRows1469=WordField.canonicalRows actualModulus 1469 (.bnot 1288) := by core033_kernel_decide
theorem stats1469 : actualRows1469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1469=6276 := by core033_kernel_decide
theorem rows1470 : actualRows1470=WordField.canonicalRows actualModulus 1470 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1470 : actualRows1470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1470=2892 := by core033_kernel_decide
theorem rows1471 : actualRows1471=WordField.canonicalRows actualModulus 1471 (.badd 1469 1470) := by core033_kernel_decide
theorem stats1471 : actualRows1471.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1471=5388 := by core033_kernel_decide
theorem rows1472 : actualRows1472=WordField.canonicalRows actualModulus 1472 (.bnot 1471) := by core033_kernel_decide
theorem stats1472 : actualRows1472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1472=6276 := by core033_kernel_decide
theorem rows1473 : actualRows1473=WordField.canonicalRows actualModulus 1473 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1473 : actualRows1473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1473=2820 := by core033_kernel_decide
theorem rows1474 : actualRows1474=WordField.canonicalRows actualModulus 1474 (.band 1472 1473) := by core033_kernel_decide
theorem stats1474 : actualRows1474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1474=5124 := by core033_kernel_decide
theorem rows1475 : actualRows1475=WordField.canonicalRows actualModulus 1475 (.bxor 1468 1474) := by core033_kernel_decide
theorem stats1475 : actualRows1475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1475=7428 := by core033_kernel_decide
theorem rows1476 : actualRows1476=WordField.canonicalRows actualModulus 1476 (.bnot 1288) := by core033_kernel_decide
theorem stats1476 : actualRows1476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1476=6276 := by core033_kernel_decide
theorem rows1477 : actualRows1477=WordField.canonicalRows actualModulus 1477 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1477 : actualRows1477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1477=2892 := by core033_kernel_decide
theorem rows1478 : actualRows1478=WordField.canonicalRows actualModulus 1478 (.badd 1476 1477) := by core033_kernel_decide
theorem stats1478 : actualRows1478.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1478=5388 := by core033_kernel_decide
theorem rows1479 : actualRows1479=WordField.canonicalRows actualModulus 1479 (.band 1478 943) := by core033_kernel_decide
theorem stats1479 : actualRows1479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1479=5124 := by core033_kernel_decide
theorem rows1480 : actualRows1480=WordField.canonicalRows actualModulus 1480 (.bnot 1288) := by core033_kernel_decide
theorem stats1480 : actualRows1480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1480=6276 := by core033_kernel_decide
theorem rows1481 : actualRows1481=WordField.canonicalRows actualModulus 1481 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1481 : actualRows1481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1481=2892 := by core033_kernel_decide
theorem rows1482 : actualRows1482=WordField.canonicalRows actualModulus 1482 (.badd 1480 1481) := by core033_kernel_decide
theorem stats1482 : actualRows1482.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1482=5388 := by core033_kernel_decide
theorem rows1483 : actualRows1483=WordField.canonicalRows actualModulus 1483 (.bnot 1482) := by core033_kernel_decide
theorem stats1483 : actualRows1483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1483=6276 := by core033_kernel_decide
theorem rows1484 : actualRows1484=WordField.canonicalRows actualModulus 1484 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1484 : actualRows1484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1484=2820 := by core033_kernel_decide
theorem rows1485 : actualRows1485=WordField.canonicalRows actualModulus 1485 (.band 1483 1484) := by core033_kernel_decide
theorem stats1485 : actualRows1485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1485=5124 := by core033_kernel_decide
theorem rows1486 : actualRows1486=WordField.canonicalRows actualModulus 1486 (.bxor 1479 1485) := by core033_kernel_decide
theorem stats1486 : actualRows1486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1486=7428 := by core033_kernel_decide
theorem rows1487 : actualRows1487=WordField.canonicalRows actualModulus 1487 (.bnot 1288) := by core033_kernel_decide
theorem stats1487 : actualRows1487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1487=6276 := by core033_kernel_decide
theorem rows1488 : actualRows1488=WordField.canonicalRows actualModulus 1488 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1488 : actualRows1488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1488=2892 := by core033_kernel_decide
theorem rows1489 : actualRows1489=WordField.canonicalRows actualModulus 1489 (.badd 1487 1488) := by core033_kernel_decide
theorem stats1489 : actualRows1489.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1489=5388 := by core033_kernel_decide
theorem rows1490 : actualRows1490=WordField.canonicalRows actualModulus 1490 (.band 1489 963) := by core033_kernel_decide
theorem stats1490 : actualRows1490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1490=5124 := by core033_kernel_decide
theorem rows1491 : actualRows1491=WordField.canonicalRows actualModulus 1491 (.bnot 1288) := by core033_kernel_decide
theorem stats1491 : actualRows1491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1491=6276 := by core033_kernel_decide
theorem rows1492 : actualRows1492=WordField.canonicalRows actualModulus 1492 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1492 : actualRows1492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1492=2892 := by core033_kernel_decide
theorem rows1493 : actualRows1493=WordField.canonicalRows actualModulus 1493 (.badd 1491 1492) := by core033_kernel_decide
theorem stats1493 : actualRows1493.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1493=5388 := by core033_kernel_decide
theorem rows1494 : actualRows1494=WordField.canonicalRows actualModulus 1494 (.bnot 1493) := by core033_kernel_decide
theorem stats1494 : actualRows1494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1494=6276 := by core033_kernel_decide
theorem rows1495 : actualRows1495=WordField.canonicalRows actualModulus 1495 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1495 : actualRows1495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1495=2820 := by core033_kernel_decide
theorem rows1496 : actualRows1496=WordField.canonicalRows actualModulus 1496 (.band 1494 1495) := by core033_kernel_decide
theorem stats1496 : actualRows1496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1496=5124 := by core033_kernel_decide
theorem rows1497 : actualRows1497=WordField.canonicalRows actualModulus 1497 (.bxor 1490 1496) := by core033_kernel_decide
theorem stats1497 : actualRows1497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1497=7428 := by core033_kernel_decide
theorem rows1498 : actualRows1498=WordField.canonicalRows actualModulus 1498 (.bnot 1288) := by core033_kernel_decide
theorem stats1498 : actualRows1498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1498=6276 := by core033_kernel_decide
theorem rows1499 : actualRows1499=WordField.canonicalRows actualModulus 1499 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1499 : actualRows1499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1499=2892 := by core033_kernel_decide
theorem rows1500 : actualRows1500=WordField.canonicalRows actualModulus 1500 (.badd 1498 1499) := by core033_kernel_decide
theorem stats1500 : actualRows1500.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1500=5388 := by core033_kernel_decide
theorem rows1501 : actualRows1501=WordField.canonicalRows actualModulus 1501 (.band 1500 973) := by core033_kernel_decide
theorem stats1501 : actualRows1501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1501=5124 := by core033_kernel_decide
theorem rows1502 : actualRows1502=WordField.canonicalRows actualModulus 1502 (.bnot 1288) := by core033_kernel_decide
theorem stats1502 : actualRows1502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1502=6276 := by core033_kernel_decide
theorem rows1503 : actualRows1503=WordField.canonicalRows actualModulus 1503 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1503 : actualRows1503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1503=2892 := by core033_kernel_decide
theorem rows1504 : actualRows1504=WordField.canonicalRows actualModulus 1504 (.badd 1502 1503) := by core033_kernel_decide
theorem stats1504 : actualRows1504.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1504=5388 := by core033_kernel_decide
theorem rows1505 : actualRows1505=WordField.canonicalRows actualModulus 1505 (.bnot 1504) := by core033_kernel_decide
theorem stats1505 : actualRows1505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1505=6276 := by core033_kernel_decide
theorem rows1506 : actualRows1506=WordField.canonicalRows actualModulus 1506 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1506 : actualRows1506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1506=2820 := by core033_kernel_decide
theorem rows1507 : actualRows1507=WordField.canonicalRows actualModulus 1507 (.band 1505 1506) := by core033_kernel_decide
theorem stats1507 : actualRows1507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1507=5124 := by core033_kernel_decide
theorem rows1508 : actualRows1508=WordField.canonicalRows actualModulus 1508 (.bxor 1501 1507) := by core033_kernel_decide
theorem stats1508 : actualRows1508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1508=7428 := by core033_kernel_decide
theorem rows1509 : actualRows1509=WordField.canonicalRows actualModulus 1509 (.bnot 1288) := by core033_kernel_decide
theorem stats1509 : actualRows1509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1509=6276 := by core033_kernel_decide
theorem rows1510 : actualRows1510=WordField.canonicalRows actualModulus 1510 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1510 : actualRows1510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1510=2892 := by core033_kernel_decide
theorem rows1511 : actualRows1511=WordField.canonicalRows actualModulus 1511 (.badd 1509 1510) := by core033_kernel_decide
theorem stats1511 : actualRows1511.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1511=5388 := by core033_kernel_decide
theorem rows1512 : actualRows1512=WordField.canonicalRows actualModulus 1512 (.band 1511 983) := by core033_kernel_decide
theorem stats1512 : actualRows1512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1512=5124 := by core033_kernel_decide
theorem rows1513 : actualRows1513=WordField.canonicalRows actualModulus 1513 (.bnot 1288) := by core033_kernel_decide
theorem stats1513 : actualRows1513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1513=6276 := by core033_kernel_decide
theorem rows1514 : actualRows1514=WordField.canonicalRows actualModulus 1514 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1514 : actualRows1514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1514=2892 := by core033_kernel_decide
theorem rows1515 : actualRows1515=WordField.canonicalRows actualModulus 1515 (.badd 1513 1514) := by core033_kernel_decide
theorem stats1515 : actualRows1515.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1515=5388 := by core033_kernel_decide
theorem rows1516 : actualRows1516=WordField.canonicalRows actualModulus 1516 (.bnot 1515) := by core033_kernel_decide
theorem stats1516 : actualRows1516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1516=6276 := by core033_kernel_decide
theorem rows1517 : actualRows1517=WordField.canonicalRows actualModulus 1517 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1517 : actualRows1517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1517=2820 := by core033_kernel_decide
theorem rows1518 : actualRows1518=WordField.canonicalRows actualModulus 1518 (.band 1516 1517) := by core033_kernel_decide
theorem stats1518 : actualRows1518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1518=5124 := by core033_kernel_decide
theorem rows1519 : actualRows1519=WordField.canonicalRows actualModulus 1519 (.bxor 1512 1518) := by core033_kernel_decide
theorem stats1519 : actualRows1519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1519=7428 := by core033_kernel_decide
theorem rows1520 : actualRows1520=WordField.canonicalRows actualModulus 1520 (.bnot 1288) := by core033_kernel_decide
theorem stats1520 : actualRows1520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1520=6276 := by core033_kernel_decide
theorem rows1521 : actualRows1521=WordField.canonicalRows actualModulus 1521 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1521 : actualRows1521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1521=2892 := by core033_kernel_decide
theorem rows1522 : actualRows1522=WordField.canonicalRows actualModulus 1522 (.badd 1520 1521) := by core033_kernel_decide
theorem stats1522 : actualRows1522.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1522=5388 := by core033_kernel_decide
theorem rows1523 : actualRows1523=WordField.canonicalRows actualModulus 1523 (.band 1522 993) := by core033_kernel_decide
theorem stats1523 : actualRows1523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1523=5124 := by core033_kernel_decide
theorem rows1524 : actualRows1524=WordField.canonicalRows actualModulus 1524 (.bnot 1288) := by core033_kernel_decide
theorem stats1524 : actualRows1524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1524=6276 := by core033_kernel_decide
theorem rows1525 : actualRows1525=WordField.canonicalRows actualModulus 1525 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1525 : actualRows1525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1525=2892 := by core033_kernel_decide
def partRows21 : List R1CS.Row := actualRows1462++actualRows1463++actualRows1464++actualRows1465++actualRows1466++actualRows1467++actualRows1468++actualRows1469++actualRows1470++actualRows1471++actualRows1472++actualRows1473++actualRows1474++actualRows1475++actualRows1476++actualRows1477++actualRows1478++actualRows1479++actualRows1480++actualRows1481++actualRows1482++actualRows1483++actualRows1484++actualRows1485++actualRows1486++actualRows1487++actualRows1488++actualRows1489++actualRows1490++actualRows1491++actualRows1492++actualRows1493++actualRows1494++actualRows1495++actualRows1496++actualRows1497++actualRows1498++actualRows1499++actualRows1500++actualRows1501++actualRows1502++actualRows1503++actualRows1504++actualRows1505++actualRows1506++actualRows1507++actualRows1508++actualRows1509++actualRows1510++actualRows1511++actualRows1512++actualRows1513++actualRows1514++actualRows1515++actualRows1516++actualRows1517++actualRows1518++actualRows1519++actualRows1520++actualRows1521++actualRows1522++actualRows1523++actualRows1524++actualRows1525
def partOps21 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.band 1461 1462,.bxor 1457 1463,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1465 1466,.band 1467 923,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1469 1470,.bnot 1471,.literal (BitVec.ofNat 32 0),.band 1472 1473,.bxor 1468 1474,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1476 1477,.band 1478 943,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1480 1481,.bnot 1482,.literal (BitVec.ofNat 32 0),.band 1483 1484,.bxor 1479 1485,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1487 1488,.band 1489 963,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1491 1492,.bnot 1493,.literal (BitVec.ofNat 32 0),.band 1494 1495,.bxor 1490 1496,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1498 1499,.band 1500 973,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1502 1503,.bnot 1504,.literal (BitVec.ofNat 32 0),.band 1505 1506,.bxor 1501 1507,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1509 1510,.band 1511 983,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1513 1514,.bnot 1515,.literal (BitVec.ofNat 32 0),.band 1516 1517,.bxor 1512 1518,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1520 1521,.band 1522 993,.bnot 1288,.literal (BitVec.ofNat 32 1)]
theorem partExact21 : partRows21=WordField.rows actualModulus 1462 partOps21 := by
  simp only [partRows21,partOps21,WordField.rows,rows1462,rows1463,rows1464,rows1465,rows1466,rows1467,rows1468,rows1469,rows1470,rows1471,rows1472,rows1473,rows1474,rows1475,rows1476,rows1477,rows1478,rows1479,rows1480,rows1481,rows1482,rows1483,rows1484,rows1485,rows1486,rows1487,rows1488,rows1489,rows1490,rows1491,rows1492,rows1493,rows1494,rows1495,rows1496,rows1497,rows1498,rows1499,rows1500,rows1501,rows1502,rows1503,rows1504,rows1505,rows1506,rows1507,rows1508,rows1509,rows1510,rows1511,rows1512,rows1513,rows1514,rows1515,rows1516,rows1517,rows1518,rows1519,rows1520,rows1521,rows1522,rows1523,rows1524,rows1525,List.append_assoc,List.append_nil]
theorem partLength21 : partOps21.length=64 := by decide
theorem partStats21 : partRows21.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows21=323640 := by
  simp only [partRows21,List.length_append,MatrixRowBlocks.rows_weight_append,stats1462.1,stats1462.2,stats1463.1,stats1463.2,stats1464.1,stats1464.2,stats1465.1,stats1465.2,stats1466.1,stats1466.2,stats1467.1,stats1467.2,stats1468.1,stats1468.2,stats1469.1,stats1469.2,stats1470.1,stats1470.2,stats1471.1,stats1471.2,stats1472.1,stats1472.2,stats1473.1,stats1473.2,stats1474.1,stats1474.2,stats1475.1,stats1475.2,stats1476.1,stats1476.2,stats1477.1,stats1477.2,stats1478.1,stats1478.2,stats1479.1,stats1479.2,stats1480.1,stats1480.2,stats1481.1,stats1481.2,stats1482.1,stats1482.2,stats1483.1,stats1483.2,stats1484.1,stats1484.2,stats1485.1,stats1485.2,stats1486.1,stats1486.2,stats1487.1,stats1487.2,stats1488.1,stats1488.2,stats1489.1,stats1489.2,stats1490.1,stats1490.2,stats1491.1,stats1491.2,stats1492.1,stats1492.2,stats1493.1,stats1493.2,stats1494.1,stats1494.2,stats1495.1,stats1495.2,stats1496.1,stats1496.2,stats1497.1,stats1497.2,stats1498.1,stats1498.2,stats1499.1,stats1499.2,stats1500.1,stats1500.2,stats1501.1,stats1501.2,stats1502.1,stats1502.2,stats1503.1,stats1503.2,stats1504.1,stats1504.2,stats1505.1,stats1505.2,stats1506.1,stats1506.2,stats1507.1,stats1507.2,stats1508.1,stats1508.2,stats1509.1,stats1509.2,stats1510.1,stats1510.2,stats1511.1,stats1511.2,stats1512.1,stats1512.2,stats1513.1,stats1513.2,stats1514.1,stats1514.2,stats1515.1,stats1515.2,stats1516.1,stats1516.2,stats1517.1,stats1517.2,stats1518.1,stats1518.2,stats1519.1,stats1519.2,stats1520.1,stats1520.2,stats1521.1,stats1521.2,stats1522.1,stats1522.2,stats1523.1,stats1523.2,stats1524.1,stats1524.2,stats1525.1,stats1525.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
