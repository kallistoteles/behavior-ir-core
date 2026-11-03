import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData203
import PairedPathRoundInstructionMatrixData204
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13024 : actualRows13024=WordField.canonicalRows actualModulus 13024 (.bxor 13002 13023) := by core033_kernel_decide
theorem stats13024 : actualRows13024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13024=7428 := by core033_kernel_decide
theorem rows13025 : actualRows13025=WordField.canonicalRows actualModulus 13025 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13025 : actualRows13025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13025=2964 := by core033_kernel_decide
theorem rows13026 : actualRows13026=WordField.canonicalRows actualModulus 13026 (.bxor 442 13025) := by core033_kernel_decide
theorem stats13026 : actualRows13026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13026=7428 := by core033_kernel_decide
theorem rows13027 : actualRows13027=WordField.canonicalRows actualModulus 13027 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13027 : actualRows13027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13027=2820 := by core033_kernel_decide
theorem rows13028 : actualRows13028=WordField.canonicalRows actualModulus 13028 (.bnot 13027) := by core033_kernel_decide
theorem stats13028 : actualRows13028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13028=6276 := by core033_kernel_decide
theorem rows13029 : actualRows13029=WordField.canonicalRows actualModulus 13029 (.band 13026 13028) := by core033_kernel_decide
theorem stats13029 : actualRows13029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13029=5124 := by core033_kernel_decide
theorem rows13030 : actualRows13030=WordField.canonicalRows actualModulus 13030 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13030 : actualRows13030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13030=2964 := by core033_kernel_decide
theorem rows13031 : actualRows13031=WordField.canonicalRows actualModulus 13031 (.bxor 442 13030) := by core033_kernel_decide
theorem stats13031 : actualRows13031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13031=7428 := by core033_kernel_decide
theorem rows13032 : actualRows13032=WordField.canonicalRows actualModulus 13032 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13032 : actualRows13032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13032=2820 := by core033_kernel_decide
theorem rows13033 : actualRows13033=WordField.canonicalRows actualModulus 13033 (.bnot 13032) := by core033_kernel_decide
theorem stats13033 : actualRows13033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13033=6276 := by core033_kernel_decide
theorem rows13034 : actualRows13034=WordField.canonicalRows actualModulus 13034 (.bxor 13031 13033) := by core033_kernel_decide
theorem stats13034 : actualRows13034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13034=7428 := by core033_kernel_decide
theorem rows13035 : actualRows13035=WordField.canonicalRows actualModulus 13035 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13035 : actualRows13035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13035=2964 := by core033_kernel_decide
theorem rows13036 : actualRows13036=WordField.canonicalRows actualModulus 13036 (.bxor 442 13035) := by core033_kernel_decide
theorem stats13036 : actualRows13036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13036=7428 := by core033_kernel_decide
theorem rows13037 : actualRows13037=WordField.canonicalRows actualModulus 13037 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13037 : actualRows13037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13037=2820 := by core033_kernel_decide
theorem rows13038 : actualRows13038=WordField.canonicalRows actualModulus 13038 (.bnot 13037) := by core033_kernel_decide
theorem stats13038 : actualRows13038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13038=6276 := by core033_kernel_decide
theorem rows13039 : actualRows13039=WordField.canonicalRows actualModulus 13039 (.badd 13036 13038) := by core033_kernel_decide
theorem stats13039 : actualRows13039.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13039=5388 := by core033_kernel_decide
theorem rows13040 : actualRows13040=WordField.canonicalRows actualModulus 13040 (.bnot 13039) := by core033_kernel_decide
theorem stats13040 : actualRows13040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13040=6276 := by core033_kernel_decide
theorem rows13041 : actualRows13041=WordField.canonicalRows actualModulus 13041 (.band 13034 13040) := by core033_kernel_decide
theorem stats13041 : actualRows13041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13041=5124 := by core033_kernel_decide
theorem rows13042 : actualRows13042=WordField.canonicalRows actualModulus 13042 (.bxor 13029 13041) := by core033_kernel_decide
theorem stats13042 : actualRows13042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13042=7428 := by core033_kernel_decide
theorem rows13043 : actualRows13043=WordField.canonicalRows actualModulus 13043 (.shr 13042 31) := by core033_kernel_decide
theorem stats13043 : actualRows13043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13043=2892 := by core033_kernel_decide
theorem rows13044 : actualRows13044=WordField.canonicalRows actualModulus 13044 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13044 : actualRows13044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13044=2892 := by core033_kernel_decide
theorem rows13045 : actualRows13045=WordField.canonicalRows actualModulus 13045 (.bxor 13043 13044) := by core033_kernel_decide
theorem stats13045 : actualRows13045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13045=7428 := by core033_kernel_decide
theorem rows13046 : actualRows13046=WordField.canonicalRows actualModulus 13046 (.bxor 13024 13045) := by core033_kernel_decide
theorem stats13046 : actualRows13046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13046=7428 := by core033_kernel_decide
theorem rows13047 : actualRows13047=WordField.canonicalRows actualModulus 13047 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13047 : actualRows13047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13047=2892 := by core033_kernel_decide
theorem rows13048 : actualRows13048=WordField.canonicalRows actualModulus 13048 (.badd 0 13047) := by core033_kernel_decide
theorem stats13048 : actualRows13048.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13048=5388 := by core033_kernel_decide
theorem rows13049 : actualRows13049=WordField.canonicalRows actualModulus 13049 (.bnot 288) := by core033_kernel_decide
theorem stats13049 : actualRows13049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13049=6276 := by core033_kernel_decide
theorem rows13050 : actualRows13050=WordField.canonicalRows actualModulus 13050 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13050 : actualRows13050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13050=2892 := by core033_kernel_decide
theorem rows13051 : actualRows13051=WordField.canonicalRows actualModulus 13051 (.badd 13049 13050) := by core033_kernel_decide
theorem stats13051 : actualRows13051.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13051=5388 := by core033_kernel_decide
theorem rows13052 : actualRows13052=WordField.canonicalRows actualModulus 13052 (.band 13051 10901) := by core033_kernel_decide
theorem stats13052 : actualRows13052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13052=5124 := by core033_kernel_decide
theorem rows13053 : actualRows13053=WordField.canonicalRows actualModulus 13053 (.bnot 288) := by core033_kernel_decide
theorem stats13053 : actualRows13053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13053=6276 := by core033_kernel_decide
theorem rows13054 : actualRows13054=WordField.canonicalRows actualModulus 13054 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13054 : actualRows13054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13054=2892 := by core033_kernel_decide
theorem rows13055 : actualRows13055=WordField.canonicalRows actualModulus 13055 (.badd 13053 13054) := by core033_kernel_decide
theorem stats13055 : actualRows13055.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13055=5388 := by core033_kernel_decide
theorem rows13056 : actualRows13056=WordField.canonicalRows actualModulus 13056 (.bnot 13055) := by core033_kernel_decide
theorem stats13056 : actualRows13056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13056=6276 := by core033_kernel_decide
theorem rows13057 : actualRows13057=WordField.canonicalRows actualModulus 13057 (.band 13056 2) := by core033_kernel_decide
theorem stats13057 : actualRows13057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13057=5124 := by core033_kernel_decide
theorem rows13058 : actualRows13058=WordField.canonicalRows actualModulus 13058 (.bxor 13052 13057) := by core033_kernel_decide
theorem stats13058 : actualRows13058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13058=7428 := by core033_kernel_decide
theorem rows13059 : actualRows13059=WordField.canonicalRows actualModulus 13059 (.bnot 267) := by core033_kernel_decide
theorem stats13059 : actualRows13059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13059=6276 := by core033_kernel_decide
theorem rows13060 : actualRows13060=WordField.canonicalRows actualModulus 13060 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13060 : actualRows13060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13060=2892 := by core033_kernel_decide
theorem rows13061 : actualRows13061=WordField.canonicalRows actualModulus 13061 (.badd 13059 13060) := by core033_kernel_decide
theorem stats13061 : actualRows13061.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13061=5388 := by core033_kernel_decide
theorem rows13062 : actualRows13062=WordField.canonicalRows actualModulus 13062 (.band 13061 11369) := by core033_kernel_decide
theorem stats13062 : actualRows13062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13062=5124 := by core033_kernel_decide
theorem rows13063 : actualRows13063=WordField.canonicalRows actualModulus 13063 (.bnot 267) := by core033_kernel_decide
theorem stats13063 : actualRows13063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13063=6276 := by core033_kernel_decide
theorem rows13064 : actualRows13064=WordField.canonicalRows actualModulus 13064 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13064 : actualRows13064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13064=2892 := by core033_kernel_decide
theorem rows13065 : actualRows13065=WordField.canonicalRows actualModulus 13065 (.badd 13063 13064) := by core033_kernel_decide
theorem stats13065 : actualRows13065.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13065=5388 := by core033_kernel_decide
theorem rows13066 : actualRows13066=WordField.canonicalRows actualModulus 13066 (.bnot 13065) := by core033_kernel_decide
theorem stats13066 : actualRows13066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13066=6276 := by core033_kernel_decide
theorem rows13067 : actualRows13067=WordField.canonicalRows actualModulus 13067 (.band 13066 55) := by core033_kernel_decide
theorem stats13067 : actualRows13067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13067=5124 := by core033_kernel_decide
theorem rows13068 : actualRows13068=WordField.canonicalRows actualModulus 13068 (.bxor 13062 13067) := by core033_kernel_decide
theorem stats13068 : actualRows13068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13068=7428 := by core033_kernel_decide
theorem rows13069 : actualRows13069=WordField.canonicalRows actualModulus 13069 (.bnot 267) := by core033_kernel_decide
theorem stats13069 : actualRows13069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13069=6276 := by core033_kernel_decide
theorem rows13070 : actualRows13070=WordField.canonicalRows actualModulus 13070 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13070 : actualRows13070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13070=2892 := by core033_kernel_decide
theorem rows13071 : actualRows13071=WordField.canonicalRows actualModulus 13071 (.badd 13069 13070) := by core033_kernel_decide
theorem stats13071 : actualRows13071.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13071=5388 := by core033_kernel_decide
theorem rows13072 : actualRows13072=WordField.canonicalRows actualModulus 13072 (.band 13071 11421) := by core033_kernel_decide
theorem stats13072 : actualRows13072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13072=5124 := by core033_kernel_decide
theorem rows13073 : actualRows13073=WordField.canonicalRows actualModulus 13073 (.bnot 267) := by core033_kernel_decide
theorem stats13073 : actualRows13073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13073=6276 := by core033_kernel_decide
theorem rows13074 : actualRows13074=WordField.canonicalRows actualModulus 13074 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13074 : actualRows13074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13074=2892 := by core033_kernel_decide
theorem rows13075 : actualRows13075=WordField.canonicalRows actualModulus 13075 (.badd 13073 13074) := by core033_kernel_decide
theorem stats13075 : actualRows13075.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13075=5388 := by core033_kernel_decide
theorem rows13076 : actualRows13076=WordField.canonicalRows actualModulus 13076 (.bnot 13075) := by core033_kernel_decide
theorem stats13076 : actualRows13076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13076=6276 := by core033_kernel_decide
theorem rows13077 : actualRows13077=WordField.canonicalRows actualModulus 13077 (.band 13076 56) := by core033_kernel_decide
theorem stats13077 : actualRows13077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13077=5124 := by core033_kernel_decide
theorem rows13078 : actualRows13078=WordField.canonicalRows actualModulus 13078 (.bxor 13072 13077) := by core033_kernel_decide
theorem stats13078 : actualRows13078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13078=7428 := by core033_kernel_decide
theorem rows13079 : actualRows13079=WordField.canonicalRows actualModulus 13079 (.bnot 267) := by core033_kernel_decide
theorem stats13079 : actualRows13079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13079=6276 := by core033_kernel_decide
theorem rows13080 : actualRows13080=WordField.canonicalRows actualModulus 13080 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13080 : actualRows13080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13080=2892 := by core033_kernel_decide
theorem rows13081 : actualRows13081=WordField.canonicalRows actualModulus 13081 (.badd 13079 13080) := by core033_kernel_decide
theorem stats13081 : actualRows13081.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13081=5388 := by core033_kernel_decide
theorem rows13082 : actualRows13082=WordField.canonicalRows actualModulus 13082 (.band 13081 11473) := by core033_kernel_decide
theorem stats13082 : actualRows13082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13082=5124 := by core033_kernel_decide
theorem rows13083 : actualRows13083=WordField.canonicalRows actualModulus 13083 (.bnot 267) := by core033_kernel_decide
theorem stats13083 : actualRows13083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13083=6276 := by core033_kernel_decide
theorem rows13084 : actualRows13084=WordField.canonicalRows actualModulus 13084 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13084 : actualRows13084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13084=2892 := by core033_kernel_decide
theorem rows13085 : actualRows13085=WordField.canonicalRows actualModulus 13085 (.badd 13083 13084) := by core033_kernel_decide
theorem stats13085 : actualRows13085.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13085=5388 := by core033_kernel_decide
theorem rows13086 : actualRows13086=WordField.canonicalRows actualModulus 13086 (.bnot 13085) := by core033_kernel_decide
theorem stats13086 : actualRows13086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13086=6276 := by core033_kernel_decide
theorem rows13087 : actualRows13087=WordField.canonicalRows actualModulus 13087 (.band 13086 57) := by core033_kernel_decide
theorem stats13087 : actualRows13087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13087=5124 := by core033_kernel_decide
def partRows202 : List R1CS.Row := actualRows13024++actualRows13025++actualRows13026++actualRows13027++actualRows13028++actualRows13029++actualRows13030++actualRows13031++actualRows13032++actualRows13033++actualRows13034++actualRows13035++actualRows13036++actualRows13037++actualRows13038++actualRows13039++actualRows13040++actualRows13041++actualRows13042++actualRows13043++actualRows13044++actualRows13045++actualRows13046++actualRows13047++actualRows13048++actualRows13049++actualRows13050++actualRows13051++actualRows13052++actualRows13053++actualRows13054++actualRows13055++actualRows13056++actualRows13057++actualRows13058++actualRows13059++actualRows13060++actualRows13061++actualRows13062++actualRows13063++actualRows13064++actualRows13065++actualRows13066++actualRows13067++actualRows13068++actualRows13069++actualRows13070++actualRows13071++actualRows13072++actualRows13073++actualRows13074++actualRows13075++actualRows13076++actualRows13077++actualRows13078++actualRows13079++actualRows13080++actualRows13081++actualRows13082++actualRows13083++actualRows13084++actualRows13085++actualRows13086++actualRows13087
def partOps202 : List WordIR.Op := [.bxor 13002 13023,.literal (BitVec.ofNat 32 3),.bxor 442 13025,.literal (BitVec.ofNat 32 0),.bnot 13027,.band 13026 13028,.literal (BitVec.ofNat 32 3),.bxor 442 13030,.literal (BitVec.ofNat 32 0),.bnot 13032,.bxor 13031 13033,.literal (BitVec.ofNat 32 3),.bxor 442 13035,.literal (BitVec.ofNat 32 0),.bnot 13037,.badd 13036 13038,.bnot 13039,.band 13034 13040,.bxor 13029 13041,.shr 13042 31,.literal (BitVec.ofNat 32 1),.bxor 13043 13044,.bxor 13024 13045,.literal (BitVec.ofNat 32 1),.badd 0 13047,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13049 13050,.band 13051 10901,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13053 13054,.bnot 13055,.band 13056 2,.bxor 13052 13057,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13059 13060,.band 13061 11369,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13063 13064,.bnot 13065,.band 13066 55,.bxor 13062 13067,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13069 13070,.band 13071 11421,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13073 13074,.bnot 13075,.band 13076 56,.bxor 13072 13077,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13079 13080,.band 13081 11473,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13083 13084,.bnot 13085,.band 13086 57]
theorem partExact202 : partRows202=WordField.rows actualModulus 13024 partOps202 := by
  simp only [partRows202,partOps202,WordField.rows,rows13024,rows13025,rows13026,rows13027,rows13028,rows13029,rows13030,rows13031,rows13032,rows13033,rows13034,rows13035,rows13036,rows13037,rows13038,rows13039,rows13040,rows13041,rows13042,rows13043,rows13044,rows13045,rows13046,rows13047,rows13048,rows13049,rows13050,rows13051,rows13052,rows13053,rows13054,rows13055,rows13056,rows13057,rows13058,rows13059,rows13060,rows13061,rows13062,rows13063,rows13064,rows13065,rows13066,rows13067,rows13068,rows13069,rows13070,rows13071,rows13072,rows13073,rows13074,rows13075,rows13076,rows13077,rows13078,rows13079,rows13080,rows13081,rows13082,rows13083,rows13084,rows13085,rows13086,rows13087,List.append_assoc,List.append_nil]
