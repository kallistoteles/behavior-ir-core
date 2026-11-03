import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData100
import PairedPathRoundInstructionMatrixData101
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6432 : actualRows6432=WordField.canonicalRows actualModulus 6432 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6432 : actualRows6432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6432=2820 := by core033_kernel_decide
theorem rows6433 : actualRows6433=WordField.canonicalRows actualModulus 6433 (.bnot 6432) := by core033_kernel_decide
theorem stats6433 : actualRows6433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6433=6276 := by core033_kernel_decide
theorem rows6434 : actualRows6434=WordField.canonicalRows actualModulus 6434 (.badd 6431 6433) := by core033_kernel_decide
theorem stats6434 : actualRows6434.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6434=5388 := by core033_kernel_decide
theorem rows6435 : actualRows6435=WordField.canonicalRows actualModulus 6435 (.bnot 6434) := by core033_kernel_decide
theorem stats6435 : actualRows6435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6435=6276 := by core033_kernel_decide
theorem rows6436 : actualRows6436=WordField.canonicalRows actualModulus 6436 (.band 6430 6435) := by core033_kernel_decide
theorem stats6436 : actualRows6436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6436=5124 := by core033_kernel_decide
theorem rows6437 : actualRows6437=WordField.canonicalRows actualModulus 6437 (.bxor 6426 6436) := by core033_kernel_decide
theorem stats6437 : actualRows6437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6437=7428 := by core033_kernel_decide
theorem rows6438 : actualRows6438=WordField.canonicalRows actualModulus 6438 (.shr 6437 31) := by core033_kernel_decide
theorem stats6438 : actualRows6438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6438=2892 := by core033_kernel_decide
theorem rows6439 : actualRows6439=WordField.canonicalRows actualModulus 6439 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6439 : actualRows6439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6439=2892 := by core033_kernel_decide
theorem rows6440 : actualRows6440=WordField.canonicalRows actualModulus 6440 (.bxor 6438 6439) := by core033_kernel_decide
theorem stats6440 : actualRows6440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6440=7428 := by core033_kernel_decide
theorem rows6441 : actualRows6441=WordField.canonicalRows actualModulus 6441 (.shr 3327 8) := by core033_kernel_decide
theorem stats6441 : actualRows6441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6441=4548 := by core033_kernel_decide
theorem rows6442 : actualRows6442=WordField.canonicalRows actualModulus 6442 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6442 : actualRows6442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6442=2820 := by core033_kernel_decide
theorem rows6443 : actualRows6443=WordField.canonicalRows actualModulus 6443 (.bnot 6442) := by core033_kernel_decide
theorem stats6443 : actualRows6443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6443=6276 := by core033_kernel_decide
theorem rows6444 : actualRows6444=WordField.canonicalRows actualModulus 6444 (.band 6441 6443) := by core033_kernel_decide
theorem stats6444 : actualRows6444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6444=5124 := by core033_kernel_decide
theorem rows6445 : actualRows6445=WordField.canonicalRows actualModulus 6445 (.shr 3327 8) := by core033_kernel_decide
theorem stats6445 : actualRows6445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6445=4548 := by core033_kernel_decide
theorem rows6446 : actualRows6446=WordField.canonicalRows actualModulus 6446 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6446 : actualRows6446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6446=2820 := by core033_kernel_decide
theorem rows6447 : actualRows6447=WordField.canonicalRows actualModulus 6447 (.bnot 6446) := by core033_kernel_decide
theorem stats6447 : actualRows6447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6447=6276 := by core033_kernel_decide
theorem rows6448 : actualRows6448=WordField.canonicalRows actualModulus 6448 (.bxor 6445 6447) := by core033_kernel_decide
theorem stats6448 : actualRows6448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6448=7428 := by core033_kernel_decide
theorem rows6449 : actualRows6449=WordField.canonicalRows actualModulus 6449 (.shr 3327 8) := by core033_kernel_decide
theorem stats6449 : actualRows6449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6449=4548 := by core033_kernel_decide
theorem rows6450 : actualRows6450=WordField.canonicalRows actualModulus 6450 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6450 : actualRows6450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6450=2820 := by core033_kernel_decide
theorem rows6451 : actualRows6451=WordField.canonicalRows actualModulus 6451 (.bnot 6450) := by core033_kernel_decide
theorem stats6451 : actualRows6451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6451=6276 := by core033_kernel_decide
theorem rows6452 : actualRows6452=WordField.canonicalRows actualModulus 6452 (.badd 6449 6451) := by core033_kernel_decide
theorem stats6452 : actualRows6452.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6452=5388 := by core033_kernel_decide
theorem rows6453 : actualRows6453=WordField.canonicalRows actualModulus 6453 (.bnot 6452) := by core033_kernel_decide
theorem stats6453 : actualRows6453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6453=6276 := by core033_kernel_decide
theorem rows6454 : actualRows6454=WordField.canonicalRows actualModulus 6454 (.band 6448 6453) := by core033_kernel_decide
theorem stats6454 : actualRows6454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6454=5124 := by core033_kernel_decide
theorem rows6455 : actualRows6455=WordField.canonicalRows actualModulus 6455 (.bxor 6444 6454) := by core033_kernel_decide
theorem stats6455 : actualRows6455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6455=7428 := by core033_kernel_decide
theorem rows6456 : actualRows6456=WordField.canonicalRows actualModulus 6456 (.shr 6455 31) := by core033_kernel_decide
theorem stats6456 : actualRows6456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6456=2892 := by core033_kernel_decide
theorem rows6457 : actualRows6457=WordField.canonicalRows actualModulus 6457 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6457 : actualRows6457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6457=2892 := by core033_kernel_decide
theorem rows6458 : actualRows6458=WordField.canonicalRows actualModulus 6458 (.bxor 6456 6457) := by core033_kernel_decide
theorem stats6458 : actualRows6458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6458=7428 := by core033_kernel_decide
theorem rows6459 : actualRows6459=WordField.canonicalRows actualModulus 6459 (.shr 3379 8) := by core033_kernel_decide
theorem stats6459 : actualRows6459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6459=4548 := by core033_kernel_decide
theorem rows6460 : actualRows6460=WordField.canonicalRows actualModulus 6460 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6460 : actualRows6460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6460=2820 := by core033_kernel_decide
theorem rows6461 : actualRows6461=WordField.canonicalRows actualModulus 6461 (.bnot 6460) := by core033_kernel_decide
theorem stats6461 : actualRows6461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6461=6276 := by core033_kernel_decide
theorem rows6462 : actualRows6462=WordField.canonicalRows actualModulus 6462 (.band 6459 6461) := by core033_kernel_decide
theorem stats6462 : actualRows6462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6462=5124 := by core033_kernel_decide
theorem rows6463 : actualRows6463=WordField.canonicalRows actualModulus 6463 (.shr 3379 8) := by core033_kernel_decide
theorem stats6463 : actualRows6463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6463=4548 := by core033_kernel_decide
theorem rows6464 : actualRows6464=WordField.canonicalRows actualModulus 6464 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6464 : actualRows6464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6464=2820 := by core033_kernel_decide
theorem rows6465 : actualRows6465=WordField.canonicalRows actualModulus 6465 (.bnot 6464) := by core033_kernel_decide
theorem stats6465 : actualRows6465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6465=6276 := by core033_kernel_decide
theorem rows6466 : actualRows6466=WordField.canonicalRows actualModulus 6466 (.bxor 6463 6465) := by core033_kernel_decide
theorem stats6466 : actualRows6466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6466=7428 := by core033_kernel_decide
theorem rows6467 : actualRows6467=WordField.canonicalRows actualModulus 6467 (.shr 3379 8) := by core033_kernel_decide
theorem stats6467 : actualRows6467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6467=4548 := by core033_kernel_decide
theorem rows6468 : actualRows6468=WordField.canonicalRows actualModulus 6468 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6468 : actualRows6468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6468=2820 := by core033_kernel_decide
theorem rows6469 : actualRows6469=WordField.canonicalRows actualModulus 6469 (.bnot 6468) := by core033_kernel_decide
theorem stats6469 : actualRows6469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6469=6276 := by core033_kernel_decide
theorem rows6470 : actualRows6470=WordField.canonicalRows actualModulus 6470 (.badd 6467 6469) := by core033_kernel_decide
theorem stats6470 : actualRows6470.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6470=5388 := by core033_kernel_decide
theorem rows6471 : actualRows6471=WordField.canonicalRows actualModulus 6471 (.bnot 6470) := by core033_kernel_decide
theorem stats6471 : actualRows6471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6471=6276 := by core033_kernel_decide
theorem rows6472 : actualRows6472=WordField.canonicalRows actualModulus 6472 (.band 6466 6471) := by core033_kernel_decide
theorem stats6472 : actualRows6472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6472=5124 := by core033_kernel_decide
theorem rows6473 : actualRows6473=WordField.canonicalRows actualModulus 6473 (.bxor 6462 6472) := by core033_kernel_decide
theorem stats6473 : actualRows6473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6473=7428 := by core033_kernel_decide
theorem rows6474 : actualRows6474=WordField.canonicalRows actualModulus 6474 (.shr 6473 31) := by core033_kernel_decide
theorem stats6474 : actualRows6474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6474=2892 := by core033_kernel_decide
theorem rows6475 : actualRows6475=WordField.canonicalRows actualModulus 6475 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6475 : actualRows6475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6475=2892 := by core033_kernel_decide
theorem rows6476 : actualRows6476=WordField.canonicalRows actualModulus 6476 (.bxor 6474 6475) := by core033_kernel_decide
theorem stats6476 : actualRows6476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6476=7428 := by core033_kernel_decide
theorem rows6477 : actualRows6477=WordField.canonicalRows actualModulus 6477 (.shr 3431 8) := by core033_kernel_decide
theorem stats6477 : actualRows6477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6477=4548 := by core033_kernel_decide
theorem rows6478 : actualRows6478=WordField.canonicalRows actualModulus 6478 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6478 : actualRows6478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6478=2820 := by core033_kernel_decide
theorem rows6479 : actualRows6479=WordField.canonicalRows actualModulus 6479 (.bnot 6478) := by core033_kernel_decide
theorem stats6479 : actualRows6479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6479=6276 := by core033_kernel_decide
theorem rows6480 : actualRows6480=WordField.canonicalRows actualModulus 6480 (.band 6477 6479) := by core033_kernel_decide
theorem stats6480 : actualRows6480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6480=5124 := by core033_kernel_decide
theorem rows6481 : actualRows6481=WordField.canonicalRows actualModulus 6481 (.shr 3431 8) := by core033_kernel_decide
theorem stats6481 : actualRows6481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6481=4548 := by core033_kernel_decide
theorem rows6482 : actualRows6482=WordField.canonicalRows actualModulus 6482 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6482 : actualRows6482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6482=2820 := by core033_kernel_decide
theorem rows6483 : actualRows6483=WordField.canonicalRows actualModulus 6483 (.bnot 6482) := by core033_kernel_decide
theorem stats6483 : actualRows6483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6483=6276 := by core033_kernel_decide
theorem rows6484 : actualRows6484=WordField.canonicalRows actualModulus 6484 (.bxor 6481 6483) := by core033_kernel_decide
theorem stats6484 : actualRows6484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6484=7428 := by core033_kernel_decide
theorem rows6485 : actualRows6485=WordField.canonicalRows actualModulus 6485 (.shr 3431 8) := by core033_kernel_decide
theorem stats6485 : actualRows6485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6485=4548 := by core033_kernel_decide
theorem rows6486 : actualRows6486=WordField.canonicalRows actualModulus 6486 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6486 : actualRows6486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6486=2820 := by core033_kernel_decide
theorem rows6487 : actualRows6487=WordField.canonicalRows actualModulus 6487 (.bnot 6486) := by core033_kernel_decide
theorem stats6487 : actualRows6487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6487=6276 := by core033_kernel_decide
theorem rows6488 : actualRows6488=WordField.canonicalRows actualModulus 6488 (.badd 6485 6487) := by core033_kernel_decide
theorem stats6488 : actualRows6488.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6488=5388 := by core033_kernel_decide
theorem rows6489 : actualRows6489=WordField.canonicalRows actualModulus 6489 (.bnot 6488) := by core033_kernel_decide
theorem stats6489 : actualRows6489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6489=6276 := by core033_kernel_decide
theorem rows6490 : actualRows6490=WordField.canonicalRows actualModulus 6490 (.band 6484 6489) := by core033_kernel_decide
theorem stats6490 : actualRows6490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6490=5124 := by core033_kernel_decide
theorem rows6491 : actualRows6491=WordField.canonicalRows actualModulus 6491 (.bxor 6480 6490) := by core033_kernel_decide
theorem stats6491 : actualRows6491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6491=7428 := by core033_kernel_decide
theorem rows6492 : actualRows6492=WordField.canonicalRows actualModulus 6492 (.shr 6491 31) := by core033_kernel_decide
theorem stats6492 : actualRows6492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6492=2892 := by core033_kernel_decide
theorem rows6493 : actualRows6493=WordField.canonicalRows actualModulus 6493 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6493 : actualRows6493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6493=2892 := by core033_kernel_decide
theorem rows6494 : actualRows6494=WordField.canonicalRows actualModulus 6494 (.bxor 6492 6493) := by core033_kernel_decide
theorem stats6494 : actualRows6494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6494=7428 := by core033_kernel_decide
theorem rows6495 : actualRows6495=WordField.canonicalRows actualModulus 6495 (.shr 3483 8) := by core033_kernel_decide
theorem stats6495 : actualRows6495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6495=4548 := by core033_kernel_decide
def partRows99 : List R1CS.Row := actualRows6432++actualRows6433++actualRows6434++actualRows6435++actualRows6436++actualRows6437++actualRows6438++actualRows6439++actualRows6440++actualRows6441++actualRows6442++actualRows6443++actualRows6444++actualRows6445++actualRows6446++actualRows6447++actualRows6448++actualRows6449++actualRows6450++actualRows6451++actualRows6452++actualRows6453++actualRows6454++actualRows6455++actualRows6456++actualRows6457++actualRows6458++actualRows6459++actualRows6460++actualRows6461++actualRows6462++actualRows6463++actualRows6464++actualRows6465++actualRows6466++actualRows6467++actualRows6468++actualRows6469++actualRows6470++actualRows6471++actualRows6472++actualRows6473++actualRows6474++actualRows6475++actualRows6476++actualRows6477++actualRows6478++actualRows6479++actualRows6480++actualRows6481++actualRows6482++actualRows6483++actualRows6484++actualRows6485++actualRows6486++actualRows6487++actualRows6488++actualRows6489++actualRows6490++actualRows6491++actualRows6492++actualRows6493++actualRows6494++actualRows6495
def partOps99 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 6432,.badd 6431 6433,.bnot 6434,.band 6430 6435,.bxor 6426 6436,.shr 6437 31,.literal (BitVec.ofNat 32 1),.bxor 6438 6439,.shr 3327 8,.literal (BitVec.ofNat 32 0),.bnot 6442,.band 6441 6443,.shr 3327 8,.literal (BitVec.ofNat 32 0),.bnot 6446,.bxor 6445 6447,.shr 3327 8,.literal (BitVec.ofNat 32 0),.bnot 6450,.badd 6449 6451,.bnot 6452,.band 6448 6453,.bxor 6444 6454,.shr 6455 31,.literal (BitVec.ofNat 32 1),.bxor 6456 6457,.shr 3379 8,.literal (BitVec.ofNat 32 0),.bnot 6460,.band 6459 6461,.shr 3379 8,.literal (BitVec.ofNat 32 0),.bnot 6464,.bxor 6463 6465,.shr 3379 8,.literal (BitVec.ofNat 32 0),.bnot 6468,.badd 6467 6469,.bnot 6470,.band 6466 6471,.bxor 6462 6472,.shr 6473 31,.literal (BitVec.ofNat 32 1),.bxor 6474 6475,.shr 3431 8,.literal (BitVec.ofNat 32 0),.bnot 6478,.band 6477 6479,.shr 3431 8,.literal (BitVec.ofNat 32 0),.bnot 6482,.bxor 6481 6483,.shr 3431 8,.literal (BitVec.ofNat 32 0),.bnot 6486,.badd 6485 6487,.bnot 6488,.band 6484 6489,.bxor 6480 6490,.shr 6491 31,.literal (BitVec.ofNat 32 1),.bxor 6492 6493,.shr 3483 8]
theorem partExact99 : partRows99=WordField.rows actualModulus 6432 partOps99 := by
  simp only [partRows99,partOps99,WordField.rows,rows6432,rows6433,rows6434,rows6435,rows6436,rows6437,rows6438,rows6439,rows6440,rows6441,rows6442,rows6443,rows6444,rows6445,rows6446,rows6447,rows6448,rows6449,rows6450,rows6451,rows6452,rows6453,rows6454,rows6455,rows6456,rows6457,rows6458,rows6459,rows6460,rows6461,rows6462,rows6463,rows6464,rows6465,rows6466,rows6467,rows6468,rows6469,rows6470,rows6471,rows6472,rows6473,rows6474,rows6475,rows6476,rows6477,rows6478,rows6479,rows6480,rows6481,rows6482,rows6483,rows6484,rows6485,rows6486,rows6487,rows6488,rows6489,rows6490,rows6491,rows6492,rows6493,rows6494,rows6495,List.append_assoc,List.append_nil]
