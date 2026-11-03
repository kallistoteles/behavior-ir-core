import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData94
import FrameHashControllerInstructionMatrixData95
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6059 : actualRows6059=WordField.canonicalRows actualModulus 6059 (.bnot 6058) := by core033_kernel_decide
theorem stats6059 : actualRows6059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6059=6276 := by core033_kernel_decide
theorem rows6060 : actualRows6060=WordField.canonicalRows actualModulus 6060 (.bxor 6057 6059) := by core033_kernel_decide
theorem stats6060 : actualRows6060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6060=7428 := by core033_kernel_decide
theorem rows6061 : actualRows6061=WordField.canonicalRows actualModulus 6061 (.shr 4163 8) := by core033_kernel_decide
theorem stats6061 : actualRows6061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6061=4548 := by core033_kernel_decide
theorem rows6062 : actualRows6062=WordField.canonicalRows actualModulus 6062 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6062 : actualRows6062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6062=2820 := by core033_kernel_decide
theorem rows6063 : actualRows6063=WordField.canonicalRows actualModulus 6063 (.bnot 6062) := by core033_kernel_decide
theorem stats6063 : actualRows6063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6063=6276 := by core033_kernel_decide
theorem rows6064 : actualRows6064=WordField.canonicalRows actualModulus 6064 (.badd 6061 6063) := by core033_kernel_decide
theorem stats6064 : actualRows6064.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6064=5388 := by core033_kernel_decide
theorem rows6065 : actualRows6065=WordField.canonicalRows actualModulus 6065 (.bnot 6064) := by core033_kernel_decide
theorem stats6065 : actualRows6065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6065=6276 := by core033_kernel_decide
theorem rows6066 : actualRows6066=WordField.canonicalRows actualModulus 6066 (.band 6060 6065) := by core033_kernel_decide
theorem stats6066 : actualRows6066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6066=5124 := by core033_kernel_decide
theorem rows6067 : actualRows6067=WordField.canonicalRows actualModulus 6067 (.bxor 6056 6066) := by core033_kernel_decide
theorem stats6067 : actualRows6067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6067=7428 := by core033_kernel_decide
theorem rows6068 : actualRows6068=WordField.canonicalRows actualModulus 6068 (.shr 6067 31) := by core033_kernel_decide
theorem stats6068 : actualRows6068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6068=2892 := by core033_kernel_decide
theorem rows6069 : actualRows6069=WordField.canonicalRows actualModulus 6069 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6069 : actualRows6069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6069=2892 := by core033_kernel_decide
theorem rows6070 : actualRows6070=WordField.canonicalRows actualModulus 6070 (.bxor 6068 6069) := by core033_kernel_decide
theorem stats6070 : actualRows6070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6070=7428 := by core033_kernel_decide
theorem rows6071 : actualRows6071=WordField.canonicalRows actualModulus 6071 (.shr 4215 8) := by core033_kernel_decide
theorem stats6071 : actualRows6071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6071=4548 := by core033_kernel_decide
theorem rows6072 : actualRows6072=WordField.canonicalRows actualModulus 6072 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6072 : actualRows6072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6072=2820 := by core033_kernel_decide
theorem rows6073 : actualRows6073=WordField.canonicalRows actualModulus 6073 (.bnot 6072) := by core033_kernel_decide
theorem stats6073 : actualRows6073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6073=6276 := by core033_kernel_decide
theorem rows6074 : actualRows6074=WordField.canonicalRows actualModulus 6074 (.band 6071 6073) := by core033_kernel_decide
theorem stats6074 : actualRows6074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6074=5124 := by core033_kernel_decide
theorem rows6075 : actualRows6075=WordField.canonicalRows actualModulus 6075 (.shr 4215 8) := by core033_kernel_decide
theorem stats6075 : actualRows6075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6075=4548 := by core033_kernel_decide
theorem rows6076 : actualRows6076=WordField.canonicalRows actualModulus 6076 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6076 : actualRows6076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6076=2820 := by core033_kernel_decide
theorem rows6077 : actualRows6077=WordField.canonicalRows actualModulus 6077 (.bnot 6076) := by core033_kernel_decide
theorem stats6077 : actualRows6077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6077=6276 := by core033_kernel_decide
theorem rows6078 : actualRows6078=WordField.canonicalRows actualModulus 6078 (.bxor 6075 6077) := by core033_kernel_decide
theorem stats6078 : actualRows6078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6078=7428 := by core033_kernel_decide
theorem rows6079 : actualRows6079=WordField.canonicalRows actualModulus 6079 (.shr 4215 8) := by core033_kernel_decide
theorem stats6079 : actualRows6079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6079=4548 := by core033_kernel_decide
theorem rows6080 : actualRows6080=WordField.canonicalRows actualModulus 6080 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6080 : actualRows6080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6080=2820 := by core033_kernel_decide
theorem rows6081 : actualRows6081=WordField.canonicalRows actualModulus 6081 (.bnot 6080) := by core033_kernel_decide
theorem stats6081 : actualRows6081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6081=6276 := by core033_kernel_decide
theorem rows6082 : actualRows6082=WordField.canonicalRows actualModulus 6082 (.badd 6079 6081) := by core033_kernel_decide
theorem stats6082 : actualRows6082.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6082=5388 := by core033_kernel_decide
theorem rows6083 : actualRows6083=WordField.canonicalRows actualModulus 6083 (.bnot 6082) := by core033_kernel_decide
theorem stats6083 : actualRows6083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6083=6276 := by core033_kernel_decide
theorem rows6084 : actualRows6084=WordField.canonicalRows actualModulus 6084 (.band 6078 6083) := by core033_kernel_decide
theorem stats6084 : actualRows6084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6084=5124 := by core033_kernel_decide
theorem rows6085 : actualRows6085=WordField.canonicalRows actualModulus 6085 (.bxor 6074 6084) := by core033_kernel_decide
theorem stats6085 : actualRows6085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6085=7428 := by core033_kernel_decide
theorem rows6086 : actualRows6086=WordField.canonicalRows actualModulus 6086 (.shr 6085 31) := by core033_kernel_decide
theorem stats6086 : actualRows6086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6086=2892 := by core033_kernel_decide
theorem rows6087 : actualRows6087=WordField.canonicalRows actualModulus 6087 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6087 : actualRows6087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6087=2892 := by core033_kernel_decide
theorem rows6088 : actualRows6088=WordField.canonicalRows actualModulus 6088 (.bxor 6086 6087) := by core033_kernel_decide
theorem stats6088 : actualRows6088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6088=7428 := by core033_kernel_decide
theorem rows6089 : actualRows6089=WordField.canonicalRows actualModulus 6089 (.shr 4267 8) := by core033_kernel_decide
theorem stats6089 : actualRows6089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6089=4548 := by core033_kernel_decide
theorem rows6090 : actualRows6090=WordField.canonicalRows actualModulus 6090 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6090 : actualRows6090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6090=2820 := by core033_kernel_decide
theorem rows6091 : actualRows6091=WordField.canonicalRows actualModulus 6091 (.bnot 6090) := by core033_kernel_decide
theorem stats6091 : actualRows6091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6091=6276 := by core033_kernel_decide
theorem rows6092 : actualRows6092=WordField.canonicalRows actualModulus 6092 (.band 6089 6091) := by core033_kernel_decide
theorem stats6092 : actualRows6092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6092=5124 := by core033_kernel_decide
theorem rows6093 : actualRows6093=WordField.canonicalRows actualModulus 6093 (.shr 4267 8) := by core033_kernel_decide
theorem stats6093 : actualRows6093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6093=4548 := by core033_kernel_decide
theorem rows6094 : actualRows6094=WordField.canonicalRows actualModulus 6094 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6094 : actualRows6094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6094=2820 := by core033_kernel_decide
theorem rows6095 : actualRows6095=WordField.canonicalRows actualModulus 6095 (.bnot 6094) := by core033_kernel_decide
theorem stats6095 : actualRows6095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6095=6276 := by core033_kernel_decide
theorem rows6096 : actualRows6096=WordField.canonicalRows actualModulus 6096 (.bxor 6093 6095) := by core033_kernel_decide
theorem stats6096 : actualRows6096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6096=7428 := by core033_kernel_decide
theorem rows6097 : actualRows6097=WordField.canonicalRows actualModulus 6097 (.shr 4267 8) := by core033_kernel_decide
theorem stats6097 : actualRows6097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6097=4548 := by core033_kernel_decide
theorem rows6098 : actualRows6098=WordField.canonicalRows actualModulus 6098 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6098 : actualRows6098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6098=2820 := by core033_kernel_decide
theorem rows6099 : actualRows6099=WordField.canonicalRows actualModulus 6099 (.bnot 6098) := by core033_kernel_decide
theorem stats6099 : actualRows6099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6099=6276 := by core033_kernel_decide
theorem rows6100 : actualRows6100=WordField.canonicalRows actualModulus 6100 (.badd 6097 6099) := by core033_kernel_decide
theorem stats6100 : actualRows6100.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6100=5388 := by core033_kernel_decide
theorem rows6101 : actualRows6101=WordField.canonicalRows actualModulus 6101 (.bnot 6100) := by core033_kernel_decide
theorem stats6101 : actualRows6101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6101=6276 := by core033_kernel_decide
theorem rows6102 : actualRows6102=WordField.canonicalRows actualModulus 6102 (.band 6096 6101) := by core033_kernel_decide
theorem stats6102 : actualRows6102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6102=5124 := by core033_kernel_decide
theorem rows6103 : actualRows6103=WordField.canonicalRows actualModulus 6103 (.bxor 6092 6102) := by core033_kernel_decide
theorem stats6103 : actualRows6103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6103=7428 := by core033_kernel_decide
theorem rows6104 : actualRows6104=WordField.canonicalRows actualModulus 6104 (.shr 6103 31) := by core033_kernel_decide
theorem stats6104 : actualRows6104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6104=2892 := by core033_kernel_decide
theorem rows6105 : actualRows6105=WordField.canonicalRows actualModulus 6105 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6105 : actualRows6105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6105=2892 := by core033_kernel_decide
theorem rows6106 : actualRows6106=WordField.canonicalRows actualModulus 6106 (.bxor 6104 6105) := by core033_kernel_decide
theorem stats6106 : actualRows6106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6106=7428 := by core033_kernel_decide
theorem rows6107 : actualRows6107=WordField.canonicalRows actualModulus 6107 (.shr 4319 8) := by core033_kernel_decide
theorem stats6107 : actualRows6107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6107=4548 := by core033_kernel_decide
theorem rows6108 : actualRows6108=WordField.canonicalRows actualModulus 6108 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6108 : actualRows6108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6108=2820 := by core033_kernel_decide
theorem rows6109 : actualRows6109=WordField.canonicalRows actualModulus 6109 (.bnot 6108) := by core033_kernel_decide
theorem stats6109 : actualRows6109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6109=6276 := by core033_kernel_decide
theorem rows6110 : actualRows6110=WordField.canonicalRows actualModulus 6110 (.band 6107 6109) := by core033_kernel_decide
theorem stats6110 : actualRows6110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6110=5124 := by core033_kernel_decide
theorem rows6111 : actualRows6111=WordField.canonicalRows actualModulus 6111 (.shr 4319 8) := by core033_kernel_decide
theorem stats6111 : actualRows6111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6111=4548 := by core033_kernel_decide
theorem rows6112 : actualRows6112=WordField.canonicalRows actualModulus 6112 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6112 : actualRows6112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6112=2820 := by core033_kernel_decide
theorem rows6113 : actualRows6113=WordField.canonicalRows actualModulus 6113 (.bnot 6112) := by core033_kernel_decide
theorem stats6113 : actualRows6113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6113=6276 := by core033_kernel_decide
theorem rows6114 : actualRows6114=WordField.canonicalRows actualModulus 6114 (.bxor 6111 6113) := by core033_kernel_decide
theorem stats6114 : actualRows6114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6114=7428 := by core033_kernel_decide
theorem rows6115 : actualRows6115=WordField.canonicalRows actualModulus 6115 (.shr 4319 8) := by core033_kernel_decide
theorem stats6115 : actualRows6115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6115=4548 := by core033_kernel_decide
theorem rows6116 : actualRows6116=WordField.canonicalRows actualModulus 6116 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6116 : actualRows6116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6116=2820 := by core033_kernel_decide
theorem rows6117 : actualRows6117=WordField.canonicalRows actualModulus 6117 (.bnot 6116) := by core033_kernel_decide
theorem stats6117 : actualRows6117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6117=6276 := by core033_kernel_decide
theorem rows6118 : actualRows6118=WordField.canonicalRows actualModulus 6118 (.badd 6115 6117) := by core033_kernel_decide
theorem stats6118 : actualRows6118.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6118=5388 := by core033_kernel_decide
theorem rows6119 : actualRows6119=WordField.canonicalRows actualModulus 6119 (.bnot 6118) := by core033_kernel_decide
theorem stats6119 : actualRows6119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6119=6276 := by core033_kernel_decide
theorem rows6120 : actualRows6120=WordField.canonicalRows actualModulus 6120 (.band 6114 6119) := by core033_kernel_decide
theorem stats6120 : actualRows6120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6120=5124 := by core033_kernel_decide
theorem rows6121 : actualRows6121=WordField.canonicalRows actualModulus 6121 (.bxor 6110 6120) := by core033_kernel_decide
theorem stats6121 : actualRows6121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6121=7428 := by core033_kernel_decide
theorem rows6122 : actualRows6122=WordField.canonicalRows actualModulus 6122 (.shr 6121 31) := by core033_kernel_decide
theorem stats6122 : actualRows6122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6122=2892 := by core033_kernel_decide
def partRows94 : List R1CS.Row := actualRows6059++actualRows6060++actualRows6061++actualRows6062++actualRows6063++actualRows6064++actualRows6065++actualRows6066++actualRows6067++actualRows6068++actualRows6069++actualRows6070++actualRows6071++actualRows6072++actualRows6073++actualRows6074++actualRows6075++actualRows6076++actualRows6077++actualRows6078++actualRows6079++actualRows6080++actualRows6081++actualRows6082++actualRows6083++actualRows6084++actualRows6085++actualRows6086++actualRows6087++actualRows6088++actualRows6089++actualRows6090++actualRows6091++actualRows6092++actualRows6093++actualRows6094++actualRows6095++actualRows6096++actualRows6097++actualRows6098++actualRows6099++actualRows6100++actualRows6101++actualRows6102++actualRows6103++actualRows6104++actualRows6105++actualRows6106++actualRows6107++actualRows6108++actualRows6109++actualRows6110++actualRows6111++actualRows6112++actualRows6113++actualRows6114++actualRows6115++actualRows6116++actualRows6117++actualRows6118++actualRows6119++actualRows6120++actualRows6121++actualRows6122
def partOps94 : List WordIR.Op := [.bnot 6058,.bxor 6057 6059,.shr 4163 8,.literal (BitVec.ofNat 32 0),.bnot 6062,.badd 6061 6063,.bnot 6064,.band 6060 6065,.bxor 6056 6066,.shr 6067 31,.literal (BitVec.ofNat 32 1),.bxor 6068 6069,.shr 4215 8,.literal (BitVec.ofNat 32 0),.bnot 6072,.band 6071 6073,.shr 4215 8,.literal (BitVec.ofNat 32 0),.bnot 6076,.bxor 6075 6077,.shr 4215 8,.literal (BitVec.ofNat 32 0),.bnot 6080,.badd 6079 6081,.bnot 6082,.band 6078 6083,.bxor 6074 6084,.shr 6085 31,.literal (BitVec.ofNat 32 1),.bxor 6086 6087,.shr 4267 8,.literal (BitVec.ofNat 32 0),.bnot 6090,.band 6089 6091,.shr 4267 8,.literal (BitVec.ofNat 32 0),.bnot 6094,.bxor 6093 6095,.shr 4267 8,.literal (BitVec.ofNat 32 0),.bnot 6098,.badd 6097 6099,.bnot 6100,.band 6096 6101,.bxor 6092 6102,.shr 6103 31,.literal (BitVec.ofNat 32 1),.bxor 6104 6105,.shr 4319 8,.literal (BitVec.ofNat 32 0),.bnot 6108,.band 6107 6109,.shr 4319 8,.literal (BitVec.ofNat 32 0),.bnot 6112,.bxor 6111 6113,.shr 4319 8,.literal (BitVec.ofNat 32 0),.bnot 6116,.badd 6115 6117,.bnot 6118,.band 6114 6119,.bxor 6110 6120,.shr 6121 31]
theorem partExact94 : partRows94=WordField.rows actualModulus 6059 partOps94 := by
  simp only [partRows94,partOps94,WordField.rows,rows6059,rows6060,rows6061,rows6062,rows6063,rows6064,rows6065,rows6066,rows6067,rows6068,rows6069,rows6070,rows6071,rows6072,rows6073,rows6074,rows6075,rows6076,rows6077,rows6078,rows6079,rows6080,rows6081,rows6082,rows6083,rows6084,rows6085,rows6086,rows6087,rows6088,rows6089,rows6090,rows6091,rows6092,rows6093,rows6094,rows6095,rows6096,rows6097,rows6098,rows6099,rows6100,rows6101,rows6102,rows6103,rows6104,rows6105,rows6106,rows6107,rows6108,rows6109,rows6110,rows6111,rows6112,rows6113,rows6114,rows6115,rows6116,rows6117,rows6118,rows6119,rows6120,rows6121,rows6122,List.append_assoc,List.append_nil]
