import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData138
import PathRoundDispatchInstructionMatrixData139
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8875 : actualRows8875=WordField.canonicalRows actualModulus 8875 (.badd 8766 8862) := by core033_kernel_decide
theorem stats8875 : actualRows8875.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8875=5388 := by core033_kernel_decide
theorem rows8876 : actualRows8876=WordField.canonicalRows actualModulus 8876 (.rotr 8875 6) := by core033_kernel_decide
theorem stats8876 : actualRows8876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8876=5124 := by core033_kernel_decide
theorem rows8877 : actualRows8877=WordField.canonicalRows actualModulus 8877 (.rotr 8875 11) := by core033_kernel_decide
theorem stats8877 : actualRows8877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8877=5124 := by core033_kernel_decide
theorem rows8878 : actualRows8878=WordField.canonicalRows actualModulus 8878 (.bxor 8876 8877) := by core033_kernel_decide
theorem stats8878 : actualRows8878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8878=7428 := by core033_kernel_decide
theorem rows8879 : actualRows8879=WordField.canonicalRows actualModulus 8879 (.rotr 8875 25) := by core033_kernel_decide
theorem stats8879 : actualRows8879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8879=5124 := by core033_kernel_decide
theorem rows8880 : actualRows8880=WordField.canonicalRows actualModulus 8880 (.bxor 8878 8879) := by core033_kernel_decide
theorem stats8880 : actualRows8880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8880=7428 := by core033_kernel_decide
theorem rows8881 : actualRows8881=WordField.canonicalRows actualModulus 8881 (.badd 8794 8880) := by core033_kernel_decide
theorem stats8881 : actualRows8881.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8881=5388 := by core033_kernel_decide
theorem rows8882 : actualRows8882=WordField.canonicalRows actualModulus 8882 (.band 8875 8848) := by core033_kernel_decide
theorem stats8882 : actualRows8882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8882=5124 := by core033_kernel_decide
theorem rows8883 : actualRows8883=WordField.canonicalRows actualModulus 8883 (.bnot 8875) := by core033_kernel_decide
theorem stats8883 : actualRows8883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8883=6276 := by core033_kernel_decide
theorem rows8884 : actualRows8884=WordField.canonicalRows actualModulus 8884 (.band 8883 8821) := by core033_kernel_decide
theorem stats8884 : actualRows8884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8884=5124 := by core033_kernel_decide
theorem rows8885 : actualRows8885=WordField.canonicalRows actualModulus 8885 (.bxor 8882 8884) := by core033_kernel_decide
theorem stats8885 : actualRows8885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8885=7428 := by core033_kernel_decide
theorem rows8886 : actualRows8886=WordField.canonicalRows actualModulus 8886 (.badd 8881 8885) := by core033_kernel_decide
theorem stats8886 : actualRows8886.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8886=5388 := by core033_kernel_decide
theorem rows8887 : actualRows8887=WordField.canonicalRows actualModulus 8887 (.literal (BitVec.ofNat 32 506948616)) := by core033_kernel_decide
theorem stats8887 : actualRows8887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8887=3828 := by core033_kernel_decide
theorem rows8888 : actualRows8888=WordField.canonicalRows actualModulus 8888 (.badd 8886 8887) := by core033_kernel_decide
theorem stats8888 : actualRows8888.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8888=5388 := by core033_kernel_decide
theorem rows8889 : actualRows8889=WordField.canonicalRows actualModulus 8889 (.badd 8888 7370) := by core033_kernel_decide
theorem stats8889 : actualRows8889.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8889=5388 := by core033_kernel_decide
theorem rows8890 : actualRows8890=WordField.canonicalRows actualModulus 8890 (.rotr 8874 2) := by core033_kernel_decide
theorem stats8890 : actualRows8890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8890=5124 := by core033_kernel_decide
theorem rows8891 : actualRows8891=WordField.canonicalRows actualModulus 8891 (.rotr 8874 13) := by core033_kernel_decide
theorem stats8891 : actualRows8891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8891=5124 := by core033_kernel_decide
theorem rows8892 : actualRows8892=WordField.canonicalRows actualModulus 8892 (.bxor 8890 8891) := by core033_kernel_decide
theorem stats8892 : actualRows8892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8892=7428 := by core033_kernel_decide
theorem rows8893 : actualRows8893=WordField.canonicalRows actualModulus 8893 (.rotr 8874 22) := by core033_kernel_decide
theorem stats8893 : actualRows8893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8893=5124 := by core033_kernel_decide
theorem rows8894 : actualRows8894=WordField.canonicalRows actualModulus 8894 (.bxor 8892 8893) := by core033_kernel_decide
theorem stats8894 : actualRows8894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8894=7428 := by core033_kernel_decide
theorem rows8895 : actualRows8895=WordField.canonicalRows actualModulus 8895 (.band 8874 8847) := by core033_kernel_decide
theorem stats8895 : actualRows8895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8895=5124 := by core033_kernel_decide
theorem rows8896 : actualRows8896=WordField.canonicalRows actualModulus 8896 (.band 8874 8820) := by core033_kernel_decide
theorem stats8896 : actualRows8896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8896=5124 := by core033_kernel_decide
theorem rows8897 : actualRows8897=WordField.canonicalRows actualModulus 8897 (.bxor 8895 8896) := by core033_kernel_decide
theorem stats8897 : actualRows8897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8897=7428 := by core033_kernel_decide
theorem rows8898 : actualRows8898=WordField.canonicalRows actualModulus 8898 (.band 8847 8820) := by core033_kernel_decide
theorem stats8898 : actualRows8898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8898=5124 := by core033_kernel_decide
theorem rows8899 : actualRows8899=WordField.canonicalRows actualModulus 8899 (.bxor 8897 8898) := by core033_kernel_decide
theorem stats8899 : actualRows8899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8899=7428 := by core033_kernel_decide
theorem rows8900 : actualRows8900=WordField.canonicalRows actualModulus 8900 (.badd 8894 8899) := by core033_kernel_decide
theorem stats8900 : actualRows8900.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8900=5388 := by core033_kernel_decide
theorem rows8901 : actualRows8901=WordField.canonicalRows actualModulus 8901 (.badd 8889 8900) := by core033_kernel_decide
theorem stats8901 : actualRows8901.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8901=5388 := by core033_kernel_decide
theorem rows8902 : actualRows8902=WordField.canonicalRows actualModulus 8902 (.badd 8793 8889) := by core033_kernel_decide
theorem stats8902 : actualRows8902.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8902=5388 := by core033_kernel_decide
theorem rows8903 : actualRows8903=WordField.canonicalRows actualModulus 8903 (.rotr 8902 6) := by core033_kernel_decide
theorem stats8903 : actualRows8903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8903=5124 := by core033_kernel_decide
theorem rows8904 : actualRows8904=WordField.canonicalRows actualModulus 8904 (.rotr 8902 11) := by core033_kernel_decide
theorem stats8904 : actualRows8904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8904=5124 := by core033_kernel_decide
theorem rows8905 : actualRows8905=WordField.canonicalRows actualModulus 8905 (.bxor 8903 8904) := by core033_kernel_decide
theorem stats8905 : actualRows8905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8905=7428 := by core033_kernel_decide
theorem rows8906 : actualRows8906=WordField.canonicalRows actualModulus 8906 (.rotr 8902 25) := by core033_kernel_decide
theorem stats8906 : actualRows8906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8906=5124 := by core033_kernel_decide
theorem rows8907 : actualRows8907=WordField.canonicalRows actualModulus 8907 (.bxor 8905 8906) := by core033_kernel_decide
theorem stats8907 : actualRows8907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8907=7428 := by core033_kernel_decide
theorem rows8908 : actualRows8908=WordField.canonicalRows actualModulus 8908 (.badd 8821 8907) := by core033_kernel_decide
theorem stats8908 : actualRows8908.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8908=5388 := by core033_kernel_decide
theorem rows8909 : actualRows8909=WordField.canonicalRows actualModulus 8909 (.band 8902 8875) := by core033_kernel_decide
theorem stats8909 : actualRows8909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8909=5124 := by core033_kernel_decide
theorem rows8910 : actualRows8910=WordField.canonicalRows actualModulus 8910 (.bnot 8902) := by core033_kernel_decide
theorem stats8910 : actualRows8910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8910=6276 := by core033_kernel_decide
theorem rows8911 : actualRows8911=WordField.canonicalRows actualModulus 8911 (.band 8910 8848) := by core033_kernel_decide
theorem stats8911 : actualRows8911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8911=5124 := by core033_kernel_decide
theorem rows8912 : actualRows8912=WordField.canonicalRows actualModulus 8912 (.bxor 8909 8911) := by core033_kernel_decide
theorem stats8912 : actualRows8912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8912=7428 := by core033_kernel_decide
theorem rows8913 : actualRows8913=WordField.canonicalRows actualModulus 8913 (.badd 8908 8912) := by core033_kernel_decide
theorem stats8913 : actualRows8913.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8913=5388 := by core033_kernel_decide
theorem rows8914 : actualRows8914=WordField.canonicalRows actualModulus 8914 (.literal (BitVec.ofNat 32 659060556)) := by core033_kernel_decide
theorem stats8914 : actualRows8914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8914=3900 := by core033_kernel_decide
theorem rows8915 : actualRows8915=WordField.canonicalRows actualModulus 8915 (.badd 8913 8914) := by core033_kernel_decide
theorem stats8915 : actualRows8915.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8915=5388 := by core033_kernel_decide
theorem rows8916 : actualRows8916=WordField.canonicalRows actualModulus 8916 (.badd 8915 7383) := by core033_kernel_decide
theorem stats8916 : actualRows8916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8916=5388 := by core033_kernel_decide
theorem rows8917 : actualRows8917=WordField.canonicalRows actualModulus 8917 (.rotr 8901 2) := by core033_kernel_decide
theorem stats8917 : actualRows8917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8917=5124 := by core033_kernel_decide
theorem rows8918 : actualRows8918=WordField.canonicalRows actualModulus 8918 (.rotr 8901 13) := by core033_kernel_decide
theorem stats8918 : actualRows8918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8918=5124 := by core033_kernel_decide
theorem rows8919 : actualRows8919=WordField.canonicalRows actualModulus 8919 (.bxor 8917 8918) := by core033_kernel_decide
theorem stats8919 : actualRows8919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8919=7428 := by core033_kernel_decide
theorem rows8920 : actualRows8920=WordField.canonicalRows actualModulus 8920 (.rotr 8901 22) := by core033_kernel_decide
theorem stats8920 : actualRows8920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8920=5124 := by core033_kernel_decide
theorem rows8921 : actualRows8921=WordField.canonicalRows actualModulus 8921 (.bxor 8919 8920) := by core033_kernel_decide
theorem stats8921 : actualRows8921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8921=7428 := by core033_kernel_decide
theorem rows8922 : actualRows8922=WordField.canonicalRows actualModulus 8922 (.band 8901 8874) := by core033_kernel_decide
theorem stats8922 : actualRows8922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8922=5124 := by core033_kernel_decide
theorem rows8923 : actualRows8923=WordField.canonicalRows actualModulus 8923 (.band 8901 8847) := by core033_kernel_decide
theorem stats8923 : actualRows8923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8923=5124 := by core033_kernel_decide
theorem rows8924 : actualRows8924=WordField.canonicalRows actualModulus 8924 (.bxor 8922 8923) := by core033_kernel_decide
theorem stats8924 : actualRows8924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8924=7428 := by core033_kernel_decide
theorem rows8925 : actualRows8925=WordField.canonicalRows actualModulus 8925 (.band 8874 8847) := by core033_kernel_decide
theorem stats8925 : actualRows8925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8925=5124 := by core033_kernel_decide
theorem rows8926 : actualRows8926=WordField.canonicalRows actualModulus 8926 (.bxor 8924 8925) := by core033_kernel_decide
theorem stats8926 : actualRows8926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8926=7428 := by core033_kernel_decide
theorem rows8927 : actualRows8927=WordField.canonicalRows actualModulus 8927 (.badd 8921 8926) := by core033_kernel_decide
theorem stats8927 : actualRows8927.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8927=5388 := by core033_kernel_decide
theorem rows8928 : actualRows8928=WordField.canonicalRows actualModulus 8928 (.badd 8916 8927) := by core033_kernel_decide
theorem stats8928 : actualRows8928.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8928=5388 := by core033_kernel_decide
theorem rows8929 : actualRows8929=WordField.canonicalRows actualModulus 8929 (.badd 8820 8916) := by core033_kernel_decide
theorem stats8929 : actualRows8929.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8929=5388 := by core033_kernel_decide
theorem rows8930 : actualRows8930=WordField.canonicalRows actualModulus 8930 (.rotr 8929 6) := by core033_kernel_decide
theorem stats8930 : actualRows8930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8930=5124 := by core033_kernel_decide
theorem rows8931 : actualRows8931=WordField.canonicalRows actualModulus 8931 (.rotr 8929 11) := by core033_kernel_decide
theorem stats8931 : actualRows8931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8931=5124 := by core033_kernel_decide
theorem rows8932 : actualRows8932=WordField.canonicalRows actualModulus 8932 (.bxor 8930 8931) := by core033_kernel_decide
theorem stats8932 : actualRows8932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8932=7428 := by core033_kernel_decide
theorem rows8933 : actualRows8933=WordField.canonicalRows actualModulus 8933 (.rotr 8929 25) := by core033_kernel_decide
theorem stats8933 : actualRows8933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8933=5124 := by core033_kernel_decide
theorem rows8934 : actualRows8934=WordField.canonicalRows actualModulus 8934 (.bxor 8932 8933) := by core033_kernel_decide
theorem stats8934 : actualRows8934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8934=7428 := by core033_kernel_decide
theorem rows8935 : actualRows8935=WordField.canonicalRows actualModulus 8935 (.badd 8848 8934) := by core033_kernel_decide
theorem stats8935 : actualRows8935.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8935=5388 := by core033_kernel_decide
theorem rows8936 : actualRows8936=WordField.canonicalRows actualModulus 8936 (.band 8929 8902) := by core033_kernel_decide
theorem stats8936 : actualRows8936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8936=5124 := by core033_kernel_decide
theorem rows8937 : actualRows8937=WordField.canonicalRows actualModulus 8937 (.bnot 8929) := by core033_kernel_decide
theorem stats8937 : actualRows8937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8937=6276 := by core033_kernel_decide
theorem rows8938 : actualRows8938=WordField.canonicalRows actualModulus 8938 (.band 8937 8875) := by core033_kernel_decide
theorem stats8938 : actualRows8938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8938=5124 := by core033_kernel_decide
def partRows138 : List R1CS.Row := actualRows8875++actualRows8876++actualRows8877++actualRows8878++actualRows8879++actualRows8880++actualRows8881++actualRows8882++actualRows8883++actualRows8884++actualRows8885++actualRows8886++actualRows8887++actualRows8888++actualRows8889++actualRows8890++actualRows8891++actualRows8892++actualRows8893++actualRows8894++actualRows8895++actualRows8896++actualRows8897++actualRows8898++actualRows8899++actualRows8900++actualRows8901++actualRows8902++actualRows8903++actualRows8904++actualRows8905++actualRows8906++actualRows8907++actualRows8908++actualRows8909++actualRows8910++actualRows8911++actualRows8912++actualRows8913++actualRows8914++actualRows8915++actualRows8916++actualRows8917++actualRows8918++actualRows8919++actualRows8920++actualRows8921++actualRows8922++actualRows8923++actualRows8924++actualRows8925++actualRows8926++actualRows8927++actualRows8928++actualRows8929++actualRows8930++actualRows8931++actualRows8932++actualRows8933++actualRows8934++actualRows8935++actualRows8936++actualRows8937++actualRows8938
def partOps138 : List WordIR.Op := [.badd 8766 8862,.rotr 8875 6,.rotr 8875 11,.bxor 8876 8877,.rotr 8875 25,.bxor 8878 8879,.badd 8794 8880,.band 8875 8848,.bnot 8875,.band 8883 8821,.bxor 8882 8884,.badd 8881 8885,.literal (BitVec.ofNat 32 506948616),.badd 8886 8887,.badd 8888 7370,.rotr 8874 2,.rotr 8874 13,.bxor 8890 8891,.rotr 8874 22,.bxor 8892 8893,.band 8874 8847,.band 8874 8820,.bxor 8895 8896,.band 8847 8820,.bxor 8897 8898,.badd 8894 8899,.badd 8889 8900,.badd 8793 8889,.rotr 8902 6,.rotr 8902 11,.bxor 8903 8904,.rotr 8902 25,.bxor 8905 8906,.badd 8821 8907,.band 8902 8875,.bnot 8902,.band 8910 8848,.bxor 8909 8911,.badd 8908 8912,.literal (BitVec.ofNat 32 659060556),.badd 8913 8914,.badd 8915 7383,.rotr 8901 2,.rotr 8901 13,.bxor 8917 8918,.rotr 8901 22,.bxor 8919 8920,.band 8901 8874,.band 8901 8847,.bxor 8922 8923,.band 8874 8847,.bxor 8924 8925,.badd 8921 8926,.badd 8916 8927,.badd 8820 8916,.rotr 8929 6,.rotr 8929 11,.bxor 8930 8931,.rotr 8929 25,.bxor 8932 8933,.badd 8848 8934,.band 8929 8902,.bnot 8929,.band 8937 8875]
theorem partExact138 : partRows138=WordField.rows actualModulus 8875 partOps138 := by
  simp only [partRows138,partOps138,WordField.rows,rows8875,rows8876,rows8877,rows8878,rows8879,rows8880,rows8881,rows8882,rows8883,rows8884,rows8885,rows8886,rows8887,rows8888,rows8889,rows8890,rows8891,rows8892,rows8893,rows8894,rows8895,rows8896,rows8897,rows8898,rows8899,rows8900,rows8901,rows8902,rows8903,rows8904,rows8905,rows8906,rows8907,rows8908,rows8909,rows8910,rows8911,rows8912,rows8913,rows8914,rows8915,rows8916,rows8917,rows8918,rows8919,rows8920,rows8921,rows8922,rows8923,rows8924,rows8925,rows8926,rows8927,rows8928,rows8929,rows8930,rows8931,rows8932,rows8933,rows8934,rows8935,rows8936,rows8937,rows8938,List.append_assoc,List.append_nil]
