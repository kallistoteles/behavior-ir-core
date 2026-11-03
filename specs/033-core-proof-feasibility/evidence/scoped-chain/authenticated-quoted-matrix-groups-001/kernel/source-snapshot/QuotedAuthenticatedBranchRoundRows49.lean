import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData50
import AuthenticatedBranchRoundInstructionMatrixData51
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3254 : actualRows3254=WordField.canonicalRows actualModulus 3254 (.band 3251 3253) := by core033_kernel_decide
theorem stats3254 : actualRows3254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3254=5124 := by core033_kernel_decide
theorem rows3255 : actualRows3255=WordField.canonicalRows actualModulus 3255 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3255 : actualRows3255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3255=2892 := by core033_kernel_decide
theorem rows3256 : actualRows3256=WordField.canonicalRows actualModulus 3256 (.bxor 1299 3255) := by core033_kernel_decide
theorem stats3256 : actualRows3256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3256=7428 := by core033_kernel_decide
theorem rows3257 : actualRows3257=WordField.canonicalRows actualModulus 3257 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3257 : actualRows3257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3257=2820 := by core033_kernel_decide
theorem rows3258 : actualRows3258=WordField.canonicalRows actualModulus 3258 (.bnot 3257) := by core033_kernel_decide
theorem stats3258 : actualRows3258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3258=6276 := by core033_kernel_decide
theorem rows3259 : actualRows3259=WordField.canonicalRows actualModulus 3259 (.bxor 3256 3258) := by core033_kernel_decide
theorem stats3259 : actualRows3259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3259=7428 := by core033_kernel_decide
theorem rows3260 : actualRows3260=WordField.canonicalRows actualModulus 3260 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3260 : actualRows3260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3260=2892 := by core033_kernel_decide
theorem rows3261 : actualRows3261=WordField.canonicalRows actualModulus 3261 (.bxor 1299 3260) := by core033_kernel_decide
theorem stats3261 : actualRows3261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3261=7428 := by core033_kernel_decide
theorem rows3262 : actualRows3262=WordField.canonicalRows actualModulus 3262 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3262 : actualRows3262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3262=2820 := by core033_kernel_decide
theorem rows3263 : actualRows3263=WordField.canonicalRows actualModulus 3263 (.bnot 3262) := by core033_kernel_decide
theorem stats3263 : actualRows3263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3263=6276 := by core033_kernel_decide
theorem rows3264 : actualRows3264=WordField.canonicalRows actualModulus 3264 (.badd 3261 3263) := by core033_kernel_decide
theorem stats3264 : actualRows3264.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3264=5388 := by core033_kernel_decide
theorem rows3265 : actualRows3265=WordField.canonicalRows actualModulus 3265 (.bnot 3264) := by core033_kernel_decide
theorem stats3265 : actualRows3265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3265=6276 := by core033_kernel_decide
theorem rows3266 : actualRows3266=WordField.canonicalRows actualModulus 3266 (.band 3259 3265) := by core033_kernel_decide
theorem stats3266 : actualRows3266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3266=5124 := by core033_kernel_decide
theorem rows3267 : actualRows3267=WordField.canonicalRows actualModulus 3267 (.bxor 3254 3266) := by core033_kernel_decide
theorem stats3267 : actualRows3267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3267=7428 := by core033_kernel_decide
theorem rows3268 : actualRows3268=WordField.canonicalRows actualModulus 3268 (.shr 3267 31) := by core033_kernel_decide
theorem stats3268 : actualRows3268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3268=2892 := by core033_kernel_decide
theorem rows3269 : actualRows3269=WordField.canonicalRows actualModulus 3269 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3269 : actualRows3269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3269=2892 := by core033_kernel_decide
theorem rows3270 : actualRows3270=WordField.canonicalRows actualModulus 3270 (.bxor 3268 3269) := by core033_kernel_decide
theorem stats3270 : actualRows3270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3270=7428 := by core033_kernel_decide
theorem rows3271 : actualRows3271=WordField.canonicalRows actualModulus 3271 (.bnot 3270) := by core033_kernel_decide
theorem stats3271 : actualRows3271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3271=6276 := by core033_kernel_decide
theorem rows3272 : actualRows3272=WordField.canonicalRows actualModulus 3272 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3272 : actualRows3272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3272=2892 := by core033_kernel_decide
theorem rows3273 : actualRows3273=WordField.canonicalRows actualModulus 3273 (.badd 3271 3272) := by core033_kernel_decide
theorem stats3273 : actualRows3273.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3273=5388 := by core033_kernel_decide
theorem rows3274 : actualRows3274=WordField.canonicalRows actualModulus 3274 (.bnot 3273) := by core033_kernel_decide
theorem stats3274 : actualRows3274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3274=6276 := by core033_kernel_decide
theorem rows3275 : actualRows3275=WordField.canonicalRows actualModulus 3275 (.literal (BitVec.ofNat 32 1013904242)) := by core033_kernel_decide
theorem stats3275 : actualRows3275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3275=4188 := by core033_kernel_decide
theorem rows3276 : actualRows3276=WordField.canonicalRows actualModulus 3276 (.band 3274 3275) := by core033_kernel_decide
theorem stats3276 : actualRows3276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3276=5124 := by core033_kernel_decide
theorem rows3277 : actualRows3277=WordField.canonicalRows actualModulus 3277 (.bxor 3249 3276) := by core033_kernel_decide
theorem stats3277 : actualRows3277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3277=7428 := by core033_kernel_decide
theorem rows3278 : actualRows3278=WordField.canonicalRows actualModulus 3278 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3278 : actualRows3278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3278=2892 := by core033_kernel_decide
theorem rows3279 : actualRows3279=WordField.canonicalRows actualModulus 3279 (.bxor 1299 3278) := by core033_kernel_decide
theorem stats3279 : actualRows3279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3279=7428 := by core033_kernel_decide
theorem rows3280 : actualRows3280=WordField.canonicalRows actualModulus 3280 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3280 : actualRows3280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3280=2820 := by core033_kernel_decide
theorem rows3281 : actualRows3281=WordField.canonicalRows actualModulus 3281 (.bnot 3280) := by core033_kernel_decide
theorem stats3281 : actualRows3281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3281=6276 := by core033_kernel_decide
theorem rows3282 : actualRows3282=WordField.canonicalRows actualModulus 3282 (.band 3279 3281) := by core033_kernel_decide
theorem stats3282 : actualRows3282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3282=5124 := by core033_kernel_decide
theorem rows3283 : actualRows3283=WordField.canonicalRows actualModulus 3283 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3283 : actualRows3283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3283=2892 := by core033_kernel_decide
theorem rows3284 : actualRows3284=WordField.canonicalRows actualModulus 3284 (.bxor 1299 3283) := by core033_kernel_decide
theorem stats3284 : actualRows3284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3284=7428 := by core033_kernel_decide
theorem rows3285 : actualRows3285=WordField.canonicalRows actualModulus 3285 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3285 : actualRows3285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3285=2820 := by core033_kernel_decide
theorem rows3286 : actualRows3286=WordField.canonicalRows actualModulus 3286 (.bnot 3285) := by core033_kernel_decide
theorem stats3286 : actualRows3286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3286=6276 := by core033_kernel_decide
theorem rows3287 : actualRows3287=WordField.canonicalRows actualModulus 3287 (.bxor 3284 3286) := by core033_kernel_decide
theorem stats3287 : actualRows3287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3287=7428 := by core033_kernel_decide
theorem rows3288 : actualRows3288=WordField.canonicalRows actualModulus 3288 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3288 : actualRows3288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3288=2892 := by core033_kernel_decide
theorem rows3289 : actualRows3289=WordField.canonicalRows actualModulus 3289 (.bxor 1299 3288) := by core033_kernel_decide
theorem stats3289 : actualRows3289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3289=7428 := by core033_kernel_decide
theorem rows3290 : actualRows3290=WordField.canonicalRows actualModulus 3290 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3290 : actualRows3290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3290=2820 := by core033_kernel_decide
theorem rows3291 : actualRows3291=WordField.canonicalRows actualModulus 3291 (.bnot 3290) := by core033_kernel_decide
theorem stats3291 : actualRows3291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3291=6276 := by core033_kernel_decide
theorem rows3292 : actualRows3292=WordField.canonicalRows actualModulus 3292 (.badd 3289 3291) := by core033_kernel_decide
theorem stats3292 : actualRows3292.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3292=5388 := by core033_kernel_decide
theorem rows3293 : actualRows3293=WordField.canonicalRows actualModulus 3293 (.bnot 3292) := by core033_kernel_decide
theorem stats3293 : actualRows3293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3293=6276 := by core033_kernel_decide
theorem rows3294 : actualRows3294=WordField.canonicalRows actualModulus 3294 (.band 3287 3293) := by core033_kernel_decide
theorem stats3294 : actualRows3294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3294=5124 := by core033_kernel_decide
theorem rows3295 : actualRows3295=WordField.canonicalRows actualModulus 3295 (.bxor 3282 3294) := by core033_kernel_decide
theorem stats3295 : actualRows3295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3295=7428 := by core033_kernel_decide
theorem rows3296 : actualRows3296=WordField.canonicalRows actualModulus 3296 (.shr 3295 31) := by core033_kernel_decide
theorem stats3296 : actualRows3296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3296=2892 := by core033_kernel_decide
theorem rows3297 : actualRows3297=WordField.canonicalRows actualModulus 3297 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3297 : actualRows3297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3297=2892 := by core033_kernel_decide
theorem rows3298 : actualRows3298=WordField.canonicalRows actualModulus 3298 (.bxor 3296 3297) := by core033_kernel_decide
theorem stats3298 : actualRows3298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3298=7428 := by core033_kernel_decide
theorem rows3299 : actualRows3299=WordField.canonicalRows actualModulus 3299 (.bnot 3298) := by core033_kernel_decide
theorem stats3299 : actualRows3299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3299=6276 := by core033_kernel_decide
theorem rows3300 : actualRows3300=WordField.canonicalRows actualModulus 3300 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3300 : actualRows3300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3300=2892 := by core033_kernel_decide
theorem rows3301 : actualRows3301=WordField.canonicalRows actualModulus 3301 (.badd 3299 3300) := by core033_kernel_decide
theorem stats3301 : actualRows3301.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3301=5388 := by core033_kernel_decide
theorem rows3302 : actualRows3302=WordField.canonicalRows actualModulus 3302 (.band 3301 1717) := by core033_kernel_decide
theorem stats3302 : actualRows3302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3302=5124 := by core033_kernel_decide
theorem rows3303 : actualRows3303=WordField.canonicalRows actualModulus 3303 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3303 : actualRows3303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3303=2892 := by core033_kernel_decide
theorem rows3304 : actualRows3304=WordField.canonicalRows actualModulus 3304 (.bxor 1299 3303) := by core033_kernel_decide
theorem stats3304 : actualRows3304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3304=7428 := by core033_kernel_decide
theorem rows3305 : actualRows3305=WordField.canonicalRows actualModulus 3305 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3305 : actualRows3305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3305=2820 := by core033_kernel_decide
theorem rows3306 : actualRows3306=WordField.canonicalRows actualModulus 3306 (.bnot 3305) := by core033_kernel_decide
theorem stats3306 : actualRows3306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3306=6276 := by core033_kernel_decide
theorem rows3307 : actualRows3307=WordField.canonicalRows actualModulus 3307 (.band 3304 3306) := by core033_kernel_decide
theorem stats3307 : actualRows3307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3307=5124 := by core033_kernel_decide
theorem rows3308 : actualRows3308=WordField.canonicalRows actualModulus 3308 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3308 : actualRows3308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3308=2892 := by core033_kernel_decide
theorem rows3309 : actualRows3309=WordField.canonicalRows actualModulus 3309 (.bxor 1299 3308) := by core033_kernel_decide
theorem stats3309 : actualRows3309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3309=7428 := by core033_kernel_decide
theorem rows3310 : actualRows3310=WordField.canonicalRows actualModulus 3310 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3310 : actualRows3310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3310=2820 := by core033_kernel_decide
theorem rows3311 : actualRows3311=WordField.canonicalRows actualModulus 3311 (.bnot 3310) := by core033_kernel_decide
theorem stats3311 : actualRows3311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3311=6276 := by core033_kernel_decide
theorem rows3312 : actualRows3312=WordField.canonicalRows actualModulus 3312 (.bxor 3309 3311) := by core033_kernel_decide
theorem stats3312 : actualRows3312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3312=7428 := by core033_kernel_decide
theorem rows3313 : actualRows3313=WordField.canonicalRows actualModulus 3313 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3313 : actualRows3313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3313=2892 := by core033_kernel_decide
theorem rows3314 : actualRows3314=WordField.canonicalRows actualModulus 3314 (.bxor 1299 3313) := by core033_kernel_decide
theorem stats3314 : actualRows3314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3314=7428 := by core033_kernel_decide
theorem rows3315 : actualRows3315=WordField.canonicalRows actualModulus 3315 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3315 : actualRows3315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3315=2820 := by core033_kernel_decide
theorem rows3316 : actualRows3316=WordField.canonicalRows actualModulus 3316 (.bnot 3315) := by core033_kernel_decide
theorem stats3316 : actualRows3316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3316=6276 := by core033_kernel_decide
theorem rows3317 : actualRows3317=WordField.canonicalRows actualModulus 3317 (.badd 3314 3316) := by core033_kernel_decide
theorem stats3317 : actualRows3317.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3317=5388 := by core033_kernel_decide
def partRows49 : List R1CS.Row := actualRows3254++actualRows3255++actualRows3256++actualRows3257++actualRows3258++actualRows3259++actualRows3260++actualRows3261++actualRows3262++actualRows3263++actualRows3264++actualRows3265++actualRows3266++actualRows3267++actualRows3268++actualRows3269++actualRows3270++actualRows3271++actualRows3272++actualRows3273++actualRows3274++actualRows3275++actualRows3276++actualRows3277++actualRows3278++actualRows3279++actualRows3280++actualRows3281++actualRows3282++actualRows3283++actualRows3284++actualRows3285++actualRows3286++actualRows3287++actualRows3288++actualRows3289++actualRows3290++actualRows3291++actualRows3292++actualRows3293++actualRows3294++actualRows3295++actualRows3296++actualRows3297++actualRows3298++actualRows3299++actualRows3300++actualRows3301++actualRows3302++actualRows3303++actualRows3304++actualRows3305++actualRows3306++actualRows3307++actualRows3308++actualRows3309++actualRows3310++actualRows3311++actualRows3312++actualRows3313++actualRows3314++actualRows3315++actualRows3316++actualRows3317
def partOps49 : List WordIR.Op := [.band 3251 3253,.literal (BitVec.ofNat 32 2),.bxor 1299 3255,.literal (BitVec.ofNat 32 0),.bnot 3257,.bxor 3256 3258,.literal (BitVec.ofNat 32 2),.bxor 1299 3260,.literal (BitVec.ofNat 32 0),.bnot 3262,.badd 3261 3263,.bnot 3264,.band 3259 3265,.bxor 3254 3266,.shr 3267 31,.literal (BitVec.ofNat 32 1),.bxor 3268 3269,.bnot 3270,.literal (BitVec.ofNat 32 1),.badd 3271 3272,.bnot 3273,.literal (BitVec.ofNat 32 1013904242),.band 3274 3275,.bxor 3249 3276,.literal (BitVec.ofNat 32 2),.bxor 1299 3278,.literal (BitVec.ofNat 32 0),.bnot 3280,.band 3279 3281,.literal (BitVec.ofNat 32 2),.bxor 1299 3283,.literal (BitVec.ofNat 32 0),.bnot 3285,.bxor 3284 3286,.literal (BitVec.ofNat 32 2),.bxor 1299 3288,.literal (BitVec.ofNat 32 0),.bnot 3290,.badd 3289 3291,.bnot 3292,.band 3287 3293,.bxor 3282 3294,.shr 3295 31,.literal (BitVec.ofNat 32 1),.bxor 3296 3297,.bnot 3298,.literal (BitVec.ofNat 32 1),.badd 3299 3300,.band 3301 1717,.literal (BitVec.ofNat 32 2),.bxor 1299 3303,.literal (BitVec.ofNat 32 0),.bnot 3305,.band 3304 3306,.literal (BitVec.ofNat 32 2),.bxor 1299 3308,.literal (BitVec.ofNat 32 0),.bnot 3310,.bxor 3309 3311,.literal (BitVec.ofNat 32 2),.bxor 1299 3313,.literal (BitVec.ofNat 32 0),.bnot 3315,.badd 3314 3316]
theorem partExact49 : partRows49=WordField.rows actualModulus 3254 partOps49 := by
  simp only [partRows49,partOps49,WordField.rows,rows3254,rows3255,rows3256,rows3257,rows3258,rows3259,rows3260,rows3261,rows3262,rows3263,rows3264,rows3265,rows3266,rows3267,rows3268,rows3269,rows3270,rows3271,rows3272,rows3273,rows3274,rows3275,rows3276,rows3277,rows3278,rows3279,rows3280,rows3281,rows3282,rows3283,rows3284,rows3285,rows3286,rows3287,rows3288,rows3289,rows3290,rows3291,rows3292,rows3293,rows3294,rows3295,rows3296,rows3297,rows3298,rows3299,rows3300,rows3301,rows3302,rows3303,rows3304,rows3305,rows3306,rows3307,rows3308,rows3309,rows3310,rows3311,rows3312,rows3313,rows3314,rows3315,rows3316,rows3317,List.append_assoc,List.append_nil]
