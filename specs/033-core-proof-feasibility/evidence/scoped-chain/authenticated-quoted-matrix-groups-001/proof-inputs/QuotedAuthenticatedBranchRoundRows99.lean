import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData100
import AuthenticatedBranchRoundInstructionMatrixData101
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6454 : actualRows6454=WordField.canonicalRows actualModulus 6454 (.bnot 6453) := by core033_kernel_decide
theorem stats6454 : actualRows6454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6454=6276 := by core033_kernel_decide
theorem rows6455 : actualRows6455=WordField.canonicalRows actualModulus 6455 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6455 : actualRows6455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6455=2892 := by core033_kernel_decide
theorem rows6456 : actualRows6456=WordField.canonicalRows actualModulus 6456 (.badd 6454 6455) := by core033_kernel_decide
theorem stats6456 : actualRows6456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6456=5388 := by core033_kernel_decide
theorem rows6457 : actualRows6457=WordField.canonicalRows actualModulus 6457 (.bnot 6456) := by core033_kernel_decide
theorem stats6457 : actualRows6457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6457=6276 := by core033_kernel_decide
theorem rows6458 : actualRows6458=WordField.canonicalRows actualModulus 6458 (.band 6457 2669) := by core033_kernel_decide
theorem stats6458 : actualRows6458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6458=5124 := by core033_kernel_decide
theorem rows6459 : actualRows6459=WordField.canonicalRows actualModulus 6459 (.bxor 6432 6458) := by core033_kernel_decide
theorem stats6459 : actualRows6459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6459=7428 := by core033_kernel_decide
theorem rows6460 : actualRows6460=WordField.canonicalRows actualModulus 6460 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6460 : actualRows6460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6460=2892 := by core033_kernel_decide
theorem rows6461 : actualRows6461=WordField.canonicalRows actualModulus 6461 (.bxor 1299 6460) := by core033_kernel_decide
theorem stats6461 : actualRows6461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6461=7428 := by core033_kernel_decide
theorem rows6462 : actualRows6462=WordField.canonicalRows actualModulus 6462 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6462 : actualRows6462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6462=2820 := by core033_kernel_decide
theorem rows6463 : actualRows6463=WordField.canonicalRows actualModulus 6463 (.bnot 6462) := by core033_kernel_decide
theorem stats6463 : actualRows6463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6463=6276 := by core033_kernel_decide
theorem rows6464 : actualRows6464=WordField.canonicalRows actualModulus 6464 (.band 6461 6463) := by core033_kernel_decide
theorem stats6464 : actualRows6464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6464=5124 := by core033_kernel_decide
theorem rows6465 : actualRows6465=WordField.canonicalRows actualModulus 6465 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6465 : actualRows6465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6465=2892 := by core033_kernel_decide
theorem rows6466 : actualRows6466=WordField.canonicalRows actualModulus 6466 (.bxor 1299 6465) := by core033_kernel_decide
theorem stats6466 : actualRows6466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6466=7428 := by core033_kernel_decide
theorem rows6467 : actualRows6467=WordField.canonicalRows actualModulus 6467 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6467 : actualRows6467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6467=2820 := by core033_kernel_decide
theorem rows6468 : actualRows6468=WordField.canonicalRows actualModulus 6468 (.bnot 6467) := by core033_kernel_decide
theorem stats6468 : actualRows6468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6468=6276 := by core033_kernel_decide
theorem rows6469 : actualRows6469=WordField.canonicalRows actualModulus 6469 (.bxor 6466 6468) := by core033_kernel_decide
theorem stats6469 : actualRows6469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6469=7428 := by core033_kernel_decide
theorem rows6470 : actualRows6470=WordField.canonicalRows actualModulus 6470 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6470 : actualRows6470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6470=2892 := by core033_kernel_decide
theorem rows6471 : actualRows6471=WordField.canonicalRows actualModulus 6471 (.bxor 1299 6470) := by core033_kernel_decide
theorem stats6471 : actualRows6471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6471=7428 := by core033_kernel_decide
theorem rows6472 : actualRows6472=WordField.canonicalRows actualModulus 6472 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6472 : actualRows6472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6472=2820 := by core033_kernel_decide
theorem rows6473 : actualRows6473=WordField.canonicalRows actualModulus 6473 (.bnot 6472) := by core033_kernel_decide
theorem stats6473 : actualRows6473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6473=6276 := by core033_kernel_decide
theorem rows6474 : actualRows6474=WordField.canonicalRows actualModulus 6474 (.badd 6471 6473) := by core033_kernel_decide
theorem stats6474 : actualRows6474.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6474=5388 := by core033_kernel_decide
theorem rows6475 : actualRows6475=WordField.canonicalRows actualModulus 6475 (.bnot 6474) := by core033_kernel_decide
theorem stats6475 : actualRows6475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6475=6276 := by core033_kernel_decide
theorem rows6476 : actualRows6476=WordField.canonicalRows actualModulus 6476 (.band 6469 6475) := by core033_kernel_decide
theorem stats6476 : actualRows6476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6476=5124 := by core033_kernel_decide
theorem rows6477 : actualRows6477=WordField.canonicalRows actualModulus 6477 (.bxor 6464 6476) := by core033_kernel_decide
theorem stats6477 : actualRows6477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6477=7428 := by core033_kernel_decide
theorem rows6478 : actualRows6478=WordField.canonicalRows actualModulus 6478 (.shr 6477 31) := by core033_kernel_decide
theorem stats6478 : actualRows6478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6478=2892 := by core033_kernel_decide
theorem rows6479 : actualRows6479=WordField.canonicalRows actualModulus 6479 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6479 : actualRows6479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6479=2892 := by core033_kernel_decide
theorem rows6480 : actualRows6480=WordField.canonicalRows actualModulus 6480 (.bxor 6478 6479) := by core033_kernel_decide
theorem stats6480 : actualRows6480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6480=7428 := by core033_kernel_decide
theorem rows6481 : actualRows6481=WordField.canonicalRows actualModulus 6481 (.bnot 6480) := by core033_kernel_decide
theorem stats6481 : actualRows6481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6481=6276 := by core033_kernel_decide
theorem rows6482 : actualRows6482=WordField.canonicalRows actualModulus 6482 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6482 : actualRows6482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6482=2892 := by core033_kernel_decide
theorem rows6483 : actualRows6483=WordField.canonicalRows actualModulus 6483 (.badd 6481 6482) := by core033_kernel_decide
theorem stats6483 : actualRows6483.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6483=5388 := by core033_kernel_decide
theorem rows6484 : actualRows6484=WordField.canonicalRows actualModulus 6484 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6484 : actualRows6484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6484=2820 := by core033_kernel_decide
theorem rows6485 : actualRows6485=WordField.canonicalRows actualModulus 6485 (.band 6483 6484) := by core033_kernel_decide
theorem stats6485 : actualRows6485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6485=5124 := by core033_kernel_decide
theorem rows6486 : actualRows6486=WordField.canonicalRows actualModulus 6486 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6486 : actualRows6486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6486=2892 := by core033_kernel_decide
theorem rows6487 : actualRows6487=WordField.canonicalRows actualModulus 6487 (.bxor 1299 6486) := by core033_kernel_decide
theorem stats6487 : actualRows6487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6487=7428 := by core033_kernel_decide
theorem rows6488 : actualRows6488=WordField.canonicalRows actualModulus 6488 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6488 : actualRows6488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6488=2820 := by core033_kernel_decide
theorem rows6489 : actualRows6489=WordField.canonicalRows actualModulus 6489 (.bnot 6488) := by core033_kernel_decide
theorem stats6489 : actualRows6489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6489=6276 := by core033_kernel_decide
theorem rows6490 : actualRows6490=WordField.canonicalRows actualModulus 6490 (.band 6487 6489) := by core033_kernel_decide
theorem stats6490 : actualRows6490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6490=5124 := by core033_kernel_decide
theorem rows6491 : actualRows6491=WordField.canonicalRows actualModulus 6491 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6491 : actualRows6491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6491=2892 := by core033_kernel_decide
theorem rows6492 : actualRows6492=WordField.canonicalRows actualModulus 6492 (.bxor 1299 6491) := by core033_kernel_decide
theorem stats6492 : actualRows6492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6492=7428 := by core033_kernel_decide
theorem rows6493 : actualRows6493=WordField.canonicalRows actualModulus 6493 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6493 : actualRows6493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6493=2820 := by core033_kernel_decide
theorem rows6494 : actualRows6494=WordField.canonicalRows actualModulus 6494 (.bnot 6493) := by core033_kernel_decide
theorem stats6494 : actualRows6494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6494=6276 := by core033_kernel_decide
theorem rows6495 : actualRows6495=WordField.canonicalRows actualModulus 6495 (.bxor 6492 6494) := by core033_kernel_decide
theorem stats6495 : actualRows6495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6495=7428 := by core033_kernel_decide
theorem rows6496 : actualRows6496=WordField.canonicalRows actualModulus 6496 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6496 : actualRows6496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6496=2892 := by core033_kernel_decide
theorem rows6497 : actualRows6497=WordField.canonicalRows actualModulus 6497 (.bxor 1299 6496) := by core033_kernel_decide
theorem stats6497 : actualRows6497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6497=7428 := by core033_kernel_decide
theorem rows6498 : actualRows6498=WordField.canonicalRows actualModulus 6498 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6498 : actualRows6498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6498=2820 := by core033_kernel_decide
theorem rows6499 : actualRows6499=WordField.canonicalRows actualModulus 6499 (.bnot 6498) := by core033_kernel_decide
theorem stats6499 : actualRows6499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6499=6276 := by core033_kernel_decide
theorem rows6500 : actualRows6500=WordField.canonicalRows actualModulus 6500 (.badd 6497 6499) := by core033_kernel_decide
theorem stats6500 : actualRows6500.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6500=5388 := by core033_kernel_decide
theorem rows6501 : actualRows6501=WordField.canonicalRows actualModulus 6501 (.bnot 6500) := by core033_kernel_decide
theorem stats6501 : actualRows6501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6501=6276 := by core033_kernel_decide
theorem rows6502 : actualRows6502=WordField.canonicalRows actualModulus 6502 (.band 6495 6501) := by core033_kernel_decide
theorem stats6502 : actualRows6502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6502=5124 := by core033_kernel_decide
theorem rows6503 : actualRows6503=WordField.canonicalRows actualModulus 6503 (.bxor 6490 6502) := by core033_kernel_decide
theorem stats6503 : actualRows6503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6503=7428 := by core033_kernel_decide
theorem rows6504 : actualRows6504=WordField.canonicalRows actualModulus 6504 (.shr 6503 31) := by core033_kernel_decide
theorem stats6504 : actualRows6504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6504=2892 := by core033_kernel_decide
theorem rows6505 : actualRows6505=WordField.canonicalRows actualModulus 6505 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6505 : actualRows6505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6505=2892 := by core033_kernel_decide
theorem rows6506 : actualRows6506=WordField.canonicalRows actualModulus 6506 (.bxor 6504 6505) := by core033_kernel_decide
theorem stats6506 : actualRows6506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6506=7428 := by core033_kernel_decide
theorem rows6507 : actualRows6507=WordField.canonicalRows actualModulus 6507 (.bnot 6506) := by core033_kernel_decide
theorem stats6507 : actualRows6507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6507=6276 := by core033_kernel_decide
theorem rows6508 : actualRows6508=WordField.canonicalRows actualModulus 6508 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6508 : actualRows6508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6508=2892 := by core033_kernel_decide
theorem rows6509 : actualRows6509=WordField.canonicalRows actualModulus 6509 (.badd 6507 6508) := by core033_kernel_decide
theorem stats6509 : actualRows6509.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6509=5388 := by core033_kernel_decide
theorem rows6510 : actualRows6510=WordField.canonicalRows actualModulus 6510 (.bnot 6509) := by core033_kernel_decide
theorem stats6510 : actualRows6510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6510=6276 := by core033_kernel_decide
theorem rows6511 : actualRows6511=WordField.canonicalRows actualModulus 6511 (.band 6510 2672) := by core033_kernel_decide
theorem stats6511 : actualRows6511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6511=5124 := by core033_kernel_decide
theorem rows6512 : actualRows6512=WordField.canonicalRows actualModulus 6512 (.bxor 6485 6511) := by core033_kernel_decide
theorem stats6512 : actualRows6512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6512=7428 := by core033_kernel_decide
theorem rows6513 : actualRows6513=WordField.canonicalRows actualModulus 6513 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6513 : actualRows6513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6513=2892 := by core033_kernel_decide
theorem rows6514 : actualRows6514=WordField.canonicalRows actualModulus 6514 (.bxor 1299 6513) := by core033_kernel_decide
theorem stats6514 : actualRows6514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6514=7428 := by core033_kernel_decide
theorem rows6515 : actualRows6515=WordField.canonicalRows actualModulus 6515 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6515 : actualRows6515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6515=2820 := by core033_kernel_decide
theorem rows6516 : actualRows6516=WordField.canonicalRows actualModulus 6516 (.bnot 6515) := by core033_kernel_decide
theorem stats6516 : actualRows6516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6516=6276 := by core033_kernel_decide
theorem rows6517 : actualRows6517=WordField.canonicalRows actualModulus 6517 (.band 6514 6516) := by core033_kernel_decide
theorem stats6517 : actualRows6517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6517=5124 := by core033_kernel_decide
def partRows99 : List R1CS.Row := actualRows6454++actualRows6455++actualRows6456++actualRows6457++actualRows6458++actualRows6459++actualRows6460++actualRows6461++actualRows6462++actualRows6463++actualRows6464++actualRows6465++actualRows6466++actualRows6467++actualRows6468++actualRows6469++actualRows6470++actualRows6471++actualRows6472++actualRows6473++actualRows6474++actualRows6475++actualRows6476++actualRows6477++actualRows6478++actualRows6479++actualRows6480++actualRows6481++actualRows6482++actualRows6483++actualRows6484++actualRows6485++actualRows6486++actualRows6487++actualRows6488++actualRows6489++actualRows6490++actualRows6491++actualRows6492++actualRows6493++actualRows6494++actualRows6495++actualRows6496++actualRows6497++actualRows6498++actualRows6499++actualRows6500++actualRows6501++actualRows6502++actualRows6503++actualRows6504++actualRows6505++actualRows6506++actualRows6507++actualRows6508++actualRows6509++actualRows6510++actualRows6511++actualRows6512++actualRows6513++actualRows6514++actualRows6515++actualRows6516++actualRows6517
def partOps99 : List WordIR.Op := [.bnot 6453,.literal (BitVec.ofNat 32 1),.badd 6454 6455,.bnot 6456,.band 6457 2669,.bxor 6432 6458,.literal (BitVec.ofNat 32 2),.bxor 1299 6460,.literal (BitVec.ofNat 32 0),.bnot 6462,.band 6461 6463,.literal (BitVec.ofNat 32 2),.bxor 1299 6465,.literal (BitVec.ofNat 32 0),.bnot 6467,.bxor 6466 6468,.literal (BitVec.ofNat 32 2),.bxor 1299 6470,.literal (BitVec.ofNat 32 0),.bnot 6472,.badd 6471 6473,.bnot 6474,.band 6469 6475,.bxor 6464 6476,.shr 6477 31,.literal (BitVec.ofNat 32 1),.bxor 6478 6479,.bnot 6480,.literal (BitVec.ofNat 32 1),.badd 6481 6482,.literal (BitVec.ofNat 32 0),.band 6483 6484,.literal (BitVec.ofNat 32 2),.bxor 1299 6486,.literal (BitVec.ofNat 32 0),.bnot 6488,.band 6487 6489,.literal (BitVec.ofNat 32 2),.bxor 1299 6491,.literal (BitVec.ofNat 32 0),.bnot 6493,.bxor 6492 6494,.literal (BitVec.ofNat 32 2),.bxor 1299 6496,.literal (BitVec.ofNat 32 0),.bnot 6498,.badd 6497 6499,.bnot 6500,.band 6495 6501,.bxor 6490 6502,.shr 6503 31,.literal (BitVec.ofNat 32 1),.bxor 6504 6505,.bnot 6506,.literal (BitVec.ofNat 32 1),.badd 6507 6508,.bnot 6509,.band 6510 2672,.bxor 6485 6511,.literal (BitVec.ofNat 32 2),.bxor 1299 6513,.literal (BitVec.ofNat 32 0),.bnot 6515,.band 6514 6516]
theorem partExact99 : partRows99=WordField.rows actualModulus 6454 partOps99 := by
  simp only [partRows99,partOps99,WordField.rows,rows6454,rows6455,rows6456,rows6457,rows6458,rows6459,rows6460,rows6461,rows6462,rows6463,rows6464,rows6465,rows6466,rows6467,rows6468,rows6469,rows6470,rows6471,rows6472,rows6473,rows6474,rows6475,rows6476,rows6477,rows6478,rows6479,rows6480,rows6481,rows6482,rows6483,rows6484,rows6485,rows6486,rows6487,rows6488,rows6489,rows6490,rows6491,rows6492,rows6493,rows6494,rows6495,rows6496,rows6497,rows6498,rows6499,rows6500,rows6501,rows6502,rows6503,rows6504,rows6505,rows6506,rows6507,rows6508,rows6509,rows6510,rows6511,rows6512,rows6513,rows6514,rows6515,rows6516,rows6517,List.append_assoc,List.append_nil]
