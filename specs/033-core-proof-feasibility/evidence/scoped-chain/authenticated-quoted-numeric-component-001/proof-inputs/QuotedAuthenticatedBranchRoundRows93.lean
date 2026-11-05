import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData94
import AuthenticatedBranchRoundInstructionMatrixData95
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6070 : actualRows6070=WordField.canonicalRows actualModulus 6070 (.bxor 1299 6069) := by core033_kernel_decide
theorem stats6070 : actualRows6070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6070=7428 := by core033_kernel_decide
theorem rows6071 : actualRows6071=WordField.canonicalRows actualModulus 6071 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6071 : actualRows6071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6071=2820 := by core033_kernel_decide
theorem rows6072 : actualRows6072=WordField.canonicalRows actualModulus 6072 (.bnot 6071) := by core033_kernel_decide
theorem stats6072 : actualRows6072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6072=6276 := by core033_kernel_decide
theorem rows6073 : actualRows6073=WordField.canonicalRows actualModulus 6073 (.bxor 6070 6072) := by core033_kernel_decide
theorem stats6073 : actualRows6073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6073=7428 := by core033_kernel_decide
theorem rows6074 : actualRows6074=WordField.canonicalRows actualModulus 6074 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6074 : actualRows6074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6074=2892 := by core033_kernel_decide
theorem rows6075 : actualRows6075=WordField.canonicalRows actualModulus 6075 (.bxor 1299 6074) := by core033_kernel_decide
theorem stats6075 : actualRows6075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6075=7428 := by core033_kernel_decide
theorem rows6076 : actualRows6076=WordField.canonicalRows actualModulus 6076 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6076 : actualRows6076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6076=2820 := by core033_kernel_decide
theorem rows6077 : actualRows6077=WordField.canonicalRows actualModulus 6077 (.bnot 6076) := by core033_kernel_decide
theorem stats6077 : actualRows6077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6077=6276 := by core033_kernel_decide
theorem rows6078 : actualRows6078=WordField.canonicalRows actualModulus 6078 (.badd 6075 6077) := by core033_kernel_decide
theorem stats6078 : actualRows6078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6078=5388 := by core033_kernel_decide
theorem rows6079 : actualRows6079=WordField.canonicalRows actualModulus 6079 (.bnot 6078) := by core033_kernel_decide
theorem stats6079 : actualRows6079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6079=6276 := by core033_kernel_decide
theorem rows6080 : actualRows6080=WordField.canonicalRows actualModulus 6080 (.band 6073 6079) := by core033_kernel_decide
theorem stats6080 : actualRows6080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6080=5124 := by core033_kernel_decide
theorem rows6081 : actualRows6081=WordField.canonicalRows actualModulus 6081 (.bxor 6068 6080) := by core033_kernel_decide
theorem stats6081 : actualRows6081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6081=7428 := by core033_kernel_decide
theorem rows6082 : actualRows6082=WordField.canonicalRows actualModulus 6082 (.shr 6081 31) := by core033_kernel_decide
theorem stats6082 : actualRows6082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6082=2892 := by core033_kernel_decide
theorem rows6083 : actualRows6083=WordField.canonicalRows actualModulus 6083 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6083 : actualRows6083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6083=2892 := by core033_kernel_decide
theorem rows6084 : actualRows6084=WordField.canonicalRows actualModulus 6084 (.bxor 6082 6083) := by core033_kernel_decide
theorem stats6084 : actualRows6084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6084=7428 := by core033_kernel_decide
theorem rows6085 : actualRows6085=WordField.canonicalRows actualModulus 6085 (.bnot 6084) := by core033_kernel_decide
theorem stats6085 : actualRows6085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6085=6276 := by core033_kernel_decide
theorem rows6086 : actualRows6086=WordField.canonicalRows actualModulus 6086 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6086 : actualRows6086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6086=2892 := by core033_kernel_decide
theorem rows6087 : actualRows6087=WordField.canonicalRows actualModulus 6087 (.badd 6085 6086) := by core033_kernel_decide
theorem stats6087 : actualRows6087.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6087=5388 := by core033_kernel_decide
theorem rows6088 : actualRows6088=WordField.canonicalRows actualModulus 6088 (.bnot 6087) := by core033_kernel_decide
theorem stats6088 : actualRows6088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6088=6276 := by core033_kernel_decide
theorem rows6089 : actualRows6089=WordField.canonicalRows actualModulus 6089 (.band 6088 2648) := by core033_kernel_decide
theorem stats6089 : actualRows6089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6089=5124 := by core033_kernel_decide
theorem rows6090 : actualRows6090=WordField.canonicalRows actualModulus 6090 (.bxor 6063 6089) := by core033_kernel_decide
theorem stats6090 : actualRows6090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6090=7428 := by core033_kernel_decide
theorem rows6091 : actualRows6091=WordField.canonicalRows actualModulus 6091 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6091 : actualRows6091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6091=2892 := by core033_kernel_decide
theorem rows6092 : actualRows6092=WordField.canonicalRows actualModulus 6092 (.bxor 1299 6091) := by core033_kernel_decide
theorem stats6092 : actualRows6092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6092=7428 := by core033_kernel_decide
theorem rows6093 : actualRows6093=WordField.canonicalRows actualModulus 6093 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6093 : actualRows6093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6093=2820 := by core033_kernel_decide
theorem rows6094 : actualRows6094=WordField.canonicalRows actualModulus 6094 (.bnot 6093) := by core033_kernel_decide
theorem stats6094 : actualRows6094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6094=6276 := by core033_kernel_decide
theorem rows6095 : actualRows6095=WordField.canonicalRows actualModulus 6095 (.band 6092 6094) := by core033_kernel_decide
theorem stats6095 : actualRows6095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6095=5124 := by core033_kernel_decide
theorem rows6096 : actualRows6096=WordField.canonicalRows actualModulus 6096 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6096 : actualRows6096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6096=2892 := by core033_kernel_decide
theorem rows6097 : actualRows6097=WordField.canonicalRows actualModulus 6097 (.bxor 1299 6096) := by core033_kernel_decide
theorem stats6097 : actualRows6097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6097=7428 := by core033_kernel_decide
theorem rows6098 : actualRows6098=WordField.canonicalRows actualModulus 6098 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6098 : actualRows6098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6098=2820 := by core033_kernel_decide
theorem rows6099 : actualRows6099=WordField.canonicalRows actualModulus 6099 (.bnot 6098) := by core033_kernel_decide
theorem stats6099 : actualRows6099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6099=6276 := by core033_kernel_decide
theorem rows6100 : actualRows6100=WordField.canonicalRows actualModulus 6100 (.bxor 6097 6099) := by core033_kernel_decide
theorem stats6100 : actualRows6100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6100=7428 := by core033_kernel_decide
theorem rows6101 : actualRows6101=WordField.canonicalRows actualModulus 6101 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6101 : actualRows6101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6101=2892 := by core033_kernel_decide
theorem rows6102 : actualRows6102=WordField.canonicalRows actualModulus 6102 (.bxor 1299 6101) := by core033_kernel_decide
theorem stats6102 : actualRows6102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6102=7428 := by core033_kernel_decide
theorem rows6103 : actualRows6103=WordField.canonicalRows actualModulus 6103 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6103 : actualRows6103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6103=2820 := by core033_kernel_decide
theorem rows6104 : actualRows6104=WordField.canonicalRows actualModulus 6104 (.bnot 6103) := by core033_kernel_decide
theorem stats6104 : actualRows6104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6104=6276 := by core033_kernel_decide
theorem rows6105 : actualRows6105=WordField.canonicalRows actualModulus 6105 (.badd 6102 6104) := by core033_kernel_decide
theorem stats6105 : actualRows6105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6105=5388 := by core033_kernel_decide
theorem rows6106 : actualRows6106=WordField.canonicalRows actualModulus 6106 (.bnot 6105) := by core033_kernel_decide
theorem stats6106 : actualRows6106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6106=6276 := by core033_kernel_decide
theorem rows6107 : actualRows6107=WordField.canonicalRows actualModulus 6107 (.band 6100 6106) := by core033_kernel_decide
theorem stats6107 : actualRows6107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6107=5124 := by core033_kernel_decide
theorem rows6108 : actualRows6108=WordField.canonicalRows actualModulus 6108 (.bxor 6095 6107) := by core033_kernel_decide
theorem stats6108 : actualRows6108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6108=7428 := by core033_kernel_decide
theorem rows6109 : actualRows6109=WordField.canonicalRows actualModulus 6109 (.shr 6108 31) := by core033_kernel_decide
theorem stats6109 : actualRows6109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6109=2892 := by core033_kernel_decide
theorem rows6110 : actualRows6110=WordField.canonicalRows actualModulus 6110 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6110 : actualRows6110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6110=2892 := by core033_kernel_decide
theorem rows6111 : actualRows6111=WordField.canonicalRows actualModulus 6111 (.bxor 6109 6110) := by core033_kernel_decide
theorem stats6111 : actualRows6111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6111=7428 := by core033_kernel_decide
theorem rows6112 : actualRows6112=WordField.canonicalRows actualModulus 6112 (.bnot 6111) := by core033_kernel_decide
theorem stats6112 : actualRows6112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6112=6276 := by core033_kernel_decide
theorem rows6113 : actualRows6113=WordField.canonicalRows actualModulus 6113 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6113 : actualRows6113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6113=2892 := by core033_kernel_decide
theorem rows6114 : actualRows6114=WordField.canonicalRows actualModulus 6114 (.badd 6112 6113) := by core033_kernel_decide
theorem stats6114 : actualRows6114.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6114=5388 := by core033_kernel_decide
theorem rows6115 : actualRows6115=WordField.canonicalRows actualModulus 6115 (.band 6114 2843) := by core033_kernel_decide
theorem stats6115 : actualRows6115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6115=5124 := by core033_kernel_decide
theorem rows6116 : actualRows6116=WordField.canonicalRows actualModulus 6116 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6116 : actualRows6116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6116=2892 := by core033_kernel_decide
theorem rows6117 : actualRows6117=WordField.canonicalRows actualModulus 6117 (.bxor 1299 6116) := by core033_kernel_decide
theorem stats6117 : actualRows6117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6117=7428 := by core033_kernel_decide
theorem rows6118 : actualRows6118=WordField.canonicalRows actualModulus 6118 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6118 : actualRows6118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6118=2820 := by core033_kernel_decide
theorem rows6119 : actualRows6119=WordField.canonicalRows actualModulus 6119 (.bnot 6118) := by core033_kernel_decide
theorem stats6119 : actualRows6119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6119=6276 := by core033_kernel_decide
theorem rows6120 : actualRows6120=WordField.canonicalRows actualModulus 6120 (.band 6117 6119) := by core033_kernel_decide
theorem stats6120 : actualRows6120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6120=5124 := by core033_kernel_decide
theorem rows6121 : actualRows6121=WordField.canonicalRows actualModulus 6121 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6121 : actualRows6121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6121=2892 := by core033_kernel_decide
theorem rows6122 : actualRows6122=WordField.canonicalRows actualModulus 6122 (.bxor 1299 6121) := by core033_kernel_decide
theorem stats6122 : actualRows6122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6122=7428 := by core033_kernel_decide
theorem rows6123 : actualRows6123=WordField.canonicalRows actualModulus 6123 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6123 : actualRows6123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6123=2820 := by core033_kernel_decide
theorem rows6124 : actualRows6124=WordField.canonicalRows actualModulus 6124 (.bnot 6123) := by core033_kernel_decide
theorem stats6124 : actualRows6124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6124=6276 := by core033_kernel_decide
theorem rows6125 : actualRows6125=WordField.canonicalRows actualModulus 6125 (.bxor 6122 6124) := by core033_kernel_decide
theorem stats6125 : actualRows6125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6125=7428 := by core033_kernel_decide
theorem rows6126 : actualRows6126=WordField.canonicalRows actualModulus 6126 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6126 : actualRows6126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6126=2892 := by core033_kernel_decide
theorem rows6127 : actualRows6127=WordField.canonicalRows actualModulus 6127 (.bxor 1299 6126) := by core033_kernel_decide
theorem stats6127 : actualRows6127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6127=7428 := by core033_kernel_decide
theorem rows6128 : actualRows6128=WordField.canonicalRows actualModulus 6128 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6128 : actualRows6128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6128=2820 := by core033_kernel_decide
theorem rows6129 : actualRows6129=WordField.canonicalRows actualModulus 6129 (.bnot 6128) := by core033_kernel_decide
theorem stats6129 : actualRows6129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6129=6276 := by core033_kernel_decide
theorem rows6130 : actualRows6130=WordField.canonicalRows actualModulus 6130 (.badd 6127 6129) := by core033_kernel_decide
theorem stats6130 : actualRows6130.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6130=5388 := by core033_kernel_decide
theorem rows6131 : actualRows6131=WordField.canonicalRows actualModulus 6131 (.bnot 6130) := by core033_kernel_decide
theorem stats6131 : actualRows6131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6131=6276 := by core033_kernel_decide
theorem rows6132 : actualRows6132=WordField.canonicalRows actualModulus 6132 (.band 6125 6131) := by core033_kernel_decide
theorem stats6132 : actualRows6132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6132=5124 := by core033_kernel_decide
theorem rows6133 : actualRows6133=WordField.canonicalRows actualModulus 6133 (.bxor 6120 6132) := by core033_kernel_decide
theorem stats6133 : actualRows6133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6133=7428 := by core033_kernel_decide
def partRows93 : List R1CS.Row := actualRows6070++actualRows6071++actualRows6072++actualRows6073++actualRows6074++actualRows6075++actualRows6076++actualRows6077++actualRows6078++actualRows6079++actualRows6080++actualRows6081++actualRows6082++actualRows6083++actualRows6084++actualRows6085++actualRows6086++actualRows6087++actualRows6088++actualRows6089++actualRows6090++actualRows6091++actualRows6092++actualRows6093++actualRows6094++actualRows6095++actualRows6096++actualRows6097++actualRows6098++actualRows6099++actualRows6100++actualRows6101++actualRows6102++actualRows6103++actualRows6104++actualRows6105++actualRows6106++actualRows6107++actualRows6108++actualRows6109++actualRows6110++actualRows6111++actualRows6112++actualRows6113++actualRows6114++actualRows6115++actualRows6116++actualRows6117++actualRows6118++actualRows6119++actualRows6120++actualRows6121++actualRows6122++actualRows6123++actualRows6124++actualRows6125++actualRows6126++actualRows6127++actualRows6128++actualRows6129++actualRows6130++actualRows6131++actualRows6132++actualRows6133
def partOps93 : List WordIR.Op := [.bxor 1299 6069,.literal (BitVec.ofNat 32 0),.bnot 6071,.bxor 6070 6072,.literal (BitVec.ofNat 32 2),.bxor 1299 6074,.literal (BitVec.ofNat 32 0),.bnot 6076,.badd 6075 6077,.bnot 6078,.band 6073 6079,.bxor 6068 6080,.shr 6081 31,.literal (BitVec.ofNat 32 1),.bxor 6082 6083,.bnot 6084,.literal (BitVec.ofNat 32 1),.badd 6085 6086,.bnot 6087,.band 6088 2648,.bxor 6063 6089,.literal (BitVec.ofNat 32 2),.bxor 1299 6091,.literal (BitVec.ofNat 32 0),.bnot 6093,.band 6092 6094,.literal (BitVec.ofNat 32 2),.bxor 1299 6096,.literal (BitVec.ofNat 32 0),.bnot 6098,.bxor 6097 6099,.literal (BitVec.ofNat 32 2),.bxor 1299 6101,.literal (BitVec.ofNat 32 0),.bnot 6103,.badd 6102 6104,.bnot 6105,.band 6100 6106,.bxor 6095 6107,.shr 6108 31,.literal (BitVec.ofNat 32 1),.bxor 6109 6110,.bnot 6111,.literal (BitVec.ofNat 32 1),.badd 6112 6113,.band 6114 2843,.literal (BitVec.ofNat 32 2),.bxor 1299 6116,.literal (BitVec.ofNat 32 0),.bnot 6118,.band 6117 6119,.literal (BitVec.ofNat 32 2),.bxor 1299 6121,.literal (BitVec.ofNat 32 0),.bnot 6123,.bxor 6122 6124,.literal (BitVec.ofNat 32 2),.bxor 1299 6126,.literal (BitVec.ofNat 32 0),.bnot 6128,.badd 6127 6129,.bnot 6130,.band 6125 6131,.bxor 6120 6132]
theorem partExact93 : partRows93=WordField.rows actualModulus 6070 partOps93 := by
  simp only [partRows93,partOps93,WordField.rows,rows6070,rows6071,rows6072,rows6073,rows6074,rows6075,rows6076,rows6077,rows6078,rows6079,rows6080,rows6081,rows6082,rows6083,rows6084,rows6085,rows6086,rows6087,rows6088,rows6089,rows6090,rows6091,rows6092,rows6093,rows6094,rows6095,rows6096,rows6097,rows6098,rows6099,rows6100,rows6101,rows6102,rows6103,rows6104,rows6105,rows6106,rows6107,rows6108,rows6109,rows6110,rows6111,rows6112,rows6113,rows6114,rows6115,rows6116,rows6117,rows6118,rows6119,rows6120,rows6121,rows6122,rows6123,rows6124,rows6125,rows6126,rows6127,rows6128,rows6129,rows6130,rows6131,rows6132,rows6133,List.append_assoc,List.append_nil]
