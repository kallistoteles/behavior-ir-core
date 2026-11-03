import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData125
import AuthenticatedBranchRoundInstructionMatrixData126
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8054 : actualRows8054=WordField.canonicalRows actualModulus 8054 (.bnot 8053) := by core033_kernel_decide
theorem stats8054 : actualRows8054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8054=6276 := by core033_kernel_decide
theorem rows8055 : actualRows8055=WordField.canonicalRows actualModulus 8055 (.band 8049 8054) := by core033_kernel_decide
theorem stats8055 : actualRows8055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8055=5124 := by core033_kernel_decide
theorem rows8056 : actualRows8056=WordField.canonicalRows actualModulus 8056 (.bxor 8045 8055) := by core033_kernel_decide
theorem stats8056 : actualRows8056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8056=7428 := by core033_kernel_decide
theorem rows8057 : actualRows8057=WordField.canonicalRows actualModulus 8057 (.shr 8056 31) := by core033_kernel_decide
theorem stats8057 : actualRows8057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8057=2892 := by core033_kernel_decide
theorem rows8058 : actualRows8058=WordField.canonicalRows actualModulus 8058 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8058 : actualRows8058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8058=2892 := by core033_kernel_decide
theorem rows8059 : actualRows8059=WordField.canonicalRows actualModulus 8059 (.bxor 8057 8058) := by core033_kernel_decide
theorem stats8059 : actualRows8059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8059=7428 := by core033_kernel_decide
theorem rows8060 : actualRows8060=WordField.canonicalRows actualModulus 8060 (.shr 6724 8) := by core033_kernel_decide
theorem stats8060 : actualRows8060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8060=4548 := by core033_kernel_decide
theorem rows8061 : actualRows8061=WordField.canonicalRows actualModulus 8061 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8061 : actualRows8061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8061=2820 := by core033_kernel_decide
theorem rows8062 : actualRows8062=WordField.canonicalRows actualModulus 8062 (.bnot 8061) := by core033_kernel_decide
theorem stats8062 : actualRows8062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8062=6276 := by core033_kernel_decide
theorem rows8063 : actualRows8063=WordField.canonicalRows actualModulus 8063 (.band 8060 8062) := by core033_kernel_decide
theorem stats8063 : actualRows8063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8063=5124 := by core033_kernel_decide
theorem rows8064 : actualRows8064=WordField.canonicalRows actualModulus 8064 (.shr 6724 8) := by core033_kernel_decide
theorem stats8064 : actualRows8064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8064=4548 := by core033_kernel_decide
theorem rows8065 : actualRows8065=WordField.canonicalRows actualModulus 8065 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8065 : actualRows8065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8065=2820 := by core033_kernel_decide
theorem rows8066 : actualRows8066=WordField.canonicalRows actualModulus 8066 (.bnot 8065) := by core033_kernel_decide
theorem stats8066 : actualRows8066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8066=6276 := by core033_kernel_decide
theorem rows8067 : actualRows8067=WordField.canonicalRows actualModulus 8067 (.bxor 8064 8066) := by core033_kernel_decide
theorem stats8067 : actualRows8067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8067=7428 := by core033_kernel_decide
theorem rows8068 : actualRows8068=WordField.canonicalRows actualModulus 8068 (.shr 6724 8) := by core033_kernel_decide
theorem stats8068 : actualRows8068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8068=4548 := by core033_kernel_decide
theorem rows8069 : actualRows8069=WordField.canonicalRows actualModulus 8069 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8069 : actualRows8069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8069=2820 := by core033_kernel_decide
theorem rows8070 : actualRows8070=WordField.canonicalRows actualModulus 8070 (.bnot 8069) := by core033_kernel_decide
theorem stats8070 : actualRows8070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8070=6276 := by core033_kernel_decide
theorem rows8071 : actualRows8071=WordField.canonicalRows actualModulus 8071 (.badd 8068 8070) := by core033_kernel_decide
theorem stats8071 : actualRows8071.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8071=5388 := by core033_kernel_decide
theorem rows8072 : actualRows8072=WordField.canonicalRows actualModulus 8072 (.bnot 8071) := by core033_kernel_decide
theorem stats8072 : actualRows8072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8072=6276 := by core033_kernel_decide
theorem rows8073 : actualRows8073=WordField.canonicalRows actualModulus 8073 (.band 8067 8072) := by core033_kernel_decide
theorem stats8073 : actualRows8073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8073=5124 := by core033_kernel_decide
theorem rows8074 : actualRows8074=WordField.canonicalRows actualModulus 8074 (.bxor 8063 8073) := by core033_kernel_decide
theorem stats8074 : actualRows8074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8074=7428 := by core033_kernel_decide
theorem rows8075 : actualRows8075=WordField.canonicalRows actualModulus 8075 (.shr 8074 31) := by core033_kernel_decide
theorem stats8075 : actualRows8075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8075=2892 := by core033_kernel_decide
theorem rows8076 : actualRows8076=WordField.canonicalRows actualModulus 8076 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8076 : actualRows8076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8076=2892 := by core033_kernel_decide
theorem rows8077 : actualRows8077=WordField.canonicalRows actualModulus 8077 (.bxor 8075 8076) := by core033_kernel_decide
theorem stats8077 : actualRows8077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8077=7428 := by core033_kernel_decide
theorem rows8078 : actualRows8078=WordField.canonicalRows actualModulus 8078 (.shr 6777 8) := by core033_kernel_decide
theorem stats8078 : actualRows8078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8078=4548 := by core033_kernel_decide
theorem rows8079 : actualRows8079=WordField.canonicalRows actualModulus 8079 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8079 : actualRows8079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8079=2820 := by core033_kernel_decide
theorem rows8080 : actualRows8080=WordField.canonicalRows actualModulus 8080 (.bnot 8079) := by core033_kernel_decide
theorem stats8080 : actualRows8080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8080=6276 := by core033_kernel_decide
theorem rows8081 : actualRows8081=WordField.canonicalRows actualModulus 8081 (.band 8078 8080) := by core033_kernel_decide
theorem stats8081 : actualRows8081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8081=5124 := by core033_kernel_decide
theorem rows8082 : actualRows8082=WordField.canonicalRows actualModulus 8082 (.shr 6777 8) := by core033_kernel_decide
theorem stats8082 : actualRows8082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8082=4548 := by core033_kernel_decide
theorem rows8083 : actualRows8083=WordField.canonicalRows actualModulus 8083 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8083 : actualRows8083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8083=2820 := by core033_kernel_decide
theorem rows8084 : actualRows8084=WordField.canonicalRows actualModulus 8084 (.bnot 8083) := by core033_kernel_decide
theorem stats8084 : actualRows8084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8084=6276 := by core033_kernel_decide
theorem rows8085 : actualRows8085=WordField.canonicalRows actualModulus 8085 (.bxor 8082 8084) := by core033_kernel_decide
theorem stats8085 : actualRows8085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8085=7428 := by core033_kernel_decide
theorem rows8086 : actualRows8086=WordField.canonicalRows actualModulus 8086 (.shr 6777 8) := by core033_kernel_decide
theorem stats8086 : actualRows8086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8086=4548 := by core033_kernel_decide
theorem rows8087 : actualRows8087=WordField.canonicalRows actualModulus 8087 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8087 : actualRows8087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8087=2820 := by core033_kernel_decide
theorem rows8088 : actualRows8088=WordField.canonicalRows actualModulus 8088 (.bnot 8087) := by core033_kernel_decide
theorem stats8088 : actualRows8088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8088=6276 := by core033_kernel_decide
theorem rows8089 : actualRows8089=WordField.canonicalRows actualModulus 8089 (.badd 8086 8088) := by core033_kernel_decide
theorem stats8089 : actualRows8089.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8089=5388 := by core033_kernel_decide
theorem rows8090 : actualRows8090=WordField.canonicalRows actualModulus 8090 (.bnot 8089) := by core033_kernel_decide
theorem stats8090 : actualRows8090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8090=6276 := by core033_kernel_decide
theorem rows8091 : actualRows8091=WordField.canonicalRows actualModulus 8091 (.band 8085 8090) := by core033_kernel_decide
theorem stats8091 : actualRows8091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8091=5124 := by core033_kernel_decide
theorem rows8092 : actualRows8092=WordField.canonicalRows actualModulus 8092 (.bxor 8081 8091) := by core033_kernel_decide
theorem stats8092 : actualRows8092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8092=7428 := by core033_kernel_decide
theorem rows8093 : actualRows8093=WordField.canonicalRows actualModulus 8093 (.shr 8092 31) := by core033_kernel_decide
theorem stats8093 : actualRows8093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8093=2892 := by core033_kernel_decide
theorem rows8094 : actualRows8094=WordField.canonicalRows actualModulus 8094 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8094 : actualRows8094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8094=2892 := by core033_kernel_decide
theorem rows8095 : actualRows8095=WordField.canonicalRows actualModulus 8095 (.bxor 8093 8094) := by core033_kernel_decide
theorem stats8095 : actualRows8095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8095=7428 := by core033_kernel_decide
theorem rows8096 : actualRows8096=WordField.canonicalRows actualModulus 8096 (.shr 6830 8) := by core033_kernel_decide
theorem stats8096 : actualRows8096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8096=4548 := by core033_kernel_decide
theorem rows8097 : actualRows8097=WordField.canonicalRows actualModulus 8097 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8097 : actualRows8097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8097=2820 := by core033_kernel_decide
theorem rows8098 : actualRows8098=WordField.canonicalRows actualModulus 8098 (.bnot 8097) := by core033_kernel_decide
theorem stats8098 : actualRows8098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8098=6276 := by core033_kernel_decide
theorem rows8099 : actualRows8099=WordField.canonicalRows actualModulus 8099 (.band 8096 8098) := by core033_kernel_decide
theorem stats8099 : actualRows8099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8099=5124 := by core033_kernel_decide
theorem rows8100 : actualRows8100=WordField.canonicalRows actualModulus 8100 (.shr 6830 8) := by core033_kernel_decide
theorem stats8100 : actualRows8100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8100=4548 := by core033_kernel_decide
theorem rows8101 : actualRows8101=WordField.canonicalRows actualModulus 8101 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8101 : actualRows8101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8101=2820 := by core033_kernel_decide
theorem rows8102 : actualRows8102=WordField.canonicalRows actualModulus 8102 (.bnot 8101) := by core033_kernel_decide
theorem stats8102 : actualRows8102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8102=6276 := by core033_kernel_decide
theorem rows8103 : actualRows8103=WordField.canonicalRows actualModulus 8103 (.bxor 8100 8102) := by core033_kernel_decide
theorem stats8103 : actualRows8103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8103=7428 := by core033_kernel_decide
theorem rows8104 : actualRows8104=WordField.canonicalRows actualModulus 8104 (.shr 6830 8) := by core033_kernel_decide
theorem stats8104 : actualRows8104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8104=4548 := by core033_kernel_decide
theorem rows8105 : actualRows8105=WordField.canonicalRows actualModulus 8105 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8105 : actualRows8105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8105=2820 := by core033_kernel_decide
theorem rows8106 : actualRows8106=WordField.canonicalRows actualModulus 8106 (.bnot 8105) := by core033_kernel_decide
theorem stats8106 : actualRows8106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8106=6276 := by core033_kernel_decide
theorem rows8107 : actualRows8107=WordField.canonicalRows actualModulus 8107 (.badd 8104 8106) := by core033_kernel_decide
theorem stats8107 : actualRows8107.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8107=5388 := by core033_kernel_decide
theorem rows8108 : actualRows8108=WordField.canonicalRows actualModulus 8108 (.bnot 8107) := by core033_kernel_decide
theorem stats8108 : actualRows8108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8108=6276 := by core033_kernel_decide
theorem rows8109 : actualRows8109=WordField.canonicalRows actualModulus 8109 (.band 8103 8108) := by core033_kernel_decide
theorem stats8109 : actualRows8109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8109=5124 := by core033_kernel_decide
theorem rows8110 : actualRows8110=WordField.canonicalRows actualModulus 8110 (.bxor 8099 8109) := by core033_kernel_decide
theorem stats8110 : actualRows8110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8110=7428 := by core033_kernel_decide
theorem rows8111 : actualRows8111=WordField.canonicalRows actualModulus 8111 (.shr 8110 31) := by core033_kernel_decide
theorem stats8111 : actualRows8111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8111=2892 := by core033_kernel_decide
theorem rows8112 : actualRows8112=WordField.canonicalRows actualModulus 8112 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8112 : actualRows8112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8112=2892 := by core033_kernel_decide
theorem rows8113 : actualRows8113=WordField.canonicalRows actualModulus 8113 (.bxor 8111 8112) := by core033_kernel_decide
theorem stats8113 : actualRows8113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8113=7428 := by core033_kernel_decide
theorem rows8114 : actualRows8114=WordField.canonicalRows actualModulus 8114 (.shr 6883 8) := by core033_kernel_decide
theorem stats8114 : actualRows8114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8114=4548 := by core033_kernel_decide
theorem rows8115 : actualRows8115=WordField.canonicalRows actualModulus 8115 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8115 : actualRows8115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8115=2820 := by core033_kernel_decide
theorem rows8116 : actualRows8116=WordField.canonicalRows actualModulus 8116 (.bnot 8115) := by core033_kernel_decide
theorem stats8116 : actualRows8116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8116=6276 := by core033_kernel_decide
theorem rows8117 : actualRows8117=WordField.canonicalRows actualModulus 8117 (.band 8114 8116) := by core033_kernel_decide
theorem stats8117 : actualRows8117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8117=5124 := by core033_kernel_decide
def partRows124 : List R1CS.Row := actualRows8054++actualRows8055++actualRows8056++actualRows8057++actualRows8058++actualRows8059++actualRows8060++actualRows8061++actualRows8062++actualRows8063++actualRows8064++actualRows8065++actualRows8066++actualRows8067++actualRows8068++actualRows8069++actualRows8070++actualRows8071++actualRows8072++actualRows8073++actualRows8074++actualRows8075++actualRows8076++actualRows8077++actualRows8078++actualRows8079++actualRows8080++actualRows8081++actualRows8082++actualRows8083++actualRows8084++actualRows8085++actualRows8086++actualRows8087++actualRows8088++actualRows8089++actualRows8090++actualRows8091++actualRows8092++actualRows8093++actualRows8094++actualRows8095++actualRows8096++actualRows8097++actualRows8098++actualRows8099++actualRows8100++actualRows8101++actualRows8102++actualRows8103++actualRows8104++actualRows8105++actualRows8106++actualRows8107++actualRows8108++actualRows8109++actualRows8110++actualRows8111++actualRows8112++actualRows8113++actualRows8114++actualRows8115++actualRows8116++actualRows8117
def partOps124 : List WordIR.Op := [.bnot 8053,.band 8049 8054,.bxor 8045 8055,.shr 8056 31,.literal (BitVec.ofNat 32 1),.bxor 8057 8058,.shr 6724 8,.literal (BitVec.ofNat 32 0),.bnot 8061,.band 8060 8062,.shr 6724 8,.literal (BitVec.ofNat 32 0),.bnot 8065,.bxor 8064 8066,.shr 6724 8,.literal (BitVec.ofNat 32 0),.bnot 8069,.badd 8068 8070,.bnot 8071,.band 8067 8072,.bxor 8063 8073,.shr 8074 31,.literal (BitVec.ofNat 32 1),.bxor 8075 8076,.shr 6777 8,.literal (BitVec.ofNat 32 0),.bnot 8079,.band 8078 8080,.shr 6777 8,.literal (BitVec.ofNat 32 0),.bnot 8083,.bxor 8082 8084,.shr 6777 8,.literal (BitVec.ofNat 32 0),.bnot 8087,.badd 8086 8088,.bnot 8089,.band 8085 8090,.bxor 8081 8091,.shr 8092 31,.literal (BitVec.ofNat 32 1),.bxor 8093 8094,.shr 6830 8,.literal (BitVec.ofNat 32 0),.bnot 8097,.band 8096 8098,.shr 6830 8,.literal (BitVec.ofNat 32 0),.bnot 8101,.bxor 8100 8102,.shr 6830 8,.literal (BitVec.ofNat 32 0),.bnot 8105,.badd 8104 8106,.bnot 8107,.band 8103 8108,.bxor 8099 8109,.shr 8110 31,.literal (BitVec.ofNat 32 1),.bxor 8111 8112,.shr 6883 8,.literal (BitVec.ofNat 32 0),.bnot 8115,.band 8114 8116]
theorem partExact124 : partRows124=WordField.rows actualModulus 8054 partOps124 := by
  simp only [partRows124,partOps124,WordField.rows,rows8054,rows8055,rows8056,rows8057,rows8058,rows8059,rows8060,rows8061,rows8062,rows8063,rows8064,rows8065,rows8066,rows8067,rows8068,rows8069,rows8070,rows8071,rows8072,rows8073,rows8074,rows8075,rows8076,rows8077,rows8078,rows8079,rows8080,rows8081,rows8082,rows8083,rows8084,rows8085,rows8086,rows8087,rows8088,rows8089,rows8090,rows8091,rows8092,rows8093,rows8094,rows8095,rows8096,rows8097,rows8098,rows8099,rows8100,rows8101,rows8102,rows8103,rows8104,rows8105,rows8106,rows8107,rows8108,rows8109,rows8110,rows8111,rows8112,rows8113,rows8114,rows8115,rows8116,rows8117,List.append_assoc,List.append_nil]
