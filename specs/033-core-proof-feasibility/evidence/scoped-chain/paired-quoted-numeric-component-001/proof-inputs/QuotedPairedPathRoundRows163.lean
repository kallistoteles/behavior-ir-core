import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData164
import PairedPathRoundInstructionMatrixData165
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10528 : actualRows10528=WordField.canonicalRows actualModulus 10528 (.band 10496 10527) := by core033_kernel_decide
theorem stats10528 : actualRows10528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10528=5124 := by core033_kernel_decide
theorem rows10529 : actualRows10529=WordField.canonicalRows actualModulus 10529 (.badd 10245 10267) := by core033_kernel_decide
theorem stats10529 : actualRows10529.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10529=5388 := by core033_kernel_decide
theorem rows10530 : actualRows10530=WordField.canonicalRows actualModulus 10530 (.band 10234 10256) := by core033_kernel_decide
theorem stats10530 : actualRows10530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10530=5124 := by core033_kernel_decide
theorem rows10531 : actualRows10531=WordField.canonicalRows actualModulus 10531 (.bxor 10234 10256) := by core033_kernel_decide
theorem stats10531 : actualRows10531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10531=7428 := by core033_kernel_decide
theorem rows10532 : actualRows10532=WordField.canonicalRows actualModulus 10532 (.badd 10234 10256) := by core033_kernel_decide
theorem stats10532 : actualRows10532.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10532=5388 := by core033_kernel_decide
theorem rows10533 : actualRows10533=WordField.canonicalRows actualModulus 10533 (.bnot 10532) := by core033_kernel_decide
theorem stats10533 : actualRows10533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10533=6276 := by core033_kernel_decide
theorem rows10534 : actualRows10534=WordField.canonicalRows actualModulus 10534 (.band 10531 10533) := by core033_kernel_decide
theorem stats10534 : actualRows10534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10534=5124 := by core033_kernel_decide
theorem rows10535 : actualRows10535=WordField.canonicalRows actualModulus 10535 (.bxor 10530 10534) := by core033_kernel_decide
theorem stats10535 : actualRows10535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10535=7428 := by core033_kernel_decide
theorem rows10536 : actualRows10536=WordField.canonicalRows actualModulus 10536 (.shr 10535 31) := by core033_kernel_decide
theorem stats10536 : actualRows10536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10536=2892 := by core033_kernel_decide
theorem rows10537 : actualRows10537=WordField.canonicalRows actualModulus 10537 (.badd 10529 10536) := by core033_kernel_decide
theorem stats10537 : actualRows10537.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10537=5388 := by core033_kernel_decide
theorem rows10538 : actualRows10538=WordField.canonicalRows actualModulus 10538 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10538 : actualRows10538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10538=2820 := by core033_kernel_decide
theorem rows10539 : actualRows10539=WordField.canonicalRows actualModulus 10539 (.bnot 10538) := by core033_kernel_decide
theorem stats10539 : actualRows10539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10539=6276 := by core033_kernel_decide
theorem rows10540 : actualRows10540=WordField.canonicalRows actualModulus 10540 (.band 10537 10539) := by core033_kernel_decide
theorem stats10540 : actualRows10540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10540=5124 := by core033_kernel_decide
theorem rows10541 : actualRows10541=WordField.canonicalRows actualModulus 10541 (.badd 10245 10267) := by core033_kernel_decide
theorem stats10541 : actualRows10541.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10541=5388 := by core033_kernel_decide
theorem rows10542 : actualRows10542=WordField.canonicalRows actualModulus 10542 (.band 10234 10256) := by core033_kernel_decide
theorem stats10542 : actualRows10542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10542=5124 := by core033_kernel_decide
theorem rows10543 : actualRows10543=WordField.canonicalRows actualModulus 10543 (.bxor 10234 10256) := by core033_kernel_decide
theorem stats10543 : actualRows10543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10543=7428 := by core033_kernel_decide
theorem rows10544 : actualRows10544=WordField.canonicalRows actualModulus 10544 (.badd 10234 10256) := by core033_kernel_decide
theorem stats10544 : actualRows10544.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10544=5388 := by core033_kernel_decide
theorem rows10545 : actualRows10545=WordField.canonicalRows actualModulus 10545 (.bnot 10544) := by core033_kernel_decide
theorem stats10545 : actualRows10545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10545=6276 := by core033_kernel_decide
theorem rows10546 : actualRows10546=WordField.canonicalRows actualModulus 10546 (.band 10543 10545) := by core033_kernel_decide
theorem stats10546 : actualRows10546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10546=5124 := by core033_kernel_decide
theorem rows10547 : actualRows10547=WordField.canonicalRows actualModulus 10547 (.bxor 10542 10546) := by core033_kernel_decide
theorem stats10547 : actualRows10547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10547=7428 := by core033_kernel_decide
theorem rows10548 : actualRows10548=WordField.canonicalRows actualModulus 10548 (.shr 10547 31) := by core033_kernel_decide
theorem stats10548 : actualRows10548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10548=2892 := by core033_kernel_decide
theorem rows10549 : actualRows10549=WordField.canonicalRows actualModulus 10549 (.badd 10541 10548) := by core033_kernel_decide
theorem stats10549 : actualRows10549.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10549=5388 := by core033_kernel_decide
theorem rows10550 : actualRows10550=WordField.canonicalRows actualModulus 10550 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10550 : actualRows10550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10550=2820 := by core033_kernel_decide
theorem rows10551 : actualRows10551=WordField.canonicalRows actualModulus 10551 (.bnot 10550) := by core033_kernel_decide
theorem stats10551 : actualRows10551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10551=6276 := by core033_kernel_decide
theorem rows10552 : actualRows10552=WordField.canonicalRows actualModulus 10552 (.bxor 10549 10551) := by core033_kernel_decide
theorem stats10552 : actualRows10552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10552=7428 := by core033_kernel_decide
theorem rows10553 : actualRows10553=WordField.canonicalRows actualModulus 10553 (.badd 10245 10267) := by core033_kernel_decide
theorem stats10553 : actualRows10553.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10553=5388 := by core033_kernel_decide
theorem rows10554 : actualRows10554=WordField.canonicalRows actualModulus 10554 (.band 10234 10256) := by core033_kernel_decide
theorem stats10554 : actualRows10554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10554=5124 := by core033_kernel_decide
theorem rows10555 : actualRows10555=WordField.canonicalRows actualModulus 10555 (.bxor 10234 10256) := by core033_kernel_decide
theorem stats10555 : actualRows10555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10555=7428 := by core033_kernel_decide
theorem rows10556 : actualRows10556=WordField.canonicalRows actualModulus 10556 (.badd 10234 10256) := by core033_kernel_decide
theorem stats10556 : actualRows10556.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10556=5388 := by core033_kernel_decide
theorem rows10557 : actualRows10557=WordField.canonicalRows actualModulus 10557 (.bnot 10556) := by core033_kernel_decide
theorem stats10557 : actualRows10557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10557=6276 := by core033_kernel_decide
theorem rows10558 : actualRows10558=WordField.canonicalRows actualModulus 10558 (.band 10555 10557) := by core033_kernel_decide
theorem stats10558 : actualRows10558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10558=5124 := by core033_kernel_decide
theorem rows10559 : actualRows10559=WordField.canonicalRows actualModulus 10559 (.bxor 10554 10558) := by core033_kernel_decide
theorem stats10559 : actualRows10559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10559=7428 := by core033_kernel_decide
theorem rows10560 : actualRows10560=WordField.canonicalRows actualModulus 10560 (.shr 10559 31) := by core033_kernel_decide
theorem stats10560 : actualRows10560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10560=2892 := by core033_kernel_decide
theorem rows10561 : actualRows10561=WordField.canonicalRows actualModulus 10561 (.badd 10553 10560) := by core033_kernel_decide
theorem stats10561 : actualRows10561.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10561=5388 := by core033_kernel_decide
theorem rows10562 : actualRows10562=WordField.canonicalRows actualModulus 10562 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10562 : actualRows10562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10562=2820 := by core033_kernel_decide
theorem rows10563 : actualRows10563=WordField.canonicalRows actualModulus 10563 (.bnot 10562) := by core033_kernel_decide
theorem stats10563 : actualRows10563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10563=6276 := by core033_kernel_decide
theorem rows10564 : actualRows10564=WordField.canonicalRows actualModulus 10564 (.badd 10561 10563) := by core033_kernel_decide
theorem stats10564 : actualRows10564.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10564=5388 := by core033_kernel_decide
theorem rows10565 : actualRows10565=WordField.canonicalRows actualModulus 10565 (.bnot 10564) := by core033_kernel_decide
theorem stats10565 : actualRows10565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10565=6276 := by core033_kernel_decide
theorem rows10566 : actualRows10566=WordField.canonicalRows actualModulus 10566 (.band 10552 10565) := by core033_kernel_decide
theorem stats10566 : actualRows10566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10566=5124 := by core033_kernel_decide
theorem rows10567 : actualRows10567=WordField.canonicalRows actualModulus 10567 (.bxor 10540 10566) := by core033_kernel_decide
theorem stats10567 : actualRows10567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10567=7428 := by core033_kernel_decide
theorem rows10568 : actualRows10568=WordField.canonicalRows actualModulus 10568 (.shr 10567 31) := by core033_kernel_decide
theorem stats10568 : actualRows10568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10568=2892 := by core033_kernel_decide
theorem rows10569 : actualRows10569=WordField.canonicalRows actualModulus 10569 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10569 : actualRows10569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10569=2892 := by core033_kernel_decide
theorem rows10570 : actualRows10570=WordField.canonicalRows actualModulus 10570 (.bxor 10568 10569) := by core033_kernel_decide
theorem stats10570 : actualRows10570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10570=7428 := by core033_kernel_decide
theorem rows10571 : actualRows10571=WordField.canonicalRows actualModulus 10571 (.badd 10234 10256) := by core033_kernel_decide
theorem stats10571 : actualRows10571.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10571=5388 := by core033_kernel_decide
theorem rows10572 : actualRows10572=WordField.canonicalRows actualModulus 10572 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10572 : actualRows10572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10572=2892 := by core033_kernel_decide
theorem rows10573 : actualRows10573=WordField.canonicalRows actualModulus 10573 (.bnot 10572) := by core033_kernel_decide
theorem stats10573 : actualRows10573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10573=6276 := by core033_kernel_decide
theorem rows10574 : actualRows10574=WordField.canonicalRows actualModulus 10574 (.band 10571 10573) := by core033_kernel_decide
theorem stats10574 : actualRows10574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10574=5124 := by core033_kernel_decide
theorem rows10575 : actualRows10575=WordField.canonicalRows actualModulus 10575 (.badd 10234 10256) := by core033_kernel_decide
theorem stats10575 : actualRows10575.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10575=5388 := by core033_kernel_decide
theorem rows10576 : actualRows10576=WordField.canonicalRows actualModulus 10576 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10576 : actualRows10576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10576=2892 := by core033_kernel_decide
theorem rows10577 : actualRows10577=WordField.canonicalRows actualModulus 10577 (.bnot 10576) := by core033_kernel_decide
theorem stats10577 : actualRows10577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10577=6276 := by core033_kernel_decide
theorem rows10578 : actualRows10578=WordField.canonicalRows actualModulus 10578 (.bxor 10575 10577) := by core033_kernel_decide
theorem stats10578 : actualRows10578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10578=7428 := by core033_kernel_decide
theorem rows10579 : actualRows10579=WordField.canonicalRows actualModulus 10579 (.badd 10234 10256) := by core033_kernel_decide
theorem stats10579 : actualRows10579.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10579=5388 := by core033_kernel_decide
theorem rows10580 : actualRows10580=WordField.canonicalRows actualModulus 10580 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10580 : actualRows10580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10580=2892 := by core033_kernel_decide
theorem rows10581 : actualRows10581=WordField.canonicalRows actualModulus 10581 (.bnot 10580) := by core033_kernel_decide
theorem stats10581 : actualRows10581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10581=6276 := by core033_kernel_decide
theorem rows10582 : actualRows10582=WordField.canonicalRows actualModulus 10582 (.badd 10579 10581) := by core033_kernel_decide
theorem stats10582 : actualRows10582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10582=5388 := by core033_kernel_decide
theorem rows10583 : actualRows10583=WordField.canonicalRows actualModulus 10583 (.bnot 10582) := by core033_kernel_decide
theorem stats10583 : actualRows10583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10583=6276 := by core033_kernel_decide
theorem rows10584 : actualRows10584=WordField.canonicalRows actualModulus 10584 (.band 10578 10583) := by core033_kernel_decide
theorem stats10584 : actualRows10584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10584=5124 := by core033_kernel_decide
theorem rows10585 : actualRows10585=WordField.canonicalRows actualModulus 10585 (.bxor 10574 10584) := by core033_kernel_decide
theorem stats10585 : actualRows10585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10585=7428 := by core033_kernel_decide
theorem rows10586 : actualRows10586=WordField.canonicalRows actualModulus 10586 (.shr 10585 31) := by core033_kernel_decide
theorem stats10586 : actualRows10586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10586=2892 := by core033_kernel_decide
theorem rows10587 : actualRows10587=WordField.canonicalRows actualModulus 10587 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10587 : actualRows10587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10587=2892 := by core033_kernel_decide
theorem rows10588 : actualRows10588=WordField.canonicalRows actualModulus 10588 (.bxor 10586 10587) := by core033_kernel_decide
theorem stats10588 : actualRows10588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10588=7428 := by core033_kernel_decide
theorem rows10589 : actualRows10589=WordField.canonicalRows actualModulus 10589 (.band 10570 10588) := by core033_kernel_decide
theorem stats10589 : actualRows10589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10589=5124 := by core033_kernel_decide
theorem rows10590 : actualRows10590=WordField.canonicalRows actualModulus 10590 (.band 10528 10589) := by core033_kernel_decide
theorem stats10590 : actualRows10590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10590=5124 := by core033_kernel_decide
theorem rows10591 : actualRows10591=WordField.canonicalRows actualModulus 10591 (.band 10278 10289) := by core033_kernel_decide
theorem stats10591 : actualRows10591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10591=5124 := by core033_kernel_decide
def partRows163 : List R1CS.Row := actualRows10528++actualRows10529++actualRows10530++actualRows10531++actualRows10532++actualRows10533++actualRows10534++actualRows10535++actualRows10536++actualRows10537++actualRows10538++actualRows10539++actualRows10540++actualRows10541++actualRows10542++actualRows10543++actualRows10544++actualRows10545++actualRows10546++actualRows10547++actualRows10548++actualRows10549++actualRows10550++actualRows10551++actualRows10552++actualRows10553++actualRows10554++actualRows10555++actualRows10556++actualRows10557++actualRows10558++actualRows10559++actualRows10560++actualRows10561++actualRows10562++actualRows10563++actualRows10564++actualRows10565++actualRows10566++actualRows10567++actualRows10568++actualRows10569++actualRows10570++actualRows10571++actualRows10572++actualRows10573++actualRows10574++actualRows10575++actualRows10576++actualRows10577++actualRows10578++actualRows10579++actualRows10580++actualRows10581++actualRows10582++actualRows10583++actualRows10584++actualRows10585++actualRows10586++actualRows10587++actualRows10588++actualRows10589++actualRows10590++actualRows10591
def partOps163 : List WordIR.Op := [.band 10496 10527,.badd 10245 10267,.band 10234 10256,.bxor 10234 10256,.badd 10234 10256,.bnot 10532,.band 10531 10533,.bxor 10530 10534,.shr 10535 31,.badd 10529 10536,.literal (BitVec.ofNat 32 0),.bnot 10538,.band 10537 10539,.badd 10245 10267,.band 10234 10256,.bxor 10234 10256,.badd 10234 10256,.bnot 10544,.band 10543 10545,.bxor 10542 10546,.shr 10547 31,.badd 10541 10548,.literal (BitVec.ofNat 32 0),.bnot 10550,.bxor 10549 10551,.badd 10245 10267,.band 10234 10256,.bxor 10234 10256,.badd 10234 10256,.bnot 10556,.band 10555 10557,.bxor 10554 10558,.shr 10559 31,.badd 10553 10560,.literal (BitVec.ofNat 32 0),.bnot 10562,.badd 10561 10563,.bnot 10564,.band 10552 10565,.bxor 10540 10566,.shr 10567 31,.literal (BitVec.ofNat 32 1),.bxor 10568 10569,.badd 10234 10256,.literal (BitVec.ofNat 32 1048576),.bnot 10572,.band 10571 10573,.badd 10234 10256,.literal (BitVec.ofNat 32 1048576),.bnot 10576,.bxor 10575 10577,.badd 10234 10256,.literal (BitVec.ofNat 32 1048576),.bnot 10580,.badd 10579 10581,.bnot 10582,.band 10578 10583,.bxor 10574 10584,.shr 10585 31,.literal (BitVec.ofNat 32 1),.bxor 10586 10587,.band 10570 10588,.band 10528 10589,.band 10278 10289]
theorem partExact163 : partRows163=WordField.rows actualModulus 10528 partOps163 := by
  simp only [partRows163,partOps163,WordField.rows,rows10528,rows10529,rows10530,rows10531,rows10532,rows10533,rows10534,rows10535,rows10536,rows10537,rows10538,rows10539,rows10540,rows10541,rows10542,rows10543,rows10544,rows10545,rows10546,rows10547,rows10548,rows10549,rows10550,rows10551,rows10552,rows10553,rows10554,rows10555,rows10556,rows10557,rows10558,rows10559,rows10560,rows10561,rows10562,rows10563,rows10564,rows10565,rows10566,rows10567,rows10568,rows10569,rows10570,rows10571,rows10572,rows10573,rows10574,rows10575,rows10576,rows10577,rows10578,rows10579,rows10580,rows10581,rows10582,rows10583,rows10584,rows10585,rows10586,rows10587,rows10588,rows10589,rows10590,rows10591,List.append_assoc,List.append_nil]