theorem partLength99 : partOps99.length=64 := by decide
theorem partStats99 : partRows99.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows99=330264 := by
  simp only [partRows99,List.length_append,MatrixRowBlocks.rows_weight_append,stats6454.1,stats6454.2,stats6455.1,stats6455.2,stats6456.1,stats6456.2,stats6457.1,stats6457.2,stats6458.1,stats6458.2,stats6459.1,stats6459.2,stats6460.1,stats6460.2,stats6461.1,stats6461.2,stats6462.1,stats6462.2,stats6463.1,stats6463.2,stats6464.1,stats6464.2,stats6465.1,stats6465.2,stats6466.1,stats6466.2,stats6467.1,stats6467.2,stats6468.1,stats6468.2,stats6469.1,stats6469.2,stats6470.1,stats6470.2,stats6471.1,stats6471.2,stats6472.1,stats6472.2,stats6473.1,stats6473.2,stats6474.1,stats6474.2,stats6475.1,stats6475.2,stats6476.1,stats6476.2,stats6477.1,stats6477.2,stats6478.1,stats6478.2,stats6479.1,stats6479.2,stats6480.1,stats6480.2,stats6481.1,stats6481.2,stats6482.1,stats6482.2,stats6483.1,stats6483.2,stats6484.1,stats6484.2,stats6485.1,stats6485.2,stats6486.1,stats6486.2,stats6487.1,stats6487.2,stats6488.1,stats6488.2,stats6489.1,stats6489.2,stats6490.1,stats6490.2,stats6491.1,stats6491.2,stats6492.1,stats6492.2,stats6493.1,stats6493.2,stats6494.1,stats6494.2,stats6495.1,stats6495.2,stats6496.1,stats6496.2,stats6497.1,stats6497.2,stats6498.1,stats6498.2,stats6499.1,stats6499.2,stats6500.1,stats6500.2,stats6501.1,stats6501.2,stats6502.1,stats6502.2,stats6503.1,stats6503.2,stats6504.1,stats6504.2,stats6505.1,stats6505.2,stats6506.1,stats6506.2,stats6507.1,stats6507.2,stats6508.1,stats6508.2,stats6509.1,stats6509.2,stats6510.1,stats6510.2,stats6511.1,stats6511.2,stats6512.1,stats6512.2,stats6513.1,stats6513.2,stats6514.1,stats6514.2,stats6515.1,stats6515.2,stats6516.1,stats6516.2,stats6517.1,stats6517.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
