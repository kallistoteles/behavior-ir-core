import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData164
import AuthenticatedBranchRoundInstructionMatrixData165
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10550 : actualRows10550=WordField.canonicalRows actualModulus 10550 (.band 10547 10549) := by core033_kernel_decide
theorem stats10550 : actualRows10550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10550=5124 := by core033_kernel_decide
theorem rows10551 : actualRows10551=WordField.canonicalRows actualModulus 10551 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10551 : actualRows10551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10551=2892 := by core033_kernel_decide
theorem rows10552 : actualRows10552=WordField.canonicalRows actualModulus 10552 (.bxor 1299 10551) := by core033_kernel_decide
theorem stats10552 : actualRows10552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10552=7428 := by core033_kernel_decide
theorem rows10553 : actualRows10553=WordField.canonicalRows actualModulus 10553 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10553 : actualRows10553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10553=2820 := by core033_kernel_decide
theorem rows10554 : actualRows10554=WordField.canonicalRows actualModulus 10554 (.bnot 10553) := by core033_kernel_decide
theorem stats10554 : actualRows10554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10554=6276 := by core033_kernel_decide
theorem rows10555 : actualRows10555=WordField.canonicalRows actualModulus 10555 (.bxor 10552 10554) := by core033_kernel_decide
theorem stats10555 : actualRows10555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10555=7428 := by core033_kernel_decide
theorem rows10556 : actualRows10556=WordField.canonicalRows actualModulus 10556 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10556 : actualRows10556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10556=2892 := by core033_kernel_decide
theorem rows10557 : actualRows10557=WordField.canonicalRows actualModulus 10557 (.bxor 1299 10556) := by core033_kernel_decide
theorem stats10557 : actualRows10557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10557=7428 := by core033_kernel_decide
theorem rows10558 : actualRows10558=WordField.canonicalRows actualModulus 10558 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10558 : actualRows10558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10558=2820 := by core033_kernel_decide
theorem rows10559 : actualRows10559=WordField.canonicalRows actualModulus 10559 (.bnot 10558) := by core033_kernel_decide
theorem stats10559 : actualRows10559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10559=6276 := by core033_kernel_decide
theorem rows10560 : actualRows10560=WordField.canonicalRows actualModulus 10560 (.badd 10557 10559) := by core033_kernel_decide
theorem stats10560 : actualRows10560.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10560=5388 := by core033_kernel_decide
theorem rows10561 : actualRows10561=WordField.canonicalRows actualModulus 10561 (.bnot 10560) := by core033_kernel_decide
theorem stats10561 : actualRows10561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10561=6276 := by core033_kernel_decide
theorem rows10562 : actualRows10562=WordField.canonicalRows actualModulus 10562 (.band 10555 10561) := by core033_kernel_decide
theorem stats10562 : actualRows10562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10562=5124 := by core033_kernel_decide
theorem rows10563 : actualRows10563=WordField.canonicalRows actualModulus 10563 (.bxor 10550 10562) := by core033_kernel_decide
theorem stats10563 : actualRows10563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10563=7428 := by core033_kernel_decide
theorem rows10564 : actualRows10564=WordField.canonicalRows actualModulus 10564 (.shr 10563 31) := by core033_kernel_decide
theorem stats10564 : actualRows10564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10564=2892 := by core033_kernel_decide
theorem rows10565 : actualRows10565=WordField.canonicalRows actualModulus 10565 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10565 : actualRows10565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10565=2892 := by core033_kernel_decide
theorem rows10566 : actualRows10566=WordField.canonicalRows actualModulus 10566 (.bxor 10564 10565) := by core033_kernel_decide
theorem stats10566 : actualRows10566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10566=7428 := by core033_kernel_decide
theorem rows10567 : actualRows10567=WordField.canonicalRows actualModulus 10567 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10567 : actualRows10567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10567=2892 := by core033_kernel_decide
theorem rows10568 : actualRows10568=WordField.canonicalRows actualModulus 10568 (.bxor 1299 10567) := by core033_kernel_decide
theorem stats10568 : actualRows10568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10568=7428 := by core033_kernel_decide
theorem rows10569 : actualRows10569=WordField.canonicalRows actualModulus 10569 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10569 : actualRows10569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10569=2820 := by core033_kernel_decide
theorem rows10570 : actualRows10570=WordField.canonicalRows actualModulus 10570 (.bnot 10569) := by core033_kernel_decide
theorem stats10570 : actualRows10570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10570=6276 := by core033_kernel_decide
theorem rows10571 : actualRows10571=WordField.canonicalRows actualModulus 10571 (.band 10568 10570) := by core033_kernel_decide
theorem stats10571 : actualRows10571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10571=5124 := by core033_kernel_decide
theorem rows10572 : actualRows10572=WordField.canonicalRows actualModulus 10572 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10572 : actualRows10572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10572=2892 := by core033_kernel_decide
theorem rows10573 : actualRows10573=WordField.canonicalRows actualModulus 10573 (.bxor 1299 10572) := by core033_kernel_decide
theorem stats10573 : actualRows10573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10573=7428 := by core033_kernel_decide
theorem rows10574 : actualRows10574=WordField.canonicalRows actualModulus 10574 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10574 : actualRows10574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10574=2820 := by core033_kernel_decide
theorem rows10575 : actualRows10575=WordField.canonicalRows actualModulus 10575 (.bnot 10574) := by core033_kernel_decide
theorem stats10575 : actualRows10575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10575=6276 := by core033_kernel_decide
theorem rows10576 : actualRows10576=WordField.canonicalRows actualModulus 10576 (.bxor 10573 10575) := by core033_kernel_decide
theorem stats10576 : actualRows10576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10576=7428 := by core033_kernel_decide
theorem rows10577 : actualRows10577=WordField.canonicalRows actualModulus 10577 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10577 : actualRows10577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10577=2892 := by core033_kernel_decide
theorem rows10578 : actualRows10578=WordField.canonicalRows actualModulus 10578 (.bxor 1299 10577) := by core033_kernel_decide
theorem stats10578 : actualRows10578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10578=7428 := by core033_kernel_decide
theorem rows10579 : actualRows10579=WordField.canonicalRows actualModulus 10579 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10579 : actualRows10579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10579=2820 := by core033_kernel_decide
theorem rows10580 : actualRows10580=WordField.canonicalRows actualModulus 10580 (.bnot 10579) := by core033_kernel_decide
theorem stats10580 : actualRows10580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10580=6276 := by core033_kernel_decide
theorem rows10581 : actualRows10581=WordField.canonicalRows actualModulus 10581 (.badd 10578 10580) := by core033_kernel_decide
theorem stats10581 : actualRows10581.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10581=5388 := by core033_kernel_decide
theorem rows10582 : actualRows10582=WordField.canonicalRows actualModulus 10582 (.bnot 10581) := by core033_kernel_decide
theorem stats10582 : actualRows10582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10582=6276 := by core033_kernel_decide
theorem rows10583 : actualRows10583=WordField.canonicalRows actualModulus 10583 (.band 10576 10582) := by core033_kernel_decide
theorem stats10583 : actualRows10583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10583=5124 := by core033_kernel_decide
theorem rows10584 : actualRows10584=WordField.canonicalRows actualModulus 10584 (.bxor 10571 10583) := by core033_kernel_decide
theorem stats10584 : actualRows10584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10584=7428 := by core033_kernel_decide
theorem rows10585 : actualRows10585=WordField.canonicalRows actualModulus 10585 (.shr 10584 31) := by core033_kernel_decide
theorem stats10585 : actualRows10585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10585=2892 := by core033_kernel_decide
theorem rows10586 : actualRows10586=WordField.canonicalRows actualModulus 10586 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10586 : actualRows10586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10586=2892 := by core033_kernel_decide
theorem rows10587 : actualRows10587=WordField.canonicalRows actualModulus 10587 (.bxor 10585 10586) := by core033_kernel_decide
theorem stats10587 : actualRows10587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10587=7428 := by core033_kernel_decide
theorem rows10588 : actualRows10588=WordField.canonicalRows actualModulus 10588 (.bxor 10566 10587) := by core033_kernel_decide
theorem stats10588 : actualRows10588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10588=7428 := by core033_kernel_decide
theorem rows10589 : actualRows10589=WordField.canonicalRows actualModulus 10589 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10589 : actualRows10589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10589=2964 := by core033_kernel_decide
theorem rows10590 : actualRows10590=WordField.canonicalRows actualModulus 10590 (.bxor 693 10589) := by core033_kernel_decide
theorem stats10590 : actualRows10590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10590=7428 := by core033_kernel_decide
theorem rows10591 : actualRows10591=WordField.canonicalRows actualModulus 10591 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10591 : actualRows10591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10591=2820 := by core033_kernel_decide
theorem rows10592 : actualRows10592=WordField.canonicalRows actualModulus 10592 (.bnot 10591) := by core033_kernel_decide
theorem stats10592 : actualRows10592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10592=6276 := by core033_kernel_decide
theorem rows10593 : actualRows10593=WordField.canonicalRows actualModulus 10593 (.band 10590 10592) := by core033_kernel_decide
theorem stats10593 : actualRows10593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10593=5124 := by core033_kernel_decide
theorem rows10594 : actualRows10594=WordField.canonicalRows actualModulus 10594 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10594 : actualRows10594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10594=2964 := by core033_kernel_decide
theorem rows10595 : actualRows10595=WordField.canonicalRows actualModulus 10595 (.bxor 693 10594) := by core033_kernel_decide
theorem stats10595 : actualRows10595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10595=7428 := by core033_kernel_decide
theorem rows10596 : actualRows10596=WordField.canonicalRows actualModulus 10596 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10596 : actualRows10596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10596=2820 := by core033_kernel_decide
theorem rows10597 : actualRows10597=WordField.canonicalRows actualModulus 10597 (.bnot 10596) := by core033_kernel_decide
theorem stats10597 : actualRows10597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10597=6276 := by core033_kernel_decide
theorem rows10598 : actualRows10598=WordField.canonicalRows actualModulus 10598 (.bxor 10595 10597) := by core033_kernel_decide
theorem stats10598 : actualRows10598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10598=7428 := by core033_kernel_decide
theorem rows10599 : actualRows10599=WordField.canonicalRows actualModulus 10599 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10599 : actualRows10599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10599=2964 := by core033_kernel_decide
theorem rows10600 : actualRows10600=WordField.canonicalRows actualModulus 10600 (.bxor 693 10599) := by core033_kernel_decide
theorem stats10600 : actualRows10600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10600=7428 := by core033_kernel_decide
theorem rows10601 : actualRows10601=WordField.canonicalRows actualModulus 10601 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10601 : actualRows10601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10601=2820 := by core033_kernel_decide
theorem rows10602 : actualRows10602=WordField.canonicalRows actualModulus 10602 (.bnot 10601) := by core033_kernel_decide
theorem stats10602 : actualRows10602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10602=6276 := by core033_kernel_decide
theorem rows10603 : actualRows10603=WordField.canonicalRows actualModulus 10603 (.badd 10600 10602) := by core033_kernel_decide
theorem stats10603 : actualRows10603.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10603=5388 := by core033_kernel_decide
theorem rows10604 : actualRows10604=WordField.canonicalRows actualModulus 10604 (.bnot 10603) := by core033_kernel_decide
theorem stats10604 : actualRows10604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10604=6276 := by core033_kernel_decide
theorem rows10605 : actualRows10605=WordField.canonicalRows actualModulus 10605 (.band 10598 10604) := by core033_kernel_decide
theorem stats10605 : actualRows10605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10605=5124 := by core033_kernel_decide
theorem rows10606 : actualRows10606=WordField.canonicalRows actualModulus 10606 (.bxor 10593 10605) := by core033_kernel_decide
theorem stats10606 : actualRows10606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10606=7428 := by core033_kernel_decide
theorem rows10607 : actualRows10607=WordField.canonicalRows actualModulus 10607 (.shr 10606 31) := by core033_kernel_decide
theorem stats10607 : actualRows10607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10607=2892 := by core033_kernel_decide
theorem rows10608 : actualRows10608=WordField.canonicalRows actualModulus 10608 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10608 : actualRows10608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10608=2892 := by core033_kernel_decide
theorem rows10609 : actualRows10609=WordField.canonicalRows actualModulus 10609 (.bxor 10607 10608) := by core033_kernel_decide
theorem stats10609 : actualRows10609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10609=7428 := by core033_kernel_decide
theorem rows10610 : actualRows10610=WordField.canonicalRows actualModulus 10610 (.bnot 10609) := by core033_kernel_decide
theorem stats10610 : actualRows10610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10610=6276 := by core033_kernel_decide
theorem rows10611 : actualRows10611=WordField.canonicalRows actualModulus 10611 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10611 : actualRows10611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10611=2892 := by core033_kernel_decide
theorem rows10612 : actualRows10612=WordField.canonicalRows actualModulus 10612 (.badd 10610 10611) := by core033_kernel_decide
theorem stats10612 : actualRows10612.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10612=5388 := by core033_kernel_decide
theorem rows10613 : actualRows10613=WordField.canonicalRows actualModulus 10613 (.band 10612 693) := by core033_kernel_decide
theorem stats10613 : actualRows10613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10613=5124 := by core033_kernel_decide
def partRows163 : List R1CS.Row := actualRows10550++actualRows10551++actualRows10552++actualRows10553++actualRows10554++actualRows10555++actualRows10556++actualRows10557++actualRows10558++actualRows10559++actualRows10560++actualRows10561++actualRows10562++actualRows10563++actualRows10564++actualRows10565++actualRows10566++actualRows10567++actualRows10568++actualRows10569++actualRows10570++actualRows10571++actualRows10572++actualRows10573++actualRows10574++actualRows10575++actualRows10576++actualRows10577++actualRows10578++actualRows10579++actualRows10580++actualRows10581++actualRows10582++actualRows10583++actualRows10584++actualRows10585++actualRows10586++actualRows10587++actualRows10588++actualRows10589++actualRows10590++actualRows10591++actualRows10592++actualRows10593++actualRows10594++actualRows10595++actualRows10596++actualRows10597++actualRows10598++actualRows10599++actualRows10600++actualRows10601++actualRows10602++actualRows10603++actualRows10604++actualRows10605++actualRows10606++actualRows10607++actualRows10608++actualRows10609++actualRows10610++actualRows10611++actualRows10612++actualRows10613
def partOps163 : List WordIR.Op := [.band 10547 10549,.literal (BitVec.ofNat 32 1),.bxor 1299 10551,.literal (BitVec.ofNat 32 0),.bnot 10553,.bxor 10552 10554,.literal (BitVec.ofNat 32 1),.bxor 1299 10556,.literal (BitVec.ofNat 32 0),.bnot 10558,.badd 10557 10559,.bnot 10560,.band 10555 10561,.bxor 10550 10562,.shr 10563 31,.literal (BitVec.ofNat 32 1),.bxor 10564 10565,.literal (BitVec.ofNat 32 2),.bxor 1299 10567,.literal (BitVec.ofNat 32 0),.bnot 10569,.band 10568 10570,.literal (BitVec.ofNat 32 2),.bxor 1299 10572,.literal (BitVec.ofNat 32 0),.bnot 10574,.bxor 10573 10575,.literal (BitVec.ofNat 32 2),.bxor 1299 10577,.literal (BitVec.ofNat 32 0),.bnot 10579,.badd 10578 10580,.bnot 10581,.band 10576 10582,.bxor 10571 10583,.shr 10584 31,.literal (BitVec.ofNat 32 1),.bxor 10585 10586,.bxor 10566 10587,.literal (BitVec.ofNat 32 3),.bxor 693 10589,.literal (BitVec.ofNat 32 0),.bnot 10591,.band 10590 10592,.literal (BitVec.ofNat 32 3),.bxor 693 10594,.literal (BitVec.ofNat 32 0),.bnot 10596,.bxor 10595 10597,.literal (BitVec.ofNat 32 3),.bxor 693 10599,.literal (BitVec.ofNat 32 0),.bnot 10601,.badd 10600 10602,.bnot 10603,.band 10598 10604,.bxor 10593 10605,.shr 10606 31,.literal (BitVec.ofNat 32 1),.bxor 10607 10608,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10610 10611,.band 10612 693]
theorem partExact163 : partRows163=WordField.rows actualModulus 10550 partOps163 := by
  simp only [partRows163,partOps163,WordField.rows,rows10550,rows10551,rows10552,rows10553,rows10554,rows10555,rows10556,rows10557,rows10558,rows10559,rows10560,rows10561,rows10562,rows10563,rows10564,rows10565,rows10566,rows10567,rows10568,rows10569,rows10570,rows10571,rows10572,rows10573,rows10574,rows10575,rows10576,rows10577,rows10578,rows10579,rows10580,rows10581,rows10582,rows10583,rows10584,rows10585,rows10586,rows10587,rows10588,rows10589,rows10590,rows10591,rows10592,rows10593,rows10594,rows10595,rows10596,rows10597,rows10598,rows10599,rows10600,rows10601,rows10602,rows10603,rows10604,rows10605,rows10606,rows10607,rows10608,rows10609,rows10610,rows10611,rows10612,rows10613,List.append_assoc,List.append_nil]
