import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData69
import PairedPathRoundInstructionMatrixData70
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4448 : actualRows4448=WordField.canonicalRows actualModulus 4448 (.bnot 4447) := by core033_kernel_decide
theorem stats4448 : actualRows4448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4448=6276 := by core033_kernel_decide
theorem rows4449 : actualRows4449=WordField.canonicalRows actualModulus 4449 (.band 4446 4448) := by core033_kernel_decide
theorem stats4449 : actualRows4449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4449=5124 := by core033_kernel_decide
theorem rows4450 : actualRows4450=WordField.canonicalRows actualModulus 4450 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4450 : actualRows4450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4450=2892 := by core033_kernel_decide
theorem rows4451 : actualRows4451=WordField.canonicalRows actualModulus 4451 (.bxor 616 4450) := by core033_kernel_decide
theorem stats4451 : actualRows4451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4451=7428 := by core033_kernel_decide
theorem rows4452 : actualRows4452=WordField.canonicalRows actualModulus 4452 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4452 : actualRows4452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4452=2820 := by core033_kernel_decide
theorem rows4453 : actualRows4453=WordField.canonicalRows actualModulus 4453 (.bnot 4452) := by core033_kernel_decide
theorem stats4453 : actualRows4453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4453=6276 := by core033_kernel_decide
theorem rows4454 : actualRows4454=WordField.canonicalRows actualModulus 4454 (.bxor 4451 4453) := by core033_kernel_decide
theorem stats4454 : actualRows4454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4454=7428 := by core033_kernel_decide
theorem rows4455 : actualRows4455=WordField.canonicalRows actualModulus 4455 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4455 : actualRows4455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4455=2892 := by core033_kernel_decide
theorem rows4456 : actualRows4456=WordField.canonicalRows actualModulus 4456 (.bxor 616 4455) := by core033_kernel_decide
theorem stats4456 : actualRows4456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4456=7428 := by core033_kernel_decide
theorem rows4457 : actualRows4457=WordField.canonicalRows actualModulus 4457 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4457 : actualRows4457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4457=2820 := by core033_kernel_decide
theorem rows4458 : actualRows4458=WordField.canonicalRows actualModulus 4458 (.bnot 4457) := by core033_kernel_decide
theorem stats4458 : actualRows4458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4458=6276 := by core033_kernel_decide
theorem rows4459 : actualRows4459=WordField.canonicalRows actualModulus 4459 (.badd 4456 4458) := by core033_kernel_decide
theorem stats4459 : actualRows4459.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4459=5388 := by core033_kernel_decide
theorem rows4460 : actualRows4460=WordField.canonicalRows actualModulus 4460 (.bnot 4459) := by core033_kernel_decide
theorem stats4460 : actualRows4460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4460=6276 := by core033_kernel_decide
theorem rows4461 : actualRows4461=WordField.canonicalRows actualModulus 4461 (.band 4454 4460) := by core033_kernel_decide
theorem stats4461 : actualRows4461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4461=5124 := by core033_kernel_decide
theorem rows4462 : actualRows4462=WordField.canonicalRows actualModulus 4462 (.bxor 4449 4461) := by core033_kernel_decide
theorem stats4462 : actualRows4462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4462=7428 := by core033_kernel_decide
theorem rows4463 : actualRows4463=WordField.canonicalRows actualModulus 4463 (.shr 4462 31) := by core033_kernel_decide
theorem stats4463 : actualRows4463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4463=2892 := by core033_kernel_decide
theorem rows4464 : actualRows4464=WordField.canonicalRows actualModulus 4464 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4464 : actualRows4464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4464=2892 := by core033_kernel_decide
theorem rows4465 : actualRows4465=WordField.canonicalRows actualModulus 4465 (.bxor 4463 4464) := by core033_kernel_decide
theorem stats4465 : actualRows4465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4465=7428 := by core033_kernel_decide
theorem rows4466 : actualRows4466=WordField.canonicalRows actualModulus 4466 (.bnot 4465) := by core033_kernel_decide
theorem stats4466 : actualRows4466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4466=6276 := by core033_kernel_decide
theorem rows4467 : actualRows4467=WordField.canonicalRows actualModulus 4467 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4467 : actualRows4467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4467=2892 := by core033_kernel_decide
theorem rows4468 : actualRows4468=WordField.canonicalRows actualModulus 4468 (.badd 4466 4467) := by core033_kernel_decide
theorem stats4468 : actualRows4468.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4468=5388 := by core033_kernel_decide
theorem rows4469 : actualRows4469=WordField.canonicalRows actualModulus 4469 (.bnot 4468) := by core033_kernel_decide
theorem stats4469 : actualRows4469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4469=6276 := by core033_kernel_decide
theorem rows4470 : actualRows4470=WordField.canonicalRows actualModulus 4470 (.band 4469 1911) := by core033_kernel_decide
theorem stats4470 : actualRows4470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4470=5124 := by core033_kernel_decide
theorem rows4471 : actualRows4471=WordField.canonicalRows actualModulus 4471 (.bxor 4444 4470) := by core033_kernel_decide
theorem stats4471 : actualRows4471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4471=7428 := by core033_kernel_decide
theorem rows4472 : actualRows4472=WordField.canonicalRows actualModulus 4472 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4472 : actualRows4472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4472=2892 := by core033_kernel_decide
theorem rows4473 : actualRows4473=WordField.canonicalRows actualModulus 4473 (.bxor 616 4472) := by core033_kernel_decide
theorem stats4473 : actualRows4473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4473=7428 := by core033_kernel_decide
theorem rows4474 : actualRows4474=WordField.canonicalRows actualModulus 4474 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4474 : actualRows4474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4474=2820 := by core033_kernel_decide
theorem rows4475 : actualRows4475=WordField.canonicalRows actualModulus 4475 (.bnot 4474) := by core033_kernel_decide
theorem stats4475 : actualRows4475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4475=6276 := by core033_kernel_decide
theorem rows4476 : actualRows4476=WordField.canonicalRows actualModulus 4476 (.band 4473 4475) := by core033_kernel_decide
theorem stats4476 : actualRows4476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4476=5124 := by core033_kernel_decide
theorem rows4477 : actualRows4477=WordField.canonicalRows actualModulus 4477 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4477 : actualRows4477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4477=2892 := by core033_kernel_decide
theorem rows4478 : actualRows4478=WordField.canonicalRows actualModulus 4478 (.bxor 616 4477) := by core033_kernel_decide
theorem stats4478 : actualRows4478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4478=7428 := by core033_kernel_decide
theorem rows4479 : actualRows4479=WordField.canonicalRows actualModulus 4479 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4479 : actualRows4479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4479=2820 := by core033_kernel_decide
theorem rows4480 : actualRows4480=WordField.canonicalRows actualModulus 4480 (.bnot 4479) := by core033_kernel_decide
theorem stats4480 : actualRows4480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4480=6276 := by core033_kernel_decide
theorem rows4481 : actualRows4481=WordField.canonicalRows actualModulus 4481 (.bxor 4478 4480) := by core033_kernel_decide
theorem stats4481 : actualRows4481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4481=7428 := by core033_kernel_decide
theorem rows4482 : actualRows4482=WordField.canonicalRows actualModulus 4482 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4482 : actualRows4482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4482=2892 := by core033_kernel_decide
theorem rows4483 : actualRows4483=WordField.canonicalRows actualModulus 4483 (.bxor 616 4482) := by core033_kernel_decide
theorem stats4483 : actualRows4483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4483=7428 := by core033_kernel_decide
theorem rows4484 : actualRows4484=WordField.canonicalRows actualModulus 4484 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4484 : actualRows4484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4484=2820 := by core033_kernel_decide
theorem rows4485 : actualRows4485=WordField.canonicalRows actualModulus 4485 (.bnot 4484) := by core033_kernel_decide
theorem stats4485 : actualRows4485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4485=6276 := by core033_kernel_decide
theorem rows4486 : actualRows4486=WordField.canonicalRows actualModulus 4486 (.badd 4483 4485) := by core033_kernel_decide
theorem stats4486 : actualRows4486.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4486=5388 := by core033_kernel_decide
theorem rows4487 : actualRows4487=WordField.canonicalRows actualModulus 4487 (.bnot 4486) := by core033_kernel_decide
theorem stats4487 : actualRows4487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4487=6276 := by core033_kernel_decide
theorem rows4488 : actualRows4488=WordField.canonicalRows actualModulus 4488 (.band 4481 4487) := by core033_kernel_decide
theorem stats4488 : actualRows4488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4488=5124 := by core033_kernel_decide
theorem rows4489 : actualRows4489=WordField.canonicalRows actualModulus 4489 (.bxor 4476 4488) := by core033_kernel_decide
theorem stats4489 : actualRows4489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4489=7428 := by core033_kernel_decide
theorem rows4490 : actualRows4490=WordField.canonicalRows actualModulus 4490 (.shr 4489 31) := by core033_kernel_decide
theorem stats4490 : actualRows4490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4490=2892 := by core033_kernel_decide
theorem rows4491 : actualRows4491=WordField.canonicalRows actualModulus 4491 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4491 : actualRows4491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4491=2892 := by core033_kernel_decide
theorem rows4492 : actualRows4492=WordField.canonicalRows actualModulus 4492 (.bxor 4490 4491) := by core033_kernel_decide
theorem stats4492 : actualRows4492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4492=7428 := by core033_kernel_decide
theorem rows4493 : actualRows4493=WordField.canonicalRows actualModulus 4493 (.bnot 4492) := by core033_kernel_decide
theorem stats4493 : actualRows4493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4493=6276 := by core033_kernel_decide
theorem rows4494 : actualRows4494=WordField.canonicalRows actualModulus 4494 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4494 : actualRows4494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4494=2892 := by core033_kernel_decide
theorem rows4495 : actualRows4495=WordField.canonicalRows actualModulus 4495 (.badd 4493 4494) := by core033_kernel_decide
theorem stats4495 : actualRows4495.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4495=5388 := by core033_kernel_decide
theorem rows4496 : actualRows4496=WordField.canonicalRows actualModulus 4496 (.band 4495 2106) := by core033_kernel_decide
theorem stats4496 : actualRows4496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4496=5124 := by core033_kernel_decide
theorem rows4497 : actualRows4497=WordField.canonicalRows actualModulus 4497 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4497 : actualRows4497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4497=2892 := by core033_kernel_decide
theorem rows4498 : actualRows4498=WordField.canonicalRows actualModulus 4498 (.bxor 616 4497) := by core033_kernel_decide
theorem stats4498 : actualRows4498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4498=7428 := by core033_kernel_decide
theorem rows4499 : actualRows4499=WordField.canonicalRows actualModulus 4499 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4499 : actualRows4499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4499=2820 := by core033_kernel_decide
theorem rows4500 : actualRows4500=WordField.canonicalRows actualModulus 4500 (.bnot 4499) := by core033_kernel_decide
theorem stats4500 : actualRows4500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4500=6276 := by core033_kernel_decide
theorem rows4501 : actualRows4501=WordField.canonicalRows actualModulus 4501 (.band 4498 4500) := by core033_kernel_decide
theorem stats4501 : actualRows4501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4501=5124 := by core033_kernel_decide
theorem rows4502 : actualRows4502=WordField.canonicalRows actualModulus 4502 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4502 : actualRows4502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4502=2892 := by core033_kernel_decide
theorem rows4503 : actualRows4503=WordField.canonicalRows actualModulus 4503 (.bxor 616 4502) := by core033_kernel_decide
theorem stats4503 : actualRows4503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4503=7428 := by core033_kernel_decide
theorem rows4504 : actualRows4504=WordField.canonicalRows actualModulus 4504 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4504 : actualRows4504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4504=2820 := by core033_kernel_decide
theorem rows4505 : actualRows4505=WordField.canonicalRows actualModulus 4505 (.bnot 4504) := by core033_kernel_decide
theorem stats4505 : actualRows4505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4505=6276 := by core033_kernel_decide
theorem rows4506 : actualRows4506=WordField.canonicalRows actualModulus 4506 (.bxor 4503 4505) := by core033_kernel_decide
theorem stats4506 : actualRows4506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4506=7428 := by core033_kernel_decide
theorem rows4507 : actualRows4507=WordField.canonicalRows actualModulus 4507 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4507 : actualRows4507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4507=2892 := by core033_kernel_decide
theorem rows4508 : actualRows4508=WordField.canonicalRows actualModulus 4508 (.bxor 616 4507) := by core033_kernel_decide
theorem stats4508 : actualRows4508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4508=7428 := by core033_kernel_decide
theorem rows4509 : actualRows4509=WordField.canonicalRows actualModulus 4509 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4509 : actualRows4509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4509=2820 := by core033_kernel_decide
theorem rows4510 : actualRows4510=WordField.canonicalRows actualModulus 4510 (.bnot 4509) := by core033_kernel_decide
theorem stats4510 : actualRows4510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4510=6276 := by core033_kernel_decide
theorem rows4511 : actualRows4511=WordField.canonicalRows actualModulus 4511 (.badd 4508 4510) := by core033_kernel_decide
theorem stats4511 : actualRows4511.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4511=5388 := by core033_kernel_decide
def partRows68 : List R1CS.Row := actualRows4448++actualRows4449++actualRows4450++actualRows4451++actualRows4452++actualRows4453++actualRows4454++actualRows4455++actualRows4456++actualRows4457++actualRows4458++actualRows4459++actualRows4460++actualRows4461++actualRows4462++actualRows4463++actualRows4464++actualRows4465++actualRows4466++actualRows4467++actualRows4468++actualRows4469++actualRows4470++actualRows4471++actualRows4472++actualRows4473++actualRows4474++actualRows4475++actualRows4476++actualRows4477++actualRows4478++actualRows4479++actualRows4480++actualRows4481++actualRows4482++actualRows4483++actualRows4484++actualRows4485++actualRows4486++actualRows4487++actualRows4488++actualRows4489++actualRows4490++actualRows4491++actualRows4492++actualRows4493++actualRows4494++actualRows4495++actualRows4496++actualRows4497++actualRows4498++actualRows4499++actualRows4500++actualRows4501++actualRows4502++actualRows4503++actualRows4504++actualRows4505++actualRows4506++actualRows4507++actualRows4508++actualRows4509++actualRows4510++actualRows4511
def partOps68 : List WordIR.Op := [.bnot 4447,.band 4446 4448,.literal (BitVec.ofNat 32 2),.bxor 616 4450,.literal (BitVec.ofNat 32 0),.bnot 4452,.bxor 4451 4453,.literal (BitVec.ofNat 32 2),.bxor 616 4455,.literal (BitVec.ofNat 32 0),.bnot 4457,.badd 4456 4458,.bnot 4459,.band 4454 4460,.bxor 4449 4461,.shr 4462 31,.literal (BitVec.ofNat 32 1),.bxor 4463 4464,.bnot 4465,.literal (BitVec.ofNat 32 1),.badd 4466 4467,.bnot 4468,.band 4469 1911,.bxor 4444 4470,.literal (BitVec.ofNat 32 2),.bxor 616 4472,.literal (BitVec.ofNat 32 0),.bnot 4474,.band 4473 4475,.literal (BitVec.ofNat 32 2),.bxor 616 4477,.literal (BitVec.ofNat 32 0),.bnot 4479,.bxor 4478 4480,.literal (BitVec.ofNat 32 2),.bxor 616 4482,.literal (BitVec.ofNat 32 0),.bnot 4484,.badd 4483 4485,.bnot 4486,.band 4481 4487,.bxor 4476 4488,.shr 4489 31,.literal (BitVec.ofNat 32 1),.bxor 4490 4491,.bnot 4492,.literal (BitVec.ofNat 32 1),.badd 4493 4494,.band 4495 2106,.literal (BitVec.ofNat 32 2),.bxor 616 4497,.literal (BitVec.ofNat 32 0),.bnot 4499,.band 4498 4500,.literal (BitVec.ofNat 32 2),.bxor 616 4502,.literal (BitVec.ofNat 32 0),.bnot 4504,.bxor 4503 4505,.literal (BitVec.ofNat 32 2),.bxor 616 4507,.literal (BitVec.ofNat 32 0),.bnot 4509,.badd 4508 4510]
theorem partExact68 : partRows68=WordField.rows actualModulus 4448 partOps68 := by
  simp only [partRows68,partOps68,WordField.rows,rows4448,rows4449,rows4450,rows4451,rows4452,rows4453,rows4454,rows4455,rows4456,rows4457,rows4458,rows4459,rows4460,rows4461,rows4462,rows4463,rows4464,rows4465,rows4466,rows4467,rows4468,rows4469,rows4470,rows4471,rows4472,rows4473,rows4474,rows4475,rows4476,rows4477,rows4478,rows4479,rows4480,rows4481,rows4482,rows4483,rows4484,rows4485,rows4486,rows4487,rows4488,rows4489,rows4490,rows4491,rows4492,rows4493,rows4494,rows4495,rows4496,rows4497,rows4498,rows4499,rows4500,rows4501,rows4502,rows4503,rows4504,rows4505,rows4506,rows4507,rows4508,rows4509,rows4510,rows4511,List.append_assoc,List.append_nil]
