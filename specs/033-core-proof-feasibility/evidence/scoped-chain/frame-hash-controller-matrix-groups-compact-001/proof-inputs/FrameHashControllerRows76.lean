import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData76
import FrameHashControllerInstructionMatrixData77
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4907 : actualRows4907=WordField.canonicalRows actualModulus 4907 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4907 : actualRows4907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4907=2820 := by core033_kernel_decide
theorem rows4908 : actualRows4908=WordField.canonicalRows actualModulus 4908 (.bnot 4907) := by core033_kernel_decide
theorem stats4908 : actualRows4908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4908=6276 := by core033_kernel_decide
theorem rows4909 : actualRows4909=WordField.canonicalRows actualModulus 4909 (.bxor 4906 4908) := by core033_kernel_decide
theorem stats4909 : actualRows4909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4909=7428 := by core033_kernel_decide
theorem rows4910 : actualRows4910=WordField.canonicalRows actualModulus 4910 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4910 : actualRows4910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4910=2892 := by core033_kernel_decide
theorem rows4911 : actualRows4911=WordField.canonicalRows actualModulus 4911 (.bxor 0 4910) := by core033_kernel_decide
theorem stats4911 : actualRows4911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4911=7428 := by core033_kernel_decide
theorem rows4912 : actualRows4912=WordField.canonicalRows actualModulus 4912 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4912 : actualRows4912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4912=2820 := by core033_kernel_decide
theorem rows4913 : actualRows4913=WordField.canonicalRows actualModulus 4913 (.bnot 4912) := by core033_kernel_decide
theorem stats4913 : actualRows4913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4913=6276 := by core033_kernel_decide
theorem rows4914 : actualRows4914=WordField.canonicalRows actualModulus 4914 (.badd 4911 4913) := by core033_kernel_decide
theorem stats4914 : actualRows4914.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4914=5388 := by core033_kernel_decide
theorem rows4915 : actualRows4915=WordField.canonicalRows actualModulus 4915 (.bnot 4914) := by core033_kernel_decide
theorem stats4915 : actualRows4915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4915=6276 := by core033_kernel_decide
theorem rows4916 : actualRows4916=WordField.canonicalRows actualModulus 4916 (.band 4909 4915) := by core033_kernel_decide
theorem stats4916 : actualRows4916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4916=5124 := by core033_kernel_decide
theorem rows4917 : actualRows4917=WordField.canonicalRows actualModulus 4917 (.bxor 4904 4916) := by core033_kernel_decide
theorem stats4917 : actualRows4917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4917=7428 := by core033_kernel_decide
theorem rows4918 : actualRows4918=WordField.canonicalRows actualModulus 4918 (.shr 4917 31) := by core033_kernel_decide
theorem stats4918 : actualRows4918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4918=2892 := by core033_kernel_decide
theorem rows4919 : actualRows4919=WordField.canonicalRows actualModulus 4919 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4919 : actualRows4919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4919=2892 := by core033_kernel_decide
theorem rows4920 : actualRows4920=WordField.canonicalRows actualModulus 4920 (.bxor 4918 4919) := by core033_kernel_decide
theorem stats4920 : actualRows4920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4920=7428 := by core033_kernel_decide
theorem rows4921 : actualRows4921=WordField.canonicalRows actualModulus 4921 (.bnot 4920) := by core033_kernel_decide
theorem stats4921 : actualRows4921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4921=6276 := by core033_kernel_decide
theorem rows4922 : actualRows4922=WordField.canonicalRows actualModulus 4922 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4922 : actualRows4922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4922=2892 := by core033_kernel_decide
theorem rows4923 : actualRows4923=WordField.canonicalRows actualModulus 4923 (.badd 4921 4922) := by core033_kernel_decide
theorem stats4923 : actualRows4923.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4923=5388 := by core033_kernel_decide
theorem rows4924 : actualRows4924=WordField.canonicalRows actualModulus 4924 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4924 : actualRows4924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4924=2820 := by core033_kernel_decide
theorem rows4925 : actualRows4925=WordField.canonicalRows actualModulus 4925 (.band 4923 4924) := by core033_kernel_decide
theorem stats4925 : actualRows4925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4925=5124 := by core033_kernel_decide
theorem rows4926 : actualRows4926=WordField.canonicalRows actualModulus 4926 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4926 : actualRows4926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4926=2892 := by core033_kernel_decide
theorem rows4927 : actualRows4927=WordField.canonicalRows actualModulus 4927 (.bxor 0 4926) := by core033_kernel_decide
theorem stats4927 : actualRows4927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4927=7428 := by core033_kernel_decide
theorem rows4928 : actualRows4928=WordField.canonicalRows actualModulus 4928 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4928 : actualRows4928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4928=2820 := by core033_kernel_decide
theorem rows4929 : actualRows4929=WordField.canonicalRows actualModulus 4929 (.bnot 4928) := by core033_kernel_decide
theorem stats4929 : actualRows4929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4929=6276 := by core033_kernel_decide
theorem rows4930 : actualRows4930=WordField.canonicalRows actualModulus 4930 (.band 4927 4929) := by core033_kernel_decide
theorem stats4930 : actualRows4930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4930=5124 := by core033_kernel_decide
theorem rows4931 : actualRows4931=WordField.canonicalRows actualModulus 4931 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4931 : actualRows4931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4931=2892 := by core033_kernel_decide
theorem rows4932 : actualRows4932=WordField.canonicalRows actualModulus 4932 (.bxor 0 4931) := by core033_kernel_decide
theorem stats4932 : actualRows4932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4932=7428 := by core033_kernel_decide
theorem rows4933 : actualRows4933=WordField.canonicalRows actualModulus 4933 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4933 : actualRows4933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4933=2820 := by core033_kernel_decide
theorem rows4934 : actualRows4934=WordField.canonicalRows actualModulus 4934 (.bnot 4933) := by core033_kernel_decide
theorem stats4934 : actualRows4934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4934=6276 := by core033_kernel_decide
theorem rows4935 : actualRows4935=WordField.canonicalRows actualModulus 4935 (.bxor 4932 4934) := by core033_kernel_decide
theorem stats4935 : actualRows4935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4935=7428 := by core033_kernel_decide
theorem rows4936 : actualRows4936=WordField.canonicalRows actualModulus 4936 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4936 : actualRows4936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4936=2892 := by core033_kernel_decide
theorem rows4937 : actualRows4937=WordField.canonicalRows actualModulus 4937 (.bxor 0 4936) := by core033_kernel_decide
theorem stats4937 : actualRows4937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4937=7428 := by core033_kernel_decide
theorem rows4938 : actualRows4938=WordField.canonicalRows actualModulus 4938 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4938 : actualRows4938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4938=2820 := by core033_kernel_decide
theorem rows4939 : actualRows4939=WordField.canonicalRows actualModulus 4939 (.bnot 4938) := by core033_kernel_decide
theorem stats4939 : actualRows4939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4939=6276 := by core033_kernel_decide
theorem rows4940 : actualRows4940=WordField.canonicalRows actualModulus 4940 (.badd 4937 4939) := by core033_kernel_decide
theorem stats4940 : actualRows4940.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4940=5388 := by core033_kernel_decide
theorem rows4941 : actualRows4941=WordField.canonicalRows actualModulus 4941 (.bnot 4940) := by core033_kernel_decide
theorem stats4941 : actualRows4941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4941=6276 := by core033_kernel_decide
theorem rows4942 : actualRows4942=WordField.canonicalRows actualModulus 4942 (.band 4935 4941) := by core033_kernel_decide
theorem stats4942 : actualRows4942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4942=5124 := by core033_kernel_decide
theorem rows4943 : actualRows4943=WordField.canonicalRows actualModulus 4943 (.bxor 4930 4942) := by core033_kernel_decide
theorem stats4943 : actualRows4943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4943=7428 := by core033_kernel_decide
theorem rows4944 : actualRows4944=WordField.canonicalRows actualModulus 4944 (.shr 4943 31) := by core033_kernel_decide
theorem stats4944 : actualRows4944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4944=2892 := by core033_kernel_decide
theorem rows4945 : actualRows4945=WordField.canonicalRows actualModulus 4945 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4945 : actualRows4945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4945=2892 := by core033_kernel_decide
theorem rows4946 : actualRows4946=WordField.canonicalRows actualModulus 4946 (.bxor 4944 4945) := by core033_kernel_decide
theorem stats4946 : actualRows4946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4946=7428 := by core033_kernel_decide
theorem rows4947 : actualRows4947=WordField.canonicalRows actualModulus 4947 (.bnot 4946) := by core033_kernel_decide
theorem stats4947 : actualRows4947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4947=6276 := by core033_kernel_decide
theorem rows4948 : actualRows4948=WordField.canonicalRows actualModulus 4948 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4948 : actualRows4948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4948=2892 := by core033_kernel_decide
theorem rows4949 : actualRows4949=WordField.canonicalRows actualModulus 4949 (.badd 4947 4948) := by core033_kernel_decide
theorem stats4949 : actualRows4949.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4949=5388 := by core033_kernel_decide
theorem rows4950 : actualRows4950=WordField.canonicalRows actualModulus 4950 (.bnot 4949) := by core033_kernel_decide
theorem stats4950 : actualRows4950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4950=6276 := by core033_kernel_decide
theorem rows4951 : actualRows4951=WordField.canonicalRows actualModulus 4951 (.band 4950 962) := by core033_kernel_decide
theorem stats4951 : actualRows4951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4951=5124 := by core033_kernel_decide
theorem rows4952 : actualRows4952=WordField.canonicalRows actualModulus 4952 (.bxor 4925 4951) := by core033_kernel_decide
theorem stats4952 : actualRows4952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4952=7428 := by core033_kernel_decide
theorem rows4953 : actualRows4953=WordField.canonicalRows actualModulus 4953 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4953 : actualRows4953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4953=2892 := by core033_kernel_decide
theorem rows4954 : actualRows4954=WordField.canonicalRows actualModulus 4954 (.bxor 0 4953) := by core033_kernel_decide
theorem stats4954 : actualRows4954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4954=7428 := by core033_kernel_decide
theorem rows4955 : actualRows4955=WordField.canonicalRows actualModulus 4955 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4955 : actualRows4955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4955=2820 := by core033_kernel_decide
theorem rows4956 : actualRows4956=WordField.canonicalRows actualModulus 4956 (.bnot 4955) := by core033_kernel_decide
theorem stats4956 : actualRows4956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4956=6276 := by core033_kernel_decide
theorem rows4957 : actualRows4957=WordField.canonicalRows actualModulus 4957 (.band 4954 4956) := by core033_kernel_decide
theorem stats4957 : actualRows4957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4957=5124 := by core033_kernel_decide
theorem rows4958 : actualRows4958=WordField.canonicalRows actualModulus 4958 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4958 : actualRows4958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4958=2892 := by core033_kernel_decide
theorem rows4959 : actualRows4959=WordField.canonicalRows actualModulus 4959 (.bxor 0 4958) := by core033_kernel_decide
theorem stats4959 : actualRows4959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4959=7428 := by core033_kernel_decide
theorem rows4960 : actualRows4960=WordField.canonicalRows actualModulus 4960 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4960 : actualRows4960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4960=2820 := by core033_kernel_decide
theorem rows4961 : actualRows4961=WordField.canonicalRows actualModulus 4961 (.bnot 4960) := by core033_kernel_decide
theorem stats4961 : actualRows4961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4961=6276 := by core033_kernel_decide
theorem rows4962 : actualRows4962=WordField.canonicalRows actualModulus 4962 (.bxor 4959 4961) := by core033_kernel_decide
theorem stats4962 : actualRows4962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4962=7428 := by core033_kernel_decide
theorem rows4963 : actualRows4963=WordField.canonicalRows actualModulus 4963 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4963 : actualRows4963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4963=2892 := by core033_kernel_decide
theorem rows4964 : actualRows4964=WordField.canonicalRows actualModulus 4964 (.bxor 0 4963) := by core033_kernel_decide
theorem stats4964 : actualRows4964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4964=7428 := by core033_kernel_decide
theorem rows4965 : actualRows4965=WordField.canonicalRows actualModulus 4965 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4965 : actualRows4965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4965=2820 := by core033_kernel_decide
theorem rows4966 : actualRows4966=WordField.canonicalRows actualModulus 4966 (.bnot 4965) := by core033_kernel_decide
theorem stats4966 : actualRows4966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4966=6276 := by core033_kernel_decide
theorem rows4967 : actualRows4967=WordField.canonicalRows actualModulus 4967 (.badd 4964 4966) := by core033_kernel_decide
theorem stats4967 : actualRows4967.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4967=5388 := by core033_kernel_decide
theorem rows4968 : actualRows4968=WordField.canonicalRows actualModulus 4968 (.bnot 4967) := by core033_kernel_decide
theorem stats4968 : actualRows4968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4968=6276 := by core033_kernel_decide
theorem rows4969 : actualRows4969=WordField.canonicalRows actualModulus 4969 (.band 4962 4968) := by core033_kernel_decide
theorem stats4969 : actualRows4969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4969=5124 := by core033_kernel_decide
theorem rows4970 : actualRows4970=WordField.canonicalRows actualModulus 4970 (.bxor 4957 4969) := by core033_kernel_decide
theorem stats4970 : actualRows4970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4970=7428 := by core033_kernel_decide
def partRows76 : List R1CS.Row := actualRows4907++actualRows4908++actualRows4909++actualRows4910++actualRows4911++actualRows4912++actualRows4913++actualRows4914++actualRows4915++actualRows4916++actualRows4917++actualRows4918++actualRows4919++actualRows4920++actualRows4921++actualRows4922++actualRows4923++actualRows4924++actualRows4925++actualRows4926++actualRows4927++actualRows4928++actualRows4929++actualRows4930++actualRows4931++actualRows4932++actualRows4933++actualRows4934++actualRows4935++actualRows4936++actualRows4937++actualRows4938++actualRows4939++actualRows4940++actualRows4941++actualRows4942++actualRows4943++actualRows4944++actualRows4945++actualRows4946++actualRows4947++actualRows4948++actualRows4949++actualRows4950++actualRows4951++actualRows4952++actualRows4953++actualRows4954++actualRows4955++actualRows4956++actualRows4957++actualRows4958++actualRows4959++actualRows4960++actualRows4961++actualRows4962++actualRows4963++actualRows4964++actualRows4965++actualRows4966++actualRows4967++actualRows4968++actualRows4969++actualRows4970
def partOps76 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 4907,.bxor 4906 4908,.literal (BitVec.ofNat 32 2),.bxor 0 4910,.literal (BitVec.ofNat 32 0),.bnot 4912,.badd 4911 4913,.bnot 4914,.band 4909 4915,.bxor 4904 4916,.shr 4917 31,.literal (BitVec.ofNat 32 1),.bxor 4918 4919,.bnot 4920,.literal (BitVec.ofNat 32 1),.badd 4921 4922,.literal (BitVec.ofNat 32 0),.band 4923 4924,.literal (BitVec.ofNat 32 2),.bxor 0 4926,.literal (BitVec.ofNat 32 0),.bnot 4928,.band 4927 4929,.literal (BitVec.ofNat 32 2),.bxor 0 4931,.literal (BitVec.ofNat 32 0),.bnot 4933,.bxor 4932 4934,.literal (BitVec.ofNat 32 2),.bxor 0 4936,.literal (BitVec.ofNat 32 0),.bnot 4938,.badd 4937 4939,.bnot 4940,.band 4935 4941,.bxor 4930 4942,.shr 4943 31,.literal (BitVec.ofNat 32 1),.bxor 4944 4945,.bnot 4946,.literal (BitVec.ofNat 32 1),.badd 4947 4948,.bnot 4949,.band 4950 962,.bxor 4925 4951,.literal (BitVec.ofNat 32 2),.bxor 0 4953,.literal (BitVec.ofNat 32 0),.bnot 4955,.band 4954 4956,.literal (BitVec.ofNat 32 2),.bxor 0 4958,.literal (BitVec.ofNat 32 0),.bnot 4960,.bxor 4959 4961,.literal (BitVec.ofNat 32 2),.bxor 0 4963,.literal (BitVec.ofNat 32 0),.bnot 4965,.badd 4964 4966,.bnot 4967,.band 4962 4968,.bxor 4957 4969]
theorem partExact76 : partRows76=WordField.rows actualModulus 4907 partOps76 := by
  simp only [partRows76,partOps76,WordField.rows,rows4907,rows4908,rows4909,rows4910,rows4911,rows4912,rows4913,rows4914,rows4915,rows4916,rows4917,rows4918,rows4919,rows4920,rows4921,rows4922,rows4923,rows4924,rows4925,rows4926,rows4927,rows4928,rows4929,rows4930,rows4931,rows4932,rows4933,rows4934,rows4935,rows4936,rows4937,rows4938,rows4939,rows4940,rows4941,rows4942,rows4943,rows4944,rows4945,rows4946,rows4947,rows4948,rows4949,rows4950,rows4951,rows4952,rows4953,rows4954,rows4955,rows4956,rows4957,rows4958,rows4959,rows4960,rows4961,rows4962,rows4963,rows4964,rows4965,rows4966,rows4967,rows4968,rows4969,rows4970,List.append_assoc,List.append_nil]
