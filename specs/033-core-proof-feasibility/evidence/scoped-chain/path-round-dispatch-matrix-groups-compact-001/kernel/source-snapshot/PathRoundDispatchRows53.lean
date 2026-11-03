import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData53
import PathRoundDispatchInstructionMatrixData54
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3435 : actualRows3435=WordField.canonicalRows actualModulus 3435 (.bnot 3434) := by core033_kernel_decide
theorem stats3435 : actualRows3435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3435=6276 := by core033_kernel_decide
theorem rows3436 : actualRows3436=WordField.canonicalRows actualModulus 3436 (.band 3433 3435) := by core033_kernel_decide
theorem stats3436 : actualRows3436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3436=5124 := by core033_kernel_decide
theorem rows3437 : actualRows3437=WordField.canonicalRows actualModulus 3437 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3437 : actualRows3437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3437=2892 := by core033_kernel_decide
theorem rows3438 : actualRows3438=WordField.canonicalRows actualModulus 3438 (.bxor 96 3437) := by core033_kernel_decide
theorem stats3438 : actualRows3438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3438=7428 := by core033_kernel_decide
theorem rows3439 : actualRows3439=WordField.canonicalRows actualModulus 3439 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3439 : actualRows3439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3439=2820 := by core033_kernel_decide
theorem rows3440 : actualRows3440=WordField.canonicalRows actualModulus 3440 (.bnot 3439) := by core033_kernel_decide
theorem stats3440 : actualRows3440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3440=6276 := by core033_kernel_decide
theorem rows3441 : actualRows3441=WordField.canonicalRows actualModulus 3441 (.bxor 3438 3440) := by core033_kernel_decide
theorem stats3441 : actualRows3441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3441=7428 := by core033_kernel_decide
theorem rows3442 : actualRows3442=WordField.canonicalRows actualModulus 3442 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3442 : actualRows3442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3442=2892 := by core033_kernel_decide
theorem rows3443 : actualRows3443=WordField.canonicalRows actualModulus 3443 (.bxor 96 3442) := by core033_kernel_decide
theorem stats3443 : actualRows3443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3443=7428 := by core033_kernel_decide
theorem rows3444 : actualRows3444=WordField.canonicalRows actualModulus 3444 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3444 : actualRows3444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3444=2820 := by core033_kernel_decide
theorem rows3445 : actualRows3445=WordField.canonicalRows actualModulus 3445 (.bnot 3444) := by core033_kernel_decide
theorem stats3445 : actualRows3445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3445=6276 := by core033_kernel_decide
theorem rows3446 : actualRows3446=WordField.canonicalRows actualModulus 3446 (.badd 3443 3445) := by core033_kernel_decide
theorem stats3446 : actualRows3446.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3446=5388 := by core033_kernel_decide
theorem rows3447 : actualRows3447=WordField.canonicalRows actualModulus 3447 (.bnot 3446) := by core033_kernel_decide
theorem stats3447 : actualRows3447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3447=6276 := by core033_kernel_decide
theorem rows3448 : actualRows3448=WordField.canonicalRows actualModulus 3448 (.band 3441 3447) := by core033_kernel_decide
theorem stats3448 : actualRows3448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3448=5124 := by core033_kernel_decide
theorem rows3449 : actualRows3449=WordField.canonicalRows actualModulus 3449 (.bxor 3436 3448) := by core033_kernel_decide
theorem stats3449 : actualRows3449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3449=7428 := by core033_kernel_decide
theorem rows3450 : actualRows3450=WordField.canonicalRows actualModulus 3450 (.shr 3449 31) := by core033_kernel_decide
theorem stats3450 : actualRows3450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3450=2892 := by core033_kernel_decide
theorem rows3451 : actualRows3451=WordField.canonicalRows actualModulus 3451 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3451 : actualRows3451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3451=2892 := by core033_kernel_decide
theorem rows3452 : actualRows3452=WordField.canonicalRows actualModulus 3452 (.bxor 3450 3451) := by core033_kernel_decide
theorem stats3452 : actualRows3452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3452=7428 := by core033_kernel_decide
theorem rows3453 : actualRows3453=WordField.canonicalRows actualModulus 3453 (.bnot 3452) := by core033_kernel_decide
theorem stats3453 : actualRows3453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3453=6276 := by core033_kernel_decide
theorem rows3454 : actualRows3454=WordField.canonicalRows actualModulus 3454 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3454 : actualRows3454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3454=2892 := by core033_kernel_decide
theorem rows3455 : actualRows3455=WordField.canonicalRows actualModulus 3455 (.badd 3453 3454) := by core033_kernel_decide
theorem stats3455 : actualRows3455.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3455=5388 := by core033_kernel_decide
theorem rows3456 : actualRows3456=WordField.canonicalRows actualModulus 3456 (.band 3455 1556) := by core033_kernel_decide
theorem stats3456 : actualRows3456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3456=5124 := by core033_kernel_decide
theorem rows3457 : actualRows3457=WordField.canonicalRows actualModulus 3457 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3457 : actualRows3457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3457=2892 := by core033_kernel_decide
theorem rows3458 : actualRows3458=WordField.canonicalRows actualModulus 3458 (.bxor 96 3457) := by core033_kernel_decide
theorem stats3458 : actualRows3458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3458=7428 := by core033_kernel_decide
theorem rows3459 : actualRows3459=WordField.canonicalRows actualModulus 3459 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3459 : actualRows3459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3459=2820 := by core033_kernel_decide
theorem rows3460 : actualRows3460=WordField.canonicalRows actualModulus 3460 (.bnot 3459) := by core033_kernel_decide
theorem stats3460 : actualRows3460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3460=6276 := by core033_kernel_decide
theorem rows3461 : actualRows3461=WordField.canonicalRows actualModulus 3461 (.band 3458 3460) := by core033_kernel_decide
theorem stats3461 : actualRows3461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3461=5124 := by core033_kernel_decide
theorem rows3462 : actualRows3462=WordField.canonicalRows actualModulus 3462 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3462 : actualRows3462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3462=2892 := by core033_kernel_decide
theorem rows3463 : actualRows3463=WordField.canonicalRows actualModulus 3463 (.bxor 96 3462) := by core033_kernel_decide
theorem stats3463 : actualRows3463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3463=7428 := by core033_kernel_decide
theorem rows3464 : actualRows3464=WordField.canonicalRows actualModulus 3464 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3464 : actualRows3464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3464=2820 := by core033_kernel_decide
theorem rows3465 : actualRows3465=WordField.canonicalRows actualModulus 3465 (.bnot 3464) := by core033_kernel_decide
theorem stats3465 : actualRows3465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3465=6276 := by core033_kernel_decide
theorem rows3466 : actualRows3466=WordField.canonicalRows actualModulus 3466 (.bxor 3463 3465) := by core033_kernel_decide
theorem stats3466 : actualRows3466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3466=7428 := by core033_kernel_decide
theorem rows3467 : actualRows3467=WordField.canonicalRows actualModulus 3467 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3467 : actualRows3467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3467=2892 := by core033_kernel_decide
theorem rows3468 : actualRows3468=WordField.canonicalRows actualModulus 3468 (.bxor 96 3467) := by core033_kernel_decide
theorem stats3468 : actualRows3468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3468=7428 := by core033_kernel_decide
theorem rows3469 : actualRows3469=WordField.canonicalRows actualModulus 3469 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3469 : actualRows3469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3469=2820 := by core033_kernel_decide
theorem rows3470 : actualRows3470=WordField.canonicalRows actualModulus 3470 (.bnot 3469) := by core033_kernel_decide
theorem stats3470 : actualRows3470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3470=6276 := by core033_kernel_decide
theorem rows3471 : actualRows3471=WordField.canonicalRows actualModulus 3471 (.badd 3468 3470) := by core033_kernel_decide
theorem stats3471 : actualRows3471.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3471=5388 := by core033_kernel_decide
theorem rows3472 : actualRows3472=WordField.canonicalRows actualModulus 3472 (.bnot 3471) := by core033_kernel_decide
theorem stats3472 : actualRows3472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3472=6276 := by core033_kernel_decide
theorem rows3473 : actualRows3473=WordField.canonicalRows actualModulus 3473 (.band 3466 3472) := by core033_kernel_decide
theorem stats3473 : actualRows3473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3473=5124 := by core033_kernel_decide
theorem rows3474 : actualRows3474=WordField.canonicalRows actualModulus 3474 (.bxor 3461 3473) := by core033_kernel_decide
theorem stats3474 : actualRows3474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3474=7428 := by core033_kernel_decide
theorem rows3475 : actualRows3475=WordField.canonicalRows actualModulus 3475 (.shr 3474 31) := by core033_kernel_decide
theorem stats3475 : actualRows3475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3475=2892 := by core033_kernel_decide
theorem rows3476 : actualRows3476=WordField.canonicalRows actualModulus 3476 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3476 : actualRows3476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3476=2892 := by core033_kernel_decide
theorem rows3477 : actualRows3477=WordField.canonicalRows actualModulus 3477 (.bxor 3475 3476) := by core033_kernel_decide
theorem stats3477 : actualRows3477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3477=7428 := by core033_kernel_decide
theorem rows3478 : actualRows3478=WordField.canonicalRows actualModulus 3478 (.bnot 3477) := by core033_kernel_decide
theorem stats3478 : actualRows3478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3478=6276 := by core033_kernel_decide
theorem rows3479 : actualRows3479=WordField.canonicalRows actualModulus 3479 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3479 : actualRows3479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3479=2892 := by core033_kernel_decide
theorem rows3480 : actualRows3480=WordField.canonicalRows actualModulus 3480 (.badd 3478 3479) := by core033_kernel_decide
theorem stats3480 : actualRows3480.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3480=5388 := by core033_kernel_decide
theorem rows3481 : actualRows3481=WordField.canonicalRows actualModulus 3481 (.bnot 3480) := by core033_kernel_decide
theorem stats3481 : actualRows3481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3481=6276 := by core033_kernel_decide
theorem rows3482 : actualRows3482=WordField.canonicalRows actualModulus 3482 (.band 3481 1364) := by core033_kernel_decide
theorem stats3482 : actualRows3482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3482=5124 := by core033_kernel_decide
theorem rows3483 : actualRows3483=WordField.canonicalRows actualModulus 3483 (.bxor 3456 3482) := by core033_kernel_decide
theorem stats3483 : actualRows3483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3483=7428 := by core033_kernel_decide
theorem rows3484 : actualRows3484=WordField.canonicalRows actualModulus 3484 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3484 : actualRows3484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3484=2892 := by core033_kernel_decide
theorem rows3485 : actualRows3485=WordField.canonicalRows actualModulus 3485 (.bxor 96 3484) := by core033_kernel_decide
theorem stats3485 : actualRows3485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3485=7428 := by core033_kernel_decide
theorem rows3486 : actualRows3486=WordField.canonicalRows actualModulus 3486 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3486 : actualRows3486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3486=2820 := by core033_kernel_decide
theorem rows3487 : actualRows3487=WordField.canonicalRows actualModulus 3487 (.bnot 3486) := by core033_kernel_decide
theorem stats3487 : actualRows3487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3487=6276 := by core033_kernel_decide
theorem rows3488 : actualRows3488=WordField.canonicalRows actualModulus 3488 (.band 3485 3487) := by core033_kernel_decide
theorem stats3488 : actualRows3488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3488=5124 := by core033_kernel_decide
theorem rows3489 : actualRows3489=WordField.canonicalRows actualModulus 3489 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3489 : actualRows3489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3489=2892 := by core033_kernel_decide
theorem rows3490 : actualRows3490=WordField.canonicalRows actualModulus 3490 (.bxor 96 3489) := by core033_kernel_decide
theorem stats3490 : actualRows3490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3490=7428 := by core033_kernel_decide
theorem rows3491 : actualRows3491=WordField.canonicalRows actualModulus 3491 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3491 : actualRows3491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3491=2820 := by core033_kernel_decide
theorem rows3492 : actualRows3492=WordField.canonicalRows actualModulus 3492 (.bnot 3491) := by core033_kernel_decide
theorem stats3492 : actualRows3492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3492=6276 := by core033_kernel_decide
theorem rows3493 : actualRows3493=WordField.canonicalRows actualModulus 3493 (.bxor 3490 3492) := by core033_kernel_decide
theorem stats3493 : actualRows3493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3493=7428 := by core033_kernel_decide
theorem rows3494 : actualRows3494=WordField.canonicalRows actualModulus 3494 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3494 : actualRows3494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3494=2892 := by core033_kernel_decide
theorem rows3495 : actualRows3495=WordField.canonicalRows actualModulus 3495 (.bxor 96 3494) := by core033_kernel_decide
theorem stats3495 : actualRows3495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3495=7428 := by core033_kernel_decide
theorem rows3496 : actualRows3496=WordField.canonicalRows actualModulus 3496 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3496 : actualRows3496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3496=2820 := by core033_kernel_decide
theorem rows3497 : actualRows3497=WordField.canonicalRows actualModulus 3497 (.bnot 3496) := by core033_kernel_decide
theorem stats3497 : actualRows3497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3497=6276 := by core033_kernel_decide
theorem rows3498 : actualRows3498=WordField.canonicalRows actualModulus 3498 (.badd 3495 3497) := by core033_kernel_decide
theorem stats3498 : actualRows3498.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3498=5388 := by core033_kernel_decide
def partRows53 : List R1CS.Row := actualRows3435++actualRows3436++actualRows3437++actualRows3438++actualRows3439++actualRows3440++actualRows3441++actualRows3442++actualRows3443++actualRows3444++actualRows3445++actualRows3446++actualRows3447++actualRows3448++actualRows3449++actualRows3450++actualRows3451++actualRows3452++actualRows3453++actualRows3454++actualRows3455++actualRows3456++actualRows3457++actualRows3458++actualRows3459++actualRows3460++actualRows3461++actualRows3462++actualRows3463++actualRows3464++actualRows3465++actualRows3466++actualRows3467++actualRows3468++actualRows3469++actualRows3470++actualRows3471++actualRows3472++actualRows3473++actualRows3474++actualRows3475++actualRows3476++actualRows3477++actualRows3478++actualRows3479++actualRows3480++actualRows3481++actualRows3482++actualRows3483++actualRows3484++actualRows3485++actualRows3486++actualRows3487++actualRows3488++actualRows3489++actualRows3490++actualRows3491++actualRows3492++actualRows3493++actualRows3494++actualRows3495++actualRows3496++actualRows3497++actualRows3498
def partOps53 : List WordIR.Op := [.bnot 3434,.band 3433 3435,.literal (BitVec.ofNat 32 2),.bxor 96 3437,.literal (BitVec.ofNat 32 0),.bnot 3439,.bxor 3438 3440,.literal (BitVec.ofNat 32 2),.bxor 96 3442,.literal (BitVec.ofNat 32 0),.bnot 3444,.badd 3443 3445,.bnot 3446,.band 3441 3447,.bxor 3436 3448,.shr 3449 31,.literal (BitVec.ofNat 32 1),.bxor 3450 3451,.bnot 3452,.literal (BitVec.ofNat 32 1),.badd 3453 3454,.band 3455 1556,.literal (BitVec.ofNat 32 2),.bxor 96 3457,.literal (BitVec.ofNat 32 0),.bnot 3459,.band 3458 3460,.literal (BitVec.ofNat 32 2),.bxor 96 3462,.literal (BitVec.ofNat 32 0),.bnot 3464,.bxor 3463 3465,.literal (BitVec.ofNat 32 2),.bxor 96 3467,.literal (BitVec.ofNat 32 0),.bnot 3469,.badd 3468 3470,.bnot 3471,.band 3466 3472,.bxor 3461 3473,.shr 3474 31,.literal (BitVec.ofNat 32 1),.bxor 3475 3476,.bnot 3477,.literal (BitVec.ofNat 32 1),.badd 3478 3479,.bnot 3480,.band 3481 1364,.bxor 3456 3482,.literal (BitVec.ofNat 32 2),.bxor 96 3484,.literal (BitVec.ofNat 32 0),.bnot 3486,.band 3485 3487,.literal (BitVec.ofNat 32 2),.bxor 96 3489,.literal (BitVec.ofNat 32 0),.bnot 3491,.bxor 3490 3492,.literal (BitVec.ofNat 32 2),.bxor 96 3494,.literal (BitVec.ofNat 32 0),.bnot 3496,.badd 3495 3497]
theorem partExact53 : partRows53=WordField.rows actualModulus 3435 partOps53 := by
  simp only [partRows53,partOps53,WordField.rows,rows3435,rows3436,rows3437,rows3438,rows3439,rows3440,rows3441,rows3442,rows3443,rows3444,rows3445,rows3446,rows3447,rows3448,rows3449,rows3450,rows3451,rows3452,rows3453,rows3454,rows3455,rows3456,rows3457,rows3458,rows3459,rows3460,rows3461,rows3462,rows3463,rows3464,rows3465,rows3466,rows3467,rows3468,rows3469,rows3470,rows3471,rows3472,rows3473,rows3474,rows3475,rows3476,rows3477,rows3478,rows3479,rows3480,rows3481,rows3482,rows3483,rows3484,rows3485,rows3486,rows3487,rows3488,rows3489,rows3490,rows3491,rows3492,rows3493,rows3494,rows3495,rows3496,rows3497,rows3498,List.append_assoc,List.append_nil]
