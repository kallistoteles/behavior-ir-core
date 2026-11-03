import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData50
import PairedPathRoundInstructionMatrixData51
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3232 : actualRows3232=WordField.canonicalRows actualModulus 3232 (.bnot 3231) := by core033_kernel_decide
theorem stats3232 : actualRows3232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3232=6276 := by core033_kernel_decide
theorem rows3233 : actualRows3233=WordField.canonicalRows actualModulus 3233 (.bxor 3230 3232) := by core033_kernel_decide
theorem stats3233 : actualRows3233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3233=7428 := by core033_kernel_decide
theorem rows3234 : actualRows3234=WordField.canonicalRows actualModulus 3234 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3234 : actualRows3234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3234=2892 := by core033_kernel_decide
theorem rows3235 : actualRows3235=WordField.canonicalRows actualModulus 3235 (.bxor 616 3234) := by core033_kernel_decide
theorem stats3235 : actualRows3235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3235=7428 := by core033_kernel_decide
theorem rows3236 : actualRows3236=WordField.canonicalRows actualModulus 3236 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3236 : actualRows3236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3236=2820 := by core033_kernel_decide
theorem rows3237 : actualRows3237=WordField.canonicalRows actualModulus 3237 (.bnot 3236) := by core033_kernel_decide
theorem stats3237 : actualRows3237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3237=6276 := by core033_kernel_decide
theorem rows3238 : actualRows3238=WordField.canonicalRows actualModulus 3238 (.badd 3235 3237) := by core033_kernel_decide
theorem stats3238 : actualRows3238.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3238=5388 := by core033_kernel_decide
theorem rows3239 : actualRows3239=WordField.canonicalRows actualModulus 3239 (.bnot 3238) := by core033_kernel_decide
theorem stats3239 : actualRows3239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3239=6276 := by core033_kernel_decide
theorem rows3240 : actualRows3240=WordField.canonicalRows actualModulus 3240 (.band 3233 3239) := by core033_kernel_decide
theorem stats3240 : actualRows3240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3240=5124 := by core033_kernel_decide
theorem rows3241 : actualRows3241=WordField.canonicalRows actualModulus 3241 (.bxor 3228 3240) := by core033_kernel_decide
theorem stats3241 : actualRows3241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3241=7428 := by core033_kernel_decide
theorem rows3242 : actualRows3242=WordField.canonicalRows actualModulus 3242 (.shr 3241 31) := by core033_kernel_decide
theorem stats3242 : actualRows3242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3242=2892 := by core033_kernel_decide
theorem rows3243 : actualRows3243=WordField.canonicalRows actualModulus 3243 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3243 : actualRows3243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3243=2892 := by core033_kernel_decide
theorem rows3244 : actualRows3244=WordField.canonicalRows actualModulus 3244 (.bxor 3242 3243) := by core033_kernel_decide
theorem stats3244 : actualRows3244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3244=7428 := by core033_kernel_decide
theorem rows3245 : actualRows3245=WordField.canonicalRows actualModulus 3245 (.bnot 3244) := by core033_kernel_decide
theorem stats3245 : actualRows3245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3245=6276 := by core033_kernel_decide
theorem rows3246 : actualRows3246=WordField.canonicalRows actualModulus 3246 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3246 : actualRows3246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3246=2892 := by core033_kernel_decide
theorem rows3247 : actualRows3247=WordField.canonicalRows actualModulus 3247 (.badd 3245 3246) := by core033_kernel_decide
theorem stats3247 : actualRows3247.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3247=5388 := by core033_kernel_decide
theorem rows3248 : actualRows3248=WordField.canonicalRows actualModulus 3248 (.band 3247 2034) := by core033_kernel_decide
theorem stats3248 : actualRows3248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3248=5124 := by core033_kernel_decide
theorem rows3249 : actualRows3249=WordField.canonicalRows actualModulus 3249 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3249 : actualRows3249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3249=2892 := by core033_kernel_decide
theorem rows3250 : actualRows3250=WordField.canonicalRows actualModulus 3250 (.bxor 616 3249) := by core033_kernel_decide
theorem stats3250 : actualRows3250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3250=7428 := by core033_kernel_decide
theorem rows3251 : actualRows3251=WordField.canonicalRows actualModulus 3251 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3251 : actualRows3251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3251=2820 := by core033_kernel_decide
theorem rows3252 : actualRows3252=WordField.canonicalRows actualModulus 3252 (.bnot 3251) := by core033_kernel_decide
theorem stats3252 : actualRows3252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3252=6276 := by core033_kernel_decide
theorem rows3253 : actualRows3253=WordField.canonicalRows actualModulus 3253 (.band 3250 3252) := by core033_kernel_decide
theorem stats3253 : actualRows3253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3253=5124 := by core033_kernel_decide
theorem rows3254 : actualRows3254=WordField.canonicalRows actualModulus 3254 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3254 : actualRows3254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3254=2892 := by core033_kernel_decide
theorem rows3255 : actualRows3255=WordField.canonicalRows actualModulus 3255 (.bxor 616 3254) := by core033_kernel_decide
theorem stats3255 : actualRows3255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3255=7428 := by core033_kernel_decide
theorem rows3256 : actualRows3256=WordField.canonicalRows actualModulus 3256 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3256 : actualRows3256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3256=2820 := by core033_kernel_decide
theorem rows3257 : actualRows3257=WordField.canonicalRows actualModulus 3257 (.bnot 3256) := by core033_kernel_decide
theorem stats3257 : actualRows3257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3257=6276 := by core033_kernel_decide
theorem rows3258 : actualRows3258=WordField.canonicalRows actualModulus 3258 (.bxor 3255 3257) := by core033_kernel_decide
theorem stats3258 : actualRows3258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3258=7428 := by core033_kernel_decide
theorem rows3259 : actualRows3259=WordField.canonicalRows actualModulus 3259 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3259 : actualRows3259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3259=2892 := by core033_kernel_decide
theorem rows3260 : actualRows3260=WordField.canonicalRows actualModulus 3260 (.bxor 616 3259) := by core033_kernel_decide
theorem stats3260 : actualRows3260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3260=7428 := by core033_kernel_decide
theorem rows3261 : actualRows3261=WordField.canonicalRows actualModulus 3261 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3261 : actualRows3261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3261=2820 := by core033_kernel_decide
theorem rows3262 : actualRows3262=WordField.canonicalRows actualModulus 3262 (.bnot 3261) := by core033_kernel_decide
theorem stats3262 : actualRows3262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3262=6276 := by core033_kernel_decide
theorem rows3263 : actualRows3263=WordField.canonicalRows actualModulus 3263 (.badd 3260 3262) := by core033_kernel_decide
theorem stats3263 : actualRows3263.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3263=5388 := by core033_kernel_decide
theorem rows3264 : actualRows3264=WordField.canonicalRows actualModulus 3264 (.bnot 3263) := by core033_kernel_decide
theorem stats3264 : actualRows3264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3264=6276 := by core033_kernel_decide
theorem rows3265 : actualRows3265=WordField.canonicalRows actualModulus 3265 (.band 3258 3264) := by core033_kernel_decide
theorem stats3265 : actualRows3265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3265=5124 := by core033_kernel_decide
theorem rows3266 : actualRows3266=WordField.canonicalRows actualModulus 3266 (.bxor 3253 3265) := by core033_kernel_decide
theorem stats3266 : actualRows3266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3266=7428 := by core033_kernel_decide
theorem rows3267 : actualRows3267=WordField.canonicalRows actualModulus 3267 (.shr 3266 31) := by core033_kernel_decide
theorem stats3267 : actualRows3267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3267=2892 := by core033_kernel_decide
theorem rows3268 : actualRows3268=WordField.canonicalRows actualModulus 3268 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3268 : actualRows3268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3268=2892 := by core033_kernel_decide
theorem rows3269 : actualRows3269=WordField.canonicalRows actualModulus 3269 (.bxor 3267 3268) := by core033_kernel_decide
theorem stats3269 : actualRows3269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3269=7428 := by core033_kernel_decide
theorem rows3270 : actualRows3270=WordField.canonicalRows actualModulus 3270 (.bnot 3269) := by core033_kernel_decide
theorem stats3270 : actualRows3270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3270=6276 := by core033_kernel_decide
theorem rows3271 : actualRows3271=WordField.canonicalRows actualModulus 3271 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3271 : actualRows3271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3271=2892 := by core033_kernel_decide
theorem rows3272 : actualRows3272=WordField.canonicalRows actualModulus 3272 (.badd 3270 3271) := by core033_kernel_decide
theorem stats3272 : actualRows3272.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3272=5388 := by core033_kernel_decide
theorem rows3273 : actualRows3273=WordField.canonicalRows actualModulus 3273 (.bnot 3272) := by core033_kernel_decide
theorem stats3273 : actualRows3273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3273=6276 := by core033_kernel_decide
theorem rows3274 : actualRows3274=WordField.canonicalRows actualModulus 3274 (.band 3273 1870) := by core033_kernel_decide
theorem stats3274 : actualRows3274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3274=5124 := by core033_kernel_decide
theorem rows3275 : actualRows3275=WordField.canonicalRows actualModulus 3275 (.bxor 3248 3274) := by core033_kernel_decide
theorem stats3275 : actualRows3275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3275=7428 := by core033_kernel_decide
theorem rows3276 : actualRows3276=WordField.canonicalRows actualModulus 3276 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3276 : actualRows3276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3276=2892 := by core033_kernel_decide
theorem rows3277 : actualRows3277=WordField.canonicalRows actualModulus 3277 (.bxor 616 3276) := by core033_kernel_decide
theorem stats3277 : actualRows3277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3277=7428 := by core033_kernel_decide
theorem rows3278 : actualRows3278=WordField.canonicalRows actualModulus 3278 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3278 : actualRows3278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3278=2820 := by core033_kernel_decide
theorem rows3279 : actualRows3279=WordField.canonicalRows actualModulus 3279 (.bnot 3278) := by core033_kernel_decide
theorem stats3279 : actualRows3279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3279=6276 := by core033_kernel_decide
theorem rows3280 : actualRows3280=WordField.canonicalRows actualModulus 3280 (.band 3277 3279) := by core033_kernel_decide
theorem stats3280 : actualRows3280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3280=5124 := by core033_kernel_decide
theorem rows3281 : actualRows3281=WordField.canonicalRows actualModulus 3281 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3281 : actualRows3281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3281=2892 := by core033_kernel_decide
theorem rows3282 : actualRows3282=WordField.canonicalRows actualModulus 3282 (.bxor 616 3281) := by core033_kernel_decide
theorem stats3282 : actualRows3282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3282=7428 := by core033_kernel_decide
theorem rows3283 : actualRows3283=WordField.canonicalRows actualModulus 3283 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3283 : actualRows3283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3283=2820 := by core033_kernel_decide
theorem rows3284 : actualRows3284=WordField.canonicalRows actualModulus 3284 (.bnot 3283) := by core033_kernel_decide
theorem stats3284 : actualRows3284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3284=6276 := by core033_kernel_decide
theorem rows3285 : actualRows3285=WordField.canonicalRows actualModulus 3285 (.bxor 3282 3284) := by core033_kernel_decide
theorem stats3285 : actualRows3285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3285=7428 := by core033_kernel_decide
theorem rows3286 : actualRows3286=WordField.canonicalRows actualModulus 3286 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3286 : actualRows3286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3286=2892 := by core033_kernel_decide
theorem rows3287 : actualRows3287=WordField.canonicalRows actualModulus 3287 (.bxor 616 3286) := by core033_kernel_decide
theorem stats3287 : actualRows3287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3287=7428 := by core033_kernel_decide
theorem rows3288 : actualRows3288=WordField.canonicalRows actualModulus 3288 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3288 : actualRows3288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3288=2820 := by core033_kernel_decide
theorem rows3289 : actualRows3289=WordField.canonicalRows actualModulus 3289 (.bnot 3288) := by core033_kernel_decide
theorem stats3289 : actualRows3289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3289=6276 := by core033_kernel_decide
theorem rows3290 : actualRows3290=WordField.canonicalRows actualModulus 3290 (.badd 3287 3289) := by core033_kernel_decide
theorem stats3290 : actualRows3290.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3290=5388 := by core033_kernel_decide
theorem rows3291 : actualRows3291=WordField.canonicalRows actualModulus 3291 (.bnot 3290) := by core033_kernel_decide
theorem stats3291 : actualRows3291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3291=6276 := by core033_kernel_decide
theorem rows3292 : actualRows3292=WordField.canonicalRows actualModulus 3292 (.band 3285 3291) := by core033_kernel_decide
theorem stats3292 : actualRows3292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3292=5124 := by core033_kernel_decide
theorem rows3293 : actualRows3293=WordField.canonicalRows actualModulus 3293 (.bxor 3280 3292) := by core033_kernel_decide
theorem stats3293 : actualRows3293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3293=7428 := by core033_kernel_decide
theorem rows3294 : actualRows3294=WordField.canonicalRows actualModulus 3294 (.shr 3293 31) := by core033_kernel_decide
theorem stats3294 : actualRows3294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3294=2892 := by core033_kernel_decide
theorem rows3295 : actualRows3295=WordField.canonicalRows actualModulus 3295 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3295 : actualRows3295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3295=2892 := by core033_kernel_decide
def partRows49 : List R1CS.Row := actualRows3232++actualRows3233++actualRows3234++actualRows3235++actualRows3236++actualRows3237++actualRows3238++actualRows3239++actualRows3240++actualRows3241++actualRows3242++actualRows3243++actualRows3244++actualRows3245++actualRows3246++actualRows3247++actualRows3248++actualRows3249++actualRows3250++actualRows3251++actualRows3252++actualRows3253++actualRows3254++actualRows3255++actualRows3256++actualRows3257++actualRows3258++actualRows3259++actualRows3260++actualRows3261++actualRows3262++actualRows3263++actualRows3264++actualRows3265++actualRows3266++actualRows3267++actualRows3268++actualRows3269++actualRows3270++actualRows3271++actualRows3272++actualRows3273++actualRows3274++actualRows3275++actualRows3276++actualRows3277++actualRows3278++actualRows3279++actualRows3280++actualRows3281++actualRows3282++actualRows3283++actualRows3284++actualRows3285++actualRows3286++actualRows3287++actualRows3288++actualRows3289++actualRows3290++actualRows3291++actualRows3292++actualRows3293++actualRows3294++actualRows3295
def partOps49 : List WordIR.Op := [.bnot 3231,.bxor 3230 3232,.literal (BitVec.ofNat 32 2),.bxor 616 3234,.literal (BitVec.ofNat 32 0),.bnot 3236,.badd 3235 3237,.bnot 3238,.band 3233 3239,.bxor 3228 3240,.shr 3241 31,.literal (BitVec.ofNat 32 1),.bxor 3242 3243,.bnot 3244,.literal (BitVec.ofNat 32 1),.badd 3245 3246,.band 3247 2034,.literal (BitVec.ofNat 32 2),.bxor 616 3249,.literal (BitVec.ofNat 32 0),.bnot 3251,.band 3250 3252,.literal (BitVec.ofNat 32 2),.bxor 616 3254,.literal (BitVec.ofNat 32 0),.bnot 3256,.bxor 3255 3257,.literal (BitVec.ofNat 32 2),.bxor 616 3259,.literal (BitVec.ofNat 32 0),.bnot 3261,.badd 3260 3262,.bnot 3263,.band 3258 3264,.bxor 3253 3265,.shr 3266 31,.literal (BitVec.ofNat 32 1),.bxor 3267 3268,.bnot 3269,.literal (BitVec.ofNat 32 1),.badd 3270 3271,.bnot 3272,.band 3273 1870,.bxor 3248 3274,.literal (BitVec.ofNat 32 2),.bxor 616 3276,.literal (BitVec.ofNat 32 0),.bnot 3278,.band 3277 3279,.literal (BitVec.ofNat 32 2),.bxor 616 3281,.literal (BitVec.ofNat 32 0),.bnot 3283,.bxor 3282 3284,.literal (BitVec.ofNat 32 2),.bxor 616 3286,.literal (BitVec.ofNat 32 0),.bnot 3288,.badd 3287 3289,.bnot 3290,.band 3285 3291,.bxor 3280 3292,.shr 3293 31,.literal (BitVec.ofNat 32 1)]
theorem partExact49 : partRows49=WordField.rows actualModulus 3232 partOps49 := by
  simp only [partRows49,partOps49,WordField.rows,rows3232,rows3233,rows3234,rows3235,rows3236,rows3237,rows3238,rows3239,rows3240,rows3241,rows3242,rows3243,rows3244,rows3245,rows3246,rows3247,rows3248,rows3249,rows3250,rows3251,rows3252,rows3253,rows3254,rows3255,rows3256,rows3257,rows3258,rows3259,rows3260,rows3261,rows3262,rows3263,rows3264,rows3265,rows3266,rows3267,rows3268,rows3269,rows3270,rows3271,rows3272,rows3273,rows3274,rows3275,rows3276,rows3277,rows3278,rows3279,rows3280,rows3281,rows3282,rows3283,rows3284,rows3285,rows3286,rows3287,rows3288,rows3289,rows3290,rows3291,rows3292,rows3293,rows3294,rows3295,List.append_assoc,List.append_nil]
