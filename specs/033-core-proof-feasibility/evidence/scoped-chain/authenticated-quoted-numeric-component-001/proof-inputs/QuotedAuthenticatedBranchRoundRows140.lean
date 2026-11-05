import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData141
import AuthenticatedBranchRoundInstructionMatrixData142
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9078 : actualRows9078=WordField.canonicalRows actualModulus 9078 (.badd 9066 9077) := by core033_kernel_decide
theorem stats9078 : actualRows9078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9078=5388 := by core033_kernel_decide
theorem rows9079 : actualRows9079=WordField.canonicalRows actualModulus 9079 (.badd 8970 9066) := by core033_kernel_decide
theorem stats9079 : actualRows9079.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9079=5388 := by core033_kernel_decide
theorem rows9080 : actualRows9080=WordField.canonicalRows actualModulus 9080 (.rotr 9079 6) := by core033_kernel_decide
theorem stats9080 : actualRows9080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9080=5124 := by core033_kernel_decide
theorem rows9081 : actualRows9081=WordField.canonicalRows actualModulus 9081 (.rotr 9079 11) := by core033_kernel_decide
theorem stats9081 : actualRows9081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9081=5124 := by core033_kernel_decide
theorem rows9082 : actualRows9082=WordField.canonicalRows actualModulus 9082 (.bxor 9080 9081) := by core033_kernel_decide
theorem stats9082 : actualRows9082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9082=7428 := by core033_kernel_decide
theorem rows9083 : actualRows9083=WordField.canonicalRows actualModulus 9083 (.rotr 9079 25) := by core033_kernel_decide
theorem stats9083 : actualRows9083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9083=5124 := by core033_kernel_decide
theorem rows9084 : actualRows9084=WordField.canonicalRows actualModulus 9084 (.bxor 9082 9083) := by core033_kernel_decide
theorem stats9084 : actualRows9084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9084=7428 := by core033_kernel_decide
theorem rows9085 : actualRows9085=WordField.canonicalRows actualModulus 9085 (.badd 8998 9084) := by core033_kernel_decide
theorem stats9085 : actualRows9085.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9085=5388 := by core033_kernel_decide
theorem rows9086 : actualRows9086=WordField.canonicalRows actualModulus 9086 (.band 9079 9052) := by core033_kernel_decide
theorem stats9086 : actualRows9086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9086=5124 := by core033_kernel_decide
theorem rows9087 : actualRows9087=WordField.canonicalRows actualModulus 9087 (.bnot 9079) := by core033_kernel_decide
theorem stats9087 : actualRows9087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9087=6276 := by core033_kernel_decide
theorem rows9088 : actualRows9088=WordField.canonicalRows actualModulus 9088 (.band 9087 9025) := by core033_kernel_decide
theorem stats9088 : actualRows9088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9088=5124 := by core033_kernel_decide
theorem rows9089 : actualRows9089=WordField.canonicalRows actualModulus 9089 (.bxor 9086 9088) := by core033_kernel_decide
theorem stats9089 : actualRows9089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9089=7428 := by core033_kernel_decide
theorem rows9090 : actualRows9090=WordField.canonicalRows actualModulus 9090 (.badd 9085 9089) := by core033_kernel_decide
theorem stats9090 : actualRows9090.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9090=5388 := by core033_kernel_decide
theorem rows9091 : actualRows9091=WordField.canonicalRows actualModulus 9091 (.literal (BitVec.ofNat 32 1925078388)) := by core033_kernel_decide
theorem stats9091 : actualRows9091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9091=4188 := by core033_kernel_decide
theorem rows9092 : actualRows9092=WordField.canonicalRows actualModulus 9092 (.badd 9090 9091) := by core033_kernel_decide
theorem stats9092 : actualRows9092.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9092=5388 := by core033_kernel_decide
theorem rows9093 : actualRows9093=WordField.canonicalRows actualModulus 9093 (.badd 9092 6961) := by core033_kernel_decide
theorem stats9093 : actualRows9093.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9093=5388 := by core033_kernel_decide
theorem rows9094 : actualRows9094=WordField.canonicalRows actualModulus 9094 (.rotr 9078 2) := by core033_kernel_decide
theorem stats9094 : actualRows9094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9094=5124 := by core033_kernel_decide
theorem rows9095 : actualRows9095=WordField.canonicalRows actualModulus 9095 (.rotr 9078 13) := by core033_kernel_decide
theorem stats9095 : actualRows9095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9095=5124 := by core033_kernel_decide
theorem rows9096 : actualRows9096=WordField.canonicalRows actualModulus 9096 (.bxor 9094 9095) := by core033_kernel_decide
theorem stats9096 : actualRows9096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9096=7428 := by core033_kernel_decide
theorem rows9097 : actualRows9097=WordField.canonicalRows actualModulus 9097 (.rotr 9078 22) := by core033_kernel_decide
theorem stats9097 : actualRows9097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9097=5124 := by core033_kernel_decide
theorem rows9098 : actualRows9098=WordField.canonicalRows actualModulus 9098 (.bxor 9096 9097) := by core033_kernel_decide
theorem stats9098 : actualRows9098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9098=7428 := by core033_kernel_decide
theorem rows9099 : actualRows9099=WordField.canonicalRows actualModulus 9099 (.band 9078 9051) := by core033_kernel_decide
theorem stats9099 : actualRows9099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9099=5124 := by core033_kernel_decide
theorem rows9100 : actualRows9100=WordField.canonicalRows actualModulus 9100 (.band 9078 9024) := by core033_kernel_decide
theorem stats9100 : actualRows9100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9100=5124 := by core033_kernel_decide
theorem rows9101 : actualRows9101=WordField.canonicalRows actualModulus 9101 (.bxor 9099 9100) := by core033_kernel_decide
theorem stats9101 : actualRows9101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9101=7428 := by core033_kernel_decide
theorem rows9102 : actualRows9102=WordField.canonicalRows actualModulus 9102 (.band 9051 9024) := by core033_kernel_decide
theorem stats9102 : actualRows9102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9102=5124 := by core033_kernel_decide
theorem rows9103 : actualRows9103=WordField.canonicalRows actualModulus 9103 (.bxor 9101 9102) := by core033_kernel_decide
theorem stats9103 : actualRows9103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9103=7428 := by core033_kernel_decide
theorem rows9104 : actualRows9104=WordField.canonicalRows actualModulus 9104 (.badd 9098 9103) := by core033_kernel_decide
theorem stats9104 : actualRows9104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9104=5388 := by core033_kernel_decide
theorem rows9105 : actualRows9105=WordField.canonicalRows actualModulus 9105 (.badd 9093 9104) := by core033_kernel_decide
theorem stats9105 : actualRows9105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9105=5388 := by core033_kernel_decide
theorem rows9106 : actualRows9106=WordField.canonicalRows actualModulus 9106 (.badd 8997 9093) := by core033_kernel_decide
theorem stats9106 : actualRows9106.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9106=5388 := by core033_kernel_decide
theorem rows9107 : actualRows9107=WordField.canonicalRows actualModulus 9107 (.rotr 9106 6) := by core033_kernel_decide
theorem stats9107 : actualRows9107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9107=5124 := by core033_kernel_decide
theorem rows9108 : actualRows9108=WordField.canonicalRows actualModulus 9108 (.rotr 9106 11) := by core033_kernel_decide
theorem stats9108 : actualRows9108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9108=5124 := by core033_kernel_decide
theorem rows9109 : actualRows9109=WordField.canonicalRows actualModulus 9109 (.bxor 9107 9108) := by core033_kernel_decide
theorem stats9109 : actualRows9109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9109=7428 := by core033_kernel_decide
theorem rows9110 : actualRows9110=WordField.canonicalRows actualModulus 9110 (.rotr 9106 25) := by core033_kernel_decide
theorem stats9110 : actualRows9110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9110=5124 := by core033_kernel_decide
theorem rows9111 : actualRows9111=WordField.canonicalRows actualModulus 9111 (.bxor 9109 9110) := by core033_kernel_decide
theorem stats9111 : actualRows9111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9111=7428 := by core033_kernel_decide
theorem rows9112 : actualRows9112=WordField.canonicalRows actualModulus 9112 (.badd 9025 9111) := by core033_kernel_decide
theorem stats9112 : actualRows9112.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9112=5388 := by core033_kernel_decide
theorem rows9113 : actualRows9113=WordField.canonicalRows actualModulus 9113 (.band 9106 9079) := by core033_kernel_decide
theorem stats9113 : actualRows9113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9113=5124 := by core033_kernel_decide
theorem rows9114 : actualRows9114=WordField.canonicalRows actualModulus 9114 (.bnot 9106) := by core033_kernel_decide
theorem stats9114 : actualRows9114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9114=6276 := by core033_kernel_decide
theorem rows9115 : actualRows9115=WordField.canonicalRows actualModulus 9115 (.band 9114 9052) := by core033_kernel_decide
theorem stats9115 : actualRows9115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9115=5124 := by core033_kernel_decide
theorem rows9116 : actualRows9116=WordField.canonicalRows actualModulus 9116 (.bxor 9113 9115) := by core033_kernel_decide
theorem stats9116 : actualRows9116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9116=7428 := by core033_kernel_decide
theorem rows9117 : actualRows9117=WordField.canonicalRows actualModulus 9117 (.badd 9112 9116) := by core033_kernel_decide
theorem stats9117 : actualRows9117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9117=5388 := by core033_kernel_decide
theorem rows9118 : actualRows9118=WordField.canonicalRows actualModulus 9118 (.literal (BitVec.ofNat 32 2162078206)) := by core033_kernel_decide
theorem stats9118 : actualRows9118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9118=4116 := by core033_kernel_decide
theorem rows9119 : actualRows9119=WordField.canonicalRows actualModulus 9119 (.badd 9117 9118) := by core033_kernel_decide
theorem stats9119 : actualRows9119.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9119=5388 := by core033_kernel_decide
theorem rows9120 : actualRows9120=WordField.canonicalRows actualModulus 9120 (.badd 9119 6967) := by core033_kernel_decide
theorem stats9120 : actualRows9120.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9120=5388 := by core033_kernel_decide
theorem rows9121 : actualRows9121=WordField.canonicalRows actualModulus 9121 (.rotr 9105 2) := by core033_kernel_decide
theorem stats9121 : actualRows9121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9121=5124 := by core033_kernel_decide
theorem rows9122 : actualRows9122=WordField.canonicalRows actualModulus 9122 (.rotr 9105 13) := by core033_kernel_decide
theorem stats9122 : actualRows9122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9122=5124 := by core033_kernel_decide
theorem rows9123 : actualRows9123=WordField.canonicalRows actualModulus 9123 (.bxor 9121 9122) := by core033_kernel_decide
theorem stats9123 : actualRows9123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9123=7428 := by core033_kernel_decide
theorem rows9124 : actualRows9124=WordField.canonicalRows actualModulus 9124 (.rotr 9105 22) := by core033_kernel_decide
theorem stats9124 : actualRows9124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9124=5124 := by core033_kernel_decide
theorem rows9125 : actualRows9125=WordField.canonicalRows actualModulus 9125 (.bxor 9123 9124) := by core033_kernel_decide
theorem stats9125 : actualRows9125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9125=7428 := by core033_kernel_decide
theorem rows9126 : actualRows9126=WordField.canonicalRows actualModulus 9126 (.band 9105 9078) := by core033_kernel_decide
theorem stats9126 : actualRows9126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9126=5124 := by core033_kernel_decide
theorem rows9127 : actualRows9127=WordField.canonicalRows actualModulus 9127 (.band 9105 9051) := by core033_kernel_decide
theorem stats9127 : actualRows9127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9127=5124 := by core033_kernel_decide
theorem rows9128 : actualRows9128=WordField.canonicalRows actualModulus 9128 (.bxor 9126 9127) := by core033_kernel_decide
theorem stats9128 : actualRows9128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9128=7428 := by core033_kernel_decide
theorem rows9129 : actualRows9129=WordField.canonicalRows actualModulus 9129 (.band 9078 9051) := by core033_kernel_decide
theorem stats9129 : actualRows9129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9129=5124 := by core033_kernel_decide
theorem rows9130 : actualRows9130=WordField.canonicalRows actualModulus 9130 (.bxor 9128 9129) := by core033_kernel_decide
theorem stats9130 : actualRows9130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9130=7428 := by core033_kernel_decide
theorem rows9131 : actualRows9131=WordField.canonicalRows actualModulus 9131 (.badd 9125 9130) := by core033_kernel_decide
theorem stats9131 : actualRows9131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9131=5388 := by core033_kernel_decide
theorem rows9132 : actualRows9132=WordField.canonicalRows actualModulus 9132 (.badd 9120 9131) := by core033_kernel_decide
theorem stats9132 : actualRows9132.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9132=5388 := by core033_kernel_decide
theorem rows9133 : actualRows9133=WordField.canonicalRows actualModulus 9133 (.badd 9024 9120) := by core033_kernel_decide
theorem stats9133 : actualRows9133.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9133=5388 := by core033_kernel_decide
theorem rows9134 : actualRows9134=WordField.canonicalRows actualModulus 9134 (.rotr 9133 6) := by core033_kernel_decide
theorem stats9134 : actualRows9134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9134=5124 := by core033_kernel_decide
theorem rows9135 : actualRows9135=WordField.canonicalRows actualModulus 9135 (.rotr 9133 11) := by core033_kernel_decide
theorem stats9135 : actualRows9135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9135=5124 := by core033_kernel_decide
theorem rows9136 : actualRows9136=WordField.canonicalRows actualModulus 9136 (.bxor 9134 9135) := by core033_kernel_decide
theorem stats9136 : actualRows9136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9136=7428 := by core033_kernel_decide
theorem rows9137 : actualRows9137=WordField.canonicalRows actualModulus 9137 (.rotr 9133 25) := by core033_kernel_decide
theorem stats9137 : actualRows9137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9137=5124 := by core033_kernel_decide
theorem rows9138 : actualRows9138=WordField.canonicalRows actualModulus 9138 (.bxor 9136 9137) := by core033_kernel_decide
theorem stats9138 : actualRows9138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9138=7428 := by core033_kernel_decide
theorem rows9139 : actualRows9139=WordField.canonicalRows actualModulus 9139 (.badd 9052 9138) := by core033_kernel_decide
theorem stats9139 : actualRows9139.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9139=5388 := by core033_kernel_decide
theorem rows9140 : actualRows9140=WordField.canonicalRows actualModulus 9140 (.band 9133 9106) := by core033_kernel_decide
theorem stats9140 : actualRows9140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9140=5124 := by core033_kernel_decide
theorem rows9141 : actualRows9141=WordField.canonicalRows actualModulus 9141 (.bnot 9133) := by core033_kernel_decide
theorem stats9141 : actualRows9141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9141=6276 := by core033_kernel_decide
def partRows140 : List R1CS.Row := actualRows9078++actualRows9079++actualRows9080++actualRows9081++actualRows9082++actualRows9083++actualRows9084++actualRows9085++actualRows9086++actualRows9087++actualRows9088++actualRows9089++actualRows9090++actualRows9091++actualRows9092++actualRows9093++actualRows9094++actualRows9095++actualRows9096++actualRows9097++actualRows9098++actualRows9099++actualRows9100++actualRows9101++actualRows9102++actualRows9103++actualRows9104++actualRows9105++actualRows9106++actualRows9107++actualRows9108++actualRows9109++actualRows9110++actualRows9111++actualRows9112++actualRows9113++actualRows9114++actualRows9115++actualRows9116++actualRows9117++actualRows9118++actualRows9119++actualRows9120++actualRows9121++actualRows9122++actualRows9123++actualRows9124++actualRows9125++actualRows9126++actualRows9127++actualRows9128++actualRows9129++actualRows9130++actualRows9131++actualRows9132++actualRows9133++actualRows9134++actualRows9135++actualRows9136++actualRows9137++actualRows9138++actualRows9139++actualRows9140++actualRows9141
def partOps140 : List WordIR.Op := [.badd 9066 9077,.badd 8970 9066,.rotr 9079 6,.rotr 9079 11,.bxor 9080 9081,.rotr 9079 25,.bxor 9082 9083,.badd 8998 9084,.band 9079 9052,.bnot 9079,.band 9087 9025,.bxor 9086 9088,.badd 9085 9089,.literal (BitVec.ofNat 32 1925078388),.badd 9090 9091,.badd 9092 6961,.rotr 9078 2,.rotr 9078 13,.bxor 9094 9095,.rotr 9078 22,.bxor 9096 9097,.band 9078 9051,.band 9078 9024,.bxor 9099 9100,.band 9051 9024,.bxor 9101 9102,.badd 9098 9103,.badd 9093 9104,.badd 8997 9093,.rotr 9106 6,.rotr 9106 11,.bxor 9107 9108,.rotr 9106 25,.bxor 9109 9110,.badd 9025 9111,.band 9106 9079,.bnot 9106,.band 9114 9052,.bxor 9113 9115,.badd 9112 9116,.literal (BitVec.ofNat 32 2162078206),.badd 9117 9118,.badd 9119 6967,.rotr 9105 2,.rotr 9105 13,.bxor 9121 9122,.rotr 9105 22,.bxor 9123 9124,.band 9105 9078,.band 9105 9051,.bxor 9126 9127,.band 9078 9051,.bxor 9128 9129,.badd 9125 9130,.badd 9120 9131,.badd 9024 9120,.rotr 9133 6,.rotr 9133 11,.bxor 9134 9135,.rotr 9133 25,.bxor 9136 9137,.badd 9052 9138,.band 9133 9106,.bnot 9133]
theorem partExact140 : partRows140=WordField.rows actualModulus 9078 partOps140 := by
  simp only [partRows140,partOps140,WordField.rows,rows9078,rows9079,rows9080,rows9081,rows9082,rows9083,rows9084,rows9085,rows9086,rows9087,rows9088,rows9089,rows9090,rows9091,rows9092,rows9093,rows9094,rows9095,rows9096,rows9097,rows9098,rows9099,rows9100,rows9101,rows9102,rows9103,rows9104,rows9105,rows9106,rows9107,rows9108,rows9109,rows9110,rows9111,rows9112,rows9113,rows9114,rows9115,rows9116,rows9117,rows9118,rows9119,rows9120,rows9121,rows9122,rows9123,rows9124,rows9125,rows9126,rows9127,rows9128,rows9129,rows9130,rows9131,rows9132,rows9133,rows9134,rows9135,rows9136,rows9137,rows9138,rows9139,rows9140,rows9141,List.append_assoc,List.append_nil]
