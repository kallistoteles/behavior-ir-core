import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData156
import PathRoundDispatchInstructionMatrixData157
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10027 : actualRows10027=WordField.canonicalRows actualModulus 10027 (.bxor 10022 10026) := by core033_kernel_decide
theorem stats10027 : actualRows10027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10027=7428 := by core033_kernel_decide
theorem rows10028 : actualRows10028=WordField.canonicalRows actualModulus 10028 (.shr 10027 31) := by core033_kernel_decide
theorem stats10028 : actualRows10028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10028=2892 := by core033_kernel_decide
theorem rows10029 : actualRows10029=WordField.canonicalRows actualModulus 10029 (.badd 10021 10028) := by core033_kernel_decide
theorem stats10029 : actualRows10029.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10029=5388 := by core033_kernel_decide
theorem rows10030 : actualRows10030=WordField.canonicalRows actualModulus 10030 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10030 : actualRows10030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10030=2820 := by core033_kernel_decide
theorem rows10031 : actualRows10031=WordField.canonicalRows actualModulus 10031 (.bnot 10030) := by core033_kernel_decide
theorem stats10031 : actualRows10031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10031=6276 := by core033_kernel_decide
theorem rows10032 : actualRows10032=WordField.canonicalRows actualModulus 10032 (.bxor 10029 10031) := by core033_kernel_decide
theorem stats10032 : actualRows10032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10032=7428 := by core033_kernel_decide
theorem rows10033 : actualRows10033=WordField.canonicalRows actualModulus 10033 (.badd 9725 9747) := by core033_kernel_decide
theorem stats10033 : actualRows10033.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10033=5388 := by core033_kernel_decide
theorem rows10034 : actualRows10034=WordField.canonicalRows actualModulus 10034 (.band 9714 9736) := by core033_kernel_decide
theorem stats10034 : actualRows10034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10034=5124 := by core033_kernel_decide
theorem rows10035 : actualRows10035=WordField.canonicalRows actualModulus 10035 (.bxor 9714 9736) := by core033_kernel_decide
theorem stats10035 : actualRows10035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10035=7428 := by core033_kernel_decide
theorem rows10036 : actualRows10036=WordField.canonicalRows actualModulus 10036 (.badd 9714 9736) := by core033_kernel_decide
theorem stats10036 : actualRows10036.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10036=5388 := by core033_kernel_decide
theorem rows10037 : actualRows10037=WordField.canonicalRows actualModulus 10037 (.bnot 10036) := by core033_kernel_decide
theorem stats10037 : actualRows10037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10037=6276 := by core033_kernel_decide
theorem rows10038 : actualRows10038=WordField.canonicalRows actualModulus 10038 (.band 10035 10037) := by core033_kernel_decide
theorem stats10038 : actualRows10038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10038=5124 := by core033_kernel_decide
theorem rows10039 : actualRows10039=WordField.canonicalRows actualModulus 10039 (.bxor 10034 10038) := by core033_kernel_decide
theorem stats10039 : actualRows10039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10039=7428 := by core033_kernel_decide
theorem rows10040 : actualRows10040=WordField.canonicalRows actualModulus 10040 (.shr 10039 31) := by core033_kernel_decide
theorem stats10040 : actualRows10040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10040=2892 := by core033_kernel_decide
theorem rows10041 : actualRows10041=WordField.canonicalRows actualModulus 10041 (.badd 10033 10040) := by core033_kernel_decide
theorem stats10041 : actualRows10041.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10041=5388 := by core033_kernel_decide
theorem rows10042 : actualRows10042=WordField.canonicalRows actualModulus 10042 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10042 : actualRows10042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10042=2820 := by core033_kernel_decide
theorem rows10043 : actualRows10043=WordField.canonicalRows actualModulus 10043 (.bnot 10042) := by core033_kernel_decide
theorem stats10043 : actualRows10043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10043=6276 := by core033_kernel_decide
theorem rows10044 : actualRows10044=WordField.canonicalRows actualModulus 10044 (.badd 10041 10043) := by core033_kernel_decide
theorem stats10044 : actualRows10044.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10044=5388 := by core033_kernel_decide
theorem rows10045 : actualRows10045=WordField.canonicalRows actualModulus 10045 (.bnot 10044) := by core033_kernel_decide
theorem stats10045 : actualRows10045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10045=6276 := by core033_kernel_decide
theorem rows10046 : actualRows10046=WordField.canonicalRows actualModulus 10046 (.band 10032 10045) := by core033_kernel_decide
theorem stats10046 : actualRows10046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10046=5124 := by core033_kernel_decide
theorem rows10047 : actualRows10047=WordField.canonicalRows actualModulus 10047 (.bxor 10020 10046) := by core033_kernel_decide
theorem stats10047 : actualRows10047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10047=7428 := by core033_kernel_decide
theorem rows10048 : actualRows10048=WordField.canonicalRows actualModulus 10048 (.shr 10047 31) := by core033_kernel_decide
theorem stats10048 : actualRows10048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10048=2892 := by core033_kernel_decide
theorem rows10049 : actualRows10049=WordField.canonicalRows actualModulus 10049 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10049 : actualRows10049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10049=2892 := by core033_kernel_decide
theorem rows10050 : actualRows10050=WordField.canonicalRows actualModulus 10050 (.bxor 10048 10049) := by core033_kernel_decide
theorem stats10050 : actualRows10050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10050=7428 := by core033_kernel_decide
theorem rows10051 : actualRows10051=WordField.canonicalRows actualModulus 10051 (.badd 9714 9736) := by core033_kernel_decide
theorem stats10051 : actualRows10051.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10051=5388 := by core033_kernel_decide
theorem rows10052 : actualRows10052=WordField.canonicalRows actualModulus 10052 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10052 : actualRows10052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10052=2892 := by core033_kernel_decide
theorem rows10053 : actualRows10053=WordField.canonicalRows actualModulus 10053 (.bnot 10052) := by core033_kernel_decide
theorem stats10053 : actualRows10053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10053=6276 := by core033_kernel_decide
theorem rows10054 : actualRows10054=WordField.canonicalRows actualModulus 10054 (.band 10051 10053) := by core033_kernel_decide
theorem stats10054 : actualRows10054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10054=5124 := by core033_kernel_decide
theorem rows10055 : actualRows10055=WordField.canonicalRows actualModulus 10055 (.badd 9714 9736) := by core033_kernel_decide
theorem stats10055 : actualRows10055.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10055=5388 := by core033_kernel_decide
theorem rows10056 : actualRows10056=WordField.canonicalRows actualModulus 10056 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10056 : actualRows10056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10056=2892 := by core033_kernel_decide
theorem rows10057 : actualRows10057=WordField.canonicalRows actualModulus 10057 (.bnot 10056) := by core033_kernel_decide
theorem stats10057 : actualRows10057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10057=6276 := by core033_kernel_decide
theorem rows10058 : actualRows10058=WordField.canonicalRows actualModulus 10058 (.bxor 10055 10057) := by core033_kernel_decide
theorem stats10058 : actualRows10058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10058=7428 := by core033_kernel_decide
theorem rows10059 : actualRows10059=WordField.canonicalRows actualModulus 10059 (.badd 9714 9736) := by core033_kernel_decide
theorem stats10059 : actualRows10059.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10059=5388 := by core033_kernel_decide
theorem rows10060 : actualRows10060=WordField.canonicalRows actualModulus 10060 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10060 : actualRows10060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10060=2892 := by core033_kernel_decide
theorem rows10061 : actualRows10061=WordField.canonicalRows actualModulus 10061 (.bnot 10060) := by core033_kernel_decide
theorem stats10061 : actualRows10061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10061=6276 := by core033_kernel_decide
theorem rows10062 : actualRows10062=WordField.canonicalRows actualModulus 10062 (.badd 10059 10061) := by core033_kernel_decide
theorem stats10062 : actualRows10062.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10062=5388 := by core033_kernel_decide
theorem rows10063 : actualRows10063=WordField.canonicalRows actualModulus 10063 (.bnot 10062) := by core033_kernel_decide
theorem stats10063 : actualRows10063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10063=6276 := by core033_kernel_decide
theorem rows10064 : actualRows10064=WordField.canonicalRows actualModulus 10064 (.band 10058 10063) := by core033_kernel_decide
theorem stats10064 : actualRows10064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10064=5124 := by core033_kernel_decide
theorem rows10065 : actualRows10065=WordField.canonicalRows actualModulus 10065 (.bxor 10054 10064) := by core033_kernel_decide
theorem stats10065 : actualRows10065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10065=7428 := by core033_kernel_decide
theorem rows10066 : actualRows10066=WordField.canonicalRows actualModulus 10066 (.shr 10065 31) := by core033_kernel_decide
theorem stats10066 : actualRows10066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10066=2892 := by core033_kernel_decide
theorem rows10067 : actualRows10067=WordField.canonicalRows actualModulus 10067 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10067 : actualRows10067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10067=2892 := by core033_kernel_decide
theorem rows10068 : actualRows10068=WordField.canonicalRows actualModulus 10068 (.bxor 10066 10067) := by core033_kernel_decide
theorem stats10068 : actualRows10068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10068=7428 := by core033_kernel_decide
theorem rows10069 : actualRows10069=WordField.canonicalRows actualModulus 10069 (.band 10050 10068) := by core033_kernel_decide
theorem stats10069 : actualRows10069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10069=5124 := by core033_kernel_decide
theorem rows10070 : actualRows10070=WordField.canonicalRows actualModulus 10070 (.band 10008 10069) := by core033_kernel_decide
theorem stats10070 : actualRows10070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10070=5124 := by core033_kernel_decide
theorem rows10071 : actualRows10071=WordField.canonicalRows actualModulus 10071 (.band 9758 9769) := by core033_kernel_decide
theorem stats10071 : actualRows10071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10071=5124 := by core033_kernel_decide
theorem rows10072 : actualRows10072=WordField.canonicalRows actualModulus 10072 (.band 9780 9791) := by core033_kernel_decide
theorem stats10072 : actualRows10072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10072=5124 := by core033_kernel_decide
theorem rows10073 : actualRows10073=WordField.canonicalRows actualModulus 10073 (.shr 9758 1) := by core033_kernel_decide
theorem stats10073 : actualRows10073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10073=5052 := by core033_kernel_decide
theorem rows10074 : actualRows10074=WordField.canonicalRows actualModulus 10074 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10074 : actualRows10074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10074=2820 := by core033_kernel_decide
theorem rows10075 : actualRows10075=WordField.canonicalRows actualModulus 10075 (.bnot 10074) := by core033_kernel_decide
theorem stats10075 : actualRows10075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10075=6276 := by core033_kernel_decide
theorem rows10076 : actualRows10076=WordField.canonicalRows actualModulus 10076 (.band 10073 10075) := by core033_kernel_decide
theorem stats10076 : actualRows10076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10076=5124 := by core033_kernel_decide
theorem rows10077 : actualRows10077=WordField.canonicalRows actualModulus 10077 (.shr 9758 1) := by core033_kernel_decide
theorem stats10077 : actualRows10077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10077=5052 := by core033_kernel_decide
theorem rows10078 : actualRows10078=WordField.canonicalRows actualModulus 10078 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10078 : actualRows10078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10078=2820 := by core033_kernel_decide
theorem rows10079 : actualRows10079=WordField.canonicalRows actualModulus 10079 (.bnot 10078) := by core033_kernel_decide
theorem stats10079 : actualRows10079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10079=6276 := by core033_kernel_decide
theorem rows10080 : actualRows10080=WordField.canonicalRows actualModulus 10080 (.bxor 10077 10079) := by core033_kernel_decide
theorem stats10080 : actualRows10080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10080=7428 := by core033_kernel_decide
theorem rows10081 : actualRows10081=WordField.canonicalRows actualModulus 10081 (.shr 9758 1) := by core033_kernel_decide
theorem stats10081 : actualRows10081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10081=5052 := by core033_kernel_decide
theorem rows10082 : actualRows10082=WordField.canonicalRows actualModulus 10082 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10082 : actualRows10082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10082=2820 := by core033_kernel_decide
theorem rows10083 : actualRows10083=WordField.canonicalRows actualModulus 10083 (.bnot 10082) := by core033_kernel_decide
theorem stats10083 : actualRows10083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10083=6276 := by core033_kernel_decide
theorem rows10084 : actualRows10084=WordField.canonicalRows actualModulus 10084 (.badd 10081 10083) := by core033_kernel_decide
theorem stats10084 : actualRows10084.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10084=5388 := by core033_kernel_decide
theorem rows10085 : actualRows10085=WordField.canonicalRows actualModulus 10085 (.bnot 10084) := by core033_kernel_decide
theorem stats10085 : actualRows10085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10085=6276 := by core033_kernel_decide
theorem rows10086 : actualRows10086=WordField.canonicalRows actualModulus 10086 (.band 10080 10085) := by core033_kernel_decide
theorem stats10086 : actualRows10086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10086=5124 := by core033_kernel_decide
theorem rows10087 : actualRows10087=WordField.canonicalRows actualModulus 10087 (.bxor 10076 10086) := by core033_kernel_decide
theorem stats10087 : actualRows10087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10087=7428 := by core033_kernel_decide
theorem rows10088 : actualRows10088=WordField.canonicalRows actualModulus 10088 (.shr 10087 31) := by core033_kernel_decide
theorem stats10088 : actualRows10088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10088=2892 := by core033_kernel_decide
theorem rows10089 : actualRows10089=WordField.canonicalRows actualModulus 10089 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10089 : actualRows10089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10089=2892 := by core033_kernel_decide
theorem rows10090 : actualRows10090=WordField.canonicalRows actualModulus 10090 (.bxor 10088 10089) := by core033_kernel_decide
theorem stats10090 : actualRows10090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10090=7428 := by core033_kernel_decide
def partRows156 : List R1CS.Row := actualRows10027++actualRows10028++actualRows10029++actualRows10030++actualRows10031++actualRows10032++actualRows10033++actualRows10034++actualRows10035++actualRows10036++actualRows10037++actualRows10038++actualRows10039++actualRows10040++actualRows10041++actualRows10042++actualRows10043++actualRows10044++actualRows10045++actualRows10046++actualRows10047++actualRows10048++actualRows10049++actualRows10050++actualRows10051++actualRows10052++actualRows10053++actualRows10054++actualRows10055++actualRows10056++actualRows10057++actualRows10058++actualRows10059++actualRows10060++actualRows10061++actualRows10062++actualRows10063++actualRows10064++actualRows10065++actualRows10066++actualRows10067++actualRows10068++actualRows10069++actualRows10070++actualRows10071++actualRows10072++actualRows10073++actualRows10074++actualRows10075++actualRows10076++actualRows10077++actualRows10078++actualRows10079++actualRows10080++actualRows10081++actualRows10082++actualRows10083++actualRows10084++actualRows10085++actualRows10086++actualRows10087++actualRows10088++actualRows10089++actualRows10090
def partOps156 : List WordIR.Op := [.bxor 10022 10026,.shr 10027 31,.badd 10021 10028,.literal (BitVec.ofNat 32 0),.bnot 10030,.bxor 10029 10031,.badd 9725 9747,.band 9714 9736,.bxor 9714 9736,.badd 9714 9736,.bnot 10036,.band 10035 10037,.bxor 10034 10038,.shr 10039 31,.badd 10033 10040,.literal (BitVec.ofNat 32 0),.bnot 10042,.badd 10041 10043,.bnot 10044,.band 10032 10045,.bxor 10020 10046,.shr 10047 31,.literal (BitVec.ofNat 32 1),.bxor 10048 10049,.badd 9714 9736,.literal (BitVec.ofNat 32 1048576),.bnot 10052,.band 10051 10053,.badd 9714 9736,.literal (BitVec.ofNat 32 1048576),.bnot 10056,.bxor 10055 10057,.badd 9714 9736,.literal (BitVec.ofNat 32 1048576),.bnot 10060,.badd 10059 10061,.bnot 10062,.band 10058 10063,.bxor 10054 10064,.shr 10065 31,.literal (BitVec.ofNat 32 1),.bxor 10066 10067,.band 10050 10068,.band 10008 10069,.band 9758 9769,.band 9780 9791,.shr 9758 1,.literal (BitVec.ofNat 32 0),.bnot 10074,.band 10073 10075,.shr 9758 1,.literal (BitVec.ofNat 32 0),.bnot 10078,.bxor 10077 10079,.shr 9758 1,.literal (BitVec.ofNat 32 0),.bnot 10082,.badd 10081 10083,.bnot 10084,.band 10080 10085,.bxor 10076 10086,.shr 10087 31,.literal (BitVec.ofNat 32 1),.bxor 10088 10089]
theorem partExact156 : partRows156=WordField.rows actualModulus 10027 partOps156 := by
  simp only [partRows156,partOps156,WordField.rows,rows10027,rows10028,rows10029,rows10030,rows10031,rows10032,rows10033,rows10034,rows10035,rows10036,rows10037,rows10038,rows10039,rows10040,rows10041,rows10042,rows10043,rows10044,rows10045,rows10046,rows10047,rows10048,rows10049,rows10050,rows10051,rows10052,rows10053,rows10054,rows10055,rows10056,rows10057,rows10058,rows10059,rows10060,rows10061,rows10062,rows10063,rows10064,rows10065,rows10066,rows10067,rows10068,rows10069,rows10070,rows10071,rows10072,rows10073,rows10074,rows10075,rows10076,rows10077,rows10078,rows10079,rows10080,rows10081,rows10082,rows10083,rows10084,rows10085,rows10086,rows10087,rows10088,rows10089,rows10090,List.append_assoc,List.append_nil]
