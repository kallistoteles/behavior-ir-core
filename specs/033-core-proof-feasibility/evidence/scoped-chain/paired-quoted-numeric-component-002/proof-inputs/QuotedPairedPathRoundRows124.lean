import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData125
import PairedPathRoundInstructionMatrixData126
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8032 : actualRows8032=WordField.canonicalRows actualModulus 8032 (.badd 8026 8031) := by core033_kernel_decide
theorem stats8032 : actualRows8032.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8032=5388 := by core033_kernel_decide
theorem rows8033 : actualRows8033=WordField.canonicalRows actualModulus 8033 (.badd 8032 7825) := by core033_kernel_decide
theorem stats8033 : actualRows8033.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8033=5388 := by core033_kernel_decide
theorem rows8034 : actualRows8034=WordField.canonicalRows actualModulus 8034 (.rotr 8020 17) := by core033_kernel_decide
theorem stats8034 : actualRows8034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8034=5124 := by core033_kernel_decide
theorem rows8035 : actualRows8035=WordField.canonicalRows actualModulus 8035 (.rotr 8020 19) := by core033_kernel_decide
theorem stats8035 : actualRows8035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8035=5124 := by core033_kernel_decide
theorem rows8036 : actualRows8036=WordField.canonicalRows actualModulus 8036 (.bxor 8034 8035) := by core033_kernel_decide
theorem stats8036 : actualRows8036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8036=7428 := by core033_kernel_decide
theorem rows8037 : actualRows8037=WordField.canonicalRows actualModulus 8037 (.shr 8020 10) := by core033_kernel_decide
theorem stats8037 : actualRows8037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8037=4404 := by core033_kernel_decide
theorem rows8038 : actualRows8038=WordField.canonicalRows actualModulus 8038 (.bxor 8036 8037) := by core033_kernel_decide
theorem stats8038 : actualRows8038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8038=7428 := by core033_kernel_decide
theorem rows8039 : actualRows8039=WordField.canonicalRows actualModulus 8039 (.badd 8038 7955) := by core033_kernel_decide
theorem stats8039 : actualRows8039.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8039=5388 := by core033_kernel_decide
theorem rows8040 : actualRows8040=WordField.canonicalRows actualModulus 8040 (.rotr 7851 7) := by core033_kernel_decide
theorem stats8040 : actualRows8040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8040=5124 := by core033_kernel_decide
theorem rows8041 : actualRows8041=WordField.canonicalRows actualModulus 8041 (.rotr 7851 18) := by core033_kernel_decide
theorem stats8041 : actualRows8041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8041=5124 := by core033_kernel_decide
theorem rows8042 : actualRows8042=WordField.canonicalRows actualModulus 8042 (.bxor 8040 8041) := by core033_kernel_decide
theorem stats8042 : actualRows8042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8042=7428 := by core033_kernel_decide
theorem rows8043 : actualRows8043=WordField.canonicalRows actualModulus 8043 (.shr 7851 3) := by core033_kernel_decide
theorem stats8043 : actualRows8043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8043=4908 := by core033_kernel_decide
theorem rows8044 : actualRows8044=WordField.canonicalRows actualModulus 8044 (.bxor 8042 8043) := by core033_kernel_decide
theorem stats8044 : actualRows8044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8044=7428 := by core033_kernel_decide
theorem rows8045 : actualRows8045=WordField.canonicalRows actualModulus 8045 (.badd 8039 8044) := by core033_kernel_decide
theorem stats8045 : actualRows8045.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8045=5388 := by core033_kernel_decide
theorem rows8046 : actualRows8046=WordField.canonicalRows actualModulus 8046 (.badd 8045 7838) := by core033_kernel_decide
theorem stats8046 : actualRows8046.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8046=5388 := by core033_kernel_decide
theorem rows8047 : actualRows8047=WordField.canonicalRows actualModulus 8047 (.rotr 8033 17) := by core033_kernel_decide
theorem stats8047 : actualRows8047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8047=5124 := by core033_kernel_decide
theorem rows8048 : actualRows8048=WordField.canonicalRows actualModulus 8048 (.rotr 8033 19) := by core033_kernel_decide
theorem stats8048 : actualRows8048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8048=5124 := by core033_kernel_decide
theorem rows8049 : actualRows8049=WordField.canonicalRows actualModulus 8049 (.bxor 8047 8048) := by core033_kernel_decide
theorem stats8049 : actualRows8049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8049=7428 := by core033_kernel_decide
theorem rows8050 : actualRows8050=WordField.canonicalRows actualModulus 8050 (.shr 8033 10) := by core033_kernel_decide
theorem stats8050 : actualRows8050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8050=4404 := by core033_kernel_decide
theorem rows8051 : actualRows8051=WordField.canonicalRows actualModulus 8051 (.bxor 8049 8050) := by core033_kernel_decide
theorem stats8051 : actualRows8051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8051=7428 := by core033_kernel_decide
theorem rows8052 : actualRows8052=WordField.canonicalRows actualModulus 8052 (.badd 8051 7968) := by core033_kernel_decide
theorem stats8052 : actualRows8052.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8052=5388 := by core033_kernel_decide
theorem rows8053 : actualRows8053=WordField.canonicalRows actualModulus 8053 (.rotr 7864 7) := by core033_kernel_decide
theorem stats8053 : actualRows8053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8053=5124 := by core033_kernel_decide
theorem rows8054 : actualRows8054=WordField.canonicalRows actualModulus 8054 (.rotr 7864 18) := by core033_kernel_decide
theorem stats8054 : actualRows8054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8054=5124 := by core033_kernel_decide
theorem rows8055 : actualRows8055=WordField.canonicalRows actualModulus 8055 (.bxor 8053 8054) := by core033_kernel_decide
theorem stats8055 : actualRows8055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8055=7428 := by core033_kernel_decide
theorem rows8056 : actualRows8056=WordField.canonicalRows actualModulus 8056 (.shr 7864 3) := by core033_kernel_decide
theorem stats8056 : actualRows8056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8056=4908 := by core033_kernel_decide
theorem rows8057 : actualRows8057=WordField.canonicalRows actualModulus 8057 (.bxor 8055 8056) := by core033_kernel_decide
theorem stats8057 : actualRows8057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8057=7428 := by core033_kernel_decide
theorem rows8058 : actualRows8058=WordField.canonicalRows actualModulus 8058 (.badd 8052 8057) := by core033_kernel_decide
theorem stats8058 : actualRows8058.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8058=5388 := by core033_kernel_decide
theorem rows8059 : actualRows8059=WordField.canonicalRows actualModulus 8059 (.badd 8058 7851) := by core033_kernel_decide
theorem stats8059 : actualRows8059.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8059=5388 := by core033_kernel_decide
theorem rows8060 : actualRows8060=WordField.canonicalRows actualModulus 8060 (.rotr 8046 17) := by core033_kernel_decide
theorem stats8060 : actualRows8060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8060=5124 := by core033_kernel_decide
theorem rows8061 : actualRows8061=WordField.canonicalRows actualModulus 8061 (.rotr 8046 19) := by core033_kernel_decide
theorem stats8061 : actualRows8061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8061=5124 := by core033_kernel_decide
theorem rows8062 : actualRows8062=WordField.canonicalRows actualModulus 8062 (.bxor 8060 8061) := by core033_kernel_decide
theorem stats8062 : actualRows8062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8062=7428 := by core033_kernel_decide
theorem rows8063 : actualRows8063=WordField.canonicalRows actualModulus 8063 (.shr 8046 10) := by core033_kernel_decide
theorem stats8063 : actualRows8063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8063=4404 := by core033_kernel_decide
theorem rows8064 : actualRows8064=WordField.canonicalRows actualModulus 8064 (.bxor 8062 8063) := by core033_kernel_decide
theorem stats8064 : actualRows8064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8064=7428 := by core033_kernel_decide
theorem rows8065 : actualRows8065=WordField.canonicalRows actualModulus 8065 (.badd 8064 7981) := by core033_kernel_decide
theorem stats8065 : actualRows8065.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8065=5388 := by core033_kernel_decide
theorem rows8066 : actualRows8066=WordField.canonicalRows actualModulus 8066 (.rotr 7877 7) := by core033_kernel_decide
theorem stats8066 : actualRows8066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8066=5124 := by core033_kernel_decide
theorem rows8067 : actualRows8067=WordField.canonicalRows actualModulus 8067 (.rotr 7877 18) := by core033_kernel_decide
theorem stats8067 : actualRows8067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8067=5124 := by core033_kernel_decide
theorem rows8068 : actualRows8068=WordField.canonicalRows actualModulus 8068 (.bxor 8066 8067) := by core033_kernel_decide
theorem stats8068 : actualRows8068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8068=7428 := by core033_kernel_decide
theorem rows8069 : actualRows8069=WordField.canonicalRows actualModulus 8069 (.shr 7877 3) := by core033_kernel_decide
theorem stats8069 : actualRows8069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8069=4908 := by core033_kernel_decide
theorem rows8070 : actualRows8070=WordField.canonicalRows actualModulus 8070 (.bxor 8068 8069) := by core033_kernel_decide
theorem stats8070 : actualRows8070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8070=7428 := by core033_kernel_decide
theorem rows8071 : actualRows8071=WordField.canonicalRows actualModulus 8071 (.badd 8065 8070) := by core033_kernel_decide
theorem stats8071 : actualRows8071.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8071=5388 := by core033_kernel_decide
theorem rows8072 : actualRows8072=WordField.canonicalRows actualModulus 8072 (.badd 8071 7864) := by core033_kernel_decide
theorem stats8072 : actualRows8072.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8072=5388 := by core033_kernel_decide
theorem rows8073 : actualRows8073=WordField.canonicalRows actualModulus 8073 (.rotr 2700 6) := by core033_kernel_decide
theorem stats8073 : actualRows8073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8073=5124 := by core033_kernel_decide
theorem rows8074 : actualRows8074=WordField.canonicalRows actualModulus 8074 (.rotr 2700 11) := by core033_kernel_decide
theorem stats8074 : actualRows8074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8074=5124 := by core033_kernel_decide
theorem rows8075 : actualRows8075=WordField.canonicalRows actualModulus 8075 (.bxor 8073 8074) := by core033_kernel_decide
theorem stats8075 : actualRows8075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8075=7428 := by core033_kernel_decide
theorem rows8076 : actualRows8076=WordField.canonicalRows actualModulus 8076 (.rotr 2700 25) := by core033_kernel_decide
theorem stats8076 : actualRows8076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8076=5124 := by core033_kernel_decide
theorem rows8077 : actualRows8077=WordField.canonicalRows actualModulus 8077 (.bxor 8075 8076) := by core033_kernel_decide
theorem stats8077 : actualRows8077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8077=7428 := by core033_kernel_decide
theorem rows8078 : actualRows8078=WordField.canonicalRows actualModulus 8078 (.badd 2859 8077) := by core033_kernel_decide
theorem stats8078 : actualRows8078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8078=5388 := by core033_kernel_decide
theorem rows8079 : actualRows8079=WordField.canonicalRows actualModulus 8079 (.band 2700 2753) := by core033_kernel_decide
theorem stats8079 : actualRows8079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8079=5124 := by core033_kernel_decide
theorem rows8080 : actualRows8080=WordField.canonicalRows actualModulus 8080 (.bnot 2700) := by core033_kernel_decide
theorem stats8080 : actualRows8080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8080=6276 := by core033_kernel_decide
theorem rows8081 : actualRows8081=WordField.canonicalRows actualModulus 8081 (.band 8080 2806) := by core033_kernel_decide
theorem stats8081 : actualRows8081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8081=5124 := by core033_kernel_decide
theorem rows8082 : actualRows8082=WordField.canonicalRows actualModulus 8082 (.bxor 8079 8081) := by core033_kernel_decide
theorem stats8082 : actualRows8082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8082=7428 := by core033_kernel_decide
theorem rows8083 : actualRows8083=WordField.canonicalRows actualModulus 8083 (.badd 8078 8082) := by core033_kernel_decide
theorem stats8083 : actualRows8083.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8083=5388 := by core033_kernel_decide
theorem rows8084 : actualRows8084=WordField.canonicalRows actualModulus 8084 (.literal (BitVec.ofNat 32 1116352408)) := by core033_kernel_decide
theorem stats8084 : actualRows8084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8084=3756 := by core033_kernel_decide
theorem rows8085 : actualRows8085=WordField.canonicalRows actualModulus 8085 (.badd 8083 8084) := by core033_kernel_decide
theorem stats8085 : actualRows8085.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8085=5388 := by core033_kernel_decide
theorem rows8086 : actualRows8086=WordField.canonicalRows actualModulus 8086 (.badd 8085 6206) := by core033_kernel_decide
theorem stats8086 : actualRows8086.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8086=5388 := by core033_kernel_decide
theorem rows8087 : actualRows8087=WordField.canonicalRows actualModulus 8087 (.rotr 2488 2) := by core033_kernel_decide
theorem stats8087 : actualRows8087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8087=5124 := by core033_kernel_decide
theorem rows8088 : actualRows8088=WordField.canonicalRows actualModulus 8088 (.rotr 2488 13) := by core033_kernel_decide
theorem stats8088 : actualRows8088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8088=5124 := by core033_kernel_decide
theorem rows8089 : actualRows8089=WordField.canonicalRows actualModulus 8089 (.bxor 8087 8088) := by core033_kernel_decide
theorem stats8089 : actualRows8089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8089=7428 := by core033_kernel_decide
theorem rows8090 : actualRows8090=WordField.canonicalRows actualModulus 8090 (.rotr 2488 22) := by core033_kernel_decide
theorem stats8090 : actualRows8090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8090=5124 := by core033_kernel_decide
theorem rows8091 : actualRows8091=WordField.canonicalRows actualModulus 8091 (.bxor 8089 8090) := by core033_kernel_decide
theorem stats8091 : actualRows8091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8091=7428 := by core033_kernel_decide
theorem rows8092 : actualRows8092=WordField.canonicalRows actualModulus 8092 (.band 2488 2541) := by core033_kernel_decide
theorem stats8092 : actualRows8092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8092=5124 := by core033_kernel_decide
theorem rows8093 : actualRows8093=WordField.canonicalRows actualModulus 8093 (.band 2488 2594) := by core033_kernel_decide
theorem stats8093 : actualRows8093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8093=5124 := by core033_kernel_decide
theorem rows8094 : actualRows8094=WordField.canonicalRows actualModulus 8094 (.bxor 8092 8093) := by core033_kernel_decide
theorem stats8094 : actualRows8094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8094=7428 := by core033_kernel_decide
theorem rows8095 : actualRows8095=WordField.canonicalRows actualModulus 8095 (.band 2541 2594) := by core033_kernel_decide
theorem stats8095 : actualRows8095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8095=5124 := by core033_kernel_decide
def partRows124 : List R1CS.Row := actualRows8032++actualRows8033++actualRows8034++actualRows8035++actualRows8036++actualRows8037++actualRows8038++actualRows8039++actualRows8040++actualRows8041++actualRows8042++actualRows8043++actualRows8044++actualRows8045++actualRows8046++actualRows8047++actualRows8048++actualRows8049++actualRows8050++actualRows8051++actualRows8052++actualRows8053++actualRows8054++actualRows8055++actualRows8056++actualRows8057++actualRows8058++actualRows8059++actualRows8060++actualRows8061++actualRows8062++actualRows8063++actualRows8064++actualRows8065++actualRows8066++actualRows8067++actualRows8068++actualRows8069++actualRows8070++actualRows8071++actualRows8072++actualRows8073++actualRows8074++actualRows8075++actualRows8076++actualRows8077++actualRows8078++actualRows8079++actualRows8080++actualRows8081++actualRows8082++actualRows8083++actualRows8084++actualRows8085++actualRows8086++actualRows8087++actualRows8088++actualRows8089++actualRows8090++actualRows8091++actualRows8092++actualRows8093++actualRows8094++actualRows8095
def partOps124 : List WordIR.Op := [.badd 8026 8031,.badd 8032 7825,.rotr 8020 17,.rotr 8020 19,.bxor 8034 8035,.shr 8020 10,.bxor 8036 8037,.badd 8038 7955,.rotr 7851 7,.rotr 7851 18,.bxor 8040 8041,.shr 7851 3,.bxor 8042 8043,.badd 8039 8044,.badd 8045 7838,.rotr 8033 17,.rotr 8033 19,.bxor 8047 8048,.shr 8033 10,.bxor 8049 8050,.badd 8051 7968,.rotr 7864 7,.rotr 7864 18,.bxor 8053 8054,.shr 7864 3,.bxor 8055 8056,.badd 8052 8057,.badd 8058 7851,.rotr 8046 17,.rotr 8046 19,.bxor 8060 8061,.shr 8046 10,.bxor 8062 8063,.badd 8064 7981,.rotr 7877 7,.rotr 7877 18,.bxor 8066 8067,.shr 7877 3,.bxor 8068 8069,.badd 8065 8070,.badd 8071 7864,.rotr 2700 6,.rotr 2700 11,.bxor 8073 8074,.rotr 2700 25,.bxor 8075 8076,.badd 2859 8077,.band 2700 2753,.bnot 2700,.band 8080 2806,.bxor 8079 8081,.badd 8078 8082,.literal (BitVec.ofNat 32 1116352408),.badd 8083 8084,.badd 8085 6206,.rotr 2488 2,.rotr 2488 13,.bxor 8087 8088,.rotr 2488 22,.bxor 8089 8090,.band 2488 2541,.band 2488 2594,.bxor 8092 8093,.band 2541 2594]
theorem partExact124 : partRows124=WordField.rows actualModulus 8032 partOps124 := by
  simp only [partRows124,partOps124,WordField.rows,rows8032,rows8033,rows8034,rows8035,rows8036,rows8037,rows8038,rows8039,rows8040,rows8041,rows8042,rows8043,rows8044,rows8045,rows8046,rows8047,rows8048,rows8049,rows8050,rows8051,rows8052,rows8053,rows8054,rows8055,rows8056,rows8057,rows8058,rows8059,rows8060,rows8061,rows8062,rows8063,rows8064,rows8065,rows8066,rows8067,rows8068,rows8069,rows8070,rows8071,rows8072,rows8073,rows8074,rows8075,rows8076,rows8077,rows8078,rows8079,rows8080,rows8081,rows8082,rows8083,rows8084,rows8085,rows8086,rows8087,rows8088,rows8089,rows8090,rows8091,rows8092,rows8093,rows8094,rows8095,List.append_assoc,List.append_nil]
