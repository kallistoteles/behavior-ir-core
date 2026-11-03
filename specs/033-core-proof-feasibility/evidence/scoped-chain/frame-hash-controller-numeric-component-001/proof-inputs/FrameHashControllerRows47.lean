import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData47
import FrameHashControllerInstructionMatrixData48
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3051 : actualRows3051=WordField.canonicalRows actualModulus 3051 (.bxor 0 3050) := by core033_kernel_decide
theorem stats3051 : actualRows3051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3051=7428 := by core033_kernel_decide
theorem rows3052 : actualRows3052=WordField.canonicalRows actualModulus 3052 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3052 : actualRows3052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3052=2820 := by core033_kernel_decide
theorem rows3053 : actualRows3053=WordField.canonicalRows actualModulus 3053 (.bnot 3052) := by core033_kernel_decide
theorem stats3053 : actualRows3053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3053=6276 := by core033_kernel_decide
theorem rows3054 : actualRows3054=WordField.canonicalRows actualModulus 3054 (.bxor 3051 3053) := by core033_kernel_decide
theorem stats3054 : actualRows3054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3054=7428 := by core033_kernel_decide
theorem rows3055 : actualRows3055=WordField.canonicalRows actualModulus 3055 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3055 : actualRows3055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3055=2892 := by core033_kernel_decide
theorem rows3056 : actualRows3056=WordField.canonicalRows actualModulus 3056 (.bxor 0 3055) := by core033_kernel_decide
theorem stats3056 : actualRows3056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3056=7428 := by core033_kernel_decide
theorem rows3057 : actualRows3057=WordField.canonicalRows actualModulus 3057 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3057 : actualRows3057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3057=2820 := by core033_kernel_decide
theorem rows3058 : actualRows3058=WordField.canonicalRows actualModulus 3058 (.bnot 3057) := by core033_kernel_decide
theorem stats3058 : actualRows3058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3058=6276 := by core033_kernel_decide
theorem rows3059 : actualRows3059=WordField.canonicalRows actualModulus 3059 (.badd 3056 3058) := by core033_kernel_decide
theorem stats3059 : actualRows3059.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3059=5388 := by core033_kernel_decide
theorem rows3060 : actualRows3060=WordField.canonicalRows actualModulus 3060 (.bnot 3059) := by core033_kernel_decide
theorem stats3060 : actualRows3060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3060=6276 := by core033_kernel_decide
theorem rows3061 : actualRows3061=WordField.canonicalRows actualModulus 3061 (.band 3054 3060) := by core033_kernel_decide
theorem stats3061 : actualRows3061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3061=5124 := by core033_kernel_decide
theorem rows3062 : actualRows3062=WordField.canonicalRows actualModulus 3062 (.bxor 3049 3061) := by core033_kernel_decide
theorem stats3062 : actualRows3062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3062=7428 := by core033_kernel_decide
theorem rows3063 : actualRows3063=WordField.canonicalRows actualModulus 3063 (.shr 3062 31) := by core033_kernel_decide
theorem stats3063 : actualRows3063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3063=2892 := by core033_kernel_decide
theorem rows3064 : actualRows3064=WordField.canonicalRows actualModulus 3064 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3064 : actualRows3064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3064=2892 := by core033_kernel_decide
theorem rows3065 : actualRows3065=WordField.canonicalRows actualModulus 3065 (.bxor 3063 3064) := by core033_kernel_decide
theorem stats3065 : actualRows3065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3065=7428 := by core033_kernel_decide
theorem rows3066 : actualRows3066=WordField.canonicalRows actualModulus 3066 (.bnot 3065) := by core033_kernel_decide
theorem stats3066 : actualRows3066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3066=6276 := by core033_kernel_decide
theorem rows3067 : actualRows3067=WordField.canonicalRows actualModulus 3067 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3067 : actualRows3067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3067=2892 := by core033_kernel_decide
theorem rows3068 : actualRows3068=WordField.canonicalRows actualModulus 3068 (.badd 3066 3067) := by core033_kernel_decide
theorem stats3068 : actualRows3068.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3068=5388 := by core033_kernel_decide
theorem rows3069 : actualRows3069=WordField.canonicalRows actualModulus 3069 (.bnot 3068) := by core033_kernel_decide
theorem stats3069 : actualRows3069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3069=6276 := by core033_kernel_decide
theorem rows3070 : actualRows3070=WordField.canonicalRows actualModulus 3070 (.band 3069 854) := by core033_kernel_decide
theorem stats3070 : actualRows3070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3070=5124 := by core033_kernel_decide
theorem rows3071 : actualRows3071=WordField.canonicalRows actualModulus 3071 (.bxor 3044 3070) := by core033_kernel_decide
theorem stats3071 : actualRows3071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3071=7428 := by core033_kernel_decide
theorem rows3072 : actualRows3072=WordField.canonicalRows actualModulus 3072 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3072 : actualRows3072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3072=2892 := by core033_kernel_decide
theorem rows3073 : actualRows3073=WordField.canonicalRows actualModulus 3073 (.bxor 0 3072) := by core033_kernel_decide
theorem stats3073 : actualRows3073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3073=7428 := by core033_kernel_decide
theorem rows3074 : actualRows3074=WordField.canonicalRows actualModulus 3074 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3074 : actualRows3074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3074=2820 := by core033_kernel_decide
theorem rows3075 : actualRows3075=WordField.canonicalRows actualModulus 3075 (.bnot 3074) := by core033_kernel_decide
theorem stats3075 : actualRows3075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3075=6276 := by core033_kernel_decide
theorem rows3076 : actualRows3076=WordField.canonicalRows actualModulus 3076 (.band 3073 3075) := by core033_kernel_decide
theorem stats3076 : actualRows3076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3076=5124 := by core033_kernel_decide
theorem rows3077 : actualRows3077=WordField.canonicalRows actualModulus 3077 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3077 : actualRows3077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3077=2892 := by core033_kernel_decide
theorem rows3078 : actualRows3078=WordField.canonicalRows actualModulus 3078 (.bxor 0 3077) := by core033_kernel_decide
theorem stats3078 : actualRows3078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3078=7428 := by core033_kernel_decide
theorem rows3079 : actualRows3079=WordField.canonicalRows actualModulus 3079 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3079 : actualRows3079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3079=2820 := by core033_kernel_decide
theorem rows3080 : actualRows3080=WordField.canonicalRows actualModulus 3080 (.bnot 3079) := by core033_kernel_decide
theorem stats3080 : actualRows3080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3080=6276 := by core033_kernel_decide
theorem rows3081 : actualRows3081=WordField.canonicalRows actualModulus 3081 (.bxor 3078 3080) := by core033_kernel_decide
theorem stats3081 : actualRows3081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3081=7428 := by core033_kernel_decide
theorem rows3082 : actualRows3082=WordField.canonicalRows actualModulus 3082 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3082 : actualRows3082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3082=2892 := by core033_kernel_decide
theorem rows3083 : actualRows3083=WordField.canonicalRows actualModulus 3083 (.bxor 0 3082) := by core033_kernel_decide
theorem stats3083 : actualRows3083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3083=7428 := by core033_kernel_decide
theorem rows3084 : actualRows3084=WordField.canonicalRows actualModulus 3084 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3084 : actualRows3084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3084=2820 := by core033_kernel_decide
theorem rows3085 : actualRows3085=WordField.canonicalRows actualModulus 3085 (.bnot 3084) := by core033_kernel_decide
theorem stats3085 : actualRows3085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3085=6276 := by core033_kernel_decide
theorem rows3086 : actualRows3086=WordField.canonicalRows actualModulus 3086 (.badd 3083 3085) := by core033_kernel_decide
theorem stats3086 : actualRows3086.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3086=5388 := by core033_kernel_decide
theorem rows3087 : actualRows3087=WordField.canonicalRows actualModulus 3087 (.bnot 3086) := by core033_kernel_decide
theorem stats3087 : actualRows3087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3087=6276 := by core033_kernel_decide
theorem rows3088 : actualRows3088=WordField.canonicalRows actualModulus 3088 (.band 3081 3087) := by core033_kernel_decide
theorem stats3088 : actualRows3088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3088=5124 := by core033_kernel_decide
theorem rows3089 : actualRows3089=WordField.canonicalRows actualModulus 3089 (.bxor 3076 3088) := by core033_kernel_decide
theorem stats3089 : actualRows3089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3089=7428 := by core033_kernel_decide
theorem rows3090 : actualRows3090=WordField.canonicalRows actualModulus 3090 (.shr 3089 31) := by core033_kernel_decide
theorem stats3090 : actualRows3090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3090=2892 := by core033_kernel_decide
theorem rows3091 : actualRows3091=WordField.canonicalRows actualModulus 3091 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3091 : actualRows3091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3091=2892 := by core033_kernel_decide
theorem rows3092 : actualRows3092=WordField.canonicalRows actualModulus 3092 (.bxor 3090 3091) := by core033_kernel_decide
theorem stats3092 : actualRows3092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3092=7428 := by core033_kernel_decide
theorem rows3093 : actualRows3093=WordField.canonicalRows actualModulus 3093 (.bnot 3092) := by core033_kernel_decide
theorem stats3093 : actualRows3093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3093=6276 := by core033_kernel_decide
theorem rows3094 : actualRows3094=WordField.canonicalRows actualModulus 3094 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3094 : actualRows3094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3094=2892 := by core033_kernel_decide
theorem rows3095 : actualRows3095=WordField.canonicalRows actualModulus 3095 (.badd 3093 3094) := by core033_kernel_decide
theorem stats3095 : actualRows3095.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3095=5388 := by core033_kernel_decide
theorem rows3096 : actualRows3096=WordField.canonicalRows actualModulus 3096 (.band 3095 1049) := by core033_kernel_decide
theorem stats3096 : actualRows3096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3096=5124 := by core033_kernel_decide
theorem rows3097 : actualRows3097=WordField.canonicalRows actualModulus 3097 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3097 : actualRows3097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3097=2892 := by core033_kernel_decide
theorem rows3098 : actualRows3098=WordField.canonicalRows actualModulus 3098 (.bxor 0 3097) := by core033_kernel_decide
theorem stats3098 : actualRows3098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3098=7428 := by core033_kernel_decide
theorem rows3099 : actualRows3099=WordField.canonicalRows actualModulus 3099 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3099 : actualRows3099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3099=2820 := by core033_kernel_decide
theorem rows3100 : actualRows3100=WordField.canonicalRows actualModulus 3100 (.bnot 3099) := by core033_kernel_decide
theorem stats3100 : actualRows3100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3100=6276 := by core033_kernel_decide
theorem rows3101 : actualRows3101=WordField.canonicalRows actualModulus 3101 (.band 3098 3100) := by core033_kernel_decide
theorem stats3101 : actualRows3101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3101=5124 := by core033_kernel_decide
theorem rows3102 : actualRows3102=WordField.canonicalRows actualModulus 3102 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3102 : actualRows3102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3102=2892 := by core033_kernel_decide
theorem rows3103 : actualRows3103=WordField.canonicalRows actualModulus 3103 (.bxor 0 3102) := by core033_kernel_decide
theorem stats3103 : actualRows3103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3103=7428 := by core033_kernel_decide
theorem rows3104 : actualRows3104=WordField.canonicalRows actualModulus 3104 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3104 : actualRows3104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3104=2820 := by core033_kernel_decide
theorem rows3105 : actualRows3105=WordField.canonicalRows actualModulus 3105 (.bnot 3104) := by core033_kernel_decide
theorem stats3105 : actualRows3105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3105=6276 := by core033_kernel_decide
theorem rows3106 : actualRows3106=WordField.canonicalRows actualModulus 3106 (.bxor 3103 3105) := by core033_kernel_decide
theorem stats3106 : actualRows3106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3106=7428 := by core033_kernel_decide
theorem rows3107 : actualRows3107=WordField.canonicalRows actualModulus 3107 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3107 : actualRows3107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3107=2892 := by core033_kernel_decide
theorem rows3108 : actualRows3108=WordField.canonicalRows actualModulus 3108 (.bxor 0 3107) := by core033_kernel_decide
theorem stats3108 : actualRows3108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3108=7428 := by core033_kernel_decide
theorem rows3109 : actualRows3109=WordField.canonicalRows actualModulus 3109 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3109 : actualRows3109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3109=2820 := by core033_kernel_decide
theorem rows3110 : actualRows3110=WordField.canonicalRows actualModulus 3110 (.bnot 3109) := by core033_kernel_decide
theorem stats3110 : actualRows3110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3110=6276 := by core033_kernel_decide
theorem rows3111 : actualRows3111=WordField.canonicalRows actualModulus 3111 (.badd 3108 3110) := by core033_kernel_decide
theorem stats3111 : actualRows3111.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3111=5388 := by core033_kernel_decide
theorem rows3112 : actualRows3112=WordField.canonicalRows actualModulus 3112 (.bnot 3111) := by core033_kernel_decide
theorem stats3112 : actualRows3112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3112=6276 := by core033_kernel_decide
theorem rows3113 : actualRows3113=WordField.canonicalRows actualModulus 3113 (.band 3106 3112) := by core033_kernel_decide
theorem stats3113 : actualRows3113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3113=5124 := by core033_kernel_decide
theorem rows3114 : actualRows3114=WordField.canonicalRows actualModulus 3114 (.bxor 3101 3113) := by core033_kernel_decide
theorem stats3114 : actualRows3114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3114=7428 := by core033_kernel_decide
def partRows47 : List R1CS.Row := actualRows3051++actualRows3052++actualRows3053++actualRows3054++actualRows3055++actualRows3056++actualRows3057++actualRows3058++actualRows3059++actualRows3060++actualRows3061++actualRows3062++actualRows3063++actualRows3064++actualRows3065++actualRows3066++actualRows3067++actualRows3068++actualRows3069++actualRows3070++actualRows3071++actualRows3072++actualRows3073++actualRows3074++actualRows3075++actualRows3076++actualRows3077++actualRows3078++actualRows3079++actualRows3080++actualRows3081++actualRows3082++actualRows3083++actualRows3084++actualRows3085++actualRows3086++actualRows3087++actualRows3088++actualRows3089++actualRows3090++actualRows3091++actualRows3092++actualRows3093++actualRows3094++actualRows3095++actualRows3096++actualRows3097++actualRows3098++actualRows3099++actualRows3100++actualRows3101++actualRows3102++actualRows3103++actualRows3104++actualRows3105++actualRows3106++actualRows3107++actualRows3108++actualRows3109++actualRows3110++actualRows3111++actualRows3112++actualRows3113++actualRows3114
def partOps47 : List WordIR.Op := [.bxor 0 3050,.literal (BitVec.ofNat 32 0),.bnot 3052,.bxor 3051 3053,.literal (BitVec.ofNat 32 2),.bxor 0 3055,.literal (BitVec.ofNat 32 0),.bnot 3057,.badd 3056 3058,.bnot 3059,.band 3054 3060,.bxor 3049 3061,.shr 3062 31,.literal (BitVec.ofNat 32 1),.bxor 3063 3064,.bnot 3065,.literal (BitVec.ofNat 32 1),.badd 3066 3067,.bnot 3068,.band 3069 854,.bxor 3044 3070,.literal (BitVec.ofNat 32 2),.bxor 0 3072,.literal (BitVec.ofNat 32 0),.bnot 3074,.band 3073 3075,.literal (BitVec.ofNat 32 2),.bxor 0 3077,.literal (BitVec.ofNat 32 0),.bnot 3079,.bxor 3078 3080,.literal (BitVec.ofNat 32 2),.bxor 0 3082,.literal (BitVec.ofNat 32 0),.bnot 3084,.badd 3083 3085,.bnot 3086,.band 3081 3087,.bxor 3076 3088,.shr 3089 31,.literal (BitVec.ofNat 32 1),.bxor 3090 3091,.bnot 3092,.literal (BitVec.ofNat 32 1),.badd 3093 3094,.band 3095 1049,.literal (BitVec.ofNat 32 2),.bxor 0 3097,.literal (BitVec.ofNat 32 0),.bnot 3099,.band 3098 3100,.literal (BitVec.ofNat 32 2),.bxor 0 3102,.literal (BitVec.ofNat 32 0),.bnot 3104,.bxor 3103 3105,.literal (BitVec.ofNat 32 2),.bxor 0 3107,.literal (BitVec.ofNat 32 0),.bnot 3109,.badd 3108 3110,.bnot 3111,.band 3106 3112,.bxor 3101 3113]
theorem partExact47 : partRows47=WordField.rows actualModulus 3051 partOps47 := by
  simp only [partRows47,partOps47,WordField.rows,rows3051,rows3052,rows3053,rows3054,rows3055,rows3056,rows3057,rows3058,rows3059,rows3060,rows3061,rows3062,rows3063,rows3064,rows3065,rows3066,rows3067,rows3068,rows3069,rows3070,rows3071,rows3072,rows3073,rows3074,rows3075,rows3076,rows3077,rows3078,rows3079,rows3080,rows3081,rows3082,rows3083,rows3084,rows3085,rows3086,rows3087,rows3088,rows3089,rows3090,rows3091,rows3092,rows3093,rows3094,rows3095,rows3096,rows3097,rows3098,rows3099,rows3100,rows3101,rows3102,rows3103,rows3104,rows3105,rows3106,rows3107,rows3108,rows3109,rows3110,rows3111,rows3112,rows3113,rows3114,List.append_assoc,List.append_nil]
