import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData52
import HashBlockInstructionMatrixData53
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3336 : actualRows3336=WordField.canonicalRows actualModulus 3336 (.rotr 3319 13) := by core033_kernel_decide
theorem stats3336 : actualRows3336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3336=5124 := by core033_kernel_decide
theorem rows3337 : actualRows3337=WordField.canonicalRows actualModulus 3337 (.bxor 3335 3336) := by core033_kernel_decide
theorem stats3337 : actualRows3337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3337=7428 := by core033_kernel_decide
theorem rows3338 : actualRows3338=WordField.canonicalRows actualModulus 3338 (.rotr 3319 22) := by core033_kernel_decide
theorem stats3338 : actualRows3338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3338=5124 := by core033_kernel_decide
theorem rows3339 : actualRows3339=WordField.canonicalRows actualModulus 3339 (.bxor 3337 3338) := by core033_kernel_decide
theorem stats3339 : actualRows3339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3339=7428 := by core033_kernel_decide
theorem rows3340 : actualRows3340=WordField.canonicalRows actualModulus 3340 (.band 3319 3292) := by core033_kernel_decide
theorem stats3340 : actualRows3340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3340=5124 := by core033_kernel_decide
theorem rows3341 : actualRows3341=WordField.canonicalRows actualModulus 3341 (.band 3319 3265) := by core033_kernel_decide
theorem stats3341 : actualRows3341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3341=5124 := by core033_kernel_decide
theorem rows3342 : actualRows3342=WordField.canonicalRows actualModulus 3342 (.bxor 3340 3341) := by core033_kernel_decide
theorem stats3342 : actualRows3342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3342=7428 := by core033_kernel_decide
theorem rows3343 : actualRows3343=WordField.canonicalRows actualModulus 3343 (.band 3292 3265) := by core033_kernel_decide
theorem stats3343 : actualRows3343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3343=5124 := by core033_kernel_decide
theorem rows3344 : actualRows3344=WordField.canonicalRows actualModulus 3344 (.bxor 3342 3343) := by core033_kernel_decide
theorem stats3344 : actualRows3344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3344=7428 := by core033_kernel_decide
theorem rows3345 : actualRows3345=WordField.canonicalRows actualModulus 3345 (.badd 3339 3344) := by core033_kernel_decide
theorem stats3345 : actualRows3345.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3345=5388 := by core033_kernel_decide
theorem rows3346 : actualRows3346=WordField.canonicalRows actualModulus 3346 (.badd 3334 3345) := by core033_kernel_decide
theorem stats3346 : actualRows3346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3346=5388 := by core033_kernel_decide
theorem rows3347 : actualRows3347=WordField.canonicalRows actualModulus 3347 (.badd 3238 3334) := by core033_kernel_decide
theorem stats3347 : actualRows3347.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3347=5388 := by core033_kernel_decide
theorem rows3348 : actualRows3348=WordField.canonicalRows actualModulus 3348 (.rotr 3347 6) := by core033_kernel_decide
theorem stats3348 : actualRows3348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3348=5124 := by core033_kernel_decide
theorem rows3349 : actualRows3349=WordField.canonicalRows actualModulus 3349 (.rotr 3347 11) := by core033_kernel_decide
theorem stats3349 : actualRows3349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3349=5124 := by core033_kernel_decide
theorem rows3350 : actualRows3350=WordField.canonicalRows actualModulus 3350 (.bxor 3348 3349) := by core033_kernel_decide
theorem stats3350 : actualRows3350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3350=7428 := by core033_kernel_decide
theorem rows3351 : actualRows3351=WordField.canonicalRows actualModulus 3351 (.rotr 3347 25) := by core033_kernel_decide
theorem stats3351 : actualRows3351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3351=5124 := by core033_kernel_decide
theorem rows3352 : actualRows3352=WordField.canonicalRows actualModulus 3352 (.bxor 3350 3351) := by core033_kernel_decide
theorem stats3352 : actualRows3352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3352=7428 := by core033_kernel_decide
theorem rows3353 : actualRows3353=WordField.canonicalRows actualModulus 3353 (.badd 3266 3352) := by core033_kernel_decide
theorem stats3353 : actualRows3353.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3353=5388 := by core033_kernel_decide
theorem rows3354 : actualRows3354=WordField.canonicalRows actualModulus 3354 (.band 3347 3320) := by core033_kernel_decide
theorem stats3354 : actualRows3354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3354=5124 := by core033_kernel_decide
theorem rows3355 : actualRows3355=WordField.canonicalRows actualModulus 3355 (.bnot 3347) := by core033_kernel_decide
theorem stats3355 : actualRows3355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3355=6276 := by core033_kernel_decide
theorem rows3356 : actualRows3356=WordField.canonicalRows actualModulus 3356 (.band 3355 3293) := by core033_kernel_decide
theorem stats3356 : actualRows3356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3356=5124 := by core033_kernel_decide
theorem rows3357 : actualRows3357=WordField.canonicalRows actualModulus 3357 (.bxor 3354 3356) := by core033_kernel_decide
theorem stats3357 : actualRows3357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3357=7428 := by core033_kernel_decide
theorem rows3358 : actualRows3358=WordField.canonicalRows actualModulus 3358 (.badd 3353 3357) := by core033_kernel_decide
theorem stats3358 : actualRows3358.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3358=5388 := by core033_kernel_decide
theorem rows3359 : actualRows3359=WordField.canonicalRows actualModulus 3359 (.literal (BitVec.ofNat 32 958139571)) := by core033_kernel_decide
theorem stats3359 : actualRows3359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3359=3828 := by core033_kernel_decide
theorem rows3360 : actualRows3360=WordField.canonicalRows actualModulus 3360 (.badd 3358 3359) := by core033_kernel_decide
theorem stats3360 : actualRows3360.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3360=5388 := by core033_kernel_decide
theorem rows3361 : actualRows3361=WordField.canonicalRows actualModulus 3361 (.badd 3360 1800) := by core033_kernel_decide
theorem stats3361 : actualRows3361.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3361=5388 := by core033_kernel_decide
theorem rows3362 : actualRows3362=WordField.canonicalRows actualModulus 3362 (.rotr 3346 2) := by core033_kernel_decide
theorem stats3362 : actualRows3362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3362=5124 := by core033_kernel_decide
theorem rows3363 : actualRows3363=WordField.canonicalRows actualModulus 3363 (.rotr 3346 13) := by core033_kernel_decide
theorem stats3363 : actualRows3363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3363=5124 := by core033_kernel_decide
theorem rows3364 : actualRows3364=WordField.canonicalRows actualModulus 3364 (.bxor 3362 3363) := by core033_kernel_decide
theorem stats3364 : actualRows3364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3364=7428 := by core033_kernel_decide
theorem rows3365 : actualRows3365=WordField.canonicalRows actualModulus 3365 (.rotr 3346 22) := by core033_kernel_decide
theorem stats3365 : actualRows3365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3365=5124 := by core033_kernel_decide
theorem rows3366 : actualRows3366=WordField.canonicalRows actualModulus 3366 (.bxor 3364 3365) := by core033_kernel_decide
theorem stats3366 : actualRows3366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3366=7428 := by core033_kernel_decide
theorem rows3367 : actualRows3367=WordField.canonicalRows actualModulus 3367 (.band 3346 3319) := by core033_kernel_decide
theorem stats3367 : actualRows3367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3367=5124 := by core033_kernel_decide
theorem rows3368 : actualRows3368=WordField.canonicalRows actualModulus 3368 (.band 3346 3292) := by core033_kernel_decide
theorem stats3368 : actualRows3368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3368=5124 := by core033_kernel_decide
theorem rows3369 : actualRows3369=WordField.canonicalRows actualModulus 3369 (.bxor 3367 3368) := by core033_kernel_decide
theorem stats3369 : actualRows3369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3369=7428 := by core033_kernel_decide
theorem rows3370 : actualRows3370=WordField.canonicalRows actualModulus 3370 (.band 3319 3292) := by core033_kernel_decide
theorem stats3370 : actualRows3370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3370=5124 := by core033_kernel_decide
theorem rows3371 : actualRows3371=WordField.canonicalRows actualModulus 3371 (.bxor 3369 3370) := by core033_kernel_decide
theorem stats3371 : actualRows3371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3371=7428 := by core033_kernel_decide
theorem rows3372 : actualRows3372=WordField.canonicalRows actualModulus 3372 (.badd 3366 3371) := by core033_kernel_decide
theorem stats3372 : actualRows3372.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3372=5388 := by core033_kernel_decide
theorem rows3373 : actualRows3373=WordField.canonicalRows actualModulus 3373 (.badd 3361 3372) := by core033_kernel_decide
theorem stats3373 : actualRows3373.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3373=5388 := by core033_kernel_decide
theorem rows3374 : actualRows3374=WordField.canonicalRows actualModulus 3374 (.badd 3265 3361) := by core033_kernel_decide
theorem stats3374 : actualRows3374.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3374=5388 := by core033_kernel_decide
theorem rows3375 : actualRows3375=WordField.canonicalRows actualModulus 3375 (.rotr 3374 6) := by core033_kernel_decide
theorem stats3375 : actualRows3375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3375=5124 := by core033_kernel_decide
theorem rows3376 : actualRows3376=WordField.canonicalRows actualModulus 3376 (.rotr 3374 11) := by core033_kernel_decide
theorem stats3376 : actualRows3376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3376=5124 := by core033_kernel_decide
theorem rows3377 : actualRows3377=WordField.canonicalRows actualModulus 3377 (.bxor 3375 3376) := by core033_kernel_decide
theorem stats3377 : actualRows3377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3377=7428 := by core033_kernel_decide
theorem rows3378 : actualRows3378=WordField.canonicalRows actualModulus 3378 (.rotr 3374 25) := by core033_kernel_decide
theorem stats3378 : actualRows3378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3378=5124 := by core033_kernel_decide
theorem rows3379 : actualRows3379=WordField.canonicalRows actualModulus 3379 (.bxor 3377 3378) := by core033_kernel_decide
theorem stats3379 : actualRows3379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3379=7428 := by core033_kernel_decide
theorem rows3380 : actualRows3380=WordField.canonicalRows actualModulus 3380 (.badd 3293 3379) := by core033_kernel_decide
theorem stats3380 : actualRows3380.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3380=5388 := by core033_kernel_decide
theorem rows3381 : actualRows3381=WordField.canonicalRows actualModulus 3381 (.band 3374 3347) := by core033_kernel_decide
theorem stats3381 : actualRows3381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3381=5124 := by core033_kernel_decide
theorem rows3382 : actualRows3382=WordField.canonicalRows actualModulus 3382 (.bnot 3374) := by core033_kernel_decide
theorem stats3382 : actualRows3382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3382=6276 := by core033_kernel_decide
theorem rows3383 : actualRows3383=WordField.canonicalRows actualModulus 3383 (.band 3382 3320) := by core033_kernel_decide
theorem stats3383 : actualRows3383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3383=5124 := by core033_kernel_decide
theorem rows3384 : actualRows3384=WordField.canonicalRows actualModulus 3384 (.bxor 3381 3383) := by core033_kernel_decide
theorem stats3384 : actualRows3384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3384=7428 := by core033_kernel_decide
theorem rows3385 : actualRows3385=WordField.canonicalRows actualModulus 3385 (.badd 3380 3384) := by core033_kernel_decide
theorem stats3385 : actualRows3385.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3385=5388 := by core033_kernel_decide
theorem rows3386 : actualRows3386=WordField.canonicalRows actualModulus 3386 (.literal (BitVec.ofNat 32 1322822218)) := by core033_kernel_decide
theorem stats3386 : actualRows3386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3386=3900 := by core033_kernel_decide
theorem rows3387 : actualRows3387=WordField.canonicalRows actualModulus 3387 (.badd 3385 3386) := by core033_kernel_decide
theorem stats3387 : actualRows3387.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3387=5388 := by core033_kernel_decide
theorem rows3388 : actualRows3388=WordField.canonicalRows actualModulus 3388 (.badd 3387 1813) := by core033_kernel_decide
theorem stats3388 : actualRows3388.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3388=5388 := by core033_kernel_decide
theorem rows3389 : actualRows3389=WordField.canonicalRows actualModulus 3389 (.rotr 3373 2) := by core033_kernel_decide
theorem stats3389 : actualRows3389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3389=5124 := by core033_kernel_decide
theorem rows3390 : actualRows3390=WordField.canonicalRows actualModulus 3390 (.rotr 3373 13) := by core033_kernel_decide
theorem stats3390 : actualRows3390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3390=5124 := by core033_kernel_decide
theorem rows3391 : actualRows3391=WordField.canonicalRows actualModulus 3391 (.bxor 3389 3390) := by core033_kernel_decide
theorem stats3391 : actualRows3391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3391=7428 := by core033_kernel_decide
theorem rows3392 : actualRows3392=WordField.canonicalRows actualModulus 3392 (.rotr 3373 22) := by core033_kernel_decide
theorem stats3392 : actualRows3392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3392=5124 := by core033_kernel_decide
theorem rows3393 : actualRows3393=WordField.canonicalRows actualModulus 3393 (.bxor 3391 3392) := by core033_kernel_decide
theorem stats3393 : actualRows3393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3393=7428 := by core033_kernel_decide
theorem rows3394 : actualRows3394=WordField.canonicalRows actualModulus 3394 (.band 3373 3346) := by core033_kernel_decide
theorem stats3394 : actualRows3394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3394=5124 := by core033_kernel_decide
theorem rows3395 : actualRows3395=WordField.canonicalRows actualModulus 3395 (.band 3373 3319) := by core033_kernel_decide
theorem stats3395 : actualRows3395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3395=5124 := by core033_kernel_decide
theorem rows3396 : actualRows3396=WordField.canonicalRows actualModulus 3396 (.bxor 3394 3395) := by core033_kernel_decide
theorem stats3396 : actualRows3396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3396=7428 := by core033_kernel_decide
theorem rows3397 : actualRows3397=WordField.canonicalRows actualModulus 3397 (.band 3346 3319) := by core033_kernel_decide
theorem stats3397 : actualRows3397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3397=5124 := by core033_kernel_decide
theorem rows3398 : actualRows3398=WordField.canonicalRows actualModulus 3398 (.bxor 3396 3397) := by core033_kernel_decide
theorem stats3398 : actualRows3398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3398=7428 := by core033_kernel_decide
theorem rows3399 : actualRows3399=WordField.canonicalRows actualModulus 3399 (.badd 3393 3398) := by core033_kernel_decide
theorem stats3399 : actualRows3399.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3399=5388 := by core033_kernel_decide
def partRows51 : List R1CS.Row := actualRows3336++actualRows3337++actualRows3338++actualRows3339++actualRows3340++actualRows3341++actualRows3342++actualRows3343++actualRows3344++actualRows3345++actualRows3346++actualRows3347++actualRows3348++actualRows3349++actualRows3350++actualRows3351++actualRows3352++actualRows3353++actualRows3354++actualRows3355++actualRows3356++actualRows3357++actualRows3358++actualRows3359++actualRows3360++actualRows3361++actualRows3362++actualRows3363++actualRows3364++actualRows3365++actualRows3366++actualRows3367++actualRows3368++actualRows3369++actualRows3370++actualRows3371++actualRows3372++actualRows3373++actualRows3374++actualRows3375++actualRows3376++actualRows3377++actualRows3378++actualRows3379++actualRows3380++actualRows3381++actualRows3382++actualRows3383++actualRows3384++actualRows3385++actualRows3386++actualRows3387++actualRows3388++actualRows3389++actualRows3390++actualRows3391++actualRows3392++actualRows3393++actualRows3394++actualRows3395++actualRows3396++actualRows3397++actualRows3398++actualRows3399
def partOps51 : List WordIR.Op := [.rotr 3319 13,.bxor 3335 3336,.rotr 3319 22,.bxor 3337 3338,.band 3319 3292,.band 3319 3265,.bxor 3340 3341,.band 3292 3265,.bxor 3342 3343,.badd 3339 3344,.badd 3334 3345,.badd 3238 3334,.rotr 3347 6,.rotr 3347 11,.bxor 3348 3349,.rotr 3347 25,.bxor 3350 3351,.badd 3266 3352,.band 3347 3320,.bnot 3347,.band 3355 3293,.bxor 3354 3356,.badd 3353 3357,.literal (BitVec.ofNat 32 958139571),.badd 3358 3359,.badd 3360 1800,.rotr 3346 2,.rotr 3346 13,.bxor 3362 3363,.rotr 3346 22,.bxor 3364 3365,.band 3346 3319,.band 3346 3292,.bxor 3367 3368,.band 3319 3292,.bxor 3369 3370,.badd 3366 3371,.badd 3361 3372,.badd 3265 3361,.rotr 3374 6,.rotr 3374 11,.bxor 3375 3376,.rotr 3374 25,.bxor 3377 3378,.badd 3293 3379,.band 3374 3347,.bnot 3374,.band 3382 3320,.bxor 3381 3383,.badd 3380 3384,.literal (BitVec.ofNat 32 1322822218),.badd 3385 3386,.badd 3387 1813,.rotr 3373 2,.rotr 3373 13,.bxor 3389 3390,.rotr 3373 22,.bxor 3391 3392,.band 3373 3346,.band 3373 3319,.bxor 3394 3395,.band 3346 3319,.bxor 3396 3397,.badd 3393 3398]
theorem partExact51 : partRows51=WordField.rows actualModulus 3336 partOps51 := by
  simp only [partRows51,partOps51,WordField.rows,rows3336,rows3337,rows3338,rows3339,rows3340,rows3341,rows3342,rows3343,rows3344,rows3345,rows3346,rows3347,rows3348,rows3349,rows3350,rows3351,rows3352,rows3353,rows3354,rows3355,rows3356,rows3357,rows3358,rows3359,rows3360,rows3361,rows3362,rows3363,rows3364,rows3365,rows3366,rows3367,rows3368,rows3369,rows3370,rows3371,rows3372,rows3373,rows3374,rows3375,rows3376,rows3377,rows3378,rows3379,rows3380,rows3381,rows3382,rows3383,rows3384,rows3385,rows3386,rows3387,rows3388,rows3389,rows3390,rows3391,rows3392,rows3393,rows3394,rows3395,rows3396,rows3397,rows3398,rows3399,List.append_assoc,List.append_nil]
