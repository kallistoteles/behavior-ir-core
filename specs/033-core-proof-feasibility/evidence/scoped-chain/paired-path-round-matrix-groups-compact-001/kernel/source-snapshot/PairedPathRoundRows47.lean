import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData48
import PairedPathRoundInstructionMatrixData49
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3104 : actualRows3104=WordField.canonicalRows actualModulus 3104 (.bxor 616 3103) := by core033_kernel_decide
theorem stats3104 : actualRows3104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3104=7428 := by core033_kernel_decide
theorem rows3105 : actualRows3105=WordField.canonicalRows actualModulus 3105 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3105 : actualRows3105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3105=2820 := by core033_kernel_decide
theorem rows3106 : actualRows3106=WordField.canonicalRows actualModulus 3106 (.bnot 3105) := by core033_kernel_decide
theorem stats3106 : actualRows3106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3106=6276 := by core033_kernel_decide
theorem rows3107 : actualRows3107=WordField.canonicalRows actualModulus 3107 (.badd 3104 3106) := by core033_kernel_decide
theorem stats3107 : actualRows3107.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3107=5388 := by core033_kernel_decide
theorem rows3108 : actualRows3108=WordField.canonicalRows actualModulus 3108 (.bnot 3107) := by core033_kernel_decide
theorem stats3108 : actualRows3108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3108=6276 := by core033_kernel_decide
theorem rows3109 : actualRows3109=WordField.canonicalRows actualModulus 3109 (.band 3102 3108) := by core033_kernel_decide
theorem stats3109 : actualRows3109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3109=5124 := by core033_kernel_decide
theorem rows3110 : actualRows3110=WordField.canonicalRows actualModulus 3110 (.bxor 3097 3109) := by core033_kernel_decide
theorem stats3110 : actualRows3110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3110=7428 := by core033_kernel_decide
theorem rows3111 : actualRows3111=WordField.canonicalRows actualModulus 3111 (.shr 3110 31) := by core033_kernel_decide
theorem stats3111 : actualRows3111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3111=2892 := by core033_kernel_decide
theorem rows3112 : actualRows3112=WordField.canonicalRows actualModulus 3112 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3112 : actualRows3112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3112=2892 := by core033_kernel_decide
theorem rows3113 : actualRows3113=WordField.canonicalRows actualModulus 3113 (.bxor 3111 3112) := by core033_kernel_decide
theorem stats3113 : actualRows3113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3113=7428 := by core033_kernel_decide
theorem rows3114 : actualRows3114=WordField.canonicalRows actualModulus 3114 (.bnot 3113) := by core033_kernel_decide
theorem stats3114 : actualRows3114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3114=6276 := by core033_kernel_decide
theorem rows3115 : actualRows3115=WordField.canonicalRows actualModulus 3115 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3115 : actualRows3115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3115=2892 := by core033_kernel_decide
theorem rows3116 : actualRows3116=WordField.canonicalRows actualModulus 3116 (.badd 3114 3115) := by core033_kernel_decide
theorem stats3116 : actualRows3116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3116=5388 := by core033_kernel_decide
theorem rows3117 : actualRows3117=WordField.canonicalRows actualModulus 3117 (.bnot 3116) := by core033_kernel_decide
theorem stats3117 : actualRows3117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3117=6276 := by core033_kernel_decide
theorem rows3118 : actualRows3118=WordField.canonicalRows actualModulus 3118 (.band 3117 1867) := by core033_kernel_decide
theorem stats3118 : actualRows3118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3118=5124 := by core033_kernel_decide
theorem rows3119 : actualRows3119=WordField.canonicalRows actualModulus 3119 (.bxor 3092 3118) := by core033_kernel_decide
theorem stats3119 : actualRows3119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3119=7428 := by core033_kernel_decide
theorem rows3120 : actualRows3120=WordField.canonicalRows actualModulus 3120 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3120 : actualRows3120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3120=2892 := by core033_kernel_decide
theorem rows3121 : actualRows3121=WordField.canonicalRows actualModulus 3121 (.bxor 616 3120) := by core033_kernel_decide
theorem stats3121 : actualRows3121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3121=7428 := by core033_kernel_decide
theorem rows3122 : actualRows3122=WordField.canonicalRows actualModulus 3122 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3122 : actualRows3122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3122=2820 := by core033_kernel_decide
theorem rows3123 : actualRows3123=WordField.canonicalRows actualModulus 3123 (.bnot 3122) := by core033_kernel_decide
theorem stats3123 : actualRows3123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3123=6276 := by core033_kernel_decide
theorem rows3124 : actualRows3124=WordField.canonicalRows actualModulus 3124 (.band 3121 3123) := by core033_kernel_decide
theorem stats3124 : actualRows3124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3124=5124 := by core033_kernel_decide
theorem rows3125 : actualRows3125=WordField.canonicalRows actualModulus 3125 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3125 : actualRows3125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3125=2892 := by core033_kernel_decide
theorem rows3126 : actualRows3126=WordField.canonicalRows actualModulus 3126 (.bxor 616 3125) := by core033_kernel_decide
theorem stats3126 : actualRows3126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3126=7428 := by core033_kernel_decide
theorem rows3127 : actualRows3127=WordField.canonicalRows actualModulus 3127 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3127 : actualRows3127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3127=2820 := by core033_kernel_decide
theorem rows3128 : actualRows3128=WordField.canonicalRows actualModulus 3128 (.bnot 3127) := by core033_kernel_decide
theorem stats3128 : actualRows3128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3128=6276 := by core033_kernel_decide
theorem rows3129 : actualRows3129=WordField.canonicalRows actualModulus 3129 (.bxor 3126 3128) := by core033_kernel_decide
theorem stats3129 : actualRows3129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3129=7428 := by core033_kernel_decide
theorem rows3130 : actualRows3130=WordField.canonicalRows actualModulus 3130 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3130 : actualRows3130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3130=2892 := by core033_kernel_decide
theorem rows3131 : actualRows3131=WordField.canonicalRows actualModulus 3131 (.bxor 616 3130) := by core033_kernel_decide
theorem stats3131 : actualRows3131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3131=7428 := by core033_kernel_decide
theorem rows3132 : actualRows3132=WordField.canonicalRows actualModulus 3132 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3132 : actualRows3132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3132=2820 := by core033_kernel_decide
theorem rows3133 : actualRows3133=WordField.canonicalRows actualModulus 3133 (.bnot 3132) := by core033_kernel_decide
theorem stats3133 : actualRows3133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3133=6276 := by core033_kernel_decide
theorem rows3134 : actualRows3134=WordField.canonicalRows actualModulus 3134 (.badd 3131 3133) := by core033_kernel_decide
theorem stats3134 : actualRows3134.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3134=5388 := by core033_kernel_decide
theorem rows3135 : actualRows3135=WordField.canonicalRows actualModulus 3135 (.bnot 3134) := by core033_kernel_decide
theorem stats3135 : actualRows3135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3135=6276 := by core033_kernel_decide
theorem rows3136 : actualRows3136=WordField.canonicalRows actualModulus 3136 (.band 3129 3135) := by core033_kernel_decide
theorem stats3136 : actualRows3136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3136=5124 := by core033_kernel_decide
theorem rows3137 : actualRows3137=WordField.canonicalRows actualModulus 3137 (.bxor 3124 3136) := by core033_kernel_decide
theorem stats3137 : actualRows3137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3137=7428 := by core033_kernel_decide
theorem rows3138 : actualRows3138=WordField.canonicalRows actualModulus 3138 (.shr 3137 31) := by core033_kernel_decide
theorem stats3138 : actualRows3138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3138=2892 := by core033_kernel_decide
theorem rows3139 : actualRows3139=WordField.canonicalRows actualModulus 3139 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3139 : actualRows3139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3139=2892 := by core033_kernel_decide
theorem rows3140 : actualRows3140=WordField.canonicalRows actualModulus 3140 (.bxor 3138 3139) := by core033_kernel_decide
theorem stats3140 : actualRows3140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3140=7428 := by core033_kernel_decide
theorem rows3141 : actualRows3141=WordField.canonicalRows actualModulus 3141 (.bnot 3140) := by core033_kernel_decide
theorem stats3141 : actualRows3141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3141=6276 := by core033_kernel_decide
theorem rows3142 : actualRows3142=WordField.canonicalRows actualModulus 3142 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3142 : actualRows3142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3142=2892 := by core033_kernel_decide
theorem rows3143 : actualRows3143=WordField.canonicalRows actualModulus 3143 (.badd 3141 3142) := by core033_kernel_decide
theorem stats3143 : actualRows3143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3143=5388 := by core033_kernel_decide
theorem rows3144 : actualRows3144=WordField.canonicalRows actualModulus 3144 (.band 3143 2028) := by core033_kernel_decide
theorem stats3144 : actualRows3144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3144=5124 := by core033_kernel_decide
theorem rows3145 : actualRows3145=WordField.canonicalRows actualModulus 3145 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3145 : actualRows3145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3145=2892 := by core033_kernel_decide
theorem rows3146 : actualRows3146=WordField.canonicalRows actualModulus 3146 (.bxor 616 3145) := by core033_kernel_decide
theorem stats3146 : actualRows3146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3146=7428 := by core033_kernel_decide
theorem rows3147 : actualRows3147=WordField.canonicalRows actualModulus 3147 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3147 : actualRows3147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3147=2820 := by core033_kernel_decide
theorem rows3148 : actualRows3148=WordField.canonicalRows actualModulus 3148 (.bnot 3147) := by core033_kernel_decide
theorem stats3148 : actualRows3148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3148=6276 := by core033_kernel_decide
theorem rows3149 : actualRows3149=WordField.canonicalRows actualModulus 3149 (.band 3146 3148) := by core033_kernel_decide
theorem stats3149 : actualRows3149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3149=5124 := by core033_kernel_decide
theorem rows3150 : actualRows3150=WordField.canonicalRows actualModulus 3150 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3150 : actualRows3150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3150=2892 := by core033_kernel_decide
theorem rows3151 : actualRows3151=WordField.canonicalRows actualModulus 3151 (.bxor 616 3150) := by core033_kernel_decide
theorem stats3151 : actualRows3151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3151=7428 := by core033_kernel_decide
theorem rows3152 : actualRows3152=WordField.canonicalRows actualModulus 3152 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3152 : actualRows3152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3152=2820 := by core033_kernel_decide
theorem rows3153 : actualRows3153=WordField.canonicalRows actualModulus 3153 (.bnot 3152) := by core033_kernel_decide
theorem stats3153 : actualRows3153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3153=6276 := by core033_kernel_decide
theorem rows3154 : actualRows3154=WordField.canonicalRows actualModulus 3154 (.bxor 3151 3153) := by core033_kernel_decide
theorem stats3154 : actualRows3154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3154=7428 := by core033_kernel_decide
theorem rows3155 : actualRows3155=WordField.canonicalRows actualModulus 3155 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3155 : actualRows3155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3155=2892 := by core033_kernel_decide
theorem rows3156 : actualRows3156=WordField.canonicalRows actualModulus 3156 (.bxor 616 3155) := by core033_kernel_decide
theorem stats3156 : actualRows3156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3156=7428 := by core033_kernel_decide
theorem rows3157 : actualRows3157=WordField.canonicalRows actualModulus 3157 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3157 : actualRows3157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3157=2820 := by core033_kernel_decide
theorem rows3158 : actualRows3158=WordField.canonicalRows actualModulus 3158 (.bnot 3157) := by core033_kernel_decide
theorem stats3158 : actualRows3158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3158=6276 := by core033_kernel_decide
theorem rows3159 : actualRows3159=WordField.canonicalRows actualModulus 3159 (.badd 3156 3158) := by core033_kernel_decide
theorem stats3159 : actualRows3159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3159=5388 := by core033_kernel_decide
theorem rows3160 : actualRows3160=WordField.canonicalRows actualModulus 3160 (.bnot 3159) := by core033_kernel_decide
theorem stats3160 : actualRows3160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3160=6276 := by core033_kernel_decide
theorem rows3161 : actualRows3161=WordField.canonicalRows actualModulus 3161 (.band 3154 3160) := by core033_kernel_decide
theorem stats3161 : actualRows3161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3161=5124 := by core033_kernel_decide
theorem rows3162 : actualRows3162=WordField.canonicalRows actualModulus 3162 (.bxor 3149 3161) := by core033_kernel_decide
theorem stats3162 : actualRows3162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3162=7428 := by core033_kernel_decide
theorem rows3163 : actualRows3163=WordField.canonicalRows actualModulus 3163 (.shr 3162 31) := by core033_kernel_decide
theorem stats3163 : actualRows3163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3163=2892 := by core033_kernel_decide
theorem rows3164 : actualRows3164=WordField.canonicalRows actualModulus 3164 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3164 : actualRows3164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3164=2892 := by core033_kernel_decide
theorem rows3165 : actualRows3165=WordField.canonicalRows actualModulus 3165 (.bxor 3163 3164) := by core033_kernel_decide
theorem stats3165 : actualRows3165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3165=7428 := by core033_kernel_decide
theorem rows3166 : actualRows3166=WordField.canonicalRows actualModulus 3166 (.bnot 3165) := by core033_kernel_decide
theorem stats3166 : actualRows3166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3166=6276 := by core033_kernel_decide
theorem rows3167 : actualRows3167=WordField.canonicalRows actualModulus 3167 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3167 : actualRows3167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3167=2892 := by core033_kernel_decide
def partRows47 : List R1CS.Row := actualRows3104++actualRows3105++actualRows3106++actualRows3107++actualRows3108++actualRows3109++actualRows3110++actualRows3111++actualRows3112++actualRows3113++actualRows3114++actualRows3115++actualRows3116++actualRows3117++actualRows3118++actualRows3119++actualRows3120++actualRows3121++actualRows3122++actualRows3123++actualRows3124++actualRows3125++actualRows3126++actualRows3127++actualRows3128++actualRows3129++actualRows3130++actualRows3131++actualRows3132++actualRows3133++actualRows3134++actualRows3135++actualRows3136++actualRows3137++actualRows3138++actualRows3139++actualRows3140++actualRows3141++actualRows3142++actualRows3143++actualRows3144++actualRows3145++actualRows3146++actualRows3147++actualRows3148++actualRows3149++actualRows3150++actualRows3151++actualRows3152++actualRows3153++actualRows3154++actualRows3155++actualRows3156++actualRows3157++actualRows3158++actualRows3159++actualRows3160++actualRows3161++actualRows3162++actualRows3163++actualRows3164++actualRows3165++actualRows3166++actualRows3167
def partOps47 : List WordIR.Op := [.bxor 616 3103,.literal (BitVec.ofNat 32 0),.bnot 3105,.badd 3104 3106,.bnot 3107,.band 3102 3108,.bxor 3097 3109,.shr 3110 31,.literal (BitVec.ofNat 32 1),.bxor 3111 3112,.bnot 3113,.literal (BitVec.ofNat 32 1),.badd 3114 3115,.bnot 3116,.band 3117 1867,.bxor 3092 3118,.literal (BitVec.ofNat 32 2),.bxor 616 3120,.literal (BitVec.ofNat 32 0),.bnot 3122,.band 3121 3123,.literal (BitVec.ofNat 32 2),.bxor 616 3125,.literal (BitVec.ofNat 32 0),.bnot 3127,.bxor 3126 3128,.literal (BitVec.ofNat 32 2),.bxor 616 3130,.literal (BitVec.ofNat 32 0),.bnot 3132,.badd 3131 3133,.bnot 3134,.band 3129 3135,.bxor 3124 3136,.shr 3137 31,.literal (BitVec.ofNat 32 1),.bxor 3138 3139,.bnot 3140,.literal (BitVec.ofNat 32 1),.badd 3141 3142,.band 3143 2028,.literal (BitVec.ofNat 32 2),.bxor 616 3145,.literal (BitVec.ofNat 32 0),.bnot 3147,.band 3146 3148,.literal (BitVec.ofNat 32 2),.bxor 616 3150,.literal (BitVec.ofNat 32 0),.bnot 3152,.bxor 3151 3153,.literal (BitVec.ofNat 32 2),.bxor 616 3155,.literal (BitVec.ofNat 32 0),.bnot 3157,.badd 3156 3158,.bnot 3159,.band 3154 3160,.bxor 3149 3161,.shr 3162 31,.literal (BitVec.ofNat 32 1),.bxor 3163 3164,.bnot 3165,.literal (BitVec.ofNat 32 1)]
theorem partExact47 : partRows47=WordField.rows actualModulus 3104 partOps47 := by
  simp only [partRows47,partOps47,WordField.rows,rows3104,rows3105,rows3106,rows3107,rows3108,rows3109,rows3110,rows3111,rows3112,rows3113,rows3114,rows3115,rows3116,rows3117,rows3118,rows3119,rows3120,rows3121,rows3122,rows3123,rows3124,rows3125,rows3126,rows3127,rows3128,rows3129,rows3130,rows3131,rows3132,rows3133,rows3134,rows3135,rows3136,rows3137,rows3138,rows3139,rows3140,rows3141,rows3142,rows3143,rows3144,rows3145,rows3146,rows3147,rows3148,rows3149,rows3150,rows3151,rows3152,rows3153,rows3154,rows3155,rows3156,rows3157,rows3158,rows3159,rows3160,rows3161,rows3162,rows3163,rows3164,rows3165,rows3166,rows3167,List.append_assoc,List.append_nil]
