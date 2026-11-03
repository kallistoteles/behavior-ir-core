import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData69
import FrameHashControllerInstructionMatrixData70
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4459 : actualRows4459=WordField.canonicalRows actualModulus 4459 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4459 : actualRows4459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4459=2892 := by core033_kernel_decide
theorem rows4460 : actualRows4460=WordField.canonicalRows actualModulus 4460 (.bxor 0 4459) := by core033_kernel_decide
theorem stats4460 : actualRows4460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4460=7428 := by core033_kernel_decide
theorem rows4461 : actualRows4461=WordField.canonicalRows actualModulus 4461 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4461 : actualRows4461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4461=2820 := by core033_kernel_decide
theorem rows4462 : actualRows4462=WordField.canonicalRows actualModulus 4462 (.bnot 4461) := by core033_kernel_decide
theorem stats4462 : actualRows4462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4462=6276 := by core033_kernel_decide
theorem rows4463 : actualRows4463=WordField.canonicalRows actualModulus 4463 (.badd 4460 4462) := by core033_kernel_decide
theorem stats4463 : actualRows4463.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4463=5388 := by core033_kernel_decide
theorem rows4464 : actualRows4464=WordField.canonicalRows actualModulus 4464 (.bnot 4463) := by core033_kernel_decide
theorem stats4464 : actualRows4464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4464=6276 := by core033_kernel_decide
theorem rows4465 : actualRows4465=WordField.canonicalRows actualModulus 4465 (.band 4458 4464) := by core033_kernel_decide
theorem stats4465 : actualRows4465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4465=5124 := by core033_kernel_decide
theorem rows4466 : actualRows4466=WordField.canonicalRows actualModulus 4466 (.bxor 4453 4465) := by core033_kernel_decide
theorem stats4466 : actualRows4466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4466=7428 := by core033_kernel_decide
theorem rows4467 : actualRows4467=WordField.canonicalRows actualModulus 4467 (.shr 4466 31) := by core033_kernel_decide
theorem stats4467 : actualRows4467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4467=2892 := by core033_kernel_decide
theorem rows4468 : actualRows4468=WordField.canonicalRows actualModulus 4468 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4468 : actualRows4468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4468=2892 := by core033_kernel_decide
theorem rows4469 : actualRows4469=WordField.canonicalRows actualModulus 4469 (.bxor 4467 4468) := by core033_kernel_decide
theorem stats4469 : actualRows4469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4469=7428 := by core033_kernel_decide
theorem rows4470 : actualRows4470=WordField.canonicalRows actualModulus 4470 (.bnot 4469) := by core033_kernel_decide
theorem stats4470 : actualRows4470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4470=6276 := by core033_kernel_decide
theorem rows4471 : actualRows4471=WordField.canonicalRows actualModulus 4471 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4471 : actualRows4471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4471=2892 := by core033_kernel_decide
theorem rows4472 : actualRows4472=WordField.canonicalRows actualModulus 4472 (.badd 4470 4471) := by core033_kernel_decide
theorem stats4472 : actualRows4472.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4472=5388 := by core033_kernel_decide
theorem rows4473 : actualRows4473=WordField.canonicalRows actualModulus 4473 (.bnot 4472) := by core033_kernel_decide
theorem stats4473 : actualRows4473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4473=6276 := by core033_kernel_decide
theorem rows4474 : actualRows4474=WordField.canonicalRows actualModulus 4474 (.band 4473 935) := by core033_kernel_decide
theorem stats4474 : actualRows4474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4474=5124 := by core033_kernel_decide
theorem rows4475 : actualRows4475=WordField.canonicalRows actualModulus 4475 (.bxor 4448 4474) := by core033_kernel_decide
theorem stats4475 : actualRows4475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4475=7428 := by core033_kernel_decide
theorem rows4476 : actualRows4476=WordField.canonicalRows actualModulus 4476 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4476 : actualRows4476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4476=2892 := by core033_kernel_decide
theorem rows4477 : actualRows4477=WordField.canonicalRows actualModulus 4477 (.bxor 0 4476) := by core033_kernel_decide
theorem stats4477 : actualRows4477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4477=7428 := by core033_kernel_decide
theorem rows4478 : actualRows4478=WordField.canonicalRows actualModulus 4478 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4478 : actualRows4478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4478=2820 := by core033_kernel_decide
theorem rows4479 : actualRows4479=WordField.canonicalRows actualModulus 4479 (.bnot 4478) := by core033_kernel_decide
theorem stats4479 : actualRows4479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4479=6276 := by core033_kernel_decide
theorem rows4480 : actualRows4480=WordField.canonicalRows actualModulus 4480 (.band 4477 4479) := by core033_kernel_decide
theorem stats4480 : actualRows4480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4480=5124 := by core033_kernel_decide
theorem rows4481 : actualRows4481=WordField.canonicalRows actualModulus 4481 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4481 : actualRows4481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4481=2892 := by core033_kernel_decide
theorem rows4482 : actualRows4482=WordField.canonicalRows actualModulus 4482 (.bxor 0 4481) := by core033_kernel_decide
theorem stats4482 : actualRows4482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4482=7428 := by core033_kernel_decide
theorem rows4483 : actualRows4483=WordField.canonicalRows actualModulus 4483 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4483 : actualRows4483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4483=2820 := by core033_kernel_decide
theorem rows4484 : actualRows4484=WordField.canonicalRows actualModulus 4484 (.bnot 4483) := by core033_kernel_decide
theorem stats4484 : actualRows4484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4484=6276 := by core033_kernel_decide
theorem rows4485 : actualRows4485=WordField.canonicalRows actualModulus 4485 (.bxor 4482 4484) := by core033_kernel_decide
theorem stats4485 : actualRows4485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4485=7428 := by core033_kernel_decide
theorem rows4486 : actualRows4486=WordField.canonicalRows actualModulus 4486 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4486 : actualRows4486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4486=2892 := by core033_kernel_decide
theorem rows4487 : actualRows4487=WordField.canonicalRows actualModulus 4487 (.bxor 0 4486) := by core033_kernel_decide
theorem stats4487 : actualRows4487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4487=7428 := by core033_kernel_decide
theorem rows4488 : actualRows4488=WordField.canonicalRows actualModulus 4488 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4488 : actualRows4488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4488=2820 := by core033_kernel_decide
theorem rows4489 : actualRows4489=WordField.canonicalRows actualModulus 4489 (.bnot 4488) := by core033_kernel_decide
theorem stats4489 : actualRows4489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4489=6276 := by core033_kernel_decide
theorem rows4490 : actualRows4490=WordField.canonicalRows actualModulus 4490 (.badd 4487 4489) := by core033_kernel_decide
theorem stats4490 : actualRows4490.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4490=5388 := by core033_kernel_decide
theorem rows4491 : actualRows4491=WordField.canonicalRows actualModulus 4491 (.bnot 4490) := by core033_kernel_decide
theorem stats4491 : actualRows4491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4491=6276 := by core033_kernel_decide
theorem rows4492 : actualRows4492=WordField.canonicalRows actualModulus 4492 (.band 4485 4491) := by core033_kernel_decide
theorem stats4492 : actualRows4492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4492=5124 := by core033_kernel_decide
theorem rows4493 : actualRows4493=WordField.canonicalRows actualModulus 4493 (.bxor 4480 4492) := by core033_kernel_decide
theorem stats4493 : actualRows4493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4493=7428 := by core033_kernel_decide
theorem rows4494 : actualRows4494=WordField.canonicalRows actualModulus 4494 (.shr 4493 31) := by core033_kernel_decide
theorem stats4494 : actualRows4494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4494=2892 := by core033_kernel_decide
theorem rows4495 : actualRows4495=WordField.canonicalRows actualModulus 4495 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4495 : actualRows4495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4495=2892 := by core033_kernel_decide
theorem rows4496 : actualRows4496=WordField.canonicalRows actualModulus 4496 (.bxor 4494 4495) := by core033_kernel_decide
theorem stats4496 : actualRows4496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4496=7428 := by core033_kernel_decide
theorem rows4497 : actualRows4497=WordField.canonicalRows actualModulus 4497 (.bnot 4496) := by core033_kernel_decide
theorem stats4497 : actualRows4497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4497=6276 := by core033_kernel_decide
theorem rows4498 : actualRows4498=WordField.canonicalRows actualModulus 4498 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4498 : actualRows4498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4498=2892 := by core033_kernel_decide
theorem rows4499 : actualRows4499=WordField.canonicalRows actualModulus 4499 (.badd 4497 4498) := by core033_kernel_decide
theorem stats4499 : actualRows4499.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4499=5388 := by core033_kernel_decide
theorem rows4500 : actualRows4500=WordField.canonicalRows actualModulus 4500 (.literal (BitVec.ofNat 32 128)) := by core033_kernel_decide
theorem stats4500 : actualRows4500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4500=2892 := by core033_kernel_decide
theorem rows4501 : actualRows4501=WordField.canonicalRows actualModulus 4501 (.band 4499 4500) := by core033_kernel_decide
theorem stats4501 : actualRows4501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4501=5124 := by core033_kernel_decide
theorem rows4502 : actualRows4502=WordField.canonicalRows actualModulus 4502 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4502 : actualRows4502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4502=2892 := by core033_kernel_decide
theorem rows4503 : actualRows4503=WordField.canonicalRows actualModulus 4503 (.bxor 0 4502) := by core033_kernel_decide
theorem stats4503 : actualRows4503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4503=7428 := by core033_kernel_decide
theorem rows4504 : actualRows4504=WordField.canonicalRows actualModulus 4504 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4504 : actualRows4504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4504=2820 := by core033_kernel_decide
theorem rows4505 : actualRows4505=WordField.canonicalRows actualModulus 4505 (.bnot 4504) := by core033_kernel_decide
theorem stats4505 : actualRows4505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4505=6276 := by core033_kernel_decide
theorem rows4506 : actualRows4506=WordField.canonicalRows actualModulus 4506 (.band 4503 4505) := by core033_kernel_decide
theorem stats4506 : actualRows4506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4506=5124 := by core033_kernel_decide
theorem rows4507 : actualRows4507=WordField.canonicalRows actualModulus 4507 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4507 : actualRows4507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4507=2892 := by core033_kernel_decide
theorem rows4508 : actualRows4508=WordField.canonicalRows actualModulus 4508 (.bxor 0 4507) := by core033_kernel_decide
theorem stats4508 : actualRows4508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4508=7428 := by core033_kernel_decide
theorem rows4509 : actualRows4509=WordField.canonicalRows actualModulus 4509 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4509 : actualRows4509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4509=2820 := by core033_kernel_decide
theorem rows4510 : actualRows4510=WordField.canonicalRows actualModulus 4510 (.bnot 4509) := by core033_kernel_decide
theorem stats4510 : actualRows4510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4510=6276 := by core033_kernel_decide
theorem rows4511 : actualRows4511=WordField.canonicalRows actualModulus 4511 (.bxor 4508 4510) := by core033_kernel_decide
theorem stats4511 : actualRows4511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4511=7428 := by core033_kernel_decide
theorem rows4512 : actualRows4512=WordField.canonicalRows actualModulus 4512 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4512 : actualRows4512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4512=2892 := by core033_kernel_decide
theorem rows4513 : actualRows4513=WordField.canonicalRows actualModulus 4513 (.bxor 0 4512) := by core033_kernel_decide
theorem stats4513 : actualRows4513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4513=7428 := by core033_kernel_decide
theorem rows4514 : actualRows4514=WordField.canonicalRows actualModulus 4514 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4514 : actualRows4514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4514=2820 := by core033_kernel_decide
theorem rows4515 : actualRows4515=WordField.canonicalRows actualModulus 4515 (.bnot 4514) := by core033_kernel_decide
theorem stats4515 : actualRows4515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4515=6276 := by core033_kernel_decide
theorem rows4516 : actualRows4516=WordField.canonicalRows actualModulus 4516 (.badd 4513 4515) := by core033_kernel_decide
theorem stats4516 : actualRows4516.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4516=5388 := by core033_kernel_decide
theorem rows4517 : actualRows4517=WordField.canonicalRows actualModulus 4517 (.bnot 4516) := by core033_kernel_decide
theorem stats4517 : actualRows4517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4517=6276 := by core033_kernel_decide
theorem rows4518 : actualRows4518=WordField.canonicalRows actualModulus 4518 (.band 4511 4517) := by core033_kernel_decide
theorem stats4518 : actualRows4518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4518=5124 := by core033_kernel_decide
theorem rows4519 : actualRows4519=WordField.canonicalRows actualModulus 4519 (.bxor 4506 4518) := by core033_kernel_decide
theorem stats4519 : actualRows4519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4519=7428 := by core033_kernel_decide
theorem rows4520 : actualRows4520=WordField.canonicalRows actualModulus 4520 (.shr 4519 31) := by core033_kernel_decide
theorem stats4520 : actualRows4520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4520=2892 := by core033_kernel_decide
theorem rows4521 : actualRows4521=WordField.canonicalRows actualModulus 4521 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4521 : actualRows4521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4521=2892 := by core033_kernel_decide
theorem rows4522 : actualRows4522=WordField.canonicalRows actualModulus 4522 (.bxor 4520 4521) := by core033_kernel_decide
theorem stats4522 : actualRows4522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4522=7428 := by core033_kernel_decide
def partRows69 : List R1CS.Row := actualRows4459++actualRows4460++actualRows4461++actualRows4462++actualRows4463++actualRows4464++actualRows4465++actualRows4466++actualRows4467++actualRows4468++actualRows4469++actualRows4470++actualRows4471++actualRows4472++actualRows4473++actualRows4474++actualRows4475++actualRows4476++actualRows4477++actualRows4478++actualRows4479++actualRows4480++actualRows4481++actualRows4482++actualRows4483++actualRows4484++actualRows4485++actualRows4486++actualRows4487++actualRows4488++actualRows4489++actualRows4490++actualRows4491++actualRows4492++actualRows4493++actualRows4494++actualRows4495++actualRows4496++actualRows4497++actualRows4498++actualRows4499++actualRows4500++actualRows4501++actualRows4502++actualRows4503++actualRows4504++actualRows4505++actualRows4506++actualRows4507++actualRows4508++actualRows4509++actualRows4510++actualRows4511++actualRows4512++actualRows4513++actualRows4514++actualRows4515++actualRows4516++actualRows4517++actualRows4518++actualRows4519++actualRows4520++actualRows4521++actualRows4522
def partOps69 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 0 4459,.literal (BitVec.ofNat 32 0),.bnot 4461,.badd 4460 4462,.bnot 4463,.band 4458 4464,.bxor 4453 4465,.shr 4466 31,.literal (BitVec.ofNat 32 1),.bxor 4467 4468,.bnot 4469,.literal (BitVec.ofNat 32 1),.badd 4470 4471,.bnot 4472,.band 4473 935,.bxor 4448 4474,.literal (BitVec.ofNat 32 2),.bxor 0 4476,.literal (BitVec.ofNat 32 0),.bnot 4478,.band 4477 4479,.literal (BitVec.ofNat 32 2),.bxor 0 4481,.literal (BitVec.ofNat 32 0),.bnot 4483,.bxor 4482 4484,.literal (BitVec.ofNat 32 2),.bxor 0 4486,.literal (BitVec.ofNat 32 0),.bnot 4488,.badd 4487 4489,.bnot 4490,.band 4485 4491,.bxor 4480 4492,.shr 4493 31,.literal (BitVec.ofNat 32 1),.bxor 4494 4495,.bnot 4496,.literal (BitVec.ofNat 32 1),.badd 4497 4498,.literal (BitVec.ofNat 32 128),.band 4499 4500,.literal (BitVec.ofNat 32 2),.bxor 0 4502,.literal (BitVec.ofNat 32 0),.bnot 4504,.band 4503 4505,.literal (BitVec.ofNat 32 2),.bxor 0 4507,.literal (BitVec.ofNat 32 0),.bnot 4509,.bxor 4508 4510,.literal (BitVec.ofNat 32 2),.bxor 0 4512,.literal (BitVec.ofNat 32 0),.bnot 4514,.badd 4513 4515,.bnot 4516,.band 4511 4517,.bxor 4506 4518,.shr 4519 31,.literal (BitVec.ofNat 32 1),.bxor 4520 4521]
theorem partExact69 : partRows69=WordField.rows actualModulus 4459 partOps69 := by
  simp only [partRows69,partOps69,WordField.rows,rows4459,rows4460,rows4461,rows4462,rows4463,rows4464,rows4465,rows4466,rows4467,rows4468,rows4469,rows4470,rows4471,rows4472,rows4473,rows4474,rows4475,rows4476,rows4477,rows4478,rows4479,rows4480,rows4481,rows4482,rows4483,rows4484,rows4485,rows4486,rows4487,rows4488,rows4489,rows4490,rows4491,rows4492,rows4493,rows4494,rows4495,rows4496,rows4497,rows4498,rows4499,rows4500,rows4501,rows4502,rows4503,rows4504,rows4505,rows4506,rows4507,rows4508,rows4509,rows4510,rows4511,rows4512,rows4513,rows4514,rows4515,rows4516,rows4517,rows4518,rows4519,rows4520,rows4521,rows4522,List.append_assoc,List.append_nil]
