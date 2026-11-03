import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData147
import PairedPathRoundInstructionMatrixData148
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9440 : actualRows9440=WordField.canonicalRows actualModulus 9440 (.rotr 9421 22) := by core033_kernel_decide
theorem stats9440 : actualRows9440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9440=5124 := by core033_kernel_decide
theorem rows9441 : actualRows9441=WordField.canonicalRows actualModulus 9441 (.bxor 9439 9440) := by core033_kernel_decide
theorem stats9441 : actualRows9441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9441=7428 := by core033_kernel_decide
theorem rows9442 : actualRows9442=WordField.canonicalRows actualModulus 9442 (.band 9421 9394) := by core033_kernel_decide
theorem stats9442 : actualRows9442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9442=5124 := by core033_kernel_decide
theorem rows9443 : actualRows9443=WordField.canonicalRows actualModulus 9443 (.band 9421 9367) := by core033_kernel_decide
theorem stats9443 : actualRows9443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9443=5124 := by core033_kernel_decide
theorem rows9444 : actualRows9444=WordField.canonicalRows actualModulus 9444 (.bxor 9442 9443) := by core033_kernel_decide
theorem stats9444 : actualRows9444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9444=7428 := by core033_kernel_decide
theorem rows9445 : actualRows9445=WordField.canonicalRows actualModulus 9445 (.band 9394 9367) := by core033_kernel_decide
theorem stats9445 : actualRows9445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9445=5124 := by core033_kernel_decide
theorem rows9446 : actualRows9446=WordField.canonicalRows actualModulus 9446 (.bxor 9444 9445) := by core033_kernel_decide
theorem stats9446 : actualRows9446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9446=7428 := by core033_kernel_decide
theorem rows9447 : actualRows9447=WordField.canonicalRows actualModulus 9447 (.badd 9441 9446) := by core033_kernel_decide
theorem stats9447 : actualRows9447.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9447=5388 := by core033_kernel_decide
theorem rows9448 : actualRows9448=WordField.canonicalRows actualModulus 9448 (.badd 9436 9447) := by core033_kernel_decide
theorem stats9448 : actualRows9448.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9448=5388 := by core033_kernel_decide
theorem rows9449 : actualRows9449=WordField.canonicalRows actualModulus 9449 (.badd 9340 9436) := by core033_kernel_decide
theorem stats9449 : actualRows9449.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9449=5388 := by core033_kernel_decide
theorem rows9450 : actualRows9450=WordField.canonicalRows actualModulus 9450 (.rotr 9449 6) := by core033_kernel_decide
theorem stats9450 : actualRows9450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9450=5124 := by core033_kernel_decide
theorem rows9451 : actualRows9451=WordField.canonicalRows actualModulus 9451 (.rotr 9449 11) := by core033_kernel_decide
theorem stats9451 : actualRows9451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9451=5124 := by core033_kernel_decide
theorem rows9452 : actualRows9452=WordField.canonicalRows actualModulus 9452 (.bxor 9450 9451) := by core033_kernel_decide
theorem stats9452 : actualRows9452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9452=7428 := by core033_kernel_decide
theorem rows9453 : actualRows9453=WordField.canonicalRows actualModulus 9453 (.rotr 9449 25) := by core033_kernel_decide
theorem stats9453 : actualRows9453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9453=5124 := by core033_kernel_decide
theorem rows9454 : actualRows9454=WordField.canonicalRows actualModulus 9454 (.bxor 9452 9453) := by core033_kernel_decide
theorem stats9454 : actualRows9454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9454=7428 := by core033_kernel_decide
theorem rows9455 : actualRows9455=WordField.canonicalRows actualModulus 9455 (.badd 9368 9454) := by core033_kernel_decide
theorem stats9455 : actualRows9455.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9455=5388 := by core033_kernel_decide
theorem rows9456 : actualRows9456=WordField.canonicalRows actualModulus 9456 (.band 9449 9422) := by core033_kernel_decide
theorem stats9456 : actualRows9456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9456=5124 := by core033_kernel_decide
theorem rows9457 : actualRows9457=WordField.canonicalRows actualModulus 9457 (.bnot 9449) := by core033_kernel_decide
theorem stats9457 : actualRows9457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9457=6276 := by core033_kernel_decide
theorem rows9458 : actualRows9458=WordField.canonicalRows actualModulus 9458 (.band 9457 9395) := by core033_kernel_decide
theorem stats9458 : actualRows9458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9458=5124 := by core033_kernel_decide
theorem rows9459 : actualRows9459=WordField.canonicalRows actualModulus 9459 (.bxor 9456 9458) := by core033_kernel_decide
theorem stats9459 : actualRows9459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9459=7428 := by core033_kernel_decide
theorem rows9460 : actualRows9460=WordField.canonicalRows actualModulus 9460 (.badd 9455 9459) := by core033_kernel_decide
theorem stats9460 : actualRows9460.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9460=5388 := by core033_kernel_decide
theorem rows9461 : actualRows9461=WordField.canonicalRows actualModulus 9461 (.literal (BitVec.ofNat 32 883997877)) := by core033_kernel_decide
theorem stats9461 : actualRows9461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9461=3972 := by core033_kernel_decide
theorem rows9462 : actualRows9462=WordField.canonicalRows actualModulus 9462 (.badd 9460 9461) := by core033_kernel_decide
theorem stats9462 : actualRows9462.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9462=5388 := by core033_kernel_decide
theorem rows9463 : actualRows9463=WordField.canonicalRows actualModulus 9463 (.badd 9462 7916) := by core033_kernel_decide
theorem stats9463 : actualRows9463.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9463=5388 := by core033_kernel_decide
theorem rows9464 : actualRows9464=WordField.canonicalRows actualModulus 9464 (.rotr 9448 2) := by core033_kernel_decide
theorem stats9464 : actualRows9464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9464=5124 := by core033_kernel_decide
theorem rows9465 : actualRows9465=WordField.canonicalRows actualModulus 9465 (.rotr 9448 13) := by core033_kernel_decide
theorem stats9465 : actualRows9465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9465=5124 := by core033_kernel_decide
theorem rows9466 : actualRows9466=WordField.canonicalRows actualModulus 9466 (.bxor 9464 9465) := by core033_kernel_decide
theorem stats9466 : actualRows9466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9466=7428 := by core033_kernel_decide
theorem rows9467 : actualRows9467=WordField.canonicalRows actualModulus 9467 (.rotr 9448 22) := by core033_kernel_decide
theorem stats9467 : actualRows9467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9467=5124 := by core033_kernel_decide
theorem rows9468 : actualRows9468=WordField.canonicalRows actualModulus 9468 (.bxor 9466 9467) := by core033_kernel_decide
theorem stats9468 : actualRows9468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9468=7428 := by core033_kernel_decide
theorem rows9469 : actualRows9469=WordField.canonicalRows actualModulus 9469 (.band 9448 9421) := by core033_kernel_decide
theorem stats9469 : actualRows9469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9469=5124 := by core033_kernel_decide
theorem rows9470 : actualRows9470=WordField.canonicalRows actualModulus 9470 (.band 9448 9394) := by core033_kernel_decide
theorem stats9470 : actualRows9470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9470=5124 := by core033_kernel_decide
theorem rows9471 : actualRows9471=WordField.canonicalRows actualModulus 9471 (.bxor 9469 9470) := by core033_kernel_decide
theorem stats9471 : actualRows9471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9471=7428 := by core033_kernel_decide
theorem rows9472 : actualRows9472=WordField.canonicalRows actualModulus 9472 (.band 9421 9394) := by core033_kernel_decide
theorem stats9472 : actualRows9472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9472=5124 := by core033_kernel_decide
theorem rows9473 : actualRows9473=WordField.canonicalRows actualModulus 9473 (.bxor 9471 9472) := by core033_kernel_decide
theorem stats9473 : actualRows9473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9473=7428 := by core033_kernel_decide
theorem rows9474 : actualRows9474=WordField.canonicalRows actualModulus 9474 (.badd 9468 9473) := by core033_kernel_decide
theorem stats9474 : actualRows9474.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9474=5388 := by core033_kernel_decide
theorem rows9475 : actualRows9475=WordField.canonicalRows actualModulus 9475 (.badd 9463 9474) := by core033_kernel_decide
theorem stats9475 : actualRows9475.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9475=5388 := by core033_kernel_decide
theorem rows9476 : actualRows9476=WordField.canonicalRows actualModulus 9476 (.badd 9367 9463) := by core033_kernel_decide
theorem stats9476 : actualRows9476.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9476=5388 := by core033_kernel_decide
theorem rows9477 : actualRows9477=WordField.canonicalRows actualModulus 9477 (.rotr 9476 6) := by core033_kernel_decide
theorem stats9477 : actualRows9477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9477=5124 := by core033_kernel_decide
theorem rows9478 : actualRows9478=WordField.canonicalRows actualModulus 9478 (.rotr 9476 11) := by core033_kernel_decide
theorem stats9478 : actualRows9478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9478=5124 := by core033_kernel_decide
theorem rows9479 : actualRows9479=WordField.canonicalRows actualModulus 9479 (.bxor 9477 9478) := by core033_kernel_decide
theorem stats9479 : actualRows9479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9479=7428 := by core033_kernel_decide
theorem rows9480 : actualRows9480=WordField.canonicalRows actualModulus 9480 (.rotr 9476 25) := by core033_kernel_decide
theorem stats9480 : actualRows9480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9480=5124 := by core033_kernel_decide
theorem rows9481 : actualRows9481=WordField.canonicalRows actualModulus 9481 (.bxor 9479 9480) := by core033_kernel_decide
theorem stats9481 : actualRows9481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9481=7428 := by core033_kernel_decide
theorem rows9482 : actualRows9482=WordField.canonicalRows actualModulus 9482 (.badd 9395 9481) := by core033_kernel_decide
theorem stats9482 : actualRows9482.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9482=5388 := by core033_kernel_decide
theorem rows9483 : actualRows9483=WordField.canonicalRows actualModulus 9483 (.band 9476 9449) := by core033_kernel_decide
theorem stats9483 : actualRows9483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9483=5124 := by core033_kernel_decide
theorem rows9484 : actualRows9484=WordField.canonicalRows actualModulus 9484 (.bnot 9476) := by core033_kernel_decide
theorem stats9484 : actualRows9484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9484=6276 := by core033_kernel_decide
theorem rows9485 : actualRows9485=WordField.canonicalRows actualModulus 9485 (.band 9484 9422) := by core033_kernel_decide
theorem stats9485 : actualRows9485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9485=5124 := by core033_kernel_decide
theorem rows9486 : actualRows9486=WordField.canonicalRows actualModulus 9486 (.bxor 9483 9485) := by core033_kernel_decide
theorem stats9486 : actualRows9486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9486=7428 := by core033_kernel_decide
theorem rows9487 : actualRows9487=WordField.canonicalRows actualModulus 9487 (.badd 9482 9486) := by core033_kernel_decide
theorem stats9487 : actualRows9487.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9487=5388 := by core033_kernel_decide
theorem rows9488 : actualRows9488=WordField.canonicalRows actualModulus 9488 (.literal (BitVec.ofNat 32 958139571)) := by core033_kernel_decide
theorem stats9488 : actualRows9488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9488=3828 := by core033_kernel_decide
theorem rows9489 : actualRows9489=WordField.canonicalRows actualModulus 9489 (.badd 9487 9488) := by core033_kernel_decide
theorem stats9489 : actualRows9489.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9489=5388 := by core033_kernel_decide
theorem rows9490 : actualRows9490=WordField.canonicalRows actualModulus 9490 (.badd 9489 7929) := by core033_kernel_decide
theorem stats9490 : actualRows9490.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9490=5388 := by core033_kernel_decide
theorem rows9491 : actualRows9491=WordField.canonicalRows actualModulus 9491 (.rotr 9475 2) := by core033_kernel_decide
theorem stats9491 : actualRows9491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9491=5124 := by core033_kernel_decide
theorem rows9492 : actualRows9492=WordField.canonicalRows actualModulus 9492 (.rotr 9475 13) := by core033_kernel_decide
theorem stats9492 : actualRows9492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9492=5124 := by core033_kernel_decide
theorem rows9493 : actualRows9493=WordField.canonicalRows actualModulus 9493 (.bxor 9491 9492) := by core033_kernel_decide
theorem stats9493 : actualRows9493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9493=7428 := by core033_kernel_decide
theorem rows9494 : actualRows9494=WordField.canonicalRows actualModulus 9494 (.rotr 9475 22) := by core033_kernel_decide
theorem stats9494 : actualRows9494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9494=5124 := by core033_kernel_decide
theorem rows9495 : actualRows9495=WordField.canonicalRows actualModulus 9495 (.bxor 9493 9494) := by core033_kernel_decide
theorem stats9495 : actualRows9495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9495=7428 := by core033_kernel_decide
theorem rows9496 : actualRows9496=WordField.canonicalRows actualModulus 9496 (.band 9475 9448) := by core033_kernel_decide
theorem stats9496 : actualRows9496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9496=5124 := by core033_kernel_decide
theorem rows9497 : actualRows9497=WordField.canonicalRows actualModulus 9497 (.band 9475 9421) := by core033_kernel_decide
theorem stats9497 : actualRows9497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9497=5124 := by core033_kernel_decide
theorem rows9498 : actualRows9498=WordField.canonicalRows actualModulus 9498 (.bxor 9496 9497) := by core033_kernel_decide
theorem stats9498 : actualRows9498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9498=7428 := by core033_kernel_decide
theorem rows9499 : actualRows9499=WordField.canonicalRows actualModulus 9499 (.band 9448 9421) := by core033_kernel_decide
theorem stats9499 : actualRows9499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9499=5124 := by core033_kernel_decide
theorem rows9500 : actualRows9500=WordField.canonicalRows actualModulus 9500 (.bxor 9498 9499) := by core033_kernel_decide
theorem stats9500 : actualRows9500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9500=7428 := by core033_kernel_decide
theorem rows9501 : actualRows9501=WordField.canonicalRows actualModulus 9501 (.badd 9495 9500) := by core033_kernel_decide
theorem stats9501 : actualRows9501.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9501=5388 := by core033_kernel_decide
theorem rows9502 : actualRows9502=WordField.canonicalRows actualModulus 9502 (.badd 9490 9501) := by core033_kernel_decide
theorem stats9502 : actualRows9502.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9502=5388 := by core033_kernel_decide
theorem rows9503 : actualRows9503=WordField.canonicalRows actualModulus 9503 (.badd 9394 9490) := by core033_kernel_decide
theorem stats9503 : actualRows9503.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9503=5388 := by core033_kernel_decide
def partRows146 : List R1CS.Row := actualRows9440++actualRows9441++actualRows9442++actualRows9443++actualRows9444++actualRows9445++actualRows9446++actualRows9447++actualRows9448++actualRows9449++actualRows9450++actualRows9451++actualRows9452++actualRows9453++actualRows9454++actualRows9455++actualRows9456++actualRows9457++actualRows9458++actualRows9459++actualRows9460++actualRows9461++actualRows9462++actualRows9463++actualRows9464++actualRows9465++actualRows9466++actualRows9467++actualRows9468++actualRows9469++actualRows9470++actualRows9471++actualRows9472++actualRows9473++actualRows9474++actualRows9475++actualRows9476++actualRows9477++actualRows9478++actualRows9479++actualRows9480++actualRows9481++actualRows9482++actualRows9483++actualRows9484++actualRows9485++actualRows9486++actualRows9487++actualRows9488++actualRows9489++actualRows9490++actualRows9491++actualRows9492++actualRows9493++actualRows9494++actualRows9495++actualRows9496++actualRows9497++actualRows9498++actualRows9499++actualRows9500++actualRows9501++actualRows9502++actualRows9503
def partOps146 : List WordIR.Op := [.rotr 9421 22,.bxor 9439 9440,.band 9421 9394,.band 9421 9367,.bxor 9442 9443,.band 9394 9367,.bxor 9444 9445,.badd 9441 9446,.badd 9436 9447,.badd 9340 9436,.rotr 9449 6,.rotr 9449 11,.bxor 9450 9451,.rotr 9449 25,.bxor 9452 9453,.badd 9368 9454,.band 9449 9422,.bnot 9449,.band 9457 9395,.bxor 9456 9458,.badd 9455 9459,.literal (BitVec.ofNat 32 883997877),.badd 9460 9461,.badd 9462 7916,.rotr 9448 2,.rotr 9448 13,.bxor 9464 9465,.rotr 9448 22,.bxor 9466 9467,.band 9448 9421,.band 9448 9394,.bxor 9469 9470,.band 9421 9394,.bxor 9471 9472,.badd 9468 9473,.badd 9463 9474,.badd 9367 9463,.rotr 9476 6,.rotr 9476 11,.bxor 9477 9478,.rotr 9476 25,.bxor 9479 9480,.badd 9395 9481,.band 9476 9449,.bnot 9476,.band 9484 9422,.bxor 9483 9485,.badd 9482 9486,.literal (BitVec.ofNat 32 958139571),.badd 9487 9488,.badd 9489 7929,.rotr 9475 2,.rotr 9475 13,.bxor 9491 9492,.rotr 9475 22,.bxor 9493 9494,.band 9475 9448,.band 9475 9421,.bxor 9496 9497,.band 9448 9421,.bxor 9498 9499,.badd 9495 9500,.badd 9490 9501,.badd 9394 9490]
theorem partExact146 : partRows146=WordField.rows actualModulus 9440 partOps146 := by
  simp only [partRows146,partOps146,WordField.rows,rows9440,rows9441,rows9442,rows9443,rows9444,rows9445,rows9446,rows9447,rows9448,rows9449,rows9450,rows9451,rows9452,rows9453,rows9454,rows9455,rows9456,rows9457,rows9458,rows9459,rows9460,rows9461,rows9462,rows9463,rows9464,rows9465,rows9466,rows9467,rows9468,rows9469,rows9470,rows9471,rows9472,rows9473,rows9474,rows9475,rows9476,rows9477,rows9478,rows9479,rows9480,rows9481,rows9482,rows9483,rows9484,rows9485,rows9486,rows9487,rows9488,rows9489,rows9490,rows9491,rows9492,rows9493,rows9494,rows9495,rows9496,rows9497,rows9498,rows9499,rows9500,rows9501,rows9502,rows9503,List.append_assoc,List.append_nil]
