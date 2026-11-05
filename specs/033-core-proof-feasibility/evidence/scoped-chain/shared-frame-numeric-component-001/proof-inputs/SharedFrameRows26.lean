import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData26
import SharedFrameInstructionMatrixData27
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1707 : actualRows1707=WordField.canonicalRows actualModulus 1707 (.shr 946 3) := by core033_kernel_decide
theorem stats1707 : actualRows1707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1707=4908 := by core033_kernel_decide
theorem rows1708 : actualRows1708=WordField.canonicalRows actualModulus 1708 (.bxor 1706 1707) := by core033_kernel_decide
theorem stats1708 : actualRows1708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1708=7428 := by core033_kernel_decide
theorem rows1709 : actualRows1709=WordField.canonicalRows actualModulus 1709 (.badd 1703 1708) := by core033_kernel_decide
theorem stats1709 : actualRows1709.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1709=5388 := by core033_kernel_decide
theorem rows1710 : actualRows1710=WordField.canonicalRows actualModulus 1710 (.badd 1709 940) := by core033_kernel_decide
theorem stats1710 : actualRows1710.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1710=5388 := by core033_kernel_decide
theorem rows1711 : actualRows1711=WordField.canonicalRows actualModulus 1711 (.rotr 1697 17) := by core033_kernel_decide
theorem stats1711 : actualRows1711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1711=5124 := by core033_kernel_decide
theorem rows1712 : actualRows1712=WordField.canonicalRows actualModulus 1712 (.rotr 1697 19) := by core033_kernel_decide
theorem stats1712 : actualRows1712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1712=5124 := by core033_kernel_decide
theorem rows1713 : actualRows1713=WordField.canonicalRows actualModulus 1713 (.bxor 1711 1712) := by core033_kernel_decide
theorem stats1713 : actualRows1713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1713=7428 := by core033_kernel_decide
theorem rows1714 : actualRows1714=WordField.canonicalRows actualModulus 1714 (.shr 1697 10) := by core033_kernel_decide
theorem stats1714 : actualRows1714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1714=4404 := by core033_kernel_decide
theorem rows1715 : actualRows1715=WordField.canonicalRows actualModulus 1715 (.bxor 1713 1714) := by core033_kernel_decide
theorem stats1715 : actualRows1715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1715=7428 := by core033_kernel_decide
theorem rows1716 : actualRows1716=WordField.canonicalRows actualModulus 1716 (.badd 1715 1632) := by core033_kernel_decide
theorem stats1716 : actualRows1716.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1716=5388 := by core033_kernel_decide
theorem rows1717 : actualRows1717=WordField.canonicalRows actualModulus 1717 (.rotr 952 7) := by core033_kernel_decide
theorem stats1717 : actualRows1717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1717=5124 := by core033_kernel_decide
theorem rows1718 : actualRows1718=WordField.canonicalRows actualModulus 1718 (.rotr 952 18) := by core033_kernel_decide
theorem stats1718 : actualRows1718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1718=5124 := by core033_kernel_decide
theorem rows1719 : actualRows1719=WordField.canonicalRows actualModulus 1719 (.bxor 1717 1718) := by core033_kernel_decide
theorem stats1719 : actualRows1719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1719=7428 := by core033_kernel_decide
theorem rows1720 : actualRows1720=WordField.canonicalRows actualModulus 1720 (.shr 952 3) := by core033_kernel_decide
theorem stats1720 : actualRows1720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1720=4908 := by core033_kernel_decide
theorem rows1721 : actualRows1721=WordField.canonicalRows actualModulus 1721 (.bxor 1719 1720) := by core033_kernel_decide
theorem stats1721 : actualRows1721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1721=7428 := by core033_kernel_decide
theorem rows1722 : actualRows1722=WordField.canonicalRows actualModulus 1722 (.badd 1716 1721) := by core033_kernel_decide
theorem stats1722 : actualRows1722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1722=5388 := by core033_kernel_decide
theorem rows1723 : actualRows1723=WordField.canonicalRows actualModulus 1723 (.badd 1722 946) := by core033_kernel_decide
theorem stats1723 : actualRows1723.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1723=5388 := by core033_kernel_decide
theorem rows1724 : actualRows1724=WordField.canonicalRows actualModulus 1724 (.rotr 1710 17) := by core033_kernel_decide
theorem stats1724 : actualRows1724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1724=5124 := by core033_kernel_decide
theorem rows1725 : actualRows1725=WordField.canonicalRows actualModulus 1725 (.rotr 1710 19) := by core033_kernel_decide
theorem stats1725 : actualRows1725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1725=5124 := by core033_kernel_decide
theorem rows1726 : actualRows1726=WordField.canonicalRows actualModulus 1726 (.bxor 1724 1725) := by core033_kernel_decide
theorem stats1726 : actualRows1726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1726=7428 := by core033_kernel_decide
theorem rows1727 : actualRows1727=WordField.canonicalRows actualModulus 1727 (.shr 1710 10) := by core033_kernel_decide
theorem stats1727 : actualRows1727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1727=4404 := by core033_kernel_decide
theorem rows1728 : actualRows1728=WordField.canonicalRows actualModulus 1728 (.bxor 1726 1727) := by core033_kernel_decide
theorem stats1728 : actualRows1728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1728=7428 := by core033_kernel_decide
theorem rows1729 : actualRows1729=WordField.canonicalRows actualModulus 1729 (.badd 1728 1645) := by core033_kernel_decide
theorem stats1729 : actualRows1729.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1729=5388 := by core033_kernel_decide
theorem rows1730 : actualRows1730=WordField.canonicalRows actualModulus 1730 (.rotr 1541 7) := by core033_kernel_decide
theorem stats1730 : actualRows1730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1730=5124 := by core033_kernel_decide
theorem rows1731 : actualRows1731=WordField.canonicalRows actualModulus 1731 (.rotr 1541 18) := by core033_kernel_decide
theorem stats1731 : actualRows1731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1731=5124 := by core033_kernel_decide
theorem rows1732 : actualRows1732=WordField.canonicalRows actualModulus 1732 (.bxor 1730 1731) := by core033_kernel_decide
theorem stats1732 : actualRows1732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1732=7428 := by core033_kernel_decide
theorem rows1733 : actualRows1733=WordField.canonicalRows actualModulus 1733 (.shr 1541 3) := by core033_kernel_decide
theorem stats1733 : actualRows1733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1733=4908 := by core033_kernel_decide
theorem rows1734 : actualRows1734=WordField.canonicalRows actualModulus 1734 (.bxor 1732 1733) := by core033_kernel_decide
theorem stats1734 : actualRows1734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1734=7428 := by core033_kernel_decide
theorem rows1735 : actualRows1735=WordField.canonicalRows actualModulus 1735 (.badd 1729 1734) := by core033_kernel_decide
theorem stats1735 : actualRows1735.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1735=5388 := by core033_kernel_decide
theorem rows1736 : actualRows1736=WordField.canonicalRows actualModulus 1736 (.badd 1735 952) := by core033_kernel_decide
theorem stats1736 : actualRows1736.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1736=5388 := by core033_kernel_decide
theorem rows1737 : actualRows1737=WordField.canonicalRows actualModulus 1737 (.rotr 1723 17) := by core033_kernel_decide
theorem stats1737 : actualRows1737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1737=5124 := by core033_kernel_decide
theorem rows1738 : actualRows1738=WordField.canonicalRows actualModulus 1738 (.rotr 1723 19) := by core033_kernel_decide
theorem stats1738 : actualRows1738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1738=5124 := by core033_kernel_decide
theorem rows1739 : actualRows1739=WordField.canonicalRows actualModulus 1739 (.bxor 1737 1738) := by core033_kernel_decide
theorem stats1739 : actualRows1739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1739=7428 := by core033_kernel_decide
theorem rows1740 : actualRows1740=WordField.canonicalRows actualModulus 1740 (.shr 1723 10) := by core033_kernel_decide
theorem stats1740 : actualRows1740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1740=4404 := by core033_kernel_decide
theorem rows1741 : actualRows1741=WordField.canonicalRows actualModulus 1741 (.bxor 1739 1740) := by core033_kernel_decide
theorem stats1741 : actualRows1741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1741=7428 := by core033_kernel_decide
theorem rows1742 : actualRows1742=WordField.canonicalRows actualModulus 1742 (.badd 1741 1658) := by core033_kernel_decide
theorem stats1742 : actualRows1742.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1742=5388 := by core033_kernel_decide
theorem rows1743 : actualRows1743=WordField.canonicalRows actualModulus 1743 (.rotr 1554 7) := by core033_kernel_decide
theorem stats1743 : actualRows1743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1743=5124 := by core033_kernel_decide
theorem rows1744 : actualRows1744=WordField.canonicalRows actualModulus 1744 (.rotr 1554 18) := by core033_kernel_decide
theorem stats1744 : actualRows1744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1744=5124 := by core033_kernel_decide
theorem rows1745 : actualRows1745=WordField.canonicalRows actualModulus 1745 (.bxor 1743 1744) := by core033_kernel_decide
theorem stats1745 : actualRows1745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1745=7428 := by core033_kernel_decide
theorem rows1746 : actualRows1746=WordField.canonicalRows actualModulus 1746 (.shr 1554 3) := by core033_kernel_decide
theorem stats1746 : actualRows1746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1746=4908 := by core033_kernel_decide
theorem rows1747 : actualRows1747=WordField.canonicalRows actualModulus 1747 (.bxor 1745 1746) := by core033_kernel_decide
theorem stats1747 : actualRows1747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1747=7428 := by core033_kernel_decide
theorem rows1748 : actualRows1748=WordField.canonicalRows actualModulus 1748 (.badd 1742 1747) := by core033_kernel_decide
theorem stats1748 : actualRows1748.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1748=5388 := by core033_kernel_decide
theorem rows1749 : actualRows1749=WordField.canonicalRows actualModulus 1749 (.badd 1748 1541) := by core033_kernel_decide
theorem stats1749 : actualRows1749.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1749=5388 := by core033_kernel_decide
theorem rows1750 : actualRows1750=WordField.canonicalRows actualModulus 1750 (.rotr 1736 17) := by core033_kernel_decide
theorem stats1750 : actualRows1750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1750=5124 := by core033_kernel_decide
theorem rows1751 : actualRows1751=WordField.canonicalRows actualModulus 1751 (.rotr 1736 19) := by core033_kernel_decide
theorem stats1751 : actualRows1751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1751=5124 := by core033_kernel_decide
theorem rows1752 : actualRows1752=WordField.canonicalRows actualModulus 1752 (.bxor 1750 1751) := by core033_kernel_decide
theorem stats1752 : actualRows1752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1752=7428 := by core033_kernel_decide
theorem rows1753 : actualRows1753=WordField.canonicalRows actualModulus 1753 (.shr 1736 10) := by core033_kernel_decide
theorem stats1753 : actualRows1753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1753=4404 := by core033_kernel_decide
theorem rows1754 : actualRows1754=WordField.canonicalRows actualModulus 1754 (.bxor 1752 1753) := by core033_kernel_decide
theorem stats1754 : actualRows1754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1754=7428 := by core033_kernel_decide
theorem rows1755 : actualRows1755=WordField.canonicalRows actualModulus 1755 (.badd 1754 1671) := by core033_kernel_decide
theorem stats1755 : actualRows1755.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1755=5388 := by core033_kernel_decide
theorem rows1756 : actualRows1756=WordField.canonicalRows actualModulus 1756 (.rotr 1567 7) := by core033_kernel_decide
theorem stats1756 : actualRows1756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1756=5124 := by core033_kernel_decide
theorem rows1757 : actualRows1757=WordField.canonicalRows actualModulus 1757 (.rotr 1567 18) := by core033_kernel_decide
theorem stats1757 : actualRows1757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1757=5124 := by core033_kernel_decide
theorem rows1758 : actualRows1758=WordField.canonicalRows actualModulus 1758 (.bxor 1756 1757) := by core033_kernel_decide
theorem stats1758 : actualRows1758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1758=7428 := by core033_kernel_decide
theorem rows1759 : actualRows1759=WordField.canonicalRows actualModulus 1759 (.shr 1567 3) := by core033_kernel_decide
theorem stats1759 : actualRows1759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1759=4908 := by core033_kernel_decide
theorem rows1760 : actualRows1760=WordField.canonicalRows actualModulus 1760 (.bxor 1758 1759) := by core033_kernel_decide
theorem stats1760 : actualRows1760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1760=7428 := by core033_kernel_decide
theorem rows1761 : actualRows1761=WordField.canonicalRows actualModulus 1761 (.badd 1755 1760) := by core033_kernel_decide
theorem stats1761 : actualRows1761.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1761=5388 := by core033_kernel_decide
theorem rows1762 : actualRows1762=WordField.canonicalRows actualModulus 1762 (.badd 1761 1554) := by core033_kernel_decide
theorem stats1762 : actualRows1762.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1762=5388 := by core033_kernel_decide
theorem rows1763 : actualRows1763=WordField.canonicalRows actualModulus 1763 (.rotr 1749 17) := by core033_kernel_decide
theorem stats1763 : actualRows1763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1763=5124 := by core033_kernel_decide
theorem rows1764 : actualRows1764=WordField.canonicalRows actualModulus 1764 (.rotr 1749 19) := by core033_kernel_decide
theorem stats1764 : actualRows1764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1764=5124 := by core033_kernel_decide
theorem rows1765 : actualRows1765=WordField.canonicalRows actualModulus 1765 (.bxor 1763 1764) := by core033_kernel_decide
theorem stats1765 : actualRows1765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1765=7428 := by core033_kernel_decide
theorem rows1766 : actualRows1766=WordField.canonicalRows actualModulus 1766 (.shr 1749 10) := by core033_kernel_decide
theorem stats1766 : actualRows1766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1766=4404 := by core033_kernel_decide
theorem rows1767 : actualRows1767=WordField.canonicalRows actualModulus 1767 (.bxor 1765 1766) := by core033_kernel_decide
theorem stats1767 : actualRows1767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1767=7428 := by core033_kernel_decide
theorem rows1768 : actualRows1768=WordField.canonicalRows actualModulus 1768 (.badd 1767 1684) := by core033_kernel_decide
theorem stats1768 : actualRows1768.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1768=5388 := by core033_kernel_decide
theorem rows1769 : actualRows1769=WordField.canonicalRows actualModulus 1769 (.rotr 1580 7) := by core033_kernel_decide
theorem stats1769 : actualRows1769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1769=5124 := by core033_kernel_decide
theorem rows1770 : actualRows1770=WordField.canonicalRows actualModulus 1770 (.rotr 1580 18) := by core033_kernel_decide
theorem stats1770 : actualRows1770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1770=5124 := by core033_kernel_decide
def partRows26 : List R1CS.Row := actualRows1707++actualRows1708++actualRows1709++actualRows1710++actualRows1711++actualRows1712++actualRows1713++actualRows1714++actualRows1715++actualRows1716++actualRows1717++actualRows1718++actualRows1719++actualRows1720++actualRows1721++actualRows1722++actualRows1723++actualRows1724++actualRows1725++actualRows1726++actualRows1727++actualRows1728++actualRows1729++actualRows1730++actualRows1731++actualRows1732++actualRows1733++actualRows1734++actualRows1735++actualRows1736++actualRows1737++actualRows1738++actualRows1739++actualRows1740++actualRows1741++actualRows1742++actualRows1743++actualRows1744++actualRows1745++actualRows1746++actualRows1747++actualRows1748++actualRows1749++actualRows1750++actualRows1751++actualRows1752++actualRows1753++actualRows1754++actualRows1755++actualRows1756++actualRows1757++actualRows1758++actualRows1759++actualRows1760++actualRows1761++actualRows1762++actualRows1763++actualRows1764++actualRows1765++actualRows1766++actualRows1767++actualRows1768++actualRows1769++actualRows1770
def partOps26 : List WordIR.Op := [.shr 946 3,.bxor 1706 1707,.badd 1703 1708,.badd 1709 940,.rotr 1697 17,.rotr 1697 19,.bxor 1711 1712,.shr 1697 10,.bxor 1713 1714,.badd 1715 1632,.rotr 952 7,.rotr 952 18,.bxor 1717 1718,.shr 952 3,.bxor 1719 1720,.badd 1716 1721,.badd 1722 946,.rotr 1710 17,.rotr 1710 19,.bxor 1724 1725,.shr 1710 10,.bxor 1726 1727,.badd 1728 1645,.rotr 1541 7,.rotr 1541 18,.bxor 1730 1731,.shr 1541 3,.bxor 1732 1733,.badd 1729 1734,.badd 1735 952,.rotr 1723 17,.rotr 1723 19,.bxor 1737 1738,.shr 1723 10,.bxor 1739 1740,.badd 1741 1658,.rotr 1554 7,.rotr 1554 18,.bxor 1743 1744,.shr 1554 3,.bxor 1745 1746,.badd 1742 1747,.badd 1748 1541,.rotr 1736 17,.rotr 1736 19,.bxor 1750 1751,.shr 1736 10,.bxor 1752 1753,.badd 1754 1671,.rotr 1567 7,.rotr 1567 18,.bxor 1756 1757,.shr 1567 3,.bxor 1758 1759,.badd 1755 1760,.badd 1761 1554,.rotr 1749 17,.rotr 1749 19,.bxor 1763 1764,.shr 1749 10,.bxor 1765 1766,.badd 1767 1684,.rotr 1580 7,.rotr 1580 18]
theorem partExact26 : partRows26=WordField.rows actualModulus 1707 partOps26 := by
  simp only [partRows26,partOps26,WordField.rows,rows1707,rows1708,rows1709,rows1710,rows1711,rows1712,rows1713,rows1714,rows1715,rows1716,rows1717,rows1718,rows1719,rows1720,rows1721,rows1722,rows1723,rows1724,rows1725,rows1726,rows1727,rows1728,rows1729,rows1730,rows1731,rows1732,rows1733,rows1734,rows1735,rows1736,rows1737,rows1738,rows1739,rows1740,rows1741,rows1742,rows1743,rows1744,rows1745,rows1746,rows1747,rows1748,rows1749,rows1750,rows1751,rows1752,rows1753,rows1754,rows1755,rows1756,rows1757,rows1758,rows1759,rows1760,rows1761,rows1762,rows1763,rows1764,rows1765,rows1766,rows1767,rows1768,rows1769,rows1770,List.append_assoc,List.append_nil]
