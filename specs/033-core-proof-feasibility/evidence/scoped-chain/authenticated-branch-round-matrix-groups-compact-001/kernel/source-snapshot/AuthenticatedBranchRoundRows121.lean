import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData122
import AuthenticatedBranchRoundInstructionMatrixData123
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7862 : actualRows7862=WordField.canonicalRows actualModulus 7862 (.shr 6142 8) := by core033_kernel_decide
theorem stats7862 : actualRows7862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7862=4548 := by core033_kernel_decide
theorem rows7863 : actualRows7863=WordField.canonicalRows actualModulus 7863 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7863 : actualRows7863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7863=2820 := by core033_kernel_decide
theorem rows7864 : actualRows7864=WordField.canonicalRows actualModulus 7864 (.bnot 7863) := by core033_kernel_decide
theorem stats7864 : actualRows7864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7864=6276 := by core033_kernel_decide
theorem rows7865 : actualRows7865=WordField.canonicalRows actualModulus 7865 (.band 7862 7864) := by core033_kernel_decide
theorem stats7865 : actualRows7865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7865=5124 := by core033_kernel_decide
theorem rows7866 : actualRows7866=WordField.canonicalRows actualModulus 7866 (.shr 6142 8) := by core033_kernel_decide
theorem stats7866 : actualRows7866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7866=4548 := by core033_kernel_decide
theorem rows7867 : actualRows7867=WordField.canonicalRows actualModulus 7867 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7867 : actualRows7867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7867=2820 := by core033_kernel_decide
theorem rows7868 : actualRows7868=WordField.canonicalRows actualModulus 7868 (.bnot 7867) := by core033_kernel_decide
theorem stats7868 : actualRows7868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7868=6276 := by core033_kernel_decide
theorem rows7869 : actualRows7869=WordField.canonicalRows actualModulus 7869 (.bxor 7866 7868) := by core033_kernel_decide
theorem stats7869 : actualRows7869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7869=7428 := by core033_kernel_decide
theorem rows7870 : actualRows7870=WordField.canonicalRows actualModulus 7870 (.shr 6142 8) := by core033_kernel_decide
theorem stats7870 : actualRows7870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7870=4548 := by core033_kernel_decide
theorem rows7871 : actualRows7871=WordField.canonicalRows actualModulus 7871 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7871 : actualRows7871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7871=2820 := by core033_kernel_decide
theorem rows7872 : actualRows7872=WordField.canonicalRows actualModulus 7872 (.bnot 7871) := by core033_kernel_decide
theorem stats7872 : actualRows7872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7872=6276 := by core033_kernel_decide
theorem rows7873 : actualRows7873=WordField.canonicalRows actualModulus 7873 (.badd 7870 7872) := by core033_kernel_decide
theorem stats7873 : actualRows7873.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7873=5388 := by core033_kernel_decide
theorem rows7874 : actualRows7874=WordField.canonicalRows actualModulus 7874 (.bnot 7873) := by core033_kernel_decide
theorem stats7874 : actualRows7874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7874=6276 := by core033_kernel_decide
theorem rows7875 : actualRows7875=WordField.canonicalRows actualModulus 7875 (.band 7869 7874) := by core033_kernel_decide
theorem stats7875 : actualRows7875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7875=5124 := by core033_kernel_decide
theorem rows7876 : actualRows7876=WordField.canonicalRows actualModulus 7876 (.bxor 7865 7875) := by core033_kernel_decide
theorem stats7876 : actualRows7876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7876=7428 := by core033_kernel_decide
theorem rows7877 : actualRows7877=WordField.canonicalRows actualModulus 7877 (.shr 7876 31) := by core033_kernel_decide
theorem stats7877 : actualRows7877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7877=2892 := by core033_kernel_decide
theorem rows7878 : actualRows7878=WordField.canonicalRows actualModulus 7878 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7878 : actualRows7878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7878=2892 := by core033_kernel_decide
theorem rows7879 : actualRows7879=WordField.canonicalRows actualModulus 7879 (.bxor 7877 7878) := by core033_kernel_decide
theorem stats7879 : actualRows7879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7879=7428 := by core033_kernel_decide
theorem rows7880 : actualRows7880=WordField.canonicalRows actualModulus 7880 (.shr 6194 8) := by core033_kernel_decide
theorem stats7880 : actualRows7880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7880=4548 := by core033_kernel_decide
theorem rows7881 : actualRows7881=WordField.canonicalRows actualModulus 7881 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7881 : actualRows7881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7881=2820 := by core033_kernel_decide
theorem rows7882 : actualRows7882=WordField.canonicalRows actualModulus 7882 (.bnot 7881) := by core033_kernel_decide
theorem stats7882 : actualRows7882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7882=6276 := by core033_kernel_decide
theorem rows7883 : actualRows7883=WordField.canonicalRows actualModulus 7883 (.band 7880 7882) := by core033_kernel_decide
theorem stats7883 : actualRows7883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7883=5124 := by core033_kernel_decide
theorem rows7884 : actualRows7884=WordField.canonicalRows actualModulus 7884 (.shr 6194 8) := by core033_kernel_decide
theorem stats7884 : actualRows7884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7884=4548 := by core033_kernel_decide
theorem rows7885 : actualRows7885=WordField.canonicalRows actualModulus 7885 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7885 : actualRows7885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7885=2820 := by core033_kernel_decide
theorem rows7886 : actualRows7886=WordField.canonicalRows actualModulus 7886 (.bnot 7885) := by core033_kernel_decide
theorem stats7886 : actualRows7886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7886=6276 := by core033_kernel_decide
theorem rows7887 : actualRows7887=WordField.canonicalRows actualModulus 7887 (.bxor 7884 7886) := by core033_kernel_decide
theorem stats7887 : actualRows7887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7887=7428 := by core033_kernel_decide
theorem rows7888 : actualRows7888=WordField.canonicalRows actualModulus 7888 (.shr 6194 8) := by core033_kernel_decide
theorem stats7888 : actualRows7888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7888=4548 := by core033_kernel_decide
theorem rows7889 : actualRows7889=WordField.canonicalRows actualModulus 7889 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7889 : actualRows7889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7889=2820 := by core033_kernel_decide
theorem rows7890 : actualRows7890=WordField.canonicalRows actualModulus 7890 (.bnot 7889) := by core033_kernel_decide
theorem stats7890 : actualRows7890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7890=6276 := by core033_kernel_decide
theorem rows7891 : actualRows7891=WordField.canonicalRows actualModulus 7891 (.badd 7888 7890) := by core033_kernel_decide
theorem stats7891 : actualRows7891.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7891=5388 := by core033_kernel_decide
theorem rows7892 : actualRows7892=WordField.canonicalRows actualModulus 7892 (.bnot 7891) := by core033_kernel_decide
theorem stats7892 : actualRows7892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7892=6276 := by core033_kernel_decide
theorem rows7893 : actualRows7893=WordField.canonicalRows actualModulus 7893 (.band 7887 7892) := by core033_kernel_decide
theorem stats7893 : actualRows7893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7893=5124 := by core033_kernel_decide
theorem rows7894 : actualRows7894=WordField.canonicalRows actualModulus 7894 (.bxor 7883 7893) := by core033_kernel_decide
theorem stats7894 : actualRows7894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7894=7428 := by core033_kernel_decide
theorem rows7895 : actualRows7895=WordField.canonicalRows actualModulus 7895 (.shr 7894 31) := by core033_kernel_decide
theorem stats7895 : actualRows7895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7895=2892 := by core033_kernel_decide
theorem rows7896 : actualRows7896=WordField.canonicalRows actualModulus 7896 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7896 : actualRows7896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7896=2892 := by core033_kernel_decide
theorem rows7897 : actualRows7897=WordField.canonicalRows actualModulus 7897 (.bxor 7895 7896) := by core033_kernel_decide
theorem stats7897 : actualRows7897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7897=7428 := by core033_kernel_decide
theorem rows7898 : actualRows7898=WordField.canonicalRows actualModulus 7898 (.shr 6247 8) := by core033_kernel_decide
theorem stats7898 : actualRows7898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7898=4548 := by core033_kernel_decide
theorem rows7899 : actualRows7899=WordField.canonicalRows actualModulus 7899 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7899 : actualRows7899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7899=2820 := by core033_kernel_decide
theorem rows7900 : actualRows7900=WordField.canonicalRows actualModulus 7900 (.bnot 7899) := by core033_kernel_decide
theorem stats7900 : actualRows7900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7900=6276 := by core033_kernel_decide
theorem rows7901 : actualRows7901=WordField.canonicalRows actualModulus 7901 (.band 7898 7900) := by core033_kernel_decide
theorem stats7901 : actualRows7901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7901=5124 := by core033_kernel_decide
theorem rows7902 : actualRows7902=WordField.canonicalRows actualModulus 7902 (.shr 6247 8) := by core033_kernel_decide
theorem stats7902 : actualRows7902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7902=4548 := by core033_kernel_decide
theorem rows7903 : actualRows7903=WordField.canonicalRows actualModulus 7903 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7903 : actualRows7903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7903=2820 := by core033_kernel_decide
theorem rows7904 : actualRows7904=WordField.canonicalRows actualModulus 7904 (.bnot 7903) := by core033_kernel_decide
theorem stats7904 : actualRows7904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7904=6276 := by core033_kernel_decide
theorem rows7905 : actualRows7905=WordField.canonicalRows actualModulus 7905 (.bxor 7902 7904) := by core033_kernel_decide
theorem stats7905 : actualRows7905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7905=7428 := by core033_kernel_decide
theorem rows7906 : actualRows7906=WordField.canonicalRows actualModulus 7906 (.shr 6247 8) := by core033_kernel_decide
theorem stats7906 : actualRows7906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7906=4548 := by core033_kernel_decide
theorem rows7907 : actualRows7907=WordField.canonicalRows actualModulus 7907 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7907 : actualRows7907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7907=2820 := by core033_kernel_decide
theorem rows7908 : actualRows7908=WordField.canonicalRows actualModulus 7908 (.bnot 7907) := by core033_kernel_decide
theorem stats7908 : actualRows7908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7908=6276 := by core033_kernel_decide
theorem rows7909 : actualRows7909=WordField.canonicalRows actualModulus 7909 (.badd 7906 7908) := by core033_kernel_decide
theorem stats7909 : actualRows7909.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7909=5388 := by core033_kernel_decide
theorem rows7910 : actualRows7910=WordField.canonicalRows actualModulus 7910 (.bnot 7909) := by core033_kernel_decide
theorem stats7910 : actualRows7910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7910=6276 := by core033_kernel_decide
theorem rows7911 : actualRows7911=WordField.canonicalRows actualModulus 7911 (.band 7905 7910) := by core033_kernel_decide
theorem stats7911 : actualRows7911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7911=5124 := by core033_kernel_decide
theorem rows7912 : actualRows7912=WordField.canonicalRows actualModulus 7912 (.bxor 7901 7911) := by core033_kernel_decide
theorem stats7912 : actualRows7912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7912=7428 := by core033_kernel_decide
theorem rows7913 : actualRows7913=WordField.canonicalRows actualModulus 7913 (.shr 7912 31) := by core033_kernel_decide
theorem stats7913 : actualRows7913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7913=2892 := by core033_kernel_decide
theorem rows7914 : actualRows7914=WordField.canonicalRows actualModulus 7914 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7914 : actualRows7914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7914=2892 := by core033_kernel_decide
theorem rows7915 : actualRows7915=WordField.canonicalRows actualModulus 7915 (.bxor 7913 7914) := by core033_kernel_decide
theorem stats7915 : actualRows7915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7915=7428 := by core033_kernel_decide
theorem rows7916 : actualRows7916=WordField.canonicalRows actualModulus 7916 (.shr 6300 8) := by core033_kernel_decide
theorem stats7916 : actualRows7916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7916=4548 := by core033_kernel_decide
theorem rows7917 : actualRows7917=WordField.canonicalRows actualModulus 7917 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7917 : actualRows7917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7917=2820 := by core033_kernel_decide
theorem rows7918 : actualRows7918=WordField.canonicalRows actualModulus 7918 (.bnot 7917) := by core033_kernel_decide
theorem stats7918 : actualRows7918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7918=6276 := by core033_kernel_decide
theorem rows7919 : actualRows7919=WordField.canonicalRows actualModulus 7919 (.band 7916 7918) := by core033_kernel_decide
theorem stats7919 : actualRows7919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7919=5124 := by core033_kernel_decide
theorem rows7920 : actualRows7920=WordField.canonicalRows actualModulus 7920 (.shr 6300 8) := by core033_kernel_decide
theorem stats7920 : actualRows7920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7920=4548 := by core033_kernel_decide
theorem rows7921 : actualRows7921=WordField.canonicalRows actualModulus 7921 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7921 : actualRows7921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7921=2820 := by core033_kernel_decide
theorem rows7922 : actualRows7922=WordField.canonicalRows actualModulus 7922 (.bnot 7921) := by core033_kernel_decide
theorem stats7922 : actualRows7922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7922=6276 := by core033_kernel_decide
theorem rows7923 : actualRows7923=WordField.canonicalRows actualModulus 7923 (.bxor 7920 7922) := by core033_kernel_decide
theorem stats7923 : actualRows7923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7923=7428 := by core033_kernel_decide
theorem rows7924 : actualRows7924=WordField.canonicalRows actualModulus 7924 (.shr 6300 8) := by core033_kernel_decide
theorem stats7924 : actualRows7924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7924=4548 := by core033_kernel_decide
theorem rows7925 : actualRows7925=WordField.canonicalRows actualModulus 7925 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7925 : actualRows7925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7925=2820 := by core033_kernel_decide
def partRows121 : List R1CS.Row := actualRows7862++actualRows7863++actualRows7864++actualRows7865++actualRows7866++actualRows7867++actualRows7868++actualRows7869++actualRows7870++actualRows7871++actualRows7872++actualRows7873++actualRows7874++actualRows7875++actualRows7876++actualRows7877++actualRows7878++actualRows7879++actualRows7880++actualRows7881++actualRows7882++actualRows7883++actualRows7884++actualRows7885++actualRows7886++actualRows7887++actualRows7888++actualRows7889++actualRows7890++actualRows7891++actualRows7892++actualRows7893++actualRows7894++actualRows7895++actualRows7896++actualRows7897++actualRows7898++actualRows7899++actualRows7900++actualRows7901++actualRows7902++actualRows7903++actualRows7904++actualRows7905++actualRows7906++actualRows7907++actualRows7908++actualRows7909++actualRows7910++actualRows7911++actualRows7912++actualRows7913++actualRows7914++actualRows7915++actualRows7916++actualRows7917++actualRows7918++actualRows7919++actualRows7920++actualRows7921++actualRows7922++actualRows7923++actualRows7924++actualRows7925
def partOps121 : List WordIR.Op := [.shr 6142 8,.literal (BitVec.ofNat 32 0),.bnot 7863,.band 7862 7864,.shr 6142 8,.literal (BitVec.ofNat 32 0),.bnot 7867,.bxor 7866 7868,.shr 6142 8,.literal (BitVec.ofNat 32 0),.bnot 7871,.badd 7870 7872,.bnot 7873,.band 7869 7874,.bxor 7865 7875,.shr 7876 31,.literal (BitVec.ofNat 32 1),.bxor 7877 7878,.shr 6194 8,.literal (BitVec.ofNat 32 0),.bnot 7881,.band 7880 7882,.shr 6194 8,.literal (BitVec.ofNat 32 0),.bnot 7885,.bxor 7884 7886,.shr 6194 8,.literal (BitVec.ofNat 32 0),.bnot 7889,.badd 7888 7890,.bnot 7891,.band 7887 7892,.bxor 7883 7893,.shr 7894 31,.literal (BitVec.ofNat 32 1),.bxor 7895 7896,.shr 6247 8,.literal (BitVec.ofNat 32 0),.bnot 7899,.band 7898 7900,.shr 6247 8,.literal (BitVec.ofNat 32 0),.bnot 7903,.bxor 7902 7904,.shr 6247 8,.literal (BitVec.ofNat 32 0),.bnot 7907,.badd 7906 7908,.bnot 7909,.band 7905 7910,.bxor 7901 7911,.shr 7912 31,.literal (BitVec.ofNat 32 1),.bxor 7913 7914,.shr 6300 8,.literal (BitVec.ofNat 32 0),.bnot 7917,.band 7916 7918,.shr 6300 8,.literal (BitVec.ofNat 32 0),.bnot 7921,.bxor 7920 7922,.shr 6300 8,.literal (BitVec.ofNat 32 0)]
theorem partExact121 : partRows121=WordField.rows actualModulus 7862 partOps121 := by
  simp only [partRows121,partOps121,WordField.rows,rows7862,rows7863,rows7864,rows7865,rows7866,rows7867,rows7868,rows7869,rows7870,rows7871,rows7872,rows7873,rows7874,rows7875,rows7876,rows7877,rows7878,rows7879,rows7880,rows7881,rows7882,rows7883,rows7884,rows7885,rows7886,rows7887,rows7888,rows7889,rows7890,rows7891,rows7892,rows7893,rows7894,rows7895,rows7896,rows7897,rows7898,rows7899,rows7900,rows7901,rows7902,rows7903,rows7904,rows7905,rows7906,rows7907,rows7908,rows7909,rows7910,rows7911,rows7912,rows7913,rows7914,rows7915,rows7916,rows7917,rows7918,rows7919,rows7920,rows7921,rows7922,rows7923,rows7924,rows7925,List.append_assoc,List.append_nil]
