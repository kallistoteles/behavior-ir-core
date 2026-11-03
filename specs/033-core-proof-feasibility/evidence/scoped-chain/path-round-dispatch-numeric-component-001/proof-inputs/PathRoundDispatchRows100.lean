import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData100
import PathRoundDispatchInstructionMatrixData101
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6443 : actualRows6443=WordField.canonicalRows actualModulus 6443 (.shr 4315 8) := by core033_kernel_decide
theorem stats6443 : actualRows6443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6443=4548 := by core033_kernel_decide
theorem rows6444 : actualRows6444=WordField.canonicalRows actualModulus 6444 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6444 : actualRows6444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6444=2820 := by core033_kernel_decide
theorem rows6445 : actualRows6445=WordField.canonicalRows actualModulus 6445 (.bnot 6444) := by core033_kernel_decide
theorem stats6445 : actualRows6445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6445=6276 := by core033_kernel_decide
theorem rows6446 : actualRows6446=WordField.canonicalRows actualModulus 6446 (.band 6443 6445) := by core033_kernel_decide
theorem stats6446 : actualRows6446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6446=5124 := by core033_kernel_decide
theorem rows6447 : actualRows6447=WordField.canonicalRows actualModulus 6447 (.shr 4315 8) := by core033_kernel_decide
theorem stats6447 : actualRows6447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6447=4548 := by core033_kernel_decide
theorem rows6448 : actualRows6448=WordField.canonicalRows actualModulus 6448 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6448 : actualRows6448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6448=2820 := by core033_kernel_decide
theorem rows6449 : actualRows6449=WordField.canonicalRows actualModulus 6449 (.bnot 6448) := by core033_kernel_decide
theorem stats6449 : actualRows6449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6449=6276 := by core033_kernel_decide
theorem rows6450 : actualRows6450=WordField.canonicalRows actualModulus 6450 (.bxor 6447 6449) := by core033_kernel_decide
theorem stats6450 : actualRows6450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6450=7428 := by core033_kernel_decide
theorem rows6451 : actualRows6451=WordField.canonicalRows actualModulus 6451 (.shr 4315 8) := by core033_kernel_decide
theorem stats6451 : actualRows6451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6451=4548 := by core033_kernel_decide
theorem rows6452 : actualRows6452=WordField.canonicalRows actualModulus 6452 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6452 : actualRows6452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6452=2820 := by core033_kernel_decide
theorem rows6453 : actualRows6453=WordField.canonicalRows actualModulus 6453 (.bnot 6452) := by core033_kernel_decide
theorem stats6453 : actualRows6453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6453=6276 := by core033_kernel_decide
theorem rows6454 : actualRows6454=WordField.canonicalRows actualModulus 6454 (.badd 6451 6453) := by core033_kernel_decide
theorem stats6454 : actualRows6454.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6454=5388 := by core033_kernel_decide
theorem rows6455 : actualRows6455=WordField.canonicalRows actualModulus 6455 (.bnot 6454) := by core033_kernel_decide
theorem stats6455 : actualRows6455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6455=6276 := by core033_kernel_decide
theorem rows6456 : actualRows6456=WordField.canonicalRows actualModulus 6456 (.band 6450 6455) := by core033_kernel_decide
theorem stats6456 : actualRows6456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6456=5124 := by core033_kernel_decide
theorem rows6457 : actualRows6457=WordField.canonicalRows actualModulus 6457 (.bxor 6446 6456) := by core033_kernel_decide
theorem stats6457 : actualRows6457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6457=7428 := by core033_kernel_decide
theorem rows6458 : actualRows6458=WordField.canonicalRows actualModulus 6458 (.shr 6457 31) := by core033_kernel_decide
theorem stats6458 : actualRows6458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6458=2892 := by core033_kernel_decide
theorem rows6459 : actualRows6459=WordField.canonicalRows actualModulus 6459 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6459 : actualRows6459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6459=2892 := by core033_kernel_decide
theorem rows6460 : actualRows6460=WordField.canonicalRows actualModulus 6460 (.bxor 6458 6459) := by core033_kernel_decide
theorem stats6460 : actualRows6460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6460=7428 := by core033_kernel_decide
theorem rows6461 : actualRows6461=WordField.canonicalRows actualModulus 6461 (.shr 4367 8) := by core033_kernel_decide
theorem stats6461 : actualRows6461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6461=4548 := by core033_kernel_decide
theorem rows6462 : actualRows6462=WordField.canonicalRows actualModulus 6462 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6462 : actualRows6462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6462=2820 := by core033_kernel_decide
theorem rows6463 : actualRows6463=WordField.canonicalRows actualModulus 6463 (.bnot 6462) := by core033_kernel_decide
theorem stats6463 : actualRows6463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6463=6276 := by core033_kernel_decide
theorem rows6464 : actualRows6464=WordField.canonicalRows actualModulus 6464 (.band 6461 6463) := by core033_kernel_decide
theorem stats6464 : actualRows6464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6464=5124 := by core033_kernel_decide
theorem rows6465 : actualRows6465=WordField.canonicalRows actualModulus 6465 (.shr 4367 8) := by core033_kernel_decide
theorem stats6465 : actualRows6465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6465=4548 := by core033_kernel_decide
theorem rows6466 : actualRows6466=WordField.canonicalRows actualModulus 6466 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6466 : actualRows6466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6466=2820 := by core033_kernel_decide
theorem rows6467 : actualRows6467=WordField.canonicalRows actualModulus 6467 (.bnot 6466) := by core033_kernel_decide
theorem stats6467 : actualRows6467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6467=6276 := by core033_kernel_decide
theorem rows6468 : actualRows6468=WordField.canonicalRows actualModulus 6468 (.bxor 6465 6467) := by core033_kernel_decide
theorem stats6468 : actualRows6468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6468=7428 := by core033_kernel_decide
theorem rows6469 : actualRows6469=WordField.canonicalRows actualModulus 6469 (.shr 4367 8) := by core033_kernel_decide
theorem stats6469 : actualRows6469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6469=4548 := by core033_kernel_decide
theorem rows6470 : actualRows6470=WordField.canonicalRows actualModulus 6470 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6470 : actualRows6470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6470=2820 := by core033_kernel_decide
theorem rows6471 : actualRows6471=WordField.canonicalRows actualModulus 6471 (.bnot 6470) := by core033_kernel_decide
theorem stats6471 : actualRows6471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6471=6276 := by core033_kernel_decide
theorem rows6472 : actualRows6472=WordField.canonicalRows actualModulus 6472 (.badd 6469 6471) := by core033_kernel_decide
theorem stats6472 : actualRows6472.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6472=5388 := by core033_kernel_decide
theorem rows6473 : actualRows6473=WordField.canonicalRows actualModulus 6473 (.bnot 6472) := by core033_kernel_decide
theorem stats6473 : actualRows6473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6473=6276 := by core033_kernel_decide
theorem rows6474 : actualRows6474=WordField.canonicalRows actualModulus 6474 (.band 6468 6473) := by core033_kernel_decide
theorem stats6474 : actualRows6474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6474=5124 := by core033_kernel_decide
theorem rows6475 : actualRows6475=WordField.canonicalRows actualModulus 6475 (.bxor 6464 6474) := by core033_kernel_decide
theorem stats6475 : actualRows6475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6475=7428 := by core033_kernel_decide
theorem rows6476 : actualRows6476=WordField.canonicalRows actualModulus 6476 (.shr 6475 31) := by core033_kernel_decide
theorem stats6476 : actualRows6476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6476=2892 := by core033_kernel_decide
theorem rows6477 : actualRows6477=WordField.canonicalRows actualModulus 6477 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6477 : actualRows6477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6477=2892 := by core033_kernel_decide
theorem rows6478 : actualRows6478=WordField.canonicalRows actualModulus 6478 (.bxor 6476 6477) := by core033_kernel_decide
theorem stats6478 : actualRows6478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6478=7428 := by core033_kernel_decide
theorem rows6479 : actualRows6479=WordField.canonicalRows actualModulus 6479 (.shr 4419 8) := by core033_kernel_decide
theorem stats6479 : actualRows6479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6479=4548 := by core033_kernel_decide
theorem rows6480 : actualRows6480=WordField.canonicalRows actualModulus 6480 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6480 : actualRows6480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6480=2820 := by core033_kernel_decide
theorem rows6481 : actualRows6481=WordField.canonicalRows actualModulus 6481 (.bnot 6480) := by core033_kernel_decide
theorem stats6481 : actualRows6481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6481=6276 := by core033_kernel_decide
theorem rows6482 : actualRows6482=WordField.canonicalRows actualModulus 6482 (.band 6479 6481) := by core033_kernel_decide
theorem stats6482 : actualRows6482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6482=5124 := by core033_kernel_decide
theorem rows6483 : actualRows6483=WordField.canonicalRows actualModulus 6483 (.shr 4419 8) := by core033_kernel_decide
theorem stats6483 : actualRows6483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6483=4548 := by core033_kernel_decide
theorem rows6484 : actualRows6484=WordField.canonicalRows actualModulus 6484 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6484 : actualRows6484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6484=2820 := by core033_kernel_decide
theorem rows6485 : actualRows6485=WordField.canonicalRows actualModulus 6485 (.bnot 6484) := by core033_kernel_decide
theorem stats6485 : actualRows6485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6485=6276 := by core033_kernel_decide
theorem rows6486 : actualRows6486=WordField.canonicalRows actualModulus 6486 (.bxor 6483 6485) := by core033_kernel_decide
theorem stats6486 : actualRows6486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6486=7428 := by core033_kernel_decide
theorem rows6487 : actualRows6487=WordField.canonicalRows actualModulus 6487 (.shr 4419 8) := by core033_kernel_decide
theorem stats6487 : actualRows6487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6487=4548 := by core033_kernel_decide
theorem rows6488 : actualRows6488=WordField.canonicalRows actualModulus 6488 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6488 : actualRows6488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6488=2820 := by core033_kernel_decide
theorem rows6489 : actualRows6489=WordField.canonicalRows actualModulus 6489 (.bnot 6488) := by core033_kernel_decide
theorem stats6489 : actualRows6489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6489=6276 := by core033_kernel_decide
theorem rows6490 : actualRows6490=WordField.canonicalRows actualModulus 6490 (.badd 6487 6489) := by core033_kernel_decide
theorem stats6490 : actualRows6490.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6490=5388 := by core033_kernel_decide
theorem rows6491 : actualRows6491=WordField.canonicalRows actualModulus 6491 (.bnot 6490) := by core033_kernel_decide
theorem stats6491 : actualRows6491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6491=6276 := by core033_kernel_decide
theorem rows6492 : actualRows6492=WordField.canonicalRows actualModulus 6492 (.band 6486 6491) := by core033_kernel_decide
theorem stats6492 : actualRows6492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6492=5124 := by core033_kernel_decide
theorem rows6493 : actualRows6493=WordField.canonicalRows actualModulus 6493 (.bxor 6482 6492) := by core033_kernel_decide
theorem stats6493 : actualRows6493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6493=7428 := by core033_kernel_decide
theorem rows6494 : actualRows6494=WordField.canonicalRows actualModulus 6494 (.shr 6493 31) := by core033_kernel_decide
theorem stats6494 : actualRows6494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6494=2892 := by core033_kernel_decide
theorem rows6495 : actualRows6495=WordField.canonicalRows actualModulus 6495 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6495 : actualRows6495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6495=2892 := by core033_kernel_decide
theorem rows6496 : actualRows6496=WordField.canonicalRows actualModulus 6496 (.bxor 6494 6495) := by core033_kernel_decide
theorem stats6496 : actualRows6496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6496=7428 := by core033_kernel_decide
theorem rows6497 : actualRows6497=WordField.canonicalRows actualModulus 6497 (.shr 4471 8) := by core033_kernel_decide
theorem stats6497 : actualRows6497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6497=4548 := by core033_kernel_decide
theorem rows6498 : actualRows6498=WordField.canonicalRows actualModulus 6498 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6498 : actualRows6498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6498=2820 := by core033_kernel_decide
theorem rows6499 : actualRows6499=WordField.canonicalRows actualModulus 6499 (.bnot 6498) := by core033_kernel_decide
theorem stats6499 : actualRows6499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6499=6276 := by core033_kernel_decide
theorem rows6500 : actualRows6500=WordField.canonicalRows actualModulus 6500 (.band 6497 6499) := by core033_kernel_decide
theorem stats6500 : actualRows6500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6500=5124 := by core033_kernel_decide
theorem rows6501 : actualRows6501=WordField.canonicalRows actualModulus 6501 (.shr 4471 8) := by core033_kernel_decide
theorem stats6501 : actualRows6501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6501=4548 := by core033_kernel_decide
theorem rows6502 : actualRows6502=WordField.canonicalRows actualModulus 6502 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6502 : actualRows6502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6502=2820 := by core033_kernel_decide
theorem rows6503 : actualRows6503=WordField.canonicalRows actualModulus 6503 (.bnot 6502) := by core033_kernel_decide
theorem stats6503 : actualRows6503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6503=6276 := by core033_kernel_decide
theorem rows6504 : actualRows6504=WordField.canonicalRows actualModulus 6504 (.bxor 6501 6503) := by core033_kernel_decide
theorem stats6504 : actualRows6504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6504=7428 := by core033_kernel_decide
theorem rows6505 : actualRows6505=WordField.canonicalRows actualModulus 6505 (.shr 4471 8) := by core033_kernel_decide
theorem stats6505 : actualRows6505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6505=4548 := by core033_kernel_decide
theorem rows6506 : actualRows6506=WordField.canonicalRows actualModulus 6506 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6506 : actualRows6506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6506=2820 := by core033_kernel_decide
def partRows100 : List R1CS.Row := actualRows6443++actualRows6444++actualRows6445++actualRows6446++actualRows6447++actualRows6448++actualRows6449++actualRows6450++actualRows6451++actualRows6452++actualRows6453++actualRows6454++actualRows6455++actualRows6456++actualRows6457++actualRows6458++actualRows6459++actualRows6460++actualRows6461++actualRows6462++actualRows6463++actualRows6464++actualRows6465++actualRows6466++actualRows6467++actualRows6468++actualRows6469++actualRows6470++actualRows6471++actualRows6472++actualRows6473++actualRows6474++actualRows6475++actualRows6476++actualRows6477++actualRows6478++actualRows6479++actualRows6480++actualRows6481++actualRows6482++actualRows6483++actualRows6484++actualRows6485++actualRows6486++actualRows6487++actualRows6488++actualRows6489++actualRows6490++actualRows6491++actualRows6492++actualRows6493++actualRows6494++actualRows6495++actualRows6496++actualRows6497++actualRows6498++actualRows6499++actualRows6500++actualRows6501++actualRows6502++actualRows6503++actualRows6504++actualRows6505++actualRows6506
def partOps100 : List WordIR.Op := [.shr 4315 8,.literal (BitVec.ofNat 32 0),.bnot 6444,.band 6443 6445,.shr 4315 8,.literal (BitVec.ofNat 32 0),.bnot 6448,.bxor 6447 6449,.shr 4315 8,.literal (BitVec.ofNat 32 0),.bnot 6452,.badd 6451 6453,.bnot 6454,.band 6450 6455,.bxor 6446 6456,.shr 6457 31,.literal (BitVec.ofNat 32 1),.bxor 6458 6459,.shr 4367 8,.literal (BitVec.ofNat 32 0),.bnot 6462,.band 6461 6463,.shr 4367 8,.literal (BitVec.ofNat 32 0),.bnot 6466,.bxor 6465 6467,.shr 4367 8,.literal (BitVec.ofNat 32 0),.bnot 6470,.badd 6469 6471,.bnot 6472,.band 6468 6473,.bxor 6464 6474,.shr 6475 31,.literal (BitVec.ofNat 32 1),.bxor 6476 6477,.shr 4419 8,.literal (BitVec.ofNat 32 0),.bnot 6480,.band 6479 6481,.shr 4419 8,.literal (BitVec.ofNat 32 0),.bnot 6484,.bxor 6483 6485,.shr 4419 8,.literal (BitVec.ofNat 32 0),.bnot 6488,.badd 6487 6489,.bnot 6490,.band 6486 6491,.bxor 6482 6492,.shr 6493 31,.literal (BitVec.ofNat 32 1),.bxor 6494 6495,.shr 4471 8,.literal (BitVec.ofNat 32 0),.bnot 6498,.band 6497 6499,.shr 4471 8,.literal (BitVec.ofNat 32 0),.bnot 6502,.bxor 6501 6503,.shr 4471 8,.literal (BitVec.ofNat 32 0)]
theorem partExact100 : partRows100=WordField.rows actualModulus 6443 partOps100 := by
  simp only [partRows100,partOps100,WordField.rows,rows6443,rows6444,rows6445,rows6446,rows6447,rows6448,rows6449,rows6450,rows6451,rows6452,rows6453,rows6454,rows6455,rows6456,rows6457,rows6458,rows6459,rows6460,rows6461,rows6462,rows6463,rows6464,rows6465,rows6466,rows6467,rows6468,rows6469,rows6470,rows6471,rows6472,rows6473,rows6474,rows6475,rows6476,rows6477,rows6478,rows6479,rows6480,rows6481,rows6482,rows6483,rows6484,rows6485,rows6486,rows6487,rows6488,rows6489,rows6490,rows6491,rows6492,rows6493,rows6494,rows6495,rows6496,rows6497,rows6498,rows6499,rows6500,rows6501,rows6502,rows6503,rows6504,rows6505,rows6506,List.append_assoc,List.append_nil]
