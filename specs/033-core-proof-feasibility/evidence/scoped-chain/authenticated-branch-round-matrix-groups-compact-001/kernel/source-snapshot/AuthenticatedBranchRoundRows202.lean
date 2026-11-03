import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData203
import AuthenticatedBranchRoundInstructionMatrixData204
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13046 : actualRows13046=WordField.canonicalRows actualModulus 13046 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13046 : actualRows13046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13046=2964 := by core033_kernel_decide
theorem rows13047 : actualRows13047=WordField.canonicalRows actualModulus 13047 (.bxor 693 13046) := by core033_kernel_decide
theorem stats13047 : actualRows13047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13047=7428 := by core033_kernel_decide
theorem rows13048 : actualRows13048=WordField.canonicalRows actualModulus 13048 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13048 : actualRows13048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13048=2820 := by core033_kernel_decide
theorem rows13049 : actualRows13049=WordField.canonicalRows actualModulus 13049 (.bnot 13048) := by core033_kernel_decide
theorem stats13049 : actualRows13049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13049=6276 := by core033_kernel_decide
theorem rows13050 : actualRows13050=WordField.canonicalRows actualModulus 13050 (.bxor 13047 13049) := by core033_kernel_decide
theorem stats13050 : actualRows13050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13050=7428 := by core033_kernel_decide
theorem rows13051 : actualRows13051=WordField.canonicalRows actualModulus 13051 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13051 : actualRows13051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13051=2964 := by core033_kernel_decide
theorem rows13052 : actualRows13052=WordField.canonicalRows actualModulus 13052 (.bxor 693 13051) := by core033_kernel_decide
theorem stats13052 : actualRows13052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13052=7428 := by core033_kernel_decide
theorem rows13053 : actualRows13053=WordField.canonicalRows actualModulus 13053 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13053 : actualRows13053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13053=2820 := by core033_kernel_decide
theorem rows13054 : actualRows13054=WordField.canonicalRows actualModulus 13054 (.bnot 13053) := by core033_kernel_decide
theorem stats13054 : actualRows13054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13054=6276 := by core033_kernel_decide
theorem rows13055 : actualRows13055=WordField.canonicalRows actualModulus 13055 (.badd 13052 13054) := by core033_kernel_decide
theorem stats13055 : actualRows13055.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13055=5388 := by core033_kernel_decide
theorem rows13056 : actualRows13056=WordField.canonicalRows actualModulus 13056 (.bnot 13055) := by core033_kernel_decide
theorem stats13056 : actualRows13056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13056=6276 := by core033_kernel_decide
theorem rows13057 : actualRows13057=WordField.canonicalRows actualModulus 13057 (.band 13050 13056) := by core033_kernel_decide
theorem stats13057 : actualRows13057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13057=5124 := by core033_kernel_decide
theorem rows13058 : actualRows13058=WordField.canonicalRows actualModulus 13058 (.bxor 13045 13057) := by core033_kernel_decide
theorem stats13058 : actualRows13058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13058=7428 := by core033_kernel_decide
theorem rows13059 : actualRows13059=WordField.canonicalRows actualModulus 13059 (.shr 13058 31) := by core033_kernel_decide
theorem stats13059 : actualRows13059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13059=2892 := by core033_kernel_decide
theorem rows13060 : actualRows13060=WordField.canonicalRows actualModulus 13060 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13060 : actualRows13060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13060=2892 := by core033_kernel_decide
theorem rows13061 : actualRows13061=WordField.canonicalRows actualModulus 13061 (.bxor 13059 13060) := by core033_kernel_decide
theorem stats13061 : actualRows13061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13061=7428 := by core033_kernel_decide
theorem rows13062 : actualRows13062=WordField.canonicalRows actualModulus 13062 (.bnot 13061) := by core033_kernel_decide
theorem stats13062 : actualRows13062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13062=6276 := by core033_kernel_decide
theorem rows13063 : actualRows13063=WordField.canonicalRows actualModulus 13063 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13063 : actualRows13063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13063=2892 := by core033_kernel_decide
theorem rows13064 : actualRows13064=WordField.canonicalRows actualModulus 13064 (.badd 13062 13063) := by core033_kernel_decide
theorem stats13064 : actualRows13064.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13064=5388 := by core033_kernel_decide
theorem rows13065 : actualRows13065=WordField.canonicalRows actualModulus 13065 (.band 13064 11274) := by core033_kernel_decide
theorem stats13065 : actualRows13065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13065=5124 := by core033_kernel_decide
theorem rows13066 : actualRows13066=WordField.canonicalRows actualModulus 13066 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13066 : actualRows13066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13066=2964 := by core033_kernel_decide
theorem rows13067 : actualRows13067=WordField.canonicalRows actualModulus 13067 (.bxor 693 13066) := by core033_kernel_decide
theorem stats13067 : actualRows13067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13067=7428 := by core033_kernel_decide
theorem rows13068 : actualRows13068=WordField.canonicalRows actualModulus 13068 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13068 : actualRows13068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13068=2820 := by core033_kernel_decide
theorem rows13069 : actualRows13069=WordField.canonicalRows actualModulus 13069 (.bnot 13068) := by core033_kernel_decide
theorem stats13069 : actualRows13069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13069=6276 := by core033_kernel_decide
theorem rows13070 : actualRows13070=WordField.canonicalRows actualModulus 13070 (.band 13067 13069) := by core033_kernel_decide
theorem stats13070 : actualRows13070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13070=5124 := by core033_kernel_decide
theorem rows13071 : actualRows13071=WordField.canonicalRows actualModulus 13071 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13071 : actualRows13071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13071=2964 := by core033_kernel_decide
theorem rows13072 : actualRows13072=WordField.canonicalRows actualModulus 13072 (.bxor 693 13071) := by core033_kernel_decide
theorem stats13072 : actualRows13072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13072=7428 := by core033_kernel_decide
theorem rows13073 : actualRows13073=WordField.canonicalRows actualModulus 13073 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13073 : actualRows13073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13073=2820 := by core033_kernel_decide
theorem rows13074 : actualRows13074=WordField.canonicalRows actualModulus 13074 (.bnot 13073) := by core033_kernel_decide
theorem stats13074 : actualRows13074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13074=6276 := by core033_kernel_decide
theorem rows13075 : actualRows13075=WordField.canonicalRows actualModulus 13075 (.bxor 13072 13074) := by core033_kernel_decide
theorem stats13075 : actualRows13075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13075=7428 := by core033_kernel_decide
theorem rows13076 : actualRows13076=WordField.canonicalRows actualModulus 13076 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13076 : actualRows13076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13076=2964 := by core033_kernel_decide
theorem rows13077 : actualRows13077=WordField.canonicalRows actualModulus 13077 (.bxor 693 13076) := by core033_kernel_decide
theorem stats13077 : actualRows13077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13077=7428 := by core033_kernel_decide
theorem rows13078 : actualRows13078=WordField.canonicalRows actualModulus 13078 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13078 : actualRows13078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13078=2820 := by core033_kernel_decide
theorem rows13079 : actualRows13079=WordField.canonicalRows actualModulus 13079 (.bnot 13078) := by core033_kernel_decide
theorem stats13079 : actualRows13079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13079=6276 := by core033_kernel_decide
theorem rows13080 : actualRows13080=WordField.canonicalRows actualModulus 13080 (.badd 13077 13079) := by core033_kernel_decide
theorem stats13080 : actualRows13080.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13080=5388 := by core033_kernel_decide
theorem rows13081 : actualRows13081=WordField.canonicalRows actualModulus 13081 (.bnot 13080) := by core033_kernel_decide
theorem stats13081 : actualRows13081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13081=6276 := by core033_kernel_decide
theorem rows13082 : actualRows13082=WordField.canonicalRows actualModulus 13082 (.band 13075 13081) := by core033_kernel_decide
theorem stats13082 : actualRows13082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13082=5124 := by core033_kernel_decide
theorem rows13083 : actualRows13083=WordField.canonicalRows actualModulus 13083 (.bxor 13070 13082) := by core033_kernel_decide
theorem stats13083 : actualRows13083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13083=7428 := by core033_kernel_decide
theorem rows13084 : actualRows13084=WordField.canonicalRows actualModulus 13084 (.shr 13083 31) := by core033_kernel_decide
theorem stats13084 : actualRows13084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13084=2892 := by core033_kernel_decide
theorem rows13085 : actualRows13085=WordField.canonicalRows actualModulus 13085 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13085 : actualRows13085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13085=2892 := by core033_kernel_decide
theorem rows13086 : actualRows13086=WordField.canonicalRows actualModulus 13086 (.bxor 13084 13085) := by core033_kernel_decide
theorem stats13086 : actualRows13086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13086=7428 := by core033_kernel_decide
theorem rows13087 : actualRows13087=WordField.canonicalRows actualModulus 13087 (.bnot 13086) := by core033_kernel_decide
theorem stats13087 : actualRows13087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13087=6276 := by core033_kernel_decide
theorem rows13088 : actualRows13088=WordField.canonicalRows actualModulus 13088 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13088 : actualRows13088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13088=2892 := by core033_kernel_decide
theorem rows13089 : actualRows13089=WordField.canonicalRows actualModulus 13089 (.badd 13087 13088) := by core033_kernel_decide
theorem stats13089 : actualRows13089.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13089=5388 := by core033_kernel_decide
theorem rows13090 : actualRows13090=WordField.canonicalRows actualModulus 13090 (.bnot 13089) := by core033_kernel_decide
theorem stats13090 : actualRows13090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13090=6276 := by core033_kernel_decide
theorem rows13091 : actualRows13091=WordField.canonicalRows actualModulus 13091 (.band 13090 1640) := by core033_kernel_decide
theorem stats13091 : actualRows13091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13091=5124 := by core033_kernel_decide
theorem rows13092 : actualRows13092=WordField.canonicalRows actualModulus 13092 (.bxor 13065 13091) := by core033_kernel_decide
theorem stats13092 : actualRows13092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13092=7428 := by core033_kernel_decide
theorem rows13093 : actualRows13093=WordField.canonicalRows actualModulus 13093 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13093 : actualRows13093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13093=2964 := by core033_kernel_decide
theorem rows13094 : actualRows13094=WordField.canonicalRows actualModulus 13094 (.bxor 693 13093) := by core033_kernel_decide
theorem stats13094 : actualRows13094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13094=7428 := by core033_kernel_decide
theorem rows13095 : actualRows13095=WordField.canonicalRows actualModulus 13095 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13095 : actualRows13095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13095=2820 := by core033_kernel_decide
theorem rows13096 : actualRows13096=WordField.canonicalRows actualModulus 13096 (.bnot 13095) := by core033_kernel_decide
theorem stats13096 : actualRows13096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13096=6276 := by core033_kernel_decide
theorem rows13097 : actualRows13097=WordField.canonicalRows actualModulus 13097 (.band 13094 13096) := by core033_kernel_decide
theorem stats13097 : actualRows13097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13097=5124 := by core033_kernel_decide
theorem rows13098 : actualRows13098=WordField.canonicalRows actualModulus 13098 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13098 : actualRows13098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13098=2964 := by core033_kernel_decide
theorem rows13099 : actualRows13099=WordField.canonicalRows actualModulus 13099 (.bxor 693 13098) := by core033_kernel_decide
theorem stats13099 : actualRows13099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13099=7428 := by core033_kernel_decide
theorem rows13100 : actualRows13100=WordField.canonicalRows actualModulus 13100 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13100 : actualRows13100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13100=2820 := by core033_kernel_decide
theorem rows13101 : actualRows13101=WordField.canonicalRows actualModulus 13101 (.bnot 13100) := by core033_kernel_decide
theorem stats13101 : actualRows13101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13101=6276 := by core033_kernel_decide
theorem rows13102 : actualRows13102=WordField.canonicalRows actualModulus 13102 (.bxor 13099 13101) := by core033_kernel_decide
theorem stats13102 : actualRows13102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13102=7428 := by core033_kernel_decide
theorem rows13103 : actualRows13103=WordField.canonicalRows actualModulus 13103 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13103 : actualRows13103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13103=2964 := by core033_kernel_decide
theorem rows13104 : actualRows13104=WordField.canonicalRows actualModulus 13104 (.bxor 693 13103) := by core033_kernel_decide
theorem stats13104 : actualRows13104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13104=7428 := by core033_kernel_decide
theorem rows13105 : actualRows13105=WordField.canonicalRows actualModulus 13105 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13105 : actualRows13105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13105=2820 := by core033_kernel_decide
theorem rows13106 : actualRows13106=WordField.canonicalRows actualModulus 13106 (.bnot 13105) := by core033_kernel_decide
theorem stats13106 : actualRows13106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13106=6276 := by core033_kernel_decide
theorem rows13107 : actualRows13107=WordField.canonicalRows actualModulus 13107 (.badd 13104 13106) := by core033_kernel_decide
theorem stats13107 : actualRows13107.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13107=5388 := by core033_kernel_decide
theorem rows13108 : actualRows13108=WordField.canonicalRows actualModulus 13108 (.bnot 13107) := by core033_kernel_decide
theorem stats13108 : actualRows13108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13108=6276 := by core033_kernel_decide
theorem rows13109 : actualRows13109=WordField.canonicalRows actualModulus 13109 (.band 13102 13108) := by core033_kernel_decide
theorem stats13109 : actualRows13109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13109=5124 := by core033_kernel_decide
def partRows202 : List R1CS.Row := actualRows13046++actualRows13047++actualRows13048++actualRows13049++actualRows13050++actualRows13051++actualRows13052++actualRows13053++actualRows13054++actualRows13055++actualRows13056++actualRows13057++actualRows13058++actualRows13059++actualRows13060++actualRows13061++actualRows13062++actualRows13063++actualRows13064++actualRows13065++actualRows13066++actualRows13067++actualRows13068++actualRows13069++actualRows13070++actualRows13071++actualRows13072++actualRows13073++actualRows13074++actualRows13075++actualRows13076++actualRows13077++actualRows13078++actualRows13079++actualRows13080++actualRows13081++actualRows13082++actualRows13083++actualRows13084++actualRows13085++actualRows13086++actualRows13087++actualRows13088++actualRows13089++actualRows13090++actualRows13091++actualRows13092++actualRows13093++actualRows13094++actualRows13095++actualRows13096++actualRows13097++actualRows13098++actualRows13099++actualRows13100++actualRows13101++actualRows13102++actualRows13103++actualRows13104++actualRows13105++actualRows13106++actualRows13107++actualRows13108++actualRows13109
def partOps202 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 693 13046,.literal (BitVec.ofNat 32 0),.bnot 13048,.bxor 13047 13049,.literal (BitVec.ofNat 32 3),.bxor 693 13051,.literal (BitVec.ofNat 32 0),.bnot 13053,.badd 13052 13054,.bnot 13055,.band 13050 13056,.bxor 13045 13057,.shr 13058 31,.literal (BitVec.ofNat 32 1),.bxor 13059 13060,.bnot 13061,.literal (BitVec.ofNat 32 1),.badd 13062 13063,.band 13064 11274,.literal (BitVec.ofNat 32 3),.bxor 693 13066,.literal (BitVec.ofNat 32 0),.bnot 13068,.band 13067 13069,.literal (BitVec.ofNat 32 3),.bxor 693 13071,.literal (BitVec.ofNat 32 0),.bnot 13073,.bxor 13072 13074,.literal (BitVec.ofNat 32 3),.bxor 693 13076,.literal (BitVec.ofNat 32 0),.bnot 13078,.badd 13077 13079,.bnot 13080,.band 13075 13081,.bxor 13070 13082,.shr 13083 31,.literal (BitVec.ofNat 32 1),.bxor 13084 13085,.bnot 13086,.literal (BitVec.ofNat 32 1),.badd 13087 13088,.bnot 13089,.band 13090 1640,.bxor 13065 13091,.literal (BitVec.ofNat 32 3),.bxor 693 13093,.literal (BitVec.ofNat 32 0),.bnot 13095,.band 13094 13096,.literal (BitVec.ofNat 32 3),.bxor 693 13098,.literal (BitVec.ofNat 32 0),.bnot 13100,.bxor 13099 13101,.literal (BitVec.ofNat 32 3),.bxor 693 13103,.literal (BitVec.ofNat 32 0),.bnot 13105,.badd 13104 13106,.bnot 13107,.band 13102 13108]
theorem partExact202 : partRows202=WordField.rows actualModulus 13046 partOps202 := by
  simp only [partRows202,partOps202,WordField.rows,rows13046,rows13047,rows13048,rows13049,rows13050,rows13051,rows13052,rows13053,rows13054,rows13055,rows13056,rows13057,rows13058,rows13059,rows13060,rows13061,rows13062,rows13063,rows13064,rows13065,rows13066,rows13067,rows13068,rows13069,rows13070,rows13071,rows13072,rows13073,rows13074,rows13075,rows13076,rows13077,rows13078,rows13079,rows13080,rows13081,rows13082,rows13083,rows13084,rows13085,rows13086,rows13087,rows13088,rows13089,rows13090,rows13091,rows13092,rows13093,rows13094,rows13095,rows13096,rows13097,rows13098,rows13099,rows13100,rows13101,rows13102,rows13103,rows13104,rows13105,rows13106,rows13107,rows13108,rows13109,List.append_assoc,List.append_nil]
