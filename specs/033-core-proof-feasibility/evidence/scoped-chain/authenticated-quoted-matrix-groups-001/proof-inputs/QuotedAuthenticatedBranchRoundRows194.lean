import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData195
import AuthenticatedBranchRoundInstructionMatrixData196
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12534 : actualRows12534=WordField.canonicalRows actualModulus 12534 (.bnot 12533) := by core033_kernel_decide
theorem stats12534 : actualRows12534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12534=6276 := by core033_kernel_decide
theorem rows12535 : actualRows12535=WordField.canonicalRows actualModulus 12535 (.badd 12532 12534) := by core033_kernel_decide
theorem stats12535 : actualRows12535.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12535=5388 := by core033_kernel_decide
theorem rows12536 : actualRows12536=WordField.canonicalRows actualModulus 12536 (.bnot 12535) := by core033_kernel_decide
theorem stats12536 : actualRows12536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12536=6276 := by core033_kernel_decide
theorem rows12537 : actualRows12537=WordField.canonicalRows actualModulus 12537 (.band 12530 12536) := by core033_kernel_decide
theorem stats12537 : actualRows12537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12537=5124 := by core033_kernel_decide
theorem rows12538 : actualRows12538=WordField.canonicalRows actualModulus 12538 (.bxor 12525 12537) := by core033_kernel_decide
theorem stats12538 : actualRows12538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12538=7428 := by core033_kernel_decide
theorem rows12539 : actualRows12539=WordField.canonicalRows actualModulus 12539 (.shr 12538 31) := by core033_kernel_decide
theorem stats12539 : actualRows12539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12539=2892 := by core033_kernel_decide
theorem rows12540 : actualRows12540=WordField.canonicalRows actualModulus 12540 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12540 : actualRows12540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12540=2892 := by core033_kernel_decide
theorem rows12541 : actualRows12541=WordField.canonicalRows actualModulus 12541 (.bxor 12539 12540) := by core033_kernel_decide
theorem stats12541 : actualRows12541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12541=7428 := by core033_kernel_decide
theorem rows12542 : actualRows12542=WordField.canonicalRows actualModulus 12542 (.bnot 12541) := by core033_kernel_decide
theorem stats12542 : actualRows12542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12542=6276 := by core033_kernel_decide
theorem rows12543 : actualRows12543=WordField.canonicalRows actualModulus 12543 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12543 : actualRows12543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12543=2892 := by core033_kernel_decide
theorem rows12544 : actualRows12544=WordField.canonicalRows actualModulus 12544 (.badd 12542 12543) := by core033_kernel_decide
theorem stats12544 : actualRows12544.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12544=5388 := by core033_kernel_decide
theorem rows12545 : actualRows12545=WordField.canonicalRows actualModulus 12545 (.band 12544 10851) := by core033_kernel_decide
theorem stats12545 : actualRows12545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12545=5124 := by core033_kernel_decide
theorem rows12546 : actualRows12546=WordField.canonicalRows actualModulus 12546 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12546 : actualRows12546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12546=2964 := by core033_kernel_decide
theorem rows12547 : actualRows12547=WordField.canonicalRows actualModulus 12547 (.bxor 693 12546) := by core033_kernel_decide
theorem stats12547 : actualRows12547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12547=7428 := by core033_kernel_decide
theorem rows12548 : actualRows12548=WordField.canonicalRows actualModulus 12548 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12548 : actualRows12548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12548=2820 := by core033_kernel_decide
theorem rows12549 : actualRows12549=WordField.canonicalRows actualModulus 12549 (.bnot 12548) := by core033_kernel_decide
theorem stats12549 : actualRows12549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12549=6276 := by core033_kernel_decide
theorem rows12550 : actualRows12550=WordField.canonicalRows actualModulus 12550 (.band 12547 12549) := by core033_kernel_decide
theorem stats12550 : actualRows12550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12550=5124 := by core033_kernel_decide
theorem rows12551 : actualRows12551=WordField.canonicalRows actualModulus 12551 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12551 : actualRows12551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12551=2964 := by core033_kernel_decide
theorem rows12552 : actualRows12552=WordField.canonicalRows actualModulus 12552 (.bxor 693 12551) := by core033_kernel_decide
theorem stats12552 : actualRows12552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12552=7428 := by core033_kernel_decide
theorem rows12553 : actualRows12553=WordField.canonicalRows actualModulus 12553 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12553 : actualRows12553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12553=2820 := by core033_kernel_decide
theorem rows12554 : actualRows12554=WordField.canonicalRows actualModulus 12554 (.bnot 12553) := by core033_kernel_decide
theorem stats12554 : actualRows12554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12554=6276 := by core033_kernel_decide
theorem rows12555 : actualRows12555=WordField.canonicalRows actualModulus 12555 (.bxor 12552 12554) := by core033_kernel_decide
theorem stats12555 : actualRows12555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12555=7428 := by core033_kernel_decide
theorem rows12556 : actualRows12556=WordField.canonicalRows actualModulus 12556 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12556 : actualRows12556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12556=2964 := by core033_kernel_decide
theorem rows12557 : actualRows12557=WordField.canonicalRows actualModulus 12557 (.bxor 693 12556) := by core033_kernel_decide
theorem stats12557 : actualRows12557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12557=7428 := by core033_kernel_decide
theorem rows12558 : actualRows12558=WordField.canonicalRows actualModulus 12558 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12558 : actualRows12558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12558=2820 := by core033_kernel_decide
theorem rows12559 : actualRows12559=WordField.canonicalRows actualModulus 12559 (.bnot 12558) := by core033_kernel_decide
theorem stats12559 : actualRows12559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12559=6276 := by core033_kernel_decide
theorem rows12560 : actualRows12560=WordField.canonicalRows actualModulus 12560 (.badd 12557 12559) := by core033_kernel_decide
theorem stats12560 : actualRows12560.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12560=5388 := by core033_kernel_decide
theorem rows12561 : actualRows12561=WordField.canonicalRows actualModulus 12561 (.bnot 12560) := by core033_kernel_decide
theorem stats12561 : actualRows12561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12561=6276 := by core033_kernel_decide
theorem rows12562 : actualRows12562=WordField.canonicalRows actualModulus 12562 (.band 12555 12561) := by core033_kernel_decide
theorem stats12562 : actualRows12562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12562=5124 := by core033_kernel_decide
theorem rows12563 : actualRows12563=WordField.canonicalRows actualModulus 12563 (.bxor 12550 12562) := by core033_kernel_decide
theorem stats12563 : actualRows12563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12563=7428 := by core033_kernel_decide
theorem rows12564 : actualRows12564=WordField.canonicalRows actualModulus 12564 (.shr 12563 31) := by core033_kernel_decide
theorem stats12564 : actualRows12564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12564=2892 := by core033_kernel_decide
theorem rows12565 : actualRows12565=WordField.canonicalRows actualModulus 12565 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12565 : actualRows12565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12565=2892 := by core033_kernel_decide
theorem rows12566 : actualRows12566=WordField.canonicalRows actualModulus 12566 (.bxor 12564 12565) := by core033_kernel_decide
theorem stats12566 : actualRows12566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12566=7428 := by core033_kernel_decide
theorem rows12567 : actualRows12567=WordField.canonicalRows actualModulus 12567 (.bnot 12566) := by core033_kernel_decide
theorem stats12567 : actualRows12567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12567=6276 := by core033_kernel_decide
theorem rows12568 : actualRows12568=WordField.canonicalRows actualModulus 12568 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12568 : actualRows12568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12568=2892 := by core033_kernel_decide
theorem rows12569 : actualRows12569=WordField.canonicalRows actualModulus 12569 (.badd 12567 12568) := by core033_kernel_decide
theorem stats12569 : actualRows12569.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12569=5388 := by core033_kernel_decide
theorem rows12570 : actualRows12570=WordField.canonicalRows actualModulus 12570 (.bnot 12569) := by core033_kernel_decide
theorem stats12570 : actualRows12570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12570=6276 := by core033_kernel_decide
theorem rows12571 : actualRows12571=WordField.canonicalRows actualModulus 12571 (.band 12570 1530) := by core033_kernel_decide
theorem stats12571 : actualRows12571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12571=5124 := by core033_kernel_decide
theorem rows12572 : actualRows12572=WordField.canonicalRows actualModulus 12572 (.bxor 12545 12571) := by core033_kernel_decide
theorem stats12572 : actualRows12572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12572=7428 := by core033_kernel_decide
theorem rows12573 : actualRows12573=WordField.canonicalRows actualModulus 12573 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12573 : actualRows12573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12573=2964 := by core033_kernel_decide
theorem rows12574 : actualRows12574=WordField.canonicalRows actualModulus 12574 (.bxor 693 12573) := by core033_kernel_decide
theorem stats12574 : actualRows12574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12574=7428 := by core033_kernel_decide
theorem rows12575 : actualRows12575=WordField.canonicalRows actualModulus 12575 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12575 : actualRows12575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12575=2820 := by core033_kernel_decide
theorem rows12576 : actualRows12576=WordField.canonicalRows actualModulus 12576 (.bnot 12575) := by core033_kernel_decide
theorem stats12576 : actualRows12576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12576=6276 := by core033_kernel_decide
theorem rows12577 : actualRows12577=WordField.canonicalRows actualModulus 12577 (.band 12574 12576) := by core033_kernel_decide
theorem stats12577 : actualRows12577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12577=5124 := by core033_kernel_decide
theorem rows12578 : actualRows12578=WordField.canonicalRows actualModulus 12578 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12578 : actualRows12578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12578=2964 := by core033_kernel_decide
theorem rows12579 : actualRows12579=WordField.canonicalRows actualModulus 12579 (.bxor 693 12578) := by core033_kernel_decide
theorem stats12579 : actualRows12579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12579=7428 := by core033_kernel_decide
theorem rows12580 : actualRows12580=WordField.canonicalRows actualModulus 12580 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12580 : actualRows12580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12580=2820 := by core033_kernel_decide
theorem rows12581 : actualRows12581=WordField.canonicalRows actualModulus 12581 (.bnot 12580) := by core033_kernel_decide
theorem stats12581 : actualRows12581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12581=6276 := by core033_kernel_decide
theorem rows12582 : actualRows12582=WordField.canonicalRows actualModulus 12582 (.bxor 12579 12581) := by core033_kernel_decide
theorem stats12582 : actualRows12582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12582=7428 := by core033_kernel_decide
theorem rows12583 : actualRows12583=WordField.canonicalRows actualModulus 12583 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12583 : actualRows12583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12583=2964 := by core033_kernel_decide
theorem rows12584 : actualRows12584=WordField.canonicalRows actualModulus 12584 (.bxor 693 12583) := by core033_kernel_decide
theorem stats12584 : actualRows12584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12584=7428 := by core033_kernel_decide
theorem rows12585 : actualRows12585=WordField.canonicalRows actualModulus 12585 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12585 : actualRows12585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12585=2820 := by core033_kernel_decide
theorem rows12586 : actualRows12586=WordField.canonicalRows actualModulus 12586 (.bnot 12585) := by core033_kernel_decide
theorem stats12586 : actualRows12586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12586=6276 := by core033_kernel_decide
theorem rows12587 : actualRows12587=WordField.canonicalRows actualModulus 12587 (.badd 12584 12586) := by core033_kernel_decide
theorem stats12587 : actualRows12587.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12587=5388 := by core033_kernel_decide
theorem rows12588 : actualRows12588=WordField.canonicalRows actualModulus 12588 (.bnot 12587) := by core033_kernel_decide
theorem stats12588 : actualRows12588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12588=6276 := by core033_kernel_decide
theorem rows12589 : actualRows12589=WordField.canonicalRows actualModulus 12589 (.band 12582 12588) := by core033_kernel_decide
theorem stats12589 : actualRows12589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12589=5124 := by core033_kernel_decide
theorem rows12590 : actualRows12590=WordField.canonicalRows actualModulus 12590 (.bxor 12577 12589) := by core033_kernel_decide
theorem stats12590 : actualRows12590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12590=7428 := by core033_kernel_decide
theorem rows12591 : actualRows12591=WordField.canonicalRows actualModulus 12591 (.shr 12590 31) := by core033_kernel_decide
theorem stats12591 : actualRows12591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12591=2892 := by core033_kernel_decide
theorem rows12592 : actualRows12592=WordField.canonicalRows actualModulus 12592 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12592 : actualRows12592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12592=2892 := by core033_kernel_decide
theorem rows12593 : actualRows12593=WordField.canonicalRows actualModulus 12593 (.bxor 12591 12592) := by core033_kernel_decide
theorem stats12593 : actualRows12593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12593=7428 := by core033_kernel_decide
theorem rows12594 : actualRows12594=WordField.canonicalRows actualModulus 12594 (.bnot 12593) := by core033_kernel_decide
theorem stats12594 : actualRows12594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12594=6276 := by core033_kernel_decide
theorem rows12595 : actualRows12595=WordField.canonicalRows actualModulus 12595 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12595 : actualRows12595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12595=2892 := by core033_kernel_decide
theorem rows12596 : actualRows12596=WordField.canonicalRows actualModulus 12596 (.badd 12594 12595) := by core033_kernel_decide
theorem stats12596 : actualRows12596.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12596=5388 := by core033_kernel_decide
theorem rows12597 : actualRows12597=WordField.canonicalRows actualModulus 12597 (.band 12596 10862) := by core033_kernel_decide
theorem stats12597 : actualRows12597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12597=5124 := by core033_kernel_decide
def partRows194 : List R1CS.Row := actualRows12534++actualRows12535++actualRows12536++actualRows12537++actualRows12538++actualRows12539++actualRows12540++actualRows12541++actualRows12542++actualRows12543++actualRows12544++actualRows12545++actualRows12546++actualRows12547++actualRows12548++actualRows12549++actualRows12550++actualRows12551++actualRows12552++actualRows12553++actualRows12554++actualRows12555++actualRows12556++actualRows12557++actualRows12558++actualRows12559++actualRows12560++actualRows12561++actualRows12562++actualRows12563++actualRows12564++actualRows12565++actualRows12566++actualRows12567++actualRows12568++actualRows12569++actualRows12570++actualRows12571++actualRows12572++actualRows12573++actualRows12574++actualRows12575++actualRows12576++actualRows12577++actualRows12578++actualRows12579++actualRows12580++actualRows12581++actualRows12582++actualRows12583++actualRows12584++actualRows12585++actualRows12586++actualRows12587++actualRows12588++actualRows12589++actualRows12590++actualRows12591++actualRows12592++actualRows12593++actualRows12594++actualRows12595++actualRows12596++actualRows12597
def partOps194 : List WordIR.Op := [.bnot 12533,.badd 12532 12534,.bnot 12535,.band 12530 12536,.bxor 12525 12537,.shr 12538 31,.literal (BitVec.ofNat 32 1),.bxor 12539 12540,.bnot 12541,.literal (BitVec.ofNat 32 1),.badd 12542 12543,.band 12544 10851,.literal (BitVec.ofNat 32 3),.bxor 693 12546,.literal (BitVec.ofNat 32 0),.bnot 12548,.band 12547 12549,.literal (BitVec.ofNat 32 3),.bxor 693 12551,.literal (BitVec.ofNat 32 0),.bnot 12553,.bxor 12552 12554,.literal (BitVec.ofNat 32 3),.bxor 693 12556,.literal (BitVec.ofNat 32 0),.bnot 12558,.badd 12557 12559,.bnot 12560,.band 12555 12561,.bxor 12550 12562,.shr 12563 31,.literal (BitVec.ofNat 32 1),.bxor 12564 12565,.bnot 12566,.literal (BitVec.ofNat 32 1),.badd 12567 12568,.bnot 12569,.band 12570 1530,.bxor 12545 12571,.literal (BitVec.ofNat 32 3),.bxor 693 12573,.literal (BitVec.ofNat 32 0),.bnot 12575,.band 12574 12576,.literal (BitVec.ofNat 32 3),.bxor 693 12578,.literal (BitVec.ofNat 32 0),.bnot 12580,.bxor 12579 12581,.literal (BitVec.ofNat 32 3),.bxor 693 12583,.literal (BitVec.ofNat 32 0),.bnot 12585,.badd 12584 12586,.bnot 12587,.band 12582 12588,.bxor 12577 12589,.shr 12590 31,.literal (BitVec.ofNat 32 1),.bxor 12591 12592,.bnot 12593,.literal (BitVec.ofNat 32 1),.badd 12594 12595,.band 12596 10862]
theorem partExact194 : partRows194=WordField.rows actualModulus 12534 partOps194 := by
  simp only [partRows194,partOps194,WordField.rows,rows12534,rows12535,rows12536,rows12537,rows12538,rows12539,rows12540,rows12541,rows12542,rows12543,rows12544,rows12545,rows12546,rows12547,rows12548,rows12549,rows12550,rows12551,rows12552,rows12553,rows12554,rows12555,rows12556,rows12557,rows12558,rows12559,rows12560,rows12561,rows12562,rows12563,rows12564,rows12565,rows12566,rows12567,rows12568,rows12569,rows12570,rows12571,rows12572,rows12573,rows12574,rows12575,rows12576,rows12577,rows12578,rows12579,rows12580,rows12581,rows12582,rows12583,rows12584,rows12585,rows12586,rows12587,rows12588,rows12589,rows12590,rows12591,rows12592,rows12593,rows12594,rows12595,rows12596,rows12597,List.append_assoc,List.append_nil]
