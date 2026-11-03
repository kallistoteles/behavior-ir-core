import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData47
import AuthenticatedBranchRoundInstructionMatrixData48
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3062 : actualRows3062=WordField.canonicalRows actualModulus 3062 (.band 3059 3061) := by core033_kernel_decide
theorem stats3062 : actualRows3062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3062=5124 := by core033_kernel_decide
theorem rows3063 : actualRows3063=WordField.canonicalRows actualModulus 3063 (.bxor 3058 3062) := by core033_kernel_decide
theorem stats3063 : actualRows3063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3063=7428 := by core033_kernel_decide
theorem rows3064 : actualRows3064=WordField.canonicalRows actualModulus 3064 (.shr 3063 31) := by core033_kernel_decide
theorem stats3064 : actualRows3064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3064=2892 := by core033_kernel_decide
theorem rows3065 : actualRows3065=WordField.canonicalRows actualModulus 3065 (.badd 3057 3064) := by core033_kernel_decide
theorem stats3065 : actualRows3065.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3065=5388 := by core033_kernel_decide
theorem rows3066 : actualRows3066=WordField.canonicalRows actualModulus 3066 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3066 : actualRows3066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3066=2820 := by core033_kernel_decide
theorem rows3067 : actualRows3067=WordField.canonicalRows actualModulus 3067 (.bnot 3066) := by core033_kernel_decide
theorem stats3067 : actualRows3067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3067=6276 := by core033_kernel_decide
theorem rows3068 : actualRows3068=WordField.canonicalRows actualModulus 3068 (.band 3065 3067) := by core033_kernel_decide
theorem stats3068 : actualRows3068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3068=5124 := by core033_kernel_decide
theorem rows3069 : actualRows3069=WordField.canonicalRows actualModulus 3069 (.badd 2178 2298) := by core033_kernel_decide
theorem stats3069 : actualRows3069.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3069=5388 := by core033_kernel_decide
theorem rows3070 : actualRows3070=WordField.canonicalRows actualModulus 3070 (.band 2168 2288) := by core033_kernel_decide
theorem stats3070 : actualRows3070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3070=5124 := by core033_kernel_decide
theorem rows3071 : actualRows3071=WordField.canonicalRows actualModulus 3071 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats3071 : actualRows3071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3071=7428 := by core033_kernel_decide
theorem rows3072 : actualRows3072=WordField.canonicalRows actualModulus 3072 (.badd 2168 2288) := by core033_kernel_decide
theorem stats3072 : actualRows3072.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3072=5388 := by core033_kernel_decide
theorem rows3073 : actualRows3073=WordField.canonicalRows actualModulus 3073 (.bnot 3072) := by core033_kernel_decide
theorem stats3073 : actualRows3073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3073=6276 := by core033_kernel_decide
theorem rows3074 : actualRows3074=WordField.canonicalRows actualModulus 3074 (.band 3071 3073) := by core033_kernel_decide
theorem stats3074 : actualRows3074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3074=5124 := by core033_kernel_decide
theorem rows3075 : actualRows3075=WordField.canonicalRows actualModulus 3075 (.bxor 3070 3074) := by core033_kernel_decide
theorem stats3075 : actualRows3075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3075=7428 := by core033_kernel_decide
theorem rows3076 : actualRows3076=WordField.canonicalRows actualModulus 3076 (.shr 3075 31) := by core033_kernel_decide
theorem stats3076 : actualRows3076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3076=2892 := by core033_kernel_decide
theorem rows3077 : actualRows3077=WordField.canonicalRows actualModulus 3077 (.badd 3069 3076) := by core033_kernel_decide
theorem stats3077 : actualRows3077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3077=5388 := by core033_kernel_decide
theorem rows3078 : actualRows3078=WordField.canonicalRows actualModulus 3078 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3078 : actualRows3078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3078=2820 := by core033_kernel_decide
theorem rows3079 : actualRows3079=WordField.canonicalRows actualModulus 3079 (.bnot 3078) := by core033_kernel_decide
theorem stats3079 : actualRows3079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3079=6276 := by core033_kernel_decide
theorem rows3080 : actualRows3080=WordField.canonicalRows actualModulus 3080 (.bxor 3077 3079) := by core033_kernel_decide
theorem stats3080 : actualRows3080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3080=7428 := by core033_kernel_decide
theorem rows3081 : actualRows3081=WordField.canonicalRows actualModulus 3081 (.badd 2178 2298) := by core033_kernel_decide
theorem stats3081 : actualRows3081.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3081=5388 := by core033_kernel_decide
theorem rows3082 : actualRows3082=WordField.canonicalRows actualModulus 3082 (.band 2168 2288) := by core033_kernel_decide
theorem stats3082 : actualRows3082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3082=5124 := by core033_kernel_decide
theorem rows3083 : actualRows3083=WordField.canonicalRows actualModulus 3083 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats3083 : actualRows3083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3083=7428 := by core033_kernel_decide
theorem rows3084 : actualRows3084=WordField.canonicalRows actualModulus 3084 (.badd 2168 2288) := by core033_kernel_decide
theorem stats3084 : actualRows3084.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3084=5388 := by core033_kernel_decide
theorem rows3085 : actualRows3085=WordField.canonicalRows actualModulus 3085 (.bnot 3084) := by core033_kernel_decide
theorem stats3085 : actualRows3085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3085=6276 := by core033_kernel_decide
theorem rows3086 : actualRows3086=WordField.canonicalRows actualModulus 3086 (.band 3083 3085) := by core033_kernel_decide
theorem stats3086 : actualRows3086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3086=5124 := by core033_kernel_decide
theorem rows3087 : actualRows3087=WordField.canonicalRows actualModulus 3087 (.bxor 3082 3086) := by core033_kernel_decide
theorem stats3087 : actualRows3087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3087=7428 := by core033_kernel_decide
theorem rows3088 : actualRows3088=WordField.canonicalRows actualModulus 3088 (.shr 3087 31) := by core033_kernel_decide
theorem stats3088 : actualRows3088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3088=2892 := by core033_kernel_decide
theorem rows3089 : actualRows3089=WordField.canonicalRows actualModulus 3089 (.badd 3081 3088) := by core033_kernel_decide
theorem stats3089 : actualRows3089.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3089=5388 := by core033_kernel_decide
theorem rows3090 : actualRows3090=WordField.canonicalRows actualModulus 3090 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3090 : actualRows3090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3090=2820 := by core033_kernel_decide
theorem rows3091 : actualRows3091=WordField.canonicalRows actualModulus 3091 (.bnot 3090) := by core033_kernel_decide
theorem stats3091 : actualRows3091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3091=6276 := by core033_kernel_decide
theorem rows3092 : actualRows3092=WordField.canonicalRows actualModulus 3092 (.badd 3089 3091) := by core033_kernel_decide
theorem stats3092 : actualRows3092.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3092=5388 := by core033_kernel_decide
theorem rows3093 : actualRows3093=WordField.canonicalRows actualModulus 3093 (.bnot 3092) := by core033_kernel_decide
theorem stats3093 : actualRows3093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3093=6276 := by core033_kernel_decide
theorem rows3094 : actualRows3094=WordField.canonicalRows actualModulus 3094 (.band 3080 3093) := by core033_kernel_decide
theorem stats3094 : actualRows3094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3094=5124 := by core033_kernel_decide
theorem rows3095 : actualRows3095=WordField.canonicalRows actualModulus 3095 (.bxor 3068 3094) := by core033_kernel_decide
theorem stats3095 : actualRows3095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3095=7428 := by core033_kernel_decide
theorem rows3096 : actualRows3096=WordField.canonicalRows actualModulus 3096 (.shr 3095 31) := by core033_kernel_decide
theorem stats3096 : actualRows3096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3096=2892 := by core033_kernel_decide
theorem rows3097 : actualRows3097=WordField.canonicalRows actualModulus 3097 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3097 : actualRows3097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3097=2892 := by core033_kernel_decide
theorem rows3098 : actualRows3098=WordField.canonicalRows actualModulus 3098 (.bxor 3096 3097) := by core033_kernel_decide
theorem stats3098 : actualRows3098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3098=7428 := by core033_kernel_decide
theorem rows3099 : actualRows3099=WordField.canonicalRows actualModulus 3099 (.badd 2168 2288) := by core033_kernel_decide
theorem stats3099 : actualRows3099.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3099=5388 := by core033_kernel_decide
theorem rows3100 : actualRows3100=WordField.canonicalRows actualModulus 3100 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats3100 : actualRows3100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3100=2892 := by core033_kernel_decide
theorem rows3101 : actualRows3101=WordField.canonicalRows actualModulus 3101 (.bnot 3100) := by core033_kernel_decide
theorem stats3101 : actualRows3101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3101=6276 := by core033_kernel_decide
theorem rows3102 : actualRows3102=WordField.canonicalRows actualModulus 3102 (.band 3099 3101) := by core033_kernel_decide
theorem stats3102 : actualRows3102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3102=5124 := by core033_kernel_decide
theorem rows3103 : actualRows3103=WordField.canonicalRows actualModulus 3103 (.badd 2168 2288) := by core033_kernel_decide
theorem stats3103 : actualRows3103.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3103=5388 := by core033_kernel_decide
theorem rows3104 : actualRows3104=WordField.canonicalRows actualModulus 3104 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats3104 : actualRows3104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3104=2892 := by core033_kernel_decide
theorem rows3105 : actualRows3105=WordField.canonicalRows actualModulus 3105 (.bnot 3104) := by core033_kernel_decide
theorem stats3105 : actualRows3105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3105=6276 := by core033_kernel_decide
theorem rows3106 : actualRows3106=WordField.canonicalRows actualModulus 3106 (.bxor 3103 3105) := by core033_kernel_decide
theorem stats3106 : actualRows3106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3106=7428 := by core033_kernel_decide
theorem rows3107 : actualRows3107=WordField.canonicalRows actualModulus 3107 (.badd 2168 2288) := by core033_kernel_decide
theorem stats3107 : actualRows3107.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3107=5388 := by core033_kernel_decide
theorem rows3108 : actualRows3108=WordField.canonicalRows actualModulus 3108 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats3108 : actualRows3108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3108=2892 := by core033_kernel_decide
theorem rows3109 : actualRows3109=WordField.canonicalRows actualModulus 3109 (.bnot 3108) := by core033_kernel_decide
theorem stats3109 : actualRows3109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3109=6276 := by core033_kernel_decide
theorem rows3110 : actualRows3110=WordField.canonicalRows actualModulus 3110 (.badd 3107 3109) := by core033_kernel_decide
theorem stats3110 : actualRows3110.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3110=5388 := by core033_kernel_decide
theorem rows3111 : actualRows3111=WordField.canonicalRows actualModulus 3111 (.bnot 3110) := by core033_kernel_decide
theorem stats3111 : actualRows3111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3111=6276 := by core033_kernel_decide
theorem rows3112 : actualRows3112=WordField.canonicalRows actualModulus 3112 (.band 3106 3111) := by core033_kernel_decide
theorem stats3112 : actualRows3112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3112=5124 := by core033_kernel_decide
theorem rows3113 : actualRows3113=WordField.canonicalRows actualModulus 3113 (.bxor 3102 3112) := by core033_kernel_decide
theorem stats3113 : actualRows3113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3113=7428 := by core033_kernel_decide
theorem rows3114 : actualRows3114=WordField.canonicalRows actualModulus 3114 (.shr 3113 31) := by core033_kernel_decide
theorem stats3114 : actualRows3114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3114=2892 := by core033_kernel_decide
theorem rows3115 : actualRows3115=WordField.canonicalRows actualModulus 3115 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3115 : actualRows3115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3115=2892 := by core033_kernel_decide
theorem rows3116 : actualRows3116=WordField.canonicalRows actualModulus 3116 (.bxor 3114 3115) := by core033_kernel_decide
theorem stats3116 : actualRows3116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3116=7428 := by core033_kernel_decide
theorem rows3117 : actualRows3117=WordField.canonicalRows actualModulus 3117 (.band 3098 3116) := by core033_kernel_decide
theorem stats3117 : actualRows3117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3117=5124 := by core033_kernel_decide
theorem rows3118 : actualRows3118=WordField.canonicalRows actualModulus 3118 (.band 3056 3117) := by core033_kernel_decide
theorem stats3118 : actualRows3118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3118=5124 := by core033_kernel_decide
theorem rows3119 : actualRows3119=WordField.canonicalRows actualModulus 3119 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3119 : actualRows3119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3119=2892 := by core033_kernel_decide
theorem rows3120 : actualRows3120=WordField.canonicalRows actualModulus 3120 (.bxor 1299 3119) := by core033_kernel_decide
theorem stats3120 : actualRows3120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3120=7428 := by core033_kernel_decide
theorem rows3121 : actualRows3121=WordField.canonicalRows actualModulus 3121 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3121 : actualRows3121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3121=2820 := by core033_kernel_decide
theorem rows3122 : actualRows3122=WordField.canonicalRows actualModulus 3122 (.bnot 3121) := by core033_kernel_decide
theorem stats3122 : actualRows3122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3122=6276 := by core033_kernel_decide
theorem rows3123 : actualRows3123=WordField.canonicalRows actualModulus 3123 (.band 3120 3122) := by core033_kernel_decide
theorem stats3123 : actualRows3123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3123=5124 := by core033_kernel_decide
theorem rows3124 : actualRows3124=WordField.canonicalRows actualModulus 3124 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3124 : actualRows3124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3124=2892 := by core033_kernel_decide
theorem rows3125 : actualRows3125=WordField.canonicalRows actualModulus 3125 (.bxor 1299 3124) := by core033_kernel_decide
theorem stats3125 : actualRows3125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3125=7428 := by core033_kernel_decide
def partRows46 : List R1CS.Row := actualRows3062++actualRows3063++actualRows3064++actualRows3065++actualRows3066++actualRows3067++actualRows3068++actualRows3069++actualRows3070++actualRows3071++actualRows3072++actualRows3073++actualRows3074++actualRows3075++actualRows3076++actualRows3077++actualRows3078++actualRows3079++actualRows3080++actualRows3081++actualRows3082++actualRows3083++actualRows3084++actualRows3085++actualRows3086++actualRows3087++actualRows3088++actualRows3089++actualRows3090++actualRows3091++actualRows3092++actualRows3093++actualRows3094++actualRows3095++actualRows3096++actualRows3097++actualRows3098++actualRows3099++actualRows3100++actualRows3101++actualRows3102++actualRows3103++actualRows3104++actualRows3105++actualRows3106++actualRows3107++actualRows3108++actualRows3109++actualRows3110++actualRows3111++actualRows3112++actualRows3113++actualRows3114++actualRows3115++actualRows3116++actualRows3117++actualRows3118++actualRows3119++actualRows3120++actualRows3121++actualRows3122++actualRows3123++actualRows3124++actualRows3125
def partOps46 : List WordIR.Op := [.band 3059 3061,.bxor 3058 3062,.shr 3063 31,.badd 3057 3064,.literal (BitVec.ofNat 32 0),.bnot 3066,.band 3065 3067,.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 3072,.band 3071 3073,.bxor 3070 3074,.shr 3075 31,.badd 3069 3076,.literal (BitVec.ofNat 32 0),.bnot 3078,.bxor 3077 3079,.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 3084,.band 3083 3085,.bxor 3082 3086,.shr 3087 31,.badd 3081 3088,.literal (BitVec.ofNat 32 0),.bnot 3090,.badd 3089 3091,.bnot 3092,.band 3080 3093,.bxor 3068 3094,.shr 3095 31,.literal (BitVec.ofNat 32 1),.bxor 3096 3097,.badd 2168 2288,.literal (BitVec.ofNat 32 1048576),.bnot 3100,.band 3099 3101,.badd 2168 2288,.literal (BitVec.ofNat 32 1048576),.bnot 3104,.bxor 3103 3105,.badd 2168 2288,.literal (BitVec.ofNat 32 1048576),.bnot 3108,.badd 3107 3109,.bnot 3110,.band 3106 3111,.bxor 3102 3112,.shr 3113 31,.literal (BitVec.ofNat 32 1),.bxor 3114 3115,.band 3098 3116,.band 3056 3117,.literal (BitVec.ofNat 32 2),.bxor 1299 3119,.literal (BitVec.ofNat 32 0),.bnot 3121,.band 3120 3122,.literal (BitVec.ofNat 32 2),.bxor 1299 3124]
theorem partExact46 : partRows46=WordField.rows actualModulus 3062 partOps46 := by
  simp only [partRows46,partOps46,WordField.rows,rows3062,rows3063,rows3064,rows3065,rows3066,rows3067,rows3068,rows3069,rows3070,rows3071,rows3072,rows3073,rows3074,rows3075,rows3076,rows3077,rows3078,rows3079,rows3080,rows3081,rows3082,rows3083,rows3084,rows3085,rows3086,rows3087,rows3088,rows3089,rows3090,rows3091,rows3092,rows3093,rows3094,rows3095,rows3096,rows3097,rows3098,rows3099,rows3100,rows3101,rows3102,rows3103,rows3104,rows3105,rows3106,rows3107,rows3108,rows3109,rows3110,rows3111,rows3112,rows3113,rows3114,rows3115,rows3116,rows3117,rows3118,rows3119,rows3120,rows3121,rows3122,rows3123,rows3124,rows3125,List.append_assoc,List.append_nil]