theorem partLength53 : partOps53.length=64 := by decide
theorem partStats53 : partRows53.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows53=332568 := by
  simp only [partRows53,List.length_append,MatrixRowBlocks.rows_weight_append,stats3435.1,stats3435.2,stats3436.1,stats3436.2,stats3437.1,stats3437.2,stats3438.1,stats3438.2,stats3439.1,stats3439.2,stats3440.1,stats3440.2,stats3441.1,stats3441.2,stats3442.1,stats3442.2,stats3443.1,stats3443.2,stats3444.1,stats3444.2,stats3445.1,stats3445.2,stats3446.1,stats3446.2,stats3447.1,stats3447.2,stats3448.1,stats3448.2,stats3449.1,stats3449.2,stats3450.1,stats3450.2,stats3451.1,stats3451.2,stats3452.1,stats3452.2,stats3453.1,stats3453.2,stats3454.1,stats3454.2,stats3455.1,stats3455.2,stats3456.1,stats3456.2,stats3457.1,stats3457.2,stats3458.1,stats3458.2,stats3459.1,stats3459.2,stats3460.1,stats3460.2,stats3461.1,stats3461.2,stats3462.1,stats3462.2,stats3463.1,stats3463.2,stats3464.1,stats3464.2,stats3465.1,stats3465.2,stats3466.1,stats3466.2,stats3467.1,stats3467.2,stats3468.1,stats3468.2,stats3469.1,stats3469.2,stats3470.1,stats3470.2,stats3471.1,stats3471.2,stats3472.1,stats3472.2,stats3473.1,stats3473.2,stats3474.1,stats3474.2,stats3475.1,stats3475.2,stats3476.1,stats3476.2,stats3477.1,stats3477.2,stats3478.1,stats3478.2,stats3479.1,stats3479.2,stats3480.1,stats3480.2,stats3481.1,stats3481.2,stats3482.1,stats3482.2,stats3483.1,stats3483.2,stats3484.1,stats3484.2,stats3485.1,stats3485.2,stats3486.1,stats3486.2,stats3487.1,stats3487.2,stats3488.1,stats3488.2,stats3489.1,stats3489.2,stats3490.1,stats3490.2,stats3491.1,stats3491.2,stats3492.1,stats3492.2,stats3493.1,stats3493.2,stats3494.1,stats3494.2,stats3495.1,stats3495.2,stats3496.1,stats3496.2,stats3497.1,stats3497.2,stats3498.1,stats3498.2]
  decide
end PathRoundDispatchCheckedRows
