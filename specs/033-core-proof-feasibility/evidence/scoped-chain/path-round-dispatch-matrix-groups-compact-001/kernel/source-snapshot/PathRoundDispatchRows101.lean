import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData101
import PathRoundDispatchInstructionMatrixData102
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6507 : actualRows6507=WordField.canonicalRows actualModulus 6507 (.bnot 6506) := by core033_kernel_decide
theorem stats6507 : actualRows6507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6507=6276 := by core033_kernel_decide
theorem rows6508 : actualRows6508=WordField.canonicalRows actualModulus 6508 (.badd 6505 6507) := by core033_kernel_decide
theorem stats6508 : actualRows6508.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6508=5388 := by core033_kernel_decide
theorem rows6509 : actualRows6509=WordField.canonicalRows actualModulus 6509 (.bnot 6508) := by core033_kernel_decide
theorem stats6509 : actualRows6509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6509=6276 := by core033_kernel_decide
theorem rows6510 : actualRows6510=WordField.canonicalRows actualModulus 6510 (.band 6504 6509) := by core033_kernel_decide
theorem stats6510 : actualRows6510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6510=5124 := by core033_kernel_decide
theorem rows6511 : actualRows6511=WordField.canonicalRows actualModulus 6511 (.bxor 6500 6510) := by core033_kernel_decide
theorem stats6511 : actualRows6511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6511=7428 := by core033_kernel_decide
theorem rows6512 : actualRows6512=WordField.canonicalRows actualModulus 6512 (.shr 6511 31) := by core033_kernel_decide
theorem stats6512 : actualRows6512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6512=2892 := by core033_kernel_decide
theorem rows6513 : actualRows6513=WordField.canonicalRows actualModulus 6513 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6513 : actualRows6513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6513=2892 := by core033_kernel_decide
theorem rows6514 : actualRows6514=WordField.canonicalRows actualModulus 6514 (.bxor 6512 6513) := by core033_kernel_decide
theorem stats6514 : actualRows6514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6514=7428 := by core033_kernel_decide
theorem rows6515 : actualRows6515=WordField.canonicalRows actualModulus 6515 (.shr 4523 8) := by core033_kernel_decide
theorem stats6515 : actualRows6515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6515=4548 := by core033_kernel_decide
theorem rows6516 : actualRows6516=WordField.canonicalRows actualModulus 6516 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6516 : actualRows6516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6516=2820 := by core033_kernel_decide
theorem rows6517 : actualRows6517=WordField.canonicalRows actualModulus 6517 (.bnot 6516) := by core033_kernel_decide
theorem stats6517 : actualRows6517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6517=6276 := by core033_kernel_decide
theorem rows6518 : actualRows6518=WordField.canonicalRows actualModulus 6518 (.band 6515 6517) := by core033_kernel_decide
theorem stats6518 : actualRows6518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6518=5124 := by core033_kernel_decide
theorem rows6519 : actualRows6519=WordField.canonicalRows actualModulus 6519 (.shr 4523 8) := by core033_kernel_decide
theorem stats6519 : actualRows6519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6519=4548 := by core033_kernel_decide
theorem rows6520 : actualRows6520=WordField.canonicalRows actualModulus 6520 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6520 : actualRows6520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6520=2820 := by core033_kernel_decide
theorem rows6521 : actualRows6521=WordField.canonicalRows actualModulus 6521 (.bnot 6520) := by core033_kernel_decide
theorem stats6521 : actualRows6521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6521=6276 := by core033_kernel_decide
theorem rows6522 : actualRows6522=WordField.canonicalRows actualModulus 6522 (.bxor 6519 6521) := by core033_kernel_decide
theorem stats6522 : actualRows6522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6522=7428 := by core033_kernel_decide
theorem rows6523 : actualRows6523=WordField.canonicalRows actualModulus 6523 (.shr 4523 8) := by core033_kernel_decide
theorem stats6523 : actualRows6523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6523=4548 := by core033_kernel_decide
theorem rows6524 : actualRows6524=WordField.canonicalRows actualModulus 6524 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6524 : actualRows6524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6524=2820 := by core033_kernel_decide
theorem rows6525 : actualRows6525=WordField.canonicalRows actualModulus 6525 (.bnot 6524) := by core033_kernel_decide
theorem stats6525 : actualRows6525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6525=6276 := by core033_kernel_decide
theorem rows6526 : actualRows6526=WordField.canonicalRows actualModulus 6526 (.badd 6523 6525) := by core033_kernel_decide
theorem stats6526 : actualRows6526.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6526=5388 := by core033_kernel_decide
theorem rows6527 : actualRows6527=WordField.canonicalRows actualModulus 6527 (.bnot 6526) := by core033_kernel_decide
theorem stats6527 : actualRows6527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6527=6276 := by core033_kernel_decide
theorem rows6528 : actualRows6528=WordField.canonicalRows actualModulus 6528 (.band 6522 6527) := by core033_kernel_decide
theorem stats6528 : actualRows6528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6528=5124 := by core033_kernel_decide
theorem rows6529 : actualRows6529=WordField.canonicalRows actualModulus 6529 (.bxor 6518 6528) := by core033_kernel_decide
theorem stats6529 : actualRows6529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6529=7428 := by core033_kernel_decide
theorem rows6530 : actualRows6530=WordField.canonicalRows actualModulus 6530 (.shr 6529 31) := by core033_kernel_decide
theorem stats6530 : actualRows6530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6530=2892 := by core033_kernel_decide
theorem rows6531 : actualRows6531=WordField.canonicalRows actualModulus 6531 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6531 : actualRows6531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6531=2892 := by core033_kernel_decide
theorem rows6532 : actualRows6532=WordField.canonicalRows actualModulus 6532 (.bxor 6530 6531) := by core033_kernel_decide
theorem stats6532 : actualRows6532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6532=7428 := by core033_kernel_decide
theorem rows6533 : actualRows6533=WordField.canonicalRows actualModulus 6533 (.shr 4575 8) := by core033_kernel_decide
theorem stats6533 : actualRows6533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6533=4548 := by core033_kernel_decide
theorem rows6534 : actualRows6534=WordField.canonicalRows actualModulus 6534 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6534 : actualRows6534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6534=2820 := by core033_kernel_decide
theorem rows6535 : actualRows6535=WordField.canonicalRows actualModulus 6535 (.bnot 6534) := by core033_kernel_decide
theorem stats6535 : actualRows6535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6535=6276 := by core033_kernel_decide
theorem rows6536 : actualRows6536=WordField.canonicalRows actualModulus 6536 (.band 6533 6535) := by core033_kernel_decide
theorem stats6536 : actualRows6536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6536=5124 := by core033_kernel_decide
theorem rows6537 : actualRows6537=WordField.canonicalRows actualModulus 6537 (.shr 4575 8) := by core033_kernel_decide
theorem stats6537 : actualRows6537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6537=4548 := by core033_kernel_decide
theorem rows6538 : actualRows6538=WordField.canonicalRows actualModulus 6538 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6538 : actualRows6538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6538=2820 := by core033_kernel_decide
theorem rows6539 : actualRows6539=WordField.canonicalRows actualModulus 6539 (.bnot 6538) := by core033_kernel_decide
theorem stats6539 : actualRows6539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6539=6276 := by core033_kernel_decide
theorem rows6540 : actualRows6540=WordField.canonicalRows actualModulus 6540 (.bxor 6537 6539) := by core033_kernel_decide
theorem stats6540 : actualRows6540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6540=7428 := by core033_kernel_decide
theorem rows6541 : actualRows6541=WordField.canonicalRows actualModulus 6541 (.shr 4575 8) := by core033_kernel_decide
theorem stats6541 : actualRows6541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6541=4548 := by core033_kernel_decide
theorem rows6542 : actualRows6542=WordField.canonicalRows actualModulus 6542 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6542 : actualRows6542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6542=2820 := by core033_kernel_decide
theorem rows6543 : actualRows6543=WordField.canonicalRows actualModulus 6543 (.bnot 6542) := by core033_kernel_decide
theorem stats6543 : actualRows6543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6543=6276 := by core033_kernel_decide
theorem rows6544 : actualRows6544=WordField.canonicalRows actualModulus 6544 (.badd 6541 6543) := by core033_kernel_decide
theorem stats6544 : actualRows6544.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6544=5388 := by core033_kernel_decide
theorem rows6545 : actualRows6545=WordField.canonicalRows actualModulus 6545 (.bnot 6544) := by core033_kernel_decide
theorem stats6545 : actualRows6545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6545=6276 := by core033_kernel_decide
theorem rows6546 : actualRows6546=WordField.canonicalRows actualModulus 6546 (.band 6540 6545) := by core033_kernel_decide
theorem stats6546 : actualRows6546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6546=5124 := by core033_kernel_decide
theorem rows6547 : actualRows6547=WordField.canonicalRows actualModulus 6547 (.bxor 6536 6546) := by core033_kernel_decide
theorem stats6547 : actualRows6547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6547=7428 := by core033_kernel_decide
theorem rows6548 : actualRows6548=WordField.canonicalRows actualModulus 6548 (.shr 6547 31) := by core033_kernel_decide
theorem stats6548 : actualRows6548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6548=2892 := by core033_kernel_decide
theorem rows6549 : actualRows6549=WordField.canonicalRows actualModulus 6549 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6549 : actualRows6549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6549=2892 := by core033_kernel_decide
theorem rows6550 : actualRows6550=WordField.canonicalRows actualModulus 6550 (.bxor 6548 6549) := by core033_kernel_decide
theorem stats6550 : actualRows6550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6550=7428 := by core033_kernel_decide
theorem rows6551 : actualRows6551=WordField.canonicalRows actualModulus 6551 (.shr 4627 8) := by core033_kernel_decide
theorem stats6551 : actualRows6551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6551=4548 := by core033_kernel_decide
theorem rows6552 : actualRows6552=WordField.canonicalRows actualModulus 6552 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6552 : actualRows6552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6552=2820 := by core033_kernel_decide
theorem rows6553 : actualRows6553=WordField.canonicalRows actualModulus 6553 (.bnot 6552) := by core033_kernel_decide
theorem stats6553 : actualRows6553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6553=6276 := by core033_kernel_decide
theorem rows6554 : actualRows6554=WordField.canonicalRows actualModulus 6554 (.band 6551 6553) := by core033_kernel_decide
theorem stats6554 : actualRows6554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6554=5124 := by core033_kernel_decide
theorem rows6555 : actualRows6555=WordField.canonicalRows actualModulus 6555 (.shr 4627 8) := by core033_kernel_decide
theorem stats6555 : actualRows6555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6555=4548 := by core033_kernel_decide
theorem rows6556 : actualRows6556=WordField.canonicalRows actualModulus 6556 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6556 : actualRows6556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6556=2820 := by core033_kernel_decide
theorem rows6557 : actualRows6557=WordField.canonicalRows actualModulus 6557 (.bnot 6556) := by core033_kernel_decide
theorem stats6557 : actualRows6557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6557=6276 := by core033_kernel_decide
theorem rows6558 : actualRows6558=WordField.canonicalRows actualModulus 6558 (.bxor 6555 6557) := by core033_kernel_decide
theorem stats6558 : actualRows6558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6558=7428 := by core033_kernel_decide
theorem rows6559 : actualRows6559=WordField.canonicalRows actualModulus 6559 (.shr 4627 8) := by core033_kernel_decide
theorem stats6559 : actualRows6559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6559=4548 := by core033_kernel_decide
theorem rows6560 : actualRows6560=WordField.canonicalRows actualModulus 6560 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6560 : actualRows6560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6560=2820 := by core033_kernel_decide
theorem rows6561 : actualRows6561=WordField.canonicalRows actualModulus 6561 (.bnot 6560) := by core033_kernel_decide
theorem stats6561 : actualRows6561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6561=6276 := by core033_kernel_decide
theorem rows6562 : actualRows6562=WordField.canonicalRows actualModulus 6562 (.badd 6559 6561) := by core033_kernel_decide
theorem stats6562 : actualRows6562.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6562=5388 := by core033_kernel_decide
theorem rows6563 : actualRows6563=WordField.canonicalRows actualModulus 6563 (.bnot 6562) := by core033_kernel_decide
theorem stats6563 : actualRows6563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6563=6276 := by core033_kernel_decide
theorem rows6564 : actualRows6564=WordField.canonicalRows actualModulus 6564 (.band 6558 6563) := by core033_kernel_decide
theorem stats6564 : actualRows6564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6564=5124 := by core033_kernel_decide
theorem rows6565 : actualRows6565=WordField.canonicalRows actualModulus 6565 (.bxor 6554 6564) := by core033_kernel_decide
theorem stats6565 : actualRows6565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6565=7428 := by core033_kernel_decide
theorem rows6566 : actualRows6566=WordField.canonicalRows actualModulus 6566 (.shr 6565 31) := by core033_kernel_decide
theorem stats6566 : actualRows6566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6566=2892 := by core033_kernel_decide
theorem rows6567 : actualRows6567=WordField.canonicalRows actualModulus 6567 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6567 : actualRows6567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6567=2892 := by core033_kernel_decide
theorem rows6568 : actualRows6568=WordField.canonicalRows actualModulus 6568 (.bxor 6566 6567) := by core033_kernel_decide
theorem stats6568 : actualRows6568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6568=7428 := by core033_kernel_decide
theorem rows6569 : actualRows6569=WordField.canonicalRows actualModulus 6569 (.shr 4679 8) := by core033_kernel_decide
theorem stats6569 : actualRows6569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6569=4548 := by core033_kernel_decide
theorem rows6570 : actualRows6570=WordField.canonicalRows actualModulus 6570 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6570 : actualRows6570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6570=2820 := by core033_kernel_decide
def partRows101 : List R1CS.Row := actualRows6507++actualRows6508++actualRows6509++actualRows6510++actualRows6511++actualRows6512++actualRows6513++actualRows6514++actualRows6515++actualRows6516++actualRows6517++actualRows6518++actualRows6519++actualRows6520++actualRows6521++actualRows6522++actualRows6523++actualRows6524++actualRows6525++actualRows6526++actualRows6527++actualRows6528++actualRows6529++actualRows6530++actualRows6531++actualRows6532++actualRows6533++actualRows6534++actualRows6535++actualRows6536++actualRows6537++actualRows6538++actualRows6539++actualRows6540++actualRows6541++actualRows6542++actualRows6543++actualRows6544++actualRows6545++actualRows6546++actualRows6547++actualRows6548++actualRows6549++actualRows6550++actualRows6551++actualRows6552++actualRows6553++actualRows6554++actualRows6555++actualRows6556++actualRows6557++actualRows6558++actualRows6559++actualRows6560++actualRows6561++actualRows6562++actualRows6563++actualRows6564++actualRows6565++actualRows6566++actualRows6567++actualRows6568++actualRows6569++actualRows6570
def partOps101 : List WordIR.Op := [.bnot 6506,.badd 6505 6507,.bnot 6508,.band 6504 6509,.bxor 6500 6510,.shr 6511 31,.literal (BitVec.ofNat 32 1),.bxor 6512 6513,.shr 4523 8,.literal (BitVec.ofNat 32 0),.bnot 6516,.band 6515 6517,.shr 4523 8,.literal (BitVec.ofNat 32 0),.bnot 6520,.bxor 6519 6521,.shr 4523 8,.literal (BitVec.ofNat 32 0),.bnot 6524,.badd 6523 6525,.bnot 6526,.band 6522 6527,.bxor 6518 6528,.shr 6529 31,.literal (BitVec.ofNat 32 1),.bxor 6530 6531,.shr 4575 8,.literal (BitVec.ofNat 32 0),.bnot 6534,.band 6533 6535,.shr 4575 8,.literal (BitVec.ofNat 32 0),.bnot 6538,.bxor 6537 6539,.shr 4575 8,.literal (BitVec.ofNat 32 0),.bnot 6542,.badd 6541 6543,.bnot 6544,.band 6540 6545,.bxor 6536 6546,.shr 6547 31,.literal (BitVec.ofNat 32 1),.bxor 6548 6549,.shr 4627 8,.literal (BitVec.ofNat 32 0),.bnot 6552,.band 6551 6553,.shr 4627 8,.literal (BitVec.ofNat 32 0),.bnot 6556,.bxor 6555 6557,.shr 4627 8,.literal (BitVec.ofNat 32 0),.bnot 6560,.badd 6559 6561,.bnot 6562,.band 6558 6563,.bxor 6554 6564,.shr 6565 31,.literal (BitVec.ofNat 32 1),.bxor 6566 6567,.shr 4679 8,.literal (BitVec.ofNat 32 0)]
theorem partExact101 : partRows101=WordField.rows actualModulus 6507 partOps101 := by
  simp only [partRows101,partOps101,WordField.rows,rows6507,rows6508,rows6509,rows6510,rows6511,rows6512,rows6513,rows6514,rows6515,rows6516,rows6517,rows6518,rows6519,rows6520,rows6521,rows6522,rows6523,rows6524,rows6525,rows6526,rows6527,rows6528,rows6529,rows6530,rows6531,rows6532,rows6533,rows6534,rows6535,rows6536,rows6537,rows6538,rows6539,rows6540,rows6541,rows6542,rows6543,rows6544,rows6545,rows6546,rows6547,rows6548,rows6549,rows6550,rows6551,rows6552,rows6553,rows6554,rows6555,rows6556,rows6557,rows6558,rows6559,rows6560,rows6561,rows6562,rows6563,rows6564,rows6565,rows6566,rows6567,rows6568,rows6569,rows6570,List.append_assoc,List.append_nil]
