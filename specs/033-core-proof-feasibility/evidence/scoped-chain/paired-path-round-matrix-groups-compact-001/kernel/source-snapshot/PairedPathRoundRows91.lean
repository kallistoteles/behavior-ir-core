import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData92
import PairedPathRoundInstructionMatrixData93
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5920 : actualRows5920=WordField.canonicalRows actualModulus 5920 (.bxor 616 5919) := by core033_kernel_decide
theorem stats5920 : actualRows5920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5920=7428 := by core033_kernel_decide
theorem rows5921 : actualRows5921=WordField.canonicalRows actualModulus 5921 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5921 : actualRows5921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5921=2820 := by core033_kernel_decide
theorem rows5922 : actualRows5922=WordField.canonicalRows actualModulus 5922 (.bnot 5921) := by core033_kernel_decide
theorem stats5922 : actualRows5922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5922=6276 := by core033_kernel_decide
theorem rows5923 : actualRows5923=WordField.canonicalRows actualModulus 5923 (.badd 5920 5922) := by core033_kernel_decide
theorem stats5923 : actualRows5923.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5923=5388 := by core033_kernel_decide
theorem rows5924 : actualRows5924=WordField.canonicalRows actualModulus 5924 (.bnot 5923) := by core033_kernel_decide
theorem stats5924 : actualRows5924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5924=6276 := by core033_kernel_decide
theorem rows5925 : actualRows5925=WordField.canonicalRows actualModulus 5925 (.band 5918 5924) := by core033_kernel_decide
theorem stats5925 : actualRows5925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5925=5124 := by core033_kernel_decide
theorem rows5926 : actualRows5926=WordField.canonicalRows actualModulus 5926 (.bxor 5913 5925) := by core033_kernel_decide
theorem stats5926 : actualRows5926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5926=7428 := by core033_kernel_decide
theorem rows5927 : actualRows5927=WordField.canonicalRows actualModulus 5927 (.shr 5926 31) := by core033_kernel_decide
theorem stats5927 : actualRows5927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5927=2892 := by core033_kernel_decide
theorem rows5928 : actualRows5928=WordField.canonicalRows actualModulus 5928 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5928 : actualRows5928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5928=2892 := by core033_kernel_decide
theorem rows5929 : actualRows5929=WordField.canonicalRows actualModulus 5929 (.bxor 5927 5928) := by core033_kernel_decide
theorem stats5929 : actualRows5929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5929=7428 := by core033_kernel_decide
theorem rows5930 : actualRows5930=WordField.canonicalRows actualModulus 5930 (.bnot 5929) := by core033_kernel_decide
theorem stats5930 : actualRows5930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5930=6276 := by core033_kernel_decide
theorem rows5931 : actualRows5931=WordField.canonicalRows actualModulus 5931 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5931 : actualRows5931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5931=2892 := by core033_kernel_decide
theorem rows5932 : actualRows5932=WordField.canonicalRows actualModulus 5932 (.badd 5930 5931) := by core033_kernel_decide
theorem stats5932 : actualRows5932.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5932=5388 := by core033_kernel_decide
theorem rows5933 : actualRows5933=WordField.canonicalRows actualModulus 5933 (.bnot 5932) := by core033_kernel_decide
theorem stats5933 : actualRows5933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5933=6276 := by core033_kernel_decide
theorem rows5934 : actualRows5934=WordField.canonicalRows actualModulus 5934 (.band 5933 1995) := by core033_kernel_decide
theorem stats5934 : actualRows5934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5934=5124 := by core033_kernel_decide
theorem rows5935 : actualRows5935=WordField.canonicalRows actualModulus 5935 (.bxor 5908 5934) := by core033_kernel_decide
theorem stats5935 : actualRows5935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5935=7428 := by core033_kernel_decide
theorem rows5936 : actualRows5936=WordField.canonicalRows actualModulus 5936 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5936 : actualRows5936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5936=2892 := by core033_kernel_decide
theorem rows5937 : actualRows5937=WordField.canonicalRows actualModulus 5937 (.bxor 616 5936) := by core033_kernel_decide
theorem stats5937 : actualRows5937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5937=7428 := by core033_kernel_decide
theorem rows5938 : actualRows5938=WordField.canonicalRows actualModulus 5938 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5938 : actualRows5938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5938=2820 := by core033_kernel_decide
theorem rows5939 : actualRows5939=WordField.canonicalRows actualModulus 5939 (.bnot 5938) := by core033_kernel_decide
theorem stats5939 : actualRows5939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5939=6276 := by core033_kernel_decide
theorem rows5940 : actualRows5940=WordField.canonicalRows actualModulus 5940 (.band 5937 5939) := by core033_kernel_decide
theorem stats5940 : actualRows5940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5940=5124 := by core033_kernel_decide
theorem rows5941 : actualRows5941=WordField.canonicalRows actualModulus 5941 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5941 : actualRows5941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5941=2892 := by core033_kernel_decide
theorem rows5942 : actualRows5942=WordField.canonicalRows actualModulus 5942 (.bxor 616 5941) := by core033_kernel_decide
theorem stats5942 : actualRows5942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5942=7428 := by core033_kernel_decide
theorem rows5943 : actualRows5943=WordField.canonicalRows actualModulus 5943 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5943 : actualRows5943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5943=2820 := by core033_kernel_decide
theorem rows5944 : actualRows5944=WordField.canonicalRows actualModulus 5944 (.bnot 5943) := by core033_kernel_decide
theorem stats5944 : actualRows5944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5944=6276 := by core033_kernel_decide
theorem rows5945 : actualRows5945=WordField.canonicalRows actualModulus 5945 (.bxor 5942 5944) := by core033_kernel_decide
theorem stats5945 : actualRows5945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5945=7428 := by core033_kernel_decide
theorem rows5946 : actualRows5946=WordField.canonicalRows actualModulus 5946 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5946 : actualRows5946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5946=2892 := by core033_kernel_decide
theorem rows5947 : actualRows5947=WordField.canonicalRows actualModulus 5947 (.bxor 616 5946) := by core033_kernel_decide
theorem stats5947 : actualRows5947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5947=7428 := by core033_kernel_decide
theorem rows5948 : actualRows5948=WordField.canonicalRows actualModulus 5948 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5948 : actualRows5948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5948=2820 := by core033_kernel_decide
theorem rows5949 : actualRows5949=WordField.canonicalRows actualModulus 5949 (.bnot 5948) := by core033_kernel_decide
theorem stats5949 : actualRows5949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5949=6276 := by core033_kernel_decide
theorem rows5950 : actualRows5950=WordField.canonicalRows actualModulus 5950 (.badd 5947 5949) := by core033_kernel_decide
theorem stats5950 : actualRows5950.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5950=5388 := by core033_kernel_decide
theorem rows5951 : actualRows5951=WordField.canonicalRows actualModulus 5951 (.bnot 5950) := by core033_kernel_decide
theorem stats5951 : actualRows5951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5951=6276 := by core033_kernel_decide
theorem rows5952 : actualRows5952=WordField.canonicalRows actualModulus 5952 (.band 5945 5951) := by core033_kernel_decide
theorem stats5952 : actualRows5952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5952=5124 := by core033_kernel_decide
theorem rows5953 : actualRows5953=WordField.canonicalRows actualModulus 5953 (.bxor 5940 5952) := by core033_kernel_decide
theorem stats5953 : actualRows5953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5953=7428 := by core033_kernel_decide
theorem rows5954 : actualRows5954=WordField.canonicalRows actualModulus 5954 (.shr 5953 31) := by core033_kernel_decide
theorem stats5954 : actualRows5954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5954=2892 := by core033_kernel_decide
theorem rows5955 : actualRows5955=WordField.canonicalRows actualModulus 5955 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5955 : actualRows5955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5955=2892 := by core033_kernel_decide
theorem rows5956 : actualRows5956=WordField.canonicalRows actualModulus 5956 (.bxor 5954 5955) := by core033_kernel_decide
theorem stats5956 : actualRows5956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5956=7428 := by core033_kernel_decide
theorem rows5957 : actualRows5957=WordField.canonicalRows actualModulus 5957 (.bnot 5956) := by core033_kernel_decide
theorem stats5957 : actualRows5957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5957=6276 := by core033_kernel_decide
theorem rows5958 : actualRows5958=WordField.canonicalRows actualModulus 5958 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5958 : actualRows5958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5958=2892 := by core033_kernel_decide
theorem rows5959 : actualRows5959=WordField.canonicalRows actualModulus 5959 (.badd 5957 5958) := by core033_kernel_decide
theorem stats5959 : actualRows5959.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5959=5388 := by core033_kernel_decide
theorem rows5960 : actualRows5960=WordField.canonicalRows actualModulus 5960 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5960 : actualRows5960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5960=2820 := by core033_kernel_decide
theorem rows5961 : actualRows5961=WordField.canonicalRows actualModulus 5961 (.band 5959 5960) := by core033_kernel_decide
theorem stats5961 : actualRows5961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5961=5124 := by core033_kernel_decide
theorem rows5962 : actualRows5962=WordField.canonicalRows actualModulus 5962 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5962 : actualRows5962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5962=2892 := by core033_kernel_decide
theorem rows5963 : actualRows5963=WordField.canonicalRows actualModulus 5963 (.bxor 616 5962) := by core033_kernel_decide
theorem stats5963 : actualRows5963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5963=7428 := by core033_kernel_decide
theorem rows5964 : actualRows5964=WordField.canonicalRows actualModulus 5964 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5964 : actualRows5964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5964=2820 := by core033_kernel_decide
theorem rows5965 : actualRows5965=WordField.canonicalRows actualModulus 5965 (.bnot 5964) := by core033_kernel_decide
theorem stats5965 : actualRows5965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5965=6276 := by core033_kernel_decide
theorem rows5966 : actualRows5966=WordField.canonicalRows actualModulus 5966 (.band 5963 5965) := by core033_kernel_decide
theorem stats5966 : actualRows5966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5966=5124 := by core033_kernel_decide
theorem rows5967 : actualRows5967=WordField.canonicalRows actualModulus 5967 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5967 : actualRows5967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5967=2892 := by core033_kernel_decide
theorem rows5968 : actualRows5968=WordField.canonicalRows actualModulus 5968 (.bxor 616 5967) := by core033_kernel_decide
theorem stats5968 : actualRows5968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5968=7428 := by core033_kernel_decide
theorem rows5969 : actualRows5969=WordField.canonicalRows actualModulus 5969 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5969 : actualRows5969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5969=2820 := by core033_kernel_decide
theorem rows5970 : actualRows5970=WordField.canonicalRows actualModulus 5970 (.bnot 5969) := by core033_kernel_decide
theorem stats5970 : actualRows5970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5970=6276 := by core033_kernel_decide
theorem rows5971 : actualRows5971=WordField.canonicalRows actualModulus 5971 (.bxor 5968 5970) := by core033_kernel_decide
theorem stats5971 : actualRows5971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5971=7428 := by core033_kernel_decide
theorem rows5972 : actualRows5972=WordField.canonicalRows actualModulus 5972 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5972 : actualRows5972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5972=2892 := by core033_kernel_decide
theorem rows5973 : actualRows5973=WordField.canonicalRows actualModulus 5973 (.bxor 616 5972) := by core033_kernel_decide
theorem stats5973 : actualRows5973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5973=7428 := by core033_kernel_decide
theorem rows5974 : actualRows5974=WordField.canonicalRows actualModulus 5974 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5974 : actualRows5974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5974=2820 := by core033_kernel_decide
theorem rows5975 : actualRows5975=WordField.canonicalRows actualModulus 5975 (.bnot 5974) := by core033_kernel_decide
theorem stats5975 : actualRows5975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5975=6276 := by core033_kernel_decide
theorem rows5976 : actualRows5976=WordField.canonicalRows actualModulus 5976 (.badd 5973 5975) := by core033_kernel_decide
theorem stats5976 : actualRows5976.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5976=5388 := by core033_kernel_decide
theorem rows5977 : actualRows5977=WordField.canonicalRows actualModulus 5977 (.bnot 5976) := by core033_kernel_decide
theorem stats5977 : actualRows5977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5977=6276 := by core033_kernel_decide
theorem rows5978 : actualRows5978=WordField.canonicalRows actualModulus 5978 (.band 5971 5977) := by core033_kernel_decide
theorem stats5978 : actualRows5978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5978=5124 := by core033_kernel_decide
theorem rows5979 : actualRows5979=WordField.canonicalRows actualModulus 5979 (.bxor 5966 5978) := by core033_kernel_decide
theorem stats5979 : actualRows5979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5979=7428 := by core033_kernel_decide
theorem rows5980 : actualRows5980=WordField.canonicalRows actualModulus 5980 (.shr 5979 31) := by core033_kernel_decide
theorem stats5980 : actualRows5980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5980=2892 := by core033_kernel_decide
theorem rows5981 : actualRows5981=WordField.canonicalRows actualModulus 5981 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5981 : actualRows5981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5981=2892 := by core033_kernel_decide
theorem rows5982 : actualRows5982=WordField.canonicalRows actualModulus 5982 (.bxor 5980 5981) := by core033_kernel_decide
theorem stats5982 : actualRows5982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5982=7428 := by core033_kernel_decide
theorem rows5983 : actualRows5983=WordField.canonicalRows actualModulus 5983 (.bnot 5982) := by core033_kernel_decide
theorem stats5983 : actualRows5983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5983=6276 := by core033_kernel_decide
def partRows91 : List R1CS.Row := actualRows5920++actualRows5921++actualRows5922++actualRows5923++actualRows5924++actualRows5925++actualRows5926++actualRows5927++actualRows5928++actualRows5929++actualRows5930++actualRows5931++actualRows5932++actualRows5933++actualRows5934++actualRows5935++actualRows5936++actualRows5937++actualRows5938++actualRows5939++actualRows5940++actualRows5941++actualRows5942++actualRows5943++actualRows5944++actualRows5945++actualRows5946++actualRows5947++actualRows5948++actualRows5949++actualRows5950++actualRows5951++actualRows5952++actualRows5953++actualRows5954++actualRows5955++actualRows5956++actualRows5957++actualRows5958++actualRows5959++actualRows5960++actualRows5961++actualRows5962++actualRows5963++actualRows5964++actualRows5965++actualRows5966++actualRows5967++actualRows5968++actualRows5969++actualRows5970++actualRows5971++actualRows5972++actualRows5973++actualRows5974++actualRows5975++actualRows5976++actualRows5977++actualRows5978++actualRows5979++actualRows5980++actualRows5981++actualRows5982++actualRows5983
def partOps91 : List WordIR.Op := [.bxor 616 5919,.literal (BitVec.ofNat 32 0),.bnot 5921,.badd 5920 5922,.bnot 5923,.band 5918 5924,.bxor 5913 5925,.shr 5926 31,.literal (BitVec.ofNat 32 1),.bxor 5927 5928,.bnot 5929,.literal (BitVec.ofNat 32 1),.badd 5930 5931,.bnot 5932,.band 5933 1995,.bxor 5908 5934,.literal (BitVec.ofNat 32 2),.bxor 616 5936,.literal (BitVec.ofNat 32 0),.bnot 5938,.band 5937 5939,.literal (BitVec.ofNat 32 2),.bxor 616 5941,.literal (BitVec.ofNat 32 0),.bnot 5943,.bxor 5942 5944,.literal (BitVec.ofNat 32 2),.bxor 616 5946,.literal (BitVec.ofNat 32 0),.bnot 5948,.badd 5947 5949,.bnot 5950,.band 5945 5951,.bxor 5940 5952,.shr 5953 31,.literal (BitVec.ofNat 32 1),.bxor 5954 5955,.bnot 5956,.literal (BitVec.ofNat 32 1),.badd 5957 5958,.literal (BitVec.ofNat 32 0),.band 5959 5960,.literal (BitVec.ofNat 32 2),.bxor 616 5962,.literal (BitVec.ofNat 32 0),.bnot 5964,.band 5963 5965,.literal (BitVec.ofNat 32 2),.bxor 616 5967,.literal (BitVec.ofNat 32 0),.bnot 5969,.bxor 5968 5970,.literal (BitVec.ofNat 32 2),.bxor 616 5972,.literal (BitVec.ofNat 32 0),.bnot 5974,.badd 5973 5975,.bnot 5976,.band 5971 5977,.bxor 5966 5978,.shr 5979 31,.literal (BitVec.ofNat 32 1),.bxor 5980 5981,.bnot 5982]
theorem partExact91 : partRows91=WordField.rows actualModulus 5920 partOps91 := by
  simp only [partRows91,partOps91,WordField.rows,rows5920,rows5921,rows5922,rows5923,rows5924,rows5925,rows5926,rows5927,rows5928,rows5929,rows5930,rows5931,rows5932,rows5933,rows5934,rows5935,rows5936,rows5937,rows5938,rows5939,rows5940,rows5941,rows5942,rows5943,rows5944,rows5945,rows5946,rows5947,rows5948,rows5949,rows5950,rows5951,rows5952,rows5953,rows5954,rows5955,rows5956,rows5957,rows5958,rows5959,rows5960,rows5961,rows5962,rows5963,rows5964,rows5965,rows5966,rows5967,rows5968,rows5969,rows5970,rows5971,rows5972,rows5973,rows5974,rows5975,rows5976,rows5977,rows5978,rows5979,rows5980,rows5981,rows5982,rows5983,List.append_assoc,List.append_nil]
