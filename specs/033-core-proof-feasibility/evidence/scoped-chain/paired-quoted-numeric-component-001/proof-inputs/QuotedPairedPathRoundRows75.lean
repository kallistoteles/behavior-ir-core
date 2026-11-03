import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData76
import PairedPathRoundInstructionMatrixData77
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4896 : actualRows4896=WordField.canonicalRows actualModulus 4896 (.bnot 4895) := by core033_kernel_decide
theorem stats4896 : actualRows4896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4896=6276 := by core033_kernel_decide
theorem rows4897 : actualRows4897=WordField.canonicalRows actualModulus 4897 (.bxor 4894 4896) := by core033_kernel_decide
theorem stats4897 : actualRows4897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4897=7428 := by core033_kernel_decide
theorem rows4898 : actualRows4898=WordField.canonicalRows actualModulus 4898 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4898 : actualRows4898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4898=2892 := by core033_kernel_decide
theorem rows4899 : actualRows4899=WordField.canonicalRows actualModulus 4899 (.bxor 616 4898) := by core033_kernel_decide
theorem stats4899 : actualRows4899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4899=7428 := by core033_kernel_decide
theorem rows4900 : actualRows4900=WordField.canonicalRows actualModulus 4900 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4900 : actualRows4900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4900=2820 := by core033_kernel_decide
theorem rows4901 : actualRows4901=WordField.canonicalRows actualModulus 4901 (.bnot 4900) := by core033_kernel_decide
theorem stats4901 : actualRows4901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4901=6276 := by core033_kernel_decide
theorem rows4902 : actualRows4902=WordField.canonicalRows actualModulus 4902 (.badd 4899 4901) := by core033_kernel_decide
theorem stats4902 : actualRows4902.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4902=5388 := by core033_kernel_decide
theorem rows4903 : actualRows4903=WordField.canonicalRows actualModulus 4903 (.bnot 4902) := by core033_kernel_decide
theorem stats4903 : actualRows4903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4903=6276 := by core033_kernel_decide
theorem rows4904 : actualRows4904=WordField.canonicalRows actualModulus 4904 (.band 4897 4903) := by core033_kernel_decide
theorem stats4904 : actualRows4904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4904=5124 := by core033_kernel_decide
theorem rows4905 : actualRows4905=WordField.canonicalRows actualModulus 4905 (.bxor 4892 4904) := by core033_kernel_decide
theorem stats4905 : actualRows4905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4905=7428 := by core033_kernel_decide
theorem rows4906 : actualRows4906=WordField.canonicalRows actualModulus 4906 (.shr 4905 31) := by core033_kernel_decide
theorem stats4906 : actualRows4906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4906=2892 := by core033_kernel_decide
theorem rows4907 : actualRows4907=WordField.canonicalRows actualModulus 4907 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4907 : actualRows4907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4907=2892 := by core033_kernel_decide
theorem rows4908 : actualRows4908=WordField.canonicalRows actualModulus 4908 (.bxor 4906 4907) := by core033_kernel_decide
theorem stats4908 : actualRows4908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4908=7428 := by core033_kernel_decide
theorem rows4909 : actualRows4909=WordField.canonicalRows actualModulus 4909 (.bnot 4908) := by core033_kernel_decide
theorem stats4909 : actualRows4909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4909=6276 := by core033_kernel_decide
theorem rows4910 : actualRows4910=WordField.canonicalRows actualModulus 4910 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4910 : actualRows4910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4910=2892 := by core033_kernel_decide
theorem rows4911 : actualRows4911=WordField.canonicalRows actualModulus 4911 (.badd 4909 4910) := by core033_kernel_decide
theorem stats4911 : actualRows4911.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4911=5388 := by core033_kernel_decide
theorem rows4912 : actualRows4912=WordField.canonicalRows actualModulus 4912 (.band 4911 2130) := by core033_kernel_decide
theorem stats4912 : actualRows4912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4912=5124 := by core033_kernel_decide
theorem rows4913 : actualRows4913=WordField.canonicalRows actualModulus 4913 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4913 : actualRows4913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4913=2892 := by core033_kernel_decide
theorem rows4914 : actualRows4914=WordField.canonicalRows actualModulus 4914 (.bxor 616 4913) := by core033_kernel_decide
theorem stats4914 : actualRows4914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4914=7428 := by core033_kernel_decide
theorem rows4915 : actualRows4915=WordField.canonicalRows actualModulus 4915 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4915 : actualRows4915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4915=2820 := by core033_kernel_decide
theorem rows4916 : actualRows4916=WordField.canonicalRows actualModulus 4916 (.bnot 4915) := by core033_kernel_decide
theorem stats4916 : actualRows4916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4916=6276 := by core033_kernel_decide
theorem rows4917 : actualRows4917=WordField.canonicalRows actualModulus 4917 (.band 4914 4916) := by core033_kernel_decide
theorem stats4917 : actualRows4917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4917=5124 := by core033_kernel_decide
theorem rows4918 : actualRows4918=WordField.canonicalRows actualModulus 4918 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4918 : actualRows4918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4918=2892 := by core033_kernel_decide
theorem rows4919 : actualRows4919=WordField.canonicalRows actualModulus 4919 (.bxor 616 4918) := by core033_kernel_decide
theorem stats4919 : actualRows4919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4919=7428 := by core033_kernel_decide
theorem rows4920 : actualRows4920=WordField.canonicalRows actualModulus 4920 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4920 : actualRows4920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4920=2820 := by core033_kernel_decide
theorem rows4921 : actualRows4921=WordField.canonicalRows actualModulus 4921 (.bnot 4920) := by core033_kernel_decide
theorem stats4921 : actualRows4921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4921=6276 := by core033_kernel_decide
theorem rows4922 : actualRows4922=WordField.canonicalRows actualModulus 4922 (.bxor 4919 4921) := by core033_kernel_decide
theorem stats4922 : actualRows4922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4922=7428 := by core033_kernel_decide
theorem rows4923 : actualRows4923=WordField.canonicalRows actualModulus 4923 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4923 : actualRows4923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4923=2892 := by core033_kernel_decide
theorem rows4924 : actualRows4924=WordField.canonicalRows actualModulus 4924 (.bxor 616 4923) := by core033_kernel_decide
theorem stats4924 : actualRows4924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4924=7428 := by core033_kernel_decide
theorem rows4925 : actualRows4925=WordField.canonicalRows actualModulus 4925 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4925 : actualRows4925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4925=2820 := by core033_kernel_decide
theorem rows4926 : actualRows4926=WordField.canonicalRows actualModulus 4926 (.bnot 4925) := by core033_kernel_decide
theorem stats4926 : actualRows4926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4926=6276 := by core033_kernel_decide
theorem rows4927 : actualRows4927=WordField.canonicalRows actualModulus 4927 (.badd 4924 4926) := by core033_kernel_decide
theorem stats4927 : actualRows4927.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4927=5388 := by core033_kernel_decide
theorem rows4928 : actualRows4928=WordField.canonicalRows actualModulus 4928 (.bnot 4927) := by core033_kernel_decide
theorem stats4928 : actualRows4928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4928=6276 := by core033_kernel_decide
theorem rows4929 : actualRows4929=WordField.canonicalRows actualModulus 4929 (.band 4922 4928) := by core033_kernel_decide
theorem stats4929 : actualRows4929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4929=5124 := by core033_kernel_decide
theorem rows4930 : actualRows4930=WordField.canonicalRows actualModulus 4930 (.bxor 4917 4929) := by core033_kernel_decide
theorem stats4930 : actualRows4930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4930=7428 := by core033_kernel_decide
theorem rows4931 : actualRows4931=WordField.canonicalRows actualModulus 4931 (.shr 4930 31) := by core033_kernel_decide
theorem stats4931 : actualRows4931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4931=2892 := by core033_kernel_decide
theorem rows4932 : actualRows4932=WordField.canonicalRows actualModulus 4932 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4932 : actualRows4932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4932=2892 := by core033_kernel_decide
theorem rows4933 : actualRows4933=WordField.canonicalRows actualModulus 4933 (.bxor 4931 4932) := by core033_kernel_decide
theorem stats4933 : actualRows4933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4933=7428 := by core033_kernel_decide
theorem rows4934 : actualRows4934=WordField.canonicalRows actualModulus 4934 (.bnot 4933) := by core033_kernel_decide
theorem stats4934 : actualRows4934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4934=6276 := by core033_kernel_decide
theorem rows4935 : actualRows4935=WordField.canonicalRows actualModulus 4935 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4935 : actualRows4935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4935=2892 := by core033_kernel_decide
theorem rows4936 : actualRows4936=WordField.canonicalRows actualModulus 4936 (.badd 4934 4935) := by core033_kernel_decide
theorem stats4936 : actualRows4936.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4936=5388 := by core033_kernel_decide
theorem rows4937 : actualRows4937=WordField.canonicalRows actualModulus 4937 (.bnot 4936) := by core033_kernel_decide
theorem stats4937 : actualRows4937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4937=6276 := by core033_kernel_decide
theorem rows4938 : actualRows4938=WordField.canonicalRows actualModulus 4938 (.band 4937 1938) := by core033_kernel_decide
theorem stats4938 : actualRows4938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4938=5124 := by core033_kernel_decide
theorem rows4939 : actualRows4939=WordField.canonicalRows actualModulus 4939 (.bxor 4912 4938) := by core033_kernel_decide
theorem stats4939 : actualRows4939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4939=7428 := by core033_kernel_decide
theorem rows4940 : actualRows4940=WordField.canonicalRows actualModulus 4940 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4940 : actualRows4940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4940=2892 := by core033_kernel_decide
theorem rows4941 : actualRows4941=WordField.canonicalRows actualModulus 4941 (.bxor 616 4940) := by core033_kernel_decide
theorem stats4941 : actualRows4941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4941=7428 := by core033_kernel_decide
theorem rows4942 : actualRows4942=WordField.canonicalRows actualModulus 4942 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4942 : actualRows4942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4942=2820 := by core033_kernel_decide
theorem rows4943 : actualRows4943=WordField.canonicalRows actualModulus 4943 (.bnot 4942) := by core033_kernel_decide
theorem stats4943 : actualRows4943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4943=6276 := by core033_kernel_decide
theorem rows4944 : actualRows4944=WordField.canonicalRows actualModulus 4944 (.band 4941 4943) := by core033_kernel_decide
theorem stats4944 : actualRows4944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4944=5124 := by core033_kernel_decide
theorem rows4945 : actualRows4945=WordField.canonicalRows actualModulus 4945 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4945 : actualRows4945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4945=2892 := by core033_kernel_decide
theorem rows4946 : actualRows4946=WordField.canonicalRows actualModulus 4946 (.bxor 616 4945) := by core033_kernel_decide
theorem stats4946 : actualRows4946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4946=7428 := by core033_kernel_decide
theorem rows4947 : actualRows4947=WordField.canonicalRows actualModulus 4947 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4947 : actualRows4947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4947=2820 := by core033_kernel_decide
theorem rows4948 : actualRows4948=WordField.canonicalRows actualModulus 4948 (.bnot 4947) := by core033_kernel_decide
theorem stats4948 : actualRows4948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4948=6276 := by core033_kernel_decide
theorem rows4949 : actualRows4949=WordField.canonicalRows actualModulus 4949 (.bxor 4946 4948) := by core033_kernel_decide
theorem stats4949 : actualRows4949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4949=7428 := by core033_kernel_decide
theorem rows4950 : actualRows4950=WordField.canonicalRows actualModulus 4950 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4950 : actualRows4950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4950=2892 := by core033_kernel_decide
theorem rows4951 : actualRows4951=WordField.canonicalRows actualModulus 4951 (.bxor 616 4950) := by core033_kernel_decide
theorem stats4951 : actualRows4951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4951=7428 := by core033_kernel_decide
theorem rows4952 : actualRows4952=WordField.canonicalRows actualModulus 4952 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4952 : actualRows4952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4952=2820 := by core033_kernel_decide
theorem rows4953 : actualRows4953=WordField.canonicalRows actualModulus 4953 (.bnot 4952) := by core033_kernel_decide
theorem stats4953 : actualRows4953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4953=6276 := by core033_kernel_decide
theorem rows4954 : actualRows4954=WordField.canonicalRows actualModulus 4954 (.badd 4951 4953) := by core033_kernel_decide
theorem stats4954 : actualRows4954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4954=5388 := by core033_kernel_decide
theorem rows4955 : actualRows4955=WordField.canonicalRows actualModulus 4955 (.bnot 4954) := by core033_kernel_decide
theorem stats4955 : actualRows4955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4955=6276 := by core033_kernel_decide
theorem rows4956 : actualRows4956=WordField.canonicalRows actualModulus 4956 (.band 4949 4955) := by core033_kernel_decide
theorem stats4956 : actualRows4956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4956=5124 := by core033_kernel_decide
theorem rows4957 : actualRows4957=WordField.canonicalRows actualModulus 4957 (.bxor 4944 4956) := by core033_kernel_decide
theorem stats4957 : actualRows4957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4957=7428 := by core033_kernel_decide
theorem rows4958 : actualRows4958=WordField.canonicalRows actualModulus 4958 (.shr 4957 31) := by core033_kernel_decide
theorem stats4958 : actualRows4958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4958=2892 := by core033_kernel_decide
theorem rows4959 : actualRows4959=WordField.canonicalRows actualModulus 4959 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4959 : actualRows4959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4959=2892 := by core033_kernel_decide
def partRows75 : List R1CS.Row := actualRows4896++actualRows4897++actualRows4898++actualRows4899++actualRows4900++actualRows4901++actualRows4902++actualRows4903++actualRows4904++actualRows4905++actualRows4906++actualRows4907++actualRows4908++actualRows4909++actualRows4910++actualRows4911++actualRows4912++actualRows4913++actualRows4914++actualRows4915++actualRows4916++actualRows4917++actualRows4918++actualRows4919++actualRows4920++actualRows4921++actualRows4922++actualRows4923++actualRows4924++actualRows4925++actualRows4926++actualRows4927++actualRows4928++actualRows4929++actualRows4930++actualRows4931++actualRows4932++actualRows4933++actualRows4934++actualRows4935++actualRows4936++actualRows4937++actualRows4938++actualRows4939++actualRows4940++actualRows4941++actualRows4942++actualRows4943++actualRows4944++actualRows4945++actualRows4946++actualRows4947++actualRows4948++actualRows4949++actualRows4950++actualRows4951++actualRows4952++actualRows4953++actualRows4954++actualRows4955++actualRows4956++actualRows4957++actualRows4958++actualRows4959
def partOps75 : List WordIR.Op := [.bnot 4895,.bxor 4894 4896,.literal (BitVec.ofNat 32 2),.bxor 616 4898,.literal (BitVec.ofNat 32 0),.bnot 4900,.badd 4899 4901,.bnot 4902,.band 4897 4903,.bxor 4892 4904,.shr 4905 31,.literal (BitVec.ofNat 32 1),.bxor 4906 4907,.bnot 4908,.literal (BitVec.ofNat 32 1),.badd 4909 4910,.band 4911 2130,.literal (BitVec.ofNat 32 2),.bxor 616 4913,.literal (BitVec.ofNat 32 0),.bnot 4915,.band 4914 4916,.literal (BitVec.ofNat 32 2),.bxor 616 4918,.literal (BitVec.ofNat 32 0),.bnot 4920,.bxor 4919 4921,.literal (BitVec.ofNat 32 2),.bxor 616 4923,.literal (BitVec.ofNat 32 0),.bnot 4925,.badd 4924 4926,.bnot 4927,.band 4922 4928,.bxor 4917 4929,.shr 4930 31,.literal (BitVec.ofNat 32 1),.bxor 4931 4932,.bnot 4933,.literal (BitVec.ofNat 32 1),.badd 4934 4935,.bnot 4936,.band 4937 1938,.bxor 4912 4938,.literal (BitVec.ofNat 32 2),.bxor 616 4940,.literal (BitVec.ofNat 32 0),.bnot 4942,.band 4941 4943,.literal (BitVec.ofNat 32 2),.bxor 616 4945,.literal (BitVec.ofNat 32 0),.bnot 4947,.bxor 4946 4948,.literal (BitVec.ofNat 32 2),.bxor 616 4950,.literal (BitVec.ofNat 32 0),.bnot 4952,.badd 4951 4953,.bnot 4954,.band 4949 4955,.bxor 4944 4956,.shr 4957 31,.literal (BitVec.ofNat 32 1)]
theorem partExact75 : partRows75=WordField.rows actualModulus 4896 partOps75 := by
  simp only [partRows75,partOps75,WordField.rows,rows4896,rows4897,rows4898,rows4899,rows4900,rows4901,rows4902,rows4903,rows4904,rows4905,rows4906,rows4907,rows4908,rows4909,rows4910,rows4911,rows4912,rows4913,rows4914,rows4915,rows4916,rows4917,rows4918,rows4919,rows4920,rows4921,rows4922,rows4923,rows4924,rows4925,rows4926,rows4927,rows4928,rows4929,rows4930,rows4931,rows4932,rows4933,rows4934,rows4935,rows4936,rows4937,rows4938,rows4939,rows4940,rows4941,rows4942,rows4943,rows4944,rows4945,rows4946,rows4947,rows4948,rows4949,rows4950,rows4951,rows4952,rows4953,rows4954,rows4955,rows4956,rows4957,rows4958,rows4959,List.append_assoc,List.append_nil]