theorem partLength124 : partOps124.length=64 := by decide
theorem partStats124 : partRows124.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows124=323544 := by
  simp only [partRows124,List.length_append,MatrixRowBlocks.rows_weight_append,stats8054.1,stats8054.2,stats8055.1,stats8055.2,stats8056.1,stats8056.2,stats8057.1,stats8057.2,stats8058.1,stats8058.2,stats8059.1,stats8059.2,stats8060.1,stats8060.2,stats8061.1,stats8061.2,stats8062.1,stats8062.2,stats8063.1,stats8063.2,stats8064.1,stats8064.2,stats8065.1,stats8065.2,stats8066.1,stats8066.2,stats8067.1,stats8067.2,stats8068.1,stats8068.2,stats8069.1,stats8069.2,stats8070.1,stats8070.2,stats8071.1,stats8071.2,stats8072.1,stats8072.2,stats8073.1,stats8073.2,stats8074.1,stats8074.2,stats8075.1,stats8075.2,stats8076.1,stats8076.2,stats8077.1,stats8077.2,stats8078.1,stats8078.2,stats8079.1,stats8079.2,stats8080.1,stats8080.2,stats8081.1,stats8081.2,stats8082.1,stats8082.2,stats8083.1,stats8083.2,stats8084.1,stats8084.2,stats8085.1,stats8085.2,stats8086.1,stats8086.2,stats8087.1,stats8087.2,stats8088.1,stats8088.2,stats8089.1,stats8089.2,stats8090.1,stats8090.2,stats8091.1,stats8091.2,stats8092.1,stats8092.2,stats8093.1,stats8093.2,stats8094.1,stats8094.2,stats8095.1,stats8095.2,stats8096.1,stats8096.2,stats8097.1,stats8097.2,stats8098.1,stats8098.2,stats8099.1,stats8099.2,stats8100.1,stats8100.2,stats8101.1,stats8101.2,stats8102.1,stats8102.2,stats8103.1,stats8103.2,stats8104.1,stats8104.2,stats8105.1,stats8105.2,stats8106.1,stats8106.2,stats8107.1,stats8107.2,stats8108.1,stats8108.2,stats8109.1,stats8109.2,stats8110.1,stats8110.2,stats8111.1,stats8111.2,stats8112.1,stats8112.2,stats8113.1,stats8113.2,stats8114.1,stats8114.2,stats8115.1,stats8115.2,stats8116.1,stats8116.2,stats8117.1,stats8117.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
