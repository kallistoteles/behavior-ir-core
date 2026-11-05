import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData70
import AuthenticatedBranchRoundInstructionMatrixData71
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4534 : actualRows4534=WordField.canonicalRows actualModulus 4534 (.bnot 4533) := by core033_kernel_decide
theorem stats4534 : actualRows4534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4534=6276 := by core033_kernel_decide
theorem rows4535 : actualRows4535=WordField.canonicalRows actualModulus 4535 (.band 4532 4534) := by core033_kernel_decide
theorem stats4535 : actualRows4535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4535=5124 := by core033_kernel_decide
theorem rows4536 : actualRows4536=WordField.canonicalRows actualModulus 4536 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4536 : actualRows4536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4536=2892 := by core033_kernel_decide
theorem rows4537 : actualRows4537=WordField.canonicalRows actualModulus 4537 (.bxor 1299 4536) := by core033_kernel_decide
theorem stats4537 : actualRows4537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4537=7428 := by core033_kernel_decide
theorem rows4538 : actualRows4538=WordField.canonicalRows actualModulus 4538 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4538 : actualRows4538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4538=2820 := by core033_kernel_decide
theorem rows4539 : actualRows4539=WordField.canonicalRows actualModulus 4539 (.bnot 4538) := by core033_kernel_decide
theorem stats4539 : actualRows4539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4539=6276 := by core033_kernel_decide
theorem rows4540 : actualRows4540=WordField.canonicalRows actualModulus 4540 (.bxor 4537 4539) := by core033_kernel_decide
theorem stats4540 : actualRows4540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4540=7428 := by core033_kernel_decide
theorem rows4541 : actualRows4541=WordField.canonicalRows actualModulus 4541 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4541 : actualRows4541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4541=2892 := by core033_kernel_decide
theorem rows4542 : actualRows4542=WordField.canonicalRows actualModulus 4542 (.bxor 1299 4541) := by core033_kernel_decide
theorem stats4542 : actualRows4542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4542=7428 := by core033_kernel_decide
theorem rows4543 : actualRows4543=WordField.canonicalRows actualModulus 4543 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4543 : actualRows4543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4543=2820 := by core033_kernel_decide
theorem rows4544 : actualRows4544=WordField.canonicalRows actualModulus 4544 (.bnot 4543) := by core033_kernel_decide
theorem stats4544 : actualRows4544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4544=6276 := by core033_kernel_decide
theorem rows4545 : actualRows4545=WordField.canonicalRows actualModulus 4545 (.badd 4542 4544) := by core033_kernel_decide
theorem stats4545 : actualRows4545.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4545=5388 := by core033_kernel_decide
theorem rows4546 : actualRows4546=WordField.canonicalRows actualModulus 4546 (.bnot 4545) := by core033_kernel_decide
theorem stats4546 : actualRows4546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4546=6276 := by core033_kernel_decide
theorem rows4547 : actualRows4547=WordField.canonicalRows actualModulus 4547 (.band 4540 4546) := by core033_kernel_decide
theorem stats4547 : actualRows4547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4547=5124 := by core033_kernel_decide
theorem rows4548 : actualRows4548=WordField.canonicalRows actualModulus 4548 (.bxor 4535 4547) := by core033_kernel_decide
theorem stats4548 : actualRows4548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4548=7428 := by core033_kernel_decide
theorem rows4549 : actualRows4549=WordField.canonicalRows actualModulus 4549 (.shr 4548 31) := by core033_kernel_decide
theorem stats4549 : actualRows4549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4549=2892 := by core033_kernel_decide
theorem rows4550 : actualRows4550=WordField.canonicalRows actualModulus 4550 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4550 : actualRows4550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4550=2892 := by core033_kernel_decide
theorem rows4551 : actualRows4551=WordField.canonicalRows actualModulus 4551 (.bxor 4549 4550) := by core033_kernel_decide
theorem stats4551 : actualRows4551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4551=7428 := by core033_kernel_decide
theorem rows4552 : actualRows4552=WordField.canonicalRows actualModulus 4552 (.bnot 4551) := by core033_kernel_decide
theorem stats4552 : actualRows4552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4552=6276 := by core033_kernel_decide
theorem rows4553 : actualRows4553=WordField.canonicalRows actualModulus 4553 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4553 : actualRows4553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4553=2892 := by core033_kernel_decide
theorem rows4554 : actualRows4554=WordField.canonicalRows actualModulus 4554 (.badd 4552 4553) := by core033_kernel_decide
theorem stats4554 : actualRows4554.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4554=5388 := by core033_kernel_decide
theorem rows4555 : actualRows4555=WordField.canonicalRows actualModulus 4555 (.band 4554 2753) := by core033_kernel_decide
theorem stats4555 : actualRows4555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4555=5124 := by core033_kernel_decide
theorem rows4556 : actualRows4556=WordField.canonicalRows actualModulus 4556 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4556 : actualRows4556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4556=2892 := by core033_kernel_decide
theorem rows4557 : actualRows4557=WordField.canonicalRows actualModulus 4557 (.bxor 1299 4556) := by core033_kernel_decide
theorem stats4557 : actualRows4557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4557=7428 := by core033_kernel_decide
theorem rows4558 : actualRows4558=WordField.canonicalRows actualModulus 4558 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4558 : actualRows4558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4558=2820 := by core033_kernel_decide
theorem rows4559 : actualRows4559=WordField.canonicalRows actualModulus 4559 (.bnot 4558) := by core033_kernel_decide
theorem stats4559 : actualRows4559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4559=6276 := by core033_kernel_decide
theorem rows4560 : actualRows4560=WordField.canonicalRows actualModulus 4560 (.band 4557 4559) := by core033_kernel_decide
theorem stats4560 : actualRows4560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4560=5124 := by core033_kernel_decide
theorem rows4561 : actualRows4561=WordField.canonicalRows actualModulus 4561 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4561 : actualRows4561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4561=2892 := by core033_kernel_decide
theorem rows4562 : actualRows4562=WordField.canonicalRows actualModulus 4562 (.bxor 1299 4561) := by core033_kernel_decide
theorem stats4562 : actualRows4562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4562=7428 := by core033_kernel_decide
theorem rows4563 : actualRows4563=WordField.canonicalRows actualModulus 4563 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4563 : actualRows4563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4563=2820 := by core033_kernel_decide
theorem rows4564 : actualRows4564=WordField.canonicalRows actualModulus 4564 (.bnot 4563) := by core033_kernel_decide
theorem stats4564 : actualRows4564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4564=6276 := by core033_kernel_decide
theorem rows4565 : actualRows4565=WordField.canonicalRows actualModulus 4565 (.bxor 4562 4564) := by core033_kernel_decide
theorem stats4565 : actualRows4565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4565=7428 := by core033_kernel_decide
theorem rows4566 : actualRows4566=WordField.canonicalRows actualModulus 4566 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4566 : actualRows4566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4566=2892 := by core033_kernel_decide
theorem rows4567 : actualRows4567=WordField.canonicalRows actualModulus 4567 (.bxor 1299 4566) := by core033_kernel_decide
theorem stats4567 : actualRows4567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4567=7428 := by core033_kernel_decide
theorem rows4568 : actualRows4568=WordField.canonicalRows actualModulus 4568 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4568 : actualRows4568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4568=2820 := by core033_kernel_decide
theorem rows4569 : actualRows4569=WordField.canonicalRows actualModulus 4569 (.bnot 4568) := by core033_kernel_decide
theorem stats4569 : actualRows4569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4569=6276 := by core033_kernel_decide
theorem rows4570 : actualRows4570=WordField.canonicalRows actualModulus 4570 (.badd 4567 4569) := by core033_kernel_decide
theorem stats4570 : actualRows4570.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4570=5388 := by core033_kernel_decide
theorem rows4571 : actualRows4571=WordField.canonicalRows actualModulus 4571 (.bnot 4570) := by core033_kernel_decide
theorem stats4571 : actualRows4571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4571=6276 := by core033_kernel_decide
theorem rows4572 : actualRows4572=WordField.canonicalRows actualModulus 4572 (.band 4565 4571) := by core033_kernel_decide
theorem stats4572 : actualRows4572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4572=5124 := by core033_kernel_decide
theorem rows4573 : actualRows4573=WordField.canonicalRows actualModulus 4573 (.bxor 4560 4572) := by core033_kernel_decide
theorem stats4573 : actualRows4573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4573=7428 := by core033_kernel_decide
theorem rows4574 : actualRows4574=WordField.canonicalRows actualModulus 4574 (.shr 4573 31) := by core033_kernel_decide
theorem stats4574 : actualRows4574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4574=2892 := by core033_kernel_decide
theorem rows4575 : actualRows4575=WordField.canonicalRows actualModulus 4575 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4575 : actualRows4575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4575=2892 := by core033_kernel_decide
theorem rows4576 : actualRows4576=WordField.canonicalRows actualModulus 4576 (.bxor 4574 4575) := by core033_kernel_decide
theorem stats4576 : actualRows4576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4576=7428 := by core033_kernel_decide
theorem rows4577 : actualRows4577=WordField.canonicalRows actualModulus 4577 (.bnot 4576) := by core033_kernel_decide
theorem stats4577 : actualRows4577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4577=6276 := by core033_kernel_decide
theorem rows4578 : actualRows4578=WordField.canonicalRows actualModulus 4578 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4578 : actualRows4578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4578=2892 := by core033_kernel_decide
theorem rows4579 : actualRows4579=WordField.canonicalRows actualModulus 4579 (.badd 4577 4578) := by core033_kernel_decide
theorem stats4579 : actualRows4579.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4579=5388 := by core033_kernel_decide
theorem rows4580 : actualRows4580=WordField.canonicalRows actualModulus 4580 (.bnot 4579) := by core033_kernel_decide
theorem stats4580 : actualRows4580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4580=6276 := by core033_kernel_decide
theorem rows4581 : actualRows4581=WordField.canonicalRows actualModulus 4581 (.band 4580 2565) := by core033_kernel_decide
theorem stats4581 : actualRows4581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4581=5124 := by core033_kernel_decide
theorem rows4582 : actualRows4582=WordField.canonicalRows actualModulus 4582 (.bxor 4555 4581) := by core033_kernel_decide
theorem stats4582 : actualRows4582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4582=7428 := by core033_kernel_decide
theorem rows4583 : actualRows4583=WordField.canonicalRows actualModulus 4583 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4583 : actualRows4583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4583=2892 := by core033_kernel_decide
theorem rows4584 : actualRows4584=WordField.canonicalRows actualModulus 4584 (.bxor 1299 4583) := by core033_kernel_decide
theorem stats4584 : actualRows4584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4584=7428 := by core033_kernel_decide
theorem rows4585 : actualRows4585=WordField.canonicalRows actualModulus 4585 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4585 : actualRows4585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4585=2820 := by core033_kernel_decide
theorem rows4586 : actualRows4586=WordField.canonicalRows actualModulus 4586 (.bnot 4585) := by core033_kernel_decide
theorem stats4586 : actualRows4586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4586=6276 := by core033_kernel_decide
theorem rows4587 : actualRows4587=WordField.canonicalRows actualModulus 4587 (.band 4584 4586) := by core033_kernel_decide
theorem stats4587 : actualRows4587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4587=5124 := by core033_kernel_decide
theorem rows4588 : actualRows4588=WordField.canonicalRows actualModulus 4588 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4588 : actualRows4588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4588=2892 := by core033_kernel_decide
theorem rows4589 : actualRows4589=WordField.canonicalRows actualModulus 4589 (.bxor 1299 4588) := by core033_kernel_decide
theorem stats4589 : actualRows4589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4589=7428 := by core033_kernel_decide
theorem rows4590 : actualRows4590=WordField.canonicalRows actualModulus 4590 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4590 : actualRows4590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4590=2820 := by core033_kernel_decide
theorem rows4591 : actualRows4591=WordField.canonicalRows actualModulus 4591 (.bnot 4590) := by core033_kernel_decide
theorem stats4591 : actualRows4591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4591=6276 := by core033_kernel_decide
theorem rows4592 : actualRows4592=WordField.canonicalRows actualModulus 4592 (.bxor 4589 4591) := by core033_kernel_decide
theorem stats4592 : actualRows4592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4592=7428 := by core033_kernel_decide
theorem rows4593 : actualRows4593=WordField.canonicalRows actualModulus 4593 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4593 : actualRows4593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4593=2892 := by core033_kernel_decide
theorem rows4594 : actualRows4594=WordField.canonicalRows actualModulus 4594 (.bxor 1299 4593) := by core033_kernel_decide
theorem stats4594 : actualRows4594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4594=7428 := by core033_kernel_decide
theorem rows4595 : actualRows4595=WordField.canonicalRows actualModulus 4595 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4595 : actualRows4595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4595=2820 := by core033_kernel_decide
theorem rows4596 : actualRows4596=WordField.canonicalRows actualModulus 4596 (.bnot 4595) := by core033_kernel_decide
theorem stats4596 : actualRows4596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4596=6276 := by core033_kernel_decide
theorem rows4597 : actualRows4597=WordField.canonicalRows actualModulus 4597 (.badd 4594 4596) := by core033_kernel_decide
theorem stats4597 : actualRows4597.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4597=5388 := by core033_kernel_decide
def partRows69 : List R1CS.Row := actualRows4534++actualRows4535++actualRows4536++actualRows4537++actualRows4538++actualRows4539++actualRows4540++actualRows4541++actualRows4542++actualRows4543++actualRows4544++actualRows4545++actualRows4546++actualRows4547++actualRows4548++actualRows4549++actualRows4550++actualRows4551++actualRows4552++actualRows4553++actualRows4554++actualRows4555++actualRows4556++actualRows4557++actualRows4558++actualRows4559++actualRows4560++actualRows4561++actualRows4562++actualRows4563++actualRows4564++actualRows4565++actualRows4566++actualRows4567++actualRows4568++actualRows4569++actualRows4570++actualRows4571++actualRows4572++actualRows4573++actualRows4574++actualRows4575++actualRows4576++actualRows4577++actualRows4578++actualRows4579++actualRows4580++actualRows4581++actualRows4582++actualRows4583++actualRows4584++actualRows4585++actualRows4586++actualRows4587++actualRows4588++actualRows4589++actualRows4590++actualRows4591++actualRows4592++actualRows4593++actualRows4594++actualRows4595++actualRows4596++actualRows4597
def partOps69 : List WordIR.Op := [.bnot 4533,.band 4532 4534,.literal (BitVec.ofNat 32 2),.bxor 1299 4536,.literal (BitVec.ofNat 32 0),.bnot 4538,.bxor 4537 4539,.literal (BitVec.ofNat 32 2),.bxor 1299 4541,.literal (BitVec.ofNat 32 0),.bnot 4543,.badd 4542 4544,.bnot 4545,.band 4540 4546,.bxor 4535 4547,.shr 4548 31,.literal (BitVec.ofNat 32 1),.bxor 4549 4550,.bnot 4551,.literal (BitVec.ofNat 32 1),.badd 4552 4553,.band 4554 2753,.literal (BitVec.ofNat 32 2),.bxor 1299 4556,.literal (BitVec.ofNat 32 0),.bnot 4558,.band 4557 4559,.literal (BitVec.ofNat 32 2),.bxor 1299 4561,.literal (BitVec.ofNat 32 0),.bnot 4563,.bxor 4562 4564,.literal (BitVec.ofNat 32 2),.bxor 1299 4566,.literal (BitVec.ofNat 32 0),.bnot 4568,.badd 4567 4569,.bnot 4570,.band 4565 4571,.bxor 4560 4572,.shr 4573 31,.literal (BitVec.ofNat 32 1),.bxor 4574 4575,.bnot 4576,.literal (BitVec.ofNat 32 1),.badd 4577 4578,.bnot 4579,.band 4580 2565,.bxor 4555 4581,.literal (BitVec.ofNat 32 2),.bxor 1299 4583,.literal (BitVec.ofNat 32 0),.bnot 4585,.band 4584 4586,.literal (BitVec.ofNat 32 2),.bxor 1299 4588,.literal (BitVec.ofNat 32 0),.bnot 4590,.bxor 4589 4591,.literal (BitVec.ofNat 32 2),.bxor 1299 4593,.literal (BitVec.ofNat 32 0),.bnot 4595,.badd 4594 4596]
theorem partExact69 : partRows69=WordField.rows actualModulus 4534 partOps69 := by
  simp only [partRows69,partOps69,WordField.rows,rows4534,rows4535,rows4536,rows4537,rows4538,rows4539,rows4540,rows4541,rows4542,rows4543,rows4544,rows4545,rows4546,rows4547,rows4548,rows4549,rows4550,rows4551,rows4552,rows4553,rows4554,rows4555,rows4556,rows4557,rows4558,rows4559,rows4560,rows4561,rows4562,rows4563,rows4564,rows4565,rows4566,rows4567,rows4568,rows4569,rows4570,rows4571,rows4572,rows4573,rows4574,rows4575,rows4576,rows4577,rows4578,rows4579,rows4580,rows4581,rows4582,rows4583,rows4584,rows4585,rows4586,rows4587,rows4588,rows4589,rows4590,rows4591,rows4592,rows4593,rows4594,rows4595,rows4596,rows4597,List.append_assoc,List.append_nil]
