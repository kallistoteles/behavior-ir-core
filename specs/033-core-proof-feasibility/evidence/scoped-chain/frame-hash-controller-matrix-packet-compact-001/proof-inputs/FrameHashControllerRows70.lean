import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData70
import FrameHashControllerInstructionMatrixData71
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4523 : actualRows4523=WordField.canonicalRows actualModulus 4523 (.bnot 4522) := by core033_kernel_decide
theorem stats4523 : actualRows4523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4523=6276 := by core033_kernel_decide
theorem rows4524 : actualRows4524=WordField.canonicalRows actualModulus 4524 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4524 : actualRows4524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4524=2892 := by core033_kernel_decide
theorem rows4525 : actualRows4525=WordField.canonicalRows actualModulus 4525 (.badd 4523 4524) := by core033_kernel_decide
theorem stats4525 : actualRows4525.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4525=5388 := by core033_kernel_decide
theorem rows4526 : actualRows4526=WordField.canonicalRows actualModulus 4526 (.bnot 4525) := by core033_kernel_decide
theorem stats4526 : actualRows4526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4526=6276 := by core033_kernel_decide
theorem rows4527 : actualRows4527=WordField.canonicalRows actualModulus 4527 (.band 4526 938) := by core033_kernel_decide
theorem stats4527 : actualRows4527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4527=5124 := by core033_kernel_decide
theorem rows4528 : actualRows4528=WordField.canonicalRows actualModulus 4528 (.bxor 4501 4527) := by core033_kernel_decide
theorem stats4528 : actualRows4528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4528=7428 := by core033_kernel_decide
theorem rows4529 : actualRows4529=WordField.canonicalRows actualModulus 4529 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4529 : actualRows4529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4529=2892 := by core033_kernel_decide
theorem rows4530 : actualRows4530=WordField.canonicalRows actualModulus 4530 (.bxor 0 4529) := by core033_kernel_decide
theorem stats4530 : actualRows4530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4530=7428 := by core033_kernel_decide
theorem rows4531 : actualRows4531=WordField.canonicalRows actualModulus 4531 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4531 : actualRows4531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4531=2820 := by core033_kernel_decide
theorem rows4532 : actualRows4532=WordField.canonicalRows actualModulus 4532 (.bnot 4531) := by core033_kernel_decide
theorem stats4532 : actualRows4532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4532=6276 := by core033_kernel_decide
theorem rows4533 : actualRows4533=WordField.canonicalRows actualModulus 4533 (.band 4530 4532) := by core033_kernel_decide
theorem stats4533 : actualRows4533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4533=5124 := by core033_kernel_decide
theorem rows4534 : actualRows4534=WordField.canonicalRows actualModulus 4534 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4534 : actualRows4534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4534=2892 := by core033_kernel_decide
theorem rows4535 : actualRows4535=WordField.canonicalRows actualModulus 4535 (.bxor 0 4534) := by core033_kernel_decide
theorem stats4535 : actualRows4535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4535=7428 := by core033_kernel_decide
theorem rows4536 : actualRows4536=WordField.canonicalRows actualModulus 4536 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4536 : actualRows4536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4536=2820 := by core033_kernel_decide
theorem rows4537 : actualRows4537=WordField.canonicalRows actualModulus 4537 (.bnot 4536) := by core033_kernel_decide
theorem stats4537 : actualRows4537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4537=6276 := by core033_kernel_decide
theorem rows4538 : actualRows4538=WordField.canonicalRows actualModulus 4538 (.bxor 4535 4537) := by core033_kernel_decide
theorem stats4538 : actualRows4538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4538=7428 := by core033_kernel_decide
theorem rows4539 : actualRows4539=WordField.canonicalRows actualModulus 4539 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4539 : actualRows4539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4539=2892 := by core033_kernel_decide
theorem rows4540 : actualRows4540=WordField.canonicalRows actualModulus 4540 (.bxor 0 4539) := by core033_kernel_decide
theorem stats4540 : actualRows4540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4540=7428 := by core033_kernel_decide
theorem rows4541 : actualRows4541=WordField.canonicalRows actualModulus 4541 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4541 : actualRows4541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4541=2820 := by core033_kernel_decide
theorem rows4542 : actualRows4542=WordField.canonicalRows actualModulus 4542 (.bnot 4541) := by core033_kernel_decide
theorem stats4542 : actualRows4542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4542=6276 := by core033_kernel_decide
theorem rows4543 : actualRows4543=WordField.canonicalRows actualModulus 4543 (.badd 4540 4542) := by core033_kernel_decide
theorem stats4543 : actualRows4543.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4543=5388 := by core033_kernel_decide
theorem rows4544 : actualRows4544=WordField.canonicalRows actualModulus 4544 (.bnot 4543) := by core033_kernel_decide
theorem stats4544 : actualRows4544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4544=6276 := by core033_kernel_decide
theorem rows4545 : actualRows4545=WordField.canonicalRows actualModulus 4545 (.band 4538 4544) := by core033_kernel_decide
theorem stats4545 : actualRows4545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4545=5124 := by core033_kernel_decide
theorem rows4546 : actualRows4546=WordField.canonicalRows actualModulus 4546 (.bxor 4533 4545) := by core033_kernel_decide
theorem stats4546 : actualRows4546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4546=7428 := by core033_kernel_decide
theorem rows4547 : actualRows4547=WordField.canonicalRows actualModulus 4547 (.shr 4546 31) := by core033_kernel_decide
theorem stats4547 : actualRows4547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4547=2892 := by core033_kernel_decide
theorem rows4548 : actualRows4548=WordField.canonicalRows actualModulus 4548 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4548 : actualRows4548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4548=2892 := by core033_kernel_decide
theorem rows4549 : actualRows4549=WordField.canonicalRows actualModulus 4549 (.bxor 4547 4548) := by core033_kernel_decide
theorem stats4549 : actualRows4549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4549=7428 := by core033_kernel_decide
theorem rows4550 : actualRows4550=WordField.canonicalRows actualModulus 4550 (.bnot 4549) := by core033_kernel_decide
theorem stats4550 : actualRows4550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4550=6276 := by core033_kernel_decide
theorem rows4551 : actualRows4551=WordField.canonicalRows actualModulus 4551 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4551 : actualRows4551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4551=2892 := by core033_kernel_decide
theorem rows4552 : actualRows4552=WordField.canonicalRows actualModulus 4552 (.badd 4550 4551) := by core033_kernel_decide
theorem stats4552 : actualRows4552.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4552=5388 := by core033_kernel_decide
theorem rows4553 : actualRows4553=WordField.canonicalRows actualModulus 4553 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4553 : actualRows4553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4553=2820 := by core033_kernel_decide
theorem rows4554 : actualRows4554=WordField.canonicalRows actualModulus 4554 (.band 4552 4553) := by core033_kernel_decide
theorem stats4554 : actualRows4554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4554=5124 := by core033_kernel_decide
theorem rows4555 : actualRows4555=WordField.canonicalRows actualModulus 4555 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4555 : actualRows4555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4555=2892 := by core033_kernel_decide
theorem rows4556 : actualRows4556=WordField.canonicalRows actualModulus 4556 (.bxor 0 4555) := by core033_kernel_decide
theorem stats4556 : actualRows4556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4556=7428 := by core033_kernel_decide
theorem rows4557 : actualRows4557=WordField.canonicalRows actualModulus 4557 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4557 : actualRows4557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4557=2820 := by core033_kernel_decide
theorem rows4558 : actualRows4558=WordField.canonicalRows actualModulus 4558 (.bnot 4557) := by core033_kernel_decide
theorem stats4558 : actualRows4558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4558=6276 := by core033_kernel_decide
theorem rows4559 : actualRows4559=WordField.canonicalRows actualModulus 4559 (.band 4556 4558) := by core033_kernel_decide
theorem stats4559 : actualRows4559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4559=5124 := by core033_kernel_decide
theorem rows4560 : actualRows4560=WordField.canonicalRows actualModulus 4560 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4560 : actualRows4560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4560=2892 := by core033_kernel_decide
theorem rows4561 : actualRows4561=WordField.canonicalRows actualModulus 4561 (.bxor 0 4560) := by core033_kernel_decide
theorem stats4561 : actualRows4561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4561=7428 := by core033_kernel_decide
theorem rows4562 : actualRows4562=WordField.canonicalRows actualModulus 4562 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4562 : actualRows4562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4562=2820 := by core033_kernel_decide
theorem rows4563 : actualRows4563=WordField.canonicalRows actualModulus 4563 (.bnot 4562) := by core033_kernel_decide
theorem stats4563 : actualRows4563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4563=6276 := by core033_kernel_decide
theorem rows4564 : actualRows4564=WordField.canonicalRows actualModulus 4564 (.bxor 4561 4563) := by core033_kernel_decide
theorem stats4564 : actualRows4564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4564=7428 := by core033_kernel_decide
theorem rows4565 : actualRows4565=WordField.canonicalRows actualModulus 4565 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4565 : actualRows4565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4565=2892 := by core033_kernel_decide
theorem rows4566 : actualRows4566=WordField.canonicalRows actualModulus 4566 (.bxor 0 4565) := by core033_kernel_decide
theorem stats4566 : actualRows4566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4566=7428 := by core033_kernel_decide
theorem rows4567 : actualRows4567=WordField.canonicalRows actualModulus 4567 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4567 : actualRows4567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4567=2820 := by core033_kernel_decide
theorem rows4568 : actualRows4568=WordField.canonicalRows actualModulus 4568 (.bnot 4567) := by core033_kernel_decide
theorem stats4568 : actualRows4568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4568=6276 := by core033_kernel_decide
theorem rows4569 : actualRows4569=WordField.canonicalRows actualModulus 4569 (.badd 4566 4568) := by core033_kernel_decide
theorem stats4569 : actualRows4569.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4569=5388 := by core033_kernel_decide
theorem rows4570 : actualRows4570=WordField.canonicalRows actualModulus 4570 (.bnot 4569) := by core033_kernel_decide
theorem stats4570 : actualRows4570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4570=6276 := by core033_kernel_decide
theorem rows4571 : actualRows4571=WordField.canonicalRows actualModulus 4571 (.band 4564 4570) := by core033_kernel_decide
theorem stats4571 : actualRows4571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4571=5124 := by core033_kernel_decide
theorem rows4572 : actualRows4572=WordField.canonicalRows actualModulus 4572 (.bxor 4559 4571) := by core033_kernel_decide
theorem stats4572 : actualRows4572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4572=7428 := by core033_kernel_decide
theorem rows4573 : actualRows4573=WordField.canonicalRows actualModulus 4573 (.shr 4572 31) := by core033_kernel_decide
theorem stats4573 : actualRows4573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4573=2892 := by core033_kernel_decide
theorem rows4574 : actualRows4574=WordField.canonicalRows actualModulus 4574 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4574 : actualRows4574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4574=2892 := by core033_kernel_decide
theorem rows4575 : actualRows4575=WordField.canonicalRows actualModulus 4575 (.bxor 4573 4574) := by core033_kernel_decide
theorem stats4575 : actualRows4575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4575=7428 := by core033_kernel_decide
theorem rows4576 : actualRows4576=WordField.canonicalRows actualModulus 4576 (.bnot 4575) := by core033_kernel_decide
theorem stats4576 : actualRows4576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4576=6276 := by core033_kernel_decide
theorem rows4577 : actualRows4577=WordField.canonicalRows actualModulus 4577 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4577 : actualRows4577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4577=2892 := by core033_kernel_decide
theorem rows4578 : actualRows4578=WordField.canonicalRows actualModulus 4578 (.badd 4576 4577) := by core033_kernel_decide
theorem stats4578 : actualRows4578.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4578=5388 := by core033_kernel_decide
theorem rows4579 : actualRows4579=WordField.canonicalRows actualModulus 4579 (.bnot 4578) := by core033_kernel_decide
theorem stats4579 : actualRows4579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4579=6276 := by core033_kernel_decide
theorem rows4580 : actualRows4580=WordField.canonicalRows actualModulus 4580 (.band 4579 941) := by core033_kernel_decide
theorem stats4580 : actualRows4580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4580=5124 := by core033_kernel_decide
theorem rows4581 : actualRows4581=WordField.canonicalRows actualModulus 4581 (.bxor 4554 4580) := by core033_kernel_decide
theorem stats4581 : actualRows4581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4581=7428 := by core033_kernel_decide
theorem rows4582 : actualRows4582=WordField.canonicalRows actualModulus 4582 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4582 : actualRows4582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4582=2892 := by core033_kernel_decide
theorem rows4583 : actualRows4583=WordField.canonicalRows actualModulus 4583 (.bxor 0 4582) := by core033_kernel_decide
theorem stats4583 : actualRows4583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4583=7428 := by core033_kernel_decide
theorem rows4584 : actualRows4584=WordField.canonicalRows actualModulus 4584 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4584 : actualRows4584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4584=2820 := by core033_kernel_decide
theorem rows4585 : actualRows4585=WordField.canonicalRows actualModulus 4585 (.bnot 4584) := by core033_kernel_decide
theorem stats4585 : actualRows4585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4585=6276 := by core033_kernel_decide
theorem rows4586 : actualRows4586=WordField.canonicalRows actualModulus 4586 (.band 4583 4585) := by core033_kernel_decide
theorem stats4586 : actualRows4586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4586=5124 := by core033_kernel_decide
def partRows70 : List R1CS.Row := actualRows4523++actualRows4524++actualRows4525++actualRows4526++actualRows4527++actualRows4528++actualRows4529++actualRows4530++actualRows4531++actualRows4532++actualRows4533++actualRows4534++actualRows4535++actualRows4536++actualRows4537++actualRows4538++actualRows4539++actualRows4540++actualRows4541++actualRows4542++actualRows4543++actualRows4544++actualRows4545++actualRows4546++actualRows4547++actualRows4548++actualRows4549++actualRows4550++actualRows4551++actualRows4552++actualRows4553++actualRows4554++actualRows4555++actualRows4556++actualRows4557++actualRows4558++actualRows4559++actualRows4560++actualRows4561++actualRows4562++actualRows4563++actualRows4564++actualRows4565++actualRows4566++actualRows4567++actualRows4568++actualRows4569++actualRows4570++actualRows4571++actualRows4572++actualRows4573++actualRows4574++actualRows4575++actualRows4576++actualRows4577++actualRows4578++actualRows4579++actualRows4580++actualRows4581++actualRows4582++actualRows4583++actualRows4584++actualRows4585++actualRows4586
def partOps70 : List WordIR.Op := [.bnot 4522,.literal (BitVec.ofNat 32 1),.badd 4523 4524,.bnot 4525,.band 4526 938,.bxor 4501 4527,.literal (BitVec.ofNat 32 2),.bxor 0 4529,.literal (BitVec.ofNat 32 0),.bnot 4531,.band 4530 4532,.literal (BitVec.ofNat 32 2),.bxor 0 4534,.literal (BitVec.ofNat 32 0),.bnot 4536,.bxor 4535 4537,.literal (BitVec.ofNat 32 2),.bxor 0 4539,.literal (BitVec.ofNat 32 0),.bnot 4541,.badd 4540 4542,.bnot 4543,.band 4538 4544,.bxor 4533 4545,.shr 4546 31,.literal (BitVec.ofNat 32 1),.bxor 4547 4548,.bnot 4549,.literal (BitVec.ofNat 32 1),.badd 4550 4551,.literal (BitVec.ofNat 32 0),.band 4552 4553,.literal (BitVec.ofNat 32 2),.bxor 0 4555,.literal (BitVec.ofNat 32 0),.bnot 4557,.band 4556 4558,.literal (BitVec.ofNat 32 2),.bxor 0 4560,.literal (BitVec.ofNat 32 0),.bnot 4562,.bxor 4561 4563,.literal (BitVec.ofNat 32 2),.bxor 0 4565,.literal (BitVec.ofNat 32 0),.bnot 4567,.badd 4566 4568,.bnot 4569,.band 4564 4570,.bxor 4559 4571,.shr 4572 31,.literal (BitVec.ofNat 32 1),.bxor 4573 4574,.bnot 4575,.literal (BitVec.ofNat 32 1),.badd 4576 4577,.bnot 4578,.band 4579 941,.bxor 4554 4580,.literal (BitVec.ofNat 32 2),.bxor 0 4582,.literal (BitVec.ofNat 32 0),.bnot 4584,.band 4583 4585]
theorem partExact70 : partRows70=WordField.rows actualModulus 4523 partOps70 := by
  simp only [partRows70,partOps70,WordField.rows,rows4523,rows4524,rows4525,rows4526,rows4527,rows4528,rows4529,rows4530,rows4531,rows4532,rows4533,rows4534,rows4535,rows4536,rows4537,rows4538,rows4539,rows4540,rows4541,rows4542,rows4543,rows4544,rows4545,rows4546,rows4547,rows4548,rows4549,rows4550,rows4551,rows4552,rows4553,rows4554,rows4555,rows4556,rows4557,rows4558,rows4559,rows4560,rows4561,rows4562,rows4563,rows4564,rows4565,rows4566,rows4567,rows4568,rows4569,rows4570,rows4571,rows4572,rows4573,rows4574,rows4575,rows4576,rows4577,rows4578,rows4579,rows4580,rows4581,rows4582,rows4583,rows4584,rows4585,rows4586,List.append_assoc,List.append_nil]
