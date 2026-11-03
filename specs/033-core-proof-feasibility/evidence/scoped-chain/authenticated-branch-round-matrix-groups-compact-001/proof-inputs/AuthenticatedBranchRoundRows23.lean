import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData24
import AuthenticatedBranchRoundInstructionMatrixData25
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1590 : actualRows1590=WordField.canonicalRows actualModulus 1590 (.bnot 1288) := by core033_kernel_decide
theorem stats1590 : actualRows1590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1590=6276 := by core033_kernel_decide
theorem rows1591 : actualRows1591=WordField.canonicalRows actualModulus 1591 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1591 : actualRows1591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1591=2892 := by core033_kernel_decide
theorem rows1592 : actualRows1592=WordField.canonicalRows actualModulus 1592 (.badd 1590 1591) := by core033_kernel_decide
theorem stats1592 : actualRows1592.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1592=5388 := by core033_kernel_decide
theorem rows1593 : actualRows1593=WordField.canonicalRows actualModulus 1593 (.bnot 1592) := by core033_kernel_decide
theorem stats1593 : actualRows1593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1593=6276 := by core033_kernel_decide
theorem rows1594 : actualRows1594=WordField.canonicalRows actualModulus 1594 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1594 : actualRows1594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1594=2820 := by core033_kernel_decide
theorem rows1595 : actualRows1595=WordField.canonicalRows actualModulus 1595 (.band 1593 1594) := by core033_kernel_decide
theorem stats1595 : actualRows1595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1595=5124 := by core033_kernel_decide
theorem rows1596 : actualRows1596=WordField.canonicalRows actualModulus 1596 (.bxor 1589 1595) := by core033_kernel_decide
theorem stats1596 : actualRows1596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1596=7428 := by core033_kernel_decide
theorem rows1597 : actualRows1597=WordField.canonicalRows actualModulus 1597 (.bnot 1288) := by core033_kernel_decide
theorem stats1597 : actualRows1597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1597=6276 := by core033_kernel_decide
theorem rows1598 : actualRows1598=WordField.canonicalRows actualModulus 1598 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1598 : actualRows1598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1598=2892 := by core033_kernel_decide
theorem rows1599 : actualRows1599=WordField.canonicalRows actualModulus 1599 (.badd 1597 1598) := by core033_kernel_decide
theorem stats1599 : actualRows1599.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1599=5388 := by core033_kernel_decide
theorem rows1600 : actualRows1600=WordField.canonicalRows actualModulus 1600 (.band 1599 1083) := by core033_kernel_decide
theorem stats1600 : actualRows1600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1600=5124 := by core033_kernel_decide
theorem rows1601 : actualRows1601=WordField.canonicalRows actualModulus 1601 (.bnot 1288) := by core033_kernel_decide
theorem stats1601 : actualRows1601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1601=6276 := by core033_kernel_decide
theorem rows1602 : actualRows1602=WordField.canonicalRows actualModulus 1602 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1602 : actualRows1602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1602=2892 := by core033_kernel_decide
theorem rows1603 : actualRows1603=WordField.canonicalRows actualModulus 1603 (.badd 1601 1602) := by core033_kernel_decide
theorem stats1603 : actualRows1603.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1603=5388 := by core033_kernel_decide
theorem rows1604 : actualRows1604=WordField.canonicalRows actualModulus 1604 (.bnot 1603) := by core033_kernel_decide
theorem stats1604 : actualRows1604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1604=6276 := by core033_kernel_decide
theorem rows1605 : actualRows1605=WordField.canonicalRows actualModulus 1605 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1605 : actualRows1605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1605=2820 := by core033_kernel_decide
theorem rows1606 : actualRows1606=WordField.canonicalRows actualModulus 1606 (.band 1604 1605) := by core033_kernel_decide
theorem stats1606 : actualRows1606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1606=5124 := by core033_kernel_decide
theorem rows1607 : actualRows1607=WordField.canonicalRows actualModulus 1607 (.bxor 1600 1606) := by core033_kernel_decide
theorem stats1607 : actualRows1607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1607=7428 := by core033_kernel_decide
theorem rows1608 : actualRows1608=WordField.canonicalRows actualModulus 1608 (.bnot 1288) := by core033_kernel_decide
theorem stats1608 : actualRows1608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1608=6276 := by core033_kernel_decide
theorem rows1609 : actualRows1609=WordField.canonicalRows actualModulus 1609 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1609 : actualRows1609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1609=2892 := by core033_kernel_decide
theorem rows1610 : actualRows1610=WordField.canonicalRows actualModulus 1610 (.badd 1608 1609) := by core033_kernel_decide
theorem stats1610 : actualRows1610.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1610=5388 := by core033_kernel_decide
theorem rows1611 : actualRows1611=WordField.canonicalRows actualModulus 1611 (.band 1610 1093) := by core033_kernel_decide
theorem stats1611 : actualRows1611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1611=5124 := by core033_kernel_decide
theorem rows1612 : actualRows1612=WordField.canonicalRows actualModulus 1612 (.bnot 1288) := by core033_kernel_decide
theorem stats1612 : actualRows1612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1612=6276 := by core033_kernel_decide
theorem rows1613 : actualRows1613=WordField.canonicalRows actualModulus 1613 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1613 : actualRows1613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1613=2892 := by core033_kernel_decide
theorem rows1614 : actualRows1614=WordField.canonicalRows actualModulus 1614 (.badd 1612 1613) := by core033_kernel_decide
theorem stats1614 : actualRows1614.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1614=5388 := by core033_kernel_decide
theorem rows1615 : actualRows1615=WordField.canonicalRows actualModulus 1615 (.bnot 1614) := by core033_kernel_decide
theorem stats1615 : actualRows1615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1615=6276 := by core033_kernel_decide
theorem rows1616 : actualRows1616=WordField.canonicalRows actualModulus 1616 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1616 : actualRows1616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1616=2820 := by core033_kernel_decide
theorem rows1617 : actualRows1617=WordField.canonicalRows actualModulus 1617 (.band 1615 1616) := by core033_kernel_decide
theorem stats1617 : actualRows1617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1617=5124 := by core033_kernel_decide
theorem rows1618 : actualRows1618=WordField.canonicalRows actualModulus 1618 (.bxor 1611 1617) := by core033_kernel_decide
theorem stats1618 : actualRows1618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1618=7428 := by core033_kernel_decide
theorem rows1619 : actualRows1619=WordField.canonicalRows actualModulus 1619 (.bnot 1288) := by core033_kernel_decide
theorem stats1619 : actualRows1619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1619=6276 := by core033_kernel_decide
theorem rows1620 : actualRows1620=WordField.canonicalRows actualModulus 1620 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1620 : actualRows1620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1620=2892 := by core033_kernel_decide
theorem rows1621 : actualRows1621=WordField.canonicalRows actualModulus 1621 (.badd 1619 1620) := by core033_kernel_decide
theorem stats1621 : actualRows1621.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1621=5388 := by core033_kernel_decide
theorem rows1622 : actualRows1622=WordField.canonicalRows actualModulus 1622 (.band 1621 1103) := by core033_kernel_decide
theorem stats1622 : actualRows1622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1622=5124 := by core033_kernel_decide
theorem rows1623 : actualRows1623=WordField.canonicalRows actualModulus 1623 (.bnot 1288) := by core033_kernel_decide
theorem stats1623 : actualRows1623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1623=6276 := by core033_kernel_decide
theorem rows1624 : actualRows1624=WordField.canonicalRows actualModulus 1624 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1624 : actualRows1624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1624=2892 := by core033_kernel_decide
theorem rows1625 : actualRows1625=WordField.canonicalRows actualModulus 1625 (.badd 1623 1624) := by core033_kernel_decide
theorem stats1625 : actualRows1625.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1625=5388 := by core033_kernel_decide
theorem rows1626 : actualRows1626=WordField.canonicalRows actualModulus 1626 (.bnot 1625) := by core033_kernel_decide
theorem stats1626 : actualRows1626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1626=6276 := by core033_kernel_decide
theorem rows1627 : actualRows1627=WordField.canonicalRows actualModulus 1627 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1627 : actualRows1627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1627=2820 := by core033_kernel_decide
theorem rows1628 : actualRows1628=WordField.canonicalRows actualModulus 1628 (.band 1626 1627) := by core033_kernel_decide
theorem stats1628 : actualRows1628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1628=5124 := by core033_kernel_decide
theorem rows1629 : actualRows1629=WordField.canonicalRows actualModulus 1629 (.bxor 1622 1628) := by core033_kernel_decide
theorem stats1629 : actualRows1629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1629=7428 := by core033_kernel_decide
theorem rows1630 : actualRows1630=WordField.canonicalRows actualModulus 1630 (.bnot 1288) := by core033_kernel_decide
theorem stats1630 : actualRows1630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1630=6276 := by core033_kernel_decide
theorem rows1631 : actualRows1631=WordField.canonicalRows actualModulus 1631 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1631 : actualRows1631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1631=2892 := by core033_kernel_decide
theorem rows1632 : actualRows1632=WordField.canonicalRows actualModulus 1632 (.badd 1630 1631) := by core033_kernel_decide
theorem stats1632 : actualRows1632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1632=5388 := by core033_kernel_decide
theorem rows1633 : actualRows1633=WordField.canonicalRows actualModulus 1633 (.band 1632 1123) := by core033_kernel_decide
theorem stats1633 : actualRows1633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1633=5124 := by core033_kernel_decide
theorem rows1634 : actualRows1634=WordField.canonicalRows actualModulus 1634 (.bnot 1288) := by core033_kernel_decide
theorem stats1634 : actualRows1634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1634=6276 := by core033_kernel_decide
theorem rows1635 : actualRows1635=WordField.canonicalRows actualModulus 1635 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1635 : actualRows1635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1635=2892 := by core033_kernel_decide
theorem rows1636 : actualRows1636=WordField.canonicalRows actualModulus 1636 (.badd 1634 1635) := by core033_kernel_decide
theorem stats1636 : actualRows1636.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1636=5388 := by core033_kernel_decide
theorem rows1637 : actualRows1637=WordField.canonicalRows actualModulus 1637 (.bnot 1636) := by core033_kernel_decide
theorem stats1637 : actualRows1637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1637=6276 := by core033_kernel_decide
theorem rows1638 : actualRows1638=WordField.canonicalRows actualModulus 1638 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1638 : actualRows1638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1638=2820 := by core033_kernel_decide
theorem rows1639 : actualRows1639=WordField.canonicalRows actualModulus 1639 (.band 1637 1638) := by core033_kernel_decide
theorem stats1639 : actualRows1639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1639=5124 := by core033_kernel_decide
theorem rows1640 : actualRows1640=WordField.canonicalRows actualModulus 1640 (.bxor 1633 1639) := by core033_kernel_decide
theorem stats1640 : actualRows1640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1640=7428 := by core033_kernel_decide
theorem rows1641 : actualRows1641=WordField.canonicalRows actualModulus 1641 (.bnot 1288) := by core033_kernel_decide
theorem stats1641 : actualRows1641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1641=6276 := by core033_kernel_decide
theorem rows1642 : actualRows1642=WordField.canonicalRows actualModulus 1642 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1642 : actualRows1642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1642=2892 := by core033_kernel_decide
theorem rows1643 : actualRows1643=WordField.canonicalRows actualModulus 1643 (.badd 1641 1642) := by core033_kernel_decide
theorem stats1643 : actualRows1643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1643=5388 := by core033_kernel_decide
theorem rows1644 : actualRows1644=WordField.canonicalRows actualModulus 1644 (.band 1643 1134) := by core033_kernel_decide
theorem stats1644 : actualRows1644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1644=5124 := by core033_kernel_decide
theorem rows1645 : actualRows1645=WordField.canonicalRows actualModulus 1645 (.bnot 1288) := by core033_kernel_decide
theorem stats1645 : actualRows1645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1645=6276 := by core033_kernel_decide
theorem rows1646 : actualRows1646=WordField.canonicalRows actualModulus 1646 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1646 : actualRows1646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1646=2892 := by core033_kernel_decide
theorem rows1647 : actualRows1647=WordField.canonicalRows actualModulus 1647 (.badd 1645 1646) := by core033_kernel_decide
theorem stats1647 : actualRows1647.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1647=5388 := by core033_kernel_decide
theorem rows1648 : actualRows1648=WordField.canonicalRows actualModulus 1648 (.bnot 1647) := by core033_kernel_decide
theorem stats1648 : actualRows1648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1648=6276 := by core033_kernel_decide
theorem rows1649 : actualRows1649=WordField.canonicalRows actualModulus 1649 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1649 : actualRows1649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1649=2820 := by core033_kernel_decide
theorem rows1650 : actualRows1650=WordField.canonicalRows actualModulus 1650 (.band 1648 1649) := by core033_kernel_decide
theorem stats1650 : actualRows1650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1650=5124 := by core033_kernel_decide
theorem rows1651 : actualRows1651=WordField.canonicalRows actualModulus 1651 (.bxor 1644 1650) := by core033_kernel_decide
theorem stats1651 : actualRows1651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1651=7428 := by core033_kernel_decide
theorem rows1652 : actualRows1652=WordField.canonicalRows actualModulus 1652 (.bnot 1288) := by core033_kernel_decide
theorem stats1652 : actualRows1652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1652=6276 := by core033_kernel_decide
theorem rows1653 : actualRows1653=WordField.canonicalRows actualModulus 1653 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1653 : actualRows1653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1653=2892 := by core033_kernel_decide
def partRows23 : List R1CS.Row := actualRows1590++actualRows1591++actualRows1592++actualRows1593++actualRows1594++actualRows1595++actualRows1596++actualRows1597++actualRows1598++actualRows1599++actualRows1600++actualRows1601++actualRows1602++actualRows1603++actualRows1604++actualRows1605++actualRows1606++actualRows1607++actualRows1608++actualRows1609++actualRows1610++actualRows1611++actualRows1612++actualRows1613++actualRows1614++actualRows1615++actualRows1616++actualRows1617++actualRows1618++actualRows1619++actualRows1620++actualRows1621++actualRows1622++actualRows1623++actualRows1624++actualRows1625++actualRows1626++actualRows1627++actualRows1628++actualRows1629++actualRows1630++actualRows1631++actualRows1632++actualRows1633++actualRows1634++actualRows1635++actualRows1636++actualRows1637++actualRows1638++actualRows1639++actualRows1640++actualRows1641++actualRows1642++actualRows1643++actualRows1644++actualRows1645++actualRows1646++actualRows1647++actualRows1648++actualRows1649++actualRows1650++actualRows1651++actualRows1652++actualRows1653
def partOps23 : List WordIR.Op := [.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1590 1591,.bnot 1592,.literal (BitVec.ofNat 32 0),.band 1593 1594,.bxor 1589 1595,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1597 1598,.band 1599 1083,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1601 1602,.bnot 1603,.literal (BitVec.ofNat 32 0),.band 1604 1605,.bxor 1600 1606,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1608 1609,.band 1610 1093,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1612 1613,.bnot 1614,.literal (BitVec.ofNat 32 0),.band 1615 1616,.bxor 1611 1617,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1619 1620,.band 1621 1103,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1623 1624,.bnot 1625,.literal (BitVec.ofNat 32 0),.band 1626 1627,.bxor 1622 1628,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1630 1631,.band 1632 1123,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1634 1635,.bnot 1636,.literal (BitVec.ofNat 32 0),.band 1637 1638,.bxor 1633 1639,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1641 1642,.band 1643 1134,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1645 1646,.bnot 1647,.literal (BitVec.ofNat 32 0),.band 1648 1649,.bxor 1644 1650,.bnot 1288,.literal (BitVec.ofNat 32 1)]
theorem partExact23 : partRows23=WordField.rows actualModulus 1590 partOps23 := by
  simp only [partRows23,partOps23,WordField.rows,rows1590,rows1591,rows1592,rows1593,rows1594,rows1595,rows1596,rows1597,rows1598,rows1599,rows1600,rows1601,rows1602,rows1603,rows1604,rows1605,rows1606,rows1607,rows1608,rows1609,rows1610,rows1611,rows1612,rows1613,rows1614,rows1615,rows1616,rows1617,rows1618,rows1619,rows1620,rows1621,rows1622,rows1623,rows1624,rows1625,rows1626,rows1627,rows1628,rows1629,rows1630,rows1631,rows1632,rows1633,rows1634,rows1635,rows1636,rows1637,rows1638,rows1639,rows1640,rows1641,rows1642,rows1643,rows1644,rows1645,rows1646,rows1647,rows1648,rows1649,rows1650,rows1651,rows1652,rows1653,List.append_assoc,List.append_nil]
