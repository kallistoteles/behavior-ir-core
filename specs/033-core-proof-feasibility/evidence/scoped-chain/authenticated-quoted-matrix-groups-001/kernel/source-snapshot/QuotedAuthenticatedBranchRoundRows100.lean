import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData101
import AuthenticatedBranchRoundInstructionMatrixData102
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6518 : actualRows6518=WordField.canonicalRows actualModulus 6518 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6518 : actualRows6518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6518=2892 := by core033_kernel_decide
theorem rows6519 : actualRows6519=WordField.canonicalRows actualModulus 6519 (.bxor 1299 6518) := by core033_kernel_decide
theorem stats6519 : actualRows6519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6519=7428 := by core033_kernel_decide
theorem rows6520 : actualRows6520=WordField.canonicalRows actualModulus 6520 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6520 : actualRows6520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6520=2820 := by core033_kernel_decide
theorem rows6521 : actualRows6521=WordField.canonicalRows actualModulus 6521 (.bnot 6520) := by core033_kernel_decide
theorem stats6521 : actualRows6521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6521=6276 := by core033_kernel_decide
theorem rows6522 : actualRows6522=WordField.canonicalRows actualModulus 6522 (.bxor 6519 6521) := by core033_kernel_decide
theorem stats6522 : actualRows6522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6522=7428 := by core033_kernel_decide
theorem rows6523 : actualRows6523=WordField.canonicalRows actualModulus 6523 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6523 : actualRows6523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6523=2892 := by core033_kernel_decide
theorem rows6524 : actualRows6524=WordField.canonicalRows actualModulus 6524 (.bxor 1299 6523) := by core033_kernel_decide
theorem stats6524 : actualRows6524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6524=7428 := by core033_kernel_decide
theorem rows6525 : actualRows6525=WordField.canonicalRows actualModulus 6525 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6525 : actualRows6525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6525=2820 := by core033_kernel_decide
theorem rows6526 : actualRows6526=WordField.canonicalRows actualModulus 6526 (.bnot 6525) := by core033_kernel_decide
theorem stats6526 : actualRows6526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6526=6276 := by core033_kernel_decide
theorem rows6527 : actualRows6527=WordField.canonicalRows actualModulus 6527 (.badd 6524 6526) := by core033_kernel_decide
theorem stats6527 : actualRows6527.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6527=5388 := by core033_kernel_decide
theorem rows6528 : actualRows6528=WordField.canonicalRows actualModulus 6528 (.bnot 6527) := by core033_kernel_decide
theorem stats6528 : actualRows6528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6528=6276 := by core033_kernel_decide
theorem rows6529 : actualRows6529=WordField.canonicalRows actualModulus 6529 (.band 6522 6528) := by core033_kernel_decide
theorem stats6529 : actualRows6529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6529=5124 := by core033_kernel_decide
theorem rows6530 : actualRows6530=WordField.canonicalRows actualModulus 6530 (.bxor 6517 6529) := by core033_kernel_decide
theorem stats6530 : actualRows6530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6530=7428 := by core033_kernel_decide
theorem rows6531 : actualRows6531=WordField.canonicalRows actualModulus 6531 (.shr 6530 31) := by core033_kernel_decide
theorem stats6531 : actualRows6531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6531=2892 := by core033_kernel_decide
theorem rows6532 : actualRows6532=WordField.canonicalRows actualModulus 6532 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6532 : actualRows6532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6532=2892 := by core033_kernel_decide
theorem rows6533 : actualRows6533=WordField.canonicalRows actualModulus 6533 (.bxor 6531 6532) := by core033_kernel_decide
theorem stats6533 : actualRows6533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6533=7428 := by core033_kernel_decide
theorem rows6534 : actualRows6534=WordField.canonicalRows actualModulus 6534 (.bnot 6533) := by core033_kernel_decide
theorem stats6534 : actualRows6534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6534=6276 := by core033_kernel_decide
theorem rows6535 : actualRows6535=WordField.canonicalRows actualModulus 6535 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6535 : actualRows6535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6535=2892 := by core033_kernel_decide
theorem rows6536 : actualRows6536=WordField.canonicalRows actualModulus 6536 (.badd 6534 6535) := by core033_kernel_decide
theorem stats6536 : actualRows6536.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6536=5388 := by core033_kernel_decide
theorem rows6537 : actualRows6537=WordField.canonicalRows actualModulus 6537 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6537 : actualRows6537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6537=2820 := by core033_kernel_decide
theorem rows6538 : actualRows6538=WordField.canonicalRows actualModulus 6538 (.band 6536 6537) := by core033_kernel_decide
theorem stats6538 : actualRows6538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6538=5124 := by core033_kernel_decide
theorem rows6539 : actualRows6539=WordField.canonicalRows actualModulus 6539 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6539 : actualRows6539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6539=2892 := by core033_kernel_decide
theorem rows6540 : actualRows6540=WordField.canonicalRows actualModulus 6540 (.bxor 1299 6539) := by core033_kernel_decide
theorem stats6540 : actualRows6540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6540=7428 := by core033_kernel_decide
theorem rows6541 : actualRows6541=WordField.canonicalRows actualModulus 6541 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6541 : actualRows6541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6541=2820 := by core033_kernel_decide
theorem rows6542 : actualRows6542=WordField.canonicalRows actualModulus 6542 (.bnot 6541) := by core033_kernel_decide
theorem stats6542 : actualRows6542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6542=6276 := by core033_kernel_decide
theorem rows6543 : actualRows6543=WordField.canonicalRows actualModulus 6543 (.band 6540 6542) := by core033_kernel_decide
theorem stats6543 : actualRows6543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6543=5124 := by core033_kernel_decide
theorem rows6544 : actualRows6544=WordField.canonicalRows actualModulus 6544 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6544 : actualRows6544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6544=2892 := by core033_kernel_decide
theorem rows6545 : actualRows6545=WordField.canonicalRows actualModulus 6545 (.bxor 1299 6544) := by core033_kernel_decide
theorem stats6545 : actualRows6545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6545=7428 := by core033_kernel_decide
theorem rows6546 : actualRows6546=WordField.canonicalRows actualModulus 6546 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6546 : actualRows6546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6546=2820 := by core033_kernel_decide
theorem rows6547 : actualRows6547=WordField.canonicalRows actualModulus 6547 (.bnot 6546) := by core033_kernel_decide
theorem stats6547 : actualRows6547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6547=6276 := by core033_kernel_decide
theorem rows6548 : actualRows6548=WordField.canonicalRows actualModulus 6548 (.bxor 6545 6547) := by core033_kernel_decide
theorem stats6548 : actualRows6548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6548=7428 := by core033_kernel_decide
theorem rows6549 : actualRows6549=WordField.canonicalRows actualModulus 6549 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6549 : actualRows6549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6549=2892 := by core033_kernel_decide
theorem rows6550 : actualRows6550=WordField.canonicalRows actualModulus 6550 (.bxor 1299 6549) := by core033_kernel_decide
theorem stats6550 : actualRows6550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6550=7428 := by core033_kernel_decide
theorem rows6551 : actualRows6551=WordField.canonicalRows actualModulus 6551 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6551 : actualRows6551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6551=2820 := by core033_kernel_decide
theorem rows6552 : actualRows6552=WordField.canonicalRows actualModulus 6552 (.bnot 6551) := by core033_kernel_decide
theorem stats6552 : actualRows6552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6552=6276 := by core033_kernel_decide
theorem rows6553 : actualRows6553=WordField.canonicalRows actualModulus 6553 (.badd 6550 6552) := by core033_kernel_decide
theorem stats6553 : actualRows6553.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6553=5388 := by core033_kernel_decide
theorem rows6554 : actualRows6554=WordField.canonicalRows actualModulus 6554 (.bnot 6553) := by core033_kernel_decide
theorem stats6554 : actualRows6554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6554=6276 := by core033_kernel_decide
theorem rows6555 : actualRows6555=WordField.canonicalRows actualModulus 6555 (.band 6548 6554) := by core033_kernel_decide
theorem stats6555 : actualRows6555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6555=5124 := by core033_kernel_decide
theorem rows6556 : actualRows6556=WordField.canonicalRows actualModulus 6556 (.bxor 6543 6555) := by core033_kernel_decide
theorem stats6556 : actualRows6556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6556=7428 := by core033_kernel_decide
theorem rows6557 : actualRows6557=WordField.canonicalRows actualModulus 6557 (.shr 6556 31) := by core033_kernel_decide
theorem stats6557 : actualRows6557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6557=2892 := by core033_kernel_decide
theorem rows6558 : actualRows6558=WordField.canonicalRows actualModulus 6558 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6558 : actualRows6558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6558=2892 := by core033_kernel_decide
theorem rows6559 : actualRows6559=WordField.canonicalRows actualModulus 6559 (.bxor 6557 6558) := by core033_kernel_decide
theorem stats6559 : actualRows6559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6559=7428 := by core033_kernel_decide
theorem rows6560 : actualRows6560=WordField.canonicalRows actualModulus 6560 (.bnot 6559) := by core033_kernel_decide
theorem stats6560 : actualRows6560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6560=6276 := by core033_kernel_decide
theorem rows6561 : actualRows6561=WordField.canonicalRows actualModulus 6561 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6561 : actualRows6561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6561=2892 := by core033_kernel_decide
theorem rows6562 : actualRows6562=WordField.canonicalRows actualModulus 6562 (.badd 6560 6561) := by core033_kernel_decide
theorem stats6562 : actualRows6562.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6562=5388 := by core033_kernel_decide
theorem rows6563 : actualRows6563=WordField.canonicalRows actualModulus 6563 (.bnot 6562) := by core033_kernel_decide
theorem stats6563 : actualRows6563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6563=6276 := by core033_kernel_decide
theorem rows6564 : actualRows6564=WordField.canonicalRows actualModulus 6564 (.band 6563 2675) := by core033_kernel_decide
theorem stats6564 : actualRows6564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6564=5124 := by core033_kernel_decide
theorem rows6565 : actualRows6565=WordField.canonicalRows actualModulus 6565 (.bxor 6538 6564) := by core033_kernel_decide
theorem stats6565 : actualRows6565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6565=7428 := by core033_kernel_decide
theorem rows6566 : actualRows6566=WordField.canonicalRows actualModulus 6566 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6566 : actualRows6566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6566=2892 := by core033_kernel_decide
theorem rows6567 : actualRows6567=WordField.canonicalRows actualModulus 6567 (.bxor 1299 6566) := by core033_kernel_decide
theorem stats6567 : actualRows6567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6567=7428 := by core033_kernel_decide
theorem rows6568 : actualRows6568=WordField.canonicalRows actualModulus 6568 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6568 : actualRows6568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6568=2820 := by core033_kernel_decide
theorem rows6569 : actualRows6569=WordField.canonicalRows actualModulus 6569 (.bnot 6568) := by core033_kernel_decide
theorem stats6569 : actualRows6569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6569=6276 := by core033_kernel_decide
theorem rows6570 : actualRows6570=WordField.canonicalRows actualModulus 6570 (.band 6567 6569) := by core033_kernel_decide
theorem stats6570 : actualRows6570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6570=5124 := by core033_kernel_decide
theorem rows6571 : actualRows6571=WordField.canonicalRows actualModulus 6571 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6571 : actualRows6571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6571=2892 := by core033_kernel_decide
theorem rows6572 : actualRows6572=WordField.canonicalRows actualModulus 6572 (.bxor 1299 6571) := by core033_kernel_decide
theorem stats6572 : actualRows6572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6572=7428 := by core033_kernel_decide
theorem rows6573 : actualRows6573=WordField.canonicalRows actualModulus 6573 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6573 : actualRows6573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6573=2820 := by core033_kernel_decide
theorem rows6574 : actualRows6574=WordField.canonicalRows actualModulus 6574 (.bnot 6573) := by core033_kernel_decide
theorem stats6574 : actualRows6574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6574=6276 := by core033_kernel_decide
theorem rows6575 : actualRows6575=WordField.canonicalRows actualModulus 6575 (.bxor 6572 6574) := by core033_kernel_decide
theorem stats6575 : actualRows6575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6575=7428 := by core033_kernel_decide
theorem rows6576 : actualRows6576=WordField.canonicalRows actualModulus 6576 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6576 : actualRows6576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6576=2892 := by core033_kernel_decide
theorem rows6577 : actualRows6577=WordField.canonicalRows actualModulus 6577 (.bxor 1299 6576) := by core033_kernel_decide
theorem stats6577 : actualRows6577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6577=7428 := by core033_kernel_decide
theorem rows6578 : actualRows6578=WordField.canonicalRows actualModulus 6578 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6578 : actualRows6578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6578=2820 := by core033_kernel_decide
theorem rows6579 : actualRows6579=WordField.canonicalRows actualModulus 6579 (.bnot 6578) := by core033_kernel_decide
theorem stats6579 : actualRows6579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6579=6276 := by core033_kernel_decide
theorem rows6580 : actualRows6580=WordField.canonicalRows actualModulus 6580 (.badd 6577 6579) := by core033_kernel_decide
theorem stats6580 : actualRows6580.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6580=5388 := by core033_kernel_decide
theorem rows6581 : actualRows6581=WordField.canonicalRows actualModulus 6581 (.bnot 6580) := by core033_kernel_decide
theorem stats6581 : actualRows6581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6581=6276 := by core033_kernel_decide
def partRows100 : List R1CS.Row := actualRows6518++actualRows6519++actualRows6520++actualRows6521++actualRows6522++actualRows6523++actualRows6524++actualRows6525++actualRows6526++actualRows6527++actualRows6528++actualRows6529++actualRows6530++actualRows6531++actualRows6532++actualRows6533++actualRows6534++actualRows6535++actualRows6536++actualRows6537++actualRows6538++actualRows6539++actualRows6540++actualRows6541++actualRows6542++actualRows6543++actualRows6544++actualRows6545++actualRows6546++actualRows6547++actualRows6548++actualRows6549++actualRows6550++actualRows6551++actualRows6552++actualRows6553++actualRows6554++actualRows6555++actualRows6556++actualRows6557++actualRows6558++actualRows6559++actualRows6560++actualRows6561++actualRows6562++actualRows6563++actualRows6564++actualRows6565++actualRows6566++actualRows6567++actualRows6568++actualRows6569++actualRows6570++actualRows6571++actualRows6572++actualRows6573++actualRows6574++actualRows6575++actualRows6576++actualRows6577++actualRows6578++actualRows6579++actualRows6580++actualRows6581
def partOps100 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 1299 6518,.literal (BitVec.ofNat 32 0),.bnot 6520,.bxor 6519 6521,.literal (BitVec.ofNat 32 2),.bxor 1299 6523,.literal (BitVec.ofNat 32 0),.bnot 6525,.badd 6524 6526,.bnot 6527,.band 6522 6528,.bxor 6517 6529,.shr 6530 31,.literal (BitVec.ofNat 32 1),.bxor 6531 6532,.bnot 6533,.literal (BitVec.ofNat 32 1),.badd 6534 6535,.literal (BitVec.ofNat 32 0),.band 6536 6537,.literal (BitVec.ofNat 32 2),.bxor 1299 6539,.literal (BitVec.ofNat 32 0),.bnot 6541,.band 6540 6542,.literal (BitVec.ofNat 32 2),.bxor 1299 6544,.literal (BitVec.ofNat 32 0),.bnot 6546,.bxor 6545 6547,.literal (BitVec.ofNat 32 2),.bxor 1299 6549,.literal (BitVec.ofNat 32 0),.bnot 6551,.badd 6550 6552,.bnot 6553,.band 6548 6554,.bxor 6543 6555,.shr 6556 31,.literal (BitVec.ofNat 32 1),.bxor 6557 6558,.bnot 6559,.literal (BitVec.ofNat 32 1),.badd 6560 6561,.bnot 6562,.band 6563 2675,.bxor 6538 6564,.literal (BitVec.ofNat 32 2),.bxor 1299 6566,.literal (BitVec.ofNat 32 0),.bnot 6568,.band 6567 6569,.literal (BitVec.ofNat 32 2),.bxor 1299 6571,.literal (BitVec.ofNat 32 0),.bnot 6573,.bxor 6572 6574,.literal (BitVec.ofNat 32 2),.bxor 1299 6576,.literal (BitVec.ofNat 32 0),.bnot 6578,.badd 6577 6579,.bnot 6580]
theorem partExact100 : partRows100=WordField.rows actualModulus 6518 partOps100 := by
  simp only [partRows100,partOps100,WordField.rows,rows6518,rows6519,rows6520,rows6521,rows6522,rows6523,rows6524,rows6525,rows6526,rows6527,rows6528,rows6529,rows6530,rows6531,rows6532,rows6533,rows6534,rows6535,rows6536,rows6537,rows6538,rows6539,rows6540,rows6541,rows6542,rows6543,rows6544,rows6545,rows6546,rows6547,rows6548,rows6549,rows6550,rows6551,rows6552,rows6553,rows6554,rows6555,rows6556,rows6557,rows6558,rows6559,rows6560,rows6561,rows6562,rows6563,rows6564,rows6565,rows6566,rows6567,rows6568,rows6569,rows6570,rows6571,rows6572,rows6573,rows6574,rows6575,rows6576,rows6577,rows6578,rows6579,rows6580,rows6581,List.append_assoc,List.append_nil]
