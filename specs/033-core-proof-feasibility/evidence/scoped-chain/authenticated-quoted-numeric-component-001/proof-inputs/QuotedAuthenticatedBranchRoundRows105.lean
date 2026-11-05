import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData106
import AuthenticatedBranchRoundInstructionMatrixData107
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6838 : actualRows6838=WordField.canonicalRows actualModulus 6838 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6838 : actualRows6838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6838=2820 := by core033_kernel_decide
theorem rows6839 : actualRows6839=WordField.canonicalRows actualModulus 6839 (.bnot 6838) := by core033_kernel_decide
theorem stats6839 : actualRows6839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6839=6276 := by core033_kernel_decide
theorem rows6840 : actualRows6840=WordField.canonicalRows actualModulus 6840 (.bxor 6837 6839) := by core033_kernel_decide
theorem stats6840 : actualRows6840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6840=7428 := by core033_kernel_decide
theorem rows6841 : actualRows6841=WordField.canonicalRows actualModulus 6841 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6841 : actualRows6841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6841=2892 := by core033_kernel_decide
theorem rows6842 : actualRows6842=WordField.canonicalRows actualModulus 6842 (.bxor 1299 6841) := by core033_kernel_decide
theorem stats6842 : actualRows6842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6842=7428 := by core033_kernel_decide
theorem rows6843 : actualRows6843=WordField.canonicalRows actualModulus 6843 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6843 : actualRows6843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6843=2820 := by core033_kernel_decide
theorem rows6844 : actualRows6844=WordField.canonicalRows actualModulus 6844 (.bnot 6843) := by core033_kernel_decide
theorem stats6844 : actualRows6844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6844=6276 := by core033_kernel_decide
theorem rows6845 : actualRows6845=WordField.canonicalRows actualModulus 6845 (.badd 6842 6844) := by core033_kernel_decide
theorem stats6845 : actualRows6845.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6845=5388 := by core033_kernel_decide
theorem rows6846 : actualRows6846=WordField.canonicalRows actualModulus 6846 (.bnot 6845) := by core033_kernel_decide
theorem stats6846 : actualRows6846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6846=6276 := by core033_kernel_decide
theorem rows6847 : actualRows6847=WordField.canonicalRows actualModulus 6847 (.band 6840 6846) := by core033_kernel_decide
theorem stats6847 : actualRows6847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6847=5124 := by core033_kernel_decide
theorem rows6848 : actualRows6848=WordField.canonicalRows actualModulus 6848 (.bxor 6835 6847) := by core033_kernel_decide
theorem stats6848 : actualRows6848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6848=7428 := by core033_kernel_decide
theorem rows6849 : actualRows6849=WordField.canonicalRows actualModulus 6849 (.shr 6848 31) := by core033_kernel_decide
theorem stats6849 : actualRows6849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6849=2892 := by core033_kernel_decide
theorem rows6850 : actualRows6850=WordField.canonicalRows actualModulus 6850 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6850 : actualRows6850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6850=2892 := by core033_kernel_decide
theorem rows6851 : actualRows6851=WordField.canonicalRows actualModulus 6851 (.bxor 6849 6850) := by core033_kernel_decide
theorem stats6851 : actualRows6851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6851=7428 := by core033_kernel_decide
theorem rows6852 : actualRows6852=WordField.canonicalRows actualModulus 6852 (.bnot 6851) := by core033_kernel_decide
theorem stats6852 : actualRows6852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6852=6276 := by core033_kernel_decide
theorem rows6853 : actualRows6853=WordField.canonicalRows actualModulus 6853 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6853 : actualRows6853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6853=2892 := by core033_kernel_decide
theorem rows6854 : actualRows6854=WordField.canonicalRows actualModulus 6854 (.badd 6852 6853) := by core033_kernel_decide
theorem stats6854 : actualRows6854.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6854=5388 := by core033_kernel_decide
theorem rows6855 : actualRows6855=WordField.canonicalRows actualModulus 6855 (.literal (BitVec.ofNat 32 152)) := by core033_kernel_decide
theorem stats6855 : actualRows6855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6855=3036 := by core033_kernel_decide
theorem rows6856 : actualRows6856=WordField.canonicalRows actualModulus 6856 (.band 6854 6855) := by core033_kernel_decide
theorem stats6856 : actualRows6856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6856=5124 := by core033_kernel_decide
theorem rows6857 : actualRows6857=WordField.canonicalRows actualModulus 6857 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6857 : actualRows6857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6857=2892 := by core033_kernel_decide
theorem rows6858 : actualRows6858=WordField.canonicalRows actualModulus 6858 (.bxor 1299 6857) := by core033_kernel_decide
theorem stats6858 : actualRows6858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6858=7428 := by core033_kernel_decide
theorem rows6859 : actualRows6859=WordField.canonicalRows actualModulus 6859 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6859 : actualRows6859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6859=2820 := by core033_kernel_decide
theorem rows6860 : actualRows6860=WordField.canonicalRows actualModulus 6860 (.bnot 6859) := by core033_kernel_decide
theorem stats6860 : actualRows6860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6860=6276 := by core033_kernel_decide
theorem rows6861 : actualRows6861=WordField.canonicalRows actualModulus 6861 (.band 6858 6860) := by core033_kernel_decide
theorem stats6861 : actualRows6861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6861=5124 := by core033_kernel_decide
theorem rows6862 : actualRows6862=WordField.canonicalRows actualModulus 6862 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6862 : actualRows6862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6862=2892 := by core033_kernel_decide
theorem rows6863 : actualRows6863=WordField.canonicalRows actualModulus 6863 (.bxor 1299 6862) := by core033_kernel_decide
theorem stats6863 : actualRows6863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6863=7428 := by core033_kernel_decide
theorem rows6864 : actualRows6864=WordField.canonicalRows actualModulus 6864 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6864 : actualRows6864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6864=2820 := by core033_kernel_decide
theorem rows6865 : actualRows6865=WordField.canonicalRows actualModulus 6865 (.bnot 6864) := by core033_kernel_decide
theorem stats6865 : actualRows6865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6865=6276 := by core033_kernel_decide
theorem rows6866 : actualRows6866=WordField.canonicalRows actualModulus 6866 (.bxor 6863 6865) := by core033_kernel_decide
theorem stats6866 : actualRows6866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6866=7428 := by core033_kernel_decide
theorem rows6867 : actualRows6867=WordField.canonicalRows actualModulus 6867 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6867 : actualRows6867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6867=2892 := by core033_kernel_decide
theorem rows6868 : actualRows6868=WordField.canonicalRows actualModulus 6868 (.bxor 1299 6867) := by core033_kernel_decide
theorem stats6868 : actualRows6868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6868=7428 := by core033_kernel_decide
theorem rows6869 : actualRows6869=WordField.canonicalRows actualModulus 6869 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6869 : actualRows6869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6869=2820 := by core033_kernel_decide
theorem rows6870 : actualRows6870=WordField.canonicalRows actualModulus 6870 (.bnot 6869) := by core033_kernel_decide
theorem stats6870 : actualRows6870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6870=6276 := by core033_kernel_decide
theorem rows6871 : actualRows6871=WordField.canonicalRows actualModulus 6871 (.badd 6868 6870) := by core033_kernel_decide
theorem stats6871 : actualRows6871.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6871=5388 := by core033_kernel_decide
theorem rows6872 : actualRows6872=WordField.canonicalRows actualModulus 6872 (.bnot 6871) := by core033_kernel_decide
theorem stats6872 : actualRows6872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6872=6276 := by core033_kernel_decide
theorem rows6873 : actualRows6873=WordField.canonicalRows actualModulus 6873 (.band 6866 6872) := by core033_kernel_decide
theorem stats6873 : actualRows6873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6873=5124 := by core033_kernel_decide
theorem rows6874 : actualRows6874=WordField.canonicalRows actualModulus 6874 (.bxor 6861 6873) := by core033_kernel_decide
theorem stats6874 : actualRows6874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6874=7428 := by core033_kernel_decide
theorem rows6875 : actualRows6875=WordField.canonicalRows actualModulus 6875 (.shr 6874 31) := by core033_kernel_decide
theorem stats6875 : actualRows6875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6875=2892 := by core033_kernel_decide
theorem rows6876 : actualRows6876=WordField.canonicalRows actualModulus 6876 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6876 : actualRows6876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6876=2892 := by core033_kernel_decide
theorem rows6877 : actualRows6877=WordField.canonicalRows actualModulus 6877 (.bxor 6875 6876) := by core033_kernel_decide
theorem stats6877 : actualRows6877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6877=7428 := by core033_kernel_decide
theorem rows6878 : actualRows6878=WordField.canonicalRows actualModulus 6878 (.bnot 6877) := by core033_kernel_decide
theorem stats6878 : actualRows6878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6878=6276 := by core033_kernel_decide
theorem rows6879 : actualRows6879=WordField.canonicalRows actualModulus 6879 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6879 : actualRows6879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6879=2892 := by core033_kernel_decide
theorem rows6880 : actualRows6880=WordField.canonicalRows actualModulus 6880 (.badd 6878 6879) := by core033_kernel_decide
theorem stats6880 : actualRows6880.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6880=5388 := by core033_kernel_decide
theorem rows6881 : actualRows6881=WordField.canonicalRows actualModulus 6881 (.bnot 6880) := by core033_kernel_decide
theorem stats6881 : actualRows6881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6881=6276 := by core033_kernel_decide
theorem rows6882 : actualRows6882=WordField.canonicalRows actualModulus 6882 (.band 6881 2693) := by core033_kernel_decide
theorem stats6882 : actualRows6882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6882=5124 := by core033_kernel_decide
theorem rows6883 : actualRows6883=WordField.canonicalRows actualModulus 6883 (.bxor 6856 6882) := by core033_kernel_decide
theorem stats6883 : actualRows6883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6883=7428 := by core033_kernel_decide
theorem rows6884 : actualRows6884=WordField.canonicalRows actualModulus 6884 (.rotr 3594 8) := by core033_kernel_decide
theorem stats6884 : actualRows6884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6884=5124 := by core033_kernel_decide
theorem rows6885 : actualRows6885=WordField.canonicalRows actualModulus 6885 (.rotr 3646 16) := by core033_kernel_decide
theorem stats6885 : actualRows6885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6885=5124 := by core033_kernel_decide
theorem rows6886 : actualRows6886=WordField.canonicalRows actualModulus 6886 (.badd 6884 6885) := by core033_kernel_decide
theorem stats6886 : actualRows6886.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6886=5388 := by core033_kernel_decide
theorem rows6887 : actualRows6887=WordField.canonicalRows actualModulus 6887 (.rotr 3698 24) := by core033_kernel_decide
theorem stats6887 : actualRows6887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6887=5124 := by core033_kernel_decide
theorem rows6888 : actualRows6888=WordField.canonicalRows actualModulus 6888 (.badd 6886 6887) := by core033_kernel_decide
theorem stats6888 : actualRows6888.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6888=5388 := by core033_kernel_decide
theorem rows6889 : actualRows6889=WordField.canonicalRows actualModulus 6889 (.badd 6888 3750) := by core033_kernel_decide
theorem stats6889 : actualRows6889.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6889=5388 := by core033_kernel_decide
theorem rows6890 : actualRows6890=WordField.canonicalRows actualModulus 6890 (.rotr 3802 8) := by core033_kernel_decide
theorem stats6890 : actualRows6890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6890=5124 := by core033_kernel_decide
theorem rows6891 : actualRows6891=WordField.canonicalRows actualModulus 6891 (.rotr 3854 16) := by core033_kernel_decide
theorem stats6891 : actualRows6891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6891=5124 := by core033_kernel_decide
theorem rows6892 : actualRows6892=WordField.canonicalRows actualModulus 6892 (.badd 6890 6891) := by core033_kernel_decide
theorem stats6892 : actualRows6892.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6892=5388 := by core033_kernel_decide
theorem rows6893 : actualRows6893=WordField.canonicalRows actualModulus 6893 (.rotr 3906 24) := by core033_kernel_decide
theorem stats6893 : actualRows6893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6893=5124 := by core033_kernel_decide
theorem rows6894 : actualRows6894=WordField.canonicalRows actualModulus 6894 (.badd 6892 6893) := by core033_kernel_decide
theorem stats6894 : actualRows6894.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6894=5388 := by core033_kernel_decide
theorem rows6895 : actualRows6895=WordField.canonicalRows actualModulus 6895 (.badd 6894 3958) := by core033_kernel_decide
theorem stats6895 : actualRows6895.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6895=5388 := by core033_kernel_decide
theorem rows6896 : actualRows6896=WordField.canonicalRows actualModulus 6896 (.rotr 4010 8) := by core033_kernel_decide
theorem stats6896 : actualRows6896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6896=5124 := by core033_kernel_decide
theorem rows6897 : actualRows6897=WordField.canonicalRows actualModulus 6897 (.rotr 4062 16) := by core033_kernel_decide
theorem stats6897 : actualRows6897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6897=5124 := by core033_kernel_decide
theorem rows6898 : actualRows6898=WordField.canonicalRows actualModulus 6898 (.badd 6896 6897) := by core033_kernel_decide
theorem stats6898 : actualRows6898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6898=5388 := by core033_kernel_decide
theorem rows6899 : actualRows6899=WordField.canonicalRows actualModulus 6899 (.rotr 4114 24) := by core033_kernel_decide
theorem stats6899 : actualRows6899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6899=5124 := by core033_kernel_decide
theorem rows6900 : actualRows6900=WordField.canonicalRows actualModulus 6900 (.badd 6898 6899) := by core033_kernel_decide
theorem stats6900 : actualRows6900.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6900=5388 := by core033_kernel_decide
theorem rows6901 : actualRows6901=WordField.canonicalRows actualModulus 6901 (.badd 6900 4166) := by core033_kernel_decide
theorem stats6901 : actualRows6901.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6901=5388 := by core033_kernel_decide
def partRows105 : List R1CS.Row := actualRows6838++actualRows6839++actualRows6840++actualRows6841++actualRows6842++actualRows6843++actualRows6844++actualRows6845++actualRows6846++actualRows6847++actualRows6848++actualRows6849++actualRows6850++actualRows6851++actualRows6852++actualRows6853++actualRows6854++actualRows6855++actualRows6856++actualRows6857++actualRows6858++actualRows6859++actualRows6860++actualRows6861++actualRows6862++actualRows6863++actualRows6864++actualRows6865++actualRows6866++actualRows6867++actualRows6868++actualRows6869++actualRows6870++actualRows6871++actualRows6872++actualRows6873++actualRows6874++actualRows6875++actualRows6876++actualRows6877++actualRows6878++actualRows6879++actualRows6880++actualRows6881++actualRows6882++actualRows6883++actualRows6884++actualRows6885++actualRows6886++actualRows6887++actualRows6888++actualRows6889++actualRows6890++actualRows6891++actualRows6892++actualRows6893++actualRows6894++actualRows6895++actualRows6896++actualRows6897++actualRows6898++actualRows6899++actualRows6900++actualRows6901
def partOps105 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 6838,.bxor 6837 6839,.literal (BitVec.ofNat 32 2),.bxor 1299 6841,.literal (BitVec.ofNat 32 0),.bnot 6843,.badd 6842 6844,.bnot 6845,.band 6840 6846,.bxor 6835 6847,.shr 6848 31,.literal (BitVec.ofNat 32 1),.bxor 6849 6850,.bnot 6851,.literal (BitVec.ofNat 32 1),.badd 6852 6853,.literal (BitVec.ofNat 32 152),.band 6854 6855,.literal (BitVec.ofNat 32 2),.bxor 1299 6857,.literal (BitVec.ofNat 32 0),.bnot 6859,.band 6858 6860,.literal (BitVec.ofNat 32 2),.bxor 1299 6862,.literal (BitVec.ofNat 32 0),.bnot 6864,.bxor 6863 6865,.literal (BitVec.ofNat 32 2),.bxor 1299 6867,.literal (BitVec.ofNat 32 0),.bnot 6869,.badd 6868 6870,.bnot 6871,.band 6866 6872,.bxor 6861 6873,.shr 6874 31,.literal (BitVec.ofNat 32 1),.bxor 6875 6876,.bnot 6877,.literal (BitVec.ofNat 32 1),.badd 6878 6879,.bnot 6880,.band 6881 2693,.bxor 6856 6882,.rotr 3594 8,.rotr 3646 16,.badd 6884 6885,.rotr 3698 24,.badd 6886 6887,.badd 6888 3750,.rotr 3802 8,.rotr 3854 16,.badd 6890 6891,.rotr 3906 24,.badd 6892 6893,.badd 6894 3958,.rotr 4010 8,.rotr 4062 16,.badd 6896 6897,.rotr 4114 24,.badd 6898 6899,.badd 6900 4166]
theorem partExact105 : partRows105=WordField.rows actualModulus 6838 partOps105 := by
  simp only [partRows105,partOps105,WordField.rows,rows6838,rows6839,rows6840,rows6841,rows6842,rows6843,rows6844,rows6845,rows6846,rows6847,rows6848,rows6849,rows6850,rows6851,rows6852,rows6853,rows6854,rows6855,rows6856,rows6857,rows6858,rows6859,rows6860,rows6861,rows6862,rows6863,rows6864,rows6865,rows6866,rows6867,rows6868,rows6869,rows6870,rows6871,rows6872,rows6873,rows6874,rows6875,rows6876,rows6877,rows6878,rows6879,rows6880,rows6881,rows6882,rows6883,rows6884,rows6885,rows6886,rows6887,rows6888,rows6889,rows6890,rows6891,rows6892,rows6893,rows6894,rows6895,rows6896,rows6897,rows6898,rows6899,rows6900,rows6901,List.append_assoc,List.append_nil]