theorem partLength51 : partOps51.length=64 := by decide
theorem partStats51 : partRows51.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows51=373152 := by
  simp only [partRows51,List.length_append,MatrixRowBlocks.rows_weight_append,stats3336.1,stats3336.2,stats3337.1,stats3337.2,stats3338.1,stats3338.2,stats3339.1,stats3339.2,stats3340.1,stats3340.2,stats3341.1,stats3341.2,stats3342.1,stats3342.2,stats3343.1,stats3343.2,stats3344.1,stats3344.2,stats3345.1,stats3345.2,stats3346.1,stats3346.2,stats3347.1,stats3347.2,stats3348.1,stats3348.2,stats3349.1,stats3349.2,stats3350.1,stats3350.2,stats3351.1,stats3351.2,stats3352.1,stats3352.2,stats3353.1,stats3353.2,stats3354.1,stats3354.2,stats3355.1,stats3355.2,stats3356.1,stats3356.2,stats3357.1,stats3357.2,stats3358.1,stats3358.2,stats3359.1,stats3359.2,stats3360.1,stats3360.2,stats3361.1,stats3361.2,stats3362.1,stats3362.2,stats3363.1,stats3363.2,stats3364.1,stats3364.2,stats3365.1,stats3365.2,stats3366.1,stats3366.2,stats3367.1,stats3367.2,stats3368.1,stats3368.2,stats3369.1,stats3369.2,stats3370.1,stats3370.2,stats3371.1,stats3371.2,stats3372.1,stats3372.2,stats3373.1,stats3373.2,stats3374.1,stats3374.2,stats3375.1,stats3375.2,stats3376.1,stats3376.2,stats3377.1,stats3377.2,stats3378.1,stats3378.2,stats3379.1,stats3379.2,stats3380.1,stats3380.2,stats3381.1,stats3381.2,stats3382.1,stats3382.2,stats3383.1,stats3383.2,stats3384.1,stats3384.2,stats3385.1,stats3385.2,stats3386.1,stats3386.2,stats3387.1,stats3387.2,stats3388.1,stats3388.2,stats3389.1,stats3389.2,stats3390.1,stats3390.2,stats3391.1,stats3391.2,stats3392.1,stats3392.2,stats3393.1,stats3393.2,stats3394.1,stats3394.2,stats3395.1,stats3395.2,stats3396.1,stats3396.2,stats3397.1,stats3397.2,stats3398.1,stats3398.2,stats3399.1,stats3399.2]
  decide
end HashBlockCheckedRows
