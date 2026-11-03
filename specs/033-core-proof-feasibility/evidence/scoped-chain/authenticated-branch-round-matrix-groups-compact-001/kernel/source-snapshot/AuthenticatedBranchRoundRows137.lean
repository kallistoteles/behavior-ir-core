import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData138
import AuthenticatedBranchRoundInstructionMatrixData139
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8886 : actualRows8886=WordField.canonicalRows actualModulus 8886 (.band 8835 8808) := by core033_kernel_decide
theorem stats8886 : actualRows8886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8886=5124 := by core033_kernel_decide
theorem rows8887 : actualRows8887=WordField.canonicalRows actualModulus 8887 (.bxor 8885 8886) := by core033_kernel_decide
theorem stats8887 : actualRows8887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8887=7428 := by core033_kernel_decide
theorem rows8888 : actualRows8888=WordField.canonicalRows actualModulus 8888 (.badd 8882 8887) := by core033_kernel_decide
theorem stats8888 : actualRows8888.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8888=5388 := by core033_kernel_decide
theorem rows8889 : actualRows8889=WordField.canonicalRows actualModulus 8889 (.badd 8877 8888) := by core033_kernel_decide
theorem stats8889 : actualRows8889.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8889=5388 := by core033_kernel_decide
theorem rows8890 : actualRows8890=WordField.canonicalRows actualModulus 8890 (.badd 8781 8877) := by core033_kernel_decide
theorem stats8890 : actualRows8890.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8890=5388 := by core033_kernel_decide
theorem rows8891 : actualRows8891=WordField.canonicalRows actualModulus 8891 (.rotr 8890 6) := by core033_kernel_decide
theorem stats8891 : actualRows8891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8891=5124 := by core033_kernel_decide
theorem rows8892 : actualRows8892=WordField.canonicalRows actualModulus 8892 (.rotr 8890 11) := by core033_kernel_decide
theorem stats8892 : actualRows8892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8892=5124 := by core033_kernel_decide
theorem rows8893 : actualRows8893=WordField.canonicalRows actualModulus 8893 (.bxor 8891 8892) := by core033_kernel_decide
theorem stats8893 : actualRows8893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8893=7428 := by core033_kernel_decide
theorem rows8894 : actualRows8894=WordField.canonicalRows actualModulus 8894 (.rotr 8890 25) := by core033_kernel_decide
theorem stats8894 : actualRows8894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8894=5124 := by core033_kernel_decide
theorem rows8895 : actualRows8895=WordField.canonicalRows actualModulus 8895 (.bxor 8893 8894) := by core033_kernel_decide
theorem stats8895 : actualRows8895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8895=7428 := by core033_kernel_decide
theorem rows8896 : actualRows8896=WordField.canonicalRows actualModulus 8896 (.badd 8809 8895) := by core033_kernel_decide
theorem stats8896 : actualRows8896.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8896=5388 := by core033_kernel_decide
theorem rows8897 : actualRows8897=WordField.canonicalRows actualModulus 8897 (.band 8890 8863) := by core033_kernel_decide
theorem stats8897 : actualRows8897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8897=5124 := by core033_kernel_decide
theorem rows8898 : actualRows8898=WordField.canonicalRows actualModulus 8898 (.bnot 8890) := by core033_kernel_decide
theorem stats8898 : actualRows8898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8898=6276 := by core033_kernel_decide
theorem rows8899 : actualRows8899=WordField.canonicalRows actualModulus 8899 (.band 8898 8836) := by core033_kernel_decide
theorem stats8899 : actualRows8899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8899=5124 := by core033_kernel_decide
theorem rows8900 : actualRows8900=WordField.canonicalRows actualModulus 8900 (.bxor 8897 8899) := by core033_kernel_decide
theorem stats8900 : actualRows8900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8900=7428 := by core033_kernel_decide
theorem rows8901 : actualRows8901=WordField.canonicalRows actualModulus 8901 (.badd 8896 8900) := by core033_kernel_decide
theorem stats8901 : actualRows8901.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8901=5388 := by core033_kernel_decide
theorem rows8902 : actualRows8902=WordField.canonicalRows actualModulus 8902 (.literal (BitVec.ofNat 32 1508970993)) := by core033_kernel_decide
theorem stats8902 : actualRows8902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8902=3972 := by core033_kernel_decide
theorem rows8903 : actualRows8903=WordField.canonicalRows actualModulus 8903 (.badd 8901 8902) := by core033_kernel_decide
theorem stats8903 : actualRows8903.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8903=5388 := by core033_kernel_decide
theorem rows8904 : actualRows8904=WordField.canonicalRows actualModulus 8904 (.badd 8903 6919) := by core033_kernel_decide
theorem stats8904 : actualRows8904.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8904=5388 := by core033_kernel_decide
theorem rows8905 : actualRows8905=WordField.canonicalRows actualModulus 8905 (.rotr 8889 2) := by core033_kernel_decide
theorem stats8905 : actualRows8905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8905=5124 := by core033_kernel_decide
theorem rows8906 : actualRows8906=WordField.canonicalRows actualModulus 8906 (.rotr 8889 13) := by core033_kernel_decide
theorem stats8906 : actualRows8906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8906=5124 := by core033_kernel_decide
theorem rows8907 : actualRows8907=WordField.canonicalRows actualModulus 8907 (.bxor 8905 8906) := by core033_kernel_decide
theorem stats8907 : actualRows8907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8907=7428 := by core033_kernel_decide
theorem rows8908 : actualRows8908=WordField.canonicalRows actualModulus 8908 (.rotr 8889 22) := by core033_kernel_decide
theorem stats8908 : actualRows8908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8908=5124 := by core033_kernel_decide
theorem rows8909 : actualRows8909=WordField.canonicalRows actualModulus 8909 (.bxor 8907 8908) := by core033_kernel_decide
theorem stats8909 : actualRows8909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8909=7428 := by core033_kernel_decide
theorem rows8910 : actualRows8910=WordField.canonicalRows actualModulus 8910 (.band 8889 8862) := by core033_kernel_decide
theorem stats8910 : actualRows8910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8910=5124 := by core033_kernel_decide
theorem rows8911 : actualRows8911=WordField.canonicalRows actualModulus 8911 (.band 8889 8835) := by core033_kernel_decide
theorem stats8911 : actualRows8911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8911=5124 := by core033_kernel_decide
theorem rows8912 : actualRows8912=WordField.canonicalRows actualModulus 8912 (.bxor 8910 8911) := by core033_kernel_decide
theorem stats8912 : actualRows8912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8912=7428 := by core033_kernel_decide
theorem rows8913 : actualRows8913=WordField.canonicalRows actualModulus 8913 (.band 8862 8835) := by core033_kernel_decide
theorem stats8913 : actualRows8913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8913=5124 := by core033_kernel_decide
theorem rows8914 : actualRows8914=WordField.canonicalRows actualModulus 8914 (.bxor 8912 8913) := by core033_kernel_decide
theorem stats8914 : actualRows8914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8914=7428 := by core033_kernel_decide
theorem rows8915 : actualRows8915=WordField.canonicalRows actualModulus 8915 (.badd 8909 8914) := by core033_kernel_decide
theorem stats8915 : actualRows8915.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8915=5388 := by core033_kernel_decide
theorem rows8916 : actualRows8916=WordField.canonicalRows actualModulus 8916 (.badd 8904 8915) := by core033_kernel_decide
theorem stats8916 : actualRows8916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8916=5388 := by core033_kernel_decide
theorem rows8917 : actualRows8917=WordField.canonicalRows actualModulus 8917 (.badd 8808 8904) := by core033_kernel_decide
theorem stats8917 : actualRows8917.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8917=5388 := by core033_kernel_decide
theorem rows8918 : actualRows8918=WordField.canonicalRows actualModulus 8918 (.rotr 8917 6) := by core033_kernel_decide
theorem stats8918 : actualRows8918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8918=5124 := by core033_kernel_decide
theorem rows8919 : actualRows8919=WordField.canonicalRows actualModulus 8919 (.rotr 8917 11) := by core033_kernel_decide
theorem stats8919 : actualRows8919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8919=5124 := by core033_kernel_decide
theorem rows8920 : actualRows8920=WordField.canonicalRows actualModulus 8920 (.bxor 8918 8919) := by core033_kernel_decide
theorem stats8920 : actualRows8920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8920=7428 := by core033_kernel_decide
theorem rows8921 : actualRows8921=WordField.canonicalRows actualModulus 8921 (.rotr 8917 25) := by core033_kernel_decide
theorem stats8921 : actualRows8921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8921=5124 := by core033_kernel_decide
theorem rows8922 : actualRows8922=WordField.canonicalRows actualModulus 8922 (.bxor 8920 8921) := by core033_kernel_decide
theorem stats8922 : actualRows8922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8922=7428 := by core033_kernel_decide
theorem rows8923 : actualRows8923=WordField.canonicalRows actualModulus 8923 (.badd 8836 8922) := by core033_kernel_decide
theorem stats8923 : actualRows8923.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8923=5388 := by core033_kernel_decide
theorem rows8924 : actualRows8924=WordField.canonicalRows actualModulus 8924 (.band 8917 8890) := by core033_kernel_decide
theorem stats8924 : actualRows8924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8924=5124 := by core033_kernel_decide
theorem rows8925 : actualRows8925=WordField.canonicalRows actualModulus 8925 (.bnot 8917) := by core033_kernel_decide
theorem stats8925 : actualRows8925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8925=6276 := by core033_kernel_decide
theorem rows8926 : actualRows8926=WordField.canonicalRows actualModulus 8926 (.band 8925 8863) := by core033_kernel_decide
theorem stats8926 : actualRows8926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8926=5124 := by core033_kernel_decide
theorem rows8927 : actualRows8927=WordField.canonicalRows actualModulus 8927 (.bxor 8924 8926) := by core033_kernel_decide
theorem stats8927 : actualRows8927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8927=7428 := by core033_kernel_decide
theorem rows8928 : actualRows8928=WordField.canonicalRows actualModulus 8928 (.badd 8923 8927) := by core033_kernel_decide
theorem stats8928 : actualRows8928.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8928=5388 := by core033_kernel_decide
theorem rows8929 : actualRows8929=WordField.canonicalRows actualModulus 8929 (.literal (BitVec.ofNat 32 2453635748)) := by core033_kernel_decide
theorem stats8929 : actualRows8929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8929=3828 := by core033_kernel_decide
theorem rows8930 : actualRows8930=WordField.canonicalRows actualModulus 8930 (.badd 8928 8929) := by core033_kernel_decide
theorem stats8930 : actualRows8930.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8930=5388 := by core033_kernel_decide
theorem rows8931 : actualRows8931=WordField.canonicalRows actualModulus 8931 (.badd 8930 6925) := by core033_kernel_decide
theorem stats8931 : actualRows8931.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8931=5388 := by core033_kernel_decide
theorem rows8932 : actualRows8932=WordField.canonicalRows actualModulus 8932 (.rotr 8916 2) := by core033_kernel_decide
theorem stats8932 : actualRows8932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8932=5124 := by core033_kernel_decide
theorem rows8933 : actualRows8933=WordField.canonicalRows actualModulus 8933 (.rotr 8916 13) := by core033_kernel_decide
theorem stats8933 : actualRows8933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8933=5124 := by core033_kernel_decide
theorem rows8934 : actualRows8934=WordField.canonicalRows actualModulus 8934 (.bxor 8932 8933) := by core033_kernel_decide
theorem stats8934 : actualRows8934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8934=7428 := by core033_kernel_decide
theorem rows8935 : actualRows8935=WordField.canonicalRows actualModulus 8935 (.rotr 8916 22) := by core033_kernel_decide
theorem stats8935 : actualRows8935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8935=5124 := by core033_kernel_decide
theorem rows8936 : actualRows8936=WordField.canonicalRows actualModulus 8936 (.bxor 8934 8935) := by core033_kernel_decide
theorem stats8936 : actualRows8936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8936=7428 := by core033_kernel_decide
theorem rows8937 : actualRows8937=WordField.canonicalRows actualModulus 8937 (.band 8916 8889) := by core033_kernel_decide
theorem stats8937 : actualRows8937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8937=5124 := by core033_kernel_decide
theorem rows8938 : actualRows8938=WordField.canonicalRows actualModulus 8938 (.band 8916 8862) := by core033_kernel_decide
theorem stats8938 : actualRows8938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8938=5124 := by core033_kernel_decide
theorem rows8939 : actualRows8939=WordField.canonicalRows actualModulus 8939 (.bxor 8937 8938) := by core033_kernel_decide
theorem stats8939 : actualRows8939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8939=7428 := by core033_kernel_decide
theorem rows8940 : actualRows8940=WordField.canonicalRows actualModulus 8940 (.band 8889 8862) := by core033_kernel_decide
theorem stats8940 : actualRows8940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8940=5124 := by core033_kernel_decide
theorem rows8941 : actualRows8941=WordField.canonicalRows actualModulus 8941 (.bxor 8939 8940) := by core033_kernel_decide
theorem stats8941 : actualRows8941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8941=7428 := by core033_kernel_decide
theorem rows8942 : actualRows8942=WordField.canonicalRows actualModulus 8942 (.badd 8936 8941) := by core033_kernel_decide
theorem stats8942 : actualRows8942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8942=5388 := by core033_kernel_decide
theorem rows8943 : actualRows8943=WordField.canonicalRows actualModulus 8943 (.badd 8931 8942) := by core033_kernel_decide
theorem stats8943 : actualRows8943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8943=5388 := by core033_kernel_decide
theorem rows8944 : actualRows8944=WordField.canonicalRows actualModulus 8944 (.badd 8835 8931) := by core033_kernel_decide
theorem stats8944 : actualRows8944.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8944=5388 := by core033_kernel_decide
theorem rows8945 : actualRows8945=WordField.canonicalRows actualModulus 8945 (.rotr 8944 6) := by core033_kernel_decide
theorem stats8945 : actualRows8945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8945=5124 := by core033_kernel_decide
theorem rows8946 : actualRows8946=WordField.canonicalRows actualModulus 8946 (.rotr 8944 11) := by core033_kernel_decide
theorem stats8946 : actualRows8946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8946=5124 := by core033_kernel_decide
theorem rows8947 : actualRows8947=WordField.canonicalRows actualModulus 8947 (.bxor 8945 8946) := by core033_kernel_decide
theorem stats8947 : actualRows8947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8947=7428 := by core033_kernel_decide
theorem rows8948 : actualRows8948=WordField.canonicalRows actualModulus 8948 (.rotr 8944 25) := by core033_kernel_decide
theorem stats8948 : actualRows8948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8948=5124 := by core033_kernel_decide
theorem rows8949 : actualRows8949=WordField.canonicalRows actualModulus 8949 (.bxor 8947 8948) := by core033_kernel_decide
theorem stats8949 : actualRows8949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8949=7428 := by core033_kernel_decide
def partRows137 : List R1CS.Row := actualRows8886++actualRows8887++actualRows8888++actualRows8889++actualRows8890++actualRows8891++actualRows8892++actualRows8893++actualRows8894++actualRows8895++actualRows8896++actualRows8897++actualRows8898++actualRows8899++actualRows8900++actualRows8901++actualRows8902++actualRows8903++actualRows8904++actualRows8905++actualRows8906++actualRows8907++actualRows8908++actualRows8909++actualRows8910++actualRows8911++actualRows8912++actualRows8913++actualRows8914++actualRows8915++actualRows8916++actualRows8917++actualRows8918++actualRows8919++actualRows8920++actualRows8921++actualRows8922++actualRows8923++actualRows8924++actualRows8925++actualRows8926++actualRows8927++actualRows8928++actualRows8929++actualRows8930++actualRows8931++actualRows8932++actualRows8933++actualRows8934++actualRows8935++actualRows8936++actualRows8937++actualRows8938++actualRows8939++actualRows8940++actualRows8941++actualRows8942++actualRows8943++actualRows8944++actualRows8945++actualRows8946++actualRows8947++actualRows8948++actualRows8949
def partOps137 : List WordIR.Op := [.band 8835 8808,.bxor 8885 8886,.badd 8882 8887,.badd 8877 8888,.badd 8781 8877,.rotr 8890 6,.rotr 8890 11,.bxor 8891 8892,.rotr 8890 25,.bxor 8893 8894,.badd 8809 8895,.band 8890 8863,.bnot 8890,.band 8898 8836,.bxor 8897 8899,.badd 8896 8900,.literal (BitVec.ofNat 32 1508970993),.badd 8901 8902,.badd 8903 6919,.rotr 8889 2,.rotr 8889 13,.bxor 8905 8906,.rotr 8889 22,.bxor 8907 8908,.band 8889 8862,.band 8889 8835,.bxor 8910 8911,.band 8862 8835,.bxor 8912 8913,.badd 8909 8914,.badd 8904 8915,.badd 8808 8904,.rotr 8917 6,.rotr 8917 11,.bxor 8918 8919,.rotr 8917 25,.bxor 8920 8921,.badd 8836 8922,.band 8917 8890,.bnot 8917,.band 8925 8863,.bxor 8924 8926,.badd 8923 8927,.literal (BitVec.ofNat 32 2453635748),.badd 8928 8929,.badd 8930 6925,.rotr 8916 2,.rotr 8916 13,.bxor 8932 8933,.rotr 8916 22,.bxor 8934 8935,.band 8916 8889,.band 8916 8862,.bxor 8937 8938,.band 8889 8862,.bxor 8939 8940,.badd 8936 8941,.badd 8931 8942,.badd 8835 8931,.rotr 8944 6,.rotr 8944 11,.bxor 8945 8946,.rotr 8944 25,.bxor 8947 8948]
theorem partExact137 : partRows137=WordField.rows actualModulus 8886 partOps137 := by
  simp only [partRows137,partOps137,WordField.rows,rows8886,rows8887,rows8888,rows8889,rows8890,rows8891,rows8892,rows8893,rows8894,rows8895,rows8896,rows8897,rows8898,rows8899,rows8900,rows8901,rows8902,rows8903,rows8904,rows8905,rows8906,rows8907,rows8908,rows8909,rows8910,rows8911,rows8912,rows8913,rows8914,rows8915,rows8916,rows8917,rows8918,rows8919,rows8920,rows8921,rows8922,rows8923,rows8924,rows8925,rows8926,rows8927,rows8928,rows8929,rows8930,rows8931,rows8932,rows8933,rows8934,rows8935,rows8936,rows8937,rows8938,rows8939,rows8940,rows8941,rows8942,rows8943,rows8944,rows8945,rows8946,rows8947,rows8948,rows8949,List.append_assoc,List.append_nil]
