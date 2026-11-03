import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData23
import FrameHashControllerInstructionMatrixData24
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1515 : actualRows1515=WordField.canonicalRows actualModulus 1515 (.bxor 1512 1514) := by core033_kernel_decide
theorem stats1515 : actualRows1515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1515=7428 := by core033_kernel_decide
theorem rows1516 : actualRows1516=WordField.canonicalRows actualModulus 1516 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1516 : actualRows1516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1516=2892 := by core033_kernel_decide
theorem rows1517 : actualRows1517=WordField.canonicalRows actualModulus 1517 (.bxor 0 1516) := by core033_kernel_decide
theorem stats1517 : actualRows1517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1517=7428 := by core033_kernel_decide
theorem rows1518 : actualRows1518=WordField.canonicalRows actualModulus 1518 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1518 : actualRows1518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1518=2820 := by core033_kernel_decide
theorem rows1519 : actualRows1519=WordField.canonicalRows actualModulus 1519 (.bnot 1518) := by core033_kernel_decide
theorem stats1519 : actualRows1519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1519=6276 := by core033_kernel_decide
theorem rows1520 : actualRows1520=WordField.canonicalRows actualModulus 1520 (.badd 1517 1519) := by core033_kernel_decide
theorem stats1520 : actualRows1520.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1520=5388 := by core033_kernel_decide
theorem rows1521 : actualRows1521=WordField.canonicalRows actualModulus 1521 (.bnot 1520) := by core033_kernel_decide
theorem stats1521 : actualRows1521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1521=6276 := by core033_kernel_decide
theorem rows1522 : actualRows1522=WordField.canonicalRows actualModulus 1522 (.band 1515 1521) := by core033_kernel_decide
theorem stats1522 : actualRows1522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1522=5124 := by core033_kernel_decide
theorem rows1523 : actualRows1523=WordField.canonicalRows actualModulus 1523 (.bxor 1510 1522) := by core033_kernel_decide
theorem stats1523 : actualRows1523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1523=7428 := by core033_kernel_decide
theorem rows1524 : actualRows1524=WordField.canonicalRows actualModulus 1524 (.shr 1523 31) := by core033_kernel_decide
theorem stats1524 : actualRows1524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1524=2892 := by core033_kernel_decide
theorem rows1525 : actualRows1525=WordField.canonicalRows actualModulus 1525 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1525 : actualRows1525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1525=2892 := by core033_kernel_decide
theorem rows1526 : actualRows1526=WordField.canonicalRows actualModulus 1526 (.bxor 1524 1525) := by core033_kernel_decide
theorem stats1526 : actualRows1526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1526=7428 := by core033_kernel_decide
theorem rows1527 : actualRows1527=WordField.canonicalRows actualModulus 1527 (.bnot 1526) := by core033_kernel_decide
theorem stats1527 : actualRows1527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1527=6276 := by core033_kernel_decide
theorem rows1528 : actualRows1528=WordField.canonicalRows actualModulus 1528 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1528 : actualRows1528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1528=2892 := by core033_kernel_decide
theorem rows1529 : actualRows1529=WordField.canonicalRows actualModulus 1529 (.badd 1527 1528) := by core033_kernel_decide
theorem stats1529 : actualRows1529.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1529=5388 := by core033_kernel_decide
theorem rows1530 : actualRows1530=WordField.canonicalRows actualModulus 1530 (.band 1529 37) := by core033_kernel_decide
theorem stats1530 : actualRows1530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1530=5124 := by core033_kernel_decide
theorem rows1531 : actualRows1531=WordField.canonicalRows actualModulus 1531 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1531 : actualRows1531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1531=2892 := by core033_kernel_decide
theorem rows1532 : actualRows1532=WordField.canonicalRows actualModulus 1532 (.bxor 0 1531) := by core033_kernel_decide
theorem stats1532 : actualRows1532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1532=7428 := by core033_kernel_decide
theorem rows1533 : actualRows1533=WordField.canonicalRows actualModulus 1533 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1533 : actualRows1533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1533=2820 := by core033_kernel_decide
theorem rows1534 : actualRows1534=WordField.canonicalRows actualModulus 1534 (.bnot 1533) := by core033_kernel_decide
theorem stats1534 : actualRows1534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1534=6276 := by core033_kernel_decide
theorem rows1535 : actualRows1535=WordField.canonicalRows actualModulus 1535 (.band 1532 1534) := by core033_kernel_decide
theorem stats1535 : actualRows1535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1535=5124 := by core033_kernel_decide
theorem rows1536 : actualRows1536=WordField.canonicalRows actualModulus 1536 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1536 : actualRows1536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1536=2892 := by core033_kernel_decide
theorem rows1537 : actualRows1537=WordField.canonicalRows actualModulus 1537 (.bxor 0 1536) := by core033_kernel_decide
theorem stats1537 : actualRows1537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1537=7428 := by core033_kernel_decide
theorem rows1538 : actualRows1538=WordField.canonicalRows actualModulus 1538 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1538 : actualRows1538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1538=2820 := by core033_kernel_decide
theorem rows1539 : actualRows1539=WordField.canonicalRows actualModulus 1539 (.bnot 1538) := by core033_kernel_decide
theorem stats1539 : actualRows1539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1539=6276 := by core033_kernel_decide
theorem rows1540 : actualRows1540=WordField.canonicalRows actualModulus 1540 (.bxor 1537 1539) := by core033_kernel_decide
theorem stats1540 : actualRows1540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1540=7428 := by core033_kernel_decide
theorem rows1541 : actualRows1541=WordField.canonicalRows actualModulus 1541 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1541 : actualRows1541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1541=2892 := by core033_kernel_decide
theorem rows1542 : actualRows1542=WordField.canonicalRows actualModulus 1542 (.bxor 0 1541) := by core033_kernel_decide
theorem stats1542 : actualRows1542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1542=7428 := by core033_kernel_decide
theorem rows1543 : actualRows1543=WordField.canonicalRows actualModulus 1543 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1543 : actualRows1543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1543=2820 := by core033_kernel_decide
theorem rows1544 : actualRows1544=WordField.canonicalRows actualModulus 1544 (.bnot 1543) := by core033_kernel_decide
theorem stats1544 : actualRows1544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1544=6276 := by core033_kernel_decide
theorem rows1545 : actualRows1545=WordField.canonicalRows actualModulus 1545 (.badd 1542 1544) := by core033_kernel_decide
theorem stats1545 : actualRows1545.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1545=5388 := by core033_kernel_decide
theorem rows1546 : actualRows1546=WordField.canonicalRows actualModulus 1546 (.bnot 1545) := by core033_kernel_decide
theorem stats1546 : actualRows1546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1546=6276 := by core033_kernel_decide
theorem rows1547 : actualRows1547=WordField.canonicalRows actualModulus 1547 (.band 1540 1546) := by core033_kernel_decide
theorem stats1547 : actualRows1547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1547=5124 := by core033_kernel_decide
theorem rows1548 : actualRows1548=WordField.canonicalRows actualModulus 1548 (.bxor 1535 1547) := by core033_kernel_decide
theorem stats1548 : actualRows1548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1548=7428 := by core033_kernel_decide
theorem rows1549 : actualRows1549=WordField.canonicalRows actualModulus 1549 (.shr 1548 31) := by core033_kernel_decide
theorem stats1549 : actualRows1549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1549=2892 := by core033_kernel_decide
theorem rows1550 : actualRows1550=WordField.canonicalRows actualModulus 1550 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1550 : actualRows1550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1550=2892 := by core033_kernel_decide
theorem rows1551 : actualRows1551=WordField.canonicalRows actualModulus 1551 (.bxor 1549 1550) := by core033_kernel_decide
theorem stats1551 : actualRows1551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1551=7428 := by core033_kernel_decide
theorem rows1552 : actualRows1552=WordField.canonicalRows actualModulus 1552 (.bnot 1551) := by core033_kernel_decide
theorem stats1552 : actualRows1552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1552=6276 := by core033_kernel_decide
theorem rows1553 : actualRows1553=WordField.canonicalRows actualModulus 1553 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1553 : actualRows1553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1553=2892 := by core033_kernel_decide
theorem rows1554 : actualRows1554=WordField.canonicalRows actualModulus 1554 (.badd 1552 1553) := by core033_kernel_decide
theorem stats1554 : actualRows1554.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1554=5388 := by core033_kernel_decide
theorem rows1555 : actualRows1555=WordField.canonicalRows actualModulus 1555 (.bnot 1554) := by core033_kernel_decide
theorem stats1555 : actualRows1555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1555=6276 := by core033_kernel_decide
theorem rows1556 : actualRows1556=WordField.canonicalRows actualModulus 1556 (.literal (BitVec.ofNat 32 1013904242)) := by core033_kernel_decide
theorem stats1556 : actualRows1556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1556=4188 := by core033_kernel_decide
theorem rows1557 : actualRows1557=WordField.canonicalRows actualModulus 1557 (.band 1555 1556) := by core033_kernel_decide
theorem stats1557 : actualRows1557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1557=5124 := by core033_kernel_decide
theorem rows1558 : actualRows1558=WordField.canonicalRows actualModulus 1558 (.bxor 1530 1557) := by core033_kernel_decide
theorem stats1558 : actualRows1558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1558=7428 := by core033_kernel_decide
theorem rows1559 : actualRows1559=WordField.canonicalRows actualModulus 1559 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1559 : actualRows1559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1559=2892 := by core033_kernel_decide
theorem rows1560 : actualRows1560=WordField.canonicalRows actualModulus 1560 (.bxor 0 1559) := by core033_kernel_decide
theorem stats1560 : actualRows1560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1560=7428 := by core033_kernel_decide
theorem rows1561 : actualRows1561=WordField.canonicalRows actualModulus 1561 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1561 : actualRows1561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1561=2820 := by core033_kernel_decide
theorem rows1562 : actualRows1562=WordField.canonicalRows actualModulus 1562 (.bnot 1561) := by core033_kernel_decide
theorem stats1562 : actualRows1562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1562=6276 := by core033_kernel_decide
theorem rows1563 : actualRows1563=WordField.canonicalRows actualModulus 1563 (.band 1560 1562) := by core033_kernel_decide
theorem stats1563 : actualRows1563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1563=5124 := by core033_kernel_decide
theorem rows1564 : actualRows1564=WordField.canonicalRows actualModulus 1564 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1564 : actualRows1564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1564=2892 := by core033_kernel_decide
theorem rows1565 : actualRows1565=WordField.canonicalRows actualModulus 1565 (.bxor 0 1564) := by core033_kernel_decide
theorem stats1565 : actualRows1565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1565=7428 := by core033_kernel_decide
theorem rows1566 : actualRows1566=WordField.canonicalRows actualModulus 1566 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1566 : actualRows1566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1566=2820 := by core033_kernel_decide
theorem rows1567 : actualRows1567=WordField.canonicalRows actualModulus 1567 (.bnot 1566) := by core033_kernel_decide
theorem stats1567 : actualRows1567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1567=6276 := by core033_kernel_decide
theorem rows1568 : actualRows1568=WordField.canonicalRows actualModulus 1568 (.bxor 1565 1567) := by core033_kernel_decide
theorem stats1568 : actualRows1568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1568=7428 := by core033_kernel_decide
theorem rows1569 : actualRows1569=WordField.canonicalRows actualModulus 1569 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1569 : actualRows1569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1569=2892 := by core033_kernel_decide
theorem rows1570 : actualRows1570=WordField.canonicalRows actualModulus 1570 (.bxor 0 1569) := by core033_kernel_decide
theorem stats1570 : actualRows1570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1570=7428 := by core033_kernel_decide
theorem rows1571 : actualRows1571=WordField.canonicalRows actualModulus 1571 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1571 : actualRows1571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1571=2820 := by core033_kernel_decide
theorem rows1572 : actualRows1572=WordField.canonicalRows actualModulus 1572 (.bnot 1571) := by core033_kernel_decide
theorem stats1572 : actualRows1572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1572=6276 := by core033_kernel_decide
theorem rows1573 : actualRows1573=WordField.canonicalRows actualModulus 1573 (.badd 1570 1572) := by core033_kernel_decide
theorem stats1573 : actualRows1573.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1573=5388 := by core033_kernel_decide
theorem rows1574 : actualRows1574=WordField.canonicalRows actualModulus 1574 (.bnot 1573) := by core033_kernel_decide
theorem stats1574 : actualRows1574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1574=6276 := by core033_kernel_decide
theorem rows1575 : actualRows1575=WordField.canonicalRows actualModulus 1575 (.band 1568 1574) := by core033_kernel_decide
theorem stats1575 : actualRows1575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1575=5124 := by core033_kernel_decide
theorem rows1576 : actualRows1576=WordField.canonicalRows actualModulus 1576 (.bxor 1563 1575) := by core033_kernel_decide
theorem stats1576 : actualRows1576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1576=7428 := by core033_kernel_decide
theorem rows1577 : actualRows1577=WordField.canonicalRows actualModulus 1577 (.shr 1576 31) := by core033_kernel_decide
theorem stats1577 : actualRows1577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1577=2892 := by core033_kernel_decide
theorem rows1578 : actualRows1578=WordField.canonicalRows actualModulus 1578 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1578 : actualRows1578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1578=2892 := by core033_kernel_decide
def partRows23 : List R1CS.Row := actualRows1515++actualRows1516++actualRows1517++actualRows1518++actualRows1519++actualRows1520++actualRows1521++actualRows1522++actualRows1523++actualRows1524++actualRows1525++actualRows1526++actualRows1527++actualRows1528++actualRows1529++actualRows1530++actualRows1531++actualRows1532++actualRows1533++actualRows1534++actualRows1535++actualRows1536++actualRows1537++actualRows1538++actualRows1539++actualRows1540++actualRows1541++actualRows1542++actualRows1543++actualRows1544++actualRows1545++actualRows1546++actualRows1547++actualRows1548++actualRows1549++actualRows1550++actualRows1551++actualRows1552++actualRows1553++actualRows1554++actualRows1555++actualRows1556++actualRows1557++actualRows1558++actualRows1559++actualRows1560++actualRows1561++actualRows1562++actualRows1563++actualRows1564++actualRows1565++actualRows1566++actualRows1567++actualRows1568++actualRows1569++actualRows1570++actualRows1571++actualRows1572++actualRows1573++actualRows1574++actualRows1575++actualRows1576++actualRows1577++actualRows1578
def partOps23 : List WordIR.Op := [.bxor 1512 1514,.literal (BitVec.ofNat 32 2),.bxor 0 1516,.literal (BitVec.ofNat 32 0),.bnot 1518,.badd 1517 1519,.bnot 1520,.band 1515 1521,.bxor 1510 1522,.shr 1523 31,.literal (BitVec.ofNat 32 1),.bxor 1524 1525,.bnot 1526,.literal (BitVec.ofNat 32 1),.badd 1527 1528,.band 1529 37,.literal (BitVec.ofNat 32 2),.bxor 0 1531,.literal (BitVec.ofNat 32 0),.bnot 1533,.band 1532 1534,.literal (BitVec.ofNat 32 2),.bxor 0 1536,.literal (BitVec.ofNat 32 0),.bnot 1538,.bxor 1537 1539,.literal (BitVec.ofNat 32 2),.bxor 0 1541,.literal (BitVec.ofNat 32 0),.bnot 1543,.badd 1542 1544,.bnot 1545,.band 1540 1546,.bxor 1535 1547,.shr 1548 31,.literal (BitVec.ofNat 32 1),.bxor 1549 1550,.bnot 1551,.literal (BitVec.ofNat 32 1),.badd 1552 1553,.bnot 1554,.literal (BitVec.ofNat 32 1013904242),.band 1555 1556,.bxor 1530 1557,.literal (BitVec.ofNat 32 2),.bxor 0 1559,.literal (BitVec.ofNat 32 0),.bnot 1561,.band 1560 1562,.literal (BitVec.ofNat 32 2),.bxor 0 1564,.literal (BitVec.ofNat 32 0),.bnot 1566,.bxor 1565 1567,.literal (BitVec.ofNat 32 2),.bxor 0 1569,.literal (BitVec.ofNat 32 0),.bnot 1571,.badd 1570 1572,.bnot 1573,.band 1568 1574,.bxor 1563 1575,.shr 1576 31,.literal (BitVec.ofNat 32 1)]
theorem partExact23 : partRows23=WordField.rows actualModulus 1515 partOps23 := by
  simp only [partRows23,partOps23,WordField.rows,rows1515,rows1516,rows1517,rows1518,rows1519,rows1520,rows1521,rows1522,rows1523,rows1524,rows1525,rows1526,rows1527,rows1528,rows1529,rows1530,rows1531,rows1532,rows1533,rows1534,rows1535,rows1536,rows1537,rows1538,rows1539,rows1540,rows1541,rows1542,rows1543,rows1544,rows1545,rows1546,rows1547,rows1548,rows1549,rows1550,rows1551,rows1552,rows1553,rows1554,rows1555,rows1556,rows1557,rows1558,rows1559,rows1560,rows1561,rows1562,rows1563,rows1564,rows1565,rows1566,rows1567,rows1568,rows1569,rows1570,rows1571,rows1572,rows1573,rows1574,rows1575,rows1576,rows1577,rows1578,List.append_assoc,List.append_nil]
