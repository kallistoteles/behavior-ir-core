import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData164
import PathRoundDispatchInstructionMatrixData165
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10539 : actualRows10539=WordField.canonicalRows actualModulus 10539 (.bxor 0 10538) := by core033_kernel_decide
theorem stats10539 : actualRows10539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10539=7428 := by core033_kernel_decide
theorem rows10540 : actualRows10540=WordField.canonicalRows actualModulus 10540 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10540 : actualRows10540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10540=2820 := by core033_kernel_decide
theorem rows10541 : actualRows10541=WordField.canonicalRows actualModulus 10541 (.bnot 10540) := by core033_kernel_decide
theorem stats10541 : actualRows10541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10541=6276 := by core033_kernel_decide
theorem rows10542 : actualRows10542=WordField.canonicalRows actualModulus 10542 (.band 10539 10541) := by core033_kernel_decide
theorem stats10542 : actualRows10542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10542=5124 := by core033_kernel_decide
theorem rows10543 : actualRows10543=WordField.canonicalRows actualModulus 10543 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10543 : actualRows10543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10543=2964 := by core033_kernel_decide
theorem rows10544 : actualRows10544=WordField.canonicalRows actualModulus 10544 (.bxor 0 10543) := by core033_kernel_decide
theorem stats10544 : actualRows10544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10544=7428 := by core033_kernel_decide
theorem rows10545 : actualRows10545=WordField.canonicalRows actualModulus 10545 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10545 : actualRows10545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10545=2820 := by core033_kernel_decide
theorem rows10546 : actualRows10546=WordField.canonicalRows actualModulus 10546 (.bnot 10545) := by core033_kernel_decide
theorem stats10546 : actualRows10546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10546=6276 := by core033_kernel_decide
theorem rows10547 : actualRows10547=WordField.canonicalRows actualModulus 10547 (.bxor 10544 10546) := by core033_kernel_decide
theorem stats10547 : actualRows10547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10547=7428 := by core033_kernel_decide
theorem rows10548 : actualRows10548=WordField.canonicalRows actualModulus 10548 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10548 : actualRows10548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10548=2964 := by core033_kernel_decide
theorem rows10549 : actualRows10549=WordField.canonicalRows actualModulus 10549 (.bxor 0 10548) := by core033_kernel_decide
theorem stats10549 : actualRows10549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10549=7428 := by core033_kernel_decide
theorem rows10550 : actualRows10550=WordField.canonicalRows actualModulus 10550 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10550 : actualRows10550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10550=2820 := by core033_kernel_decide
theorem rows10551 : actualRows10551=WordField.canonicalRows actualModulus 10551 (.bnot 10550) := by core033_kernel_decide
theorem stats10551 : actualRows10551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10551=6276 := by core033_kernel_decide
theorem rows10552 : actualRows10552=WordField.canonicalRows actualModulus 10552 (.badd 10549 10551) := by core033_kernel_decide
theorem stats10552 : actualRows10552.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10552=5388 := by core033_kernel_decide
theorem rows10553 : actualRows10553=WordField.canonicalRows actualModulus 10553 (.bnot 10552) := by core033_kernel_decide
theorem stats10553 : actualRows10553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10553=6276 := by core033_kernel_decide
theorem rows10554 : actualRows10554=WordField.canonicalRows actualModulus 10554 (.band 10547 10553) := by core033_kernel_decide
theorem stats10554 : actualRows10554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10554=5124 := by core033_kernel_decide
theorem rows10555 : actualRows10555=WordField.canonicalRows actualModulus 10555 (.bxor 10542 10554) := by core033_kernel_decide
theorem stats10555 : actualRows10555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10555=7428 := by core033_kernel_decide
theorem rows10556 : actualRows10556=WordField.canonicalRows actualModulus 10556 (.shr 10555 31) := by core033_kernel_decide
theorem stats10556 : actualRows10556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10556=2892 := by core033_kernel_decide
theorem rows10557 : actualRows10557=WordField.canonicalRows actualModulus 10557 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10557 : actualRows10557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10557=2892 := by core033_kernel_decide
theorem rows10558 : actualRows10558=WordField.canonicalRows actualModulus 10558 (.bxor 10556 10557) := by core033_kernel_decide
theorem stats10558 : actualRows10558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10558=7428 := by core033_kernel_decide
theorem rows10559 : actualRows10559=WordField.canonicalRows actualModulus 10559 (.bnot 10558) := by core033_kernel_decide
theorem stats10559 : actualRows10559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10559=6276 := by core033_kernel_decide
theorem rows10560 : actualRows10560=WordField.canonicalRows actualModulus 10560 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10560 : actualRows10560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10560=2892 := by core033_kernel_decide
theorem rows10561 : actualRows10561=WordField.canonicalRows actualModulus 10561 (.badd 10559 10560) := by core033_kernel_decide
theorem stats10561 : actualRows10561.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10561=5388 := by core033_kernel_decide
theorem rows10562 : actualRows10562=WordField.canonicalRows actualModulus 10562 (.band 10561 9483) := by core033_kernel_decide
theorem stats10562 : actualRows10562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10562=5124 := by core033_kernel_decide
theorem rows10563 : actualRows10563=WordField.canonicalRows actualModulus 10563 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10563 : actualRows10563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10563=2964 := by core033_kernel_decide
theorem rows10564 : actualRows10564=WordField.canonicalRows actualModulus 10564 (.bxor 0 10563) := by core033_kernel_decide
theorem stats10564 : actualRows10564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10564=7428 := by core033_kernel_decide
theorem rows10565 : actualRows10565=WordField.canonicalRows actualModulus 10565 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10565 : actualRows10565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10565=2820 := by core033_kernel_decide
theorem rows10566 : actualRows10566=WordField.canonicalRows actualModulus 10566 (.bnot 10565) := by core033_kernel_decide
theorem stats10566 : actualRows10566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10566=6276 := by core033_kernel_decide
theorem rows10567 : actualRows10567=WordField.canonicalRows actualModulus 10567 (.band 10564 10566) := by core033_kernel_decide
theorem stats10567 : actualRows10567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10567=5124 := by core033_kernel_decide
theorem rows10568 : actualRows10568=WordField.canonicalRows actualModulus 10568 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10568 : actualRows10568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10568=2964 := by core033_kernel_decide
theorem rows10569 : actualRows10569=WordField.canonicalRows actualModulus 10569 (.bxor 0 10568) := by core033_kernel_decide
theorem stats10569 : actualRows10569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10569=7428 := by core033_kernel_decide
theorem rows10570 : actualRows10570=WordField.canonicalRows actualModulus 10570 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10570 : actualRows10570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10570=2820 := by core033_kernel_decide
theorem rows10571 : actualRows10571=WordField.canonicalRows actualModulus 10571 (.bnot 10570) := by core033_kernel_decide
theorem stats10571 : actualRows10571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10571=6276 := by core033_kernel_decide
theorem rows10572 : actualRows10572=WordField.canonicalRows actualModulus 10572 (.bxor 10569 10571) := by core033_kernel_decide
theorem stats10572 : actualRows10572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10572=7428 := by core033_kernel_decide
theorem rows10573 : actualRows10573=WordField.canonicalRows actualModulus 10573 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10573 : actualRows10573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10573=2964 := by core033_kernel_decide
theorem rows10574 : actualRows10574=WordField.canonicalRows actualModulus 10574 (.bxor 0 10573) := by core033_kernel_decide
theorem stats10574 : actualRows10574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10574=7428 := by core033_kernel_decide
theorem rows10575 : actualRows10575=WordField.canonicalRows actualModulus 10575 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10575 : actualRows10575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10575=2820 := by core033_kernel_decide
theorem rows10576 : actualRows10576=WordField.canonicalRows actualModulus 10576 (.bnot 10575) := by core033_kernel_decide
theorem stats10576 : actualRows10576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10576=6276 := by core033_kernel_decide
theorem rows10577 : actualRows10577=WordField.canonicalRows actualModulus 10577 (.badd 10574 10576) := by core033_kernel_decide
theorem stats10577 : actualRows10577.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10577=5388 := by core033_kernel_decide
theorem rows10578 : actualRows10578=WordField.canonicalRows actualModulus 10578 (.bnot 10577) := by core033_kernel_decide
theorem stats10578 : actualRows10578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10578=6276 := by core033_kernel_decide
theorem rows10579 : actualRows10579=WordField.canonicalRows actualModulus 10579 (.band 10572 10578) := by core033_kernel_decide
theorem stats10579 : actualRows10579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10579=5124 := by core033_kernel_decide
theorem rows10580 : actualRows10580=WordField.canonicalRows actualModulus 10580 (.bxor 10567 10579) := by core033_kernel_decide
theorem stats10580 : actualRows10580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10580=7428 := by core033_kernel_decide
theorem rows10581 : actualRows10581=WordField.canonicalRows actualModulus 10581 (.shr 10580 31) := by core033_kernel_decide
theorem stats10581 : actualRows10581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10581=2892 := by core033_kernel_decide
theorem rows10582 : actualRows10582=WordField.canonicalRows actualModulus 10582 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10582 : actualRows10582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10582=2892 := by core033_kernel_decide
theorem rows10583 : actualRows10583=WordField.canonicalRows actualModulus 10583 (.bxor 10581 10582) := by core033_kernel_decide
theorem stats10583 : actualRows10583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10583=7428 := by core033_kernel_decide
theorem rows10584 : actualRows10584=WordField.canonicalRows actualModulus 10584 (.bnot 10583) := by core033_kernel_decide
theorem stats10584 : actualRows10584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10584=6276 := by core033_kernel_decide
theorem rows10585 : actualRows10585=WordField.canonicalRows actualModulus 10585 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10585 : actualRows10585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10585=2892 := by core033_kernel_decide
theorem rows10586 : actualRows10586=WordField.canonicalRows actualModulus 10586 (.badd 10584 10585) := by core033_kernel_decide
theorem stats10586 : actualRows10586.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10586=5388 := by core033_kernel_decide
theorem rows10587 : actualRows10587=WordField.canonicalRows actualModulus 10587 (.bnot 10586) := by core033_kernel_decide
theorem stats10587 : actualRows10587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10587=6276 := by core033_kernel_decide
theorem rows10588 : actualRows10588=WordField.canonicalRows actualModulus 10588 (.band 10587 162) := by core033_kernel_decide
theorem stats10588 : actualRows10588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10588=5124 := by core033_kernel_decide
theorem rows10589 : actualRows10589=WordField.canonicalRows actualModulus 10589 (.bxor 10562 10588) := by core033_kernel_decide
theorem stats10589 : actualRows10589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10589=7428 := by core033_kernel_decide
theorem rows10590 : actualRows10590=WordField.canonicalRows actualModulus 10590 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10590 : actualRows10590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10590=2964 := by core033_kernel_decide
theorem rows10591 : actualRows10591=WordField.canonicalRows actualModulus 10591 (.bxor 0 10590) := by core033_kernel_decide
theorem stats10591 : actualRows10591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10591=7428 := by core033_kernel_decide
theorem rows10592 : actualRows10592=WordField.canonicalRows actualModulus 10592 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10592 : actualRows10592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10592=2820 := by core033_kernel_decide
theorem rows10593 : actualRows10593=WordField.canonicalRows actualModulus 10593 (.bnot 10592) := by core033_kernel_decide
theorem stats10593 : actualRows10593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10593=6276 := by core033_kernel_decide
theorem rows10594 : actualRows10594=WordField.canonicalRows actualModulus 10594 (.band 10591 10593) := by core033_kernel_decide
theorem stats10594 : actualRows10594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10594=5124 := by core033_kernel_decide
theorem rows10595 : actualRows10595=WordField.canonicalRows actualModulus 10595 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10595 : actualRows10595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10595=2964 := by core033_kernel_decide
theorem rows10596 : actualRows10596=WordField.canonicalRows actualModulus 10596 (.bxor 0 10595) := by core033_kernel_decide
theorem stats10596 : actualRows10596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10596=7428 := by core033_kernel_decide
theorem rows10597 : actualRows10597=WordField.canonicalRows actualModulus 10597 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10597 : actualRows10597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10597=2820 := by core033_kernel_decide
theorem rows10598 : actualRows10598=WordField.canonicalRows actualModulus 10598 (.bnot 10597) := by core033_kernel_decide
theorem stats10598 : actualRows10598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10598=6276 := by core033_kernel_decide
theorem rows10599 : actualRows10599=WordField.canonicalRows actualModulus 10599 (.bxor 10596 10598) := by core033_kernel_decide
theorem stats10599 : actualRows10599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10599=7428 := by core033_kernel_decide
theorem rows10600 : actualRows10600=WordField.canonicalRows actualModulus 10600 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10600 : actualRows10600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10600=2964 := by core033_kernel_decide
theorem rows10601 : actualRows10601=WordField.canonicalRows actualModulus 10601 (.bxor 0 10600) := by core033_kernel_decide
theorem stats10601 : actualRows10601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10601=7428 := by core033_kernel_decide
theorem rows10602 : actualRows10602=WordField.canonicalRows actualModulus 10602 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10602 : actualRows10602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10602=2820 := by core033_kernel_decide
def partRows164 : List R1CS.Row := actualRows10539++actualRows10540++actualRows10541++actualRows10542++actualRows10543++actualRows10544++actualRows10545++actualRows10546++actualRows10547++actualRows10548++actualRows10549++actualRows10550++actualRows10551++actualRows10552++actualRows10553++actualRows10554++actualRows10555++actualRows10556++actualRows10557++actualRows10558++actualRows10559++actualRows10560++actualRows10561++actualRows10562++actualRows10563++actualRows10564++actualRows10565++actualRows10566++actualRows10567++actualRows10568++actualRows10569++actualRows10570++actualRows10571++actualRows10572++actualRows10573++actualRows10574++actualRows10575++actualRows10576++actualRows10577++actualRows10578++actualRows10579++actualRows10580++actualRows10581++actualRows10582++actualRows10583++actualRows10584++actualRows10585++actualRows10586++actualRows10587++actualRows10588++actualRows10589++actualRows10590++actualRows10591++actualRows10592++actualRows10593++actualRows10594++actualRows10595++actualRows10596++actualRows10597++actualRows10598++actualRows10599++actualRows10600++actualRows10601++actualRows10602
def partOps164 : List WordIR.Op := [.bxor 0 10538,.literal (BitVec.ofNat 32 0),.bnot 10540,.band 10539 10541,.literal (BitVec.ofNat 32 3),.bxor 0 10543,.literal (BitVec.ofNat 32 0),.bnot 10545,.bxor 10544 10546,.literal (BitVec.ofNat 32 3),.bxor 0 10548,.literal (BitVec.ofNat 32 0),.bnot 10550,.badd 10549 10551,.bnot 10552,.band 10547 10553,.bxor 10542 10554,.shr 10555 31,.literal (BitVec.ofNat 32 1),.bxor 10556 10557,.bnot 10558,.literal (BitVec.ofNat 32 1),.badd 10559 10560,.band 10561 9483,.literal (BitVec.ofNat 32 3),.bxor 0 10563,.literal (BitVec.ofNat 32 0),.bnot 10565,.band 10564 10566,.literal (BitVec.ofNat 32 3),.bxor 0 10568,.literal (BitVec.ofNat 32 0),.bnot 10570,.bxor 10569 10571,.literal (BitVec.ofNat 32 3),.bxor 0 10573,.literal (BitVec.ofNat 32 0),.bnot 10575,.badd 10574 10576,.bnot 10577,.band 10572 10578,.bxor 10567 10579,.shr 10580 31,.literal (BitVec.ofNat 32 1),.bxor 10581 10582,.bnot 10583,.literal (BitVec.ofNat 32 1),.badd 10584 10585,.bnot 10586,.band 10587 162,.bxor 10562 10588,.literal (BitVec.ofNat 32 3),.bxor 0 10590,.literal (BitVec.ofNat 32 0),.bnot 10592,.band 10591 10593,.literal (BitVec.ofNat 32 3),.bxor 0 10595,.literal (BitVec.ofNat 32 0),.bnot 10597,.bxor 10596 10598,.literal (BitVec.ofNat 32 3),.bxor 0 10600,.literal (BitVec.ofNat 32 0)]
theorem partExact164 : partRows164=WordField.rows actualModulus 10539 partOps164 := by
  simp only [partRows164,partOps164,WordField.rows,rows10539,rows10540,rows10541,rows10542,rows10543,rows10544,rows10545,rows10546,rows10547,rows10548,rows10549,rows10550,rows10551,rows10552,rows10553,rows10554,rows10555,rows10556,rows10557,rows10558,rows10559,rows10560,rows10561,rows10562,rows10563,rows10564,rows10565,rows10566,rows10567,rows10568,rows10569,rows10570,rows10571,rows10572,rows10573,rows10574,rows10575,rows10576,rows10577,rows10578,rows10579,rows10580,rows10581,rows10582,rows10583,rows10584,rows10585,rows10586,rows10587,rows10588,rows10589,rows10590,rows10591,rows10592,rows10593,rows10594,rows10595,rows10596,rows10597,rows10598,rows10599,rows10600,rows10601,rows10602,List.append_assoc,List.append_nil]
