import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData89
import FrameHashControllerInstructionMatrixData90
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5739 : actualRows5739=WordField.canonicalRows actualModulus 5739 (.bnot 5738) := by core033_kernel_decide
theorem stats5739 : actualRows5739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5739=6276 := by core033_kernel_decide
theorem rows5740 : actualRows5740=WordField.canonicalRows actualModulus 5740 (.badd 5737 5739) := by core033_kernel_decide
theorem stats5740 : actualRows5740.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5740=5388 := by core033_kernel_decide
theorem rows5741 : actualRows5741=WordField.canonicalRows actualModulus 5741 (.bnot 5740) := by core033_kernel_decide
theorem stats5741 : actualRows5741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5741=6276 := by core033_kernel_decide
theorem rows5742 : actualRows5742=WordField.canonicalRows actualModulus 5742 (.band 5736 5741) := by core033_kernel_decide
theorem stats5742 : actualRows5742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5742=5124 := by core033_kernel_decide
theorem rows5743 : actualRows5743=WordField.canonicalRows actualModulus 5743 (.bxor 5732 5742) := by core033_kernel_decide
theorem stats5743 : actualRows5743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5743=7428 := by core033_kernel_decide
theorem rows5744 : actualRows5744=WordField.canonicalRows actualModulus 5744 (.shr 5743 31) := by core033_kernel_decide
theorem stats5744 : actualRows5744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5744=2892 := by core033_kernel_decide
theorem rows5745 : actualRows5745=WordField.canonicalRows actualModulus 5745 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5745 : actualRows5745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5745=2892 := by core033_kernel_decide
theorem rows5746 : actualRows5746=WordField.canonicalRows actualModulus 5746 (.bxor 5744 5745) := by core033_kernel_decide
theorem stats5746 : actualRows5746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5746=7428 := by core033_kernel_decide
theorem rows5747 : actualRows5747=WordField.canonicalRows actualModulus 5747 (.shr 3279 8) := by core033_kernel_decide
theorem stats5747 : actualRows5747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5747=4548 := by core033_kernel_decide
theorem rows5748 : actualRows5748=WordField.canonicalRows actualModulus 5748 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5748 : actualRows5748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5748=2820 := by core033_kernel_decide
theorem rows5749 : actualRows5749=WordField.canonicalRows actualModulus 5749 (.bnot 5748) := by core033_kernel_decide
theorem stats5749 : actualRows5749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5749=6276 := by core033_kernel_decide
theorem rows5750 : actualRows5750=WordField.canonicalRows actualModulus 5750 (.band 5747 5749) := by core033_kernel_decide
theorem stats5750 : actualRows5750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5750=5124 := by core033_kernel_decide
theorem rows5751 : actualRows5751=WordField.canonicalRows actualModulus 5751 (.shr 3279 8) := by core033_kernel_decide
theorem stats5751 : actualRows5751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5751=4548 := by core033_kernel_decide
theorem rows5752 : actualRows5752=WordField.canonicalRows actualModulus 5752 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5752 : actualRows5752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5752=2820 := by core033_kernel_decide
theorem rows5753 : actualRows5753=WordField.canonicalRows actualModulus 5753 (.bnot 5752) := by core033_kernel_decide
theorem stats5753 : actualRows5753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5753=6276 := by core033_kernel_decide
theorem rows5754 : actualRows5754=WordField.canonicalRows actualModulus 5754 (.bxor 5751 5753) := by core033_kernel_decide
theorem stats5754 : actualRows5754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5754=7428 := by core033_kernel_decide
theorem rows5755 : actualRows5755=WordField.canonicalRows actualModulus 5755 (.shr 3279 8) := by core033_kernel_decide
theorem stats5755 : actualRows5755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5755=4548 := by core033_kernel_decide
theorem rows5756 : actualRows5756=WordField.canonicalRows actualModulus 5756 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5756 : actualRows5756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5756=2820 := by core033_kernel_decide
theorem rows5757 : actualRows5757=WordField.canonicalRows actualModulus 5757 (.bnot 5756) := by core033_kernel_decide
theorem stats5757 : actualRows5757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5757=6276 := by core033_kernel_decide
theorem rows5758 : actualRows5758=WordField.canonicalRows actualModulus 5758 (.badd 5755 5757) := by core033_kernel_decide
theorem stats5758 : actualRows5758.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5758=5388 := by core033_kernel_decide
theorem rows5759 : actualRows5759=WordField.canonicalRows actualModulus 5759 (.bnot 5758) := by core033_kernel_decide
theorem stats5759 : actualRows5759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5759=6276 := by core033_kernel_decide
theorem rows5760 : actualRows5760=WordField.canonicalRows actualModulus 5760 (.band 5754 5759) := by core033_kernel_decide
theorem stats5760 : actualRows5760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5760=5124 := by core033_kernel_decide
theorem rows5761 : actualRows5761=WordField.canonicalRows actualModulus 5761 (.bxor 5750 5760) := by core033_kernel_decide
theorem stats5761 : actualRows5761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5761=7428 := by core033_kernel_decide
theorem rows5762 : actualRows5762=WordField.canonicalRows actualModulus 5762 (.shr 5761 31) := by core033_kernel_decide
theorem stats5762 : actualRows5762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5762=2892 := by core033_kernel_decide
theorem rows5763 : actualRows5763=WordField.canonicalRows actualModulus 5763 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5763 : actualRows5763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5763=2892 := by core033_kernel_decide
theorem rows5764 : actualRows5764=WordField.canonicalRows actualModulus 5764 (.bxor 5762 5763) := by core033_kernel_decide
theorem stats5764 : actualRows5764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5764=7428 := by core033_kernel_decide
theorem rows5765 : actualRows5765=WordField.canonicalRows actualModulus 5765 (.shr 3331 8) := by core033_kernel_decide
theorem stats5765 : actualRows5765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5765=4548 := by core033_kernel_decide
theorem rows5766 : actualRows5766=WordField.canonicalRows actualModulus 5766 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5766 : actualRows5766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5766=2820 := by core033_kernel_decide
theorem rows5767 : actualRows5767=WordField.canonicalRows actualModulus 5767 (.bnot 5766) := by core033_kernel_decide
theorem stats5767 : actualRows5767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5767=6276 := by core033_kernel_decide
theorem rows5768 : actualRows5768=WordField.canonicalRows actualModulus 5768 (.band 5765 5767) := by core033_kernel_decide
theorem stats5768 : actualRows5768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5768=5124 := by core033_kernel_decide
theorem rows5769 : actualRows5769=WordField.canonicalRows actualModulus 5769 (.shr 3331 8) := by core033_kernel_decide
theorem stats5769 : actualRows5769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5769=4548 := by core033_kernel_decide
theorem rows5770 : actualRows5770=WordField.canonicalRows actualModulus 5770 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5770 : actualRows5770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5770=2820 := by core033_kernel_decide
theorem rows5771 : actualRows5771=WordField.canonicalRows actualModulus 5771 (.bnot 5770) := by core033_kernel_decide
theorem stats5771 : actualRows5771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5771=6276 := by core033_kernel_decide
theorem rows5772 : actualRows5772=WordField.canonicalRows actualModulus 5772 (.bxor 5769 5771) := by core033_kernel_decide
theorem stats5772 : actualRows5772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5772=7428 := by core033_kernel_decide
theorem rows5773 : actualRows5773=WordField.canonicalRows actualModulus 5773 (.shr 3331 8) := by core033_kernel_decide
theorem stats5773 : actualRows5773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5773=4548 := by core033_kernel_decide
theorem rows5774 : actualRows5774=WordField.canonicalRows actualModulus 5774 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5774 : actualRows5774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5774=2820 := by core033_kernel_decide
theorem rows5775 : actualRows5775=WordField.canonicalRows actualModulus 5775 (.bnot 5774) := by core033_kernel_decide
theorem stats5775 : actualRows5775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5775=6276 := by core033_kernel_decide
theorem rows5776 : actualRows5776=WordField.canonicalRows actualModulus 5776 (.badd 5773 5775) := by core033_kernel_decide
theorem stats5776 : actualRows5776.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5776=5388 := by core033_kernel_decide
theorem rows5777 : actualRows5777=WordField.canonicalRows actualModulus 5777 (.bnot 5776) := by core033_kernel_decide
theorem stats5777 : actualRows5777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5777=6276 := by core033_kernel_decide
theorem rows5778 : actualRows5778=WordField.canonicalRows actualModulus 5778 (.band 5772 5777) := by core033_kernel_decide
theorem stats5778 : actualRows5778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5778=5124 := by core033_kernel_decide
theorem rows5779 : actualRows5779=WordField.canonicalRows actualModulus 5779 (.bxor 5768 5778) := by core033_kernel_decide
theorem stats5779 : actualRows5779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5779=7428 := by core033_kernel_decide
theorem rows5780 : actualRows5780=WordField.canonicalRows actualModulus 5780 (.shr 5779 31) := by core033_kernel_decide
theorem stats5780 : actualRows5780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5780=2892 := by core033_kernel_decide
theorem rows5781 : actualRows5781=WordField.canonicalRows actualModulus 5781 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5781 : actualRows5781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5781=2892 := by core033_kernel_decide
theorem rows5782 : actualRows5782=WordField.canonicalRows actualModulus 5782 (.bxor 5780 5781) := by core033_kernel_decide
theorem stats5782 : actualRows5782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5782=7428 := by core033_kernel_decide
theorem rows5783 : actualRows5783=WordField.canonicalRows actualModulus 5783 (.shr 3383 8) := by core033_kernel_decide
theorem stats5783 : actualRows5783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5783=4548 := by core033_kernel_decide
theorem rows5784 : actualRows5784=WordField.canonicalRows actualModulus 5784 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5784 : actualRows5784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5784=2820 := by core033_kernel_decide
theorem rows5785 : actualRows5785=WordField.canonicalRows actualModulus 5785 (.bnot 5784) := by core033_kernel_decide
theorem stats5785 : actualRows5785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5785=6276 := by core033_kernel_decide
theorem rows5786 : actualRows5786=WordField.canonicalRows actualModulus 5786 (.band 5783 5785) := by core033_kernel_decide
theorem stats5786 : actualRows5786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5786=5124 := by core033_kernel_decide
theorem rows5787 : actualRows5787=WordField.canonicalRows actualModulus 5787 (.shr 3383 8) := by core033_kernel_decide
theorem stats5787 : actualRows5787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5787=4548 := by core033_kernel_decide
theorem rows5788 : actualRows5788=WordField.canonicalRows actualModulus 5788 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5788 : actualRows5788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5788=2820 := by core033_kernel_decide
theorem rows5789 : actualRows5789=WordField.canonicalRows actualModulus 5789 (.bnot 5788) := by core033_kernel_decide
theorem stats5789 : actualRows5789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5789=6276 := by core033_kernel_decide
theorem rows5790 : actualRows5790=WordField.canonicalRows actualModulus 5790 (.bxor 5787 5789) := by core033_kernel_decide
theorem stats5790 : actualRows5790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5790=7428 := by core033_kernel_decide
theorem rows5791 : actualRows5791=WordField.canonicalRows actualModulus 5791 (.shr 3383 8) := by core033_kernel_decide
theorem stats5791 : actualRows5791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5791=4548 := by core033_kernel_decide
theorem rows5792 : actualRows5792=WordField.canonicalRows actualModulus 5792 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5792 : actualRows5792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5792=2820 := by core033_kernel_decide
theorem rows5793 : actualRows5793=WordField.canonicalRows actualModulus 5793 (.bnot 5792) := by core033_kernel_decide
theorem stats5793 : actualRows5793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5793=6276 := by core033_kernel_decide
theorem rows5794 : actualRows5794=WordField.canonicalRows actualModulus 5794 (.badd 5791 5793) := by core033_kernel_decide
theorem stats5794 : actualRows5794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5794=5388 := by core033_kernel_decide
theorem rows5795 : actualRows5795=WordField.canonicalRows actualModulus 5795 (.bnot 5794) := by core033_kernel_decide
theorem stats5795 : actualRows5795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5795=6276 := by core033_kernel_decide
theorem rows5796 : actualRows5796=WordField.canonicalRows actualModulus 5796 (.band 5790 5795) := by core033_kernel_decide
theorem stats5796 : actualRows5796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5796=5124 := by core033_kernel_decide
theorem rows5797 : actualRows5797=WordField.canonicalRows actualModulus 5797 (.bxor 5786 5796) := by core033_kernel_decide
theorem stats5797 : actualRows5797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5797=7428 := by core033_kernel_decide
theorem rows5798 : actualRows5798=WordField.canonicalRows actualModulus 5798 (.shr 5797 31) := by core033_kernel_decide
theorem stats5798 : actualRows5798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5798=2892 := by core033_kernel_decide
theorem rows5799 : actualRows5799=WordField.canonicalRows actualModulus 5799 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5799 : actualRows5799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5799=2892 := by core033_kernel_decide
theorem rows5800 : actualRows5800=WordField.canonicalRows actualModulus 5800 (.bxor 5798 5799) := by core033_kernel_decide
theorem stats5800 : actualRows5800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5800=7428 := by core033_kernel_decide
theorem rows5801 : actualRows5801=WordField.canonicalRows actualModulus 5801 (.shr 3435 8) := by core033_kernel_decide
theorem stats5801 : actualRows5801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5801=4548 := by core033_kernel_decide
theorem rows5802 : actualRows5802=WordField.canonicalRows actualModulus 5802 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5802 : actualRows5802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5802=2820 := by core033_kernel_decide
def partRows89 : List R1CS.Row := actualRows5739++actualRows5740++actualRows5741++actualRows5742++actualRows5743++actualRows5744++actualRows5745++actualRows5746++actualRows5747++actualRows5748++actualRows5749++actualRows5750++actualRows5751++actualRows5752++actualRows5753++actualRows5754++actualRows5755++actualRows5756++actualRows5757++actualRows5758++actualRows5759++actualRows5760++actualRows5761++actualRows5762++actualRows5763++actualRows5764++actualRows5765++actualRows5766++actualRows5767++actualRows5768++actualRows5769++actualRows5770++actualRows5771++actualRows5772++actualRows5773++actualRows5774++actualRows5775++actualRows5776++actualRows5777++actualRows5778++actualRows5779++actualRows5780++actualRows5781++actualRows5782++actualRows5783++actualRows5784++actualRows5785++actualRows5786++actualRows5787++actualRows5788++actualRows5789++actualRows5790++actualRows5791++actualRows5792++actualRows5793++actualRows5794++actualRows5795++actualRows5796++actualRows5797++actualRows5798++actualRows5799++actualRows5800++actualRows5801++actualRows5802
def partOps89 : List WordIR.Op := [.bnot 5738,.badd 5737 5739,.bnot 5740,.band 5736 5741,.bxor 5732 5742,.shr 5743 31,.literal (BitVec.ofNat 32 1),.bxor 5744 5745,.shr 3279 8,.literal (BitVec.ofNat 32 0),.bnot 5748,.band 5747 5749,.shr 3279 8,.literal (BitVec.ofNat 32 0),.bnot 5752,.bxor 5751 5753,.shr 3279 8,.literal (BitVec.ofNat 32 0),.bnot 5756,.badd 5755 5757,.bnot 5758,.band 5754 5759,.bxor 5750 5760,.shr 5761 31,.literal (BitVec.ofNat 32 1),.bxor 5762 5763,.shr 3331 8,.literal (BitVec.ofNat 32 0),.bnot 5766,.band 5765 5767,.shr 3331 8,.literal (BitVec.ofNat 32 0),.bnot 5770,.bxor 5769 5771,.shr 3331 8,.literal (BitVec.ofNat 32 0),.bnot 5774,.badd 5773 5775,.bnot 5776,.band 5772 5777,.bxor 5768 5778,.shr 5779 31,.literal (BitVec.ofNat 32 1),.bxor 5780 5781,.shr 3383 8,.literal (BitVec.ofNat 32 0),.bnot 5784,.band 5783 5785,.shr 3383 8,.literal (BitVec.ofNat 32 0),.bnot 5788,.bxor 5787 5789,.shr 3383 8,.literal (BitVec.ofNat 32 0),.bnot 5792,.badd 5791 5793,.bnot 5794,.band 5790 5795,.bxor 5786 5796,.shr 5797 31,.literal (BitVec.ofNat 32 1),.bxor 5798 5799,.shr 3435 8,.literal (BitVec.ofNat 32 0)]
theorem partExact89 : partRows89=WordField.rows actualModulus 5739 partOps89 := by
  simp only [partRows89,partOps89,WordField.rows,rows5739,rows5740,rows5741,rows5742,rows5743,rows5744,rows5745,rows5746,rows5747,rows5748,rows5749,rows5750,rows5751,rows5752,rows5753,rows5754,rows5755,rows5756,rows5757,rows5758,rows5759,rows5760,rows5761,rows5762,rows5763,rows5764,rows5765,rows5766,rows5767,rows5768,rows5769,rows5770,rows5771,rows5772,rows5773,rows5774,rows5775,rows5776,rows5777,rows5778,rows5779,rows5780,rows5781,rows5782,rows5783,rows5784,rows5785,rows5786,rows5787,rows5788,rows5789,rows5790,rows5791,rows5792,rows5793,rows5794,rows5795,rows5796,rows5797,rows5798,rows5799,rows5800,rows5801,rows5802,List.append_assoc,List.append_nil]
