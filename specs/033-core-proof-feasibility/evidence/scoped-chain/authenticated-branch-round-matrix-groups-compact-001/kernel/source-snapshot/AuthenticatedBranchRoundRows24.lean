import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData25
import AuthenticatedBranchRoundInstructionMatrixData26
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1654 : actualRows1654=WordField.canonicalRows actualModulus 1654 (.badd 1652 1653) := by core033_kernel_decide
theorem stats1654 : actualRows1654.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1654=5388 := by core033_kernel_decide
theorem rows1655 : actualRows1655=WordField.canonicalRows actualModulus 1655 (.band 1654 1154) := by core033_kernel_decide
theorem stats1655 : actualRows1655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1655=5124 := by core033_kernel_decide
theorem rows1656 : actualRows1656=WordField.canonicalRows actualModulus 1656 (.bnot 1288) := by core033_kernel_decide
theorem stats1656 : actualRows1656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1656=6276 := by core033_kernel_decide
theorem rows1657 : actualRows1657=WordField.canonicalRows actualModulus 1657 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1657 : actualRows1657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1657=2892 := by core033_kernel_decide
theorem rows1658 : actualRows1658=WordField.canonicalRows actualModulus 1658 (.badd 1656 1657) := by core033_kernel_decide
theorem stats1658 : actualRows1658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1658=5388 := by core033_kernel_decide
theorem rows1659 : actualRows1659=WordField.canonicalRows actualModulus 1659 (.bnot 1658) := by core033_kernel_decide
theorem stats1659 : actualRows1659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1659=6276 := by core033_kernel_decide
theorem rows1660 : actualRows1660=WordField.canonicalRows actualModulus 1660 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1660 : actualRows1660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1660=2820 := by core033_kernel_decide
theorem rows1661 : actualRows1661=WordField.canonicalRows actualModulus 1661 (.band 1659 1660) := by core033_kernel_decide
theorem stats1661 : actualRows1661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1661=5124 := by core033_kernel_decide
theorem rows1662 : actualRows1662=WordField.canonicalRows actualModulus 1662 (.bxor 1655 1661) := by core033_kernel_decide
theorem stats1662 : actualRows1662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1662=7428 := by core033_kernel_decide
theorem rows1663 : actualRows1663=WordField.canonicalRows actualModulus 1663 (.bnot 1288) := by core033_kernel_decide
theorem stats1663 : actualRows1663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1663=6276 := by core033_kernel_decide
theorem rows1664 : actualRows1664=WordField.canonicalRows actualModulus 1664 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1664 : actualRows1664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1664=2892 := by core033_kernel_decide
theorem rows1665 : actualRows1665=WordField.canonicalRows actualModulus 1665 (.badd 1663 1664) := by core033_kernel_decide
theorem stats1665 : actualRows1665.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1665=5388 := by core033_kernel_decide
theorem rows1666 : actualRows1666=WordField.canonicalRows actualModulus 1666 (.band 1665 1165) := by core033_kernel_decide
theorem stats1666 : actualRows1666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1666=5124 := by core033_kernel_decide
theorem rows1667 : actualRows1667=WordField.canonicalRows actualModulus 1667 (.bnot 1288) := by core033_kernel_decide
theorem stats1667 : actualRows1667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1667=6276 := by core033_kernel_decide
theorem rows1668 : actualRows1668=WordField.canonicalRows actualModulus 1668 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1668 : actualRows1668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1668=2892 := by core033_kernel_decide
theorem rows1669 : actualRows1669=WordField.canonicalRows actualModulus 1669 (.badd 1667 1668) := by core033_kernel_decide
theorem stats1669 : actualRows1669.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1669=5388 := by core033_kernel_decide
theorem rows1670 : actualRows1670=WordField.canonicalRows actualModulus 1670 (.bnot 1669) := by core033_kernel_decide
theorem stats1670 : actualRows1670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1670=6276 := by core033_kernel_decide
theorem rows1671 : actualRows1671=WordField.canonicalRows actualModulus 1671 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1671 : actualRows1671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1671=2820 := by core033_kernel_decide
theorem rows1672 : actualRows1672=WordField.canonicalRows actualModulus 1672 (.band 1670 1671) := by core033_kernel_decide
theorem stats1672 : actualRows1672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1672=5124 := by core033_kernel_decide
theorem rows1673 : actualRows1673=WordField.canonicalRows actualModulus 1673 (.bxor 1666 1672) := by core033_kernel_decide
theorem stats1673 : actualRows1673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1673=7428 := by core033_kernel_decide
theorem rows1674 : actualRows1674=WordField.canonicalRows actualModulus 1674 (.bnot 1288) := by core033_kernel_decide
theorem stats1674 : actualRows1674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1674=6276 := by core033_kernel_decide
theorem rows1675 : actualRows1675=WordField.canonicalRows actualModulus 1675 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1675 : actualRows1675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1675=2892 := by core033_kernel_decide
theorem rows1676 : actualRows1676=WordField.canonicalRows actualModulus 1676 (.badd 1674 1675) := by core033_kernel_decide
theorem stats1676 : actualRows1676.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1676=5388 := by core033_kernel_decide
theorem rows1677 : actualRows1677=WordField.canonicalRows actualModulus 1677 (.band 1676 1175) := by core033_kernel_decide
theorem stats1677 : actualRows1677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1677=5124 := by core033_kernel_decide
theorem rows1678 : actualRows1678=WordField.canonicalRows actualModulus 1678 (.bnot 1288) := by core033_kernel_decide
theorem stats1678 : actualRows1678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1678=6276 := by core033_kernel_decide
theorem rows1679 : actualRows1679=WordField.canonicalRows actualModulus 1679 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1679 : actualRows1679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1679=2892 := by core033_kernel_decide
theorem rows1680 : actualRows1680=WordField.canonicalRows actualModulus 1680 (.badd 1678 1679) := by core033_kernel_decide
theorem stats1680 : actualRows1680.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1680=5388 := by core033_kernel_decide
theorem rows1681 : actualRows1681=WordField.canonicalRows actualModulus 1681 (.bnot 1680) := by core033_kernel_decide
theorem stats1681 : actualRows1681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1681=6276 := by core033_kernel_decide
theorem rows1682 : actualRows1682=WordField.canonicalRows actualModulus 1682 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1682 : actualRows1682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1682=2820 := by core033_kernel_decide
theorem rows1683 : actualRows1683=WordField.canonicalRows actualModulus 1683 (.band 1681 1682) := by core033_kernel_decide
theorem stats1683 : actualRows1683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1683=5124 := by core033_kernel_decide
theorem rows1684 : actualRows1684=WordField.canonicalRows actualModulus 1684 (.bxor 1677 1683) := by core033_kernel_decide
theorem stats1684 : actualRows1684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1684=7428 := by core033_kernel_decide
theorem rows1685 : actualRows1685=WordField.canonicalRows actualModulus 1685 (.bnot 1288) := by core033_kernel_decide
theorem stats1685 : actualRows1685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1685=6276 := by core033_kernel_decide
theorem rows1686 : actualRows1686=WordField.canonicalRows actualModulus 1686 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1686 : actualRows1686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1686=2892 := by core033_kernel_decide
theorem rows1687 : actualRows1687=WordField.canonicalRows actualModulus 1687 (.badd 1685 1686) := by core033_kernel_decide
theorem stats1687 : actualRows1687.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1687=5388 := by core033_kernel_decide
theorem rows1688 : actualRows1688=WordField.canonicalRows actualModulus 1688 (.band 1687 1185) := by core033_kernel_decide
theorem stats1688 : actualRows1688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1688=5124 := by core033_kernel_decide
theorem rows1689 : actualRows1689=WordField.canonicalRows actualModulus 1689 (.bnot 1288) := by core033_kernel_decide
theorem stats1689 : actualRows1689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1689=6276 := by core033_kernel_decide
theorem rows1690 : actualRows1690=WordField.canonicalRows actualModulus 1690 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1690 : actualRows1690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1690=2892 := by core033_kernel_decide
theorem rows1691 : actualRows1691=WordField.canonicalRows actualModulus 1691 (.badd 1689 1690) := by core033_kernel_decide
theorem stats1691 : actualRows1691.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1691=5388 := by core033_kernel_decide
theorem rows1692 : actualRows1692=WordField.canonicalRows actualModulus 1692 (.bnot 1691) := by core033_kernel_decide
theorem stats1692 : actualRows1692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1692=6276 := by core033_kernel_decide
theorem rows1693 : actualRows1693=WordField.canonicalRows actualModulus 1693 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1693 : actualRows1693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1693=2820 := by core033_kernel_decide
theorem rows1694 : actualRows1694=WordField.canonicalRows actualModulus 1694 (.band 1692 1693) := by core033_kernel_decide
theorem stats1694 : actualRows1694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1694=5124 := by core033_kernel_decide
theorem rows1695 : actualRows1695=WordField.canonicalRows actualModulus 1695 (.bxor 1688 1694) := by core033_kernel_decide
theorem stats1695 : actualRows1695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1695=7428 := by core033_kernel_decide
theorem rows1696 : actualRows1696=WordField.canonicalRows actualModulus 1696 (.bnot 1288) := by core033_kernel_decide
theorem stats1696 : actualRows1696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1696=6276 := by core033_kernel_decide
theorem rows1697 : actualRows1697=WordField.canonicalRows actualModulus 1697 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1697 : actualRows1697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1697=2892 := by core033_kernel_decide
theorem rows1698 : actualRows1698=WordField.canonicalRows actualModulus 1698 (.badd 1696 1697) := by core033_kernel_decide
theorem stats1698 : actualRows1698.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1698=5388 := by core033_kernel_decide
theorem rows1699 : actualRows1699=WordField.canonicalRows actualModulus 1699 (.band 1698 1195) := by core033_kernel_decide
theorem stats1699 : actualRows1699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1699=5124 := by core033_kernel_decide
theorem rows1700 : actualRows1700=WordField.canonicalRows actualModulus 1700 (.bnot 1288) := by core033_kernel_decide
theorem stats1700 : actualRows1700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1700=6276 := by core033_kernel_decide
theorem rows1701 : actualRows1701=WordField.canonicalRows actualModulus 1701 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1701 : actualRows1701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1701=2892 := by core033_kernel_decide
theorem rows1702 : actualRows1702=WordField.canonicalRows actualModulus 1702 (.badd 1700 1701) := by core033_kernel_decide
theorem stats1702 : actualRows1702.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1702=5388 := by core033_kernel_decide
theorem rows1703 : actualRows1703=WordField.canonicalRows actualModulus 1703 (.bnot 1702) := by core033_kernel_decide
theorem stats1703 : actualRows1703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1703=6276 := by core033_kernel_decide
theorem rows1704 : actualRows1704=WordField.canonicalRows actualModulus 1704 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1704 : actualRows1704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1704=2820 := by core033_kernel_decide
theorem rows1705 : actualRows1705=WordField.canonicalRows actualModulus 1705 (.band 1703 1704) := by core033_kernel_decide
theorem stats1705 : actualRows1705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1705=5124 := by core033_kernel_decide
theorem rows1706 : actualRows1706=WordField.canonicalRows actualModulus 1706 (.bxor 1699 1705) := by core033_kernel_decide
theorem stats1706 : actualRows1706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1706=7428 := by core033_kernel_decide
theorem rows1707 : actualRows1707=WordField.canonicalRows actualModulus 1707 (.bnot 1288) := by core033_kernel_decide
theorem stats1707 : actualRows1707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1707=6276 := by core033_kernel_decide
theorem rows1708 : actualRows1708=WordField.canonicalRows actualModulus 1708 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1708 : actualRows1708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1708=2892 := by core033_kernel_decide
theorem rows1709 : actualRows1709=WordField.canonicalRows actualModulus 1709 (.badd 1707 1708) := by core033_kernel_decide
theorem stats1709 : actualRows1709.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1709=5388 := by core033_kernel_decide
theorem rows1710 : actualRows1710=WordField.canonicalRows actualModulus 1710 (.band 1709 1205) := by core033_kernel_decide
theorem stats1710 : actualRows1710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1710=5124 := by core033_kernel_decide
theorem rows1711 : actualRows1711=WordField.canonicalRows actualModulus 1711 (.bnot 1288) := by core033_kernel_decide
theorem stats1711 : actualRows1711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1711=6276 := by core033_kernel_decide
theorem rows1712 : actualRows1712=WordField.canonicalRows actualModulus 1712 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1712 : actualRows1712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1712=2892 := by core033_kernel_decide
theorem rows1713 : actualRows1713=WordField.canonicalRows actualModulus 1713 (.badd 1711 1712) := by core033_kernel_decide
theorem stats1713 : actualRows1713.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1713=5388 := by core033_kernel_decide
theorem rows1714 : actualRows1714=WordField.canonicalRows actualModulus 1714 (.bnot 1713) := by core033_kernel_decide
theorem stats1714 : actualRows1714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1714=6276 := by core033_kernel_decide
theorem rows1715 : actualRows1715=WordField.canonicalRows actualModulus 1715 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1715 : actualRows1715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1715=2820 := by core033_kernel_decide
theorem rows1716 : actualRows1716=WordField.canonicalRows actualModulus 1716 (.band 1714 1715) := by core033_kernel_decide
theorem stats1716 : actualRows1716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1716=5124 := by core033_kernel_decide
theorem rows1717 : actualRows1717=WordField.canonicalRows actualModulus 1717 (.bxor 1710 1716) := by core033_kernel_decide
theorem stats1717 : actualRows1717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1717=7428 := by core033_kernel_decide
def partRows24 : List R1CS.Row := actualRows1654++actualRows1655++actualRows1656++actualRows1657++actualRows1658++actualRows1659++actualRows1660++actualRows1661++actualRows1662++actualRows1663++actualRows1664++actualRows1665++actualRows1666++actualRows1667++actualRows1668++actualRows1669++actualRows1670++actualRows1671++actualRows1672++actualRows1673++actualRows1674++actualRows1675++actualRows1676++actualRows1677++actualRows1678++actualRows1679++actualRows1680++actualRows1681++actualRows1682++actualRows1683++actualRows1684++actualRows1685++actualRows1686++actualRows1687++actualRows1688++actualRows1689++actualRows1690++actualRows1691++actualRows1692++actualRows1693++actualRows1694++actualRows1695++actualRows1696++actualRows1697++actualRows1698++actualRows1699++actualRows1700++actualRows1701++actualRows1702++actualRows1703++actualRows1704++actualRows1705++actualRows1706++actualRows1707++actualRows1708++actualRows1709++actualRows1710++actualRows1711++actualRows1712++actualRows1713++actualRows1714++actualRows1715++actualRows1716++actualRows1717
def partOps24 : List WordIR.Op := [.badd 1652 1653,.band 1654 1154,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1656 1657,.bnot 1658,.literal (BitVec.ofNat 32 0),.band 1659 1660,.bxor 1655 1661,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1663 1664,.band 1665 1165,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1667 1668,.bnot 1669,.literal (BitVec.ofNat 32 0),.band 1670 1671,.bxor 1666 1672,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1674 1675,.band 1676 1175,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1678 1679,.bnot 1680,.literal (BitVec.ofNat 32 0),.band 1681 1682,.bxor 1677 1683,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1685 1686,.band 1687 1185,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1689 1690,.bnot 1691,.literal (BitVec.ofNat 32 0),.band 1692 1693,.bxor 1688 1694,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1696 1697,.band 1698 1195,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1700 1701,.bnot 1702,.literal (BitVec.ofNat 32 0),.band 1703 1704,.bxor 1699 1705,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1707 1708,.band 1709 1205,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1711 1712,.bnot 1713,.literal (BitVec.ofNat 32 0),.band 1714 1715,.bxor 1710 1716]
theorem partExact24 : partRows24=WordField.rows actualModulus 1654 partOps24 := by
  simp only [partRows24,partOps24,WordField.rows,rows1654,rows1655,rows1656,rows1657,rows1658,rows1659,rows1660,rows1661,rows1662,rows1663,rows1664,rows1665,rows1666,rows1667,rows1668,rows1669,rows1670,rows1671,rows1672,rows1673,rows1674,rows1675,rows1676,rows1677,rows1678,rows1679,rows1680,rows1681,rows1682,rows1683,rows1684,rows1685,rows1686,rows1687,rows1688,rows1689,rows1690,rows1691,rows1692,rows1693,rows1694,rows1695,rows1696,rows1697,rows1698,rows1699,rows1700,rows1701,rows1702,rows1703,rows1704,rows1705,rows1706,rows1707,rows1708,rows1709,rows1710,rows1711,rows1712,rows1713,rows1714,rows1715,rows1716,rows1717,List.append_assoc,List.append_nil]
