import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData51
import AuthenticatedBranchRoundInstructionMatrixData52
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3318 : actualRows3318=WordField.canonicalRows actualModulus 3318 (.bnot 3317) := by core033_kernel_decide
theorem stats3318 : actualRows3318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3318=6276 := by core033_kernel_decide
theorem rows3319 : actualRows3319=WordField.canonicalRows actualModulus 3319 (.band 3312 3318) := by core033_kernel_decide
theorem stats3319 : actualRows3319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3319=5124 := by core033_kernel_decide
theorem rows3320 : actualRows3320=WordField.canonicalRows actualModulus 3320 (.bxor 3307 3319) := by core033_kernel_decide
theorem stats3320 : actualRows3320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3320=7428 := by core033_kernel_decide
theorem rows3321 : actualRows3321=WordField.canonicalRows actualModulus 3321 (.shr 3320 31) := by core033_kernel_decide
theorem stats3321 : actualRows3321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3321=2892 := by core033_kernel_decide
theorem rows3322 : actualRows3322=WordField.canonicalRows actualModulus 3322 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3322 : actualRows3322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3322=2892 := by core033_kernel_decide
theorem rows3323 : actualRows3323=WordField.canonicalRows actualModulus 3323 (.bxor 3321 3322) := by core033_kernel_decide
theorem stats3323 : actualRows3323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3323=7428 := by core033_kernel_decide
theorem rows3324 : actualRows3324=WordField.canonicalRows actualModulus 3324 (.bnot 3323) := by core033_kernel_decide
theorem stats3324 : actualRows3324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3324=6276 := by core033_kernel_decide
theorem rows3325 : actualRows3325=WordField.canonicalRows actualModulus 3325 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3325 : actualRows3325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3325=2892 := by core033_kernel_decide
theorem rows3326 : actualRows3326=WordField.canonicalRows actualModulus 3326 (.badd 3324 3325) := by core033_kernel_decide
theorem stats3326 : actualRows3326.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3326=5388 := by core033_kernel_decide
theorem rows3327 : actualRows3327=WordField.canonicalRows actualModulus 3327 (.bnot 3326) := by core033_kernel_decide
theorem stats3327 : actualRows3327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3327=6276 := by core033_kernel_decide
theorem rows3328 : actualRows3328=WordField.canonicalRows actualModulus 3328 (.literal (BitVec.ofNat 32 2773480762)) := by core033_kernel_decide
theorem stats3328 : actualRows3328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3328=4188 := by core033_kernel_decide
theorem rows3329 : actualRows3329=WordField.canonicalRows actualModulus 3329 (.band 3327 3328) := by core033_kernel_decide
theorem stats3329 : actualRows3329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3329=5124 := by core033_kernel_decide
theorem rows3330 : actualRows3330=WordField.canonicalRows actualModulus 3330 (.bxor 3302 3329) := by core033_kernel_decide
theorem stats3330 : actualRows3330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3330=7428 := by core033_kernel_decide
theorem rows3331 : actualRows3331=WordField.canonicalRows actualModulus 3331 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3331 : actualRows3331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3331=2892 := by core033_kernel_decide
theorem rows3332 : actualRows3332=WordField.canonicalRows actualModulus 3332 (.bxor 1299 3331) := by core033_kernel_decide
theorem stats3332 : actualRows3332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3332=7428 := by core033_kernel_decide
theorem rows3333 : actualRows3333=WordField.canonicalRows actualModulus 3333 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3333 : actualRows3333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3333=2820 := by core033_kernel_decide
theorem rows3334 : actualRows3334=WordField.canonicalRows actualModulus 3334 (.bnot 3333) := by core033_kernel_decide
theorem stats3334 : actualRows3334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3334=6276 := by core033_kernel_decide
theorem rows3335 : actualRows3335=WordField.canonicalRows actualModulus 3335 (.band 3332 3334) := by core033_kernel_decide
theorem stats3335 : actualRows3335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3335=5124 := by core033_kernel_decide
theorem rows3336 : actualRows3336=WordField.canonicalRows actualModulus 3336 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3336 : actualRows3336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3336=2892 := by core033_kernel_decide
theorem rows3337 : actualRows3337=WordField.canonicalRows actualModulus 3337 (.bxor 1299 3336) := by core033_kernel_decide
theorem stats3337 : actualRows3337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3337=7428 := by core033_kernel_decide
theorem rows3338 : actualRows3338=WordField.canonicalRows actualModulus 3338 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3338 : actualRows3338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3338=2820 := by core033_kernel_decide
theorem rows3339 : actualRows3339=WordField.canonicalRows actualModulus 3339 (.bnot 3338) := by core033_kernel_decide
theorem stats3339 : actualRows3339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3339=6276 := by core033_kernel_decide
theorem rows3340 : actualRows3340=WordField.canonicalRows actualModulus 3340 (.bxor 3337 3339) := by core033_kernel_decide
theorem stats3340 : actualRows3340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3340=7428 := by core033_kernel_decide
theorem rows3341 : actualRows3341=WordField.canonicalRows actualModulus 3341 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3341 : actualRows3341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3341=2892 := by core033_kernel_decide
theorem rows3342 : actualRows3342=WordField.canonicalRows actualModulus 3342 (.bxor 1299 3341) := by core033_kernel_decide
theorem stats3342 : actualRows3342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3342=7428 := by core033_kernel_decide
theorem rows3343 : actualRows3343=WordField.canonicalRows actualModulus 3343 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3343 : actualRows3343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3343=2820 := by core033_kernel_decide
theorem rows3344 : actualRows3344=WordField.canonicalRows actualModulus 3344 (.bnot 3343) := by core033_kernel_decide
theorem stats3344 : actualRows3344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3344=6276 := by core033_kernel_decide
theorem rows3345 : actualRows3345=WordField.canonicalRows actualModulus 3345 (.badd 3342 3344) := by core033_kernel_decide
theorem stats3345 : actualRows3345.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3345=5388 := by core033_kernel_decide
theorem rows3346 : actualRows3346=WordField.canonicalRows actualModulus 3346 (.bnot 3345) := by core033_kernel_decide
theorem stats3346 : actualRows3346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3346=6276 := by core033_kernel_decide
theorem rows3347 : actualRows3347=WordField.canonicalRows actualModulus 3347 (.band 3340 3346) := by core033_kernel_decide
theorem stats3347 : actualRows3347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3347=5124 := by core033_kernel_decide
theorem rows3348 : actualRows3348=WordField.canonicalRows actualModulus 3348 (.bxor 3335 3347) := by core033_kernel_decide
theorem stats3348 : actualRows3348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3348=7428 := by core033_kernel_decide
theorem rows3349 : actualRows3349=WordField.canonicalRows actualModulus 3349 (.shr 3348 31) := by core033_kernel_decide
theorem stats3349 : actualRows3349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3349=2892 := by core033_kernel_decide
theorem rows3350 : actualRows3350=WordField.canonicalRows actualModulus 3350 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3350 : actualRows3350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3350=2892 := by core033_kernel_decide
theorem rows3351 : actualRows3351=WordField.canonicalRows actualModulus 3351 (.bxor 3349 3350) := by core033_kernel_decide
theorem stats3351 : actualRows3351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3351=7428 := by core033_kernel_decide
theorem rows3352 : actualRows3352=WordField.canonicalRows actualModulus 3352 (.bnot 3351) := by core033_kernel_decide
theorem stats3352 : actualRows3352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3352=6276 := by core033_kernel_decide
theorem rows3353 : actualRows3353=WordField.canonicalRows actualModulus 3353 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3353 : actualRows3353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3353=2892 := by core033_kernel_decide
theorem rows3354 : actualRows3354=WordField.canonicalRows actualModulus 3354 (.badd 3352 3353) := by core033_kernel_decide
theorem stats3354 : actualRows3354.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3354=5388 := by core033_kernel_decide
theorem rows3355 : actualRows3355=WordField.canonicalRows actualModulus 3355 (.band 3354 1728) := by core033_kernel_decide
theorem stats3355 : actualRows3355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3355=5124 := by core033_kernel_decide
theorem rows3356 : actualRows3356=WordField.canonicalRows actualModulus 3356 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3356 : actualRows3356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3356=2892 := by core033_kernel_decide
theorem rows3357 : actualRows3357=WordField.canonicalRows actualModulus 3357 (.bxor 1299 3356) := by core033_kernel_decide
theorem stats3357 : actualRows3357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3357=7428 := by core033_kernel_decide
theorem rows3358 : actualRows3358=WordField.canonicalRows actualModulus 3358 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3358 : actualRows3358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3358=2820 := by core033_kernel_decide
theorem rows3359 : actualRows3359=WordField.canonicalRows actualModulus 3359 (.bnot 3358) := by core033_kernel_decide
theorem stats3359 : actualRows3359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3359=6276 := by core033_kernel_decide
theorem rows3360 : actualRows3360=WordField.canonicalRows actualModulus 3360 (.band 3357 3359) := by core033_kernel_decide
theorem stats3360 : actualRows3360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3360=5124 := by core033_kernel_decide
theorem rows3361 : actualRows3361=WordField.canonicalRows actualModulus 3361 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3361 : actualRows3361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3361=2892 := by core033_kernel_decide
theorem rows3362 : actualRows3362=WordField.canonicalRows actualModulus 3362 (.bxor 1299 3361) := by core033_kernel_decide
theorem stats3362 : actualRows3362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3362=7428 := by core033_kernel_decide
theorem rows3363 : actualRows3363=WordField.canonicalRows actualModulus 3363 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3363 : actualRows3363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3363=2820 := by core033_kernel_decide
theorem rows3364 : actualRows3364=WordField.canonicalRows actualModulus 3364 (.bnot 3363) := by core033_kernel_decide
theorem stats3364 : actualRows3364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3364=6276 := by core033_kernel_decide
theorem rows3365 : actualRows3365=WordField.canonicalRows actualModulus 3365 (.bxor 3362 3364) := by core033_kernel_decide
theorem stats3365 : actualRows3365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3365=7428 := by core033_kernel_decide
theorem rows3366 : actualRows3366=WordField.canonicalRows actualModulus 3366 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3366 : actualRows3366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3366=2892 := by core033_kernel_decide
theorem rows3367 : actualRows3367=WordField.canonicalRows actualModulus 3367 (.bxor 1299 3366) := by core033_kernel_decide
theorem stats3367 : actualRows3367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3367=7428 := by core033_kernel_decide
theorem rows3368 : actualRows3368=WordField.canonicalRows actualModulus 3368 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3368 : actualRows3368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3368=2820 := by core033_kernel_decide
theorem rows3369 : actualRows3369=WordField.canonicalRows actualModulus 3369 (.bnot 3368) := by core033_kernel_decide
theorem stats3369 : actualRows3369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3369=6276 := by core033_kernel_decide
theorem rows3370 : actualRows3370=WordField.canonicalRows actualModulus 3370 (.badd 3367 3369) := by core033_kernel_decide
theorem stats3370 : actualRows3370.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3370=5388 := by core033_kernel_decide
theorem rows3371 : actualRows3371=WordField.canonicalRows actualModulus 3371 (.bnot 3370) := by core033_kernel_decide
theorem stats3371 : actualRows3371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3371=6276 := by core033_kernel_decide
theorem rows3372 : actualRows3372=WordField.canonicalRows actualModulus 3372 (.band 3365 3371) := by core033_kernel_decide
theorem stats3372 : actualRows3372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3372=5124 := by core033_kernel_decide
theorem rows3373 : actualRows3373=WordField.canonicalRows actualModulus 3373 (.bxor 3360 3372) := by core033_kernel_decide
theorem stats3373 : actualRows3373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3373=7428 := by core033_kernel_decide
theorem rows3374 : actualRows3374=WordField.canonicalRows actualModulus 3374 (.shr 3373 31) := by core033_kernel_decide
theorem stats3374 : actualRows3374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3374=2892 := by core033_kernel_decide
theorem rows3375 : actualRows3375=WordField.canonicalRows actualModulus 3375 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3375 : actualRows3375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3375=2892 := by core033_kernel_decide
theorem rows3376 : actualRows3376=WordField.canonicalRows actualModulus 3376 (.bxor 3374 3375) := by core033_kernel_decide
theorem stats3376 : actualRows3376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3376=7428 := by core033_kernel_decide
theorem rows3377 : actualRows3377=WordField.canonicalRows actualModulus 3377 (.bnot 3376) := by core033_kernel_decide
theorem stats3377 : actualRows3377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3377=6276 := by core033_kernel_decide
theorem rows3378 : actualRows3378=WordField.canonicalRows actualModulus 3378 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3378 : actualRows3378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3378=2892 := by core033_kernel_decide
theorem rows3379 : actualRows3379=WordField.canonicalRows actualModulus 3379 (.badd 3377 3378) := by core033_kernel_decide
theorem stats3379 : actualRows3379.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3379=5388 := by core033_kernel_decide
theorem rows3380 : actualRows3380=WordField.canonicalRows actualModulus 3380 (.bnot 3379) := by core033_kernel_decide
theorem stats3380 : actualRows3380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3380=6276 := by core033_kernel_decide
theorem rows3381 : actualRows3381=WordField.canonicalRows actualModulus 3381 (.literal (BitVec.ofNat 32 1359893119)) := by core033_kernel_decide
theorem stats3381 : actualRows3381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3381=3972 := by core033_kernel_decide
def partRows50 : List R1CS.Row := actualRows3318++actualRows3319++actualRows3320++actualRows3321++actualRows3322++actualRows3323++actualRows3324++actualRows3325++actualRows3326++actualRows3327++actualRows3328++actualRows3329++actualRows3330++actualRows3331++actualRows3332++actualRows3333++actualRows3334++actualRows3335++actualRows3336++actualRows3337++actualRows3338++actualRows3339++actualRows3340++actualRows3341++actualRows3342++actualRows3343++actualRows3344++actualRows3345++actualRows3346++actualRows3347++actualRows3348++actualRows3349++actualRows3350++actualRows3351++actualRows3352++actualRows3353++actualRows3354++actualRows3355++actualRows3356++actualRows3357++actualRows3358++actualRows3359++actualRows3360++actualRows3361++actualRows3362++actualRows3363++actualRows3364++actualRows3365++actualRows3366++actualRows3367++actualRows3368++actualRows3369++actualRows3370++actualRows3371++actualRows3372++actualRows3373++actualRows3374++actualRows3375++actualRows3376++actualRows3377++actualRows3378++actualRows3379++actualRows3380++actualRows3381
def partOps50 : List WordIR.Op := [.bnot 3317,.band 3312 3318,.bxor 3307 3319,.shr 3320 31,.literal (BitVec.ofNat 32 1),.bxor 3321 3322,.bnot 3323,.literal (BitVec.ofNat 32 1),.badd 3324 3325,.bnot 3326,.literal (BitVec.ofNat 32 2773480762),.band 3327 3328,.bxor 3302 3329,.literal (BitVec.ofNat 32 2),.bxor 1299 3331,.literal (BitVec.ofNat 32 0),.bnot 3333,.band 3332 3334,.literal (BitVec.ofNat 32 2),.bxor 1299 3336,.literal (BitVec.ofNat 32 0),.bnot 3338,.bxor 3337 3339,.literal (BitVec.ofNat 32 2),.bxor 1299 3341,.literal (BitVec.ofNat 32 0),.bnot 3343,.badd 3342 3344,.bnot 3345,.band 3340 3346,.bxor 3335 3347,.shr 3348 31,.literal (BitVec.ofNat 32 1),.bxor 3349 3350,.bnot 3351,.literal (BitVec.ofNat 32 1),.badd 3352 3353,.band 3354 1728,.literal (BitVec.ofNat 32 2),.bxor 1299 3356,.literal (BitVec.ofNat 32 0),.bnot 3358,.band 3357 3359,.literal (BitVec.ofNat 32 2),.bxor 1299 3361,.literal (BitVec.ofNat 32 0),.bnot 3363,.bxor 3362 3364,.literal (BitVec.ofNat 32 2),.bxor 1299 3366,.literal (BitVec.ofNat 32 0),.bnot 3368,.badd 3367 3369,.bnot 3370,.band 3365 3371,.bxor 3360 3372,.shr 3373 31,.literal (BitVec.ofNat 32 1),.bxor 3374 3375,.bnot 3376,.literal (BitVec.ofNat 32 1),.badd 3377 3378,.bnot 3379,.literal (BitVec.ofNat 32 1359893119)]
theorem partExact50 : partRows50=WordField.rows actualModulus 3318 partOps50 := by
  simp only [partRows50,partOps50,WordField.rows,rows3318,rows3319,rows3320,rows3321,rows3322,rows3323,rows3324,rows3325,rows3326,rows3327,rows3328,rows3329,rows3330,rows3331,rows3332,rows3333,rows3334,rows3335,rows3336,rows3337,rows3338,rows3339,rows3340,rows3341,rows3342,rows3343,rows3344,rows3345,rows3346,rows3347,rows3348,rows3349,rows3350,rows3351,rows3352,rows3353,rows3354,rows3355,rows3356,rows3357,rows3358,rows3359,rows3360,rows3361,rows3362,rows3363,rows3364,rows3365,rows3366,rows3367,rows3368,rows3369,rows3370,rows3371,rows3372,rows3373,rows3374,rows3375,rows3376,rows3377,rows3378,rows3379,rows3380,rows3381,List.append_assoc,List.append_nil]
