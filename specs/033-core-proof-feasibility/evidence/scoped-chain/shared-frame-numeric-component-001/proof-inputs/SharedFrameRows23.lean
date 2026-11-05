import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData23
import SharedFrameInstructionMatrixData24
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1515 : actualRows1515=WordField.canonicalRows actualModulus 1515 (.bnot 1514) := by core033_kernel_decide
theorem stats1515 : actualRows1515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1515=6276 := by core033_kernel_decide
theorem rows1516 : actualRows1516=WordField.canonicalRows actualModulus 1516 (.band 1513 1515) := by core033_kernel_decide
theorem stats1516 : actualRows1516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1516=5124 := by core033_kernel_decide
theorem rows1517 : actualRows1517=WordField.canonicalRows actualModulus 1517 (.bxor 1512 1516) := by core033_kernel_decide
theorem stats1517 : actualRows1517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1517=7428 := by core033_kernel_decide
theorem rows1518 : actualRows1518=WordField.canonicalRows actualModulus 1518 (.shr 1517 31) := by core033_kernel_decide
theorem stats1518 : actualRows1518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1518=2892 := by core033_kernel_decide
theorem rows1519 : actualRows1519=WordField.canonicalRows actualModulus 1519 (.bxor 1518 43) := by core033_kernel_decide
theorem stats1519 : actualRows1519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1519=7428 := by core033_kernel_decide
theorem rows1520 : actualRows1520=WordField.canonicalRows actualModulus 1520 (.shr 856 8) := by core033_kernel_decide
theorem stats1520 : actualRows1520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1520=4548 := by core033_kernel_decide
theorem rows1521 : actualRows1521=WordField.canonicalRows actualModulus 1521 (.band 1520 50) := by core033_kernel_decide
theorem stats1521 : actualRows1521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1521=5124 := by core033_kernel_decide
theorem rows1522 : actualRows1522=WordField.canonicalRows actualModulus 1522 (.bxor 1520 50) := by core033_kernel_decide
theorem stats1522 : actualRows1522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1522=7428 := by core033_kernel_decide
theorem rows1523 : actualRows1523=WordField.canonicalRows actualModulus 1523 (.badd 1520 50) := by core033_kernel_decide
theorem stats1523 : actualRows1523.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1523=5388 := by core033_kernel_decide
theorem rows1524 : actualRows1524=WordField.canonicalRows actualModulus 1524 (.bnot 1523) := by core033_kernel_decide
theorem stats1524 : actualRows1524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1524=6276 := by core033_kernel_decide
theorem rows1525 : actualRows1525=WordField.canonicalRows actualModulus 1525 (.band 1522 1524) := by core033_kernel_decide
theorem stats1525 : actualRows1525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1525=5124 := by core033_kernel_decide
theorem rows1526 : actualRows1526=WordField.canonicalRows actualModulus 1526 (.bxor 1521 1525) := by core033_kernel_decide
theorem stats1526 : actualRows1526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1526=7428 := by core033_kernel_decide
theorem rows1527 : actualRows1527=WordField.canonicalRows actualModulus 1527 (.shr 1526 31) := by core033_kernel_decide
theorem stats1527 : actualRows1527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1527=2892 := by core033_kernel_decide
theorem rows1528 : actualRows1528=WordField.canonicalRows actualModulus 1528 (.bxor 1527 43) := by core033_kernel_decide
theorem stats1528 : actualRows1528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1528=7428 := by core033_kernel_decide
theorem rows1529 : actualRows1529=WordField.canonicalRows actualModulus 1529 (.rotr 946 17) := by core033_kernel_decide
theorem stats1529 : actualRows1529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1529=5124 := by core033_kernel_decide
theorem rows1530 : actualRows1530=WordField.canonicalRows actualModulus 1530 (.rotr 946 19) := by core033_kernel_decide
theorem stats1530 : actualRows1530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1530=5124 := by core033_kernel_decide
theorem rows1531 : actualRows1531=WordField.canonicalRows actualModulus 1531 (.bxor 1529 1530) := by core033_kernel_decide
theorem stats1531 : actualRows1531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1531=7428 := by core033_kernel_decide
theorem rows1532 : actualRows1532=WordField.canonicalRows actualModulus 1532 (.shr 946 10) := by core033_kernel_decide
theorem stats1532 : actualRows1532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1532=4404 := by core033_kernel_decide
theorem rows1533 : actualRows1533=WordField.canonicalRows actualModulus 1533 (.bxor 1531 1532) := by core033_kernel_decide
theorem stats1533 : actualRows1533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1533=7428 := by core033_kernel_decide
theorem rows1534 : actualRows1534=WordField.canonicalRows actualModulus 1534 (.badd 1533 916) := by core033_kernel_decide
theorem stats1534 : actualRows1534.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1534=5388 := by core033_kernel_decide
theorem rows1535 : actualRows1535=WordField.canonicalRows actualModulus 1535 (.rotr 868 7) := by core033_kernel_decide
theorem stats1535 : actualRows1535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1535=5124 := by core033_kernel_decide
theorem rows1536 : actualRows1536=WordField.canonicalRows actualModulus 1536 (.rotr 868 18) := by core033_kernel_decide
theorem stats1536 : actualRows1536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1536=5124 := by core033_kernel_decide
theorem rows1537 : actualRows1537=WordField.canonicalRows actualModulus 1537 (.bxor 1535 1536) := by core033_kernel_decide
theorem stats1537 : actualRows1537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1537=7428 := by core033_kernel_decide
theorem rows1538 : actualRows1538=WordField.canonicalRows actualModulus 1538 (.shr 868 3) := by core033_kernel_decide
theorem stats1538 : actualRows1538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1538=4908 := by core033_kernel_decide
theorem rows1539 : actualRows1539=WordField.canonicalRows actualModulus 1539 (.bxor 1537 1538) := by core033_kernel_decide
theorem stats1539 : actualRows1539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1539=7428 := by core033_kernel_decide
theorem rows1540 : actualRows1540=WordField.canonicalRows actualModulus 1540 (.badd 1534 1539) := by core033_kernel_decide
theorem stats1540 : actualRows1540.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1540=5388 := by core033_kernel_decide
theorem rows1541 : actualRows1541=WordField.canonicalRows actualModulus 1541 (.badd 1540 862) := by core033_kernel_decide
theorem stats1541 : actualRows1541.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1541=5388 := by core033_kernel_decide
theorem rows1542 : actualRows1542=WordField.canonicalRows actualModulus 1542 (.rotr 952 17) := by core033_kernel_decide
theorem stats1542 : actualRows1542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1542=5124 := by core033_kernel_decide
theorem rows1543 : actualRows1543=WordField.canonicalRows actualModulus 1543 (.rotr 952 19) := by core033_kernel_decide
theorem stats1543 : actualRows1543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1543=5124 := by core033_kernel_decide
theorem rows1544 : actualRows1544=WordField.canonicalRows actualModulus 1544 (.bxor 1542 1543) := by core033_kernel_decide
theorem stats1544 : actualRows1544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1544=7428 := by core033_kernel_decide
theorem rows1545 : actualRows1545=WordField.canonicalRows actualModulus 1545 (.shr 952 10) := by core033_kernel_decide
theorem stats1545 : actualRows1545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1545=4404 := by core033_kernel_decide
theorem rows1546 : actualRows1546=WordField.canonicalRows actualModulus 1546 (.bxor 1544 1545) := by core033_kernel_decide
theorem stats1546 : actualRows1546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1546=7428 := by core033_kernel_decide
theorem rows1547 : actualRows1547=WordField.canonicalRows actualModulus 1547 (.badd 1546 922) := by core033_kernel_decide
theorem stats1547 : actualRows1547.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1547=5388 := by core033_kernel_decide
theorem rows1548 : actualRows1548=WordField.canonicalRows actualModulus 1548 (.rotr 874 7) := by core033_kernel_decide
theorem stats1548 : actualRows1548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1548=5124 := by core033_kernel_decide
theorem rows1549 : actualRows1549=WordField.canonicalRows actualModulus 1549 (.rotr 874 18) := by core033_kernel_decide
theorem stats1549 : actualRows1549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1549=5124 := by core033_kernel_decide
theorem rows1550 : actualRows1550=WordField.canonicalRows actualModulus 1550 (.bxor 1548 1549) := by core033_kernel_decide
theorem stats1550 : actualRows1550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1550=7428 := by core033_kernel_decide
theorem rows1551 : actualRows1551=WordField.canonicalRows actualModulus 1551 (.shr 874 3) := by core033_kernel_decide
theorem stats1551 : actualRows1551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1551=4908 := by core033_kernel_decide
theorem rows1552 : actualRows1552=WordField.canonicalRows actualModulus 1552 (.bxor 1550 1551) := by core033_kernel_decide
theorem stats1552 : actualRows1552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1552=7428 := by core033_kernel_decide
theorem rows1553 : actualRows1553=WordField.canonicalRows actualModulus 1553 (.badd 1547 1552) := by core033_kernel_decide
theorem stats1553 : actualRows1553.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1553=5388 := by core033_kernel_decide
theorem rows1554 : actualRows1554=WordField.canonicalRows actualModulus 1554 (.badd 1553 868) := by core033_kernel_decide
theorem stats1554 : actualRows1554.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1554=5388 := by core033_kernel_decide
theorem rows1555 : actualRows1555=WordField.canonicalRows actualModulus 1555 (.rotr 1541 17) := by core033_kernel_decide
theorem stats1555 : actualRows1555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1555=5124 := by core033_kernel_decide
theorem rows1556 : actualRows1556=WordField.canonicalRows actualModulus 1556 (.rotr 1541 19) := by core033_kernel_decide
theorem stats1556 : actualRows1556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1556=5124 := by core033_kernel_decide
theorem rows1557 : actualRows1557=WordField.canonicalRows actualModulus 1557 (.bxor 1555 1556) := by core033_kernel_decide
theorem stats1557 : actualRows1557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1557=7428 := by core033_kernel_decide
theorem rows1558 : actualRows1558=WordField.canonicalRows actualModulus 1558 (.shr 1541 10) := by core033_kernel_decide
theorem stats1558 : actualRows1558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1558=4404 := by core033_kernel_decide
theorem rows1559 : actualRows1559=WordField.canonicalRows actualModulus 1559 (.bxor 1557 1558) := by core033_kernel_decide
theorem stats1559 : actualRows1559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1559=7428 := by core033_kernel_decide
theorem rows1560 : actualRows1560=WordField.canonicalRows actualModulus 1560 (.badd 1559 928) := by core033_kernel_decide
theorem stats1560 : actualRows1560.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1560=5388 := by core033_kernel_decide
theorem rows1561 : actualRows1561=WordField.canonicalRows actualModulus 1561 (.rotr 880 7) := by core033_kernel_decide
theorem stats1561 : actualRows1561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1561=5124 := by core033_kernel_decide
theorem rows1562 : actualRows1562=WordField.canonicalRows actualModulus 1562 (.rotr 880 18) := by core033_kernel_decide
theorem stats1562 : actualRows1562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1562=5124 := by core033_kernel_decide
theorem rows1563 : actualRows1563=WordField.canonicalRows actualModulus 1563 (.bxor 1561 1562) := by core033_kernel_decide
theorem stats1563 : actualRows1563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1563=7428 := by core033_kernel_decide
theorem rows1564 : actualRows1564=WordField.canonicalRows actualModulus 1564 (.shr 880 3) := by core033_kernel_decide
theorem stats1564 : actualRows1564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1564=4908 := by core033_kernel_decide
theorem rows1565 : actualRows1565=WordField.canonicalRows actualModulus 1565 (.bxor 1563 1564) := by core033_kernel_decide
theorem stats1565 : actualRows1565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1565=7428 := by core033_kernel_decide
theorem rows1566 : actualRows1566=WordField.canonicalRows actualModulus 1566 (.badd 1560 1565) := by core033_kernel_decide
theorem stats1566 : actualRows1566.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1566=5388 := by core033_kernel_decide
theorem rows1567 : actualRows1567=WordField.canonicalRows actualModulus 1567 (.badd 1566 874) := by core033_kernel_decide
theorem stats1567 : actualRows1567.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1567=5388 := by core033_kernel_decide
theorem rows1568 : actualRows1568=WordField.canonicalRows actualModulus 1568 (.rotr 1554 17) := by core033_kernel_decide
theorem stats1568 : actualRows1568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1568=5124 := by core033_kernel_decide
theorem rows1569 : actualRows1569=WordField.canonicalRows actualModulus 1569 (.rotr 1554 19) := by core033_kernel_decide
theorem stats1569 : actualRows1569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1569=5124 := by core033_kernel_decide
theorem rows1570 : actualRows1570=WordField.canonicalRows actualModulus 1570 (.bxor 1568 1569) := by core033_kernel_decide
theorem stats1570 : actualRows1570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1570=7428 := by core033_kernel_decide
theorem rows1571 : actualRows1571=WordField.canonicalRows actualModulus 1571 (.shr 1554 10) := by core033_kernel_decide
theorem stats1571 : actualRows1571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1571=4404 := by core033_kernel_decide
theorem rows1572 : actualRows1572=WordField.canonicalRows actualModulus 1572 (.bxor 1570 1571) := by core033_kernel_decide
theorem stats1572 : actualRows1572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1572=7428 := by core033_kernel_decide
theorem rows1573 : actualRows1573=WordField.canonicalRows actualModulus 1573 (.badd 1572 934) := by core033_kernel_decide
theorem stats1573 : actualRows1573.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1573=5388 := by core033_kernel_decide
theorem rows1574 : actualRows1574=WordField.canonicalRows actualModulus 1574 (.rotr 886 7) := by core033_kernel_decide
theorem stats1574 : actualRows1574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1574=5124 := by core033_kernel_decide
theorem rows1575 : actualRows1575=WordField.canonicalRows actualModulus 1575 (.rotr 886 18) := by core033_kernel_decide
theorem stats1575 : actualRows1575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1575=5124 := by core033_kernel_decide
theorem rows1576 : actualRows1576=WordField.canonicalRows actualModulus 1576 (.bxor 1574 1575) := by core033_kernel_decide
theorem stats1576 : actualRows1576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1576=7428 := by core033_kernel_decide
theorem rows1577 : actualRows1577=WordField.canonicalRows actualModulus 1577 (.shr 886 3) := by core033_kernel_decide
theorem stats1577 : actualRows1577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1577=4908 := by core033_kernel_decide
theorem rows1578 : actualRows1578=WordField.canonicalRows actualModulus 1578 (.bxor 1576 1577) := by core033_kernel_decide
theorem stats1578 : actualRows1578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1578=7428 := by core033_kernel_decide
def partRows23 : List R1CS.Row := actualRows1515++actualRows1516++actualRows1517++actualRows1518++actualRows1519++actualRows1520++actualRows1521++actualRows1522++actualRows1523++actualRows1524++actualRows1525++actualRows1526++actualRows1527++actualRows1528++actualRows1529++actualRows1530++actualRows1531++actualRows1532++actualRows1533++actualRows1534++actualRows1535++actualRows1536++actualRows1537++actualRows1538++actualRows1539++actualRows1540++actualRows1541++actualRows1542++actualRows1543++actualRows1544++actualRows1545++actualRows1546++actualRows1547++actualRows1548++actualRows1549++actualRows1550++actualRows1551++actualRows1552++actualRows1553++actualRows1554++actualRows1555++actualRows1556++actualRows1557++actualRows1558++actualRows1559++actualRows1560++actualRows1561++actualRows1562++actualRows1563++actualRows1564++actualRows1565++actualRows1566++actualRows1567++actualRows1568++actualRows1569++actualRows1570++actualRows1571++actualRows1572++actualRows1573++actualRows1574++actualRows1575++actualRows1576++actualRows1577++actualRows1578
def partOps23 : List WordIR.Op := [.bnot 1514,.band 1513 1515,.bxor 1512 1516,.shr 1517 31,.bxor 1518 43,.shr 856 8,.band 1520 50,.bxor 1520 50,.badd 1520 50,.bnot 1523,.band 1522 1524,.bxor 1521 1525,.shr 1526 31,.bxor 1527 43,.rotr 946 17,.rotr 946 19,.bxor 1529 1530,.shr 946 10,.bxor 1531 1532,.badd 1533 916,.rotr 868 7,.rotr 868 18,.bxor 1535 1536,.shr 868 3,.bxor 1537 1538,.badd 1534 1539,.badd 1540 862,.rotr 952 17,.rotr 952 19,.bxor 1542 1543,.shr 952 10,.bxor 1544 1545,.badd 1546 922,.rotr 874 7,.rotr 874 18,.bxor 1548 1549,.shr 874 3,.bxor 1550 1551,.badd 1547 1552,.badd 1553 868,.rotr 1541 17,.rotr 1541 19,.bxor 1555 1556,.shr 1541 10,.bxor 1557 1558,.badd 1559 928,.rotr 880 7,.rotr 880 18,.bxor 1561 1562,.shr 880 3,.bxor 1563 1564,.badd 1560 1565,.badd 1566 874,.rotr 1554 17,.rotr 1554 19,.bxor 1568 1569,.shr 1554 10,.bxor 1570 1571,.badd 1572 934,.rotr 886 7,.rotr 886 18,.bxor 1574 1575,.shr 886 3,.bxor 1576 1577]
theorem partExact23 : partRows23=WordField.rows actualModulus 1515 partOps23 := by
  simp only [partRows23,partOps23,WordField.rows,rows1515,rows1516,rows1517,rows1518,rows1519,rows1520,rows1521,rows1522,rows1523,rows1524,rows1525,rows1526,rows1527,rows1528,rows1529,rows1530,rows1531,rows1532,rows1533,rows1534,rows1535,rows1536,rows1537,rows1538,rows1539,rows1540,rows1541,rows1542,rows1543,rows1544,rows1545,rows1546,rows1547,rows1548,rows1549,rows1550,rows1551,rows1552,rows1553,rows1554,rows1555,rows1556,rows1557,rows1558,rows1559,rows1560,rows1561,rows1562,rows1563,rows1564,rows1565,rows1566,rows1567,rows1568,rows1569,rows1570,rows1571,rows1572,rows1573,rows1574,rows1575,rows1576,rows1577,rows1578,List.append_assoc,List.append_nil]
