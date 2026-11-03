import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData46
import AuthenticatedBranchRoundInstructionMatrixData47
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2998 : actualRows2998=WordField.canonicalRows actualModulus 2998 (.bnot 2997) := by core033_kernel_decide
theorem stats2998 : actualRows2998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2998=6276 := by core033_kernel_decide
theorem rows2999 : actualRows2999=WordField.canonicalRows actualModulus 2999 (.bxor 2178 2998) := by core033_kernel_decide
theorem stats2999 : actualRows2999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2999=7428 := by core033_kernel_decide
theorem rows3000 : actualRows3000=WordField.canonicalRows actualModulus 3000 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3000 : actualRows3000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3000=2820 := by core033_kernel_decide
theorem rows3001 : actualRows3001=WordField.canonicalRows actualModulus 3001 (.bnot 3000) := by core033_kernel_decide
theorem stats3001 : actualRows3001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3001=6276 := by core033_kernel_decide
theorem rows3002 : actualRows3002=WordField.canonicalRows actualModulus 3002 (.badd 2178 3001) := by core033_kernel_decide
theorem stats3002 : actualRows3002.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3002=5388 := by core033_kernel_decide
theorem rows3003 : actualRows3003=WordField.canonicalRows actualModulus 3003 (.bnot 3002) := by core033_kernel_decide
theorem stats3003 : actualRows3003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3003=6276 := by core033_kernel_decide
theorem rows3004 : actualRows3004=WordField.canonicalRows actualModulus 3004 (.band 2999 3003) := by core033_kernel_decide
theorem stats3004 : actualRows3004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3004=5124 := by core033_kernel_decide
theorem rows3005 : actualRows3005=WordField.canonicalRows actualModulus 3005 (.bxor 2996 3004) := by core033_kernel_decide
theorem stats3005 : actualRows3005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3005=7428 := by core033_kernel_decide
theorem rows3006 : actualRows3006=WordField.canonicalRows actualModulus 3006 (.shr 3005 31) := by core033_kernel_decide
theorem stats3006 : actualRows3006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3006=2892 := by core033_kernel_decide
theorem rows3007 : actualRows3007=WordField.canonicalRows actualModulus 3007 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3007 : actualRows3007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3007=2892 := by core033_kernel_decide
theorem rows3008 : actualRows3008=WordField.canonicalRows actualModulus 3008 (.bxor 3006 3007) := by core033_kernel_decide
theorem stats3008 : actualRows3008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3008=7428 := by core033_kernel_decide
theorem rows3009 : actualRows3009=WordField.canonicalRows actualModulus 3009 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats3009 : actualRows3009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3009=2892 := by core033_kernel_decide
theorem rows3010 : actualRows3010=WordField.canonicalRows actualModulus 3010 (.bnot 3009) := by core033_kernel_decide
theorem stats3010 : actualRows3010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3010=6276 := by core033_kernel_decide
theorem rows3011 : actualRows3011=WordField.canonicalRows actualModulus 3011 (.band 2168 3010) := by core033_kernel_decide
theorem stats3011 : actualRows3011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3011=5124 := by core033_kernel_decide
theorem rows3012 : actualRows3012=WordField.canonicalRows actualModulus 3012 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats3012 : actualRows3012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3012=2892 := by core033_kernel_decide
theorem rows3013 : actualRows3013=WordField.canonicalRows actualModulus 3013 (.bnot 3012) := by core033_kernel_decide
theorem stats3013 : actualRows3013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3013=6276 := by core033_kernel_decide
theorem rows3014 : actualRows3014=WordField.canonicalRows actualModulus 3014 (.bxor 2168 3013) := by core033_kernel_decide
theorem stats3014 : actualRows3014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3014=7428 := by core033_kernel_decide
theorem rows3015 : actualRows3015=WordField.canonicalRows actualModulus 3015 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats3015 : actualRows3015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3015=2892 := by core033_kernel_decide
theorem rows3016 : actualRows3016=WordField.canonicalRows actualModulus 3016 (.bnot 3015) := by core033_kernel_decide
theorem stats3016 : actualRows3016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3016=6276 := by core033_kernel_decide
theorem rows3017 : actualRows3017=WordField.canonicalRows actualModulus 3017 (.badd 2168 3016) := by core033_kernel_decide
theorem stats3017 : actualRows3017.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3017=5388 := by core033_kernel_decide
theorem rows3018 : actualRows3018=WordField.canonicalRows actualModulus 3018 (.bnot 3017) := by core033_kernel_decide
theorem stats3018 : actualRows3018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3018=6276 := by core033_kernel_decide
theorem rows3019 : actualRows3019=WordField.canonicalRows actualModulus 3019 (.band 3014 3018) := by core033_kernel_decide
theorem stats3019 : actualRows3019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3019=5124 := by core033_kernel_decide
theorem rows3020 : actualRows3020=WordField.canonicalRows actualModulus 3020 (.bxor 3011 3019) := by core033_kernel_decide
theorem stats3020 : actualRows3020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3020=7428 := by core033_kernel_decide
theorem rows3021 : actualRows3021=WordField.canonicalRows actualModulus 3021 (.shr 3020 31) := by core033_kernel_decide
theorem stats3021 : actualRows3021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3021=2892 := by core033_kernel_decide
theorem rows3022 : actualRows3022=WordField.canonicalRows actualModulus 3022 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3022 : actualRows3022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3022=2892 := by core033_kernel_decide
theorem rows3023 : actualRows3023=WordField.canonicalRows actualModulus 3023 (.bxor 3021 3022) := by core033_kernel_decide
theorem stats3023 : actualRows3023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3023=7428 := by core033_kernel_decide
theorem rows3024 : actualRows3024=WordField.canonicalRows actualModulus 3024 (.band 3008 3023) := by core033_kernel_decide
theorem stats3024 : actualRows3024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3024=5124 := by core033_kernel_decide
theorem rows3025 : actualRows3025=WordField.canonicalRows actualModulus 3025 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3025 : actualRows3025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3025=2820 := by core033_kernel_decide
theorem rows3026 : actualRows3026=WordField.canonicalRows actualModulus 3026 (.bnot 3025) := by core033_kernel_decide
theorem stats3026 : actualRows3026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3026=6276 := by core033_kernel_decide
theorem rows3027 : actualRows3027=WordField.canonicalRows actualModulus 3027 (.band 2298 3026) := by core033_kernel_decide
theorem stats3027 : actualRows3027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3027=5124 := by core033_kernel_decide
theorem rows3028 : actualRows3028=WordField.canonicalRows actualModulus 3028 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3028 : actualRows3028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3028=2820 := by core033_kernel_decide
theorem rows3029 : actualRows3029=WordField.canonicalRows actualModulus 3029 (.bnot 3028) := by core033_kernel_decide
theorem stats3029 : actualRows3029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3029=6276 := by core033_kernel_decide
theorem rows3030 : actualRows3030=WordField.canonicalRows actualModulus 3030 (.bxor 2298 3029) := by core033_kernel_decide
theorem stats3030 : actualRows3030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3030=7428 := by core033_kernel_decide
theorem rows3031 : actualRows3031=WordField.canonicalRows actualModulus 3031 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3031 : actualRows3031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3031=2820 := by core033_kernel_decide
theorem rows3032 : actualRows3032=WordField.canonicalRows actualModulus 3032 (.bnot 3031) := by core033_kernel_decide
theorem stats3032 : actualRows3032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3032=6276 := by core033_kernel_decide
theorem rows3033 : actualRows3033=WordField.canonicalRows actualModulus 3033 (.badd 2298 3032) := by core033_kernel_decide
theorem stats3033 : actualRows3033.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3033=5388 := by core033_kernel_decide
theorem rows3034 : actualRows3034=WordField.canonicalRows actualModulus 3034 (.bnot 3033) := by core033_kernel_decide
theorem stats3034 : actualRows3034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3034=6276 := by core033_kernel_decide
theorem rows3035 : actualRows3035=WordField.canonicalRows actualModulus 3035 (.band 3030 3034) := by core033_kernel_decide
theorem stats3035 : actualRows3035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3035=5124 := by core033_kernel_decide
theorem rows3036 : actualRows3036=WordField.canonicalRows actualModulus 3036 (.bxor 3027 3035) := by core033_kernel_decide
theorem stats3036 : actualRows3036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3036=7428 := by core033_kernel_decide
theorem rows3037 : actualRows3037=WordField.canonicalRows actualModulus 3037 (.shr 3036 31) := by core033_kernel_decide
theorem stats3037 : actualRows3037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3037=2892 := by core033_kernel_decide
theorem rows3038 : actualRows3038=WordField.canonicalRows actualModulus 3038 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3038 : actualRows3038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3038=2892 := by core033_kernel_decide
theorem rows3039 : actualRows3039=WordField.canonicalRows actualModulus 3039 (.bxor 3037 3038) := by core033_kernel_decide
theorem stats3039 : actualRows3039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3039=7428 := by core033_kernel_decide
theorem rows3040 : actualRows3040=WordField.canonicalRows actualModulus 3040 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats3040 : actualRows3040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3040=2892 := by core033_kernel_decide
theorem rows3041 : actualRows3041=WordField.canonicalRows actualModulus 3041 (.bnot 3040) := by core033_kernel_decide
theorem stats3041 : actualRows3041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3041=6276 := by core033_kernel_decide
theorem rows3042 : actualRows3042=WordField.canonicalRows actualModulus 3042 (.band 2288 3041) := by core033_kernel_decide
theorem stats3042 : actualRows3042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3042=5124 := by core033_kernel_decide
theorem rows3043 : actualRows3043=WordField.canonicalRows actualModulus 3043 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats3043 : actualRows3043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3043=2892 := by core033_kernel_decide
theorem rows3044 : actualRows3044=WordField.canonicalRows actualModulus 3044 (.bnot 3043) := by core033_kernel_decide
theorem stats3044 : actualRows3044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3044=6276 := by core033_kernel_decide
theorem rows3045 : actualRows3045=WordField.canonicalRows actualModulus 3045 (.bxor 2288 3044) := by core033_kernel_decide
theorem stats3045 : actualRows3045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3045=7428 := by core033_kernel_decide
theorem rows3046 : actualRows3046=WordField.canonicalRows actualModulus 3046 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats3046 : actualRows3046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3046=2892 := by core033_kernel_decide
theorem rows3047 : actualRows3047=WordField.canonicalRows actualModulus 3047 (.bnot 3046) := by core033_kernel_decide
theorem stats3047 : actualRows3047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3047=6276 := by core033_kernel_decide
theorem rows3048 : actualRows3048=WordField.canonicalRows actualModulus 3048 (.badd 2288 3047) := by core033_kernel_decide
theorem stats3048 : actualRows3048.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3048=5388 := by core033_kernel_decide
theorem rows3049 : actualRows3049=WordField.canonicalRows actualModulus 3049 (.bnot 3048) := by core033_kernel_decide
theorem stats3049 : actualRows3049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3049=6276 := by core033_kernel_decide
theorem rows3050 : actualRows3050=WordField.canonicalRows actualModulus 3050 (.band 3045 3049) := by core033_kernel_decide
theorem stats3050 : actualRows3050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3050=5124 := by core033_kernel_decide
theorem rows3051 : actualRows3051=WordField.canonicalRows actualModulus 3051 (.bxor 3042 3050) := by core033_kernel_decide
theorem stats3051 : actualRows3051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3051=7428 := by core033_kernel_decide
theorem rows3052 : actualRows3052=WordField.canonicalRows actualModulus 3052 (.shr 3051 31) := by core033_kernel_decide
theorem stats3052 : actualRows3052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3052=2892 := by core033_kernel_decide
theorem rows3053 : actualRows3053=WordField.canonicalRows actualModulus 3053 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3053 : actualRows3053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3053=2892 := by core033_kernel_decide
theorem rows3054 : actualRows3054=WordField.canonicalRows actualModulus 3054 (.bxor 3052 3053) := by core033_kernel_decide
theorem stats3054 : actualRows3054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3054=7428 := by core033_kernel_decide
theorem rows3055 : actualRows3055=WordField.canonicalRows actualModulus 3055 (.band 3039 3054) := by core033_kernel_decide
theorem stats3055 : actualRows3055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3055=5124 := by core033_kernel_decide
theorem rows3056 : actualRows3056=WordField.canonicalRows actualModulus 3056 (.band 3024 3055) := by core033_kernel_decide
theorem stats3056 : actualRows3056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3056=5124 := by core033_kernel_decide
theorem rows3057 : actualRows3057=WordField.canonicalRows actualModulus 3057 (.badd 2178 2298) := by core033_kernel_decide
theorem stats3057 : actualRows3057.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3057=5388 := by core033_kernel_decide
theorem rows3058 : actualRows3058=WordField.canonicalRows actualModulus 3058 (.band 2168 2288) := by core033_kernel_decide
theorem stats3058 : actualRows3058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3058=5124 := by core033_kernel_decide
theorem rows3059 : actualRows3059=WordField.canonicalRows actualModulus 3059 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats3059 : actualRows3059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3059=7428 := by core033_kernel_decide
theorem rows3060 : actualRows3060=WordField.canonicalRows actualModulus 3060 (.badd 2168 2288) := by core033_kernel_decide
theorem stats3060 : actualRows3060.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3060=5388 := by core033_kernel_decide
theorem rows3061 : actualRows3061=WordField.canonicalRows actualModulus 3061 (.bnot 3060) := by core033_kernel_decide
theorem stats3061 : actualRows3061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3061=6276 := by core033_kernel_decide
def partRows45 : List R1CS.Row := actualRows2998++actualRows2999++actualRows3000++actualRows3001++actualRows3002++actualRows3003++actualRows3004++actualRows3005++actualRows3006++actualRows3007++actualRows3008++actualRows3009++actualRows3010++actualRows3011++actualRows3012++actualRows3013++actualRows3014++actualRows3015++actualRows3016++actualRows3017++actualRows3018++actualRows3019++actualRows3020++actualRows3021++actualRows3022++actualRows3023++actualRows3024++actualRows3025++actualRows3026++actualRows3027++actualRows3028++actualRows3029++actualRows3030++actualRows3031++actualRows3032++actualRows3033++actualRows3034++actualRows3035++actualRows3036++actualRows3037++actualRows3038++actualRows3039++actualRows3040++actualRows3041++actualRows3042++actualRows3043++actualRows3044++actualRows3045++actualRows3046++actualRows3047++actualRows3048++actualRows3049++actualRows3050++actualRows3051++actualRows3052++actualRows3053++actualRows3054++actualRows3055++actualRows3056++actualRows3057++actualRows3058++actualRows3059++actualRows3060++actualRows3061
def partOps45 : List WordIR.Op := [.bnot 2997,.bxor 2178 2998,.literal (BitVec.ofNat 32 0),.bnot 3000,.badd 2178 3001,.bnot 3002,.band 2999 3003,.bxor 2996 3004,.shr 3005 31,.literal (BitVec.ofNat 32 1),.bxor 3006 3007,.literal (BitVec.ofNat 32 1048576),.bnot 3009,.band 2168 3010,.literal (BitVec.ofNat 32 1048576),.bnot 3012,.bxor 2168 3013,.literal (BitVec.ofNat 32 1048576),.bnot 3015,.badd 2168 3016,.bnot 3017,.band 3014 3018,.bxor 3011 3019,.shr 3020 31,.literal (BitVec.ofNat 32 1),.bxor 3021 3022,.band 3008 3023,.literal (BitVec.ofNat 32 0),.bnot 3025,.band 2298 3026,.literal (BitVec.ofNat 32 0),.bnot 3028,.bxor 2298 3029,.literal (BitVec.ofNat 32 0),.bnot 3031,.badd 2298 3032,.bnot 3033,.band 3030 3034,.bxor 3027 3035,.shr 3036 31,.literal (BitVec.ofNat 32 1),.bxor 3037 3038,.literal (BitVec.ofNat 32 1048576),.bnot 3040,.band 2288 3041,.literal (BitVec.ofNat 32 1048576),.bnot 3043,.bxor 2288 3044,.literal (BitVec.ofNat 32 1048576),.bnot 3046,.badd 2288 3047,.bnot 3048,.band 3045 3049,.bxor 3042 3050,.shr 3051 31,.literal (BitVec.ofNat 32 1),.bxor 3052 3053,.band 3039 3054,.band 3024 3055,.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 3060]
theorem partExact45 : partRows45=WordField.rows actualModulus 2998 partOps45 := by
  simp only [partRows45,partOps45,WordField.rows,rows2998,rows2999,rows3000,rows3001,rows3002,rows3003,rows3004,rows3005,rows3006,rows3007,rows3008,rows3009,rows3010,rows3011,rows3012,rows3013,rows3014,rows3015,rows3016,rows3017,rows3018,rows3019,rows3020,rows3021,rows3022,rows3023,rows3024,rows3025,rows3026,rows3027,rows3028,rows3029,rows3030,rows3031,rows3032,rows3033,rows3034,rows3035,rows3036,rows3037,rows3038,rows3039,rows3040,rows3041,rows3042,rows3043,rows3044,rows3045,rows3046,rows3047,rows3048,rows3049,rows3050,rows3051,rows3052,rows3053,rows3054,rows3055,rows3056,rows3057,rows3058,rows3059,rows3060,rows3061,List.append_assoc,List.append_nil]
