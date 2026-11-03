import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData52
import SharedFrameInstructionMatrixData53
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3371 : actualRows3371=WordField.canonicalRows actualModulus 3371 (.bxor 3369 3370) := by core033_kernel_decide
theorem stats3371 : actualRows3371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3371=7428 := by core033_kernel_decide
theorem rows3372 : actualRows3372=WordField.canonicalRows actualModulus 3372 (.bxor 3371 3343) := by core033_kernel_decide
theorem stats3372 : actualRows3372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3372=7428 := by core033_kernel_decide
theorem rows3373 : actualRows3373=WordField.canonicalRows actualModulus 3373 (.badd 3368 3372) := by core033_kernel_decide
theorem stats3373 : actualRows3373.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3373=5388 := by core033_kernel_decide
theorem rows3374 : actualRows3374=WordField.canonicalRows actualModulus 3374 (.badd 3363 3373) := by core033_kernel_decide
theorem stats3374 : actualRows3374.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3374=5388 := by core033_kernel_decide
theorem rows3375 : actualRows3375=WordField.canonicalRows actualModulus 3375 (.badd 3270 3363) := by core033_kernel_decide
theorem stats3375 : actualRows3375.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3375=5388 := by core033_kernel_decide
theorem rows3376 : actualRows3376=WordField.canonicalRows actualModulus 3376 (.rotr 3375 6) := by core033_kernel_decide
theorem stats3376 : actualRows3376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3376=5124 := by core033_kernel_decide
theorem rows3377 : actualRows3377=WordField.canonicalRows actualModulus 3377 (.rotr 3375 11) := by core033_kernel_decide
theorem stats3377 : actualRows3377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3377=5124 := by core033_kernel_decide
theorem rows3378 : actualRows3378=WordField.canonicalRows actualModulus 3378 (.bxor 3376 3377) := by core033_kernel_decide
theorem stats3378 : actualRows3378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3378=7428 := by core033_kernel_decide
theorem rows3379 : actualRows3379=WordField.canonicalRows actualModulus 3379 (.rotr 3375 25) := by core033_kernel_decide
theorem stats3379 : actualRows3379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3379=5124 := by core033_kernel_decide
theorem rows3380 : actualRows3380=WordField.canonicalRows actualModulus 3380 (.bxor 3378 3379) := by core033_kernel_decide
theorem stats3380 : actualRows3380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3380=7428 := by core033_kernel_decide
theorem rows3381 : actualRows3381=WordField.canonicalRows actualModulus 3381 (.badd 3297 3380) := by core033_kernel_decide
theorem stats3381 : actualRows3381.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3381=5388 := by core033_kernel_decide
theorem rows3382 : actualRows3382=WordField.canonicalRows actualModulus 3382 (.band 3375 3349) := by core033_kernel_decide
theorem stats3382 : actualRows3382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3382=5124 := by core033_kernel_decide
theorem rows3383 : actualRows3383=WordField.canonicalRows actualModulus 3383 (.bnot 3375) := by core033_kernel_decide
theorem stats3383 : actualRows3383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3383=6276 := by core033_kernel_decide
theorem rows3384 : actualRows3384=WordField.canonicalRows actualModulus 3384 (.band 3383 3323) := by core033_kernel_decide
theorem stats3384 : actualRows3384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3384=5124 := by core033_kernel_decide
theorem rows3385 : actualRows3385=WordField.canonicalRows actualModulus 3385 (.bxor 3382 3384) := by core033_kernel_decide
theorem stats3385 : actualRows3385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3385=7428 := by core033_kernel_decide
theorem rows3386 : actualRows3386=WordField.canonicalRows actualModulus 3386 (.badd 3381 3385) := by core033_kernel_decide
theorem stats3386 : actualRows3386.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3386=5388 := by core033_kernel_decide
theorem rows3387 : actualRows3387=WordField.canonicalRows actualModulus 3387 (.literal (BitVec.ofNat 32 275423344)) := by core033_kernel_decide
theorem stats3387 : actualRows3387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3387=3540 := by core033_kernel_decide
theorem rows3388 : actualRows3388=WordField.canonicalRows actualModulus 3388 (.badd 3386 3387) := by core033_kernel_decide
theorem stats3388 : actualRows3388.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3388=5388 := by core033_kernel_decide
theorem rows3389 : actualRows3389=WordField.canonicalRows actualModulus 3389 (.badd 3388 1944) := by core033_kernel_decide
theorem stats3389 : actualRows3389.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3389=5388 := by core033_kernel_decide
theorem rows3390 : actualRows3390=WordField.canonicalRows actualModulus 3390 (.rotr 3374 2) := by core033_kernel_decide
theorem stats3390 : actualRows3390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3390=5124 := by core033_kernel_decide
theorem rows3391 : actualRows3391=WordField.canonicalRows actualModulus 3391 (.rotr 3374 13) := by core033_kernel_decide
theorem stats3391 : actualRows3391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3391=5124 := by core033_kernel_decide
theorem rows3392 : actualRows3392=WordField.canonicalRows actualModulus 3392 (.bxor 3390 3391) := by core033_kernel_decide
theorem stats3392 : actualRows3392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3392=7428 := by core033_kernel_decide
theorem rows3393 : actualRows3393=WordField.canonicalRows actualModulus 3393 (.rotr 3374 22) := by core033_kernel_decide
theorem stats3393 : actualRows3393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3393=5124 := by core033_kernel_decide
theorem rows3394 : actualRows3394=WordField.canonicalRows actualModulus 3394 (.bxor 3392 3393) := by core033_kernel_decide
theorem stats3394 : actualRows3394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3394=7428 := by core033_kernel_decide
theorem rows3395 : actualRows3395=WordField.canonicalRows actualModulus 3395 (.band 3374 3348) := by core033_kernel_decide
theorem stats3395 : actualRows3395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3395=5124 := by core033_kernel_decide
theorem rows3396 : actualRows3396=WordField.canonicalRows actualModulus 3396 (.band 3374 3322) := by core033_kernel_decide
theorem stats3396 : actualRows3396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3396=5124 := by core033_kernel_decide
theorem rows3397 : actualRows3397=WordField.canonicalRows actualModulus 3397 (.bxor 3395 3396) := by core033_kernel_decide
theorem stats3397 : actualRows3397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3397=7428 := by core033_kernel_decide
theorem rows3398 : actualRows3398=WordField.canonicalRows actualModulus 3398 (.bxor 3397 3369) := by core033_kernel_decide
theorem stats3398 : actualRows3398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3398=7428 := by core033_kernel_decide
theorem rows3399 : actualRows3399=WordField.canonicalRows actualModulus 3399 (.badd 3394 3398) := by core033_kernel_decide
theorem stats3399 : actualRows3399.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3399=5388 := by core033_kernel_decide
theorem rows3400 : actualRows3400=WordField.canonicalRows actualModulus 3400 (.badd 3389 3399) := by core033_kernel_decide
theorem stats3400 : actualRows3400.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3400=5388 := by core033_kernel_decide
theorem rows3401 : actualRows3401=WordField.canonicalRows actualModulus 3401 (.badd 3296 3389) := by core033_kernel_decide
theorem stats3401 : actualRows3401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3401=5388 := by core033_kernel_decide
theorem rows3402 : actualRows3402=WordField.canonicalRows actualModulus 3402 (.rotr 3401 6) := by core033_kernel_decide
theorem stats3402 : actualRows3402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3402=5124 := by core033_kernel_decide
theorem rows3403 : actualRows3403=WordField.canonicalRows actualModulus 3403 (.rotr 3401 11) := by core033_kernel_decide
theorem stats3403 : actualRows3403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3403=5124 := by core033_kernel_decide
theorem rows3404 : actualRows3404=WordField.canonicalRows actualModulus 3404 (.bxor 3402 3403) := by core033_kernel_decide
theorem stats3404 : actualRows3404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3404=7428 := by core033_kernel_decide
theorem rows3405 : actualRows3405=WordField.canonicalRows actualModulus 3405 (.rotr 3401 25) := by core033_kernel_decide
theorem stats3405 : actualRows3405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3405=5124 := by core033_kernel_decide
theorem rows3406 : actualRows3406=WordField.canonicalRows actualModulus 3406 (.bxor 3404 3405) := by core033_kernel_decide
theorem stats3406 : actualRows3406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3406=7428 := by core033_kernel_decide
theorem rows3407 : actualRows3407=WordField.canonicalRows actualModulus 3407 (.badd 3323 3406) := by core033_kernel_decide
theorem stats3407 : actualRows3407.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3407=5388 := by core033_kernel_decide
theorem rows3408 : actualRows3408=WordField.canonicalRows actualModulus 3408 (.band 3401 3375) := by core033_kernel_decide
theorem stats3408 : actualRows3408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3408=5124 := by core033_kernel_decide
theorem rows3409 : actualRows3409=WordField.canonicalRows actualModulus 3409 (.bnot 3401) := by core033_kernel_decide
theorem stats3409 : actualRows3409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3409=6276 := by core033_kernel_decide
theorem rows3410 : actualRows3410=WordField.canonicalRows actualModulus 3410 (.band 3409 3349) := by core033_kernel_decide
theorem stats3410 : actualRows3410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3410=5124 := by core033_kernel_decide
theorem rows3411 : actualRows3411=WordField.canonicalRows actualModulus 3411 (.bxor 3408 3410) := by core033_kernel_decide
theorem stats3411 : actualRows3411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3411=7428 := by core033_kernel_decide
theorem rows3412 : actualRows3412=WordField.canonicalRows actualModulus 3412 (.badd 3407 3411) := by core033_kernel_decide
theorem stats3412 : actualRows3412.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3412=5388 := by core033_kernel_decide
theorem rows3413 : actualRows3413=WordField.canonicalRows actualModulus 3413 (.literal (BitVec.ofNat 32 430227734)) := by core033_kernel_decide
theorem stats3413 : actualRows3413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3413=3684 := by core033_kernel_decide
theorem rows3414 : actualRows3414=WordField.canonicalRows actualModulus 3414 (.badd 3412 3413) := by core033_kernel_decide
theorem stats3414 : actualRows3414.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3414=5388 := by core033_kernel_decide
theorem rows3415 : actualRows3415=WordField.canonicalRows actualModulus 3415 (.badd 3414 1957) := by core033_kernel_decide
theorem stats3415 : actualRows3415.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3415=5388 := by core033_kernel_decide
theorem rows3416 : actualRows3416=WordField.canonicalRows actualModulus 3416 (.rotr 3400 2) := by core033_kernel_decide
theorem stats3416 : actualRows3416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3416=5124 := by core033_kernel_decide
theorem rows3417 : actualRows3417=WordField.canonicalRows actualModulus 3417 (.rotr 3400 13) := by core033_kernel_decide
theorem stats3417 : actualRows3417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3417=5124 := by core033_kernel_decide
theorem rows3418 : actualRows3418=WordField.canonicalRows actualModulus 3418 (.bxor 3416 3417) := by core033_kernel_decide
theorem stats3418 : actualRows3418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3418=7428 := by core033_kernel_decide
theorem rows3419 : actualRows3419=WordField.canonicalRows actualModulus 3419 (.rotr 3400 22) := by core033_kernel_decide
theorem stats3419 : actualRows3419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3419=5124 := by core033_kernel_decide
theorem rows3420 : actualRows3420=WordField.canonicalRows actualModulus 3420 (.bxor 3418 3419) := by core033_kernel_decide
theorem stats3420 : actualRows3420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3420=7428 := by core033_kernel_decide
theorem rows3421 : actualRows3421=WordField.canonicalRows actualModulus 3421 (.band 3400 3374) := by core033_kernel_decide
theorem stats3421 : actualRows3421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3421=5124 := by core033_kernel_decide
theorem rows3422 : actualRows3422=WordField.canonicalRows actualModulus 3422 (.band 3400 3348) := by core033_kernel_decide
theorem stats3422 : actualRows3422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3422=5124 := by core033_kernel_decide
theorem rows3423 : actualRows3423=WordField.canonicalRows actualModulus 3423 (.bxor 3421 3422) := by core033_kernel_decide
theorem stats3423 : actualRows3423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3423=7428 := by core033_kernel_decide
theorem rows3424 : actualRows3424=WordField.canonicalRows actualModulus 3424 (.bxor 3423 3395) := by core033_kernel_decide
theorem stats3424 : actualRows3424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3424=7428 := by core033_kernel_decide
theorem rows3425 : actualRows3425=WordField.canonicalRows actualModulus 3425 (.badd 3420 3424) := by core033_kernel_decide
theorem stats3425 : actualRows3425.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3425=5388 := by core033_kernel_decide
theorem rows3426 : actualRows3426=WordField.canonicalRows actualModulus 3426 (.badd 3415 3425) := by core033_kernel_decide
theorem stats3426 : actualRows3426.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3426=5388 := by core033_kernel_decide
theorem rows3427 : actualRows3427=WordField.canonicalRows actualModulus 3427 (.badd 3322 3415) := by core033_kernel_decide
theorem stats3427 : actualRows3427.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3427=5388 := by core033_kernel_decide
theorem rows3428 : actualRows3428=WordField.canonicalRows actualModulus 3428 (.rotr 3427 6) := by core033_kernel_decide
theorem stats3428 : actualRows3428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3428=5124 := by core033_kernel_decide
theorem rows3429 : actualRows3429=WordField.canonicalRows actualModulus 3429 (.rotr 3427 11) := by core033_kernel_decide
theorem stats3429 : actualRows3429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3429=5124 := by core033_kernel_decide
theorem rows3430 : actualRows3430=WordField.canonicalRows actualModulus 3430 (.bxor 3428 3429) := by core033_kernel_decide
theorem stats3430 : actualRows3430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3430=7428 := by core033_kernel_decide
theorem rows3431 : actualRows3431=WordField.canonicalRows actualModulus 3431 (.rotr 3427 25) := by core033_kernel_decide
theorem stats3431 : actualRows3431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3431=5124 := by core033_kernel_decide
theorem rows3432 : actualRows3432=WordField.canonicalRows actualModulus 3432 (.bxor 3430 3431) := by core033_kernel_decide
theorem stats3432 : actualRows3432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3432=7428 := by core033_kernel_decide
theorem rows3433 : actualRows3433=WordField.canonicalRows actualModulus 3433 (.badd 3349 3432) := by core033_kernel_decide
theorem stats3433 : actualRows3433.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3433=5388 := by core033_kernel_decide
theorem rows3434 : actualRows3434=WordField.canonicalRows actualModulus 3434 (.band 3427 3401) := by core033_kernel_decide
theorem stats3434 : actualRows3434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3434=5124 := by core033_kernel_decide
def partRows52 : List R1CS.Row := actualRows3371++actualRows3372++actualRows3373++actualRows3374++actualRows3375++actualRows3376++actualRows3377++actualRows3378++actualRows3379++actualRows3380++actualRows3381++actualRows3382++actualRows3383++actualRows3384++actualRows3385++actualRows3386++actualRows3387++actualRows3388++actualRows3389++actualRows3390++actualRows3391++actualRows3392++actualRows3393++actualRows3394++actualRows3395++actualRows3396++actualRows3397++actualRows3398++actualRows3399++actualRows3400++actualRows3401++actualRows3402++actualRows3403++actualRows3404++actualRows3405++actualRows3406++actualRows3407++actualRows3408++actualRows3409++actualRows3410++actualRows3411++actualRows3412++actualRows3413++actualRows3414++actualRows3415++actualRows3416++actualRows3417++actualRows3418++actualRows3419++actualRows3420++actualRows3421++actualRows3422++actualRows3423++actualRows3424++actualRows3425++actualRows3426++actualRows3427++actualRows3428++actualRows3429++actualRows3430++actualRows3431++actualRows3432++actualRows3433++actualRows3434
def partOps52 : List WordIR.Op := [.bxor 3369 3370,.bxor 3371 3343,.badd 3368 3372,.badd 3363 3373,.badd 3270 3363,.rotr 3375 6,.rotr 3375 11,.bxor 3376 3377,.rotr 3375 25,.bxor 3378 3379,.badd 3297 3380,.band 3375 3349,.bnot 3375,.band 3383 3323,.bxor 3382 3384,.badd 3381 3385,.literal (BitVec.ofNat 32 275423344),.badd 3386 3387,.badd 3388 1944,.rotr 3374 2,.rotr 3374 13,.bxor 3390 3391,.rotr 3374 22,.bxor 3392 3393,.band 3374 3348,.band 3374 3322,.bxor 3395 3396,.bxor 3397 3369,.badd 3394 3398,.badd 3389 3399,.badd 3296 3389,.rotr 3401 6,.rotr 3401 11,.bxor 3402 3403,.rotr 3401 25,.bxor 3404 3405,.badd 3323 3406,.band 3401 3375,.bnot 3401,.band 3409 3349,.bxor 3408 3410,.badd 3407 3411,.literal (BitVec.ofNat 32 430227734),.badd 3412 3413,.badd 3414 1957,.rotr 3400 2,.rotr 3400 13,.bxor 3416 3417,.rotr 3400 22,.bxor 3418 3419,.band 3400 3374,.band 3400 3348,.bxor 3421 3422,.bxor 3423 3395,.badd 3420 3424,.badd 3415 3425,.badd 3322 3415,.rotr 3427 6,.rotr 3427 11,.bxor 3428 3429,.rotr 3427 25,.bxor 3430 3431,.badd 3349 3432,.band 3427 3401]
theorem partExact52 : partRows52=WordField.rows actualModulus 3371 partOps52 := by
  simp only [partRows52,partOps52,WordField.rows,rows3371,rows3372,rows3373,rows3374,rows3375,rows3376,rows3377,rows3378,rows3379,rows3380,rows3381,rows3382,rows3383,rows3384,rows3385,rows3386,rows3387,rows3388,rows3389,rows3390,rows3391,rows3392,rows3393,rows3394,rows3395,rows3396,rows3397,rows3398,rows3399,rows3400,rows3401,rows3402,rows3403,rows3404,rows3405,rows3406,rows3407,rows3408,rows3409,rows3410,rows3411,rows3412,rows3413,rows3414,rows3415,rows3416,rows3417,rows3418,rows3419,rows3420,rows3421,rows3422,rows3423,rows3424,rows3425,rows3426,rows3427,rows3428,rows3429,rows3430,rows3431,rows3432,rows3433,rows3434,List.append_assoc,List.append_nil]
