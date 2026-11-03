import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData156
import AuthenticatedBranchRoundInstructionMatrixData157
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10038 : actualRows10038=WordField.canonicalRows actualModulus 10038 (.badd 10037 8547) := by core033_kernel_decide
theorem stats10038 : actualRows10038.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10038=5388 := by core033_kernel_decide
theorem rows10039 : actualRows10039=WordField.canonicalRows actualModulus 10039 (.rotr 10023 2) := by core033_kernel_decide
theorem stats10039 : actualRows10039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10039=5124 := by core033_kernel_decide
theorem rows10040 : actualRows10040=WordField.canonicalRows actualModulus 10040 (.rotr 10023 13) := by core033_kernel_decide
theorem stats10040 : actualRows10040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10040=5124 := by core033_kernel_decide
theorem rows10041 : actualRows10041=WordField.canonicalRows actualModulus 10041 (.bxor 10039 10040) := by core033_kernel_decide
theorem stats10041 : actualRows10041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10041=7428 := by core033_kernel_decide
theorem rows10042 : actualRows10042=WordField.canonicalRows actualModulus 10042 (.rotr 10023 22) := by core033_kernel_decide
theorem stats10042 : actualRows10042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10042=5124 := by core033_kernel_decide
theorem rows10043 : actualRows10043=WordField.canonicalRows actualModulus 10043 (.bxor 10041 10042) := by core033_kernel_decide
theorem stats10043 : actualRows10043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10043=7428 := by core033_kernel_decide
theorem rows10044 : actualRows10044=WordField.canonicalRows actualModulus 10044 (.band 10023 9996) := by core033_kernel_decide
theorem stats10044 : actualRows10044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10044=5124 := by core033_kernel_decide
theorem rows10045 : actualRows10045=WordField.canonicalRows actualModulus 10045 (.band 10023 9969) := by core033_kernel_decide
theorem stats10045 : actualRows10045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10045=5124 := by core033_kernel_decide
theorem rows10046 : actualRows10046=WordField.canonicalRows actualModulus 10046 (.bxor 10044 10045) := by core033_kernel_decide
theorem stats10046 : actualRows10046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10046=7428 := by core033_kernel_decide
theorem rows10047 : actualRows10047=WordField.canonicalRows actualModulus 10047 (.band 9996 9969) := by core033_kernel_decide
theorem stats10047 : actualRows10047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10047=5124 := by core033_kernel_decide
theorem rows10048 : actualRows10048=WordField.canonicalRows actualModulus 10048 (.bxor 10046 10047) := by core033_kernel_decide
theorem stats10048 : actualRows10048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10048=7428 := by core033_kernel_decide
theorem rows10049 : actualRows10049=WordField.canonicalRows actualModulus 10049 (.badd 10043 10048) := by core033_kernel_decide
theorem stats10049 : actualRows10049.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10049=5388 := by core033_kernel_decide
theorem rows10050 : actualRows10050=WordField.canonicalRows actualModulus 10050 (.badd 10038 10049) := by core033_kernel_decide
theorem stats10050 : actualRows10050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10050=5388 := by core033_kernel_decide
theorem rows10051 : actualRows10051=WordField.canonicalRows actualModulus 10051 (.badd 9942 10038) := by core033_kernel_decide
theorem stats10051 : actualRows10051.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10051=5388 := by core033_kernel_decide
theorem rows10052 : actualRows10052=WordField.canonicalRows actualModulus 10052 (.rotr 10051 6) := by core033_kernel_decide
theorem stats10052 : actualRows10052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10052=5124 := by core033_kernel_decide
theorem rows10053 : actualRows10053=WordField.canonicalRows actualModulus 10053 (.rotr 10051 11) := by core033_kernel_decide
theorem stats10053 : actualRows10053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10053=5124 := by core033_kernel_decide
theorem rows10054 : actualRows10054=WordField.canonicalRows actualModulus 10054 (.bxor 10052 10053) := by core033_kernel_decide
theorem stats10054 : actualRows10054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10054=7428 := by core033_kernel_decide
theorem rows10055 : actualRows10055=WordField.canonicalRows actualModulus 10055 (.rotr 10051 25) := by core033_kernel_decide
theorem stats10055 : actualRows10055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10055=5124 := by core033_kernel_decide
theorem rows10056 : actualRows10056=WordField.canonicalRows actualModulus 10056 (.bxor 10054 10055) := by core033_kernel_decide
theorem stats10056 : actualRows10056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10056=7428 := by core033_kernel_decide
theorem rows10057 : actualRows10057=WordField.canonicalRows actualModulus 10057 (.badd 9970 10056) := by core033_kernel_decide
theorem stats10057 : actualRows10057.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10057=5388 := by core033_kernel_decide
theorem rows10058 : actualRows10058=WordField.canonicalRows actualModulus 10058 (.band 10051 10024) := by core033_kernel_decide
theorem stats10058 : actualRows10058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10058=5124 := by core033_kernel_decide
theorem rows10059 : actualRows10059=WordField.canonicalRows actualModulus 10059 (.bnot 10051) := by core033_kernel_decide
theorem stats10059 : actualRows10059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10059=6276 := by core033_kernel_decide
theorem rows10060 : actualRows10060=WordField.canonicalRows actualModulus 10060 (.band 10059 9997) := by core033_kernel_decide
theorem stats10060 : actualRows10060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10060=5124 := by core033_kernel_decide
theorem rows10061 : actualRows10061=WordField.canonicalRows actualModulus 10061 (.bxor 10058 10060) := by core033_kernel_decide
theorem stats10061 : actualRows10061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10061=7428 := by core033_kernel_decide
theorem rows10062 : actualRows10062=WordField.canonicalRows actualModulus 10062 (.badd 10057 10061) := by core033_kernel_decide
theorem stats10062 : actualRows10062.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10062=5388 := by core033_kernel_decide
theorem rows10063 : actualRows10063=WordField.canonicalRows actualModulus 10063 (.literal (BitVec.ofNat 32 430227734)) := by core033_kernel_decide
theorem stats10063 : actualRows10063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10063=3684 := by core033_kernel_decide
theorem rows10064 : actualRows10064=WordField.canonicalRows actualModulus 10064 (.badd 10062 10063) := by core033_kernel_decide
theorem stats10064 : actualRows10064.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10064=5388 := by core033_kernel_decide
theorem rows10065 : actualRows10065=WordField.canonicalRows actualModulus 10065 (.badd 10064 8560) := by core033_kernel_decide
theorem stats10065 : actualRows10065.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10065=5388 := by core033_kernel_decide
theorem rows10066 : actualRows10066=WordField.canonicalRows actualModulus 10066 (.rotr 10050 2) := by core033_kernel_decide
theorem stats10066 : actualRows10066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10066=5124 := by core033_kernel_decide
theorem rows10067 : actualRows10067=WordField.canonicalRows actualModulus 10067 (.rotr 10050 13) := by core033_kernel_decide
theorem stats10067 : actualRows10067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10067=5124 := by core033_kernel_decide
theorem rows10068 : actualRows10068=WordField.canonicalRows actualModulus 10068 (.bxor 10066 10067) := by core033_kernel_decide
theorem stats10068 : actualRows10068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10068=7428 := by core033_kernel_decide
theorem rows10069 : actualRows10069=WordField.canonicalRows actualModulus 10069 (.rotr 10050 22) := by core033_kernel_decide
theorem stats10069 : actualRows10069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10069=5124 := by core033_kernel_decide
theorem rows10070 : actualRows10070=WordField.canonicalRows actualModulus 10070 (.bxor 10068 10069) := by core033_kernel_decide
theorem stats10070 : actualRows10070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10070=7428 := by core033_kernel_decide
theorem rows10071 : actualRows10071=WordField.canonicalRows actualModulus 10071 (.band 10050 10023) := by core033_kernel_decide
theorem stats10071 : actualRows10071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10071=5124 := by core033_kernel_decide
theorem rows10072 : actualRows10072=WordField.canonicalRows actualModulus 10072 (.band 10050 9996) := by core033_kernel_decide
theorem stats10072 : actualRows10072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10072=5124 := by core033_kernel_decide
theorem rows10073 : actualRows10073=WordField.canonicalRows actualModulus 10073 (.bxor 10071 10072) := by core033_kernel_decide
theorem stats10073 : actualRows10073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10073=7428 := by core033_kernel_decide
theorem rows10074 : actualRows10074=WordField.canonicalRows actualModulus 10074 (.band 10023 9996) := by core033_kernel_decide
theorem stats10074 : actualRows10074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10074=5124 := by core033_kernel_decide
theorem rows10075 : actualRows10075=WordField.canonicalRows actualModulus 10075 (.bxor 10073 10074) := by core033_kernel_decide
theorem stats10075 : actualRows10075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10075=7428 := by core033_kernel_decide
theorem rows10076 : actualRows10076=WordField.canonicalRows actualModulus 10076 (.badd 10070 10075) := by core033_kernel_decide
theorem stats10076 : actualRows10076.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10076=5388 := by core033_kernel_decide
theorem rows10077 : actualRows10077=WordField.canonicalRows actualModulus 10077 (.badd 10065 10076) := by core033_kernel_decide
theorem stats10077 : actualRows10077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10077=5388 := by core033_kernel_decide
theorem rows10078 : actualRows10078=WordField.canonicalRows actualModulus 10078 (.badd 9969 10065) := by core033_kernel_decide
theorem stats10078 : actualRows10078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10078=5388 := by core033_kernel_decide
theorem rows10079 : actualRows10079=WordField.canonicalRows actualModulus 10079 (.rotr 10078 6) := by core033_kernel_decide
theorem stats10079 : actualRows10079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10079=5124 := by core033_kernel_decide
theorem rows10080 : actualRows10080=WordField.canonicalRows actualModulus 10080 (.rotr 10078 11) := by core033_kernel_decide
theorem stats10080 : actualRows10080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10080=5124 := by core033_kernel_decide
theorem rows10081 : actualRows10081=WordField.canonicalRows actualModulus 10081 (.bxor 10079 10080) := by core033_kernel_decide
theorem stats10081 : actualRows10081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10081=7428 := by core033_kernel_decide
theorem rows10082 : actualRows10082=WordField.canonicalRows actualModulus 10082 (.rotr 10078 25) := by core033_kernel_decide
theorem stats10082 : actualRows10082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10082=5124 := by core033_kernel_decide
theorem rows10083 : actualRows10083=WordField.canonicalRows actualModulus 10083 (.bxor 10081 10082) := by core033_kernel_decide
theorem stats10083 : actualRows10083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10083=7428 := by core033_kernel_decide
theorem rows10084 : actualRows10084=WordField.canonicalRows actualModulus 10084 (.badd 9997 10083) := by core033_kernel_decide
theorem stats10084 : actualRows10084.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10084=5388 := by core033_kernel_decide
theorem rows10085 : actualRows10085=WordField.canonicalRows actualModulus 10085 (.band 10078 10051) := by core033_kernel_decide
theorem stats10085 : actualRows10085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10085=5124 := by core033_kernel_decide
theorem rows10086 : actualRows10086=WordField.canonicalRows actualModulus 10086 (.bnot 10078) := by core033_kernel_decide
theorem stats10086 : actualRows10086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10086=6276 := by core033_kernel_decide
theorem rows10087 : actualRows10087=WordField.canonicalRows actualModulus 10087 (.band 10086 10024) := by core033_kernel_decide
theorem stats10087 : actualRows10087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10087=5124 := by core033_kernel_decide
theorem rows10088 : actualRows10088=WordField.canonicalRows actualModulus 10088 (.bxor 10085 10087) := by core033_kernel_decide
theorem stats10088 : actualRows10088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10088=7428 := by core033_kernel_decide
theorem rows10089 : actualRows10089=WordField.canonicalRows actualModulus 10089 (.badd 10084 10088) := by core033_kernel_decide
theorem stats10089 : actualRows10089.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10089=5388 := by core033_kernel_decide
theorem rows10090 : actualRows10090=WordField.canonicalRows actualModulus 10090 (.literal (BitVec.ofNat 32 506948616)) := by core033_kernel_decide
theorem stats10090 : actualRows10090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10090=3828 := by core033_kernel_decide
theorem rows10091 : actualRows10091=WordField.canonicalRows actualModulus 10091 (.badd 10089 10090) := by core033_kernel_decide
theorem stats10091 : actualRows10091.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10091=5388 := by core033_kernel_decide
theorem rows10092 : actualRows10092=WordField.canonicalRows actualModulus 10092 (.badd 10091 8573) := by core033_kernel_decide
theorem stats10092 : actualRows10092.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10092=5388 := by core033_kernel_decide
theorem rows10093 : actualRows10093=WordField.canonicalRows actualModulus 10093 (.rotr 10077 2) := by core033_kernel_decide
theorem stats10093 : actualRows10093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10093=5124 := by core033_kernel_decide
theorem rows10094 : actualRows10094=WordField.canonicalRows actualModulus 10094 (.rotr 10077 13) := by core033_kernel_decide
theorem stats10094 : actualRows10094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10094=5124 := by core033_kernel_decide
theorem rows10095 : actualRows10095=WordField.canonicalRows actualModulus 10095 (.bxor 10093 10094) := by core033_kernel_decide
theorem stats10095 : actualRows10095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10095=7428 := by core033_kernel_decide
theorem rows10096 : actualRows10096=WordField.canonicalRows actualModulus 10096 (.rotr 10077 22) := by core033_kernel_decide
theorem stats10096 : actualRows10096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10096=5124 := by core033_kernel_decide
theorem rows10097 : actualRows10097=WordField.canonicalRows actualModulus 10097 (.bxor 10095 10096) := by core033_kernel_decide
theorem stats10097 : actualRows10097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10097=7428 := by core033_kernel_decide
theorem rows10098 : actualRows10098=WordField.canonicalRows actualModulus 10098 (.band 10077 10050) := by core033_kernel_decide
theorem stats10098 : actualRows10098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10098=5124 := by core033_kernel_decide
theorem rows10099 : actualRows10099=WordField.canonicalRows actualModulus 10099 (.band 10077 10023) := by core033_kernel_decide
theorem stats10099 : actualRows10099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10099=5124 := by core033_kernel_decide
theorem rows10100 : actualRows10100=WordField.canonicalRows actualModulus 10100 (.bxor 10098 10099) := by core033_kernel_decide
theorem stats10100 : actualRows10100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10100=7428 := by core033_kernel_decide
theorem rows10101 : actualRows10101=WordField.canonicalRows actualModulus 10101 (.band 10050 10023) := by core033_kernel_decide
theorem stats10101 : actualRows10101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10101=5124 := by core033_kernel_decide
def partRows155 : List R1CS.Row := actualRows10038++actualRows10039++actualRows10040++actualRows10041++actualRows10042++actualRows10043++actualRows10044++actualRows10045++actualRows10046++actualRows10047++actualRows10048++actualRows10049++actualRows10050++actualRows10051++actualRows10052++actualRows10053++actualRows10054++actualRows10055++actualRows10056++actualRows10057++actualRows10058++actualRows10059++actualRows10060++actualRows10061++actualRows10062++actualRows10063++actualRows10064++actualRows10065++actualRows10066++actualRows10067++actualRows10068++actualRows10069++actualRows10070++actualRows10071++actualRows10072++actualRows10073++actualRows10074++actualRows10075++actualRows10076++actualRows10077++actualRows10078++actualRows10079++actualRows10080++actualRows10081++actualRows10082++actualRows10083++actualRows10084++actualRows10085++actualRows10086++actualRows10087++actualRows10088++actualRows10089++actualRows10090++actualRows10091++actualRows10092++actualRows10093++actualRows10094++actualRows10095++actualRows10096++actualRows10097++actualRows10098++actualRows10099++actualRows10100++actualRows10101
def partOps155 : List WordIR.Op := [.badd 10037 8547,.rotr 10023 2,.rotr 10023 13,.bxor 10039 10040,.rotr 10023 22,.bxor 10041 10042,.band 10023 9996,.band 10023 9969,.bxor 10044 10045,.band 9996 9969,.bxor 10046 10047,.badd 10043 10048,.badd 10038 10049,.badd 9942 10038,.rotr 10051 6,.rotr 10051 11,.bxor 10052 10053,.rotr 10051 25,.bxor 10054 10055,.badd 9970 10056,.band 10051 10024,.bnot 10051,.band 10059 9997,.bxor 10058 10060,.badd 10057 10061,.literal (BitVec.ofNat 32 430227734),.badd 10062 10063,.badd 10064 8560,.rotr 10050 2,.rotr 10050 13,.bxor 10066 10067,.rotr 10050 22,.bxor 10068 10069,.band 10050 10023,.band 10050 9996,.bxor 10071 10072,.band 10023 9996,.bxor 10073 10074,.badd 10070 10075,.badd 10065 10076,.badd 9969 10065,.rotr 10078 6,.rotr 10078 11,.bxor 10079 10080,.rotr 10078 25,.bxor 10081 10082,.badd 9997 10083,.band 10078 10051,.bnot 10078,.band 10086 10024,.bxor 10085 10087,.badd 10084 10088,.literal (BitVec.ofNat 32 506948616),.badd 10089 10090,.badd 10091 8573,.rotr 10077 2,.rotr 10077 13,.bxor 10093 10094,.rotr 10077 22,.bxor 10095 10096,.band 10077 10050,.band 10077 10023,.bxor 10098 10099,.band 10050 10023]
theorem partExact155 : partRows155=WordField.rows actualModulus 10038 partOps155 := by
  simp only [partRows155,partOps155,WordField.rows,rows10038,rows10039,rows10040,rows10041,rows10042,rows10043,rows10044,rows10045,rows10046,rows10047,rows10048,rows10049,rows10050,rows10051,rows10052,rows10053,rows10054,rows10055,rows10056,rows10057,rows10058,rows10059,rows10060,rows10061,rows10062,rows10063,rows10064,rows10065,rows10066,rows10067,rows10068,rows10069,rows10070,rows10071,rows10072,rows10073,rows10074,rows10075,rows10076,rows10077,rows10078,rows10079,rows10080,rows10081,rows10082,rows10083,rows10084,rows10085,rows10086,rows10087,rows10088,rows10089,rows10090,rows10091,rows10092,rows10093,rows10094,rows10095,rows10096,rows10097,rows10098,rows10099,rows10100,rows10101,List.append_assoc,List.append_nil]