theorem partLength100 : partOps100.length=64 := by decide
theorem partStats100 : partRows100.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows100=319944 := by
  simp only [partRows100,List.length_append,MatrixRowBlocks.rows_weight_append,stats6443.1,stats6443.2,stats6444.1,stats6444.2,stats6445.1,stats6445.2,stats6446.1,stats6446.2,stats6447.1,stats6447.2,stats6448.1,stats6448.2,stats6449.1,stats6449.2,stats6450.1,stats6450.2,stats6451.1,stats6451.2,stats6452.1,stats6452.2,stats6453.1,stats6453.2,stats6454.1,stats6454.2,stats6455.1,stats6455.2,stats6456.1,stats6456.2,stats6457.1,stats6457.2,stats6458.1,stats6458.2,stats6459.1,stats6459.2,stats6460.1,stats6460.2,stats6461.1,stats6461.2,stats6462.1,stats6462.2,stats6463.1,stats6463.2,stats6464.1,stats6464.2,stats6465.1,stats6465.2,stats6466.1,stats6466.2,stats6467.1,stats6467.2,stats6468.1,stats6468.2,stats6469.1,stats6469.2,stats6470.1,stats6470.2,stats6471.1,stats6471.2,stats6472.1,stats6472.2,stats6473.1,stats6473.2,stats6474.1,stats6474.2,stats6475.1,stats6475.2,stats6476.1,stats6476.2,stats6477.1,stats6477.2,stats6478.1,stats6478.2,stats6479.1,stats6479.2,stats6480.1,stats6480.2,stats6481.1,stats6481.2,stats6482.1,stats6482.2,stats6483.1,stats6483.2,stats6484.1,stats6484.2,stats6485.1,stats6485.2,stats6486.1,stats6486.2,stats6487.1,stats6487.2,stats6488.1,stats6488.2,stats6489.1,stats6489.2,stats6490.1,stats6490.2,stats6491.1,stats6491.2,stats6492.1,stats6492.2,stats6493.1,stats6493.2,stats6494.1,stats6494.2,stats6495.1,stats6495.2,stats6496.1,stats6496.2,stats6497.1,stats6497.2,stats6498.1,stats6498.2,stats6499.1,stats6499.2,stats6500.1,stats6500.2,stats6501.1,stats6501.2,stats6502.1,stats6502.2,stats6503.1,stats6503.2,stats6504.1,stats6504.2,stats6505.1,stats6505.2,stats6506.1,stats6506.2]
  decide
end PathRoundDispatchCheckedRows
