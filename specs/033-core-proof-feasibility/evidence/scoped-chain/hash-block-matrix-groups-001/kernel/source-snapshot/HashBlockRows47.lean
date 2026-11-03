import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData48
import HashBlockInstructionMatrixData49
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3080 : actualRows3080=WordField.canonicalRows actualModulus 3080 (.bxor 3078 3079) := by core033_kernel_decide
theorem stats3080 : actualRows3080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3080=7428 := by core033_kernel_decide
theorem rows3081 : actualRows3081=WordField.canonicalRows actualModulus 3081 (.rotr 3077 25) := by core033_kernel_decide
theorem stats3081 : actualRows3081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3081=5124 := by core033_kernel_decide
theorem rows3082 : actualRows3082=WordField.canonicalRows actualModulus 3082 (.bxor 3080 3081) := by core033_kernel_decide
theorem stats3082 : actualRows3082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3082=7428 := by core033_kernel_decide
theorem rows3083 : actualRows3083=WordField.canonicalRows actualModulus 3083 (.badd 2996 3082) := by core033_kernel_decide
theorem stats3083 : actualRows3083.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3083=5388 := by core033_kernel_decide
theorem rows3084 : actualRows3084=WordField.canonicalRows actualModulus 3084 (.band 3077 3050) := by core033_kernel_decide
theorem stats3084 : actualRows3084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3084=5124 := by core033_kernel_decide
theorem rows3085 : actualRows3085=WordField.canonicalRows actualModulus 3085 (.bnot 3077) := by core033_kernel_decide
theorem stats3085 : actualRows3085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3085=6276 := by core033_kernel_decide
theorem rows3086 : actualRows3086=WordField.canonicalRows actualModulus 3086 (.band 3085 3023) := by core033_kernel_decide
theorem stats3086 : actualRows3086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3086=5124 := by core033_kernel_decide
theorem rows3087 : actualRows3087=WordField.canonicalRows actualModulus 3087 (.bxor 3084 3086) := by core033_kernel_decide
theorem stats3087 : actualRows3087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3087=7428 := by core033_kernel_decide
theorem rows3088 : actualRows3088=WordField.canonicalRows actualModulus 3088 (.badd 3083 3087) := by core033_kernel_decide
theorem stats3088 : actualRows3088.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3088=5388 := by core033_kernel_decide
theorem rows3089 : actualRows3089=WordField.canonicalRows actualModulus 3089 (.literal (BitVec.ofNat 32 3259730800)) := by core033_kernel_decide
theorem stats3089 : actualRows3089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3089=3828 := by core033_kernel_decide
theorem rows3090 : actualRows3090=WordField.canonicalRows actualModulus 3090 (.badd 3088 3089) := by core033_kernel_decide
theorem stats3090 : actualRows3090.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3090=5388 := by core033_kernel_decide
theorem rows3091 : actualRows3091=WordField.canonicalRows actualModulus 3091 (.badd 3090 1670) := by core033_kernel_decide
theorem stats3091 : actualRows3091.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3091=5388 := by core033_kernel_decide
theorem rows3092 : actualRows3092=WordField.canonicalRows actualModulus 3092 (.rotr 3076 2) := by core033_kernel_decide
theorem stats3092 : actualRows3092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3092=5124 := by core033_kernel_decide
theorem rows3093 : actualRows3093=WordField.canonicalRows actualModulus 3093 (.rotr 3076 13) := by core033_kernel_decide
theorem stats3093 : actualRows3093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3093=5124 := by core033_kernel_decide
theorem rows3094 : actualRows3094=WordField.canonicalRows actualModulus 3094 (.bxor 3092 3093) := by core033_kernel_decide
theorem stats3094 : actualRows3094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3094=7428 := by core033_kernel_decide
theorem rows3095 : actualRows3095=WordField.canonicalRows actualModulus 3095 (.rotr 3076 22) := by core033_kernel_decide
theorem stats3095 : actualRows3095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3095=5124 := by core033_kernel_decide
theorem rows3096 : actualRows3096=WordField.canonicalRows actualModulus 3096 (.bxor 3094 3095) := by core033_kernel_decide
theorem stats3096 : actualRows3096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3096=7428 := by core033_kernel_decide
theorem rows3097 : actualRows3097=WordField.canonicalRows actualModulus 3097 (.band 3076 3049) := by core033_kernel_decide
theorem stats3097 : actualRows3097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3097=5124 := by core033_kernel_decide
theorem rows3098 : actualRows3098=WordField.canonicalRows actualModulus 3098 (.band 3076 3022) := by core033_kernel_decide
theorem stats3098 : actualRows3098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3098=5124 := by core033_kernel_decide
theorem rows3099 : actualRows3099=WordField.canonicalRows actualModulus 3099 (.bxor 3097 3098) := by core033_kernel_decide
theorem stats3099 : actualRows3099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3099=7428 := by core033_kernel_decide
theorem rows3100 : actualRows3100=WordField.canonicalRows actualModulus 3100 (.band 3049 3022) := by core033_kernel_decide
theorem stats3100 : actualRows3100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3100=5124 := by core033_kernel_decide
theorem rows3101 : actualRows3101=WordField.canonicalRows actualModulus 3101 (.bxor 3099 3100) := by core033_kernel_decide
theorem stats3101 : actualRows3101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3101=7428 := by core033_kernel_decide
theorem rows3102 : actualRows3102=WordField.canonicalRows actualModulus 3102 (.badd 3096 3101) := by core033_kernel_decide
theorem stats3102 : actualRows3102.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3102=5388 := by core033_kernel_decide
theorem rows3103 : actualRows3103=WordField.canonicalRows actualModulus 3103 (.badd 3091 3102) := by core033_kernel_decide
theorem stats3103 : actualRows3103.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3103=5388 := by core033_kernel_decide
theorem rows3104 : actualRows3104=WordField.canonicalRows actualModulus 3104 (.badd 2995 3091) := by core033_kernel_decide
theorem stats3104 : actualRows3104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3104=5388 := by core033_kernel_decide
theorem rows3105 : actualRows3105=WordField.canonicalRows actualModulus 3105 (.rotr 3104 6) := by core033_kernel_decide
theorem stats3105 : actualRows3105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3105=5124 := by core033_kernel_decide
theorem rows3106 : actualRows3106=WordField.canonicalRows actualModulus 3106 (.rotr 3104 11) := by core033_kernel_decide
theorem stats3106 : actualRows3106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3106=5124 := by core033_kernel_decide
theorem rows3107 : actualRows3107=WordField.canonicalRows actualModulus 3107 (.bxor 3105 3106) := by core033_kernel_decide
theorem stats3107 : actualRows3107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3107=7428 := by core033_kernel_decide
theorem rows3108 : actualRows3108=WordField.canonicalRows actualModulus 3108 (.rotr 3104 25) := by core033_kernel_decide
theorem stats3108 : actualRows3108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3108=5124 := by core033_kernel_decide
theorem rows3109 : actualRows3109=WordField.canonicalRows actualModulus 3109 (.bxor 3107 3108) := by core033_kernel_decide
theorem stats3109 : actualRows3109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3109=7428 := by core033_kernel_decide
theorem rows3110 : actualRows3110=WordField.canonicalRows actualModulus 3110 (.badd 3023 3109) := by core033_kernel_decide
theorem stats3110 : actualRows3110.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3110=5388 := by core033_kernel_decide
theorem rows3111 : actualRows3111=WordField.canonicalRows actualModulus 3111 (.band 3104 3077) := by core033_kernel_decide
theorem stats3111 : actualRows3111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3111=5124 := by core033_kernel_decide
theorem rows3112 : actualRows3112=WordField.canonicalRows actualModulus 3112 (.bnot 3104) := by core033_kernel_decide
theorem stats3112 : actualRows3112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3112=6276 := by core033_kernel_decide
theorem rows3113 : actualRows3113=WordField.canonicalRows actualModulus 3113 (.band 3112 3050) := by core033_kernel_decide
theorem stats3113 : actualRows3113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3113=5124 := by core033_kernel_decide
theorem rows3114 : actualRows3114=WordField.canonicalRows actualModulus 3114 (.bxor 3111 3113) := by core033_kernel_decide
theorem stats3114 : actualRows3114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3114=7428 := by core033_kernel_decide
theorem rows3115 : actualRows3115=WordField.canonicalRows actualModulus 3115 (.badd 3110 3114) := by core033_kernel_decide
theorem stats3115 : actualRows3115.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3115=5388 := by core033_kernel_decide
theorem rows3116 : actualRows3116=WordField.canonicalRows actualModulus 3116 (.literal (BitVec.ofNat 32 3345764771)) := by core033_kernel_decide
theorem stats3116 : actualRows3116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3116=3972 := by core033_kernel_decide
theorem rows3117 : actualRows3117=WordField.canonicalRows actualModulus 3117 (.badd 3115 3116) := by core033_kernel_decide
theorem stats3117 : actualRows3117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3117=5388 := by core033_kernel_decide
theorem rows3118 : actualRows3118=WordField.canonicalRows actualModulus 3118 (.badd 3117 1683) := by core033_kernel_decide
theorem stats3118 : actualRows3118.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3118=5388 := by core033_kernel_decide
theorem rows3119 : actualRows3119=WordField.canonicalRows actualModulus 3119 (.rotr 3103 2) := by core033_kernel_decide
theorem stats3119 : actualRows3119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3119=5124 := by core033_kernel_decide
theorem rows3120 : actualRows3120=WordField.canonicalRows actualModulus 3120 (.rotr 3103 13) := by core033_kernel_decide
theorem stats3120 : actualRows3120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3120=5124 := by core033_kernel_decide
theorem rows3121 : actualRows3121=WordField.canonicalRows actualModulus 3121 (.bxor 3119 3120) := by core033_kernel_decide
theorem stats3121 : actualRows3121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3121=7428 := by core033_kernel_decide
theorem rows3122 : actualRows3122=WordField.canonicalRows actualModulus 3122 (.rotr 3103 22) := by core033_kernel_decide
theorem stats3122 : actualRows3122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3122=5124 := by core033_kernel_decide
theorem rows3123 : actualRows3123=WordField.canonicalRows actualModulus 3123 (.bxor 3121 3122) := by core033_kernel_decide
theorem stats3123 : actualRows3123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3123=7428 := by core033_kernel_decide
theorem rows3124 : actualRows3124=WordField.canonicalRows actualModulus 3124 (.band 3103 3076) := by core033_kernel_decide
theorem stats3124 : actualRows3124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3124=5124 := by core033_kernel_decide
theorem rows3125 : actualRows3125=WordField.canonicalRows actualModulus 3125 (.band 3103 3049) := by core033_kernel_decide
theorem stats3125 : actualRows3125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3125=5124 := by core033_kernel_decide
theorem rows3126 : actualRows3126=WordField.canonicalRows actualModulus 3126 (.bxor 3124 3125) := by core033_kernel_decide
theorem stats3126 : actualRows3126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3126=7428 := by core033_kernel_decide
theorem rows3127 : actualRows3127=WordField.canonicalRows actualModulus 3127 (.band 3076 3049) := by core033_kernel_decide
theorem stats3127 : actualRows3127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3127=5124 := by core033_kernel_decide
theorem rows3128 : actualRows3128=WordField.canonicalRows actualModulus 3128 (.bxor 3126 3127) := by core033_kernel_decide
theorem stats3128 : actualRows3128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3128=7428 := by core033_kernel_decide
theorem rows3129 : actualRows3129=WordField.canonicalRows actualModulus 3129 (.badd 3123 3128) := by core033_kernel_decide
theorem stats3129 : actualRows3129.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3129=5388 := by core033_kernel_decide
theorem rows3130 : actualRows3130=WordField.canonicalRows actualModulus 3130 (.badd 3118 3129) := by core033_kernel_decide
theorem stats3130 : actualRows3130.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3130=5388 := by core033_kernel_decide
theorem rows3131 : actualRows3131=WordField.canonicalRows actualModulus 3131 (.badd 3022 3118) := by core033_kernel_decide
theorem stats3131 : actualRows3131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3131=5388 := by core033_kernel_decide
theorem rows3132 : actualRows3132=WordField.canonicalRows actualModulus 3132 (.rotr 3131 6) := by core033_kernel_decide
theorem stats3132 : actualRows3132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3132=5124 := by core033_kernel_decide
theorem rows3133 : actualRows3133=WordField.canonicalRows actualModulus 3133 (.rotr 3131 11) := by core033_kernel_decide
theorem stats3133 : actualRows3133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3133=5124 := by core033_kernel_decide
theorem rows3134 : actualRows3134=WordField.canonicalRows actualModulus 3134 (.bxor 3132 3133) := by core033_kernel_decide
theorem stats3134 : actualRows3134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3134=7428 := by core033_kernel_decide
theorem rows3135 : actualRows3135=WordField.canonicalRows actualModulus 3135 (.rotr 3131 25) := by core033_kernel_decide
theorem stats3135 : actualRows3135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3135=5124 := by core033_kernel_decide
theorem rows3136 : actualRows3136=WordField.canonicalRows actualModulus 3136 (.bxor 3134 3135) := by core033_kernel_decide
theorem stats3136 : actualRows3136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3136=7428 := by core033_kernel_decide
theorem rows3137 : actualRows3137=WordField.canonicalRows actualModulus 3137 (.badd 3050 3136) := by core033_kernel_decide
theorem stats3137 : actualRows3137.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3137=5388 := by core033_kernel_decide
theorem rows3138 : actualRows3138=WordField.canonicalRows actualModulus 3138 (.band 3131 3104) := by core033_kernel_decide
theorem stats3138 : actualRows3138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3138=5124 := by core033_kernel_decide
theorem rows3139 : actualRows3139=WordField.canonicalRows actualModulus 3139 (.bnot 3131) := by core033_kernel_decide
theorem stats3139 : actualRows3139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3139=6276 := by core033_kernel_decide
theorem rows3140 : actualRows3140=WordField.canonicalRows actualModulus 3140 (.band 3139 3077) := by core033_kernel_decide
theorem stats3140 : actualRows3140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3140=5124 := by core033_kernel_decide
theorem rows3141 : actualRows3141=WordField.canonicalRows actualModulus 3141 (.bxor 3138 3140) := by core033_kernel_decide
theorem stats3141 : actualRows3141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3141=7428 := by core033_kernel_decide
theorem rows3142 : actualRows3142=WordField.canonicalRows actualModulus 3142 (.badd 3137 3141) := by core033_kernel_decide
theorem stats3142 : actualRows3142.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3142=5388 := by core033_kernel_decide
theorem rows3143 : actualRows3143=WordField.canonicalRows actualModulus 3143 (.literal (BitVec.ofNat 32 3516065817)) := by core033_kernel_decide
theorem stats3143 : actualRows3143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3143=3828 := by core033_kernel_decide
def partRows47 : List R1CS.Row := actualRows3080++actualRows3081++actualRows3082++actualRows3083++actualRows3084++actualRows3085++actualRows3086++actualRows3087++actualRows3088++actualRows3089++actualRows3090++actualRows3091++actualRows3092++actualRows3093++actualRows3094++actualRows3095++actualRows3096++actualRows3097++actualRows3098++actualRows3099++actualRows3100++actualRows3101++actualRows3102++actualRows3103++actualRows3104++actualRows3105++actualRows3106++actualRows3107++actualRows3108++actualRows3109++actualRows3110++actualRows3111++actualRows3112++actualRows3113++actualRows3114++actualRows3115++actualRows3116++actualRows3117++actualRows3118++actualRows3119++actualRows3120++actualRows3121++actualRows3122++actualRows3123++actualRows3124++actualRows3125++actualRows3126++actualRows3127++actualRows3128++actualRows3129++actualRows3130++actualRows3131++actualRows3132++actualRows3133++actualRows3134++actualRows3135++actualRows3136++actualRows3137++actualRows3138++actualRows3139++actualRows3140++actualRows3141++actualRows3142++actualRows3143
def partOps47 : List WordIR.Op := [.bxor 3078 3079,.rotr 3077 25,.bxor 3080 3081,.badd 2996 3082,.band 3077 3050,.bnot 3077,.band 3085 3023,.bxor 3084 3086,.badd 3083 3087,.literal (BitVec.ofNat 32 3259730800),.badd 3088 3089,.badd 3090 1670,.rotr 3076 2,.rotr 3076 13,.bxor 3092 3093,.rotr 3076 22,.bxor 3094 3095,.band 3076 3049,.band 3076 3022,.bxor 3097 3098,.band 3049 3022,.bxor 3099 3100,.badd 3096 3101,.badd 3091 3102,.badd 2995 3091,.rotr 3104 6,.rotr 3104 11,.bxor 3105 3106,.rotr 3104 25,.bxor 3107 3108,.badd 3023 3109,.band 3104 3077,.bnot 3104,.band 3112 3050,.bxor 3111 3113,.badd 3110 3114,.literal (BitVec.ofNat 32 3345764771),.badd 3115 3116,.badd 3117 1683,.rotr 3103 2,.rotr 3103 13,.bxor 3119 3120,.rotr 3103 22,.bxor 3121 3122,.band 3103 3076,.band 3103 3049,.bxor 3124 3125,.band 3076 3049,.bxor 3126 3127,.badd 3123 3128,.badd 3118 3129,.badd 3022 3118,.rotr 3131 6,.rotr 3131 11,.bxor 3132 3133,.rotr 3131 25,.bxor 3134 3135,.badd 3050 3136,.band 3131 3104,.bnot 3131,.band 3139 3077,.bxor 3138 3140,.badd 3137 3141,.literal (BitVec.ofNat 32 3516065817)]
theorem partExact47 : partRows47=WordField.rows actualModulus 3080 partOps47 := by
  simp only [partRows47,partOps47,WordField.rows,rows3080,rows3081,rows3082,rows3083,rows3084,rows3085,rows3086,rows3087,rows3088,rows3089,rows3090,rows3091,rows3092,rows3093,rows3094,rows3095,rows3096,rows3097,rows3098,rows3099,rows3100,rows3101,rows3102,rows3103,rows3104,rows3105,rows3106,rows3107,rows3108,rows3109,rows3110,rows3111,rows3112,rows3113,rows3114,rows3115,rows3116,rows3117,rows3118,rows3119,rows3120,rows3121,rows3122,rows3123,rows3124,rows3125,rows3126,rows3127,rows3128,rows3129,rows3130,rows3131,rows3132,rows3133,rows3134,rows3135,rows3136,rows3137,rows3138,rows3139,rows3140,rows3141,rows3142,rows3143,List.append_assoc,List.append_nil]
