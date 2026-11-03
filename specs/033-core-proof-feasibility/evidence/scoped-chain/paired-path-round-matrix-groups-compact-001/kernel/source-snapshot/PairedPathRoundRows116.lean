import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData117
import PairedPathRoundInstructionMatrixData118
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7520 : actualRows7520=WordField.canonicalRows actualModulus 7520 (.rotr 6242 7) := by core033_kernel_decide
theorem stats7520 : actualRows7520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7520=5124 := by core033_kernel_decide
theorem rows7521 : actualRows7521=WordField.canonicalRows actualModulus 7521 (.rotr 6242 18) := by core033_kernel_decide
theorem stats7521 : actualRows7521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7521=5124 := by core033_kernel_decide
theorem rows7522 : actualRows7522=WordField.canonicalRows actualModulus 7522 (.bxor 7520 7521) := by core033_kernel_decide
theorem stats7522 : actualRows7522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7522=7428 := by core033_kernel_decide
theorem rows7523 : actualRows7523=WordField.canonicalRows actualModulus 7523 (.shr 6242 3) := by core033_kernel_decide
theorem stats7523 : actualRows7523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7523=4908 := by core033_kernel_decide
theorem rows7524 : actualRows7524=WordField.canonicalRows actualModulus 7524 (.bxor 7522 7523) := by core033_kernel_decide
theorem stats7524 : actualRows7524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7524=7428 := by core033_kernel_decide
theorem rows7525 : actualRows7525=WordField.canonicalRows actualModulus 7525 (.badd 7519 7524) := by core033_kernel_decide
theorem stats7525 : actualRows7525.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7525=5388 := by core033_kernel_decide
theorem rows7526 : actualRows7526=WordField.canonicalRows actualModulus 7526 (.badd 7525 6236) := by core033_kernel_decide
theorem stats7526 : actualRows7526.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7526=5388 := by core033_kernel_decide
theorem rows7527 : actualRows7527=WordField.canonicalRows actualModulus 7527 (.rotr 7513 17) := by core033_kernel_decide
theorem stats7527 : actualRows7527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7527=5124 := by core033_kernel_decide
theorem rows7528 : actualRows7528=WordField.canonicalRows actualModulus 7528 (.rotr 7513 19) := by core033_kernel_decide
theorem stats7528 : actualRows7528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7528=5124 := by core033_kernel_decide
theorem rows7529 : actualRows7529=WordField.canonicalRows actualModulus 7529 (.bxor 7527 7528) := by core033_kernel_decide
theorem stats7529 : actualRows7529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7529=7428 := by core033_kernel_decide
theorem rows7530 : actualRows7530=WordField.canonicalRows actualModulus 7530 (.shr 7513 10) := by core033_kernel_decide
theorem stats7530 : actualRows7530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7530=4404 := by core033_kernel_decide
theorem rows7531 : actualRows7531=WordField.canonicalRows actualModulus 7531 (.bxor 7529 7530) := by core033_kernel_decide
theorem stats7531 : actualRows7531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7531=7428 := by core033_kernel_decide
theorem rows7532 : actualRows7532=WordField.canonicalRows actualModulus 7532 (.badd 7531 6296) := by core033_kernel_decide
theorem stats7532 : actualRows7532.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7532=5388 := by core033_kernel_decide
theorem rows7533 : actualRows7533=WordField.canonicalRows actualModulus 7533 (.rotr 6248 7) := by core033_kernel_decide
theorem stats7533 : actualRows7533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7533=5124 := by core033_kernel_decide
theorem rows7534 : actualRows7534=WordField.canonicalRows actualModulus 7534 (.rotr 6248 18) := by core033_kernel_decide
theorem stats7534 : actualRows7534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7534=5124 := by core033_kernel_decide
theorem rows7535 : actualRows7535=WordField.canonicalRows actualModulus 7535 (.bxor 7533 7534) := by core033_kernel_decide
theorem stats7535 : actualRows7535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7535=7428 := by core033_kernel_decide
theorem rows7536 : actualRows7536=WordField.canonicalRows actualModulus 7536 (.shr 6248 3) := by core033_kernel_decide
theorem stats7536 : actualRows7536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7536=4908 := by core033_kernel_decide
theorem rows7537 : actualRows7537=WordField.canonicalRows actualModulus 7537 (.bxor 7535 7536) := by core033_kernel_decide
theorem stats7537 : actualRows7537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7537=7428 := by core033_kernel_decide
theorem rows7538 : actualRows7538=WordField.canonicalRows actualModulus 7538 (.badd 7532 7537) := by core033_kernel_decide
theorem stats7538 : actualRows7538.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7538=5388 := by core033_kernel_decide
theorem rows7539 : actualRows7539=WordField.canonicalRows actualModulus 7539 (.badd 7538 6242) := by core033_kernel_decide
theorem stats7539 : actualRows7539.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7539=5388 := by core033_kernel_decide
theorem rows7540 : actualRows7540=WordField.canonicalRows actualModulus 7540 (.rotr 7526 17) := by core033_kernel_decide
theorem stats7540 : actualRows7540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7540=5124 := by core033_kernel_decide
theorem rows7541 : actualRows7541=WordField.canonicalRows actualModulus 7541 (.rotr 7526 19) := by core033_kernel_decide
theorem stats7541 : actualRows7541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7541=5124 := by core033_kernel_decide
theorem rows7542 : actualRows7542=WordField.canonicalRows actualModulus 7542 (.bxor 7540 7541) := by core033_kernel_decide
theorem stats7542 : actualRows7542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7542=7428 := by core033_kernel_decide
theorem rows7543 : actualRows7543=WordField.canonicalRows actualModulus 7543 (.shr 7526 10) := by core033_kernel_decide
theorem stats7543 : actualRows7543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7543=4404 := by core033_kernel_decide
theorem rows7544 : actualRows7544=WordField.canonicalRows actualModulus 7544 (.bxor 7542 7543) := by core033_kernel_decide
theorem stats7544 : actualRows7544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7544=7428 := by core033_kernel_decide
theorem rows7545 : actualRows7545=WordField.canonicalRows actualModulus 7545 (.badd 7544 7461) := by core033_kernel_decide
theorem stats7545 : actualRows7545.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7545=5388 := by core033_kernel_decide
theorem rows7546 : actualRows7546=WordField.canonicalRows actualModulus 7546 (.rotr 6254 7) := by core033_kernel_decide
theorem stats7546 : actualRows7546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7546=5124 := by core033_kernel_decide
theorem rows7547 : actualRows7547=WordField.canonicalRows actualModulus 7547 (.rotr 6254 18) := by core033_kernel_decide
theorem stats7547 : actualRows7547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7547=5124 := by core033_kernel_decide
theorem rows7548 : actualRows7548=WordField.canonicalRows actualModulus 7548 (.bxor 7546 7547) := by core033_kernel_decide
theorem stats7548 : actualRows7548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7548=7428 := by core033_kernel_decide
theorem rows7549 : actualRows7549=WordField.canonicalRows actualModulus 7549 (.shr 6254 3) := by core033_kernel_decide
theorem stats7549 : actualRows7549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7549=4908 := by core033_kernel_decide
theorem rows7550 : actualRows7550=WordField.canonicalRows actualModulus 7550 (.bxor 7548 7549) := by core033_kernel_decide
theorem stats7550 : actualRows7550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7550=7428 := by core033_kernel_decide
theorem rows7551 : actualRows7551=WordField.canonicalRows actualModulus 7551 (.badd 7545 7550) := by core033_kernel_decide
theorem stats7551 : actualRows7551.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7551=5388 := by core033_kernel_decide
theorem rows7552 : actualRows7552=WordField.canonicalRows actualModulus 7552 (.badd 7551 6248) := by core033_kernel_decide
theorem stats7552 : actualRows7552.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7552=5388 := by core033_kernel_decide
theorem rows7553 : actualRows7553=WordField.canonicalRows actualModulus 7553 (.rotr 7539 17) := by core033_kernel_decide
theorem stats7553 : actualRows7553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7553=5124 := by core033_kernel_decide
theorem rows7554 : actualRows7554=WordField.canonicalRows actualModulus 7554 (.rotr 7539 19) := by core033_kernel_decide
theorem stats7554 : actualRows7554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7554=5124 := by core033_kernel_decide
theorem rows7555 : actualRows7555=WordField.canonicalRows actualModulus 7555 (.bxor 7553 7554) := by core033_kernel_decide
theorem stats7555 : actualRows7555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7555=7428 := by core033_kernel_decide
theorem rows7556 : actualRows7556=WordField.canonicalRows actualModulus 7556 (.shr 7539 10) := by core033_kernel_decide
theorem stats7556 : actualRows7556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7556=4404 := by core033_kernel_decide
theorem rows7557 : actualRows7557=WordField.canonicalRows actualModulus 7557 (.bxor 7555 7556) := by core033_kernel_decide
theorem stats7557 : actualRows7557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7557=7428 := by core033_kernel_decide
theorem rows7558 : actualRows7558=WordField.canonicalRows actualModulus 7558 (.badd 7557 7474) := by core033_kernel_decide
theorem stats7558 : actualRows7558.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7558=5388 := by core033_kernel_decide
theorem rows7559 : actualRows7559=WordField.canonicalRows actualModulus 7559 (.rotr 6260 7) := by core033_kernel_decide
theorem stats7559 : actualRows7559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7559=5124 := by core033_kernel_decide
theorem rows7560 : actualRows7560=WordField.canonicalRows actualModulus 7560 (.rotr 6260 18) := by core033_kernel_decide
theorem stats7560 : actualRows7560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7560=5124 := by core033_kernel_decide
theorem rows7561 : actualRows7561=WordField.canonicalRows actualModulus 7561 (.bxor 7559 7560) := by core033_kernel_decide
theorem stats7561 : actualRows7561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7561=7428 := by core033_kernel_decide
theorem rows7562 : actualRows7562=WordField.canonicalRows actualModulus 7562 (.shr 6260 3) := by core033_kernel_decide
theorem stats7562 : actualRows7562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7562=4908 := by core033_kernel_decide
theorem rows7563 : actualRows7563=WordField.canonicalRows actualModulus 7563 (.bxor 7561 7562) := by core033_kernel_decide
theorem stats7563 : actualRows7563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7563=7428 := by core033_kernel_decide
theorem rows7564 : actualRows7564=WordField.canonicalRows actualModulus 7564 (.badd 7558 7563) := by core033_kernel_decide
theorem stats7564 : actualRows7564.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7564=5388 := by core033_kernel_decide
theorem rows7565 : actualRows7565=WordField.canonicalRows actualModulus 7565 (.badd 7564 6254) := by core033_kernel_decide
theorem stats7565 : actualRows7565.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7565=5388 := by core033_kernel_decide
theorem rows7566 : actualRows7566=WordField.canonicalRows actualModulus 7566 (.rotr 7552 17) := by core033_kernel_decide
theorem stats7566 : actualRows7566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7566=5124 := by core033_kernel_decide
theorem rows7567 : actualRows7567=WordField.canonicalRows actualModulus 7567 (.rotr 7552 19) := by core033_kernel_decide
theorem stats7567 : actualRows7567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7567=5124 := by core033_kernel_decide
theorem rows7568 : actualRows7568=WordField.canonicalRows actualModulus 7568 (.bxor 7566 7567) := by core033_kernel_decide
theorem stats7568 : actualRows7568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7568=7428 := by core033_kernel_decide
theorem rows7569 : actualRows7569=WordField.canonicalRows actualModulus 7569 (.shr 7552 10) := by core033_kernel_decide
theorem stats7569 : actualRows7569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7569=4404 := by core033_kernel_decide
theorem rows7570 : actualRows7570=WordField.canonicalRows actualModulus 7570 (.bxor 7568 7569) := by core033_kernel_decide
theorem stats7570 : actualRows7570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7570=7428 := by core033_kernel_decide
theorem rows7571 : actualRows7571=WordField.canonicalRows actualModulus 7571 (.badd 7570 7487) := by core033_kernel_decide
theorem stats7571 : actualRows7571.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7571=5388 := by core033_kernel_decide
theorem rows7572 : actualRows7572=WordField.canonicalRows actualModulus 7572 (.rotr 6266 7) := by core033_kernel_decide
theorem stats7572 : actualRows7572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7572=5124 := by core033_kernel_decide
theorem rows7573 : actualRows7573=WordField.canonicalRows actualModulus 7573 (.rotr 6266 18) := by core033_kernel_decide
theorem stats7573 : actualRows7573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7573=5124 := by core033_kernel_decide
theorem rows7574 : actualRows7574=WordField.canonicalRows actualModulus 7574 (.bxor 7572 7573) := by core033_kernel_decide
theorem stats7574 : actualRows7574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7574=7428 := by core033_kernel_decide
theorem rows7575 : actualRows7575=WordField.canonicalRows actualModulus 7575 (.shr 6266 3) := by core033_kernel_decide
theorem stats7575 : actualRows7575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7575=4908 := by core033_kernel_decide
theorem rows7576 : actualRows7576=WordField.canonicalRows actualModulus 7576 (.bxor 7574 7575) := by core033_kernel_decide
theorem stats7576 : actualRows7576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7576=7428 := by core033_kernel_decide
theorem rows7577 : actualRows7577=WordField.canonicalRows actualModulus 7577 (.badd 7571 7576) := by core033_kernel_decide
theorem stats7577 : actualRows7577.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7577=5388 := by core033_kernel_decide
theorem rows7578 : actualRows7578=WordField.canonicalRows actualModulus 7578 (.badd 7577 6260) := by core033_kernel_decide
theorem stats7578 : actualRows7578.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7578=5388 := by core033_kernel_decide
theorem rows7579 : actualRows7579=WordField.canonicalRows actualModulus 7579 (.rotr 7565 17) := by core033_kernel_decide
theorem stats7579 : actualRows7579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7579=5124 := by core033_kernel_decide
theorem rows7580 : actualRows7580=WordField.canonicalRows actualModulus 7580 (.rotr 7565 19) := by core033_kernel_decide
theorem stats7580 : actualRows7580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7580=5124 := by core033_kernel_decide
theorem rows7581 : actualRows7581=WordField.canonicalRows actualModulus 7581 (.bxor 7579 7580) := by core033_kernel_decide
theorem stats7581 : actualRows7581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7581=7428 := by core033_kernel_decide
theorem rows7582 : actualRows7582=WordField.canonicalRows actualModulus 7582 (.shr 7565 10) := by core033_kernel_decide
theorem stats7582 : actualRows7582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7582=4404 := by core033_kernel_decide
theorem rows7583 : actualRows7583=WordField.canonicalRows actualModulus 7583 (.bxor 7581 7582) := by core033_kernel_decide
theorem stats7583 : actualRows7583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7583=7428 := by core033_kernel_decide
def partRows116 : List R1CS.Row := actualRows7520++actualRows7521++actualRows7522++actualRows7523++actualRows7524++actualRows7525++actualRows7526++actualRows7527++actualRows7528++actualRows7529++actualRows7530++actualRows7531++actualRows7532++actualRows7533++actualRows7534++actualRows7535++actualRows7536++actualRows7537++actualRows7538++actualRows7539++actualRows7540++actualRows7541++actualRows7542++actualRows7543++actualRows7544++actualRows7545++actualRows7546++actualRows7547++actualRows7548++actualRows7549++actualRows7550++actualRows7551++actualRows7552++actualRows7553++actualRows7554++actualRows7555++actualRows7556++actualRows7557++actualRows7558++actualRows7559++actualRows7560++actualRows7561++actualRows7562++actualRows7563++actualRows7564++actualRows7565++actualRows7566++actualRows7567++actualRows7568++actualRows7569++actualRows7570++actualRows7571++actualRows7572++actualRows7573++actualRows7574++actualRows7575++actualRows7576++actualRows7577++actualRows7578++actualRows7579++actualRows7580++actualRows7581++actualRows7582++actualRows7583
def partOps116 : List WordIR.Op := [.rotr 6242 7,.rotr 6242 18,.bxor 7520 7521,.shr 6242 3,.bxor 7522 7523,.badd 7519 7524,.badd 7525 6236,.rotr 7513 17,.rotr 7513 19,.bxor 7527 7528,.shr 7513 10,.bxor 7529 7530,.badd 7531 6296,.rotr 6248 7,.rotr 6248 18,.bxor 7533 7534,.shr 6248 3,.bxor 7535 7536,.badd 7532 7537,.badd 7538 6242,.rotr 7526 17,.rotr 7526 19,.bxor 7540 7541,.shr 7526 10,.bxor 7542 7543,.badd 7544 7461,.rotr 6254 7,.rotr 6254 18,.bxor 7546 7547,.shr 6254 3,.bxor 7548 7549,.badd 7545 7550,.badd 7551 6248,.rotr 7539 17,.rotr 7539 19,.bxor 7553 7554,.shr 7539 10,.bxor 7555 7556,.badd 7557 7474,.rotr 6260 7,.rotr 6260 18,.bxor 7559 7560,.shr 6260 3,.bxor 7561 7562,.badd 7558 7563,.badd 7564 6254,.rotr 7552 17,.rotr 7552 19,.bxor 7566 7567,.shr 7552 10,.bxor 7568 7569,.badd 7570 7487,.rotr 6266 7,.rotr 6266 18,.bxor 7572 7573,.shr 6266 3,.bxor 7574 7575,.badd 7571 7576,.badd 7577 6260,.rotr 7565 17,.rotr 7565 19,.bxor 7579 7580,.shr 7565 10,.bxor 7581 7582]
theorem partExact116 : partRows116=WordField.rows actualModulus 7520 partOps116 := by
  simp only [partRows116,partOps116,WordField.rows,rows7520,rows7521,rows7522,rows7523,rows7524,rows7525,rows7526,rows7527,rows7528,rows7529,rows7530,rows7531,rows7532,rows7533,rows7534,rows7535,rows7536,rows7537,rows7538,rows7539,rows7540,rows7541,rows7542,rows7543,rows7544,rows7545,rows7546,rows7547,rows7548,rows7549,rows7550,rows7551,rows7552,rows7553,rows7554,rows7555,rows7556,rows7557,rows7558,rows7559,rows7560,rows7561,rows7562,rows7563,rows7564,rows7565,rows7566,rows7567,rows7568,rows7569,rows7570,rows7571,rows7572,rows7573,rows7574,rows7575,rows7576,rows7577,rows7578,rows7579,rows7580,rows7581,rows7582,rows7583,List.append_assoc,List.append_nil]
