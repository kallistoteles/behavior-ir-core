import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData24
import PairedPathRoundInstructionMatrixData25
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1568 : actualRows1568=WordField.canonicalRows actualModulus 1568 (.badd 1566 1567) := by core033_kernel_decide
theorem stats1568 : actualRows1568.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1568=5388 := by core033_kernel_decide
theorem rows1569 : actualRows1569=WordField.canonicalRows actualModulus 1569 (.band 1568 792) := by core033_kernel_decide
theorem stats1569 : actualRows1569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1569=5124 := by core033_kernel_decide
theorem rows1570 : actualRows1570=WordField.canonicalRows actualModulus 1570 (.bnot 1395) := by core033_kernel_decide
theorem stats1570 : actualRows1570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1570=6276 := by core033_kernel_decide
theorem rows1571 : actualRows1571=WordField.canonicalRows actualModulus 1571 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1571 : actualRows1571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1571=2892 := by core033_kernel_decide
theorem rows1572 : actualRows1572=WordField.canonicalRows actualModulus 1572 (.badd 1570 1571) := by core033_kernel_decide
theorem stats1572 : actualRows1572.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1572=5388 := by core033_kernel_decide
theorem rows1573 : actualRows1573=WordField.canonicalRows actualModulus 1573 (.bnot 1572) := by core033_kernel_decide
theorem stats1573 : actualRows1573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1573=6276 := by core033_kernel_decide
theorem rows1574 : actualRows1574=WordField.canonicalRows actualModulus 1574 (.band 1573 880) := by core033_kernel_decide
theorem stats1574 : actualRows1574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1574=5124 := by core033_kernel_decide
theorem rows1575 : actualRows1575=WordField.canonicalRows actualModulus 1575 (.bxor 1569 1574) := by core033_kernel_decide
theorem stats1575 : actualRows1575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1575=7428 := by core033_kernel_decide
theorem rows1576 : actualRows1576=WordField.canonicalRows actualModulus 1576 (.bnot 1395) := by core033_kernel_decide
theorem stats1576 : actualRows1576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1576=6276 := by core033_kernel_decide
theorem rows1577 : actualRows1577=WordField.canonicalRows actualModulus 1577 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1577 : actualRows1577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1577=2892 := by core033_kernel_decide
theorem rows1578 : actualRows1578=WordField.canonicalRows actualModulus 1578 (.badd 1576 1577) := by core033_kernel_decide
theorem stats1578 : actualRows1578.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1578=5388 := by core033_kernel_decide
theorem rows1579 : actualRows1579=WordField.canonicalRows actualModulus 1579 (.band 1578 803) := by core033_kernel_decide
theorem stats1579 : actualRows1579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1579=5124 := by core033_kernel_decide
theorem rows1580 : actualRows1580=WordField.canonicalRows actualModulus 1580 (.bnot 1395) := by core033_kernel_decide
theorem stats1580 : actualRows1580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1580=6276 := by core033_kernel_decide
theorem rows1581 : actualRows1581=WordField.canonicalRows actualModulus 1581 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1581 : actualRows1581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1581=2892 := by core033_kernel_decide
theorem rows1582 : actualRows1582=WordField.canonicalRows actualModulus 1582 (.badd 1580 1581) := by core033_kernel_decide
theorem stats1582 : actualRows1582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1582=5388 := by core033_kernel_decide
theorem rows1583 : actualRows1583=WordField.canonicalRows actualModulus 1583 (.bnot 1582) := by core033_kernel_decide
theorem stats1583 : actualRows1583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1583=6276 := by core033_kernel_decide
theorem rows1584 : actualRows1584=WordField.canonicalRows actualModulus 1584 (.band 1583 891) := by core033_kernel_decide
theorem stats1584 : actualRows1584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1584=5124 := by core033_kernel_decide
theorem rows1585 : actualRows1585=WordField.canonicalRows actualModulus 1585 (.bxor 1579 1584) := by core033_kernel_decide
theorem stats1585 : actualRows1585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1585=7428 := by core033_kernel_decide
theorem rows1586 : actualRows1586=WordField.canonicalRows actualModulus 1586 (.bnot 1395) := by core033_kernel_decide
theorem stats1586 : actualRows1586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1586=6276 := by core033_kernel_decide
theorem rows1587 : actualRows1587=WordField.canonicalRows actualModulus 1587 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1587 : actualRows1587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1587=2892 := by core033_kernel_decide
theorem rows1588 : actualRows1588=WordField.canonicalRows actualModulus 1588 (.badd 1586 1587) := by core033_kernel_decide
theorem stats1588 : actualRows1588.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1588=5388 := by core033_kernel_decide
theorem rows1589 : actualRows1589=WordField.canonicalRows actualModulus 1589 (.band 1588 814) := by core033_kernel_decide
theorem stats1589 : actualRows1589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1589=5124 := by core033_kernel_decide
theorem rows1590 : actualRows1590=WordField.canonicalRows actualModulus 1590 (.bnot 1395) := by core033_kernel_decide
theorem stats1590 : actualRows1590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1590=6276 := by core033_kernel_decide
theorem rows1591 : actualRows1591=WordField.canonicalRows actualModulus 1591 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1591 : actualRows1591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1591=2892 := by core033_kernel_decide
theorem rows1592 : actualRows1592=WordField.canonicalRows actualModulus 1592 (.badd 1590 1591) := by core033_kernel_decide
theorem stats1592 : actualRows1592.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1592=5388 := by core033_kernel_decide
theorem rows1593 : actualRows1593=WordField.canonicalRows actualModulus 1593 (.bnot 1592) := by core033_kernel_decide
theorem stats1593 : actualRows1593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1593=6276 := by core033_kernel_decide
theorem rows1594 : actualRows1594=WordField.canonicalRows actualModulus 1594 (.band 1593 902) := by core033_kernel_decide
theorem stats1594 : actualRows1594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1594=5124 := by core033_kernel_decide
theorem rows1595 : actualRows1595=WordField.canonicalRows actualModulus 1595 (.bxor 1589 1594) := by core033_kernel_decide
theorem stats1595 : actualRows1595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1595=7428 := by core033_kernel_decide
theorem rows1596 : actualRows1596=WordField.canonicalRows actualModulus 1596 (.bnot 1395) := by core033_kernel_decide
theorem stats1596 : actualRows1596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1596=6276 := by core033_kernel_decide
theorem rows1597 : actualRows1597=WordField.canonicalRows actualModulus 1597 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1597 : actualRows1597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1597=2892 := by core033_kernel_decide
theorem rows1598 : actualRows1598=WordField.canonicalRows actualModulus 1598 (.badd 1596 1597) := by core033_kernel_decide
theorem stats1598 : actualRows1598.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1598=5388 := by core033_kernel_decide
theorem rows1599 : actualRows1599=WordField.canonicalRows actualModulus 1599 (.band 1598 913) := by core033_kernel_decide
theorem stats1599 : actualRows1599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1599=5124 := by core033_kernel_decide
theorem rows1600 : actualRows1600=WordField.canonicalRows actualModulus 1600 (.bnot 1395) := by core033_kernel_decide
theorem stats1600 : actualRows1600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1600=6276 := by core033_kernel_decide
theorem rows1601 : actualRows1601=WordField.canonicalRows actualModulus 1601 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1601 : actualRows1601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1601=2892 := by core033_kernel_decide
theorem rows1602 : actualRows1602=WordField.canonicalRows actualModulus 1602 (.badd 1600 1601) := by core033_kernel_decide
theorem stats1602 : actualRows1602.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1602=5388 := by core033_kernel_decide
theorem rows1603 : actualRows1603=WordField.canonicalRows actualModulus 1603 (.bnot 1602) := by core033_kernel_decide
theorem stats1603 : actualRows1603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1603=6276 := by core033_kernel_decide
theorem rows1604 : actualRows1604=WordField.canonicalRows actualModulus 1604 (.band 1603 935) := by core033_kernel_decide
theorem stats1604 : actualRows1604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1604=5124 := by core033_kernel_decide
theorem rows1605 : actualRows1605=WordField.canonicalRows actualModulus 1605 (.bxor 1599 1604) := by core033_kernel_decide
theorem stats1605 : actualRows1605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1605=7428 := by core033_kernel_decide
theorem rows1606 : actualRows1606=WordField.canonicalRows actualModulus 1606 (.bnot 1395) := by core033_kernel_decide
theorem stats1606 : actualRows1606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1606=6276 := by core033_kernel_decide
theorem rows1607 : actualRows1607=WordField.canonicalRows actualModulus 1607 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1607 : actualRows1607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1607=2892 := by core033_kernel_decide
theorem rows1608 : actualRows1608=WordField.canonicalRows actualModulus 1608 (.badd 1606 1607) := by core033_kernel_decide
theorem stats1608 : actualRows1608.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1608=5388 := by core033_kernel_decide
theorem rows1609 : actualRows1609=WordField.canonicalRows actualModulus 1609 (.band 1608 924) := by core033_kernel_decide
theorem stats1609 : actualRows1609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1609=5124 := by core033_kernel_decide
theorem rows1610 : actualRows1610=WordField.canonicalRows actualModulus 1610 (.bnot 1395) := by core033_kernel_decide
theorem stats1610 : actualRows1610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1610=6276 := by core033_kernel_decide
theorem rows1611 : actualRows1611=WordField.canonicalRows actualModulus 1611 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1611 : actualRows1611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1611=2892 := by core033_kernel_decide
theorem rows1612 : actualRows1612=WordField.canonicalRows actualModulus 1612 (.badd 1610 1611) := by core033_kernel_decide
theorem stats1612 : actualRows1612.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1612=5388 := by core033_kernel_decide
theorem rows1613 : actualRows1613=WordField.canonicalRows actualModulus 1613 (.bnot 1612) := by core033_kernel_decide
theorem stats1613 : actualRows1613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1613=6276 := by core033_kernel_decide
theorem rows1614 : actualRows1614=WordField.canonicalRows actualModulus 1614 (.band 1613 946) := by core033_kernel_decide
theorem stats1614 : actualRows1614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1614=5124 := by core033_kernel_decide
theorem rows1615 : actualRows1615=WordField.canonicalRows actualModulus 1615 (.bxor 1609 1614) := by core033_kernel_decide
theorem stats1615 : actualRows1615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1615=7428 := by core033_kernel_decide
theorem rows1616 : actualRows1616=WordField.canonicalRows actualModulus 1616 (.bnot 1395) := by core033_kernel_decide
theorem stats1616 : actualRows1616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1616=6276 := by core033_kernel_decide
theorem rows1617 : actualRows1617=WordField.canonicalRows actualModulus 1617 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1617 : actualRows1617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1617=2892 := by core033_kernel_decide
theorem rows1618 : actualRows1618=WordField.canonicalRows actualModulus 1618 (.badd 1616 1617) := by core033_kernel_decide
theorem stats1618 : actualRows1618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1618=5388 := by core033_kernel_decide
theorem rows1619 : actualRows1619=WordField.canonicalRows actualModulus 1619 (.band 1618 957) := by core033_kernel_decide
theorem stats1619 : actualRows1619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1619=5124 := by core033_kernel_decide
theorem rows1620 : actualRows1620=WordField.canonicalRows actualModulus 1620 (.bnot 1395) := by core033_kernel_decide
theorem stats1620 : actualRows1620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1620=6276 := by core033_kernel_decide
theorem rows1621 : actualRows1621=WordField.canonicalRows actualModulus 1621 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1621 : actualRows1621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1621=2892 := by core033_kernel_decide
theorem rows1622 : actualRows1622=WordField.canonicalRows actualModulus 1622 (.badd 1620 1621) := by core033_kernel_decide
theorem stats1622 : actualRows1622.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1622=5388 := by core033_kernel_decide
theorem rows1623 : actualRows1623=WordField.canonicalRows actualModulus 1623 (.bnot 1622) := by core033_kernel_decide
theorem stats1623 : actualRows1623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1623=6276 := by core033_kernel_decide
theorem rows1624 : actualRows1624=WordField.canonicalRows actualModulus 1624 (.band 1623 968) := by core033_kernel_decide
theorem stats1624 : actualRows1624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1624=5124 := by core033_kernel_decide
theorem rows1625 : actualRows1625=WordField.canonicalRows actualModulus 1625 (.bxor 1619 1624) := by core033_kernel_decide
theorem stats1625 : actualRows1625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1625=7428 := by core033_kernel_decide
theorem rows1626 : actualRows1626=WordField.canonicalRows actualModulus 1626 (.bnot 1395) := by core033_kernel_decide
theorem stats1626 : actualRows1626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1626=6276 := by core033_kernel_decide
theorem rows1627 : actualRows1627=WordField.canonicalRows actualModulus 1627 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1627 : actualRows1627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1627=2892 := by core033_kernel_decide
theorem rows1628 : actualRows1628=WordField.canonicalRows actualModulus 1628 (.badd 1626 1627) := by core033_kernel_decide
theorem stats1628 : actualRows1628.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1628=5388 := by core033_kernel_decide
theorem rows1629 : actualRows1629=WordField.canonicalRows actualModulus 1629 (.band 1628 979) := by core033_kernel_decide
theorem stats1629 : actualRows1629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1629=5124 := by core033_kernel_decide
theorem rows1630 : actualRows1630=WordField.canonicalRows actualModulus 1630 (.bnot 1395) := by core033_kernel_decide
theorem stats1630 : actualRows1630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1630=6276 := by core033_kernel_decide
theorem rows1631 : actualRows1631=WordField.canonicalRows actualModulus 1631 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1631 : actualRows1631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1631=2892 := by core033_kernel_decide
def partRows23 : List R1CS.Row := actualRows1568++actualRows1569++actualRows1570++actualRows1571++actualRows1572++actualRows1573++actualRows1574++actualRows1575++actualRows1576++actualRows1577++actualRows1578++actualRows1579++actualRows1580++actualRows1581++actualRows1582++actualRows1583++actualRows1584++actualRows1585++actualRows1586++actualRows1587++actualRows1588++actualRows1589++actualRows1590++actualRows1591++actualRows1592++actualRows1593++actualRows1594++actualRows1595++actualRows1596++actualRows1597++actualRows1598++actualRows1599++actualRows1600++actualRows1601++actualRows1602++actualRows1603++actualRows1604++actualRows1605++actualRows1606++actualRows1607++actualRows1608++actualRows1609++actualRows1610++actualRows1611++actualRows1612++actualRows1613++actualRows1614++actualRows1615++actualRows1616++actualRows1617++actualRows1618++actualRows1619++actualRows1620++actualRows1621++actualRows1622++actualRows1623++actualRows1624++actualRows1625++actualRows1626++actualRows1627++actualRows1628++actualRows1629++actualRows1630++actualRows1631
def partOps23 : List WordIR.Op := [.badd 1566 1567,.band 1568 792,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1570 1571,.bnot 1572,.band 1573 880,.bxor 1569 1574,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1576 1577,.band 1578 803,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1580 1581,.bnot 1582,.band 1583 891,.bxor 1579 1584,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1586 1587,.band 1588 814,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1590 1591,.bnot 1592,.band 1593 902,.bxor 1589 1594,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1596 1597,.band 1598 913,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1600 1601,.bnot 1602,.band 1603 935,.bxor 1599 1604,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1606 1607,.band 1608 924,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1610 1611,.bnot 1612,.band 1613 946,.bxor 1609 1614,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1616 1617,.band 1618 957,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1620 1621,.bnot 1622,.band 1623 968,.bxor 1619 1624,.bnot 1395,.literal (BitVec.ofNat 32 1),.badd 1626 1627,.band 1628 979,.bnot 1395,.literal (BitVec.ofNat 32 1)]
theorem partExact23 : partRows23=WordField.rows actualModulus 1568 partOps23 := by
  simp only [partRows23,partOps23,WordField.rows,rows1568,rows1569,rows1570,rows1571,rows1572,rows1573,rows1574,rows1575,rows1576,rows1577,rows1578,rows1579,rows1580,rows1581,rows1582,rows1583,rows1584,rows1585,rows1586,rows1587,rows1588,rows1589,rows1590,rows1591,rows1592,rows1593,rows1594,rows1595,rows1596,rows1597,rows1598,rows1599,rows1600,rows1601,rows1602,rows1603,rows1604,rows1605,rows1606,rows1607,rows1608,rows1609,rows1610,rows1611,rows1612,rows1613,rows1614,rows1615,rows1616,rows1617,rows1618,rows1619,rows1620,rows1621,rows1622,rows1623,rows1624,rows1625,rows1626,rows1627,rows1628,rows1629,rows1630,rows1631,List.append_assoc,List.append_nil]