theorem partLength202 : partOps202.length=64 := by decide
theorem partStats202 : partRows202.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows202=333144 := by
  simp only [partRows202,List.length_append,MatrixRowBlocks.rows_weight_append,stats13046.1,stats13046.2,stats13047.1,stats13047.2,stats13048.1,stats13048.2,stats13049.1,stats13049.2,stats13050.1,stats13050.2,stats13051.1,stats13051.2,stats13052.1,stats13052.2,stats13053.1,stats13053.2,stats13054.1,stats13054.2,stats13055.1,stats13055.2,stats13056.1,stats13056.2,stats13057.1,stats13057.2,stats13058.1,stats13058.2,stats13059.1,stats13059.2,stats13060.1,stats13060.2,stats13061.1,stats13061.2,stats13062.1,stats13062.2,stats13063.1,stats13063.2,stats13064.1,stats13064.2,stats13065.1,stats13065.2,stats13066.1,stats13066.2,stats13067.1,stats13067.2,stats13068.1,stats13068.2,stats13069.1,stats13069.2,stats13070.1,stats13070.2,stats13071.1,stats13071.2,stats13072.1,stats13072.2,stats13073.1,stats13073.2,stats13074.1,stats13074.2,stats13075.1,stats13075.2,stats13076.1,stats13076.2,stats13077.1,stats13077.2,stats13078.1,stats13078.2,stats13079.1,stats13079.2,stats13080.1,stats13080.2,stats13081.1,stats13081.2,stats13082.1,stats13082.2,stats13083.1,stats13083.2,stats13084.1,stats13084.2,stats13085.1,stats13085.2,stats13086.1,stats13086.2,stats13087.1,stats13087.2,stats13088.1,stats13088.2,stats13089.1,stats13089.2,stats13090.1,stats13090.2,stats13091.1,stats13091.2,stats13092.1,stats13092.2,stats13093.1,stats13093.2,stats13094.1,stats13094.2,stats13095.1,stats13095.2,stats13096.1,stats13096.2,stats13097.1,stats13097.2,stats13098.1,stats13098.2,stats13099.1,stats13099.2,stats13100.1,stats13100.2,stats13101.1,stats13101.2,stats13102.1,stats13102.2,stats13103.1,stats13103.2,stats13104.1,stats13104.2,stats13105.1,stats13105.2,stats13106.1,stats13106.2,stats13107.1,stats13107.2,stats13108.1,stats13108.2,stats13109.1,stats13109.2]
  decide
end AuthenticatedBranchRoundCheckedRows
