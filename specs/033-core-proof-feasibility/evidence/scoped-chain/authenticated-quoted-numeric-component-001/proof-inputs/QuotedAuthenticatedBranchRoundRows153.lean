import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData154
import AuthenticatedBranchRoundInstructionMatrixData155
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9910 : actualRows9910=WordField.canonicalRows actualModulus 9910 (.band 9888 9834) := by core033_kernel_decide
theorem stats9910 : actualRows9910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9910=5124 := by core033_kernel_decide
theorem rows9911 : actualRows9911=WordField.canonicalRows actualModulus 9911 (.bxor 9909 9910) := by core033_kernel_decide
theorem stats9911 : actualRows9911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9911=7428 := by core033_kernel_decide
theorem rows9912 : actualRows9912=WordField.canonicalRows actualModulus 9912 (.band 9861 9834) := by core033_kernel_decide
theorem stats9912 : actualRows9912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9912=5124 := by core033_kernel_decide
theorem rows9913 : actualRows9913=WordField.canonicalRows actualModulus 9913 (.bxor 9911 9912) := by core033_kernel_decide
theorem stats9913 : actualRows9913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9913=7428 := by core033_kernel_decide
theorem rows9914 : actualRows9914=WordField.canonicalRows actualModulus 9914 (.badd 9908 9913) := by core033_kernel_decide
theorem stats9914 : actualRows9914.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9914=5388 := by core033_kernel_decide
theorem rows9915 : actualRows9915=WordField.canonicalRows actualModulus 9915 (.badd 9903 9914) := by core033_kernel_decide
theorem stats9915 : actualRows9915.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9915=5388 := by core033_kernel_decide
theorem rows9916 : actualRows9916=WordField.canonicalRows actualModulus 9916 (.badd 9807 9903) := by core033_kernel_decide
theorem stats9916 : actualRows9916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9916=5388 := by core033_kernel_decide
theorem rows9917 : actualRows9917=WordField.canonicalRows actualModulus 9917 (.rotr 9916 6) := by core033_kernel_decide
theorem stats9917 : actualRows9917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9917=5124 := by core033_kernel_decide
theorem rows9918 : actualRows9918=WordField.canonicalRows actualModulus 9918 (.rotr 9916 11) := by core033_kernel_decide
theorem stats9918 : actualRows9918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9918=5124 := by core033_kernel_decide
theorem rows9919 : actualRows9919=WordField.canonicalRows actualModulus 9919 (.bxor 9917 9918) := by core033_kernel_decide
theorem stats9919 : actualRows9919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9919=7428 := by core033_kernel_decide
theorem rows9920 : actualRows9920=WordField.canonicalRows actualModulus 9920 (.rotr 9916 25) := by core033_kernel_decide
theorem stats9920 : actualRows9920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9920=5124 := by core033_kernel_decide
theorem rows9921 : actualRows9921=WordField.canonicalRows actualModulus 9921 (.bxor 9919 9920) := by core033_kernel_decide
theorem stats9921 : actualRows9921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9921=7428 := by core033_kernel_decide
theorem rows9922 : actualRows9922=WordField.canonicalRows actualModulus 9922 (.badd 9835 9921) := by core033_kernel_decide
theorem stats9922 : actualRows9922.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9922=5388 := by core033_kernel_decide
theorem rows9923 : actualRows9923=WordField.canonicalRows actualModulus 9923 (.band 9916 9889) := by core033_kernel_decide
theorem stats9923 : actualRows9923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9923=5124 := by core033_kernel_decide
theorem rows9924 : actualRows9924=WordField.canonicalRows actualModulus 9924 (.bnot 9916) := by core033_kernel_decide
theorem stats9924 : actualRows9924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9924=6276 := by core033_kernel_decide
theorem rows9925 : actualRows9925=WordField.canonicalRows actualModulus 9925 (.band 9924 9862) := by core033_kernel_decide
theorem stats9925 : actualRows9925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9925=5124 := by core033_kernel_decide
theorem rows9926 : actualRows9926=WordField.canonicalRows actualModulus 9926 (.bxor 9923 9925) := by core033_kernel_decide
theorem stats9926 : actualRows9926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9926=7428 := by core033_kernel_decide
theorem rows9927 : actualRows9927=WordField.canonicalRows actualModulus 9927 (.badd 9922 9926) := by core033_kernel_decide
theorem stats9927 : actualRows9927.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9927=5388 := by core033_kernel_decide
theorem rows9928 : actualRows9928=WordField.canonicalRows actualModulus 9928 (.literal (BitVec.ofNat 32 3345764771)) := by core033_kernel_decide
theorem stats9928 : actualRows9928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9928=3972 := by core033_kernel_decide
theorem rows9929 : actualRows9929=WordField.canonicalRows actualModulus 9929 (.badd 9927 9928) := by core033_kernel_decide
theorem stats9929 : actualRows9929.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9929=5388 := by core033_kernel_decide
theorem rows9930 : actualRows9930=WordField.canonicalRows actualModulus 9930 (.badd 9929 8495) := by core033_kernel_decide
theorem stats9930 : actualRows9930.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9930=5388 := by core033_kernel_decide
theorem rows9931 : actualRows9931=WordField.canonicalRows actualModulus 9931 (.rotr 9915 2) := by core033_kernel_decide
theorem stats9931 : actualRows9931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9931=5124 := by core033_kernel_decide
theorem rows9932 : actualRows9932=WordField.canonicalRows actualModulus 9932 (.rotr 9915 13) := by core033_kernel_decide
theorem stats9932 : actualRows9932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9932=5124 := by core033_kernel_decide
theorem rows9933 : actualRows9933=WordField.canonicalRows actualModulus 9933 (.bxor 9931 9932) := by core033_kernel_decide
theorem stats9933 : actualRows9933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9933=7428 := by core033_kernel_decide
theorem rows9934 : actualRows9934=WordField.canonicalRows actualModulus 9934 (.rotr 9915 22) := by core033_kernel_decide
theorem stats9934 : actualRows9934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9934=5124 := by core033_kernel_decide
theorem rows9935 : actualRows9935=WordField.canonicalRows actualModulus 9935 (.bxor 9933 9934) := by core033_kernel_decide
theorem stats9935 : actualRows9935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9935=7428 := by core033_kernel_decide
theorem rows9936 : actualRows9936=WordField.canonicalRows actualModulus 9936 (.band 9915 9888) := by core033_kernel_decide
theorem stats9936 : actualRows9936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9936=5124 := by core033_kernel_decide
theorem rows9937 : actualRows9937=WordField.canonicalRows actualModulus 9937 (.band 9915 9861) := by core033_kernel_decide
theorem stats9937 : actualRows9937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9937=5124 := by core033_kernel_decide
theorem rows9938 : actualRows9938=WordField.canonicalRows actualModulus 9938 (.bxor 9936 9937) := by core033_kernel_decide
theorem stats9938 : actualRows9938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9938=7428 := by core033_kernel_decide
theorem rows9939 : actualRows9939=WordField.canonicalRows actualModulus 9939 (.band 9888 9861) := by core033_kernel_decide
theorem stats9939 : actualRows9939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9939=5124 := by core033_kernel_decide
theorem rows9940 : actualRows9940=WordField.canonicalRows actualModulus 9940 (.bxor 9938 9939) := by core033_kernel_decide
theorem stats9940 : actualRows9940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9940=7428 := by core033_kernel_decide
theorem rows9941 : actualRows9941=WordField.canonicalRows actualModulus 9941 (.badd 9935 9940) := by core033_kernel_decide
theorem stats9941 : actualRows9941.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9941=5388 := by core033_kernel_decide
theorem rows9942 : actualRows9942=WordField.canonicalRows actualModulus 9942 (.badd 9930 9941) := by core033_kernel_decide
theorem stats9942 : actualRows9942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9942=5388 := by core033_kernel_decide
theorem rows9943 : actualRows9943=WordField.canonicalRows actualModulus 9943 (.badd 9834 9930) := by core033_kernel_decide
theorem stats9943 : actualRows9943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9943=5388 := by core033_kernel_decide
theorem rows9944 : actualRows9944=WordField.canonicalRows actualModulus 9944 (.rotr 9943 6) := by core033_kernel_decide
theorem stats9944 : actualRows9944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9944=5124 := by core033_kernel_decide
theorem rows9945 : actualRows9945=WordField.canonicalRows actualModulus 9945 (.rotr 9943 11) := by core033_kernel_decide
theorem stats9945 : actualRows9945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9945=5124 := by core033_kernel_decide
theorem rows9946 : actualRows9946=WordField.canonicalRows actualModulus 9946 (.bxor 9944 9945) := by core033_kernel_decide
theorem stats9946 : actualRows9946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9946=7428 := by core033_kernel_decide
theorem rows9947 : actualRows9947=WordField.canonicalRows actualModulus 9947 (.rotr 9943 25) := by core033_kernel_decide
theorem stats9947 : actualRows9947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9947=5124 := by core033_kernel_decide
theorem rows9948 : actualRows9948=WordField.canonicalRows actualModulus 9948 (.bxor 9946 9947) := by core033_kernel_decide
theorem stats9948 : actualRows9948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9948=7428 := by core033_kernel_decide
theorem rows9949 : actualRows9949=WordField.canonicalRows actualModulus 9949 (.badd 9862 9948) := by core033_kernel_decide
theorem stats9949 : actualRows9949.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9949=5388 := by core033_kernel_decide
theorem rows9950 : actualRows9950=WordField.canonicalRows actualModulus 9950 (.band 9943 9916) := by core033_kernel_decide
theorem stats9950 : actualRows9950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9950=5124 := by core033_kernel_decide
theorem rows9951 : actualRows9951=WordField.canonicalRows actualModulus 9951 (.bnot 9943) := by core033_kernel_decide
theorem stats9951 : actualRows9951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9951=6276 := by core033_kernel_decide
theorem rows9952 : actualRows9952=WordField.canonicalRows actualModulus 9952 (.band 9951 9889) := by core033_kernel_decide
theorem stats9952 : actualRows9952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9952=5124 := by core033_kernel_decide
theorem rows9953 : actualRows9953=WordField.canonicalRows actualModulus 9953 (.bxor 9950 9952) := by core033_kernel_decide
theorem stats9953 : actualRows9953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9953=7428 := by core033_kernel_decide
theorem rows9954 : actualRows9954=WordField.canonicalRows actualModulus 9954 (.badd 9949 9953) := by core033_kernel_decide
theorem stats9954 : actualRows9954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9954=5388 := by core033_kernel_decide
theorem rows9955 : actualRows9955=WordField.canonicalRows actualModulus 9955 (.literal (BitVec.ofNat 32 3516065817)) := by core033_kernel_decide
theorem stats9955 : actualRows9955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9955=3828 := by core033_kernel_decide
theorem rows9956 : actualRows9956=WordField.canonicalRows actualModulus 9956 (.badd 9954 9955) := by core033_kernel_decide
theorem stats9956 : actualRows9956.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9956=5388 := by core033_kernel_decide
theorem rows9957 : actualRows9957=WordField.canonicalRows actualModulus 9957 (.badd 9956 8508) := by core033_kernel_decide
theorem stats9957 : actualRows9957.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9957=5388 := by core033_kernel_decide
theorem rows9958 : actualRows9958=WordField.canonicalRows actualModulus 9958 (.rotr 9942 2) := by core033_kernel_decide
theorem stats9958 : actualRows9958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9958=5124 := by core033_kernel_decide
theorem rows9959 : actualRows9959=WordField.canonicalRows actualModulus 9959 (.rotr 9942 13) := by core033_kernel_decide
theorem stats9959 : actualRows9959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9959=5124 := by core033_kernel_decide
theorem rows9960 : actualRows9960=WordField.canonicalRows actualModulus 9960 (.bxor 9958 9959) := by core033_kernel_decide
theorem stats9960 : actualRows9960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9960=7428 := by core033_kernel_decide
theorem rows9961 : actualRows9961=WordField.canonicalRows actualModulus 9961 (.rotr 9942 22) := by core033_kernel_decide
theorem stats9961 : actualRows9961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9961=5124 := by core033_kernel_decide
theorem rows9962 : actualRows9962=WordField.canonicalRows actualModulus 9962 (.bxor 9960 9961) := by core033_kernel_decide
theorem stats9962 : actualRows9962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9962=7428 := by core033_kernel_decide
theorem rows9963 : actualRows9963=WordField.canonicalRows actualModulus 9963 (.band 9942 9915) := by core033_kernel_decide
theorem stats9963 : actualRows9963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9963=5124 := by core033_kernel_decide
theorem rows9964 : actualRows9964=WordField.canonicalRows actualModulus 9964 (.band 9942 9888) := by core033_kernel_decide
theorem stats9964 : actualRows9964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9964=5124 := by core033_kernel_decide
theorem rows9965 : actualRows9965=WordField.canonicalRows actualModulus 9965 (.bxor 9963 9964) := by core033_kernel_decide
theorem stats9965 : actualRows9965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9965=7428 := by core033_kernel_decide
theorem rows9966 : actualRows9966=WordField.canonicalRows actualModulus 9966 (.band 9915 9888) := by core033_kernel_decide
theorem stats9966 : actualRows9966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9966=5124 := by core033_kernel_decide
theorem rows9967 : actualRows9967=WordField.canonicalRows actualModulus 9967 (.bxor 9965 9966) := by core033_kernel_decide
theorem stats9967 : actualRows9967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9967=7428 := by core033_kernel_decide
theorem rows9968 : actualRows9968=WordField.canonicalRows actualModulus 9968 (.badd 9962 9967) := by core033_kernel_decide
theorem stats9968 : actualRows9968.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9968=5388 := by core033_kernel_decide
theorem rows9969 : actualRows9969=WordField.canonicalRows actualModulus 9969 (.badd 9957 9968) := by core033_kernel_decide
theorem stats9969 : actualRows9969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9969=5388 := by core033_kernel_decide
theorem rows9970 : actualRows9970=WordField.canonicalRows actualModulus 9970 (.badd 9861 9957) := by core033_kernel_decide
theorem stats9970 : actualRows9970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9970=5388 := by core033_kernel_decide
theorem rows9971 : actualRows9971=WordField.canonicalRows actualModulus 9971 (.rotr 9970 6) := by core033_kernel_decide
theorem stats9971 : actualRows9971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9971=5124 := by core033_kernel_decide
theorem rows9972 : actualRows9972=WordField.canonicalRows actualModulus 9972 (.rotr 9970 11) := by core033_kernel_decide
theorem stats9972 : actualRows9972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9972=5124 := by core033_kernel_decide
theorem rows9973 : actualRows9973=WordField.canonicalRows actualModulus 9973 (.bxor 9971 9972) := by core033_kernel_decide
theorem stats9973 : actualRows9973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9973=7428 := by core033_kernel_decide
def partRows153 : List R1CS.Row := actualRows9910++actualRows9911++actualRows9912++actualRows9913++actualRows9914++actualRows9915++actualRows9916++actualRows9917++actualRows9918++actualRows9919++actualRows9920++actualRows9921++actualRows9922++actualRows9923++actualRows9924++actualRows9925++actualRows9926++actualRows9927++actualRows9928++actualRows9929++actualRows9930++actualRows9931++actualRows9932++actualRows9933++actualRows9934++actualRows9935++actualRows9936++actualRows9937++actualRows9938++actualRows9939++actualRows9940++actualRows9941++actualRows9942++actualRows9943++actualRows9944++actualRows9945++actualRows9946++actualRows9947++actualRows9948++actualRows9949++actualRows9950++actualRows9951++actualRows9952++actualRows9953++actualRows9954++actualRows9955++actualRows9956++actualRows9957++actualRows9958++actualRows9959++actualRows9960++actualRows9961++actualRows9962++actualRows9963++actualRows9964++actualRows9965++actualRows9966++actualRows9967++actualRows9968++actualRows9969++actualRows9970++actualRows9971++actualRows9972++actualRows9973
def partOps153 : List WordIR.Op := [.band 9888 9834,.bxor 9909 9910,.band 9861 9834,.bxor 9911 9912,.badd 9908 9913,.badd 9903 9914,.badd 9807 9903,.rotr 9916 6,.rotr 9916 11,.bxor 9917 9918,.rotr 9916 25,.bxor 9919 9920,.badd 9835 9921,.band 9916 9889,.bnot 9916,.band 9924 9862,.bxor 9923 9925,.badd 9922 9926,.literal (BitVec.ofNat 32 3345764771),.badd 9927 9928,.badd 9929 8495,.rotr 9915 2,.rotr 9915 13,.bxor 9931 9932,.rotr 9915 22,.bxor 9933 9934,.band 9915 9888,.band 9915 9861,.bxor 9936 9937,.band 9888 9861,.bxor 9938 9939,.badd 9935 9940,.badd 9930 9941,.badd 9834 9930,.rotr 9943 6,.rotr 9943 11,.bxor 9944 9945,.rotr 9943 25,.bxor 9946 9947,.badd 9862 9948,.band 9943 9916,.bnot 9943,.band 9951 9889,.bxor 9950 9952,.badd 9949 9953,.literal (BitVec.ofNat 32 3516065817),.badd 9954 9955,.badd 9956 8508,.rotr 9942 2,.rotr 9942 13,.bxor 9958 9959,.rotr 9942 22,.bxor 9960 9961,.band 9942 9915,.band 9942 9888,.bxor 9963 9964,.band 9915 9888,.bxor 9965 9966,.badd 9962 9967,.badd 9957 9968,.badd 9861 9957,.rotr 9970 6,.rotr 9970 11,.bxor 9971 9972]
theorem partExact153 : partRows153=WordField.rows actualModulus 9910 partOps153 := by
  simp only [partRows153,partOps153,WordField.rows,rows9910,rows9911,rows9912,rows9913,rows9914,rows9915,rows9916,rows9917,rows9918,rows9919,rows9920,rows9921,rows9922,rows9923,rows9924,rows9925,rows9926,rows9927,rows9928,rows9929,rows9930,rows9931,rows9932,rows9933,rows9934,rows9935,rows9936,rows9937,rows9938,rows9939,rows9940,rows9941,rows9942,rows9943,rows9944,rows9945,rows9946,rows9947,rows9948,rows9949,rows9950,rows9951,rows9952,rows9953,rows9954,rows9955,rows9956,rows9957,rows9958,rows9959,rows9960,rows9961,rows9962,rows9963,rows9964,rows9965,rows9966,rows9967,rows9968,rows9969,rows9970,rows9971,rows9972,rows9973,List.append_assoc,List.append_nil]
