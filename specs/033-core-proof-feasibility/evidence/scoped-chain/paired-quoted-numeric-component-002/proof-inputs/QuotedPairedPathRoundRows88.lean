import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData89
import PairedPathRoundInstructionMatrixData90
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5728 : actualRows5728=WordField.canonicalRows actualModulus 5728 (.band 5725 5727) := by core033_kernel_decide
theorem stats5728 : actualRows5728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5728=5124 := by core033_kernel_decide
theorem rows5729 : actualRows5729=WordField.canonicalRows actualModulus 5729 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5729 : actualRows5729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5729=2892 := by core033_kernel_decide
theorem rows5730 : actualRows5730=WordField.canonicalRows actualModulus 5730 (.bxor 616 5729) := by core033_kernel_decide
theorem stats5730 : actualRows5730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5730=7428 := by core033_kernel_decide
theorem rows5731 : actualRows5731=WordField.canonicalRows actualModulus 5731 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5731 : actualRows5731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5731=2820 := by core033_kernel_decide
theorem rows5732 : actualRows5732=WordField.canonicalRows actualModulus 5732 (.bnot 5731) := by core033_kernel_decide
theorem stats5732 : actualRows5732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5732=6276 := by core033_kernel_decide
theorem rows5733 : actualRows5733=WordField.canonicalRows actualModulus 5733 (.bxor 5730 5732) := by core033_kernel_decide
theorem stats5733 : actualRows5733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5733=7428 := by core033_kernel_decide
theorem rows5734 : actualRows5734=WordField.canonicalRows actualModulus 5734 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5734 : actualRows5734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5734=2892 := by core033_kernel_decide
theorem rows5735 : actualRows5735=WordField.canonicalRows actualModulus 5735 (.bxor 616 5734) := by core033_kernel_decide
theorem stats5735 : actualRows5735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5735=7428 := by core033_kernel_decide
theorem rows5736 : actualRows5736=WordField.canonicalRows actualModulus 5736 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5736 : actualRows5736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5736=2820 := by core033_kernel_decide
theorem rows5737 : actualRows5737=WordField.canonicalRows actualModulus 5737 (.bnot 5736) := by core033_kernel_decide
theorem stats5737 : actualRows5737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5737=6276 := by core033_kernel_decide
theorem rows5738 : actualRows5738=WordField.canonicalRows actualModulus 5738 (.badd 5735 5737) := by core033_kernel_decide
theorem stats5738 : actualRows5738.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5738=5388 := by core033_kernel_decide
theorem rows5739 : actualRows5739=WordField.canonicalRows actualModulus 5739 (.bnot 5738) := by core033_kernel_decide
theorem stats5739 : actualRows5739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5739=6276 := by core033_kernel_decide
theorem rows5740 : actualRows5740=WordField.canonicalRows actualModulus 5740 (.band 5733 5739) := by core033_kernel_decide
theorem stats5740 : actualRows5740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5740=5124 := by core033_kernel_decide
theorem rows5741 : actualRows5741=WordField.canonicalRows actualModulus 5741 (.bxor 5728 5740) := by core033_kernel_decide
theorem stats5741 : actualRows5741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5741=7428 := by core033_kernel_decide
theorem rows5742 : actualRows5742=WordField.canonicalRows actualModulus 5742 (.shr 5741 31) := by core033_kernel_decide
theorem stats5742 : actualRows5742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5742=2892 := by core033_kernel_decide
theorem rows5743 : actualRows5743=WordField.canonicalRows actualModulus 5743 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5743 : actualRows5743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5743=2892 := by core033_kernel_decide
theorem rows5744 : actualRows5744=WordField.canonicalRows actualModulus 5744 (.bxor 5742 5743) := by core033_kernel_decide
theorem stats5744 : actualRows5744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5744=7428 := by core033_kernel_decide
theorem rows5745 : actualRows5745=WordField.canonicalRows actualModulus 5745 (.bnot 5744) := by core033_kernel_decide
theorem stats5745 : actualRows5745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5745=6276 := by core033_kernel_decide
theorem rows5746 : actualRows5746=WordField.canonicalRows actualModulus 5746 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5746 : actualRows5746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5746=2892 := by core033_kernel_decide
theorem rows5747 : actualRows5747=WordField.canonicalRows actualModulus 5747 (.badd 5745 5746) := by core033_kernel_decide
theorem stats5747 : actualRows5747.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5747=5388 := by core033_kernel_decide
theorem rows5748 : actualRows5748=WordField.canonicalRows actualModulus 5748 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5748 : actualRows5748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5748=2820 := by core033_kernel_decide
theorem rows5749 : actualRows5749=WordField.canonicalRows actualModulus 5749 (.band 5747 5748) := by core033_kernel_decide
theorem stats5749 : actualRows5749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5749=5124 := by core033_kernel_decide
theorem rows5750 : actualRows5750=WordField.canonicalRows actualModulus 5750 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5750 : actualRows5750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5750=2892 := by core033_kernel_decide
theorem rows5751 : actualRows5751=WordField.canonicalRows actualModulus 5751 (.bxor 616 5750) := by core033_kernel_decide
theorem stats5751 : actualRows5751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5751=7428 := by core033_kernel_decide
theorem rows5752 : actualRows5752=WordField.canonicalRows actualModulus 5752 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5752 : actualRows5752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5752=2820 := by core033_kernel_decide
theorem rows5753 : actualRows5753=WordField.canonicalRows actualModulus 5753 (.bnot 5752) := by core033_kernel_decide
theorem stats5753 : actualRows5753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5753=6276 := by core033_kernel_decide
theorem rows5754 : actualRows5754=WordField.canonicalRows actualModulus 5754 (.band 5751 5753) := by core033_kernel_decide
theorem stats5754 : actualRows5754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5754=5124 := by core033_kernel_decide
theorem rows5755 : actualRows5755=WordField.canonicalRows actualModulus 5755 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5755 : actualRows5755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5755=2892 := by core033_kernel_decide
theorem rows5756 : actualRows5756=WordField.canonicalRows actualModulus 5756 (.bxor 616 5755) := by core033_kernel_decide
theorem stats5756 : actualRows5756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5756=7428 := by core033_kernel_decide
theorem rows5757 : actualRows5757=WordField.canonicalRows actualModulus 5757 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5757 : actualRows5757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5757=2820 := by core033_kernel_decide
theorem rows5758 : actualRows5758=WordField.canonicalRows actualModulus 5758 (.bnot 5757) := by core033_kernel_decide
theorem stats5758 : actualRows5758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5758=6276 := by core033_kernel_decide
theorem rows5759 : actualRows5759=WordField.canonicalRows actualModulus 5759 (.bxor 5756 5758) := by core033_kernel_decide
theorem stats5759 : actualRows5759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5759=7428 := by core033_kernel_decide
theorem rows5760 : actualRows5760=WordField.canonicalRows actualModulus 5760 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5760 : actualRows5760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5760=2892 := by core033_kernel_decide
theorem rows5761 : actualRows5761=WordField.canonicalRows actualModulus 5761 (.bxor 616 5760) := by core033_kernel_decide
theorem stats5761 : actualRows5761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5761=7428 := by core033_kernel_decide
theorem rows5762 : actualRows5762=WordField.canonicalRows actualModulus 5762 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5762 : actualRows5762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5762=2820 := by core033_kernel_decide
theorem rows5763 : actualRows5763=WordField.canonicalRows actualModulus 5763 (.bnot 5762) := by core033_kernel_decide
theorem stats5763 : actualRows5763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5763=6276 := by core033_kernel_decide
theorem rows5764 : actualRows5764=WordField.canonicalRows actualModulus 5764 (.badd 5761 5763) := by core033_kernel_decide
theorem stats5764 : actualRows5764.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5764=5388 := by core033_kernel_decide
theorem rows5765 : actualRows5765=WordField.canonicalRows actualModulus 5765 (.bnot 5764) := by core033_kernel_decide
theorem stats5765 : actualRows5765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5765=6276 := by core033_kernel_decide
theorem rows5766 : actualRows5766=WordField.canonicalRows actualModulus 5766 (.band 5759 5765) := by core033_kernel_decide
theorem stats5766 : actualRows5766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5766=5124 := by core033_kernel_decide
theorem rows5767 : actualRows5767=WordField.canonicalRows actualModulus 5767 (.bxor 5754 5766) := by core033_kernel_decide
theorem stats5767 : actualRows5767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5767=7428 := by core033_kernel_decide
theorem rows5768 : actualRows5768=WordField.canonicalRows actualModulus 5768 (.shr 5767 31) := by core033_kernel_decide
theorem stats5768 : actualRows5768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5768=2892 := by core033_kernel_decide
theorem rows5769 : actualRows5769=WordField.canonicalRows actualModulus 5769 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5769 : actualRows5769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5769=2892 := by core033_kernel_decide
theorem rows5770 : actualRows5770=WordField.canonicalRows actualModulus 5770 (.bxor 5768 5769) := by core033_kernel_decide
theorem stats5770 : actualRows5770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5770=7428 := by core033_kernel_decide
theorem rows5771 : actualRows5771=WordField.canonicalRows actualModulus 5771 (.bnot 5770) := by core033_kernel_decide
theorem stats5771 : actualRows5771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5771=6276 := by core033_kernel_decide
theorem rows5772 : actualRows5772=WordField.canonicalRows actualModulus 5772 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5772 : actualRows5772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5772=2892 := by core033_kernel_decide
theorem rows5773 : actualRows5773=WordField.canonicalRows actualModulus 5773 (.badd 5771 5772) := by core033_kernel_decide
theorem stats5773 : actualRows5773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5773=5388 := by core033_kernel_decide
theorem rows5774 : actualRows5774=WordField.canonicalRows actualModulus 5774 (.bnot 5773) := by core033_kernel_decide
theorem stats5774 : actualRows5774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5774=6276 := by core033_kernel_decide
theorem rows5775 : actualRows5775=WordField.canonicalRows actualModulus 5775 (.band 5774 1986) := by core033_kernel_decide
theorem stats5775 : actualRows5775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5775=5124 := by core033_kernel_decide
theorem rows5776 : actualRows5776=WordField.canonicalRows actualModulus 5776 (.bxor 5749 5775) := by core033_kernel_decide
theorem stats5776 : actualRows5776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5776=7428 := by core033_kernel_decide
theorem rows5777 : actualRows5777=WordField.canonicalRows actualModulus 5777 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5777 : actualRows5777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5777=2892 := by core033_kernel_decide
theorem rows5778 : actualRows5778=WordField.canonicalRows actualModulus 5778 (.bxor 616 5777) := by core033_kernel_decide
theorem stats5778 : actualRows5778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5778=7428 := by core033_kernel_decide
theorem rows5779 : actualRows5779=WordField.canonicalRows actualModulus 5779 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5779 : actualRows5779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5779=2820 := by core033_kernel_decide
theorem rows5780 : actualRows5780=WordField.canonicalRows actualModulus 5780 (.bnot 5779) := by core033_kernel_decide
theorem stats5780 : actualRows5780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5780=6276 := by core033_kernel_decide
theorem rows5781 : actualRows5781=WordField.canonicalRows actualModulus 5781 (.band 5778 5780) := by core033_kernel_decide
theorem stats5781 : actualRows5781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5781=5124 := by core033_kernel_decide
theorem rows5782 : actualRows5782=WordField.canonicalRows actualModulus 5782 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5782 : actualRows5782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5782=2892 := by core033_kernel_decide
theorem rows5783 : actualRows5783=WordField.canonicalRows actualModulus 5783 (.bxor 616 5782) := by core033_kernel_decide
theorem stats5783 : actualRows5783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5783=7428 := by core033_kernel_decide
theorem rows5784 : actualRows5784=WordField.canonicalRows actualModulus 5784 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5784 : actualRows5784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5784=2820 := by core033_kernel_decide
theorem rows5785 : actualRows5785=WordField.canonicalRows actualModulus 5785 (.bnot 5784) := by core033_kernel_decide
theorem stats5785 : actualRows5785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5785=6276 := by core033_kernel_decide
theorem rows5786 : actualRows5786=WordField.canonicalRows actualModulus 5786 (.bxor 5783 5785) := by core033_kernel_decide
theorem stats5786 : actualRows5786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5786=7428 := by core033_kernel_decide
theorem rows5787 : actualRows5787=WordField.canonicalRows actualModulus 5787 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5787 : actualRows5787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5787=2892 := by core033_kernel_decide
theorem rows5788 : actualRows5788=WordField.canonicalRows actualModulus 5788 (.bxor 616 5787) := by core033_kernel_decide
theorem stats5788 : actualRows5788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5788=7428 := by core033_kernel_decide
theorem rows5789 : actualRows5789=WordField.canonicalRows actualModulus 5789 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5789 : actualRows5789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5789=2820 := by core033_kernel_decide
theorem rows5790 : actualRows5790=WordField.canonicalRows actualModulus 5790 (.bnot 5789) := by core033_kernel_decide
theorem stats5790 : actualRows5790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5790=6276 := by core033_kernel_decide
theorem rows5791 : actualRows5791=WordField.canonicalRows actualModulus 5791 (.badd 5788 5790) := by core033_kernel_decide
theorem stats5791 : actualRows5791.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5791=5388 := by core033_kernel_decide
def partRows88 : List R1CS.Row := actualRows5728++actualRows5729++actualRows5730++actualRows5731++actualRows5732++actualRows5733++actualRows5734++actualRows5735++actualRows5736++actualRows5737++actualRows5738++actualRows5739++actualRows5740++actualRows5741++actualRows5742++actualRows5743++actualRows5744++actualRows5745++actualRows5746++actualRows5747++actualRows5748++actualRows5749++actualRows5750++actualRows5751++actualRows5752++actualRows5753++actualRows5754++actualRows5755++actualRows5756++actualRows5757++actualRows5758++actualRows5759++actualRows5760++actualRows5761++actualRows5762++actualRows5763++actualRows5764++actualRows5765++actualRows5766++actualRows5767++actualRows5768++actualRows5769++actualRows5770++actualRows5771++actualRows5772++actualRows5773++actualRows5774++actualRows5775++actualRows5776++actualRows5777++actualRows5778++actualRows5779++actualRows5780++actualRows5781++actualRows5782++actualRows5783++actualRows5784++actualRows5785++actualRows5786++actualRows5787++actualRows5788++actualRows5789++actualRows5790++actualRows5791
def partOps88 : List WordIR.Op := [.band 5725 5727,.literal (BitVec.ofNat 32 2),.bxor 616 5729,.literal (BitVec.ofNat 32 0),.bnot 5731,.bxor 5730 5732,.literal (BitVec.ofNat 32 2),.bxor 616 5734,.literal (BitVec.ofNat 32 0),.bnot 5736,.badd 5735 5737,.bnot 5738,.band 5733 5739,.bxor 5728 5740,.shr 5741 31,.literal (BitVec.ofNat 32 1),.bxor 5742 5743,.bnot 5744,.literal (BitVec.ofNat 32 1),.badd 5745 5746,.literal (BitVec.ofNat 32 0),.band 5747 5748,.literal (BitVec.ofNat 32 2),.bxor 616 5750,.literal (BitVec.ofNat 32 0),.bnot 5752,.band 5751 5753,.literal (BitVec.ofNat 32 2),.bxor 616 5755,.literal (BitVec.ofNat 32 0),.bnot 5757,.bxor 5756 5758,.literal (BitVec.ofNat 32 2),.bxor 616 5760,.literal (BitVec.ofNat 32 0),.bnot 5762,.badd 5761 5763,.bnot 5764,.band 5759 5765,.bxor 5754 5766,.shr 5767 31,.literal (BitVec.ofNat 32 1),.bxor 5768 5769,.bnot 5770,.literal (BitVec.ofNat 32 1),.badd 5771 5772,.bnot 5773,.band 5774 1986,.bxor 5749 5775,.literal (BitVec.ofNat 32 2),.bxor 616 5777,.literal (BitVec.ofNat 32 0),.bnot 5779,.band 5778 5780,.literal (BitVec.ofNat 32 2),.bxor 616 5782,.literal (BitVec.ofNat 32 0),.bnot 5784,.bxor 5783 5785,.literal (BitVec.ofNat 32 2),.bxor 616 5787,.literal (BitVec.ofNat 32 0),.bnot 5789,.badd 5788 5790]
theorem partExact88 : partRows88=WordField.rows actualModulus 5728 partOps88 := by
  simp only [partRows88,partOps88,WordField.rows,rows5728,rows5729,rows5730,rows5731,rows5732,rows5733,rows5734,rows5735,rows5736,rows5737,rows5738,rows5739,rows5740,rows5741,rows5742,rows5743,rows5744,rows5745,rows5746,rows5747,rows5748,rows5749,rows5750,rows5751,rows5752,rows5753,rows5754,rows5755,rows5756,rows5757,rows5758,rows5759,rows5760,rows5761,rows5762,rows5763,rows5764,rows5765,rows5766,rows5767,rows5768,rows5769,rows5770,rows5771,rows5772,rows5773,rows5774,rows5775,rows5776,rows5777,rows5778,rows5779,rows5780,rows5781,rows5782,rows5783,rows5784,rows5785,rows5786,rows5787,rows5788,rows5789,rows5790,rows5791,List.append_assoc,List.append_nil]
