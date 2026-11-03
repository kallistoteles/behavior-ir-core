import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData51
import SharedFrameInstructionMatrixData52
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3307 : actualRows3307=WordField.canonicalRows actualModulus 3307 (.bxor 3304 3306) := by core033_kernel_decide
theorem stats3307 : actualRows3307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3307=7428 := by core033_kernel_decide
theorem rows3308 : actualRows3308=WordField.canonicalRows actualModulus 3308 (.badd 3303 3307) := by core033_kernel_decide
theorem stats3308 : actualRows3308.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3308=5388 := by core033_kernel_decide
theorem rows3309 : actualRows3309=WordField.canonicalRows actualModulus 3309 (.literal (BitVec.ofNat 32 3516065817)) := by core033_kernel_decide
theorem stats3309 : actualRows3309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3309=3828 := by core033_kernel_decide
theorem rows3310 : actualRows3310=WordField.canonicalRows actualModulus 3310 (.badd 3308 3309) := by core033_kernel_decide
theorem stats3310 : actualRows3310.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3310=5388 := by core033_kernel_decide
theorem rows3311 : actualRows3311=WordField.canonicalRows actualModulus 3311 (.badd 3310 1905) := by core033_kernel_decide
theorem stats3311 : actualRows3311.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3311=5388 := by core033_kernel_decide
theorem rows3312 : actualRows3312=WordField.canonicalRows actualModulus 3312 (.rotr 3296 2) := by core033_kernel_decide
theorem stats3312 : actualRows3312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3312=5124 := by core033_kernel_decide
theorem rows3313 : actualRows3313=WordField.canonicalRows actualModulus 3313 (.rotr 3296 13) := by core033_kernel_decide
theorem stats3313 : actualRows3313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3313=5124 := by core033_kernel_decide
theorem rows3314 : actualRows3314=WordField.canonicalRows actualModulus 3314 (.bxor 3312 3313) := by core033_kernel_decide
theorem stats3314 : actualRows3314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3314=7428 := by core033_kernel_decide
theorem rows3315 : actualRows3315=WordField.canonicalRows actualModulus 3315 (.rotr 3296 22) := by core033_kernel_decide
theorem stats3315 : actualRows3315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3315=5124 := by core033_kernel_decide
theorem rows3316 : actualRows3316=WordField.canonicalRows actualModulus 3316 (.bxor 3314 3315) := by core033_kernel_decide
theorem stats3316 : actualRows3316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3316=7428 := by core033_kernel_decide
theorem rows3317 : actualRows3317=WordField.canonicalRows actualModulus 3317 (.band 3296 3270) := by core033_kernel_decide
theorem stats3317 : actualRows3317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3317=5124 := by core033_kernel_decide
theorem rows3318 : actualRows3318=WordField.canonicalRows actualModulus 3318 (.band 3296 3244) := by core033_kernel_decide
theorem stats3318 : actualRows3318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3318=5124 := by core033_kernel_decide
theorem rows3319 : actualRows3319=WordField.canonicalRows actualModulus 3319 (.bxor 3317 3318) := by core033_kernel_decide
theorem stats3319 : actualRows3319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3319=7428 := by core033_kernel_decide
theorem rows3320 : actualRows3320=WordField.canonicalRows actualModulus 3320 (.bxor 3319 3291) := by core033_kernel_decide
theorem stats3320 : actualRows3320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3320=7428 := by core033_kernel_decide
theorem rows3321 : actualRows3321=WordField.canonicalRows actualModulus 3321 (.badd 3316 3320) := by core033_kernel_decide
theorem stats3321 : actualRows3321.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3321=5388 := by core033_kernel_decide
theorem rows3322 : actualRows3322=WordField.canonicalRows actualModulus 3322 (.badd 3311 3321) := by core033_kernel_decide
theorem stats3322 : actualRows3322.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3322=5388 := by core033_kernel_decide
theorem rows3323 : actualRows3323=WordField.canonicalRows actualModulus 3323 (.badd 3218 3311) := by core033_kernel_decide
theorem stats3323 : actualRows3323.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3323=5388 := by core033_kernel_decide
theorem rows3324 : actualRows3324=WordField.canonicalRows actualModulus 3324 (.rotr 3323 6) := by core033_kernel_decide
theorem stats3324 : actualRows3324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3324=5124 := by core033_kernel_decide
theorem rows3325 : actualRows3325=WordField.canonicalRows actualModulus 3325 (.rotr 3323 11) := by core033_kernel_decide
theorem stats3325 : actualRows3325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3325=5124 := by core033_kernel_decide
theorem rows3326 : actualRows3326=WordField.canonicalRows actualModulus 3326 (.bxor 3324 3325) := by core033_kernel_decide
theorem stats3326 : actualRows3326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3326=7428 := by core033_kernel_decide
theorem rows3327 : actualRows3327=WordField.canonicalRows actualModulus 3327 (.rotr 3323 25) := by core033_kernel_decide
theorem stats3327 : actualRows3327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3327=5124 := by core033_kernel_decide
theorem rows3328 : actualRows3328=WordField.canonicalRows actualModulus 3328 (.bxor 3326 3327) := by core033_kernel_decide
theorem stats3328 : actualRows3328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3328=7428 := by core033_kernel_decide
theorem rows3329 : actualRows3329=WordField.canonicalRows actualModulus 3329 (.badd 3245 3328) := by core033_kernel_decide
theorem stats3329 : actualRows3329.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3329=5388 := by core033_kernel_decide
theorem rows3330 : actualRows3330=WordField.canonicalRows actualModulus 3330 (.band 3323 3297) := by core033_kernel_decide
theorem stats3330 : actualRows3330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3330=5124 := by core033_kernel_decide
theorem rows3331 : actualRows3331=WordField.canonicalRows actualModulus 3331 (.bnot 3323) := by core033_kernel_decide
theorem stats3331 : actualRows3331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3331=6276 := by core033_kernel_decide
theorem rows3332 : actualRows3332=WordField.canonicalRows actualModulus 3332 (.band 3331 3271) := by core033_kernel_decide
theorem stats3332 : actualRows3332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3332=5124 := by core033_kernel_decide
theorem rows3333 : actualRows3333=WordField.canonicalRows actualModulus 3333 (.bxor 3330 3332) := by core033_kernel_decide
theorem stats3333 : actualRows3333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3333=7428 := by core033_kernel_decide
theorem rows3334 : actualRows3334=WordField.canonicalRows actualModulus 3334 (.badd 3329 3333) := by core033_kernel_decide
theorem stats3334 : actualRows3334.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3334=5388 := by core033_kernel_decide
theorem rows3335 : actualRows3335=WordField.canonicalRows actualModulus 3335 (.literal (BitVec.ofNat 32 3600352804)) := by core033_kernel_decide
theorem stats3335 : actualRows3335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3335=3756 := by core033_kernel_decide
theorem rows3336 : actualRows3336=WordField.canonicalRows actualModulus 3336 (.badd 3334 3335) := by core033_kernel_decide
theorem stats3336 : actualRows3336.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3336=5388 := by core033_kernel_decide
theorem rows3337 : actualRows3337=WordField.canonicalRows actualModulus 3337 (.badd 3336 1918) := by core033_kernel_decide
theorem stats3337 : actualRows3337.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3337=5388 := by core033_kernel_decide
theorem rows3338 : actualRows3338=WordField.canonicalRows actualModulus 3338 (.rotr 3322 2) := by core033_kernel_decide
theorem stats3338 : actualRows3338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3338=5124 := by core033_kernel_decide
theorem rows3339 : actualRows3339=WordField.canonicalRows actualModulus 3339 (.rotr 3322 13) := by core033_kernel_decide
theorem stats3339 : actualRows3339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3339=5124 := by core033_kernel_decide
theorem rows3340 : actualRows3340=WordField.canonicalRows actualModulus 3340 (.bxor 3338 3339) := by core033_kernel_decide
theorem stats3340 : actualRows3340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3340=7428 := by core033_kernel_decide
theorem rows3341 : actualRows3341=WordField.canonicalRows actualModulus 3341 (.rotr 3322 22) := by core033_kernel_decide
theorem stats3341 : actualRows3341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3341=5124 := by core033_kernel_decide
theorem rows3342 : actualRows3342=WordField.canonicalRows actualModulus 3342 (.bxor 3340 3341) := by core033_kernel_decide
theorem stats3342 : actualRows3342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3342=7428 := by core033_kernel_decide
theorem rows3343 : actualRows3343=WordField.canonicalRows actualModulus 3343 (.band 3322 3296) := by core033_kernel_decide
theorem stats3343 : actualRows3343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3343=5124 := by core033_kernel_decide
theorem rows3344 : actualRows3344=WordField.canonicalRows actualModulus 3344 (.band 3322 3270) := by core033_kernel_decide
theorem stats3344 : actualRows3344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3344=5124 := by core033_kernel_decide
theorem rows3345 : actualRows3345=WordField.canonicalRows actualModulus 3345 (.bxor 3343 3344) := by core033_kernel_decide
theorem stats3345 : actualRows3345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3345=7428 := by core033_kernel_decide
theorem rows3346 : actualRows3346=WordField.canonicalRows actualModulus 3346 (.bxor 3345 3317) := by core033_kernel_decide
theorem stats3346 : actualRows3346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3346=7428 := by core033_kernel_decide
theorem rows3347 : actualRows3347=WordField.canonicalRows actualModulus 3347 (.badd 3342 3346) := by core033_kernel_decide
theorem stats3347 : actualRows3347.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3347=5388 := by core033_kernel_decide
theorem rows3348 : actualRows3348=WordField.canonicalRows actualModulus 3348 (.badd 3337 3347) := by core033_kernel_decide
theorem stats3348 : actualRows3348.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3348=5388 := by core033_kernel_decide
theorem rows3349 : actualRows3349=WordField.canonicalRows actualModulus 3349 (.badd 3244 3337) := by core033_kernel_decide
theorem stats3349 : actualRows3349.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3349=5388 := by core033_kernel_decide
theorem rows3350 : actualRows3350=WordField.canonicalRows actualModulus 3350 (.rotr 3349 6) := by core033_kernel_decide
theorem stats3350 : actualRows3350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3350=5124 := by core033_kernel_decide
theorem rows3351 : actualRows3351=WordField.canonicalRows actualModulus 3351 (.rotr 3349 11) := by core033_kernel_decide
theorem stats3351 : actualRows3351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3351=5124 := by core033_kernel_decide
theorem rows3352 : actualRows3352=WordField.canonicalRows actualModulus 3352 (.bxor 3350 3351) := by core033_kernel_decide
theorem stats3352 : actualRows3352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3352=7428 := by core033_kernel_decide
theorem rows3353 : actualRows3353=WordField.canonicalRows actualModulus 3353 (.rotr 3349 25) := by core033_kernel_decide
theorem stats3353 : actualRows3353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3353=5124 := by core033_kernel_decide
theorem rows3354 : actualRows3354=WordField.canonicalRows actualModulus 3354 (.bxor 3352 3353) := by core033_kernel_decide
theorem stats3354 : actualRows3354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3354=7428 := by core033_kernel_decide
theorem rows3355 : actualRows3355=WordField.canonicalRows actualModulus 3355 (.badd 3271 3354) := by core033_kernel_decide
theorem stats3355 : actualRows3355.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3355=5388 := by core033_kernel_decide
theorem rows3356 : actualRows3356=WordField.canonicalRows actualModulus 3356 (.band 3349 3323) := by core033_kernel_decide
theorem stats3356 : actualRows3356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3356=5124 := by core033_kernel_decide
theorem rows3357 : actualRows3357=WordField.canonicalRows actualModulus 3357 (.bnot 3349) := by core033_kernel_decide
theorem stats3357 : actualRows3357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3357=6276 := by core033_kernel_decide
theorem rows3358 : actualRows3358=WordField.canonicalRows actualModulus 3358 (.band 3357 3297) := by core033_kernel_decide
theorem stats3358 : actualRows3358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3358=5124 := by core033_kernel_decide
theorem rows3359 : actualRows3359=WordField.canonicalRows actualModulus 3359 (.bxor 3356 3358) := by core033_kernel_decide
theorem stats3359 : actualRows3359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3359=7428 := by core033_kernel_decide
theorem rows3360 : actualRows3360=WordField.canonicalRows actualModulus 3360 (.badd 3355 3359) := by core033_kernel_decide
theorem stats3360 : actualRows3360.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3360=5388 := by core033_kernel_decide
theorem rows3361 : actualRows3361=WordField.canonicalRows actualModulus 3361 (.literal (BitVec.ofNat 32 4094571909)) := by core033_kernel_decide
theorem stats3361 : actualRows3361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3361=3900 := by core033_kernel_decide
theorem rows3362 : actualRows3362=WordField.canonicalRows actualModulus 3362 (.badd 3360 3361) := by core033_kernel_decide
theorem stats3362 : actualRows3362.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3362=5388 := by core033_kernel_decide
theorem rows3363 : actualRows3363=WordField.canonicalRows actualModulus 3363 (.badd 3362 1931) := by core033_kernel_decide
theorem stats3363 : actualRows3363.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3363=5388 := by core033_kernel_decide
theorem rows3364 : actualRows3364=WordField.canonicalRows actualModulus 3364 (.rotr 3348 2) := by core033_kernel_decide
theorem stats3364 : actualRows3364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3364=5124 := by core033_kernel_decide
theorem rows3365 : actualRows3365=WordField.canonicalRows actualModulus 3365 (.rotr 3348 13) := by core033_kernel_decide
theorem stats3365 : actualRows3365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3365=5124 := by core033_kernel_decide
theorem rows3366 : actualRows3366=WordField.canonicalRows actualModulus 3366 (.bxor 3364 3365) := by core033_kernel_decide
theorem stats3366 : actualRows3366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3366=7428 := by core033_kernel_decide
theorem rows3367 : actualRows3367=WordField.canonicalRows actualModulus 3367 (.rotr 3348 22) := by core033_kernel_decide
theorem stats3367 : actualRows3367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3367=5124 := by core033_kernel_decide
theorem rows3368 : actualRows3368=WordField.canonicalRows actualModulus 3368 (.bxor 3366 3367) := by core033_kernel_decide
theorem stats3368 : actualRows3368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3368=7428 := by core033_kernel_decide
theorem rows3369 : actualRows3369=WordField.canonicalRows actualModulus 3369 (.band 3348 3322) := by core033_kernel_decide
theorem stats3369 : actualRows3369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3369=5124 := by core033_kernel_decide
theorem rows3370 : actualRows3370=WordField.canonicalRows actualModulus 3370 (.band 3348 3296) := by core033_kernel_decide
theorem stats3370 : actualRows3370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3370=5124 := by core033_kernel_decide
def partRows51 : List R1CS.Row := actualRows3307++actualRows3308++actualRows3309++actualRows3310++actualRows3311++actualRows3312++actualRows3313++actualRows3314++actualRows3315++actualRows3316++actualRows3317++actualRows3318++actualRows3319++actualRows3320++actualRows3321++actualRows3322++actualRows3323++actualRows3324++actualRows3325++actualRows3326++actualRows3327++actualRows3328++actualRows3329++actualRows3330++actualRows3331++actualRows3332++actualRows3333++actualRows3334++actualRows3335++actualRows3336++actualRows3337++actualRows3338++actualRows3339++actualRows3340++actualRows3341++actualRows3342++actualRows3343++actualRows3344++actualRows3345++actualRows3346++actualRows3347++actualRows3348++actualRows3349++actualRows3350++actualRows3351++actualRows3352++actualRows3353++actualRows3354++actualRows3355++actualRows3356++actualRows3357++actualRows3358++actualRows3359++actualRows3360++actualRows3361++actualRows3362++actualRows3363++actualRows3364++actualRows3365++actualRows3366++actualRows3367++actualRows3368++actualRows3369++actualRows3370
def partOps51 : List WordIR.Op := [.bxor 3304 3306,.badd 3303 3307,.literal (BitVec.ofNat 32 3516065817),.badd 3308 3309,.badd 3310 1905,.rotr 3296 2,.rotr 3296 13,.bxor 3312 3313,.rotr 3296 22,.bxor 3314 3315,.band 3296 3270,.band 3296 3244,.bxor 3317 3318,.bxor 3319 3291,.badd 3316 3320,.badd 3311 3321,.badd 3218 3311,.rotr 3323 6,.rotr 3323 11,.bxor 3324 3325,.rotr 3323 25,.bxor 3326 3327,.badd 3245 3328,.band 3323 3297,.bnot 3323,.band 3331 3271,.bxor 3330 3332,.badd 3329 3333,.literal (BitVec.ofNat 32 3600352804),.badd 3334 3335,.badd 3336 1918,.rotr 3322 2,.rotr 3322 13,.bxor 3338 3339,.rotr 3322 22,.bxor 3340 3341,.band 3322 3296,.band 3322 3270,.bxor 3343 3344,.bxor 3345 3317,.badd 3342 3346,.badd 3337 3347,.badd 3244 3337,.rotr 3349 6,.rotr 3349 11,.bxor 3350 3351,.rotr 3349 25,.bxor 3352 3353,.badd 3271 3354,.band 3349 3323,.bnot 3349,.band 3357 3297,.bxor 3356 3358,.badd 3355 3359,.literal (BitVec.ofNat 32 4094571909),.badd 3360 3361,.badd 3362 1931,.rotr 3348 2,.rotr 3348 13,.bxor 3364 3365,.rotr 3348 22,.bxor 3366 3367,.band 3348 3322,.band 3348 3296]
theorem partExact51 : partRows51=WordField.rows actualModulus 3307 partOps51 := by
  simp only [partRows51,partOps51,WordField.rows,rows3307,rows3308,rows3309,rows3310,rows3311,rows3312,rows3313,rows3314,rows3315,rows3316,rows3317,rows3318,rows3319,rows3320,rows3321,rows3322,rows3323,rows3324,rows3325,rows3326,rows3327,rows3328,rows3329,rows3330,rows3331,rows3332,rows3333,rows3334,rows3335,rows3336,rows3337,rows3338,rows3339,rows3340,rows3341,rows3342,rows3343,rows3344,rows3345,rows3346,rows3347,rows3348,rows3349,rows3350,rows3351,rows3352,rows3353,rows3354,rows3355,rows3356,rows3357,rows3358,rows3359,rows3360,rows3361,rows3362,rows3363,rows3364,rows3365,rows3366,rows3367,rows3368,rows3369,rows3370,List.append_assoc,List.append_nil]
