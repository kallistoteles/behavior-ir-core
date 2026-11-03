import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData125
import FrameHashControllerInstructionMatrixData126
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8043 : actualRows8043=WordField.canonicalRows actualModulus 8043 (.bnot 8035) := by core033_kernel_decide
theorem stats8043 : actualRows8043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8043=6276 := by core033_kernel_decide
theorem rows8044 : actualRows8044=WordField.canonicalRows actualModulus 8044 (.band 8043 7981) := by core033_kernel_decide
theorem stats8044 : actualRows8044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8044=5124 := by core033_kernel_decide
theorem rows8045 : actualRows8045=WordField.canonicalRows actualModulus 8045 (.bxor 8042 8044) := by core033_kernel_decide
theorem stats8045 : actualRows8045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8045=7428 := by core033_kernel_decide
theorem rows8046 : actualRows8046=WordField.canonicalRows actualModulus 8046 (.badd 8041 8045) := by core033_kernel_decide
theorem stats8046 : actualRows8046.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8046=5388 := by core033_kernel_decide
theorem rows8047 : actualRows8047=WordField.canonicalRows actualModulus 8047 (.literal (BitVec.ofNat 32 1986661051)) := by core033_kernel_decide
theorem stats8047 : actualRows8047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8047=4044 := by core033_kernel_decide
theorem rows8048 : actualRows8048=WordField.canonicalRows actualModulus 8048 (.badd 8046 8047) := by core033_kernel_decide
theorem stats8048 : actualRows8048.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8048=5388 := by core033_kernel_decide
theorem rows8049 : actualRows8049=WordField.canonicalRows actualModulus 8049 (.badd 8048 6698) := by core033_kernel_decide
theorem stats8049 : actualRows8049.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8049=5388 := by core033_kernel_decide
theorem rows8050 : actualRows8050=WordField.canonicalRows actualModulus 8050 (.rotr 8034 2) := by core033_kernel_decide
theorem stats8050 : actualRows8050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8050=5124 := by core033_kernel_decide
theorem rows8051 : actualRows8051=WordField.canonicalRows actualModulus 8051 (.rotr 8034 13) := by core033_kernel_decide
theorem stats8051 : actualRows8051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8051=5124 := by core033_kernel_decide
theorem rows8052 : actualRows8052=WordField.canonicalRows actualModulus 8052 (.bxor 8050 8051) := by core033_kernel_decide
theorem stats8052 : actualRows8052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8052=7428 := by core033_kernel_decide
theorem rows8053 : actualRows8053=WordField.canonicalRows actualModulus 8053 (.rotr 8034 22) := by core033_kernel_decide
theorem stats8053 : actualRows8053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8053=5124 := by core033_kernel_decide
theorem rows8054 : actualRows8054=WordField.canonicalRows actualModulus 8054 (.bxor 8052 8053) := by core033_kernel_decide
theorem stats8054 : actualRows8054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8054=7428 := by core033_kernel_decide
theorem rows8055 : actualRows8055=WordField.canonicalRows actualModulus 8055 (.band 8034 8007) := by core033_kernel_decide
theorem stats8055 : actualRows8055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8055=5124 := by core033_kernel_decide
theorem rows8056 : actualRows8056=WordField.canonicalRows actualModulus 8056 (.band 8034 7980) := by core033_kernel_decide
theorem stats8056 : actualRows8056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8056=5124 := by core033_kernel_decide
theorem rows8057 : actualRows8057=WordField.canonicalRows actualModulus 8057 (.bxor 8055 8056) := by core033_kernel_decide
theorem stats8057 : actualRows8057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8057=7428 := by core033_kernel_decide
theorem rows8058 : actualRows8058=WordField.canonicalRows actualModulus 8058 (.band 8007 7980) := by core033_kernel_decide
theorem stats8058 : actualRows8058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8058=5124 := by core033_kernel_decide
theorem rows8059 : actualRows8059=WordField.canonicalRows actualModulus 8059 (.bxor 8057 8058) := by core033_kernel_decide
theorem stats8059 : actualRows8059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8059=7428 := by core033_kernel_decide
theorem rows8060 : actualRows8060=WordField.canonicalRows actualModulus 8060 (.badd 8054 8059) := by core033_kernel_decide
theorem stats8060 : actualRows8060.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8060=5388 := by core033_kernel_decide
theorem rows8061 : actualRows8061=WordField.canonicalRows actualModulus 8061 (.badd 8049 8060) := by core033_kernel_decide
theorem stats8061 : actualRows8061.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8061=5388 := by core033_kernel_decide
theorem rows8062 : actualRows8062=WordField.canonicalRows actualModulus 8062 (.badd 7953 8049) := by core033_kernel_decide
theorem stats8062 : actualRows8062.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8062=5388 := by core033_kernel_decide
theorem rows8063 : actualRows8063=WordField.canonicalRows actualModulus 8063 (.rotr 8062 6) := by core033_kernel_decide
theorem stats8063 : actualRows8063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8063=5124 := by core033_kernel_decide
theorem rows8064 : actualRows8064=WordField.canonicalRows actualModulus 8064 (.rotr 8062 11) := by core033_kernel_decide
theorem stats8064 : actualRows8064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8064=5124 := by core033_kernel_decide
theorem rows8065 : actualRows8065=WordField.canonicalRows actualModulus 8065 (.bxor 8063 8064) := by core033_kernel_decide
theorem stats8065 : actualRows8065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8065=7428 := by core033_kernel_decide
theorem rows8066 : actualRows8066=WordField.canonicalRows actualModulus 8066 (.rotr 8062 25) := by core033_kernel_decide
theorem stats8066 : actualRows8066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8066=5124 := by core033_kernel_decide
theorem rows8067 : actualRows8067=WordField.canonicalRows actualModulus 8067 (.bxor 8065 8066) := by core033_kernel_decide
theorem stats8067 : actualRows8067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8067=7428 := by core033_kernel_decide
theorem rows8068 : actualRows8068=WordField.canonicalRows actualModulus 8068 (.badd 7981 8067) := by core033_kernel_decide
theorem stats8068 : actualRows8068.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8068=5388 := by core033_kernel_decide
theorem rows8069 : actualRows8069=WordField.canonicalRows actualModulus 8069 (.band 8062 8035) := by core033_kernel_decide
theorem stats8069 : actualRows8069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8069=5124 := by core033_kernel_decide
theorem rows8070 : actualRows8070=WordField.canonicalRows actualModulus 8070 (.bnot 8062) := by core033_kernel_decide
theorem stats8070 : actualRows8070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8070=6276 := by core033_kernel_decide
theorem rows8071 : actualRows8071=WordField.canonicalRows actualModulus 8071 (.band 8070 8008) := by core033_kernel_decide
theorem stats8071 : actualRows8071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8071=5124 := by core033_kernel_decide
theorem rows8072 : actualRows8072=WordField.canonicalRows actualModulus 8072 (.bxor 8069 8071) := by core033_kernel_decide
theorem stats8072 : actualRows8072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8072=7428 := by core033_kernel_decide
theorem rows8073 : actualRows8073=WordField.canonicalRows actualModulus 8073 (.badd 8068 8072) := by core033_kernel_decide
theorem stats8073 : actualRows8073.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8073=5388 := by core033_kernel_decide
theorem rows8074 : actualRows8074=WordField.canonicalRows actualModulus 8074 (.literal (BitVec.ofNat 32 2177026350)) := by core033_kernel_decide
theorem stats8074 : actualRows8074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8074=3756 := by core033_kernel_decide
theorem rows8075 : actualRows8075=WordField.canonicalRows actualModulus 8075 (.badd 8073 8074) := by core033_kernel_decide
theorem stats8075 : actualRows8075.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8075=5388 := by core033_kernel_decide
theorem rows8076 : actualRows8076=WordField.canonicalRows actualModulus 8076 (.badd 8075 6711) := by core033_kernel_decide
theorem stats8076 : actualRows8076.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8076=5388 := by core033_kernel_decide
theorem rows8077 : actualRows8077=WordField.canonicalRows actualModulus 8077 (.rotr 8061 2) := by core033_kernel_decide
theorem stats8077 : actualRows8077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8077=5124 := by core033_kernel_decide
theorem rows8078 : actualRows8078=WordField.canonicalRows actualModulus 8078 (.rotr 8061 13) := by core033_kernel_decide
theorem stats8078 : actualRows8078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8078=5124 := by core033_kernel_decide
theorem rows8079 : actualRows8079=WordField.canonicalRows actualModulus 8079 (.bxor 8077 8078) := by core033_kernel_decide
theorem stats8079 : actualRows8079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8079=7428 := by core033_kernel_decide
theorem rows8080 : actualRows8080=WordField.canonicalRows actualModulus 8080 (.rotr 8061 22) := by core033_kernel_decide
theorem stats8080 : actualRows8080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8080=5124 := by core033_kernel_decide
theorem rows8081 : actualRows8081=WordField.canonicalRows actualModulus 8081 (.bxor 8079 8080) := by core033_kernel_decide
theorem stats8081 : actualRows8081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8081=7428 := by core033_kernel_decide
theorem rows8082 : actualRows8082=WordField.canonicalRows actualModulus 8082 (.band 8061 8034) := by core033_kernel_decide
theorem stats8082 : actualRows8082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8082=5124 := by core033_kernel_decide
theorem rows8083 : actualRows8083=WordField.canonicalRows actualModulus 8083 (.band 8061 8007) := by core033_kernel_decide
theorem stats8083 : actualRows8083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8083=5124 := by core033_kernel_decide
theorem rows8084 : actualRows8084=WordField.canonicalRows actualModulus 8084 (.bxor 8082 8083) := by core033_kernel_decide
theorem stats8084 : actualRows8084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8084=7428 := by core033_kernel_decide
theorem rows8085 : actualRows8085=WordField.canonicalRows actualModulus 8085 (.band 8034 8007) := by core033_kernel_decide
theorem stats8085 : actualRows8085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8085=5124 := by core033_kernel_decide
theorem rows8086 : actualRows8086=WordField.canonicalRows actualModulus 8086 (.bxor 8084 8085) := by core033_kernel_decide
theorem stats8086 : actualRows8086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8086=7428 := by core033_kernel_decide
theorem rows8087 : actualRows8087=WordField.canonicalRows actualModulus 8087 (.badd 8081 8086) := by core033_kernel_decide
theorem stats8087 : actualRows8087.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8087=5388 := by core033_kernel_decide
theorem rows8088 : actualRows8088=WordField.canonicalRows actualModulus 8088 (.badd 8076 8087) := by core033_kernel_decide
theorem stats8088 : actualRows8088.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8088=5388 := by core033_kernel_decide
theorem rows8089 : actualRows8089=WordField.canonicalRows actualModulus 8089 (.badd 7980 8076) := by core033_kernel_decide
theorem stats8089 : actualRows8089.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8089=5388 := by core033_kernel_decide
theorem rows8090 : actualRows8090=WordField.canonicalRows actualModulus 8090 (.rotr 8089 6) := by core033_kernel_decide
theorem stats8090 : actualRows8090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8090=5124 := by core033_kernel_decide
theorem rows8091 : actualRows8091=WordField.canonicalRows actualModulus 8091 (.rotr 8089 11) := by core033_kernel_decide
theorem stats8091 : actualRows8091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8091=5124 := by core033_kernel_decide
theorem rows8092 : actualRows8092=WordField.canonicalRows actualModulus 8092 (.bxor 8090 8091) := by core033_kernel_decide
theorem stats8092 : actualRows8092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8092=7428 := by core033_kernel_decide
theorem rows8093 : actualRows8093=WordField.canonicalRows actualModulus 8093 (.rotr 8089 25) := by core033_kernel_decide
theorem stats8093 : actualRows8093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8093=5124 := by core033_kernel_decide
theorem rows8094 : actualRows8094=WordField.canonicalRows actualModulus 8094 (.bxor 8092 8093) := by core033_kernel_decide
theorem stats8094 : actualRows8094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8094=7428 := by core033_kernel_decide
theorem rows8095 : actualRows8095=WordField.canonicalRows actualModulus 8095 (.badd 8008 8094) := by core033_kernel_decide
theorem stats8095 : actualRows8095.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8095=5388 := by core033_kernel_decide
theorem rows8096 : actualRows8096=WordField.canonicalRows actualModulus 8096 (.band 8089 8062) := by core033_kernel_decide
theorem stats8096 : actualRows8096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8096=5124 := by core033_kernel_decide
theorem rows8097 : actualRows8097=WordField.canonicalRows actualModulus 8097 (.bnot 8089) := by core033_kernel_decide
theorem stats8097 : actualRows8097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8097=6276 := by core033_kernel_decide
theorem rows8098 : actualRows8098=WordField.canonicalRows actualModulus 8098 (.band 8097 8035) := by core033_kernel_decide
theorem stats8098 : actualRows8098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8098=5124 := by core033_kernel_decide
theorem rows8099 : actualRows8099=WordField.canonicalRows actualModulus 8099 (.bxor 8096 8098) := by core033_kernel_decide
theorem stats8099 : actualRows8099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8099=7428 := by core033_kernel_decide
theorem rows8100 : actualRows8100=WordField.canonicalRows actualModulus 8100 (.badd 8095 8099) := by core033_kernel_decide
theorem stats8100 : actualRows8100.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8100=5388 := by core033_kernel_decide
theorem rows8101 : actualRows8101=WordField.canonicalRows actualModulus 8101 (.literal (BitVec.ofNat 32 2456956037)) := by core033_kernel_decide
theorem stats8101 : actualRows8101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8101=3756 := by core033_kernel_decide
theorem rows8102 : actualRows8102=WordField.canonicalRows actualModulus 8102 (.badd 8100 8101) := by core033_kernel_decide
theorem stats8102 : actualRows8102.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8102=5388 := by core033_kernel_decide
theorem rows8103 : actualRows8103=WordField.canonicalRows actualModulus 8103 (.badd 8102 6724) := by core033_kernel_decide
theorem stats8103 : actualRows8103.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8103=5388 := by core033_kernel_decide
theorem rows8104 : actualRows8104=WordField.canonicalRows actualModulus 8104 (.rotr 8088 2) := by core033_kernel_decide
theorem stats8104 : actualRows8104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8104=5124 := by core033_kernel_decide
theorem rows8105 : actualRows8105=WordField.canonicalRows actualModulus 8105 (.rotr 8088 13) := by core033_kernel_decide
theorem stats8105 : actualRows8105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8105=5124 := by core033_kernel_decide
theorem rows8106 : actualRows8106=WordField.canonicalRows actualModulus 8106 (.bxor 8104 8105) := by core033_kernel_decide
theorem stats8106 : actualRows8106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8106=7428 := by core033_kernel_decide
def partRows125 : List R1CS.Row := actualRows8043++actualRows8044++actualRows8045++actualRows8046++actualRows8047++actualRows8048++actualRows8049++actualRows8050++actualRows8051++actualRows8052++actualRows8053++actualRows8054++actualRows8055++actualRows8056++actualRows8057++actualRows8058++actualRows8059++actualRows8060++actualRows8061++actualRows8062++actualRows8063++actualRows8064++actualRows8065++actualRows8066++actualRows8067++actualRows8068++actualRows8069++actualRows8070++actualRows8071++actualRows8072++actualRows8073++actualRows8074++actualRows8075++actualRows8076++actualRows8077++actualRows8078++actualRows8079++actualRows8080++actualRows8081++actualRows8082++actualRows8083++actualRows8084++actualRows8085++actualRows8086++actualRows8087++actualRows8088++actualRows8089++actualRows8090++actualRows8091++actualRows8092++actualRows8093++actualRows8094++actualRows8095++actualRows8096++actualRows8097++actualRows8098++actualRows8099++actualRows8100++actualRows8101++actualRows8102++actualRows8103++actualRows8104++actualRows8105++actualRows8106
def partOps125 : List WordIR.Op := [.bnot 8035,.band 8043 7981,.bxor 8042 8044,.badd 8041 8045,.literal (BitVec.ofNat 32 1986661051),.badd 8046 8047,.badd 8048 6698,.rotr 8034 2,.rotr 8034 13,.bxor 8050 8051,.rotr 8034 22,.bxor 8052 8053,.band 8034 8007,.band 8034 7980,.bxor 8055 8056,.band 8007 7980,.bxor 8057 8058,.badd 8054 8059,.badd 8049 8060,.badd 7953 8049,.rotr 8062 6,.rotr 8062 11,.bxor 8063 8064,.rotr 8062 25,.bxor 8065 8066,.badd 7981 8067,.band 8062 8035,.bnot 8062,.band 8070 8008,.bxor 8069 8071,.badd 8068 8072,.literal (BitVec.ofNat 32 2177026350),.badd 8073 8074,.badd 8075 6711,.rotr 8061 2,.rotr 8061 13,.bxor 8077 8078,.rotr 8061 22,.bxor 8079 8080,.band 8061 8034,.band 8061 8007,.bxor 8082 8083,.band 8034 8007,.bxor 8084 8085,.badd 8081 8086,.badd 8076 8087,.badd 7980 8076,.rotr 8089 6,.rotr 8089 11,.bxor 8090 8091,.rotr 8089 25,.bxor 8092 8093,.badd 8008 8094,.band 8089 8062,.bnot 8089,.band 8097 8035,.bxor 8096 8098,.badd 8095 8099,.literal (BitVec.ofNat 32 2456956037),.badd 8100 8101,.badd 8102 6724,.rotr 8088 2,.rotr 8088 13,.bxor 8104 8105]
theorem partExact125 : partRows125=WordField.rows actualModulus 8043 partOps125 := by
  simp only [partRows125,partOps125,WordField.rows,rows8043,rows8044,rows8045,rows8046,rows8047,rows8048,rows8049,rows8050,rows8051,rows8052,rows8053,rows8054,rows8055,rows8056,rows8057,rows8058,rows8059,rows8060,rows8061,rows8062,rows8063,rows8064,rows8065,rows8066,rows8067,rows8068,rows8069,rows8070,rows8071,rows8072,rows8073,rows8074,rows8075,rows8076,rows8077,rows8078,rows8079,rows8080,rows8081,rows8082,rows8083,rows8084,rows8085,rows8086,rows8087,rows8088,rows8089,rows8090,rows8091,rows8092,rows8093,rows8094,rows8095,rows8096,rows8097,rows8098,rows8099,rows8100,rows8101,rows8102,rows8103,rows8104,rows8105,rows8106,List.append_assoc,List.append_nil]
