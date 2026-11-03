import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData53
import FrameHashControllerInstructionMatrixData54
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3435 : actualRows3435=WordField.canonicalRows actualModulus 3435 (.bxor 3408 3434) := by core033_kernel_decide
theorem stats3435 : actualRows3435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3435=7428 := by core033_kernel_decide
theorem rows3436 : actualRows3436=WordField.canonicalRows actualModulus 3436 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3436 : actualRows3436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3436=2892 := by core033_kernel_decide
theorem rows3437 : actualRows3437=WordField.canonicalRows actualModulus 3437 (.bxor 0 3436) := by core033_kernel_decide
theorem stats3437 : actualRows3437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3437=7428 := by core033_kernel_decide
theorem rows3438 : actualRows3438=WordField.canonicalRows actualModulus 3438 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3438 : actualRows3438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3438=2820 := by core033_kernel_decide
theorem rows3439 : actualRows3439=WordField.canonicalRows actualModulus 3439 (.bnot 3438) := by core033_kernel_decide
theorem stats3439 : actualRows3439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3439=6276 := by core033_kernel_decide
theorem rows3440 : actualRows3440=WordField.canonicalRows actualModulus 3440 (.band 3437 3439) := by core033_kernel_decide
theorem stats3440 : actualRows3440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3440=5124 := by core033_kernel_decide
theorem rows3441 : actualRows3441=WordField.canonicalRows actualModulus 3441 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3441 : actualRows3441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3441=2892 := by core033_kernel_decide
theorem rows3442 : actualRows3442=WordField.canonicalRows actualModulus 3442 (.bxor 0 3441) := by core033_kernel_decide
theorem stats3442 : actualRows3442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3442=7428 := by core033_kernel_decide
theorem rows3443 : actualRows3443=WordField.canonicalRows actualModulus 3443 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3443 : actualRows3443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3443=2820 := by core033_kernel_decide
theorem rows3444 : actualRows3444=WordField.canonicalRows actualModulus 3444 (.bnot 3443) := by core033_kernel_decide
theorem stats3444 : actualRows3444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3444=6276 := by core033_kernel_decide
theorem rows3445 : actualRows3445=WordField.canonicalRows actualModulus 3445 (.bxor 3442 3444) := by core033_kernel_decide
theorem stats3445 : actualRows3445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3445=7428 := by core033_kernel_decide
theorem rows3446 : actualRows3446=WordField.canonicalRows actualModulus 3446 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3446 : actualRows3446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3446=2892 := by core033_kernel_decide
theorem rows3447 : actualRows3447=WordField.canonicalRows actualModulus 3447 (.bxor 0 3446) := by core033_kernel_decide
theorem stats3447 : actualRows3447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3447=7428 := by core033_kernel_decide
theorem rows3448 : actualRows3448=WordField.canonicalRows actualModulus 3448 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3448 : actualRows3448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3448=2820 := by core033_kernel_decide
theorem rows3449 : actualRows3449=WordField.canonicalRows actualModulus 3449 (.bnot 3448) := by core033_kernel_decide
theorem stats3449 : actualRows3449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3449=6276 := by core033_kernel_decide
theorem rows3450 : actualRows3450=WordField.canonicalRows actualModulus 3450 (.badd 3447 3449) := by core033_kernel_decide
theorem stats3450 : actualRows3450.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3450=5388 := by core033_kernel_decide
theorem rows3451 : actualRows3451=WordField.canonicalRows actualModulus 3451 (.bnot 3450) := by core033_kernel_decide
theorem stats3451 : actualRows3451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3451=6276 := by core033_kernel_decide
theorem rows3452 : actualRows3452=WordField.canonicalRows actualModulus 3452 (.band 3445 3451) := by core033_kernel_decide
theorem stats3452 : actualRows3452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3452=5124 := by core033_kernel_decide
theorem rows3453 : actualRows3453=WordField.canonicalRows actualModulus 3453 (.bxor 3440 3452) := by core033_kernel_decide
theorem stats3453 : actualRows3453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3453=7428 := by core033_kernel_decide
theorem rows3454 : actualRows3454=WordField.canonicalRows actualModulus 3454 (.shr 3453 31) := by core033_kernel_decide
theorem stats3454 : actualRows3454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3454=2892 := by core033_kernel_decide
theorem rows3455 : actualRows3455=WordField.canonicalRows actualModulus 3455 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3455 : actualRows3455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3455=2892 := by core033_kernel_decide
theorem rows3456 : actualRows3456=WordField.canonicalRows actualModulus 3456 (.bxor 3454 3455) := by core033_kernel_decide
theorem stats3456 : actualRows3456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3456=7428 := by core033_kernel_decide
theorem rows3457 : actualRows3457=WordField.canonicalRows actualModulus 3457 (.bnot 3456) := by core033_kernel_decide
theorem stats3457 : actualRows3457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3457=6276 := by core033_kernel_decide
theorem rows3458 : actualRows3458=WordField.canonicalRows actualModulus 3458 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3458 : actualRows3458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3458=2892 := by core033_kernel_decide
theorem rows3459 : actualRows3459=WordField.canonicalRows actualModulus 3459 (.badd 3457 3458) := by core033_kernel_decide
theorem stats3459 : actualRows3459.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3459=5388 := by core033_kernel_decide
theorem rows3460 : actualRows3460=WordField.canonicalRows actualModulus 3460 (.band 3459 1070) := by core033_kernel_decide
theorem stats3460 : actualRows3460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3460=5124 := by core033_kernel_decide
theorem rows3461 : actualRows3461=WordField.canonicalRows actualModulus 3461 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3461 : actualRows3461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3461=2892 := by core033_kernel_decide
theorem rows3462 : actualRows3462=WordField.canonicalRows actualModulus 3462 (.bxor 0 3461) := by core033_kernel_decide
theorem stats3462 : actualRows3462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3462=7428 := by core033_kernel_decide
theorem rows3463 : actualRows3463=WordField.canonicalRows actualModulus 3463 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3463 : actualRows3463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3463=2820 := by core033_kernel_decide
theorem rows3464 : actualRows3464=WordField.canonicalRows actualModulus 3464 (.bnot 3463) := by core033_kernel_decide
theorem stats3464 : actualRows3464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3464=6276 := by core033_kernel_decide
theorem rows3465 : actualRows3465=WordField.canonicalRows actualModulus 3465 (.band 3462 3464) := by core033_kernel_decide
theorem stats3465 : actualRows3465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3465=5124 := by core033_kernel_decide
theorem rows3466 : actualRows3466=WordField.canonicalRows actualModulus 3466 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3466 : actualRows3466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3466=2892 := by core033_kernel_decide
theorem rows3467 : actualRows3467=WordField.canonicalRows actualModulus 3467 (.bxor 0 3466) := by core033_kernel_decide
theorem stats3467 : actualRows3467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3467=7428 := by core033_kernel_decide
theorem rows3468 : actualRows3468=WordField.canonicalRows actualModulus 3468 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3468 : actualRows3468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3468=2820 := by core033_kernel_decide
theorem rows3469 : actualRows3469=WordField.canonicalRows actualModulus 3469 (.bnot 3468) := by core033_kernel_decide
theorem stats3469 : actualRows3469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3469=6276 := by core033_kernel_decide
theorem rows3470 : actualRows3470=WordField.canonicalRows actualModulus 3470 (.bxor 3467 3469) := by core033_kernel_decide
theorem stats3470 : actualRows3470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3470=7428 := by core033_kernel_decide
theorem rows3471 : actualRows3471=WordField.canonicalRows actualModulus 3471 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3471 : actualRows3471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3471=2892 := by core033_kernel_decide
theorem rows3472 : actualRows3472=WordField.canonicalRows actualModulus 3472 (.bxor 0 3471) := by core033_kernel_decide
theorem stats3472 : actualRows3472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3472=7428 := by core033_kernel_decide
theorem rows3473 : actualRows3473=WordField.canonicalRows actualModulus 3473 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3473 : actualRows3473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3473=2820 := by core033_kernel_decide
theorem rows3474 : actualRows3474=WordField.canonicalRows actualModulus 3474 (.bnot 3473) := by core033_kernel_decide
theorem stats3474 : actualRows3474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3474=6276 := by core033_kernel_decide
theorem rows3475 : actualRows3475=WordField.canonicalRows actualModulus 3475 (.badd 3472 3474) := by core033_kernel_decide
theorem stats3475 : actualRows3475.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3475=5388 := by core033_kernel_decide
theorem rows3476 : actualRows3476=WordField.canonicalRows actualModulus 3476 (.bnot 3475) := by core033_kernel_decide
theorem stats3476 : actualRows3476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3476=6276 := by core033_kernel_decide
theorem rows3477 : actualRows3477=WordField.canonicalRows actualModulus 3477 (.band 3470 3476) := by core033_kernel_decide
theorem stats3477 : actualRows3477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3477=5124 := by core033_kernel_decide
theorem rows3478 : actualRows3478=WordField.canonicalRows actualModulus 3478 (.bxor 3465 3477) := by core033_kernel_decide
theorem stats3478 : actualRows3478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3478=7428 := by core033_kernel_decide
theorem rows3479 : actualRows3479=WordField.canonicalRows actualModulus 3479 (.shr 3478 31) := by core033_kernel_decide
theorem stats3479 : actualRows3479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3479=2892 := by core033_kernel_decide
theorem rows3480 : actualRows3480=WordField.canonicalRows actualModulus 3480 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3480 : actualRows3480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3480=2892 := by core033_kernel_decide
theorem rows3481 : actualRows3481=WordField.canonicalRows actualModulus 3481 (.bxor 3479 3480) := by core033_kernel_decide
theorem stats3481 : actualRows3481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3481=7428 := by core033_kernel_decide
theorem rows3482 : actualRows3482=WordField.canonicalRows actualModulus 3482 (.bnot 3481) := by core033_kernel_decide
theorem stats3482 : actualRows3482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3482=6276 := by core033_kernel_decide
theorem rows3483 : actualRows3483=WordField.canonicalRows actualModulus 3483 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3483 : actualRows3483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3483=2892 := by core033_kernel_decide
theorem rows3484 : actualRows3484=WordField.canonicalRows actualModulus 3484 (.badd 3482 3483) := by core033_kernel_decide
theorem stats3484 : actualRows3484.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3484=5388 := by core033_kernel_decide
theorem rows3485 : actualRows3485=WordField.canonicalRows actualModulus 3485 (.bnot 3484) := by core033_kernel_decide
theorem stats3485 : actualRows3485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3485=6276 := by core033_kernel_decide
theorem rows3486 : actualRows3486=WordField.canonicalRows actualModulus 3486 (.band 3485 878) := by core033_kernel_decide
theorem stats3486 : actualRows3486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3486=5124 := by core033_kernel_decide
theorem rows3487 : actualRows3487=WordField.canonicalRows actualModulus 3487 (.bxor 3460 3486) := by core033_kernel_decide
theorem stats3487 : actualRows3487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3487=7428 := by core033_kernel_decide
theorem rows3488 : actualRows3488=WordField.canonicalRows actualModulus 3488 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3488 : actualRows3488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3488=2892 := by core033_kernel_decide
theorem rows3489 : actualRows3489=WordField.canonicalRows actualModulus 3489 (.bxor 0 3488) := by core033_kernel_decide
theorem stats3489 : actualRows3489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3489=7428 := by core033_kernel_decide
theorem rows3490 : actualRows3490=WordField.canonicalRows actualModulus 3490 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3490 : actualRows3490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3490=2820 := by core033_kernel_decide
theorem rows3491 : actualRows3491=WordField.canonicalRows actualModulus 3491 (.bnot 3490) := by core033_kernel_decide
theorem stats3491 : actualRows3491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3491=6276 := by core033_kernel_decide
theorem rows3492 : actualRows3492=WordField.canonicalRows actualModulus 3492 (.band 3489 3491) := by core033_kernel_decide
theorem stats3492 : actualRows3492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3492=5124 := by core033_kernel_decide
theorem rows3493 : actualRows3493=WordField.canonicalRows actualModulus 3493 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3493 : actualRows3493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3493=2892 := by core033_kernel_decide
theorem rows3494 : actualRows3494=WordField.canonicalRows actualModulus 3494 (.bxor 0 3493) := by core033_kernel_decide
theorem stats3494 : actualRows3494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3494=7428 := by core033_kernel_decide
theorem rows3495 : actualRows3495=WordField.canonicalRows actualModulus 3495 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3495 : actualRows3495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3495=2820 := by core033_kernel_decide
theorem rows3496 : actualRows3496=WordField.canonicalRows actualModulus 3496 (.bnot 3495) := by core033_kernel_decide
theorem stats3496 : actualRows3496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3496=6276 := by core033_kernel_decide
theorem rows3497 : actualRows3497=WordField.canonicalRows actualModulus 3497 (.bxor 3494 3496) := by core033_kernel_decide
theorem stats3497 : actualRows3497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3497=7428 := by core033_kernel_decide
theorem rows3498 : actualRows3498=WordField.canonicalRows actualModulus 3498 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3498 : actualRows3498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3498=2892 := by core033_kernel_decide
def partRows53 : List R1CS.Row := actualRows3435++actualRows3436++actualRows3437++actualRows3438++actualRows3439++actualRows3440++actualRows3441++actualRows3442++actualRows3443++actualRows3444++actualRows3445++actualRows3446++actualRows3447++actualRows3448++actualRows3449++actualRows3450++actualRows3451++actualRows3452++actualRows3453++actualRows3454++actualRows3455++actualRows3456++actualRows3457++actualRows3458++actualRows3459++actualRows3460++actualRows3461++actualRows3462++actualRows3463++actualRows3464++actualRows3465++actualRows3466++actualRows3467++actualRows3468++actualRows3469++actualRows3470++actualRows3471++actualRows3472++actualRows3473++actualRows3474++actualRows3475++actualRows3476++actualRows3477++actualRows3478++actualRows3479++actualRows3480++actualRows3481++actualRows3482++actualRows3483++actualRows3484++actualRows3485++actualRows3486++actualRows3487++actualRows3488++actualRows3489++actualRows3490++actualRows3491++actualRows3492++actualRows3493++actualRows3494++actualRows3495++actualRows3496++actualRows3497++actualRows3498
def partOps53 : List WordIR.Op := [.bxor 3408 3434,.literal (BitVec.ofNat 32 2),.bxor 0 3436,.literal (BitVec.ofNat 32 0),.bnot 3438,.band 3437 3439,.literal (BitVec.ofNat 32 2),.bxor 0 3441,.literal (BitVec.ofNat 32 0),.bnot 3443,.bxor 3442 3444,.literal (BitVec.ofNat 32 2),.bxor 0 3446,.literal (BitVec.ofNat 32 0),.bnot 3448,.badd 3447 3449,.bnot 3450,.band 3445 3451,.bxor 3440 3452,.shr 3453 31,.literal (BitVec.ofNat 32 1),.bxor 3454 3455,.bnot 3456,.literal (BitVec.ofNat 32 1),.badd 3457 3458,.band 3459 1070,.literal (BitVec.ofNat 32 2),.bxor 0 3461,.literal (BitVec.ofNat 32 0),.bnot 3463,.band 3462 3464,.literal (BitVec.ofNat 32 2),.bxor 0 3466,.literal (BitVec.ofNat 32 0),.bnot 3468,.bxor 3467 3469,.literal (BitVec.ofNat 32 2),.bxor 0 3471,.literal (BitVec.ofNat 32 0),.bnot 3473,.badd 3472 3474,.bnot 3475,.band 3470 3476,.bxor 3465 3477,.shr 3478 31,.literal (BitVec.ofNat 32 1),.bxor 3479 3480,.bnot 3481,.literal (BitVec.ofNat 32 1),.badd 3482 3483,.bnot 3484,.band 3485 878,.bxor 3460 3486,.literal (BitVec.ofNat 32 2),.bxor 0 3488,.literal (BitVec.ofNat 32 0),.bnot 3490,.band 3489 3491,.literal (BitVec.ofNat 32 2),.bxor 0 3493,.literal (BitVec.ofNat 32 0),.bnot 3495,.bxor 3494 3496,.literal (BitVec.ofNat 32 2)]
theorem partExact53 : partRows53=WordField.rows actualModulus 3435 partOps53 := by
  simp only [partRows53,partOps53,WordField.rows,rows3435,rows3436,rows3437,rows3438,rows3439,rows3440,rows3441,rows3442,rows3443,rows3444,rows3445,rows3446,rows3447,rows3448,rows3449,rows3450,rows3451,rows3452,rows3453,rows3454,rows3455,rows3456,rows3457,rows3458,rows3459,rows3460,rows3461,rows3462,rows3463,rows3464,rows3465,rows3466,rows3467,rows3468,rows3469,rows3470,rows3471,rows3472,rows3473,rows3474,rows3475,rows3476,rows3477,rows3478,rows3479,rows3480,rows3481,rows3482,rows3483,rows3484,rows3485,rows3486,rows3487,rows3488,rows3489,rows3490,rows3491,rows3492,rows3493,rows3494,rows3495,rows3496,rows3497,rows3498,List.append_assoc,List.append_nil]
