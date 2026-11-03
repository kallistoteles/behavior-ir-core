import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData106
import PathRoundDispatchInstructionMatrixData107
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6827 : actualRows6827=WordField.canonicalRows actualModulus 6827 (.bnot 6826) := by core033_kernel_decide
theorem stats6827 : actualRows6827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6827=6276 := by core033_kernel_decide
theorem rows6828 : actualRows6828=WordField.canonicalRows actualModulus 6828 (.bxor 6825 6827) := by core033_kernel_decide
theorem stats6828 : actualRows6828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6828=7428 := by core033_kernel_decide
theorem rows6829 : actualRows6829=WordField.canonicalRows actualModulus 6829 (.shr 5415 8) := by core033_kernel_decide
theorem stats6829 : actualRows6829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6829=4548 := by core033_kernel_decide
theorem rows6830 : actualRows6830=WordField.canonicalRows actualModulus 6830 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6830 : actualRows6830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6830=2820 := by core033_kernel_decide
theorem rows6831 : actualRows6831=WordField.canonicalRows actualModulus 6831 (.bnot 6830) := by core033_kernel_decide
theorem stats6831 : actualRows6831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6831=6276 := by core033_kernel_decide
theorem rows6832 : actualRows6832=WordField.canonicalRows actualModulus 6832 (.badd 6829 6831) := by core033_kernel_decide
theorem stats6832 : actualRows6832.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6832=5388 := by core033_kernel_decide
theorem rows6833 : actualRows6833=WordField.canonicalRows actualModulus 6833 (.bnot 6832) := by core033_kernel_decide
theorem stats6833 : actualRows6833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6833=6276 := by core033_kernel_decide
theorem rows6834 : actualRows6834=WordField.canonicalRows actualModulus 6834 (.band 6828 6833) := by core033_kernel_decide
theorem stats6834 : actualRows6834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6834=5124 := by core033_kernel_decide
theorem rows6835 : actualRows6835=WordField.canonicalRows actualModulus 6835 (.bxor 6824 6834) := by core033_kernel_decide
theorem stats6835 : actualRows6835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6835=7428 := by core033_kernel_decide
theorem rows6836 : actualRows6836=WordField.canonicalRows actualModulus 6836 (.shr 6835 31) := by core033_kernel_decide
theorem stats6836 : actualRows6836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6836=2892 := by core033_kernel_decide
theorem rows6837 : actualRows6837=WordField.canonicalRows actualModulus 6837 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6837 : actualRows6837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6837=2892 := by core033_kernel_decide
theorem rows6838 : actualRows6838=WordField.canonicalRows actualModulus 6838 (.bxor 6836 6837) := by core033_kernel_decide
theorem stats6838 : actualRows6838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6838=7428 := by core033_kernel_decide
theorem rows6839 : actualRows6839=WordField.canonicalRows actualModulus 6839 (.shr 5468 8) := by core033_kernel_decide
theorem stats6839 : actualRows6839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6839=4548 := by core033_kernel_decide
theorem rows6840 : actualRows6840=WordField.canonicalRows actualModulus 6840 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6840 : actualRows6840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6840=2820 := by core033_kernel_decide
theorem rows6841 : actualRows6841=WordField.canonicalRows actualModulus 6841 (.bnot 6840) := by core033_kernel_decide
theorem stats6841 : actualRows6841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6841=6276 := by core033_kernel_decide
theorem rows6842 : actualRows6842=WordField.canonicalRows actualModulus 6842 (.band 6839 6841) := by core033_kernel_decide
theorem stats6842 : actualRows6842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6842=5124 := by core033_kernel_decide
theorem rows6843 : actualRows6843=WordField.canonicalRows actualModulus 6843 (.shr 5468 8) := by core033_kernel_decide
theorem stats6843 : actualRows6843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6843=4548 := by core033_kernel_decide
theorem rows6844 : actualRows6844=WordField.canonicalRows actualModulus 6844 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6844 : actualRows6844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6844=2820 := by core033_kernel_decide
theorem rows6845 : actualRows6845=WordField.canonicalRows actualModulus 6845 (.bnot 6844) := by core033_kernel_decide
theorem stats6845 : actualRows6845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6845=6276 := by core033_kernel_decide
theorem rows6846 : actualRows6846=WordField.canonicalRows actualModulus 6846 (.bxor 6843 6845) := by core033_kernel_decide
theorem stats6846 : actualRows6846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6846=7428 := by core033_kernel_decide
theorem rows6847 : actualRows6847=WordField.canonicalRows actualModulus 6847 (.shr 5468 8) := by core033_kernel_decide
theorem stats6847 : actualRows6847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6847=4548 := by core033_kernel_decide
theorem rows6848 : actualRows6848=WordField.canonicalRows actualModulus 6848 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6848 : actualRows6848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6848=2820 := by core033_kernel_decide
theorem rows6849 : actualRows6849=WordField.canonicalRows actualModulus 6849 (.bnot 6848) := by core033_kernel_decide
theorem stats6849 : actualRows6849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6849=6276 := by core033_kernel_decide
theorem rows6850 : actualRows6850=WordField.canonicalRows actualModulus 6850 (.badd 6847 6849) := by core033_kernel_decide
theorem stats6850 : actualRows6850.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6850=5388 := by core033_kernel_decide
theorem rows6851 : actualRows6851=WordField.canonicalRows actualModulus 6851 (.bnot 6850) := by core033_kernel_decide
theorem stats6851 : actualRows6851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6851=6276 := by core033_kernel_decide
theorem rows6852 : actualRows6852=WordField.canonicalRows actualModulus 6852 (.band 6846 6851) := by core033_kernel_decide
theorem stats6852 : actualRows6852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6852=5124 := by core033_kernel_decide
theorem rows6853 : actualRows6853=WordField.canonicalRows actualModulus 6853 (.bxor 6842 6852) := by core033_kernel_decide
theorem stats6853 : actualRows6853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6853=7428 := by core033_kernel_decide
theorem rows6854 : actualRows6854=WordField.canonicalRows actualModulus 6854 (.shr 6853 31) := by core033_kernel_decide
theorem stats6854 : actualRows6854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6854=2892 := by core033_kernel_decide
theorem rows6855 : actualRows6855=WordField.canonicalRows actualModulus 6855 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6855 : actualRows6855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6855=2892 := by core033_kernel_decide
theorem rows6856 : actualRows6856=WordField.canonicalRows actualModulus 6856 (.bxor 6854 6855) := by core033_kernel_decide
theorem stats6856 : actualRows6856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6856=7428 := by core033_kernel_decide
theorem rows6857 : actualRows6857=WordField.canonicalRows actualModulus 6857 (.shr 5521 8) := by core033_kernel_decide
theorem stats6857 : actualRows6857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6857=4548 := by core033_kernel_decide
theorem rows6858 : actualRows6858=WordField.canonicalRows actualModulus 6858 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6858 : actualRows6858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6858=2820 := by core033_kernel_decide
theorem rows6859 : actualRows6859=WordField.canonicalRows actualModulus 6859 (.bnot 6858) := by core033_kernel_decide
theorem stats6859 : actualRows6859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6859=6276 := by core033_kernel_decide
theorem rows6860 : actualRows6860=WordField.canonicalRows actualModulus 6860 (.band 6857 6859) := by core033_kernel_decide
theorem stats6860 : actualRows6860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6860=5124 := by core033_kernel_decide
theorem rows6861 : actualRows6861=WordField.canonicalRows actualModulus 6861 (.shr 5521 8) := by core033_kernel_decide
theorem stats6861 : actualRows6861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6861=4548 := by core033_kernel_decide
theorem rows6862 : actualRows6862=WordField.canonicalRows actualModulus 6862 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6862 : actualRows6862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6862=2820 := by core033_kernel_decide
theorem rows6863 : actualRows6863=WordField.canonicalRows actualModulus 6863 (.bnot 6862) := by core033_kernel_decide
theorem stats6863 : actualRows6863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6863=6276 := by core033_kernel_decide
theorem rows6864 : actualRows6864=WordField.canonicalRows actualModulus 6864 (.bxor 6861 6863) := by core033_kernel_decide
theorem stats6864 : actualRows6864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6864=7428 := by core033_kernel_decide
theorem rows6865 : actualRows6865=WordField.canonicalRows actualModulus 6865 (.shr 5521 8) := by core033_kernel_decide
theorem stats6865 : actualRows6865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6865=4548 := by core033_kernel_decide
theorem rows6866 : actualRows6866=WordField.canonicalRows actualModulus 6866 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6866 : actualRows6866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6866=2820 := by core033_kernel_decide
theorem rows6867 : actualRows6867=WordField.canonicalRows actualModulus 6867 (.bnot 6866) := by core033_kernel_decide
theorem stats6867 : actualRows6867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6867=6276 := by core033_kernel_decide
theorem rows6868 : actualRows6868=WordField.canonicalRows actualModulus 6868 (.badd 6865 6867) := by core033_kernel_decide
theorem stats6868 : actualRows6868.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6868=5388 := by core033_kernel_decide
theorem rows6869 : actualRows6869=WordField.canonicalRows actualModulus 6869 (.bnot 6868) := by core033_kernel_decide
theorem stats6869 : actualRows6869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6869=6276 := by core033_kernel_decide
theorem rows6870 : actualRows6870=WordField.canonicalRows actualModulus 6870 (.band 6864 6869) := by core033_kernel_decide
theorem stats6870 : actualRows6870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6870=5124 := by core033_kernel_decide
theorem rows6871 : actualRows6871=WordField.canonicalRows actualModulus 6871 (.bxor 6860 6870) := by core033_kernel_decide
theorem stats6871 : actualRows6871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6871=7428 := by core033_kernel_decide
theorem rows6872 : actualRows6872=WordField.canonicalRows actualModulus 6872 (.shr 6871 31) := by core033_kernel_decide
theorem stats6872 : actualRows6872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6872=2892 := by core033_kernel_decide
theorem rows6873 : actualRows6873=WordField.canonicalRows actualModulus 6873 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6873 : actualRows6873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6873=2892 := by core033_kernel_decide
theorem rows6874 : actualRows6874=WordField.canonicalRows actualModulus 6874 (.bxor 6872 6873) := by core033_kernel_decide
theorem stats6874 : actualRows6874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6874=7428 := by core033_kernel_decide
theorem rows6875 : actualRows6875=WordField.canonicalRows actualModulus 6875 (.shr 5574 8) := by core033_kernel_decide
theorem stats6875 : actualRows6875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6875=4548 := by core033_kernel_decide
theorem rows6876 : actualRows6876=WordField.canonicalRows actualModulus 6876 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6876 : actualRows6876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6876=2820 := by core033_kernel_decide
theorem rows6877 : actualRows6877=WordField.canonicalRows actualModulus 6877 (.bnot 6876) := by core033_kernel_decide
theorem stats6877 : actualRows6877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6877=6276 := by core033_kernel_decide
theorem rows6878 : actualRows6878=WordField.canonicalRows actualModulus 6878 (.band 6875 6877) := by core033_kernel_decide
theorem stats6878 : actualRows6878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6878=5124 := by core033_kernel_decide
theorem rows6879 : actualRows6879=WordField.canonicalRows actualModulus 6879 (.shr 5574 8) := by core033_kernel_decide
theorem stats6879 : actualRows6879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6879=4548 := by core033_kernel_decide
theorem rows6880 : actualRows6880=WordField.canonicalRows actualModulus 6880 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6880 : actualRows6880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6880=2820 := by core033_kernel_decide
theorem rows6881 : actualRows6881=WordField.canonicalRows actualModulus 6881 (.bnot 6880) := by core033_kernel_decide
theorem stats6881 : actualRows6881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6881=6276 := by core033_kernel_decide
theorem rows6882 : actualRows6882=WordField.canonicalRows actualModulus 6882 (.bxor 6879 6881) := by core033_kernel_decide
theorem stats6882 : actualRows6882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6882=7428 := by core033_kernel_decide
theorem rows6883 : actualRows6883=WordField.canonicalRows actualModulus 6883 (.shr 5574 8) := by core033_kernel_decide
theorem stats6883 : actualRows6883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6883=4548 := by core033_kernel_decide
theorem rows6884 : actualRows6884=WordField.canonicalRows actualModulus 6884 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6884 : actualRows6884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6884=2820 := by core033_kernel_decide
theorem rows6885 : actualRows6885=WordField.canonicalRows actualModulus 6885 (.bnot 6884) := by core033_kernel_decide
theorem stats6885 : actualRows6885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6885=6276 := by core033_kernel_decide
theorem rows6886 : actualRows6886=WordField.canonicalRows actualModulus 6886 (.badd 6883 6885) := by core033_kernel_decide
theorem stats6886 : actualRows6886.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6886=5388 := by core033_kernel_decide
theorem rows6887 : actualRows6887=WordField.canonicalRows actualModulus 6887 (.bnot 6886) := by core033_kernel_decide
theorem stats6887 : actualRows6887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6887=6276 := by core033_kernel_decide
theorem rows6888 : actualRows6888=WordField.canonicalRows actualModulus 6888 (.band 6882 6887) := by core033_kernel_decide
theorem stats6888 : actualRows6888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6888=5124 := by core033_kernel_decide
theorem rows6889 : actualRows6889=WordField.canonicalRows actualModulus 6889 (.bxor 6878 6888) := by core033_kernel_decide
theorem stats6889 : actualRows6889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6889=7428 := by core033_kernel_decide
theorem rows6890 : actualRows6890=WordField.canonicalRows actualModulus 6890 (.shr 6889 31) := by core033_kernel_decide
theorem stats6890 : actualRows6890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6890=2892 := by core033_kernel_decide
def partRows106 : List R1CS.Row := actualRows6827++actualRows6828++actualRows6829++actualRows6830++actualRows6831++actualRows6832++actualRows6833++actualRows6834++actualRows6835++actualRows6836++actualRows6837++actualRows6838++actualRows6839++actualRows6840++actualRows6841++actualRows6842++actualRows6843++actualRows6844++actualRows6845++actualRows6846++actualRows6847++actualRows6848++actualRows6849++actualRows6850++actualRows6851++actualRows6852++actualRows6853++actualRows6854++actualRows6855++actualRows6856++actualRows6857++actualRows6858++actualRows6859++actualRows6860++actualRows6861++actualRows6862++actualRows6863++actualRows6864++actualRows6865++actualRows6866++actualRows6867++actualRows6868++actualRows6869++actualRows6870++actualRows6871++actualRows6872++actualRows6873++actualRows6874++actualRows6875++actualRows6876++actualRows6877++actualRows6878++actualRows6879++actualRows6880++actualRows6881++actualRows6882++actualRows6883++actualRows6884++actualRows6885++actualRows6886++actualRows6887++actualRows6888++actualRows6889++actualRows6890
def partOps106 : List WordIR.Op := [.bnot 6826,.bxor 6825 6827,.shr 5415 8,.literal (BitVec.ofNat 32 0),.bnot 6830,.badd 6829 6831,.bnot 6832,.band 6828 6833,.bxor 6824 6834,.shr 6835 31,.literal (BitVec.ofNat 32 1),.bxor 6836 6837,.shr 5468 8,.literal (BitVec.ofNat 32 0),.bnot 6840,.band 6839 6841,.shr 5468 8,.literal (BitVec.ofNat 32 0),.bnot 6844,.bxor 6843 6845,.shr 5468 8,.literal (BitVec.ofNat 32 0),.bnot 6848,.badd 6847 6849,.bnot 6850,.band 6846 6851,.bxor 6842 6852,.shr 6853 31,.literal (BitVec.ofNat 32 1),.bxor 6854 6855,.shr 5521 8,.literal (BitVec.ofNat 32 0),.bnot 6858,.band 6857 6859,.shr 5521 8,.literal (BitVec.ofNat 32 0),.bnot 6862,.bxor 6861 6863,.shr 5521 8,.literal (BitVec.ofNat 32 0),.bnot 6866,.badd 6865 6867,.bnot 6868,.band 6864 6869,.bxor 6860 6870,.shr 6871 31,.literal (BitVec.ofNat 32 1),.bxor 6872 6873,.shr 5574 8,.literal (BitVec.ofNat 32 0),.bnot 6876,.band 6875 6877,.shr 5574 8,.literal (BitVec.ofNat 32 0),.bnot 6880,.bxor 6879 6881,.shr 5574 8,.literal (BitVec.ofNat 32 0),.bnot 6884,.badd 6883 6885,.bnot 6886,.band 6882 6887,.bxor 6878 6888,.shr 6889 31]
theorem partExact106 : partRows106=WordField.rows actualModulus 6827 partOps106 := by
  simp only [partRows106,partOps106,WordField.rows,rows6827,rows6828,rows6829,rows6830,rows6831,rows6832,rows6833,rows6834,rows6835,rows6836,rows6837,rows6838,rows6839,rows6840,rows6841,rows6842,rows6843,rows6844,rows6845,rows6846,rows6847,rows6848,rows6849,rows6850,rows6851,rows6852,rows6853,rows6854,rows6855,rows6856,rows6857,rows6858,rows6859,rows6860,rows6861,rows6862,rows6863,rows6864,rows6865,rows6866,rows6867,rows6868,rows6869,rows6870,rows6871,rows6872,rows6873,rows6874,rows6875,rows6876,rows6877,rows6878,rows6879,rows6880,rows6881,rows6882,rows6883,rows6884,rows6885,rows6886,rows6887,rows6888,rows6889,rows6890,List.append_assoc,List.append_nil]
