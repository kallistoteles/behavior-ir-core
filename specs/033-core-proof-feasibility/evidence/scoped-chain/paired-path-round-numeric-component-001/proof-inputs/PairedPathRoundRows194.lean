import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData195
import PairedPathRoundInstructionMatrixData196
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12512 : actualRows12512=WordField.canonicalRows actualModulus 12512 (.band 12511 979) := by core033_kernel_decide
theorem stats12512 : actualRows12512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12512=5124 := by core033_kernel_decide
theorem rows12513 : actualRows12513=WordField.canonicalRows actualModulus 12513 (.bxor 12486 12512) := by core033_kernel_decide
theorem stats12513 : actualRows12513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12513=7428 := by core033_kernel_decide
theorem rows12514 : actualRows12514=WordField.canonicalRows actualModulus 12514 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12514 : actualRows12514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12514=2964 := by core033_kernel_decide
theorem rows12515 : actualRows12515=WordField.canonicalRows actualModulus 12515 (.bxor 442 12514) := by core033_kernel_decide
theorem stats12515 : actualRows12515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12515=7428 := by core033_kernel_decide
theorem rows12516 : actualRows12516=WordField.canonicalRows actualModulus 12516 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12516 : actualRows12516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12516=2820 := by core033_kernel_decide
theorem rows12517 : actualRows12517=WordField.canonicalRows actualModulus 12517 (.bnot 12516) := by core033_kernel_decide
theorem stats12517 : actualRows12517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12517=6276 := by core033_kernel_decide
theorem rows12518 : actualRows12518=WordField.canonicalRows actualModulus 12518 (.band 12515 12517) := by core033_kernel_decide
theorem stats12518 : actualRows12518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12518=5124 := by core033_kernel_decide
theorem rows12519 : actualRows12519=WordField.canonicalRows actualModulus 12519 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12519 : actualRows12519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12519=2964 := by core033_kernel_decide
theorem rows12520 : actualRows12520=WordField.canonicalRows actualModulus 12520 (.bxor 442 12519) := by core033_kernel_decide
theorem stats12520 : actualRows12520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12520=7428 := by core033_kernel_decide
theorem rows12521 : actualRows12521=WordField.canonicalRows actualModulus 12521 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12521 : actualRows12521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12521=2820 := by core033_kernel_decide
theorem rows12522 : actualRows12522=WordField.canonicalRows actualModulus 12522 (.bnot 12521) := by core033_kernel_decide
theorem stats12522 : actualRows12522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12522=6276 := by core033_kernel_decide
theorem rows12523 : actualRows12523=WordField.canonicalRows actualModulus 12523 (.bxor 12520 12522) := by core033_kernel_decide
theorem stats12523 : actualRows12523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12523=7428 := by core033_kernel_decide
theorem rows12524 : actualRows12524=WordField.canonicalRows actualModulus 12524 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12524 : actualRows12524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12524=2964 := by core033_kernel_decide
theorem rows12525 : actualRows12525=WordField.canonicalRows actualModulus 12525 (.bxor 442 12524) := by core033_kernel_decide
theorem stats12525 : actualRows12525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12525=7428 := by core033_kernel_decide
theorem rows12526 : actualRows12526=WordField.canonicalRows actualModulus 12526 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12526 : actualRows12526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12526=2820 := by core033_kernel_decide
theorem rows12527 : actualRows12527=WordField.canonicalRows actualModulus 12527 (.bnot 12526) := by core033_kernel_decide
theorem stats12527 : actualRows12527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12527=6276 := by core033_kernel_decide
theorem rows12528 : actualRows12528=WordField.canonicalRows actualModulus 12528 (.badd 12525 12527) := by core033_kernel_decide
theorem stats12528 : actualRows12528.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12528=5388 := by core033_kernel_decide
theorem rows12529 : actualRows12529=WordField.canonicalRows actualModulus 12529 (.bnot 12528) := by core033_kernel_decide
theorem stats12529 : actualRows12529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12529=6276 := by core033_kernel_decide
theorem rows12530 : actualRows12530=WordField.canonicalRows actualModulus 12530 (.band 12523 12529) := by core033_kernel_decide
theorem stats12530 : actualRows12530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12530=5124 := by core033_kernel_decide
theorem rows12531 : actualRows12531=WordField.canonicalRows actualModulus 12531 (.bxor 12518 12530) := by core033_kernel_decide
theorem stats12531 : actualRows12531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12531=7428 := by core033_kernel_decide
theorem rows12532 : actualRows12532=WordField.canonicalRows actualModulus 12532 (.shr 12531 31) := by core033_kernel_decide
theorem stats12532 : actualRows12532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12532=2892 := by core033_kernel_decide
theorem rows12533 : actualRows12533=WordField.canonicalRows actualModulus 12533 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12533 : actualRows12533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12533=2892 := by core033_kernel_decide
theorem rows12534 : actualRows12534=WordField.canonicalRows actualModulus 12534 (.bxor 12532 12533) := by core033_kernel_decide
theorem stats12534 : actualRows12534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12534=7428 := by core033_kernel_decide
theorem rows12535 : actualRows12535=WordField.canonicalRows actualModulus 12535 (.bnot 12534) := by core033_kernel_decide
theorem stats12535 : actualRows12535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12535=6276 := by core033_kernel_decide
theorem rows12536 : actualRows12536=WordField.canonicalRows actualModulus 12536 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12536 : actualRows12536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12536=2892 := by core033_kernel_decide
theorem rows12537 : actualRows12537=WordField.canonicalRows actualModulus 12537 (.badd 12535 12536) := by core033_kernel_decide
theorem stats12537 : actualRows12537.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12537=5388 := by core033_kernel_decide
theorem rows12538 : actualRows12538=WordField.canonicalRows actualModulus 12538 (.band 12537 10311) := by core033_kernel_decide
theorem stats12538 : actualRows12538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12538=5124 := by core033_kernel_decide
theorem rows12539 : actualRows12539=WordField.canonicalRows actualModulus 12539 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12539 : actualRows12539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12539=2964 := by core033_kernel_decide
theorem rows12540 : actualRows12540=WordField.canonicalRows actualModulus 12540 (.bxor 442 12539) := by core033_kernel_decide
theorem stats12540 : actualRows12540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12540=7428 := by core033_kernel_decide
theorem rows12541 : actualRows12541=WordField.canonicalRows actualModulus 12541 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12541 : actualRows12541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12541=2820 := by core033_kernel_decide
theorem rows12542 : actualRows12542=WordField.canonicalRows actualModulus 12542 (.bnot 12541) := by core033_kernel_decide
theorem stats12542 : actualRows12542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12542=6276 := by core033_kernel_decide
theorem rows12543 : actualRows12543=WordField.canonicalRows actualModulus 12543 (.band 12540 12542) := by core033_kernel_decide
theorem stats12543 : actualRows12543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12543=5124 := by core033_kernel_decide
theorem rows12544 : actualRows12544=WordField.canonicalRows actualModulus 12544 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12544 : actualRows12544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12544=2964 := by core033_kernel_decide
theorem rows12545 : actualRows12545=WordField.canonicalRows actualModulus 12545 (.bxor 442 12544) := by core033_kernel_decide
theorem stats12545 : actualRows12545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12545=7428 := by core033_kernel_decide
theorem rows12546 : actualRows12546=WordField.canonicalRows actualModulus 12546 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12546 : actualRows12546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12546=2820 := by core033_kernel_decide
theorem rows12547 : actualRows12547=WordField.canonicalRows actualModulus 12547 (.bnot 12546) := by core033_kernel_decide
theorem stats12547 : actualRows12547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12547=6276 := by core033_kernel_decide
theorem rows12548 : actualRows12548=WordField.canonicalRows actualModulus 12548 (.bxor 12545 12547) := by core033_kernel_decide
theorem stats12548 : actualRows12548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12548=7428 := by core033_kernel_decide
theorem rows12549 : actualRows12549=WordField.canonicalRows actualModulus 12549 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12549 : actualRows12549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12549=2964 := by core033_kernel_decide
theorem rows12550 : actualRows12550=WordField.canonicalRows actualModulus 12550 (.bxor 442 12549) := by core033_kernel_decide
theorem stats12550 : actualRows12550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12550=7428 := by core033_kernel_decide
theorem rows12551 : actualRows12551=WordField.canonicalRows actualModulus 12551 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12551 : actualRows12551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12551=2820 := by core033_kernel_decide
theorem rows12552 : actualRows12552=WordField.canonicalRows actualModulus 12552 (.bnot 12551) := by core033_kernel_decide
theorem stats12552 : actualRows12552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12552=6276 := by core033_kernel_decide
theorem rows12553 : actualRows12553=WordField.canonicalRows actualModulus 12553 (.badd 12550 12552) := by core033_kernel_decide
theorem stats12553 : actualRows12553.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12553=5388 := by core033_kernel_decide
theorem rows12554 : actualRows12554=WordField.canonicalRows actualModulus 12554 (.bnot 12553) := by core033_kernel_decide
theorem stats12554 : actualRows12554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12554=6276 := by core033_kernel_decide
theorem rows12555 : actualRows12555=WordField.canonicalRows actualModulus 12555 (.band 12548 12554) := by core033_kernel_decide
theorem stats12555 : actualRows12555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12555=5124 := by core033_kernel_decide
theorem rows12556 : actualRows12556=WordField.canonicalRows actualModulus 12556 (.bxor 12543 12555) := by core033_kernel_decide
theorem stats12556 : actualRows12556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12556=7428 := by core033_kernel_decide
theorem rows12557 : actualRows12557=WordField.canonicalRows actualModulus 12557 (.shr 12556 31) := by core033_kernel_decide
theorem stats12557 : actualRows12557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12557=2892 := by core033_kernel_decide
theorem rows12558 : actualRows12558=WordField.canonicalRows actualModulus 12558 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12558 : actualRows12558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12558=2892 := by core033_kernel_decide
theorem rows12559 : actualRows12559=WordField.canonicalRows actualModulus 12559 (.bxor 12557 12558) := by core033_kernel_decide
theorem stats12559 : actualRows12559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12559=7428 := by core033_kernel_decide
theorem rows12560 : actualRows12560=WordField.canonicalRows actualModulus 12560 (.bnot 12559) := by core033_kernel_decide
theorem stats12560 : actualRows12560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12560=6276 := by core033_kernel_decide
theorem rows12561 : actualRows12561=WordField.canonicalRows actualModulus 12561 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12561 : actualRows12561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12561=2892 := by core033_kernel_decide
theorem rows12562 : actualRows12562=WordField.canonicalRows actualModulus 12562 (.badd 12560 12561) := by core033_kernel_decide
theorem stats12562 : actualRows12562.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12562=5388 := by core033_kernel_decide
theorem rows12563 : actualRows12563=WordField.canonicalRows actualModulus 12563 (.bnot 12562) := by core033_kernel_decide
theorem stats12563 : actualRows12563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12563=6276 := by core033_kernel_decide
theorem rows12564 : actualRows12564=WordField.canonicalRows actualModulus 12564 (.band 12563 990) := by core033_kernel_decide
theorem stats12564 : actualRows12564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12564=5124 := by core033_kernel_decide
theorem rows12565 : actualRows12565=WordField.canonicalRows actualModulus 12565 (.bxor 12538 12564) := by core033_kernel_decide
theorem stats12565 : actualRows12565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12565=7428 := by core033_kernel_decide
theorem rows12566 : actualRows12566=WordField.canonicalRows actualModulus 12566 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12566 : actualRows12566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12566=2964 := by core033_kernel_decide
theorem rows12567 : actualRows12567=WordField.canonicalRows actualModulus 12567 (.bxor 442 12566) := by core033_kernel_decide
theorem stats12567 : actualRows12567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12567=7428 := by core033_kernel_decide
theorem rows12568 : actualRows12568=WordField.canonicalRows actualModulus 12568 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12568 : actualRows12568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12568=2820 := by core033_kernel_decide
theorem rows12569 : actualRows12569=WordField.canonicalRows actualModulus 12569 (.bnot 12568) := by core033_kernel_decide
theorem stats12569 : actualRows12569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12569=6276 := by core033_kernel_decide
theorem rows12570 : actualRows12570=WordField.canonicalRows actualModulus 12570 (.band 12567 12569) := by core033_kernel_decide
theorem stats12570 : actualRows12570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12570=5124 := by core033_kernel_decide
theorem rows12571 : actualRows12571=WordField.canonicalRows actualModulus 12571 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12571 : actualRows12571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12571=2964 := by core033_kernel_decide
theorem rows12572 : actualRows12572=WordField.canonicalRows actualModulus 12572 (.bxor 442 12571) := by core033_kernel_decide
theorem stats12572 : actualRows12572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12572=7428 := by core033_kernel_decide
theorem rows12573 : actualRows12573=WordField.canonicalRows actualModulus 12573 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12573 : actualRows12573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12573=2820 := by core033_kernel_decide
theorem rows12574 : actualRows12574=WordField.canonicalRows actualModulus 12574 (.bnot 12573) := by core033_kernel_decide
theorem stats12574 : actualRows12574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12574=6276 := by core033_kernel_decide
theorem rows12575 : actualRows12575=WordField.canonicalRows actualModulus 12575 (.bxor 12572 12574) := by core033_kernel_decide
theorem stats12575 : actualRows12575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12575=7428 := by core033_kernel_decide
def partRows194 : List R1CS.Row := actualRows12512++actualRows12513++actualRows12514++actualRows12515++actualRows12516++actualRows12517++actualRows12518++actualRows12519++actualRows12520++actualRows12521++actualRows12522++actualRows12523++actualRows12524++actualRows12525++actualRows12526++actualRows12527++actualRows12528++actualRows12529++actualRows12530++actualRows12531++actualRows12532++actualRows12533++actualRows12534++actualRows12535++actualRows12536++actualRows12537++actualRows12538++actualRows12539++actualRows12540++actualRows12541++actualRows12542++actualRows12543++actualRows12544++actualRows12545++actualRows12546++actualRows12547++actualRows12548++actualRows12549++actualRows12550++actualRows12551++actualRows12552++actualRows12553++actualRows12554++actualRows12555++actualRows12556++actualRows12557++actualRows12558++actualRows12559++actualRows12560++actualRows12561++actualRows12562++actualRows12563++actualRows12564++actualRows12565++actualRows12566++actualRows12567++actualRows12568++actualRows12569++actualRows12570++actualRows12571++actualRows12572++actualRows12573++actualRows12574++actualRows12575
def partOps194 : List WordIR.Op := [.band 12511 979,.bxor 12486 12512,.literal (BitVec.ofNat 32 3),.bxor 442 12514,.literal (BitVec.ofNat 32 0),.bnot 12516,.band 12515 12517,.literal (BitVec.ofNat 32 3),.bxor 442 12519,.literal (BitVec.ofNat 32 0),.bnot 12521,.bxor 12520 12522,.literal (BitVec.ofNat 32 3),.bxor 442 12524,.literal (BitVec.ofNat 32 0),.bnot 12526,.badd 12525 12527,.bnot 12528,.band 12523 12529,.bxor 12518 12530,.shr 12531 31,.literal (BitVec.ofNat 32 1),.bxor 12532 12533,.bnot 12534,.literal (BitVec.ofNat 32 1),.badd 12535 12536,.band 12537 10311,.literal (BitVec.ofNat 32 3),.bxor 442 12539,.literal (BitVec.ofNat 32 0),.bnot 12541,.band 12540 12542,.literal (BitVec.ofNat 32 3),.bxor 442 12544,.literal (BitVec.ofNat 32 0),.bnot 12546,.bxor 12545 12547,.literal (BitVec.ofNat 32 3),.bxor 442 12549,.literal (BitVec.ofNat 32 0),.bnot 12551,.badd 12550 12552,.bnot 12553,.band 12548 12554,.bxor 12543 12555,.shr 12556 31,.literal (BitVec.ofNat 32 1),.bxor 12557 12558,.bnot 12559,.literal (BitVec.ofNat 32 1),.badd 12560 12561,.bnot 12562,.band 12563 990,.bxor 12538 12564,.literal (BitVec.ofNat 32 3),.bxor 442 12566,.literal (BitVec.ofNat 32 0),.bnot 12568,.band 12567 12569,.literal (BitVec.ofNat 32 3),.bxor 442 12571,.literal (BitVec.ofNat 32 0),.bnot 12573,.bxor 12572 12574]
theorem partExact194 : partRows194=WordField.rows actualModulus 12512 partOps194 := by
  simp only [partRows194,partOps194,WordField.rows,rows12512,rows12513,rows12514,rows12515,rows12516,rows12517,rows12518,rows12519,rows12520,rows12521,rows12522,rows12523,rows12524,rows12525,rows12526,rows12527,rows12528,rows12529,rows12530,rows12531,rows12532,rows12533,rows12534,rows12535,rows12536,rows12537,rows12538,rows12539,rows12540,rows12541,rows12542,rows12543,rows12544,rows12545,rows12546,rows12547,rows12548,rows12549,rows12550,rows12551,rows12552,rows12553,rows12554,rows12555,rows12556,rows12557,rows12558,rows12559,rows12560,rows12561,rows12562,rows12563,rows12564,rows12565,rows12566,rows12567,rows12568,rows12569,rows12570,rows12571,rows12572,rows12573,rows12574,rows12575,List.append_assoc,List.append_nil]
