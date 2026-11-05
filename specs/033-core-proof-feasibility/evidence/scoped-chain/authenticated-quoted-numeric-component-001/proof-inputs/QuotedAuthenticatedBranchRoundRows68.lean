import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData69
import AuthenticatedBranchRoundInstructionMatrixData70
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4470 : actualRows4470=WordField.canonicalRows actualModulus 4470 (.shr 4469 31) := by core033_kernel_decide
theorem stats4470 : actualRows4470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4470=2892 := by core033_kernel_decide
theorem rows4471 : actualRows4471=WordField.canonicalRows actualModulus 4471 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4471 : actualRows4471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4471=2892 := by core033_kernel_decide
theorem rows4472 : actualRows4472=WordField.canonicalRows actualModulus 4472 (.bxor 4470 4471) := by core033_kernel_decide
theorem stats4472 : actualRows4472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4472=7428 := by core033_kernel_decide
theorem rows4473 : actualRows4473=WordField.canonicalRows actualModulus 4473 (.bnot 4472) := by core033_kernel_decide
theorem stats4473 : actualRows4473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4473=6276 := by core033_kernel_decide
theorem rows4474 : actualRows4474=WordField.canonicalRows actualModulus 4474 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4474 : actualRows4474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4474=2892 := by core033_kernel_decide
theorem rows4475 : actualRows4475=WordField.canonicalRows actualModulus 4475 (.badd 4473 4474) := by core033_kernel_decide
theorem stats4475 : actualRows4475.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4475=5388 := by core033_kernel_decide
theorem rows4476 : actualRows4476=WordField.canonicalRows actualModulus 4476 (.bnot 4475) := by core033_kernel_decide
theorem stats4476 : actualRows4476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4476=6276 := by core033_kernel_decide
theorem rows4477 : actualRows4477=WordField.canonicalRows actualModulus 4477 (.band 4476 2563) := by core033_kernel_decide
theorem stats4477 : actualRows4477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4477=5124 := by core033_kernel_decide
theorem rows4478 : actualRows4478=WordField.canonicalRows actualModulus 4478 (.bxor 4451 4477) := by core033_kernel_decide
theorem stats4478 : actualRows4478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4478=7428 := by core033_kernel_decide
theorem rows4479 : actualRows4479=WordField.canonicalRows actualModulus 4479 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4479 : actualRows4479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4479=2892 := by core033_kernel_decide
theorem rows4480 : actualRows4480=WordField.canonicalRows actualModulus 4480 (.bxor 1299 4479) := by core033_kernel_decide
theorem stats4480 : actualRows4480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4480=7428 := by core033_kernel_decide
theorem rows4481 : actualRows4481=WordField.canonicalRows actualModulus 4481 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4481 : actualRows4481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4481=2820 := by core033_kernel_decide
theorem rows4482 : actualRows4482=WordField.canonicalRows actualModulus 4482 (.bnot 4481) := by core033_kernel_decide
theorem stats4482 : actualRows4482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4482=6276 := by core033_kernel_decide
theorem rows4483 : actualRows4483=WordField.canonicalRows actualModulus 4483 (.band 4480 4482) := by core033_kernel_decide
theorem stats4483 : actualRows4483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4483=5124 := by core033_kernel_decide
theorem rows4484 : actualRows4484=WordField.canonicalRows actualModulus 4484 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4484 : actualRows4484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4484=2892 := by core033_kernel_decide
theorem rows4485 : actualRows4485=WordField.canonicalRows actualModulus 4485 (.bxor 1299 4484) := by core033_kernel_decide
theorem stats4485 : actualRows4485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4485=7428 := by core033_kernel_decide
theorem rows4486 : actualRows4486=WordField.canonicalRows actualModulus 4486 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4486 : actualRows4486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4486=2820 := by core033_kernel_decide
theorem rows4487 : actualRows4487=WordField.canonicalRows actualModulus 4487 (.bnot 4486) := by core033_kernel_decide
theorem stats4487 : actualRows4487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4487=6276 := by core033_kernel_decide
theorem rows4488 : actualRows4488=WordField.canonicalRows actualModulus 4488 (.bxor 4485 4487) := by core033_kernel_decide
theorem stats4488 : actualRows4488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4488=7428 := by core033_kernel_decide
theorem rows4489 : actualRows4489=WordField.canonicalRows actualModulus 4489 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4489 : actualRows4489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4489=2892 := by core033_kernel_decide
theorem rows4490 : actualRows4490=WordField.canonicalRows actualModulus 4490 (.bxor 1299 4489) := by core033_kernel_decide
theorem stats4490 : actualRows4490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4490=7428 := by core033_kernel_decide
theorem rows4491 : actualRows4491=WordField.canonicalRows actualModulus 4491 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4491 : actualRows4491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4491=2820 := by core033_kernel_decide
theorem rows4492 : actualRows4492=WordField.canonicalRows actualModulus 4492 (.bnot 4491) := by core033_kernel_decide
theorem stats4492 : actualRows4492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4492=6276 := by core033_kernel_decide
theorem rows4493 : actualRows4493=WordField.canonicalRows actualModulus 4493 (.badd 4490 4492) := by core033_kernel_decide
theorem stats4493 : actualRows4493.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4493=5388 := by core033_kernel_decide
theorem rows4494 : actualRows4494=WordField.canonicalRows actualModulus 4494 (.bnot 4493) := by core033_kernel_decide
theorem stats4494 : actualRows4494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4494=6276 := by core033_kernel_decide
theorem rows4495 : actualRows4495=WordField.canonicalRows actualModulus 4495 (.band 4488 4494) := by core033_kernel_decide
theorem stats4495 : actualRows4495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4495=5124 := by core033_kernel_decide
theorem rows4496 : actualRows4496=WordField.canonicalRows actualModulus 4496 (.bxor 4483 4495) := by core033_kernel_decide
theorem stats4496 : actualRows4496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4496=7428 := by core033_kernel_decide
theorem rows4497 : actualRows4497=WordField.canonicalRows actualModulus 4497 (.shr 4496 31) := by core033_kernel_decide
theorem stats4497 : actualRows4497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4497=2892 := by core033_kernel_decide
theorem rows4498 : actualRows4498=WordField.canonicalRows actualModulus 4498 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4498 : actualRows4498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4498=2892 := by core033_kernel_decide
theorem rows4499 : actualRows4499=WordField.canonicalRows actualModulus 4499 (.bxor 4497 4498) := by core033_kernel_decide
theorem stats4499 : actualRows4499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4499=7428 := by core033_kernel_decide
theorem rows4500 : actualRows4500=WordField.canonicalRows actualModulus 4500 (.bnot 4499) := by core033_kernel_decide
theorem stats4500 : actualRows4500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4500=6276 := by core033_kernel_decide
theorem rows4501 : actualRows4501=WordField.canonicalRows actualModulus 4501 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4501 : actualRows4501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4501=2892 := by core033_kernel_decide
theorem rows4502 : actualRows4502=WordField.canonicalRows actualModulus 4502 (.badd 4500 4501) := by core033_kernel_decide
theorem stats4502 : actualRows4502.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4502=5388 := by core033_kernel_decide
theorem rows4503 : actualRows4503=WordField.canonicalRows actualModulus 4503 (.band 4502 2750) := by core033_kernel_decide
theorem stats4503 : actualRows4503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4503=5124 := by core033_kernel_decide
theorem rows4504 : actualRows4504=WordField.canonicalRows actualModulus 4504 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4504 : actualRows4504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4504=2892 := by core033_kernel_decide
theorem rows4505 : actualRows4505=WordField.canonicalRows actualModulus 4505 (.bxor 1299 4504) := by core033_kernel_decide
theorem stats4505 : actualRows4505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4505=7428 := by core033_kernel_decide
theorem rows4506 : actualRows4506=WordField.canonicalRows actualModulus 4506 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4506 : actualRows4506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4506=2820 := by core033_kernel_decide
theorem rows4507 : actualRows4507=WordField.canonicalRows actualModulus 4507 (.bnot 4506) := by core033_kernel_decide
theorem stats4507 : actualRows4507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4507=6276 := by core033_kernel_decide
theorem rows4508 : actualRows4508=WordField.canonicalRows actualModulus 4508 (.band 4505 4507) := by core033_kernel_decide
theorem stats4508 : actualRows4508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4508=5124 := by core033_kernel_decide
theorem rows4509 : actualRows4509=WordField.canonicalRows actualModulus 4509 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4509 : actualRows4509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4509=2892 := by core033_kernel_decide
theorem rows4510 : actualRows4510=WordField.canonicalRows actualModulus 4510 (.bxor 1299 4509) := by core033_kernel_decide
theorem stats4510 : actualRows4510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4510=7428 := by core033_kernel_decide
theorem rows4511 : actualRows4511=WordField.canonicalRows actualModulus 4511 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4511 : actualRows4511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4511=2820 := by core033_kernel_decide
theorem rows4512 : actualRows4512=WordField.canonicalRows actualModulus 4512 (.bnot 4511) := by core033_kernel_decide
theorem stats4512 : actualRows4512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4512=6276 := by core033_kernel_decide
theorem rows4513 : actualRows4513=WordField.canonicalRows actualModulus 4513 (.bxor 4510 4512) := by core033_kernel_decide
theorem stats4513 : actualRows4513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4513=7428 := by core033_kernel_decide
theorem rows4514 : actualRows4514=WordField.canonicalRows actualModulus 4514 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4514 : actualRows4514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4514=2892 := by core033_kernel_decide
theorem rows4515 : actualRows4515=WordField.canonicalRows actualModulus 4515 (.bxor 1299 4514) := by core033_kernel_decide
theorem stats4515 : actualRows4515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4515=7428 := by core033_kernel_decide
theorem rows4516 : actualRows4516=WordField.canonicalRows actualModulus 4516 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4516 : actualRows4516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4516=2820 := by core033_kernel_decide
theorem rows4517 : actualRows4517=WordField.canonicalRows actualModulus 4517 (.bnot 4516) := by core033_kernel_decide
theorem stats4517 : actualRows4517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4517=6276 := by core033_kernel_decide
theorem rows4518 : actualRows4518=WordField.canonicalRows actualModulus 4518 (.badd 4515 4517) := by core033_kernel_decide
theorem stats4518 : actualRows4518.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4518=5388 := by core033_kernel_decide
theorem rows4519 : actualRows4519=WordField.canonicalRows actualModulus 4519 (.bnot 4518) := by core033_kernel_decide
theorem stats4519 : actualRows4519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4519=6276 := by core033_kernel_decide
theorem rows4520 : actualRows4520=WordField.canonicalRows actualModulus 4520 (.band 4513 4519) := by core033_kernel_decide
theorem stats4520 : actualRows4520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4520=5124 := by core033_kernel_decide
theorem rows4521 : actualRows4521=WordField.canonicalRows actualModulus 4521 (.bxor 4508 4520) := by core033_kernel_decide
theorem stats4521 : actualRows4521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4521=7428 := by core033_kernel_decide
theorem rows4522 : actualRows4522=WordField.canonicalRows actualModulus 4522 (.shr 4521 31) := by core033_kernel_decide
theorem stats4522 : actualRows4522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4522=2892 := by core033_kernel_decide
theorem rows4523 : actualRows4523=WordField.canonicalRows actualModulus 4523 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4523 : actualRows4523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4523=2892 := by core033_kernel_decide
theorem rows4524 : actualRows4524=WordField.canonicalRows actualModulus 4524 (.bxor 4522 4523) := by core033_kernel_decide
theorem stats4524 : actualRows4524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4524=7428 := by core033_kernel_decide
theorem rows4525 : actualRows4525=WordField.canonicalRows actualModulus 4525 (.bnot 4524) := by core033_kernel_decide
theorem stats4525 : actualRows4525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4525=6276 := by core033_kernel_decide
theorem rows4526 : actualRows4526=WordField.canonicalRows actualModulus 4526 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4526 : actualRows4526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4526=2892 := by core033_kernel_decide
theorem rows4527 : actualRows4527=WordField.canonicalRows actualModulus 4527 (.badd 4525 4526) := by core033_kernel_decide
theorem stats4527 : actualRows4527.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4527=5388 := by core033_kernel_decide
theorem rows4528 : actualRows4528=WordField.canonicalRows actualModulus 4528 (.bnot 4527) := by core033_kernel_decide
theorem stats4528 : actualRows4528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4528=6276 := by core033_kernel_decide
theorem rows4529 : actualRows4529=WordField.canonicalRows actualModulus 4529 (.band 4528 2564) := by core033_kernel_decide
theorem stats4529 : actualRows4529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4529=5124 := by core033_kernel_decide
theorem rows4530 : actualRows4530=WordField.canonicalRows actualModulus 4530 (.bxor 4503 4529) := by core033_kernel_decide
theorem stats4530 : actualRows4530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4530=7428 := by core033_kernel_decide
theorem rows4531 : actualRows4531=WordField.canonicalRows actualModulus 4531 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4531 : actualRows4531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4531=2892 := by core033_kernel_decide
theorem rows4532 : actualRows4532=WordField.canonicalRows actualModulus 4532 (.bxor 1299 4531) := by core033_kernel_decide
theorem stats4532 : actualRows4532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4532=7428 := by core033_kernel_decide
theorem rows4533 : actualRows4533=WordField.canonicalRows actualModulus 4533 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4533 : actualRows4533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4533=2820 := by core033_kernel_decide
def partRows68 : List R1CS.Row := actualRows4470++actualRows4471++actualRows4472++actualRows4473++actualRows4474++actualRows4475++actualRows4476++actualRows4477++actualRows4478++actualRows4479++actualRows4480++actualRows4481++actualRows4482++actualRows4483++actualRows4484++actualRows4485++actualRows4486++actualRows4487++actualRows4488++actualRows4489++actualRows4490++actualRows4491++actualRows4492++actualRows4493++actualRows4494++actualRows4495++actualRows4496++actualRows4497++actualRows4498++actualRows4499++actualRows4500++actualRows4501++actualRows4502++actualRows4503++actualRows4504++actualRows4505++actualRows4506++actualRows4507++actualRows4508++actualRows4509++actualRows4510++actualRows4511++actualRows4512++actualRows4513++actualRows4514++actualRows4515++actualRows4516++actualRows4517++actualRows4518++actualRows4519++actualRows4520++actualRows4521++actualRows4522++actualRows4523++actualRows4524++actualRows4525++actualRows4526++actualRows4527++actualRows4528++actualRows4529++actualRows4530++actualRows4531++actualRows4532++actualRows4533
def partOps68 : List WordIR.Op := [.shr 4469 31,.literal (BitVec.ofNat 32 1),.bxor 4470 4471,.bnot 4472,.literal (BitVec.ofNat 32 1),.badd 4473 4474,.bnot 4475,.band 4476 2563,.bxor 4451 4477,.literal (BitVec.ofNat 32 2),.bxor 1299 4479,.literal (BitVec.ofNat 32 0),.bnot 4481,.band 4480 4482,.literal (BitVec.ofNat 32 2),.bxor 1299 4484,.literal (BitVec.ofNat 32 0),.bnot 4486,.bxor 4485 4487,.literal (BitVec.ofNat 32 2),.bxor 1299 4489,.literal (BitVec.ofNat 32 0),.bnot 4491,.badd 4490 4492,.bnot 4493,.band 4488 4494,.bxor 4483 4495,.shr 4496 31,.literal (BitVec.ofNat 32 1),.bxor 4497 4498,.bnot 4499,.literal (BitVec.ofNat 32 1),.badd 4500 4501,.band 4502 2750,.literal (BitVec.ofNat 32 2),.bxor 1299 4504,.literal (BitVec.ofNat 32 0),.bnot 4506,.band 4505 4507,.literal (BitVec.ofNat 32 2),.bxor 1299 4509,.literal (BitVec.ofNat 32 0),.bnot 4511,.bxor 4510 4512,.literal (BitVec.ofNat 32 2),.bxor 1299 4514,.literal (BitVec.ofNat 32 0),.bnot 4516,.badd 4515 4517,.bnot 4518,.band 4513 4519,.bxor 4508 4520,.shr 4521 31,.literal (BitVec.ofNat 32 1),.bxor 4522 4523,.bnot 4524,.literal (BitVec.ofNat 32 1),.badd 4525 4526,.bnot 4527,.band 4528 2564,.bxor 4503 4529,.literal (BitVec.ofNat 32 2),.bxor 1299 4531,.literal (BitVec.ofNat 32 0)]
theorem partExact68 : partRows68=WordField.rows actualModulus 4470 partOps68 := by
  simp only [partRows68,partOps68,WordField.rows,rows4470,rows4471,rows4472,rows4473,rows4474,rows4475,rows4476,rows4477,rows4478,rows4479,rows4480,rows4481,rows4482,rows4483,rows4484,rows4485,rows4486,rows4487,rows4488,rows4489,rows4490,rows4491,rows4492,rows4493,rows4494,rows4495,rows4496,rows4497,rows4498,rows4499,rows4500,rows4501,rows4502,rows4503,rows4504,rows4505,rows4506,rows4507,rows4508,rows4509,rows4510,rows4511,rows4512,rows4513,rows4514,rows4515,rows4516,rows4517,rows4518,rows4519,rows4520,rows4521,rows4522,rows4523,rows4524,rows4525,rows4526,rows4527,rows4528,rows4529,rows4530,rows4531,rows4532,rows4533,List.append_assoc,List.append_nil]
