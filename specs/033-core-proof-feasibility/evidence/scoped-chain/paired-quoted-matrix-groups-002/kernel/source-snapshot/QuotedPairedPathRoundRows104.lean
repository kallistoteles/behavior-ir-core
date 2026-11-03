import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData105
import PairedPathRoundInstructionMatrixData106
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6752 : actualRows6752=WordField.canonicalRows actualModulus 6752 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6752 : actualRows6752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6752=2820 := by core033_kernel_decide
theorem rows6753 : actualRows6753=WordField.canonicalRows actualModulus 6753 (.bnot 6752) := by core033_kernel_decide
theorem stats6753 : actualRows6753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6753=6276 := by core033_kernel_decide
theorem rows6754 : actualRows6754=WordField.canonicalRows actualModulus 6754 (.bxor 6751 6753) := by core033_kernel_decide
theorem stats6754 : actualRows6754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6754=7428 := by core033_kernel_decide
theorem rows6755 : actualRows6755=WordField.canonicalRows actualModulus 6755 (.shr 4211 8) := by core033_kernel_decide
theorem stats6755 : actualRows6755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6755=4548 := by core033_kernel_decide
theorem rows6756 : actualRows6756=WordField.canonicalRows actualModulus 6756 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6756 : actualRows6756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6756=2820 := by core033_kernel_decide
theorem rows6757 : actualRows6757=WordField.canonicalRows actualModulus 6757 (.bnot 6756) := by core033_kernel_decide
theorem stats6757 : actualRows6757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6757=6276 := by core033_kernel_decide
theorem rows6758 : actualRows6758=WordField.canonicalRows actualModulus 6758 (.badd 6755 6757) := by core033_kernel_decide
theorem stats6758 : actualRows6758.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6758=5388 := by core033_kernel_decide
theorem rows6759 : actualRows6759=WordField.canonicalRows actualModulus 6759 (.bnot 6758) := by core033_kernel_decide
theorem stats6759 : actualRows6759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6759=6276 := by core033_kernel_decide
theorem rows6760 : actualRows6760=WordField.canonicalRows actualModulus 6760 (.band 6754 6759) := by core033_kernel_decide
theorem stats6760 : actualRows6760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6760=5124 := by core033_kernel_decide
theorem rows6761 : actualRows6761=WordField.canonicalRows actualModulus 6761 (.bxor 6750 6760) := by core033_kernel_decide
theorem stats6761 : actualRows6761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6761=7428 := by core033_kernel_decide
theorem rows6762 : actualRows6762=WordField.canonicalRows actualModulus 6762 (.shr 6761 31) := by core033_kernel_decide
theorem stats6762 : actualRows6762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6762=2892 := by core033_kernel_decide
theorem rows6763 : actualRows6763=WordField.canonicalRows actualModulus 6763 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6763 : actualRows6763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6763=2892 := by core033_kernel_decide
theorem rows6764 : actualRows6764=WordField.canonicalRows actualModulus 6764 (.bxor 6762 6763) := by core033_kernel_decide
theorem stats6764 : actualRows6764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6764=7428 := by core033_kernel_decide
theorem rows6765 : actualRows6765=WordField.canonicalRows actualModulus 6765 (.shr 4263 8) := by core033_kernel_decide
theorem stats6765 : actualRows6765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6765=4548 := by core033_kernel_decide
theorem rows6766 : actualRows6766=WordField.canonicalRows actualModulus 6766 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6766 : actualRows6766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6766=2820 := by core033_kernel_decide
theorem rows6767 : actualRows6767=WordField.canonicalRows actualModulus 6767 (.bnot 6766) := by core033_kernel_decide
theorem stats6767 : actualRows6767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6767=6276 := by core033_kernel_decide
theorem rows6768 : actualRows6768=WordField.canonicalRows actualModulus 6768 (.band 6765 6767) := by core033_kernel_decide
theorem stats6768 : actualRows6768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6768=5124 := by core033_kernel_decide
theorem rows6769 : actualRows6769=WordField.canonicalRows actualModulus 6769 (.shr 4263 8) := by core033_kernel_decide
theorem stats6769 : actualRows6769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6769=4548 := by core033_kernel_decide
theorem rows6770 : actualRows6770=WordField.canonicalRows actualModulus 6770 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6770 : actualRows6770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6770=2820 := by core033_kernel_decide
theorem rows6771 : actualRows6771=WordField.canonicalRows actualModulus 6771 (.bnot 6770) := by core033_kernel_decide
theorem stats6771 : actualRows6771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6771=6276 := by core033_kernel_decide
theorem rows6772 : actualRows6772=WordField.canonicalRows actualModulus 6772 (.bxor 6769 6771) := by core033_kernel_decide
theorem stats6772 : actualRows6772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6772=7428 := by core033_kernel_decide
theorem rows6773 : actualRows6773=WordField.canonicalRows actualModulus 6773 (.shr 4263 8) := by core033_kernel_decide
theorem stats6773 : actualRows6773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6773=4548 := by core033_kernel_decide
theorem rows6774 : actualRows6774=WordField.canonicalRows actualModulus 6774 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6774 : actualRows6774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6774=2820 := by core033_kernel_decide
theorem rows6775 : actualRows6775=WordField.canonicalRows actualModulus 6775 (.bnot 6774) := by core033_kernel_decide
theorem stats6775 : actualRows6775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6775=6276 := by core033_kernel_decide
theorem rows6776 : actualRows6776=WordField.canonicalRows actualModulus 6776 (.badd 6773 6775) := by core033_kernel_decide
theorem stats6776 : actualRows6776.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6776=5388 := by core033_kernel_decide
theorem rows6777 : actualRows6777=WordField.canonicalRows actualModulus 6777 (.bnot 6776) := by core033_kernel_decide
theorem stats6777 : actualRows6777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6777=6276 := by core033_kernel_decide
theorem rows6778 : actualRows6778=WordField.canonicalRows actualModulus 6778 (.band 6772 6777) := by core033_kernel_decide
theorem stats6778 : actualRows6778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6778=5124 := by core033_kernel_decide
theorem rows6779 : actualRows6779=WordField.canonicalRows actualModulus 6779 (.bxor 6768 6778) := by core033_kernel_decide
theorem stats6779 : actualRows6779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6779=7428 := by core033_kernel_decide
theorem rows6780 : actualRows6780=WordField.canonicalRows actualModulus 6780 (.shr 6779 31) := by core033_kernel_decide
theorem stats6780 : actualRows6780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6780=2892 := by core033_kernel_decide
theorem rows6781 : actualRows6781=WordField.canonicalRows actualModulus 6781 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6781 : actualRows6781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6781=2892 := by core033_kernel_decide
theorem rows6782 : actualRows6782=WordField.canonicalRows actualModulus 6782 (.bxor 6780 6781) := by core033_kernel_decide
theorem stats6782 : actualRows6782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6782=7428 := by core033_kernel_decide
theorem rows6783 : actualRows6783=WordField.canonicalRows actualModulus 6783 (.shr 4315 8) := by core033_kernel_decide
theorem stats6783 : actualRows6783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6783=4548 := by core033_kernel_decide
theorem rows6784 : actualRows6784=WordField.canonicalRows actualModulus 6784 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6784 : actualRows6784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6784=2820 := by core033_kernel_decide
theorem rows6785 : actualRows6785=WordField.canonicalRows actualModulus 6785 (.bnot 6784) := by core033_kernel_decide
theorem stats6785 : actualRows6785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6785=6276 := by core033_kernel_decide
theorem rows6786 : actualRows6786=WordField.canonicalRows actualModulus 6786 (.band 6783 6785) := by core033_kernel_decide
theorem stats6786 : actualRows6786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6786=5124 := by core033_kernel_decide
theorem rows6787 : actualRows6787=WordField.canonicalRows actualModulus 6787 (.shr 4315 8) := by core033_kernel_decide
theorem stats6787 : actualRows6787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6787=4548 := by core033_kernel_decide
theorem rows6788 : actualRows6788=WordField.canonicalRows actualModulus 6788 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6788 : actualRows6788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6788=2820 := by core033_kernel_decide
theorem rows6789 : actualRows6789=WordField.canonicalRows actualModulus 6789 (.bnot 6788) := by core033_kernel_decide
theorem stats6789 : actualRows6789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6789=6276 := by core033_kernel_decide
theorem rows6790 : actualRows6790=WordField.canonicalRows actualModulus 6790 (.bxor 6787 6789) := by core033_kernel_decide
theorem stats6790 : actualRows6790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6790=7428 := by core033_kernel_decide
theorem rows6791 : actualRows6791=WordField.canonicalRows actualModulus 6791 (.shr 4315 8) := by core033_kernel_decide
theorem stats6791 : actualRows6791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6791=4548 := by core033_kernel_decide
theorem rows6792 : actualRows6792=WordField.canonicalRows actualModulus 6792 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6792 : actualRows6792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6792=2820 := by core033_kernel_decide
theorem rows6793 : actualRows6793=WordField.canonicalRows actualModulus 6793 (.bnot 6792) := by core033_kernel_decide
theorem stats6793 : actualRows6793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6793=6276 := by core033_kernel_decide
theorem rows6794 : actualRows6794=WordField.canonicalRows actualModulus 6794 (.badd 6791 6793) := by core033_kernel_decide
theorem stats6794 : actualRows6794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6794=5388 := by core033_kernel_decide
theorem rows6795 : actualRows6795=WordField.canonicalRows actualModulus 6795 (.bnot 6794) := by core033_kernel_decide
theorem stats6795 : actualRows6795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6795=6276 := by core033_kernel_decide
theorem rows6796 : actualRows6796=WordField.canonicalRows actualModulus 6796 (.band 6790 6795) := by core033_kernel_decide
theorem stats6796 : actualRows6796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6796=5124 := by core033_kernel_decide
theorem rows6797 : actualRows6797=WordField.canonicalRows actualModulus 6797 (.bxor 6786 6796) := by core033_kernel_decide
theorem stats6797 : actualRows6797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6797=7428 := by core033_kernel_decide
theorem rows6798 : actualRows6798=WordField.canonicalRows actualModulus 6798 (.shr 6797 31) := by core033_kernel_decide
theorem stats6798 : actualRows6798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6798=2892 := by core033_kernel_decide
theorem rows6799 : actualRows6799=WordField.canonicalRows actualModulus 6799 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6799 : actualRows6799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6799=2892 := by core033_kernel_decide
theorem rows6800 : actualRows6800=WordField.canonicalRows actualModulus 6800 (.bxor 6798 6799) := by core033_kernel_decide
theorem stats6800 : actualRows6800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6800=7428 := by core033_kernel_decide
theorem rows6801 : actualRows6801=WordField.canonicalRows actualModulus 6801 (.shr 4367 8) := by core033_kernel_decide
theorem stats6801 : actualRows6801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6801=4548 := by core033_kernel_decide
theorem rows6802 : actualRows6802=WordField.canonicalRows actualModulus 6802 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6802 : actualRows6802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6802=2820 := by core033_kernel_decide
theorem rows6803 : actualRows6803=WordField.canonicalRows actualModulus 6803 (.bnot 6802) := by core033_kernel_decide
theorem stats6803 : actualRows6803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6803=6276 := by core033_kernel_decide
theorem rows6804 : actualRows6804=WordField.canonicalRows actualModulus 6804 (.band 6801 6803) := by core033_kernel_decide
theorem stats6804 : actualRows6804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6804=5124 := by core033_kernel_decide
theorem rows6805 : actualRows6805=WordField.canonicalRows actualModulus 6805 (.shr 4367 8) := by core033_kernel_decide
theorem stats6805 : actualRows6805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6805=4548 := by core033_kernel_decide
theorem rows6806 : actualRows6806=WordField.canonicalRows actualModulus 6806 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6806 : actualRows6806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6806=2820 := by core033_kernel_decide
theorem rows6807 : actualRows6807=WordField.canonicalRows actualModulus 6807 (.bnot 6806) := by core033_kernel_decide
theorem stats6807 : actualRows6807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6807=6276 := by core033_kernel_decide
theorem rows6808 : actualRows6808=WordField.canonicalRows actualModulus 6808 (.bxor 6805 6807) := by core033_kernel_decide
theorem stats6808 : actualRows6808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6808=7428 := by core033_kernel_decide
theorem rows6809 : actualRows6809=WordField.canonicalRows actualModulus 6809 (.shr 4367 8) := by core033_kernel_decide
theorem stats6809 : actualRows6809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6809=4548 := by core033_kernel_decide
theorem rows6810 : actualRows6810=WordField.canonicalRows actualModulus 6810 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6810 : actualRows6810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6810=2820 := by core033_kernel_decide
theorem rows6811 : actualRows6811=WordField.canonicalRows actualModulus 6811 (.bnot 6810) := by core033_kernel_decide
theorem stats6811 : actualRows6811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6811=6276 := by core033_kernel_decide
theorem rows6812 : actualRows6812=WordField.canonicalRows actualModulus 6812 (.badd 6809 6811) := by core033_kernel_decide
theorem stats6812 : actualRows6812.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6812=5388 := by core033_kernel_decide
theorem rows6813 : actualRows6813=WordField.canonicalRows actualModulus 6813 (.bnot 6812) := by core033_kernel_decide
theorem stats6813 : actualRows6813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6813=6276 := by core033_kernel_decide
theorem rows6814 : actualRows6814=WordField.canonicalRows actualModulus 6814 (.band 6808 6813) := by core033_kernel_decide
theorem stats6814 : actualRows6814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6814=5124 := by core033_kernel_decide
theorem rows6815 : actualRows6815=WordField.canonicalRows actualModulus 6815 (.bxor 6804 6814) := by core033_kernel_decide
theorem stats6815 : actualRows6815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6815=7428 := by core033_kernel_decide
def partRows104 : List R1CS.Row := actualRows6752++actualRows6753++actualRows6754++actualRows6755++actualRows6756++actualRows6757++actualRows6758++actualRows6759++actualRows6760++actualRows6761++actualRows6762++actualRows6763++actualRows6764++actualRows6765++actualRows6766++actualRows6767++actualRows6768++actualRows6769++actualRows6770++actualRows6771++actualRows6772++actualRows6773++actualRows6774++actualRows6775++actualRows6776++actualRows6777++actualRows6778++actualRows6779++actualRows6780++actualRows6781++actualRows6782++actualRows6783++actualRows6784++actualRows6785++actualRows6786++actualRows6787++actualRows6788++actualRows6789++actualRows6790++actualRows6791++actualRows6792++actualRows6793++actualRows6794++actualRows6795++actualRows6796++actualRows6797++actualRows6798++actualRows6799++actualRows6800++actualRows6801++actualRows6802++actualRows6803++actualRows6804++actualRows6805++actualRows6806++actualRows6807++actualRows6808++actualRows6809++actualRows6810++actualRows6811++actualRows6812++actualRows6813++actualRows6814++actualRows6815
def partOps104 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 6752,.bxor 6751 6753,.shr 4211 8,.literal (BitVec.ofNat 32 0),.bnot 6756,.badd 6755 6757,.bnot 6758,.band 6754 6759,.bxor 6750 6760,.shr 6761 31,.literal (BitVec.ofNat 32 1),.bxor 6762 6763,.shr 4263 8,.literal (BitVec.ofNat 32 0),.bnot 6766,.band 6765 6767,.shr 4263 8,.literal (BitVec.ofNat 32 0),.bnot 6770,.bxor 6769 6771,.shr 4263 8,.literal (BitVec.ofNat 32 0),.bnot 6774,.badd 6773 6775,.bnot 6776,.band 6772 6777,.bxor 6768 6778,.shr 6779 31,.literal (BitVec.ofNat 32 1),.bxor 6780 6781,.shr 4315 8,.literal (BitVec.ofNat 32 0),.bnot 6784,.band 6783 6785,.shr 4315 8,.literal (BitVec.ofNat 32 0),.bnot 6788,.bxor 6787 6789,.shr 4315 8,.literal (BitVec.ofNat 32 0),.bnot 6792,.badd 6791 6793,.bnot 6794,.band 6790 6795,.bxor 6786 6796,.shr 6797 31,.literal (BitVec.ofNat 32 1),.bxor 6798 6799,.shr 4367 8,.literal (BitVec.ofNat 32 0),.bnot 6802,.band 6801 6803,.shr 4367 8,.literal (BitVec.ofNat 32 0),.bnot 6806,.bxor 6805 6807,.shr 4367 8,.literal (BitVec.ofNat 32 0),.bnot 6810,.badd 6809 6811,.bnot 6812,.band 6808 6813,.bxor 6804 6814]
theorem partExact104 : partRows104=WordField.rows actualModulus 6752 partOps104 := by
  simp only [partRows104,partOps104,WordField.rows,rows6752,rows6753,rows6754,rows6755,rows6756,rows6757,rows6758,rows6759,rows6760,rows6761,rows6762,rows6763,rows6764,rows6765,rows6766,rows6767,rows6768,rows6769,rows6770,rows6771,rows6772,rows6773,rows6774,rows6775,rows6776,rows6777,rows6778,rows6779,rows6780,rows6781,rows6782,rows6783,rows6784,rows6785,rows6786,rows6787,rows6788,rows6789,rows6790,rows6791,rows6792,rows6793,rows6794,rows6795,rows6796,rows6797,rows6798,rows6799,rows6800,rows6801,rows6802,rows6803,rows6804,rows6805,rows6806,rows6807,rows6808,rows6809,rows6810,rows6811,rows6812,rows6813,rows6814,rows6815,List.append_assoc,List.append_nil]
