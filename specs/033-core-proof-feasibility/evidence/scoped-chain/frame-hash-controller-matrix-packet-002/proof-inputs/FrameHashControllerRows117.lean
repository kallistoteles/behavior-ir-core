import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData117
import FrameHashControllerInstructionMatrixData118
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7531 : actualRows7531=WordField.canonicalRows actualModulus 7531 (.band 7530 7468) := by core033_kernel_decide
theorem stats7531 : actualRows7531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7531=5124 := by core033_kernel_decide
theorem rows7532 : actualRows7532=WordField.canonicalRows actualModulus 7532 (.bxor 7529 7531) := by core033_kernel_decide
theorem stats7532 : actualRows7532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7532=7428 := by core033_kernel_decide
theorem rows7533 : actualRows7533=WordField.canonicalRows actualModulus 7533 (.badd 7528 7532) := by core033_kernel_decide
theorem stats7533 : actualRows7533.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7533=5388 := by core033_kernel_decide
theorem rows7534 : actualRows7534=WordField.canonicalRows actualModulus 7534 (.literal (BitVec.ofNat 32 264347078)) := by core033_kernel_decide
theorem stats7534 : actualRows7534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7534=3972 := by core033_kernel_decide
theorem rows7535 : actualRows7535=WordField.canonicalRows actualModulus 7535 (.badd 7533 7534) := by core033_kernel_decide
theorem stats7535 : actualRows7535.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7535=5388 := by core033_kernel_decide
theorem rows7536 : actualRows7536=WordField.canonicalRows actualModulus 7536 (.badd 7535 6451) := by core033_kernel_decide
theorem stats7536 : actualRows7536.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7536=5388 := by core033_kernel_decide
theorem rows7537 : actualRows7537=WordField.canonicalRows actualModulus 7537 (.rotr 7521 2) := by core033_kernel_decide
theorem stats7537 : actualRows7537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7537=5124 := by core033_kernel_decide
theorem rows7538 : actualRows7538=WordField.canonicalRows actualModulus 7538 (.rotr 7521 13) := by core033_kernel_decide
theorem stats7538 : actualRows7538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7538=5124 := by core033_kernel_decide
theorem rows7539 : actualRows7539=WordField.canonicalRows actualModulus 7539 (.bxor 7537 7538) := by core033_kernel_decide
theorem stats7539 : actualRows7539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7539=7428 := by core033_kernel_decide
theorem rows7540 : actualRows7540=WordField.canonicalRows actualModulus 7540 (.rotr 7521 22) := by core033_kernel_decide
theorem stats7540 : actualRows7540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7540=5124 := by core033_kernel_decide
theorem rows7541 : actualRows7541=WordField.canonicalRows actualModulus 7541 (.bxor 7539 7540) := by core033_kernel_decide
theorem stats7541 : actualRows7541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7541=7428 := by core033_kernel_decide
theorem rows7542 : actualRows7542=WordField.canonicalRows actualModulus 7542 (.band 7521 7494) := by core033_kernel_decide
theorem stats7542 : actualRows7542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7542=5124 := by core033_kernel_decide
theorem rows7543 : actualRows7543=WordField.canonicalRows actualModulus 7543 (.band 7521 7467) := by core033_kernel_decide
theorem stats7543 : actualRows7543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7543=5124 := by core033_kernel_decide
theorem rows7544 : actualRows7544=WordField.canonicalRows actualModulus 7544 (.bxor 7542 7543) := by core033_kernel_decide
theorem stats7544 : actualRows7544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7544=7428 := by core033_kernel_decide
theorem rows7545 : actualRows7545=WordField.canonicalRows actualModulus 7545 (.band 7494 7467) := by core033_kernel_decide
theorem stats7545 : actualRows7545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7545=5124 := by core033_kernel_decide
theorem rows7546 : actualRows7546=WordField.canonicalRows actualModulus 7546 (.bxor 7544 7545) := by core033_kernel_decide
theorem stats7546 : actualRows7546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7546=7428 := by core033_kernel_decide
theorem rows7547 : actualRows7547=WordField.canonicalRows actualModulus 7547 (.badd 7541 7546) := by core033_kernel_decide
theorem stats7547 : actualRows7547.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7547=5388 := by core033_kernel_decide
theorem rows7548 : actualRows7548=WordField.canonicalRows actualModulus 7548 (.badd 7536 7547) := by core033_kernel_decide
theorem stats7548 : actualRows7548.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7548=5388 := by core033_kernel_decide
theorem rows7549 : actualRows7549=WordField.canonicalRows actualModulus 7549 (.badd 7440 7536) := by core033_kernel_decide
theorem stats7549 : actualRows7549.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7549=5388 := by core033_kernel_decide
theorem rows7550 : actualRows7550=WordField.canonicalRows actualModulus 7550 (.rotr 7549 6) := by core033_kernel_decide
theorem stats7550 : actualRows7550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7550=5124 := by core033_kernel_decide
theorem rows7551 : actualRows7551=WordField.canonicalRows actualModulus 7551 (.rotr 7549 11) := by core033_kernel_decide
theorem stats7551 : actualRows7551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7551=5124 := by core033_kernel_decide
theorem rows7552 : actualRows7552=WordField.canonicalRows actualModulus 7552 (.bxor 7550 7551) := by core033_kernel_decide
theorem stats7552 : actualRows7552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7552=7428 := by core033_kernel_decide
theorem rows7553 : actualRows7553=WordField.canonicalRows actualModulus 7553 (.rotr 7549 25) := by core033_kernel_decide
theorem stats7553 : actualRows7553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7553=5124 := by core033_kernel_decide
theorem rows7554 : actualRows7554=WordField.canonicalRows actualModulus 7554 (.bxor 7552 7553) := by core033_kernel_decide
theorem stats7554 : actualRows7554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7554=7428 := by core033_kernel_decide
theorem rows7555 : actualRows7555=WordField.canonicalRows actualModulus 7555 (.badd 7468 7554) := by core033_kernel_decide
theorem stats7555 : actualRows7555.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7555=5388 := by core033_kernel_decide
theorem rows7556 : actualRows7556=WordField.canonicalRows actualModulus 7556 (.band 7549 7522) := by core033_kernel_decide
theorem stats7556 : actualRows7556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7556=5124 := by core033_kernel_decide
theorem rows7557 : actualRows7557=WordField.canonicalRows actualModulus 7557 (.bnot 7549) := by core033_kernel_decide
theorem stats7557 : actualRows7557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7557=6276 := by core033_kernel_decide
theorem rows7558 : actualRows7558=WordField.canonicalRows actualModulus 7558 (.band 7557 7495) := by core033_kernel_decide
theorem stats7558 : actualRows7558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7558=5124 := by core033_kernel_decide
theorem rows7559 : actualRows7559=WordField.canonicalRows actualModulus 7559 (.bxor 7556 7558) := by core033_kernel_decide
theorem stats7559 : actualRows7559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7559=7428 := by core033_kernel_decide
theorem rows7560 : actualRows7560=WordField.canonicalRows actualModulus 7560 (.badd 7555 7559) := by core033_kernel_decide
theorem stats7560 : actualRows7560.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7560=5388 := by core033_kernel_decide
theorem rows7561 : actualRows7561=WordField.canonicalRows actualModulus 7561 (.literal (BitVec.ofNat 32 604807628)) := by core033_kernel_decide
theorem stats7561 : actualRows7561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7561=3612 := by core033_kernel_decide
theorem rows7562 : actualRows7562=WordField.canonicalRows actualModulus 7562 (.badd 7560 7561) := by core033_kernel_decide
theorem stats7562 : actualRows7562.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7562=5388 := by core033_kernel_decide
theorem rows7563 : actualRows7563=WordField.canonicalRows actualModulus 7563 (.badd 7562 6464) := by core033_kernel_decide
theorem stats7563 : actualRows7563.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7563=5388 := by core033_kernel_decide
theorem rows7564 : actualRows7564=WordField.canonicalRows actualModulus 7564 (.rotr 7548 2) := by core033_kernel_decide
theorem stats7564 : actualRows7564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7564=5124 := by core033_kernel_decide
theorem rows7565 : actualRows7565=WordField.canonicalRows actualModulus 7565 (.rotr 7548 13) := by core033_kernel_decide
theorem stats7565 : actualRows7565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7565=5124 := by core033_kernel_decide
theorem rows7566 : actualRows7566=WordField.canonicalRows actualModulus 7566 (.bxor 7564 7565) := by core033_kernel_decide
theorem stats7566 : actualRows7566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7566=7428 := by core033_kernel_decide
theorem rows7567 : actualRows7567=WordField.canonicalRows actualModulus 7567 (.rotr 7548 22) := by core033_kernel_decide
theorem stats7567 : actualRows7567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7567=5124 := by core033_kernel_decide
theorem rows7568 : actualRows7568=WordField.canonicalRows actualModulus 7568 (.bxor 7566 7567) := by core033_kernel_decide
theorem stats7568 : actualRows7568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7568=7428 := by core033_kernel_decide
theorem rows7569 : actualRows7569=WordField.canonicalRows actualModulus 7569 (.band 7548 7521) := by core033_kernel_decide
theorem stats7569 : actualRows7569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7569=5124 := by core033_kernel_decide
theorem rows7570 : actualRows7570=WordField.canonicalRows actualModulus 7570 (.band 7548 7494) := by core033_kernel_decide
theorem stats7570 : actualRows7570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7570=5124 := by core033_kernel_decide
theorem rows7571 : actualRows7571=WordField.canonicalRows actualModulus 7571 (.bxor 7569 7570) := by core033_kernel_decide
theorem stats7571 : actualRows7571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7571=7428 := by core033_kernel_decide
theorem rows7572 : actualRows7572=WordField.canonicalRows actualModulus 7572 (.band 7521 7494) := by core033_kernel_decide
theorem stats7572 : actualRows7572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7572=5124 := by core033_kernel_decide
theorem rows7573 : actualRows7573=WordField.canonicalRows actualModulus 7573 (.bxor 7571 7572) := by core033_kernel_decide
theorem stats7573 : actualRows7573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7573=7428 := by core033_kernel_decide
theorem rows7574 : actualRows7574=WordField.canonicalRows actualModulus 7574 (.badd 7568 7573) := by core033_kernel_decide
theorem stats7574 : actualRows7574.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7574=5388 := by core033_kernel_decide
theorem rows7575 : actualRows7575=WordField.canonicalRows actualModulus 7575 (.badd 7563 7574) := by core033_kernel_decide
theorem stats7575 : actualRows7575.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7575=5388 := by core033_kernel_decide
theorem rows7576 : actualRows7576=WordField.canonicalRows actualModulus 7576 (.badd 7467 7563) := by core033_kernel_decide
theorem stats7576 : actualRows7576.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7576=5388 := by core033_kernel_decide
theorem rows7577 : actualRows7577=WordField.canonicalRows actualModulus 7577 (.rotr 7576 6) := by core033_kernel_decide
theorem stats7577 : actualRows7577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7577=5124 := by core033_kernel_decide
theorem rows7578 : actualRows7578=WordField.canonicalRows actualModulus 7578 (.rotr 7576 11) := by core033_kernel_decide
theorem stats7578 : actualRows7578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7578=5124 := by core033_kernel_decide
theorem rows7579 : actualRows7579=WordField.canonicalRows actualModulus 7579 (.bxor 7577 7578) := by core033_kernel_decide
theorem stats7579 : actualRows7579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7579=7428 := by core033_kernel_decide
theorem rows7580 : actualRows7580=WordField.canonicalRows actualModulus 7580 (.rotr 7576 25) := by core033_kernel_decide
theorem stats7580 : actualRows7580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7580=5124 := by core033_kernel_decide
theorem rows7581 : actualRows7581=WordField.canonicalRows actualModulus 7581 (.bxor 7579 7580) := by core033_kernel_decide
theorem stats7581 : actualRows7581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7581=7428 := by core033_kernel_decide
theorem rows7582 : actualRows7582=WordField.canonicalRows actualModulus 7582 (.badd 7495 7581) := by core033_kernel_decide
theorem stats7582 : actualRows7582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7582=5388 := by core033_kernel_decide
theorem rows7583 : actualRows7583=WordField.canonicalRows actualModulus 7583 (.band 7576 7549) := by core033_kernel_decide
theorem stats7583 : actualRows7583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7583=5124 := by core033_kernel_decide
theorem rows7584 : actualRows7584=WordField.canonicalRows actualModulus 7584 (.bnot 7576) := by core033_kernel_decide
theorem stats7584 : actualRows7584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7584=6276 := by core033_kernel_decide
theorem rows7585 : actualRows7585=WordField.canonicalRows actualModulus 7585 (.band 7584 7522) := by core033_kernel_decide
theorem stats7585 : actualRows7585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7585=5124 := by core033_kernel_decide
theorem rows7586 : actualRows7586=WordField.canonicalRows actualModulus 7586 (.bxor 7583 7585) := by core033_kernel_decide
theorem stats7586 : actualRows7586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7586=7428 := by core033_kernel_decide
theorem rows7587 : actualRows7587=WordField.canonicalRows actualModulus 7587 (.badd 7582 7586) := by core033_kernel_decide
theorem stats7587 : actualRows7587.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7587=5388 := by core033_kernel_decide
theorem rows7588 : actualRows7588=WordField.canonicalRows actualModulus 7588 (.literal (BitVec.ofNat 32 770255983)) := by core033_kernel_decide
theorem stats7588 : actualRows7588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7588=4116 := by core033_kernel_decide
theorem rows7589 : actualRows7589=WordField.canonicalRows actualModulus 7589 (.badd 7587 7588) := by core033_kernel_decide
theorem stats7589 : actualRows7589.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7589=5388 := by core033_kernel_decide
theorem rows7590 : actualRows7590=WordField.canonicalRows actualModulus 7590 (.badd 7589 6477) := by core033_kernel_decide
theorem stats7590 : actualRows7590.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7590=5388 := by core033_kernel_decide
theorem rows7591 : actualRows7591=WordField.canonicalRows actualModulus 7591 (.rotr 7575 2) := by core033_kernel_decide
theorem stats7591 : actualRows7591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7591=5124 := by core033_kernel_decide
theorem rows7592 : actualRows7592=WordField.canonicalRows actualModulus 7592 (.rotr 7575 13) := by core033_kernel_decide
theorem stats7592 : actualRows7592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7592=5124 := by core033_kernel_decide
theorem rows7593 : actualRows7593=WordField.canonicalRows actualModulus 7593 (.bxor 7591 7592) := by core033_kernel_decide
theorem stats7593 : actualRows7593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7593=7428 := by core033_kernel_decide
theorem rows7594 : actualRows7594=WordField.canonicalRows actualModulus 7594 (.rotr 7575 22) := by core033_kernel_decide
theorem stats7594 : actualRows7594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7594=5124 := by core033_kernel_decide
def partRows117 : List R1CS.Row := actualRows7531++actualRows7532++actualRows7533++actualRows7534++actualRows7535++actualRows7536++actualRows7537++actualRows7538++actualRows7539++actualRows7540++actualRows7541++actualRows7542++actualRows7543++actualRows7544++actualRows7545++actualRows7546++actualRows7547++actualRows7548++actualRows7549++actualRows7550++actualRows7551++actualRows7552++actualRows7553++actualRows7554++actualRows7555++actualRows7556++actualRows7557++actualRows7558++actualRows7559++actualRows7560++actualRows7561++actualRows7562++actualRows7563++actualRows7564++actualRows7565++actualRows7566++actualRows7567++actualRows7568++actualRows7569++actualRows7570++actualRows7571++actualRows7572++actualRows7573++actualRows7574++actualRows7575++actualRows7576++actualRows7577++actualRows7578++actualRows7579++actualRows7580++actualRows7581++actualRows7582++actualRows7583++actualRows7584++actualRows7585++actualRows7586++actualRows7587++actualRows7588++actualRows7589++actualRows7590++actualRows7591++actualRows7592++actualRows7593++actualRows7594
def partOps117 : List WordIR.Op := [.band 7530 7468,.bxor 7529 7531,.badd 7528 7532,.literal (BitVec.ofNat 32 264347078),.badd 7533 7534,.badd 7535 6451,.rotr 7521 2,.rotr 7521 13,.bxor 7537 7538,.rotr 7521 22,.bxor 7539 7540,.band 7521 7494,.band 7521 7467,.bxor 7542 7543,.band 7494 7467,.bxor 7544 7545,.badd 7541 7546,.badd 7536 7547,.badd 7440 7536,.rotr 7549 6,.rotr 7549 11,.bxor 7550 7551,.rotr 7549 25,.bxor 7552 7553,.badd 7468 7554,.band 7549 7522,.bnot 7549,.band 7557 7495,.bxor 7556 7558,.badd 7555 7559,.literal (BitVec.ofNat 32 604807628),.badd 7560 7561,.badd 7562 6464,.rotr 7548 2,.rotr 7548 13,.bxor 7564 7565,.rotr 7548 22,.bxor 7566 7567,.band 7548 7521,.band 7548 7494,.bxor 7569 7570,.band 7521 7494,.bxor 7571 7572,.badd 7568 7573,.badd 7563 7574,.badd 7467 7563,.rotr 7576 6,.rotr 7576 11,.bxor 7577 7578,.rotr 7576 25,.bxor 7579 7580,.badd 7495 7581,.band 7576 7549,.bnot 7576,.band 7584 7522,.bxor 7583 7585,.badd 7582 7586,.literal (BitVec.ofNat 32 770255983),.badd 7587 7588,.badd 7589 6477,.rotr 7575 2,.rotr 7575 13,.bxor 7591 7592,.rotr 7575 22]
theorem partExact117 : partRows117=WordField.rows actualModulus 7531 partOps117 := by
  simp only [partRows117,partOps117,WordField.rows,rows7531,rows7532,rows7533,rows7534,rows7535,rows7536,rows7537,rows7538,rows7539,rows7540,rows7541,rows7542,rows7543,rows7544,rows7545,rows7546,rows7547,rows7548,rows7549,rows7550,rows7551,rows7552,rows7553,rows7554,rows7555,rows7556,rows7557,rows7558,rows7559,rows7560,rows7561,rows7562,rows7563,rows7564,rows7565,rows7566,rows7567,rows7568,rows7569,rows7570,rows7571,rows7572,rows7573,rows7574,rows7575,rows7576,rows7577,rows7578,rows7579,rows7580,rows7581,rows7582,rows7583,rows7584,rows7585,rows7586,rows7587,rows7588,rows7589,rows7590,rows7591,rows7592,rows7593,rows7594,List.append_assoc,List.append_nil]