theorem partLength121 : partOps121.length=64 := by decide
theorem partStats121 : partRows121.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows121=319944 := by
  simp only [partRows121,List.length_append,MatrixRowBlocks.rows_weight_append,stats7862.1,stats7862.2,stats7863.1,stats7863.2,stats7864.1,stats7864.2,stats7865.1,stats7865.2,stats7866.1,stats7866.2,stats7867.1,stats7867.2,stats7868.1,stats7868.2,stats7869.1,stats7869.2,stats7870.1,stats7870.2,stats7871.1,stats7871.2,stats7872.1,stats7872.2,stats7873.1,stats7873.2,stats7874.1,stats7874.2,stats7875.1,stats7875.2,stats7876.1,stats7876.2,stats7877.1,stats7877.2,stats7878.1,stats7878.2,stats7879.1,stats7879.2,stats7880.1,stats7880.2,stats7881.1,stats7881.2,stats7882.1,stats7882.2,stats7883.1,stats7883.2,stats7884.1,stats7884.2,stats7885.1,stats7885.2,stats7886.1,stats7886.2,stats7887.1,stats7887.2,stats7888.1,stats7888.2,stats7889.1,stats7889.2,stats7890.1,stats7890.2,stats7891.1,stats7891.2,stats7892.1,stats7892.2,stats7893.1,stats7893.2,stats7894.1,stats7894.2,stats7895.1,stats7895.2,stats7896.1,stats7896.2,stats7897.1,stats7897.2,stats7898.1,stats7898.2,stats7899.1,stats7899.2,stats7900.1,stats7900.2,stats7901.1,stats7901.2,stats7902.1,stats7902.2,stats7903.1,stats7903.2,stats7904.1,stats7904.2,stats7905.1,stats7905.2,stats7906.1,stats7906.2,stats7907.1,stats7907.2,stats7908.1,stats7908.2,stats7909.1,stats7909.2,stats7910.1,stats7910.2,stats7911.1,stats7911.2,stats7912.1,stats7912.2,stats7913.1,stats7913.2,stats7914.1,stats7914.2,stats7915.1,stats7915.2,stats7916.1,stats7916.2,stats7917.1,stats7917.2,stats7918.1,stats7918.2,stats7919.1,stats7919.2,stats7920.1,stats7920.2,stats7921.1,stats7921.2,stats7922.1,stats7922.2,stats7923.1,stats7923.2,stats7924.1,stats7924.2,stats7925.1,stats7925.2]
  decide
end AuthenticatedBranchRoundCheckedRows
