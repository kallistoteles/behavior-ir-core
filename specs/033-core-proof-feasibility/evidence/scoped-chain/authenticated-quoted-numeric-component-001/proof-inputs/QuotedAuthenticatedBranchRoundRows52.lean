import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData53
import AuthenticatedBranchRoundInstructionMatrixData54
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3446 : actualRows3446=WordField.canonicalRows actualModulus 3446 (.bxor 3443 3445) := by core033_kernel_decide
theorem stats3446 : actualRows3446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3446=7428 := by core033_kernel_decide
theorem rows3447 : actualRows3447=WordField.canonicalRows actualModulus 3447 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3447 : actualRows3447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3447=2892 := by core033_kernel_decide
theorem rows3448 : actualRows3448=WordField.canonicalRows actualModulus 3448 (.bxor 1299 3447) := by core033_kernel_decide
theorem stats3448 : actualRows3448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3448=7428 := by core033_kernel_decide
theorem rows3449 : actualRows3449=WordField.canonicalRows actualModulus 3449 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3449 : actualRows3449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3449=2820 := by core033_kernel_decide
theorem rows3450 : actualRows3450=WordField.canonicalRows actualModulus 3450 (.bnot 3449) := by core033_kernel_decide
theorem stats3450 : actualRows3450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3450=6276 := by core033_kernel_decide
theorem rows3451 : actualRows3451=WordField.canonicalRows actualModulus 3451 (.badd 3448 3450) := by core033_kernel_decide
theorem stats3451 : actualRows3451.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3451=5388 := by core033_kernel_decide
theorem rows3452 : actualRows3452=WordField.canonicalRows actualModulus 3452 (.bnot 3451) := by core033_kernel_decide
theorem stats3452 : actualRows3452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3452=6276 := by core033_kernel_decide
theorem rows3453 : actualRows3453=WordField.canonicalRows actualModulus 3453 (.band 3446 3452) := by core033_kernel_decide
theorem stats3453 : actualRows3453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3453=5124 := by core033_kernel_decide
theorem rows3454 : actualRows3454=WordField.canonicalRows actualModulus 3454 (.bxor 3441 3453) := by core033_kernel_decide
theorem stats3454 : actualRows3454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3454=7428 := by core033_kernel_decide
theorem rows3455 : actualRows3455=WordField.canonicalRows actualModulus 3455 (.shr 3454 31) := by core033_kernel_decide
theorem stats3455 : actualRows3455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3455=2892 := by core033_kernel_decide
theorem rows3456 : actualRows3456=WordField.canonicalRows actualModulus 3456 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3456 : actualRows3456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3456=2892 := by core033_kernel_decide
theorem rows3457 : actualRows3457=WordField.canonicalRows actualModulus 3457 (.bxor 3455 3456) := by core033_kernel_decide
theorem stats3457 : actualRows3457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3457=7428 := by core033_kernel_decide
theorem rows3458 : actualRows3458=WordField.canonicalRows actualModulus 3458 (.bnot 3457) := by core033_kernel_decide
theorem stats3458 : actualRows3458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3458=6276 := by core033_kernel_decide
theorem rows3459 : actualRows3459=WordField.canonicalRows actualModulus 3459 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3459 : actualRows3459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3459=2892 := by core033_kernel_decide
theorem rows3460 : actualRows3460=WordField.canonicalRows actualModulus 3460 (.badd 3458 3459) := by core033_kernel_decide
theorem stats3460 : actualRows3460.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3460=5388 := by core033_kernel_decide
theorem rows3461 : actualRows3461=WordField.canonicalRows actualModulus 3461 (.band 3460 1750) := by core033_kernel_decide
theorem stats3461 : actualRows3461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3461=5124 := by core033_kernel_decide
theorem rows3462 : actualRows3462=WordField.canonicalRows actualModulus 3462 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3462 : actualRows3462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3462=2892 := by core033_kernel_decide
theorem rows3463 : actualRows3463=WordField.canonicalRows actualModulus 3463 (.bxor 1299 3462) := by core033_kernel_decide
theorem stats3463 : actualRows3463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3463=7428 := by core033_kernel_decide
theorem rows3464 : actualRows3464=WordField.canonicalRows actualModulus 3464 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3464 : actualRows3464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3464=2820 := by core033_kernel_decide
theorem rows3465 : actualRows3465=WordField.canonicalRows actualModulus 3465 (.bnot 3464) := by core033_kernel_decide
theorem stats3465 : actualRows3465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3465=6276 := by core033_kernel_decide
theorem rows3466 : actualRows3466=WordField.canonicalRows actualModulus 3466 (.band 3463 3465) := by core033_kernel_decide
theorem stats3466 : actualRows3466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3466=5124 := by core033_kernel_decide
theorem rows3467 : actualRows3467=WordField.canonicalRows actualModulus 3467 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3467 : actualRows3467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3467=2892 := by core033_kernel_decide
theorem rows3468 : actualRows3468=WordField.canonicalRows actualModulus 3468 (.bxor 1299 3467) := by core033_kernel_decide
theorem stats3468 : actualRows3468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3468=7428 := by core033_kernel_decide
theorem rows3469 : actualRows3469=WordField.canonicalRows actualModulus 3469 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3469 : actualRows3469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3469=2820 := by core033_kernel_decide
theorem rows3470 : actualRows3470=WordField.canonicalRows actualModulus 3470 (.bnot 3469) := by core033_kernel_decide
theorem stats3470 : actualRows3470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3470=6276 := by core033_kernel_decide
theorem rows3471 : actualRows3471=WordField.canonicalRows actualModulus 3471 (.bxor 3468 3470) := by core033_kernel_decide
theorem stats3471 : actualRows3471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3471=7428 := by core033_kernel_decide
theorem rows3472 : actualRows3472=WordField.canonicalRows actualModulus 3472 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3472 : actualRows3472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3472=2892 := by core033_kernel_decide
theorem rows3473 : actualRows3473=WordField.canonicalRows actualModulus 3473 (.bxor 1299 3472) := by core033_kernel_decide
theorem stats3473 : actualRows3473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3473=7428 := by core033_kernel_decide
theorem rows3474 : actualRows3474=WordField.canonicalRows actualModulus 3474 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3474 : actualRows3474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3474=2820 := by core033_kernel_decide
theorem rows3475 : actualRows3475=WordField.canonicalRows actualModulus 3475 (.bnot 3474) := by core033_kernel_decide
theorem stats3475 : actualRows3475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3475=6276 := by core033_kernel_decide
theorem rows3476 : actualRows3476=WordField.canonicalRows actualModulus 3476 (.badd 3473 3475) := by core033_kernel_decide
theorem stats3476 : actualRows3476.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3476=5388 := by core033_kernel_decide
theorem rows3477 : actualRows3477=WordField.canonicalRows actualModulus 3477 (.bnot 3476) := by core033_kernel_decide
theorem stats3477 : actualRows3477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3477=6276 := by core033_kernel_decide
theorem rows3478 : actualRows3478=WordField.canonicalRows actualModulus 3478 (.band 3471 3477) := by core033_kernel_decide
theorem stats3478 : actualRows3478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3478=5124 := by core033_kernel_decide
theorem rows3479 : actualRows3479=WordField.canonicalRows actualModulus 3479 (.bxor 3466 3478) := by core033_kernel_decide
theorem stats3479 : actualRows3479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3479=7428 := by core033_kernel_decide
theorem rows3480 : actualRows3480=WordField.canonicalRows actualModulus 3480 (.shr 3479 31) := by core033_kernel_decide
theorem stats3480 : actualRows3480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3480=2892 := by core033_kernel_decide
theorem rows3481 : actualRows3481=WordField.canonicalRows actualModulus 3481 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3481 : actualRows3481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3481=2892 := by core033_kernel_decide
theorem rows3482 : actualRows3482=WordField.canonicalRows actualModulus 3482 (.bxor 3480 3481) := by core033_kernel_decide
theorem stats3482 : actualRows3482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3482=7428 := by core033_kernel_decide
theorem rows3483 : actualRows3483=WordField.canonicalRows actualModulus 3483 (.bnot 3482) := by core033_kernel_decide
theorem stats3483 : actualRows3483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3483=6276 := by core033_kernel_decide
theorem rows3484 : actualRows3484=WordField.canonicalRows actualModulus 3484 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3484 : actualRows3484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3484=2892 := by core033_kernel_decide
theorem rows3485 : actualRows3485=WordField.canonicalRows actualModulus 3485 (.badd 3483 3484) := by core033_kernel_decide
theorem stats3485 : actualRows3485.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3485=5388 := by core033_kernel_decide
theorem rows3486 : actualRows3486=WordField.canonicalRows actualModulus 3486 (.bnot 3485) := by core033_kernel_decide
theorem stats3486 : actualRows3486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3486=6276 := by core033_kernel_decide
theorem rows3487 : actualRows3487=WordField.canonicalRows actualModulus 3487 (.literal (BitVec.ofNat 32 528734635)) := by core033_kernel_decide
theorem stats3487 : actualRows3487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3487=4116 := by core033_kernel_decide
theorem rows3488 : actualRows3488=WordField.canonicalRows actualModulus 3488 (.band 3486 3487) := by core033_kernel_decide
theorem stats3488 : actualRows3488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3488=5124 := by core033_kernel_decide
theorem rows3489 : actualRows3489=WordField.canonicalRows actualModulus 3489 (.bxor 3461 3488) := by core033_kernel_decide
theorem stats3489 : actualRows3489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3489=7428 := by core033_kernel_decide
theorem rows3490 : actualRows3490=WordField.canonicalRows actualModulus 3490 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3490 : actualRows3490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3490=2892 := by core033_kernel_decide
theorem rows3491 : actualRows3491=WordField.canonicalRows actualModulus 3491 (.bxor 1299 3490) := by core033_kernel_decide
theorem stats3491 : actualRows3491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3491=7428 := by core033_kernel_decide
theorem rows3492 : actualRows3492=WordField.canonicalRows actualModulus 3492 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3492 : actualRows3492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3492=2820 := by core033_kernel_decide
theorem rows3493 : actualRows3493=WordField.canonicalRows actualModulus 3493 (.bnot 3492) := by core033_kernel_decide
theorem stats3493 : actualRows3493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3493=6276 := by core033_kernel_decide
theorem rows3494 : actualRows3494=WordField.canonicalRows actualModulus 3494 (.band 3491 3493) := by core033_kernel_decide
theorem stats3494 : actualRows3494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3494=5124 := by core033_kernel_decide
theorem rows3495 : actualRows3495=WordField.canonicalRows actualModulus 3495 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3495 : actualRows3495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3495=2892 := by core033_kernel_decide
theorem rows3496 : actualRows3496=WordField.canonicalRows actualModulus 3496 (.bxor 1299 3495) := by core033_kernel_decide
theorem stats3496 : actualRows3496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3496=7428 := by core033_kernel_decide
theorem rows3497 : actualRows3497=WordField.canonicalRows actualModulus 3497 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3497 : actualRows3497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3497=2820 := by core033_kernel_decide
theorem rows3498 : actualRows3498=WordField.canonicalRows actualModulus 3498 (.bnot 3497) := by core033_kernel_decide
theorem stats3498 : actualRows3498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3498=6276 := by core033_kernel_decide
theorem rows3499 : actualRows3499=WordField.canonicalRows actualModulus 3499 (.bxor 3496 3498) := by core033_kernel_decide
theorem stats3499 : actualRows3499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3499=7428 := by core033_kernel_decide
theorem rows3500 : actualRows3500=WordField.canonicalRows actualModulus 3500 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3500 : actualRows3500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3500=2892 := by core033_kernel_decide
theorem rows3501 : actualRows3501=WordField.canonicalRows actualModulus 3501 (.bxor 1299 3500) := by core033_kernel_decide
theorem stats3501 : actualRows3501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3501=7428 := by core033_kernel_decide
theorem rows3502 : actualRows3502=WordField.canonicalRows actualModulus 3502 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3502 : actualRows3502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3502=2820 := by core033_kernel_decide
theorem rows3503 : actualRows3503=WordField.canonicalRows actualModulus 3503 (.bnot 3502) := by core033_kernel_decide
theorem stats3503 : actualRows3503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3503=6276 := by core033_kernel_decide
theorem rows3504 : actualRows3504=WordField.canonicalRows actualModulus 3504 (.badd 3501 3503) := by core033_kernel_decide
theorem stats3504 : actualRows3504.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3504=5388 := by core033_kernel_decide
theorem rows3505 : actualRows3505=WordField.canonicalRows actualModulus 3505 (.bnot 3504) := by core033_kernel_decide
theorem stats3505 : actualRows3505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3505=6276 := by core033_kernel_decide
theorem rows3506 : actualRows3506=WordField.canonicalRows actualModulus 3506 (.band 3499 3505) := by core033_kernel_decide
theorem stats3506 : actualRows3506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3506=5124 := by core033_kernel_decide
theorem rows3507 : actualRows3507=WordField.canonicalRows actualModulus 3507 (.bxor 3494 3506) := by core033_kernel_decide
theorem stats3507 : actualRows3507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3507=7428 := by core033_kernel_decide
theorem rows3508 : actualRows3508=WordField.canonicalRows actualModulus 3508 (.shr 3507 31) := by core033_kernel_decide
theorem stats3508 : actualRows3508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3508=2892 := by core033_kernel_decide
theorem rows3509 : actualRows3509=WordField.canonicalRows actualModulus 3509 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3509 : actualRows3509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3509=2892 := by core033_kernel_decide
def partRows52 : List R1CS.Row := actualRows3446++actualRows3447++actualRows3448++actualRows3449++actualRows3450++actualRows3451++actualRows3452++actualRows3453++actualRows3454++actualRows3455++actualRows3456++actualRows3457++actualRows3458++actualRows3459++actualRows3460++actualRows3461++actualRows3462++actualRows3463++actualRows3464++actualRows3465++actualRows3466++actualRows3467++actualRows3468++actualRows3469++actualRows3470++actualRows3471++actualRows3472++actualRows3473++actualRows3474++actualRows3475++actualRows3476++actualRows3477++actualRows3478++actualRows3479++actualRows3480++actualRows3481++actualRows3482++actualRows3483++actualRows3484++actualRows3485++actualRows3486++actualRows3487++actualRows3488++actualRows3489++actualRows3490++actualRows3491++actualRows3492++actualRows3493++actualRows3494++actualRows3495++actualRows3496++actualRows3497++actualRows3498++actualRows3499++actualRows3500++actualRows3501++actualRows3502++actualRows3503++actualRows3504++actualRows3505++actualRows3506++actualRows3507++actualRows3508++actualRows3509
def partOps52 : List WordIR.Op := [.bxor 3443 3445,.literal (BitVec.ofNat 32 2),.bxor 1299 3447,.literal (BitVec.ofNat 32 0),.bnot 3449,.badd 3448 3450,.bnot 3451,.band 3446 3452,.bxor 3441 3453,.shr 3454 31,.literal (BitVec.ofNat 32 1),.bxor 3455 3456,.bnot 3457,.literal (BitVec.ofNat 32 1),.badd 3458 3459,.band 3460 1750,.literal (BitVec.ofNat 32 2),.bxor 1299 3462,.literal (BitVec.ofNat 32 0),.bnot 3464,.band 3463 3465,.literal (BitVec.ofNat 32 2),.bxor 1299 3467,.literal (BitVec.ofNat 32 0),.bnot 3469,.bxor 3468 3470,.literal (BitVec.ofNat 32 2),.bxor 1299 3472,.literal (BitVec.ofNat 32 0),.bnot 3474,.badd 3473 3475,.bnot 3476,.band 3471 3477,.bxor 3466 3478,.shr 3479 31,.literal (BitVec.ofNat 32 1),.bxor 3480 3481,.bnot 3482,.literal (BitVec.ofNat 32 1),.badd 3483 3484,.bnot 3485,.literal (BitVec.ofNat 32 528734635),.band 3486 3487,.bxor 3461 3488,.literal (BitVec.ofNat 32 2),.bxor 1299 3490,.literal (BitVec.ofNat 32 0),.bnot 3492,.band 3491 3493,.literal (BitVec.ofNat 32 2),.bxor 1299 3495,.literal (BitVec.ofNat 32 0),.bnot 3497,.bxor 3496 3498,.literal (BitVec.ofNat 32 2),.bxor 1299 3500,.literal (BitVec.ofNat 32 0),.bnot 3502,.badd 3501 3503,.bnot 3504,.band 3499 3505,.bxor 3494 3506,.shr 3507 31,.literal (BitVec.ofNat 32 1)]
theorem partExact52 : partRows52=WordField.rows actualModulus 3446 partOps52 := by
  simp only [partRows52,partOps52,WordField.rows,rows3446,rows3447,rows3448,rows3449,rows3450,rows3451,rows3452,rows3453,rows3454,rows3455,rows3456,rows3457,rows3458,rows3459,rows3460,rows3461,rows3462,rows3463,rows3464,rows3465,rows3466,rows3467,rows3468,rows3469,rows3470,rows3471,rows3472,rows3473,rows3474,rows3475,rows3476,rows3477,rows3478,rows3479,rows3480,rows3481,rows3482,rows3483,rows3484,rows3485,rows3486,rows3487,rows3488,rows3489,rows3490,rows3491,rows3492,rows3493,rows3494,rows3495,rows3496,rows3497,rows3498,rows3499,rows3500,rows3501,rows3502,rows3503,rows3504,rows3505,rows3506,rows3507,rows3508,rows3509,List.append_assoc,List.append_nil]
