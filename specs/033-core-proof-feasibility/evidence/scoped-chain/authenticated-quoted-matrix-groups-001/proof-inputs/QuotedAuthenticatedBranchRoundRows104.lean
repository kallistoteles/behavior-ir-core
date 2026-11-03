import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData105
import AuthenticatedBranchRoundInstructionMatrixData106
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6774 : actualRows6774=WordField.canonicalRows actualModulus 6774 (.badd 6772 6773) := by core033_kernel_decide
theorem stats6774 : actualRows6774.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6774=5388 := by core033_kernel_decide
theorem rows6775 : actualRows6775=WordField.canonicalRows actualModulus 6775 (.bnot 6774) := by core033_kernel_decide
theorem stats6775 : actualRows6775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6775=6276 := by core033_kernel_decide
theorem rows6776 : actualRows6776=WordField.canonicalRows actualModulus 6776 (.band 6775 2687) := by core033_kernel_decide
theorem stats6776 : actualRows6776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6776=5124 := by core033_kernel_decide
theorem rows6777 : actualRows6777=WordField.canonicalRows actualModulus 6777 (.bxor 6750 6776) := by core033_kernel_decide
theorem stats6777 : actualRows6777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6777=7428 := by core033_kernel_decide
theorem rows6778 : actualRows6778=WordField.canonicalRows actualModulus 6778 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6778 : actualRows6778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6778=2892 := by core033_kernel_decide
theorem rows6779 : actualRows6779=WordField.canonicalRows actualModulus 6779 (.bxor 1299 6778) := by core033_kernel_decide
theorem stats6779 : actualRows6779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6779=7428 := by core033_kernel_decide
theorem rows6780 : actualRows6780=WordField.canonicalRows actualModulus 6780 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6780 : actualRows6780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6780=2820 := by core033_kernel_decide
theorem rows6781 : actualRows6781=WordField.canonicalRows actualModulus 6781 (.bnot 6780) := by core033_kernel_decide
theorem stats6781 : actualRows6781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6781=6276 := by core033_kernel_decide
theorem rows6782 : actualRows6782=WordField.canonicalRows actualModulus 6782 (.band 6779 6781) := by core033_kernel_decide
theorem stats6782 : actualRows6782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6782=5124 := by core033_kernel_decide
theorem rows6783 : actualRows6783=WordField.canonicalRows actualModulus 6783 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6783 : actualRows6783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6783=2892 := by core033_kernel_decide
theorem rows6784 : actualRows6784=WordField.canonicalRows actualModulus 6784 (.bxor 1299 6783) := by core033_kernel_decide
theorem stats6784 : actualRows6784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6784=7428 := by core033_kernel_decide
theorem rows6785 : actualRows6785=WordField.canonicalRows actualModulus 6785 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6785 : actualRows6785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6785=2820 := by core033_kernel_decide
theorem rows6786 : actualRows6786=WordField.canonicalRows actualModulus 6786 (.bnot 6785) := by core033_kernel_decide
theorem stats6786 : actualRows6786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6786=6276 := by core033_kernel_decide
theorem rows6787 : actualRows6787=WordField.canonicalRows actualModulus 6787 (.bxor 6784 6786) := by core033_kernel_decide
theorem stats6787 : actualRows6787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6787=7428 := by core033_kernel_decide
theorem rows6788 : actualRows6788=WordField.canonicalRows actualModulus 6788 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6788 : actualRows6788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6788=2892 := by core033_kernel_decide
theorem rows6789 : actualRows6789=WordField.canonicalRows actualModulus 6789 (.bxor 1299 6788) := by core033_kernel_decide
theorem stats6789 : actualRows6789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6789=7428 := by core033_kernel_decide
theorem rows6790 : actualRows6790=WordField.canonicalRows actualModulus 6790 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6790 : actualRows6790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6790=2820 := by core033_kernel_decide
theorem rows6791 : actualRows6791=WordField.canonicalRows actualModulus 6791 (.bnot 6790) := by core033_kernel_decide
theorem stats6791 : actualRows6791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6791=6276 := by core033_kernel_decide
theorem rows6792 : actualRows6792=WordField.canonicalRows actualModulus 6792 (.badd 6789 6791) := by core033_kernel_decide
theorem stats6792 : actualRows6792.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6792=5388 := by core033_kernel_decide
theorem rows6793 : actualRows6793=WordField.canonicalRows actualModulus 6793 (.bnot 6792) := by core033_kernel_decide
theorem stats6793 : actualRows6793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6793=6276 := by core033_kernel_decide
theorem rows6794 : actualRows6794=WordField.canonicalRows actualModulus 6794 (.band 6787 6793) := by core033_kernel_decide
theorem stats6794 : actualRows6794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6794=5124 := by core033_kernel_decide
theorem rows6795 : actualRows6795=WordField.canonicalRows actualModulus 6795 (.bxor 6782 6794) := by core033_kernel_decide
theorem stats6795 : actualRows6795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6795=7428 := by core033_kernel_decide
theorem rows6796 : actualRows6796=WordField.canonicalRows actualModulus 6796 (.shr 6795 31) := by core033_kernel_decide
theorem stats6796 : actualRows6796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6796=2892 := by core033_kernel_decide
theorem rows6797 : actualRows6797=WordField.canonicalRows actualModulus 6797 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6797 : actualRows6797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6797=2892 := by core033_kernel_decide
theorem rows6798 : actualRows6798=WordField.canonicalRows actualModulus 6798 (.bxor 6796 6797) := by core033_kernel_decide
theorem stats6798 : actualRows6798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6798=7428 := by core033_kernel_decide
theorem rows6799 : actualRows6799=WordField.canonicalRows actualModulus 6799 (.bnot 6798) := by core033_kernel_decide
theorem stats6799 : actualRows6799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6799=6276 := by core033_kernel_decide
theorem rows6800 : actualRows6800=WordField.canonicalRows actualModulus 6800 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6800 : actualRows6800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6800=2892 := by core033_kernel_decide
theorem rows6801 : actualRows6801=WordField.canonicalRows actualModulus 6801 (.badd 6799 6800) := by core033_kernel_decide
theorem stats6801 : actualRows6801.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6801=5388 := by core033_kernel_decide
theorem rows6802 : actualRows6802=WordField.canonicalRows actualModulus 6802 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats6802 : actualRows6802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6802=2964 := by core033_kernel_decide
theorem rows6803 : actualRows6803=WordField.canonicalRows actualModulus 6803 (.band 6801 6802) := by core033_kernel_decide
theorem stats6803 : actualRows6803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6803=5124 := by core033_kernel_decide
theorem rows6804 : actualRows6804=WordField.canonicalRows actualModulus 6804 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6804 : actualRows6804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6804=2892 := by core033_kernel_decide
theorem rows6805 : actualRows6805=WordField.canonicalRows actualModulus 6805 (.bxor 1299 6804) := by core033_kernel_decide
theorem stats6805 : actualRows6805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6805=7428 := by core033_kernel_decide
theorem rows6806 : actualRows6806=WordField.canonicalRows actualModulus 6806 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6806 : actualRows6806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6806=2820 := by core033_kernel_decide
theorem rows6807 : actualRows6807=WordField.canonicalRows actualModulus 6807 (.bnot 6806) := by core033_kernel_decide
theorem stats6807 : actualRows6807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6807=6276 := by core033_kernel_decide
theorem rows6808 : actualRows6808=WordField.canonicalRows actualModulus 6808 (.band 6805 6807) := by core033_kernel_decide
theorem stats6808 : actualRows6808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6808=5124 := by core033_kernel_decide
theorem rows6809 : actualRows6809=WordField.canonicalRows actualModulus 6809 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6809 : actualRows6809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6809=2892 := by core033_kernel_decide
theorem rows6810 : actualRows6810=WordField.canonicalRows actualModulus 6810 (.bxor 1299 6809) := by core033_kernel_decide
theorem stats6810 : actualRows6810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6810=7428 := by core033_kernel_decide
theorem rows6811 : actualRows6811=WordField.canonicalRows actualModulus 6811 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6811 : actualRows6811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6811=2820 := by core033_kernel_decide
theorem rows6812 : actualRows6812=WordField.canonicalRows actualModulus 6812 (.bnot 6811) := by core033_kernel_decide
theorem stats6812 : actualRows6812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6812=6276 := by core033_kernel_decide
theorem rows6813 : actualRows6813=WordField.canonicalRows actualModulus 6813 (.bxor 6810 6812) := by core033_kernel_decide
theorem stats6813 : actualRows6813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6813=7428 := by core033_kernel_decide
theorem rows6814 : actualRows6814=WordField.canonicalRows actualModulus 6814 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6814 : actualRows6814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6814=2892 := by core033_kernel_decide
theorem rows6815 : actualRows6815=WordField.canonicalRows actualModulus 6815 (.bxor 1299 6814) := by core033_kernel_decide
theorem stats6815 : actualRows6815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6815=7428 := by core033_kernel_decide
theorem rows6816 : actualRows6816=WordField.canonicalRows actualModulus 6816 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6816 : actualRows6816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6816=2820 := by core033_kernel_decide
theorem rows6817 : actualRows6817=WordField.canonicalRows actualModulus 6817 (.bnot 6816) := by core033_kernel_decide
theorem stats6817 : actualRows6817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6817=6276 := by core033_kernel_decide
theorem rows6818 : actualRows6818=WordField.canonicalRows actualModulus 6818 (.badd 6815 6817) := by core033_kernel_decide
theorem stats6818 : actualRows6818.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6818=5388 := by core033_kernel_decide
theorem rows6819 : actualRows6819=WordField.canonicalRows actualModulus 6819 (.bnot 6818) := by core033_kernel_decide
theorem stats6819 : actualRows6819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6819=6276 := by core033_kernel_decide
theorem rows6820 : actualRows6820=WordField.canonicalRows actualModulus 6820 (.band 6813 6819) := by core033_kernel_decide
theorem stats6820 : actualRows6820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6820=5124 := by core033_kernel_decide
theorem rows6821 : actualRows6821=WordField.canonicalRows actualModulus 6821 (.bxor 6808 6820) := by core033_kernel_decide
theorem stats6821 : actualRows6821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6821=7428 := by core033_kernel_decide
theorem rows6822 : actualRows6822=WordField.canonicalRows actualModulus 6822 (.shr 6821 31) := by core033_kernel_decide
theorem stats6822 : actualRows6822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6822=2892 := by core033_kernel_decide
theorem rows6823 : actualRows6823=WordField.canonicalRows actualModulus 6823 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6823 : actualRows6823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6823=2892 := by core033_kernel_decide
theorem rows6824 : actualRows6824=WordField.canonicalRows actualModulus 6824 (.bxor 6822 6823) := by core033_kernel_decide
theorem stats6824 : actualRows6824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6824=7428 := by core033_kernel_decide
theorem rows6825 : actualRows6825=WordField.canonicalRows actualModulus 6825 (.bnot 6824) := by core033_kernel_decide
theorem stats6825 : actualRows6825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6825=6276 := by core033_kernel_decide
theorem rows6826 : actualRows6826=WordField.canonicalRows actualModulus 6826 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6826 : actualRows6826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6826=2892 := by core033_kernel_decide
theorem rows6827 : actualRows6827=WordField.canonicalRows actualModulus 6827 (.badd 6825 6826) := by core033_kernel_decide
theorem stats6827 : actualRows6827.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6827=5388 := by core033_kernel_decide
theorem rows6828 : actualRows6828=WordField.canonicalRows actualModulus 6828 (.bnot 6827) := by core033_kernel_decide
theorem stats6828 : actualRows6828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6828=6276 := by core033_kernel_decide
theorem rows6829 : actualRows6829=WordField.canonicalRows actualModulus 6829 (.band 6828 2690) := by core033_kernel_decide
theorem stats6829 : actualRows6829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6829=5124 := by core033_kernel_decide
theorem rows6830 : actualRows6830=WordField.canonicalRows actualModulus 6830 (.bxor 6803 6829) := by core033_kernel_decide
theorem stats6830 : actualRows6830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6830=7428 := by core033_kernel_decide
theorem rows6831 : actualRows6831=WordField.canonicalRows actualModulus 6831 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6831 : actualRows6831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6831=2892 := by core033_kernel_decide
theorem rows6832 : actualRows6832=WordField.canonicalRows actualModulus 6832 (.bxor 1299 6831) := by core033_kernel_decide
theorem stats6832 : actualRows6832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6832=7428 := by core033_kernel_decide
theorem rows6833 : actualRows6833=WordField.canonicalRows actualModulus 6833 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6833 : actualRows6833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6833=2820 := by core033_kernel_decide
theorem rows6834 : actualRows6834=WordField.canonicalRows actualModulus 6834 (.bnot 6833) := by core033_kernel_decide
theorem stats6834 : actualRows6834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6834=6276 := by core033_kernel_decide
theorem rows6835 : actualRows6835=WordField.canonicalRows actualModulus 6835 (.band 6832 6834) := by core033_kernel_decide
theorem stats6835 : actualRows6835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6835=5124 := by core033_kernel_decide
theorem rows6836 : actualRows6836=WordField.canonicalRows actualModulus 6836 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6836 : actualRows6836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6836=2892 := by core033_kernel_decide
theorem rows6837 : actualRows6837=WordField.canonicalRows actualModulus 6837 (.bxor 1299 6836) := by core033_kernel_decide
theorem stats6837 : actualRows6837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6837=7428 := by core033_kernel_decide
def partRows104 : List R1CS.Row := actualRows6774++actualRows6775++actualRows6776++actualRows6777++actualRows6778++actualRows6779++actualRows6780++actualRows6781++actualRows6782++actualRows6783++actualRows6784++actualRows6785++actualRows6786++actualRows6787++actualRows6788++actualRows6789++actualRows6790++actualRows6791++actualRows6792++actualRows6793++actualRows6794++actualRows6795++actualRows6796++actualRows6797++actualRows6798++actualRows6799++actualRows6800++actualRows6801++actualRows6802++actualRows6803++actualRows6804++actualRows6805++actualRows6806++actualRows6807++actualRows6808++actualRows6809++actualRows6810++actualRows6811++actualRows6812++actualRows6813++actualRows6814++actualRows6815++actualRows6816++actualRows6817++actualRows6818++actualRows6819++actualRows6820++actualRows6821++actualRows6822++actualRows6823++actualRows6824++actualRows6825++actualRows6826++actualRows6827++actualRows6828++actualRows6829++actualRows6830++actualRows6831++actualRows6832++actualRows6833++actualRows6834++actualRows6835++actualRows6836++actualRows6837
def partOps104 : List WordIR.Op := [.badd 6772 6773,.bnot 6774,.band 6775 2687,.bxor 6750 6776,.literal (BitVec.ofNat 32 2),.bxor 1299 6778,.literal (BitVec.ofNat 32 0),.bnot 6780,.band 6779 6781,.literal (BitVec.ofNat 32 2),.bxor 1299 6783,.literal (BitVec.ofNat 32 0),.bnot 6785,.bxor 6784 6786,.literal (BitVec.ofNat 32 2),.bxor 1299 6788,.literal (BitVec.ofNat 32 0),.bnot 6790,.badd 6789 6791,.bnot 6792,.band 6787 6793,.bxor 6782 6794,.shr 6795 31,.literal (BitVec.ofNat 32 1),.bxor 6796 6797,.bnot 6798,.literal (BitVec.ofNat 32 1),.badd 6799 6800,.literal (BitVec.ofNat 32 3),.band 6801 6802,.literal (BitVec.ofNat 32 2),.bxor 1299 6804,.literal (BitVec.ofNat 32 0),.bnot 6806,.band 6805 6807,.literal (BitVec.ofNat 32 2),.bxor 1299 6809,.literal (BitVec.ofNat 32 0),.bnot 6811,.bxor 6810 6812,.literal (BitVec.ofNat 32 2),.bxor 1299 6814,.literal (BitVec.ofNat 32 0),.bnot 6816,.badd 6815 6817,.bnot 6818,.band 6813 6819,.bxor 6808 6820,.shr 6821 31,.literal (BitVec.ofNat 32 1),.bxor 6822 6823,.bnot 6824,.literal (BitVec.ofNat 32 1),.badd 6825 6826,.bnot 6827,.band 6828 2690,.bxor 6803 6829,.literal (BitVec.ofNat 32 2),.bxor 1299 6831,.literal (BitVec.ofNat 32 0),.bnot 6833,.band 6832 6834,.literal (BitVec.ofNat 32 2),.bxor 1299 6836]
theorem partExact104 : partRows104=WordField.rows actualModulus 6774 partOps104 := by
  simp only [partRows104,partOps104,WordField.rows,rows6774,rows6775,rows6776,rows6777,rows6778,rows6779,rows6780,rows6781,rows6782,rows6783,rows6784,rows6785,rows6786,rows6787,rows6788,rows6789,rows6790,rows6791,rows6792,rows6793,rows6794,rows6795,rows6796,rows6797,rows6798,rows6799,rows6800,rows6801,rows6802,rows6803,rows6804,rows6805,rows6806,rows6807,rows6808,rows6809,rows6810,rows6811,rows6812,rows6813,rows6814,rows6815,rows6816,rows6817,rows6818,rows6819,rows6820,rows6821,rows6822,rows6823,rows6824,rows6825,rows6826,rows6827,rows6828,rows6829,rows6830,rows6831,rows6832,rows6833,rows6834,rows6835,rows6836,rows6837,List.append_assoc,List.append_nil]