theorem partLength163 : partOps163.length=64 := by decide
theorem partStats163 : partRows163.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows163=332592 := by
  simp only [partRows163,List.length_append,MatrixRowBlocks.rows_weight_append,stats10550.1,stats10550.2,stats10551.1,stats10551.2,stats10552.1,stats10552.2,stats10553.1,stats10553.2,stats10554.1,stats10554.2,stats10555.1,stats10555.2,stats10556.1,stats10556.2,stats10557.1,stats10557.2,stats10558.1,stats10558.2,stats10559.1,stats10559.2,stats10560.1,stats10560.2,stats10561.1,stats10561.2,stats10562.1,stats10562.2,stats10563.1,stats10563.2,stats10564.1,stats10564.2,stats10565.1,stats10565.2,stats10566.1,stats10566.2,stats10567.1,stats10567.2,stats10568.1,stats10568.2,stats10569.1,stats10569.2,stats10570.1,stats10570.2,stats10571.1,stats10571.2,stats10572.1,stats10572.2,stats10573.1,stats10573.2,stats10574.1,stats10574.2,stats10575.1,stats10575.2,stats10576.1,stats10576.2,stats10577.1,stats10577.2,stats10578.1,stats10578.2,stats10579.1,stats10579.2,stats10580.1,stats10580.2,stats10581.1,stats10581.2,stats10582.1,stats10582.2,stats10583.1,stats10583.2,stats10584.1,stats10584.2,stats10585.1,stats10585.2,stats10586.1,stats10586.2,stats10587.1,stats10587.2,stats10588.1,stats10588.2,stats10589.1,stats10589.2,stats10590.1,stats10590.2,stats10591.1,stats10591.2,stats10592.1,stats10592.2,stats10593.1,stats10593.2,stats10594.1,stats10594.2,stats10595.1,stats10595.2,stats10596.1,stats10596.2,stats10597.1,stats10597.2,stats10598.1,stats10598.2,stats10599.1,stats10599.2,stats10600.1,stats10600.2,stats10601.1,stats10601.2,stats10602.1,stats10602.2,stats10603.1,stats10603.2,stats10604.1,stats10604.2,stats10605.1,stats10605.2,stats10606.1,stats10606.2,stats10607.1,stats10607.2,stats10608.1,stats10608.2,stats10609.1,stats10609.2,stats10610.1,stats10610.2,stats10611.1,stats10611.2,stats10612.1,stats10612.2,stats10613.1,stats10613.2]
  decide
end AuthenticatedBranchRoundCheckedRows