theorem partLength26 : partOps26.length=64 := by decide
theorem partStats26 : partRows26.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows26=370992 := by
  simp only [partRows26,List.length_append,MatrixRowBlocks.rows_weight_append,stats1707.1,stats1707.2,stats1708.1,stats1708.2,stats1709.1,stats1709.2,stats1710.1,stats1710.2,stats1711.1,stats1711.2,stats1712.1,stats1712.2,stats1713.1,stats1713.2,stats1714.1,stats1714.2,stats1715.1,stats1715.2,stats1716.1,stats1716.2,stats1717.1,stats1717.2,stats1718.1,stats1718.2,stats1719.1,stats1719.2,stats1720.1,stats1720.2,stats1721.1,stats1721.2,stats1722.1,stats1722.2,stats1723.1,stats1723.2,stats1724.1,stats1724.2,stats1725.1,stats1725.2,stats1726.1,stats1726.2,stats1727.1,stats1727.2,stats1728.1,stats1728.2,stats1729.1,stats1729.2,stats1730.1,stats1730.2,stats1731.1,stats1731.2,stats1732.1,stats1732.2,stats1733.1,stats1733.2,stats1734.1,stats1734.2,stats1735.1,stats1735.2,stats1736.1,stats1736.2,stats1737.1,stats1737.2,stats1738.1,stats1738.2,stats1739.1,stats1739.2,stats1740.1,stats1740.2,stats1741.1,stats1741.2,stats1742.1,stats1742.2,stats1743.1,stats1743.2,stats1744.1,stats1744.2,stats1745.1,stats1745.2,stats1746.1,stats1746.2,stats1747.1,stats1747.2,stats1748.1,stats1748.2,stats1749.1,stats1749.2,stats1750.1,stats1750.2,stats1751.1,stats1751.2,stats1752.1,stats1752.2,stats1753.1,stats1753.2,stats1754.1,stats1754.2,stats1755.1,stats1755.2,stats1756.1,stats1756.2,stats1757.1,stats1757.2,stats1758.1,stats1758.2,stats1759.1,stats1759.2,stats1760.1,stats1760.2,stats1761.1,stats1761.2,stats1762.1,stats1762.2,stats1763.1,stats1763.2,stats1764.1,stats1764.2,stats1765.1,stats1765.2,stats1766.1,stats1766.2,stats1767.1,stats1767.2,stats1768.1,stats1768.2,stats1769.1,stats1769.2,stats1770.1,stats1770.2]
  decide
end SharedFrameCheckedRows
