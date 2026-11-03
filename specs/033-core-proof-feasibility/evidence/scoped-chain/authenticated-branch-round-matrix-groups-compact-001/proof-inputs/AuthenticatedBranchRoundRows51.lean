import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData52
import AuthenticatedBranchRoundInstructionMatrixData53
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3382 : actualRows3382=WordField.canonicalRows actualModulus 3382 (.band 3380 3381) := by core033_kernel_decide
theorem stats3382 : actualRows3382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3382=5124 := by core033_kernel_decide
theorem rows3383 : actualRows3383=WordField.canonicalRows actualModulus 3383 (.bxor 3355 3382) := by core033_kernel_decide
theorem stats3383 : actualRows3383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3383=7428 := by core033_kernel_decide
theorem rows3384 : actualRows3384=WordField.canonicalRows actualModulus 3384 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3384 : actualRows3384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3384=2892 := by core033_kernel_decide
theorem rows3385 : actualRows3385=WordField.canonicalRows actualModulus 3385 (.bxor 1299 3384) := by core033_kernel_decide
theorem stats3385 : actualRows3385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3385=7428 := by core033_kernel_decide
theorem rows3386 : actualRows3386=WordField.canonicalRows actualModulus 3386 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3386 : actualRows3386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3386=2820 := by core033_kernel_decide
theorem rows3387 : actualRows3387=WordField.canonicalRows actualModulus 3387 (.bnot 3386) := by core033_kernel_decide
theorem stats3387 : actualRows3387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3387=6276 := by core033_kernel_decide
theorem rows3388 : actualRows3388=WordField.canonicalRows actualModulus 3388 (.band 3385 3387) := by core033_kernel_decide
theorem stats3388 : actualRows3388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3388=5124 := by core033_kernel_decide
theorem rows3389 : actualRows3389=WordField.canonicalRows actualModulus 3389 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3389 : actualRows3389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3389=2892 := by core033_kernel_decide
theorem rows3390 : actualRows3390=WordField.canonicalRows actualModulus 3390 (.bxor 1299 3389) := by core033_kernel_decide
theorem stats3390 : actualRows3390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3390=7428 := by core033_kernel_decide
theorem rows3391 : actualRows3391=WordField.canonicalRows actualModulus 3391 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3391 : actualRows3391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3391=2820 := by core033_kernel_decide
theorem rows3392 : actualRows3392=WordField.canonicalRows actualModulus 3392 (.bnot 3391) := by core033_kernel_decide
theorem stats3392 : actualRows3392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3392=6276 := by core033_kernel_decide
theorem rows3393 : actualRows3393=WordField.canonicalRows actualModulus 3393 (.bxor 3390 3392) := by core033_kernel_decide
theorem stats3393 : actualRows3393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3393=7428 := by core033_kernel_decide
theorem rows3394 : actualRows3394=WordField.canonicalRows actualModulus 3394 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3394 : actualRows3394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3394=2892 := by core033_kernel_decide
theorem rows3395 : actualRows3395=WordField.canonicalRows actualModulus 3395 (.bxor 1299 3394) := by core033_kernel_decide
theorem stats3395 : actualRows3395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3395=7428 := by core033_kernel_decide
theorem rows3396 : actualRows3396=WordField.canonicalRows actualModulus 3396 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3396 : actualRows3396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3396=2820 := by core033_kernel_decide
theorem rows3397 : actualRows3397=WordField.canonicalRows actualModulus 3397 (.bnot 3396) := by core033_kernel_decide
theorem stats3397 : actualRows3397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3397=6276 := by core033_kernel_decide
theorem rows3398 : actualRows3398=WordField.canonicalRows actualModulus 3398 (.badd 3395 3397) := by core033_kernel_decide
theorem stats3398 : actualRows3398.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3398=5388 := by core033_kernel_decide
theorem rows3399 : actualRows3399=WordField.canonicalRows actualModulus 3399 (.bnot 3398) := by core033_kernel_decide
theorem stats3399 : actualRows3399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3399=6276 := by core033_kernel_decide
theorem rows3400 : actualRows3400=WordField.canonicalRows actualModulus 3400 (.band 3393 3399) := by core033_kernel_decide
theorem stats3400 : actualRows3400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3400=5124 := by core033_kernel_decide
theorem rows3401 : actualRows3401=WordField.canonicalRows actualModulus 3401 (.bxor 3388 3400) := by core033_kernel_decide
theorem stats3401 : actualRows3401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3401=7428 := by core033_kernel_decide
theorem rows3402 : actualRows3402=WordField.canonicalRows actualModulus 3402 (.shr 3401 31) := by core033_kernel_decide
theorem stats3402 : actualRows3402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3402=2892 := by core033_kernel_decide
theorem rows3403 : actualRows3403=WordField.canonicalRows actualModulus 3403 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3403 : actualRows3403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3403=2892 := by core033_kernel_decide
theorem rows3404 : actualRows3404=WordField.canonicalRows actualModulus 3404 (.bxor 3402 3403) := by core033_kernel_decide
theorem stats3404 : actualRows3404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3404=7428 := by core033_kernel_decide
theorem rows3405 : actualRows3405=WordField.canonicalRows actualModulus 3405 (.bnot 3404) := by core033_kernel_decide
theorem stats3405 : actualRows3405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3405=6276 := by core033_kernel_decide
theorem rows3406 : actualRows3406=WordField.canonicalRows actualModulus 3406 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3406 : actualRows3406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3406=2892 := by core033_kernel_decide
theorem rows3407 : actualRows3407=WordField.canonicalRows actualModulus 3407 (.badd 3405 3406) := by core033_kernel_decide
theorem stats3407 : actualRows3407.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3407=5388 := by core033_kernel_decide
theorem rows3408 : actualRows3408=WordField.canonicalRows actualModulus 3408 (.band 3407 1739) := by core033_kernel_decide
theorem stats3408 : actualRows3408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3408=5124 := by core033_kernel_decide
theorem rows3409 : actualRows3409=WordField.canonicalRows actualModulus 3409 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3409 : actualRows3409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3409=2892 := by core033_kernel_decide
theorem rows3410 : actualRows3410=WordField.canonicalRows actualModulus 3410 (.bxor 1299 3409) := by core033_kernel_decide
theorem stats3410 : actualRows3410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3410=7428 := by core033_kernel_decide
theorem rows3411 : actualRows3411=WordField.canonicalRows actualModulus 3411 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3411 : actualRows3411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3411=2820 := by core033_kernel_decide
theorem rows3412 : actualRows3412=WordField.canonicalRows actualModulus 3412 (.bnot 3411) := by core033_kernel_decide
theorem stats3412 : actualRows3412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3412=6276 := by core033_kernel_decide
theorem rows3413 : actualRows3413=WordField.canonicalRows actualModulus 3413 (.band 3410 3412) := by core033_kernel_decide
theorem stats3413 : actualRows3413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3413=5124 := by core033_kernel_decide
theorem rows3414 : actualRows3414=WordField.canonicalRows actualModulus 3414 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3414 : actualRows3414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3414=2892 := by core033_kernel_decide
theorem rows3415 : actualRows3415=WordField.canonicalRows actualModulus 3415 (.bxor 1299 3414) := by core033_kernel_decide
theorem stats3415 : actualRows3415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3415=7428 := by core033_kernel_decide
theorem rows3416 : actualRows3416=WordField.canonicalRows actualModulus 3416 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3416 : actualRows3416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3416=2820 := by core033_kernel_decide
theorem rows3417 : actualRows3417=WordField.canonicalRows actualModulus 3417 (.bnot 3416) := by core033_kernel_decide
theorem stats3417 : actualRows3417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3417=6276 := by core033_kernel_decide
theorem rows3418 : actualRows3418=WordField.canonicalRows actualModulus 3418 (.bxor 3415 3417) := by core033_kernel_decide
theorem stats3418 : actualRows3418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3418=7428 := by core033_kernel_decide
theorem rows3419 : actualRows3419=WordField.canonicalRows actualModulus 3419 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3419 : actualRows3419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3419=2892 := by core033_kernel_decide
theorem rows3420 : actualRows3420=WordField.canonicalRows actualModulus 3420 (.bxor 1299 3419) := by core033_kernel_decide
theorem stats3420 : actualRows3420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3420=7428 := by core033_kernel_decide
theorem rows3421 : actualRows3421=WordField.canonicalRows actualModulus 3421 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3421 : actualRows3421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3421=2820 := by core033_kernel_decide
theorem rows3422 : actualRows3422=WordField.canonicalRows actualModulus 3422 (.bnot 3421) := by core033_kernel_decide
theorem stats3422 : actualRows3422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3422=6276 := by core033_kernel_decide
theorem rows3423 : actualRows3423=WordField.canonicalRows actualModulus 3423 (.badd 3420 3422) := by core033_kernel_decide
theorem stats3423 : actualRows3423.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3423=5388 := by core033_kernel_decide
theorem rows3424 : actualRows3424=WordField.canonicalRows actualModulus 3424 (.bnot 3423) := by core033_kernel_decide
theorem stats3424 : actualRows3424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3424=6276 := by core033_kernel_decide
theorem rows3425 : actualRows3425=WordField.canonicalRows actualModulus 3425 (.band 3418 3424) := by core033_kernel_decide
theorem stats3425 : actualRows3425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3425=5124 := by core033_kernel_decide
theorem rows3426 : actualRows3426=WordField.canonicalRows actualModulus 3426 (.bxor 3413 3425) := by core033_kernel_decide
theorem stats3426 : actualRows3426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3426=7428 := by core033_kernel_decide
theorem rows3427 : actualRows3427=WordField.canonicalRows actualModulus 3427 (.shr 3426 31) := by core033_kernel_decide
theorem stats3427 : actualRows3427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3427=2892 := by core033_kernel_decide
theorem rows3428 : actualRows3428=WordField.canonicalRows actualModulus 3428 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3428 : actualRows3428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3428=2892 := by core033_kernel_decide
theorem rows3429 : actualRows3429=WordField.canonicalRows actualModulus 3429 (.bxor 3427 3428) := by core033_kernel_decide
theorem stats3429 : actualRows3429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3429=7428 := by core033_kernel_decide
theorem rows3430 : actualRows3430=WordField.canonicalRows actualModulus 3430 (.bnot 3429) := by core033_kernel_decide
theorem stats3430 : actualRows3430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3430=6276 := by core033_kernel_decide
theorem rows3431 : actualRows3431=WordField.canonicalRows actualModulus 3431 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3431 : actualRows3431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3431=2892 := by core033_kernel_decide
theorem rows3432 : actualRows3432=WordField.canonicalRows actualModulus 3432 (.badd 3430 3431) := by core033_kernel_decide
theorem stats3432 : actualRows3432.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3432=5388 := by core033_kernel_decide
theorem rows3433 : actualRows3433=WordField.canonicalRows actualModulus 3433 (.bnot 3432) := by core033_kernel_decide
theorem stats3433 : actualRows3433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3433=6276 := by core033_kernel_decide
theorem rows3434 : actualRows3434=WordField.canonicalRows actualModulus 3434 (.literal (BitVec.ofNat 32 2600822924)) := by core033_kernel_decide
theorem stats3434 : actualRows3434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3434=3756 := by core033_kernel_decide
theorem rows3435 : actualRows3435=WordField.canonicalRows actualModulus 3435 (.band 3433 3434) := by core033_kernel_decide
theorem stats3435 : actualRows3435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3435=5124 := by core033_kernel_decide
theorem rows3436 : actualRows3436=WordField.canonicalRows actualModulus 3436 (.bxor 3408 3435) := by core033_kernel_decide
theorem stats3436 : actualRows3436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3436=7428 := by core033_kernel_decide
theorem rows3437 : actualRows3437=WordField.canonicalRows actualModulus 3437 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3437 : actualRows3437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3437=2892 := by core033_kernel_decide
theorem rows3438 : actualRows3438=WordField.canonicalRows actualModulus 3438 (.bxor 1299 3437) := by core033_kernel_decide
theorem stats3438 : actualRows3438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3438=7428 := by core033_kernel_decide
theorem rows3439 : actualRows3439=WordField.canonicalRows actualModulus 3439 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3439 : actualRows3439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3439=2820 := by core033_kernel_decide
theorem rows3440 : actualRows3440=WordField.canonicalRows actualModulus 3440 (.bnot 3439) := by core033_kernel_decide
theorem stats3440 : actualRows3440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3440=6276 := by core033_kernel_decide
theorem rows3441 : actualRows3441=WordField.canonicalRows actualModulus 3441 (.band 3438 3440) := by core033_kernel_decide
theorem stats3441 : actualRows3441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3441=5124 := by core033_kernel_decide
theorem rows3442 : actualRows3442=WordField.canonicalRows actualModulus 3442 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3442 : actualRows3442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3442=2892 := by core033_kernel_decide
theorem rows3443 : actualRows3443=WordField.canonicalRows actualModulus 3443 (.bxor 1299 3442) := by core033_kernel_decide
theorem stats3443 : actualRows3443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3443=7428 := by core033_kernel_decide
theorem rows3444 : actualRows3444=WordField.canonicalRows actualModulus 3444 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3444 : actualRows3444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3444=2820 := by core033_kernel_decide
theorem rows3445 : actualRows3445=WordField.canonicalRows actualModulus 3445 (.bnot 3444) := by core033_kernel_decide
theorem stats3445 : actualRows3445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3445=6276 := by core033_kernel_decide
def partRows51 : List R1CS.Row := actualRows3382++actualRows3383++actualRows3384++actualRows3385++actualRows3386++actualRows3387++actualRows3388++actualRows3389++actualRows3390++actualRows3391++actualRows3392++actualRows3393++actualRows3394++actualRows3395++actualRows3396++actualRows3397++actualRows3398++actualRows3399++actualRows3400++actualRows3401++actualRows3402++actualRows3403++actualRows3404++actualRows3405++actualRows3406++actualRows3407++actualRows3408++actualRows3409++actualRows3410++actualRows3411++actualRows3412++actualRows3413++actualRows3414++actualRows3415++actualRows3416++actualRows3417++actualRows3418++actualRows3419++actualRows3420++actualRows3421++actualRows3422++actualRows3423++actualRows3424++actualRows3425++actualRows3426++actualRows3427++actualRows3428++actualRows3429++actualRows3430++actualRows3431++actualRows3432++actualRows3433++actualRows3434++actualRows3435++actualRows3436++actualRows3437++actualRows3438++actualRows3439++actualRows3440++actualRows3441++actualRows3442++actualRows3443++actualRows3444++actualRows3445
def partOps51 : List WordIR.Op := [.band 3380 3381,.bxor 3355 3382,.literal (BitVec.ofNat 32 2),.bxor 1299 3384,.literal (BitVec.ofNat 32 0),.bnot 3386,.band 3385 3387,.literal (BitVec.ofNat 32 2),.bxor 1299 3389,.literal (BitVec.ofNat 32 0),.bnot 3391,.bxor 3390 3392,.literal (BitVec.ofNat 32 2),.bxor 1299 3394,.literal (BitVec.ofNat 32 0),.bnot 3396,.badd 3395 3397,.bnot 3398,.band 3393 3399,.bxor 3388 3400,.shr 3401 31,.literal (BitVec.ofNat 32 1),.bxor 3402 3403,.bnot 3404,.literal (BitVec.ofNat 32 1),.badd 3405 3406,.band 3407 1739,.literal (BitVec.ofNat 32 2),.bxor 1299 3409,.literal (BitVec.ofNat 32 0),.bnot 3411,.band 3410 3412,.literal (BitVec.ofNat 32 2),.bxor 1299 3414,.literal (BitVec.ofNat 32 0),.bnot 3416,.bxor 3415 3417,.literal (BitVec.ofNat 32 2),.bxor 1299 3419,.literal (BitVec.ofNat 32 0),.bnot 3421,.badd 3420 3422,.bnot 3423,.band 3418 3424,.bxor 3413 3425,.shr 3426 31,.literal (BitVec.ofNat 32 1),.bxor 3427 3428,.bnot 3429,.literal (BitVec.ofNat 32 1),.badd 3430 3431,.bnot 3432,.literal (BitVec.ofNat 32 2600822924),.band 3433 3434,.bxor 3408 3435,.literal (BitVec.ofNat 32 2),.bxor 1299 3437,.literal (BitVec.ofNat 32 0),.bnot 3439,.band 3438 3440,.literal (BitVec.ofNat 32 2),.bxor 1299 3442,.literal (BitVec.ofNat 32 0),.bnot 3444]
theorem partExact51 : partRows51=WordField.rows actualModulus 3382 partOps51 := by
  simp only [partRows51,partOps51,WordField.rows,rows3382,rows3383,rows3384,rows3385,rows3386,rows3387,rows3388,rows3389,rows3390,rows3391,rows3392,rows3393,rows3394,rows3395,rows3396,rows3397,rows3398,rows3399,rows3400,rows3401,rows3402,rows3403,rows3404,rows3405,rows3406,rows3407,rows3408,rows3409,rows3410,rows3411,rows3412,rows3413,rows3414,rows3415,rows3416,rows3417,rows3418,rows3419,rows3420,rows3421,rows3422,rows3423,rows3424,rows3425,rows3426,rows3427,rows3428,rows3429,rows3430,rows3431,rows3432,rows3433,rows3434,rows3435,rows3436,rows3437,rows3438,rows3439,rows3440,rows3441,rows3442,rows3443,rows3444,rows3445,List.append_assoc,List.append_nil]