theorem partLength88 : partOps88.length=64 := by decide
theorem partStats88 : partRows88.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows88=329112 := by
  simp only [partRows88,List.length_append,MatrixRowBlocks.rows_weight_append,stats5728.1,stats5728.2,stats5729.1,stats5729.2,stats5730.1,stats5730.2,stats5731.1,stats5731.2,stats5732.1,stats5732.2,stats5733.1,stats5733.2,stats5734.1,stats5734.2,stats5735.1,stats5735.2,stats5736.1,stats5736.2,stats5737.1,stats5737.2,stats5738.1,stats5738.2,stats5739.1,stats5739.2,stats5740.1,stats5740.2,stats5741.1,stats5741.2,stats5742.1,stats5742.2,stats5743.1,stats5743.2,stats5744.1,stats5744.2,stats5745.1,stats5745.2,stats5746.1,stats5746.2,stats5747.1,stats5747.2,stats5748.1,stats5748.2,stats5749.1,stats5749.2,stats5750.1,stats5750.2,stats5751.1,stats5751.2,stats5752.1,stats5752.2,stats5753.1,stats5753.2,stats5754.1,stats5754.2,stats5755.1,stats5755.2,stats5756.1,stats5756.2,stats5757.1,stats5757.2,stats5758.1,stats5758.2,stats5759.1,stats5759.2,stats5760.1,stats5760.2,stats5761.1,stats5761.2,stats5762.1,stats5762.2,stats5763.1,stats5763.2,stats5764.1,stats5764.2,stats5765.1,stats5765.2,stats5766.1,stats5766.2,stats5767.1,stats5767.2,stats5768.1,stats5768.2,stats5769.1,stats5769.2,stats5770.1,stats5770.2,stats5771.1,stats5771.2,stats5772.1,stats5772.2,stats5773.1,stats5773.2,stats5774.1,stats5774.2,stats5775.1,stats5775.2,stats5776.1,stats5776.2,stats5777.1,stats5777.2,stats5778.1,stats5778.2,stats5779.1,stats5779.2,stats5780.1,stats5780.2,stats5781.1,stats5781.2,stats5782.1,stats5782.2,stats5783.1,stats5783.2,stats5784.1,stats5784.2,stats5785.1,stats5785.2,stats5786.1,stats5786.2,stats5787.1,stats5787.2,stats5788.1,stats5788.2,stats5789.1,stats5789.2,stats5790.1,stats5790.2,stats5791.1,stats5791.2]
  decide
end QuotedPairedPathRoundCheckedRows