theorem partLength124 : partOps124.length=64 := by decide
theorem partStats124 : partRows124.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows124=370344 := by
  simp only [partRows124,List.length_append,MatrixRowBlocks.rows_weight_append,stats8032.1,stats8032.2,stats8033.1,stats8033.2,stats8034.1,stats8034.2,stats8035.1,stats8035.2,stats8036.1,stats8036.2,stats8037.1,stats8037.2,stats8038.1,stats8038.2,stats8039.1,stats8039.2,stats8040.1,stats8040.2,stats8041.1,stats8041.2,stats8042.1,stats8042.2,stats8043.1,stats8043.2,stats8044.1,stats8044.2,stats8045.1,stats8045.2,stats8046.1,stats8046.2,stats8047.1,stats8047.2,stats8048.1,stats8048.2,stats8049.1,stats8049.2,stats8050.1,stats8050.2,stats8051.1,stats8051.2,stats8052.1,stats8052.2,stats8053.1,stats8053.2,stats8054.1,stats8054.2,stats8055.1,stats8055.2,stats8056.1,stats8056.2,stats8057.1,stats8057.2,stats8058.1,stats8058.2,stats8059.1,stats8059.2,stats8060.1,stats8060.2,stats8061.1,stats8061.2,stats8062.1,stats8062.2,stats8063.1,stats8063.2,stats8064.1,stats8064.2,stats8065.1,stats8065.2,stats8066.1,stats8066.2,stats8067.1,stats8067.2,stats8068.1,stats8068.2,stats8069.1,stats8069.2,stats8070.1,stats8070.2,stats8071.1,stats8071.2,stats8072.1,stats8072.2,stats8073.1,stats8073.2,stats8074.1,stats8074.2,stats8075.1,stats8075.2,stats8076.1,stats8076.2,stats8077.1,stats8077.2,stats8078.1,stats8078.2,stats8079.1,stats8079.2,stats8080.1,stats8080.2,stats8081.1,stats8081.2,stats8082.1,stats8082.2,stats8083.1,stats8083.2,stats8084.1,stats8084.2,stats8085.1,stats8085.2,stats8086.1,stats8086.2,stats8087.1,stats8087.2,stats8088.1,stats8088.2,stats8089.1,stats8089.2,stats8090.1,stats8090.2,stats8091.1,stats8091.2,stats8092.1,stats8092.2,stats8093.1,stats8093.2,stats8094.1,stats8094.2,stats8095.1,stats8095.2]
  decide
end QuotedPairedPathRoundCheckedRows
