import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData51
import FrameHashControllerInstructionMatrixData52
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3307 : actualRows3307=WordField.canonicalRows actualModulus 3307 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3307 : actualRows3307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3307=2820 := by core033_kernel_decide
theorem rows3308 : actualRows3308=WordField.canonicalRows actualModulus 3308 (.bnot 3307) := by core033_kernel_decide
theorem stats3308 : actualRows3308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3308=6276 := by core033_kernel_decide
theorem rows3309 : actualRows3309=WordField.canonicalRows actualModulus 3309 (.band 3306 3308) := by core033_kernel_decide
theorem stats3309 : actualRows3309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3309=5124 := by core033_kernel_decide
theorem rows3310 : actualRows3310=WordField.canonicalRows actualModulus 3310 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3310 : actualRows3310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3310=2892 := by core033_kernel_decide
theorem rows3311 : actualRows3311=WordField.canonicalRows actualModulus 3311 (.bxor 0 3310) := by core033_kernel_decide
theorem stats3311 : actualRows3311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3311=7428 := by core033_kernel_decide
theorem rows3312 : actualRows3312=WordField.canonicalRows actualModulus 3312 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3312 : actualRows3312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3312=2820 := by core033_kernel_decide
theorem rows3313 : actualRows3313=WordField.canonicalRows actualModulus 3313 (.bnot 3312) := by core033_kernel_decide
theorem stats3313 : actualRows3313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3313=6276 := by core033_kernel_decide
theorem rows3314 : actualRows3314=WordField.canonicalRows actualModulus 3314 (.bxor 3311 3313) := by core033_kernel_decide
theorem stats3314 : actualRows3314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3314=7428 := by core033_kernel_decide
theorem rows3315 : actualRows3315=WordField.canonicalRows actualModulus 3315 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3315 : actualRows3315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3315=2892 := by core033_kernel_decide
theorem rows3316 : actualRows3316=WordField.canonicalRows actualModulus 3316 (.bxor 0 3315) := by core033_kernel_decide
theorem stats3316 : actualRows3316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3316=7428 := by core033_kernel_decide
theorem rows3317 : actualRows3317=WordField.canonicalRows actualModulus 3317 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3317 : actualRows3317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3317=2820 := by core033_kernel_decide
theorem rows3318 : actualRows3318=WordField.canonicalRows actualModulus 3318 (.bnot 3317) := by core033_kernel_decide
theorem stats3318 : actualRows3318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3318=6276 := by core033_kernel_decide
theorem rows3319 : actualRows3319=WordField.canonicalRows actualModulus 3319 (.badd 3316 3318) := by core033_kernel_decide
theorem stats3319 : actualRows3319.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3319=5388 := by core033_kernel_decide
theorem rows3320 : actualRows3320=WordField.canonicalRows actualModulus 3320 (.bnot 3319) := by core033_kernel_decide
theorem stats3320 : actualRows3320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3320=6276 := by core033_kernel_decide
theorem rows3321 : actualRows3321=WordField.canonicalRows actualModulus 3321 (.band 3314 3320) := by core033_kernel_decide
theorem stats3321 : actualRows3321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3321=5124 := by core033_kernel_decide
theorem rows3322 : actualRows3322=WordField.canonicalRows actualModulus 3322 (.bxor 3309 3321) := by core033_kernel_decide
theorem stats3322 : actualRows3322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3322=7428 := by core033_kernel_decide
theorem rows3323 : actualRows3323=WordField.canonicalRows actualModulus 3323 (.shr 3322 31) := by core033_kernel_decide
theorem stats3323 : actualRows3323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3323=2892 := by core033_kernel_decide
theorem rows3324 : actualRows3324=WordField.canonicalRows actualModulus 3324 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3324 : actualRows3324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3324=2892 := by core033_kernel_decide
theorem rows3325 : actualRows3325=WordField.canonicalRows actualModulus 3325 (.bxor 3323 3324) := by core033_kernel_decide
theorem stats3325 : actualRows3325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3325=7428 := by core033_kernel_decide
theorem rows3326 : actualRows3326=WordField.canonicalRows actualModulus 3326 (.bnot 3325) := by core033_kernel_decide
theorem stats3326 : actualRows3326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3326=6276 := by core033_kernel_decide
theorem rows3327 : actualRows3327=WordField.canonicalRows actualModulus 3327 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3327 : actualRows3327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3327=2892 := by core033_kernel_decide
theorem rows3328 : actualRows3328=WordField.canonicalRows actualModulus 3328 (.badd 3326 3327) := by core033_kernel_decide
theorem stats3328 : actualRows3328.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3328=5388 := by core033_kernel_decide
theorem rows3329 : actualRows3329=WordField.canonicalRows actualModulus 3329 (.bnot 3328) := by core033_kernel_decide
theorem stats3329 : actualRows3329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3329=6276 := by core033_kernel_decide
theorem rows3330 : actualRows3330=WordField.canonicalRows actualModulus 3330 (.band 3329 869) := by core033_kernel_decide
theorem stats3330 : actualRows3330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3330=5124 := by core033_kernel_decide
theorem rows3331 : actualRows3331=WordField.canonicalRows actualModulus 3331 (.bxor 3304 3330) := by core033_kernel_decide
theorem stats3331 : actualRows3331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3331=7428 := by core033_kernel_decide
theorem rows3332 : actualRows3332=WordField.canonicalRows actualModulus 3332 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3332 : actualRows3332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3332=2892 := by core033_kernel_decide
theorem rows3333 : actualRows3333=WordField.canonicalRows actualModulus 3333 (.bxor 0 3332) := by core033_kernel_decide
theorem stats3333 : actualRows3333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3333=7428 := by core033_kernel_decide
theorem rows3334 : actualRows3334=WordField.canonicalRows actualModulus 3334 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3334 : actualRows3334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3334=2820 := by core033_kernel_decide
theorem rows3335 : actualRows3335=WordField.canonicalRows actualModulus 3335 (.bnot 3334) := by core033_kernel_decide
theorem stats3335 : actualRows3335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3335=6276 := by core033_kernel_decide
theorem rows3336 : actualRows3336=WordField.canonicalRows actualModulus 3336 (.band 3333 3335) := by core033_kernel_decide
theorem stats3336 : actualRows3336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3336=5124 := by core033_kernel_decide
theorem rows3337 : actualRows3337=WordField.canonicalRows actualModulus 3337 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3337 : actualRows3337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3337=2892 := by core033_kernel_decide
theorem rows3338 : actualRows3338=WordField.canonicalRows actualModulus 3338 (.bxor 0 3337) := by core033_kernel_decide
theorem stats3338 : actualRows3338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3338=7428 := by core033_kernel_decide
theorem rows3339 : actualRows3339=WordField.canonicalRows actualModulus 3339 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3339 : actualRows3339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3339=2820 := by core033_kernel_decide
theorem rows3340 : actualRows3340=WordField.canonicalRows actualModulus 3340 (.bnot 3339) := by core033_kernel_decide
theorem stats3340 : actualRows3340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3340=6276 := by core033_kernel_decide
theorem rows3341 : actualRows3341=WordField.canonicalRows actualModulus 3341 (.bxor 3338 3340) := by core033_kernel_decide
theorem stats3341 : actualRows3341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3341=7428 := by core033_kernel_decide
theorem rows3342 : actualRows3342=WordField.canonicalRows actualModulus 3342 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3342 : actualRows3342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3342=2892 := by core033_kernel_decide
theorem rows3343 : actualRows3343=WordField.canonicalRows actualModulus 3343 (.bxor 0 3342) := by core033_kernel_decide
theorem stats3343 : actualRows3343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3343=7428 := by core033_kernel_decide
theorem rows3344 : actualRows3344=WordField.canonicalRows actualModulus 3344 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3344 : actualRows3344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3344=2820 := by core033_kernel_decide
theorem rows3345 : actualRows3345=WordField.canonicalRows actualModulus 3345 (.bnot 3344) := by core033_kernel_decide
theorem stats3345 : actualRows3345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3345=6276 := by core033_kernel_decide
theorem rows3346 : actualRows3346=WordField.canonicalRows actualModulus 3346 (.badd 3343 3345) := by core033_kernel_decide
theorem stats3346 : actualRows3346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3346=5388 := by core033_kernel_decide
theorem rows3347 : actualRows3347=WordField.canonicalRows actualModulus 3347 (.bnot 3346) := by core033_kernel_decide
theorem stats3347 : actualRows3347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3347=6276 := by core033_kernel_decide
theorem rows3348 : actualRows3348=WordField.canonicalRows actualModulus 3348 (.band 3341 3347) := by core033_kernel_decide
theorem stats3348 : actualRows3348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3348=5124 := by core033_kernel_decide
theorem rows3349 : actualRows3349=WordField.canonicalRows actualModulus 3349 (.bxor 3336 3348) := by core033_kernel_decide
theorem stats3349 : actualRows3349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3349=7428 := by core033_kernel_decide
theorem rows3350 : actualRows3350=WordField.canonicalRows actualModulus 3350 (.shr 3349 31) := by core033_kernel_decide
theorem stats3350 : actualRows3350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3350=2892 := by core033_kernel_decide
theorem rows3351 : actualRows3351=WordField.canonicalRows actualModulus 3351 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3351 : actualRows3351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3351=2892 := by core033_kernel_decide
theorem rows3352 : actualRows3352=WordField.canonicalRows actualModulus 3352 (.bxor 3350 3351) := by core033_kernel_decide
theorem stats3352 : actualRows3352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3352=7428 := by core033_kernel_decide
theorem rows3353 : actualRows3353=WordField.canonicalRows actualModulus 3353 (.bnot 3352) := by core033_kernel_decide
theorem stats3353 : actualRows3353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3353=6276 := by core033_kernel_decide
theorem rows3354 : actualRows3354=WordField.canonicalRows actualModulus 3354 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3354 : actualRows3354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3354=2892 := by core033_kernel_decide
theorem rows3355 : actualRows3355=WordField.canonicalRows actualModulus 3355 (.badd 3353 3354) := by core033_kernel_decide
theorem stats3355 : actualRows3355.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3355=5388 := by core033_kernel_decide
theorem rows3356 : actualRows3356=WordField.canonicalRows actualModulus 3356 (.band 3355 1064) := by core033_kernel_decide
theorem stats3356 : actualRows3356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3356=5124 := by core033_kernel_decide
theorem rows3357 : actualRows3357=WordField.canonicalRows actualModulus 3357 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3357 : actualRows3357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3357=2892 := by core033_kernel_decide
theorem rows3358 : actualRows3358=WordField.canonicalRows actualModulus 3358 (.bxor 0 3357) := by core033_kernel_decide
theorem stats3358 : actualRows3358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3358=7428 := by core033_kernel_decide
theorem rows3359 : actualRows3359=WordField.canonicalRows actualModulus 3359 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3359 : actualRows3359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3359=2820 := by core033_kernel_decide
theorem rows3360 : actualRows3360=WordField.canonicalRows actualModulus 3360 (.bnot 3359) := by core033_kernel_decide
theorem stats3360 : actualRows3360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3360=6276 := by core033_kernel_decide
theorem rows3361 : actualRows3361=WordField.canonicalRows actualModulus 3361 (.band 3358 3360) := by core033_kernel_decide
theorem stats3361 : actualRows3361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3361=5124 := by core033_kernel_decide
theorem rows3362 : actualRows3362=WordField.canonicalRows actualModulus 3362 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3362 : actualRows3362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3362=2892 := by core033_kernel_decide
theorem rows3363 : actualRows3363=WordField.canonicalRows actualModulus 3363 (.bxor 0 3362) := by core033_kernel_decide
theorem stats3363 : actualRows3363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3363=7428 := by core033_kernel_decide
theorem rows3364 : actualRows3364=WordField.canonicalRows actualModulus 3364 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3364 : actualRows3364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3364=2820 := by core033_kernel_decide
theorem rows3365 : actualRows3365=WordField.canonicalRows actualModulus 3365 (.bnot 3364) := by core033_kernel_decide
theorem stats3365 : actualRows3365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3365=6276 := by core033_kernel_decide
theorem rows3366 : actualRows3366=WordField.canonicalRows actualModulus 3366 (.bxor 3363 3365) := by core033_kernel_decide
theorem stats3366 : actualRows3366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3366=7428 := by core033_kernel_decide
theorem rows3367 : actualRows3367=WordField.canonicalRows actualModulus 3367 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3367 : actualRows3367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3367=2892 := by core033_kernel_decide
theorem rows3368 : actualRows3368=WordField.canonicalRows actualModulus 3368 (.bxor 0 3367) := by core033_kernel_decide
theorem stats3368 : actualRows3368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3368=7428 := by core033_kernel_decide
theorem rows3369 : actualRows3369=WordField.canonicalRows actualModulus 3369 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3369 : actualRows3369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3369=2820 := by core033_kernel_decide
theorem rows3370 : actualRows3370=WordField.canonicalRows actualModulus 3370 (.bnot 3369) := by core033_kernel_decide
theorem stats3370 : actualRows3370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3370=6276 := by core033_kernel_decide
def partRows51 : List R1CS.Row := actualRows3307++actualRows3308++actualRows3309++actualRows3310++actualRows3311++actualRows3312++actualRows3313++actualRows3314++actualRows3315++actualRows3316++actualRows3317++actualRows3318++actualRows3319++actualRows3320++actualRows3321++actualRows3322++actualRows3323++actualRows3324++actualRows3325++actualRows3326++actualRows3327++actualRows3328++actualRows3329++actualRows3330++actualRows3331++actualRows3332++actualRows3333++actualRows3334++actualRows3335++actualRows3336++actualRows3337++actualRows3338++actualRows3339++actualRows3340++actualRows3341++actualRows3342++actualRows3343++actualRows3344++actualRows3345++actualRows3346++actualRows3347++actualRows3348++actualRows3349++actualRows3350++actualRows3351++actualRows3352++actualRows3353++actualRows3354++actualRows3355++actualRows3356++actualRows3357++actualRows3358++actualRows3359++actualRows3360++actualRows3361++actualRows3362++actualRows3363++actualRows3364++actualRows3365++actualRows3366++actualRows3367++actualRows3368++actualRows3369++actualRows3370
def partOps51 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 3307,.band 3306 3308,.literal (BitVec.ofNat 32 2),.bxor 0 3310,.literal (BitVec.ofNat 32 0),.bnot 3312,.bxor 3311 3313,.literal (BitVec.ofNat 32 2),.bxor 0 3315,.literal (BitVec.ofNat 32 0),.bnot 3317,.badd 3316 3318,.bnot 3319,.band 3314 3320,.bxor 3309 3321,.shr 3322 31,.literal (BitVec.ofNat 32 1),.bxor 3323 3324,.bnot 3325,.literal (BitVec.ofNat 32 1),.badd 3326 3327,.bnot 3328,.band 3329 869,.bxor 3304 3330,.literal (BitVec.ofNat 32 2),.bxor 0 3332,.literal (BitVec.ofNat 32 0),.bnot 3334,.band 3333 3335,.literal (BitVec.ofNat 32 2),.bxor 0 3337,.literal (BitVec.ofNat 32 0),.bnot 3339,.bxor 3338 3340,.literal (BitVec.ofNat 32 2),.bxor 0 3342,.literal (BitVec.ofNat 32 0),.bnot 3344,.badd 3343 3345,.bnot 3346,.band 3341 3347,.bxor 3336 3348,.shr 3349 31,.literal (BitVec.ofNat 32 1),.bxor 3350 3351,.bnot 3352,.literal (BitVec.ofNat 32 1),.badd 3353 3354,.band 3355 1064,.literal (BitVec.ofNat 32 2),.bxor 0 3357,.literal (BitVec.ofNat 32 0),.bnot 3359,.band 3358 3360,.literal (BitVec.ofNat 32 2),.bxor 0 3362,.literal (BitVec.ofNat 32 0),.bnot 3364,.bxor 3363 3365,.literal (BitVec.ofNat 32 2),.bxor 0 3367,.literal (BitVec.ofNat 32 0),.bnot 3369]
theorem partExact51 : partRows51=WordField.rows actualModulus 3307 partOps51 := by
  simp only [partRows51,partOps51,WordField.rows,rows3307,rows3308,rows3309,rows3310,rows3311,rows3312,rows3313,rows3314,rows3315,rows3316,rows3317,rows3318,rows3319,rows3320,rows3321,rows3322,rows3323,rows3324,rows3325,rows3326,rows3327,rows3328,rows3329,rows3330,rows3331,rows3332,rows3333,rows3334,rows3335,rows3336,rows3337,rows3338,rows3339,rows3340,rows3341,rows3342,rows3343,rows3344,rows3345,rows3346,rows3347,rows3348,rows3349,rows3350,rows3351,rows3352,rows3353,rows3354,rows3355,rows3356,rows3357,rows3358,rows3359,rows3360,rows3361,rows3362,rows3363,rows3364,rows3365,rows3366,rows3367,rows3368,rows3369,rows3370,List.append_assoc,List.append_nil]