theorem partLength137 : partOps137.length=64 := by decide
theorem partStats137 : partRows137.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows137=371448 := by
  simp only [partRows137,List.length_append,MatrixRowBlocks.rows_weight_append,stats8886.1,stats8886.2,stats8887.1,stats8887.2,stats8888.1,stats8888.2,stats8889.1,stats8889.2,stats8890.1,stats8890.2,stats8891.1,stats8891.2,stats8892.1,stats8892.2,stats8893.1,stats8893.2,stats8894.1,stats8894.2,stats8895.1,stats8895.2,stats8896.1,stats8896.2,stats8897.1,stats8897.2,stats8898.1,stats8898.2,stats8899.1,stats8899.2,stats8900.1,stats8900.2,stats8901.1,stats8901.2,stats8902.1,stats8902.2,stats8903.1,stats8903.2,stats8904.1,stats8904.2,stats8905.1,stats8905.2,stats8906.1,stats8906.2,stats8907.1,stats8907.2,stats8908.1,stats8908.2,stats8909.1,stats8909.2,stats8910.1,stats8910.2,stats8911.1,stats8911.2,stats8912.1,stats8912.2,stats8913.1,stats8913.2,stats8914.1,stats8914.2,stats8915.1,stats8915.2,stats8916.1,stats8916.2,stats8917.1,stats8917.2,stats8918.1,stats8918.2,stats8919.1,stats8919.2,stats8920.1,stats8920.2,stats8921.1,stats8921.2,stats8922.1,stats8922.2,stats8923.1,stats8923.2,stats8924.1,stats8924.2,stats8925.1,stats8925.2,stats8926.1,stats8926.2,stats8927.1,stats8927.2,stats8928.1,stats8928.2,stats8929.1,stats8929.2,stats8930.1,stats8930.2,stats8931.1,stats8931.2,stats8932.1,stats8932.2,stats8933.1,stats8933.2,stats8934.1,stats8934.2,stats8935.1,stats8935.2,stats8936.1,stats8936.2,stats8937.1,stats8937.2,stats8938.1,stats8938.2,stats8939.1,stats8939.2,stats8940.1,stats8940.2,stats8941.1,stats8941.2,stats8942.1,stats8942.2,stats8943.1,stats8943.2,stats8944.1,stats8944.2,stats8945.1,stats8945.2,stats8946.1,stats8946.2,stats8947.1,stats8947.2,stats8948.1,stats8948.2,stats8949.1,stats8949.2]
  decide
end AuthenticatedBranchRoundCheckedRows
