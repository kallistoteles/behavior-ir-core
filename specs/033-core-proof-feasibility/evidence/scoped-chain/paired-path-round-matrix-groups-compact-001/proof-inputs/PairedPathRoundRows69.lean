import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData70
import PairedPathRoundInstructionMatrixData71
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4512 : actualRows4512=WordField.canonicalRows actualModulus 4512 (.bnot 4511) := by core033_kernel_decide
theorem stats4512 : actualRows4512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4512=6276 := by core033_kernel_decide
theorem rows4513 : actualRows4513=WordField.canonicalRows actualModulus 4513 (.band 4506 4512) := by core033_kernel_decide
theorem stats4513 : actualRows4513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4513=5124 := by core033_kernel_decide
theorem rows4514 : actualRows4514=WordField.canonicalRows actualModulus 4514 (.bxor 4501 4513) := by core033_kernel_decide
theorem stats4514 : actualRows4514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4514=7428 := by core033_kernel_decide
theorem rows4515 : actualRows4515=WordField.canonicalRows actualModulus 4515 (.shr 4514 31) := by core033_kernel_decide
theorem stats4515 : actualRows4515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4515=2892 := by core033_kernel_decide
theorem rows4516 : actualRows4516=WordField.canonicalRows actualModulus 4516 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4516 : actualRows4516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4516=2892 := by core033_kernel_decide
theorem rows4517 : actualRows4517=WordField.canonicalRows actualModulus 4517 (.bxor 4515 4516) := by core033_kernel_decide
theorem stats4517 : actualRows4517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4517=7428 := by core033_kernel_decide
theorem rows4518 : actualRows4518=WordField.canonicalRows actualModulus 4518 (.bnot 4517) := by core033_kernel_decide
theorem stats4518 : actualRows4518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4518=6276 := by core033_kernel_decide
theorem rows4519 : actualRows4519=WordField.canonicalRows actualModulus 4519 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4519 : actualRows4519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4519=2892 := by core033_kernel_decide
theorem rows4520 : actualRows4520=WordField.canonicalRows actualModulus 4520 (.badd 4518 4519) := by core033_kernel_decide
theorem stats4520 : actualRows4520.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4520=5388 := by core033_kernel_decide
theorem rows4521 : actualRows4521=WordField.canonicalRows actualModulus 4521 (.bnot 4520) := by core033_kernel_decide
theorem stats4521 : actualRows4521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4521=6276 := by core033_kernel_decide
theorem rows4522 : actualRows4522=WordField.canonicalRows actualModulus 4522 (.band 4521 1914) := by core033_kernel_decide
theorem stats4522 : actualRows4522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4522=5124 := by core033_kernel_decide
theorem rows4523 : actualRows4523=WordField.canonicalRows actualModulus 4523 (.bxor 4496 4522) := by core033_kernel_decide
theorem stats4523 : actualRows4523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4523=7428 := by core033_kernel_decide
theorem rows4524 : actualRows4524=WordField.canonicalRows actualModulus 4524 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4524 : actualRows4524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4524=2892 := by core033_kernel_decide
theorem rows4525 : actualRows4525=WordField.canonicalRows actualModulus 4525 (.bxor 616 4524) := by core033_kernel_decide
theorem stats4525 : actualRows4525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4525=7428 := by core033_kernel_decide
theorem rows4526 : actualRows4526=WordField.canonicalRows actualModulus 4526 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4526 : actualRows4526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4526=2820 := by core033_kernel_decide
theorem rows4527 : actualRows4527=WordField.canonicalRows actualModulus 4527 (.bnot 4526) := by core033_kernel_decide
theorem stats4527 : actualRows4527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4527=6276 := by core033_kernel_decide
theorem rows4528 : actualRows4528=WordField.canonicalRows actualModulus 4528 (.band 4525 4527) := by core033_kernel_decide
theorem stats4528 : actualRows4528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4528=5124 := by core033_kernel_decide
theorem rows4529 : actualRows4529=WordField.canonicalRows actualModulus 4529 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4529 : actualRows4529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4529=2892 := by core033_kernel_decide
theorem rows4530 : actualRows4530=WordField.canonicalRows actualModulus 4530 (.bxor 616 4529) := by core033_kernel_decide
theorem stats4530 : actualRows4530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4530=7428 := by core033_kernel_decide
theorem rows4531 : actualRows4531=WordField.canonicalRows actualModulus 4531 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4531 : actualRows4531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4531=2820 := by core033_kernel_decide
theorem rows4532 : actualRows4532=WordField.canonicalRows actualModulus 4532 (.bnot 4531) := by core033_kernel_decide
theorem stats4532 : actualRows4532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4532=6276 := by core033_kernel_decide
theorem rows4533 : actualRows4533=WordField.canonicalRows actualModulus 4533 (.bxor 4530 4532) := by core033_kernel_decide
theorem stats4533 : actualRows4533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4533=7428 := by core033_kernel_decide
theorem rows4534 : actualRows4534=WordField.canonicalRows actualModulus 4534 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4534 : actualRows4534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4534=2892 := by core033_kernel_decide
theorem rows4535 : actualRows4535=WordField.canonicalRows actualModulus 4535 (.bxor 616 4534) := by core033_kernel_decide
theorem stats4535 : actualRows4535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4535=7428 := by core033_kernel_decide
theorem rows4536 : actualRows4536=WordField.canonicalRows actualModulus 4536 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4536 : actualRows4536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4536=2820 := by core033_kernel_decide
theorem rows4537 : actualRows4537=WordField.canonicalRows actualModulus 4537 (.bnot 4536) := by core033_kernel_decide
theorem stats4537 : actualRows4537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4537=6276 := by core033_kernel_decide
theorem rows4538 : actualRows4538=WordField.canonicalRows actualModulus 4538 (.badd 4535 4537) := by core033_kernel_decide
theorem stats4538 : actualRows4538.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4538=5388 := by core033_kernel_decide
theorem rows4539 : actualRows4539=WordField.canonicalRows actualModulus 4539 (.bnot 4538) := by core033_kernel_decide
theorem stats4539 : actualRows4539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4539=6276 := by core033_kernel_decide
theorem rows4540 : actualRows4540=WordField.canonicalRows actualModulus 4540 (.band 4533 4539) := by core033_kernel_decide
theorem stats4540 : actualRows4540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4540=5124 := by core033_kernel_decide
theorem rows4541 : actualRows4541=WordField.canonicalRows actualModulus 4541 (.bxor 4528 4540) := by core033_kernel_decide
theorem stats4541 : actualRows4541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4541=7428 := by core033_kernel_decide
theorem rows4542 : actualRows4542=WordField.canonicalRows actualModulus 4542 (.shr 4541 31) := by core033_kernel_decide
theorem stats4542 : actualRows4542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4542=2892 := by core033_kernel_decide
theorem rows4543 : actualRows4543=WordField.canonicalRows actualModulus 4543 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4543 : actualRows4543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4543=2892 := by core033_kernel_decide
theorem rows4544 : actualRows4544=WordField.canonicalRows actualModulus 4544 (.bxor 4542 4543) := by core033_kernel_decide
theorem stats4544 : actualRows4544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4544=7428 := by core033_kernel_decide
theorem rows4545 : actualRows4545=WordField.canonicalRows actualModulus 4545 (.bnot 4544) := by core033_kernel_decide
theorem stats4545 : actualRows4545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4545=6276 := by core033_kernel_decide
theorem rows4546 : actualRows4546=WordField.canonicalRows actualModulus 4546 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4546 : actualRows4546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4546=2892 := by core033_kernel_decide
theorem rows4547 : actualRows4547=WordField.canonicalRows actualModulus 4547 (.badd 4545 4546) := by core033_kernel_decide
theorem stats4547 : actualRows4547.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4547=5388 := by core033_kernel_decide
theorem rows4548 : actualRows4548=WordField.canonicalRows actualModulus 4548 (.band 4547 2109) := by core033_kernel_decide
theorem stats4548 : actualRows4548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4548=5124 := by core033_kernel_decide
theorem rows4549 : actualRows4549=WordField.canonicalRows actualModulus 4549 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4549 : actualRows4549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4549=2892 := by core033_kernel_decide
theorem rows4550 : actualRows4550=WordField.canonicalRows actualModulus 4550 (.bxor 616 4549) := by core033_kernel_decide
theorem stats4550 : actualRows4550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4550=7428 := by core033_kernel_decide
theorem rows4551 : actualRows4551=WordField.canonicalRows actualModulus 4551 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4551 : actualRows4551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4551=2820 := by core033_kernel_decide
theorem rows4552 : actualRows4552=WordField.canonicalRows actualModulus 4552 (.bnot 4551) := by core033_kernel_decide
theorem stats4552 : actualRows4552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4552=6276 := by core033_kernel_decide
theorem rows4553 : actualRows4553=WordField.canonicalRows actualModulus 4553 (.band 4550 4552) := by core033_kernel_decide
theorem stats4553 : actualRows4553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4553=5124 := by core033_kernel_decide
theorem rows4554 : actualRows4554=WordField.canonicalRows actualModulus 4554 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4554 : actualRows4554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4554=2892 := by core033_kernel_decide
theorem rows4555 : actualRows4555=WordField.canonicalRows actualModulus 4555 (.bxor 616 4554) := by core033_kernel_decide
theorem stats4555 : actualRows4555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4555=7428 := by core033_kernel_decide
theorem rows4556 : actualRows4556=WordField.canonicalRows actualModulus 4556 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4556 : actualRows4556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4556=2820 := by core033_kernel_decide
theorem rows4557 : actualRows4557=WordField.canonicalRows actualModulus 4557 (.bnot 4556) := by core033_kernel_decide
theorem stats4557 : actualRows4557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4557=6276 := by core033_kernel_decide
theorem rows4558 : actualRows4558=WordField.canonicalRows actualModulus 4558 (.bxor 4555 4557) := by core033_kernel_decide
theorem stats4558 : actualRows4558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4558=7428 := by core033_kernel_decide
theorem rows4559 : actualRows4559=WordField.canonicalRows actualModulus 4559 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4559 : actualRows4559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4559=2892 := by core033_kernel_decide
theorem rows4560 : actualRows4560=WordField.canonicalRows actualModulus 4560 (.bxor 616 4559) := by core033_kernel_decide
theorem stats4560 : actualRows4560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4560=7428 := by core033_kernel_decide
theorem rows4561 : actualRows4561=WordField.canonicalRows actualModulus 4561 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4561 : actualRows4561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4561=2820 := by core033_kernel_decide
theorem rows4562 : actualRows4562=WordField.canonicalRows actualModulus 4562 (.bnot 4561) := by core033_kernel_decide
theorem stats4562 : actualRows4562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4562=6276 := by core033_kernel_decide
theorem rows4563 : actualRows4563=WordField.canonicalRows actualModulus 4563 (.badd 4560 4562) := by core033_kernel_decide
theorem stats4563 : actualRows4563.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4563=5388 := by core033_kernel_decide
theorem rows4564 : actualRows4564=WordField.canonicalRows actualModulus 4564 (.bnot 4563) := by core033_kernel_decide
theorem stats4564 : actualRows4564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4564=6276 := by core033_kernel_decide
theorem rows4565 : actualRows4565=WordField.canonicalRows actualModulus 4565 (.band 4558 4564) := by core033_kernel_decide
theorem stats4565 : actualRows4565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4565=5124 := by core033_kernel_decide
theorem rows4566 : actualRows4566=WordField.canonicalRows actualModulus 4566 (.bxor 4553 4565) := by core033_kernel_decide
theorem stats4566 : actualRows4566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4566=7428 := by core033_kernel_decide
theorem rows4567 : actualRows4567=WordField.canonicalRows actualModulus 4567 (.shr 4566 31) := by core033_kernel_decide
theorem stats4567 : actualRows4567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4567=2892 := by core033_kernel_decide
theorem rows4568 : actualRows4568=WordField.canonicalRows actualModulus 4568 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4568 : actualRows4568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4568=2892 := by core033_kernel_decide
theorem rows4569 : actualRows4569=WordField.canonicalRows actualModulus 4569 (.bxor 4567 4568) := by core033_kernel_decide
theorem stats4569 : actualRows4569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4569=7428 := by core033_kernel_decide
theorem rows4570 : actualRows4570=WordField.canonicalRows actualModulus 4570 (.bnot 4569) := by core033_kernel_decide
theorem stats4570 : actualRows4570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4570=6276 := by core033_kernel_decide
theorem rows4571 : actualRows4571=WordField.canonicalRows actualModulus 4571 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4571 : actualRows4571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4571=2892 := by core033_kernel_decide
theorem rows4572 : actualRows4572=WordField.canonicalRows actualModulus 4572 (.badd 4570 4571) := by core033_kernel_decide
theorem stats4572 : actualRows4572.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4572=5388 := by core033_kernel_decide
theorem rows4573 : actualRows4573=WordField.canonicalRows actualModulus 4573 (.bnot 4572) := by core033_kernel_decide
theorem stats4573 : actualRows4573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4573=6276 := by core033_kernel_decide
theorem rows4574 : actualRows4574=WordField.canonicalRows actualModulus 4574 (.band 4573 1917) := by core033_kernel_decide
theorem stats4574 : actualRows4574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4574=5124 := by core033_kernel_decide
theorem rows4575 : actualRows4575=WordField.canonicalRows actualModulus 4575 (.bxor 4548 4574) := by core033_kernel_decide
theorem stats4575 : actualRows4575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4575=7428 := by core033_kernel_decide
def partRows69 : List R1CS.Row := actualRows4512++actualRows4513++actualRows4514++actualRows4515++actualRows4516++actualRows4517++actualRows4518++actualRows4519++actualRows4520++actualRows4521++actualRows4522++actualRows4523++actualRows4524++actualRows4525++actualRows4526++actualRows4527++actualRows4528++actualRows4529++actualRows4530++actualRows4531++actualRows4532++actualRows4533++actualRows4534++actualRows4535++actualRows4536++actualRows4537++actualRows4538++actualRows4539++actualRows4540++actualRows4541++actualRows4542++actualRows4543++actualRows4544++actualRows4545++actualRows4546++actualRows4547++actualRows4548++actualRows4549++actualRows4550++actualRows4551++actualRows4552++actualRows4553++actualRows4554++actualRows4555++actualRows4556++actualRows4557++actualRows4558++actualRows4559++actualRows4560++actualRows4561++actualRows4562++actualRows4563++actualRows4564++actualRows4565++actualRows4566++actualRows4567++actualRows4568++actualRows4569++actualRows4570++actualRows4571++actualRows4572++actualRows4573++actualRows4574++actualRows4575
def partOps69 : List WordIR.Op := [.bnot 4511,.band 4506 4512,.bxor 4501 4513,.shr 4514 31,.literal (BitVec.ofNat 32 1),.bxor 4515 4516,.bnot 4517,.literal (BitVec.ofNat 32 1),.badd 4518 4519,.bnot 4520,.band 4521 1914,.bxor 4496 4522,.literal (BitVec.ofNat 32 2),.bxor 616 4524,.literal (BitVec.ofNat 32 0),.bnot 4526,.band 4525 4527,.literal (BitVec.ofNat 32 2),.bxor 616 4529,.literal (BitVec.ofNat 32 0),.bnot 4531,.bxor 4530 4532,.literal (BitVec.ofNat 32 2),.bxor 616 4534,.literal (BitVec.ofNat 32 0),.bnot 4536,.badd 4535 4537,.bnot 4538,.band 4533 4539,.bxor 4528 4540,.shr 4541 31,.literal (BitVec.ofNat 32 1),.bxor 4542 4543,.bnot 4544,.literal (BitVec.ofNat 32 1),.badd 4545 4546,.band 4547 2109,.literal (BitVec.ofNat 32 2),.bxor 616 4549,.literal (BitVec.ofNat 32 0),.bnot 4551,.band 4550 4552,.literal (BitVec.ofNat 32 2),.bxor 616 4554,.literal (BitVec.ofNat 32 0),.bnot 4556,.bxor 4555 4557,.literal (BitVec.ofNat 32 2),.bxor 616 4559,.literal (BitVec.ofNat 32 0),.bnot 4561,.badd 4560 4562,.bnot 4563,.band 4558 4564,.bxor 4553 4565,.shr 4566 31,.literal (BitVec.ofNat 32 1),.bxor 4567 4568,.bnot 4569,.literal (BitVec.ofNat 32 1),.badd 4570 4571,.bnot 4572,.band 4573 1917,.bxor 4548 4574]
theorem partExact69 : partRows69=WordField.rows actualModulus 4512 partOps69 := by
  simp only [partRows69,partOps69,WordField.rows,rows4512,rows4513,rows4514,rows4515,rows4516,rows4517,rows4518,rows4519,rows4520,rows4521,rows4522,rows4523,rows4524,rows4525,rows4526,rows4527,rows4528,rows4529,rows4530,rows4531,rows4532,rows4533,rows4534,rows4535,rows4536,rows4537,rows4538,rows4539,rows4540,rows4541,rows4542,rows4543,rows4544,rows4545,rows4546,rows4547,rows4548,rows4549,rows4550,rows4551,rows4552,rows4553,rows4554,rows4555,rows4556,rows4557,rows4558,rows4559,rows4560,rows4561,rows4562,rows4563,rows4564,rows4565,rows4566,rows4567,rows4568,rows4569,rows4570,rows4571,rows4572,rows4573,rows4574,rows4575,List.append_assoc,List.append_nil]
