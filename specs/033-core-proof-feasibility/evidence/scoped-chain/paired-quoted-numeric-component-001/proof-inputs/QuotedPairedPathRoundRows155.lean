import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData156
import PairedPathRoundInstructionMatrixData157
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10016 : actualRows10016=WordField.canonicalRows actualModulus 10016 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10016 : actualRows10016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10016=2892 := by core033_kernel_decide
theorem rows10017 : actualRows10017=WordField.canonicalRows actualModulus 10017 (.badd 10015 10016) := by core033_kernel_decide
theorem stats10017 : actualRows10017.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10017=5388 := by core033_kernel_decide
theorem rows10018 : actualRows10018=WordField.canonicalRows actualModulus 10018 (.band 10017 8) := by core033_kernel_decide
theorem stats10018 : actualRows10018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10018=5124 := by core033_kernel_decide
theorem rows10019 : actualRows10019=WordField.canonicalRows actualModulus 10019 (.bnot 9926) := by core033_kernel_decide
theorem stats10019 : actualRows10019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10019=6276 := by core033_kernel_decide
theorem rows10020 : actualRows10020=WordField.canonicalRows actualModulus 10020 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10020 : actualRows10020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10020=2892 := by core033_kernel_decide
theorem rows10021 : actualRows10021=WordField.canonicalRows actualModulus 10021 (.badd 10019 10020) := by core033_kernel_decide
theorem stats10021 : actualRows10021.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10021=5388 := by core033_kernel_decide
theorem rows10022 : actualRows10022=WordField.canonicalRows actualModulus 10022 (.bnot 10021) := by core033_kernel_decide
theorem stats10022 : actualRows10022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10022=6276 := by core033_kernel_decide
theorem rows10023 : actualRows10023=WordField.canonicalRows actualModulus 10023 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10023 : actualRows10023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10023=2820 := by core033_kernel_decide
theorem rows10024 : actualRows10024=WordField.canonicalRows actualModulus 10024 (.band 10022 10023) := by core033_kernel_decide
theorem stats10024 : actualRows10024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10024=5124 := by core033_kernel_decide
theorem rows10025 : actualRows10025=WordField.canonicalRows actualModulus 10025 (.bxor 10018 10024) := by core033_kernel_decide
theorem stats10025 : actualRows10025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10025=7428 := by core033_kernel_decide
theorem rows10026 : actualRows10026=WordField.canonicalRows actualModulus 10026 (.bnot 9926) := by core033_kernel_decide
theorem stats10026 : actualRows10026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10026=6276 := by core033_kernel_decide
theorem rows10027 : actualRows10027=WordField.canonicalRows actualModulus 10027 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10027 : actualRows10027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10027=2892 := by core033_kernel_decide
theorem rows10028 : actualRows10028=WordField.canonicalRows actualModulus 10028 (.badd 10026 10027) := by core033_kernel_decide
theorem stats10028 : actualRows10028.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10028=5388 := by core033_kernel_decide
theorem rows10029 : actualRows10029=WordField.canonicalRows actualModulus 10029 (.band 10028 9) := by core033_kernel_decide
theorem stats10029 : actualRows10029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10029=5124 := by core033_kernel_decide
theorem rows10030 : actualRows10030=WordField.canonicalRows actualModulus 10030 (.bnot 9926) := by core033_kernel_decide
theorem stats10030 : actualRows10030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10030=6276 := by core033_kernel_decide
theorem rows10031 : actualRows10031=WordField.canonicalRows actualModulus 10031 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10031 : actualRows10031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10031=2892 := by core033_kernel_decide
theorem rows10032 : actualRows10032=WordField.canonicalRows actualModulus 10032 (.badd 10030 10031) := by core033_kernel_decide
theorem stats10032 : actualRows10032.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10032=5388 := by core033_kernel_decide
theorem rows10033 : actualRows10033=WordField.canonicalRows actualModulus 10033 (.bnot 10032) := by core033_kernel_decide
theorem stats10033 : actualRows10033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10033=6276 := by core033_kernel_decide
theorem rows10034 : actualRows10034=WordField.canonicalRows actualModulus 10034 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10034 : actualRows10034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10034=2820 := by core033_kernel_decide
theorem rows10035 : actualRows10035=WordField.canonicalRows actualModulus 10035 (.band 10033 10034) := by core033_kernel_decide
theorem stats10035 : actualRows10035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10035=5124 := by core033_kernel_decide
theorem rows10036 : actualRows10036=WordField.canonicalRows actualModulus 10036 (.bxor 10029 10035) := by core033_kernel_decide
theorem stats10036 : actualRows10036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10036=7428 := by core033_kernel_decide
theorem rows10037 : actualRows10037=WordField.canonicalRows actualModulus 10037 (.bnot 9926) := by core033_kernel_decide
theorem stats10037 : actualRows10037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10037=6276 := by core033_kernel_decide
theorem rows10038 : actualRows10038=WordField.canonicalRows actualModulus 10038 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10038 : actualRows10038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10038=2892 := by core033_kernel_decide
theorem rows10039 : actualRows10039=WordField.canonicalRows actualModulus 10039 (.badd 10037 10038) := by core033_kernel_decide
theorem stats10039 : actualRows10039.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10039=5388 := by core033_kernel_decide
theorem rows10040 : actualRows10040=WordField.canonicalRows actualModulus 10040 (.band 10039 10) := by core033_kernel_decide
theorem stats10040 : actualRows10040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10040=5124 := by core033_kernel_decide
theorem rows10041 : actualRows10041=WordField.canonicalRows actualModulus 10041 (.bnot 9926) := by core033_kernel_decide
theorem stats10041 : actualRows10041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10041=6276 := by core033_kernel_decide
theorem rows10042 : actualRows10042=WordField.canonicalRows actualModulus 10042 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10042 : actualRows10042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10042=2892 := by core033_kernel_decide
theorem rows10043 : actualRows10043=WordField.canonicalRows actualModulus 10043 (.badd 10041 10042) := by core033_kernel_decide
theorem stats10043 : actualRows10043.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10043=5388 := by core033_kernel_decide
theorem rows10044 : actualRows10044=WordField.canonicalRows actualModulus 10044 (.bnot 10043) := by core033_kernel_decide
theorem stats10044 : actualRows10044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10044=6276 := by core033_kernel_decide
theorem rows10045 : actualRows10045=WordField.canonicalRows actualModulus 10045 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10045 : actualRows10045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10045=2820 := by core033_kernel_decide
theorem rows10046 : actualRows10046=WordField.canonicalRows actualModulus 10046 (.band 10044 10045) := by core033_kernel_decide
theorem stats10046 : actualRows10046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10046=5124 := by core033_kernel_decide
theorem rows10047 : actualRows10047=WordField.canonicalRows actualModulus 10047 (.bxor 10040 10046) := by core033_kernel_decide
theorem stats10047 : actualRows10047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10047=7428 := by core033_kernel_decide
theorem rows10048 : actualRows10048=WordField.canonicalRows actualModulus 10048 (.bnot 9926) := by core033_kernel_decide
theorem stats10048 : actualRows10048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10048=6276 := by core033_kernel_decide
theorem rows10049 : actualRows10049=WordField.canonicalRows actualModulus 10049 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10049 : actualRows10049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10049=2892 := by core033_kernel_decide
theorem rows10050 : actualRows10050=WordField.canonicalRows actualModulus 10050 (.badd 10048 10049) := by core033_kernel_decide
theorem stats10050 : actualRows10050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10050=5388 := by core033_kernel_decide
theorem rows10051 : actualRows10051=WordField.canonicalRows actualModulus 10051 (.band 10050 452) := by core033_kernel_decide
theorem stats10051 : actualRows10051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10051=5124 := by core033_kernel_decide
theorem rows10052 : actualRows10052=WordField.canonicalRows actualModulus 10052 (.bnot 9926) := by core033_kernel_decide
theorem stats10052 : actualRows10052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10052=6276 := by core033_kernel_decide
theorem rows10053 : actualRows10053=WordField.canonicalRows actualModulus 10053 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10053 : actualRows10053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10053=2892 := by core033_kernel_decide
theorem rows10054 : actualRows10054=WordField.canonicalRows actualModulus 10054 (.badd 10052 10053) := by core033_kernel_decide
theorem stats10054 : actualRows10054.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10054=5388 := by core033_kernel_decide
theorem rows10055 : actualRows10055=WordField.canonicalRows actualModulus 10055 (.bnot 10054) := by core033_kernel_decide
theorem stats10055 : actualRows10055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10055=6276 := by core033_kernel_decide
theorem rows10056 : actualRows10056=WordField.canonicalRows actualModulus 10056 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10056 : actualRows10056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10056=2820 := by core033_kernel_decide
theorem rows10057 : actualRows10057=WordField.canonicalRows actualModulus 10057 (.band 10055 10056) := by core033_kernel_decide
theorem stats10057 : actualRows10057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10057=5124 := by core033_kernel_decide
theorem rows10058 : actualRows10058=WordField.canonicalRows actualModulus 10058 (.bxor 10051 10057) := by core033_kernel_decide
theorem stats10058 : actualRows10058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10058=7428 := by core033_kernel_decide
theorem rows10059 : actualRows10059=WordField.canonicalRows actualModulus 10059 (.bnot 9926) := by core033_kernel_decide
theorem stats10059 : actualRows10059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10059=6276 := by core033_kernel_decide
theorem rows10060 : actualRows10060=WordField.canonicalRows actualModulus 10060 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10060 : actualRows10060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10060=2892 := by core033_kernel_decide
theorem rows10061 : actualRows10061=WordField.canonicalRows actualModulus 10061 (.badd 10059 10060) := by core033_kernel_decide
theorem stats10061 : actualRows10061.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10061=5388 := by core033_kernel_decide
theorem rows10062 : actualRows10062=WordField.canonicalRows actualModulus 10062 (.band 10061 462) := by core033_kernel_decide
theorem stats10062 : actualRows10062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10062=5124 := by core033_kernel_decide
theorem rows10063 : actualRows10063=WordField.canonicalRows actualModulus 10063 (.bnot 9926) := by core033_kernel_decide
theorem stats10063 : actualRows10063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10063=6276 := by core033_kernel_decide
theorem rows10064 : actualRows10064=WordField.canonicalRows actualModulus 10064 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10064 : actualRows10064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10064=2892 := by core033_kernel_decide
theorem rows10065 : actualRows10065=WordField.canonicalRows actualModulus 10065 (.badd 10063 10064) := by core033_kernel_decide
theorem stats10065 : actualRows10065.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10065=5388 := by core033_kernel_decide
theorem rows10066 : actualRows10066=WordField.canonicalRows actualModulus 10066 (.bnot 10065) := by core033_kernel_decide
theorem stats10066 : actualRows10066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10066=6276 := by core033_kernel_decide
theorem rows10067 : actualRows10067=WordField.canonicalRows actualModulus 10067 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10067 : actualRows10067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10067=2820 := by core033_kernel_decide
theorem rows10068 : actualRows10068=WordField.canonicalRows actualModulus 10068 (.band 10066 10067) := by core033_kernel_decide
theorem stats10068 : actualRows10068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10068=5124 := by core033_kernel_decide
theorem rows10069 : actualRows10069=WordField.canonicalRows actualModulus 10069 (.bxor 10062 10068) := by core033_kernel_decide
theorem stats10069 : actualRows10069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10069=7428 := by core033_kernel_decide
theorem rows10070 : actualRows10070=WordField.canonicalRows actualModulus 10070 (.bnot 9926) := by core033_kernel_decide
theorem stats10070 : actualRows10070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10070=6276 := by core033_kernel_decide
theorem rows10071 : actualRows10071=WordField.canonicalRows actualModulus 10071 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10071 : actualRows10071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10071=2892 := by core033_kernel_decide
theorem rows10072 : actualRows10072=WordField.canonicalRows actualModulus 10072 (.badd 10070 10071) := by core033_kernel_decide
theorem stats10072 : actualRows10072.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10072=5388 := by core033_kernel_decide
theorem rows10073 : actualRows10073=WordField.canonicalRows actualModulus 10073 (.band 10072 472) := by core033_kernel_decide
theorem stats10073 : actualRows10073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10073=5124 := by core033_kernel_decide
theorem rows10074 : actualRows10074=WordField.canonicalRows actualModulus 10074 (.bnot 9926) := by core033_kernel_decide
theorem stats10074 : actualRows10074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10074=6276 := by core033_kernel_decide
theorem rows10075 : actualRows10075=WordField.canonicalRows actualModulus 10075 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10075 : actualRows10075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10075=2892 := by core033_kernel_decide
theorem rows10076 : actualRows10076=WordField.canonicalRows actualModulus 10076 (.badd 10074 10075) := by core033_kernel_decide
theorem stats10076 : actualRows10076.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10076=5388 := by core033_kernel_decide
theorem rows10077 : actualRows10077=WordField.canonicalRows actualModulus 10077 (.bnot 10076) := by core033_kernel_decide
theorem stats10077 : actualRows10077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10077=6276 := by core033_kernel_decide
theorem rows10078 : actualRows10078=WordField.canonicalRows actualModulus 10078 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10078 : actualRows10078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10078=2820 := by core033_kernel_decide
theorem rows10079 : actualRows10079=WordField.canonicalRows actualModulus 10079 (.band 10077 10078) := by core033_kernel_decide
theorem stats10079 : actualRows10079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10079=5124 := by core033_kernel_decide
def partRows155 : List R1CS.Row := actualRows10016++actualRows10017++actualRows10018++actualRows10019++actualRows10020++actualRows10021++actualRows10022++actualRows10023++actualRows10024++actualRows10025++actualRows10026++actualRows10027++actualRows10028++actualRows10029++actualRows10030++actualRows10031++actualRows10032++actualRows10033++actualRows10034++actualRows10035++actualRows10036++actualRows10037++actualRows10038++actualRows10039++actualRows10040++actualRows10041++actualRows10042++actualRows10043++actualRows10044++actualRows10045++actualRows10046++actualRows10047++actualRows10048++actualRows10049++actualRows10050++actualRows10051++actualRows10052++actualRows10053++actualRows10054++actualRows10055++actualRows10056++actualRows10057++actualRows10058++actualRows10059++actualRows10060++actualRows10061++actualRows10062++actualRows10063++actualRows10064++actualRows10065++actualRows10066++actualRows10067++actualRows10068++actualRows10069++actualRows10070++actualRows10071++actualRows10072++actualRows10073++actualRows10074++actualRows10075++actualRows10076++actualRows10077++actualRows10078++actualRows10079
def partOps155 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 10015 10016,.band 10017 8,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10019 10020,.bnot 10021,.literal (BitVec.ofNat 32 0),.band 10022 10023,.bxor 10018 10024,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10026 10027,.band 10028 9,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10030 10031,.bnot 10032,.literal (BitVec.ofNat 32 0),.band 10033 10034,.bxor 10029 10035,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10037 10038,.band 10039 10,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10041 10042,.bnot 10043,.literal (BitVec.ofNat 32 0),.band 10044 10045,.bxor 10040 10046,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10048 10049,.band 10050 452,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10052 10053,.bnot 10054,.literal (BitVec.ofNat 32 0),.band 10055 10056,.bxor 10051 10057,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10059 10060,.band 10061 462,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10063 10064,.bnot 10065,.literal (BitVec.ofNat 32 0),.band 10066 10067,.bxor 10062 10068,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10070 10071,.band 10072 472,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10074 10075,.bnot 10076,.literal (BitVec.ofNat 32 0),.band 10077 10078]
theorem partExact155 : partRows155=WordField.rows actualModulus 10016 partOps155 := by
  simp only [partRows155,partOps155,WordField.rows,rows10016,rows10017,rows10018,rows10019,rows10020,rows10021,rows10022,rows10023,rows10024,rows10025,rows10026,rows10027,rows10028,rows10029,rows10030,rows10031,rows10032,rows10033,rows10034,rows10035,rows10036,rows10037,rows10038,rows10039,rows10040,rows10041,rows10042,rows10043,rows10044,rows10045,rows10046,rows10047,rows10048,rows10049,rows10050,rows10051,rows10052,rows10053,rows10054,rows10055,rows10056,rows10057,rows10058,rows10059,rows10060,rows10061,rows10062,rows10063,rows10064,rows10065,rows10066,rows10067,rows10068,rows10069,rows10070,rows10071,rows10072,rows10073,rows10074,rows10075,rows10076,rows10077,rows10078,rows10079,List.append_assoc,List.append_nil]