theorem partLength156 : partOps156.length=64 := by decide
theorem partStats156 : partRows156.length=2186 ∧ MatrixRowBlocks.rowsWeight partRows156=335760 := by
  simp only [partRows156,List.length_append,MatrixRowBlocks.rows_weight_append,stats10027.1,stats10027.2,stats10028.1,stats10028.2,stats10029.1,stats10029.2,stats10030.1,stats10030.2,stats10031.1,stats10031.2,stats10032.1,stats10032.2,stats10033.1,stats10033.2,stats10034.1,stats10034.2,stats10035.1,stats10035.2,stats10036.1,stats10036.2,stats10037.1,stats10037.2,stats10038.1,stats10038.2,stats10039.1,stats10039.2,stats10040.1,stats10040.2,stats10041.1,stats10041.2,stats10042.1,stats10042.2,stats10043.1,stats10043.2,stats10044.1,stats10044.2,stats10045.1,stats10045.2,stats10046.1,stats10046.2,stats10047.1,stats10047.2,stats10048.1,stats10048.2,stats10049.1,stats10049.2,stats10050.1,stats10050.2,stats10051.1,stats10051.2,stats10052.1,stats10052.2,stats10053.1,stats10053.2,stats10054.1,stats10054.2,stats10055.1,stats10055.2,stats10056.1,stats10056.2,stats10057.1,stats10057.2,stats10058.1,stats10058.2,stats10059.1,stats10059.2,stats10060.1,stats10060.2,stats10061.1,stats10061.2,stats10062.1,stats10062.2,stats10063.1,stats10063.2,stats10064.1,stats10064.2,stats10065.1,stats10065.2,stats10066.1,stats10066.2,stats10067.1,stats10067.2,stats10068.1,stats10068.2,stats10069.1,stats10069.2,stats10070.1,stats10070.2,stats10071.1,stats10071.2,stats10072.1,stats10072.2,stats10073.1,stats10073.2,stats10074.1,stats10074.2,stats10075.1,stats10075.2,stats10076.1,stats10076.2,stats10077.1,stats10077.2,stats10078.1,stats10078.2,stats10079.1,stats10079.2,stats10080.1,stats10080.2,stats10081.1,stats10081.2,stats10082.1,stats10082.2,stats10083.1,stats10083.2,stats10084.1,stats10084.2,stats10085.1,stats10085.2,stats10086.1,stats10086.2,stats10087.1,stats10087.2,stats10088.1,stats10088.2,stats10089.1,stats10089.2,stats10090.1,stats10090.2]
  decide
end PathRoundDispatchCheckedRows