theorem partLength164 : partOps164.length=64 := by decide
theorem partStats164 : partRows164.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows164=331728 := by
  simp only [partRows164,List.length_append,MatrixRowBlocks.rows_weight_append,stats10539.1,stats10539.2,stats10540.1,stats10540.2,stats10541.1,stats10541.2,stats10542.1,stats10542.2,stats10543.1,stats10543.2,stats10544.1,stats10544.2,stats10545.1,stats10545.2,stats10546.1,stats10546.2,stats10547.1,stats10547.2,stats10548.1,stats10548.2,stats10549.1,stats10549.2,stats10550.1,stats10550.2,stats10551.1,stats10551.2,stats10552.1,stats10552.2,stats10553.1,stats10553.2,stats10554.1,stats10554.2,stats10555.1,stats10555.2,stats10556.1,stats10556.2,stats10557.1,stats10557.2,stats10558.1,stats10558.2,stats10559.1,stats10559.2,stats10560.1,stats10560.2,stats10561.1,stats10561.2,stats10562.1,stats10562.2,stats10563.1,stats10563.2,stats10564.1,stats10564.2,stats10565.1,stats10565.2,stats10566.1,stats10566.2,stats10567.1,stats10567.2,stats10568.1,stats10568.2,stats10569.1,stats10569.2,stats10570.1,stats10570.2,stats10571.1,stats10571.2,stats10572.1,stats10572.2,stats10573.1,stats10573.2,stats10574.1,stats10574.2,stats10575.1,stats10575.2,stats10576.1,stats10576.2,stats10577.1,stats10577.2,stats10578.1,stats10578.2,stats10579.1,stats10579.2,stats10580.1,stats10580.2,stats10581.1,stats10581.2,stats10582.1,stats10582.2,stats10583.1,stats10583.2,stats10584.1,stats10584.2,stats10585.1,stats10585.2,stats10586.1,stats10586.2,stats10587.1,stats10587.2,stats10588.1,stats10588.2,stats10589.1,stats10589.2,stats10590.1,stats10590.2,stats10591.1,stats10591.2,stats10592.1,stats10592.2,stats10593.1,stats10593.2,stats10594.1,stats10594.2,stats10595.1,stats10595.2,stats10596.1,stats10596.2,stats10597.1,stats10597.2,stats10598.1,stats10598.2,stats10599.1,stats10599.2,stats10600.1,stats10600.2,stats10601.1,stats10601.2,stats10602.1,stats10602.2]
  decide
end PathRoundDispatchCheckedRows
