import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData89
import AuthenticatedBranchRoundInstructionMatrixData90
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5750 : actualRows5750=WordField.canonicalRows actualModulus 5750 (.badd 5748 5749) := by core033_kernel_decide
theorem stats5750 : actualRows5750.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5750=5388 := by core033_kernel_decide
theorem rows5751 : actualRows5751=WordField.canonicalRows actualModulus 5751 (.band 5750 2822) := by core033_kernel_decide
theorem stats5751 : actualRows5751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5751=5124 := by core033_kernel_decide
theorem rows5752 : actualRows5752=WordField.canonicalRows actualModulus 5752 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5752 : actualRows5752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5752=2892 := by core033_kernel_decide
theorem rows5753 : actualRows5753=WordField.canonicalRows actualModulus 5753 (.bxor 1299 5752) := by core033_kernel_decide
theorem stats5753 : actualRows5753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5753=7428 := by core033_kernel_decide
theorem rows5754 : actualRows5754=WordField.canonicalRows actualModulus 5754 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5754 : actualRows5754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5754=2820 := by core033_kernel_decide
theorem rows5755 : actualRows5755=WordField.canonicalRows actualModulus 5755 (.bnot 5754) := by core033_kernel_decide
theorem stats5755 : actualRows5755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5755=6276 := by core033_kernel_decide
theorem rows5756 : actualRows5756=WordField.canonicalRows actualModulus 5756 (.band 5753 5755) := by core033_kernel_decide
theorem stats5756 : actualRows5756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5756=5124 := by core033_kernel_decide
theorem rows5757 : actualRows5757=WordField.canonicalRows actualModulus 5757 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5757 : actualRows5757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5757=2892 := by core033_kernel_decide
theorem rows5758 : actualRows5758=WordField.canonicalRows actualModulus 5758 (.bxor 1299 5757) := by core033_kernel_decide
theorem stats5758 : actualRows5758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5758=7428 := by core033_kernel_decide
theorem rows5759 : actualRows5759=WordField.canonicalRows actualModulus 5759 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5759 : actualRows5759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5759=2820 := by core033_kernel_decide
theorem rows5760 : actualRows5760=WordField.canonicalRows actualModulus 5760 (.bnot 5759) := by core033_kernel_decide
theorem stats5760 : actualRows5760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5760=6276 := by core033_kernel_decide
theorem rows5761 : actualRows5761=WordField.canonicalRows actualModulus 5761 (.bxor 5758 5760) := by core033_kernel_decide
theorem stats5761 : actualRows5761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5761=7428 := by core033_kernel_decide
theorem rows5762 : actualRows5762=WordField.canonicalRows actualModulus 5762 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5762 : actualRows5762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5762=2892 := by core033_kernel_decide
theorem rows5763 : actualRows5763=WordField.canonicalRows actualModulus 5763 (.bxor 1299 5762) := by core033_kernel_decide
theorem stats5763 : actualRows5763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5763=7428 := by core033_kernel_decide
theorem rows5764 : actualRows5764=WordField.canonicalRows actualModulus 5764 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5764 : actualRows5764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5764=2820 := by core033_kernel_decide
theorem rows5765 : actualRows5765=WordField.canonicalRows actualModulus 5765 (.bnot 5764) := by core033_kernel_decide
theorem stats5765 : actualRows5765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5765=6276 := by core033_kernel_decide
theorem rows5766 : actualRows5766=WordField.canonicalRows actualModulus 5766 (.badd 5763 5765) := by core033_kernel_decide
theorem stats5766 : actualRows5766.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5766=5388 := by core033_kernel_decide
theorem rows5767 : actualRows5767=WordField.canonicalRows actualModulus 5767 (.bnot 5766) := by core033_kernel_decide
theorem stats5767 : actualRows5767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5767=6276 := by core033_kernel_decide
theorem rows5768 : actualRows5768=WordField.canonicalRows actualModulus 5768 (.band 5761 5767) := by core033_kernel_decide
theorem stats5768 : actualRows5768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5768=5124 := by core033_kernel_decide
theorem rows5769 : actualRows5769=WordField.canonicalRows actualModulus 5769 (.bxor 5756 5768) := by core033_kernel_decide
theorem stats5769 : actualRows5769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5769=7428 := by core033_kernel_decide
theorem rows5770 : actualRows5770=WordField.canonicalRows actualModulus 5770 (.shr 5769 31) := by core033_kernel_decide
theorem stats5770 : actualRows5770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5770=2892 := by core033_kernel_decide
theorem rows5771 : actualRows5771=WordField.canonicalRows actualModulus 5771 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5771 : actualRows5771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5771=2892 := by core033_kernel_decide
theorem rows5772 : actualRows5772=WordField.canonicalRows actualModulus 5772 (.bxor 5770 5771) := by core033_kernel_decide
theorem stats5772 : actualRows5772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5772=7428 := by core033_kernel_decide
theorem rows5773 : actualRows5773=WordField.canonicalRows actualModulus 5773 (.bnot 5772) := by core033_kernel_decide
theorem stats5773 : actualRows5773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5773=6276 := by core033_kernel_decide
theorem rows5774 : actualRows5774=WordField.canonicalRows actualModulus 5774 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5774 : actualRows5774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5774=2892 := by core033_kernel_decide
theorem rows5775 : actualRows5775=WordField.canonicalRows actualModulus 5775 (.badd 5773 5774) := by core033_kernel_decide
theorem stats5775 : actualRows5775.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5775=5388 := by core033_kernel_decide
theorem rows5776 : actualRows5776=WordField.canonicalRows actualModulus 5776 (.bnot 5775) := by core033_kernel_decide
theorem stats5776 : actualRows5776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5776=6276 := by core033_kernel_decide
theorem rows5777 : actualRows5777=WordField.canonicalRows actualModulus 5777 (.band 5776 2630) := by core033_kernel_decide
theorem stats5777 : actualRows5777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5777=5124 := by core033_kernel_decide
theorem rows5778 : actualRows5778=WordField.canonicalRows actualModulus 5778 (.bxor 5751 5777) := by core033_kernel_decide
theorem stats5778 : actualRows5778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5778=7428 := by core033_kernel_decide
theorem rows5779 : actualRows5779=WordField.canonicalRows actualModulus 5779 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5779 : actualRows5779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5779=2892 := by core033_kernel_decide
theorem rows5780 : actualRows5780=WordField.canonicalRows actualModulus 5780 (.bxor 1299 5779) := by core033_kernel_decide
theorem stats5780 : actualRows5780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5780=7428 := by core033_kernel_decide
theorem rows5781 : actualRows5781=WordField.canonicalRows actualModulus 5781 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5781 : actualRows5781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5781=2820 := by core033_kernel_decide
theorem rows5782 : actualRows5782=WordField.canonicalRows actualModulus 5782 (.bnot 5781) := by core033_kernel_decide
theorem stats5782 : actualRows5782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5782=6276 := by core033_kernel_decide
theorem rows5783 : actualRows5783=WordField.canonicalRows actualModulus 5783 (.band 5780 5782) := by core033_kernel_decide
theorem stats5783 : actualRows5783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5783=5124 := by core033_kernel_decide
theorem rows5784 : actualRows5784=WordField.canonicalRows actualModulus 5784 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5784 : actualRows5784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5784=2892 := by core033_kernel_decide
theorem rows5785 : actualRows5785=WordField.canonicalRows actualModulus 5785 (.bxor 1299 5784) := by core033_kernel_decide
theorem stats5785 : actualRows5785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5785=7428 := by core033_kernel_decide
theorem rows5786 : actualRows5786=WordField.canonicalRows actualModulus 5786 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5786 : actualRows5786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5786=2820 := by core033_kernel_decide
theorem rows5787 : actualRows5787=WordField.canonicalRows actualModulus 5787 (.bnot 5786) := by core033_kernel_decide
theorem stats5787 : actualRows5787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5787=6276 := by core033_kernel_decide
theorem rows5788 : actualRows5788=WordField.canonicalRows actualModulus 5788 (.bxor 5785 5787) := by core033_kernel_decide
theorem stats5788 : actualRows5788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5788=7428 := by core033_kernel_decide
theorem rows5789 : actualRows5789=WordField.canonicalRows actualModulus 5789 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5789 : actualRows5789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5789=2892 := by core033_kernel_decide
theorem rows5790 : actualRows5790=WordField.canonicalRows actualModulus 5790 (.bxor 1299 5789) := by core033_kernel_decide
theorem stats5790 : actualRows5790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5790=7428 := by core033_kernel_decide
theorem rows5791 : actualRows5791=WordField.canonicalRows actualModulus 5791 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5791 : actualRows5791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5791=2820 := by core033_kernel_decide
theorem rows5792 : actualRows5792=WordField.canonicalRows actualModulus 5792 (.bnot 5791) := by core033_kernel_decide
theorem stats5792 : actualRows5792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5792=6276 := by core033_kernel_decide
theorem rows5793 : actualRows5793=WordField.canonicalRows actualModulus 5793 (.badd 5790 5792) := by core033_kernel_decide
theorem stats5793 : actualRows5793.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5793=5388 := by core033_kernel_decide
theorem rows5794 : actualRows5794=WordField.canonicalRows actualModulus 5794 (.bnot 5793) := by core033_kernel_decide
theorem stats5794 : actualRows5794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5794=6276 := by core033_kernel_decide
theorem rows5795 : actualRows5795=WordField.canonicalRows actualModulus 5795 (.band 5788 5794) := by core033_kernel_decide
theorem stats5795 : actualRows5795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5795=5124 := by core033_kernel_decide
theorem rows5796 : actualRows5796=WordField.canonicalRows actualModulus 5796 (.bxor 5783 5795) := by core033_kernel_decide
theorem stats5796 : actualRows5796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5796=7428 := by core033_kernel_decide
theorem rows5797 : actualRows5797=WordField.canonicalRows actualModulus 5797 (.shr 5796 31) := by core033_kernel_decide
theorem stats5797 : actualRows5797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5797=2892 := by core033_kernel_decide
theorem rows5798 : actualRows5798=WordField.canonicalRows actualModulus 5798 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5798 : actualRows5798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5798=2892 := by core033_kernel_decide
theorem rows5799 : actualRows5799=WordField.canonicalRows actualModulus 5799 (.bxor 5797 5798) := by core033_kernel_decide
theorem stats5799 : actualRows5799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5799=7428 := by core033_kernel_decide
theorem rows5800 : actualRows5800=WordField.canonicalRows actualModulus 5800 (.bnot 5799) := by core033_kernel_decide
theorem stats5800 : actualRows5800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5800=6276 := by core033_kernel_decide
theorem rows5801 : actualRows5801=WordField.canonicalRows actualModulus 5801 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5801 : actualRows5801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5801=2892 := by core033_kernel_decide
theorem rows5802 : actualRows5802=WordField.canonicalRows actualModulus 5802 (.badd 5800 5801) := by core033_kernel_decide
theorem stats5802 : actualRows5802.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5802=5388 := by core033_kernel_decide
theorem rows5803 : actualRows5803=WordField.canonicalRows actualModulus 5803 (.band 5802 2825) := by core033_kernel_decide
theorem stats5803 : actualRows5803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5803=5124 := by core033_kernel_decide
theorem rows5804 : actualRows5804=WordField.canonicalRows actualModulus 5804 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5804 : actualRows5804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5804=2892 := by core033_kernel_decide
theorem rows5805 : actualRows5805=WordField.canonicalRows actualModulus 5805 (.bxor 1299 5804) := by core033_kernel_decide
theorem stats5805 : actualRows5805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5805=7428 := by core033_kernel_decide
theorem rows5806 : actualRows5806=WordField.canonicalRows actualModulus 5806 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5806 : actualRows5806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5806=2820 := by core033_kernel_decide
theorem rows5807 : actualRows5807=WordField.canonicalRows actualModulus 5807 (.bnot 5806) := by core033_kernel_decide
theorem stats5807 : actualRows5807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5807=6276 := by core033_kernel_decide
theorem rows5808 : actualRows5808=WordField.canonicalRows actualModulus 5808 (.band 5805 5807) := by core033_kernel_decide
theorem stats5808 : actualRows5808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5808=5124 := by core033_kernel_decide
theorem rows5809 : actualRows5809=WordField.canonicalRows actualModulus 5809 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5809 : actualRows5809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5809=2892 := by core033_kernel_decide
theorem rows5810 : actualRows5810=WordField.canonicalRows actualModulus 5810 (.bxor 1299 5809) := by core033_kernel_decide
theorem stats5810 : actualRows5810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5810=7428 := by core033_kernel_decide
theorem rows5811 : actualRows5811=WordField.canonicalRows actualModulus 5811 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5811 : actualRows5811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5811=2820 := by core033_kernel_decide
theorem rows5812 : actualRows5812=WordField.canonicalRows actualModulus 5812 (.bnot 5811) := by core033_kernel_decide
theorem stats5812 : actualRows5812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5812=6276 := by core033_kernel_decide
theorem rows5813 : actualRows5813=WordField.canonicalRows actualModulus 5813 (.bxor 5810 5812) := by core033_kernel_decide
theorem stats5813 : actualRows5813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5813=7428 := by core033_kernel_decide
def partRows88 : List R1CS.Row := actualRows5750++actualRows5751++actualRows5752++actualRows5753++actualRows5754++actualRows5755++actualRows5756++actualRows5757++actualRows5758++actualRows5759++actualRows5760++actualRows5761++actualRows5762++actualRows5763++actualRows5764++actualRows5765++actualRows5766++actualRows5767++actualRows5768++actualRows5769++actualRows5770++actualRows5771++actualRows5772++actualRows5773++actualRows5774++actualRows5775++actualRows5776++actualRows5777++actualRows5778++actualRows5779++actualRows5780++actualRows5781++actualRows5782++actualRows5783++actualRows5784++actualRows5785++actualRows5786++actualRows5787++actualRows5788++actualRows5789++actualRows5790++actualRows5791++actualRows5792++actualRows5793++actualRows5794++actualRows5795++actualRows5796++actualRows5797++actualRows5798++actualRows5799++actualRows5800++actualRows5801++actualRows5802++actualRows5803++actualRows5804++actualRows5805++actualRows5806++actualRows5807++actualRows5808++actualRows5809++actualRows5810++actualRows5811++actualRows5812++actualRows5813
def partOps88 : List WordIR.Op := [.badd 5748 5749,.band 5750 2822,.literal (BitVec.ofNat 32 2),.bxor 1299 5752,.literal (BitVec.ofNat 32 0),.bnot 5754,.band 5753 5755,.literal (BitVec.ofNat 32 2),.bxor 1299 5757,.literal (BitVec.ofNat 32 0),.bnot 5759,.bxor 5758 5760,.literal (BitVec.ofNat 32 2),.bxor 1299 5762,.literal (BitVec.ofNat 32 0),.bnot 5764,.badd 5763 5765,.bnot 5766,.band 5761 5767,.bxor 5756 5768,.shr 5769 31,.literal (BitVec.ofNat 32 1),.bxor 5770 5771,.bnot 5772,.literal (BitVec.ofNat 32 1),.badd 5773 5774,.bnot 5775,.band 5776 2630,.bxor 5751 5777,.literal (BitVec.ofNat 32 2),.bxor 1299 5779,.literal (BitVec.ofNat 32 0),.bnot 5781,.band 5780 5782,.literal (BitVec.ofNat 32 2),.bxor 1299 5784,.literal (BitVec.ofNat 32 0),.bnot 5786,.bxor 5785 5787,.literal (BitVec.ofNat 32 2),.bxor 1299 5789,.literal (BitVec.ofNat 32 0),.bnot 5791,.badd 5790 5792,.bnot 5793,.band 5788 5794,.bxor 5783 5795,.shr 5796 31,.literal (BitVec.ofNat 32 1),.bxor 5797 5798,.bnot 5799,.literal (BitVec.ofNat 32 1),.badd 5800 5801,.band 5802 2825,.literal (BitVec.ofNat 32 2),.bxor 1299 5804,.literal (BitVec.ofNat 32 0),.bnot 5806,.band 5805 5807,.literal (BitVec.ofNat 32 2),.bxor 1299 5809,.literal (BitVec.ofNat 32 0),.bnot 5811,.bxor 5810 5812]
theorem partExact88 : partRows88=WordField.rows actualModulus 5750 partOps88 := by
  simp only [partRows88,partOps88,WordField.rows,rows5750,rows5751,rows5752,rows5753,rows5754,rows5755,rows5756,rows5757,rows5758,rows5759,rows5760,rows5761,rows5762,rows5763,rows5764,rows5765,rows5766,rows5767,rows5768,rows5769,rows5770,rows5771,rows5772,rows5773,rows5774,rows5775,rows5776,rows5777,rows5778,rows5779,rows5780,rows5781,rows5782,rows5783,rows5784,rows5785,rows5786,rows5787,rows5788,rows5789,rows5790,rows5791,rows5792,rows5793,rows5794,rows5795,rows5796,rows5797,rows5798,rows5799,rows5800,rows5801,rows5802,rows5803,rows5804,rows5805,rows5806,rows5807,rows5808,rows5809,rows5810,rows5811,rows5812,rows5813,List.append_assoc,List.append_nil]
