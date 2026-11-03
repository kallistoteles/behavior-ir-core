import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData141
import PathRoundDispatchInstructionMatrixData142
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9067 : actualRows9067=WordField.canonicalRows actualModulus 9067 (.bxor 9065 9066) := by core033_kernel_decide
theorem stats9067 : actualRows9067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9067=7428 := by core033_kernel_decide
theorem rows9068 : actualRows9068=WordField.canonicalRows actualModulus 9068 (.rotr 9064 25) := by core033_kernel_decide
theorem stats9068 : actualRows9068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9068=5124 := by core033_kernel_decide
theorem rows9069 : actualRows9069=WordField.canonicalRows actualModulus 9069 (.bxor 9067 9068) := by core033_kernel_decide
theorem stats9069 : actualRows9069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9069=7428 := by core033_kernel_decide
theorem rows9070 : actualRows9070=WordField.canonicalRows actualModulus 9070 (.badd 8983 9069) := by core033_kernel_decide
theorem stats9070 : actualRows9070.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9070=5388 := by core033_kernel_decide
theorem rows9071 : actualRows9071=WordField.canonicalRows actualModulus 9071 (.band 9064 9037) := by core033_kernel_decide
theorem stats9071 : actualRows9071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9071=5124 := by core033_kernel_decide
theorem rows9072 : actualRows9072=WordField.canonicalRows actualModulus 9072 (.bnot 9064) := by core033_kernel_decide
theorem stats9072 : actualRows9072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9072=6276 := by core033_kernel_decide
theorem rows9073 : actualRows9073=WordField.canonicalRows actualModulus 9073 (.band 9072 9010) := by core033_kernel_decide
theorem stats9073 : actualRows9073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9073=5124 := by core033_kernel_decide
theorem rows9074 : actualRows9074=WordField.canonicalRows actualModulus 9074 (.bxor 9071 9073) := by core033_kernel_decide
theorem stats9074 : actualRows9074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9074=7428 := by core033_kernel_decide
theorem rows9075 : actualRows9075=WordField.canonicalRows actualModulus 9075 (.badd 9070 9074) := by core033_kernel_decide
theorem stats9075 : actualRows9075.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9075=5388 := by core033_kernel_decide
theorem rows9076 : actualRows9076=WordField.canonicalRows actualModulus 9076 (.literal (BitVec.ofNat 32 1955562222)) := by core033_kernel_decide
theorem stats9076 : actualRows9076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9076=4044 := by core033_kernel_decide
theorem rows9077 : actualRows9077=WordField.canonicalRows actualModulus 9077 (.badd 9075 9076) := by core033_kernel_decide
theorem stats9077 : actualRows9077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9077=5388 := by core033_kernel_decide
theorem rows9078 : actualRows9078=WordField.canonicalRows actualModulus 9078 (.badd 9077 7461) := by core033_kernel_decide
theorem stats9078 : actualRows9078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9078=5388 := by core033_kernel_decide
theorem rows9079 : actualRows9079=WordField.canonicalRows actualModulus 9079 (.rotr 9063 2) := by core033_kernel_decide
theorem stats9079 : actualRows9079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9079=5124 := by core033_kernel_decide
theorem rows9080 : actualRows9080=WordField.canonicalRows actualModulus 9080 (.rotr 9063 13) := by core033_kernel_decide
theorem stats9080 : actualRows9080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9080=5124 := by core033_kernel_decide
theorem rows9081 : actualRows9081=WordField.canonicalRows actualModulus 9081 (.bxor 9079 9080) := by core033_kernel_decide
theorem stats9081 : actualRows9081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9081=7428 := by core033_kernel_decide
theorem rows9082 : actualRows9082=WordField.canonicalRows actualModulus 9082 (.rotr 9063 22) := by core033_kernel_decide
theorem stats9082 : actualRows9082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9082=5124 := by core033_kernel_decide
theorem rows9083 : actualRows9083=WordField.canonicalRows actualModulus 9083 (.bxor 9081 9082) := by core033_kernel_decide
theorem stats9083 : actualRows9083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9083=7428 := by core033_kernel_decide
theorem rows9084 : actualRows9084=WordField.canonicalRows actualModulus 9084 (.band 9063 9036) := by core033_kernel_decide
theorem stats9084 : actualRows9084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9084=5124 := by core033_kernel_decide
theorem rows9085 : actualRows9085=WordField.canonicalRows actualModulus 9085 (.band 9063 9009) := by core033_kernel_decide
theorem stats9085 : actualRows9085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9085=5124 := by core033_kernel_decide
theorem rows9086 : actualRows9086=WordField.canonicalRows actualModulus 9086 (.bxor 9084 9085) := by core033_kernel_decide
theorem stats9086 : actualRows9086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9086=7428 := by core033_kernel_decide
theorem rows9087 : actualRows9087=WordField.canonicalRows actualModulus 9087 (.band 9036 9009) := by core033_kernel_decide
theorem stats9087 : actualRows9087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9087=5124 := by core033_kernel_decide
theorem rows9088 : actualRows9088=WordField.canonicalRows actualModulus 9088 (.bxor 9086 9087) := by core033_kernel_decide
theorem stats9088 : actualRows9088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9088=7428 := by core033_kernel_decide
theorem rows9089 : actualRows9089=WordField.canonicalRows actualModulus 9089 (.badd 9083 9088) := by core033_kernel_decide
theorem stats9089 : actualRows9089.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9089=5388 := by core033_kernel_decide
theorem rows9090 : actualRows9090=WordField.canonicalRows actualModulus 9090 (.badd 9078 9089) := by core033_kernel_decide
theorem stats9090 : actualRows9090.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9090=5388 := by core033_kernel_decide
theorem rows9091 : actualRows9091=WordField.canonicalRows actualModulus 9091 (.badd 8982 9078) := by core033_kernel_decide
theorem stats9091 : actualRows9091.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9091=5388 := by core033_kernel_decide
theorem rows9092 : actualRows9092=WordField.canonicalRows actualModulus 9092 (.rotr 9091 6) := by core033_kernel_decide
theorem stats9092 : actualRows9092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9092=5124 := by core033_kernel_decide
theorem rows9093 : actualRows9093=WordField.canonicalRows actualModulus 9093 (.rotr 9091 11) := by core033_kernel_decide
theorem stats9093 : actualRows9093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9093=5124 := by core033_kernel_decide
theorem rows9094 : actualRows9094=WordField.canonicalRows actualModulus 9094 (.bxor 9092 9093) := by core033_kernel_decide
theorem stats9094 : actualRows9094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9094=7428 := by core033_kernel_decide
theorem rows9095 : actualRows9095=WordField.canonicalRows actualModulus 9095 (.rotr 9091 25) := by core033_kernel_decide
theorem stats9095 : actualRows9095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9095=5124 := by core033_kernel_decide
theorem rows9096 : actualRows9096=WordField.canonicalRows actualModulus 9096 (.bxor 9094 9095) := by core033_kernel_decide
theorem stats9096 : actualRows9096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9096=7428 := by core033_kernel_decide
theorem rows9097 : actualRows9097=WordField.canonicalRows actualModulus 9097 (.badd 9010 9096) := by core033_kernel_decide
theorem stats9097 : actualRows9097.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9097=5388 := by core033_kernel_decide
theorem rows9098 : actualRows9098=WordField.canonicalRows actualModulus 9098 (.band 9091 9064) := by core033_kernel_decide
theorem stats9098 : actualRows9098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9098=5124 := by core033_kernel_decide
theorem rows9099 : actualRows9099=WordField.canonicalRows actualModulus 9099 (.bnot 9091) := by core033_kernel_decide
theorem stats9099 : actualRows9099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9099=6276 := by core033_kernel_decide
theorem rows9100 : actualRows9100=WordField.canonicalRows actualModulus 9100 (.band 9099 9037) := by core033_kernel_decide
theorem stats9100 : actualRows9100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9100=5124 := by core033_kernel_decide
theorem rows9101 : actualRows9101=WordField.canonicalRows actualModulus 9101 (.bxor 9098 9100) := by core033_kernel_decide
theorem stats9101 : actualRows9101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9101=7428 := by core033_kernel_decide
theorem rows9102 : actualRows9102=WordField.canonicalRows actualModulus 9102 (.badd 9097 9101) := by core033_kernel_decide
theorem stats9102 : actualRows9102.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9102=5388 := by core033_kernel_decide
theorem rows9103 : actualRows9103=WordField.canonicalRows actualModulus 9103 (.literal (BitVec.ofNat 32 2024104815)) := by core033_kernel_decide
theorem stats9103 : actualRows9103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9103=4116 := by core033_kernel_decide
theorem rows9104 : actualRows9104=WordField.canonicalRows actualModulus 9104 (.badd 9102 9103) := by core033_kernel_decide
theorem stats9104 : actualRows9104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9104=5388 := by core033_kernel_decide
theorem rows9105 : actualRows9105=WordField.canonicalRows actualModulus 9105 (.badd 9104 7474) := by core033_kernel_decide
theorem stats9105 : actualRows9105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9105=5388 := by core033_kernel_decide
theorem rows9106 : actualRows9106=WordField.canonicalRows actualModulus 9106 (.rotr 9090 2) := by core033_kernel_decide
theorem stats9106 : actualRows9106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9106=5124 := by core033_kernel_decide
theorem rows9107 : actualRows9107=WordField.canonicalRows actualModulus 9107 (.rotr 9090 13) := by core033_kernel_decide
theorem stats9107 : actualRows9107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9107=5124 := by core033_kernel_decide
theorem rows9108 : actualRows9108=WordField.canonicalRows actualModulus 9108 (.bxor 9106 9107) := by core033_kernel_decide
theorem stats9108 : actualRows9108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9108=7428 := by core033_kernel_decide
theorem rows9109 : actualRows9109=WordField.canonicalRows actualModulus 9109 (.rotr 9090 22) := by core033_kernel_decide
theorem stats9109 : actualRows9109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9109=5124 := by core033_kernel_decide
theorem rows9110 : actualRows9110=WordField.canonicalRows actualModulus 9110 (.bxor 9108 9109) := by core033_kernel_decide
theorem stats9110 : actualRows9110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9110=7428 := by core033_kernel_decide
theorem rows9111 : actualRows9111=WordField.canonicalRows actualModulus 9111 (.band 9090 9063) := by core033_kernel_decide
theorem stats9111 : actualRows9111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9111=5124 := by core033_kernel_decide
theorem rows9112 : actualRows9112=WordField.canonicalRows actualModulus 9112 (.band 9090 9036) := by core033_kernel_decide
theorem stats9112 : actualRows9112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9112=5124 := by core033_kernel_decide
theorem rows9113 : actualRows9113=WordField.canonicalRows actualModulus 9113 (.bxor 9111 9112) := by core033_kernel_decide
theorem stats9113 : actualRows9113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9113=7428 := by core033_kernel_decide
theorem rows9114 : actualRows9114=WordField.canonicalRows actualModulus 9114 (.band 9063 9036) := by core033_kernel_decide
theorem stats9114 : actualRows9114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9114=5124 := by core033_kernel_decide
theorem rows9115 : actualRows9115=WordField.canonicalRows actualModulus 9115 (.bxor 9113 9114) := by core033_kernel_decide
theorem stats9115 : actualRows9115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9115=7428 := by core033_kernel_decide
theorem rows9116 : actualRows9116=WordField.canonicalRows actualModulus 9116 (.badd 9110 9115) := by core033_kernel_decide
theorem stats9116 : actualRows9116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9116=5388 := by core033_kernel_decide
theorem rows9117 : actualRows9117=WordField.canonicalRows actualModulus 9117 (.badd 9105 9116) := by core033_kernel_decide
theorem stats9117 : actualRows9117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9117=5388 := by core033_kernel_decide
theorem rows9118 : actualRows9118=WordField.canonicalRows actualModulus 9118 (.badd 9009 9105) := by core033_kernel_decide
theorem stats9118 : actualRows9118.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9118=5388 := by core033_kernel_decide
theorem rows9119 : actualRows9119=WordField.canonicalRows actualModulus 9119 (.rotr 9118 6) := by core033_kernel_decide
theorem stats9119 : actualRows9119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9119=5124 := by core033_kernel_decide
theorem rows9120 : actualRows9120=WordField.canonicalRows actualModulus 9120 (.rotr 9118 11) := by core033_kernel_decide
theorem stats9120 : actualRows9120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9120=5124 := by core033_kernel_decide
theorem rows9121 : actualRows9121=WordField.canonicalRows actualModulus 9121 (.bxor 9119 9120) := by core033_kernel_decide
theorem stats9121 : actualRows9121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9121=7428 := by core033_kernel_decide
theorem rows9122 : actualRows9122=WordField.canonicalRows actualModulus 9122 (.rotr 9118 25) := by core033_kernel_decide
theorem stats9122 : actualRows9122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9122=5124 := by core033_kernel_decide
theorem rows9123 : actualRows9123=WordField.canonicalRows actualModulus 9123 (.bxor 9121 9122) := by core033_kernel_decide
theorem stats9123 : actualRows9123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9123=7428 := by core033_kernel_decide
theorem rows9124 : actualRows9124=WordField.canonicalRows actualModulus 9124 (.badd 9037 9123) := by core033_kernel_decide
theorem stats9124 : actualRows9124.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9124=5388 := by core033_kernel_decide
theorem rows9125 : actualRows9125=WordField.canonicalRows actualModulus 9125 (.band 9118 9091) := by core033_kernel_decide
theorem stats9125 : actualRows9125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9125=5124 := by core033_kernel_decide
theorem rows9126 : actualRows9126=WordField.canonicalRows actualModulus 9126 (.bnot 9118) := by core033_kernel_decide
theorem stats9126 : actualRows9126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9126=6276 := by core033_kernel_decide
theorem rows9127 : actualRows9127=WordField.canonicalRows actualModulus 9127 (.band 9126 9064) := by core033_kernel_decide
theorem stats9127 : actualRows9127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9127=5124 := by core033_kernel_decide
theorem rows9128 : actualRows9128=WordField.canonicalRows actualModulus 9128 (.bxor 9125 9127) := by core033_kernel_decide
theorem stats9128 : actualRows9128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9128=7428 := by core033_kernel_decide
theorem rows9129 : actualRows9129=WordField.canonicalRows actualModulus 9129 (.badd 9124 9128) := by core033_kernel_decide
theorem stats9129 : actualRows9129.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9129=5388 := by core033_kernel_decide
theorem rows9130 : actualRows9130=WordField.canonicalRows actualModulus 9130 (.literal (BitVec.ofNat 32 2227730452)) := by core033_kernel_decide
theorem stats9130 : actualRows9130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9130=3612 := by core033_kernel_decide
def partRows141 : List R1CS.Row := actualRows9067++actualRows9068++actualRows9069++actualRows9070++actualRows9071++actualRows9072++actualRows9073++actualRows9074++actualRows9075++actualRows9076++actualRows9077++actualRows9078++actualRows9079++actualRows9080++actualRows9081++actualRows9082++actualRows9083++actualRows9084++actualRows9085++actualRows9086++actualRows9087++actualRows9088++actualRows9089++actualRows9090++actualRows9091++actualRows9092++actualRows9093++actualRows9094++actualRows9095++actualRows9096++actualRows9097++actualRows9098++actualRows9099++actualRows9100++actualRows9101++actualRows9102++actualRows9103++actualRows9104++actualRows9105++actualRows9106++actualRows9107++actualRows9108++actualRows9109++actualRows9110++actualRows9111++actualRows9112++actualRows9113++actualRows9114++actualRows9115++actualRows9116++actualRows9117++actualRows9118++actualRows9119++actualRows9120++actualRows9121++actualRows9122++actualRows9123++actualRows9124++actualRows9125++actualRows9126++actualRows9127++actualRows9128++actualRows9129++actualRows9130
def partOps141 : List WordIR.Op := [.bxor 9065 9066,.rotr 9064 25,.bxor 9067 9068,.badd 8983 9069,.band 9064 9037,.bnot 9064,.band 9072 9010,.bxor 9071 9073,.badd 9070 9074,.literal (BitVec.ofNat 32 1955562222),.badd 9075 9076,.badd 9077 7461,.rotr 9063 2,.rotr 9063 13,.bxor 9079 9080,.rotr 9063 22,.bxor 9081 9082,.band 9063 9036,.band 9063 9009,.bxor 9084 9085,.band 9036 9009,.bxor 9086 9087,.badd 9083 9088,.badd 9078 9089,.badd 8982 9078,.rotr 9091 6,.rotr 9091 11,.bxor 9092 9093,.rotr 9091 25,.bxor 9094 9095,.badd 9010 9096,.band 9091 9064,.bnot 9091,.band 9099 9037,.bxor 9098 9100,.badd 9097 9101,.literal (BitVec.ofNat 32 2024104815),.badd 9102 9103,.badd 9104 7474,.rotr 9090 2,.rotr 9090 13,.bxor 9106 9107,.rotr 9090 22,.bxor 9108 9109,.band 9090 9063,.band 9090 9036,.bxor 9111 9112,.band 9063 9036,.bxor 9113 9114,.badd 9110 9115,.badd 9105 9116,.badd 9009 9105,.rotr 9118 6,.rotr 9118 11,.bxor 9119 9120,.rotr 9118 25,.bxor 9121 9122,.badd 9037 9123,.band 9118 9091,.bnot 9118,.band 9126 9064,.bxor 9125 9127,.badd 9124 9128,.literal (BitVec.ofNat 32 2227730452)]
theorem partExact141 : partRows141=WordField.rows actualModulus 9067 partOps141 := by
  simp only [partRows141,partOps141,WordField.rows,rows9067,rows9068,rows9069,rows9070,rows9071,rows9072,rows9073,rows9074,rows9075,rows9076,rows9077,rows9078,rows9079,rows9080,rows9081,rows9082,rows9083,rows9084,rows9085,rows9086,rows9087,rows9088,rows9089,rows9090,rows9091,rows9092,rows9093,rows9094,rows9095,rows9096,rows9097,rows9098,rows9099,rows9100,rows9101,rows9102,rows9103,rows9104,rows9105,rows9106,rows9107,rows9108,rows9109,rows9110,rows9111,rows9112,rows9113,rows9114,rows9115,rows9116,rows9117,rows9118,rows9119,rows9120,rows9121,rows9122,rows9123,rows9124,rows9125,rows9126,rows9127,rows9128,rows9129,rows9130,List.append_assoc,List.append_nil]
