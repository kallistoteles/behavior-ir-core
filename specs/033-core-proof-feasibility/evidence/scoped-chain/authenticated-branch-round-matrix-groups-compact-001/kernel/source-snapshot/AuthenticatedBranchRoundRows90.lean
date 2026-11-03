import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData91
import AuthenticatedBranchRoundInstructionMatrixData92
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5878 : actualRows5878=WordField.canonicalRows actualModulus 5878 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5878 : actualRows5878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5878=2892 := by core033_kernel_decide
theorem rows5879 : actualRows5879=WordField.canonicalRows actualModulus 5879 (.badd 5877 5878) := by core033_kernel_decide
theorem stats5879 : actualRows5879.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5879=5388 := by core033_kernel_decide
theorem rows5880 : actualRows5880=WordField.canonicalRows actualModulus 5880 (.bnot 5879) := by core033_kernel_decide
theorem stats5880 : actualRows5880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5880=6276 := by core033_kernel_decide
theorem rows5881 : actualRows5881=WordField.canonicalRows actualModulus 5881 (.band 5880 2636) := by core033_kernel_decide
theorem stats5881 : actualRows5881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5881=5124 := by core033_kernel_decide
theorem rows5882 : actualRows5882=WordField.canonicalRows actualModulus 5882 (.bxor 5855 5881) := by core033_kernel_decide
theorem stats5882 : actualRows5882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5882=7428 := by core033_kernel_decide
theorem rows5883 : actualRows5883=WordField.canonicalRows actualModulus 5883 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5883 : actualRows5883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5883=2892 := by core033_kernel_decide
theorem rows5884 : actualRows5884=WordField.canonicalRows actualModulus 5884 (.bxor 1299 5883) := by core033_kernel_decide
theorem stats5884 : actualRows5884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5884=7428 := by core033_kernel_decide
theorem rows5885 : actualRows5885=WordField.canonicalRows actualModulus 5885 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5885 : actualRows5885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5885=2820 := by core033_kernel_decide
theorem rows5886 : actualRows5886=WordField.canonicalRows actualModulus 5886 (.bnot 5885) := by core033_kernel_decide
theorem stats5886 : actualRows5886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5886=6276 := by core033_kernel_decide
theorem rows5887 : actualRows5887=WordField.canonicalRows actualModulus 5887 (.band 5884 5886) := by core033_kernel_decide
theorem stats5887 : actualRows5887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5887=5124 := by core033_kernel_decide
theorem rows5888 : actualRows5888=WordField.canonicalRows actualModulus 5888 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5888 : actualRows5888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5888=2892 := by core033_kernel_decide
theorem rows5889 : actualRows5889=WordField.canonicalRows actualModulus 5889 (.bxor 1299 5888) := by core033_kernel_decide
theorem stats5889 : actualRows5889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5889=7428 := by core033_kernel_decide
theorem rows5890 : actualRows5890=WordField.canonicalRows actualModulus 5890 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5890 : actualRows5890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5890=2820 := by core033_kernel_decide
theorem rows5891 : actualRows5891=WordField.canonicalRows actualModulus 5891 (.bnot 5890) := by core033_kernel_decide
theorem stats5891 : actualRows5891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5891=6276 := by core033_kernel_decide
theorem rows5892 : actualRows5892=WordField.canonicalRows actualModulus 5892 (.bxor 5889 5891) := by core033_kernel_decide
theorem stats5892 : actualRows5892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5892=7428 := by core033_kernel_decide
theorem rows5893 : actualRows5893=WordField.canonicalRows actualModulus 5893 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5893 : actualRows5893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5893=2892 := by core033_kernel_decide
theorem rows5894 : actualRows5894=WordField.canonicalRows actualModulus 5894 (.bxor 1299 5893) := by core033_kernel_decide
theorem stats5894 : actualRows5894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5894=7428 := by core033_kernel_decide
theorem rows5895 : actualRows5895=WordField.canonicalRows actualModulus 5895 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5895 : actualRows5895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5895=2820 := by core033_kernel_decide
theorem rows5896 : actualRows5896=WordField.canonicalRows actualModulus 5896 (.bnot 5895) := by core033_kernel_decide
theorem stats5896 : actualRows5896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5896=6276 := by core033_kernel_decide
theorem rows5897 : actualRows5897=WordField.canonicalRows actualModulus 5897 (.badd 5894 5896) := by core033_kernel_decide
theorem stats5897 : actualRows5897.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5897=5388 := by core033_kernel_decide
theorem rows5898 : actualRows5898=WordField.canonicalRows actualModulus 5898 (.bnot 5897) := by core033_kernel_decide
theorem stats5898 : actualRows5898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5898=6276 := by core033_kernel_decide
theorem rows5899 : actualRows5899=WordField.canonicalRows actualModulus 5899 (.band 5892 5898) := by core033_kernel_decide
theorem stats5899 : actualRows5899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5899=5124 := by core033_kernel_decide
theorem rows5900 : actualRows5900=WordField.canonicalRows actualModulus 5900 (.bxor 5887 5899) := by core033_kernel_decide
theorem stats5900 : actualRows5900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5900=7428 := by core033_kernel_decide
theorem rows5901 : actualRows5901=WordField.canonicalRows actualModulus 5901 (.shr 5900 31) := by core033_kernel_decide
theorem stats5901 : actualRows5901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5901=2892 := by core033_kernel_decide
theorem rows5902 : actualRows5902=WordField.canonicalRows actualModulus 5902 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5902 : actualRows5902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5902=2892 := by core033_kernel_decide
theorem rows5903 : actualRows5903=WordField.canonicalRows actualModulus 5903 (.bxor 5901 5902) := by core033_kernel_decide
theorem stats5903 : actualRows5903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5903=7428 := by core033_kernel_decide
theorem rows5904 : actualRows5904=WordField.canonicalRows actualModulus 5904 (.bnot 5903) := by core033_kernel_decide
theorem stats5904 : actualRows5904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5904=6276 := by core033_kernel_decide
theorem rows5905 : actualRows5905=WordField.canonicalRows actualModulus 5905 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5905 : actualRows5905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5905=2892 := by core033_kernel_decide
theorem rows5906 : actualRows5906=WordField.canonicalRows actualModulus 5906 (.badd 5904 5905) := by core033_kernel_decide
theorem stats5906 : actualRows5906.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5906=5388 := by core033_kernel_decide
theorem rows5907 : actualRows5907=WordField.canonicalRows actualModulus 5907 (.band 5906 2831) := by core033_kernel_decide
theorem stats5907 : actualRows5907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5907=5124 := by core033_kernel_decide
theorem rows5908 : actualRows5908=WordField.canonicalRows actualModulus 5908 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5908 : actualRows5908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5908=2892 := by core033_kernel_decide
theorem rows5909 : actualRows5909=WordField.canonicalRows actualModulus 5909 (.bxor 1299 5908) := by core033_kernel_decide
theorem stats5909 : actualRows5909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5909=7428 := by core033_kernel_decide
theorem rows5910 : actualRows5910=WordField.canonicalRows actualModulus 5910 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5910 : actualRows5910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5910=2820 := by core033_kernel_decide
theorem rows5911 : actualRows5911=WordField.canonicalRows actualModulus 5911 (.bnot 5910) := by core033_kernel_decide
theorem stats5911 : actualRows5911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5911=6276 := by core033_kernel_decide
theorem rows5912 : actualRows5912=WordField.canonicalRows actualModulus 5912 (.band 5909 5911) := by core033_kernel_decide
theorem stats5912 : actualRows5912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5912=5124 := by core033_kernel_decide
theorem rows5913 : actualRows5913=WordField.canonicalRows actualModulus 5913 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5913 : actualRows5913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5913=2892 := by core033_kernel_decide
theorem rows5914 : actualRows5914=WordField.canonicalRows actualModulus 5914 (.bxor 1299 5913) := by core033_kernel_decide
theorem stats5914 : actualRows5914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5914=7428 := by core033_kernel_decide
theorem rows5915 : actualRows5915=WordField.canonicalRows actualModulus 5915 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5915 : actualRows5915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5915=2820 := by core033_kernel_decide
theorem rows5916 : actualRows5916=WordField.canonicalRows actualModulus 5916 (.bnot 5915) := by core033_kernel_decide
theorem stats5916 : actualRows5916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5916=6276 := by core033_kernel_decide
theorem rows5917 : actualRows5917=WordField.canonicalRows actualModulus 5917 (.bxor 5914 5916) := by core033_kernel_decide
theorem stats5917 : actualRows5917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5917=7428 := by core033_kernel_decide
theorem rows5918 : actualRows5918=WordField.canonicalRows actualModulus 5918 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5918 : actualRows5918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5918=2892 := by core033_kernel_decide
theorem rows5919 : actualRows5919=WordField.canonicalRows actualModulus 5919 (.bxor 1299 5918) := by core033_kernel_decide
theorem stats5919 : actualRows5919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5919=7428 := by core033_kernel_decide
theorem rows5920 : actualRows5920=WordField.canonicalRows actualModulus 5920 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5920 : actualRows5920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5920=2820 := by core033_kernel_decide
theorem rows5921 : actualRows5921=WordField.canonicalRows actualModulus 5921 (.bnot 5920) := by core033_kernel_decide
theorem stats5921 : actualRows5921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5921=6276 := by core033_kernel_decide
theorem rows5922 : actualRows5922=WordField.canonicalRows actualModulus 5922 (.badd 5919 5921) := by core033_kernel_decide
theorem stats5922 : actualRows5922.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5922=5388 := by core033_kernel_decide
theorem rows5923 : actualRows5923=WordField.canonicalRows actualModulus 5923 (.bnot 5922) := by core033_kernel_decide
theorem stats5923 : actualRows5923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5923=6276 := by core033_kernel_decide
theorem rows5924 : actualRows5924=WordField.canonicalRows actualModulus 5924 (.band 5917 5923) := by core033_kernel_decide
theorem stats5924 : actualRows5924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5924=5124 := by core033_kernel_decide
theorem rows5925 : actualRows5925=WordField.canonicalRows actualModulus 5925 (.bxor 5912 5924) := by core033_kernel_decide
theorem stats5925 : actualRows5925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5925=7428 := by core033_kernel_decide
theorem rows5926 : actualRows5926=WordField.canonicalRows actualModulus 5926 (.shr 5925 31) := by core033_kernel_decide
theorem stats5926 : actualRows5926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5926=2892 := by core033_kernel_decide
theorem rows5927 : actualRows5927=WordField.canonicalRows actualModulus 5927 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5927 : actualRows5927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5927=2892 := by core033_kernel_decide
theorem rows5928 : actualRows5928=WordField.canonicalRows actualModulus 5928 (.bxor 5926 5927) := by core033_kernel_decide
theorem stats5928 : actualRows5928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5928=7428 := by core033_kernel_decide
theorem rows5929 : actualRows5929=WordField.canonicalRows actualModulus 5929 (.bnot 5928) := by core033_kernel_decide
theorem stats5929 : actualRows5929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5929=6276 := by core033_kernel_decide
theorem rows5930 : actualRows5930=WordField.canonicalRows actualModulus 5930 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5930 : actualRows5930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5930=2892 := by core033_kernel_decide
theorem rows5931 : actualRows5931=WordField.canonicalRows actualModulus 5931 (.badd 5929 5930) := by core033_kernel_decide
theorem stats5931 : actualRows5931.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5931=5388 := by core033_kernel_decide
theorem rows5932 : actualRows5932=WordField.canonicalRows actualModulus 5932 (.bnot 5931) := by core033_kernel_decide
theorem stats5932 : actualRows5932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5932=6276 := by core033_kernel_decide
theorem rows5933 : actualRows5933=WordField.canonicalRows actualModulus 5933 (.band 5932 2639) := by core033_kernel_decide
theorem stats5933 : actualRows5933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5933=5124 := by core033_kernel_decide
theorem rows5934 : actualRows5934=WordField.canonicalRows actualModulus 5934 (.bxor 5907 5933) := by core033_kernel_decide
theorem stats5934 : actualRows5934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5934=7428 := by core033_kernel_decide
theorem rows5935 : actualRows5935=WordField.canonicalRows actualModulus 5935 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5935 : actualRows5935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5935=2892 := by core033_kernel_decide
theorem rows5936 : actualRows5936=WordField.canonicalRows actualModulus 5936 (.bxor 1299 5935) := by core033_kernel_decide
theorem stats5936 : actualRows5936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5936=7428 := by core033_kernel_decide
theorem rows5937 : actualRows5937=WordField.canonicalRows actualModulus 5937 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5937 : actualRows5937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5937=2820 := by core033_kernel_decide
theorem rows5938 : actualRows5938=WordField.canonicalRows actualModulus 5938 (.bnot 5937) := by core033_kernel_decide
theorem stats5938 : actualRows5938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5938=6276 := by core033_kernel_decide
theorem rows5939 : actualRows5939=WordField.canonicalRows actualModulus 5939 (.band 5936 5938) := by core033_kernel_decide
theorem stats5939 : actualRows5939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5939=5124 := by core033_kernel_decide
theorem rows5940 : actualRows5940=WordField.canonicalRows actualModulus 5940 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5940 : actualRows5940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5940=2892 := by core033_kernel_decide
theorem rows5941 : actualRows5941=WordField.canonicalRows actualModulus 5941 (.bxor 1299 5940) := by core033_kernel_decide
theorem stats5941 : actualRows5941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5941=7428 := by core033_kernel_decide
def partRows90 : List R1CS.Row := actualRows5878++actualRows5879++actualRows5880++actualRows5881++actualRows5882++actualRows5883++actualRows5884++actualRows5885++actualRows5886++actualRows5887++actualRows5888++actualRows5889++actualRows5890++actualRows5891++actualRows5892++actualRows5893++actualRows5894++actualRows5895++actualRows5896++actualRows5897++actualRows5898++actualRows5899++actualRows5900++actualRows5901++actualRows5902++actualRows5903++actualRows5904++actualRows5905++actualRows5906++actualRows5907++actualRows5908++actualRows5909++actualRows5910++actualRows5911++actualRows5912++actualRows5913++actualRows5914++actualRows5915++actualRows5916++actualRows5917++actualRows5918++actualRows5919++actualRows5920++actualRows5921++actualRows5922++actualRows5923++actualRows5924++actualRows5925++actualRows5926++actualRows5927++actualRows5928++actualRows5929++actualRows5930++actualRows5931++actualRows5932++actualRows5933++actualRows5934++actualRows5935++actualRows5936++actualRows5937++actualRows5938++actualRows5939++actualRows5940++actualRows5941
def partOps90 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 5877 5878,.bnot 5879,.band 5880 2636,.bxor 5855 5881,.literal (BitVec.ofNat 32 2),.bxor 1299 5883,.literal (BitVec.ofNat 32 0),.bnot 5885,.band 5884 5886,.literal (BitVec.ofNat 32 2),.bxor 1299 5888,.literal (BitVec.ofNat 32 0),.bnot 5890,.bxor 5889 5891,.literal (BitVec.ofNat 32 2),.bxor 1299 5893,.literal (BitVec.ofNat 32 0),.bnot 5895,.badd 5894 5896,.bnot 5897,.band 5892 5898,.bxor 5887 5899,.shr 5900 31,.literal (BitVec.ofNat 32 1),.bxor 5901 5902,.bnot 5903,.literal (BitVec.ofNat 32 1),.badd 5904 5905,.band 5906 2831,.literal (BitVec.ofNat 32 2),.bxor 1299 5908,.literal (BitVec.ofNat 32 0),.bnot 5910,.band 5909 5911,.literal (BitVec.ofNat 32 2),.bxor 1299 5913,.literal (BitVec.ofNat 32 0),.bnot 5915,.bxor 5914 5916,.literal (BitVec.ofNat 32 2),.bxor 1299 5918,.literal (BitVec.ofNat 32 0),.bnot 5920,.badd 5919 5921,.bnot 5922,.band 5917 5923,.bxor 5912 5924,.shr 5925 31,.literal (BitVec.ofNat 32 1),.bxor 5926 5927,.bnot 5928,.literal (BitVec.ofNat 32 1),.badd 5929 5930,.bnot 5931,.band 5932 2639,.bxor 5907 5933,.literal (BitVec.ofNat 32 2),.bxor 1299 5935,.literal (BitVec.ofNat 32 0),.bnot 5937,.band 5936 5938,.literal (BitVec.ofNat 32 2),.bxor 1299 5940]
theorem partExact90 : partRows90=WordField.rows actualModulus 5878 partOps90 := by
  simp only [partRows90,partOps90,WordField.rows,rows5878,rows5879,rows5880,rows5881,rows5882,rows5883,rows5884,rows5885,rows5886,rows5887,rows5888,rows5889,rows5890,rows5891,rows5892,rows5893,rows5894,rows5895,rows5896,rows5897,rows5898,rows5899,rows5900,rows5901,rows5902,rows5903,rows5904,rows5905,rows5906,rows5907,rows5908,rows5909,rows5910,rows5911,rows5912,rows5913,rows5914,rows5915,rows5916,rows5917,rows5918,rows5919,rows5920,rows5921,rows5922,rows5923,rows5924,rows5925,rows5926,rows5927,rows5928,rows5929,rows5930,rows5931,rows5932,rows5933,rows5934,rows5935,rows5936,rows5937,rows5938,rows5939,rows5940,rows5941,List.append_assoc,List.append_nil]