theorem partLength106 : partOps106.length=64 := by decide
theorem partStats106 : partRows106.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows106=327192 := by
  simp only [partRows106,List.length_append,MatrixRowBlocks.rows_weight_append,stats6827.1,stats6827.2,stats6828.1,stats6828.2,stats6829.1,stats6829.2,stats6830.1,stats6830.2,stats6831.1,stats6831.2,stats6832.1,stats6832.2,stats6833.1,stats6833.2,stats6834.1,stats6834.2,stats6835.1,stats6835.2,stats6836.1,stats6836.2,stats6837.1,stats6837.2,stats6838.1,stats6838.2,stats6839.1,stats6839.2,stats6840.1,stats6840.2,stats6841.1,stats6841.2,stats6842.1,stats6842.2,stats6843.1,stats6843.2,stats6844.1,stats6844.2,stats6845.1,stats6845.2,stats6846.1,stats6846.2,stats6847.1,stats6847.2,stats6848.1,stats6848.2,stats6849.1,stats6849.2,stats6850.1,stats6850.2,stats6851.1,stats6851.2,stats6852.1,stats6852.2,stats6853.1,stats6853.2,stats6854.1,stats6854.2,stats6855.1,stats6855.2,stats6856.1,stats6856.2,stats6857.1,stats6857.2,stats6858.1,stats6858.2,stats6859.1,stats6859.2,stats6860.1,stats6860.2,stats6861.1,stats6861.2,stats6862.1,stats6862.2,stats6863.1,stats6863.2,stats6864.1,stats6864.2,stats6865.1,stats6865.2,stats6866.1,stats6866.2,stats6867.1,stats6867.2,stats6868.1,stats6868.2,stats6869.1,stats6869.2,stats6870.1,stats6870.2,stats6871.1,stats6871.2,stats6872.1,stats6872.2,stats6873.1,stats6873.2,stats6874.1,stats6874.2,stats6875.1,stats6875.2,stats6876.1,stats6876.2,stats6877.1,stats6877.2,stats6878.1,stats6878.2,stats6879.1,stats6879.2,stats6880.1,stats6880.2,stats6881.1,stats6881.2,stats6882.1,stats6882.2,stats6883.1,stats6883.2,stats6884.1,stats6884.2,stats6885.1,stats6885.2,stats6886.1,stats6886.2,stats6887.1,stats6887.2,stats6888.1,stats6888.2,stats6889.1,stats6889.2,stats6890.1,stats6890.2]
  decide
end PathRoundDispatchCheckedRows