theorem partLength153 : partOps153.length=64 := by decide
theorem partStats153 : partRows153.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows153=371448 := by
  simp only [partRows153,List.length_append,MatrixRowBlocks.rows_weight_append,stats9910.1,stats9910.2,stats9911.1,stats9911.2,stats9912.1,stats9912.2,stats9913.1,stats9913.2,stats9914.1,stats9914.2,stats9915.1,stats9915.2,stats9916.1,stats9916.2,stats9917.1,stats9917.2,stats9918.1,stats9918.2,stats9919.1,stats9919.2,stats9920.1,stats9920.2,stats9921.1,stats9921.2,stats9922.1,stats9922.2,stats9923.1,stats9923.2,stats9924.1,stats9924.2,stats9925.1,stats9925.2,stats9926.1,stats9926.2,stats9927.1,stats9927.2,stats9928.1,stats9928.2,stats9929.1,stats9929.2,stats9930.1,stats9930.2,stats9931.1,stats9931.2,stats9932.1,stats9932.2,stats9933.1,stats9933.2,stats9934.1,stats9934.2,stats9935.1,stats9935.2,stats9936.1,stats9936.2,stats9937.1,stats9937.2,stats9938.1,stats9938.2,stats9939.1,stats9939.2,stats9940.1,stats9940.2,stats9941.1,stats9941.2,stats9942.1,stats9942.2,stats9943.1,stats9943.2,stats9944.1,stats9944.2,stats9945.1,stats9945.2,stats9946.1,stats9946.2,stats9947.1,stats9947.2,stats9948.1,stats9948.2,stats9949.1,stats9949.2,stats9950.1,stats9950.2,stats9951.1,stats9951.2,stats9952.1,stats9952.2,stats9953.1,stats9953.2,stats9954.1,stats9954.2,stats9955.1,stats9955.2,stats9956.1,stats9956.2,stats9957.1,stats9957.2,stats9958.1,stats9958.2,stats9959.1,stats9959.2,stats9960.1,stats9960.2,stats9961.1,stats9961.2,stats9962.1,stats9962.2,stats9963.1,stats9963.2,stats9964.1,stats9964.2,stats9965.1,stats9965.2,stats9966.1,stats9966.2,stats9967.1,stats9967.2,stats9968.1,stats9968.2,stats9969.1,stats9969.2,stats9970.1,stats9970.2,stats9971.1,stats9971.2,stats9972.1,stats9972.2,stats9973.1,stats9973.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
