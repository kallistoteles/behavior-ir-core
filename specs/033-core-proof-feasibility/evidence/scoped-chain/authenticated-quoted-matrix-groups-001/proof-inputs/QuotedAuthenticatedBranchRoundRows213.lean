import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData214
import AuthenticatedBranchRoundInstructionMatrixData215
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13750 : actualRows13750=WordField.canonicalRows actualModulus 13750 (.band 13749 35) := by core033_kernel_decide
theorem stats13750 : actualRows13750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13750=5124 := by core033_kernel_decide
theorem rows13751 : actualRows13751=WordField.canonicalRows actualModulus 13751 (.bxor 13745 13750) := by core033_kernel_decide
theorem stats13751 : actualRows13751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13751=7428 := by core033_kernel_decide
theorem rows13752 : actualRows13752=WordField.canonicalRows actualModulus 13752 (.bnot 398) := by core033_kernel_decide
theorem stats13752 : actualRows13752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13752=6276 := by core033_kernel_decide
theorem rows13753 : actualRows13753=WordField.canonicalRows actualModulus 13753 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13753 : actualRows13753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13753=2892 := by core033_kernel_decide
theorem rows13754 : actualRows13754=WordField.canonicalRows actualModulus 13754 (.badd 13752 13753) := by core033_kernel_decide
theorem stats13754 : actualRows13754.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13754=5388 := by core033_kernel_decide
theorem rows13755 : actualRows13755=WordField.canonicalRows actualModulus 13755 (.band 13754 12104) := by core033_kernel_decide
theorem stats13755 : actualRows13755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13755=5124 := by core033_kernel_decide
theorem rows13756 : actualRows13756=WordField.canonicalRows actualModulus 13756 (.bnot 398) := by core033_kernel_decide
theorem stats13756 : actualRows13756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13756=6276 := by core033_kernel_decide
theorem rows13757 : actualRows13757=WordField.canonicalRows actualModulus 13757 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13757 : actualRows13757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13757=2892 := by core033_kernel_decide
theorem rows13758 : actualRows13758=WordField.canonicalRows actualModulus 13758 (.badd 13756 13757) := by core033_kernel_decide
theorem stats13758 : actualRows13758.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13758=5388 := by core033_kernel_decide
theorem rows13759 : actualRows13759=WordField.canonicalRows actualModulus 13759 (.bnot 13758) := by core033_kernel_decide
theorem stats13759 : actualRows13759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13759=6276 := by core033_kernel_decide
theorem rows13760 : actualRows13760=WordField.canonicalRows actualModulus 13760 (.band 13759 36) := by core033_kernel_decide
theorem stats13760 : actualRows13760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13760=5124 := by core033_kernel_decide
theorem rows13761 : actualRows13761=WordField.canonicalRows actualModulus 13761 (.bxor 13755 13760) := by core033_kernel_decide
theorem stats13761 : actualRows13761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13761=7428 := by core033_kernel_decide
theorem rows13762 : actualRows13762=WordField.canonicalRows actualModulus 13762 (.bnot 398) := by core033_kernel_decide
theorem stats13762 : actualRows13762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13762=6276 := by core033_kernel_decide
theorem rows13763 : actualRows13763=WordField.canonicalRows actualModulus 13763 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13763 : actualRows13763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13763=2892 := by core033_kernel_decide
theorem rows13764 : actualRows13764=WordField.canonicalRows actualModulus 13764 (.badd 13762 13763) := by core033_kernel_decide
theorem stats13764 : actualRows13764.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13764=5388 := by core033_kernel_decide
theorem rows13765 : actualRows13765=WordField.canonicalRows actualModulus 13765 (.band 13764 12156) := by core033_kernel_decide
theorem stats13765 : actualRows13765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13765=5124 := by core033_kernel_decide
theorem rows13766 : actualRows13766=WordField.canonicalRows actualModulus 13766 (.bnot 398) := by core033_kernel_decide
theorem stats13766 : actualRows13766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13766=6276 := by core033_kernel_decide
theorem rows13767 : actualRows13767=WordField.canonicalRows actualModulus 13767 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13767 : actualRows13767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13767=2892 := by core033_kernel_decide
theorem rows13768 : actualRows13768=WordField.canonicalRows actualModulus 13768 (.badd 13766 13767) := by core033_kernel_decide
theorem stats13768 : actualRows13768.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13768=5388 := by core033_kernel_decide
theorem rows13769 : actualRows13769=WordField.canonicalRows actualModulus 13769 (.bnot 13768) := by core033_kernel_decide
theorem stats13769 : actualRows13769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13769=6276 := by core033_kernel_decide
theorem rows13770 : actualRows13770=WordField.canonicalRows actualModulus 13770 (.band 13769 37) := by core033_kernel_decide
theorem stats13770 : actualRows13770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13770=5124 := by core033_kernel_decide
theorem rows13771 : actualRows13771=WordField.canonicalRows actualModulus 13771 (.bxor 13765 13770) := by core033_kernel_decide
theorem stats13771 : actualRows13771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13771=7428 := by core033_kernel_decide
theorem rows13772 : actualRows13772=WordField.canonicalRows actualModulus 13772 (.bnot 398) := by core033_kernel_decide
theorem stats13772 : actualRows13772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13772=6276 := by core033_kernel_decide
theorem rows13773 : actualRows13773=WordField.canonicalRows actualModulus 13773 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13773 : actualRows13773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13773=2892 := by core033_kernel_decide
theorem rows13774 : actualRows13774=WordField.canonicalRows actualModulus 13774 (.badd 13772 13773) := by core033_kernel_decide
theorem stats13774 : actualRows13774.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13774=5388 := by core033_kernel_decide
theorem rows13775 : actualRows13775=WordField.canonicalRows actualModulus 13775 (.band 13774 12208) := by core033_kernel_decide
theorem stats13775 : actualRows13775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13775=5124 := by core033_kernel_decide
theorem rows13776 : actualRows13776=WordField.canonicalRows actualModulus 13776 (.bnot 398) := by core033_kernel_decide
theorem stats13776 : actualRows13776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13776=6276 := by core033_kernel_decide
theorem rows13777 : actualRows13777=WordField.canonicalRows actualModulus 13777 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13777 : actualRows13777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13777=2892 := by core033_kernel_decide
theorem rows13778 : actualRows13778=WordField.canonicalRows actualModulus 13778 (.badd 13776 13777) := by core033_kernel_decide
theorem stats13778 : actualRows13778.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13778=5388 := by core033_kernel_decide
theorem rows13779 : actualRows13779=WordField.canonicalRows actualModulus 13779 (.bnot 13778) := by core033_kernel_decide
theorem stats13779 : actualRows13779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13779=6276 := by core033_kernel_decide
theorem rows13780 : actualRows13780=WordField.canonicalRows actualModulus 13780 (.band 13779 38) := by core033_kernel_decide
theorem stats13780 : actualRows13780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13780=5124 := by core033_kernel_decide
theorem rows13781 : actualRows13781=WordField.canonicalRows actualModulus 13781 (.bxor 13775 13780) := by core033_kernel_decide
theorem stats13781 : actualRows13781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13781=7428 := by core033_kernel_decide
theorem rows13782 : actualRows13782=WordField.canonicalRows actualModulus 13782 (.bnot 398) := by core033_kernel_decide
theorem stats13782 : actualRows13782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13782=6276 := by core033_kernel_decide
theorem rows13783 : actualRows13783=WordField.canonicalRows actualModulus 13783 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13783 : actualRows13783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13783=2892 := by core033_kernel_decide
theorem rows13784 : actualRows13784=WordField.canonicalRows actualModulus 13784 (.badd 13782 13783) := by core033_kernel_decide
theorem stats13784 : actualRows13784.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13784=5388 := by core033_kernel_decide
theorem rows13785 : actualRows13785=WordField.canonicalRows actualModulus 13785 (.band 13784 12260) := by core033_kernel_decide
theorem stats13785 : actualRows13785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13785=5124 := by core033_kernel_decide
theorem rows13786 : actualRows13786=WordField.canonicalRows actualModulus 13786 (.bnot 398) := by core033_kernel_decide
theorem stats13786 : actualRows13786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13786=6276 := by core033_kernel_decide
theorem rows13787 : actualRows13787=WordField.canonicalRows actualModulus 13787 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13787 : actualRows13787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13787=2892 := by core033_kernel_decide
theorem rows13788 : actualRows13788=WordField.canonicalRows actualModulus 13788 (.badd 13786 13787) := by core033_kernel_decide
theorem stats13788 : actualRows13788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13788=5388 := by core033_kernel_decide
theorem rows13789 : actualRows13789=WordField.canonicalRows actualModulus 13789 (.bnot 13788) := by core033_kernel_decide
theorem stats13789 : actualRows13789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13789=6276 := by core033_kernel_decide
theorem rows13790 : actualRows13790=WordField.canonicalRows actualModulus 13790 (.band 13789 39) := by core033_kernel_decide
theorem stats13790 : actualRows13790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13790=5124 := by core033_kernel_decide
theorem rows13791 : actualRows13791=WordField.canonicalRows actualModulus 13791 (.bxor 13785 13790) := by core033_kernel_decide
theorem stats13791 : actualRows13791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13791=7428 := by core033_kernel_decide
theorem rows13792 : actualRows13792=WordField.canonicalRows actualModulus 13792 (.bnot 398) := by core033_kernel_decide
theorem stats13792 : actualRows13792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13792=6276 := by core033_kernel_decide
theorem rows13793 : actualRows13793=WordField.canonicalRows actualModulus 13793 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13793 : actualRows13793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13793=2892 := by core033_kernel_decide
theorem rows13794 : actualRows13794=WordField.canonicalRows actualModulus 13794 (.badd 13792 13793) := by core033_kernel_decide
theorem stats13794 : actualRows13794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13794=5388 := by core033_kernel_decide
theorem rows13795 : actualRows13795=WordField.canonicalRows actualModulus 13795 (.band 13794 12312) := by core033_kernel_decide
theorem stats13795 : actualRows13795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13795=5124 := by core033_kernel_decide
theorem rows13796 : actualRows13796=WordField.canonicalRows actualModulus 13796 (.bnot 398) := by core033_kernel_decide
theorem stats13796 : actualRows13796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13796=6276 := by core033_kernel_decide
theorem rows13797 : actualRows13797=WordField.canonicalRows actualModulus 13797 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13797 : actualRows13797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13797=2892 := by core033_kernel_decide
theorem rows13798 : actualRows13798=WordField.canonicalRows actualModulus 13798 (.badd 13796 13797) := by core033_kernel_decide
theorem stats13798 : actualRows13798.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13798=5388 := by core033_kernel_decide
theorem rows13799 : actualRows13799=WordField.canonicalRows actualModulus 13799 (.bnot 13798) := by core033_kernel_decide
theorem stats13799 : actualRows13799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13799=6276 := by core033_kernel_decide
theorem rows13800 : actualRows13800=WordField.canonicalRows actualModulus 13800 (.band 13799 40) := by core033_kernel_decide
theorem stats13800 : actualRows13800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13800=5124 := by core033_kernel_decide
theorem rows13801 : actualRows13801=WordField.canonicalRows actualModulus 13801 (.bxor 13795 13800) := by core033_kernel_decide
theorem stats13801 : actualRows13801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13801=7428 := by core033_kernel_decide
theorem rows13802 : actualRows13802=WordField.canonicalRows actualModulus 13802 (.bnot 398) := by core033_kernel_decide
theorem stats13802 : actualRows13802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13802=6276 := by core033_kernel_decide
theorem rows13803 : actualRows13803=WordField.canonicalRows actualModulus 13803 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13803 : actualRows13803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13803=2892 := by core033_kernel_decide
theorem rows13804 : actualRows13804=WordField.canonicalRows actualModulus 13804 (.badd 13802 13803) := by core033_kernel_decide
theorem stats13804 : actualRows13804.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13804=5388 := by core033_kernel_decide
theorem rows13805 : actualRows13805=WordField.canonicalRows actualModulus 13805 (.band 13804 12364) := by core033_kernel_decide
theorem stats13805 : actualRows13805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13805=5124 := by core033_kernel_decide
theorem rows13806 : actualRows13806=WordField.canonicalRows actualModulus 13806 (.bnot 398) := by core033_kernel_decide
theorem stats13806 : actualRows13806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13806=6276 := by core033_kernel_decide
theorem rows13807 : actualRows13807=WordField.canonicalRows actualModulus 13807 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13807 : actualRows13807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13807=2892 := by core033_kernel_decide
theorem rows13808 : actualRows13808=WordField.canonicalRows actualModulus 13808 (.badd 13806 13807) := by core033_kernel_decide
theorem stats13808 : actualRows13808.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13808=5388 := by core033_kernel_decide
theorem rows13809 : actualRows13809=WordField.canonicalRows actualModulus 13809 (.bnot 13808) := by core033_kernel_decide
theorem stats13809 : actualRows13809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13809=6276 := by core033_kernel_decide
theorem rows13810 : actualRows13810=WordField.canonicalRows actualModulus 13810 (.band 13809 41) := by core033_kernel_decide
theorem stats13810 : actualRows13810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13810=5124 := by core033_kernel_decide
theorem rows13811 : actualRows13811=WordField.canonicalRows actualModulus 13811 (.bxor 13805 13810) := by core033_kernel_decide
theorem stats13811 : actualRows13811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13811=7428 := by core033_kernel_decide
theorem rows13812 : actualRows13812=WordField.canonicalRows actualModulus 13812 (.bnot 398) := by core033_kernel_decide
theorem stats13812 : actualRows13812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13812=6276 := by core033_kernel_decide
theorem rows13813 : actualRows13813=WordField.canonicalRows actualModulus 13813 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13813 : actualRows13813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13813=2892 := by core033_kernel_decide
def partRows213 : List R1CS.Row := actualRows13750++actualRows13751++actualRows13752++actualRows13753++actualRows13754++actualRows13755++actualRows13756++actualRows13757++actualRows13758++actualRows13759++actualRows13760++actualRows13761++actualRows13762++actualRows13763++actualRows13764++actualRows13765++actualRows13766++actualRows13767++actualRows13768++actualRows13769++actualRows13770++actualRows13771++actualRows13772++actualRows13773++actualRows13774++actualRows13775++actualRows13776++actualRows13777++actualRows13778++actualRows13779++actualRows13780++actualRows13781++actualRows13782++actualRows13783++actualRows13784++actualRows13785++actualRows13786++actualRows13787++actualRows13788++actualRows13789++actualRows13790++actualRows13791++actualRows13792++actualRows13793++actualRows13794++actualRows13795++actualRows13796++actualRows13797++actualRows13798++actualRows13799++actualRows13800++actualRows13801++actualRows13802++actualRows13803++actualRows13804++actualRows13805++actualRows13806++actualRows13807++actualRows13808++actualRows13809++actualRows13810++actualRows13811++actualRows13812++actualRows13813
def partOps213 : List WordIR.Op := [.band 13749 35,.bxor 13745 13750,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13752 13753,.band 13754 12104,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13756 13757,.bnot 13758,.band 13759 36,.bxor 13755 13760,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13762 13763,.band 13764 12156,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13766 13767,.bnot 13768,.band 13769 37,.bxor 13765 13770,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13772 13773,.band 13774 12208,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13776 13777,.bnot 13778,.band 13779 38,.bxor 13775 13780,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13782 13783,.band 13784 12260,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13786 13787,.bnot 13788,.band 13789 39,.bxor 13785 13790,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13792 13793,.band 13794 12312,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13796 13797,.bnot 13798,.band 13799 40,.bxor 13795 13800,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13802 13803,.band 13804 12364,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13806 13807,.bnot 13808,.band 13809 41,.bxor 13805 13810,.bnot 398,.literal (BitVec.ofNat 32 1)]
theorem partExact213 : partRows213=WordField.rows actualModulus 13750 partOps213 := by
  simp only [partRows213,partOps213,WordField.rows,rows13750,rows13751,rows13752,rows13753,rows13754,rows13755,rows13756,rows13757,rows13758,rows13759,rows13760,rows13761,rows13762,rows13763,rows13764,rows13765,rows13766,rows13767,rows13768,rows13769,rows13770,rows13771,rows13772,rows13773,rows13774,rows13775,rows13776,rows13777,rows13778,rows13779,rows13780,rows13781,rows13782,rows13783,rows13784,rows13785,rows13786,rows13787,rows13788,rows13789,rows13790,rows13791,rows13792,rows13793,rows13794,rows13795,rows13796,rows13797,rows13798,rows13799,rows13800,rows13801,rows13802,rows13803,rows13804,rows13805,rows13806,rows13807,rows13808,rows13809,rows13810,rows13811,rows13812,rows13813,List.append_assoc,List.append_nil]
