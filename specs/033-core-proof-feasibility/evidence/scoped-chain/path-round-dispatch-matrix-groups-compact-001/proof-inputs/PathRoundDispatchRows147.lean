import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData147
import PathRoundDispatchInstructionMatrixData148
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9451 : actualRows9451=WordField.canonicalRows actualModulus 9451 (.bnot 9406) := by core033_kernel_decide
theorem stats9451 : actualRows9451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9451=6276 := by core033_kernel_decide
theorem rows9452 : actualRows9452=WordField.canonicalRows actualModulus 9452 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9452 : actualRows9452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9452=2892 := by core033_kernel_decide
theorem rows9453 : actualRows9453=WordField.canonicalRows actualModulus 9453 (.badd 9451 9452) := by core033_kernel_decide
theorem stats9453 : actualRows9453.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9453=5388 := by core033_kernel_decide
theorem rows9454 : actualRows9454=WordField.canonicalRows actualModulus 9454 (.band 9453 4) := by core033_kernel_decide
theorem stats9454 : actualRows9454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9454=5124 := by core033_kernel_decide
theorem rows9455 : actualRows9455=WordField.canonicalRows actualModulus 9455 (.bnot 9406) := by core033_kernel_decide
theorem stats9455 : actualRows9455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9455=6276 := by core033_kernel_decide
theorem rows9456 : actualRows9456=WordField.canonicalRows actualModulus 9456 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9456 : actualRows9456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9456=2892 := by core033_kernel_decide
theorem rows9457 : actualRows9457=WordField.canonicalRows actualModulus 9457 (.badd 9455 9456) := by core033_kernel_decide
theorem stats9457 : actualRows9457.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9457=5388 := by core033_kernel_decide
theorem rows9458 : actualRows9458=WordField.canonicalRows actualModulus 9458 (.bnot 9457) := by core033_kernel_decide
theorem stats9458 : actualRows9458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9458=6276 := by core033_kernel_decide
theorem rows9459 : actualRows9459=WordField.canonicalRows actualModulus 9459 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9459 : actualRows9459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9459=2820 := by core033_kernel_decide
theorem rows9460 : actualRows9460=WordField.canonicalRows actualModulus 9460 (.band 9458 9459) := by core033_kernel_decide
theorem stats9460 : actualRows9460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9460=5124 := by core033_kernel_decide
theorem rows9461 : actualRows9461=WordField.canonicalRows actualModulus 9461 (.bxor 9454 9460) := by core033_kernel_decide
theorem stats9461 : actualRows9461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9461=7428 := by core033_kernel_decide
theorem rows9462 : actualRows9462=WordField.canonicalRows actualModulus 9462 (.bnot 9406) := by core033_kernel_decide
theorem stats9462 : actualRows9462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9462=6276 := by core033_kernel_decide
theorem rows9463 : actualRows9463=WordField.canonicalRows actualModulus 9463 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9463 : actualRows9463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9463=2892 := by core033_kernel_decide
theorem rows9464 : actualRows9464=WordField.canonicalRows actualModulus 9464 (.badd 9462 9463) := by core033_kernel_decide
theorem stats9464 : actualRows9464.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9464=5388 := by core033_kernel_decide
theorem rows9465 : actualRows9465=WordField.canonicalRows actualModulus 9465 (.band 9464 5) := by core033_kernel_decide
theorem stats9465 : actualRows9465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9465=5124 := by core033_kernel_decide
theorem rows9466 : actualRows9466=WordField.canonicalRows actualModulus 9466 (.bnot 9406) := by core033_kernel_decide
theorem stats9466 : actualRows9466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9466=6276 := by core033_kernel_decide
theorem rows9467 : actualRows9467=WordField.canonicalRows actualModulus 9467 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9467 : actualRows9467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9467=2892 := by core033_kernel_decide
theorem rows9468 : actualRows9468=WordField.canonicalRows actualModulus 9468 (.badd 9466 9467) := by core033_kernel_decide
theorem stats9468 : actualRows9468.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9468=5388 := by core033_kernel_decide
theorem rows9469 : actualRows9469=WordField.canonicalRows actualModulus 9469 (.bnot 9468) := by core033_kernel_decide
theorem stats9469 : actualRows9469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9469=6276 := by core033_kernel_decide
theorem rows9470 : actualRows9470=WordField.canonicalRows actualModulus 9470 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9470 : actualRows9470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9470=2820 := by core033_kernel_decide
theorem rows9471 : actualRows9471=WordField.canonicalRows actualModulus 9471 (.band 9469 9470) := by core033_kernel_decide
theorem stats9471 : actualRows9471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9471=5124 := by core033_kernel_decide
theorem rows9472 : actualRows9472=WordField.canonicalRows actualModulus 9472 (.bxor 9465 9471) := by core033_kernel_decide
theorem stats9472 : actualRows9472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9472=7428 := by core033_kernel_decide
theorem rows9473 : actualRows9473=WordField.canonicalRows actualModulus 9473 (.bnot 9406) := by core033_kernel_decide
theorem stats9473 : actualRows9473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9473=6276 := by core033_kernel_decide
theorem rows9474 : actualRows9474=WordField.canonicalRows actualModulus 9474 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9474 : actualRows9474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9474=2892 := by core033_kernel_decide
theorem rows9475 : actualRows9475=WordField.canonicalRows actualModulus 9475 (.badd 9473 9474) := by core033_kernel_decide
theorem stats9475 : actualRows9475.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9475=5388 := by core033_kernel_decide
theorem rows9476 : actualRows9476=WordField.canonicalRows actualModulus 9476 (.band 9475 6) := by core033_kernel_decide
theorem stats9476 : actualRows9476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9476=5124 := by core033_kernel_decide
theorem rows9477 : actualRows9477=WordField.canonicalRows actualModulus 9477 (.bnot 9406) := by core033_kernel_decide
theorem stats9477 : actualRows9477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9477=6276 := by core033_kernel_decide
theorem rows9478 : actualRows9478=WordField.canonicalRows actualModulus 9478 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9478 : actualRows9478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9478=2892 := by core033_kernel_decide
theorem rows9479 : actualRows9479=WordField.canonicalRows actualModulus 9479 (.badd 9477 9478) := by core033_kernel_decide
theorem stats9479 : actualRows9479.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9479=5388 := by core033_kernel_decide
theorem rows9480 : actualRows9480=WordField.canonicalRows actualModulus 9480 (.bnot 9479) := by core033_kernel_decide
theorem stats9480 : actualRows9480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9480=6276 := by core033_kernel_decide
theorem rows9481 : actualRows9481=WordField.canonicalRows actualModulus 9481 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9481 : actualRows9481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9481=2820 := by core033_kernel_decide
theorem rows9482 : actualRows9482=WordField.canonicalRows actualModulus 9482 (.band 9480 9481) := by core033_kernel_decide
theorem stats9482 : actualRows9482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9482=5124 := by core033_kernel_decide
theorem rows9483 : actualRows9483=WordField.canonicalRows actualModulus 9483 (.bxor 9476 9482) := by core033_kernel_decide
theorem stats9483 : actualRows9483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9483=7428 := by core033_kernel_decide
theorem rows9484 : actualRows9484=WordField.canonicalRows actualModulus 9484 (.bnot 9406) := by core033_kernel_decide
theorem stats9484 : actualRows9484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9484=6276 := by core033_kernel_decide
theorem rows9485 : actualRows9485=WordField.canonicalRows actualModulus 9485 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9485 : actualRows9485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9485=2892 := by core033_kernel_decide
theorem rows9486 : actualRows9486=WordField.canonicalRows actualModulus 9486 (.badd 9484 9485) := by core033_kernel_decide
theorem stats9486 : actualRows9486.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9486=5388 := by core033_kernel_decide
theorem rows9487 : actualRows9487=WordField.canonicalRows actualModulus 9487 (.band 9486 7) := by core033_kernel_decide
theorem stats9487 : actualRows9487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9487=5124 := by core033_kernel_decide
theorem rows9488 : actualRows9488=WordField.canonicalRows actualModulus 9488 (.bnot 9406) := by core033_kernel_decide
theorem stats9488 : actualRows9488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9488=6276 := by core033_kernel_decide
theorem rows9489 : actualRows9489=WordField.canonicalRows actualModulus 9489 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9489 : actualRows9489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9489=2892 := by core033_kernel_decide
theorem rows9490 : actualRows9490=WordField.canonicalRows actualModulus 9490 (.badd 9488 9489) := by core033_kernel_decide
theorem stats9490 : actualRows9490.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9490=5388 := by core033_kernel_decide
theorem rows9491 : actualRows9491=WordField.canonicalRows actualModulus 9491 (.bnot 9490) := by core033_kernel_decide
theorem stats9491 : actualRows9491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9491=6276 := by core033_kernel_decide
theorem rows9492 : actualRows9492=WordField.canonicalRows actualModulus 9492 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9492 : actualRows9492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9492=2820 := by core033_kernel_decide
theorem rows9493 : actualRows9493=WordField.canonicalRows actualModulus 9493 (.band 9491 9492) := by core033_kernel_decide
theorem stats9493 : actualRows9493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9493=5124 := by core033_kernel_decide
theorem rows9494 : actualRows9494=WordField.canonicalRows actualModulus 9494 (.bxor 9487 9493) := by core033_kernel_decide
theorem stats9494 : actualRows9494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9494=7428 := by core033_kernel_decide
theorem rows9495 : actualRows9495=WordField.canonicalRows actualModulus 9495 (.bnot 9406) := by core033_kernel_decide
theorem stats9495 : actualRows9495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9495=6276 := by core033_kernel_decide
theorem rows9496 : actualRows9496=WordField.canonicalRows actualModulus 9496 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9496 : actualRows9496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9496=2892 := by core033_kernel_decide
theorem rows9497 : actualRows9497=WordField.canonicalRows actualModulus 9497 (.badd 9495 9496) := by core033_kernel_decide
theorem stats9497 : actualRows9497.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9497=5388 := by core033_kernel_decide
theorem rows9498 : actualRows9498=WordField.canonicalRows actualModulus 9498 (.band 9497 8) := by core033_kernel_decide
theorem stats9498 : actualRows9498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9498=5124 := by core033_kernel_decide
theorem rows9499 : actualRows9499=WordField.canonicalRows actualModulus 9499 (.bnot 9406) := by core033_kernel_decide
theorem stats9499 : actualRows9499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9499=6276 := by core033_kernel_decide
theorem rows9500 : actualRows9500=WordField.canonicalRows actualModulus 9500 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9500 : actualRows9500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9500=2892 := by core033_kernel_decide
theorem rows9501 : actualRows9501=WordField.canonicalRows actualModulus 9501 (.badd 9499 9500) := by core033_kernel_decide
theorem stats9501 : actualRows9501.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9501=5388 := by core033_kernel_decide
theorem rows9502 : actualRows9502=WordField.canonicalRows actualModulus 9502 (.bnot 9501) := by core033_kernel_decide
theorem stats9502 : actualRows9502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9502=6276 := by core033_kernel_decide
theorem rows9503 : actualRows9503=WordField.canonicalRows actualModulus 9503 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9503 : actualRows9503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9503=2820 := by core033_kernel_decide
theorem rows9504 : actualRows9504=WordField.canonicalRows actualModulus 9504 (.band 9502 9503) := by core033_kernel_decide
theorem stats9504 : actualRows9504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9504=5124 := by core033_kernel_decide
theorem rows9505 : actualRows9505=WordField.canonicalRows actualModulus 9505 (.bxor 9498 9504) := by core033_kernel_decide
theorem stats9505 : actualRows9505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9505=7428 := by core033_kernel_decide
theorem rows9506 : actualRows9506=WordField.canonicalRows actualModulus 9506 (.bnot 9406) := by core033_kernel_decide
theorem stats9506 : actualRows9506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9506=6276 := by core033_kernel_decide
theorem rows9507 : actualRows9507=WordField.canonicalRows actualModulus 9507 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9507 : actualRows9507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9507=2892 := by core033_kernel_decide
theorem rows9508 : actualRows9508=WordField.canonicalRows actualModulus 9508 (.badd 9506 9507) := by core033_kernel_decide
theorem stats9508 : actualRows9508.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9508=5388 := by core033_kernel_decide
theorem rows9509 : actualRows9509=WordField.canonicalRows actualModulus 9509 (.band 9508 9) := by core033_kernel_decide
theorem stats9509 : actualRows9509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9509=5124 := by core033_kernel_decide
theorem rows9510 : actualRows9510=WordField.canonicalRows actualModulus 9510 (.bnot 9406) := by core033_kernel_decide
theorem stats9510 : actualRows9510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9510=6276 := by core033_kernel_decide
theorem rows9511 : actualRows9511=WordField.canonicalRows actualModulus 9511 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9511 : actualRows9511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9511=2892 := by core033_kernel_decide
theorem rows9512 : actualRows9512=WordField.canonicalRows actualModulus 9512 (.badd 9510 9511) := by core033_kernel_decide
theorem stats9512 : actualRows9512.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9512=5388 := by core033_kernel_decide
theorem rows9513 : actualRows9513=WordField.canonicalRows actualModulus 9513 (.bnot 9512) := by core033_kernel_decide
theorem stats9513 : actualRows9513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9513=6276 := by core033_kernel_decide
theorem rows9514 : actualRows9514=WordField.canonicalRows actualModulus 9514 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9514 : actualRows9514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9514=2820 := by core033_kernel_decide
def partRows147 : List R1CS.Row := actualRows9451++actualRows9452++actualRows9453++actualRows9454++actualRows9455++actualRows9456++actualRows9457++actualRows9458++actualRows9459++actualRows9460++actualRows9461++actualRows9462++actualRows9463++actualRows9464++actualRows9465++actualRows9466++actualRows9467++actualRows9468++actualRows9469++actualRows9470++actualRows9471++actualRows9472++actualRows9473++actualRows9474++actualRows9475++actualRows9476++actualRows9477++actualRows9478++actualRows9479++actualRows9480++actualRows9481++actualRows9482++actualRows9483++actualRows9484++actualRows9485++actualRows9486++actualRows9487++actualRows9488++actualRows9489++actualRows9490++actualRows9491++actualRows9492++actualRows9493++actualRows9494++actualRows9495++actualRows9496++actualRows9497++actualRows9498++actualRows9499++actualRows9500++actualRows9501++actualRows9502++actualRows9503++actualRows9504++actualRows9505++actualRows9506++actualRows9507++actualRows9508++actualRows9509++actualRows9510++actualRows9511++actualRows9512++actualRows9513++actualRows9514
def partOps147 : List WordIR.Op := [.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9451 9452,.band 9453 4,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9455 9456,.bnot 9457,.literal (BitVec.ofNat 32 0),.band 9458 9459,.bxor 9454 9460,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9462 9463,.band 9464 5,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9466 9467,.bnot 9468,.literal (BitVec.ofNat 32 0),.band 9469 9470,.bxor 9465 9471,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9473 9474,.band 9475 6,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9477 9478,.bnot 9479,.literal (BitVec.ofNat 32 0),.band 9480 9481,.bxor 9476 9482,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9484 9485,.band 9486 7,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9488 9489,.bnot 9490,.literal (BitVec.ofNat 32 0),.band 9491 9492,.bxor 9487 9493,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9495 9496,.band 9497 8,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9499 9500,.bnot 9501,.literal (BitVec.ofNat 32 0),.band 9502 9503,.bxor 9498 9504,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9506 9507,.band 9508 9,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9510 9511,.bnot 9512,.literal (BitVec.ofNat 32 0)]
theorem partExact147 : partRows147=WordField.rows actualModulus 9451 partOps147 := by
  simp only [partRows147,partOps147,WordField.rows,rows9451,rows9452,rows9453,rows9454,rows9455,rows9456,rows9457,rows9458,rows9459,rows9460,rows9461,rows9462,rows9463,rows9464,rows9465,rows9466,rows9467,rows9468,rows9469,rows9470,rows9471,rows9472,rows9473,rows9474,rows9475,rows9476,rows9477,rows9478,rows9479,rows9480,rows9481,rows9482,rows9483,rows9484,rows9485,rows9486,rows9487,rows9488,rows9489,rows9490,rows9491,rows9492,rows9493,rows9494,rows9495,rows9496,rows9497,rows9498,rows9499,rows9500,rows9501,rows9502,rows9503,rows9504,rows9505,rows9506,rows9507,rows9508,rows9509,rows9510,rows9511,rows9512,rows9513,rows9514,List.append_assoc,List.append_nil]