theorem partLength69 : partOps69.length=64 := by decide
theorem partStats69 : partRows69.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows69=332568 := by
  simp only [partRows69,List.length_append,MatrixRowBlocks.rows_weight_append,stats4534.1,stats4534.2,stats4535.1,stats4535.2,stats4536.1,stats4536.2,stats4537.1,stats4537.2,stats4538.1,stats4538.2,stats4539.1,stats4539.2,stats4540.1,stats4540.2,stats4541.1,stats4541.2,stats4542.1,stats4542.2,stats4543.1,stats4543.2,stats4544.1,stats4544.2,stats4545.1,stats4545.2,stats4546.1,stats4546.2,stats4547.1,stats4547.2,stats4548.1,stats4548.2,stats4549.1,stats4549.2,stats4550.1,stats4550.2,stats4551.1,stats4551.2,stats4552.1,stats4552.2,stats4553.1,stats4553.2,stats4554.1,stats4554.2,stats4555.1,stats4555.2,stats4556.1,stats4556.2,stats4557.1,stats4557.2,stats4558.1,stats4558.2,stats4559.1,stats4559.2,stats4560.1,stats4560.2,stats4561.1,stats4561.2,stats4562.1,stats4562.2,stats4563.1,stats4563.2,stats4564.1,stats4564.2,stats4565.1,stats4565.2,stats4566.1,stats4566.2,stats4567.1,stats4567.2,stats4568.1,stats4568.2,stats4569.1,stats4569.2,stats4570.1,stats4570.2,stats4571.1,stats4571.2,stats4572.1,stats4572.2,stats4573.1,stats4573.2,stats4574.1,stats4574.2,stats4575.1,stats4575.2,stats4576.1,stats4576.2,stats4577.1,stats4577.2,stats4578.1,stats4578.2,stats4579.1,stats4579.2,stats4580.1,stats4580.2,stats4581.1,stats4581.2,stats4582.1,stats4582.2,stats4583.1,stats4583.2,stats4584.1,stats4584.2,stats4585.1,stats4585.2,stats4586.1,stats4586.2,stats4587.1,stats4587.2,stats4588.1,stats4588.2,stats4589.1,stats4589.2,stats4590.1,stats4590.2,stats4591.1,stats4591.2,stats4592.1,stats4592.2,stats4593.1,stats4593.2,stats4594.1,stats4594.2,stats4595.1,stats4595.2,stats4596.1,stats4596.2,stats4597.1,stats4597.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