theorem partLength51 : partOps51.length=64 := by decide
theorem partStats51 : partRows51.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows51=329784 := by
  simp only [partRows51,List.length_append,MatrixRowBlocks.rows_weight_append,stats3382.1,stats3382.2,stats3383.1,stats3383.2,stats3384.1,stats3384.2,stats3385.1,stats3385.2,stats3386.1,stats3386.2,stats3387.1,stats3387.2,stats3388.1,stats3388.2,stats3389.1,stats3389.2,stats3390.1,stats3390.2,stats3391.1,stats3391.2,stats3392.1,stats3392.2,stats3393.1,stats3393.2,stats3394.1,stats3394.2,stats3395.1,stats3395.2,stats3396.1,stats3396.2,stats3397.1,stats3397.2,stats3398.1,stats3398.2,stats3399.1,stats3399.2,stats3400.1,stats3400.2,stats3401.1,stats3401.2,stats3402.1,stats3402.2,stats3403.1,stats3403.2,stats3404.1,stats3404.2,stats3405.1,stats3405.2,stats3406.1,stats3406.2,stats3407.1,stats3407.2,stats3408.1,stats3408.2,stats3409.1,stats3409.2,stats3410.1,stats3410.2,stats3411.1,stats3411.2,stats3412.1,stats3412.2,stats3413.1,stats3413.2,stats3414.1,stats3414.2,stats3415.1,stats3415.2,stats3416.1,stats3416.2,stats3417.1,stats3417.2,stats3418.1,stats3418.2,stats3419.1,stats3419.2,stats3420.1,stats3420.2,stats3421.1,stats3421.2,stats3422.1,stats3422.2,stats3423.1,stats3423.2,stats3424.1,stats3424.2,stats3425.1,stats3425.2,stats3426.1,stats3426.2,stats3427.1,stats3427.2,stats3428.1,stats3428.2,stats3429.1,stats3429.2,stats3430.1,stats3430.2,stats3431.1,stats3431.2,stats3432.1,stats3432.2,stats3433.1,stats3433.2,stats3434.1,stats3434.2,stats3435.1,stats3435.2,stats3436.1,stats3436.2,stats3437.1,stats3437.2,stats3438.1,stats3438.2,stats3439.1,stats3439.2,stats3440.1,stats3440.2,stats3441.1,stats3441.2,stats3442.1,stats3442.2,stats3443.1,stats3443.2,stats3444.1,stats3444.2,stats3445.1,stats3445.2]
  decide
end AuthenticatedBranchRoundCheckedRows