theorem partLength52 : partOps52.length=64 := by decide
theorem partStats52 : partRows52.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows52=330480 := by
  simp only [partRows52,List.length_append,MatrixRowBlocks.rows_weight_append,stats3446.1,stats3446.2,stats3447.1,stats3447.2,stats3448.1,stats3448.2,stats3449.1,stats3449.2,stats3450.1,stats3450.2,stats3451.1,stats3451.2,stats3452.1,stats3452.2,stats3453.1,stats3453.2,stats3454.1,stats3454.2,stats3455.1,stats3455.2,stats3456.1,stats3456.2,stats3457.1,stats3457.2,stats3458.1,stats3458.2,stats3459.1,stats3459.2,stats3460.1,stats3460.2,stats3461.1,stats3461.2,stats3462.1,stats3462.2,stats3463.1,stats3463.2,stats3464.1,stats3464.2,stats3465.1,stats3465.2,stats3466.1,stats3466.2,stats3467.1,stats3467.2,stats3468.1,stats3468.2,stats3469.1,stats3469.2,stats3470.1,stats3470.2,stats3471.1,stats3471.2,stats3472.1,stats3472.2,stats3473.1,stats3473.2,stats3474.1,stats3474.2,stats3475.1,stats3475.2,stats3476.1,stats3476.2,stats3477.1,stats3477.2,stats3478.1,stats3478.2,stats3479.1,stats3479.2,stats3480.1,stats3480.2,stats3481.1,stats3481.2,stats3482.1,stats3482.2,stats3483.1,stats3483.2,stats3484.1,stats3484.2,stats3485.1,stats3485.2,stats3486.1,stats3486.2,stats3487.1,stats3487.2,stats3488.1,stats3488.2,stats3489.1,stats3489.2,stats3490.1,stats3490.2,stats3491.1,stats3491.2,stats3492.1,stats3492.2,stats3493.1,stats3493.2,stats3494.1,stats3494.2,stats3495.1,stats3495.2,stats3496.1,stats3496.2,stats3497.1,stats3497.2,stats3498.1,stats3498.2,stats3499.1,stats3499.2,stats3500.1,stats3500.2,stats3501.1,stats3501.2,stats3502.1,stats3502.2,stats3503.1,stats3503.2,stats3504.1,stats3504.2,stats3505.1,stats3505.2,stats3506.1,stats3506.2,stats3507.1,stats3507.2,stats3508.1,stats3508.2,stats3509.1,stats3509.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