theorem partLength94 : partOps94.length=64 := by decide
theorem partStats94 : partRows94.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows94=327192 := by
  simp only [partRows94,List.length_append,MatrixRowBlocks.rows_weight_append,stats6059.1,stats6059.2,stats6060.1,stats6060.2,stats6061.1,stats6061.2,stats6062.1,stats6062.2,stats6063.1,stats6063.2,stats6064.1,stats6064.2,stats6065.1,stats6065.2,stats6066.1,stats6066.2,stats6067.1,stats6067.2,stats6068.1,stats6068.2,stats6069.1,stats6069.2,stats6070.1,stats6070.2,stats6071.1,stats6071.2,stats6072.1,stats6072.2,stats6073.1,stats6073.2,stats6074.1,stats6074.2,stats6075.1,stats6075.2,stats6076.1,stats6076.2,stats6077.1,stats6077.2,stats6078.1,stats6078.2,stats6079.1,stats6079.2,stats6080.1,stats6080.2,stats6081.1,stats6081.2,stats6082.1,stats6082.2,stats6083.1,stats6083.2,stats6084.1,stats6084.2,stats6085.1,stats6085.2,stats6086.1,stats6086.2,stats6087.1,stats6087.2,stats6088.1,stats6088.2,stats6089.1,stats6089.2,stats6090.1,stats6090.2,stats6091.1,stats6091.2,stats6092.1,stats6092.2,stats6093.1,stats6093.2,stats6094.1,stats6094.2,stats6095.1,stats6095.2,stats6096.1,stats6096.2,stats6097.1,stats6097.2,stats6098.1,stats6098.2,stats6099.1,stats6099.2,stats6100.1,stats6100.2,stats6101.1,stats6101.2,stats6102.1,stats6102.2,stats6103.1,stats6103.2,stats6104.1,stats6104.2,stats6105.1,stats6105.2,stats6106.1,stats6106.2,stats6107.1,stats6107.2,stats6108.1,stats6108.2,stats6109.1,stats6109.2,stats6110.1,stats6110.2,stats6111.1,stats6111.2,stats6112.1,stats6112.2,stats6113.1,stats6113.2,stats6114.1,stats6114.2,stats6115.1,stats6115.2,stats6116.1,stats6116.2,stats6117.1,stats6117.2,stats6118.1,stats6118.2,stats6119.1,stats6119.2,stats6120.1,stats6120.2,stats6121.1,stats6121.2,stats6122.1,stats6122.2]
  decide
end FrameHashControllerCheckedRows
