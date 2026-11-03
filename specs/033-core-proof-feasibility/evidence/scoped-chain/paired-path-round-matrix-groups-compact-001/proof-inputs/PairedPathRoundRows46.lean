import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData47
import PairedPathRoundInstructionMatrixData48
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3040 : actualRows3040=WordField.canonicalRows actualModulus 3040 (.band 3039 2022) := by core033_kernel_decide
theorem stats3040 : actualRows3040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3040=5124 := by core033_kernel_decide
theorem rows3041 : actualRows3041=WordField.canonicalRows actualModulus 3041 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3041 : actualRows3041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3041=2892 := by core033_kernel_decide
theorem rows3042 : actualRows3042=WordField.canonicalRows actualModulus 3042 (.bxor 616 3041) := by core033_kernel_decide
theorem stats3042 : actualRows3042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3042=7428 := by core033_kernel_decide
theorem rows3043 : actualRows3043=WordField.canonicalRows actualModulus 3043 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3043 : actualRows3043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3043=2820 := by core033_kernel_decide
theorem rows3044 : actualRows3044=WordField.canonicalRows actualModulus 3044 (.bnot 3043) := by core033_kernel_decide
theorem stats3044 : actualRows3044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3044=6276 := by core033_kernel_decide
theorem rows3045 : actualRows3045=WordField.canonicalRows actualModulus 3045 (.band 3042 3044) := by core033_kernel_decide
theorem stats3045 : actualRows3045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3045=5124 := by core033_kernel_decide
theorem rows3046 : actualRows3046=WordField.canonicalRows actualModulus 3046 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3046 : actualRows3046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3046=2892 := by core033_kernel_decide
theorem rows3047 : actualRows3047=WordField.canonicalRows actualModulus 3047 (.bxor 616 3046) := by core033_kernel_decide
theorem stats3047 : actualRows3047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3047=7428 := by core033_kernel_decide
theorem rows3048 : actualRows3048=WordField.canonicalRows actualModulus 3048 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3048 : actualRows3048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3048=2820 := by core033_kernel_decide
theorem rows3049 : actualRows3049=WordField.canonicalRows actualModulus 3049 (.bnot 3048) := by core033_kernel_decide
theorem stats3049 : actualRows3049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3049=6276 := by core033_kernel_decide
theorem rows3050 : actualRows3050=WordField.canonicalRows actualModulus 3050 (.bxor 3047 3049) := by core033_kernel_decide
theorem stats3050 : actualRows3050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3050=7428 := by core033_kernel_decide
theorem rows3051 : actualRows3051=WordField.canonicalRows actualModulus 3051 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3051 : actualRows3051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3051=2892 := by core033_kernel_decide
theorem rows3052 : actualRows3052=WordField.canonicalRows actualModulus 3052 (.bxor 616 3051) := by core033_kernel_decide
theorem stats3052 : actualRows3052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3052=7428 := by core033_kernel_decide
theorem rows3053 : actualRows3053=WordField.canonicalRows actualModulus 3053 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3053 : actualRows3053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3053=2820 := by core033_kernel_decide
theorem rows3054 : actualRows3054=WordField.canonicalRows actualModulus 3054 (.bnot 3053) := by core033_kernel_decide
theorem stats3054 : actualRows3054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3054=6276 := by core033_kernel_decide
theorem rows3055 : actualRows3055=WordField.canonicalRows actualModulus 3055 (.badd 3052 3054) := by core033_kernel_decide
theorem stats3055 : actualRows3055.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3055=5388 := by core033_kernel_decide
theorem rows3056 : actualRows3056=WordField.canonicalRows actualModulus 3056 (.bnot 3055) := by core033_kernel_decide
theorem stats3056 : actualRows3056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3056=6276 := by core033_kernel_decide
theorem rows3057 : actualRows3057=WordField.canonicalRows actualModulus 3057 (.band 3050 3056) := by core033_kernel_decide
theorem stats3057 : actualRows3057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3057=5124 := by core033_kernel_decide
theorem rows3058 : actualRows3058=WordField.canonicalRows actualModulus 3058 (.bxor 3045 3057) := by core033_kernel_decide
theorem stats3058 : actualRows3058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3058=7428 := by core033_kernel_decide
theorem rows3059 : actualRows3059=WordField.canonicalRows actualModulus 3059 (.shr 3058 31) := by core033_kernel_decide
theorem stats3059 : actualRows3059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3059=2892 := by core033_kernel_decide
theorem rows3060 : actualRows3060=WordField.canonicalRows actualModulus 3060 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3060 : actualRows3060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3060=2892 := by core033_kernel_decide
theorem rows3061 : actualRows3061=WordField.canonicalRows actualModulus 3061 (.bxor 3059 3060) := by core033_kernel_decide
theorem stats3061 : actualRows3061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3061=7428 := by core033_kernel_decide
theorem rows3062 : actualRows3062=WordField.canonicalRows actualModulus 3062 (.bnot 3061) := by core033_kernel_decide
theorem stats3062 : actualRows3062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3062=6276 := by core033_kernel_decide
theorem rows3063 : actualRows3063=WordField.canonicalRows actualModulus 3063 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3063 : actualRows3063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3063=2892 := by core033_kernel_decide
theorem rows3064 : actualRows3064=WordField.canonicalRows actualModulus 3064 (.badd 3062 3063) := by core033_kernel_decide
theorem stats3064 : actualRows3064.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3064=5388 := by core033_kernel_decide
theorem rows3065 : actualRows3065=WordField.canonicalRows actualModulus 3065 (.bnot 3064) := by core033_kernel_decide
theorem stats3065 : actualRows3065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3065=6276 := by core033_kernel_decide
theorem rows3066 : actualRows3066=WordField.canonicalRows actualModulus 3066 (.band 3065 1866) := by core033_kernel_decide
theorem stats3066 : actualRows3066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3066=5124 := by core033_kernel_decide
theorem rows3067 : actualRows3067=WordField.canonicalRows actualModulus 3067 (.bxor 3040 3066) := by core033_kernel_decide
theorem stats3067 : actualRows3067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3067=7428 := by core033_kernel_decide
theorem rows3068 : actualRows3068=WordField.canonicalRows actualModulus 3068 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3068 : actualRows3068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3068=2892 := by core033_kernel_decide
theorem rows3069 : actualRows3069=WordField.canonicalRows actualModulus 3069 (.bxor 616 3068) := by core033_kernel_decide
theorem stats3069 : actualRows3069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3069=7428 := by core033_kernel_decide
theorem rows3070 : actualRows3070=WordField.canonicalRows actualModulus 3070 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3070 : actualRows3070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3070=2820 := by core033_kernel_decide
theorem rows3071 : actualRows3071=WordField.canonicalRows actualModulus 3071 (.bnot 3070) := by core033_kernel_decide
theorem stats3071 : actualRows3071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3071=6276 := by core033_kernel_decide
theorem rows3072 : actualRows3072=WordField.canonicalRows actualModulus 3072 (.band 3069 3071) := by core033_kernel_decide
theorem stats3072 : actualRows3072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3072=5124 := by core033_kernel_decide
theorem rows3073 : actualRows3073=WordField.canonicalRows actualModulus 3073 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3073 : actualRows3073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3073=2892 := by core033_kernel_decide
theorem rows3074 : actualRows3074=WordField.canonicalRows actualModulus 3074 (.bxor 616 3073) := by core033_kernel_decide
theorem stats3074 : actualRows3074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3074=7428 := by core033_kernel_decide
theorem rows3075 : actualRows3075=WordField.canonicalRows actualModulus 3075 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3075 : actualRows3075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3075=2820 := by core033_kernel_decide
theorem rows3076 : actualRows3076=WordField.canonicalRows actualModulus 3076 (.bnot 3075) := by core033_kernel_decide
theorem stats3076 : actualRows3076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3076=6276 := by core033_kernel_decide
theorem rows3077 : actualRows3077=WordField.canonicalRows actualModulus 3077 (.bxor 3074 3076) := by core033_kernel_decide
theorem stats3077 : actualRows3077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3077=7428 := by core033_kernel_decide
theorem rows3078 : actualRows3078=WordField.canonicalRows actualModulus 3078 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3078 : actualRows3078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3078=2892 := by core033_kernel_decide
theorem rows3079 : actualRows3079=WordField.canonicalRows actualModulus 3079 (.bxor 616 3078) := by core033_kernel_decide
theorem stats3079 : actualRows3079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3079=7428 := by core033_kernel_decide
theorem rows3080 : actualRows3080=WordField.canonicalRows actualModulus 3080 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3080 : actualRows3080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3080=2820 := by core033_kernel_decide
theorem rows3081 : actualRows3081=WordField.canonicalRows actualModulus 3081 (.bnot 3080) := by core033_kernel_decide
theorem stats3081 : actualRows3081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3081=6276 := by core033_kernel_decide
theorem rows3082 : actualRows3082=WordField.canonicalRows actualModulus 3082 (.badd 3079 3081) := by core033_kernel_decide
theorem stats3082 : actualRows3082.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3082=5388 := by core033_kernel_decide
theorem rows3083 : actualRows3083=WordField.canonicalRows actualModulus 3083 (.bnot 3082) := by core033_kernel_decide
theorem stats3083 : actualRows3083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3083=6276 := by core033_kernel_decide
theorem rows3084 : actualRows3084=WordField.canonicalRows actualModulus 3084 (.band 3077 3083) := by core033_kernel_decide
theorem stats3084 : actualRows3084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3084=5124 := by core033_kernel_decide
theorem rows3085 : actualRows3085=WordField.canonicalRows actualModulus 3085 (.bxor 3072 3084) := by core033_kernel_decide
theorem stats3085 : actualRows3085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3085=7428 := by core033_kernel_decide
theorem rows3086 : actualRows3086=WordField.canonicalRows actualModulus 3086 (.shr 3085 31) := by core033_kernel_decide
theorem stats3086 : actualRows3086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3086=2892 := by core033_kernel_decide
theorem rows3087 : actualRows3087=WordField.canonicalRows actualModulus 3087 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3087 : actualRows3087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3087=2892 := by core033_kernel_decide
theorem rows3088 : actualRows3088=WordField.canonicalRows actualModulus 3088 (.bxor 3086 3087) := by core033_kernel_decide
theorem stats3088 : actualRows3088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3088=7428 := by core033_kernel_decide
theorem rows3089 : actualRows3089=WordField.canonicalRows actualModulus 3089 (.bnot 3088) := by core033_kernel_decide
theorem stats3089 : actualRows3089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3089=6276 := by core033_kernel_decide
theorem rows3090 : actualRows3090=WordField.canonicalRows actualModulus 3090 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3090 : actualRows3090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3090=2892 := by core033_kernel_decide
theorem rows3091 : actualRows3091=WordField.canonicalRows actualModulus 3091 (.badd 3089 3090) := by core033_kernel_decide
theorem stats3091 : actualRows3091.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3091=5388 := by core033_kernel_decide
theorem rows3092 : actualRows3092=WordField.canonicalRows actualModulus 3092 (.band 3091 2025) := by core033_kernel_decide
theorem stats3092 : actualRows3092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3092=5124 := by core033_kernel_decide
theorem rows3093 : actualRows3093=WordField.canonicalRows actualModulus 3093 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3093 : actualRows3093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3093=2892 := by core033_kernel_decide
theorem rows3094 : actualRows3094=WordField.canonicalRows actualModulus 3094 (.bxor 616 3093) := by core033_kernel_decide
theorem stats3094 : actualRows3094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3094=7428 := by core033_kernel_decide
theorem rows3095 : actualRows3095=WordField.canonicalRows actualModulus 3095 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3095 : actualRows3095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3095=2820 := by core033_kernel_decide
theorem rows3096 : actualRows3096=WordField.canonicalRows actualModulus 3096 (.bnot 3095) := by core033_kernel_decide
theorem stats3096 : actualRows3096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3096=6276 := by core033_kernel_decide
theorem rows3097 : actualRows3097=WordField.canonicalRows actualModulus 3097 (.band 3094 3096) := by core033_kernel_decide
theorem stats3097 : actualRows3097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3097=5124 := by core033_kernel_decide
theorem rows3098 : actualRows3098=WordField.canonicalRows actualModulus 3098 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3098 : actualRows3098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3098=2892 := by core033_kernel_decide
theorem rows3099 : actualRows3099=WordField.canonicalRows actualModulus 3099 (.bxor 616 3098) := by core033_kernel_decide
theorem stats3099 : actualRows3099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3099=7428 := by core033_kernel_decide
theorem rows3100 : actualRows3100=WordField.canonicalRows actualModulus 3100 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3100 : actualRows3100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3100=2820 := by core033_kernel_decide
theorem rows3101 : actualRows3101=WordField.canonicalRows actualModulus 3101 (.bnot 3100) := by core033_kernel_decide
theorem stats3101 : actualRows3101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3101=6276 := by core033_kernel_decide
theorem rows3102 : actualRows3102=WordField.canonicalRows actualModulus 3102 (.bxor 3099 3101) := by core033_kernel_decide
theorem stats3102 : actualRows3102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3102=7428 := by core033_kernel_decide
theorem rows3103 : actualRows3103=WordField.canonicalRows actualModulus 3103 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3103 : actualRows3103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3103=2892 := by core033_kernel_decide
def partRows46 : List R1CS.Row := actualRows3040++actualRows3041++actualRows3042++actualRows3043++actualRows3044++actualRows3045++actualRows3046++actualRows3047++actualRows3048++actualRows3049++actualRows3050++actualRows3051++actualRows3052++actualRows3053++actualRows3054++actualRows3055++actualRows3056++actualRows3057++actualRows3058++actualRows3059++actualRows3060++actualRows3061++actualRows3062++actualRows3063++actualRows3064++actualRows3065++actualRows3066++actualRows3067++actualRows3068++actualRows3069++actualRows3070++actualRows3071++actualRows3072++actualRows3073++actualRows3074++actualRows3075++actualRows3076++actualRows3077++actualRows3078++actualRows3079++actualRows3080++actualRows3081++actualRows3082++actualRows3083++actualRows3084++actualRows3085++actualRows3086++actualRows3087++actualRows3088++actualRows3089++actualRows3090++actualRows3091++actualRows3092++actualRows3093++actualRows3094++actualRows3095++actualRows3096++actualRows3097++actualRows3098++actualRows3099++actualRows3100++actualRows3101++actualRows3102++actualRows3103
def partOps46 : List WordIR.Op := [.band 3039 2022,.literal (BitVec.ofNat 32 2),.bxor 616 3041,.literal (BitVec.ofNat 32 0),.bnot 3043,.band 3042 3044,.literal (BitVec.ofNat 32 2),.bxor 616 3046,.literal (BitVec.ofNat 32 0),.bnot 3048,.bxor 3047 3049,.literal (BitVec.ofNat 32 2),.bxor 616 3051,.literal (BitVec.ofNat 32 0),.bnot 3053,.badd 3052 3054,.bnot 3055,.band 3050 3056,.bxor 3045 3057,.shr 3058 31,.literal (BitVec.ofNat 32 1),.bxor 3059 3060,.bnot 3061,.literal (BitVec.ofNat 32 1),.badd 3062 3063,.bnot 3064,.band 3065 1866,.bxor 3040 3066,.literal (BitVec.ofNat 32 2),.bxor 616 3068,.literal (BitVec.ofNat 32 0),.bnot 3070,.band 3069 3071,.literal (BitVec.ofNat 32 2),.bxor 616 3073,.literal (BitVec.ofNat 32 0),.bnot 3075,.bxor 3074 3076,.literal (BitVec.ofNat 32 2),.bxor 616 3078,.literal (BitVec.ofNat 32 0),.bnot 3080,.badd 3079 3081,.bnot 3082,.band 3077 3083,.bxor 3072 3084,.shr 3085 31,.literal (BitVec.ofNat 32 1),.bxor 3086 3087,.bnot 3088,.literal (BitVec.ofNat 32 1),.badd 3089 3090,.band 3091 2025,.literal (BitVec.ofNat 32 2),.bxor 616 3093,.literal (BitVec.ofNat 32 0),.bnot 3095,.band 3094 3096,.literal (BitVec.ofNat 32 2),.bxor 616 3098,.literal (BitVec.ofNat 32 0),.bnot 3100,.bxor 3099 3101,.literal (BitVec.ofNat 32 2)]
theorem partExact46 : partRows46=WordField.rows actualModulus 3040 partOps46 := by
  simp only [partRows46,partOps46,WordField.rows,rows3040,rows3041,rows3042,rows3043,rows3044,rows3045,rows3046,rows3047,rows3048,rows3049,rows3050,rows3051,rows3052,rows3053,rows3054,rows3055,rows3056,rows3057,rows3058,rows3059,rows3060,rows3061,rows3062,rows3063,rows3064,rows3065,rows3066,rows3067,rows3068,rows3069,rows3070,rows3071,rows3072,rows3073,rows3074,rows3075,rows3076,rows3077,rows3078,rows3079,rows3080,rows3081,rows3082,rows3083,rows3084,rows3085,rows3086,rows3087,rows3088,rows3089,rows3090,rows3091,rows3092,rows3093,rows3094,rows3095,rows3096,rows3097,rows3098,rows3099,rows3100,rows3101,rows3102,rows3103,List.append_assoc,List.append_nil]
