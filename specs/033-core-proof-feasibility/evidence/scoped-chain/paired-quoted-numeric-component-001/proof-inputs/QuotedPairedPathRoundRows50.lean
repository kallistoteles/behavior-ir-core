import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData51
import PairedPathRoundInstructionMatrixData52
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3296 : actualRows3296=WordField.canonicalRows actualModulus 3296 (.bxor 3294 3295) := by core033_kernel_decide
theorem stats3296 : actualRows3296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3296=7428 := by core033_kernel_decide
theorem rows3297 : actualRows3297=WordField.canonicalRows actualModulus 3297 (.bnot 3296) := by core033_kernel_decide
theorem stats3297 : actualRows3297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3297=6276 := by core033_kernel_decide
theorem rows3298 : actualRows3298=WordField.canonicalRows actualModulus 3298 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3298 : actualRows3298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3298=2892 := by core033_kernel_decide
theorem rows3299 : actualRows3299=WordField.canonicalRows actualModulus 3299 (.badd 3297 3298) := by core033_kernel_decide
theorem stats3299 : actualRows3299.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3299=5388 := by core033_kernel_decide
theorem rows3300 : actualRows3300=WordField.canonicalRows actualModulus 3300 (.band 3299 2037) := by core033_kernel_decide
theorem stats3300 : actualRows3300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3300=5124 := by core033_kernel_decide
theorem rows3301 : actualRows3301=WordField.canonicalRows actualModulus 3301 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3301 : actualRows3301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3301=2892 := by core033_kernel_decide
theorem rows3302 : actualRows3302=WordField.canonicalRows actualModulus 3302 (.bxor 616 3301) := by core033_kernel_decide
theorem stats3302 : actualRows3302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3302=7428 := by core033_kernel_decide
theorem rows3303 : actualRows3303=WordField.canonicalRows actualModulus 3303 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3303 : actualRows3303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3303=2820 := by core033_kernel_decide
theorem rows3304 : actualRows3304=WordField.canonicalRows actualModulus 3304 (.bnot 3303) := by core033_kernel_decide
theorem stats3304 : actualRows3304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3304=6276 := by core033_kernel_decide
theorem rows3305 : actualRows3305=WordField.canonicalRows actualModulus 3305 (.band 3302 3304) := by core033_kernel_decide
theorem stats3305 : actualRows3305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3305=5124 := by core033_kernel_decide
theorem rows3306 : actualRows3306=WordField.canonicalRows actualModulus 3306 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3306 : actualRows3306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3306=2892 := by core033_kernel_decide
theorem rows3307 : actualRows3307=WordField.canonicalRows actualModulus 3307 (.bxor 616 3306) := by core033_kernel_decide
theorem stats3307 : actualRows3307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3307=7428 := by core033_kernel_decide
theorem rows3308 : actualRows3308=WordField.canonicalRows actualModulus 3308 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3308 : actualRows3308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3308=2820 := by core033_kernel_decide
theorem rows3309 : actualRows3309=WordField.canonicalRows actualModulus 3309 (.bnot 3308) := by core033_kernel_decide
theorem stats3309 : actualRows3309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3309=6276 := by core033_kernel_decide
theorem rows3310 : actualRows3310=WordField.canonicalRows actualModulus 3310 (.bxor 3307 3309) := by core033_kernel_decide
theorem stats3310 : actualRows3310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3310=7428 := by core033_kernel_decide
theorem rows3311 : actualRows3311=WordField.canonicalRows actualModulus 3311 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3311 : actualRows3311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3311=2892 := by core033_kernel_decide
theorem rows3312 : actualRows3312=WordField.canonicalRows actualModulus 3312 (.bxor 616 3311) := by core033_kernel_decide
theorem stats3312 : actualRows3312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3312=7428 := by core033_kernel_decide
theorem rows3313 : actualRows3313=WordField.canonicalRows actualModulus 3313 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3313 : actualRows3313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3313=2820 := by core033_kernel_decide
theorem rows3314 : actualRows3314=WordField.canonicalRows actualModulus 3314 (.bnot 3313) := by core033_kernel_decide
theorem stats3314 : actualRows3314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3314=6276 := by core033_kernel_decide
theorem rows3315 : actualRows3315=WordField.canonicalRows actualModulus 3315 (.badd 3312 3314) := by core033_kernel_decide
theorem stats3315 : actualRows3315.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3315=5388 := by core033_kernel_decide
theorem rows3316 : actualRows3316=WordField.canonicalRows actualModulus 3316 (.bnot 3315) := by core033_kernel_decide
theorem stats3316 : actualRows3316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3316=6276 := by core033_kernel_decide
theorem rows3317 : actualRows3317=WordField.canonicalRows actualModulus 3317 (.band 3310 3316) := by core033_kernel_decide
theorem stats3317 : actualRows3317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3317=5124 := by core033_kernel_decide
theorem rows3318 : actualRows3318=WordField.canonicalRows actualModulus 3318 (.bxor 3305 3317) := by core033_kernel_decide
theorem stats3318 : actualRows3318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3318=7428 := by core033_kernel_decide
theorem rows3319 : actualRows3319=WordField.canonicalRows actualModulus 3319 (.shr 3318 31) := by core033_kernel_decide
theorem stats3319 : actualRows3319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3319=2892 := by core033_kernel_decide
theorem rows3320 : actualRows3320=WordField.canonicalRows actualModulus 3320 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3320 : actualRows3320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3320=2892 := by core033_kernel_decide
theorem rows3321 : actualRows3321=WordField.canonicalRows actualModulus 3321 (.bxor 3319 3320) := by core033_kernel_decide
theorem stats3321 : actualRows3321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3321=7428 := by core033_kernel_decide
theorem rows3322 : actualRows3322=WordField.canonicalRows actualModulus 3322 (.bnot 3321) := by core033_kernel_decide
theorem stats3322 : actualRows3322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3322=6276 := by core033_kernel_decide
theorem rows3323 : actualRows3323=WordField.canonicalRows actualModulus 3323 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3323 : actualRows3323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3323=2892 := by core033_kernel_decide
theorem rows3324 : actualRows3324=WordField.canonicalRows actualModulus 3324 (.badd 3322 3323) := by core033_kernel_decide
theorem stats3324 : actualRows3324.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3324=5388 := by core033_kernel_decide
theorem rows3325 : actualRows3325=WordField.canonicalRows actualModulus 3325 (.bnot 3324) := by core033_kernel_decide
theorem stats3325 : actualRows3325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3325=6276 := by core033_kernel_decide
theorem rows3326 : actualRows3326=WordField.canonicalRows actualModulus 3326 (.band 3325 1871) := by core033_kernel_decide
theorem stats3326 : actualRows3326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3326=5124 := by core033_kernel_decide
theorem rows3327 : actualRows3327=WordField.canonicalRows actualModulus 3327 (.bxor 3300 3326) := by core033_kernel_decide
theorem stats3327 : actualRows3327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3327=7428 := by core033_kernel_decide
theorem rows3328 : actualRows3328=WordField.canonicalRows actualModulus 3328 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3328 : actualRows3328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3328=2892 := by core033_kernel_decide
theorem rows3329 : actualRows3329=WordField.canonicalRows actualModulus 3329 (.bxor 616 3328) := by core033_kernel_decide
theorem stats3329 : actualRows3329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3329=7428 := by core033_kernel_decide
theorem rows3330 : actualRows3330=WordField.canonicalRows actualModulus 3330 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3330 : actualRows3330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3330=2820 := by core033_kernel_decide
theorem rows3331 : actualRows3331=WordField.canonicalRows actualModulus 3331 (.bnot 3330) := by core033_kernel_decide
theorem stats3331 : actualRows3331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3331=6276 := by core033_kernel_decide
theorem rows3332 : actualRows3332=WordField.canonicalRows actualModulus 3332 (.band 3329 3331) := by core033_kernel_decide
theorem stats3332 : actualRows3332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3332=5124 := by core033_kernel_decide
theorem rows3333 : actualRows3333=WordField.canonicalRows actualModulus 3333 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3333 : actualRows3333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3333=2892 := by core033_kernel_decide
theorem rows3334 : actualRows3334=WordField.canonicalRows actualModulus 3334 (.bxor 616 3333) := by core033_kernel_decide
theorem stats3334 : actualRows3334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3334=7428 := by core033_kernel_decide
theorem rows3335 : actualRows3335=WordField.canonicalRows actualModulus 3335 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3335 : actualRows3335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3335=2820 := by core033_kernel_decide
theorem rows3336 : actualRows3336=WordField.canonicalRows actualModulus 3336 (.bnot 3335) := by core033_kernel_decide
theorem stats3336 : actualRows3336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3336=6276 := by core033_kernel_decide
theorem rows3337 : actualRows3337=WordField.canonicalRows actualModulus 3337 (.bxor 3334 3336) := by core033_kernel_decide
theorem stats3337 : actualRows3337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3337=7428 := by core033_kernel_decide
theorem rows3338 : actualRows3338=WordField.canonicalRows actualModulus 3338 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3338 : actualRows3338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3338=2892 := by core033_kernel_decide
theorem rows3339 : actualRows3339=WordField.canonicalRows actualModulus 3339 (.bxor 616 3338) := by core033_kernel_decide
theorem stats3339 : actualRows3339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3339=7428 := by core033_kernel_decide
theorem rows3340 : actualRows3340=WordField.canonicalRows actualModulus 3340 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3340 : actualRows3340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3340=2820 := by core033_kernel_decide
theorem rows3341 : actualRows3341=WordField.canonicalRows actualModulus 3341 (.bnot 3340) := by core033_kernel_decide
theorem stats3341 : actualRows3341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3341=6276 := by core033_kernel_decide
theorem rows3342 : actualRows3342=WordField.canonicalRows actualModulus 3342 (.badd 3339 3341) := by core033_kernel_decide
theorem stats3342 : actualRows3342.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3342=5388 := by core033_kernel_decide
theorem rows3343 : actualRows3343=WordField.canonicalRows actualModulus 3343 (.bnot 3342) := by core033_kernel_decide
theorem stats3343 : actualRows3343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3343=6276 := by core033_kernel_decide
theorem rows3344 : actualRows3344=WordField.canonicalRows actualModulus 3344 (.band 3337 3343) := by core033_kernel_decide
theorem stats3344 : actualRows3344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3344=5124 := by core033_kernel_decide
theorem rows3345 : actualRows3345=WordField.canonicalRows actualModulus 3345 (.bxor 3332 3344) := by core033_kernel_decide
theorem stats3345 : actualRows3345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3345=7428 := by core033_kernel_decide
theorem rows3346 : actualRows3346=WordField.canonicalRows actualModulus 3346 (.shr 3345 31) := by core033_kernel_decide
theorem stats3346 : actualRows3346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3346=2892 := by core033_kernel_decide
theorem rows3347 : actualRows3347=WordField.canonicalRows actualModulus 3347 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3347 : actualRows3347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3347=2892 := by core033_kernel_decide
theorem rows3348 : actualRows3348=WordField.canonicalRows actualModulus 3348 (.bxor 3346 3347) := by core033_kernel_decide
theorem stats3348 : actualRows3348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3348=7428 := by core033_kernel_decide
theorem rows3349 : actualRows3349=WordField.canonicalRows actualModulus 3349 (.bnot 3348) := by core033_kernel_decide
theorem stats3349 : actualRows3349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3349=6276 := by core033_kernel_decide
theorem rows3350 : actualRows3350=WordField.canonicalRows actualModulus 3350 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3350 : actualRows3350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3350=2892 := by core033_kernel_decide
theorem rows3351 : actualRows3351=WordField.canonicalRows actualModulus 3351 (.badd 3349 3350) := by core033_kernel_decide
theorem stats3351 : actualRows3351.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3351=5388 := by core033_kernel_decide
theorem rows3352 : actualRows3352=WordField.canonicalRows actualModulus 3352 (.band 3351 2040) := by core033_kernel_decide
theorem stats3352 : actualRows3352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3352=5124 := by core033_kernel_decide
theorem rows3353 : actualRows3353=WordField.canonicalRows actualModulus 3353 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3353 : actualRows3353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3353=2892 := by core033_kernel_decide
theorem rows3354 : actualRows3354=WordField.canonicalRows actualModulus 3354 (.bxor 616 3353) := by core033_kernel_decide
theorem stats3354 : actualRows3354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3354=7428 := by core033_kernel_decide
theorem rows3355 : actualRows3355=WordField.canonicalRows actualModulus 3355 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3355 : actualRows3355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3355=2820 := by core033_kernel_decide
theorem rows3356 : actualRows3356=WordField.canonicalRows actualModulus 3356 (.bnot 3355) := by core033_kernel_decide
theorem stats3356 : actualRows3356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3356=6276 := by core033_kernel_decide
theorem rows3357 : actualRows3357=WordField.canonicalRows actualModulus 3357 (.band 3354 3356) := by core033_kernel_decide
theorem stats3357 : actualRows3357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3357=5124 := by core033_kernel_decide
theorem rows3358 : actualRows3358=WordField.canonicalRows actualModulus 3358 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3358 : actualRows3358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3358=2892 := by core033_kernel_decide
theorem rows3359 : actualRows3359=WordField.canonicalRows actualModulus 3359 (.bxor 616 3358) := by core033_kernel_decide
theorem stats3359 : actualRows3359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3359=7428 := by core033_kernel_decide
def partRows50 : List R1CS.Row := actualRows3296++actualRows3297++actualRows3298++actualRows3299++actualRows3300++actualRows3301++actualRows3302++actualRows3303++actualRows3304++actualRows3305++actualRows3306++actualRows3307++actualRows3308++actualRows3309++actualRows3310++actualRows3311++actualRows3312++actualRows3313++actualRows3314++actualRows3315++actualRows3316++actualRows3317++actualRows3318++actualRows3319++actualRows3320++actualRows3321++actualRows3322++actualRows3323++actualRows3324++actualRows3325++actualRows3326++actualRows3327++actualRows3328++actualRows3329++actualRows3330++actualRows3331++actualRows3332++actualRows3333++actualRows3334++actualRows3335++actualRows3336++actualRows3337++actualRows3338++actualRows3339++actualRows3340++actualRows3341++actualRows3342++actualRows3343++actualRows3344++actualRows3345++actualRows3346++actualRows3347++actualRows3348++actualRows3349++actualRows3350++actualRows3351++actualRows3352++actualRows3353++actualRows3354++actualRows3355++actualRows3356++actualRows3357++actualRows3358++actualRows3359
def partOps50 : List WordIR.Op := [.bxor 3294 3295,.bnot 3296,.literal (BitVec.ofNat 32 1),.badd 3297 3298,.band 3299 2037,.literal (BitVec.ofNat 32 2),.bxor 616 3301,.literal (BitVec.ofNat 32 0),.bnot 3303,.band 3302 3304,.literal (BitVec.ofNat 32 2),.bxor 616 3306,.literal (BitVec.ofNat 32 0),.bnot 3308,.bxor 3307 3309,.literal (BitVec.ofNat 32 2),.bxor 616 3311,.literal (BitVec.ofNat 32 0),.bnot 3313,.badd 3312 3314,.bnot 3315,.band 3310 3316,.bxor 3305 3317,.shr 3318 31,.literal (BitVec.ofNat 32 1),.bxor 3319 3320,.bnot 3321,.literal (BitVec.ofNat 32 1),.badd 3322 3323,.bnot 3324,.band 3325 1871,.bxor 3300 3326,.literal (BitVec.ofNat 32 2),.bxor 616 3328,.literal (BitVec.ofNat 32 0),.bnot 3330,.band 3329 3331,.literal (BitVec.ofNat 32 2),.bxor 616 3333,.literal (BitVec.ofNat 32 0),.bnot 3335,.bxor 3334 3336,.literal (BitVec.ofNat 32 2),.bxor 616 3338,.literal (BitVec.ofNat 32 0),.bnot 3340,.badd 3339 3341,.bnot 3342,.band 3337 3343,.bxor 3332 3344,.shr 3345 31,.literal (BitVec.ofNat 32 1),.bxor 3346 3347,.bnot 3348,.literal (BitVec.ofNat 32 1),.badd 3349 3350,.band 3351 2040,.literal (BitVec.ofNat 32 2),.bxor 616 3353,.literal (BitVec.ofNat 32 0),.bnot 3355,.band 3354 3356,.literal (BitVec.ofNat 32 2),.bxor 616 3358]
theorem partExact50 : partRows50=WordField.rows actualModulus 3296 partOps50 := by
  simp only [partRows50,partOps50,WordField.rows,rows3296,rows3297,rows3298,rows3299,rows3300,rows3301,rows3302,rows3303,rows3304,rows3305,rows3306,rows3307,rows3308,rows3309,rows3310,rows3311,rows3312,rows3313,rows3314,rows3315,rows3316,rows3317,rows3318,rows3319,rows3320,rows3321,rows3322,rows3323,rows3324,rows3325,rows3326,rows3327,rows3328,rows3329,rows3330,rows3331,rows3332,rows3333,rows3334,rows3335,rows3336,rows3337,rows3338,rows3339,rows3340,rows3341,rows3342,rows3343,rows3344,rows3345,rows3346,rows3347,rows3348,rows3349,rows3350,rows3351,rows3352,rows3353,rows3354,rows3355,rows3356,rows3357,rows3358,rows3359,List.append_assoc,List.append_nil]
