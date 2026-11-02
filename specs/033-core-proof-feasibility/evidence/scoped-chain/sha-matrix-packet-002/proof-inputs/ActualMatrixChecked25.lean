import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData25
import ActualMatrixData26
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1624 : actualRows1624=WordField.canonicalRows actualModulus 1624 (.bxor 1622 1623) := by core033_kernel_decide
theorem stats1624 : actualRows1624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1624=7428 := by core033_kernel_decide
theorem rows1625 : actualRows1625=WordField.canonicalRows actualModulus 1625 (.badd 1538 1624) := by core033_kernel_decide
theorem stats1625 : actualRows1625.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1625=5388 := by core033_kernel_decide
theorem rows1626 : actualRows1626=WordField.canonicalRows actualModulus 1626 (.band 1619 1592) := by core033_kernel_decide
theorem stats1626 : actualRows1626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1626=5124 := by core033_kernel_decide
theorem rows1627 : actualRows1627=WordField.canonicalRows actualModulus 1627 (.bnot 1619) := by core033_kernel_decide
theorem stats1627 : actualRows1627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1627=6276 := by core033_kernel_decide
theorem rows1628 : actualRows1628=WordField.canonicalRows actualModulus 1628 (.band 1627 1565) := by core033_kernel_decide
theorem stats1628 : actualRows1628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1628=5124 := by core033_kernel_decide
theorem rows1629 : actualRows1629=WordField.canonicalRows actualModulus 1629 (.bxor 1626 1628) := by core033_kernel_decide
theorem stats1629 : actualRows1629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1629=7428 := by core033_kernel_decide
theorem rows1630 : actualRows1630=WordField.canonicalRows actualModulus 1630 (.badd 1625 1629) := by core033_kernel_decide
theorem stats1630 : actualRows1630.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1630=5388 := by core033_kernel_decide
theorem rows1631 : actualRows1631=WordField.canonicalRows actualModulus 1631 (.literal (BitVec.ofNat 32 1695183700)) := by core033_kernel_decide
theorem stats1631 : actualRows1631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1631=3828 := by core033_kernel_decide
theorem rows1632 : actualRows1632=WordField.canonicalRows actualModulus 1632 (.badd 1630 1631) := by core033_kernel_decide
theorem stats1632 : actualRows1632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1632=5388 := by core033_kernel_decide
theorem rows1633 : actualRows1633=WordField.canonicalRows actualModulus 1633 (.badd 1632 296) := by core033_kernel_decide
theorem stats1633 : actualRows1633.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1633=5388 := by core033_kernel_decide
theorem rows1634 : actualRows1634=WordField.canonicalRows actualModulus 1634 (.rotr 1618 2) := by core033_kernel_decide
theorem stats1634 : actualRows1634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1634=5124 := by core033_kernel_decide
theorem rows1635 : actualRows1635=WordField.canonicalRows actualModulus 1635 (.rotr 1618 13) := by core033_kernel_decide
theorem stats1635 : actualRows1635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1635=5124 := by core033_kernel_decide
theorem rows1636 : actualRows1636=WordField.canonicalRows actualModulus 1636 (.bxor 1634 1635) := by core033_kernel_decide
theorem stats1636 : actualRows1636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1636=7428 := by core033_kernel_decide
theorem rows1637 : actualRows1637=WordField.canonicalRows actualModulus 1637 (.rotr 1618 22) := by core033_kernel_decide
theorem stats1637 : actualRows1637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1637=5124 := by core033_kernel_decide
theorem rows1638 : actualRows1638=WordField.canonicalRows actualModulus 1638 (.bxor 1636 1637) := by core033_kernel_decide
theorem stats1638 : actualRows1638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1638=7428 := by core033_kernel_decide
theorem rows1639 : actualRows1639=WordField.canonicalRows actualModulus 1639 (.band 1618 1591) := by core033_kernel_decide
theorem stats1639 : actualRows1639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1639=5124 := by core033_kernel_decide
theorem rows1640 : actualRows1640=WordField.canonicalRows actualModulus 1640 (.band 1618 1564) := by core033_kernel_decide
theorem stats1640 : actualRows1640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1640=5124 := by core033_kernel_decide
theorem rows1641 : actualRows1641=WordField.canonicalRows actualModulus 1641 (.bxor 1639 1640) := by core033_kernel_decide
theorem stats1641 : actualRows1641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1641=7428 := by core033_kernel_decide
theorem rows1642 : actualRows1642=WordField.canonicalRows actualModulus 1642 (.band 1591 1564) := by core033_kernel_decide
theorem stats1642 : actualRows1642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1642=5124 := by core033_kernel_decide
theorem rows1643 : actualRows1643=WordField.canonicalRows actualModulus 1643 (.bxor 1641 1642) := by core033_kernel_decide
theorem stats1643 : actualRows1643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1643=7428 := by core033_kernel_decide
theorem rows1644 : actualRows1644=WordField.canonicalRows actualModulus 1644 (.badd 1638 1643) := by core033_kernel_decide
theorem stats1644 : actualRows1644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1644=5388 := by core033_kernel_decide
theorem rows1645 : actualRows1645=WordField.canonicalRows actualModulus 1645 (.badd 1633 1644) := by core033_kernel_decide
theorem stats1645 : actualRows1645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1645=5388 := by core033_kernel_decide
theorem rows1646 : actualRows1646=WordField.canonicalRows actualModulus 1646 (.badd 1537 1633) := by core033_kernel_decide
theorem stats1646 : actualRows1646.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1646=5388 := by core033_kernel_decide
theorem rows1647 : actualRows1647=WordField.canonicalRows actualModulus 1647 (.rotr 1646 6) := by core033_kernel_decide
theorem stats1647 : actualRows1647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1647=5124 := by core033_kernel_decide
theorem rows1648 : actualRows1648=WordField.canonicalRows actualModulus 1648 (.rotr 1646 11) := by core033_kernel_decide
theorem stats1648 : actualRows1648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1648=5124 := by core033_kernel_decide
theorem rows1649 : actualRows1649=WordField.canonicalRows actualModulus 1649 (.bxor 1647 1648) := by core033_kernel_decide
theorem stats1649 : actualRows1649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1649=7428 := by core033_kernel_decide
theorem rows1650 : actualRows1650=WordField.canonicalRows actualModulus 1650 (.rotr 1646 25) := by core033_kernel_decide
theorem stats1650 : actualRows1650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1650=5124 := by core033_kernel_decide
theorem rows1651 : actualRows1651=WordField.canonicalRows actualModulus 1651 (.bxor 1649 1650) := by core033_kernel_decide
theorem stats1651 : actualRows1651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1651=7428 := by core033_kernel_decide
theorem rows1652 : actualRows1652=WordField.canonicalRows actualModulus 1652 (.badd 1565 1651) := by core033_kernel_decide
theorem stats1652 : actualRows1652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1652=5388 := by core033_kernel_decide
theorem rows1653 : actualRows1653=WordField.canonicalRows actualModulus 1653 (.band 1646 1619) := by core033_kernel_decide
theorem stats1653 : actualRows1653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1653=5124 := by core033_kernel_decide
theorem rows1654 : actualRows1654=WordField.canonicalRows actualModulus 1654 (.bnot 1646) := by core033_kernel_decide
theorem stats1654 : actualRows1654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1654=6276 := by core033_kernel_decide
theorem rows1655 : actualRows1655=WordField.canonicalRows actualModulus 1655 (.band 1654 1592) := by core033_kernel_decide
theorem stats1655 : actualRows1655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1655=5124 := by core033_kernel_decide
theorem rows1656 : actualRows1656=WordField.canonicalRows actualModulus 1656 (.bxor 1653 1655) := by core033_kernel_decide
theorem stats1656 : actualRows1656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1656=7428 := by core033_kernel_decide
theorem rows1657 : actualRows1657=WordField.canonicalRows actualModulus 1657 (.badd 1652 1656) := by core033_kernel_decide
theorem stats1657 : actualRows1657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1657=5388 := by core033_kernel_decide
theorem rows1658 : actualRows1658=WordField.canonicalRows actualModulus 1658 (.literal (BitVec.ofNat 32 1986661051)) := by core033_kernel_decide
theorem stats1658 : actualRows1658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1658=4044 := by core033_kernel_decide
theorem rows1659 : actualRows1659=WordField.canonicalRows actualModulus 1659 (.badd 1657 1658) := by core033_kernel_decide
theorem stats1659 : actualRows1659.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1659=5388 := by core033_kernel_decide
theorem rows1660 : actualRows1660=WordField.canonicalRows actualModulus 1660 (.badd 1659 309) := by core033_kernel_decide
theorem stats1660 : actualRows1660.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1660=5388 := by core033_kernel_decide
theorem rows1661 : actualRows1661=WordField.canonicalRows actualModulus 1661 (.rotr 1645 2) := by core033_kernel_decide
theorem stats1661 : actualRows1661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1661=5124 := by core033_kernel_decide
theorem rows1662 : actualRows1662=WordField.canonicalRows actualModulus 1662 (.rotr 1645 13) := by core033_kernel_decide
theorem stats1662 : actualRows1662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1662=5124 := by core033_kernel_decide
theorem rows1663 : actualRows1663=WordField.canonicalRows actualModulus 1663 (.bxor 1661 1662) := by core033_kernel_decide
theorem stats1663 : actualRows1663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1663=7428 := by core033_kernel_decide
theorem rows1664 : actualRows1664=WordField.canonicalRows actualModulus 1664 (.rotr 1645 22) := by core033_kernel_decide
theorem stats1664 : actualRows1664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1664=5124 := by core033_kernel_decide
theorem rows1665 : actualRows1665=WordField.canonicalRows actualModulus 1665 (.bxor 1663 1664) := by core033_kernel_decide
theorem stats1665 : actualRows1665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1665=7428 := by core033_kernel_decide
theorem rows1666 : actualRows1666=WordField.canonicalRows actualModulus 1666 (.band 1645 1618) := by core033_kernel_decide
theorem stats1666 : actualRows1666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1666=5124 := by core033_kernel_decide
theorem rows1667 : actualRows1667=WordField.canonicalRows actualModulus 1667 (.band 1645 1591) := by core033_kernel_decide
theorem stats1667 : actualRows1667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1667=5124 := by core033_kernel_decide
theorem rows1668 : actualRows1668=WordField.canonicalRows actualModulus 1668 (.bxor 1666 1667) := by core033_kernel_decide
theorem stats1668 : actualRows1668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1668=7428 := by core033_kernel_decide
theorem rows1669 : actualRows1669=WordField.canonicalRows actualModulus 1669 (.band 1618 1591) := by core033_kernel_decide
theorem stats1669 : actualRows1669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1669=5124 := by core033_kernel_decide
theorem rows1670 : actualRows1670=WordField.canonicalRows actualModulus 1670 (.bxor 1668 1669) := by core033_kernel_decide
theorem stats1670 : actualRows1670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1670=7428 := by core033_kernel_decide
theorem rows1671 : actualRows1671=WordField.canonicalRows actualModulus 1671 (.badd 1665 1670) := by core033_kernel_decide
theorem stats1671 : actualRows1671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1671=5388 := by core033_kernel_decide
theorem rows1672 : actualRows1672=WordField.canonicalRows actualModulus 1672 (.badd 1660 1671) := by core033_kernel_decide
theorem stats1672 : actualRows1672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1672=5388 := by core033_kernel_decide
theorem rows1673 : actualRows1673=WordField.canonicalRows actualModulus 1673 (.badd 1564 1660) := by core033_kernel_decide
theorem stats1673 : actualRows1673.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1673=5388 := by core033_kernel_decide
theorem rows1674 : actualRows1674=WordField.canonicalRows actualModulus 1674 (.rotr 1673 6) := by core033_kernel_decide
theorem stats1674 : actualRows1674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1674=5124 := by core033_kernel_decide
theorem rows1675 : actualRows1675=WordField.canonicalRows actualModulus 1675 (.rotr 1673 11) := by core033_kernel_decide
theorem stats1675 : actualRows1675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1675=5124 := by core033_kernel_decide
theorem rows1676 : actualRows1676=WordField.canonicalRows actualModulus 1676 (.bxor 1674 1675) := by core033_kernel_decide
theorem stats1676 : actualRows1676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1676=7428 := by core033_kernel_decide
theorem rows1677 : actualRows1677=WordField.canonicalRows actualModulus 1677 (.rotr 1673 25) := by core033_kernel_decide
theorem stats1677 : actualRows1677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1677=5124 := by core033_kernel_decide
theorem rows1678 : actualRows1678=WordField.canonicalRows actualModulus 1678 (.bxor 1676 1677) := by core033_kernel_decide
theorem stats1678 : actualRows1678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1678=7428 := by core033_kernel_decide
theorem rows1679 : actualRows1679=WordField.canonicalRows actualModulus 1679 (.badd 1592 1678) := by core033_kernel_decide
theorem stats1679 : actualRows1679.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1679=5388 := by core033_kernel_decide
theorem rows1680 : actualRows1680=WordField.canonicalRows actualModulus 1680 (.band 1673 1646) := by core033_kernel_decide
theorem stats1680 : actualRows1680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1680=5124 := by core033_kernel_decide
theorem rows1681 : actualRows1681=WordField.canonicalRows actualModulus 1681 (.bnot 1673) := by core033_kernel_decide
theorem stats1681 : actualRows1681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1681=6276 := by core033_kernel_decide
theorem rows1682 : actualRows1682=WordField.canonicalRows actualModulus 1682 (.band 1681 1619) := by core033_kernel_decide
theorem stats1682 : actualRows1682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1682=5124 := by core033_kernel_decide
theorem rows1683 : actualRows1683=WordField.canonicalRows actualModulus 1683 (.bxor 1680 1682) := by core033_kernel_decide
theorem stats1683 : actualRows1683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1683=7428 := by core033_kernel_decide
theorem rows1684 : actualRows1684=WordField.canonicalRows actualModulus 1684 (.badd 1679 1683) := by core033_kernel_decide
theorem stats1684 : actualRows1684.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1684=5388 := by core033_kernel_decide
theorem rows1685 : actualRows1685=WordField.canonicalRows actualModulus 1685 (.literal (BitVec.ofNat 32 2177026350)) := by core033_kernel_decide
theorem stats1685 : actualRows1685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1685=3756 := by core033_kernel_decide
theorem rows1686 : actualRows1686=WordField.canonicalRows actualModulus 1686 (.badd 1684 1685) := by core033_kernel_decide
theorem stats1686 : actualRows1686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1686=5388 := by core033_kernel_decide
theorem rows1687 : actualRows1687=WordField.canonicalRows actualModulus 1687 (.badd 1686 322) := by core033_kernel_decide
theorem stats1687 : actualRows1687.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1687=5388 := by core033_kernel_decide
def partRows25 : List R1CS.Row := actualRows1624++actualRows1625++actualRows1626++actualRows1627++actualRows1628++actualRows1629++actualRows1630++actualRows1631++actualRows1632++actualRows1633++actualRows1634++actualRows1635++actualRows1636++actualRows1637++actualRows1638++actualRows1639++actualRows1640++actualRows1641++actualRows1642++actualRows1643++actualRows1644++actualRows1645++actualRows1646++actualRows1647++actualRows1648++actualRows1649++actualRows1650++actualRows1651++actualRows1652++actualRows1653++actualRows1654++actualRows1655++actualRows1656++actualRows1657++actualRows1658++actualRows1659++actualRows1660++actualRows1661++actualRows1662++actualRows1663++actualRows1664++actualRows1665++actualRows1666++actualRows1667++actualRows1668++actualRows1669++actualRows1670++actualRows1671++actualRows1672++actualRows1673++actualRows1674++actualRows1675++actualRows1676++actualRows1677++actualRows1678++actualRows1679++actualRows1680++actualRows1681++actualRows1682++actualRows1683++actualRows1684++actualRows1685++actualRows1686++actualRows1687
def partOps25 : List WordIR.Op := [.bxor 1622 1623,.badd 1538 1624,.band 1619 1592,.bnot 1619,.band 1627 1565,.bxor 1626 1628,.badd 1625 1629,.literal (BitVec.ofNat 32 1695183700),.badd 1630 1631,.badd 1632 296,.rotr 1618 2,.rotr 1618 13,.bxor 1634 1635,.rotr 1618 22,.bxor 1636 1637,.band 1618 1591,.band 1618 1564,.bxor 1639 1640,.band 1591 1564,.bxor 1641 1642,.badd 1638 1643,.badd 1633 1644,.badd 1537 1633,.rotr 1646 6,.rotr 1646 11,.bxor 1647 1648,.rotr 1646 25,.bxor 1649 1650,.badd 1565 1651,.band 1646 1619,.bnot 1646,.band 1654 1592,.bxor 1653 1655,.badd 1652 1656,.literal (BitVec.ofNat 32 1986661051),.badd 1657 1658,.badd 1659 309,.rotr 1645 2,.rotr 1645 13,.bxor 1661 1662,.rotr 1645 22,.bxor 1663 1664,.band 1645 1618,.band 1645 1591,.bxor 1666 1667,.band 1618 1591,.bxor 1668 1669,.badd 1665 1670,.badd 1660 1671,.badd 1564 1660,.rotr 1673 6,.rotr 1673 11,.bxor 1674 1675,.rotr 1673 25,.bxor 1676 1677,.badd 1592 1678,.band 1673 1646,.bnot 1673,.band 1681 1619,.bxor 1680 1682,.badd 1679 1683,.literal (BitVec.ofNat 32 2177026350),.badd 1684 1685,.badd 1686 322]
theorem partRowsExact25 : partRows25=WordField.rows actualModulus 1624 partOps25 := by
  simp only [partRows25,partOps25,WordField.rows,rows1624,rows1625,rows1626,rows1627,rows1628,rows1629,rows1630,rows1631,rows1632,rows1633,rows1634,rows1635,rows1636,rows1637,rows1638,rows1639,rows1640,rows1641,rows1642,rows1643,rows1644,rows1645,rows1646,rows1647,rows1648,rows1649,rows1650,rows1651,rows1652,rows1653,rows1654,rows1655,rows1656,rows1657,rows1658,rows1659,rows1660,rows1661,rows1662,rows1663,rows1664,rows1665,rows1666,rows1667,rows1668,rows1669,rows1670,rows1671,rows1672,rows1673,rows1674,rows1675,rows1676,rows1677,rows1678,rows1679,rows1680,rows1681,rows1682,rows1683,rows1684,rows1685,rows1686,rows1687,List.append_assoc,List.append_nil]
