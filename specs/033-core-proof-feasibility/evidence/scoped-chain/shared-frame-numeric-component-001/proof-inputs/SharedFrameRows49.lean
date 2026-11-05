import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData49
import SharedFrameInstructionMatrixData50
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3179 : actualRows3179=WordField.canonicalRows actualModulus 3179 (.literal (BitVec.ofNat 32 2456956037)) := by core033_kernel_decide
theorem stats3179 : actualRows3179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3179=3756 := by core033_kernel_decide
theorem rows3180 : actualRows3180=WordField.canonicalRows actualModulus 3180 (.badd 3178 3179) := by core033_kernel_decide
theorem stats3180 : actualRows3180.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3180=5388 := by core033_kernel_decide
theorem rows3181 : actualRows3181=WordField.canonicalRows actualModulus 3181 (.badd 3180 1840) := by core033_kernel_decide
theorem stats3181 : actualRows3181.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3181=5388 := by core033_kernel_decide
theorem rows3182 : actualRows3182=WordField.canonicalRows actualModulus 3182 (.rotr 3166 2) := by core033_kernel_decide
theorem stats3182 : actualRows3182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3182=5124 := by core033_kernel_decide
theorem rows3183 : actualRows3183=WordField.canonicalRows actualModulus 3183 (.rotr 3166 13) := by core033_kernel_decide
theorem stats3183 : actualRows3183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3183=5124 := by core033_kernel_decide
theorem rows3184 : actualRows3184=WordField.canonicalRows actualModulus 3184 (.bxor 3182 3183) := by core033_kernel_decide
theorem stats3184 : actualRows3184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3184=7428 := by core033_kernel_decide
theorem rows3185 : actualRows3185=WordField.canonicalRows actualModulus 3185 (.rotr 3166 22) := by core033_kernel_decide
theorem stats3185 : actualRows3185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3185=5124 := by core033_kernel_decide
theorem rows3186 : actualRows3186=WordField.canonicalRows actualModulus 3186 (.bxor 3184 3185) := by core033_kernel_decide
theorem stats3186 : actualRows3186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3186=7428 := by core033_kernel_decide
theorem rows3187 : actualRows3187=WordField.canonicalRows actualModulus 3187 (.band 3166 3140) := by core033_kernel_decide
theorem stats3187 : actualRows3187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3187=5124 := by core033_kernel_decide
theorem rows3188 : actualRows3188=WordField.canonicalRows actualModulus 3188 (.band 3166 3114) := by core033_kernel_decide
theorem stats3188 : actualRows3188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3188=5124 := by core033_kernel_decide
theorem rows3189 : actualRows3189=WordField.canonicalRows actualModulus 3189 (.bxor 3187 3188) := by core033_kernel_decide
theorem stats3189 : actualRows3189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3189=7428 := by core033_kernel_decide
theorem rows3190 : actualRows3190=WordField.canonicalRows actualModulus 3190 (.bxor 3189 3161) := by core033_kernel_decide
theorem stats3190 : actualRows3190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3190=7428 := by core033_kernel_decide
theorem rows3191 : actualRows3191=WordField.canonicalRows actualModulus 3191 (.badd 3186 3190) := by core033_kernel_decide
theorem stats3191 : actualRows3191.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3191=5388 := by core033_kernel_decide
theorem rows3192 : actualRows3192=WordField.canonicalRows actualModulus 3192 (.badd 3181 3191) := by core033_kernel_decide
theorem stats3192 : actualRows3192.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3192=5388 := by core033_kernel_decide
theorem rows3193 : actualRows3193=WordField.canonicalRows actualModulus 3193 (.badd 3088 3181) := by core033_kernel_decide
theorem stats3193 : actualRows3193.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3193=5388 := by core033_kernel_decide
theorem rows3194 : actualRows3194=WordField.canonicalRows actualModulus 3194 (.rotr 3193 6) := by core033_kernel_decide
theorem stats3194 : actualRows3194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3194=5124 := by core033_kernel_decide
theorem rows3195 : actualRows3195=WordField.canonicalRows actualModulus 3195 (.rotr 3193 11) := by core033_kernel_decide
theorem stats3195 : actualRows3195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3195=5124 := by core033_kernel_decide
theorem rows3196 : actualRows3196=WordField.canonicalRows actualModulus 3196 (.bxor 3194 3195) := by core033_kernel_decide
theorem stats3196 : actualRows3196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3196=7428 := by core033_kernel_decide
theorem rows3197 : actualRows3197=WordField.canonicalRows actualModulus 3197 (.rotr 3193 25) := by core033_kernel_decide
theorem stats3197 : actualRows3197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3197=5124 := by core033_kernel_decide
theorem rows3198 : actualRows3198=WordField.canonicalRows actualModulus 3198 (.bxor 3196 3197) := by core033_kernel_decide
theorem stats3198 : actualRows3198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3198=7428 := by core033_kernel_decide
theorem rows3199 : actualRows3199=WordField.canonicalRows actualModulus 3199 (.badd 3115 3198) := by core033_kernel_decide
theorem stats3199 : actualRows3199.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3199=5388 := by core033_kernel_decide
theorem rows3200 : actualRows3200=WordField.canonicalRows actualModulus 3200 (.band 3193 3167) := by core033_kernel_decide
theorem stats3200 : actualRows3200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3200=5124 := by core033_kernel_decide
theorem rows3201 : actualRows3201=WordField.canonicalRows actualModulus 3201 (.bnot 3193) := by core033_kernel_decide
theorem stats3201 : actualRows3201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3201=6276 := by core033_kernel_decide
theorem rows3202 : actualRows3202=WordField.canonicalRows actualModulus 3202 (.band 3201 3141) := by core033_kernel_decide
theorem stats3202 : actualRows3202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3202=5124 := by core033_kernel_decide
theorem rows3203 : actualRows3203=WordField.canonicalRows actualModulus 3203 (.bxor 3200 3202) := by core033_kernel_decide
theorem stats3203 : actualRows3203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3203=7428 := by core033_kernel_decide
theorem rows3204 : actualRows3204=WordField.canonicalRows actualModulus 3204 (.badd 3199 3203) := by core033_kernel_decide
theorem stats3204 : actualRows3204.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3204=5388 := by core033_kernel_decide
theorem rows3205 : actualRows3205=WordField.canonicalRows actualModulus 3205 (.literal (BitVec.ofNat 32 2730485921)) := by core033_kernel_decide
theorem stats3205 : actualRows3205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3205=4044 := by core033_kernel_decide
theorem rows3206 : actualRows3206=WordField.canonicalRows actualModulus 3206 (.badd 3204 3205) := by core033_kernel_decide
theorem stats3206 : actualRows3206.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3206=5388 := by core033_kernel_decide
theorem rows3207 : actualRows3207=WordField.canonicalRows actualModulus 3207 (.badd 3206 1853) := by core033_kernel_decide
theorem stats3207 : actualRows3207.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3207=5388 := by core033_kernel_decide
theorem rows3208 : actualRows3208=WordField.canonicalRows actualModulus 3208 (.rotr 3192 2) := by core033_kernel_decide
theorem stats3208 : actualRows3208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3208=5124 := by core033_kernel_decide
theorem rows3209 : actualRows3209=WordField.canonicalRows actualModulus 3209 (.rotr 3192 13) := by core033_kernel_decide
theorem stats3209 : actualRows3209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3209=5124 := by core033_kernel_decide
theorem rows3210 : actualRows3210=WordField.canonicalRows actualModulus 3210 (.bxor 3208 3209) := by core033_kernel_decide
theorem stats3210 : actualRows3210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3210=7428 := by core033_kernel_decide
theorem rows3211 : actualRows3211=WordField.canonicalRows actualModulus 3211 (.rotr 3192 22) := by core033_kernel_decide
theorem stats3211 : actualRows3211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3211=5124 := by core033_kernel_decide
theorem rows3212 : actualRows3212=WordField.canonicalRows actualModulus 3212 (.bxor 3210 3211) := by core033_kernel_decide
theorem stats3212 : actualRows3212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3212=7428 := by core033_kernel_decide
theorem rows3213 : actualRows3213=WordField.canonicalRows actualModulus 3213 (.band 3192 3166) := by core033_kernel_decide
theorem stats3213 : actualRows3213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3213=5124 := by core033_kernel_decide
theorem rows3214 : actualRows3214=WordField.canonicalRows actualModulus 3214 (.band 3192 3140) := by core033_kernel_decide
theorem stats3214 : actualRows3214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3214=5124 := by core033_kernel_decide
theorem rows3215 : actualRows3215=WordField.canonicalRows actualModulus 3215 (.bxor 3213 3214) := by core033_kernel_decide
theorem stats3215 : actualRows3215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3215=7428 := by core033_kernel_decide
theorem rows3216 : actualRows3216=WordField.canonicalRows actualModulus 3216 (.bxor 3215 3187) := by core033_kernel_decide
theorem stats3216 : actualRows3216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3216=7428 := by core033_kernel_decide
theorem rows3217 : actualRows3217=WordField.canonicalRows actualModulus 3217 (.badd 3212 3216) := by core033_kernel_decide
theorem stats3217 : actualRows3217.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3217=5388 := by core033_kernel_decide
theorem rows3218 : actualRows3218=WordField.canonicalRows actualModulus 3218 (.badd 3207 3217) := by core033_kernel_decide
theorem stats3218 : actualRows3218.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3218=5388 := by core033_kernel_decide
theorem rows3219 : actualRows3219=WordField.canonicalRows actualModulus 3219 (.badd 3114 3207) := by core033_kernel_decide
theorem stats3219 : actualRows3219.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3219=5388 := by core033_kernel_decide
theorem rows3220 : actualRows3220=WordField.canonicalRows actualModulus 3220 (.rotr 3219 6) := by core033_kernel_decide
theorem stats3220 : actualRows3220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3220=5124 := by core033_kernel_decide
theorem rows3221 : actualRows3221=WordField.canonicalRows actualModulus 3221 (.rotr 3219 11) := by core033_kernel_decide
theorem stats3221 : actualRows3221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3221=5124 := by core033_kernel_decide
theorem rows3222 : actualRows3222=WordField.canonicalRows actualModulus 3222 (.bxor 3220 3221) := by core033_kernel_decide
theorem stats3222 : actualRows3222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3222=7428 := by core033_kernel_decide
theorem rows3223 : actualRows3223=WordField.canonicalRows actualModulus 3223 (.rotr 3219 25) := by core033_kernel_decide
theorem stats3223 : actualRows3223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3223=5124 := by core033_kernel_decide
theorem rows3224 : actualRows3224=WordField.canonicalRows actualModulus 3224 (.bxor 3222 3223) := by core033_kernel_decide
theorem stats3224 : actualRows3224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3224=7428 := by core033_kernel_decide
theorem rows3225 : actualRows3225=WordField.canonicalRows actualModulus 3225 (.badd 3141 3224) := by core033_kernel_decide
theorem stats3225 : actualRows3225.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3225=5388 := by core033_kernel_decide
theorem rows3226 : actualRows3226=WordField.canonicalRows actualModulus 3226 (.band 3219 3193) := by core033_kernel_decide
theorem stats3226 : actualRows3226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3226=5124 := by core033_kernel_decide
theorem rows3227 : actualRows3227=WordField.canonicalRows actualModulus 3227 (.bnot 3219) := by core033_kernel_decide
theorem stats3227 : actualRows3227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3227=6276 := by core033_kernel_decide
theorem rows3228 : actualRows3228=WordField.canonicalRows actualModulus 3228 (.band 3227 3167) := by core033_kernel_decide
theorem stats3228 : actualRows3228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3228=5124 := by core033_kernel_decide
theorem rows3229 : actualRows3229=WordField.canonicalRows actualModulus 3229 (.bxor 3226 3228) := by core033_kernel_decide
theorem stats3229 : actualRows3229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3229=7428 := by core033_kernel_decide
theorem rows3230 : actualRows3230=WordField.canonicalRows actualModulus 3230 (.badd 3225 3229) := by core033_kernel_decide
theorem stats3230 : actualRows3230.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3230=5388 := by core033_kernel_decide
theorem rows3231 : actualRows3231=WordField.canonicalRows actualModulus 3231 (.literal (BitVec.ofNat 32 2820302411)) := by core033_kernel_decide
theorem stats3231 : actualRows3231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3231=3828 := by core033_kernel_decide
theorem rows3232 : actualRows3232=WordField.canonicalRows actualModulus 3232 (.badd 3230 3231) := by core033_kernel_decide
theorem stats3232 : actualRows3232.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3232=5388 := by core033_kernel_decide
theorem rows3233 : actualRows3233=WordField.canonicalRows actualModulus 3233 (.badd 3232 1866) := by core033_kernel_decide
theorem stats3233 : actualRows3233.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3233=5388 := by core033_kernel_decide
theorem rows3234 : actualRows3234=WordField.canonicalRows actualModulus 3234 (.rotr 3218 2) := by core033_kernel_decide
theorem stats3234 : actualRows3234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3234=5124 := by core033_kernel_decide
theorem rows3235 : actualRows3235=WordField.canonicalRows actualModulus 3235 (.rotr 3218 13) := by core033_kernel_decide
theorem stats3235 : actualRows3235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3235=5124 := by core033_kernel_decide
theorem rows3236 : actualRows3236=WordField.canonicalRows actualModulus 3236 (.bxor 3234 3235) := by core033_kernel_decide
theorem stats3236 : actualRows3236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3236=7428 := by core033_kernel_decide
theorem rows3237 : actualRows3237=WordField.canonicalRows actualModulus 3237 (.rotr 3218 22) := by core033_kernel_decide
theorem stats3237 : actualRows3237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3237=5124 := by core033_kernel_decide
theorem rows3238 : actualRows3238=WordField.canonicalRows actualModulus 3238 (.bxor 3236 3237) := by core033_kernel_decide
theorem stats3238 : actualRows3238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3238=7428 := by core033_kernel_decide
theorem rows3239 : actualRows3239=WordField.canonicalRows actualModulus 3239 (.band 3218 3192) := by core033_kernel_decide
theorem stats3239 : actualRows3239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3239=5124 := by core033_kernel_decide
theorem rows3240 : actualRows3240=WordField.canonicalRows actualModulus 3240 (.band 3218 3166) := by core033_kernel_decide
theorem stats3240 : actualRows3240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3240=5124 := by core033_kernel_decide
theorem rows3241 : actualRows3241=WordField.canonicalRows actualModulus 3241 (.bxor 3239 3240) := by core033_kernel_decide
theorem stats3241 : actualRows3241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3241=7428 := by core033_kernel_decide
theorem rows3242 : actualRows3242=WordField.canonicalRows actualModulus 3242 (.bxor 3241 3213) := by core033_kernel_decide
theorem stats3242 : actualRows3242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3242=7428 := by core033_kernel_decide
def partRows49 : List R1CS.Row := actualRows3179++actualRows3180++actualRows3181++actualRows3182++actualRows3183++actualRows3184++actualRows3185++actualRows3186++actualRows3187++actualRows3188++actualRows3189++actualRows3190++actualRows3191++actualRows3192++actualRows3193++actualRows3194++actualRows3195++actualRows3196++actualRows3197++actualRows3198++actualRows3199++actualRows3200++actualRows3201++actualRows3202++actualRows3203++actualRows3204++actualRows3205++actualRows3206++actualRows3207++actualRows3208++actualRows3209++actualRows3210++actualRows3211++actualRows3212++actualRows3213++actualRows3214++actualRows3215++actualRows3216++actualRows3217++actualRows3218++actualRows3219++actualRows3220++actualRows3221++actualRows3222++actualRows3223++actualRows3224++actualRows3225++actualRows3226++actualRows3227++actualRows3228++actualRows3229++actualRows3230++actualRows3231++actualRows3232++actualRows3233++actualRows3234++actualRows3235++actualRows3236++actualRows3237++actualRows3238++actualRows3239++actualRows3240++actualRows3241++actualRows3242
def partOps49 : List WordIR.Op := [.literal (BitVec.ofNat 32 2456956037),.badd 3178 3179,.badd 3180 1840,.rotr 3166 2,.rotr 3166 13,.bxor 3182 3183,.rotr 3166 22,.bxor 3184 3185,.band 3166 3140,.band 3166 3114,.bxor 3187 3188,.bxor 3189 3161,.badd 3186 3190,.badd 3181 3191,.badd 3088 3181,.rotr 3193 6,.rotr 3193 11,.bxor 3194 3195,.rotr 3193 25,.bxor 3196 3197,.badd 3115 3198,.band 3193 3167,.bnot 3193,.band 3201 3141,.bxor 3200 3202,.badd 3199 3203,.literal (BitVec.ofNat 32 2730485921),.badd 3204 3205,.badd 3206 1853,.rotr 3192 2,.rotr 3192 13,.bxor 3208 3209,.rotr 3192 22,.bxor 3210 3211,.band 3192 3166,.band 3192 3140,.bxor 3213 3214,.bxor 3215 3187,.badd 3212 3216,.badd 3207 3217,.badd 3114 3207,.rotr 3219 6,.rotr 3219 11,.bxor 3220 3221,.rotr 3219 25,.bxor 3222 3223,.badd 3141 3224,.band 3219 3193,.bnot 3219,.band 3227 3167,.bxor 3226 3228,.badd 3225 3229,.literal (BitVec.ofNat 32 2820302411),.badd 3230 3231,.badd 3232 1866,.rotr 3218 2,.rotr 3218 13,.bxor 3234 3235,.rotr 3218 22,.bxor 3236 3237,.band 3218 3192,.band 3218 3166,.bxor 3239 3240,.bxor 3241 3213]
theorem partExact49 : partRows49=WordField.rows actualModulus 3179 partOps49 := by
  simp only [partRows49,partOps49,WordField.rows,rows3179,rows3180,rows3181,rows3182,rows3183,rows3184,rows3185,rows3186,rows3187,rows3188,rows3189,rows3190,rows3191,rows3192,rows3193,rows3194,rows3195,rows3196,rows3197,rows3198,rows3199,rows3200,rows3201,rows3202,rows3203,rows3204,rows3205,rows3206,rows3207,rows3208,rows3209,rows3210,rows3211,rows3212,rows3213,rows3214,rows3215,rows3216,rows3217,rows3218,rows3219,rows3220,rows3221,rows3222,rows3223,rows3224,rows3225,rows3226,rows3227,rows3228,rows3229,rows3230,rows3231,rows3232,rows3233,rows3234,rows3235,rows3236,rows3237,rows3238,rows3239,rows3240,rows3241,rows3242,List.append_assoc,List.append_nil]