theorem partLength140 : partOps140.length=64 := by decide
theorem partStats140 : partRows140.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows140=370800 := by
  simp only [partRows140,List.length_append,MatrixRowBlocks.rows_weight_append,stats9078.1,stats9078.2,stats9079.1,stats9079.2,stats9080.1,stats9080.2,stats9081.1,stats9081.2,stats9082.1,stats9082.2,stats9083.1,stats9083.2,stats9084.1,stats9084.2,stats9085.1,stats9085.2,stats9086.1,stats9086.2,stats9087.1,stats9087.2,stats9088.1,stats9088.2,stats9089.1,stats9089.2,stats9090.1,stats9090.2,stats9091.1,stats9091.2,stats9092.1,stats9092.2,stats9093.1,stats9093.2,stats9094.1,stats9094.2,stats9095.1,stats9095.2,stats9096.1,stats9096.2,stats9097.1,stats9097.2,stats9098.1,stats9098.2,stats9099.1,stats9099.2,stats9100.1,stats9100.2,stats9101.1,stats9101.2,stats9102.1,stats9102.2,stats9103.1,stats9103.2,stats9104.1,stats9104.2,stats9105.1,stats9105.2,stats9106.1,stats9106.2,stats9107.1,stats9107.2,stats9108.1,stats9108.2,stats9109.1,stats9109.2,stats9110.1,stats9110.2,stats9111.1,stats9111.2,stats9112.1,stats9112.2,stats9113.1,stats9113.2,stats9114.1,stats9114.2,stats9115.1,stats9115.2,stats9116.1,stats9116.2,stats9117.1,stats9117.2,stats9118.1,stats9118.2,stats9119.1,stats9119.2,stats9120.1,stats9120.2,stats9121.1,stats9121.2,stats9122.1,stats9122.2,stats9123.1,stats9123.2,stats9124.1,stats9124.2,stats9125.1,stats9125.2,stats9126.1,stats9126.2,stats9127.1,stats9127.2,stats9128.1,stats9128.2,stats9129.1,stats9129.2,stats9130.1,stats9130.2,stats9131.1,stats9131.2,stats9132.1,stats9132.2,stats9133.1,stats9133.2,stats9134.1,stats9134.2,stats9135.1,stats9135.2,stats9136.1,stats9136.2,stats9137.1,stats9137.2,stats9138.1,stats9138.2,stats9139.1,stats9139.2,stats9140.1,stats9140.2,stats9141.1,stats9141.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