theorem partLength100 : partOps100.length=64 := by decide
theorem partStats100 : partRows100.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows100=330264 := by
  simp only [partRows100,List.length_append,MatrixRowBlocks.rows_weight_append,stats6518.1,stats6518.2,stats6519.1,stats6519.2,stats6520.1,stats6520.2,stats6521.1,stats6521.2,stats6522.1,stats6522.2,stats6523.1,stats6523.2,stats6524.1,stats6524.2,stats6525.1,stats6525.2,stats6526.1,stats6526.2,stats6527.1,stats6527.2,stats6528.1,stats6528.2,stats6529.1,stats6529.2,stats6530.1,stats6530.2,stats6531.1,stats6531.2,stats6532.1,stats6532.2,stats6533.1,stats6533.2,stats6534.1,stats6534.2,stats6535.1,stats6535.2,stats6536.1,stats6536.2,stats6537.1,stats6537.2,stats6538.1,stats6538.2,stats6539.1,stats6539.2,stats6540.1,stats6540.2,stats6541.1,stats6541.2,stats6542.1,stats6542.2,stats6543.1,stats6543.2,stats6544.1,stats6544.2,stats6545.1,stats6545.2,stats6546.1,stats6546.2,stats6547.1,stats6547.2,stats6548.1,stats6548.2,stats6549.1,stats6549.2,stats6550.1,stats6550.2,stats6551.1,stats6551.2,stats6552.1,stats6552.2,stats6553.1,stats6553.2,stats6554.1,stats6554.2,stats6555.1,stats6555.2,stats6556.1,stats6556.2,stats6557.1,stats6557.2,stats6558.1,stats6558.2,stats6559.1,stats6559.2,stats6560.1,stats6560.2,stats6561.1,stats6561.2,stats6562.1,stats6562.2,stats6563.1,stats6563.2,stats6564.1,stats6564.2,stats6565.1,stats6565.2,stats6566.1,stats6566.2,stats6567.1,stats6567.2,stats6568.1,stats6568.2,stats6569.1,stats6569.2,stats6570.1,stats6570.2,stats6571.1,stats6571.2,stats6572.1,stats6572.2,stats6573.1,stats6573.2,stats6574.1,stats6574.2,stats6575.1,stats6575.2,stats6576.1,stats6576.2,stats6577.1,stats6577.2,stats6578.1,stats6578.2,stats6579.1,stats6579.2,stats6580.1,stats6580.2,stats6581.1,stats6581.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