theorem partLength70 : partOps70.length=64 := by decide
theorem partStats70 : partRows70.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows70=330264 := by
  simp only [partRows70,List.length_append,MatrixRowBlocks.rows_weight_append,stats4523.1,stats4523.2,stats4524.1,stats4524.2,stats4525.1,stats4525.2,stats4526.1,stats4526.2,stats4527.1,stats4527.2,stats4528.1,stats4528.2,stats4529.1,stats4529.2,stats4530.1,stats4530.2,stats4531.1,stats4531.2,stats4532.1,stats4532.2,stats4533.1,stats4533.2,stats4534.1,stats4534.2,stats4535.1,stats4535.2,stats4536.1,stats4536.2,stats4537.1,stats4537.2,stats4538.1,stats4538.2,stats4539.1,stats4539.2,stats4540.1,stats4540.2,stats4541.1,stats4541.2,stats4542.1,stats4542.2,stats4543.1,stats4543.2,stats4544.1,stats4544.2,stats4545.1,stats4545.2,stats4546.1,stats4546.2,stats4547.1,stats4547.2,stats4548.1,stats4548.2,stats4549.1,stats4549.2,stats4550.1,stats4550.2,stats4551.1,stats4551.2,stats4552.1,stats4552.2,stats4553.1,stats4553.2,stats4554.1,stats4554.2,stats4555.1,stats4555.2,stats4556.1,stats4556.2,stats4557.1,stats4557.2,stats4558.1,stats4558.2,stats4559.1,stats4559.2,stats4560.1,stats4560.2,stats4561.1,stats4561.2,stats4562.1,stats4562.2,stats4563.1,stats4563.2,stats4564.1,stats4564.2,stats4565.1,stats4565.2,stats4566.1,stats4566.2,stats4567.1,stats4567.2,stats4568.1,stats4568.2,stats4569.1,stats4569.2,stats4570.1,stats4570.2,stats4571.1,stats4571.2,stats4572.1,stats4572.2,stats4573.1,stats4573.2,stats4574.1,stats4574.2,stats4575.1,stats4575.2,stats4576.1,stats4576.2,stats4577.1,stats4577.2,stats4578.1,stats4578.2,stats4579.1,stats4579.2,stats4580.1,stats4580.2,stats4581.1,stats4581.2,stats4582.1,stats4582.2,stats4583.1,stats4583.2,stats4584.1,stats4584.2,stats4585.1,stats4585.2,stats4586.1,stats4586.2]
  decide
end FrameHashControllerCheckedRows
