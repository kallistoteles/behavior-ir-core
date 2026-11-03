import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData26
import PairedPathRoundInstructionMatrixData27
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1696 : actualRows1696=WordField.canonicalRows actualModulus 1696 (.bnot 1695) := by core033_kernel_decide
theorem stats1696 : actualRows1696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1696=6276 := by core033_kernel_decide
theorem rows1697 : actualRows1697=WordField.canonicalRows actualModulus 1697 (.band 1615 1696) := by core033_kernel_decide
theorem stats1697 : actualRows1697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1697=5124 := by core033_kernel_decide
theorem rows1698 : actualRows1698=WordField.canonicalRows actualModulus 1698 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1698 : actualRows1698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1698=2820 := by core033_kernel_decide
theorem rows1699 : actualRows1699=WordField.canonicalRows actualModulus 1699 (.bnot 1698) := by core033_kernel_decide
theorem stats1699 : actualRows1699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1699=6276 := by core033_kernel_decide
theorem rows1700 : actualRows1700=WordField.canonicalRows actualModulus 1700 (.bxor 1615 1699) := by core033_kernel_decide
theorem stats1700 : actualRows1700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1700=7428 := by core033_kernel_decide
theorem rows1701 : actualRows1701=WordField.canonicalRows actualModulus 1701 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1701 : actualRows1701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1701=2820 := by core033_kernel_decide
theorem rows1702 : actualRows1702=WordField.canonicalRows actualModulus 1702 (.bnot 1701) := by core033_kernel_decide
theorem stats1702 : actualRows1702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1702=6276 := by core033_kernel_decide
theorem rows1703 : actualRows1703=WordField.canonicalRows actualModulus 1703 (.badd 1615 1702) := by core033_kernel_decide
theorem stats1703 : actualRows1703.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1703=5388 := by core033_kernel_decide
theorem rows1704 : actualRows1704=WordField.canonicalRows actualModulus 1704 (.bnot 1703) := by core033_kernel_decide
theorem stats1704 : actualRows1704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1704=6276 := by core033_kernel_decide
theorem rows1705 : actualRows1705=WordField.canonicalRows actualModulus 1705 (.band 1700 1704) := by core033_kernel_decide
theorem stats1705 : actualRows1705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1705=5124 := by core033_kernel_decide
theorem rows1706 : actualRows1706=WordField.canonicalRows actualModulus 1706 (.bxor 1697 1705) := by core033_kernel_decide
theorem stats1706 : actualRows1706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1706=7428 := by core033_kernel_decide
theorem rows1707 : actualRows1707=WordField.canonicalRows actualModulus 1707 (.shr 1706 31) := by core033_kernel_decide
theorem stats1707 : actualRows1707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1707=2892 := by core033_kernel_decide
theorem rows1708 : actualRows1708=WordField.canonicalRows actualModulus 1708 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1708 : actualRows1708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1708=2892 := by core033_kernel_decide
theorem rows1709 : actualRows1709=WordField.canonicalRows actualModulus 1709 (.bxor 1707 1708) := by core033_kernel_decide
theorem stats1709 : actualRows1709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1709=7428 := by core033_kernel_decide
theorem rows1710 : actualRows1710=WordField.canonicalRows actualModulus 1710 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1710 : actualRows1710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1710=2892 := by core033_kernel_decide
theorem rows1711 : actualRows1711=WordField.canonicalRows actualModulus 1711 (.bnot 1710) := by core033_kernel_decide
theorem stats1711 : actualRows1711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1711=6276 := by core033_kernel_decide
theorem rows1712 : actualRows1712=WordField.canonicalRows actualModulus 1712 (.band 1605 1711) := by core033_kernel_decide
theorem stats1712 : actualRows1712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1712=5124 := by core033_kernel_decide
theorem rows1713 : actualRows1713=WordField.canonicalRows actualModulus 1713 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1713 : actualRows1713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1713=2892 := by core033_kernel_decide
theorem rows1714 : actualRows1714=WordField.canonicalRows actualModulus 1714 (.bnot 1713) := by core033_kernel_decide
theorem stats1714 : actualRows1714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1714=6276 := by core033_kernel_decide
theorem rows1715 : actualRows1715=WordField.canonicalRows actualModulus 1715 (.bxor 1605 1714) := by core033_kernel_decide
theorem stats1715 : actualRows1715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1715=7428 := by core033_kernel_decide
theorem rows1716 : actualRows1716=WordField.canonicalRows actualModulus 1716 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1716 : actualRows1716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1716=2892 := by core033_kernel_decide
theorem rows1717 : actualRows1717=WordField.canonicalRows actualModulus 1717 (.bnot 1716) := by core033_kernel_decide
theorem stats1717 : actualRows1717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1717=6276 := by core033_kernel_decide
theorem rows1718 : actualRows1718=WordField.canonicalRows actualModulus 1718 (.badd 1605 1717) := by core033_kernel_decide
theorem stats1718 : actualRows1718.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1718=5388 := by core033_kernel_decide
theorem rows1719 : actualRows1719=WordField.canonicalRows actualModulus 1719 (.bnot 1718) := by core033_kernel_decide
theorem stats1719 : actualRows1719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1719=6276 := by core033_kernel_decide
theorem rows1720 : actualRows1720=WordField.canonicalRows actualModulus 1720 (.band 1715 1719) := by core033_kernel_decide
theorem stats1720 : actualRows1720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1720=5124 := by core033_kernel_decide
theorem rows1721 : actualRows1721=WordField.canonicalRows actualModulus 1721 (.bxor 1712 1720) := by core033_kernel_decide
theorem stats1721 : actualRows1721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1721=7428 := by core033_kernel_decide
theorem rows1722 : actualRows1722=WordField.canonicalRows actualModulus 1722 (.shr 1721 31) := by core033_kernel_decide
theorem stats1722 : actualRows1722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1722=2892 := by core033_kernel_decide
theorem rows1723 : actualRows1723=WordField.canonicalRows actualModulus 1723 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1723 : actualRows1723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1723=2892 := by core033_kernel_decide
theorem rows1724 : actualRows1724=WordField.canonicalRows actualModulus 1724 (.bxor 1722 1723) := by core033_kernel_decide
theorem stats1724 : actualRows1724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1724=7428 := by core033_kernel_decide
theorem rows1725 : actualRows1725=WordField.canonicalRows actualModulus 1725 (.band 1709 1724) := by core033_kernel_decide
theorem stats1725 : actualRows1725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1725=5124 := by core033_kernel_decide
theorem rows1726 : actualRows1726=WordField.canonicalRows actualModulus 1726 (.band 1694 1725) := by core033_kernel_decide
theorem stats1726 : actualRows1726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1726=5124 := by core033_kernel_decide
theorem rows1727 : actualRows1727=WordField.canonicalRows actualModulus 1727 (.badd 1495 1615) := by core033_kernel_decide
theorem stats1727 : actualRows1727.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1727=5388 := by core033_kernel_decide
theorem rows1728 : actualRows1728=WordField.canonicalRows actualModulus 1728 (.band 1485 1605) := by core033_kernel_decide
theorem stats1728 : actualRows1728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1728=5124 := by core033_kernel_decide
theorem rows1729 : actualRows1729=WordField.canonicalRows actualModulus 1729 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats1729 : actualRows1729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1729=7428 := by core033_kernel_decide
theorem rows1730 : actualRows1730=WordField.canonicalRows actualModulus 1730 (.badd 1485 1605) := by core033_kernel_decide
theorem stats1730 : actualRows1730.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1730=5388 := by core033_kernel_decide
theorem rows1731 : actualRows1731=WordField.canonicalRows actualModulus 1731 (.bnot 1730) := by core033_kernel_decide
theorem stats1731 : actualRows1731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1731=6276 := by core033_kernel_decide
theorem rows1732 : actualRows1732=WordField.canonicalRows actualModulus 1732 (.band 1729 1731) := by core033_kernel_decide
theorem stats1732 : actualRows1732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1732=5124 := by core033_kernel_decide
theorem rows1733 : actualRows1733=WordField.canonicalRows actualModulus 1733 (.bxor 1728 1732) := by core033_kernel_decide
theorem stats1733 : actualRows1733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1733=7428 := by core033_kernel_decide
theorem rows1734 : actualRows1734=WordField.canonicalRows actualModulus 1734 (.shr 1733 31) := by core033_kernel_decide
theorem stats1734 : actualRows1734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1734=2892 := by core033_kernel_decide
theorem rows1735 : actualRows1735=WordField.canonicalRows actualModulus 1735 (.badd 1727 1734) := by core033_kernel_decide
theorem stats1735 : actualRows1735.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1735=5388 := by core033_kernel_decide
theorem rows1736 : actualRows1736=WordField.canonicalRows actualModulus 1736 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1736 : actualRows1736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1736=2820 := by core033_kernel_decide
theorem rows1737 : actualRows1737=WordField.canonicalRows actualModulus 1737 (.bnot 1736) := by core033_kernel_decide
theorem stats1737 : actualRows1737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1737=6276 := by core033_kernel_decide
theorem rows1738 : actualRows1738=WordField.canonicalRows actualModulus 1738 (.band 1735 1737) := by core033_kernel_decide
theorem stats1738 : actualRows1738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1738=5124 := by core033_kernel_decide
theorem rows1739 : actualRows1739=WordField.canonicalRows actualModulus 1739 (.badd 1495 1615) := by core033_kernel_decide
theorem stats1739 : actualRows1739.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1739=5388 := by core033_kernel_decide
theorem rows1740 : actualRows1740=WordField.canonicalRows actualModulus 1740 (.band 1485 1605) := by core033_kernel_decide
theorem stats1740 : actualRows1740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1740=5124 := by core033_kernel_decide
theorem rows1741 : actualRows1741=WordField.canonicalRows actualModulus 1741 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats1741 : actualRows1741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1741=7428 := by core033_kernel_decide
theorem rows1742 : actualRows1742=WordField.canonicalRows actualModulus 1742 (.badd 1485 1605) := by core033_kernel_decide
theorem stats1742 : actualRows1742.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1742=5388 := by core033_kernel_decide
theorem rows1743 : actualRows1743=WordField.canonicalRows actualModulus 1743 (.bnot 1742) := by core033_kernel_decide
theorem stats1743 : actualRows1743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1743=6276 := by core033_kernel_decide
theorem rows1744 : actualRows1744=WordField.canonicalRows actualModulus 1744 (.band 1741 1743) := by core033_kernel_decide
theorem stats1744 : actualRows1744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1744=5124 := by core033_kernel_decide
theorem rows1745 : actualRows1745=WordField.canonicalRows actualModulus 1745 (.bxor 1740 1744) := by core033_kernel_decide
theorem stats1745 : actualRows1745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1745=7428 := by core033_kernel_decide
theorem rows1746 : actualRows1746=WordField.canonicalRows actualModulus 1746 (.shr 1745 31) := by core033_kernel_decide
theorem stats1746 : actualRows1746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1746=2892 := by core033_kernel_decide
theorem rows1747 : actualRows1747=WordField.canonicalRows actualModulus 1747 (.badd 1739 1746) := by core033_kernel_decide
theorem stats1747 : actualRows1747.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1747=5388 := by core033_kernel_decide
theorem rows1748 : actualRows1748=WordField.canonicalRows actualModulus 1748 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1748 : actualRows1748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1748=2820 := by core033_kernel_decide
theorem rows1749 : actualRows1749=WordField.canonicalRows actualModulus 1749 (.bnot 1748) := by core033_kernel_decide
theorem stats1749 : actualRows1749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1749=6276 := by core033_kernel_decide
theorem rows1750 : actualRows1750=WordField.canonicalRows actualModulus 1750 (.bxor 1747 1749) := by core033_kernel_decide
theorem stats1750 : actualRows1750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1750=7428 := by core033_kernel_decide
theorem rows1751 : actualRows1751=WordField.canonicalRows actualModulus 1751 (.badd 1495 1615) := by core033_kernel_decide
theorem stats1751 : actualRows1751.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1751=5388 := by core033_kernel_decide
theorem rows1752 : actualRows1752=WordField.canonicalRows actualModulus 1752 (.band 1485 1605) := by core033_kernel_decide
theorem stats1752 : actualRows1752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1752=5124 := by core033_kernel_decide
theorem rows1753 : actualRows1753=WordField.canonicalRows actualModulus 1753 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats1753 : actualRows1753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1753=7428 := by core033_kernel_decide
theorem rows1754 : actualRows1754=WordField.canonicalRows actualModulus 1754 (.badd 1485 1605) := by core033_kernel_decide
theorem stats1754 : actualRows1754.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1754=5388 := by core033_kernel_decide
theorem rows1755 : actualRows1755=WordField.canonicalRows actualModulus 1755 (.bnot 1754) := by core033_kernel_decide
theorem stats1755 : actualRows1755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1755=6276 := by core033_kernel_decide
theorem rows1756 : actualRows1756=WordField.canonicalRows actualModulus 1756 (.band 1753 1755) := by core033_kernel_decide
theorem stats1756 : actualRows1756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1756=5124 := by core033_kernel_decide
theorem rows1757 : actualRows1757=WordField.canonicalRows actualModulus 1757 (.bxor 1752 1756) := by core033_kernel_decide
theorem stats1757 : actualRows1757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1757=7428 := by core033_kernel_decide
theorem rows1758 : actualRows1758=WordField.canonicalRows actualModulus 1758 (.shr 1757 31) := by core033_kernel_decide
theorem stats1758 : actualRows1758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1758=2892 := by core033_kernel_decide
theorem rows1759 : actualRows1759=WordField.canonicalRows actualModulus 1759 (.badd 1751 1758) := by core033_kernel_decide
theorem stats1759 : actualRows1759.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1759=5388 := by core033_kernel_decide
def partRows25 : List R1CS.Row := actualRows1696++actualRows1697++actualRows1698++actualRows1699++actualRows1700++actualRows1701++actualRows1702++actualRows1703++actualRows1704++actualRows1705++actualRows1706++actualRows1707++actualRows1708++actualRows1709++actualRows1710++actualRows1711++actualRows1712++actualRows1713++actualRows1714++actualRows1715++actualRows1716++actualRows1717++actualRows1718++actualRows1719++actualRows1720++actualRows1721++actualRows1722++actualRows1723++actualRows1724++actualRows1725++actualRows1726++actualRows1727++actualRows1728++actualRows1729++actualRows1730++actualRows1731++actualRows1732++actualRows1733++actualRows1734++actualRows1735++actualRows1736++actualRows1737++actualRows1738++actualRows1739++actualRows1740++actualRows1741++actualRows1742++actualRows1743++actualRows1744++actualRows1745++actualRows1746++actualRows1747++actualRows1748++actualRows1749++actualRows1750++actualRows1751++actualRows1752++actualRows1753++actualRows1754++actualRows1755++actualRows1756++actualRows1757++actualRows1758++actualRows1759
def partOps25 : List WordIR.Op := [.bnot 1695,.band 1615 1696,.literal (BitVec.ofNat 32 0),.bnot 1698,.bxor 1615 1699,.literal (BitVec.ofNat 32 0),.bnot 1701,.badd 1615 1702,.bnot 1703,.band 1700 1704,.bxor 1697 1705,.shr 1706 31,.literal (BitVec.ofNat 32 1),.bxor 1707 1708,.literal (BitVec.ofNat 32 1048576),.bnot 1710,.band 1605 1711,.literal (BitVec.ofNat 32 1048576),.bnot 1713,.bxor 1605 1714,.literal (BitVec.ofNat 32 1048576),.bnot 1716,.badd 1605 1717,.bnot 1718,.band 1715 1719,.bxor 1712 1720,.shr 1721 31,.literal (BitVec.ofNat 32 1),.bxor 1722 1723,.band 1709 1724,.band 1694 1725,.badd 1495 1615,.band 1485 1605,.bxor 1485 1605,.badd 1485 1605,.bnot 1730,.band 1729 1731,.bxor 1728 1732,.shr 1733 31,.badd 1727 1734,.literal (BitVec.ofNat 32 0),.bnot 1736,.band 1735 1737,.badd 1495 1615,.band 1485 1605,.bxor 1485 1605,.badd 1485 1605,.bnot 1742,.band 1741 1743,.bxor 1740 1744,.shr 1745 31,.badd 1739 1746,.literal (BitVec.ofNat 32 0),.bnot 1748,.bxor 1747 1749,.badd 1495 1615,.band 1485 1605,.bxor 1485 1605,.badd 1485 1605,.bnot 1754,.band 1753 1755,.bxor 1752 1756,.shr 1757 31,.badd 1751 1758]
theorem partExact25 : partRows25=WordField.rows actualModulus 1696 partOps25 := by
  simp only [partRows25,partOps25,WordField.rows,rows1696,rows1697,rows1698,rows1699,rows1700,rows1701,rows1702,rows1703,rows1704,rows1705,rows1706,rows1707,rows1708,rows1709,rows1710,rows1711,rows1712,rows1713,rows1714,rows1715,rows1716,rows1717,rows1718,rows1719,rows1720,rows1721,rows1722,rows1723,rows1724,rows1725,rows1726,rows1727,rows1728,rows1729,rows1730,rows1731,rows1732,rows1733,rows1734,rows1735,rows1736,rows1737,rows1738,rows1739,rows1740,rows1741,rows1742,rows1743,rows1744,rows1745,rows1746,rows1747,rows1748,rows1749,rows1750,rows1751,rows1752,rows1753,rows1754,rows1755,rows1756,rows1757,rows1758,rows1759,List.append_assoc,List.append_nil]
