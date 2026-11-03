import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData26
import AuthenticatedBranchRoundInstructionMatrixData27
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1718 : actualRows1718=WordField.canonicalRows actualModulus 1718 (.bnot 1288) := by core033_kernel_decide
theorem stats1718 : actualRows1718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1718=6276 := by core033_kernel_decide
theorem rows1719 : actualRows1719=WordField.canonicalRows actualModulus 1719 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1719 : actualRows1719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1719=2892 := by core033_kernel_decide
theorem rows1720 : actualRows1720=WordField.canonicalRows actualModulus 1720 (.badd 1718 1719) := by core033_kernel_decide
theorem stats1720 : actualRows1720.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1720=5388 := by core033_kernel_decide
theorem rows1721 : actualRows1721=WordField.canonicalRows actualModulus 1721 (.band 1720 1215) := by core033_kernel_decide
theorem stats1721 : actualRows1721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1721=5124 := by core033_kernel_decide
theorem rows1722 : actualRows1722=WordField.canonicalRows actualModulus 1722 (.bnot 1288) := by core033_kernel_decide
theorem stats1722 : actualRows1722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1722=6276 := by core033_kernel_decide
theorem rows1723 : actualRows1723=WordField.canonicalRows actualModulus 1723 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1723 : actualRows1723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1723=2892 := by core033_kernel_decide
theorem rows1724 : actualRows1724=WordField.canonicalRows actualModulus 1724 (.badd 1722 1723) := by core033_kernel_decide
theorem stats1724 : actualRows1724.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1724=5388 := by core033_kernel_decide
theorem rows1725 : actualRows1725=WordField.canonicalRows actualModulus 1725 (.bnot 1724) := by core033_kernel_decide
theorem stats1725 : actualRows1725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1725=6276 := by core033_kernel_decide
theorem rows1726 : actualRows1726=WordField.canonicalRows actualModulus 1726 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1726 : actualRows1726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1726=2820 := by core033_kernel_decide
theorem rows1727 : actualRows1727=WordField.canonicalRows actualModulus 1727 (.band 1725 1726) := by core033_kernel_decide
theorem stats1727 : actualRows1727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1727=5124 := by core033_kernel_decide
theorem rows1728 : actualRows1728=WordField.canonicalRows actualModulus 1728 (.bxor 1721 1727) := by core033_kernel_decide
theorem stats1728 : actualRows1728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1728=7428 := by core033_kernel_decide
theorem rows1729 : actualRows1729=WordField.canonicalRows actualModulus 1729 (.bnot 1288) := by core033_kernel_decide
theorem stats1729 : actualRows1729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1729=6276 := by core033_kernel_decide
theorem rows1730 : actualRows1730=WordField.canonicalRows actualModulus 1730 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1730 : actualRows1730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1730=2892 := by core033_kernel_decide
theorem rows1731 : actualRows1731=WordField.canonicalRows actualModulus 1731 (.badd 1729 1730) := by core033_kernel_decide
theorem stats1731 : actualRows1731.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1731=5388 := by core033_kernel_decide
theorem rows1732 : actualRows1732=WordField.canonicalRows actualModulus 1732 (.band 1731 1225) := by core033_kernel_decide
theorem stats1732 : actualRows1732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1732=5124 := by core033_kernel_decide
theorem rows1733 : actualRows1733=WordField.canonicalRows actualModulus 1733 (.bnot 1288) := by core033_kernel_decide
theorem stats1733 : actualRows1733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1733=6276 := by core033_kernel_decide
theorem rows1734 : actualRows1734=WordField.canonicalRows actualModulus 1734 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1734 : actualRows1734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1734=2892 := by core033_kernel_decide
theorem rows1735 : actualRows1735=WordField.canonicalRows actualModulus 1735 (.badd 1733 1734) := by core033_kernel_decide
theorem stats1735 : actualRows1735.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1735=5388 := by core033_kernel_decide
theorem rows1736 : actualRows1736=WordField.canonicalRows actualModulus 1736 (.bnot 1735) := by core033_kernel_decide
theorem stats1736 : actualRows1736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1736=6276 := by core033_kernel_decide
theorem rows1737 : actualRows1737=WordField.canonicalRows actualModulus 1737 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1737 : actualRows1737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1737=2820 := by core033_kernel_decide
theorem rows1738 : actualRows1738=WordField.canonicalRows actualModulus 1738 (.band 1736 1737) := by core033_kernel_decide
theorem stats1738 : actualRows1738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1738=5124 := by core033_kernel_decide
theorem rows1739 : actualRows1739=WordField.canonicalRows actualModulus 1739 (.bxor 1732 1738) := by core033_kernel_decide
theorem stats1739 : actualRows1739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1739=7428 := by core033_kernel_decide
theorem rows1740 : actualRows1740=WordField.canonicalRows actualModulus 1740 (.bnot 1288) := by core033_kernel_decide
theorem stats1740 : actualRows1740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1740=6276 := by core033_kernel_decide
theorem rows1741 : actualRows1741=WordField.canonicalRows actualModulus 1741 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1741 : actualRows1741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1741=2892 := by core033_kernel_decide
theorem rows1742 : actualRows1742=WordField.canonicalRows actualModulus 1742 (.badd 1740 1741) := by core033_kernel_decide
theorem stats1742 : actualRows1742.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1742=5388 := by core033_kernel_decide
theorem rows1743 : actualRows1743=WordField.canonicalRows actualModulus 1743 (.band 1742 1235) := by core033_kernel_decide
theorem stats1743 : actualRows1743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1743=5124 := by core033_kernel_decide
theorem rows1744 : actualRows1744=WordField.canonicalRows actualModulus 1744 (.bnot 1288) := by core033_kernel_decide
theorem stats1744 : actualRows1744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1744=6276 := by core033_kernel_decide
theorem rows1745 : actualRows1745=WordField.canonicalRows actualModulus 1745 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1745 : actualRows1745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1745=2892 := by core033_kernel_decide
theorem rows1746 : actualRows1746=WordField.canonicalRows actualModulus 1746 (.badd 1744 1745) := by core033_kernel_decide
theorem stats1746 : actualRows1746.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1746=5388 := by core033_kernel_decide
theorem rows1747 : actualRows1747=WordField.canonicalRows actualModulus 1747 (.bnot 1746) := by core033_kernel_decide
theorem stats1747 : actualRows1747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1747=6276 := by core033_kernel_decide
theorem rows1748 : actualRows1748=WordField.canonicalRows actualModulus 1748 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1748 : actualRows1748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1748=2820 := by core033_kernel_decide
theorem rows1749 : actualRows1749=WordField.canonicalRows actualModulus 1749 (.band 1747 1748) := by core033_kernel_decide
theorem stats1749 : actualRows1749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1749=5124 := by core033_kernel_decide
theorem rows1750 : actualRows1750=WordField.canonicalRows actualModulus 1750 (.bxor 1743 1749) := by core033_kernel_decide
theorem stats1750 : actualRows1750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1750=7428 := by core033_kernel_decide
theorem rows1751 : actualRows1751=WordField.canonicalRows actualModulus 1751 (.bnot 1288) := by core033_kernel_decide
theorem stats1751 : actualRows1751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1751=6276 := by core033_kernel_decide
theorem rows1752 : actualRows1752=WordField.canonicalRows actualModulus 1752 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1752 : actualRows1752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1752=2892 := by core033_kernel_decide
theorem rows1753 : actualRows1753=WordField.canonicalRows actualModulus 1753 (.badd 1751 1752) := by core033_kernel_decide
theorem stats1753 : actualRows1753.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1753=5388 := by core033_kernel_decide
theorem rows1754 : actualRows1754=WordField.canonicalRows actualModulus 1754 (.band 1753 1245) := by core033_kernel_decide
theorem stats1754 : actualRows1754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1754=5124 := by core033_kernel_decide
theorem rows1755 : actualRows1755=WordField.canonicalRows actualModulus 1755 (.bnot 1288) := by core033_kernel_decide
theorem stats1755 : actualRows1755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1755=6276 := by core033_kernel_decide
theorem rows1756 : actualRows1756=WordField.canonicalRows actualModulus 1756 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1756 : actualRows1756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1756=2892 := by core033_kernel_decide
theorem rows1757 : actualRows1757=WordField.canonicalRows actualModulus 1757 (.badd 1755 1756) := by core033_kernel_decide
theorem stats1757 : actualRows1757.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1757=5388 := by core033_kernel_decide
theorem rows1758 : actualRows1758=WordField.canonicalRows actualModulus 1758 (.bnot 1757) := by core033_kernel_decide
theorem stats1758 : actualRows1758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1758=6276 := by core033_kernel_decide
theorem rows1759 : actualRows1759=WordField.canonicalRows actualModulus 1759 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1759 : actualRows1759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1759=2820 := by core033_kernel_decide
theorem rows1760 : actualRows1760=WordField.canonicalRows actualModulus 1760 (.band 1758 1759) := by core033_kernel_decide
theorem stats1760 : actualRows1760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1760=5124 := by core033_kernel_decide
theorem rows1761 : actualRows1761=WordField.canonicalRows actualModulus 1761 (.bxor 1754 1760) := by core033_kernel_decide
theorem stats1761 : actualRows1761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1761=7428 := by core033_kernel_decide
theorem rows1762 : actualRows1762=WordField.canonicalRows actualModulus 1762 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1762 : actualRows1762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1762=2892 := by core033_kernel_decide
theorem rows1763 : actualRows1763=WordField.canonicalRows actualModulus 1763 (.badd 1321 1762) := by core033_kernel_decide
theorem stats1763 : actualRows1763.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1763=5388 := by core033_kernel_decide
theorem rows1764 : actualRows1764=WordField.canonicalRows actualModulus 1764 (.bnot 1321) := by core033_kernel_decide
theorem stats1764 : actualRows1764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1764=6276 := by core033_kernel_decide
theorem rows1765 : actualRows1765=WordField.canonicalRows actualModulus 1765 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1765 : actualRows1765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1765=3396 := by core033_kernel_decide
theorem rows1766 : actualRows1766=WordField.canonicalRows actualModulus 1766 (.band 1764 1765) := by core033_kernel_decide
theorem stats1766 : actualRows1766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1766=5124 := by core033_kernel_decide
theorem rows1767 : actualRows1767=WordField.canonicalRows actualModulus 1767 (.shr 1321 8) := by core033_kernel_decide
theorem stats1767 : actualRows1767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1767=4548 := by core033_kernel_decide
theorem rows1768 : actualRows1768=WordField.canonicalRows actualModulus 1768 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1768 : actualRows1768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1768=2820 := by core033_kernel_decide
theorem rows1769 : actualRows1769=WordField.canonicalRows actualModulus 1769 (.bnot 1768) := by core033_kernel_decide
theorem stats1769 : actualRows1769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1769=6276 := by core033_kernel_decide
theorem rows1770 : actualRows1770=WordField.canonicalRows actualModulus 1770 (.band 1767 1769) := by core033_kernel_decide
theorem stats1770 : actualRows1770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1770=5124 := by core033_kernel_decide
theorem rows1771 : actualRows1771=WordField.canonicalRows actualModulus 1771 (.shr 1321 8) := by core033_kernel_decide
theorem stats1771 : actualRows1771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1771=4548 := by core033_kernel_decide
theorem rows1772 : actualRows1772=WordField.canonicalRows actualModulus 1772 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1772 : actualRows1772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1772=2820 := by core033_kernel_decide
theorem rows1773 : actualRows1773=WordField.canonicalRows actualModulus 1773 (.bnot 1772) := by core033_kernel_decide
theorem stats1773 : actualRows1773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1773=6276 := by core033_kernel_decide
theorem rows1774 : actualRows1774=WordField.canonicalRows actualModulus 1774 (.bxor 1771 1773) := by core033_kernel_decide
theorem stats1774 : actualRows1774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1774=7428 := by core033_kernel_decide
theorem rows1775 : actualRows1775=WordField.canonicalRows actualModulus 1775 (.shr 1321 8) := by core033_kernel_decide
theorem stats1775 : actualRows1775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1775=4548 := by core033_kernel_decide
theorem rows1776 : actualRows1776=WordField.canonicalRows actualModulus 1776 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1776 : actualRows1776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1776=2820 := by core033_kernel_decide
theorem rows1777 : actualRows1777=WordField.canonicalRows actualModulus 1777 (.bnot 1776) := by core033_kernel_decide
theorem stats1777 : actualRows1777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1777=6276 := by core033_kernel_decide
theorem rows1778 : actualRows1778=WordField.canonicalRows actualModulus 1778 (.badd 1775 1777) := by core033_kernel_decide
theorem stats1778 : actualRows1778.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1778=5388 := by core033_kernel_decide
theorem rows1779 : actualRows1779=WordField.canonicalRows actualModulus 1779 (.bnot 1778) := by core033_kernel_decide
theorem stats1779 : actualRows1779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1779=6276 := by core033_kernel_decide
theorem rows1780 : actualRows1780=WordField.canonicalRows actualModulus 1780 (.band 1774 1779) := by core033_kernel_decide
theorem stats1780 : actualRows1780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1780=5124 := by core033_kernel_decide
theorem rows1781 : actualRows1781=WordField.canonicalRows actualModulus 1781 (.bxor 1770 1780) := by core033_kernel_decide
theorem stats1781 : actualRows1781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1781=7428 := by core033_kernel_decide
def partRows25 : List R1CS.Row := actualRows1718++actualRows1719++actualRows1720++actualRows1721++actualRows1722++actualRows1723++actualRows1724++actualRows1725++actualRows1726++actualRows1727++actualRows1728++actualRows1729++actualRows1730++actualRows1731++actualRows1732++actualRows1733++actualRows1734++actualRows1735++actualRows1736++actualRows1737++actualRows1738++actualRows1739++actualRows1740++actualRows1741++actualRows1742++actualRows1743++actualRows1744++actualRows1745++actualRows1746++actualRows1747++actualRows1748++actualRows1749++actualRows1750++actualRows1751++actualRows1752++actualRows1753++actualRows1754++actualRows1755++actualRows1756++actualRows1757++actualRows1758++actualRows1759++actualRows1760++actualRows1761++actualRows1762++actualRows1763++actualRows1764++actualRows1765++actualRows1766++actualRows1767++actualRows1768++actualRows1769++actualRows1770++actualRows1771++actualRows1772++actualRows1773++actualRows1774++actualRows1775++actualRows1776++actualRows1777++actualRows1778++actualRows1779++actualRows1780++actualRows1781
def partOps25 : List WordIR.Op := [.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1718 1719,.band 1720 1215,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1722 1723,.bnot 1724,.literal (BitVec.ofNat 32 0),.band 1725 1726,.bxor 1721 1727,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1729 1730,.band 1731 1225,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1733 1734,.bnot 1735,.literal (BitVec.ofNat 32 0),.band 1736 1737,.bxor 1732 1738,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1740 1741,.band 1742 1235,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1744 1745,.bnot 1746,.literal (BitVec.ofNat 32 0),.band 1747 1748,.bxor 1743 1749,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1751 1752,.band 1753 1245,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1755 1756,.bnot 1757,.literal (BitVec.ofNat 32 0),.band 1758 1759,.bxor 1754 1760,.literal (BitVec.ofNat 32 1),.badd 1321 1762,.bnot 1321,.literal (BitVec.ofNat 32 255),.band 1764 1765,.shr 1321 8,.literal (BitVec.ofNat 32 0),.bnot 1768,.band 1767 1769,.shr 1321 8,.literal (BitVec.ofNat 32 0),.bnot 1772,.bxor 1771 1773,.shr 1321 8,.literal (BitVec.ofNat 32 0),.bnot 1776,.badd 1775 1777,.bnot 1778,.band 1774 1779,.bxor 1770 1780]
theorem partExact25 : partRows25=WordField.rows actualModulus 1718 partOps25 := by
  simp only [partRows25,partOps25,WordField.rows,rows1718,rows1719,rows1720,rows1721,rows1722,rows1723,rows1724,rows1725,rows1726,rows1727,rows1728,rows1729,rows1730,rows1731,rows1732,rows1733,rows1734,rows1735,rows1736,rows1737,rows1738,rows1739,rows1740,rows1741,rows1742,rows1743,rows1744,rows1745,rows1746,rows1747,rows1748,rows1749,rows1750,rows1751,rows1752,rows1753,rows1754,rows1755,rows1756,rows1757,rows1758,rows1759,rows1760,rows1761,rows1762,rows1763,rows1764,rows1765,rows1766,rows1767,rows1768,rows1769,rows1770,rows1771,rows1772,rows1773,rows1774,rows1775,rows1776,rows1777,rows1778,rows1779,rows1780,rows1781,List.append_assoc,List.append_nil]