theorem partLength116 : partOps116.length=64 := by decide
theorem partStats116 : partRows116.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows116=373032 := by
  simp only [partRows116,List.length_append,MatrixRowBlocks.rows_weight_append,stats7520.1,stats7520.2,stats7521.1,stats7521.2,stats7522.1,stats7522.2,stats7523.1,stats7523.2,stats7524.1,stats7524.2,stats7525.1,stats7525.2,stats7526.1,stats7526.2,stats7527.1,stats7527.2,stats7528.1,stats7528.2,stats7529.1,stats7529.2,stats7530.1,stats7530.2,stats7531.1,stats7531.2,stats7532.1,stats7532.2,stats7533.1,stats7533.2,stats7534.1,stats7534.2,stats7535.1,stats7535.2,stats7536.1,stats7536.2,stats7537.1,stats7537.2,stats7538.1,stats7538.2,stats7539.1,stats7539.2,stats7540.1,stats7540.2,stats7541.1,stats7541.2,stats7542.1,stats7542.2,stats7543.1,stats7543.2,stats7544.1,stats7544.2,stats7545.1,stats7545.2,stats7546.1,stats7546.2,stats7547.1,stats7547.2,stats7548.1,stats7548.2,stats7549.1,stats7549.2,stats7550.1,stats7550.2,stats7551.1,stats7551.2,stats7552.1,stats7552.2,stats7553.1,stats7553.2,stats7554.1,stats7554.2,stats7555.1,stats7555.2,stats7556.1,stats7556.2,stats7557.1,stats7557.2,stats7558.1,stats7558.2,stats7559.1,stats7559.2,stats7560.1,stats7560.2,stats7561.1,stats7561.2,stats7562.1,stats7562.2,stats7563.1,stats7563.2,stats7564.1,stats7564.2,stats7565.1,stats7565.2,stats7566.1,stats7566.2,stats7567.1,stats7567.2,stats7568.1,stats7568.2,stats7569.1,stats7569.2,stats7570.1,stats7570.2,stats7571.1,stats7571.2,stats7572.1,stats7572.2,stats7573.1,stats7573.2,stats7574.1,stats7574.2,stats7575.1,stats7575.2,stats7576.1,stats7576.2,stats7577.1,stats7577.2,stats7578.1,stats7578.2,stats7579.1,stats7579.2,stats7580.1,stats7580.2,stats7581.1,stats7581.2,stats7582.1,stats7582.2,stats7583.1,stats7583.2]
  decide
end PairedPathRoundCheckedRows