theorem partLength24 : partOps24.length=64 := by decide
theorem partStats24 : partRows24.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows24=326136 := by
  simp only [partRows24,List.length_append,MatrixRowBlocks.rows_weight_append,stats1654.1,stats1654.2,stats1655.1,stats1655.2,stats1656.1,stats1656.2,stats1657.1,stats1657.2,stats1658.1,stats1658.2,stats1659.1,stats1659.2,stats1660.1,stats1660.2,stats1661.1,stats1661.2,stats1662.1,stats1662.2,stats1663.1,stats1663.2,stats1664.1,stats1664.2,stats1665.1,stats1665.2,stats1666.1,stats1666.2,stats1667.1,stats1667.2,stats1668.1,stats1668.2,stats1669.1,stats1669.2,stats1670.1,stats1670.2,stats1671.1,stats1671.2,stats1672.1,stats1672.2,stats1673.1,stats1673.2,stats1674.1,stats1674.2,stats1675.1,stats1675.2,stats1676.1,stats1676.2,stats1677.1,stats1677.2,stats1678.1,stats1678.2,stats1679.1,stats1679.2,stats1680.1,stats1680.2,stats1681.1,stats1681.2,stats1682.1,stats1682.2,stats1683.1,stats1683.2,stats1684.1,stats1684.2,stats1685.1,stats1685.2,stats1686.1,stats1686.2,stats1687.1,stats1687.2,stats1688.1,stats1688.2,stats1689.1,stats1689.2,stats1690.1,stats1690.2,stats1691.1,stats1691.2,stats1692.1,stats1692.2,stats1693.1,stats1693.2,stats1694.1,stats1694.2,stats1695.1,stats1695.2,stats1696.1,stats1696.2,stats1697.1,stats1697.2,stats1698.1,stats1698.2,stats1699.1,stats1699.2,stats1700.1,stats1700.2,stats1701.1,stats1701.2,stats1702.1,stats1702.2,stats1703.1,stats1703.2,stats1704.1,stats1704.2,stats1705.1,stats1705.2,stats1706.1,stats1706.2,stats1707.1,stats1707.2,stats1708.1,stats1708.2,stats1709.1,stats1709.2,stats1710.1,stats1710.2,stats1711.1,stats1711.2,stats1712.1,stats1712.2,stats1713.1,stats1713.2,stats1714.1,stats1714.2,stats1715.1,stats1715.2,stats1716.1,stats1716.2,stats1717.1,stats1717.2]
  decide
end AuthenticatedBranchRoundCheckedRows