theorem partLength147 : partOps147.length=64 := by decide
theorem partStats147 : partRows147.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows147=322752 := by
  simp only [partRows147,List.length_append,MatrixRowBlocks.rows_weight_append,stats9451.1,stats9451.2,stats9452.1,stats9452.2,stats9453.1,stats9453.2,stats9454.1,stats9454.2,stats9455.1,stats9455.2,stats9456.1,stats9456.2,stats9457.1,stats9457.2,stats9458.1,stats9458.2,stats9459.1,stats9459.2,stats9460.1,stats9460.2,stats9461.1,stats9461.2,stats9462.1,stats9462.2,stats9463.1,stats9463.2,stats9464.1,stats9464.2,stats9465.1,stats9465.2,stats9466.1,stats9466.2,stats9467.1,stats9467.2,stats9468.1,stats9468.2,stats9469.1,stats9469.2,stats9470.1,stats9470.2,stats9471.1,stats9471.2,stats9472.1,stats9472.2,stats9473.1,stats9473.2,stats9474.1,stats9474.2,stats9475.1,stats9475.2,stats9476.1,stats9476.2,stats9477.1,stats9477.2,stats9478.1,stats9478.2,stats9479.1,stats9479.2,stats9480.1,stats9480.2,stats9481.1,stats9481.2,stats9482.1,stats9482.2,stats9483.1,stats9483.2,stats9484.1,stats9484.2,stats9485.1,stats9485.2,stats9486.1,stats9486.2,stats9487.1,stats9487.2,stats9488.1,stats9488.2,stats9489.1,stats9489.2,stats9490.1,stats9490.2,stats9491.1,stats9491.2,stats9492.1,stats9492.2,stats9493.1,stats9493.2,stats9494.1,stats9494.2,stats9495.1,stats9495.2,stats9496.1,stats9496.2,stats9497.1,stats9497.2,stats9498.1,stats9498.2,stats9499.1,stats9499.2,stats9500.1,stats9500.2,stats9501.1,stats9501.2,stats9502.1,stats9502.2,stats9503.1,stats9503.2,stats9504.1,stats9504.2,stats9505.1,stats9505.2,stats9506.1,stats9506.2,stats9507.1,stats9507.2,stats9508.1,stats9508.2,stats9509.1,stats9509.2,stats9510.1,stats9510.2,stats9511.1,stats9511.2,stats9512.1,stats9512.2,stats9513.1,stats9513.2,stats9514.1,stats9514.2]
  decide
end PathRoundDispatchCheckedRows