theorem partLength141 : partOps141.length=64 := by decide
theorem partStats141 : partRows141.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows141=371184 := by
  simp only [partRows141,List.length_append,MatrixRowBlocks.rows_weight_append,stats9067.1,stats9067.2,stats9068.1,stats9068.2,stats9069.1,stats9069.2,stats9070.1,stats9070.2,stats9071.1,stats9071.2,stats9072.1,stats9072.2,stats9073.1,stats9073.2,stats9074.1,stats9074.2,stats9075.1,stats9075.2,stats9076.1,stats9076.2,stats9077.1,stats9077.2,stats9078.1,stats9078.2,stats9079.1,stats9079.2,stats9080.1,stats9080.2,stats9081.1,stats9081.2,stats9082.1,stats9082.2,stats9083.1,stats9083.2,stats9084.1,stats9084.2,stats9085.1,stats9085.2,stats9086.1,stats9086.2,stats9087.1,stats9087.2,stats9088.1,stats9088.2,stats9089.1,stats9089.2,stats9090.1,stats9090.2,stats9091.1,stats9091.2,stats9092.1,stats9092.2,stats9093.1,stats9093.2,stats9094.1,stats9094.2,stats9095.1,stats9095.2,stats9096.1,stats9096.2,stats9097.1,stats9097.2,stats9098.1,stats9098.2,stats9099.1,stats9099.2,stats9100.1,stats9100.2,stats9101.1,stats9101.2,stats9102.1,stats9102.2,stats9103.1,stats9103.2,stats9104.1,stats9104.2,stats9105.1,stats9105.2,stats9106.1,stats9106.2,stats9107.1,stats9107.2,stats9108.1,stats9108.2,stats9109.1,stats9109.2,stats9110.1,stats9110.2,stats9111.1,stats9111.2,stats9112.1,stats9112.2,stats9113.1,stats9113.2,stats9114.1,stats9114.2,stats9115.1,stats9115.2,stats9116.1,stats9116.2,stats9117.1,stats9117.2,stats9118.1,stats9118.2,stats9119.1,stats9119.2,stats9120.1,stats9120.2,stats9121.1,stats9121.2,stats9122.1,stats9122.2,stats9123.1,stats9123.2,stats9124.1,stats9124.2,stats9125.1,stats9125.2,stats9126.1,stats9126.2,stats9127.1,stats9127.2,stats9128.1,stats9128.2,stats9129.1,stats9129.2,stats9130.1,stats9130.2]
  decide
end PathRoundDispatchCheckedRows
