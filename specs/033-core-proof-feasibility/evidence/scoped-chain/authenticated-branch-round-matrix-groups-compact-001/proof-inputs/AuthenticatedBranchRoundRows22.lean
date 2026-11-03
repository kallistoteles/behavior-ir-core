import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData23
import AuthenticatedBranchRoundInstructionMatrixData24
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1526 : actualRows1526=WordField.canonicalRows actualModulus 1526 (.badd 1524 1525) := by core033_kernel_decide
theorem stats1526 : actualRows1526.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1526=5388 := by core033_kernel_decide
theorem rows1527 : actualRows1527=WordField.canonicalRows actualModulus 1527 (.bnot 1526) := by core033_kernel_decide
theorem stats1527 : actualRows1527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1527=6276 := by core033_kernel_decide
theorem rows1528 : actualRows1528=WordField.canonicalRows actualModulus 1528 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1528 : actualRows1528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1528=2820 := by core033_kernel_decide
theorem rows1529 : actualRows1529=WordField.canonicalRows actualModulus 1529 (.band 1527 1528) := by core033_kernel_decide
theorem stats1529 : actualRows1529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1529=5124 := by core033_kernel_decide
theorem rows1530 : actualRows1530=WordField.canonicalRows actualModulus 1530 (.bxor 1523 1529) := by core033_kernel_decide
theorem stats1530 : actualRows1530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1530=7428 := by core033_kernel_decide
theorem rows1531 : actualRows1531=WordField.canonicalRows actualModulus 1531 (.bnot 1288) := by core033_kernel_decide
theorem stats1531 : actualRows1531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1531=6276 := by core033_kernel_decide
theorem rows1532 : actualRows1532=WordField.canonicalRows actualModulus 1532 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1532 : actualRows1532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1532=2892 := by core033_kernel_decide
theorem rows1533 : actualRows1533=WordField.canonicalRows actualModulus 1533 (.badd 1531 1532) := by core033_kernel_decide
theorem stats1533 : actualRows1533.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1533=5388 := by core033_kernel_decide
theorem rows1534 : actualRows1534=WordField.canonicalRows actualModulus 1534 (.band 1533 1003) := by core033_kernel_decide
theorem stats1534 : actualRows1534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1534=5124 := by core033_kernel_decide
theorem rows1535 : actualRows1535=WordField.canonicalRows actualModulus 1535 (.bnot 1288) := by core033_kernel_decide
theorem stats1535 : actualRows1535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1535=6276 := by core033_kernel_decide
theorem rows1536 : actualRows1536=WordField.canonicalRows actualModulus 1536 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1536 : actualRows1536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1536=2892 := by core033_kernel_decide
theorem rows1537 : actualRows1537=WordField.canonicalRows actualModulus 1537 (.badd 1535 1536) := by core033_kernel_decide
theorem stats1537 : actualRows1537.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1537=5388 := by core033_kernel_decide
theorem rows1538 : actualRows1538=WordField.canonicalRows actualModulus 1538 (.bnot 1537) := by core033_kernel_decide
theorem stats1538 : actualRows1538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1538=6276 := by core033_kernel_decide
theorem rows1539 : actualRows1539=WordField.canonicalRows actualModulus 1539 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1539 : actualRows1539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1539=2820 := by core033_kernel_decide
theorem rows1540 : actualRows1540=WordField.canonicalRows actualModulus 1540 (.band 1538 1539) := by core033_kernel_decide
theorem stats1540 : actualRows1540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1540=5124 := by core033_kernel_decide
theorem rows1541 : actualRows1541=WordField.canonicalRows actualModulus 1541 (.bxor 1534 1540) := by core033_kernel_decide
theorem stats1541 : actualRows1541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1541=7428 := by core033_kernel_decide
theorem rows1542 : actualRows1542=WordField.canonicalRows actualModulus 1542 (.bnot 1288) := by core033_kernel_decide
theorem stats1542 : actualRows1542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1542=6276 := by core033_kernel_decide
theorem rows1543 : actualRows1543=WordField.canonicalRows actualModulus 1543 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1543 : actualRows1543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1543=2892 := by core033_kernel_decide
theorem rows1544 : actualRows1544=WordField.canonicalRows actualModulus 1544 (.badd 1542 1543) := by core033_kernel_decide
theorem stats1544 : actualRows1544.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1544=5388 := by core033_kernel_decide
theorem rows1545 : actualRows1545=WordField.canonicalRows actualModulus 1545 (.band 1544 1013) := by core033_kernel_decide
theorem stats1545 : actualRows1545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1545=5124 := by core033_kernel_decide
theorem rows1546 : actualRows1546=WordField.canonicalRows actualModulus 1546 (.bnot 1288) := by core033_kernel_decide
theorem stats1546 : actualRows1546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1546=6276 := by core033_kernel_decide
theorem rows1547 : actualRows1547=WordField.canonicalRows actualModulus 1547 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1547 : actualRows1547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1547=2892 := by core033_kernel_decide
theorem rows1548 : actualRows1548=WordField.canonicalRows actualModulus 1548 (.badd 1546 1547) := by core033_kernel_decide
theorem stats1548 : actualRows1548.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1548=5388 := by core033_kernel_decide
theorem rows1549 : actualRows1549=WordField.canonicalRows actualModulus 1549 (.bnot 1548) := by core033_kernel_decide
theorem stats1549 : actualRows1549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1549=6276 := by core033_kernel_decide
theorem rows1550 : actualRows1550=WordField.canonicalRows actualModulus 1550 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1550 : actualRows1550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1550=2820 := by core033_kernel_decide
theorem rows1551 : actualRows1551=WordField.canonicalRows actualModulus 1551 (.band 1549 1550) := by core033_kernel_decide
theorem stats1551 : actualRows1551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1551=5124 := by core033_kernel_decide
theorem rows1552 : actualRows1552=WordField.canonicalRows actualModulus 1552 (.bxor 1545 1551) := by core033_kernel_decide
theorem stats1552 : actualRows1552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1552=7428 := by core033_kernel_decide
theorem rows1553 : actualRows1553=WordField.canonicalRows actualModulus 1553 (.bnot 1288) := by core033_kernel_decide
theorem stats1553 : actualRows1553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1553=6276 := by core033_kernel_decide
theorem rows1554 : actualRows1554=WordField.canonicalRows actualModulus 1554 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1554 : actualRows1554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1554=2892 := by core033_kernel_decide
theorem rows1555 : actualRows1555=WordField.canonicalRows actualModulus 1555 (.badd 1553 1554) := by core033_kernel_decide
theorem stats1555 : actualRows1555.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1555=5388 := by core033_kernel_decide
theorem rows1556 : actualRows1556=WordField.canonicalRows actualModulus 1556 (.band 1555 1023) := by core033_kernel_decide
theorem stats1556 : actualRows1556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1556=5124 := by core033_kernel_decide
theorem rows1557 : actualRows1557=WordField.canonicalRows actualModulus 1557 (.bnot 1288) := by core033_kernel_decide
theorem stats1557 : actualRows1557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1557=6276 := by core033_kernel_decide
theorem rows1558 : actualRows1558=WordField.canonicalRows actualModulus 1558 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1558 : actualRows1558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1558=2892 := by core033_kernel_decide
theorem rows1559 : actualRows1559=WordField.canonicalRows actualModulus 1559 (.badd 1557 1558) := by core033_kernel_decide
theorem stats1559 : actualRows1559.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1559=5388 := by core033_kernel_decide
theorem rows1560 : actualRows1560=WordField.canonicalRows actualModulus 1560 (.bnot 1559) := by core033_kernel_decide
theorem stats1560 : actualRows1560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1560=6276 := by core033_kernel_decide
theorem rows1561 : actualRows1561=WordField.canonicalRows actualModulus 1561 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1561 : actualRows1561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1561=2820 := by core033_kernel_decide
theorem rows1562 : actualRows1562=WordField.canonicalRows actualModulus 1562 (.band 1560 1561) := by core033_kernel_decide
theorem stats1562 : actualRows1562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1562=5124 := by core033_kernel_decide
theorem rows1563 : actualRows1563=WordField.canonicalRows actualModulus 1563 (.bxor 1556 1562) := by core033_kernel_decide
theorem stats1563 : actualRows1563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1563=7428 := by core033_kernel_decide
theorem rows1564 : actualRows1564=WordField.canonicalRows actualModulus 1564 (.bnot 1288) := by core033_kernel_decide
theorem stats1564 : actualRows1564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1564=6276 := by core033_kernel_decide
theorem rows1565 : actualRows1565=WordField.canonicalRows actualModulus 1565 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1565 : actualRows1565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1565=2892 := by core033_kernel_decide
theorem rows1566 : actualRows1566=WordField.canonicalRows actualModulus 1566 (.badd 1564 1565) := by core033_kernel_decide
theorem stats1566 : actualRows1566.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1566=5388 := by core033_kernel_decide
theorem rows1567 : actualRows1567=WordField.canonicalRows actualModulus 1567 (.band 1566 1033) := by core033_kernel_decide
theorem stats1567 : actualRows1567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1567=5124 := by core033_kernel_decide
theorem rows1568 : actualRows1568=WordField.canonicalRows actualModulus 1568 (.bnot 1288) := by core033_kernel_decide
theorem stats1568 : actualRows1568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1568=6276 := by core033_kernel_decide
theorem rows1569 : actualRows1569=WordField.canonicalRows actualModulus 1569 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1569 : actualRows1569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1569=2892 := by core033_kernel_decide
theorem rows1570 : actualRows1570=WordField.canonicalRows actualModulus 1570 (.badd 1568 1569) := by core033_kernel_decide
theorem stats1570 : actualRows1570.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1570=5388 := by core033_kernel_decide
theorem rows1571 : actualRows1571=WordField.canonicalRows actualModulus 1571 (.bnot 1570) := by core033_kernel_decide
theorem stats1571 : actualRows1571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1571=6276 := by core033_kernel_decide
theorem rows1572 : actualRows1572=WordField.canonicalRows actualModulus 1572 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1572 : actualRows1572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1572=2820 := by core033_kernel_decide
theorem rows1573 : actualRows1573=WordField.canonicalRows actualModulus 1573 (.band 1571 1572) := by core033_kernel_decide
theorem stats1573 : actualRows1573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1573=5124 := by core033_kernel_decide
theorem rows1574 : actualRows1574=WordField.canonicalRows actualModulus 1574 (.bxor 1567 1573) := by core033_kernel_decide
theorem stats1574 : actualRows1574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1574=7428 := by core033_kernel_decide
theorem rows1575 : actualRows1575=WordField.canonicalRows actualModulus 1575 (.bnot 1288) := by core033_kernel_decide
theorem stats1575 : actualRows1575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1575=6276 := by core033_kernel_decide
theorem rows1576 : actualRows1576=WordField.canonicalRows actualModulus 1576 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1576 : actualRows1576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1576=2892 := by core033_kernel_decide
theorem rows1577 : actualRows1577=WordField.canonicalRows actualModulus 1577 (.badd 1575 1576) := by core033_kernel_decide
theorem stats1577 : actualRows1577.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1577=5388 := by core033_kernel_decide
theorem rows1578 : actualRows1578=WordField.canonicalRows actualModulus 1578 (.band 1577 1043) := by core033_kernel_decide
theorem stats1578 : actualRows1578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1578=5124 := by core033_kernel_decide
theorem rows1579 : actualRows1579=WordField.canonicalRows actualModulus 1579 (.bnot 1288) := by core033_kernel_decide
theorem stats1579 : actualRows1579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1579=6276 := by core033_kernel_decide
theorem rows1580 : actualRows1580=WordField.canonicalRows actualModulus 1580 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1580 : actualRows1580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1580=2892 := by core033_kernel_decide
theorem rows1581 : actualRows1581=WordField.canonicalRows actualModulus 1581 (.badd 1579 1580) := by core033_kernel_decide
theorem stats1581 : actualRows1581.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1581=5388 := by core033_kernel_decide
theorem rows1582 : actualRows1582=WordField.canonicalRows actualModulus 1582 (.bnot 1581) := by core033_kernel_decide
theorem stats1582 : actualRows1582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1582=6276 := by core033_kernel_decide
theorem rows1583 : actualRows1583=WordField.canonicalRows actualModulus 1583 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1583 : actualRows1583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1583=2820 := by core033_kernel_decide
theorem rows1584 : actualRows1584=WordField.canonicalRows actualModulus 1584 (.band 1582 1583) := by core033_kernel_decide
theorem stats1584 : actualRows1584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1584=5124 := by core033_kernel_decide
theorem rows1585 : actualRows1585=WordField.canonicalRows actualModulus 1585 (.bxor 1578 1584) := by core033_kernel_decide
theorem stats1585 : actualRows1585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1585=7428 := by core033_kernel_decide
theorem rows1586 : actualRows1586=WordField.canonicalRows actualModulus 1586 (.bnot 1288) := by core033_kernel_decide
theorem stats1586 : actualRows1586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1586=6276 := by core033_kernel_decide
theorem rows1587 : actualRows1587=WordField.canonicalRows actualModulus 1587 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1587 : actualRows1587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1587=2892 := by core033_kernel_decide
theorem rows1588 : actualRows1588=WordField.canonicalRows actualModulus 1588 (.badd 1586 1587) := by core033_kernel_decide
theorem stats1588 : actualRows1588.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1588=5388 := by core033_kernel_decide
theorem rows1589 : actualRows1589=WordField.canonicalRows actualModulus 1589 (.band 1588 1063) := by core033_kernel_decide
theorem stats1589 : actualRows1589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1589=5124 := by core033_kernel_decide
def partRows22 : List R1CS.Row := actualRows1526++actualRows1527++actualRows1528++actualRows1529++actualRows1530++actualRows1531++actualRows1532++actualRows1533++actualRows1534++actualRows1535++actualRows1536++actualRows1537++actualRows1538++actualRows1539++actualRows1540++actualRows1541++actualRows1542++actualRows1543++actualRows1544++actualRows1545++actualRows1546++actualRows1547++actualRows1548++actualRows1549++actualRows1550++actualRows1551++actualRows1552++actualRows1553++actualRows1554++actualRows1555++actualRows1556++actualRows1557++actualRows1558++actualRows1559++actualRows1560++actualRows1561++actualRows1562++actualRows1563++actualRows1564++actualRows1565++actualRows1566++actualRows1567++actualRows1568++actualRows1569++actualRows1570++actualRows1571++actualRows1572++actualRows1573++actualRows1574++actualRows1575++actualRows1576++actualRows1577++actualRows1578++actualRows1579++actualRows1580++actualRows1581++actualRows1582++actualRows1583++actualRows1584++actualRows1585++actualRows1586++actualRows1587++actualRows1588++actualRows1589
def partOps22 : List WordIR.Op := [.badd 1524 1525,.bnot 1526,.literal (BitVec.ofNat 32 0),.band 1527 1528,.bxor 1523 1529,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1531 1532,.band 1533 1003,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1535 1536,.bnot 1537,.literal (BitVec.ofNat 32 0),.band 1538 1539,.bxor 1534 1540,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1542 1543,.band 1544 1013,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1546 1547,.bnot 1548,.literal (BitVec.ofNat 32 0),.band 1549 1550,.bxor 1545 1551,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1553 1554,.band 1555 1023,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1557 1558,.bnot 1559,.literal (BitVec.ofNat 32 0),.band 1560 1561,.bxor 1556 1562,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1564 1565,.band 1566 1033,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1568 1569,.bnot 1570,.literal (BitVec.ofNat 32 0),.band 1571 1572,.bxor 1567 1573,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1575 1576,.band 1577 1043,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1579 1580,.bnot 1581,.literal (BitVec.ofNat 32 0),.band 1582 1583,.bxor 1578 1584,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1586 1587,.band 1588 1063]
theorem partExact22 : partRows22=WordField.rows actualModulus 1526 partOps22 := by
  simp only [partRows22,partOps22,WordField.rows,rows1526,rows1527,rows1528,rows1529,rows1530,rows1531,rows1532,rows1533,rows1534,rows1535,rows1536,rows1537,rows1538,rows1539,rows1540,rows1541,rows1542,rows1543,rows1544,rows1545,rows1546,rows1547,rows1548,rows1549,rows1550,rows1551,rows1552,rows1553,rows1554,rows1555,rows1556,rows1557,rows1558,rows1559,rows1560,rows1561,rows1562,rows1563,rows1564,rows1565,rows1566,rows1567,rows1568,rows1569,rows1570,rows1571,rows1572,rows1573,rows1574,rows1575,rows1576,rows1577,rows1578,rows1579,rows1580,rows1581,rows1582,rows1583,rows1584,rows1585,rows1586,rows1587,rows1588,rows1589,List.append_assoc,List.append_nil]