theorem partLength49 : partOps49.length=64 := by decide
theorem partStats49 : partRows49.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows49=332640 := by
  simp only [partRows49,List.length_append,MatrixRowBlocks.rows_weight_append,stats3232.1,stats3232.2,stats3233.1,stats3233.2,stats3234.1,stats3234.2,stats3235.1,stats3235.2,stats3236.1,stats3236.2,stats3237.1,stats3237.2,stats3238.1,stats3238.2,stats3239.1,stats3239.2,stats3240.1,stats3240.2,stats3241.1,stats3241.2,stats3242.1,stats3242.2,stats3243.1,stats3243.2,stats3244.1,stats3244.2,stats3245.1,stats3245.2,stats3246.1,stats3246.2,stats3247.1,stats3247.2,stats3248.1,stats3248.2,stats3249.1,stats3249.2,stats3250.1,stats3250.2,stats3251.1,stats3251.2,stats3252.1,stats3252.2,stats3253.1,stats3253.2,stats3254.1,stats3254.2,stats3255.1,stats3255.2,stats3256.1,stats3256.2,stats3257.1,stats3257.2,stats3258.1,stats3258.2,stats3259.1,stats3259.2,stats3260.1,stats3260.2,stats3261.1,stats3261.2,stats3262.1,stats3262.2,stats3263.1,stats3263.2,stats3264.1,stats3264.2,stats3265.1,stats3265.2,stats3266.1,stats3266.2,stats3267.1,stats3267.2,stats3268.1,stats3268.2,stats3269.1,stats3269.2,stats3270.1,stats3270.2,stats3271.1,stats3271.2,stats3272.1,stats3272.2,stats3273.1,stats3273.2,stats3274.1,stats3274.2,stats3275.1,stats3275.2,stats3276.1,stats3276.2,stats3277.1,stats3277.2,stats3278.1,stats3278.2,stats3279.1,stats3279.2,stats3280.1,stats3280.2,stats3281.1,stats3281.2,stats3282.1,stats3282.2,stats3283.1,stats3283.2,stats3284.1,stats3284.2,stats3285.1,stats3285.2,stats3286.1,stats3286.2,stats3287.1,stats3287.2,stats3288.1,stats3288.2,stats3289.1,stats3289.2,stats3290.1,stats3290.2,stats3291.1,stats3291.2,stats3292.1,stats3292.2,stats3293.1,stats3293.2,stats3294.1,stats3294.2,stats3295.1,stats3295.2]
  decide
end PairedPathRoundCheckedRows