theorem partLength47 : partOps47.length=64 := by decide
theorem partStats47 : partRows47.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows47=332640 := by
  simp only [partRows47,List.length_append,MatrixRowBlocks.rows_weight_append,stats3104.1,stats3104.2,stats3105.1,stats3105.2,stats3106.1,stats3106.2,stats3107.1,stats3107.2,stats3108.1,stats3108.2,stats3109.1,stats3109.2,stats3110.1,stats3110.2,stats3111.1,stats3111.2,stats3112.1,stats3112.2,stats3113.1,stats3113.2,stats3114.1,stats3114.2,stats3115.1,stats3115.2,stats3116.1,stats3116.2,stats3117.1,stats3117.2,stats3118.1,stats3118.2,stats3119.1,stats3119.2,stats3120.1,stats3120.2,stats3121.1,stats3121.2,stats3122.1,stats3122.2,stats3123.1,stats3123.2,stats3124.1,stats3124.2,stats3125.1,stats3125.2,stats3126.1,stats3126.2,stats3127.1,stats3127.2,stats3128.1,stats3128.2,stats3129.1,stats3129.2,stats3130.1,stats3130.2,stats3131.1,stats3131.2,stats3132.1,stats3132.2,stats3133.1,stats3133.2,stats3134.1,stats3134.2,stats3135.1,stats3135.2,stats3136.1,stats3136.2,stats3137.1,stats3137.2,stats3138.1,stats3138.2,stats3139.1,stats3139.2,stats3140.1,stats3140.2,stats3141.1,stats3141.2,stats3142.1,stats3142.2,stats3143.1,stats3143.2,stats3144.1,stats3144.2,stats3145.1,stats3145.2,stats3146.1,stats3146.2,stats3147.1,stats3147.2,stats3148.1,stats3148.2,stats3149.1,stats3149.2,stats3150.1,stats3150.2,stats3151.1,stats3151.2,stats3152.1,stats3152.2,stats3153.1,stats3153.2,stats3154.1,stats3154.2,stats3155.1,stats3155.2,stats3156.1,stats3156.2,stats3157.1,stats3157.2,stats3158.1,stats3158.2,stats3159.1,stats3159.2,stats3160.1,stats3160.2,stats3161.1,stats3161.2,stats3162.1,stats3162.2,stats3163.1,stats3163.2,stats3164.1,stats3164.2,stats3165.1,stats3165.2,stats3166.1,stats3166.2,stats3167.1,stats3167.2]
  decide
end PairedPathRoundCheckedRows