theorem partLength117 : partOps117.length=64 := by decide
theorem partStats117 : partRows117.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows117=367920 := by
  simp only [partRows117,List.length_append,MatrixRowBlocks.rows_weight_append,stats7531.1,stats7531.2,stats7532.1,stats7532.2,stats7533.1,stats7533.2,stats7534.1,stats7534.2,stats7535.1,stats7535.2,stats7536.1,stats7536.2,stats7537.1,stats7537.2,stats7538.1,stats7538.2,stats7539.1,stats7539.2,stats7540.1,stats7540.2,stats7541.1,stats7541.2,stats7542.1,stats7542.2,stats7543.1,stats7543.2,stats7544.1,stats7544.2,stats7545.1,stats7545.2,stats7546.1,stats7546.2,stats7547.1,stats7547.2,stats7548.1,stats7548.2,stats7549.1,stats7549.2,stats7550.1,stats7550.2,stats7551.1,stats7551.2,stats7552.1,stats7552.2,stats7553.1,stats7553.2,stats7554.1,stats7554.2,stats7555.1,stats7555.2,stats7556.1,stats7556.2,stats7557.1,stats7557.2,stats7558.1,stats7558.2,stats7559.1,stats7559.2,stats7560.1,stats7560.2,stats7561.1,stats7561.2,stats7562.1,stats7562.2,stats7563.1,stats7563.2,stats7564.1,stats7564.2,stats7565.1,stats7565.2,stats7566.1,stats7566.2,stats7567.1,stats7567.2,stats7568.1,stats7568.2,stats7569.1,stats7569.2,stats7570.1,stats7570.2,stats7571.1,stats7571.2,stats7572.1,stats7572.2,stats7573.1,stats7573.2,stats7574.1,stats7574.2,stats7575.1,stats7575.2,stats7576.1,stats7576.2,stats7577.1,stats7577.2,stats7578.1,stats7578.2,stats7579.1,stats7579.2,stats7580.1,stats7580.2,stats7581.1,stats7581.2,stats7582.1,stats7582.2,stats7583.1,stats7583.2,stats7584.1,stats7584.2,stats7585.1,stats7585.2,stats7586.1,stats7586.2,stats7587.1,stats7587.2,stats7588.1,stats7588.2,stats7589.1,stats7589.2,stats7590.1,stats7590.2,stats7591.1,stats7591.2,stats7592.1,stats7592.2,stats7593.1,stats7593.2,stats7594.1,stats7594.2]
  decide
end FrameHashControllerCheckedRows
