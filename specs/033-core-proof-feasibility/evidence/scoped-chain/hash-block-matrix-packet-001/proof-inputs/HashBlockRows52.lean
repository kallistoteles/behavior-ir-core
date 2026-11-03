import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData53
import HashBlockInstructionMatrixData54
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3400 : actualRows3400=WordField.canonicalRows actualModulus 3400 (.badd 3388 3399) := by core033_kernel_decide
theorem stats3400 : actualRows3400.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3400=5388 := by core033_kernel_decide
theorem rows3401 : actualRows3401=WordField.canonicalRows actualModulus 3401 (.badd 3292 3388) := by core033_kernel_decide
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
theorem rows3407 : actualRows3407=WordField.canonicalRows actualModulus 3407 (.badd 3320 3406) := by core033_kernel_decide
theorem stats3407 : actualRows3407.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3407=5388 := by core033_kernel_decide
theorem rows3408 : actualRows3408=WordField.canonicalRows actualModulus 3408 (.band 3401 3374) := by core033_kernel_decide
theorem stats3408 : actualRows3408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3408=5124 := by core033_kernel_decide
theorem rows3409 : actualRows3409=WordField.canonicalRows actualModulus 3409 (.bnot 3401) := by core033_kernel_decide
theorem stats3409 : actualRows3409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3409=6276 := by core033_kernel_decide
theorem rows3410 : actualRows3410=WordField.canonicalRows actualModulus 3410 (.band 3409 3347) := by core033_kernel_decide
theorem stats3410 : actualRows3410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3410=5124 := by core033_kernel_decide
theorem rows3411 : actualRows3411=WordField.canonicalRows actualModulus 3411 (.bxor 3408 3410) := by core033_kernel_decide
theorem stats3411 : actualRows3411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3411=7428 := by core033_kernel_decide
theorem rows3412 : actualRows3412=WordField.canonicalRows actualModulus 3412 (.badd 3407 3411) := by core033_kernel_decide
theorem stats3412 : actualRows3412.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3412=5388 := by core033_kernel_decide
theorem rows3413 : actualRows3413=WordField.canonicalRows actualModulus 3413 (.literal (BitVec.ofNat 32 1537002063)) := by core033_kernel_decide
theorem stats3413 : actualRows3413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3413=4116 := by core033_kernel_decide
theorem rows3414 : actualRows3414=WordField.canonicalRows actualModulus 3414 (.badd 3412 3413) := by core033_kernel_decide
theorem stats3414 : actualRows3414.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3414=5388 := by core033_kernel_decide
theorem rows3415 : actualRows3415=WordField.canonicalRows actualModulus 3415 (.badd 3414 1826) := by core033_kernel_decide
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
theorem rows3421 : actualRows3421=WordField.canonicalRows actualModulus 3421 (.band 3400 3373) := by core033_kernel_decide
theorem stats3421 : actualRows3421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3421=5124 := by core033_kernel_decide
theorem rows3422 : actualRows3422=WordField.canonicalRows actualModulus 3422 (.band 3400 3346) := by core033_kernel_decide
theorem stats3422 : actualRows3422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3422=5124 := by core033_kernel_decide
theorem rows3423 : actualRows3423=WordField.canonicalRows actualModulus 3423 (.bxor 3421 3422) := by core033_kernel_decide
theorem stats3423 : actualRows3423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3423=7428 := by core033_kernel_decide
theorem rows3424 : actualRows3424=WordField.canonicalRows actualModulus 3424 (.band 3373 3346) := by core033_kernel_decide
theorem stats3424 : actualRows3424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3424=5124 := by core033_kernel_decide
theorem rows3425 : actualRows3425=WordField.canonicalRows actualModulus 3425 (.bxor 3423 3424) := by core033_kernel_decide
theorem stats3425 : actualRows3425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3425=7428 := by core033_kernel_decide
theorem rows3426 : actualRows3426=WordField.canonicalRows actualModulus 3426 (.badd 3420 3425) := by core033_kernel_decide
theorem stats3426 : actualRows3426.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3426=5388 := by core033_kernel_decide
theorem rows3427 : actualRows3427=WordField.canonicalRows actualModulus 3427 (.badd 3415 3426) := by core033_kernel_decide
theorem stats3427 : actualRows3427.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3427=5388 := by core033_kernel_decide
theorem rows3428 : actualRows3428=WordField.canonicalRows actualModulus 3428 (.badd 3319 3415) := by core033_kernel_decide
theorem stats3428 : actualRows3428.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3428=5388 := by core033_kernel_decide
theorem rows3429 : actualRows3429=WordField.canonicalRows actualModulus 3429 (.rotr 3428 6) := by core033_kernel_decide
theorem stats3429 : actualRows3429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3429=5124 := by core033_kernel_decide
theorem rows3430 : actualRows3430=WordField.canonicalRows actualModulus 3430 (.rotr 3428 11) := by core033_kernel_decide
theorem stats3430 : actualRows3430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3430=5124 := by core033_kernel_decide
theorem rows3431 : actualRows3431=WordField.canonicalRows actualModulus 3431 (.bxor 3429 3430) := by core033_kernel_decide
theorem stats3431 : actualRows3431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3431=7428 := by core033_kernel_decide
theorem rows3432 : actualRows3432=WordField.canonicalRows actualModulus 3432 (.rotr 3428 25) := by core033_kernel_decide
theorem stats3432 : actualRows3432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3432=5124 := by core033_kernel_decide
theorem rows3433 : actualRows3433=WordField.canonicalRows actualModulus 3433 (.bxor 3431 3432) := by core033_kernel_decide
theorem stats3433 : actualRows3433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3433=7428 := by core033_kernel_decide
theorem rows3434 : actualRows3434=WordField.canonicalRows actualModulus 3434 (.badd 3347 3433) := by core033_kernel_decide
theorem stats3434 : actualRows3434.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3434=5388 := by core033_kernel_decide
theorem rows3435 : actualRows3435=WordField.canonicalRows actualModulus 3435 (.band 3428 3401) := by core033_kernel_decide
theorem stats3435 : actualRows3435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3435=5124 := by core033_kernel_decide
theorem rows3436 : actualRows3436=WordField.canonicalRows actualModulus 3436 (.bnot 3428) := by core033_kernel_decide
theorem stats3436 : actualRows3436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3436=6276 := by core033_kernel_decide
theorem rows3437 : actualRows3437=WordField.canonicalRows actualModulus 3437 (.band 3436 3374) := by core033_kernel_decide
theorem stats3437 : actualRows3437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3437=5124 := by core033_kernel_decide
theorem rows3438 : actualRows3438=WordField.canonicalRows actualModulus 3438 (.bxor 3435 3437) := by core033_kernel_decide
theorem stats3438 : actualRows3438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3438=7428 := by core033_kernel_decide
theorem rows3439 : actualRows3439=WordField.canonicalRows actualModulus 3439 (.badd 3434 3438) := by core033_kernel_decide
theorem stats3439 : actualRows3439.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3439=5388 := by core033_kernel_decide
theorem rows3440 : actualRows3440=WordField.canonicalRows actualModulus 3440 (.literal (BitVec.ofNat 32 1747873779)) := by core033_kernel_decide
theorem stats3440 : actualRows3440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3440=4188 := by core033_kernel_decide
theorem rows3441 : actualRows3441=WordField.canonicalRows actualModulus 3441 (.badd 3439 3440) := by core033_kernel_decide
theorem stats3441 : actualRows3441.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3441=5388 := by core033_kernel_decide
theorem rows3442 : actualRows3442=WordField.canonicalRows actualModulus 3442 (.badd 3441 1839) := by core033_kernel_decide
theorem stats3442 : actualRows3442.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3442=5388 := by core033_kernel_decide
theorem rows3443 : actualRows3443=WordField.canonicalRows actualModulus 3443 (.rotr 3427 2) := by core033_kernel_decide
theorem stats3443 : actualRows3443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3443=5124 := by core033_kernel_decide
theorem rows3444 : actualRows3444=WordField.canonicalRows actualModulus 3444 (.rotr 3427 13) := by core033_kernel_decide
theorem stats3444 : actualRows3444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3444=5124 := by core033_kernel_decide
theorem rows3445 : actualRows3445=WordField.canonicalRows actualModulus 3445 (.bxor 3443 3444) := by core033_kernel_decide
theorem stats3445 : actualRows3445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3445=7428 := by core033_kernel_decide
theorem rows3446 : actualRows3446=WordField.canonicalRows actualModulus 3446 (.rotr 3427 22) := by core033_kernel_decide
theorem stats3446 : actualRows3446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3446=5124 := by core033_kernel_decide
theorem rows3447 : actualRows3447=WordField.canonicalRows actualModulus 3447 (.bxor 3445 3446) := by core033_kernel_decide
theorem stats3447 : actualRows3447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3447=7428 := by core033_kernel_decide
theorem rows3448 : actualRows3448=WordField.canonicalRows actualModulus 3448 (.band 3427 3400) := by core033_kernel_decide
theorem stats3448 : actualRows3448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3448=5124 := by core033_kernel_decide
theorem rows3449 : actualRows3449=WordField.canonicalRows actualModulus 3449 (.band 3427 3373) := by core033_kernel_decide
theorem stats3449 : actualRows3449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3449=5124 := by core033_kernel_decide
theorem rows3450 : actualRows3450=WordField.canonicalRows actualModulus 3450 (.bxor 3448 3449) := by core033_kernel_decide
theorem stats3450 : actualRows3450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3450=7428 := by core033_kernel_decide
theorem rows3451 : actualRows3451=WordField.canonicalRows actualModulus 3451 (.band 3400 3373) := by core033_kernel_decide
theorem stats3451 : actualRows3451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3451=5124 := by core033_kernel_decide
theorem rows3452 : actualRows3452=WordField.canonicalRows actualModulus 3452 (.bxor 3450 3451) := by core033_kernel_decide
theorem stats3452 : actualRows3452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3452=7428 := by core033_kernel_decide
theorem rows3453 : actualRows3453=WordField.canonicalRows actualModulus 3453 (.badd 3447 3452) := by core033_kernel_decide
theorem stats3453 : actualRows3453.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3453=5388 := by core033_kernel_decide
theorem rows3454 : actualRows3454=WordField.canonicalRows actualModulus 3454 (.badd 3442 3453) := by core033_kernel_decide
theorem stats3454 : actualRows3454.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3454=5388 := by core033_kernel_decide
theorem rows3455 : actualRows3455=WordField.canonicalRows actualModulus 3455 (.badd 3346 3442) := by core033_kernel_decide
theorem stats3455 : actualRows3455.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3455=5388 := by core033_kernel_decide
theorem rows3456 : actualRows3456=WordField.canonicalRows actualModulus 3456 (.rotr 3455 6) := by core033_kernel_decide
theorem stats3456 : actualRows3456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3456=5124 := by core033_kernel_decide
theorem rows3457 : actualRows3457=WordField.canonicalRows actualModulus 3457 (.rotr 3455 11) := by core033_kernel_decide
theorem stats3457 : actualRows3457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3457=5124 := by core033_kernel_decide
theorem rows3458 : actualRows3458=WordField.canonicalRows actualModulus 3458 (.bxor 3456 3457) := by core033_kernel_decide
theorem stats3458 : actualRows3458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3458=7428 := by core033_kernel_decide
theorem rows3459 : actualRows3459=WordField.canonicalRows actualModulus 3459 (.rotr 3455 25) := by core033_kernel_decide
theorem stats3459 : actualRows3459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3459=5124 := by core033_kernel_decide
theorem rows3460 : actualRows3460=WordField.canonicalRows actualModulus 3460 (.bxor 3458 3459) := by core033_kernel_decide
theorem stats3460 : actualRows3460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3460=7428 := by core033_kernel_decide
theorem rows3461 : actualRows3461=WordField.canonicalRows actualModulus 3461 (.badd 3374 3460) := by core033_kernel_decide
theorem stats3461 : actualRows3461.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3461=5388 := by core033_kernel_decide
theorem rows3462 : actualRows3462=WordField.canonicalRows actualModulus 3462 (.band 3455 3428) := by core033_kernel_decide
theorem stats3462 : actualRows3462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3462=5124 := by core033_kernel_decide
theorem rows3463 : actualRows3463=WordField.canonicalRows actualModulus 3463 (.bnot 3455) := by core033_kernel_decide
theorem stats3463 : actualRows3463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3463=6276 := by core033_kernel_decide
def partRows52 : List R1CS.Row := actualRows3400++actualRows3401++actualRows3402++actualRows3403++actualRows3404++actualRows3405++actualRows3406++actualRows3407++actualRows3408++actualRows3409++actualRows3410++actualRows3411++actualRows3412++actualRows3413++actualRows3414++actualRows3415++actualRows3416++actualRows3417++actualRows3418++actualRows3419++actualRows3420++actualRows3421++actualRows3422++actualRows3423++actualRows3424++actualRows3425++actualRows3426++actualRows3427++actualRows3428++actualRows3429++actualRows3430++actualRows3431++actualRows3432++actualRows3433++actualRows3434++actualRows3435++actualRows3436++actualRows3437++actualRows3438++actualRows3439++actualRows3440++actualRows3441++actualRows3442++actualRows3443++actualRows3444++actualRows3445++actualRows3446++actualRows3447++actualRows3448++actualRows3449++actualRows3450++actualRows3451++actualRows3452++actualRows3453++actualRows3454++actualRows3455++actualRows3456++actualRows3457++actualRows3458++actualRows3459++actualRows3460++actualRows3461++actualRows3462++actualRows3463
def partOps52 : List WordIR.Op := [.badd 3388 3399,.badd 3292 3388,.rotr 3401 6,.rotr 3401 11,.bxor 3402 3403,.rotr 3401 25,.bxor 3404 3405,.badd 3320 3406,.band 3401 3374,.bnot 3401,.band 3409 3347,.bxor 3408 3410,.badd 3407 3411,.literal (BitVec.ofNat 32 1537002063),.badd 3412 3413,.badd 3414 1826,.rotr 3400 2,.rotr 3400 13,.bxor 3416 3417,.rotr 3400 22,.bxor 3418 3419,.band 3400 3373,.band 3400 3346,.bxor 3421 3422,.band 3373 3346,.bxor 3423 3424,.badd 3420 3425,.badd 3415 3426,.badd 3319 3415,.rotr 3428 6,.rotr 3428 11,.bxor 3429 3430,.rotr 3428 25,.bxor 3431 3432,.badd 3347 3433,.band 3428 3401,.bnot 3428,.band 3436 3374,.bxor 3435 3437,.badd 3434 3438,.literal (BitVec.ofNat 32 1747873779),.badd 3439 3440,.badd 3441 1839,.rotr 3427 2,.rotr 3427 13,.bxor 3443 3444,.rotr 3427 22,.bxor 3445 3446,.band 3427 3400,.band 3427 3373,.bxor 3448 3449,.band 3400 3373,.bxor 3450 3451,.badd 3447 3452,.badd 3442 3453,.badd 3346 3442,.rotr 3455 6,.rotr 3455 11,.bxor 3456 3457,.rotr 3455 25,.bxor 3458 3459,.badd 3374 3460,.band 3455 3428,.bnot 3455]
theorem partExact52 : partRows52=WordField.rows actualModulus 3400 partOps52 := by
  simp only [partRows52,partOps52,WordField.rows,rows3400,rows3401,rows3402,rows3403,rows3404,rows3405,rows3406,rows3407,rows3408,rows3409,rows3410,rows3411,rows3412,rows3413,rows3414,rows3415,rows3416,rows3417,rows3418,rows3419,rows3420,rows3421,rows3422,rows3423,rows3424,rows3425,rows3426,rows3427,rows3428,rows3429,rows3430,rows3431,rows3432,rows3433,rows3434,rows3435,rows3436,rows3437,rows3438,rows3439,rows3440,rows3441,rows3442,rows3443,rows3444,rows3445,rows3446,rows3447,rows3448,rows3449,rows3450,rows3451,rows3452,rows3453,rows3454,rows3455,rows3456,rows3457,rows3458,rows3459,rows3460,rows3461,rows3462,rows3463,List.append_assoc,List.append_nil]