theorem partLength23 : partOps23.length=64 := by decide
theorem partStats23 : partRows23.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows23=338064 := by
  simp only [partRows23,List.length_append,MatrixRowBlocks.rows_weight_append,stats1568.1,stats1568.2,stats1569.1,stats1569.2,stats1570.1,stats1570.2,stats1571.1,stats1571.2,stats1572.1,stats1572.2,stats1573.1,stats1573.2,stats1574.1,stats1574.2,stats1575.1,stats1575.2,stats1576.1,stats1576.2,stats1577.1,stats1577.2,stats1578.1,stats1578.2,stats1579.1,stats1579.2,stats1580.1,stats1580.2,stats1581.1,stats1581.2,stats1582.1,stats1582.2,stats1583.1,stats1583.2,stats1584.1,stats1584.2,stats1585.1,stats1585.2,stats1586.1,stats1586.2,stats1587.1,stats1587.2,stats1588.1,stats1588.2,stats1589.1,stats1589.2,stats1590.1,stats1590.2,stats1591.1,stats1591.2,stats1592.1,stats1592.2,stats1593.1,stats1593.2,stats1594.1,stats1594.2,stats1595.1,stats1595.2,stats1596.1,stats1596.2,stats1597.1,stats1597.2,stats1598.1,stats1598.2,stats1599.1,stats1599.2,stats1600.1,stats1600.2,stats1601.1,stats1601.2,stats1602.1,stats1602.2,stats1603.1,stats1603.2,stats1604.1,stats1604.2,stats1605.1,stats1605.2,stats1606.1,stats1606.2,stats1607.1,stats1607.2,stats1608.1,stats1608.2,stats1609.1,stats1609.2,stats1610.1,stats1610.2,stats1611.1,stats1611.2,stats1612.1,stats1612.2,stats1613.1,stats1613.2,stats1614.1,stats1614.2,stats1615.1,stats1615.2,stats1616.1,stats1616.2,stats1617.1,stats1617.2,stats1618.1,stats1618.2,stats1619.1,stats1619.2,stats1620.1,stats1620.2,stats1621.1,stats1621.2,stats1622.1,stats1622.2,stats1623.1,stats1623.2,stats1624.1,stats1624.2,stats1625.1,stats1625.2,stats1626.1,stats1626.2,stats1627.1,stats1627.2,stats1628.1,stats1628.2,stats1629.1,stats1629.2,stats1630.1,stats1630.2,stats1631.1,stats1631.2]
  decide
end QuotedPairedPathRoundCheckedRows
