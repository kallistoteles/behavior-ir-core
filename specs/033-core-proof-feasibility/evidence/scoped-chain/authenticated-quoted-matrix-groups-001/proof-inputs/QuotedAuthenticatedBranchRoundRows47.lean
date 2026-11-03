import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData48
import AuthenticatedBranchRoundInstructionMatrixData49
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3126 : actualRows3126=WordField.canonicalRows actualModulus 3126 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3126 : actualRows3126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3126=2820 := by core033_kernel_decide
theorem rows3127 : actualRows3127=WordField.canonicalRows actualModulus 3127 (.bnot 3126) := by core033_kernel_decide
theorem stats3127 : actualRows3127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3127=6276 := by core033_kernel_decide
theorem rows3128 : actualRows3128=WordField.canonicalRows actualModulus 3128 (.bxor 3125 3127) := by core033_kernel_decide
theorem stats3128 : actualRows3128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3128=7428 := by core033_kernel_decide
theorem rows3129 : actualRows3129=WordField.canonicalRows actualModulus 3129 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3129 : actualRows3129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3129=2892 := by core033_kernel_decide
theorem rows3130 : actualRows3130=WordField.canonicalRows actualModulus 3130 (.bxor 1299 3129) := by core033_kernel_decide
theorem stats3130 : actualRows3130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3130=7428 := by core033_kernel_decide
theorem rows3131 : actualRows3131=WordField.canonicalRows actualModulus 3131 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3131 : actualRows3131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3131=2820 := by core033_kernel_decide
theorem rows3132 : actualRows3132=WordField.canonicalRows actualModulus 3132 (.bnot 3131) := by core033_kernel_decide
theorem stats3132 : actualRows3132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3132=6276 := by core033_kernel_decide
theorem rows3133 : actualRows3133=WordField.canonicalRows actualModulus 3133 (.badd 3130 3132) := by core033_kernel_decide
theorem stats3133 : actualRows3133.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3133=5388 := by core033_kernel_decide
theorem rows3134 : actualRows3134=WordField.canonicalRows actualModulus 3134 (.bnot 3133) := by core033_kernel_decide
theorem stats3134 : actualRows3134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3134=6276 := by core033_kernel_decide
theorem rows3135 : actualRows3135=WordField.canonicalRows actualModulus 3135 (.band 3128 3134) := by core033_kernel_decide
theorem stats3135 : actualRows3135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3135=5124 := by core033_kernel_decide
theorem rows3136 : actualRows3136=WordField.canonicalRows actualModulus 3136 (.bxor 3123 3135) := by core033_kernel_decide
theorem stats3136 : actualRows3136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3136=7428 := by core033_kernel_decide
theorem rows3137 : actualRows3137=WordField.canonicalRows actualModulus 3137 (.shr 3136 31) := by core033_kernel_decide
theorem stats3137 : actualRows3137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3137=2892 := by core033_kernel_decide
theorem rows3138 : actualRows3138=WordField.canonicalRows actualModulus 3138 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3138 : actualRows3138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3138=2892 := by core033_kernel_decide
theorem rows3139 : actualRows3139=WordField.canonicalRows actualModulus 3139 (.bxor 3137 3138) := by core033_kernel_decide
theorem stats3139 : actualRows3139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3139=7428 := by core033_kernel_decide
theorem rows3140 : actualRows3140=WordField.canonicalRows actualModulus 3140 (.bnot 3139) := by core033_kernel_decide
theorem stats3140 : actualRows3140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3140=6276 := by core033_kernel_decide
theorem rows3141 : actualRows3141=WordField.canonicalRows actualModulus 3141 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3141 : actualRows3141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3141=2892 := by core033_kernel_decide
theorem rows3142 : actualRows3142=WordField.canonicalRows actualModulus 3142 (.badd 3140 3141) := by core033_kernel_decide
theorem stats3142 : actualRows3142.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3142=5388 := by core033_kernel_decide
theorem rows3143 : actualRows3143=WordField.canonicalRows actualModulus 3143 (.band 3142 1684) := by core033_kernel_decide
theorem stats3143 : actualRows3143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3143=5124 := by core033_kernel_decide
theorem rows3144 : actualRows3144=WordField.canonicalRows actualModulus 3144 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3144 : actualRows3144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3144=2892 := by core033_kernel_decide
theorem rows3145 : actualRows3145=WordField.canonicalRows actualModulus 3145 (.bxor 1299 3144) := by core033_kernel_decide
theorem stats3145 : actualRows3145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3145=7428 := by core033_kernel_decide
theorem rows3146 : actualRows3146=WordField.canonicalRows actualModulus 3146 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3146 : actualRows3146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3146=2820 := by core033_kernel_decide
theorem rows3147 : actualRows3147=WordField.canonicalRows actualModulus 3147 (.bnot 3146) := by core033_kernel_decide
theorem stats3147 : actualRows3147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3147=6276 := by core033_kernel_decide
theorem rows3148 : actualRows3148=WordField.canonicalRows actualModulus 3148 (.band 3145 3147) := by core033_kernel_decide
theorem stats3148 : actualRows3148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3148=5124 := by core033_kernel_decide
theorem rows3149 : actualRows3149=WordField.canonicalRows actualModulus 3149 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3149 : actualRows3149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3149=2892 := by core033_kernel_decide
theorem rows3150 : actualRows3150=WordField.canonicalRows actualModulus 3150 (.bxor 1299 3149) := by core033_kernel_decide
theorem stats3150 : actualRows3150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3150=7428 := by core033_kernel_decide
theorem rows3151 : actualRows3151=WordField.canonicalRows actualModulus 3151 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3151 : actualRows3151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3151=2820 := by core033_kernel_decide
theorem rows3152 : actualRows3152=WordField.canonicalRows actualModulus 3152 (.bnot 3151) := by core033_kernel_decide
theorem stats3152 : actualRows3152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3152=6276 := by core033_kernel_decide
theorem rows3153 : actualRows3153=WordField.canonicalRows actualModulus 3153 (.bxor 3150 3152) := by core033_kernel_decide
theorem stats3153 : actualRows3153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3153=7428 := by core033_kernel_decide
theorem rows3154 : actualRows3154=WordField.canonicalRows actualModulus 3154 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3154 : actualRows3154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3154=2892 := by core033_kernel_decide
theorem rows3155 : actualRows3155=WordField.canonicalRows actualModulus 3155 (.bxor 1299 3154) := by core033_kernel_decide
theorem stats3155 : actualRows3155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3155=7428 := by core033_kernel_decide
theorem rows3156 : actualRows3156=WordField.canonicalRows actualModulus 3156 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3156 : actualRows3156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3156=2820 := by core033_kernel_decide
theorem rows3157 : actualRows3157=WordField.canonicalRows actualModulus 3157 (.bnot 3156) := by core033_kernel_decide
theorem stats3157 : actualRows3157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3157=6276 := by core033_kernel_decide
theorem rows3158 : actualRows3158=WordField.canonicalRows actualModulus 3158 (.badd 3155 3157) := by core033_kernel_decide
theorem stats3158 : actualRows3158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3158=5388 := by core033_kernel_decide
theorem rows3159 : actualRows3159=WordField.canonicalRows actualModulus 3159 (.bnot 3158) := by core033_kernel_decide
theorem stats3159 : actualRows3159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3159=6276 := by core033_kernel_decide
theorem rows3160 : actualRows3160=WordField.canonicalRows actualModulus 3160 (.band 3153 3159) := by core033_kernel_decide
theorem stats3160 : actualRows3160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3160=5124 := by core033_kernel_decide
theorem rows3161 : actualRows3161=WordField.canonicalRows actualModulus 3161 (.bxor 3148 3160) := by core033_kernel_decide
theorem stats3161 : actualRows3161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3161=7428 := by core033_kernel_decide
theorem rows3162 : actualRows3162=WordField.canonicalRows actualModulus 3162 (.shr 3161 31) := by core033_kernel_decide
theorem stats3162 : actualRows3162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3162=2892 := by core033_kernel_decide
theorem rows3163 : actualRows3163=WordField.canonicalRows actualModulus 3163 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3163 : actualRows3163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3163=2892 := by core033_kernel_decide
theorem rows3164 : actualRows3164=WordField.canonicalRows actualModulus 3164 (.bxor 3162 3163) := by core033_kernel_decide
theorem stats3164 : actualRows3164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3164=7428 := by core033_kernel_decide
theorem rows3165 : actualRows3165=WordField.canonicalRows actualModulus 3165 (.bnot 3164) := by core033_kernel_decide
theorem stats3165 : actualRows3165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3165=6276 := by core033_kernel_decide
theorem rows3166 : actualRows3166=WordField.canonicalRows actualModulus 3166 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3166 : actualRows3166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3166=2892 := by core033_kernel_decide
theorem rows3167 : actualRows3167=WordField.canonicalRows actualModulus 3167 (.badd 3165 3166) := by core033_kernel_decide
theorem stats3167 : actualRows3167.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3167=5388 := by core033_kernel_decide
theorem rows3168 : actualRows3168=WordField.canonicalRows actualModulus 3168 (.bnot 3167) := by core033_kernel_decide
theorem stats3168 : actualRows3168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3168=6276 := by core033_kernel_decide
theorem rows3169 : actualRows3169=WordField.canonicalRows actualModulus 3169 (.literal (BitVec.ofNat 32 1779033703)) := by core033_kernel_decide
theorem stats3169 : actualRows3169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3169=3972 := by core033_kernel_decide
theorem rows3170 : actualRows3170=WordField.canonicalRows actualModulus 3170 (.band 3168 3169) := by core033_kernel_decide
theorem stats3170 : actualRows3170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3170=5124 := by core033_kernel_decide
theorem rows3171 : actualRows3171=WordField.canonicalRows actualModulus 3171 (.bxor 3143 3170) := by core033_kernel_decide
theorem stats3171 : actualRows3171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3171=7428 := by core033_kernel_decide
theorem rows3172 : actualRows3172=WordField.canonicalRows actualModulus 3172 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3172 : actualRows3172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3172=2892 := by core033_kernel_decide
theorem rows3173 : actualRows3173=WordField.canonicalRows actualModulus 3173 (.bxor 1299 3172) := by core033_kernel_decide
theorem stats3173 : actualRows3173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3173=7428 := by core033_kernel_decide
theorem rows3174 : actualRows3174=WordField.canonicalRows actualModulus 3174 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3174 : actualRows3174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3174=2820 := by core033_kernel_decide
theorem rows3175 : actualRows3175=WordField.canonicalRows actualModulus 3175 (.bnot 3174) := by core033_kernel_decide
theorem stats3175 : actualRows3175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3175=6276 := by core033_kernel_decide
theorem rows3176 : actualRows3176=WordField.canonicalRows actualModulus 3176 (.band 3173 3175) := by core033_kernel_decide
theorem stats3176 : actualRows3176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3176=5124 := by core033_kernel_decide
theorem rows3177 : actualRows3177=WordField.canonicalRows actualModulus 3177 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3177 : actualRows3177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3177=2892 := by core033_kernel_decide
theorem rows3178 : actualRows3178=WordField.canonicalRows actualModulus 3178 (.bxor 1299 3177) := by core033_kernel_decide
theorem stats3178 : actualRows3178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3178=7428 := by core033_kernel_decide
theorem rows3179 : actualRows3179=WordField.canonicalRows actualModulus 3179 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3179 : actualRows3179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3179=2820 := by core033_kernel_decide
theorem rows3180 : actualRows3180=WordField.canonicalRows actualModulus 3180 (.bnot 3179) := by core033_kernel_decide
theorem stats3180 : actualRows3180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3180=6276 := by core033_kernel_decide
theorem rows3181 : actualRows3181=WordField.canonicalRows actualModulus 3181 (.bxor 3178 3180) := by core033_kernel_decide
theorem stats3181 : actualRows3181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3181=7428 := by core033_kernel_decide
theorem rows3182 : actualRows3182=WordField.canonicalRows actualModulus 3182 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3182 : actualRows3182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3182=2892 := by core033_kernel_decide
theorem rows3183 : actualRows3183=WordField.canonicalRows actualModulus 3183 (.bxor 1299 3182) := by core033_kernel_decide
theorem stats3183 : actualRows3183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3183=7428 := by core033_kernel_decide
theorem rows3184 : actualRows3184=WordField.canonicalRows actualModulus 3184 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3184 : actualRows3184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3184=2820 := by core033_kernel_decide
theorem rows3185 : actualRows3185=WordField.canonicalRows actualModulus 3185 (.bnot 3184) := by core033_kernel_decide
theorem stats3185 : actualRows3185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3185=6276 := by core033_kernel_decide
theorem rows3186 : actualRows3186=WordField.canonicalRows actualModulus 3186 (.badd 3183 3185) := by core033_kernel_decide
theorem stats3186 : actualRows3186.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3186=5388 := by core033_kernel_decide
theorem rows3187 : actualRows3187=WordField.canonicalRows actualModulus 3187 (.bnot 3186) := by core033_kernel_decide
theorem stats3187 : actualRows3187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3187=6276 := by core033_kernel_decide
theorem rows3188 : actualRows3188=WordField.canonicalRows actualModulus 3188 (.band 3181 3187) := by core033_kernel_decide
theorem stats3188 : actualRows3188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3188=5124 := by core033_kernel_decide
theorem rows3189 : actualRows3189=WordField.canonicalRows actualModulus 3189 (.bxor 3176 3188) := by core033_kernel_decide
theorem stats3189 : actualRows3189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3189=7428 := by core033_kernel_decide
def partRows47 : List R1CS.Row := actualRows3126++actualRows3127++actualRows3128++actualRows3129++actualRows3130++actualRows3131++actualRows3132++actualRows3133++actualRows3134++actualRows3135++actualRows3136++actualRows3137++actualRows3138++actualRows3139++actualRows3140++actualRows3141++actualRows3142++actualRows3143++actualRows3144++actualRows3145++actualRows3146++actualRows3147++actualRows3148++actualRows3149++actualRows3150++actualRows3151++actualRows3152++actualRows3153++actualRows3154++actualRows3155++actualRows3156++actualRows3157++actualRows3158++actualRows3159++actualRows3160++actualRows3161++actualRows3162++actualRows3163++actualRows3164++actualRows3165++actualRows3166++actualRows3167++actualRows3168++actualRows3169++actualRows3170++actualRows3171++actualRows3172++actualRows3173++actualRows3174++actualRows3175++actualRows3176++actualRows3177++actualRows3178++actualRows3179++actualRows3180++actualRows3181++actualRows3182++actualRows3183++actualRows3184++actualRows3185++actualRows3186++actualRows3187++actualRows3188++actualRows3189
def partOps47 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 3126,.bxor 3125 3127,.literal (BitVec.ofNat 32 2),.bxor 1299 3129,.literal (BitVec.ofNat 32 0),.bnot 3131,.badd 3130 3132,.bnot 3133,.band 3128 3134,.bxor 3123 3135,.shr 3136 31,.literal (BitVec.ofNat 32 1),.bxor 3137 3138,.bnot 3139,.literal (BitVec.ofNat 32 1),.badd 3140 3141,.band 3142 1684,.literal (BitVec.ofNat 32 2),.bxor 1299 3144,.literal (BitVec.ofNat 32 0),.bnot 3146,.band 3145 3147,.literal (BitVec.ofNat 32 2),.bxor 1299 3149,.literal (BitVec.ofNat 32 0),.bnot 3151,.bxor 3150 3152,.literal (BitVec.ofNat 32 2),.bxor 1299 3154,.literal (BitVec.ofNat 32 0),.bnot 3156,.badd 3155 3157,.bnot 3158,.band 3153 3159,.bxor 3148 3160,.shr 3161 31,.literal (BitVec.ofNat 32 1),.bxor 3162 3163,.bnot 3164,.literal (BitVec.ofNat 32 1),.badd 3165 3166,.bnot 3167,.literal (BitVec.ofNat 32 1779033703),.band 3168 3169,.bxor 3143 3170,.literal (BitVec.ofNat 32 2),.bxor 1299 3172,.literal (BitVec.ofNat 32 0),.bnot 3174,.band 3173 3175,.literal (BitVec.ofNat 32 2),.bxor 1299 3177,.literal (BitVec.ofNat 32 0),.bnot 3179,.bxor 3178 3180,.literal (BitVec.ofNat 32 2),.bxor 1299 3182,.literal (BitVec.ofNat 32 0),.bnot 3184,.badd 3183 3185,.bnot 3186,.band 3181 3187,.bxor 3176 3188]
theorem partExact47 : partRows47=WordField.rows actualModulus 3126 partOps47 := by
  simp only [partRows47,partOps47,WordField.rows,rows3126,rows3127,rows3128,rows3129,rows3130,rows3131,rows3132,rows3133,rows3134,rows3135,rows3136,rows3137,rows3138,rows3139,rows3140,rows3141,rows3142,rows3143,rows3144,rows3145,rows3146,rows3147,rows3148,rows3149,rows3150,rows3151,rows3152,rows3153,rows3154,rows3155,rows3156,rows3157,rows3158,rows3159,rows3160,rows3161,rows3162,rows3163,rows3164,rows3165,rows3166,rows3167,rows3168,rows3169,rows3170,rows3171,rows3172,rows3173,rows3174,rows3175,rows3176,rows3177,rows3178,rows3179,rows3180,rows3181,rows3182,rows3183,rows3184,rows3185,rows3186,rows3187,rows3188,rows3189,List.append_assoc,List.append_nil]