theorem partLength46 : partOps46.length=64 := by decide
theorem partStats46 : partRows46.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows46=337728 := by
  simp only [partRows46,List.length_append,MatrixRowBlocks.rows_weight_append,stats3062.1,stats3062.2,stats3063.1,stats3063.2,stats3064.1,stats3064.2,stats3065.1,stats3065.2,stats3066.1,stats3066.2,stats3067.1,stats3067.2,stats3068.1,stats3068.2,stats3069.1,stats3069.2,stats3070.1,stats3070.2,stats3071.1,stats3071.2,stats3072.1,stats3072.2,stats3073.1,stats3073.2,stats3074.1,stats3074.2,stats3075.1,stats3075.2,stats3076.1,stats3076.2,stats3077.1,stats3077.2,stats3078.1,stats3078.2,stats3079.1,stats3079.2,stats3080.1,stats3080.2,stats3081.1,stats3081.2,stats3082.1,stats3082.2,stats3083.1,stats3083.2,stats3084.1,stats3084.2,stats3085.1,stats3085.2,stats3086.1,stats3086.2,stats3087.1,stats3087.2,stats3088.1,stats3088.2,stats3089.1,stats3089.2,stats3090.1,stats3090.2,stats3091.1,stats3091.2,stats3092.1,stats3092.2,stats3093.1,stats3093.2,stats3094.1,stats3094.2,stats3095.1,stats3095.2,stats3096.1,stats3096.2,stats3097.1,stats3097.2,stats3098.1,stats3098.2,stats3099.1,stats3099.2,stats3100.1,stats3100.2,stats3101.1,stats3101.2,stats3102.1,stats3102.2,stats3103.1,stats3103.2,stats3104.1,stats3104.2,stats3105.1,stats3105.2,stats3106.1,stats3106.2,stats3107.1,stats3107.2,stats3108.1,stats3108.2,stats3109.1,stats3109.2,stats3110.1,stats3110.2,stats3111.1,stats3111.2,stats3112.1,stats3112.2,stats3113.1,stats3113.2,stats3114.1,stats3114.2,stats3115.1,stats3115.2,stats3116.1,stats3116.2,stats3117.1,stats3117.2,stats3118.1,stats3118.2,stats3119.1,stats3119.2,stats3120.1,stats3120.2,stats3121.1,stats3121.2,stats3122.1,stats3122.2,stats3123.1,stats3123.2,stats3124.1,stats3124.2,stats3125.1,stats3125.2]
  decide
end AuthenticatedBranchRoundCheckedRows