theorem partLength194 : partOps194.length=64 := by decide
theorem partStats194 : partRows194.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows194=334032 := by
  simp only [partRows194,List.length_append,MatrixRowBlocks.rows_weight_append,stats12512.1,stats12512.2,stats12513.1,stats12513.2,stats12514.1,stats12514.2,stats12515.1,stats12515.2,stats12516.1,stats12516.2,stats12517.1,stats12517.2,stats12518.1,stats12518.2,stats12519.1,stats12519.2,stats12520.1,stats12520.2,stats12521.1,stats12521.2,stats12522.1,stats12522.2,stats12523.1,stats12523.2,stats12524.1,stats12524.2,stats12525.1,stats12525.2,stats12526.1,stats12526.2,stats12527.1,stats12527.2,stats12528.1,stats12528.2,stats12529.1,stats12529.2,stats12530.1,stats12530.2,stats12531.1,stats12531.2,stats12532.1,stats12532.2,stats12533.1,stats12533.2,stats12534.1,stats12534.2,stats12535.1,stats12535.2,stats12536.1,stats12536.2,stats12537.1,stats12537.2,stats12538.1,stats12538.2,stats12539.1,stats12539.2,stats12540.1,stats12540.2,stats12541.1,stats12541.2,stats12542.1,stats12542.2,stats12543.1,stats12543.2,stats12544.1,stats12544.2,stats12545.1,stats12545.2,stats12546.1,stats12546.2,stats12547.1,stats12547.2,stats12548.1,stats12548.2,stats12549.1,stats12549.2,stats12550.1,stats12550.2,stats12551.1,stats12551.2,stats12552.1,stats12552.2,stats12553.1,stats12553.2,stats12554.1,stats12554.2,stats12555.1,stats12555.2,stats12556.1,stats12556.2,stats12557.1,stats12557.2,stats12558.1,stats12558.2,stats12559.1,stats12559.2,stats12560.1,stats12560.2,stats12561.1,stats12561.2,stats12562.1,stats12562.2,stats12563.1,stats12563.2,stats12564.1,stats12564.2,stats12565.1,stats12565.2,stats12566.1,stats12566.2,stats12567.1,stats12567.2,stats12568.1,stats12568.2,stats12569.1,stats12569.2,stats12570.1,stats12570.2,stats12571.1,stats12571.2,stats12572.1,stats12572.2,stats12573.1,stats12573.2,stats12574.1,stats12574.2,stats12575.1,stats12575.2]
  decide
end PairedPathRoundCheckedRows