theorem partLength47 : partOps47.length=64 := by decide
theorem partStats47 : partRows47.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows47=337104 := by
  simp only [partRows47,List.length_append,MatrixRowBlocks.rows_weight_append,stats3051.1,stats3051.2,stats3052.1,stats3052.2,stats3053.1,stats3053.2,stats3054.1,stats3054.2,stats3055.1,stats3055.2,stats3056.1,stats3056.2,stats3057.1,stats3057.2,stats3058.1,stats3058.2,stats3059.1,stats3059.2,stats3060.1,stats3060.2,stats3061.1,stats3061.2,stats3062.1,stats3062.2,stats3063.1,stats3063.2,stats3064.1,stats3064.2,stats3065.1,stats3065.2,stats3066.1,stats3066.2,stats3067.1,stats3067.2,stats3068.1,stats3068.2,stats3069.1,stats3069.2,stats3070.1,stats3070.2,stats3071.1,stats3071.2,stats3072.1,stats3072.2,stats3073.1,stats3073.2,stats3074.1,stats3074.2,stats3075.1,stats3075.2,stats3076.1,stats3076.2,stats3077.1,stats3077.2,stats3078.1,stats3078.2,stats3079.1,stats3079.2,stats3080.1,stats3080.2,stats3081.1,stats3081.2,stats3082.1,stats3082.2,stats3083.1,stats3083.2,stats3084.1,stats3084.2,stats3085.1,stats3085.2,stats3086.1,stats3086.2,stats3087.1,stats3087.2,stats3088.1,stats3088.2,stats3089.1,stats3089.2,stats3090.1,stats3090.2,stats3091.1,stats3091.2,stats3092.1,stats3092.2,stats3093.1,stats3093.2,stats3094.1,stats3094.2,stats3095.1,stats3095.2,stats3096.1,stats3096.2,stats3097.1,stats3097.2,stats3098.1,stats3098.2,stats3099.1,stats3099.2,stats3100.1,stats3100.2,stats3101.1,stats3101.2,stats3102.1,stats3102.2,stats3103.1,stats3103.2,stats3104.1,stats3104.2,stats3105.1,stats3105.2,stats3106.1,stats3106.2,stats3107.1,stats3107.2,stats3108.1,stats3108.2,stats3109.1,stats3109.2,stats3110.1,stats3110.2,stats3111.1,stats3111.2,stats3112.1,stats3112.2,stats3113.1,stats3113.2,stats3114.1,stats3114.2]
  decide
end FrameHashControllerCheckedRows