theorem partLength46 : partOps46.length=64 := by decide
theorem partStats46 : partRows46.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows46=328920 := by
  simp only [partRows46,List.length_append,MatrixRowBlocks.rows_weight_append,stats3040.1,stats3040.2,stats3041.1,stats3041.2,stats3042.1,stats3042.2,stats3043.1,stats3043.2,stats3044.1,stats3044.2,stats3045.1,stats3045.2,stats3046.1,stats3046.2,stats3047.1,stats3047.2,stats3048.1,stats3048.2,stats3049.1,stats3049.2,stats3050.1,stats3050.2,stats3051.1,stats3051.2,stats3052.1,stats3052.2,stats3053.1,stats3053.2,stats3054.1,stats3054.2,stats3055.1,stats3055.2,stats3056.1,stats3056.2,stats3057.1,stats3057.2,stats3058.1,stats3058.2,stats3059.1,stats3059.2,stats3060.1,stats3060.2,stats3061.1,stats3061.2,stats3062.1,stats3062.2,stats3063.1,stats3063.2,stats3064.1,stats3064.2,stats3065.1,stats3065.2,stats3066.1,stats3066.2,stats3067.1,stats3067.2,stats3068.1,stats3068.2,stats3069.1,stats3069.2,stats3070.1,stats3070.2,stats3071.1,stats3071.2,stats3072.1,stats3072.2,stats3073.1,stats3073.2,stats3074.1,stats3074.2,stats3075.1,stats3075.2,stats3076.1,stats3076.2,stats3077.1,stats3077.2,stats3078.1,stats3078.2,stats3079.1,stats3079.2,stats3080.1,stats3080.2,stats3081.1,stats3081.2,stats3082.1,stats3082.2,stats3083.1,stats3083.2,stats3084.1,stats3084.2,stats3085.1,stats3085.2,stats3086.1,stats3086.2,stats3087.1,stats3087.2,stats3088.1,stats3088.2,stats3089.1,stats3089.2,stats3090.1,stats3090.2,stats3091.1,stats3091.2,stats3092.1,stats3092.2,stats3093.1,stats3093.2,stats3094.1,stats3094.2,stats3095.1,stats3095.2,stats3096.1,stats3096.2,stats3097.1,stats3097.2,stats3098.1,stats3098.2,stats3099.1,stats3099.2,stats3100.1,stats3100.2,stats3101.1,stats3101.2,stats3102.1,stats3102.2,stats3103.1,stats3103.2]
  decide
end PairedPathRoundCheckedRows