theorem partLength69 : partOps69.length=64 := by decide
theorem partStats69 : partRows69.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows69=334944 := by
  simp only [partRows69,List.length_append,MatrixRowBlocks.rows_weight_append,stats4512.1,stats4512.2,stats4513.1,stats4513.2,stats4514.1,stats4514.2,stats4515.1,stats4515.2,stats4516.1,stats4516.2,stats4517.1,stats4517.2,stats4518.1,stats4518.2,stats4519.1,stats4519.2,stats4520.1,stats4520.2,stats4521.1,stats4521.2,stats4522.1,stats4522.2,stats4523.1,stats4523.2,stats4524.1,stats4524.2,stats4525.1,stats4525.2,stats4526.1,stats4526.2,stats4527.1,stats4527.2,stats4528.1,stats4528.2,stats4529.1,stats4529.2,stats4530.1,stats4530.2,stats4531.1,stats4531.2,stats4532.1,stats4532.2,stats4533.1,stats4533.2,stats4534.1,stats4534.2,stats4535.1,stats4535.2,stats4536.1,stats4536.2,stats4537.1,stats4537.2,stats4538.1,stats4538.2,stats4539.1,stats4539.2,stats4540.1,stats4540.2,stats4541.1,stats4541.2,stats4542.1,stats4542.2,stats4543.1,stats4543.2,stats4544.1,stats4544.2,stats4545.1,stats4545.2,stats4546.1,stats4546.2,stats4547.1,stats4547.2,stats4548.1,stats4548.2,stats4549.1,stats4549.2,stats4550.1,stats4550.2,stats4551.1,stats4551.2,stats4552.1,stats4552.2,stats4553.1,stats4553.2,stats4554.1,stats4554.2,stats4555.1,stats4555.2,stats4556.1,stats4556.2,stats4557.1,stats4557.2,stats4558.1,stats4558.2,stats4559.1,stats4559.2,stats4560.1,stats4560.2,stats4561.1,stats4561.2,stats4562.1,stats4562.2,stats4563.1,stats4563.2,stats4564.1,stats4564.2,stats4565.1,stats4565.2,stats4566.1,stats4566.2,stats4567.1,stats4567.2,stats4568.1,stats4568.2,stats4569.1,stats4569.2,stats4570.1,stats4570.2,stats4571.1,stats4571.2,stats4572.1,stats4572.2,stats4573.1,stats4573.2,stats4574.1,stats4574.2,stats4575.1,stats4575.2]
  decide
end PairedPathRoundCheckedRows