theorem partOpsLength25 : partOps25.length=64 := by decide
theorem partStats25 : partRows25.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows25=369264 := by
  simp only [partRows25,List.length_append,MatrixRowBlocks.rows_weight_append,stats1624.1,stats1624.2,stats1625.1,stats1625.2,stats1626.1,stats1626.2,stats1627.1,stats1627.2,stats1628.1,stats1628.2,stats1629.1,stats1629.2,stats1630.1,stats1630.2,stats1631.1,stats1631.2,stats1632.1,stats1632.2,stats1633.1,stats1633.2,stats1634.1,stats1634.2,stats1635.1,stats1635.2,stats1636.1,stats1636.2,stats1637.1,stats1637.2,stats1638.1,stats1638.2,stats1639.1,stats1639.2,stats1640.1,stats1640.2,stats1641.1,stats1641.2,stats1642.1,stats1642.2,stats1643.1,stats1643.2,stats1644.1,stats1644.2,stats1645.1,stats1645.2,stats1646.1,stats1646.2,stats1647.1,stats1647.2,stats1648.1,stats1648.2,stats1649.1,stats1649.2,stats1650.1,stats1650.2,stats1651.1,stats1651.2,stats1652.1,stats1652.2,stats1653.1,stats1653.2,stats1654.1,stats1654.2,stats1655.1,stats1655.2,stats1656.1,stats1656.2,stats1657.1,stats1657.2,stats1658.1,stats1658.2,stats1659.1,stats1659.2,stats1660.1,stats1660.2,stats1661.1,stats1661.2,stats1662.1,stats1662.2,stats1663.1,stats1663.2,stats1664.1,stats1664.2,stats1665.1,stats1665.2,stats1666.1,stats1666.2,stats1667.1,stats1667.2,stats1668.1,stats1668.2,stats1669.1,stats1669.2,stats1670.1,stats1670.2,stats1671.1,stats1671.2,stats1672.1,stats1672.2,stats1673.1,stats1673.2,stats1674.1,stats1674.2,stats1675.1,stats1675.2,stats1676.1,stats1676.2,stats1677.1,stats1677.2,stats1678.1,stats1678.2,stats1679.1,stats1679.2,stats1680.1,stats1680.2,stats1681.1,stats1681.2,stats1682.1,stats1682.2,stats1683.1,stats1683.2,stats1684.1,stats1684.2,stats1685.1,stats1685.2,stats1686.1,stats1686.2,stats1687.1,stats1687.2]
  decide
end ActualSHAMatrixRows