theorem partLength88 : partOps88.length=64 := by decide
theorem partStats88 : partRows88.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows88=331416 := by
  simp only [partRows88,List.length_append,MatrixRowBlocks.rows_weight_append,stats5750.1,stats5750.2,stats5751.1,stats5751.2,stats5752.1,stats5752.2,stats5753.1,stats5753.2,stats5754.1,stats5754.2,stats5755.1,stats5755.2,stats5756.1,stats5756.2,stats5757.1,stats5757.2,stats5758.1,stats5758.2,stats5759.1,stats5759.2,stats5760.1,stats5760.2,stats5761.1,stats5761.2,stats5762.1,stats5762.2,stats5763.1,stats5763.2,stats5764.1,stats5764.2,stats5765.1,stats5765.2,stats5766.1,stats5766.2,stats5767.1,stats5767.2,stats5768.1,stats5768.2,stats5769.1,stats5769.2,stats5770.1,stats5770.2,stats5771.1,stats5771.2,stats5772.1,stats5772.2,stats5773.1,stats5773.2,stats5774.1,stats5774.2,stats5775.1,stats5775.2,stats5776.1,stats5776.2,stats5777.1,stats5777.2,stats5778.1,stats5778.2,stats5779.1,stats5779.2,stats5780.1,stats5780.2,stats5781.1,stats5781.2,stats5782.1,stats5782.2,stats5783.1,stats5783.2,stats5784.1,stats5784.2,stats5785.1,stats5785.2,stats5786.1,stats5786.2,stats5787.1,stats5787.2,stats5788.1,stats5788.2,stats5789.1,stats5789.2,stats5790.1,stats5790.2,stats5791.1,stats5791.2,stats5792.1,stats5792.2,stats5793.1,stats5793.2,stats5794.1,stats5794.2,stats5795.1,stats5795.2,stats5796.1,stats5796.2,stats5797.1,stats5797.2,stats5798.1,stats5798.2,stats5799.1,stats5799.2,stats5800.1,stats5800.2,stats5801.1,stats5801.2,stats5802.1,stats5802.2,stats5803.1,stats5803.2,stats5804.1,stats5804.2,stats5805.1,stats5805.2,stats5806.1,stats5806.2,stats5807.1,stats5807.2,stats5808.1,stats5808.2,stats5809.1,stats5809.2,stats5810.1,stats5810.2,stats5811.1,stats5811.2,stats5812.1,stats5812.2,stats5813.1,stats5813.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