theorem partLength155 : partOps155.length=64 := by decide
theorem partStats155 : partRows155.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows155=370632 := by
  simp only [partRows155,List.length_append,MatrixRowBlocks.rows_weight_append,stats10038.1,stats10038.2,stats10039.1,stats10039.2,stats10040.1,stats10040.2,stats10041.1,stats10041.2,stats10042.1,stats10042.2,stats10043.1,stats10043.2,stats10044.1,stats10044.2,stats10045.1,stats10045.2,stats10046.1,stats10046.2,stats10047.1,stats10047.2,stats10048.1,stats10048.2,stats10049.1,stats10049.2,stats10050.1,stats10050.2,stats10051.1,stats10051.2,stats10052.1,stats10052.2,stats10053.1,stats10053.2,stats10054.1,stats10054.2,stats10055.1,stats10055.2,stats10056.1,stats10056.2,stats10057.1,stats10057.2,stats10058.1,stats10058.2,stats10059.1,stats10059.2,stats10060.1,stats10060.2,stats10061.1,stats10061.2,stats10062.1,stats10062.2,stats10063.1,stats10063.2,stats10064.1,stats10064.2,stats10065.1,stats10065.2,stats10066.1,stats10066.2,stats10067.1,stats10067.2,stats10068.1,stats10068.2,stats10069.1,stats10069.2,stats10070.1,stats10070.2,stats10071.1,stats10071.2,stats10072.1,stats10072.2,stats10073.1,stats10073.2,stats10074.1,stats10074.2,stats10075.1,stats10075.2,stats10076.1,stats10076.2,stats10077.1,stats10077.2,stats10078.1,stats10078.2,stats10079.1,stats10079.2,stats10080.1,stats10080.2,stats10081.1,stats10081.2,stats10082.1,stats10082.2,stats10083.1,stats10083.2,stats10084.1,stats10084.2,stats10085.1,stats10085.2,stats10086.1,stats10086.2,stats10087.1,stats10087.2,stats10088.1,stats10088.2,stats10089.1,stats10089.2,stats10090.1,stats10090.2,stats10091.1,stats10091.2,stats10092.1,stats10092.2,stats10093.1,stats10093.2,stats10094.1,stats10094.2,stats10095.1,stats10095.2,stats10096.1,stats10096.2,stats10097.1,stats10097.2,stats10098.1,stats10098.2,stats10099.1,stats10099.2,stats10100.1,stats10100.2,stats10101.1,stats10101.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
