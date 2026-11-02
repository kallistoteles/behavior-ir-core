import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData26
import ActualMatrixData27
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1688 : actualRows1688=WordField.canonicalRows actualModulus 1688 (.rotr 1672 2) := by core033_kernel_decide
theorem stats1688 : actualRows1688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1688=5124 := by core033_kernel_decide
theorem rows1689 : actualRows1689=WordField.canonicalRows actualModulus 1689 (.rotr 1672 13) := by core033_kernel_decide
theorem stats1689 : actualRows1689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1689=5124 := by core033_kernel_decide
theorem rows1690 : actualRows1690=WordField.canonicalRows actualModulus 1690 (.bxor 1688 1689) := by core033_kernel_decide
theorem stats1690 : actualRows1690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1690=7428 := by core033_kernel_decide
theorem rows1691 : actualRows1691=WordField.canonicalRows actualModulus 1691 (.rotr 1672 22) := by core033_kernel_decide
theorem stats1691 : actualRows1691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1691=5124 := by core033_kernel_decide
theorem rows1692 : actualRows1692=WordField.canonicalRows actualModulus 1692 (.bxor 1690 1691) := by core033_kernel_decide
theorem stats1692 : actualRows1692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1692=7428 := by core033_kernel_decide
theorem rows1693 : actualRows1693=WordField.canonicalRows actualModulus 1693 (.band 1672 1645) := by core033_kernel_decide
theorem stats1693 : actualRows1693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1693=5124 := by core033_kernel_decide
theorem rows1694 : actualRows1694=WordField.canonicalRows actualModulus 1694 (.band 1672 1618) := by core033_kernel_decide
theorem stats1694 : actualRows1694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1694=5124 := by core033_kernel_decide
theorem rows1695 : actualRows1695=WordField.canonicalRows actualModulus 1695 (.bxor 1693 1694) := by core033_kernel_decide
theorem stats1695 : actualRows1695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1695=7428 := by core033_kernel_decide
theorem rows1696 : actualRows1696=WordField.canonicalRows actualModulus 1696 (.band 1645 1618) := by core033_kernel_decide
theorem stats1696 : actualRows1696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1696=5124 := by core033_kernel_decide
theorem rows1697 : actualRows1697=WordField.canonicalRows actualModulus 1697 (.bxor 1695 1696) := by core033_kernel_decide
theorem stats1697 : actualRows1697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1697=7428 := by core033_kernel_decide
theorem rows1698 : actualRows1698=WordField.canonicalRows actualModulus 1698 (.badd 1692 1697) := by core033_kernel_decide
theorem stats1698 : actualRows1698.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1698=5388 := by core033_kernel_decide
theorem rows1699 : actualRows1699=WordField.canonicalRows actualModulus 1699 (.badd 1687 1698) := by core033_kernel_decide
theorem stats1699 : actualRows1699.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1699=5388 := by core033_kernel_decide
theorem rows1700 : actualRows1700=WordField.canonicalRows actualModulus 1700 (.badd 1591 1687) := by core033_kernel_decide
theorem stats1700 : actualRows1700.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1700=5388 := by core033_kernel_decide
theorem rows1701 : actualRows1701=WordField.canonicalRows actualModulus 1701 (.rotr 1700 6) := by core033_kernel_decide
theorem stats1701 : actualRows1701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1701=5124 := by core033_kernel_decide
theorem rows1702 : actualRows1702=WordField.canonicalRows actualModulus 1702 (.rotr 1700 11) := by core033_kernel_decide
theorem stats1702 : actualRows1702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1702=5124 := by core033_kernel_decide
theorem rows1703 : actualRows1703=WordField.canonicalRows actualModulus 1703 (.bxor 1701 1702) := by core033_kernel_decide
theorem stats1703 : actualRows1703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1703=7428 := by core033_kernel_decide
theorem rows1704 : actualRows1704=WordField.canonicalRows actualModulus 1704 (.rotr 1700 25) := by core033_kernel_decide
theorem stats1704 : actualRows1704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1704=5124 := by core033_kernel_decide
theorem rows1705 : actualRows1705=WordField.canonicalRows actualModulus 1705 (.bxor 1703 1704) := by core033_kernel_decide
theorem stats1705 : actualRows1705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1705=7428 := by core033_kernel_decide
theorem rows1706 : actualRows1706=WordField.canonicalRows actualModulus 1706 (.badd 1619 1705) := by core033_kernel_decide
theorem stats1706 : actualRows1706.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1706=5388 := by core033_kernel_decide
theorem rows1707 : actualRows1707=WordField.canonicalRows actualModulus 1707 (.band 1700 1673) := by core033_kernel_decide
theorem stats1707 : actualRows1707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1707=5124 := by core033_kernel_decide
theorem rows1708 : actualRows1708=WordField.canonicalRows actualModulus 1708 (.bnot 1700) := by core033_kernel_decide
theorem stats1708 : actualRows1708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1708=6276 := by core033_kernel_decide
theorem rows1709 : actualRows1709=WordField.canonicalRows actualModulus 1709 (.band 1708 1646) := by core033_kernel_decide
theorem stats1709 : actualRows1709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1709=5124 := by core033_kernel_decide
theorem rows1710 : actualRows1710=WordField.canonicalRows actualModulus 1710 (.bxor 1707 1709) := by core033_kernel_decide
theorem stats1710 : actualRows1710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1710=7428 := by core033_kernel_decide
theorem rows1711 : actualRows1711=WordField.canonicalRows actualModulus 1711 (.badd 1706 1710) := by core033_kernel_decide
theorem stats1711 : actualRows1711.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1711=5388 := by core033_kernel_decide
theorem rows1712 : actualRows1712=WordField.canonicalRows actualModulus 1712 (.literal (BitVec.ofNat 32 2456956037)) := by core033_kernel_decide
theorem stats1712 : actualRows1712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1712=3756 := by core033_kernel_decide
theorem rows1713 : actualRows1713=WordField.canonicalRows actualModulus 1713 (.badd 1711 1712) := by core033_kernel_decide
theorem stats1713 : actualRows1713.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1713=5388 := by core033_kernel_decide
theorem rows1714 : actualRows1714=WordField.canonicalRows actualModulus 1714 (.badd 1713 335) := by core033_kernel_decide
theorem stats1714 : actualRows1714.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1714=5388 := by core033_kernel_decide
theorem rows1715 : actualRows1715=WordField.canonicalRows actualModulus 1715 (.rotr 1699 2) := by core033_kernel_decide
theorem stats1715 : actualRows1715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1715=5124 := by core033_kernel_decide
theorem rows1716 : actualRows1716=WordField.canonicalRows actualModulus 1716 (.rotr 1699 13) := by core033_kernel_decide
theorem stats1716 : actualRows1716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1716=5124 := by core033_kernel_decide
theorem rows1717 : actualRows1717=WordField.canonicalRows actualModulus 1717 (.bxor 1715 1716) := by core033_kernel_decide
theorem stats1717 : actualRows1717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1717=7428 := by core033_kernel_decide
theorem rows1718 : actualRows1718=WordField.canonicalRows actualModulus 1718 (.rotr 1699 22) := by core033_kernel_decide
theorem stats1718 : actualRows1718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1718=5124 := by core033_kernel_decide
theorem rows1719 : actualRows1719=WordField.canonicalRows actualModulus 1719 (.bxor 1717 1718) := by core033_kernel_decide
theorem stats1719 : actualRows1719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1719=7428 := by core033_kernel_decide
theorem rows1720 : actualRows1720=WordField.canonicalRows actualModulus 1720 (.band 1699 1672) := by core033_kernel_decide
theorem stats1720 : actualRows1720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1720=5124 := by core033_kernel_decide
theorem rows1721 : actualRows1721=WordField.canonicalRows actualModulus 1721 (.band 1699 1645) := by core033_kernel_decide
theorem stats1721 : actualRows1721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1721=5124 := by core033_kernel_decide
theorem rows1722 : actualRows1722=WordField.canonicalRows actualModulus 1722 (.bxor 1720 1721) := by core033_kernel_decide
theorem stats1722 : actualRows1722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1722=7428 := by core033_kernel_decide
theorem rows1723 : actualRows1723=WordField.canonicalRows actualModulus 1723 (.band 1672 1645) := by core033_kernel_decide
theorem stats1723 : actualRows1723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1723=5124 := by core033_kernel_decide
theorem rows1724 : actualRows1724=WordField.canonicalRows actualModulus 1724 (.bxor 1722 1723) := by core033_kernel_decide
theorem stats1724 : actualRows1724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1724=7428 := by core033_kernel_decide
theorem rows1725 : actualRows1725=WordField.canonicalRows actualModulus 1725 (.badd 1719 1724) := by core033_kernel_decide
theorem stats1725 : actualRows1725.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1725=5388 := by core033_kernel_decide
theorem rows1726 : actualRows1726=WordField.canonicalRows actualModulus 1726 (.badd 1714 1725) := by core033_kernel_decide
theorem stats1726 : actualRows1726.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1726=5388 := by core033_kernel_decide
theorem rows1727 : actualRows1727=WordField.canonicalRows actualModulus 1727 (.badd 1618 1714) := by core033_kernel_decide
theorem stats1727 : actualRows1727.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1727=5388 := by core033_kernel_decide
theorem rows1728 : actualRows1728=WordField.canonicalRows actualModulus 1728 (.rotr 1727 6) := by core033_kernel_decide
theorem stats1728 : actualRows1728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1728=5124 := by core033_kernel_decide
theorem rows1729 : actualRows1729=WordField.canonicalRows actualModulus 1729 (.rotr 1727 11) := by core033_kernel_decide
theorem stats1729 : actualRows1729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1729=5124 := by core033_kernel_decide
theorem rows1730 : actualRows1730=WordField.canonicalRows actualModulus 1730 (.bxor 1728 1729) := by core033_kernel_decide
theorem stats1730 : actualRows1730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1730=7428 := by core033_kernel_decide
theorem rows1731 : actualRows1731=WordField.canonicalRows actualModulus 1731 (.rotr 1727 25) := by core033_kernel_decide
theorem stats1731 : actualRows1731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1731=5124 := by core033_kernel_decide
theorem rows1732 : actualRows1732=WordField.canonicalRows actualModulus 1732 (.bxor 1730 1731) := by core033_kernel_decide
theorem stats1732 : actualRows1732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1732=7428 := by core033_kernel_decide
theorem rows1733 : actualRows1733=WordField.canonicalRows actualModulus 1733 (.badd 1646 1732) := by core033_kernel_decide
theorem stats1733 : actualRows1733.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1733=5388 := by core033_kernel_decide
theorem rows1734 : actualRows1734=WordField.canonicalRows actualModulus 1734 (.band 1727 1700) := by core033_kernel_decide
theorem stats1734 : actualRows1734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1734=5124 := by core033_kernel_decide
theorem rows1735 : actualRows1735=WordField.canonicalRows actualModulus 1735 (.bnot 1727) := by core033_kernel_decide
theorem stats1735 : actualRows1735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1735=6276 := by core033_kernel_decide
theorem rows1736 : actualRows1736=WordField.canonicalRows actualModulus 1736 (.band 1735 1673) := by core033_kernel_decide
theorem stats1736 : actualRows1736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1736=5124 := by core033_kernel_decide
theorem rows1737 : actualRows1737=WordField.canonicalRows actualModulus 1737 (.bxor 1734 1736) := by core033_kernel_decide
theorem stats1737 : actualRows1737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1737=7428 := by core033_kernel_decide
theorem rows1738 : actualRows1738=WordField.canonicalRows actualModulus 1738 (.badd 1733 1737) := by core033_kernel_decide
theorem stats1738 : actualRows1738.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1738=5388 := by core033_kernel_decide
theorem rows1739 : actualRows1739=WordField.canonicalRows actualModulus 1739 (.literal (BitVec.ofNat 32 2730485921)) := by core033_kernel_decide
theorem stats1739 : actualRows1739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1739=4044 := by core033_kernel_decide
theorem rows1740 : actualRows1740=WordField.canonicalRows actualModulus 1740 (.badd 1738 1739) := by core033_kernel_decide
theorem stats1740 : actualRows1740.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1740=5388 := by core033_kernel_decide
theorem rows1741 : actualRows1741=WordField.canonicalRows actualModulus 1741 (.badd 1740 348) := by core033_kernel_decide
theorem stats1741 : actualRows1741.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1741=5388 := by core033_kernel_decide
theorem rows1742 : actualRows1742=WordField.canonicalRows actualModulus 1742 (.rotr 1726 2) := by core033_kernel_decide
theorem stats1742 : actualRows1742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1742=5124 := by core033_kernel_decide
theorem rows1743 : actualRows1743=WordField.canonicalRows actualModulus 1743 (.rotr 1726 13) := by core033_kernel_decide
theorem stats1743 : actualRows1743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1743=5124 := by core033_kernel_decide
theorem rows1744 : actualRows1744=WordField.canonicalRows actualModulus 1744 (.bxor 1742 1743) := by core033_kernel_decide
theorem stats1744 : actualRows1744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1744=7428 := by core033_kernel_decide
theorem rows1745 : actualRows1745=WordField.canonicalRows actualModulus 1745 (.rotr 1726 22) := by core033_kernel_decide
theorem stats1745 : actualRows1745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1745=5124 := by core033_kernel_decide
theorem rows1746 : actualRows1746=WordField.canonicalRows actualModulus 1746 (.bxor 1744 1745) := by core033_kernel_decide
theorem stats1746 : actualRows1746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1746=7428 := by core033_kernel_decide
theorem rows1747 : actualRows1747=WordField.canonicalRows actualModulus 1747 (.band 1726 1699) := by core033_kernel_decide
theorem stats1747 : actualRows1747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1747=5124 := by core033_kernel_decide
theorem rows1748 : actualRows1748=WordField.canonicalRows actualModulus 1748 (.band 1726 1672) := by core033_kernel_decide
theorem stats1748 : actualRows1748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1748=5124 := by core033_kernel_decide
theorem rows1749 : actualRows1749=WordField.canonicalRows actualModulus 1749 (.bxor 1747 1748) := by core033_kernel_decide
theorem stats1749 : actualRows1749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1749=7428 := by core033_kernel_decide
theorem rows1750 : actualRows1750=WordField.canonicalRows actualModulus 1750 (.band 1699 1672) := by core033_kernel_decide
theorem stats1750 : actualRows1750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1750=5124 := by core033_kernel_decide
theorem rows1751 : actualRows1751=WordField.canonicalRows actualModulus 1751 (.bxor 1749 1750) := by core033_kernel_decide
theorem stats1751 : actualRows1751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1751=7428 := by core033_kernel_decide
def partRows26 : List R1CS.Row := actualRows1688++actualRows1689++actualRows1690++actualRows1691++actualRows1692++actualRows1693++actualRows1694++actualRows1695++actualRows1696++actualRows1697++actualRows1698++actualRows1699++actualRows1700++actualRows1701++actualRows1702++actualRows1703++actualRows1704++actualRows1705++actualRows1706++actualRows1707++actualRows1708++actualRows1709++actualRows1710++actualRows1711++actualRows1712++actualRows1713++actualRows1714++actualRows1715++actualRows1716++actualRows1717++actualRows1718++actualRows1719++actualRows1720++actualRows1721++actualRows1722++actualRows1723++actualRows1724++actualRows1725++actualRows1726++actualRows1727++actualRows1728++actualRows1729++actualRows1730++actualRows1731++actualRows1732++actualRows1733++actualRows1734++actualRows1735++actualRows1736++actualRows1737++actualRows1738++actualRows1739++actualRows1740++actualRows1741++actualRows1742++actualRows1743++actualRows1744++actualRows1745++actualRows1746++actualRows1747++actualRows1748++actualRows1749++actualRows1750++actualRows1751
def partOps26 : List WordIR.Op := [.rotr 1672 2,.rotr 1672 13,.bxor 1688 1689,.rotr 1672 22,.bxor 1690 1691,.band 1672 1645,.band 1672 1618,.bxor 1693 1694,.band 1645 1618,.bxor 1695 1696,.badd 1692 1697,.badd 1687 1698,.badd 1591 1687,.rotr 1700 6,.rotr 1700 11,.bxor 1701 1702,.rotr 1700 25,.bxor 1703 1704,.badd 1619 1705,.band 1700 1673,.bnot 1700,.band 1708 1646,.bxor 1707 1709,.badd 1706 1710,.literal (BitVec.ofNat 32 2456956037),.badd 1711 1712,.badd 1713 335,.rotr 1699 2,.rotr 1699 13,.bxor 1715 1716,.rotr 1699 22,.bxor 1717 1718,.band 1699 1672,.band 1699 1645,.bxor 1720 1721,.band 1672 1645,.bxor 1722 1723,.badd 1719 1724,.badd 1714 1725,.badd 1618 1714,.rotr 1727 6,.rotr 1727 11,.bxor 1728 1729,.rotr 1727 25,.bxor 1730 1731,.badd 1646 1732,.band 1727 1700,.bnot 1727,.band 1735 1673,.bxor 1734 1736,.badd 1733 1737,.literal (BitVec.ofNat 32 2730485921),.badd 1738 1739,.badd 1740 348,.rotr 1726 2,.rotr 1726 13,.bxor 1742 1743,.rotr 1726 22,.bxor 1744 1745,.band 1726 1699,.band 1726 1672,.bxor 1747 1748,.band 1699 1672,.bxor 1749 1750]
theorem partRowsExact26 : partRows26=WordField.rows actualModulus 1688 partOps26 := by
  simp only [partRows26,partOps26,WordField.rows,rows1688,rows1689,rows1690,rows1691,rows1692,rows1693,rows1694,rows1695,rows1696,rows1697,rows1698,rows1699,rows1700,rows1701,rows1702,rows1703,rows1704,rows1705,rows1706,rows1707,rows1708,rows1709,rows1710,rows1711,rows1712,rows1713,rows1714,rows1715,rows1716,rows1717,rows1718,rows1719,rows1720,rows1721,rows1722,rows1723,rows1724,rows1725,rows1726,rows1727,rows1728,rows1729,rows1730,rows1731,rows1732,rows1733,rows1734,rows1735,rows1736,rows1737,rows1738,rows1739,rows1740,rows1741,rows1742,rows1743,rows1744,rows1745,rows1746,rows1747,rows1748,rows1749,rows1750,rows1751,List.append_assoc,List.append_nil]
