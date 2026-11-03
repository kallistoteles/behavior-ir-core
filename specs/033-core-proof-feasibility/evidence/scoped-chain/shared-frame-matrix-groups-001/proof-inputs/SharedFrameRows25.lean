import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData25
import SharedFrameInstructionMatrixData26
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1643 : actualRows1643=WordField.canonicalRows actualModulus 1643 (.bxor 1641 1642) := by core033_kernel_decide
theorem stats1643 : actualRows1643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1643=7428 := by core033_kernel_decide
theorem rows1644 : actualRows1644=WordField.canonicalRows actualModulus 1644 (.badd 1638 1643) := by core033_kernel_decide
theorem stats1644 : actualRows1644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1644=5388 := by core033_kernel_decide
theorem rows1645 : actualRows1645=WordField.canonicalRows actualModulus 1645 (.badd 1644 910) := by core033_kernel_decide
theorem stats1645 : actualRows1645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1645=5388 := by core033_kernel_decide
theorem rows1646 : actualRows1646=WordField.canonicalRows actualModulus 1646 (.rotr 1632 17) := by core033_kernel_decide
theorem stats1646 : actualRows1646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1646=5124 := by core033_kernel_decide
theorem rows1647 : actualRows1647=WordField.canonicalRows actualModulus 1647 (.rotr 1632 19) := by core033_kernel_decide
theorem stats1647 : actualRows1647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1647=5124 := by core033_kernel_decide
theorem rows1648 : actualRows1648=WordField.canonicalRows actualModulus 1648 (.bxor 1646 1647) := by core033_kernel_decide
theorem stats1648 : actualRows1648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1648=7428 := by core033_kernel_decide
theorem rows1649 : actualRows1649=WordField.canonicalRows actualModulus 1649 (.shr 1632 10) := by core033_kernel_decide
theorem stats1649 : actualRows1649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1649=4404 := by core033_kernel_decide
theorem rows1650 : actualRows1650=WordField.canonicalRows actualModulus 1650 (.bxor 1648 1649) := by core033_kernel_decide
theorem stats1650 : actualRows1650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1650=7428 := by core033_kernel_decide
theorem rows1651 : actualRows1651=WordField.canonicalRows actualModulus 1651 (.badd 1650 1567) := by core033_kernel_decide
theorem stats1651 : actualRows1651.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1651=5388 := by core033_kernel_decide
theorem rows1652 : actualRows1652=WordField.canonicalRows actualModulus 1652 (.rotr 922 7) := by core033_kernel_decide
theorem stats1652 : actualRows1652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1652=5124 := by core033_kernel_decide
theorem rows1653 : actualRows1653=WordField.canonicalRows actualModulus 1653 (.rotr 922 18) := by core033_kernel_decide
theorem stats1653 : actualRows1653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1653=5124 := by core033_kernel_decide
theorem rows1654 : actualRows1654=WordField.canonicalRows actualModulus 1654 (.bxor 1652 1653) := by core033_kernel_decide
theorem stats1654 : actualRows1654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1654=7428 := by core033_kernel_decide
theorem rows1655 : actualRows1655=WordField.canonicalRows actualModulus 1655 (.shr 922 3) := by core033_kernel_decide
theorem stats1655 : actualRows1655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1655=4908 := by core033_kernel_decide
theorem rows1656 : actualRows1656=WordField.canonicalRows actualModulus 1656 (.bxor 1654 1655) := by core033_kernel_decide
theorem stats1656 : actualRows1656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1656=7428 := by core033_kernel_decide
theorem rows1657 : actualRows1657=WordField.canonicalRows actualModulus 1657 (.badd 1651 1656) := by core033_kernel_decide
theorem stats1657 : actualRows1657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1657=5388 := by core033_kernel_decide
theorem rows1658 : actualRows1658=WordField.canonicalRows actualModulus 1658 (.badd 1657 916) := by core033_kernel_decide
theorem stats1658 : actualRows1658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1658=5388 := by core033_kernel_decide
theorem rows1659 : actualRows1659=WordField.canonicalRows actualModulus 1659 (.rotr 1645 17) := by core033_kernel_decide
theorem stats1659 : actualRows1659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1659=5124 := by core033_kernel_decide
theorem rows1660 : actualRows1660=WordField.canonicalRows actualModulus 1660 (.rotr 1645 19) := by core033_kernel_decide
theorem stats1660 : actualRows1660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1660=5124 := by core033_kernel_decide
theorem rows1661 : actualRows1661=WordField.canonicalRows actualModulus 1661 (.bxor 1659 1660) := by core033_kernel_decide
theorem stats1661 : actualRows1661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1661=7428 := by core033_kernel_decide
theorem rows1662 : actualRows1662=WordField.canonicalRows actualModulus 1662 (.shr 1645 10) := by core033_kernel_decide
theorem stats1662 : actualRows1662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1662=4404 := by core033_kernel_decide
theorem rows1663 : actualRows1663=WordField.canonicalRows actualModulus 1663 (.bxor 1661 1662) := by core033_kernel_decide
theorem stats1663 : actualRows1663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1663=7428 := by core033_kernel_decide
theorem rows1664 : actualRows1664=WordField.canonicalRows actualModulus 1664 (.badd 1663 1580) := by core033_kernel_decide
theorem stats1664 : actualRows1664.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1664=5388 := by core033_kernel_decide
theorem rows1665 : actualRows1665=WordField.canonicalRows actualModulus 1665 (.rotr 928 7) := by core033_kernel_decide
theorem stats1665 : actualRows1665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1665=5124 := by core033_kernel_decide
theorem rows1666 : actualRows1666=WordField.canonicalRows actualModulus 1666 (.rotr 928 18) := by core033_kernel_decide
theorem stats1666 : actualRows1666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1666=5124 := by core033_kernel_decide
theorem rows1667 : actualRows1667=WordField.canonicalRows actualModulus 1667 (.bxor 1665 1666) := by core033_kernel_decide
theorem stats1667 : actualRows1667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1667=7428 := by core033_kernel_decide
theorem rows1668 : actualRows1668=WordField.canonicalRows actualModulus 1668 (.shr 928 3) := by core033_kernel_decide
theorem stats1668 : actualRows1668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1668=4908 := by core033_kernel_decide
theorem rows1669 : actualRows1669=WordField.canonicalRows actualModulus 1669 (.bxor 1667 1668) := by core033_kernel_decide
theorem stats1669 : actualRows1669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1669=7428 := by core033_kernel_decide
theorem rows1670 : actualRows1670=WordField.canonicalRows actualModulus 1670 (.badd 1664 1669) := by core033_kernel_decide
theorem stats1670 : actualRows1670.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1670=5388 := by core033_kernel_decide
theorem rows1671 : actualRows1671=WordField.canonicalRows actualModulus 1671 (.badd 1670 922) := by core033_kernel_decide
theorem stats1671 : actualRows1671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1671=5388 := by core033_kernel_decide
theorem rows1672 : actualRows1672=WordField.canonicalRows actualModulus 1672 (.rotr 1658 17) := by core033_kernel_decide
theorem stats1672 : actualRows1672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1672=5124 := by core033_kernel_decide
theorem rows1673 : actualRows1673=WordField.canonicalRows actualModulus 1673 (.rotr 1658 19) := by core033_kernel_decide
theorem stats1673 : actualRows1673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1673=5124 := by core033_kernel_decide
theorem rows1674 : actualRows1674=WordField.canonicalRows actualModulus 1674 (.bxor 1672 1673) := by core033_kernel_decide
theorem stats1674 : actualRows1674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1674=7428 := by core033_kernel_decide
theorem rows1675 : actualRows1675=WordField.canonicalRows actualModulus 1675 (.shr 1658 10) := by core033_kernel_decide
theorem stats1675 : actualRows1675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1675=4404 := by core033_kernel_decide
theorem rows1676 : actualRows1676=WordField.canonicalRows actualModulus 1676 (.bxor 1674 1675) := by core033_kernel_decide
theorem stats1676 : actualRows1676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1676=7428 := by core033_kernel_decide
theorem rows1677 : actualRows1677=WordField.canonicalRows actualModulus 1677 (.badd 1676 1593) := by core033_kernel_decide
theorem stats1677 : actualRows1677.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1677=5388 := by core033_kernel_decide
theorem rows1678 : actualRows1678=WordField.canonicalRows actualModulus 1678 (.rotr 934 7) := by core033_kernel_decide
theorem stats1678 : actualRows1678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1678=5124 := by core033_kernel_decide
theorem rows1679 : actualRows1679=WordField.canonicalRows actualModulus 1679 (.rotr 934 18) := by core033_kernel_decide
theorem stats1679 : actualRows1679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1679=5124 := by core033_kernel_decide
theorem rows1680 : actualRows1680=WordField.canonicalRows actualModulus 1680 (.bxor 1678 1679) := by core033_kernel_decide
theorem stats1680 : actualRows1680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1680=7428 := by core033_kernel_decide
theorem rows1681 : actualRows1681=WordField.canonicalRows actualModulus 1681 (.shr 934 3) := by core033_kernel_decide
theorem stats1681 : actualRows1681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1681=4908 := by core033_kernel_decide
theorem rows1682 : actualRows1682=WordField.canonicalRows actualModulus 1682 (.bxor 1680 1681) := by core033_kernel_decide
theorem stats1682 : actualRows1682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1682=7428 := by core033_kernel_decide
theorem rows1683 : actualRows1683=WordField.canonicalRows actualModulus 1683 (.badd 1677 1682) := by core033_kernel_decide
theorem stats1683 : actualRows1683.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1683=5388 := by core033_kernel_decide
theorem rows1684 : actualRows1684=WordField.canonicalRows actualModulus 1684 (.badd 1683 928) := by core033_kernel_decide
theorem stats1684 : actualRows1684.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1684=5388 := by core033_kernel_decide
theorem rows1685 : actualRows1685=WordField.canonicalRows actualModulus 1685 (.rotr 1671 17) := by core033_kernel_decide
theorem stats1685 : actualRows1685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1685=5124 := by core033_kernel_decide
theorem rows1686 : actualRows1686=WordField.canonicalRows actualModulus 1686 (.rotr 1671 19) := by core033_kernel_decide
theorem stats1686 : actualRows1686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1686=5124 := by core033_kernel_decide
theorem rows1687 : actualRows1687=WordField.canonicalRows actualModulus 1687 (.bxor 1685 1686) := by core033_kernel_decide
theorem stats1687 : actualRows1687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1687=7428 := by core033_kernel_decide
theorem rows1688 : actualRows1688=WordField.canonicalRows actualModulus 1688 (.shr 1671 10) := by core033_kernel_decide
theorem stats1688 : actualRows1688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1688=4404 := by core033_kernel_decide
theorem rows1689 : actualRows1689=WordField.canonicalRows actualModulus 1689 (.bxor 1687 1688) := by core033_kernel_decide
theorem stats1689 : actualRows1689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1689=7428 := by core033_kernel_decide
theorem rows1690 : actualRows1690=WordField.canonicalRows actualModulus 1690 (.badd 1689 1606) := by core033_kernel_decide
theorem stats1690 : actualRows1690.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1690=5388 := by core033_kernel_decide
theorem rows1691 : actualRows1691=WordField.canonicalRows actualModulus 1691 (.rotr 940 7) := by core033_kernel_decide
theorem stats1691 : actualRows1691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1691=5124 := by core033_kernel_decide
theorem rows1692 : actualRows1692=WordField.canonicalRows actualModulus 1692 (.rotr 940 18) := by core033_kernel_decide
theorem stats1692 : actualRows1692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1692=5124 := by core033_kernel_decide
theorem rows1693 : actualRows1693=WordField.canonicalRows actualModulus 1693 (.bxor 1691 1692) := by core033_kernel_decide
theorem stats1693 : actualRows1693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1693=7428 := by core033_kernel_decide
theorem rows1694 : actualRows1694=WordField.canonicalRows actualModulus 1694 (.shr 940 3) := by core033_kernel_decide
theorem stats1694 : actualRows1694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1694=4908 := by core033_kernel_decide
theorem rows1695 : actualRows1695=WordField.canonicalRows actualModulus 1695 (.bxor 1693 1694) := by core033_kernel_decide
theorem stats1695 : actualRows1695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1695=7428 := by core033_kernel_decide
theorem rows1696 : actualRows1696=WordField.canonicalRows actualModulus 1696 (.badd 1690 1695) := by core033_kernel_decide
theorem stats1696 : actualRows1696.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1696=5388 := by core033_kernel_decide
theorem rows1697 : actualRows1697=WordField.canonicalRows actualModulus 1697 (.badd 1696 934) := by core033_kernel_decide
theorem stats1697 : actualRows1697.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1697=5388 := by core033_kernel_decide
theorem rows1698 : actualRows1698=WordField.canonicalRows actualModulus 1698 (.rotr 1684 17) := by core033_kernel_decide
theorem stats1698 : actualRows1698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1698=5124 := by core033_kernel_decide
theorem rows1699 : actualRows1699=WordField.canonicalRows actualModulus 1699 (.rotr 1684 19) := by core033_kernel_decide
theorem stats1699 : actualRows1699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1699=5124 := by core033_kernel_decide
theorem rows1700 : actualRows1700=WordField.canonicalRows actualModulus 1700 (.bxor 1698 1699) := by core033_kernel_decide
theorem stats1700 : actualRows1700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1700=7428 := by core033_kernel_decide
theorem rows1701 : actualRows1701=WordField.canonicalRows actualModulus 1701 (.shr 1684 10) := by core033_kernel_decide
theorem stats1701 : actualRows1701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1701=4404 := by core033_kernel_decide
theorem rows1702 : actualRows1702=WordField.canonicalRows actualModulus 1702 (.bxor 1700 1701) := by core033_kernel_decide
theorem stats1702 : actualRows1702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1702=7428 := by core033_kernel_decide
theorem rows1703 : actualRows1703=WordField.canonicalRows actualModulus 1703 (.badd 1702 1619) := by core033_kernel_decide
theorem stats1703 : actualRows1703.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1703=5388 := by core033_kernel_decide
theorem rows1704 : actualRows1704=WordField.canonicalRows actualModulus 1704 (.rotr 946 7) := by core033_kernel_decide
theorem stats1704 : actualRows1704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1704=5124 := by core033_kernel_decide
theorem rows1705 : actualRows1705=WordField.canonicalRows actualModulus 1705 (.rotr 946 18) := by core033_kernel_decide
theorem stats1705 : actualRows1705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1705=5124 := by core033_kernel_decide
theorem rows1706 : actualRows1706=WordField.canonicalRows actualModulus 1706 (.bxor 1704 1705) := by core033_kernel_decide
theorem stats1706 : actualRows1706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1706=7428 := by core033_kernel_decide
def partRows25 : List R1CS.Row := actualRows1643++actualRows1644++actualRows1645++actualRows1646++actualRows1647++actualRows1648++actualRows1649++actualRows1650++actualRows1651++actualRows1652++actualRows1653++actualRows1654++actualRows1655++actualRows1656++actualRows1657++actualRows1658++actualRows1659++actualRows1660++actualRows1661++actualRows1662++actualRows1663++actualRows1664++actualRows1665++actualRows1666++actualRows1667++actualRows1668++actualRows1669++actualRows1670++actualRows1671++actualRows1672++actualRows1673++actualRows1674++actualRows1675++actualRows1676++actualRows1677++actualRows1678++actualRows1679++actualRows1680++actualRows1681++actualRows1682++actualRows1683++actualRows1684++actualRows1685++actualRows1686++actualRows1687++actualRows1688++actualRows1689++actualRows1690++actualRows1691++actualRows1692++actualRows1693++actualRows1694++actualRows1695++actualRows1696++actualRows1697++actualRows1698++actualRows1699++actualRows1700++actualRows1701++actualRows1702++actualRows1703++actualRows1704++actualRows1705++actualRows1706
def partOps25 : List WordIR.Op := [.bxor 1641 1642,.badd 1638 1643,.badd 1644 910,.rotr 1632 17,.rotr 1632 19,.bxor 1646 1647,.shr 1632 10,.bxor 1648 1649,.badd 1650 1567,.rotr 922 7,.rotr 922 18,.bxor 1652 1653,.shr 922 3,.bxor 1654 1655,.badd 1651 1656,.badd 1657 916,.rotr 1645 17,.rotr 1645 19,.bxor 1659 1660,.shr 1645 10,.bxor 1661 1662,.badd 1663 1580,.rotr 928 7,.rotr 928 18,.bxor 1665 1666,.shr 928 3,.bxor 1667 1668,.badd 1664 1669,.badd 1670 922,.rotr 1658 17,.rotr 1658 19,.bxor 1672 1673,.shr 1658 10,.bxor 1674 1675,.badd 1676 1593,.rotr 934 7,.rotr 934 18,.bxor 1678 1679,.shr 934 3,.bxor 1680 1681,.badd 1677 1682,.badd 1683 928,.rotr 1671 17,.rotr 1671 19,.bxor 1685 1686,.shr 1671 10,.bxor 1687 1688,.badd 1689 1606,.rotr 940 7,.rotr 940 18,.bxor 1691 1692,.shr 940 3,.bxor 1693 1694,.badd 1690 1695,.badd 1696 934,.rotr 1684 17,.rotr 1684 19,.bxor 1698 1699,.shr 1684 10,.bxor 1700 1701,.badd 1702 1619,.rotr 946 7,.rotr 946 18,.bxor 1704 1705]
theorem partExact25 : partRows25=WordField.rows actualModulus 1643 partOps25 := by
  simp only [partRows25,partOps25,WordField.rows,rows1643,rows1644,rows1645,rows1646,rows1647,rows1648,rows1649,rows1650,rows1651,rows1652,rows1653,rows1654,rows1655,rows1656,rows1657,rows1658,rows1659,rows1660,rows1661,rows1662,rows1663,rows1664,rows1665,rows1666,rows1667,rows1668,rows1669,rows1670,rows1671,rows1672,rows1673,rows1674,rows1675,rows1676,rows1677,rows1678,rows1679,rows1680,rows1681,rows1682,rows1683,rows1684,rows1685,rows1686,rows1687,rows1688,rows1689,rows1690,rows1691,rows1692,rows1693,rows1694,rows1695,rows1696,rows1697,rows1698,rows1699,rows1700,rows1701,rows1702,rows1703,rows1704,rows1705,rows1706,List.append_assoc,List.append_nil]