theorem partLength213 : partOps213.length=64 := by decide
theorem partStats213 : partRows213.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows213=340104 := by
  simp only [partRows213,List.length_append,MatrixRowBlocks.rows_weight_append,stats13750.1,stats13750.2,stats13751.1,stats13751.2,stats13752.1,stats13752.2,stats13753.1,stats13753.2,stats13754.1,stats13754.2,stats13755.1,stats13755.2,stats13756.1,stats13756.2,stats13757.1,stats13757.2,stats13758.1,stats13758.2,stats13759.1,stats13759.2,stats13760.1,stats13760.2,stats13761.1,stats13761.2,stats13762.1,stats13762.2,stats13763.1,stats13763.2,stats13764.1,stats13764.2,stats13765.1,stats13765.2,stats13766.1,stats13766.2,stats13767.1,stats13767.2,stats13768.1,stats13768.2,stats13769.1,stats13769.2,stats13770.1,stats13770.2,stats13771.1,stats13771.2,stats13772.1,stats13772.2,stats13773.1,stats13773.2,stats13774.1,stats13774.2,stats13775.1,stats13775.2,stats13776.1,stats13776.2,stats13777.1,stats13777.2,stats13778.1,stats13778.2,stats13779.1,stats13779.2,stats13780.1,stats13780.2,stats13781.1,stats13781.2,stats13782.1,stats13782.2,stats13783.1,stats13783.2,stats13784.1,stats13784.2,stats13785.1,stats13785.2,stats13786.1,stats13786.2,stats13787.1,stats13787.2,stats13788.1,stats13788.2,stats13789.1,stats13789.2,stats13790.1,stats13790.2,stats13791.1,stats13791.2,stats13792.1,stats13792.2,stats13793.1,stats13793.2,stats13794.1,stats13794.2,stats13795.1,stats13795.2,stats13796.1,stats13796.2,stats13797.1,stats13797.2,stats13798.1,stats13798.2,stats13799.1,stats13799.2,stats13800.1,stats13800.2,stats13801.1,stats13801.2,stats13802.1,stats13802.2,stats13803.1,stats13803.2,stats13804.1,stats13804.2,stats13805.1,stats13805.2,stats13806.1,stats13806.2,stats13807.1,stats13807.2,stats13808.1,stats13808.2,stats13809.1,stats13809.2,stats13810.1,stats13810.2,stats13811.1,stats13811.2,stats13812.1,stats13812.2,stats13813.1,stats13813.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