theorem partOpsLength26 : partOps26.length=64 := by decide
theorem partStats26 : partRows26.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows26=372960 := by
  simp only [partRows26,List.length_append,MatrixRowBlocks.rows_weight_append,stats1688.1,stats1688.2,stats1689.1,stats1689.2,stats1690.1,stats1690.2,stats1691.1,stats1691.2,stats1692.1,stats1692.2,stats1693.1,stats1693.2,stats1694.1,stats1694.2,stats1695.1,stats1695.2,stats1696.1,stats1696.2,stats1697.1,stats1697.2,stats1698.1,stats1698.2,stats1699.1,stats1699.2,stats1700.1,stats1700.2,stats1701.1,stats1701.2,stats1702.1,stats1702.2,stats1703.1,stats1703.2,stats1704.1,stats1704.2,stats1705.1,stats1705.2,stats1706.1,stats1706.2,stats1707.1,stats1707.2,stats1708.1,stats1708.2,stats1709.1,stats1709.2,stats1710.1,stats1710.2,stats1711.1,stats1711.2,stats1712.1,stats1712.2,stats1713.1,stats1713.2,stats1714.1,stats1714.2,stats1715.1,stats1715.2,stats1716.1,stats1716.2,stats1717.1,stats1717.2,stats1718.1,stats1718.2,stats1719.1,stats1719.2,stats1720.1,stats1720.2,stats1721.1,stats1721.2,stats1722.1,stats1722.2,stats1723.1,stats1723.2,stats1724.1,stats1724.2,stats1725.1,stats1725.2,stats1726.1,stats1726.2,stats1727.1,stats1727.2,stats1728.1,stats1728.2,stats1729.1,stats1729.2,stats1730.1,stats1730.2,stats1731.1,stats1731.2,stats1732.1,stats1732.2,stats1733.1,stats1733.2,stats1734.1,stats1734.2,stats1735.1,stats1735.2,stats1736.1,stats1736.2,stats1737.1,stats1737.2,stats1738.1,stats1738.2,stats1739.1,stats1739.2,stats1740.1,stats1740.2,stats1741.1,stats1741.2,stats1742.1,stats1742.2,stats1743.1,stats1743.2,stats1744.1,stats1744.2,stats1745.1,stats1745.2,stats1746.1,stats1746.2,stats1747.1,stats1747.2,stats1748.1,stats1748.2,stats1749.1,stats1749.2,stats1750.1,stats1750.2,stats1751.1,stats1751.2]
  decide
end ActualSHAMatrixRows
