import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData106
import PairedPathRoundInstructionMatrixData107
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6816 : actualRows6816=WordField.canonicalRows actualModulus 6816 (.shr 6815 31) := by core033_kernel_decide
theorem stats6816 : actualRows6816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6816=2892 := by core033_kernel_decide
theorem rows6817 : actualRows6817=WordField.canonicalRows actualModulus 6817 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6817 : actualRows6817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6817=2892 := by core033_kernel_decide
theorem rows6818 : actualRows6818=WordField.canonicalRows actualModulus 6818 (.bxor 6816 6817) := by core033_kernel_decide
theorem stats6818 : actualRows6818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6818=7428 := by core033_kernel_decide
theorem rows6819 : actualRows6819=WordField.canonicalRows actualModulus 6819 (.shr 4419 8) := by core033_kernel_decide
theorem stats6819 : actualRows6819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6819=4548 := by core033_kernel_decide
theorem rows6820 : actualRows6820=WordField.canonicalRows actualModulus 6820 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6820 : actualRows6820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6820=2820 := by core033_kernel_decide
theorem rows6821 : actualRows6821=WordField.canonicalRows actualModulus 6821 (.bnot 6820) := by core033_kernel_decide
theorem stats6821 : actualRows6821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6821=6276 := by core033_kernel_decide
theorem rows6822 : actualRows6822=WordField.canonicalRows actualModulus 6822 (.band 6819 6821) := by core033_kernel_decide
theorem stats6822 : actualRows6822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6822=5124 := by core033_kernel_decide
theorem rows6823 : actualRows6823=WordField.canonicalRows actualModulus 6823 (.shr 4419 8) := by core033_kernel_decide
theorem stats6823 : actualRows6823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6823=4548 := by core033_kernel_decide
theorem rows6824 : actualRows6824=WordField.canonicalRows actualModulus 6824 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6824 : actualRows6824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6824=2820 := by core033_kernel_decide
theorem rows6825 : actualRows6825=WordField.canonicalRows actualModulus 6825 (.bnot 6824) := by core033_kernel_decide
theorem stats6825 : actualRows6825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6825=6276 := by core033_kernel_decide
theorem rows6826 : actualRows6826=WordField.canonicalRows actualModulus 6826 (.bxor 6823 6825) := by core033_kernel_decide
theorem stats6826 : actualRows6826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6826=7428 := by core033_kernel_decide
theorem rows6827 : actualRows6827=WordField.canonicalRows actualModulus 6827 (.shr 4419 8) := by core033_kernel_decide
theorem stats6827 : actualRows6827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6827=4548 := by core033_kernel_decide
theorem rows6828 : actualRows6828=WordField.canonicalRows actualModulus 6828 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6828 : actualRows6828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6828=2820 := by core033_kernel_decide
theorem rows6829 : actualRows6829=WordField.canonicalRows actualModulus 6829 (.bnot 6828) := by core033_kernel_decide
theorem stats6829 : actualRows6829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6829=6276 := by core033_kernel_decide
theorem rows6830 : actualRows6830=WordField.canonicalRows actualModulus 6830 (.badd 6827 6829) := by core033_kernel_decide
theorem stats6830 : actualRows6830.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6830=5388 := by core033_kernel_decide
theorem rows6831 : actualRows6831=WordField.canonicalRows actualModulus 6831 (.bnot 6830) := by core033_kernel_decide
theorem stats6831 : actualRows6831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6831=6276 := by core033_kernel_decide
theorem rows6832 : actualRows6832=WordField.canonicalRows actualModulus 6832 (.band 6826 6831) := by core033_kernel_decide
theorem stats6832 : actualRows6832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6832=5124 := by core033_kernel_decide
theorem rows6833 : actualRows6833=WordField.canonicalRows actualModulus 6833 (.bxor 6822 6832) := by core033_kernel_decide
theorem stats6833 : actualRows6833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6833=7428 := by core033_kernel_decide
theorem rows6834 : actualRows6834=WordField.canonicalRows actualModulus 6834 (.shr 6833 31) := by core033_kernel_decide
theorem stats6834 : actualRows6834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6834=2892 := by core033_kernel_decide
theorem rows6835 : actualRows6835=WordField.canonicalRows actualModulus 6835 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6835 : actualRows6835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6835=2892 := by core033_kernel_decide
theorem rows6836 : actualRows6836=WordField.canonicalRows actualModulus 6836 (.bxor 6834 6835) := by core033_kernel_decide
theorem stats6836 : actualRows6836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6836=7428 := by core033_kernel_decide
theorem rows6837 : actualRows6837=WordField.canonicalRows actualModulus 6837 (.shr 4471 8) := by core033_kernel_decide
theorem stats6837 : actualRows6837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6837=4548 := by core033_kernel_decide
theorem rows6838 : actualRows6838=WordField.canonicalRows actualModulus 6838 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6838 : actualRows6838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6838=2820 := by core033_kernel_decide
theorem rows6839 : actualRows6839=WordField.canonicalRows actualModulus 6839 (.bnot 6838) := by core033_kernel_decide
theorem stats6839 : actualRows6839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6839=6276 := by core033_kernel_decide
theorem rows6840 : actualRows6840=WordField.canonicalRows actualModulus 6840 (.band 6837 6839) := by core033_kernel_decide
theorem stats6840 : actualRows6840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6840=5124 := by core033_kernel_decide
theorem rows6841 : actualRows6841=WordField.canonicalRows actualModulus 6841 (.shr 4471 8) := by core033_kernel_decide
theorem stats6841 : actualRows6841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6841=4548 := by core033_kernel_decide
theorem rows6842 : actualRows6842=WordField.canonicalRows actualModulus 6842 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6842 : actualRows6842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6842=2820 := by core033_kernel_decide
theorem rows6843 : actualRows6843=WordField.canonicalRows actualModulus 6843 (.bnot 6842) := by core033_kernel_decide
theorem stats6843 : actualRows6843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6843=6276 := by core033_kernel_decide
theorem rows6844 : actualRows6844=WordField.canonicalRows actualModulus 6844 (.bxor 6841 6843) := by core033_kernel_decide
theorem stats6844 : actualRows6844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6844=7428 := by core033_kernel_decide
theorem rows6845 : actualRows6845=WordField.canonicalRows actualModulus 6845 (.shr 4471 8) := by core033_kernel_decide
theorem stats6845 : actualRows6845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6845=4548 := by core033_kernel_decide
theorem rows6846 : actualRows6846=WordField.canonicalRows actualModulus 6846 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6846 : actualRows6846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6846=2820 := by core033_kernel_decide
theorem rows6847 : actualRows6847=WordField.canonicalRows actualModulus 6847 (.bnot 6846) := by core033_kernel_decide
theorem stats6847 : actualRows6847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6847=6276 := by core033_kernel_decide
theorem rows6848 : actualRows6848=WordField.canonicalRows actualModulus 6848 (.badd 6845 6847) := by core033_kernel_decide
theorem stats6848 : actualRows6848.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6848=5388 := by core033_kernel_decide
theorem rows6849 : actualRows6849=WordField.canonicalRows actualModulus 6849 (.bnot 6848) := by core033_kernel_decide
theorem stats6849 : actualRows6849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6849=6276 := by core033_kernel_decide
theorem rows6850 : actualRows6850=WordField.canonicalRows actualModulus 6850 (.band 6844 6849) := by core033_kernel_decide
theorem stats6850 : actualRows6850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6850=5124 := by core033_kernel_decide
theorem rows6851 : actualRows6851=WordField.canonicalRows actualModulus 6851 (.bxor 6840 6850) := by core033_kernel_decide
theorem stats6851 : actualRows6851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6851=7428 := by core033_kernel_decide
theorem rows6852 : actualRows6852=WordField.canonicalRows actualModulus 6852 (.shr 6851 31) := by core033_kernel_decide
theorem stats6852 : actualRows6852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6852=2892 := by core033_kernel_decide
theorem rows6853 : actualRows6853=WordField.canonicalRows actualModulus 6853 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6853 : actualRows6853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6853=2892 := by core033_kernel_decide
theorem rows6854 : actualRows6854=WordField.canonicalRows actualModulus 6854 (.bxor 6852 6853) := by core033_kernel_decide
theorem stats6854 : actualRows6854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6854=7428 := by core033_kernel_decide
theorem rows6855 : actualRows6855=WordField.canonicalRows actualModulus 6855 (.shr 4523 8) := by core033_kernel_decide
theorem stats6855 : actualRows6855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6855=4548 := by core033_kernel_decide
theorem rows6856 : actualRows6856=WordField.canonicalRows actualModulus 6856 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6856 : actualRows6856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6856=2820 := by core033_kernel_decide
theorem rows6857 : actualRows6857=WordField.canonicalRows actualModulus 6857 (.bnot 6856) := by core033_kernel_decide
theorem stats6857 : actualRows6857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6857=6276 := by core033_kernel_decide
theorem rows6858 : actualRows6858=WordField.canonicalRows actualModulus 6858 (.band 6855 6857) := by core033_kernel_decide
theorem stats6858 : actualRows6858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6858=5124 := by core033_kernel_decide
theorem rows6859 : actualRows6859=WordField.canonicalRows actualModulus 6859 (.shr 4523 8) := by core033_kernel_decide
theorem stats6859 : actualRows6859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6859=4548 := by core033_kernel_decide
theorem rows6860 : actualRows6860=WordField.canonicalRows actualModulus 6860 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6860 : actualRows6860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6860=2820 := by core033_kernel_decide
theorem rows6861 : actualRows6861=WordField.canonicalRows actualModulus 6861 (.bnot 6860) := by core033_kernel_decide
theorem stats6861 : actualRows6861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6861=6276 := by core033_kernel_decide
theorem rows6862 : actualRows6862=WordField.canonicalRows actualModulus 6862 (.bxor 6859 6861) := by core033_kernel_decide
theorem stats6862 : actualRows6862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6862=7428 := by core033_kernel_decide
theorem rows6863 : actualRows6863=WordField.canonicalRows actualModulus 6863 (.shr 4523 8) := by core033_kernel_decide
theorem stats6863 : actualRows6863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6863=4548 := by core033_kernel_decide
theorem rows6864 : actualRows6864=WordField.canonicalRows actualModulus 6864 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6864 : actualRows6864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6864=2820 := by core033_kernel_decide
theorem rows6865 : actualRows6865=WordField.canonicalRows actualModulus 6865 (.bnot 6864) := by core033_kernel_decide
theorem stats6865 : actualRows6865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6865=6276 := by core033_kernel_decide
theorem rows6866 : actualRows6866=WordField.canonicalRows actualModulus 6866 (.badd 6863 6865) := by core033_kernel_decide
theorem stats6866 : actualRows6866.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6866=5388 := by core033_kernel_decide
theorem rows6867 : actualRows6867=WordField.canonicalRows actualModulus 6867 (.bnot 6866) := by core033_kernel_decide
theorem stats6867 : actualRows6867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6867=6276 := by core033_kernel_decide
theorem rows6868 : actualRows6868=WordField.canonicalRows actualModulus 6868 (.band 6862 6867) := by core033_kernel_decide
theorem stats6868 : actualRows6868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6868=5124 := by core033_kernel_decide
theorem rows6869 : actualRows6869=WordField.canonicalRows actualModulus 6869 (.bxor 6858 6868) := by core033_kernel_decide
theorem stats6869 : actualRows6869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6869=7428 := by core033_kernel_decide
theorem rows6870 : actualRows6870=WordField.canonicalRows actualModulus 6870 (.shr 6869 31) := by core033_kernel_decide
theorem stats6870 : actualRows6870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6870=2892 := by core033_kernel_decide
theorem rows6871 : actualRows6871=WordField.canonicalRows actualModulus 6871 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6871 : actualRows6871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6871=2892 := by core033_kernel_decide
theorem rows6872 : actualRows6872=WordField.canonicalRows actualModulus 6872 (.bxor 6870 6871) := by core033_kernel_decide
theorem stats6872 : actualRows6872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6872=7428 := by core033_kernel_decide
theorem rows6873 : actualRows6873=WordField.canonicalRows actualModulus 6873 (.shr 4575 8) := by core033_kernel_decide
theorem stats6873 : actualRows6873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6873=4548 := by core033_kernel_decide
theorem rows6874 : actualRows6874=WordField.canonicalRows actualModulus 6874 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6874 : actualRows6874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6874=2820 := by core033_kernel_decide
theorem rows6875 : actualRows6875=WordField.canonicalRows actualModulus 6875 (.bnot 6874) := by core033_kernel_decide
theorem stats6875 : actualRows6875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6875=6276 := by core033_kernel_decide
theorem rows6876 : actualRows6876=WordField.canonicalRows actualModulus 6876 (.band 6873 6875) := by core033_kernel_decide
theorem stats6876 : actualRows6876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6876=5124 := by core033_kernel_decide
theorem rows6877 : actualRows6877=WordField.canonicalRows actualModulus 6877 (.shr 4575 8) := by core033_kernel_decide
theorem stats6877 : actualRows6877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6877=4548 := by core033_kernel_decide
theorem rows6878 : actualRows6878=WordField.canonicalRows actualModulus 6878 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6878 : actualRows6878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6878=2820 := by core033_kernel_decide
theorem rows6879 : actualRows6879=WordField.canonicalRows actualModulus 6879 (.bnot 6878) := by core033_kernel_decide
theorem stats6879 : actualRows6879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6879=6276 := by core033_kernel_decide
def partRows105 : List R1CS.Row := actualRows6816++actualRows6817++actualRows6818++actualRows6819++actualRows6820++actualRows6821++actualRows6822++actualRows6823++actualRows6824++actualRows6825++actualRows6826++actualRows6827++actualRows6828++actualRows6829++actualRows6830++actualRows6831++actualRows6832++actualRows6833++actualRows6834++actualRows6835++actualRows6836++actualRows6837++actualRows6838++actualRows6839++actualRows6840++actualRows6841++actualRows6842++actualRows6843++actualRows6844++actualRows6845++actualRows6846++actualRows6847++actualRows6848++actualRows6849++actualRows6850++actualRows6851++actualRows6852++actualRows6853++actualRows6854++actualRows6855++actualRows6856++actualRows6857++actualRows6858++actualRows6859++actualRows6860++actualRows6861++actualRows6862++actualRows6863++actualRows6864++actualRows6865++actualRows6866++actualRows6867++actualRows6868++actualRows6869++actualRows6870++actualRows6871++actualRows6872++actualRows6873++actualRows6874++actualRows6875++actualRows6876++actualRows6877++actualRows6878++actualRows6879
def partOps105 : List WordIR.Op := [.shr 6815 31,.literal (BitVec.ofNat 32 1),.bxor 6816 6817,.shr 4419 8,.literal (BitVec.ofNat 32 0),.bnot 6820,.band 6819 6821,.shr 4419 8,.literal (BitVec.ofNat 32 0),.bnot 6824,.bxor 6823 6825,.shr 4419 8,.literal (BitVec.ofNat 32 0),.bnot 6828,.badd 6827 6829,.bnot 6830,.band 6826 6831,.bxor 6822 6832,.shr 6833 31,.literal (BitVec.ofNat 32 1),.bxor 6834 6835,.shr 4471 8,.literal (BitVec.ofNat 32 0),.bnot 6838,.band 6837 6839,.shr 4471 8,.literal (BitVec.ofNat 32 0),.bnot 6842,.bxor 6841 6843,.shr 4471 8,.literal (BitVec.ofNat 32 0),.bnot 6846,.badd 6845 6847,.bnot 6848,.band 6844 6849,.bxor 6840 6850,.shr 6851 31,.literal (BitVec.ofNat 32 1),.bxor 6852 6853,.shr 4523 8,.literal (BitVec.ofNat 32 0),.bnot 6856,.band 6855 6857,.shr 4523 8,.literal (BitVec.ofNat 32 0),.bnot 6860,.bxor 6859 6861,.shr 4523 8,.literal (BitVec.ofNat 32 0),.bnot 6864,.badd 6863 6865,.bnot 6866,.band 6862 6867,.bxor 6858 6868,.shr 6869 31,.literal (BitVec.ofNat 32 1),.bxor 6870 6871,.shr 4575 8,.literal (BitVec.ofNat 32 0),.bnot 6874,.band 6873 6875,.shr 4575 8,.literal (BitVec.ofNat 32 0),.bnot 6878]
theorem partExact105 : partRows105=WordField.rows actualModulus 6816 partOps105 := by
  simp only [partRows105,partOps105,WordField.rows,rows6816,rows6817,rows6818,rows6819,rows6820,rows6821,rows6822,rows6823,rows6824,rows6825,rows6826,rows6827,rows6828,rows6829,rows6830,rows6831,rows6832,rows6833,rows6834,rows6835,rows6836,rows6837,rows6838,rows6839,rows6840,rows6841,rows6842,rows6843,rows6844,rows6845,rows6846,rows6847,rows6848,rows6849,rows6850,rows6851,rows6852,rows6853,rows6854,rows6855,rows6856,rows6857,rows6858,rows6859,rows6860,rows6861,rows6862,rows6863,rows6864,rows6865,rows6866,rows6867,rows6868,rows6869,rows6870,rows6871,rows6872,rows6873,rows6874,rows6875,rows6876,rows6877,rows6878,rows6879,List.append_assoc,List.append_nil]