theorem partLength50 : partOps50.length=64 := by decide
theorem partStats50 : partRows50.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows50=330552 := by
  simp only [partRows50,List.length_append,MatrixRowBlocks.rows_weight_append,stats3318.1,stats3318.2,stats3319.1,stats3319.2,stats3320.1,stats3320.2,stats3321.1,stats3321.2,stats3322.1,stats3322.2,stats3323.1,stats3323.2,stats3324.1,stats3324.2,stats3325.1,stats3325.2,stats3326.1,stats3326.2,stats3327.1,stats3327.2,stats3328.1,stats3328.2,stats3329.1,stats3329.2,stats3330.1,stats3330.2,stats3331.1,stats3331.2,stats3332.1,stats3332.2,stats3333.1,stats3333.2,stats3334.1,stats3334.2,stats3335.1,stats3335.2,stats3336.1,stats3336.2,stats3337.1,stats3337.2,stats3338.1,stats3338.2,stats3339.1,stats3339.2,stats3340.1,stats3340.2,stats3341.1,stats3341.2,stats3342.1,stats3342.2,stats3343.1,stats3343.2,stats3344.1,stats3344.2,stats3345.1,stats3345.2,stats3346.1,stats3346.2,stats3347.1,stats3347.2,stats3348.1,stats3348.2,stats3349.1,stats3349.2,stats3350.1,stats3350.2,stats3351.1,stats3351.2,stats3352.1,stats3352.2,stats3353.1,stats3353.2,stats3354.1,stats3354.2,stats3355.1,stats3355.2,stats3356.1,stats3356.2,stats3357.1,stats3357.2,stats3358.1,stats3358.2,stats3359.1,stats3359.2,stats3360.1,stats3360.2,stats3361.1,stats3361.2,stats3362.1,stats3362.2,stats3363.1,stats3363.2,stats3364.1,stats3364.2,stats3365.1,stats3365.2,stats3366.1,stats3366.2,stats3367.1,stats3367.2,stats3368.1,stats3368.2,stats3369.1,stats3369.2,stats3370.1,stats3370.2,stats3371.1,stats3371.2,stats3372.1,stats3372.2,stats3373.1,stats3373.2,stats3374.1,stats3374.2,stats3375.1,stats3375.2,stats3376.1,stats3376.2,stats3377.1,stats3377.2,stats3378.1,stats3378.2,stats3379.1,stats3379.2,stats3380.1,stats3380.2,stats3381.1,stats3381.2]
  decide
end AuthenticatedBranchRoundCheckedRows