theorem partLength105 : partOps105.length=64 := by decide
theorem partStats105 : partRows105.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows105=332304 := by
  simp only [partRows105,List.length_append,MatrixRowBlocks.rows_weight_append,stats6838.1,stats6838.2,stats6839.1,stats6839.2,stats6840.1,stats6840.2,stats6841.1,stats6841.2,stats6842.1,stats6842.2,stats6843.1,stats6843.2,stats6844.1,stats6844.2,stats6845.1,stats6845.2,stats6846.1,stats6846.2,stats6847.1,stats6847.2,stats6848.1,stats6848.2,stats6849.1,stats6849.2,stats6850.1,stats6850.2,stats6851.1,stats6851.2,stats6852.1,stats6852.2,stats6853.1,stats6853.2,stats6854.1,stats6854.2,stats6855.1,stats6855.2,stats6856.1,stats6856.2,stats6857.1,stats6857.2,stats6858.1,stats6858.2,stats6859.1,stats6859.2,stats6860.1,stats6860.2,stats6861.1,stats6861.2,stats6862.1,stats6862.2,stats6863.1,stats6863.2,stats6864.1,stats6864.2,stats6865.1,stats6865.2,stats6866.1,stats6866.2,stats6867.1,stats6867.2,stats6868.1,stats6868.2,stats6869.1,stats6869.2,stats6870.1,stats6870.2,stats6871.1,stats6871.2,stats6872.1,stats6872.2,stats6873.1,stats6873.2,stats6874.1,stats6874.2,stats6875.1,stats6875.2,stats6876.1,stats6876.2,stats6877.1,stats6877.2,stats6878.1,stats6878.2,stats6879.1,stats6879.2,stats6880.1,stats6880.2,stats6881.1,stats6881.2,stats6882.1,stats6882.2,stats6883.1,stats6883.2,stats6884.1,stats6884.2,stats6885.1,stats6885.2,stats6886.1,stats6886.2,stats6887.1,stats6887.2,stats6888.1,stats6888.2,stats6889.1,stats6889.2,stats6890.1,stats6890.2,stats6891.1,stats6891.2,stats6892.1,stats6892.2,stats6893.1,stats6893.2,stats6894.1,stats6894.2,stats6895.1,stats6895.2,stats6896.1,stats6896.2,stats6897.1,stats6897.2,stats6898.1,stats6898.2,stats6899.1,stats6899.2,stats6900.1,stats6900.2,stats6901.1,stats6901.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