theorem partLength23 : partOps23.length=64 := by decide
theorem partStats23 : partRows23.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows23=372744 := by
  simp only [partRows23,List.length_append,MatrixRowBlocks.rows_weight_append,stats1515.1,stats1515.2,stats1516.1,stats1516.2,stats1517.1,stats1517.2,stats1518.1,stats1518.2,stats1519.1,stats1519.2,stats1520.1,stats1520.2,stats1521.1,stats1521.2,stats1522.1,stats1522.2,stats1523.1,stats1523.2,stats1524.1,stats1524.2,stats1525.1,stats1525.2,stats1526.1,stats1526.2,stats1527.1,stats1527.2,stats1528.1,stats1528.2,stats1529.1,stats1529.2,stats1530.1,stats1530.2,stats1531.1,stats1531.2,stats1532.1,stats1532.2,stats1533.1,stats1533.2,stats1534.1,stats1534.2,stats1535.1,stats1535.2,stats1536.1,stats1536.2,stats1537.1,stats1537.2,stats1538.1,stats1538.2,stats1539.1,stats1539.2,stats1540.1,stats1540.2,stats1541.1,stats1541.2,stats1542.1,stats1542.2,stats1543.1,stats1543.2,stats1544.1,stats1544.2,stats1545.1,stats1545.2,stats1546.1,stats1546.2,stats1547.1,stats1547.2,stats1548.1,stats1548.2,stats1549.1,stats1549.2,stats1550.1,stats1550.2,stats1551.1,stats1551.2,stats1552.1,stats1552.2,stats1553.1,stats1553.2,stats1554.1,stats1554.2,stats1555.1,stats1555.2,stats1556.1,stats1556.2,stats1557.1,stats1557.2,stats1558.1,stats1558.2,stats1559.1,stats1559.2,stats1560.1,stats1560.2,stats1561.1,stats1561.2,stats1562.1,stats1562.2,stats1563.1,stats1563.2,stats1564.1,stats1564.2,stats1565.1,stats1565.2,stats1566.1,stats1566.2,stats1567.1,stats1567.2,stats1568.1,stats1568.2,stats1569.1,stats1569.2,stats1570.1,stats1570.2,stats1571.1,stats1571.2,stats1572.1,stats1572.2,stats1573.1,stats1573.2,stats1574.1,stats1574.2,stats1575.1,stats1575.2,stats1576.1,stats1576.2,stats1577.1,stats1577.2,stats1578.1,stats1578.2]
  decide
end SharedFrameCheckedRows