theorem partLength51 : partOps51.length=64 := by decide
theorem partStats51 : partRows51.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows51=330000 := by
  simp only [partRows51,List.length_append,MatrixRowBlocks.rows_weight_append,stats3307.1,stats3307.2,stats3308.1,stats3308.2,stats3309.1,stats3309.2,stats3310.1,stats3310.2,stats3311.1,stats3311.2,stats3312.1,stats3312.2,stats3313.1,stats3313.2,stats3314.1,stats3314.2,stats3315.1,stats3315.2,stats3316.1,stats3316.2,stats3317.1,stats3317.2,stats3318.1,stats3318.2,stats3319.1,stats3319.2,stats3320.1,stats3320.2,stats3321.1,stats3321.2,stats3322.1,stats3322.2,stats3323.1,stats3323.2,stats3324.1,stats3324.2,stats3325.1,stats3325.2,stats3326.1,stats3326.2,stats3327.1,stats3327.2,stats3328.1,stats3328.2,stats3329.1,stats3329.2,stats3330.1,stats3330.2,stats3331.1,stats3331.2,stats3332.1,stats3332.2,stats3333.1,stats3333.2,stats3334.1,stats3334.2,stats3335.1,stats3335.2,stats3336.1,stats3336.2,stats3337.1,stats3337.2,stats3338.1,stats3338.2,stats3339.1,stats3339.2,stats3340.1,stats3340.2,stats3341.1,stats3341.2,stats3342.1,stats3342.2,stats3343.1,stats3343.2,stats3344.1,stats3344.2,stats3345.1,stats3345.2,stats3346.1,stats3346.2,stats3347.1,stats3347.2,stats3348.1,stats3348.2,stats3349.1,stats3349.2,stats3350.1,stats3350.2,stats3351.1,stats3351.2,stats3352.1,stats3352.2,stats3353.1,stats3353.2,stats3354.1,stats3354.2,stats3355.1,stats3355.2,stats3356.1,stats3356.2,stats3357.1,stats3357.2,stats3358.1,stats3358.2,stats3359.1,stats3359.2,stats3360.1,stats3360.2,stats3361.1,stats3361.2,stats3362.1,stats3362.2,stats3363.1,stats3363.2,stats3364.1,stats3364.2,stats3365.1,stats3365.2,stats3366.1,stats3366.2,stats3367.1,stats3367.2,stats3368.1,stats3368.2,stats3369.1,stats3369.2,stats3370.1,stats3370.2]
  decide
end FrameHashControllerCheckedRows