theorem partLength68 : partOps68.length=64 := by decide
theorem partStats68 : partRows68.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows68=329256 := by
  simp only [partRows68,List.length_append,MatrixRowBlocks.rows_weight_append,stats4470.1,stats4470.2,stats4471.1,stats4471.2,stats4472.1,stats4472.2,stats4473.1,stats4473.2,stats4474.1,stats4474.2,stats4475.1,stats4475.2,stats4476.1,stats4476.2,stats4477.1,stats4477.2,stats4478.1,stats4478.2,stats4479.1,stats4479.2,stats4480.1,stats4480.2,stats4481.1,stats4481.2,stats4482.1,stats4482.2,stats4483.1,stats4483.2,stats4484.1,stats4484.2,stats4485.1,stats4485.2,stats4486.1,stats4486.2,stats4487.1,stats4487.2,stats4488.1,stats4488.2,stats4489.1,stats4489.2,stats4490.1,stats4490.2,stats4491.1,stats4491.2,stats4492.1,stats4492.2,stats4493.1,stats4493.2,stats4494.1,stats4494.2,stats4495.1,stats4495.2,stats4496.1,stats4496.2,stats4497.1,stats4497.2,stats4498.1,stats4498.2,stats4499.1,stats4499.2,stats4500.1,stats4500.2,stats4501.1,stats4501.2,stats4502.1,stats4502.2,stats4503.1,stats4503.2,stats4504.1,stats4504.2,stats4505.1,stats4505.2,stats4506.1,stats4506.2,stats4507.1,stats4507.2,stats4508.1,stats4508.2,stats4509.1,stats4509.2,stats4510.1,stats4510.2,stats4511.1,stats4511.2,stats4512.1,stats4512.2,stats4513.1,stats4513.2,stats4514.1,stats4514.2,stats4515.1,stats4515.2,stats4516.1,stats4516.2,stats4517.1,stats4517.2,stats4518.1,stats4518.2,stats4519.1,stats4519.2,stats4520.1,stats4520.2,stats4521.1,stats4521.2,stats4522.1,stats4522.2,stats4523.1,stats4523.2,stats4524.1,stats4524.2,stats4525.1,stats4525.2,stats4526.1,stats4526.2,stats4527.1,stats4527.2,stats4528.1,stats4528.2,stats4529.1,stats4529.2,stats4530.1,stats4530.2,stats4531.1,stats4531.2,stats4532.1,stats4532.2,stats4533.1,stats4533.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
