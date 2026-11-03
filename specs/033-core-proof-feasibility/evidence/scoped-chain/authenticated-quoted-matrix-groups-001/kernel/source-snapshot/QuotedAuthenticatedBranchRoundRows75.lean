import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData76
import AuthenticatedBranchRoundInstructionMatrixData77
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4918 : actualRows4918=WordField.canonicalRows actualModulus 4918 (.badd 4916 4917) := by core033_kernel_decide
theorem stats4918 : actualRows4918.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4918=5388 := by core033_kernel_decide
theorem rows4919 : actualRows4919=WordField.canonicalRows actualModulus 4919 (.band 4918 2774) := by core033_kernel_decide
theorem stats4919 : actualRows4919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4919=5124 := by core033_kernel_decide
theorem rows4920 : actualRows4920=WordField.canonicalRows actualModulus 4920 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4920 : actualRows4920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4920=2892 := by core033_kernel_decide
theorem rows4921 : actualRows4921=WordField.canonicalRows actualModulus 4921 (.bxor 1299 4920) := by core033_kernel_decide
theorem stats4921 : actualRows4921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4921=7428 := by core033_kernel_decide
theorem rows4922 : actualRows4922=WordField.canonicalRows actualModulus 4922 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4922 : actualRows4922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4922=2820 := by core033_kernel_decide
theorem rows4923 : actualRows4923=WordField.canonicalRows actualModulus 4923 (.bnot 4922) := by core033_kernel_decide
theorem stats4923 : actualRows4923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4923=6276 := by core033_kernel_decide
theorem rows4924 : actualRows4924=WordField.canonicalRows actualModulus 4924 (.band 4921 4923) := by core033_kernel_decide
theorem stats4924 : actualRows4924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4924=5124 := by core033_kernel_decide
theorem rows4925 : actualRows4925=WordField.canonicalRows actualModulus 4925 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4925 : actualRows4925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4925=2892 := by core033_kernel_decide
theorem rows4926 : actualRows4926=WordField.canonicalRows actualModulus 4926 (.bxor 1299 4925) := by core033_kernel_decide
theorem stats4926 : actualRows4926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4926=7428 := by core033_kernel_decide
theorem rows4927 : actualRows4927=WordField.canonicalRows actualModulus 4927 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4927 : actualRows4927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4927=2820 := by core033_kernel_decide
theorem rows4928 : actualRows4928=WordField.canonicalRows actualModulus 4928 (.bnot 4927) := by core033_kernel_decide
theorem stats4928 : actualRows4928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4928=6276 := by core033_kernel_decide
theorem rows4929 : actualRows4929=WordField.canonicalRows actualModulus 4929 (.bxor 4926 4928) := by core033_kernel_decide
theorem stats4929 : actualRows4929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4929=7428 := by core033_kernel_decide
theorem rows4930 : actualRows4930=WordField.canonicalRows actualModulus 4930 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4930 : actualRows4930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4930=2892 := by core033_kernel_decide
theorem rows4931 : actualRows4931=WordField.canonicalRows actualModulus 4931 (.bxor 1299 4930) := by core033_kernel_decide
theorem stats4931 : actualRows4931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4931=7428 := by core033_kernel_decide
theorem rows4932 : actualRows4932=WordField.canonicalRows actualModulus 4932 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4932 : actualRows4932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4932=2820 := by core033_kernel_decide
theorem rows4933 : actualRows4933=WordField.canonicalRows actualModulus 4933 (.bnot 4932) := by core033_kernel_decide
theorem stats4933 : actualRows4933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4933=6276 := by core033_kernel_decide
theorem rows4934 : actualRows4934=WordField.canonicalRows actualModulus 4934 (.badd 4931 4933) := by core033_kernel_decide
theorem stats4934 : actualRows4934.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4934=5388 := by core033_kernel_decide
theorem rows4935 : actualRows4935=WordField.canonicalRows actualModulus 4935 (.bnot 4934) := by core033_kernel_decide
theorem stats4935 : actualRows4935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4935=6276 := by core033_kernel_decide
theorem rows4936 : actualRows4936=WordField.canonicalRows actualModulus 4936 (.band 4929 4935) := by core033_kernel_decide
theorem stats4936 : actualRows4936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4936=5124 := by core033_kernel_decide
theorem rows4937 : actualRows4937=WordField.canonicalRows actualModulus 4937 (.bxor 4924 4936) := by core033_kernel_decide
theorem stats4937 : actualRows4937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4937=7428 := by core033_kernel_decide
theorem rows4938 : actualRows4938=WordField.canonicalRows actualModulus 4938 (.shr 4937 31) := by core033_kernel_decide
theorem stats4938 : actualRows4938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4938=2892 := by core033_kernel_decide
theorem rows4939 : actualRows4939=WordField.canonicalRows actualModulus 4939 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4939 : actualRows4939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4939=2892 := by core033_kernel_decide
theorem rows4940 : actualRows4940=WordField.canonicalRows actualModulus 4940 (.bxor 4938 4939) := by core033_kernel_decide
theorem stats4940 : actualRows4940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4940=7428 := by core033_kernel_decide
theorem rows4941 : actualRows4941=WordField.canonicalRows actualModulus 4941 (.bnot 4940) := by core033_kernel_decide
theorem stats4941 : actualRows4941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4941=6276 := by core033_kernel_decide
theorem rows4942 : actualRows4942=WordField.canonicalRows actualModulus 4942 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4942 : actualRows4942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4942=2892 := by core033_kernel_decide
theorem rows4943 : actualRows4943=WordField.canonicalRows actualModulus 4943 (.badd 4941 4942) := by core033_kernel_decide
theorem stats4943 : actualRows4943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4943=5388 := by core033_kernel_decide
theorem rows4944 : actualRows4944=WordField.canonicalRows actualModulus 4944 (.bnot 4943) := by core033_kernel_decide
theorem stats4944 : actualRows4944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4944=6276 := by core033_kernel_decide
theorem rows4945 : actualRows4945=WordField.canonicalRows actualModulus 4945 (.band 4944 2582) := by core033_kernel_decide
theorem stats4945 : actualRows4945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4945=5124 := by core033_kernel_decide
theorem rows4946 : actualRows4946=WordField.canonicalRows actualModulus 4946 (.bxor 4919 4945) := by core033_kernel_decide
theorem stats4946 : actualRows4946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4946=7428 := by core033_kernel_decide
theorem rows4947 : actualRows4947=WordField.canonicalRows actualModulus 4947 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4947 : actualRows4947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4947=2892 := by core033_kernel_decide
theorem rows4948 : actualRows4948=WordField.canonicalRows actualModulus 4948 (.bxor 1299 4947) := by core033_kernel_decide
theorem stats4948 : actualRows4948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4948=7428 := by core033_kernel_decide
theorem rows4949 : actualRows4949=WordField.canonicalRows actualModulus 4949 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4949 : actualRows4949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4949=2820 := by core033_kernel_decide
theorem rows4950 : actualRows4950=WordField.canonicalRows actualModulus 4950 (.bnot 4949) := by core033_kernel_decide
theorem stats4950 : actualRows4950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4950=6276 := by core033_kernel_decide
theorem rows4951 : actualRows4951=WordField.canonicalRows actualModulus 4951 (.band 4948 4950) := by core033_kernel_decide
theorem stats4951 : actualRows4951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4951=5124 := by core033_kernel_decide
theorem rows4952 : actualRows4952=WordField.canonicalRows actualModulus 4952 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4952 : actualRows4952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4952=2892 := by core033_kernel_decide
theorem rows4953 : actualRows4953=WordField.canonicalRows actualModulus 4953 (.bxor 1299 4952) := by core033_kernel_decide
theorem stats4953 : actualRows4953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4953=7428 := by core033_kernel_decide
theorem rows4954 : actualRows4954=WordField.canonicalRows actualModulus 4954 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4954 : actualRows4954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4954=2820 := by core033_kernel_decide
theorem rows4955 : actualRows4955=WordField.canonicalRows actualModulus 4955 (.bnot 4954) := by core033_kernel_decide
theorem stats4955 : actualRows4955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4955=6276 := by core033_kernel_decide
theorem rows4956 : actualRows4956=WordField.canonicalRows actualModulus 4956 (.bxor 4953 4955) := by core033_kernel_decide
theorem stats4956 : actualRows4956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4956=7428 := by core033_kernel_decide
theorem rows4957 : actualRows4957=WordField.canonicalRows actualModulus 4957 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4957 : actualRows4957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4957=2892 := by core033_kernel_decide
theorem rows4958 : actualRows4958=WordField.canonicalRows actualModulus 4958 (.bxor 1299 4957) := by core033_kernel_decide
theorem stats4958 : actualRows4958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4958=7428 := by core033_kernel_decide
theorem rows4959 : actualRows4959=WordField.canonicalRows actualModulus 4959 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4959 : actualRows4959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4959=2820 := by core033_kernel_decide
theorem rows4960 : actualRows4960=WordField.canonicalRows actualModulus 4960 (.bnot 4959) := by core033_kernel_decide
theorem stats4960 : actualRows4960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4960=6276 := by core033_kernel_decide
theorem rows4961 : actualRows4961=WordField.canonicalRows actualModulus 4961 (.badd 4958 4960) := by core033_kernel_decide
theorem stats4961 : actualRows4961.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4961=5388 := by core033_kernel_decide
theorem rows4962 : actualRows4962=WordField.canonicalRows actualModulus 4962 (.bnot 4961) := by core033_kernel_decide
theorem stats4962 : actualRows4962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4962=6276 := by core033_kernel_decide
theorem rows4963 : actualRows4963=WordField.canonicalRows actualModulus 4963 (.band 4956 4962) := by core033_kernel_decide
theorem stats4963 : actualRows4963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4963=5124 := by core033_kernel_decide
theorem rows4964 : actualRows4964=WordField.canonicalRows actualModulus 4964 (.bxor 4951 4963) := by core033_kernel_decide
theorem stats4964 : actualRows4964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4964=7428 := by core033_kernel_decide
theorem rows4965 : actualRows4965=WordField.canonicalRows actualModulus 4965 (.shr 4964 31) := by core033_kernel_decide
theorem stats4965 : actualRows4965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4965=2892 := by core033_kernel_decide
theorem rows4966 : actualRows4966=WordField.canonicalRows actualModulus 4966 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4966 : actualRows4966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4966=2892 := by core033_kernel_decide
theorem rows4967 : actualRows4967=WordField.canonicalRows actualModulus 4967 (.bxor 4965 4966) := by core033_kernel_decide
theorem stats4967 : actualRows4967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4967=7428 := by core033_kernel_decide
theorem rows4968 : actualRows4968=WordField.canonicalRows actualModulus 4968 (.bnot 4967) := by core033_kernel_decide
theorem stats4968 : actualRows4968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4968=6276 := by core033_kernel_decide
theorem rows4969 : actualRows4969=WordField.canonicalRows actualModulus 4969 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4969 : actualRows4969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4969=2892 := by core033_kernel_decide
theorem rows4970 : actualRows4970=WordField.canonicalRows actualModulus 4970 (.badd 4968 4969) := by core033_kernel_decide
theorem stats4970 : actualRows4970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4970=5388 := by core033_kernel_decide
theorem rows4971 : actualRows4971=WordField.canonicalRows actualModulus 4971 (.band 4970 2777) := by core033_kernel_decide
theorem stats4971 : actualRows4971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4971=5124 := by core033_kernel_decide
theorem rows4972 : actualRows4972=WordField.canonicalRows actualModulus 4972 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4972 : actualRows4972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4972=2892 := by core033_kernel_decide
theorem rows4973 : actualRows4973=WordField.canonicalRows actualModulus 4973 (.bxor 1299 4972) := by core033_kernel_decide
theorem stats4973 : actualRows4973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4973=7428 := by core033_kernel_decide
theorem rows4974 : actualRows4974=WordField.canonicalRows actualModulus 4974 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4974 : actualRows4974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4974=2820 := by core033_kernel_decide
theorem rows4975 : actualRows4975=WordField.canonicalRows actualModulus 4975 (.bnot 4974) := by core033_kernel_decide
theorem stats4975 : actualRows4975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4975=6276 := by core033_kernel_decide
theorem rows4976 : actualRows4976=WordField.canonicalRows actualModulus 4976 (.band 4973 4975) := by core033_kernel_decide
theorem stats4976 : actualRows4976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4976=5124 := by core033_kernel_decide
theorem rows4977 : actualRows4977=WordField.canonicalRows actualModulus 4977 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4977 : actualRows4977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4977=2892 := by core033_kernel_decide
theorem rows4978 : actualRows4978=WordField.canonicalRows actualModulus 4978 (.bxor 1299 4977) := by core033_kernel_decide
theorem stats4978 : actualRows4978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4978=7428 := by core033_kernel_decide
theorem rows4979 : actualRows4979=WordField.canonicalRows actualModulus 4979 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4979 : actualRows4979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4979=2820 := by core033_kernel_decide
theorem rows4980 : actualRows4980=WordField.canonicalRows actualModulus 4980 (.bnot 4979) := by core033_kernel_decide
theorem stats4980 : actualRows4980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4980=6276 := by core033_kernel_decide
theorem rows4981 : actualRows4981=WordField.canonicalRows actualModulus 4981 (.bxor 4978 4980) := by core033_kernel_decide
theorem stats4981 : actualRows4981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4981=7428 := by core033_kernel_decide
def partRows75 : List R1CS.Row := actualRows4918++actualRows4919++actualRows4920++actualRows4921++actualRows4922++actualRows4923++actualRows4924++actualRows4925++actualRows4926++actualRows4927++actualRows4928++actualRows4929++actualRows4930++actualRows4931++actualRows4932++actualRows4933++actualRows4934++actualRows4935++actualRows4936++actualRows4937++actualRows4938++actualRows4939++actualRows4940++actualRows4941++actualRows4942++actualRows4943++actualRows4944++actualRows4945++actualRows4946++actualRows4947++actualRows4948++actualRows4949++actualRows4950++actualRows4951++actualRows4952++actualRows4953++actualRows4954++actualRows4955++actualRows4956++actualRows4957++actualRows4958++actualRows4959++actualRows4960++actualRows4961++actualRows4962++actualRows4963++actualRows4964++actualRows4965++actualRows4966++actualRows4967++actualRows4968++actualRows4969++actualRows4970++actualRows4971++actualRows4972++actualRows4973++actualRows4974++actualRows4975++actualRows4976++actualRows4977++actualRows4978++actualRows4979++actualRows4980++actualRows4981
def partOps75 : List WordIR.Op := [.badd 4916 4917,.band 4918 2774,.literal (BitVec.ofNat 32 2),.bxor 1299 4920,.literal (BitVec.ofNat 32 0),.bnot 4922,.band 4921 4923,.literal (BitVec.ofNat 32 2),.bxor 1299 4925,.literal (BitVec.ofNat 32 0),.bnot 4927,.bxor 4926 4928,.literal (BitVec.ofNat 32 2),.bxor 1299 4930,.literal (BitVec.ofNat 32 0),.bnot 4932,.badd 4931 4933,.bnot 4934,.band 4929 4935,.bxor 4924 4936,.shr 4937 31,.literal (BitVec.ofNat 32 1),.bxor 4938 4939,.bnot 4940,.literal (BitVec.ofNat 32 1),.badd 4941 4942,.bnot 4943,.band 4944 2582,.bxor 4919 4945,.literal (BitVec.ofNat 32 2),.bxor 1299 4947,.literal (BitVec.ofNat 32 0),.bnot 4949,.band 4948 4950,.literal (BitVec.ofNat 32 2),.bxor 1299 4952,.literal (BitVec.ofNat 32 0),.bnot 4954,.bxor 4953 4955,.literal (BitVec.ofNat 32 2),.bxor 1299 4957,.literal (BitVec.ofNat 32 0),.bnot 4959,.badd 4958 4960,.bnot 4961,.band 4956 4962,.bxor 4951 4963,.shr 4964 31,.literal (BitVec.ofNat 32 1),.bxor 4965 4966,.bnot 4967,.literal (BitVec.ofNat 32 1),.badd 4968 4969,.band 4970 2777,.literal (BitVec.ofNat 32 2),.bxor 1299 4972,.literal (BitVec.ofNat 32 0),.bnot 4974,.band 4973 4975,.literal (BitVec.ofNat 32 2),.bxor 1299 4977,.literal (BitVec.ofNat 32 0),.bnot 4979,.bxor 4978 4980]
theorem partExact75 : partRows75=WordField.rows actualModulus 4918 partOps75 := by
  simp only [partRows75,partOps75,WordField.rows,rows4918,rows4919,rows4920,rows4921,rows4922,rows4923,rows4924,rows4925,rows4926,rows4927,rows4928,rows4929,rows4930,rows4931,rows4932,rows4933,rows4934,rows4935,rows4936,rows4937,rows4938,rows4939,rows4940,rows4941,rows4942,rows4943,rows4944,rows4945,rows4946,rows4947,rows4948,rows4949,rows4950,rows4951,rows4952,rows4953,rows4954,rows4955,rows4956,rows4957,rows4958,rows4959,rows4960,rows4961,rows4962,rows4963,rows4964,rows4965,rows4966,rows4967,rows4968,rows4969,rows4970,rows4971,rows4972,rows4973,rows4974,rows4975,rows4976,rows4977,rows4978,rows4979,rows4980,rows4981,List.append_assoc,List.append_nil]