theorem partLength104 : partOps104.length=64 := by decide
theorem partStats104 : partRows104.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows104=327120 := by
  simp only [partRows104,List.length_append,MatrixRowBlocks.rows_weight_append,stats6752.1,stats6752.2,stats6753.1,stats6753.2,stats6754.1,stats6754.2,stats6755.1,stats6755.2,stats6756.1,stats6756.2,stats6757.1,stats6757.2,stats6758.1,stats6758.2,stats6759.1,stats6759.2,stats6760.1,stats6760.2,stats6761.1,stats6761.2,stats6762.1,stats6762.2,stats6763.1,stats6763.2,stats6764.1,stats6764.2,stats6765.1,stats6765.2,stats6766.1,stats6766.2,stats6767.1,stats6767.2,stats6768.1,stats6768.2,stats6769.1,stats6769.2,stats6770.1,stats6770.2,stats6771.1,stats6771.2,stats6772.1,stats6772.2,stats6773.1,stats6773.2,stats6774.1,stats6774.2,stats6775.1,stats6775.2,stats6776.1,stats6776.2,stats6777.1,stats6777.2,stats6778.1,stats6778.2,stats6779.1,stats6779.2,stats6780.1,stats6780.2,stats6781.1,stats6781.2,stats6782.1,stats6782.2,stats6783.1,stats6783.2,stats6784.1,stats6784.2,stats6785.1,stats6785.2,stats6786.1,stats6786.2,stats6787.1,stats6787.2,stats6788.1,stats6788.2,stats6789.1,stats6789.2,stats6790.1,stats6790.2,stats6791.1,stats6791.2,stats6792.1,stats6792.2,stats6793.1,stats6793.2,stats6794.1,stats6794.2,stats6795.1,stats6795.2,stats6796.1,stats6796.2,stats6797.1,stats6797.2,stats6798.1,stats6798.2,stats6799.1,stats6799.2,stats6800.1,stats6800.2,stats6801.1,stats6801.2,stats6802.1,stats6802.2,stats6803.1,stats6803.2,stats6804.1,stats6804.2,stats6805.1,stats6805.2,stats6806.1,stats6806.2,stats6807.1,stats6807.2,stats6808.1,stats6808.2,stats6809.1,stats6809.2,stats6810.1,stats6810.2,stats6811.1,stats6811.2,stats6812.1,stats6812.2,stats6813.1,stats6813.2,stats6814.1,stats6814.2,stats6815.1,stats6815.2]
  decide
end QuotedPairedPathRoundCheckedRows
