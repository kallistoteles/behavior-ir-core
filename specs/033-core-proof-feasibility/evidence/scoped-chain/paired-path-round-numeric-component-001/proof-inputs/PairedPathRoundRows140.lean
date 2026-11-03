import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData141
import PairedPathRoundInstructionMatrixData142
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9056 : actualRows9056=WordField.canonicalRows actualModulus 9056 (.literal (BitVec.ofNat 32 1695183700)) := by core033_kernel_decide
theorem stats9056 : actualRows9056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9056=3828 := by core033_kernel_decide
theorem rows9057 : actualRows9057=WordField.canonicalRows actualModulus 9057 (.badd 9055 9056) := by core033_kernel_decide
theorem stats9057 : actualRows9057.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9057=5388 := by core033_kernel_decide
theorem rows9058 : actualRows9058=WordField.canonicalRows actualModulus 9058 (.badd 9057 7721) := by core033_kernel_decide
theorem stats9058 : actualRows9058.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9058=5388 := by core033_kernel_decide
theorem rows9059 : actualRows9059=WordField.canonicalRows actualModulus 9059 (.rotr 9043 2) := by core033_kernel_decide
theorem stats9059 : actualRows9059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9059=5124 := by core033_kernel_decide
theorem rows9060 : actualRows9060=WordField.canonicalRows actualModulus 9060 (.rotr 9043 13) := by core033_kernel_decide
theorem stats9060 : actualRows9060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9060=5124 := by core033_kernel_decide
theorem rows9061 : actualRows9061=WordField.canonicalRows actualModulus 9061 (.bxor 9059 9060) := by core033_kernel_decide
theorem stats9061 : actualRows9061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9061=7428 := by core033_kernel_decide
theorem rows9062 : actualRows9062=WordField.canonicalRows actualModulus 9062 (.rotr 9043 22) := by core033_kernel_decide
theorem stats9062 : actualRows9062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9062=5124 := by core033_kernel_decide
theorem rows9063 : actualRows9063=WordField.canonicalRows actualModulus 9063 (.bxor 9061 9062) := by core033_kernel_decide
theorem stats9063 : actualRows9063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9063=7428 := by core033_kernel_decide
theorem rows9064 : actualRows9064=WordField.canonicalRows actualModulus 9064 (.band 9043 9016) := by core033_kernel_decide
theorem stats9064 : actualRows9064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9064=5124 := by core033_kernel_decide
theorem rows9065 : actualRows9065=WordField.canonicalRows actualModulus 9065 (.band 9043 8989) := by core033_kernel_decide
theorem stats9065 : actualRows9065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9065=5124 := by core033_kernel_decide
theorem rows9066 : actualRows9066=WordField.canonicalRows actualModulus 9066 (.bxor 9064 9065) := by core033_kernel_decide
theorem stats9066 : actualRows9066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9066=7428 := by core033_kernel_decide
theorem rows9067 : actualRows9067=WordField.canonicalRows actualModulus 9067 (.band 9016 8989) := by core033_kernel_decide
theorem stats9067 : actualRows9067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9067=5124 := by core033_kernel_decide
theorem rows9068 : actualRows9068=WordField.canonicalRows actualModulus 9068 (.bxor 9066 9067) := by core033_kernel_decide
theorem stats9068 : actualRows9068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9068=7428 := by core033_kernel_decide
theorem rows9069 : actualRows9069=WordField.canonicalRows actualModulus 9069 (.badd 9063 9068) := by core033_kernel_decide
theorem stats9069 : actualRows9069.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9069=5388 := by core033_kernel_decide
theorem rows9070 : actualRows9070=WordField.canonicalRows actualModulus 9070 (.badd 9058 9069) := by core033_kernel_decide
theorem stats9070 : actualRows9070.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9070=5388 := by core033_kernel_decide
theorem rows9071 : actualRows9071=WordField.canonicalRows actualModulus 9071 (.badd 8962 9058) := by core033_kernel_decide
theorem stats9071 : actualRows9071.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9071=5388 := by core033_kernel_decide
theorem rows9072 : actualRows9072=WordField.canonicalRows actualModulus 9072 (.rotr 9071 6) := by core033_kernel_decide
theorem stats9072 : actualRows9072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9072=5124 := by core033_kernel_decide
theorem rows9073 : actualRows9073=WordField.canonicalRows actualModulus 9073 (.rotr 9071 11) := by core033_kernel_decide
theorem stats9073 : actualRows9073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9073=5124 := by core033_kernel_decide
theorem rows9074 : actualRows9074=WordField.canonicalRows actualModulus 9074 (.bxor 9072 9073) := by core033_kernel_decide
theorem stats9074 : actualRows9074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9074=7428 := by core033_kernel_decide
theorem rows9075 : actualRows9075=WordField.canonicalRows actualModulus 9075 (.rotr 9071 25) := by core033_kernel_decide
theorem stats9075 : actualRows9075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9075=5124 := by core033_kernel_decide
theorem rows9076 : actualRows9076=WordField.canonicalRows actualModulus 9076 (.bxor 9074 9075) := by core033_kernel_decide
theorem stats9076 : actualRows9076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9076=7428 := by core033_kernel_decide
theorem rows9077 : actualRows9077=WordField.canonicalRows actualModulus 9077 (.badd 8990 9076) := by core033_kernel_decide
theorem stats9077 : actualRows9077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9077=5388 := by core033_kernel_decide
theorem rows9078 : actualRows9078=WordField.canonicalRows actualModulus 9078 (.band 9071 9044) := by core033_kernel_decide
theorem stats9078 : actualRows9078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9078=5124 := by core033_kernel_decide
theorem rows9079 : actualRows9079=WordField.canonicalRows actualModulus 9079 (.bnot 9071) := by core033_kernel_decide
theorem stats9079 : actualRows9079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9079=6276 := by core033_kernel_decide
theorem rows9080 : actualRows9080=WordField.canonicalRows actualModulus 9080 (.band 9079 9017) := by core033_kernel_decide
theorem stats9080 : actualRows9080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9080=5124 := by core033_kernel_decide
theorem rows9081 : actualRows9081=WordField.canonicalRows actualModulus 9081 (.bxor 9078 9080) := by core033_kernel_decide
theorem stats9081 : actualRows9081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9081=7428 := by core033_kernel_decide
theorem rows9082 : actualRows9082=WordField.canonicalRows actualModulus 9082 (.badd 9077 9081) := by core033_kernel_decide
theorem stats9082 : actualRows9082.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9082=5388 := by core033_kernel_decide
theorem rows9083 : actualRows9083=WordField.canonicalRows actualModulus 9083 (.literal (BitVec.ofNat 32 1986661051)) := by core033_kernel_decide
theorem stats9083 : actualRows9083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9083=4044 := by core033_kernel_decide
theorem rows9084 : actualRows9084=WordField.canonicalRows actualModulus 9084 (.badd 9082 9083) := by core033_kernel_decide
theorem stats9084 : actualRows9084.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9084=5388 := by core033_kernel_decide
theorem rows9085 : actualRows9085=WordField.canonicalRows actualModulus 9085 (.badd 9084 7734) := by core033_kernel_decide
theorem stats9085 : actualRows9085.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9085=5388 := by core033_kernel_decide
theorem rows9086 : actualRows9086=WordField.canonicalRows actualModulus 9086 (.rotr 9070 2) := by core033_kernel_decide
theorem stats9086 : actualRows9086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9086=5124 := by core033_kernel_decide
theorem rows9087 : actualRows9087=WordField.canonicalRows actualModulus 9087 (.rotr 9070 13) := by core033_kernel_decide
theorem stats9087 : actualRows9087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9087=5124 := by core033_kernel_decide
theorem rows9088 : actualRows9088=WordField.canonicalRows actualModulus 9088 (.bxor 9086 9087) := by core033_kernel_decide
theorem stats9088 : actualRows9088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9088=7428 := by core033_kernel_decide
theorem rows9089 : actualRows9089=WordField.canonicalRows actualModulus 9089 (.rotr 9070 22) := by core033_kernel_decide
theorem stats9089 : actualRows9089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9089=5124 := by core033_kernel_decide
theorem rows9090 : actualRows9090=WordField.canonicalRows actualModulus 9090 (.bxor 9088 9089) := by core033_kernel_decide
theorem stats9090 : actualRows9090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9090=7428 := by core033_kernel_decide
theorem rows9091 : actualRows9091=WordField.canonicalRows actualModulus 9091 (.band 9070 9043) := by core033_kernel_decide
theorem stats9091 : actualRows9091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9091=5124 := by core033_kernel_decide
theorem rows9092 : actualRows9092=WordField.canonicalRows actualModulus 9092 (.band 9070 9016) := by core033_kernel_decide
theorem stats9092 : actualRows9092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9092=5124 := by core033_kernel_decide
theorem rows9093 : actualRows9093=WordField.canonicalRows actualModulus 9093 (.bxor 9091 9092) := by core033_kernel_decide
theorem stats9093 : actualRows9093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9093=7428 := by core033_kernel_decide
theorem rows9094 : actualRows9094=WordField.canonicalRows actualModulus 9094 (.band 9043 9016) := by core033_kernel_decide
theorem stats9094 : actualRows9094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9094=5124 := by core033_kernel_decide
theorem rows9095 : actualRows9095=WordField.canonicalRows actualModulus 9095 (.bxor 9093 9094) := by core033_kernel_decide
theorem stats9095 : actualRows9095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9095=7428 := by core033_kernel_decide
theorem rows9096 : actualRows9096=WordField.canonicalRows actualModulus 9096 (.badd 9090 9095) := by core033_kernel_decide
theorem stats9096 : actualRows9096.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9096=5388 := by core033_kernel_decide
theorem rows9097 : actualRows9097=WordField.canonicalRows actualModulus 9097 (.badd 9085 9096) := by core033_kernel_decide
theorem stats9097 : actualRows9097.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9097=5388 := by core033_kernel_decide
theorem rows9098 : actualRows9098=WordField.canonicalRows actualModulus 9098 (.badd 8989 9085) := by core033_kernel_decide
theorem stats9098 : actualRows9098.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9098=5388 := by core033_kernel_decide
theorem rows9099 : actualRows9099=WordField.canonicalRows actualModulus 9099 (.rotr 9098 6) := by core033_kernel_decide
theorem stats9099 : actualRows9099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9099=5124 := by core033_kernel_decide
theorem rows9100 : actualRows9100=WordField.canonicalRows actualModulus 9100 (.rotr 9098 11) := by core033_kernel_decide
theorem stats9100 : actualRows9100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9100=5124 := by core033_kernel_decide
theorem rows9101 : actualRows9101=WordField.canonicalRows actualModulus 9101 (.bxor 9099 9100) := by core033_kernel_decide
theorem stats9101 : actualRows9101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9101=7428 := by core033_kernel_decide
theorem rows9102 : actualRows9102=WordField.canonicalRows actualModulus 9102 (.rotr 9098 25) := by core033_kernel_decide
theorem stats9102 : actualRows9102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9102=5124 := by core033_kernel_decide
theorem rows9103 : actualRows9103=WordField.canonicalRows actualModulus 9103 (.bxor 9101 9102) := by core033_kernel_decide
theorem stats9103 : actualRows9103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9103=7428 := by core033_kernel_decide
theorem rows9104 : actualRows9104=WordField.canonicalRows actualModulus 9104 (.badd 9017 9103) := by core033_kernel_decide
theorem stats9104 : actualRows9104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9104=5388 := by core033_kernel_decide
theorem rows9105 : actualRows9105=WordField.canonicalRows actualModulus 9105 (.band 9098 9071) := by core033_kernel_decide
theorem stats9105 : actualRows9105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9105=5124 := by core033_kernel_decide
theorem rows9106 : actualRows9106=WordField.canonicalRows actualModulus 9106 (.bnot 9098) := by core033_kernel_decide
theorem stats9106 : actualRows9106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9106=6276 := by core033_kernel_decide
theorem rows9107 : actualRows9107=WordField.canonicalRows actualModulus 9107 (.band 9106 9044) := by core033_kernel_decide
theorem stats9107 : actualRows9107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9107=5124 := by core033_kernel_decide
theorem rows9108 : actualRows9108=WordField.canonicalRows actualModulus 9108 (.bxor 9105 9107) := by core033_kernel_decide
theorem stats9108 : actualRows9108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9108=7428 := by core033_kernel_decide
theorem rows9109 : actualRows9109=WordField.canonicalRows actualModulus 9109 (.badd 9104 9108) := by core033_kernel_decide
theorem stats9109 : actualRows9109.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9109=5388 := by core033_kernel_decide
theorem rows9110 : actualRows9110=WordField.canonicalRows actualModulus 9110 (.literal (BitVec.ofNat 32 2177026350)) := by core033_kernel_decide
theorem stats9110 : actualRows9110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9110=3756 := by core033_kernel_decide
theorem rows9111 : actualRows9111=WordField.canonicalRows actualModulus 9111 (.badd 9109 9110) := by core033_kernel_decide
theorem stats9111 : actualRows9111.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9111=5388 := by core033_kernel_decide
theorem rows9112 : actualRows9112=WordField.canonicalRows actualModulus 9112 (.badd 9111 7747) := by core033_kernel_decide
theorem stats9112 : actualRows9112.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9112=5388 := by core033_kernel_decide
theorem rows9113 : actualRows9113=WordField.canonicalRows actualModulus 9113 (.rotr 9097 2) := by core033_kernel_decide
theorem stats9113 : actualRows9113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9113=5124 := by core033_kernel_decide
theorem rows9114 : actualRows9114=WordField.canonicalRows actualModulus 9114 (.rotr 9097 13) := by core033_kernel_decide
theorem stats9114 : actualRows9114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9114=5124 := by core033_kernel_decide
theorem rows9115 : actualRows9115=WordField.canonicalRows actualModulus 9115 (.bxor 9113 9114) := by core033_kernel_decide
theorem stats9115 : actualRows9115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9115=7428 := by core033_kernel_decide
theorem rows9116 : actualRows9116=WordField.canonicalRows actualModulus 9116 (.rotr 9097 22) := by core033_kernel_decide
theorem stats9116 : actualRows9116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9116=5124 := by core033_kernel_decide
theorem rows9117 : actualRows9117=WordField.canonicalRows actualModulus 9117 (.bxor 9115 9116) := by core033_kernel_decide
theorem stats9117 : actualRows9117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9117=7428 := by core033_kernel_decide
theorem rows9118 : actualRows9118=WordField.canonicalRows actualModulus 9118 (.band 9097 9070) := by core033_kernel_decide
theorem stats9118 : actualRows9118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9118=5124 := by core033_kernel_decide
theorem rows9119 : actualRows9119=WordField.canonicalRows actualModulus 9119 (.band 9097 9043) := by core033_kernel_decide
theorem stats9119 : actualRows9119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9119=5124 := by core033_kernel_decide
def partRows140 : List R1CS.Row := actualRows9056++actualRows9057++actualRows9058++actualRows9059++actualRows9060++actualRows9061++actualRows9062++actualRows9063++actualRows9064++actualRows9065++actualRows9066++actualRows9067++actualRows9068++actualRows9069++actualRows9070++actualRows9071++actualRows9072++actualRows9073++actualRows9074++actualRows9075++actualRows9076++actualRows9077++actualRows9078++actualRows9079++actualRows9080++actualRows9081++actualRows9082++actualRows9083++actualRows9084++actualRows9085++actualRows9086++actualRows9087++actualRows9088++actualRows9089++actualRows9090++actualRows9091++actualRows9092++actualRows9093++actualRows9094++actualRows9095++actualRows9096++actualRows9097++actualRows9098++actualRows9099++actualRows9100++actualRows9101++actualRows9102++actualRows9103++actualRows9104++actualRows9105++actualRows9106++actualRows9107++actualRows9108++actualRows9109++actualRows9110++actualRows9111++actualRows9112++actualRows9113++actualRows9114++actualRows9115++actualRows9116++actualRows9117++actualRows9118++actualRows9119
def partOps140 : List WordIR.Op := [.literal (BitVec.ofNat 32 1695183700),.badd 9055 9056,.badd 9057 7721,.rotr 9043 2,.rotr 9043 13,.bxor 9059 9060,.rotr 9043 22,.bxor 9061 9062,.band 9043 9016,.band 9043 8989,.bxor 9064 9065,.band 9016 8989,.bxor 9066 9067,.badd 9063 9068,.badd 9058 9069,.badd 8962 9058,.rotr 9071 6,.rotr 9071 11,.bxor 9072 9073,.rotr 9071 25,.bxor 9074 9075,.badd 8990 9076,.band 9071 9044,.bnot 9071,.band 9079 9017,.bxor 9078 9080,.badd 9077 9081,.literal (BitVec.ofNat 32 1986661051),.badd 9082 9083,.badd 9084 7734,.rotr 9070 2,.rotr 9070 13,.bxor 9086 9087,.rotr 9070 22,.bxor 9088 9089,.band 9070 9043,.band 9070 9016,.bxor 9091 9092,.band 9043 9016,.bxor 9093 9094,.badd 9090 9095,.badd 9085 9096,.badd 8989 9085,.rotr 9098 6,.rotr 9098 11,.bxor 9099 9100,.rotr 9098 25,.bxor 9101 9102,.badd 9017 9103,.band 9098 9071,.bnot 9098,.band 9106 9044,.bxor 9105 9107,.badd 9104 9108,.literal (BitVec.ofNat 32 2177026350),.badd 9109 9110,.badd 9111 7747,.rotr 9097 2,.rotr 9097 13,.bxor 9113 9114,.rotr 9097 22,.bxor 9115 9116,.band 9097 9070,.band 9097 9043]
theorem partExact140 : partRows140=WordField.rows actualModulus 9056 partOps140 := by
  simp only [partRows140,partOps140,WordField.rows,rows9056,rows9057,rows9058,rows9059,rows9060,rows9061,rows9062,rows9063,rows9064,rows9065,rows9066,rows9067,rows9068,rows9069,rows9070,rows9071,rows9072,rows9073,rows9074,rows9075,rows9076,rows9077,rows9078,rows9079,rows9080,rows9081,rows9082,rows9083,rows9084,rows9085,rows9086,rows9087,rows9088,rows9089,rows9090,rows9091,rows9092,rows9093,rows9094,rows9095,rows9096,rows9097,rows9098,rows9099,rows9100,rows9101,rows9102,rows9103,rows9104,rows9105,rows9106,rows9107,rows9108,rows9109,rows9110,rows9111,rows9112,rows9113,rows9114,rows9115,rows9116,rows9117,rows9118,rows9119,List.append_assoc,List.append_nil]