theorem partLength49 : partOps49.length=64 := by decide
theorem partStats49 : partRows49.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows49=330480 := by
  simp only [partRows49,List.length_append,MatrixRowBlocks.rows_weight_append,stats3254.1,stats3254.2,stats3255.1,stats3255.2,stats3256.1,stats3256.2,stats3257.1,stats3257.2,stats3258.1,stats3258.2,stats3259.1,stats3259.2,stats3260.1,stats3260.2,stats3261.1,stats3261.2,stats3262.1,stats3262.2,stats3263.1,stats3263.2,stats3264.1,stats3264.2,stats3265.1,stats3265.2,stats3266.1,stats3266.2,stats3267.1,stats3267.2,stats3268.1,stats3268.2,stats3269.1,stats3269.2,stats3270.1,stats3270.2,stats3271.1,stats3271.2,stats3272.1,stats3272.2,stats3273.1,stats3273.2,stats3274.1,stats3274.2,stats3275.1,stats3275.2,stats3276.1,stats3276.2,stats3277.1,stats3277.2,stats3278.1,stats3278.2,stats3279.1,stats3279.2,stats3280.1,stats3280.2,stats3281.1,stats3281.2,stats3282.1,stats3282.2,stats3283.1,stats3283.2,stats3284.1,stats3284.2,stats3285.1,stats3285.2,stats3286.1,stats3286.2,stats3287.1,stats3287.2,stats3288.1,stats3288.2,stats3289.1,stats3289.2,stats3290.1,stats3290.2,stats3291.1,stats3291.2,stats3292.1,stats3292.2,stats3293.1,stats3293.2,stats3294.1,stats3294.2,stats3295.1,stats3295.2,stats3296.1,stats3296.2,stats3297.1,stats3297.2,stats3298.1,stats3298.2,stats3299.1,stats3299.2,stats3300.1,stats3300.2,stats3301.1,stats3301.2,stats3302.1,stats3302.2,stats3303.1,stats3303.2,stats3304.1,stats3304.2,stats3305.1,stats3305.2,stats3306.1,stats3306.2,stats3307.1,stats3307.2,stats3308.1,stats3308.2,stats3309.1,stats3309.2,stats3310.1,stats3310.2,stats3311.1,stats3311.2,stats3312.1,stats3312.2,stats3313.1,stats3313.2,stats3314.1,stats3314.2,stats3315.1,stats3315.2,stats3316.1,stats3316.2,stats3317.1,stats3317.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
