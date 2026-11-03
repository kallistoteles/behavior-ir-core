import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData47
import HashBlockInstructionMatrixData48
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3016 : actualRows3016=WordField.canonicalRows actualModulus 3016 (.band 2995 2968) := by core033_kernel_decide
theorem stats3016 : actualRows3016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3016=5124 := by core033_kernel_decide
theorem rows3017 : actualRows3017=WordField.canonicalRows actualModulus 3017 (.band 2995 2941) := by core033_kernel_decide
theorem stats3017 : actualRows3017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3017=5124 := by core033_kernel_decide
theorem rows3018 : actualRows3018=WordField.canonicalRows actualModulus 3018 (.bxor 3016 3017) := by core033_kernel_decide
theorem stats3018 : actualRows3018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3018=7428 := by core033_kernel_decide
theorem rows3019 : actualRows3019=WordField.canonicalRows actualModulus 3019 (.band 2968 2941) := by core033_kernel_decide
theorem stats3019 : actualRows3019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3019=5124 := by core033_kernel_decide
theorem rows3020 : actualRows3020=WordField.canonicalRows actualModulus 3020 (.bxor 3018 3019) := by core033_kernel_decide
theorem stats3020 : actualRows3020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3020=7428 := by core033_kernel_decide
theorem rows3021 : actualRows3021=WordField.canonicalRows actualModulus 3021 (.badd 3015 3020) := by core033_kernel_decide
theorem stats3021 : actualRows3021.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3021=5388 := by core033_kernel_decide
theorem rows3022 : actualRows3022=WordField.canonicalRows actualModulus 3022 (.badd 3010 3021) := by core033_kernel_decide
theorem stats3022 : actualRows3022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3022=5388 := by core033_kernel_decide
theorem rows3023 : actualRows3023=WordField.canonicalRows actualModulus 3023 (.badd 2914 3010) := by core033_kernel_decide
theorem stats3023 : actualRows3023.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3023=5388 := by core033_kernel_decide
theorem rows3024 : actualRows3024=WordField.canonicalRows actualModulus 3024 (.rotr 3023 6) := by core033_kernel_decide
theorem stats3024 : actualRows3024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3024=5124 := by core033_kernel_decide
theorem rows3025 : actualRows3025=WordField.canonicalRows actualModulus 3025 (.rotr 3023 11) := by core033_kernel_decide
theorem stats3025 : actualRows3025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3025=5124 := by core033_kernel_decide
theorem rows3026 : actualRows3026=WordField.canonicalRows actualModulus 3026 (.bxor 3024 3025) := by core033_kernel_decide
theorem stats3026 : actualRows3026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3026=7428 := by core033_kernel_decide
theorem rows3027 : actualRows3027=WordField.canonicalRows actualModulus 3027 (.rotr 3023 25) := by core033_kernel_decide
theorem stats3027 : actualRows3027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3027=5124 := by core033_kernel_decide
theorem rows3028 : actualRows3028=WordField.canonicalRows actualModulus 3028 (.bxor 3026 3027) := by core033_kernel_decide
theorem stats3028 : actualRows3028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3028=7428 := by core033_kernel_decide
theorem rows3029 : actualRows3029=WordField.canonicalRows actualModulus 3029 (.badd 2942 3028) := by core033_kernel_decide
theorem stats3029 : actualRows3029.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3029=5388 := by core033_kernel_decide
theorem rows3030 : actualRows3030=WordField.canonicalRows actualModulus 3030 (.band 3023 2996) := by core033_kernel_decide
theorem stats3030 : actualRows3030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3030=5124 := by core033_kernel_decide
theorem rows3031 : actualRows3031=WordField.canonicalRows actualModulus 3031 (.bnot 3023) := by core033_kernel_decide
theorem stats3031 : actualRows3031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3031=6276 := by core033_kernel_decide
theorem rows3032 : actualRows3032=WordField.canonicalRows actualModulus 3032 (.band 3031 2969) := by core033_kernel_decide
theorem stats3032 : actualRows3032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3032=5124 := by core033_kernel_decide
theorem rows3033 : actualRows3033=WordField.canonicalRows actualModulus 3033 (.bxor 3030 3032) := by core033_kernel_decide
theorem stats3033 : actualRows3033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3033=7428 := by core033_kernel_decide
theorem rows3034 : actualRows3034=WordField.canonicalRows actualModulus 3034 (.badd 3029 3033) := by core033_kernel_decide
theorem stats3034 : actualRows3034.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3034=5388 := by core033_kernel_decide
theorem rows3035 : actualRows3035=WordField.canonicalRows actualModulus 3035 (.literal (BitVec.ofNat 32 2730485921)) := by core033_kernel_decide
theorem stats3035 : actualRows3035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3035=4044 := by core033_kernel_decide
theorem rows3036 : actualRows3036=WordField.canonicalRows actualModulus 3036 (.badd 3034 3035) := by core033_kernel_decide
theorem stats3036 : actualRows3036.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3036=5388 := by core033_kernel_decide
theorem rows3037 : actualRows3037=WordField.canonicalRows actualModulus 3037 (.badd 3036 1644) := by core033_kernel_decide
theorem stats3037 : actualRows3037.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3037=5388 := by core033_kernel_decide
theorem rows3038 : actualRows3038=WordField.canonicalRows actualModulus 3038 (.rotr 3022 2) := by core033_kernel_decide
theorem stats3038 : actualRows3038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3038=5124 := by core033_kernel_decide
theorem rows3039 : actualRows3039=WordField.canonicalRows actualModulus 3039 (.rotr 3022 13) := by core033_kernel_decide
theorem stats3039 : actualRows3039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3039=5124 := by core033_kernel_decide
theorem rows3040 : actualRows3040=WordField.canonicalRows actualModulus 3040 (.bxor 3038 3039) := by core033_kernel_decide
theorem stats3040 : actualRows3040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3040=7428 := by core033_kernel_decide
theorem rows3041 : actualRows3041=WordField.canonicalRows actualModulus 3041 (.rotr 3022 22) := by core033_kernel_decide
theorem stats3041 : actualRows3041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3041=5124 := by core033_kernel_decide
theorem rows3042 : actualRows3042=WordField.canonicalRows actualModulus 3042 (.bxor 3040 3041) := by core033_kernel_decide
theorem stats3042 : actualRows3042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3042=7428 := by core033_kernel_decide
theorem rows3043 : actualRows3043=WordField.canonicalRows actualModulus 3043 (.band 3022 2995) := by core033_kernel_decide
theorem stats3043 : actualRows3043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3043=5124 := by core033_kernel_decide
theorem rows3044 : actualRows3044=WordField.canonicalRows actualModulus 3044 (.band 3022 2968) := by core033_kernel_decide
theorem stats3044 : actualRows3044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3044=5124 := by core033_kernel_decide
theorem rows3045 : actualRows3045=WordField.canonicalRows actualModulus 3045 (.bxor 3043 3044) := by core033_kernel_decide
theorem stats3045 : actualRows3045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3045=7428 := by core033_kernel_decide
theorem rows3046 : actualRows3046=WordField.canonicalRows actualModulus 3046 (.band 2995 2968) := by core033_kernel_decide
theorem stats3046 : actualRows3046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3046=5124 := by core033_kernel_decide
theorem rows3047 : actualRows3047=WordField.canonicalRows actualModulus 3047 (.bxor 3045 3046) := by core033_kernel_decide
theorem stats3047 : actualRows3047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3047=7428 := by core033_kernel_decide
theorem rows3048 : actualRows3048=WordField.canonicalRows actualModulus 3048 (.badd 3042 3047) := by core033_kernel_decide
theorem stats3048 : actualRows3048.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3048=5388 := by core033_kernel_decide
theorem rows3049 : actualRows3049=WordField.canonicalRows actualModulus 3049 (.badd 3037 3048) := by core033_kernel_decide
theorem stats3049 : actualRows3049.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3049=5388 := by core033_kernel_decide
theorem rows3050 : actualRows3050=WordField.canonicalRows actualModulus 3050 (.badd 2941 3037) := by core033_kernel_decide
theorem stats3050 : actualRows3050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3050=5388 := by core033_kernel_decide
theorem rows3051 : actualRows3051=WordField.canonicalRows actualModulus 3051 (.rotr 3050 6) := by core033_kernel_decide
theorem stats3051 : actualRows3051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3051=5124 := by core033_kernel_decide
theorem rows3052 : actualRows3052=WordField.canonicalRows actualModulus 3052 (.rotr 3050 11) := by core033_kernel_decide
theorem stats3052 : actualRows3052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3052=5124 := by core033_kernel_decide
theorem rows3053 : actualRows3053=WordField.canonicalRows actualModulus 3053 (.bxor 3051 3052) := by core033_kernel_decide
theorem stats3053 : actualRows3053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3053=7428 := by core033_kernel_decide
theorem rows3054 : actualRows3054=WordField.canonicalRows actualModulus 3054 (.rotr 3050 25) := by core033_kernel_decide
theorem stats3054 : actualRows3054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3054=5124 := by core033_kernel_decide
theorem rows3055 : actualRows3055=WordField.canonicalRows actualModulus 3055 (.bxor 3053 3054) := by core033_kernel_decide
theorem stats3055 : actualRows3055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3055=7428 := by core033_kernel_decide
theorem rows3056 : actualRows3056=WordField.canonicalRows actualModulus 3056 (.badd 2969 3055) := by core033_kernel_decide
theorem stats3056 : actualRows3056.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3056=5388 := by core033_kernel_decide
theorem rows3057 : actualRows3057=WordField.canonicalRows actualModulus 3057 (.band 3050 3023) := by core033_kernel_decide
theorem stats3057 : actualRows3057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3057=5124 := by core033_kernel_decide
theorem rows3058 : actualRows3058=WordField.canonicalRows actualModulus 3058 (.bnot 3050) := by core033_kernel_decide
theorem stats3058 : actualRows3058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3058=6276 := by core033_kernel_decide
theorem rows3059 : actualRows3059=WordField.canonicalRows actualModulus 3059 (.band 3058 2996) := by core033_kernel_decide
theorem stats3059 : actualRows3059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3059=5124 := by core033_kernel_decide
theorem rows3060 : actualRows3060=WordField.canonicalRows actualModulus 3060 (.bxor 3057 3059) := by core033_kernel_decide
theorem stats3060 : actualRows3060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3060=7428 := by core033_kernel_decide
theorem rows3061 : actualRows3061=WordField.canonicalRows actualModulus 3061 (.badd 3056 3060) := by core033_kernel_decide
theorem stats3061 : actualRows3061.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3061=5388 := by core033_kernel_decide
theorem rows3062 : actualRows3062=WordField.canonicalRows actualModulus 3062 (.literal (BitVec.ofNat 32 2820302411)) := by core033_kernel_decide
theorem stats3062 : actualRows3062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3062=3828 := by core033_kernel_decide
theorem rows3063 : actualRows3063=WordField.canonicalRows actualModulus 3063 (.badd 3061 3062) := by core033_kernel_decide
theorem stats3063 : actualRows3063.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3063=5388 := by core033_kernel_decide
theorem rows3064 : actualRows3064=WordField.canonicalRows actualModulus 3064 (.badd 3063 1657) := by core033_kernel_decide
theorem stats3064 : actualRows3064.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3064=5388 := by core033_kernel_decide
theorem rows3065 : actualRows3065=WordField.canonicalRows actualModulus 3065 (.rotr 3049 2) := by core033_kernel_decide
theorem stats3065 : actualRows3065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3065=5124 := by core033_kernel_decide
theorem rows3066 : actualRows3066=WordField.canonicalRows actualModulus 3066 (.rotr 3049 13) := by core033_kernel_decide
theorem stats3066 : actualRows3066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3066=5124 := by core033_kernel_decide
theorem rows3067 : actualRows3067=WordField.canonicalRows actualModulus 3067 (.bxor 3065 3066) := by core033_kernel_decide
theorem stats3067 : actualRows3067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3067=7428 := by core033_kernel_decide
theorem rows3068 : actualRows3068=WordField.canonicalRows actualModulus 3068 (.rotr 3049 22) := by core033_kernel_decide
theorem stats3068 : actualRows3068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3068=5124 := by core033_kernel_decide
theorem rows3069 : actualRows3069=WordField.canonicalRows actualModulus 3069 (.bxor 3067 3068) := by core033_kernel_decide
theorem stats3069 : actualRows3069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3069=7428 := by core033_kernel_decide
theorem rows3070 : actualRows3070=WordField.canonicalRows actualModulus 3070 (.band 3049 3022) := by core033_kernel_decide
theorem stats3070 : actualRows3070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3070=5124 := by core033_kernel_decide
theorem rows3071 : actualRows3071=WordField.canonicalRows actualModulus 3071 (.band 3049 2995) := by core033_kernel_decide
theorem stats3071 : actualRows3071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3071=5124 := by core033_kernel_decide
theorem rows3072 : actualRows3072=WordField.canonicalRows actualModulus 3072 (.bxor 3070 3071) := by core033_kernel_decide
theorem stats3072 : actualRows3072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3072=7428 := by core033_kernel_decide
theorem rows3073 : actualRows3073=WordField.canonicalRows actualModulus 3073 (.band 3022 2995) := by core033_kernel_decide
theorem stats3073 : actualRows3073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3073=5124 := by core033_kernel_decide
theorem rows3074 : actualRows3074=WordField.canonicalRows actualModulus 3074 (.bxor 3072 3073) := by core033_kernel_decide
theorem stats3074 : actualRows3074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3074=7428 := by core033_kernel_decide
theorem rows3075 : actualRows3075=WordField.canonicalRows actualModulus 3075 (.badd 3069 3074) := by core033_kernel_decide
theorem stats3075 : actualRows3075.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3075=5388 := by core033_kernel_decide
theorem rows3076 : actualRows3076=WordField.canonicalRows actualModulus 3076 (.badd 3064 3075) := by core033_kernel_decide
theorem stats3076 : actualRows3076.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3076=5388 := by core033_kernel_decide
theorem rows3077 : actualRows3077=WordField.canonicalRows actualModulus 3077 (.badd 2968 3064) := by core033_kernel_decide
theorem stats3077 : actualRows3077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3077=5388 := by core033_kernel_decide
theorem rows3078 : actualRows3078=WordField.canonicalRows actualModulus 3078 (.rotr 3077 6) := by core033_kernel_decide
theorem stats3078 : actualRows3078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3078=5124 := by core033_kernel_decide
theorem rows3079 : actualRows3079=WordField.canonicalRows actualModulus 3079 (.rotr 3077 11) := by core033_kernel_decide
theorem stats3079 : actualRows3079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3079=5124 := by core033_kernel_decide
def partRows46 : List R1CS.Row := actualRows3016++actualRows3017++actualRows3018++actualRows3019++actualRows3020++actualRows3021++actualRows3022++actualRows3023++actualRows3024++actualRows3025++actualRows3026++actualRows3027++actualRows3028++actualRows3029++actualRows3030++actualRows3031++actualRows3032++actualRows3033++actualRows3034++actualRows3035++actualRows3036++actualRows3037++actualRows3038++actualRows3039++actualRows3040++actualRows3041++actualRows3042++actualRows3043++actualRows3044++actualRows3045++actualRows3046++actualRows3047++actualRows3048++actualRows3049++actualRows3050++actualRows3051++actualRows3052++actualRows3053++actualRows3054++actualRows3055++actualRows3056++actualRows3057++actualRows3058++actualRows3059++actualRows3060++actualRows3061++actualRows3062++actualRows3063++actualRows3064++actualRows3065++actualRows3066++actualRows3067++actualRows3068++actualRows3069++actualRows3070++actualRows3071++actualRows3072++actualRows3073++actualRows3074++actualRows3075++actualRows3076++actualRows3077++actualRows3078++actualRows3079
def partOps46 : List WordIR.Op := [.band 2995 2968,.band 2995 2941,.bxor 3016 3017,.band 2968 2941,.bxor 3018 3019,.badd 3015 3020,.badd 3010 3021,.badd 2914 3010,.rotr 3023 6,.rotr 3023 11,.bxor 3024 3025,.rotr 3023 25,.bxor 3026 3027,.badd 2942 3028,.band 3023 2996,.bnot 3023,.band 3031 2969,.bxor 3030 3032,.badd 3029 3033,.literal (BitVec.ofNat 32 2730485921),.badd 3034 3035,.badd 3036 1644,.rotr 3022 2,.rotr 3022 13,.bxor 3038 3039,.rotr 3022 22,.bxor 3040 3041,.band 3022 2995,.band 3022 2968,.bxor 3043 3044,.band 2995 2968,.bxor 3045 3046,.badd 3042 3047,.badd 3037 3048,.badd 2941 3037,.rotr 3050 6,.rotr 3050 11,.bxor 3051 3052,.rotr 3050 25,.bxor 3053 3054,.badd 2969 3055,.band 3050 3023,.bnot 3050,.band 3058 2996,.bxor 3057 3059,.badd 3056 3060,.literal (BitVec.ofNat 32 2820302411),.badd 3061 3062,.badd 3063 1657,.rotr 3049 2,.rotr 3049 13,.bxor 3065 3066,.rotr 3049 22,.bxor 3067 3068,.band 3049 3022,.band 3049 2995,.bxor 3070 3071,.band 3022 2995,.bxor 3072 3073,.badd 3069 3074,.badd 3064 3075,.badd 2968 3064,.rotr 3077 6,.rotr 3077 11]
theorem partExact46 : partRows46=WordField.rows actualModulus 3016 partOps46 := by
  simp only [partRows46,partOps46,WordField.rows,rows3016,rows3017,rows3018,rows3019,rows3020,rows3021,rows3022,rows3023,rows3024,rows3025,rows3026,rows3027,rows3028,rows3029,rows3030,rows3031,rows3032,rows3033,rows3034,rows3035,rows3036,rows3037,rows3038,rows3039,rows3040,rows3041,rows3042,rows3043,rows3044,rows3045,rows3046,rows3047,rows3048,rows3049,rows3050,rows3051,rows3052,rows3053,rows3054,rows3055,rows3056,rows3057,rows3058,rows3059,rows3060,rows3061,rows3062,rows3063,rows3064,rows3065,rows3066,rows3067,rows3068,rows3069,rows3070,rows3071,rows3072,rows3073,rows3074,rows3075,rows3076,rows3077,rows3078,rows3079,List.append_assoc,List.append_nil]