theorem partLength50 : partOps50.length=64 := by decide
theorem partStats50 : partRows50.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows50=331488 := by
  simp only [partRows50,List.length_append,MatrixRowBlocks.rows_weight_append,stats3296.1,stats3296.2,stats3297.1,stats3297.2,stats3298.1,stats3298.2,stats3299.1,stats3299.2,stats3300.1,stats3300.2,stats3301.1,stats3301.2,stats3302.1,stats3302.2,stats3303.1,stats3303.2,stats3304.1,stats3304.2,stats3305.1,stats3305.2,stats3306.1,stats3306.2,stats3307.1,stats3307.2,stats3308.1,stats3308.2,stats3309.1,stats3309.2,stats3310.1,stats3310.2,stats3311.1,stats3311.2,stats3312.1,stats3312.2,stats3313.1,stats3313.2,stats3314.1,stats3314.2,stats3315.1,stats3315.2,stats3316.1,stats3316.2,stats3317.1,stats3317.2,stats3318.1,stats3318.2,stats3319.1,stats3319.2,stats3320.1,stats3320.2,stats3321.1,stats3321.2,stats3322.1,stats3322.2,stats3323.1,stats3323.2,stats3324.1,stats3324.2,stats3325.1,stats3325.2,stats3326.1,stats3326.2,stats3327.1,stats3327.2,stats3328.1,stats3328.2,stats3329.1,stats3329.2,stats3330.1,stats3330.2,stats3331.1,stats3331.2,stats3332.1,stats3332.2,stats3333.1,stats3333.2,stats3334.1,stats3334.2,stats3335.1,stats3335.2,stats3336.1,stats3336.2,stats3337.1,stats3337.2,stats3338.1,stats3338.2,stats3339.1,stats3339.2,stats3340.1,stats3340.2,stats3341.1,stats3341.2,stats3342.1,stats3342.2,stats3343.1,stats3343.2,stats3344.1,stats3344.2,stats3345.1,stats3345.2,stats3346.1,stats3346.2,stats3347.1,stats3347.2,stats3348.1,stats3348.2,stats3349.1,stats3349.2,stats3350.1,stats3350.2,stats3351.1,stats3351.2,stats3352.1,stats3352.2,stats3353.1,stats3353.2,stats3354.1,stats3354.2,stats3355.1,stats3355.2,stats3356.1,stats3356.2,stats3357.1,stats3357.2,stats3358.1,stats3358.2,stats3359.1,stats3359.2]
  decide
end QuotedPairedPathRoundCheckedRows