theorem partLength53 : partOps53.length=64 := by decide
theorem partStats53 : partRows53.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows53=331224 := by
  simp only [partRows53,List.length_append,MatrixRowBlocks.rows_weight_append,stats3435.1,stats3435.2,stats3436.1,stats3436.2,stats3437.1,stats3437.2,stats3438.1,stats3438.2,stats3439.1,stats3439.2,stats3440.1,stats3440.2,stats3441.1,stats3441.2,stats3442.1,stats3442.2,stats3443.1,stats3443.2,stats3444.1,stats3444.2,stats3445.1,stats3445.2,stats3446.1,stats3446.2,stats3447.1,stats3447.2,stats3448.1,stats3448.2,stats3449.1,stats3449.2,stats3450.1,stats3450.2,stats3451.1,stats3451.2,stats3452.1,stats3452.2,stats3453.1,stats3453.2,stats3454.1,stats3454.2,stats3455.1,stats3455.2,stats3456.1,stats3456.2,stats3457.1,stats3457.2,stats3458.1,stats3458.2,stats3459.1,stats3459.2,stats3460.1,stats3460.2,stats3461.1,stats3461.2,stats3462.1,stats3462.2,stats3463.1,stats3463.2,stats3464.1,stats3464.2,stats3465.1,stats3465.2,stats3466.1,stats3466.2,stats3467.1,stats3467.2,stats3468.1,stats3468.2,stats3469.1,stats3469.2,stats3470.1,stats3470.2,stats3471.1,stats3471.2,stats3472.1,stats3472.2,stats3473.1,stats3473.2,stats3474.1,stats3474.2,stats3475.1,stats3475.2,stats3476.1,stats3476.2,stats3477.1,stats3477.2,stats3478.1,stats3478.2,stats3479.1,stats3479.2,stats3480.1,stats3480.2,stats3481.1,stats3481.2,stats3482.1,stats3482.2,stats3483.1,stats3483.2,stats3484.1,stats3484.2,stats3485.1,stats3485.2,stats3486.1,stats3486.2,stats3487.1,stats3487.2,stats3488.1,stats3488.2,stats3489.1,stats3489.2,stats3490.1,stats3490.2,stats3491.1,stats3491.2,stats3492.1,stats3492.2,stats3493.1,stats3493.2,stats3494.1,stats3494.2,stats3495.1,stats3495.2,stats3496.1,stats3496.2,stats3497.1,stats3497.2,stats3498.1,stats3498.2]
  decide
end FrameHashControllerCheckedRows