theorem partLength23 : partOps23.length=64 := by decide
theorem partStats23 : partRows23.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows23=330552 := by
  simp only [partRows23,List.length_append,MatrixRowBlocks.rows_weight_append,stats1515.1,stats1515.2,stats1516.1,stats1516.2,stats1517.1,stats1517.2,stats1518.1,stats1518.2,stats1519.1,stats1519.2,stats1520.1,stats1520.2,stats1521.1,stats1521.2,stats1522.1,stats1522.2,stats1523.1,stats1523.2,stats1524.1,stats1524.2,stats1525.1,stats1525.2,stats1526.1,stats1526.2,stats1527.1,stats1527.2,stats1528.1,stats1528.2,stats1529.1,stats1529.2,stats1530.1,stats1530.2,stats1531.1,stats1531.2,stats1532.1,stats1532.2,stats1533.1,stats1533.2,stats1534.1,stats1534.2,stats1535.1,stats1535.2,stats1536.1,stats1536.2,stats1537.1,stats1537.2,stats1538.1,stats1538.2,stats1539.1,stats1539.2,stats1540.1,stats1540.2,stats1541.1,stats1541.2,stats1542.1,stats1542.2,stats1543.1,stats1543.2,stats1544.1,stats1544.2,stats1545.1,stats1545.2,stats1546.1,stats1546.2,stats1547.1,stats1547.2,stats1548.1,stats1548.2,stats1549.1,stats1549.2,stats1550.1,stats1550.2,stats1551.1,stats1551.2,stats1552.1,stats1552.2,stats1553.1,stats1553.2,stats1554.1,stats1554.2,stats1555.1,stats1555.2,stats1556.1,stats1556.2,stats1557.1,stats1557.2,stats1558.1,stats1558.2,stats1559.1,stats1559.2,stats1560.1,stats1560.2,stats1561.1,stats1561.2,stats1562.1,stats1562.2,stats1563.1,stats1563.2,stats1564.1,stats1564.2,stats1565.1,stats1565.2,stats1566.1,stats1566.2,stats1567.1,stats1567.2,stats1568.1,stats1568.2,stats1569.1,stats1569.2,stats1570.1,stats1570.2,stats1571.1,stats1571.2,stats1572.1,stats1572.2,stats1573.1,stats1573.2,stats1574.1,stats1574.2,stats1575.1,stats1575.2,stats1576.1,stats1576.2,stats1577.1,stats1577.2,stats1578.1,stats1578.2]
  decide
end FrameHashControllerCheckedRows