theorem partLength163 : partOps163.length=64 := by decide
theorem partStats163 : partRows163.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows163=342720 := by
  simp only [partRows163,List.length_append,MatrixRowBlocks.rows_weight_append,stats10528.1,stats10528.2,stats10529.1,stats10529.2,stats10530.1,stats10530.2,stats10531.1,stats10531.2,stats10532.1,stats10532.2,stats10533.1,stats10533.2,stats10534.1,stats10534.2,stats10535.1,stats10535.2,stats10536.1,stats10536.2,stats10537.1,stats10537.2,stats10538.1,stats10538.2,stats10539.1,stats10539.2,stats10540.1,stats10540.2,stats10541.1,stats10541.2,stats10542.1,stats10542.2,stats10543.1,stats10543.2,stats10544.1,stats10544.2,stats10545.1,stats10545.2,stats10546.1,stats10546.2,stats10547.1,stats10547.2,stats10548.1,stats10548.2,stats10549.1,stats10549.2,stats10550.1,stats10550.2,stats10551.1,stats10551.2,stats10552.1,stats10552.2,stats10553.1,stats10553.2,stats10554.1,stats10554.2,stats10555.1,stats10555.2,stats10556.1,stats10556.2,stats10557.1,stats10557.2,stats10558.1,stats10558.2,stats10559.1,stats10559.2,stats10560.1,stats10560.2,stats10561.1,stats10561.2,stats10562.1,stats10562.2,stats10563.1,stats10563.2,stats10564.1,stats10564.2,stats10565.1,stats10565.2,stats10566.1,stats10566.2,stats10567.1,stats10567.2,stats10568.1,stats10568.2,stats10569.1,stats10569.2,stats10570.1,stats10570.2,stats10571.1,stats10571.2,stats10572.1,stats10572.2,stats10573.1,stats10573.2,stats10574.1,stats10574.2,stats10575.1,stats10575.2,stats10576.1,stats10576.2,stats10577.1,stats10577.2,stats10578.1,stats10578.2,stats10579.1,stats10579.2,stats10580.1,stats10580.2,stats10581.1,stats10581.2,stats10582.1,stats10582.2,stats10583.1,stats10583.2,stats10584.1,stats10584.2,stats10585.1,stats10585.2,stats10586.1,stats10586.2,stats10587.1,stats10587.2,stats10588.1,stats10588.2,stats10589.1,stats10589.2,stats10590.1,stats10590.2,stats10591.1,stats10591.2]
  decide
end QuotedPairedPathRoundCheckedRows
