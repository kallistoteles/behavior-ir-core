import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData92
import AuthenticatedBranchRoundInstructionMatrixData93
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5942 : actualRows5942=WordField.canonicalRows actualModulus 5942 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5942 : actualRows5942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5942=2820 := by core033_kernel_decide
theorem rows5943 : actualRows5943=WordField.canonicalRows actualModulus 5943 (.bnot 5942) := by core033_kernel_decide
theorem stats5943 : actualRows5943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5943=6276 := by core033_kernel_decide
theorem rows5944 : actualRows5944=WordField.canonicalRows actualModulus 5944 (.bxor 5941 5943) := by core033_kernel_decide
theorem stats5944 : actualRows5944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5944=7428 := by core033_kernel_decide
theorem rows5945 : actualRows5945=WordField.canonicalRows actualModulus 5945 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5945 : actualRows5945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5945=2892 := by core033_kernel_decide
theorem rows5946 : actualRows5946=WordField.canonicalRows actualModulus 5946 (.bxor 1299 5945) := by core033_kernel_decide
theorem stats5946 : actualRows5946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5946=7428 := by core033_kernel_decide
theorem rows5947 : actualRows5947=WordField.canonicalRows actualModulus 5947 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5947 : actualRows5947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5947=2820 := by core033_kernel_decide
theorem rows5948 : actualRows5948=WordField.canonicalRows actualModulus 5948 (.bnot 5947) := by core033_kernel_decide
theorem stats5948 : actualRows5948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5948=6276 := by core033_kernel_decide
theorem rows5949 : actualRows5949=WordField.canonicalRows actualModulus 5949 (.badd 5946 5948) := by core033_kernel_decide
theorem stats5949 : actualRows5949.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5949=5388 := by core033_kernel_decide
theorem rows5950 : actualRows5950=WordField.canonicalRows actualModulus 5950 (.bnot 5949) := by core033_kernel_decide
theorem stats5950 : actualRows5950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5950=6276 := by core033_kernel_decide
theorem rows5951 : actualRows5951=WordField.canonicalRows actualModulus 5951 (.band 5944 5950) := by core033_kernel_decide
theorem stats5951 : actualRows5951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5951=5124 := by core033_kernel_decide
theorem rows5952 : actualRows5952=WordField.canonicalRows actualModulus 5952 (.bxor 5939 5951) := by core033_kernel_decide
theorem stats5952 : actualRows5952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5952=7428 := by core033_kernel_decide
theorem rows5953 : actualRows5953=WordField.canonicalRows actualModulus 5953 (.shr 5952 31) := by core033_kernel_decide
theorem stats5953 : actualRows5953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5953=2892 := by core033_kernel_decide
theorem rows5954 : actualRows5954=WordField.canonicalRows actualModulus 5954 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5954 : actualRows5954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5954=2892 := by core033_kernel_decide
theorem rows5955 : actualRows5955=WordField.canonicalRows actualModulus 5955 (.bxor 5953 5954) := by core033_kernel_decide
theorem stats5955 : actualRows5955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5955=7428 := by core033_kernel_decide
theorem rows5956 : actualRows5956=WordField.canonicalRows actualModulus 5956 (.bnot 5955) := by core033_kernel_decide
theorem stats5956 : actualRows5956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5956=6276 := by core033_kernel_decide
theorem rows5957 : actualRows5957=WordField.canonicalRows actualModulus 5957 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5957 : actualRows5957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5957=2892 := by core033_kernel_decide
theorem rows5958 : actualRows5958=WordField.canonicalRows actualModulus 5958 (.badd 5956 5957) := by core033_kernel_decide
theorem stats5958 : actualRows5958.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5958=5388 := by core033_kernel_decide
theorem rows5959 : actualRows5959=WordField.canonicalRows actualModulus 5959 (.band 5958 2834) := by core033_kernel_decide
theorem stats5959 : actualRows5959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5959=5124 := by core033_kernel_decide
theorem rows5960 : actualRows5960=WordField.canonicalRows actualModulus 5960 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5960 : actualRows5960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5960=2892 := by core033_kernel_decide
theorem rows5961 : actualRows5961=WordField.canonicalRows actualModulus 5961 (.bxor 1299 5960) := by core033_kernel_decide
theorem stats5961 : actualRows5961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5961=7428 := by core033_kernel_decide
theorem rows5962 : actualRows5962=WordField.canonicalRows actualModulus 5962 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5962 : actualRows5962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5962=2820 := by core033_kernel_decide
theorem rows5963 : actualRows5963=WordField.canonicalRows actualModulus 5963 (.bnot 5962) := by core033_kernel_decide
theorem stats5963 : actualRows5963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5963=6276 := by core033_kernel_decide
theorem rows5964 : actualRows5964=WordField.canonicalRows actualModulus 5964 (.band 5961 5963) := by core033_kernel_decide
theorem stats5964 : actualRows5964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5964=5124 := by core033_kernel_decide
theorem rows5965 : actualRows5965=WordField.canonicalRows actualModulus 5965 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5965 : actualRows5965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5965=2892 := by core033_kernel_decide
theorem rows5966 : actualRows5966=WordField.canonicalRows actualModulus 5966 (.bxor 1299 5965) := by core033_kernel_decide
theorem stats5966 : actualRows5966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5966=7428 := by core033_kernel_decide
theorem rows5967 : actualRows5967=WordField.canonicalRows actualModulus 5967 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5967 : actualRows5967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5967=2820 := by core033_kernel_decide
theorem rows5968 : actualRows5968=WordField.canonicalRows actualModulus 5968 (.bnot 5967) := by core033_kernel_decide
theorem stats5968 : actualRows5968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5968=6276 := by core033_kernel_decide
theorem rows5969 : actualRows5969=WordField.canonicalRows actualModulus 5969 (.bxor 5966 5968) := by core033_kernel_decide
theorem stats5969 : actualRows5969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5969=7428 := by core033_kernel_decide
theorem rows5970 : actualRows5970=WordField.canonicalRows actualModulus 5970 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5970 : actualRows5970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5970=2892 := by core033_kernel_decide
theorem rows5971 : actualRows5971=WordField.canonicalRows actualModulus 5971 (.bxor 1299 5970) := by core033_kernel_decide
theorem stats5971 : actualRows5971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5971=7428 := by core033_kernel_decide
theorem rows5972 : actualRows5972=WordField.canonicalRows actualModulus 5972 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5972 : actualRows5972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5972=2820 := by core033_kernel_decide
theorem rows5973 : actualRows5973=WordField.canonicalRows actualModulus 5973 (.bnot 5972) := by core033_kernel_decide
theorem stats5973 : actualRows5973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5973=6276 := by core033_kernel_decide
theorem rows5974 : actualRows5974=WordField.canonicalRows actualModulus 5974 (.badd 5971 5973) := by core033_kernel_decide
theorem stats5974 : actualRows5974.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5974=5388 := by core033_kernel_decide
theorem rows5975 : actualRows5975=WordField.canonicalRows actualModulus 5975 (.bnot 5974) := by core033_kernel_decide
theorem stats5975 : actualRows5975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5975=6276 := by core033_kernel_decide
theorem rows5976 : actualRows5976=WordField.canonicalRows actualModulus 5976 (.band 5969 5975) := by core033_kernel_decide
theorem stats5976 : actualRows5976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5976=5124 := by core033_kernel_decide
theorem rows5977 : actualRows5977=WordField.canonicalRows actualModulus 5977 (.bxor 5964 5976) := by core033_kernel_decide
theorem stats5977 : actualRows5977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5977=7428 := by core033_kernel_decide
theorem rows5978 : actualRows5978=WordField.canonicalRows actualModulus 5978 (.shr 5977 31) := by core033_kernel_decide
theorem stats5978 : actualRows5978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5978=2892 := by core033_kernel_decide
theorem rows5979 : actualRows5979=WordField.canonicalRows actualModulus 5979 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5979 : actualRows5979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5979=2892 := by core033_kernel_decide
theorem rows5980 : actualRows5980=WordField.canonicalRows actualModulus 5980 (.bxor 5978 5979) := by core033_kernel_decide
theorem stats5980 : actualRows5980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5980=7428 := by core033_kernel_decide
theorem rows5981 : actualRows5981=WordField.canonicalRows actualModulus 5981 (.bnot 5980) := by core033_kernel_decide
theorem stats5981 : actualRows5981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5981=6276 := by core033_kernel_decide
theorem rows5982 : actualRows5982=WordField.canonicalRows actualModulus 5982 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5982 : actualRows5982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5982=2892 := by core033_kernel_decide
theorem rows5983 : actualRows5983=WordField.canonicalRows actualModulus 5983 (.badd 5981 5982) := by core033_kernel_decide
theorem stats5983 : actualRows5983.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5983=5388 := by core033_kernel_decide
theorem rows5984 : actualRows5984=WordField.canonicalRows actualModulus 5984 (.bnot 5983) := by core033_kernel_decide
theorem stats5984 : actualRows5984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5984=6276 := by core033_kernel_decide
theorem rows5985 : actualRows5985=WordField.canonicalRows actualModulus 5985 (.band 5984 2642) := by core033_kernel_decide
theorem stats5985 : actualRows5985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5985=5124 := by core033_kernel_decide
theorem rows5986 : actualRows5986=WordField.canonicalRows actualModulus 5986 (.bxor 5959 5985) := by core033_kernel_decide
theorem stats5986 : actualRows5986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5986=7428 := by core033_kernel_decide
theorem rows5987 : actualRows5987=WordField.canonicalRows actualModulus 5987 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5987 : actualRows5987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5987=2892 := by core033_kernel_decide
theorem rows5988 : actualRows5988=WordField.canonicalRows actualModulus 5988 (.bxor 1299 5987) := by core033_kernel_decide
theorem stats5988 : actualRows5988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5988=7428 := by core033_kernel_decide
theorem rows5989 : actualRows5989=WordField.canonicalRows actualModulus 5989 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5989 : actualRows5989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5989=2820 := by core033_kernel_decide
theorem rows5990 : actualRows5990=WordField.canonicalRows actualModulus 5990 (.bnot 5989) := by core033_kernel_decide
theorem stats5990 : actualRows5990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5990=6276 := by core033_kernel_decide
theorem rows5991 : actualRows5991=WordField.canonicalRows actualModulus 5991 (.band 5988 5990) := by core033_kernel_decide
theorem stats5991 : actualRows5991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5991=5124 := by core033_kernel_decide
theorem rows5992 : actualRows5992=WordField.canonicalRows actualModulus 5992 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5992 : actualRows5992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5992=2892 := by core033_kernel_decide
theorem rows5993 : actualRows5993=WordField.canonicalRows actualModulus 5993 (.bxor 1299 5992) := by core033_kernel_decide
theorem stats5993 : actualRows5993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5993=7428 := by core033_kernel_decide
theorem rows5994 : actualRows5994=WordField.canonicalRows actualModulus 5994 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5994 : actualRows5994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5994=2820 := by core033_kernel_decide
theorem rows5995 : actualRows5995=WordField.canonicalRows actualModulus 5995 (.bnot 5994) := by core033_kernel_decide
theorem stats5995 : actualRows5995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5995=6276 := by core033_kernel_decide
theorem rows5996 : actualRows5996=WordField.canonicalRows actualModulus 5996 (.bxor 5993 5995) := by core033_kernel_decide
theorem stats5996 : actualRows5996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5996=7428 := by core033_kernel_decide
theorem rows5997 : actualRows5997=WordField.canonicalRows actualModulus 5997 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5997 : actualRows5997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5997=2892 := by core033_kernel_decide
theorem rows5998 : actualRows5998=WordField.canonicalRows actualModulus 5998 (.bxor 1299 5997) := by core033_kernel_decide
theorem stats5998 : actualRows5998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5998=7428 := by core033_kernel_decide
theorem rows5999 : actualRows5999=WordField.canonicalRows actualModulus 5999 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5999 : actualRows5999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5999=2820 := by core033_kernel_decide
theorem rows6000 : actualRows6000=WordField.canonicalRows actualModulus 6000 (.bnot 5999) := by core033_kernel_decide
theorem stats6000 : actualRows6000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6000=6276 := by core033_kernel_decide
theorem rows6001 : actualRows6001=WordField.canonicalRows actualModulus 6001 (.badd 5998 6000) := by core033_kernel_decide
theorem stats6001 : actualRows6001.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6001=5388 := by core033_kernel_decide
theorem rows6002 : actualRows6002=WordField.canonicalRows actualModulus 6002 (.bnot 6001) := by core033_kernel_decide
theorem stats6002 : actualRows6002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6002=6276 := by core033_kernel_decide
theorem rows6003 : actualRows6003=WordField.canonicalRows actualModulus 6003 (.band 5996 6002) := by core033_kernel_decide
theorem stats6003 : actualRows6003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6003=5124 := by core033_kernel_decide
theorem rows6004 : actualRows6004=WordField.canonicalRows actualModulus 6004 (.bxor 5991 6003) := by core033_kernel_decide
theorem stats6004 : actualRows6004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6004=7428 := by core033_kernel_decide
theorem rows6005 : actualRows6005=WordField.canonicalRows actualModulus 6005 (.shr 6004 31) := by core033_kernel_decide
theorem stats6005 : actualRows6005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6005=2892 := by core033_kernel_decide
def partRows91 : List R1CS.Row := actualRows5942++actualRows5943++actualRows5944++actualRows5945++actualRows5946++actualRows5947++actualRows5948++actualRows5949++actualRows5950++actualRows5951++actualRows5952++actualRows5953++actualRows5954++actualRows5955++actualRows5956++actualRows5957++actualRows5958++actualRows5959++actualRows5960++actualRows5961++actualRows5962++actualRows5963++actualRows5964++actualRows5965++actualRows5966++actualRows5967++actualRows5968++actualRows5969++actualRows5970++actualRows5971++actualRows5972++actualRows5973++actualRows5974++actualRows5975++actualRows5976++actualRows5977++actualRows5978++actualRows5979++actualRows5980++actualRows5981++actualRows5982++actualRows5983++actualRows5984++actualRows5985++actualRows5986++actualRows5987++actualRows5988++actualRows5989++actualRows5990++actualRows5991++actualRows5992++actualRows5993++actualRows5994++actualRows5995++actualRows5996++actualRows5997++actualRows5998++actualRows5999++actualRows6000++actualRows6001++actualRows6002++actualRows6003++actualRows6004++actualRows6005
def partOps91 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 5942,.bxor 5941 5943,.literal (BitVec.ofNat 32 2),.bxor 1299 5945,.literal (BitVec.ofNat 32 0),.bnot 5947,.badd 5946 5948,.bnot 5949,.band 5944 5950,.bxor 5939 5951,.shr 5952 31,.literal (BitVec.ofNat 32 1),.bxor 5953 5954,.bnot 5955,.literal (BitVec.ofNat 32 1),.badd 5956 5957,.band 5958 2834,.literal (BitVec.ofNat 32 2),.bxor 1299 5960,.literal (BitVec.ofNat 32 0),.bnot 5962,.band 5961 5963,.literal (BitVec.ofNat 32 2),.bxor 1299 5965,.literal (BitVec.ofNat 32 0),.bnot 5967,.bxor 5966 5968,.literal (BitVec.ofNat 32 2),.bxor 1299 5970,.literal (BitVec.ofNat 32 0),.bnot 5972,.badd 5971 5973,.bnot 5974,.band 5969 5975,.bxor 5964 5976,.shr 5977 31,.literal (BitVec.ofNat 32 1),.bxor 5978 5979,.bnot 5980,.literal (BitVec.ofNat 32 1),.badd 5981 5982,.bnot 5983,.band 5984 2642,.bxor 5959 5985,.literal (BitVec.ofNat 32 2),.bxor 1299 5987,.literal (BitVec.ofNat 32 0),.bnot 5989,.band 5988 5990,.literal (BitVec.ofNat 32 2),.bxor 1299 5992,.literal (BitVec.ofNat 32 0),.bnot 5994,.bxor 5993 5995,.literal (BitVec.ofNat 32 2),.bxor 1299 5997,.literal (BitVec.ofNat 32 0),.bnot 5999,.badd 5998 6000,.bnot 6001,.band 5996 6002,.bxor 5991 6003,.shr 6004 31]
theorem partExact91 : partRows91=WordField.rows actualModulus 5942 partOps91 := by
  simp only [partRows91,partOps91,WordField.rows,rows5942,rows5943,rows5944,rows5945,rows5946,rows5947,rows5948,rows5949,rows5950,rows5951,rows5952,rows5953,rows5954,rows5955,rows5956,rows5957,rows5958,rows5959,rows5960,rows5961,rows5962,rows5963,rows5964,rows5965,rows5966,rows5967,rows5968,rows5969,rows5970,rows5971,rows5972,rows5973,rows5974,rows5975,rows5976,rows5977,rows5978,rows5979,rows5980,rows5981,rows5982,rows5983,rows5984,rows5985,rows5986,rows5987,rows5988,rows5989,rows5990,rows5991,rows5992,rows5993,rows5994,rows5995,rows5996,rows5997,rows5998,rows5999,rows6000,rows6001,rows6002,rows6003,rows6004,rows6005,List.append_assoc,List.append_nil]