theorem partLength75 : partOps75.length=64 := by decide
theorem partStats75 : partRows75.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows75=332640 := by
  simp only [partRows75,List.length_append,MatrixRowBlocks.rows_weight_append,stats4896.1,stats4896.2,stats4897.1,stats4897.2,stats4898.1,stats4898.2,stats4899.1,stats4899.2,stats4900.1,stats4900.2,stats4901.1,stats4901.2,stats4902.1,stats4902.2,stats4903.1,stats4903.2,stats4904.1,stats4904.2,stats4905.1,stats4905.2,stats4906.1,stats4906.2,stats4907.1,stats4907.2,stats4908.1,stats4908.2,stats4909.1,stats4909.2,stats4910.1,stats4910.2,stats4911.1,stats4911.2,stats4912.1,stats4912.2,stats4913.1,stats4913.2,stats4914.1,stats4914.2,stats4915.1,stats4915.2,stats4916.1,stats4916.2,stats4917.1,stats4917.2,stats4918.1,stats4918.2,stats4919.1,stats4919.2,stats4920.1,stats4920.2,stats4921.1,stats4921.2,stats4922.1,stats4922.2,stats4923.1,stats4923.2,stats4924.1,stats4924.2,stats4925.1,stats4925.2,stats4926.1,stats4926.2,stats4927.1,stats4927.2,stats4928.1,stats4928.2,stats4929.1,stats4929.2,stats4930.1,stats4930.2,stats4931.1,stats4931.2,stats4932.1,stats4932.2,stats4933.1,stats4933.2,stats4934.1,stats4934.2,stats4935.1,stats4935.2,stats4936.1,stats4936.2,stats4937.1,stats4937.2,stats4938.1,stats4938.2,stats4939.1,stats4939.2,stats4940.1,stats4940.2,stats4941.1,stats4941.2,stats4942.1,stats4942.2,stats4943.1,stats4943.2,stats4944.1,stats4944.2,stats4945.1,stats4945.2,stats4946.1,stats4946.2,stats4947.1,stats4947.2,stats4948.1,stats4948.2,stats4949.1,stats4949.2,stats4950.1,stats4950.2,stats4951.1,stats4951.2,stats4952.1,stats4952.2,stats4953.1,stats4953.2,stats4954.1,stats4954.2,stats4955.1,stats4955.2,stats4956.1,stats4956.2,stats4957.1,stats4957.2,stats4958.1,stats4958.2,stats4959.1,stats4959.2]
  decide
end QuotedPairedPathRoundCheckedRows