theorem partLength138 : partOps138.length=64 := by decide
theorem partStats138 : partRows138.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows138=369960 := by
  simp only [partRows138,List.length_append,MatrixRowBlocks.rows_weight_append,stats8875.1,stats8875.2,stats8876.1,stats8876.2,stats8877.1,stats8877.2,stats8878.1,stats8878.2,stats8879.1,stats8879.2,stats8880.1,stats8880.2,stats8881.1,stats8881.2,stats8882.1,stats8882.2,stats8883.1,stats8883.2,stats8884.1,stats8884.2,stats8885.1,stats8885.2,stats8886.1,stats8886.2,stats8887.1,stats8887.2,stats8888.1,stats8888.2,stats8889.1,stats8889.2,stats8890.1,stats8890.2,stats8891.1,stats8891.2,stats8892.1,stats8892.2,stats8893.1,stats8893.2,stats8894.1,stats8894.2,stats8895.1,stats8895.2,stats8896.1,stats8896.2,stats8897.1,stats8897.2,stats8898.1,stats8898.2,stats8899.1,stats8899.2,stats8900.1,stats8900.2,stats8901.1,stats8901.2,stats8902.1,stats8902.2,stats8903.1,stats8903.2,stats8904.1,stats8904.2,stats8905.1,stats8905.2,stats8906.1,stats8906.2,stats8907.1,stats8907.2,stats8908.1,stats8908.2,stats8909.1,stats8909.2,stats8910.1,stats8910.2,stats8911.1,stats8911.2,stats8912.1,stats8912.2,stats8913.1,stats8913.2,stats8914.1,stats8914.2,stats8915.1,stats8915.2,stats8916.1,stats8916.2,stats8917.1,stats8917.2,stats8918.1,stats8918.2,stats8919.1,stats8919.2,stats8920.1,stats8920.2,stats8921.1,stats8921.2,stats8922.1,stats8922.2,stats8923.1,stats8923.2,stats8924.1,stats8924.2,stats8925.1,stats8925.2,stats8926.1,stats8926.2,stats8927.1,stats8927.2,stats8928.1,stats8928.2,stats8929.1,stats8929.2,stats8930.1,stats8930.2,stats8931.1,stats8931.2,stats8932.1,stats8932.2,stats8933.1,stats8933.2,stats8934.1,stats8934.2,stats8935.1,stats8935.2,stats8936.1,stats8936.2,stats8937.1,stats8937.2,stats8938.1,stats8938.2]
  decide
end PathRoundDispatchCheckedRows