theorem partLength25 : partOps25.length=64 := by decide
theorem partStats25 : partRows25.length=2186 ∧ MatrixRowBlocks.rowsWeight partRows25=324312 := by
  simp only [partRows25,List.length_append,MatrixRowBlocks.rows_weight_append,stats1718.1,stats1718.2,stats1719.1,stats1719.2,stats1720.1,stats1720.2,stats1721.1,stats1721.2,stats1722.1,stats1722.2,stats1723.1,stats1723.2,stats1724.1,stats1724.2,stats1725.1,stats1725.2,stats1726.1,stats1726.2,stats1727.1,stats1727.2,stats1728.1,stats1728.2,stats1729.1,stats1729.2,stats1730.1,stats1730.2,stats1731.1,stats1731.2,stats1732.1,stats1732.2,stats1733.1,stats1733.2,stats1734.1,stats1734.2,stats1735.1,stats1735.2,stats1736.1,stats1736.2,stats1737.1,stats1737.2,stats1738.1,stats1738.2,stats1739.1,stats1739.2,stats1740.1,stats1740.2,stats1741.1,stats1741.2,stats1742.1,stats1742.2,stats1743.1,stats1743.2,stats1744.1,stats1744.2,stats1745.1,stats1745.2,stats1746.1,stats1746.2,stats1747.1,stats1747.2,stats1748.1,stats1748.2,stats1749.1,stats1749.2,stats1750.1,stats1750.2,stats1751.1,stats1751.2,stats1752.1,stats1752.2,stats1753.1,stats1753.2,stats1754.1,stats1754.2,stats1755.1,stats1755.2,stats1756.1,stats1756.2,stats1757.1,stats1757.2,stats1758.1,stats1758.2,stats1759.1,stats1759.2,stats1760.1,stats1760.2,stats1761.1,stats1761.2,stats1762.1,stats1762.2,stats1763.1,stats1763.2,stats1764.1,stats1764.2,stats1765.1,stats1765.2,stats1766.1,stats1766.2,stats1767.1,stats1767.2,stats1768.1,stats1768.2,stats1769.1,stats1769.2,stats1770.1,stats1770.2,stats1771.1,stats1771.2,stats1772.1,stats1772.2,stats1773.1,stats1773.2,stats1774.1,stats1774.2,stats1775.1,stats1775.2,stats1776.1,stats1776.2,stats1777.1,stats1777.2,stats1778.1,stats1778.2,stats1779.1,stats1779.2,stats1780.1,stats1780.2,stats1781.1,stats1781.2]
  decide
end AuthenticatedBranchRoundCheckedRows