theorem partLength46 : partOps46.length=64 := by decide
theorem partStats46 : partRows46.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows46=369216 := by
  simp only [partRows46,List.length_append,MatrixRowBlocks.rows_weight_append,stats3016.1,stats3016.2,stats3017.1,stats3017.2,stats3018.1,stats3018.2,stats3019.1,stats3019.2,stats3020.1,stats3020.2,stats3021.1,stats3021.2,stats3022.1,stats3022.2,stats3023.1,stats3023.2,stats3024.1,stats3024.2,stats3025.1,stats3025.2,stats3026.1,stats3026.2,stats3027.1,stats3027.2,stats3028.1,stats3028.2,stats3029.1,stats3029.2,stats3030.1,stats3030.2,stats3031.1,stats3031.2,stats3032.1,stats3032.2,stats3033.1,stats3033.2,stats3034.1,stats3034.2,stats3035.1,stats3035.2,stats3036.1,stats3036.2,stats3037.1,stats3037.2,stats3038.1,stats3038.2,stats3039.1,stats3039.2,stats3040.1,stats3040.2,stats3041.1,stats3041.2,stats3042.1,stats3042.2,stats3043.1,stats3043.2,stats3044.1,stats3044.2,stats3045.1,stats3045.2,stats3046.1,stats3046.2,stats3047.1,stats3047.2,stats3048.1,stats3048.2,stats3049.1,stats3049.2,stats3050.1,stats3050.2,stats3051.1,stats3051.2,stats3052.1,stats3052.2,stats3053.1,stats3053.2,stats3054.1,stats3054.2,stats3055.1,stats3055.2,stats3056.1,stats3056.2,stats3057.1,stats3057.2,stats3058.1,stats3058.2,stats3059.1,stats3059.2,stats3060.1,stats3060.2,stats3061.1,stats3061.2,stats3062.1,stats3062.2,stats3063.1,stats3063.2,stats3064.1,stats3064.2,stats3065.1,stats3065.2,stats3066.1,stats3066.2,stats3067.1,stats3067.2,stats3068.1,stats3068.2,stats3069.1,stats3069.2,stats3070.1,stats3070.2,stats3071.1,stats3071.2,stats3072.1,stats3072.2,stats3073.1,stats3073.2,stats3074.1,stats3074.2,stats3075.1,stats3075.2,stats3076.1,stats3076.2,stats3077.1,stats3077.2,stats3078.1,stats3078.2,stats3079.1,stats3079.2]
  decide
end HashBlockCheckedRows
