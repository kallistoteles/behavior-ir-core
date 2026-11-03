import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData22
import FrameHashControllerInstructionMatrixData23
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1451 : actualRows1451=WordField.canonicalRows actualModulus 1451 (.band 1449 1450) := by core033_kernel_decide
theorem stats1451 : actualRows1451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1451=5124 := by core033_kernel_decide
theorem rows1452 : actualRows1452=WordField.canonicalRows actualModulus 1452 (.bxor 1424 1451) := by core033_kernel_decide
theorem stats1452 : actualRows1452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1452=7428 := by core033_kernel_decide
theorem rows1453 : actualRows1453=WordField.canonicalRows actualModulus 1453 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1453 : actualRows1453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1453=2892 := by core033_kernel_decide
theorem rows1454 : actualRows1454=WordField.canonicalRows actualModulus 1454 (.bxor 0 1453) := by core033_kernel_decide
theorem stats1454 : actualRows1454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1454=7428 := by core033_kernel_decide
theorem rows1455 : actualRows1455=WordField.canonicalRows actualModulus 1455 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1455 : actualRows1455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1455=2820 := by core033_kernel_decide
theorem rows1456 : actualRows1456=WordField.canonicalRows actualModulus 1456 (.bnot 1455) := by core033_kernel_decide
theorem stats1456 : actualRows1456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1456=6276 := by core033_kernel_decide
theorem rows1457 : actualRows1457=WordField.canonicalRows actualModulus 1457 (.band 1454 1456) := by core033_kernel_decide
theorem stats1457 : actualRows1457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1457=5124 := by core033_kernel_decide
theorem rows1458 : actualRows1458=WordField.canonicalRows actualModulus 1458 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1458 : actualRows1458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1458=2892 := by core033_kernel_decide
theorem rows1459 : actualRows1459=WordField.canonicalRows actualModulus 1459 (.bxor 0 1458) := by core033_kernel_decide
theorem stats1459 : actualRows1459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1459=7428 := by core033_kernel_decide
theorem rows1460 : actualRows1460=WordField.canonicalRows actualModulus 1460 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1460 : actualRows1460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1460=2820 := by core033_kernel_decide
theorem rows1461 : actualRows1461=WordField.canonicalRows actualModulus 1461 (.bnot 1460) := by core033_kernel_decide
theorem stats1461 : actualRows1461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1461=6276 := by core033_kernel_decide
theorem rows1462 : actualRows1462=WordField.canonicalRows actualModulus 1462 (.bxor 1459 1461) := by core033_kernel_decide
theorem stats1462 : actualRows1462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1462=7428 := by core033_kernel_decide
theorem rows1463 : actualRows1463=WordField.canonicalRows actualModulus 1463 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1463 : actualRows1463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1463=2892 := by core033_kernel_decide
theorem rows1464 : actualRows1464=WordField.canonicalRows actualModulus 1464 (.bxor 0 1463) := by core033_kernel_decide
theorem stats1464 : actualRows1464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1464=7428 := by core033_kernel_decide
theorem rows1465 : actualRows1465=WordField.canonicalRows actualModulus 1465 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1465 : actualRows1465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1465=2820 := by core033_kernel_decide
theorem rows1466 : actualRows1466=WordField.canonicalRows actualModulus 1466 (.bnot 1465) := by core033_kernel_decide
theorem stats1466 : actualRows1466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1466=6276 := by core033_kernel_decide
theorem rows1467 : actualRows1467=WordField.canonicalRows actualModulus 1467 (.badd 1464 1466) := by core033_kernel_decide
theorem stats1467 : actualRows1467.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1467=5388 := by core033_kernel_decide
theorem rows1468 : actualRows1468=WordField.canonicalRows actualModulus 1468 (.bnot 1467) := by core033_kernel_decide
theorem stats1468 : actualRows1468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1468=6276 := by core033_kernel_decide
theorem rows1469 : actualRows1469=WordField.canonicalRows actualModulus 1469 (.band 1462 1468) := by core033_kernel_decide
theorem stats1469 : actualRows1469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1469=5124 := by core033_kernel_decide
theorem rows1470 : actualRows1470=WordField.canonicalRows actualModulus 1470 (.bxor 1457 1469) := by core033_kernel_decide
theorem stats1470 : actualRows1470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1470=7428 := by core033_kernel_decide
theorem rows1471 : actualRows1471=WordField.canonicalRows actualModulus 1471 (.shr 1470 31) := by core033_kernel_decide
theorem stats1471 : actualRows1471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1471=2892 := by core033_kernel_decide
theorem rows1472 : actualRows1472=WordField.canonicalRows actualModulus 1472 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1472 : actualRows1472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1472=2892 := by core033_kernel_decide
theorem rows1473 : actualRows1473=WordField.canonicalRows actualModulus 1473 (.bxor 1471 1472) := by core033_kernel_decide
theorem stats1473 : actualRows1473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1473=7428 := by core033_kernel_decide
theorem rows1474 : actualRows1474=WordField.canonicalRows actualModulus 1474 (.bnot 1473) := by core033_kernel_decide
theorem stats1474 : actualRows1474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1474=6276 := by core033_kernel_decide
theorem rows1475 : actualRows1475=WordField.canonicalRows actualModulus 1475 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1475 : actualRows1475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1475=2892 := by core033_kernel_decide
theorem rows1476 : actualRows1476=WordField.canonicalRows actualModulus 1476 (.badd 1474 1475) := by core033_kernel_decide
theorem stats1476 : actualRows1476.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1476=5388 := by core033_kernel_decide
theorem rows1477 : actualRows1477=WordField.canonicalRows actualModulus 1477 (.band 1476 36) := by core033_kernel_decide
theorem stats1477 : actualRows1477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1477=5124 := by core033_kernel_decide
theorem rows1478 : actualRows1478=WordField.canonicalRows actualModulus 1478 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1478 : actualRows1478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1478=2892 := by core033_kernel_decide
theorem rows1479 : actualRows1479=WordField.canonicalRows actualModulus 1479 (.bxor 0 1478) := by core033_kernel_decide
theorem stats1479 : actualRows1479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1479=7428 := by core033_kernel_decide
theorem rows1480 : actualRows1480=WordField.canonicalRows actualModulus 1480 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1480 : actualRows1480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1480=2820 := by core033_kernel_decide
theorem rows1481 : actualRows1481=WordField.canonicalRows actualModulus 1481 (.bnot 1480) := by core033_kernel_decide
theorem stats1481 : actualRows1481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1481=6276 := by core033_kernel_decide
theorem rows1482 : actualRows1482=WordField.canonicalRows actualModulus 1482 (.band 1479 1481) := by core033_kernel_decide
theorem stats1482 : actualRows1482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1482=5124 := by core033_kernel_decide
theorem rows1483 : actualRows1483=WordField.canonicalRows actualModulus 1483 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1483 : actualRows1483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1483=2892 := by core033_kernel_decide
theorem rows1484 : actualRows1484=WordField.canonicalRows actualModulus 1484 (.bxor 0 1483) := by core033_kernel_decide
theorem stats1484 : actualRows1484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1484=7428 := by core033_kernel_decide
theorem rows1485 : actualRows1485=WordField.canonicalRows actualModulus 1485 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1485 : actualRows1485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1485=2820 := by core033_kernel_decide
theorem rows1486 : actualRows1486=WordField.canonicalRows actualModulus 1486 (.bnot 1485) := by core033_kernel_decide
theorem stats1486 : actualRows1486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1486=6276 := by core033_kernel_decide
theorem rows1487 : actualRows1487=WordField.canonicalRows actualModulus 1487 (.bxor 1484 1486) := by core033_kernel_decide
theorem stats1487 : actualRows1487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1487=7428 := by core033_kernel_decide
theorem rows1488 : actualRows1488=WordField.canonicalRows actualModulus 1488 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1488 : actualRows1488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1488=2892 := by core033_kernel_decide
theorem rows1489 : actualRows1489=WordField.canonicalRows actualModulus 1489 (.bxor 0 1488) := by core033_kernel_decide
theorem stats1489 : actualRows1489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1489=7428 := by core033_kernel_decide
theorem rows1490 : actualRows1490=WordField.canonicalRows actualModulus 1490 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1490 : actualRows1490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1490=2820 := by core033_kernel_decide
theorem rows1491 : actualRows1491=WordField.canonicalRows actualModulus 1491 (.bnot 1490) := by core033_kernel_decide
theorem stats1491 : actualRows1491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1491=6276 := by core033_kernel_decide
theorem rows1492 : actualRows1492=WordField.canonicalRows actualModulus 1492 (.badd 1489 1491) := by core033_kernel_decide
theorem stats1492 : actualRows1492.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1492=5388 := by core033_kernel_decide
theorem rows1493 : actualRows1493=WordField.canonicalRows actualModulus 1493 (.bnot 1492) := by core033_kernel_decide
theorem stats1493 : actualRows1493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1493=6276 := by core033_kernel_decide
theorem rows1494 : actualRows1494=WordField.canonicalRows actualModulus 1494 (.band 1487 1493) := by core033_kernel_decide
theorem stats1494 : actualRows1494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1494=5124 := by core033_kernel_decide
theorem rows1495 : actualRows1495=WordField.canonicalRows actualModulus 1495 (.bxor 1482 1494) := by core033_kernel_decide
theorem stats1495 : actualRows1495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1495=7428 := by core033_kernel_decide
theorem rows1496 : actualRows1496=WordField.canonicalRows actualModulus 1496 (.shr 1495 31) := by core033_kernel_decide
theorem stats1496 : actualRows1496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1496=2892 := by core033_kernel_decide
theorem rows1497 : actualRows1497=WordField.canonicalRows actualModulus 1497 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1497 : actualRows1497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1497=2892 := by core033_kernel_decide
theorem rows1498 : actualRows1498=WordField.canonicalRows actualModulus 1498 (.bxor 1496 1497) := by core033_kernel_decide
theorem stats1498 : actualRows1498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1498=7428 := by core033_kernel_decide
theorem rows1499 : actualRows1499=WordField.canonicalRows actualModulus 1499 (.bnot 1498) := by core033_kernel_decide
theorem stats1499 : actualRows1499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1499=6276 := by core033_kernel_decide
theorem rows1500 : actualRows1500=WordField.canonicalRows actualModulus 1500 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1500 : actualRows1500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1500=2892 := by core033_kernel_decide
theorem rows1501 : actualRows1501=WordField.canonicalRows actualModulus 1501 (.badd 1499 1500) := by core033_kernel_decide
theorem stats1501 : actualRows1501.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1501=5388 := by core033_kernel_decide
theorem rows1502 : actualRows1502=WordField.canonicalRows actualModulus 1502 (.bnot 1501) := by core033_kernel_decide
theorem stats1502 : actualRows1502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1502=6276 := by core033_kernel_decide
theorem rows1503 : actualRows1503=WordField.canonicalRows actualModulus 1503 (.literal (BitVec.ofNat 32 3144134277)) := by core033_kernel_decide
theorem stats1503 : actualRows1503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1503=4188 := by core033_kernel_decide
theorem rows1504 : actualRows1504=WordField.canonicalRows actualModulus 1504 (.band 1502 1503) := by core033_kernel_decide
theorem stats1504 : actualRows1504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1504=5124 := by core033_kernel_decide
theorem rows1505 : actualRows1505=WordField.canonicalRows actualModulus 1505 (.bxor 1477 1504) := by core033_kernel_decide
theorem stats1505 : actualRows1505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1505=7428 := by core033_kernel_decide
theorem rows1506 : actualRows1506=WordField.canonicalRows actualModulus 1506 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1506 : actualRows1506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1506=2892 := by core033_kernel_decide
theorem rows1507 : actualRows1507=WordField.canonicalRows actualModulus 1507 (.bxor 0 1506) := by core033_kernel_decide
theorem stats1507 : actualRows1507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1507=7428 := by core033_kernel_decide
theorem rows1508 : actualRows1508=WordField.canonicalRows actualModulus 1508 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1508 : actualRows1508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1508=2820 := by core033_kernel_decide
theorem rows1509 : actualRows1509=WordField.canonicalRows actualModulus 1509 (.bnot 1508) := by core033_kernel_decide
theorem stats1509 : actualRows1509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1509=6276 := by core033_kernel_decide
theorem rows1510 : actualRows1510=WordField.canonicalRows actualModulus 1510 (.band 1507 1509) := by core033_kernel_decide
theorem stats1510 : actualRows1510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1510=5124 := by core033_kernel_decide
theorem rows1511 : actualRows1511=WordField.canonicalRows actualModulus 1511 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1511 : actualRows1511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1511=2892 := by core033_kernel_decide
theorem rows1512 : actualRows1512=WordField.canonicalRows actualModulus 1512 (.bxor 0 1511) := by core033_kernel_decide
theorem stats1512 : actualRows1512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1512=7428 := by core033_kernel_decide
theorem rows1513 : actualRows1513=WordField.canonicalRows actualModulus 1513 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1513 : actualRows1513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1513=2820 := by core033_kernel_decide
theorem rows1514 : actualRows1514=WordField.canonicalRows actualModulus 1514 (.bnot 1513) := by core033_kernel_decide
theorem stats1514 : actualRows1514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1514=6276 := by core033_kernel_decide
def partRows22 : List R1CS.Row := actualRows1451++actualRows1452++actualRows1453++actualRows1454++actualRows1455++actualRows1456++actualRows1457++actualRows1458++actualRows1459++actualRows1460++actualRows1461++actualRows1462++actualRows1463++actualRows1464++actualRows1465++actualRows1466++actualRows1467++actualRows1468++actualRows1469++actualRows1470++actualRows1471++actualRows1472++actualRows1473++actualRows1474++actualRows1475++actualRows1476++actualRows1477++actualRows1478++actualRows1479++actualRows1480++actualRows1481++actualRows1482++actualRows1483++actualRows1484++actualRows1485++actualRows1486++actualRows1487++actualRows1488++actualRows1489++actualRows1490++actualRows1491++actualRows1492++actualRows1493++actualRows1494++actualRows1495++actualRows1496++actualRows1497++actualRows1498++actualRows1499++actualRows1500++actualRows1501++actualRows1502++actualRows1503++actualRows1504++actualRows1505++actualRows1506++actualRows1507++actualRows1508++actualRows1509++actualRows1510++actualRows1511++actualRows1512++actualRows1513++actualRows1514
def partOps22 : List WordIR.Op := [.band 1449 1450,.bxor 1424 1451,.literal (BitVec.ofNat 32 2),.bxor 0 1453,.literal (BitVec.ofNat 32 0),.bnot 1455,.band 1454 1456,.literal (BitVec.ofNat 32 2),.bxor 0 1458,.literal (BitVec.ofNat 32 0),.bnot 1460,.bxor 1459 1461,.literal (BitVec.ofNat 32 2),.bxor 0 1463,.literal (BitVec.ofNat 32 0),.bnot 1465,.badd 1464 1466,.bnot 1467,.band 1462 1468,.bxor 1457 1469,.shr 1470 31,.literal (BitVec.ofNat 32 1),.bxor 1471 1472,.bnot 1473,.literal (BitVec.ofNat 32 1),.badd 1474 1475,.band 1476 36,.literal (BitVec.ofNat 32 2),.bxor 0 1478,.literal (BitVec.ofNat 32 0),.bnot 1480,.band 1479 1481,.literal (BitVec.ofNat 32 2),.bxor 0 1483,.literal (BitVec.ofNat 32 0),.bnot 1485,.bxor 1484 1486,.literal (BitVec.ofNat 32 2),.bxor 0 1488,.literal (BitVec.ofNat 32 0),.bnot 1490,.badd 1489 1491,.bnot 1492,.band 1487 1493,.bxor 1482 1494,.shr 1495 31,.literal (BitVec.ofNat 32 1),.bxor 1496 1497,.bnot 1498,.literal (BitVec.ofNat 32 1),.badd 1499 1500,.bnot 1501,.literal (BitVec.ofNat 32 3144134277),.band 1502 1503,.bxor 1477 1504,.literal (BitVec.ofNat 32 2),.bxor 0 1506,.literal (BitVec.ofNat 32 0),.bnot 1508,.band 1507 1509,.literal (BitVec.ofNat 32 2),.bxor 0 1511,.literal (BitVec.ofNat 32 0),.bnot 1513]
theorem partExact22 : partRows22=WordField.rows actualModulus 1451 partOps22 := by
  simp only [partRows22,partOps22,WordField.rows,rows1451,rows1452,rows1453,rows1454,rows1455,rows1456,rows1457,rows1458,rows1459,rows1460,rows1461,rows1462,rows1463,rows1464,rows1465,rows1466,rows1467,rows1468,rows1469,rows1470,rows1471,rows1472,rows1473,rows1474,rows1475,rows1476,rows1477,rows1478,rows1479,rows1480,rows1481,rows1482,rows1483,rows1484,rows1485,rows1486,rows1487,rows1488,rows1489,rows1490,rows1491,rows1492,rows1493,rows1494,rows1495,rows1496,rows1497,rows1498,rows1499,rows1500,rows1501,rows1502,rows1503,rows1504,rows1505,rows1506,rows1507,rows1508,rows1509,rows1510,rows1511,rows1512,rows1513,rows1514,List.append_assoc,List.append_nil]