theorem partLength68 : partOps68.length=64 := by decide
theorem partStats68 : partRows68.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows68=332568 := by
  simp only [partRows68,List.length_append,MatrixRowBlocks.rows_weight_append,stats4448.1,stats4448.2,stats4449.1,stats4449.2,stats4450.1,stats4450.2,stats4451.1,stats4451.2,stats4452.1,stats4452.2,stats4453.1,stats4453.2,stats4454.1,stats4454.2,stats4455.1,stats4455.2,stats4456.1,stats4456.2,stats4457.1,stats4457.2,stats4458.1,stats4458.2,stats4459.1,stats4459.2,stats4460.1,stats4460.2,stats4461.1,stats4461.2,stats4462.1,stats4462.2,stats4463.1,stats4463.2,stats4464.1,stats4464.2,stats4465.1,stats4465.2,stats4466.1,stats4466.2,stats4467.1,stats4467.2,stats4468.1,stats4468.2,stats4469.1,stats4469.2,stats4470.1,stats4470.2,stats4471.1,stats4471.2,stats4472.1,stats4472.2,stats4473.1,stats4473.2,stats4474.1,stats4474.2,stats4475.1,stats4475.2,stats4476.1,stats4476.2,stats4477.1,stats4477.2,stats4478.1,stats4478.2,stats4479.1,stats4479.2,stats4480.1,stats4480.2,stats4481.1,stats4481.2,stats4482.1,stats4482.2,stats4483.1,stats4483.2,stats4484.1,stats4484.2,stats4485.1,stats4485.2,stats4486.1,stats4486.2,stats4487.1,stats4487.2,stats4488.1,stats4488.2,stats4489.1,stats4489.2,stats4490.1,stats4490.2,stats4491.1,stats4491.2,stats4492.1,stats4492.2,stats4493.1,stats4493.2,stats4494.1,stats4494.2,stats4495.1,stats4495.2,stats4496.1,stats4496.2,stats4497.1,stats4497.2,stats4498.1,stats4498.2,stats4499.1,stats4499.2,stats4500.1,stats4500.2,stats4501.1,stats4501.2,stats4502.1,stats4502.2,stats4503.1,stats4503.2,stats4504.1,stats4504.2,stats4505.1,stats4505.2,stats4506.1,stats4506.2,stats4507.1,stats4507.2,stats4508.1,stats4508.2,stats4509.1,stats4509.2,stats4510.1,stats4510.2,stats4511.1,stats4511.2]
  decide
end QuotedPairedPathRoundCheckedRows