theorem partLength89 : partOps89.length=64 := by decide
theorem partStats89 : partRows89.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows89=323808 := by
  simp only [partRows89,List.length_append,MatrixRowBlocks.rows_weight_append,stats5739.1,stats5739.2,stats5740.1,stats5740.2,stats5741.1,stats5741.2,stats5742.1,stats5742.2,stats5743.1,stats5743.2,stats5744.1,stats5744.2,stats5745.1,stats5745.2,stats5746.1,stats5746.2,stats5747.1,stats5747.2,stats5748.1,stats5748.2,stats5749.1,stats5749.2,stats5750.1,stats5750.2,stats5751.1,stats5751.2,stats5752.1,stats5752.2,stats5753.1,stats5753.2,stats5754.1,stats5754.2,stats5755.1,stats5755.2,stats5756.1,stats5756.2,stats5757.1,stats5757.2,stats5758.1,stats5758.2,stats5759.1,stats5759.2,stats5760.1,stats5760.2,stats5761.1,stats5761.2,stats5762.1,stats5762.2,stats5763.1,stats5763.2,stats5764.1,stats5764.2,stats5765.1,stats5765.2,stats5766.1,stats5766.2,stats5767.1,stats5767.2,stats5768.1,stats5768.2,stats5769.1,stats5769.2,stats5770.1,stats5770.2,stats5771.1,stats5771.2,stats5772.1,stats5772.2,stats5773.1,stats5773.2,stats5774.1,stats5774.2,stats5775.1,stats5775.2,stats5776.1,stats5776.2,stats5777.1,stats5777.2,stats5778.1,stats5778.2,stats5779.1,stats5779.2,stats5780.1,stats5780.2,stats5781.1,stats5781.2,stats5782.1,stats5782.2,stats5783.1,stats5783.2,stats5784.1,stats5784.2,stats5785.1,stats5785.2,stats5786.1,stats5786.2,stats5787.1,stats5787.2,stats5788.1,stats5788.2,stats5789.1,stats5789.2,stats5790.1,stats5790.2,stats5791.1,stats5791.2,stats5792.1,stats5792.2,stats5793.1,stats5793.2,stats5794.1,stats5794.2,stats5795.1,stats5795.2,stats5796.1,stats5796.2,stats5797.1,stats5797.2,stats5798.1,stats5798.2,stats5799.1,stats5799.2,stats5800.1,stats5800.2,stats5801.1,stats5801.2,stats5802.1,stats5802.2]
  decide
end FrameHashControllerCheckedRows