theorem partLength104 : partOps104.length=64 := by decide
theorem partStats104 : partRows104.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows104=331560 := by
  simp only [partRows104,List.length_append,MatrixRowBlocks.rows_weight_append,stats6774.1,stats6774.2,stats6775.1,stats6775.2,stats6776.1,stats6776.2,stats6777.1,stats6777.2,stats6778.1,stats6778.2,stats6779.1,stats6779.2,stats6780.1,stats6780.2,stats6781.1,stats6781.2,stats6782.1,stats6782.2,stats6783.1,stats6783.2,stats6784.1,stats6784.2,stats6785.1,stats6785.2,stats6786.1,stats6786.2,stats6787.1,stats6787.2,stats6788.1,stats6788.2,stats6789.1,stats6789.2,stats6790.1,stats6790.2,stats6791.1,stats6791.2,stats6792.1,stats6792.2,stats6793.1,stats6793.2,stats6794.1,stats6794.2,stats6795.1,stats6795.2,stats6796.1,stats6796.2,stats6797.1,stats6797.2,stats6798.1,stats6798.2,stats6799.1,stats6799.2,stats6800.1,stats6800.2,stats6801.1,stats6801.2,stats6802.1,stats6802.2,stats6803.1,stats6803.2,stats6804.1,stats6804.2,stats6805.1,stats6805.2,stats6806.1,stats6806.2,stats6807.1,stats6807.2,stats6808.1,stats6808.2,stats6809.1,stats6809.2,stats6810.1,stats6810.2,stats6811.1,stats6811.2,stats6812.1,stats6812.2,stats6813.1,stats6813.2,stats6814.1,stats6814.2,stats6815.1,stats6815.2,stats6816.1,stats6816.2,stats6817.1,stats6817.2,stats6818.1,stats6818.2,stats6819.1,stats6819.2,stats6820.1,stats6820.2,stats6821.1,stats6821.2,stats6822.1,stats6822.2,stats6823.1,stats6823.2,stats6824.1,stats6824.2,stats6825.1,stats6825.2,stats6826.1,stats6826.2,stats6827.1,stats6827.2,stats6828.1,stats6828.2,stats6829.1,stats6829.2,stats6830.1,stats6830.2,stats6831.1,stats6831.2,stats6832.1,stats6832.2,stats6833.1,stats6833.2,stats6834.1,stats6834.2,stats6835.1,stats6835.2,stats6836.1,stats6836.2,stats6837.1,stats6837.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