theorem partLength45 : partOps45.length=64 := by decide
theorem partStats45 : partRows45.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows45=337440 := by
  simp only [partRows45,List.length_append,MatrixRowBlocks.rows_weight_append,stats2998.1,stats2998.2,stats2999.1,stats2999.2,stats3000.1,stats3000.2,stats3001.1,stats3001.2,stats3002.1,stats3002.2,stats3003.1,stats3003.2,stats3004.1,stats3004.2,stats3005.1,stats3005.2,stats3006.1,stats3006.2,stats3007.1,stats3007.2,stats3008.1,stats3008.2,stats3009.1,stats3009.2,stats3010.1,stats3010.2,stats3011.1,stats3011.2,stats3012.1,stats3012.2,stats3013.1,stats3013.2,stats3014.1,stats3014.2,stats3015.1,stats3015.2,stats3016.1,stats3016.2,stats3017.1,stats3017.2,stats3018.1,stats3018.2,stats3019.1,stats3019.2,stats3020.1,stats3020.2,stats3021.1,stats3021.2,stats3022.1,stats3022.2,stats3023.1,stats3023.2,stats3024.1,stats3024.2,stats3025.1,stats3025.2,stats3026.1,stats3026.2,stats3027.1,stats3027.2,stats3028.1,stats3028.2,stats3029.1,stats3029.2,stats3030.1,stats3030.2,stats3031.1,stats3031.2,stats3032.1,stats3032.2,stats3033.1,stats3033.2,stats3034.1,stats3034.2,stats3035.1,stats3035.2,stats3036.1,stats3036.2,stats3037.1,stats3037.2,stats3038.1,stats3038.2,stats3039.1,stats3039.2,stats3040.1,stats3040.2,stats3041.1,stats3041.2,stats3042.1,stats3042.2,stats3043.1,stats3043.2,stats3044.1,stats3044.2,stats3045.1,stats3045.2,stats3046.1,stats3046.2,stats3047.1,stats3047.2,stats3048.1,stats3048.2,stats3049.1,stats3049.2,stats3050.1,stats3050.2,stats3051.1,stats3051.2,stats3052.1,stats3052.2,stats3053.1,stats3053.2,stats3054.1,stats3054.2,stats3055.1,stats3055.2,stats3056.1,stats3056.2,stats3057.1,stats3057.2,stats3058.1,stats3058.2,stats3059.1,stats3059.2,stats3060.1,stats3060.2,stats3061.1,stats3061.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
