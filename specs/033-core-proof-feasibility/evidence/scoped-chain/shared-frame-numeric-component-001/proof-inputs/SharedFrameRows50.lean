import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData50
import SharedFrameInstructionMatrixData51
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3243 : actualRows3243=WordField.canonicalRows actualModulus 3243 (.badd 3238 3242) := by core033_kernel_decide
theorem stats3243 : actualRows3243.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3243=5388 := by core033_kernel_decide
theorem rows3244 : actualRows3244=WordField.canonicalRows actualModulus 3244 (.badd 3233 3243) := by core033_kernel_decide
theorem stats3244 : actualRows3244.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3244=5388 := by core033_kernel_decide
theorem rows3245 : actualRows3245=WordField.canonicalRows actualModulus 3245 (.badd 3140 3233) := by core033_kernel_decide
theorem stats3245 : actualRows3245.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3245=5388 := by core033_kernel_decide
theorem rows3246 : actualRows3246=WordField.canonicalRows actualModulus 3246 (.rotr 3245 6) := by core033_kernel_decide
theorem stats3246 : actualRows3246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3246=5124 := by core033_kernel_decide
theorem rows3247 : actualRows3247=WordField.canonicalRows actualModulus 3247 (.rotr 3245 11) := by core033_kernel_decide
theorem stats3247 : actualRows3247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3247=5124 := by core033_kernel_decide
theorem rows3248 : actualRows3248=WordField.canonicalRows actualModulus 3248 (.bxor 3246 3247) := by core033_kernel_decide
theorem stats3248 : actualRows3248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3248=7428 := by core033_kernel_decide
theorem rows3249 : actualRows3249=WordField.canonicalRows actualModulus 3249 (.rotr 3245 25) := by core033_kernel_decide
theorem stats3249 : actualRows3249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3249=5124 := by core033_kernel_decide
theorem rows3250 : actualRows3250=WordField.canonicalRows actualModulus 3250 (.bxor 3248 3249) := by core033_kernel_decide
theorem stats3250 : actualRows3250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3250=7428 := by core033_kernel_decide
theorem rows3251 : actualRows3251=WordField.canonicalRows actualModulus 3251 (.badd 3167 3250) := by core033_kernel_decide
theorem stats3251 : actualRows3251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3251=5388 := by core033_kernel_decide
theorem rows3252 : actualRows3252=WordField.canonicalRows actualModulus 3252 (.band 3245 3219) := by core033_kernel_decide
theorem stats3252 : actualRows3252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3252=5124 := by core033_kernel_decide
theorem rows3253 : actualRows3253=WordField.canonicalRows actualModulus 3253 (.bnot 3245) := by core033_kernel_decide
theorem stats3253 : actualRows3253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3253=6276 := by core033_kernel_decide
theorem rows3254 : actualRows3254=WordField.canonicalRows actualModulus 3254 (.band 3253 3193) := by core033_kernel_decide
theorem stats3254 : actualRows3254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3254=5124 := by core033_kernel_decide
theorem rows3255 : actualRows3255=WordField.canonicalRows actualModulus 3255 (.bxor 3252 3254) := by core033_kernel_decide
theorem stats3255 : actualRows3255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3255=7428 := by core033_kernel_decide
theorem rows3256 : actualRows3256=WordField.canonicalRows actualModulus 3256 (.badd 3251 3255) := by core033_kernel_decide
theorem stats3256 : actualRows3256.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3256=5388 := by core033_kernel_decide
theorem rows3257 : actualRows3257=WordField.canonicalRows actualModulus 3257 (.literal (BitVec.ofNat 32 3259730800)) := by core033_kernel_decide
theorem stats3257 : actualRows3257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3257=3828 := by core033_kernel_decide
theorem rows3258 : actualRows3258=WordField.canonicalRows actualModulus 3258 (.badd 3256 3257) := by core033_kernel_decide
theorem stats3258 : actualRows3258.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3258=5388 := by core033_kernel_decide
theorem rows3259 : actualRows3259=WordField.canonicalRows actualModulus 3259 (.badd 3258 1879) := by core033_kernel_decide
theorem stats3259 : actualRows3259.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3259=5388 := by core033_kernel_decide
theorem rows3260 : actualRows3260=WordField.canonicalRows actualModulus 3260 (.rotr 3244 2) := by core033_kernel_decide
theorem stats3260 : actualRows3260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3260=5124 := by core033_kernel_decide
theorem rows3261 : actualRows3261=WordField.canonicalRows actualModulus 3261 (.rotr 3244 13) := by core033_kernel_decide
theorem stats3261 : actualRows3261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3261=5124 := by core033_kernel_decide
theorem rows3262 : actualRows3262=WordField.canonicalRows actualModulus 3262 (.bxor 3260 3261) := by core033_kernel_decide
theorem stats3262 : actualRows3262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3262=7428 := by core033_kernel_decide
theorem rows3263 : actualRows3263=WordField.canonicalRows actualModulus 3263 (.rotr 3244 22) := by core033_kernel_decide
theorem stats3263 : actualRows3263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3263=5124 := by core033_kernel_decide
theorem rows3264 : actualRows3264=WordField.canonicalRows actualModulus 3264 (.bxor 3262 3263) := by core033_kernel_decide
theorem stats3264 : actualRows3264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3264=7428 := by core033_kernel_decide
theorem rows3265 : actualRows3265=WordField.canonicalRows actualModulus 3265 (.band 3244 3218) := by core033_kernel_decide
theorem stats3265 : actualRows3265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3265=5124 := by core033_kernel_decide
theorem rows3266 : actualRows3266=WordField.canonicalRows actualModulus 3266 (.band 3244 3192) := by core033_kernel_decide
theorem stats3266 : actualRows3266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3266=5124 := by core033_kernel_decide
theorem rows3267 : actualRows3267=WordField.canonicalRows actualModulus 3267 (.bxor 3265 3266) := by core033_kernel_decide
theorem stats3267 : actualRows3267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3267=7428 := by core033_kernel_decide
theorem rows3268 : actualRows3268=WordField.canonicalRows actualModulus 3268 (.bxor 3267 3239) := by core033_kernel_decide
theorem stats3268 : actualRows3268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3268=7428 := by core033_kernel_decide
theorem rows3269 : actualRows3269=WordField.canonicalRows actualModulus 3269 (.badd 3264 3268) := by core033_kernel_decide
theorem stats3269 : actualRows3269.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3269=5388 := by core033_kernel_decide
theorem rows3270 : actualRows3270=WordField.canonicalRows actualModulus 3270 (.badd 3259 3269) := by core033_kernel_decide
theorem stats3270 : actualRows3270.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3270=5388 := by core033_kernel_decide
theorem rows3271 : actualRows3271=WordField.canonicalRows actualModulus 3271 (.badd 3166 3259) := by core033_kernel_decide
theorem stats3271 : actualRows3271.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3271=5388 := by core033_kernel_decide
theorem rows3272 : actualRows3272=WordField.canonicalRows actualModulus 3272 (.rotr 3271 6) := by core033_kernel_decide
theorem stats3272 : actualRows3272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3272=5124 := by core033_kernel_decide
theorem rows3273 : actualRows3273=WordField.canonicalRows actualModulus 3273 (.rotr 3271 11) := by core033_kernel_decide
theorem stats3273 : actualRows3273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3273=5124 := by core033_kernel_decide
theorem rows3274 : actualRows3274=WordField.canonicalRows actualModulus 3274 (.bxor 3272 3273) := by core033_kernel_decide
theorem stats3274 : actualRows3274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3274=7428 := by core033_kernel_decide
theorem rows3275 : actualRows3275=WordField.canonicalRows actualModulus 3275 (.rotr 3271 25) := by core033_kernel_decide
theorem stats3275 : actualRows3275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3275=5124 := by core033_kernel_decide
theorem rows3276 : actualRows3276=WordField.canonicalRows actualModulus 3276 (.bxor 3274 3275) := by core033_kernel_decide
theorem stats3276 : actualRows3276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3276=7428 := by core033_kernel_decide
theorem rows3277 : actualRows3277=WordField.canonicalRows actualModulus 3277 (.badd 3193 3276) := by core033_kernel_decide
theorem stats3277 : actualRows3277.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3277=5388 := by core033_kernel_decide
theorem rows3278 : actualRows3278=WordField.canonicalRows actualModulus 3278 (.band 3271 3245) := by core033_kernel_decide
theorem stats3278 : actualRows3278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3278=5124 := by core033_kernel_decide
theorem rows3279 : actualRows3279=WordField.canonicalRows actualModulus 3279 (.bnot 3271) := by core033_kernel_decide
theorem stats3279 : actualRows3279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3279=6276 := by core033_kernel_decide
theorem rows3280 : actualRows3280=WordField.canonicalRows actualModulus 3280 (.band 3279 3219) := by core033_kernel_decide
theorem stats3280 : actualRows3280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3280=5124 := by core033_kernel_decide
theorem rows3281 : actualRows3281=WordField.canonicalRows actualModulus 3281 (.bxor 3278 3280) := by core033_kernel_decide
theorem stats3281 : actualRows3281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3281=7428 := by core033_kernel_decide
theorem rows3282 : actualRows3282=WordField.canonicalRows actualModulus 3282 (.badd 3277 3281) := by core033_kernel_decide
theorem stats3282 : actualRows3282.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3282=5388 := by core033_kernel_decide
theorem rows3283 : actualRows3283=WordField.canonicalRows actualModulus 3283 (.literal (BitVec.ofNat 32 3345764771)) := by core033_kernel_decide
theorem stats3283 : actualRows3283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3283=3972 := by core033_kernel_decide
theorem rows3284 : actualRows3284=WordField.canonicalRows actualModulus 3284 (.badd 3282 3283) := by core033_kernel_decide
theorem stats3284 : actualRows3284.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3284=5388 := by core033_kernel_decide
theorem rows3285 : actualRows3285=WordField.canonicalRows actualModulus 3285 (.badd 3284 1892) := by core033_kernel_decide
theorem stats3285 : actualRows3285.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3285=5388 := by core033_kernel_decide
theorem rows3286 : actualRows3286=WordField.canonicalRows actualModulus 3286 (.rotr 3270 2) := by core033_kernel_decide
theorem stats3286 : actualRows3286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3286=5124 := by core033_kernel_decide
theorem rows3287 : actualRows3287=WordField.canonicalRows actualModulus 3287 (.rotr 3270 13) := by core033_kernel_decide
theorem stats3287 : actualRows3287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3287=5124 := by core033_kernel_decide
theorem rows3288 : actualRows3288=WordField.canonicalRows actualModulus 3288 (.bxor 3286 3287) := by core033_kernel_decide
theorem stats3288 : actualRows3288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3288=7428 := by core033_kernel_decide
theorem rows3289 : actualRows3289=WordField.canonicalRows actualModulus 3289 (.rotr 3270 22) := by core033_kernel_decide
theorem stats3289 : actualRows3289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3289=5124 := by core033_kernel_decide
theorem rows3290 : actualRows3290=WordField.canonicalRows actualModulus 3290 (.bxor 3288 3289) := by core033_kernel_decide
theorem stats3290 : actualRows3290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3290=7428 := by core033_kernel_decide
theorem rows3291 : actualRows3291=WordField.canonicalRows actualModulus 3291 (.band 3270 3244) := by core033_kernel_decide
theorem stats3291 : actualRows3291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3291=5124 := by core033_kernel_decide
theorem rows3292 : actualRows3292=WordField.canonicalRows actualModulus 3292 (.band 3270 3218) := by core033_kernel_decide
theorem stats3292 : actualRows3292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3292=5124 := by core033_kernel_decide
theorem rows3293 : actualRows3293=WordField.canonicalRows actualModulus 3293 (.bxor 3291 3292) := by core033_kernel_decide
theorem stats3293 : actualRows3293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3293=7428 := by core033_kernel_decide
theorem rows3294 : actualRows3294=WordField.canonicalRows actualModulus 3294 (.bxor 3293 3265) := by core033_kernel_decide
theorem stats3294 : actualRows3294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3294=7428 := by core033_kernel_decide
theorem rows3295 : actualRows3295=WordField.canonicalRows actualModulus 3295 (.badd 3290 3294) := by core033_kernel_decide
theorem stats3295 : actualRows3295.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3295=5388 := by core033_kernel_decide
theorem rows3296 : actualRows3296=WordField.canonicalRows actualModulus 3296 (.badd 3285 3295) := by core033_kernel_decide
theorem stats3296 : actualRows3296.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3296=5388 := by core033_kernel_decide
theorem rows3297 : actualRows3297=WordField.canonicalRows actualModulus 3297 (.badd 3192 3285) := by core033_kernel_decide
theorem stats3297 : actualRows3297.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3297=5388 := by core033_kernel_decide
theorem rows3298 : actualRows3298=WordField.canonicalRows actualModulus 3298 (.rotr 3297 6) := by core033_kernel_decide
theorem stats3298 : actualRows3298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3298=5124 := by core033_kernel_decide
theorem rows3299 : actualRows3299=WordField.canonicalRows actualModulus 3299 (.rotr 3297 11) := by core033_kernel_decide
theorem stats3299 : actualRows3299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3299=5124 := by core033_kernel_decide
theorem rows3300 : actualRows3300=WordField.canonicalRows actualModulus 3300 (.bxor 3298 3299) := by core033_kernel_decide
theorem stats3300 : actualRows3300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3300=7428 := by core033_kernel_decide
theorem rows3301 : actualRows3301=WordField.canonicalRows actualModulus 3301 (.rotr 3297 25) := by core033_kernel_decide
theorem stats3301 : actualRows3301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3301=5124 := by core033_kernel_decide
theorem rows3302 : actualRows3302=WordField.canonicalRows actualModulus 3302 (.bxor 3300 3301) := by core033_kernel_decide
theorem stats3302 : actualRows3302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3302=7428 := by core033_kernel_decide
theorem rows3303 : actualRows3303=WordField.canonicalRows actualModulus 3303 (.badd 3219 3302) := by core033_kernel_decide
theorem stats3303 : actualRows3303.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3303=5388 := by core033_kernel_decide
theorem rows3304 : actualRows3304=WordField.canonicalRows actualModulus 3304 (.band 3297 3271) := by core033_kernel_decide
theorem stats3304 : actualRows3304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3304=5124 := by core033_kernel_decide
theorem rows3305 : actualRows3305=WordField.canonicalRows actualModulus 3305 (.bnot 3297) := by core033_kernel_decide
theorem stats3305 : actualRows3305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3305=6276 := by core033_kernel_decide
theorem rows3306 : actualRows3306=WordField.canonicalRows actualModulus 3306 (.band 3305 3245) := by core033_kernel_decide
theorem stats3306 : actualRows3306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3306=5124 := by core033_kernel_decide
def partRows50 : List R1CS.Row := actualRows3243++actualRows3244++actualRows3245++actualRows3246++actualRows3247++actualRows3248++actualRows3249++actualRows3250++actualRows3251++actualRows3252++actualRows3253++actualRows3254++actualRows3255++actualRows3256++actualRows3257++actualRows3258++actualRows3259++actualRows3260++actualRows3261++actualRows3262++actualRows3263++actualRows3264++actualRows3265++actualRows3266++actualRows3267++actualRows3268++actualRows3269++actualRows3270++actualRows3271++actualRows3272++actualRows3273++actualRows3274++actualRows3275++actualRows3276++actualRows3277++actualRows3278++actualRows3279++actualRows3280++actualRows3281++actualRows3282++actualRows3283++actualRows3284++actualRows3285++actualRows3286++actualRows3287++actualRows3288++actualRows3289++actualRows3290++actualRows3291++actualRows3292++actualRows3293++actualRows3294++actualRows3295++actualRows3296++actualRows3297++actualRows3298++actualRows3299++actualRows3300++actualRows3301++actualRows3302++actualRows3303++actualRows3304++actualRows3305++actualRows3306
def partOps50 : List WordIR.Op := [.badd 3238 3242,.badd 3233 3243,.badd 3140 3233,.rotr 3245 6,.rotr 3245 11,.bxor 3246 3247,.rotr 3245 25,.bxor 3248 3249,.badd 3167 3250,.band 3245 3219,.bnot 3245,.band 3253 3193,.bxor 3252 3254,.badd 3251 3255,.literal (BitVec.ofNat 32 3259730800),.badd 3256 3257,.badd 3258 1879,.rotr 3244 2,.rotr 3244 13,.bxor 3260 3261,.rotr 3244 22,.bxor 3262 3263,.band 3244 3218,.band 3244 3192,.bxor 3265 3266,.bxor 3267 3239,.badd 3264 3268,.badd 3259 3269,.badd 3166 3259,.rotr 3271 6,.rotr 3271 11,.bxor 3272 3273,.rotr 3271 25,.bxor 3274 3275,.badd 3193 3276,.band 3271 3245,.bnot 3271,.band 3279 3219,.bxor 3278 3280,.badd 3277 3281,.literal (BitVec.ofNat 32 3345764771),.badd 3282 3283,.badd 3284 1892,.rotr 3270 2,.rotr 3270 13,.bxor 3286 3287,.rotr 3270 22,.bxor 3288 3289,.band 3270 3244,.band 3270 3218,.bxor 3291 3292,.bxor 3293 3265,.badd 3290 3294,.badd 3285 3295,.badd 3192 3285,.rotr 3297 6,.rotr 3297 11,.bxor 3298 3299,.rotr 3297 25,.bxor 3300 3301,.badd 3219 3302,.band 3297 3271,.bnot 3297,.band 3305 3245]
theorem partExact50 : partRows50=WordField.rows actualModulus 3243 partOps50 := by
  simp only [partRows50,partOps50,WordField.rows,rows3243,rows3244,rows3245,rows3246,rows3247,rows3248,rows3249,rows3250,rows3251,rows3252,rows3253,rows3254,rows3255,rows3256,rows3257,rows3258,rows3259,rows3260,rows3261,rows3262,rows3263,rows3264,rows3265,rows3266,rows3267,rows3268,rows3269,rows3270,rows3271,rows3272,rows3273,rows3274,rows3275,rows3276,rows3277,rows3278,rows3279,rows3280,rows3281,rows3282,rows3283,rows3284,rows3285,rows3286,rows3287,rows3288,rows3289,rows3290,rows3291,rows3292,rows3293,rows3294,rows3295,rows3296,rows3297,rows3298,rows3299,rows3300,rows3301,rows3302,rows3303,rows3304,rows3305,rows3306,List.append_assoc,List.append_nil]