theorem partLength47 : partOps47.length=64 := by decide
theorem partStats47 : partRows47.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows47=333648 := by
  simp only [partRows47,List.length_append,MatrixRowBlocks.rows_weight_append,stats3126.1,stats3126.2,stats3127.1,stats3127.2,stats3128.1,stats3128.2,stats3129.1,stats3129.2,stats3130.1,stats3130.2,stats3131.1,stats3131.2,stats3132.1,stats3132.2,stats3133.1,stats3133.2,stats3134.1,stats3134.2,stats3135.1,stats3135.2,stats3136.1,stats3136.2,stats3137.1,stats3137.2,stats3138.1,stats3138.2,stats3139.1,stats3139.2,stats3140.1,stats3140.2,stats3141.1,stats3141.2,stats3142.1,stats3142.2,stats3143.1,stats3143.2,stats3144.1,stats3144.2,stats3145.1,stats3145.2,stats3146.1,stats3146.2,stats3147.1,stats3147.2,stats3148.1,stats3148.2,stats3149.1,stats3149.2,stats3150.1,stats3150.2,stats3151.1,stats3151.2,stats3152.1,stats3152.2,stats3153.1,stats3153.2,stats3154.1,stats3154.2,stats3155.1,stats3155.2,stats3156.1,stats3156.2,stats3157.1,stats3157.2,stats3158.1,stats3158.2,stats3159.1,stats3159.2,stats3160.1,stats3160.2,stats3161.1,stats3161.2,stats3162.1,stats3162.2,stats3163.1,stats3163.2,stats3164.1,stats3164.2,stats3165.1,stats3165.2,stats3166.1,stats3166.2,stats3167.1,stats3167.2,stats3168.1,stats3168.2,stats3169.1,stats3169.2,stats3170.1,stats3170.2,stats3171.1,stats3171.2,stats3172.1,stats3172.2,stats3173.1,stats3173.2,stats3174.1,stats3174.2,stats3175.1,stats3175.2,stats3176.1,stats3176.2,stats3177.1,stats3177.2,stats3178.1,stats3178.2,stats3179.1,stats3179.2,stats3180.1,stats3180.2,stats3181.1,stats3181.2,stats3182.1,stats3182.2,stats3183.1,stats3183.2,stats3184.1,stats3184.2,stats3185.1,stats3185.2,stats3186.1,stats3186.2,stats3187.1,stats3187.2,stats3188.1,stats3188.2,stats3189.1,stats3189.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