theorem partLength49 : partOps49.length=64 := by decide
theorem partStats49 : partRows49.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows49=372192 := by
  simp only [partRows49,List.length_append,MatrixRowBlocks.rows_weight_append,stats3179.1,stats3179.2,stats3180.1,stats3180.2,stats3181.1,stats3181.2,stats3182.1,stats3182.2,stats3183.1,stats3183.2,stats3184.1,stats3184.2,stats3185.1,stats3185.2,stats3186.1,stats3186.2,stats3187.1,stats3187.2,stats3188.1,stats3188.2,stats3189.1,stats3189.2,stats3190.1,stats3190.2,stats3191.1,stats3191.2,stats3192.1,stats3192.2,stats3193.1,stats3193.2,stats3194.1,stats3194.2,stats3195.1,stats3195.2,stats3196.1,stats3196.2,stats3197.1,stats3197.2,stats3198.1,stats3198.2,stats3199.1,stats3199.2,stats3200.1,stats3200.2,stats3201.1,stats3201.2,stats3202.1,stats3202.2,stats3203.1,stats3203.2,stats3204.1,stats3204.2,stats3205.1,stats3205.2,stats3206.1,stats3206.2,stats3207.1,stats3207.2,stats3208.1,stats3208.2,stats3209.1,stats3209.2,stats3210.1,stats3210.2,stats3211.1,stats3211.2,stats3212.1,stats3212.2,stats3213.1,stats3213.2,stats3214.1,stats3214.2,stats3215.1,stats3215.2,stats3216.1,stats3216.2,stats3217.1,stats3217.2,stats3218.1,stats3218.2,stats3219.1,stats3219.2,stats3220.1,stats3220.2,stats3221.1,stats3221.2,stats3222.1,stats3222.2,stats3223.1,stats3223.2,stats3224.1,stats3224.2,stats3225.1,stats3225.2,stats3226.1,stats3226.2,stats3227.1,stats3227.2,stats3228.1,stats3228.2,stats3229.1,stats3229.2,stats3230.1,stats3230.2,stats3231.1,stats3231.2,stats3232.1,stats3232.2,stats3233.1,stats3233.2,stats3234.1,stats3234.2,stats3235.1,stats3235.2,stats3236.1,stats3236.2,stats3237.1,stats3237.2,stats3238.1,stats3238.2,stats3239.1,stats3239.2,stats3240.1,stats3240.2,stats3241.1,stats3241.2,stats3242.1,stats3242.2]
  decide
end SharedFrameCheckedRows