theorem partLength99 : partOps99.length=64 := by decide
theorem partStats99 : partRows99.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows99=323808 := by
  simp only [partRows99,List.length_append,MatrixRowBlocks.rows_weight_append,stats6432.1,stats6432.2,stats6433.1,stats6433.2,stats6434.1,stats6434.2,stats6435.1,stats6435.2,stats6436.1,stats6436.2,stats6437.1,stats6437.2,stats6438.1,stats6438.2,stats6439.1,stats6439.2,stats6440.1,stats6440.2,stats6441.1,stats6441.2,stats6442.1,stats6442.2,stats6443.1,stats6443.2,stats6444.1,stats6444.2,stats6445.1,stats6445.2,stats6446.1,stats6446.2,stats6447.1,stats6447.2,stats6448.1,stats6448.2,stats6449.1,stats6449.2,stats6450.1,stats6450.2,stats6451.1,stats6451.2,stats6452.1,stats6452.2,stats6453.1,stats6453.2,stats6454.1,stats6454.2,stats6455.1,stats6455.2,stats6456.1,stats6456.2,stats6457.1,stats6457.2,stats6458.1,stats6458.2,stats6459.1,stats6459.2,stats6460.1,stats6460.2,stats6461.1,stats6461.2,stats6462.1,stats6462.2,stats6463.1,stats6463.2,stats6464.1,stats6464.2,stats6465.1,stats6465.2,stats6466.1,stats6466.2,stats6467.1,stats6467.2,stats6468.1,stats6468.2,stats6469.1,stats6469.2,stats6470.1,stats6470.2,stats6471.1,stats6471.2,stats6472.1,stats6472.2,stats6473.1,stats6473.2,stats6474.1,stats6474.2,stats6475.1,stats6475.2,stats6476.1,stats6476.2,stats6477.1,stats6477.2,stats6478.1,stats6478.2,stats6479.1,stats6479.2,stats6480.1,stats6480.2,stats6481.1,stats6481.2,stats6482.1,stats6482.2,stats6483.1,stats6483.2,stats6484.1,stats6484.2,stats6485.1,stats6485.2,stats6486.1,stats6486.2,stats6487.1,stats6487.2,stats6488.1,stats6488.2,stats6489.1,stats6489.2,stats6490.1,stats6490.2,stats6491.1,stats6491.2,stats6492.1,stats6492.2,stats6493.1,stats6493.2,stats6494.1,stats6494.2,stats6495.1,stats6495.2]
  decide
end QuotedPairedPathRoundCheckedRows