theorem partLength52 : partOps52.length=64 := by decide
theorem partStats52 : partRows52.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows52=370800 := by
  simp only [partRows52,List.length_append,MatrixRowBlocks.rows_weight_append,stats3400.1,stats3400.2,stats3401.1,stats3401.2,stats3402.1,stats3402.2,stats3403.1,stats3403.2,stats3404.1,stats3404.2,stats3405.1,stats3405.2,stats3406.1,stats3406.2,stats3407.1,stats3407.2,stats3408.1,stats3408.2,stats3409.1,stats3409.2,stats3410.1,stats3410.2,stats3411.1,stats3411.2,stats3412.1,stats3412.2,stats3413.1,stats3413.2,stats3414.1,stats3414.2,stats3415.1,stats3415.2,stats3416.1,stats3416.2,stats3417.1,stats3417.2,stats3418.1,stats3418.2,stats3419.1,stats3419.2,stats3420.1,stats3420.2,stats3421.1,stats3421.2,stats3422.1,stats3422.2,stats3423.1,stats3423.2,stats3424.1,stats3424.2,stats3425.1,stats3425.2,stats3426.1,stats3426.2,stats3427.1,stats3427.2,stats3428.1,stats3428.2,stats3429.1,stats3429.2,stats3430.1,stats3430.2,stats3431.1,stats3431.2,stats3432.1,stats3432.2,stats3433.1,stats3433.2,stats3434.1,stats3434.2,stats3435.1,stats3435.2,stats3436.1,stats3436.2,stats3437.1,stats3437.2,stats3438.1,stats3438.2,stats3439.1,stats3439.2,stats3440.1,stats3440.2,stats3441.1,stats3441.2,stats3442.1,stats3442.2,stats3443.1,stats3443.2,stats3444.1,stats3444.2,stats3445.1,stats3445.2,stats3446.1,stats3446.2,stats3447.1,stats3447.2,stats3448.1,stats3448.2,stats3449.1,stats3449.2,stats3450.1,stats3450.2,stats3451.1,stats3451.2,stats3452.1,stats3452.2,stats3453.1,stats3453.2,stats3454.1,stats3454.2,stats3455.1,stats3455.2,stats3456.1,stats3456.2,stats3457.1,stats3457.2,stats3458.1,stats3458.2,stats3459.1,stats3459.2,stats3460.1,stats3460.2,stats3461.1,stats3461.2,stats3462.1,stats3462.2,stats3463.1,stats3463.2]
  decide
end HashBlockCheckedRows