theorem partLength23 : partOps23.length=64 := by decide
theorem partStats23 : partRows23.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows23=324792 := by
  simp only [partRows23,List.length_append,MatrixRowBlocks.rows_weight_append,stats1590.1,stats1590.2,stats1591.1,stats1591.2,stats1592.1,stats1592.2,stats1593.1,stats1593.2,stats1594.1,stats1594.2,stats1595.1,stats1595.2,stats1596.1,stats1596.2,stats1597.1,stats1597.2,stats1598.1,stats1598.2,stats1599.1,stats1599.2,stats1600.1,stats1600.2,stats1601.1,stats1601.2,stats1602.1,stats1602.2,stats1603.1,stats1603.2,stats1604.1,stats1604.2,stats1605.1,stats1605.2,stats1606.1,stats1606.2,stats1607.1,stats1607.2,stats1608.1,stats1608.2,stats1609.1,stats1609.2,stats1610.1,stats1610.2,stats1611.1,stats1611.2,stats1612.1,stats1612.2,stats1613.1,stats1613.2,stats1614.1,stats1614.2,stats1615.1,stats1615.2,stats1616.1,stats1616.2,stats1617.1,stats1617.2,stats1618.1,stats1618.2,stats1619.1,stats1619.2,stats1620.1,stats1620.2,stats1621.1,stats1621.2,stats1622.1,stats1622.2,stats1623.1,stats1623.2,stats1624.1,stats1624.2,stats1625.1,stats1625.2,stats1626.1,stats1626.2,stats1627.1,stats1627.2,stats1628.1,stats1628.2,stats1629.1,stats1629.2,stats1630.1,stats1630.2,stats1631.1,stats1631.2,stats1632.1,stats1632.2,stats1633.1,stats1633.2,stats1634.1,stats1634.2,stats1635.1,stats1635.2,stats1636.1,stats1636.2,stats1637.1,stats1637.2,stats1638.1,stats1638.2,stats1639.1,stats1639.2,stats1640.1,stats1640.2,stats1641.1,stats1641.2,stats1642.1,stats1642.2,stats1643.1,stats1643.2,stats1644.1,stats1644.2,stats1645.1,stats1645.2,stats1646.1,stats1646.2,stats1647.1,stats1647.2,stats1648.1,stats1648.2,stats1649.1,stats1649.2,stats1650.1,stats1650.2,stats1651.1,stats1651.2,stats1652.1,stats1652.2,stats1653.1,stats1653.2]
  decide
end AuthenticatedBranchRoundCheckedRows