theorem partLength25 : partOps25.length=64 := by decide
theorem partStats25 : partRows25.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows25=344232 := by
  simp only [partRows25,List.length_append,MatrixRowBlocks.rows_weight_append,stats1696.1,stats1696.2,stats1697.1,stats1697.2,stats1698.1,stats1698.2,stats1699.1,stats1699.2,stats1700.1,stats1700.2,stats1701.1,stats1701.2,stats1702.1,stats1702.2,stats1703.1,stats1703.2,stats1704.1,stats1704.2,stats1705.1,stats1705.2,stats1706.1,stats1706.2,stats1707.1,stats1707.2,stats1708.1,stats1708.2,stats1709.1,stats1709.2,stats1710.1,stats1710.2,stats1711.1,stats1711.2,stats1712.1,stats1712.2,stats1713.1,stats1713.2,stats1714.1,stats1714.2,stats1715.1,stats1715.2,stats1716.1,stats1716.2,stats1717.1,stats1717.2,stats1718.1,stats1718.2,stats1719.1,stats1719.2,stats1720.1,stats1720.2,stats1721.1,stats1721.2,stats1722.1,stats1722.2,stats1723.1,stats1723.2,stats1724.1,stats1724.2,stats1725.1,stats1725.2,stats1726.1,stats1726.2,stats1727.1,stats1727.2,stats1728.1,stats1728.2,stats1729.1,stats1729.2,stats1730.1,stats1730.2,stats1731.1,stats1731.2,stats1732.1,stats1732.2,stats1733.1,stats1733.2,stats1734.1,stats1734.2,stats1735.1,stats1735.2,stats1736.1,stats1736.2,stats1737.1,stats1737.2,stats1738.1,stats1738.2,stats1739.1,stats1739.2,stats1740.1,stats1740.2,stats1741.1,stats1741.2,stats1742.1,stats1742.2,stats1743.1,stats1743.2,stats1744.1,stats1744.2,stats1745.1,stats1745.2,stats1746.1,stats1746.2,stats1747.1,stats1747.2,stats1748.1,stats1748.2,stats1749.1,stats1749.2,stats1750.1,stats1750.2,stats1751.1,stats1751.2,stats1752.1,stats1752.2,stats1753.1,stats1753.2,stats1754.1,stats1754.2,stats1755.1,stats1755.2,stats1756.1,stats1756.2,stats1757.1,stats1757.2,stats1758.1,stats1758.2,stats1759.1,stats1759.2]
  decide
end QuotedPairedPathRoundCheckedRows