theorem partLength22 : partOps22.length=64 := by decide
theorem partStats22 : partRows22.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows22=330216 := by
  simp only [partRows22,List.length_append,MatrixRowBlocks.rows_weight_append,stats1451.1,stats1451.2,stats1452.1,stats1452.2,stats1453.1,stats1453.2,stats1454.1,stats1454.2,stats1455.1,stats1455.2,stats1456.1,stats1456.2,stats1457.1,stats1457.2,stats1458.1,stats1458.2,stats1459.1,stats1459.2,stats1460.1,stats1460.2,stats1461.1,stats1461.2,stats1462.1,stats1462.2,stats1463.1,stats1463.2,stats1464.1,stats1464.2,stats1465.1,stats1465.2,stats1466.1,stats1466.2,stats1467.1,stats1467.2,stats1468.1,stats1468.2,stats1469.1,stats1469.2,stats1470.1,stats1470.2,stats1471.1,stats1471.2,stats1472.1,stats1472.2,stats1473.1,stats1473.2,stats1474.1,stats1474.2,stats1475.1,stats1475.2,stats1476.1,stats1476.2,stats1477.1,stats1477.2,stats1478.1,stats1478.2,stats1479.1,stats1479.2,stats1480.1,stats1480.2,stats1481.1,stats1481.2,stats1482.1,stats1482.2,stats1483.1,stats1483.2,stats1484.1,stats1484.2,stats1485.1,stats1485.2,stats1486.1,stats1486.2,stats1487.1,stats1487.2,stats1488.1,stats1488.2,stats1489.1,stats1489.2,stats1490.1,stats1490.2,stats1491.1,stats1491.2,stats1492.1,stats1492.2,stats1493.1,stats1493.2,stats1494.1,stats1494.2,stats1495.1,stats1495.2,stats1496.1,stats1496.2,stats1497.1,stats1497.2,stats1498.1,stats1498.2,stats1499.1,stats1499.2,stats1500.1,stats1500.2,stats1501.1,stats1501.2,stats1502.1,stats1502.2,stats1503.1,stats1503.2,stats1504.1,stats1504.2,stats1505.1,stats1505.2,stats1506.1,stats1506.2,stats1507.1,stats1507.2,stats1508.1,stats1508.2,stats1509.1,stats1509.2,stats1510.1,stats1510.2,stats1511.1,stats1511.2,stats1512.1,stats1512.2,stats1513.1,stats1513.2,stats1514.1,stats1514.2]
  decide
end FrameHashControllerCheckedRows