theorem partLength146 : partOps146.length=64 := by decide
theorem partStats146 : partRows146.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows146=371448 := by
  simp only [partRows146,List.length_append,MatrixRowBlocks.rows_weight_append,stats9440.1,stats9440.2,stats9441.1,stats9441.2,stats9442.1,stats9442.2,stats9443.1,stats9443.2,stats9444.1,stats9444.2,stats9445.1,stats9445.2,stats9446.1,stats9446.2,stats9447.1,stats9447.2,stats9448.1,stats9448.2,stats9449.1,stats9449.2,stats9450.1,stats9450.2,stats9451.1,stats9451.2,stats9452.1,stats9452.2,stats9453.1,stats9453.2,stats9454.1,stats9454.2,stats9455.1,stats9455.2,stats9456.1,stats9456.2,stats9457.1,stats9457.2,stats9458.1,stats9458.2,stats9459.1,stats9459.2,stats9460.1,stats9460.2,stats9461.1,stats9461.2,stats9462.1,stats9462.2,stats9463.1,stats9463.2,stats9464.1,stats9464.2,stats9465.1,stats9465.2,stats9466.1,stats9466.2,stats9467.1,stats9467.2,stats9468.1,stats9468.2,stats9469.1,stats9469.2,stats9470.1,stats9470.2,stats9471.1,stats9471.2,stats9472.1,stats9472.2,stats9473.1,stats9473.2,stats9474.1,stats9474.2,stats9475.1,stats9475.2,stats9476.1,stats9476.2,stats9477.1,stats9477.2,stats9478.1,stats9478.2,stats9479.1,stats9479.2,stats9480.1,stats9480.2,stats9481.1,stats9481.2,stats9482.1,stats9482.2,stats9483.1,stats9483.2,stats9484.1,stats9484.2,stats9485.1,stats9485.2,stats9486.1,stats9486.2,stats9487.1,stats9487.2,stats9488.1,stats9488.2,stats9489.1,stats9489.2,stats9490.1,stats9490.2,stats9491.1,stats9491.2,stats9492.1,stats9492.2,stats9493.1,stats9493.2,stats9494.1,stats9494.2,stats9495.1,stats9495.2,stats9496.1,stats9496.2,stats9497.1,stats9497.2,stats9498.1,stats9498.2,stats9499.1,stats9499.2,stats9500.1,stats9500.2,stats9501.1,stats9501.2,stats9502.1,stats9502.2,stats9503.1,stats9503.2]
  decide
end QuotedPairedPathRoundCheckedRows