theorem partLength202 : partOps202.length=64 := by decide
theorem partStats202 : partRows202.length=2186 ∧ MatrixRowBlocks.rowsWeight partRows202=336408 := by
  simp only [partRows202,List.length_append,MatrixRowBlocks.rows_weight_append,stats13024.1,stats13024.2,stats13025.1,stats13025.2,stats13026.1,stats13026.2,stats13027.1,stats13027.2,stats13028.1,stats13028.2,stats13029.1,stats13029.2,stats13030.1,stats13030.2,stats13031.1,stats13031.2,stats13032.1,stats13032.2,stats13033.1,stats13033.2,stats13034.1,stats13034.2,stats13035.1,stats13035.2,stats13036.1,stats13036.2,stats13037.1,stats13037.2,stats13038.1,stats13038.2,stats13039.1,stats13039.2,stats13040.1,stats13040.2,stats13041.1,stats13041.2,stats13042.1,stats13042.2,stats13043.1,stats13043.2,stats13044.1,stats13044.2,stats13045.1,stats13045.2,stats13046.1,stats13046.2,stats13047.1,stats13047.2,stats13048.1,stats13048.2,stats13049.1,stats13049.2,stats13050.1,stats13050.2,stats13051.1,stats13051.2,stats13052.1,stats13052.2,stats13053.1,stats13053.2,stats13054.1,stats13054.2,stats13055.1,stats13055.2,stats13056.1,stats13056.2,stats13057.1,stats13057.2,stats13058.1,stats13058.2,stats13059.1,stats13059.2,stats13060.1,stats13060.2,stats13061.1,stats13061.2,stats13062.1,stats13062.2,stats13063.1,stats13063.2,stats13064.1,stats13064.2,stats13065.1,stats13065.2,stats13066.1,stats13066.2,stats13067.1,stats13067.2,stats13068.1,stats13068.2,stats13069.1,stats13069.2,stats13070.1,stats13070.2,stats13071.1,stats13071.2,stats13072.1,stats13072.2,stats13073.1,stats13073.2,stats13074.1,stats13074.2,stats13075.1,stats13075.2,stats13076.1,stats13076.2,stats13077.1,stats13077.2,stats13078.1,stats13078.2,stats13079.1,stats13079.2,stats13080.1,stats13080.2,stats13081.1,stats13081.2,stats13082.1,stats13082.2,stats13083.1,stats13083.2,stats13084.1,stats13084.2,stats13085.1,stats13085.2,stats13086.1,stats13086.2,stats13087.1,stats13087.2]
  decide
end PairedPathRoundCheckedRows