theorem partLength155 : partOps155.length=64 := by decide
theorem partStats155 : partRows155.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows155=321600 := by
  simp only [partRows155,List.length_append,MatrixRowBlocks.rows_weight_append,stats10016.1,stats10016.2,stats10017.1,stats10017.2,stats10018.1,stats10018.2,stats10019.1,stats10019.2,stats10020.1,stats10020.2,stats10021.1,stats10021.2,stats10022.1,stats10022.2,stats10023.1,stats10023.2,stats10024.1,stats10024.2,stats10025.1,stats10025.2,stats10026.1,stats10026.2,stats10027.1,stats10027.2,stats10028.1,stats10028.2,stats10029.1,stats10029.2,stats10030.1,stats10030.2,stats10031.1,stats10031.2,stats10032.1,stats10032.2,stats10033.1,stats10033.2,stats10034.1,stats10034.2,stats10035.1,stats10035.2,stats10036.1,stats10036.2,stats10037.1,stats10037.2,stats10038.1,stats10038.2,stats10039.1,stats10039.2,stats10040.1,stats10040.2,stats10041.1,stats10041.2,stats10042.1,stats10042.2,stats10043.1,stats10043.2,stats10044.1,stats10044.2,stats10045.1,stats10045.2,stats10046.1,stats10046.2,stats10047.1,stats10047.2,stats10048.1,stats10048.2,stats10049.1,stats10049.2,stats10050.1,stats10050.2,stats10051.1,stats10051.2,stats10052.1,stats10052.2,stats10053.1,stats10053.2,stats10054.1,stats10054.2,stats10055.1,stats10055.2,stats10056.1,stats10056.2,stats10057.1,stats10057.2,stats10058.1,stats10058.2,stats10059.1,stats10059.2,stats10060.1,stats10060.2,stats10061.1,stats10061.2,stats10062.1,stats10062.2,stats10063.1,stats10063.2,stats10064.1,stats10064.2,stats10065.1,stats10065.2,stats10066.1,stats10066.2,stats10067.1,stats10067.2,stats10068.1,stats10068.2,stats10069.1,stats10069.2,stats10070.1,stats10070.2,stats10071.1,stats10071.2,stats10072.1,stats10072.2,stats10073.1,stats10073.2,stats10074.1,stats10074.2,stats10075.1,stats10075.2,stats10076.1,stats10076.2,stats10077.1,stats10077.2,stats10078.1,stats10078.2,stats10079.1,stats10079.2]
  decide
end QuotedPairedPathRoundCheckedRows