theorem partLength47 : partOps47.length=64 := by decide
theorem partStats47 : partRows47.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows47=371040 := by
  simp only [partRows47,List.length_append,MatrixRowBlocks.rows_weight_append,stats3080.1,stats3080.2,stats3081.1,stats3081.2,stats3082.1,stats3082.2,stats3083.1,stats3083.2,stats3084.1,stats3084.2,stats3085.1,stats3085.2,stats3086.1,stats3086.2,stats3087.1,stats3087.2,stats3088.1,stats3088.2,stats3089.1,stats3089.2,stats3090.1,stats3090.2,stats3091.1,stats3091.2,stats3092.1,stats3092.2,stats3093.1,stats3093.2,stats3094.1,stats3094.2,stats3095.1,stats3095.2,stats3096.1,stats3096.2,stats3097.1,stats3097.2,stats3098.1,stats3098.2,stats3099.1,stats3099.2,stats3100.1,stats3100.2,stats3101.1,stats3101.2,stats3102.1,stats3102.2,stats3103.1,stats3103.2,stats3104.1,stats3104.2,stats3105.1,stats3105.2,stats3106.1,stats3106.2,stats3107.1,stats3107.2,stats3108.1,stats3108.2,stats3109.1,stats3109.2,stats3110.1,stats3110.2,stats3111.1,stats3111.2,stats3112.1,stats3112.2,stats3113.1,stats3113.2,stats3114.1,stats3114.2,stats3115.1,stats3115.2,stats3116.1,stats3116.2,stats3117.1,stats3117.2,stats3118.1,stats3118.2,stats3119.1,stats3119.2,stats3120.1,stats3120.2,stats3121.1,stats3121.2,stats3122.1,stats3122.2,stats3123.1,stats3123.2,stats3124.1,stats3124.2,stats3125.1,stats3125.2,stats3126.1,stats3126.2,stats3127.1,stats3127.2,stats3128.1,stats3128.2,stats3129.1,stats3129.2,stats3130.1,stats3130.2,stats3131.1,stats3131.2,stats3132.1,stats3132.2,stats3133.1,stats3133.2,stats3134.1,stats3134.2,stats3135.1,stats3135.2,stats3136.1,stats3136.2,stats3137.1,stats3137.2,stats3138.1,stats3138.2,stats3139.1,stats3139.2,stats3140.1,stats3140.2,stats3141.1,stats3141.2,stats3142.1,stats3142.2,stats3143.1,stats3143.2]
  decide
end HashBlockCheckedRows