theorem partLength105 : partOps105.length=64 := by decide
theorem partStats105 : partRows105.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows105=318360 := by
  simp only [partRows105,List.length_append,MatrixRowBlocks.rows_weight_append,stats6816.1,stats6816.2,stats6817.1,stats6817.2,stats6818.1,stats6818.2,stats6819.1,stats6819.2,stats6820.1,stats6820.2,stats6821.1,stats6821.2,stats6822.1,stats6822.2,stats6823.1,stats6823.2,stats6824.1,stats6824.2,stats6825.1,stats6825.2,stats6826.1,stats6826.2,stats6827.1,stats6827.2,stats6828.1,stats6828.2,stats6829.1,stats6829.2,stats6830.1,stats6830.2,stats6831.1,stats6831.2,stats6832.1,stats6832.2,stats6833.1,stats6833.2,stats6834.1,stats6834.2,stats6835.1,stats6835.2,stats6836.1,stats6836.2,stats6837.1,stats6837.2,stats6838.1,stats6838.2,stats6839.1,stats6839.2,stats6840.1,stats6840.2,stats6841.1,stats6841.2,stats6842.1,stats6842.2,stats6843.1,stats6843.2,stats6844.1,stats6844.2,stats6845.1,stats6845.2,stats6846.1,stats6846.2,stats6847.1,stats6847.2,stats6848.1,stats6848.2,stats6849.1,stats6849.2,stats6850.1,stats6850.2,stats6851.1,stats6851.2,stats6852.1,stats6852.2,stats6853.1,stats6853.2,stats6854.1,stats6854.2,stats6855.1,stats6855.2,stats6856.1,stats6856.2,stats6857.1,stats6857.2,stats6858.1,stats6858.2,stats6859.1,stats6859.2,stats6860.1,stats6860.2,stats6861.1,stats6861.2,stats6862.1,stats6862.2,stats6863.1,stats6863.2,stats6864.1,stats6864.2,stats6865.1,stats6865.2,stats6866.1,stats6866.2,stats6867.1,stats6867.2,stats6868.1,stats6868.2,stats6869.1,stats6869.2,stats6870.1,stats6870.2,stats6871.1,stats6871.2,stats6872.1,stats6872.2,stats6873.1,stats6873.2,stats6874.1,stats6874.2,stats6875.1,stats6875.2,stats6876.1,stats6876.2,stats6877.1,stats6877.2,stats6878.1,stats6878.2,stats6879.1,stats6879.2]
  decide
end PairedPathRoundCheckedRows