theorem partLength125 : partOps125.length=64 := by decide
theorem partStats125 : partRows125.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows125=368928 := by
  simp only [partRows125,List.length_append,MatrixRowBlocks.rows_weight_append,stats8043.1,stats8043.2,stats8044.1,stats8044.2,stats8045.1,stats8045.2,stats8046.1,stats8046.2,stats8047.1,stats8047.2,stats8048.1,stats8048.2,stats8049.1,stats8049.2,stats8050.1,stats8050.2,stats8051.1,stats8051.2,stats8052.1,stats8052.2,stats8053.1,stats8053.2,stats8054.1,stats8054.2,stats8055.1,stats8055.2,stats8056.1,stats8056.2,stats8057.1,stats8057.2,stats8058.1,stats8058.2,stats8059.1,stats8059.2,stats8060.1,stats8060.2,stats8061.1,stats8061.2,stats8062.1,stats8062.2,stats8063.1,stats8063.2,stats8064.1,stats8064.2,stats8065.1,stats8065.2,stats8066.1,stats8066.2,stats8067.1,stats8067.2,stats8068.1,stats8068.2,stats8069.1,stats8069.2,stats8070.1,stats8070.2,stats8071.1,stats8071.2,stats8072.1,stats8072.2,stats8073.1,stats8073.2,stats8074.1,stats8074.2,stats8075.1,stats8075.2,stats8076.1,stats8076.2,stats8077.1,stats8077.2,stats8078.1,stats8078.2,stats8079.1,stats8079.2,stats8080.1,stats8080.2,stats8081.1,stats8081.2,stats8082.1,stats8082.2,stats8083.1,stats8083.2,stats8084.1,stats8084.2,stats8085.1,stats8085.2,stats8086.1,stats8086.2,stats8087.1,stats8087.2,stats8088.1,stats8088.2,stats8089.1,stats8089.2,stats8090.1,stats8090.2,stats8091.1,stats8091.2,stats8092.1,stats8092.2,stats8093.1,stats8093.2,stats8094.1,stats8094.2,stats8095.1,stats8095.2,stats8096.1,stats8096.2,stats8097.1,stats8097.2,stats8098.1,stats8098.2,stats8099.1,stats8099.2,stats8100.1,stats8100.2,stats8101.1,stats8101.2,stats8102.1,stats8102.2,stats8103.1,stats8103.2,stats8104.1,stats8104.2,stats8105.1,stats8105.2,stats8106.1,stats8106.2]
  decide
end FrameHashControllerCheckedRows