theorem partLength50 : partOps50.length=64 := by decide
theorem partStats50 : partRows50.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows50=370560 := by
  simp only [partRows50,List.length_append,MatrixRowBlocks.rows_weight_append,stats3243.1,stats3243.2,stats3244.1,stats3244.2,stats3245.1,stats3245.2,stats3246.1,stats3246.2,stats3247.1,stats3247.2,stats3248.1,stats3248.2,stats3249.1,stats3249.2,stats3250.1,stats3250.2,stats3251.1,stats3251.2,stats3252.1,stats3252.2,stats3253.1,stats3253.2,stats3254.1,stats3254.2,stats3255.1,stats3255.2,stats3256.1,stats3256.2,stats3257.1,stats3257.2,stats3258.1,stats3258.2,stats3259.1,stats3259.2,stats3260.1,stats3260.2,stats3261.1,stats3261.2,stats3262.1,stats3262.2,stats3263.1,stats3263.2,stats3264.1,stats3264.2,stats3265.1,stats3265.2,stats3266.1,stats3266.2,stats3267.1,stats3267.2,stats3268.1,stats3268.2,stats3269.1,stats3269.2,stats3270.1,stats3270.2,stats3271.1,stats3271.2,stats3272.1,stats3272.2,stats3273.1,stats3273.2,stats3274.1,stats3274.2,stats3275.1,stats3275.2,stats3276.1,stats3276.2,stats3277.1,stats3277.2,stats3278.1,stats3278.2,stats3279.1,stats3279.2,stats3280.1,stats3280.2,stats3281.1,stats3281.2,stats3282.1,stats3282.2,stats3283.1,stats3283.2,stats3284.1,stats3284.2,stats3285.1,stats3285.2,stats3286.1,stats3286.2,stats3287.1,stats3287.2,stats3288.1,stats3288.2,stats3289.1,stats3289.2,stats3290.1,stats3290.2,stats3291.1,stats3291.2,stats3292.1,stats3292.2,stats3293.1,stats3293.2,stats3294.1,stats3294.2,stats3295.1,stats3295.2,stats3296.1,stats3296.2,stats3297.1,stats3297.2,stats3298.1,stats3298.2,stats3299.1,stats3299.2,stats3300.1,stats3300.2,stats3301.1,stats3301.2,stats3302.1,stats3302.2,stats3303.1,stats3303.2,stats3304.1,stats3304.2,stats3305.1,stats3305.2,stats3306.1,stats3306.2]
  decide
end SharedFrameCheckedRows