theorem partLength93 : partOps93.length=64 := by decide
theorem partStats93 : partRows93.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows93=337104 := by
  simp only [partRows93,List.length_append,MatrixRowBlocks.rows_weight_append,stats6070.1,stats6070.2,stats6071.1,stats6071.2,stats6072.1,stats6072.2,stats6073.1,stats6073.2,stats6074.1,stats6074.2,stats6075.1,stats6075.2,stats6076.1,stats6076.2,stats6077.1,stats6077.2,stats6078.1,stats6078.2,stats6079.1,stats6079.2,stats6080.1,stats6080.2,stats6081.1,stats6081.2,stats6082.1,stats6082.2,stats6083.1,stats6083.2,stats6084.1,stats6084.2,stats6085.1,stats6085.2,stats6086.1,stats6086.2,stats6087.1,stats6087.2,stats6088.1,stats6088.2,stats6089.1,stats6089.2,stats6090.1,stats6090.2,stats6091.1,stats6091.2,stats6092.1,stats6092.2,stats6093.1,stats6093.2,stats6094.1,stats6094.2,stats6095.1,stats6095.2,stats6096.1,stats6096.2,stats6097.1,stats6097.2,stats6098.1,stats6098.2,stats6099.1,stats6099.2,stats6100.1,stats6100.2,stats6101.1,stats6101.2,stats6102.1,stats6102.2,stats6103.1,stats6103.2,stats6104.1,stats6104.2,stats6105.1,stats6105.2,stats6106.1,stats6106.2,stats6107.1,stats6107.2,stats6108.1,stats6108.2,stats6109.1,stats6109.2,stats6110.1,stats6110.2,stats6111.1,stats6111.2,stats6112.1,stats6112.2,stats6113.1,stats6113.2,stats6114.1,stats6114.2,stats6115.1,stats6115.2,stats6116.1,stats6116.2,stats6117.1,stats6117.2,stats6118.1,stats6118.2,stats6119.1,stats6119.2,stats6120.1,stats6120.2,stats6121.1,stats6121.2,stats6122.1,stats6122.2,stats6123.1,stats6123.2,stats6124.1,stats6124.2,stats6125.1,stats6125.2,stats6126.1,stats6126.2,stats6127.1,stats6127.2,stats6128.1,stats6128.2,stats6129.1,stats6129.2,stats6130.1,stats6130.2,stats6131.1,stats6131.2,stats6132.1,stats6132.2,stats6133.1,stats6133.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