theorem partLength22 : partOps22.length=64 := by decide
theorem partStats22 : partRows22.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows22=326136 := by
  simp only [partRows22,List.length_append,MatrixRowBlocks.rows_weight_append,stats1526.1,stats1526.2,stats1527.1,stats1527.2,stats1528.1,stats1528.2,stats1529.1,stats1529.2,stats1530.1,stats1530.2,stats1531.1,stats1531.2,stats1532.1,stats1532.2,stats1533.1,stats1533.2,stats1534.1,stats1534.2,stats1535.1,stats1535.2,stats1536.1,stats1536.2,stats1537.1,stats1537.2,stats1538.1,stats1538.2,stats1539.1,stats1539.2,stats1540.1,stats1540.2,stats1541.1,stats1541.2,stats1542.1,stats1542.2,stats1543.1,stats1543.2,stats1544.1,stats1544.2,stats1545.1,stats1545.2,stats1546.1,stats1546.2,stats1547.1,stats1547.2,stats1548.1,stats1548.2,stats1549.1,stats1549.2,stats1550.1,stats1550.2,stats1551.1,stats1551.2,stats1552.1,stats1552.2,stats1553.1,stats1553.2,stats1554.1,stats1554.2,stats1555.1,stats1555.2,stats1556.1,stats1556.2,stats1557.1,stats1557.2,stats1558.1,stats1558.2,stats1559.1,stats1559.2,stats1560.1,stats1560.2,stats1561.1,stats1561.2,stats1562.1,stats1562.2,stats1563.1,stats1563.2,stats1564.1,stats1564.2,stats1565.1,stats1565.2,stats1566.1,stats1566.2,stats1567.1,stats1567.2,stats1568.1,stats1568.2,stats1569.1,stats1569.2,stats1570.1,stats1570.2,stats1571.1,stats1571.2,stats1572.1,stats1572.2,stats1573.1,stats1573.2,stats1574.1,stats1574.2,stats1575.1,stats1575.2,stats1576.1,stats1576.2,stats1577.1,stats1577.2,stats1578.1,stats1578.2,stats1579.1,stats1579.2,stats1580.1,stats1580.2,stats1581.1,stats1581.2,stats1582.1,stats1582.2,stats1583.1,stats1583.2,stats1584.1,stats1584.2,stats1585.1,stats1585.2,stats1586.1,stats1586.2,stats1587.1,stats1587.2,stats1588.1,stats1588.2,stats1589.1,stats1589.2]
  decide
end AuthenticatedBranchRoundCheckedRows