theorem partLength101 : partOps101.length=64 := by decide
theorem partStats101 : partRows101.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows101=323808 := by
  simp only [partRows101,List.length_append,MatrixRowBlocks.rows_weight_append,stats6507.1,stats6507.2,stats6508.1,stats6508.2,stats6509.1,stats6509.2,stats6510.1,stats6510.2,stats6511.1,stats6511.2,stats6512.1,stats6512.2,stats6513.1,stats6513.2,stats6514.1,stats6514.2,stats6515.1,stats6515.2,stats6516.1,stats6516.2,stats6517.1,stats6517.2,stats6518.1,stats6518.2,stats6519.1,stats6519.2,stats6520.1,stats6520.2,stats6521.1,stats6521.2,stats6522.1,stats6522.2,stats6523.1,stats6523.2,stats6524.1,stats6524.2,stats6525.1,stats6525.2,stats6526.1,stats6526.2,stats6527.1,stats6527.2,stats6528.1,stats6528.2,stats6529.1,stats6529.2,stats6530.1,stats6530.2,stats6531.1,stats6531.2,stats6532.1,stats6532.2,stats6533.1,stats6533.2,stats6534.1,stats6534.2,stats6535.1,stats6535.2,stats6536.1,stats6536.2,stats6537.1,stats6537.2,stats6538.1,stats6538.2,stats6539.1,stats6539.2,stats6540.1,stats6540.2,stats6541.1,stats6541.2,stats6542.1,stats6542.2,stats6543.1,stats6543.2,stats6544.1,stats6544.2,stats6545.1,stats6545.2,stats6546.1,stats6546.2,stats6547.1,stats6547.2,stats6548.1,stats6548.2,stats6549.1,stats6549.2,stats6550.1,stats6550.2,stats6551.1,stats6551.2,stats6552.1,stats6552.2,stats6553.1,stats6553.2,stats6554.1,stats6554.2,stats6555.1,stats6555.2,stats6556.1,stats6556.2,stats6557.1,stats6557.2,stats6558.1,stats6558.2,stats6559.1,stats6559.2,stats6560.1,stats6560.2,stats6561.1,stats6561.2,stats6562.1,stats6562.2,stats6563.1,stats6563.2,stats6564.1,stats6564.2,stats6565.1,stats6565.2,stats6566.1,stats6566.2,stats6567.1,stats6567.2,stats6568.1,stats6568.2,stats6569.1,stats6569.2,stats6570.1,stats6570.2]
  decide
end PathRoundDispatchCheckedRows