theorem partLength51 : partOps51.length=64 := by decide
theorem partStats51 : partRows51.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows51=370008 := by
  simp only [partRows51,List.length_append,MatrixRowBlocks.rows_weight_append,stats3307.1,stats3307.2,stats3308.1,stats3308.2,stats3309.1,stats3309.2,stats3310.1,stats3310.2,stats3311.1,stats3311.2,stats3312.1,stats3312.2,stats3313.1,stats3313.2,stats3314.1,stats3314.2,stats3315.1,stats3315.2,stats3316.1,stats3316.2,stats3317.1,stats3317.2,stats3318.1,stats3318.2,stats3319.1,stats3319.2,stats3320.1,stats3320.2,stats3321.1,stats3321.2,stats3322.1,stats3322.2,stats3323.1,stats3323.2,stats3324.1,stats3324.2,stats3325.1,stats3325.2,stats3326.1,stats3326.2,stats3327.1,stats3327.2,stats3328.1,stats3328.2,stats3329.1,stats3329.2,stats3330.1,stats3330.2,stats3331.1,stats3331.2,stats3332.1,stats3332.2,stats3333.1,stats3333.2,stats3334.1,stats3334.2,stats3335.1,stats3335.2,stats3336.1,stats3336.2,stats3337.1,stats3337.2,stats3338.1,stats3338.2,stats3339.1,stats3339.2,stats3340.1,stats3340.2,stats3341.1,stats3341.2,stats3342.1,stats3342.2,stats3343.1,stats3343.2,stats3344.1,stats3344.2,stats3345.1,stats3345.2,stats3346.1,stats3346.2,stats3347.1,stats3347.2,stats3348.1,stats3348.2,stats3349.1,stats3349.2,stats3350.1,stats3350.2,stats3351.1,stats3351.2,stats3352.1,stats3352.2,stats3353.1,stats3353.2,stats3354.1,stats3354.2,stats3355.1,stats3355.2,stats3356.1,stats3356.2,stats3357.1,stats3357.2,stats3358.1,stats3358.2,stats3359.1,stats3359.2,stats3360.1,stats3360.2,stats3361.1,stats3361.2,stats3362.1,stats3362.2,stats3363.1,stats3363.2,stats3364.1,stats3364.2,stats3365.1,stats3365.2,stats3366.1,stats3366.2,stats3367.1,stats3367.2,stats3368.1,stats3368.2,stats3369.1,stats3369.2,stats3370.1,stats3370.2]
  decide
end SharedFrameCheckedRows