theorem partLength75 : partOps75.length=64 := by decide
theorem partStats75 : partRows75.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows75=331416 := by
  simp only [partRows75,List.length_append,MatrixRowBlocks.rows_weight_append,stats4918.1,stats4918.2,stats4919.1,stats4919.2,stats4920.1,stats4920.2,stats4921.1,stats4921.2,stats4922.1,stats4922.2,stats4923.1,stats4923.2,stats4924.1,stats4924.2,stats4925.1,stats4925.2,stats4926.1,stats4926.2,stats4927.1,stats4927.2,stats4928.1,stats4928.2,stats4929.1,stats4929.2,stats4930.1,stats4930.2,stats4931.1,stats4931.2,stats4932.1,stats4932.2,stats4933.1,stats4933.2,stats4934.1,stats4934.2,stats4935.1,stats4935.2,stats4936.1,stats4936.2,stats4937.1,stats4937.2,stats4938.1,stats4938.2,stats4939.1,stats4939.2,stats4940.1,stats4940.2,stats4941.1,stats4941.2,stats4942.1,stats4942.2,stats4943.1,stats4943.2,stats4944.1,stats4944.2,stats4945.1,stats4945.2,stats4946.1,stats4946.2,stats4947.1,stats4947.2,stats4948.1,stats4948.2,stats4949.1,stats4949.2,stats4950.1,stats4950.2,stats4951.1,stats4951.2,stats4952.1,stats4952.2,stats4953.1,stats4953.2,stats4954.1,stats4954.2,stats4955.1,stats4955.2,stats4956.1,stats4956.2,stats4957.1,stats4957.2,stats4958.1,stats4958.2,stats4959.1,stats4959.2,stats4960.1,stats4960.2,stats4961.1,stats4961.2,stats4962.1,stats4962.2,stats4963.1,stats4963.2,stats4964.1,stats4964.2,stats4965.1,stats4965.2,stats4966.1,stats4966.2,stats4967.1,stats4967.2,stats4968.1,stats4968.2,stats4969.1,stats4969.2,stats4970.1,stats4970.2,stats4971.1,stats4971.2,stats4972.1,stats4972.2,stats4973.1,stats4973.2,stats4974.1,stats4974.2,stats4975.1,stats4975.2,stats4976.1,stats4976.2,stats4977.1,stats4977.2,stats4978.1,stats4978.2,stats4979.1,stats4979.2,stats4980.1,stats4980.2,stats4981.1,stats4981.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
