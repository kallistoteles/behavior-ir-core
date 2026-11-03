import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData107
import AuthenticatedBranchRoundInstructionMatrixData108
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6902 : actualRows6902=WordField.canonicalRows actualModulus 6902 (.rotr 4218 8) := by core033_kernel_decide
theorem stats6902 : actualRows6902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6902=5124 := by core033_kernel_decide
theorem rows6903 : actualRows6903=WordField.canonicalRows actualModulus 6903 (.rotr 4270 16) := by core033_kernel_decide
theorem stats6903 : actualRows6903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6903=5124 := by core033_kernel_decide
theorem rows6904 : actualRows6904=WordField.canonicalRows actualModulus 6904 (.badd 6902 6903) := by core033_kernel_decide
theorem stats6904 : actualRows6904.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6904=5388 := by core033_kernel_decide
theorem rows6905 : actualRows6905=WordField.canonicalRows actualModulus 6905 (.rotr 4322 24) := by core033_kernel_decide
theorem stats6905 : actualRows6905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6905=5124 := by core033_kernel_decide
theorem rows6906 : actualRows6906=WordField.canonicalRows actualModulus 6906 (.badd 6904 6905) := by core033_kernel_decide
theorem stats6906 : actualRows6906.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6906=5388 := by core033_kernel_decide
theorem rows6907 : actualRows6907=WordField.canonicalRows actualModulus 6907 (.badd 6906 4374) := by core033_kernel_decide
theorem stats6907 : actualRows6907.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6907=5388 := by core033_kernel_decide
theorem rows6908 : actualRows6908=WordField.canonicalRows actualModulus 6908 (.rotr 4426 8) := by core033_kernel_decide
theorem stats6908 : actualRows6908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6908=5124 := by core033_kernel_decide
theorem rows6909 : actualRows6909=WordField.canonicalRows actualModulus 6909 (.rotr 4478 16) := by core033_kernel_decide
theorem stats6909 : actualRows6909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6909=5124 := by core033_kernel_decide
theorem rows6910 : actualRows6910=WordField.canonicalRows actualModulus 6910 (.badd 6908 6909) := by core033_kernel_decide
theorem stats6910 : actualRows6910.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6910=5388 := by core033_kernel_decide
theorem rows6911 : actualRows6911=WordField.canonicalRows actualModulus 6911 (.rotr 4530 24) := by core033_kernel_decide
theorem stats6911 : actualRows6911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6911=5124 := by core033_kernel_decide
theorem rows6912 : actualRows6912=WordField.canonicalRows actualModulus 6912 (.badd 6910 6911) := by core033_kernel_decide
theorem stats6912 : actualRows6912.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6912=5388 := by core033_kernel_decide
theorem rows6913 : actualRows6913=WordField.canonicalRows actualModulus 6913 (.badd 6912 4582) := by core033_kernel_decide
theorem stats6913 : actualRows6913.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6913=5388 := by core033_kernel_decide
theorem rows6914 : actualRows6914=WordField.canonicalRows actualModulus 6914 (.rotr 4634 8) := by core033_kernel_decide
theorem stats6914 : actualRows6914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6914=5124 := by core033_kernel_decide
theorem rows6915 : actualRows6915=WordField.canonicalRows actualModulus 6915 (.rotr 4686 16) := by core033_kernel_decide
theorem stats6915 : actualRows6915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6915=5124 := by core033_kernel_decide
theorem rows6916 : actualRows6916=WordField.canonicalRows actualModulus 6916 (.badd 6914 6915) := by core033_kernel_decide
theorem stats6916 : actualRows6916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6916=5388 := by core033_kernel_decide
theorem rows6917 : actualRows6917=WordField.canonicalRows actualModulus 6917 (.rotr 4738 24) := by core033_kernel_decide
theorem stats6917 : actualRows6917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6917=5124 := by core033_kernel_decide
theorem rows6918 : actualRows6918=WordField.canonicalRows actualModulus 6918 (.badd 6916 6917) := by core033_kernel_decide
theorem stats6918 : actualRows6918.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6918=5388 := by core033_kernel_decide
theorem rows6919 : actualRows6919=WordField.canonicalRows actualModulus 6919 (.badd 6918 4790) := by core033_kernel_decide
theorem stats6919 : actualRows6919.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6919=5388 := by core033_kernel_decide
theorem rows6920 : actualRows6920=WordField.canonicalRows actualModulus 6920 (.rotr 4842 8) := by core033_kernel_decide
theorem stats6920 : actualRows6920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6920=5124 := by core033_kernel_decide
theorem rows6921 : actualRows6921=WordField.canonicalRows actualModulus 6921 (.rotr 4894 16) := by core033_kernel_decide
theorem stats6921 : actualRows6921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6921=5124 := by core033_kernel_decide
theorem rows6922 : actualRows6922=WordField.canonicalRows actualModulus 6922 (.badd 6920 6921) := by core033_kernel_decide
theorem stats6922 : actualRows6922.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6922=5388 := by core033_kernel_decide
theorem rows6923 : actualRows6923=WordField.canonicalRows actualModulus 6923 (.rotr 4946 24) := by core033_kernel_decide
theorem stats6923 : actualRows6923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6923=5124 := by core033_kernel_decide
theorem rows6924 : actualRows6924=WordField.canonicalRows actualModulus 6924 (.badd 6922 6923) := by core033_kernel_decide
theorem stats6924 : actualRows6924.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6924=5388 := by core033_kernel_decide
theorem rows6925 : actualRows6925=WordField.canonicalRows actualModulus 6925 (.badd 6924 4998) := by core033_kernel_decide
theorem stats6925 : actualRows6925.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6925=5388 := by core033_kernel_decide
theorem rows6926 : actualRows6926=WordField.canonicalRows actualModulus 6926 (.rotr 5050 8) := by core033_kernel_decide
theorem stats6926 : actualRows6926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6926=5124 := by core033_kernel_decide
theorem rows6927 : actualRows6927=WordField.canonicalRows actualModulus 6927 (.rotr 5102 16) := by core033_kernel_decide
theorem stats6927 : actualRows6927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6927=5124 := by core033_kernel_decide
theorem rows6928 : actualRows6928=WordField.canonicalRows actualModulus 6928 (.badd 6926 6927) := by core033_kernel_decide
theorem stats6928 : actualRows6928.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6928=5388 := by core033_kernel_decide
theorem rows6929 : actualRows6929=WordField.canonicalRows actualModulus 6929 (.rotr 5154 24) := by core033_kernel_decide
theorem stats6929 : actualRows6929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6929=5124 := by core033_kernel_decide
theorem rows6930 : actualRows6930=WordField.canonicalRows actualModulus 6930 (.badd 6928 6929) := by core033_kernel_decide
theorem stats6930 : actualRows6930.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6930=5388 := by core033_kernel_decide
theorem rows6931 : actualRows6931=WordField.canonicalRows actualModulus 6931 (.badd 6930 5206) := by core033_kernel_decide
theorem stats6931 : actualRows6931.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6931=5388 := by core033_kernel_decide
theorem rows6932 : actualRows6932=WordField.canonicalRows actualModulus 6932 (.rotr 5258 8) := by core033_kernel_decide
theorem stats6932 : actualRows6932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6932=5124 := by core033_kernel_decide
theorem rows6933 : actualRows6933=WordField.canonicalRows actualModulus 6933 (.rotr 5310 16) := by core033_kernel_decide
theorem stats6933 : actualRows6933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6933=5124 := by core033_kernel_decide
theorem rows6934 : actualRows6934=WordField.canonicalRows actualModulus 6934 (.badd 6932 6933) := by core033_kernel_decide
theorem stats6934 : actualRows6934.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6934=5388 := by core033_kernel_decide
theorem rows6935 : actualRows6935=WordField.canonicalRows actualModulus 6935 (.rotr 5362 24) := by core033_kernel_decide
theorem stats6935 : actualRows6935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6935=5124 := by core033_kernel_decide
theorem rows6936 : actualRows6936=WordField.canonicalRows actualModulus 6936 (.badd 6934 6935) := by core033_kernel_decide
theorem stats6936 : actualRows6936.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6936=5388 := by core033_kernel_decide
theorem rows6937 : actualRows6937=WordField.canonicalRows actualModulus 6937 (.badd 6936 5414) := by core033_kernel_decide
theorem stats6937 : actualRows6937.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6937=5388 := by core033_kernel_decide
theorem rows6938 : actualRows6938=WordField.canonicalRows actualModulus 6938 (.rotr 5466 8) := by core033_kernel_decide
theorem stats6938 : actualRows6938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6938=5124 := by core033_kernel_decide
theorem rows6939 : actualRows6939=WordField.canonicalRows actualModulus 6939 (.rotr 5518 16) := by core033_kernel_decide
theorem stats6939 : actualRows6939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6939=5124 := by core033_kernel_decide
theorem rows6940 : actualRows6940=WordField.canonicalRows actualModulus 6940 (.badd 6938 6939) := by core033_kernel_decide
theorem stats6940 : actualRows6940.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6940=5388 := by core033_kernel_decide
theorem rows6941 : actualRows6941=WordField.canonicalRows actualModulus 6941 (.rotr 5570 24) := by core033_kernel_decide
theorem stats6941 : actualRows6941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6941=5124 := by core033_kernel_decide
theorem rows6942 : actualRows6942=WordField.canonicalRows actualModulus 6942 (.badd 6940 6941) := by core033_kernel_decide
theorem stats6942 : actualRows6942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6942=5388 := by core033_kernel_decide
theorem rows6943 : actualRows6943=WordField.canonicalRows actualModulus 6943 (.badd 6942 5622) := by core033_kernel_decide
theorem stats6943 : actualRows6943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6943=5388 := by core033_kernel_decide
theorem rows6944 : actualRows6944=WordField.canonicalRows actualModulus 6944 (.rotr 5674 8) := by core033_kernel_decide
theorem stats6944 : actualRows6944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6944=5124 := by core033_kernel_decide
theorem rows6945 : actualRows6945=WordField.canonicalRows actualModulus 6945 (.rotr 5726 16) := by core033_kernel_decide
theorem stats6945 : actualRows6945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6945=5124 := by core033_kernel_decide
theorem rows6946 : actualRows6946=WordField.canonicalRows actualModulus 6946 (.badd 6944 6945) := by core033_kernel_decide
theorem stats6946 : actualRows6946.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6946=5388 := by core033_kernel_decide
theorem rows6947 : actualRows6947=WordField.canonicalRows actualModulus 6947 (.rotr 5778 24) := by core033_kernel_decide
theorem stats6947 : actualRows6947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6947=5124 := by core033_kernel_decide
theorem rows6948 : actualRows6948=WordField.canonicalRows actualModulus 6948 (.badd 6946 6947) := by core033_kernel_decide
theorem stats6948 : actualRows6948.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6948=5388 := by core033_kernel_decide
theorem rows6949 : actualRows6949=WordField.canonicalRows actualModulus 6949 (.badd 6948 5830) := by core033_kernel_decide
theorem stats6949 : actualRows6949.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6949=5388 := by core033_kernel_decide
theorem rows6950 : actualRows6950=WordField.canonicalRows actualModulus 6950 (.rotr 5882 8) := by core033_kernel_decide
theorem stats6950 : actualRows6950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6950=5124 := by core033_kernel_decide
theorem rows6951 : actualRows6951=WordField.canonicalRows actualModulus 6951 (.rotr 5934 16) := by core033_kernel_decide
theorem stats6951 : actualRows6951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6951=5124 := by core033_kernel_decide
theorem rows6952 : actualRows6952=WordField.canonicalRows actualModulus 6952 (.badd 6950 6951) := by core033_kernel_decide
theorem stats6952 : actualRows6952.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6952=5388 := by core033_kernel_decide
theorem rows6953 : actualRows6953=WordField.canonicalRows actualModulus 6953 (.rotr 5986 24) := by core033_kernel_decide
theorem stats6953 : actualRows6953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6953=5124 := by core033_kernel_decide
theorem rows6954 : actualRows6954=WordField.canonicalRows actualModulus 6954 (.badd 6952 6953) := by core033_kernel_decide
theorem stats6954 : actualRows6954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6954=5388 := by core033_kernel_decide
theorem rows6955 : actualRows6955=WordField.canonicalRows actualModulus 6955 (.badd 6954 6038) := by core033_kernel_decide
theorem stats6955 : actualRows6955.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6955=5388 := by core033_kernel_decide
theorem rows6956 : actualRows6956=WordField.canonicalRows actualModulus 6956 (.rotr 6090 8) := by core033_kernel_decide
theorem stats6956 : actualRows6956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6956=5124 := by core033_kernel_decide
theorem rows6957 : actualRows6957=WordField.canonicalRows actualModulus 6957 (.rotr 6142 16) := by core033_kernel_decide
theorem stats6957 : actualRows6957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6957=5124 := by core033_kernel_decide
theorem rows6958 : actualRows6958=WordField.canonicalRows actualModulus 6958 (.badd 6956 6957) := by core033_kernel_decide
theorem stats6958 : actualRows6958.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6958=5388 := by core033_kernel_decide
theorem rows6959 : actualRows6959=WordField.canonicalRows actualModulus 6959 (.rotr 6194 24) := by core033_kernel_decide
theorem stats6959 : actualRows6959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6959=5124 := by core033_kernel_decide
theorem rows6960 : actualRows6960=WordField.canonicalRows actualModulus 6960 (.badd 6958 6959) := by core033_kernel_decide
theorem stats6960 : actualRows6960.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6960=5388 := by core033_kernel_decide
theorem rows6961 : actualRows6961=WordField.canonicalRows actualModulus 6961 (.badd 6960 6247) := by core033_kernel_decide
theorem stats6961 : actualRows6961.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6961=5388 := by core033_kernel_decide
theorem rows6962 : actualRows6962=WordField.canonicalRows actualModulus 6962 (.rotr 6300 8) := by core033_kernel_decide
theorem stats6962 : actualRows6962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6962=5124 := by core033_kernel_decide
theorem rows6963 : actualRows6963=WordField.canonicalRows actualModulus 6963 (.rotr 6353 16) := by core033_kernel_decide
theorem stats6963 : actualRows6963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6963=5124 := by core033_kernel_decide
theorem rows6964 : actualRows6964=WordField.canonicalRows actualModulus 6964 (.badd 6962 6963) := by core033_kernel_decide
theorem stats6964 : actualRows6964.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6964=5388 := by core033_kernel_decide
theorem rows6965 : actualRows6965=WordField.canonicalRows actualModulus 6965 (.rotr 6406 24) := by core033_kernel_decide
theorem stats6965 : actualRows6965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6965=5124 := by core033_kernel_decide
def partRows106 : List R1CS.Row := actualRows6902++actualRows6903++actualRows6904++actualRows6905++actualRows6906++actualRows6907++actualRows6908++actualRows6909++actualRows6910++actualRows6911++actualRows6912++actualRows6913++actualRows6914++actualRows6915++actualRows6916++actualRows6917++actualRows6918++actualRows6919++actualRows6920++actualRows6921++actualRows6922++actualRows6923++actualRows6924++actualRows6925++actualRows6926++actualRows6927++actualRows6928++actualRows6929++actualRows6930++actualRows6931++actualRows6932++actualRows6933++actualRows6934++actualRows6935++actualRows6936++actualRows6937++actualRows6938++actualRows6939++actualRows6940++actualRows6941++actualRows6942++actualRows6943++actualRows6944++actualRows6945++actualRows6946++actualRows6947++actualRows6948++actualRows6949++actualRows6950++actualRows6951++actualRows6952++actualRows6953++actualRows6954++actualRows6955++actualRows6956++actualRows6957++actualRows6958++actualRows6959++actualRows6960++actualRows6961++actualRows6962++actualRows6963++actualRows6964++actualRows6965
def partOps106 : List WordIR.Op := [.rotr 4218 8,.rotr 4270 16,.badd 6902 6903,.rotr 4322 24,.badd 6904 6905,.badd 6906 4374,.rotr 4426 8,.rotr 4478 16,.badd 6908 6909,.rotr 4530 24,.badd 6910 6911,.badd 6912 4582,.rotr 4634 8,.rotr 4686 16,.badd 6914 6915,.rotr 4738 24,.badd 6916 6917,.badd 6918 4790,.rotr 4842 8,.rotr 4894 16,.badd 6920 6921,.rotr 4946 24,.badd 6922 6923,.badd 6924 4998,.rotr 5050 8,.rotr 5102 16,.badd 6926 6927,.rotr 5154 24,.badd 6928 6929,.badd 6930 5206,.rotr 5258 8,.rotr 5310 16,.badd 6932 6933,.rotr 5362 24,.badd 6934 6935,.badd 6936 5414,.rotr 5466 8,.rotr 5518 16,.badd 6938 6939,.rotr 5570 24,.badd 6940 6941,.badd 6942 5622,.rotr 5674 8,.rotr 5726 16,.badd 6944 6945,.rotr 5778 24,.badd 6946 6947,.badd 6948 5830,.rotr 5882 8,.rotr 5934 16,.badd 6950 6951,.rotr 5986 24,.badd 6952 6953,.badd 6954 6038,.rotr 6090 8,.rotr 6142 16,.badd 6956 6957,.rotr 6194 24,.badd 6958 6959,.badd 6960 6247,.rotr 6300 8,.rotr 6353 16,.badd 6962 6963,.rotr 6406 24]
theorem partExact106 : partRows106=WordField.rows actualModulus 6902 partOps106 := by
  simp only [partRows106,partOps106,WordField.rows,rows6902,rows6903,rows6904,rows6905,rows6906,rows6907,rows6908,rows6909,rows6910,rows6911,rows6912,rows6913,rows6914,rows6915,rows6916,rows6917,rows6918,rows6919,rows6920,rows6921,rows6922,rows6923,rows6924,rows6925,rows6926,rows6927,rows6928,rows6929,rows6930,rows6931,rows6932,rows6933,rows6934,rows6935,rows6936,rows6937,rows6938,rows6939,rows6940,rows6941,rows6942,rows6943,rows6944,rows6945,rows6946,rows6947,rows6948,rows6949,rows6950,rows6951,rows6952,rows6953,rows6954,rows6955,rows6956,rows6957,rows6958,rows6959,rows6960,rows6961,rows6962,rows6963,rows6964,rows6965,List.append_assoc,List.append_nil]