theorem partLength25 : partOps25.length=64 := by decide
theorem partStats25 : partRows25.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows25=373512 := by
  simp only [partRows25,List.length_append,MatrixRowBlocks.rows_weight_append,stats1643.1,stats1643.2,stats1644.1,stats1644.2,stats1645.1,stats1645.2,stats1646.1,stats1646.2,stats1647.1,stats1647.2,stats1648.1,stats1648.2,stats1649.1,stats1649.2,stats1650.1,stats1650.2,stats1651.1,stats1651.2,stats1652.1,stats1652.2,stats1653.1,stats1653.2,stats1654.1,stats1654.2,stats1655.1,stats1655.2,stats1656.1,stats1656.2,stats1657.1,stats1657.2,stats1658.1,stats1658.2,stats1659.1,stats1659.2,stats1660.1,stats1660.2,stats1661.1,stats1661.2,stats1662.1,stats1662.2,stats1663.1,stats1663.2,stats1664.1,stats1664.2,stats1665.1,stats1665.2,stats1666.1,stats1666.2,stats1667.1,stats1667.2,stats1668.1,stats1668.2,stats1669.1,stats1669.2,stats1670.1,stats1670.2,stats1671.1,stats1671.2,stats1672.1,stats1672.2,stats1673.1,stats1673.2,stats1674.1,stats1674.2,stats1675.1,stats1675.2,stats1676.1,stats1676.2,stats1677.1,stats1677.2,stats1678.1,stats1678.2,stats1679.1,stats1679.2,stats1680.1,stats1680.2,stats1681.1,stats1681.2,stats1682.1,stats1682.2,stats1683.1,stats1683.2,stats1684.1,stats1684.2,stats1685.1,stats1685.2,stats1686.1,stats1686.2,stats1687.1,stats1687.2,stats1688.1,stats1688.2,stats1689.1,stats1689.2,stats1690.1,stats1690.2,stats1691.1,stats1691.2,stats1692.1,stats1692.2,stats1693.1,stats1693.2,stats1694.1,stats1694.2,stats1695.1,stats1695.2,stats1696.1,stats1696.2,stats1697.1,stats1697.2,stats1698.1,stats1698.2,stats1699.1,stats1699.2,stats1700.1,stats1700.2,stats1701.1,stats1701.2,stats1702.1,stats1702.2,stats1703.1,stats1703.2,stats1704.1,stats1704.2,stats1705.1,stats1705.2,stats1706.1,stats1706.2]
  decide
end SharedFrameCheckedRows