theorem partLength52 : partOps52.length=64 := by decide
theorem partStats52 : partRows52.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows52=373440 := by
  simp only [partRows52,List.length_append,MatrixRowBlocks.rows_weight_append,stats3371.1,stats3371.2,stats3372.1,stats3372.2,stats3373.1,stats3373.2,stats3374.1,stats3374.2,stats3375.1,stats3375.2,stats3376.1,stats3376.2,stats3377.1,stats3377.2,stats3378.1,stats3378.2,stats3379.1,stats3379.2,stats3380.1,stats3380.2,stats3381.1,stats3381.2,stats3382.1,stats3382.2,stats3383.1,stats3383.2,stats3384.1,stats3384.2,stats3385.1,stats3385.2,stats3386.1,stats3386.2,stats3387.1,stats3387.2,stats3388.1,stats3388.2,stats3389.1,stats3389.2,stats3390.1,stats3390.2,stats3391.1,stats3391.2,stats3392.1,stats3392.2,stats3393.1,stats3393.2,stats3394.1,stats3394.2,stats3395.1,stats3395.2,stats3396.1,stats3396.2,stats3397.1,stats3397.2,stats3398.1,stats3398.2,stats3399.1,stats3399.2,stats3400.1,stats3400.2,stats3401.1,stats3401.2,stats3402.1,stats3402.2,stats3403.1,stats3403.2,stats3404.1,stats3404.2,stats3405.1,stats3405.2,stats3406.1,stats3406.2,stats3407.1,stats3407.2,stats3408.1,stats3408.2,stats3409.1,stats3409.2,stats3410.1,stats3410.2,stats3411.1,stats3411.2,stats3412.1,stats3412.2,stats3413.1,stats3413.2,stats3414.1,stats3414.2,stats3415.1,stats3415.2,stats3416.1,stats3416.2,stats3417.1,stats3417.2,stats3418.1,stats3418.2,stats3419.1,stats3419.2,stats3420.1,stats3420.2,stats3421.1,stats3421.2,stats3422.1,stats3422.2,stats3423.1,stats3423.2,stats3424.1,stats3424.2,stats3425.1,stats3425.2,stats3426.1,stats3426.2,stats3427.1,stats3427.2,stats3428.1,stats3428.2,stats3429.1,stats3429.2,stats3430.1,stats3430.2,stats3431.1,stats3431.2,stats3432.1,stats3432.2,stats3433.1,stats3433.2,stats3434.1,stats3434.2]
  decide
end SharedFrameCheckedRows