theorem partLength76 : partOps76.length=64 := by decide
theorem partStats76 : partRows76.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows76=332496 := by
  simp only [partRows76,List.length_append,MatrixRowBlocks.rows_weight_append,stats4907.1,stats4907.2,stats4908.1,stats4908.2,stats4909.1,stats4909.2,stats4910.1,stats4910.2,stats4911.1,stats4911.2,stats4912.1,stats4912.2,stats4913.1,stats4913.2,stats4914.1,stats4914.2,stats4915.1,stats4915.2,stats4916.1,stats4916.2,stats4917.1,stats4917.2,stats4918.1,stats4918.2,stats4919.1,stats4919.2,stats4920.1,stats4920.2,stats4921.1,stats4921.2,stats4922.1,stats4922.2,stats4923.1,stats4923.2,stats4924.1,stats4924.2,stats4925.1,stats4925.2,stats4926.1,stats4926.2,stats4927.1,stats4927.2,stats4928.1,stats4928.2,stats4929.1,stats4929.2,stats4930.1,stats4930.2,stats4931.1,stats4931.2,stats4932.1,stats4932.2,stats4933.1,stats4933.2,stats4934.1,stats4934.2,stats4935.1,stats4935.2,stats4936.1,stats4936.2,stats4937.1,stats4937.2,stats4938.1,stats4938.2,stats4939.1,stats4939.2,stats4940.1,stats4940.2,stats4941.1,stats4941.2,stats4942.1,stats4942.2,stats4943.1,stats4943.2,stats4944.1,stats4944.2,stats4945.1,stats4945.2,stats4946.1,stats4946.2,stats4947.1,stats4947.2,stats4948.1,stats4948.2,stats4949.1,stats4949.2,stats4950.1,stats4950.2,stats4951.1,stats4951.2,stats4952.1,stats4952.2,stats4953.1,stats4953.2,stats4954.1,stats4954.2,stats4955.1,stats4955.2,stats4956.1,stats4956.2,stats4957.1,stats4957.2,stats4958.1,stats4958.2,stats4959.1,stats4959.2,stats4960.1,stats4960.2,stats4961.1,stats4961.2,stats4962.1,stats4962.2,stats4963.1,stats4963.2,stats4964.1,stats4964.2,stats4965.1,stats4965.2,stats4966.1,stats4966.2,stats4967.1,stats4967.2,stats4968.1,stats4968.2,stats4969.1,stats4969.2,stats4970.1,stats4970.2]
  decide
end FrameHashControllerCheckedRows