theorem partLength90 : partOps90.length=64 := by decide
theorem partStats90 : partRows90.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows90=331488 := by
  simp only [partRows90,List.length_append,MatrixRowBlocks.rows_weight_append,stats5878.1,stats5878.2,stats5879.1,stats5879.2,stats5880.1,stats5880.2,stats5881.1,stats5881.2,stats5882.1,stats5882.2,stats5883.1,stats5883.2,stats5884.1,stats5884.2,stats5885.1,stats5885.2,stats5886.1,stats5886.2,stats5887.1,stats5887.2,stats5888.1,stats5888.2,stats5889.1,stats5889.2,stats5890.1,stats5890.2,stats5891.1,stats5891.2,stats5892.1,stats5892.2,stats5893.1,stats5893.2,stats5894.1,stats5894.2,stats5895.1,stats5895.2,stats5896.1,stats5896.2,stats5897.1,stats5897.2,stats5898.1,stats5898.2,stats5899.1,stats5899.2,stats5900.1,stats5900.2,stats5901.1,stats5901.2,stats5902.1,stats5902.2,stats5903.1,stats5903.2,stats5904.1,stats5904.2,stats5905.1,stats5905.2,stats5906.1,stats5906.2,stats5907.1,stats5907.2,stats5908.1,stats5908.2,stats5909.1,stats5909.2,stats5910.1,stats5910.2,stats5911.1,stats5911.2,stats5912.1,stats5912.2,stats5913.1,stats5913.2,stats5914.1,stats5914.2,stats5915.1,stats5915.2,stats5916.1,stats5916.2,stats5917.1,stats5917.2,stats5918.1,stats5918.2,stats5919.1,stats5919.2,stats5920.1,stats5920.2,stats5921.1,stats5921.2,stats5922.1,stats5922.2,stats5923.1,stats5923.2,stats5924.1,stats5924.2,stats5925.1,stats5925.2,stats5926.1,stats5926.2,stats5927.1,stats5927.2,stats5928.1,stats5928.2,stats5929.1,stats5929.2,stats5930.1,stats5930.2,stats5931.1,stats5931.2,stats5932.1,stats5932.2,stats5933.1,stats5933.2,stats5934.1,stats5934.2,stats5935.1,stats5935.2,stats5936.1,stats5936.2,stats5937.1,stats5937.2,stats5938.1,stats5938.2,stats5939.1,stats5939.2,stats5940.1,stats5940.2,stats5941.1,stats5941.2]
  decide
end AuthenticatedBranchRoundCheckedRows