theorem partLength140 : partOps140.length=64 := by decide
theorem partStats140 : partRows140.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows140=367584 := by
  simp only [partRows140,List.length_append,MatrixRowBlocks.rows_weight_append,stats9056.1,stats9056.2,stats9057.1,stats9057.2,stats9058.1,stats9058.2,stats9059.1,stats9059.2,stats9060.1,stats9060.2,stats9061.1,stats9061.2,stats9062.1,stats9062.2,stats9063.1,stats9063.2,stats9064.1,stats9064.2,stats9065.1,stats9065.2,stats9066.1,stats9066.2,stats9067.1,stats9067.2,stats9068.1,stats9068.2,stats9069.1,stats9069.2,stats9070.1,stats9070.2,stats9071.1,stats9071.2,stats9072.1,stats9072.2,stats9073.1,stats9073.2,stats9074.1,stats9074.2,stats9075.1,stats9075.2,stats9076.1,stats9076.2,stats9077.1,stats9077.2,stats9078.1,stats9078.2,stats9079.1,stats9079.2,stats9080.1,stats9080.2,stats9081.1,stats9081.2,stats9082.1,stats9082.2,stats9083.1,stats9083.2,stats9084.1,stats9084.2,stats9085.1,stats9085.2,stats9086.1,stats9086.2,stats9087.1,stats9087.2,stats9088.1,stats9088.2,stats9089.1,stats9089.2,stats9090.1,stats9090.2,stats9091.1,stats9091.2,stats9092.1,stats9092.2,stats9093.1,stats9093.2,stats9094.1,stats9094.2,stats9095.1,stats9095.2,stats9096.1,stats9096.2,stats9097.1,stats9097.2,stats9098.1,stats9098.2,stats9099.1,stats9099.2,stats9100.1,stats9100.2,stats9101.1,stats9101.2,stats9102.1,stats9102.2,stats9103.1,stats9103.2,stats9104.1,stats9104.2,stats9105.1,stats9105.2,stats9106.1,stats9106.2,stats9107.1,stats9107.2,stats9108.1,stats9108.2,stats9109.1,stats9109.2,stats9110.1,stats9110.2,stats9111.1,stats9111.2,stats9112.1,stats9112.2,stats9113.1,stats9113.2,stats9114.1,stats9114.2,stats9115.1,stats9115.2,stats9116.1,stats9116.2,stats9117.1,stats9117.2,stats9118.1,stats9118.2,stats9119.1,stats9119.2]
  decide
end PairedPathRoundCheckedRows