theorem partLength106 : partOps106.length=64 := by decide
theorem partStats106 : partRows106.length=2207 ∧ MatrixRowBlocks.rowsWeight partRows106=336120 := by
  simp only [partRows106,List.length_append,MatrixRowBlocks.rows_weight_append,stats6902.1,stats6902.2,stats6903.1,stats6903.2,stats6904.1,stats6904.2,stats6905.1,stats6905.2,stats6906.1,stats6906.2,stats6907.1,stats6907.2,stats6908.1,stats6908.2,stats6909.1,stats6909.2,stats6910.1,stats6910.2,stats6911.1,stats6911.2,stats6912.1,stats6912.2,stats6913.1,stats6913.2,stats6914.1,stats6914.2,stats6915.1,stats6915.2,stats6916.1,stats6916.2,stats6917.1,stats6917.2,stats6918.1,stats6918.2,stats6919.1,stats6919.2,stats6920.1,stats6920.2,stats6921.1,stats6921.2,stats6922.1,stats6922.2,stats6923.1,stats6923.2,stats6924.1,stats6924.2,stats6925.1,stats6925.2,stats6926.1,stats6926.2,stats6927.1,stats6927.2,stats6928.1,stats6928.2,stats6929.1,stats6929.2,stats6930.1,stats6930.2,stats6931.1,stats6931.2,stats6932.1,stats6932.2,stats6933.1,stats6933.2,stats6934.1,stats6934.2,stats6935.1,stats6935.2,stats6936.1,stats6936.2,stats6937.1,stats6937.2,stats6938.1,stats6938.2,stats6939.1,stats6939.2,stats6940.1,stats6940.2,stats6941.1,stats6941.2,stats6942.1,stats6942.2,stats6943.1,stats6943.2,stats6944.1,stats6944.2,stats6945.1,stats6945.2,stats6946.1,stats6946.2,stats6947.1,stats6947.2,stats6948.1,stats6948.2,stats6949.1,stats6949.2,stats6950.1,stats6950.2,stats6951.1,stats6951.2,stats6952.1,stats6952.2,stats6953.1,stats6953.2,stats6954.1,stats6954.2,stats6955.1,stats6955.2,stats6956.1,stats6956.2,stats6957.1,stats6957.2,stats6958.1,stats6958.2,stats6959.1,stats6959.2,stats6960.1,stats6960.2,stats6961.1,stats6961.2,stats6962.1,stats6962.2,stats6963.1,stats6963.2,stats6964.1,stats6964.2,stats6965.1,stats6965.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