theorem partLength91 : partOps91.length=64 := by decide
theorem partStats91 : partRows91.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows91=332568 := by
  simp only [partRows91,List.length_append,MatrixRowBlocks.rows_weight_append,stats5942.1,stats5942.2,stats5943.1,stats5943.2,stats5944.1,stats5944.2,stats5945.1,stats5945.2,stats5946.1,stats5946.2,stats5947.1,stats5947.2,stats5948.1,stats5948.2,stats5949.1,stats5949.2,stats5950.1,stats5950.2,stats5951.1,stats5951.2,stats5952.1,stats5952.2,stats5953.1,stats5953.2,stats5954.1,stats5954.2,stats5955.1,stats5955.2,stats5956.1,stats5956.2,stats5957.1,stats5957.2,stats5958.1,stats5958.2,stats5959.1,stats5959.2,stats5960.1,stats5960.2,stats5961.1,stats5961.2,stats5962.1,stats5962.2,stats5963.1,stats5963.2,stats5964.1,stats5964.2,stats5965.1,stats5965.2,stats5966.1,stats5966.2,stats5967.1,stats5967.2,stats5968.1,stats5968.2,stats5969.1,stats5969.2,stats5970.1,stats5970.2,stats5971.1,stats5971.2,stats5972.1,stats5972.2,stats5973.1,stats5973.2,stats5974.1,stats5974.2,stats5975.1,stats5975.2,stats5976.1,stats5976.2,stats5977.1,stats5977.2,stats5978.1,stats5978.2,stats5979.1,stats5979.2,stats5980.1,stats5980.2,stats5981.1,stats5981.2,stats5982.1,stats5982.2,stats5983.1,stats5983.2,stats5984.1,stats5984.2,stats5985.1,stats5985.2,stats5986.1,stats5986.2,stats5987.1,stats5987.2,stats5988.1,stats5988.2,stats5989.1,stats5989.2,stats5990.1,stats5990.2,stats5991.1,stats5991.2,stats5992.1,stats5992.2,stats5993.1,stats5993.2,stats5994.1,stats5994.2,stats5995.1,stats5995.2,stats5996.1,stats5996.2,stats5997.1,stats5997.2,stats5998.1,stats5998.2,stats5999.1,stats5999.2,stats6000.1,stats6000.2,stats6001.1,stats6001.2,stats6002.1,stats6002.2,stats6003.1,stats6003.2,stats6004.1,stats6004.2,stats6005.1,stats6005.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