theorem partLength194 : partOps194.length=64 := by decide
theorem partStats194 : partRows194.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows194=333336 := by
  simp only [partRows194,List.length_append,MatrixRowBlocks.rows_weight_append,stats12534.1,stats12534.2,stats12535.1,stats12535.2,stats12536.1,stats12536.2,stats12537.1,stats12537.2,stats12538.1,stats12538.2,stats12539.1,stats12539.2,stats12540.1,stats12540.2,stats12541.1,stats12541.2,stats12542.1,stats12542.2,stats12543.1,stats12543.2,stats12544.1,stats12544.2,stats12545.1,stats12545.2,stats12546.1,stats12546.2,stats12547.1,stats12547.2,stats12548.1,stats12548.2,stats12549.1,stats12549.2,stats12550.1,stats12550.2,stats12551.1,stats12551.2,stats12552.1,stats12552.2,stats12553.1,stats12553.2,stats12554.1,stats12554.2,stats12555.1,stats12555.2,stats12556.1,stats12556.2,stats12557.1,stats12557.2,stats12558.1,stats12558.2,stats12559.1,stats12559.2,stats12560.1,stats12560.2,stats12561.1,stats12561.2,stats12562.1,stats12562.2,stats12563.1,stats12563.2,stats12564.1,stats12564.2,stats12565.1,stats12565.2,stats12566.1,stats12566.2,stats12567.1,stats12567.2,stats12568.1,stats12568.2,stats12569.1,stats12569.2,stats12570.1,stats12570.2,stats12571.1,stats12571.2,stats12572.1,stats12572.2,stats12573.1,stats12573.2,stats12574.1,stats12574.2,stats12575.1,stats12575.2,stats12576.1,stats12576.2,stats12577.1,stats12577.2,stats12578.1,stats12578.2,stats12579.1,stats12579.2,stats12580.1,stats12580.2,stats12581.1,stats12581.2,stats12582.1,stats12582.2,stats12583.1,stats12583.2,stats12584.1,stats12584.2,stats12585.1,stats12585.2,stats12586.1,stats12586.2,stats12587.1,stats12587.2,stats12588.1,stats12588.2,stats12589.1,stats12589.2,stats12590.1,stats12590.2,stats12591.1,stats12591.2,stats12592.1,stats12592.2,stats12593.1,stats12593.2,stats12594.1,stats12594.2,stats12595.1,stats12595.2,stats12596.1,stats12596.2,stats12597.1,stats12597.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