theorem partLength91 : partOps91.length=64 := by decide
theorem partStats91 : partRows91.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows91=332568 := by
  simp only [partRows91,List.length_append,MatrixRowBlocks.rows_weight_append,stats5920.1,stats5920.2,stats5921.1,stats5921.2,stats5922.1,stats5922.2,stats5923.1,stats5923.2,stats5924.1,stats5924.2,stats5925.1,stats5925.2,stats5926.1,stats5926.2,stats5927.1,stats5927.2,stats5928.1,stats5928.2,stats5929.1,stats5929.2,stats5930.1,stats5930.2,stats5931.1,stats5931.2,stats5932.1,stats5932.2,stats5933.1,stats5933.2,stats5934.1,stats5934.2,stats5935.1,stats5935.2,stats5936.1,stats5936.2,stats5937.1,stats5937.2,stats5938.1,stats5938.2,stats5939.1,stats5939.2,stats5940.1,stats5940.2,stats5941.1,stats5941.2,stats5942.1,stats5942.2,stats5943.1,stats5943.2,stats5944.1,stats5944.2,stats5945.1,stats5945.2,stats5946.1,stats5946.2,stats5947.1,stats5947.2,stats5948.1,stats5948.2,stats5949.1,stats5949.2,stats5950.1,stats5950.2,stats5951.1,stats5951.2,stats5952.1,stats5952.2,stats5953.1,stats5953.2,stats5954.1,stats5954.2,stats5955.1,stats5955.2,stats5956.1,stats5956.2,stats5957.1,stats5957.2,stats5958.1,stats5958.2,stats5959.1,stats5959.2,stats5960.1,stats5960.2,stats5961.1,stats5961.2,stats5962.1,stats5962.2,stats5963.1,stats5963.2,stats5964.1,stats5964.2,stats5965.1,stats5965.2,stats5966.1,stats5966.2,stats5967.1,stats5967.2,stats5968.1,stats5968.2,stats5969.1,stats5969.2,stats5970.1,stats5970.2,stats5971.1,stats5971.2,stats5972.1,stats5972.2,stats5973.1,stats5973.2,stats5974.1,stats5974.2,stats5975.1,stats5975.2,stats5976.1,stats5976.2,stats5977.1,stats5977.2,stats5978.1,stats5978.2,stats5979.1,stats5979.2,stats5980.1,stats5980.2,stats5981.1,stats5981.2,stats5982.1,stats5982.2,stats5983.1,stats5983.2]
  decide
end PairedPathRoundCheckedRows