theorem partLength69 : partOps69.length=64 := by decide
theorem partStats69 : partRows69.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows69=329256 := by
  simp only [partRows69,List.length_append,MatrixRowBlocks.rows_weight_append,stats4459.1,stats4459.2,stats4460.1,stats4460.2,stats4461.1,stats4461.2,stats4462.1,stats4462.2,stats4463.1,stats4463.2,stats4464.1,stats4464.2,stats4465.1,stats4465.2,stats4466.1,stats4466.2,stats4467.1,stats4467.2,stats4468.1,stats4468.2,stats4469.1,stats4469.2,stats4470.1,stats4470.2,stats4471.1,stats4471.2,stats4472.1,stats4472.2,stats4473.1,stats4473.2,stats4474.1,stats4474.2,stats4475.1,stats4475.2,stats4476.1,stats4476.2,stats4477.1,stats4477.2,stats4478.1,stats4478.2,stats4479.1,stats4479.2,stats4480.1,stats4480.2,stats4481.1,stats4481.2,stats4482.1,stats4482.2,stats4483.1,stats4483.2,stats4484.1,stats4484.2,stats4485.1,stats4485.2,stats4486.1,stats4486.2,stats4487.1,stats4487.2,stats4488.1,stats4488.2,stats4489.1,stats4489.2,stats4490.1,stats4490.2,stats4491.1,stats4491.2,stats4492.1,stats4492.2,stats4493.1,stats4493.2,stats4494.1,stats4494.2,stats4495.1,stats4495.2,stats4496.1,stats4496.2,stats4497.1,stats4497.2,stats4498.1,stats4498.2,stats4499.1,stats4499.2,stats4500.1,stats4500.2,stats4501.1,stats4501.2,stats4502.1,stats4502.2,stats4503.1,stats4503.2,stats4504.1,stats4504.2,stats4505.1,stats4505.2,stats4506.1,stats4506.2,stats4507.1,stats4507.2,stats4508.1,stats4508.2,stats4509.1,stats4509.2,stats4510.1,stats4510.2,stats4511.1,stats4511.2,stats4512.1,stats4512.2,stats4513.1,stats4513.2,stats4514.1,stats4514.2,stats4515.1,stats4515.2,stats4516.1,stats4516.2,stats4517.1,stats4517.2,stats4518.1,stats4518.2,stats4519.1,stats4519.2,stats4520.1,stats4520.2,stats4521.1,stats4521.2,stats4522.1,stats4522.2]
  decide
end FrameHashControllerCheckedRows
