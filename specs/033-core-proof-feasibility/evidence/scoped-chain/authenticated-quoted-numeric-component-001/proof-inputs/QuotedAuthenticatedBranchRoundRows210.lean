import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData211
import AuthenticatedBranchRoundInstructionMatrixData212
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13558 : actualRows13558=WordField.canonicalRows actualModulus 13558 (.bnot 13557) := by core033_kernel_decide
theorem stats13558 : actualRows13558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13558=6276 := by core033_kernel_decide
theorem rows13559 : actualRows13559=WordField.canonicalRows actualModulus 13559 (.band 13558 10489) := by core033_kernel_decide
theorem stats13559 : actualRows13559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13559=5124 := by core033_kernel_decide
theorem rows13560 : actualRows13560=WordField.canonicalRows actualModulus 13560 (.bxor 13533 13559) := by core033_kernel_decide
theorem stats13560 : actualRows13560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13560=7428 := by core033_kernel_decide
theorem rows13561 : actualRows13561=WordField.canonicalRows actualModulus 13561 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13561 : actualRows13561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13561=2964 := by core033_kernel_decide
theorem rows13562 : actualRows13562=WordField.canonicalRows actualModulus 13562 (.bxor 693 13561) := by core033_kernel_decide
theorem stats13562 : actualRows13562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13562=7428 := by core033_kernel_decide
theorem rows13563 : actualRows13563=WordField.canonicalRows actualModulus 13563 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13563 : actualRows13563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13563=2820 := by core033_kernel_decide
theorem rows13564 : actualRows13564=WordField.canonicalRows actualModulus 13564 (.bnot 13563) := by core033_kernel_decide
theorem stats13564 : actualRows13564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13564=6276 := by core033_kernel_decide
theorem rows13565 : actualRows13565=WordField.canonicalRows actualModulus 13565 (.band 13562 13564) := by core033_kernel_decide
theorem stats13565 : actualRows13565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13565=5124 := by core033_kernel_decide
theorem rows13566 : actualRows13566=WordField.canonicalRows actualModulus 13566 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13566 : actualRows13566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13566=2964 := by core033_kernel_decide
theorem rows13567 : actualRows13567=WordField.canonicalRows actualModulus 13567 (.bxor 693 13566) := by core033_kernel_decide
theorem stats13567 : actualRows13567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13567=7428 := by core033_kernel_decide
theorem rows13568 : actualRows13568=WordField.canonicalRows actualModulus 13568 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13568 : actualRows13568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13568=2820 := by core033_kernel_decide
theorem rows13569 : actualRows13569=WordField.canonicalRows actualModulus 13569 (.bnot 13568) := by core033_kernel_decide
theorem stats13569 : actualRows13569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13569=6276 := by core033_kernel_decide
theorem rows13570 : actualRows13570=WordField.canonicalRows actualModulus 13570 (.bxor 13567 13569) := by core033_kernel_decide
theorem stats13570 : actualRows13570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13570=7428 := by core033_kernel_decide
theorem rows13571 : actualRows13571=WordField.canonicalRows actualModulus 13571 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13571 : actualRows13571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13571=2964 := by core033_kernel_decide
theorem rows13572 : actualRows13572=WordField.canonicalRows actualModulus 13572 (.bxor 693 13571) := by core033_kernel_decide
theorem stats13572 : actualRows13572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13572=7428 := by core033_kernel_decide
theorem rows13573 : actualRows13573=WordField.canonicalRows actualModulus 13573 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13573 : actualRows13573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13573=2820 := by core033_kernel_decide
theorem rows13574 : actualRows13574=WordField.canonicalRows actualModulus 13574 (.bnot 13573) := by core033_kernel_decide
theorem stats13574 : actualRows13574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13574=6276 := by core033_kernel_decide
theorem rows13575 : actualRows13575=WordField.canonicalRows actualModulus 13575 (.badd 13572 13574) := by core033_kernel_decide
theorem stats13575 : actualRows13575.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13575=5388 := by core033_kernel_decide
theorem rows13576 : actualRows13576=WordField.canonicalRows actualModulus 13576 (.bnot 13575) := by core033_kernel_decide
theorem stats13576 : actualRows13576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13576=6276 := by core033_kernel_decide
theorem rows13577 : actualRows13577=WordField.canonicalRows actualModulus 13577 (.band 13570 13576) := by core033_kernel_decide
theorem stats13577 : actualRows13577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13577=5124 := by core033_kernel_decide
theorem rows13578 : actualRows13578=WordField.canonicalRows actualModulus 13578 (.bxor 13565 13577) := by core033_kernel_decide
theorem stats13578 : actualRows13578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13578=7428 := by core033_kernel_decide
theorem rows13579 : actualRows13579=WordField.canonicalRows actualModulus 13579 (.shr 13578 31) := by core033_kernel_decide
theorem stats13579 : actualRows13579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13579=2892 := by core033_kernel_decide
theorem rows13580 : actualRows13580=WordField.canonicalRows actualModulus 13580 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13580 : actualRows13580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13580=2892 := by core033_kernel_decide
theorem rows13581 : actualRows13581=WordField.canonicalRows actualModulus 13581 (.bxor 13579 13580) := by core033_kernel_decide
theorem stats13581 : actualRows13581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13581=7428 := by core033_kernel_decide
theorem rows13582 : actualRows13582=WordField.canonicalRows actualModulus 13582 (.bnot 13581) := by core033_kernel_decide
theorem stats13582 : actualRows13582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13582=6276 := by core033_kernel_decide
theorem rows13583 : actualRows13583=WordField.canonicalRows actualModulus 13583 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13583 : actualRows13583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13583=2892 := by core033_kernel_decide
theorem rows13584 : actualRows13584=WordField.canonicalRows actualModulus 13584 (.badd 13582 13583) := by core033_kernel_decide
theorem stats13584 : actualRows13584.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13584=5388 := by core033_kernel_decide
theorem rows13585 : actualRows13585=WordField.canonicalRows actualModulus 13585 (.band 13584 11071) := by core033_kernel_decide
theorem stats13585 : actualRows13585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13585=5124 := by core033_kernel_decide
theorem rows13586 : actualRows13586=WordField.canonicalRows actualModulus 13586 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13586 : actualRows13586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13586=2964 := by core033_kernel_decide
theorem rows13587 : actualRows13587=WordField.canonicalRows actualModulus 13587 (.bxor 693 13586) := by core033_kernel_decide
theorem stats13587 : actualRows13587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13587=7428 := by core033_kernel_decide
theorem rows13588 : actualRows13588=WordField.canonicalRows actualModulus 13588 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13588 : actualRows13588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13588=2820 := by core033_kernel_decide
theorem rows13589 : actualRows13589=WordField.canonicalRows actualModulus 13589 (.bnot 13588) := by core033_kernel_decide
theorem stats13589 : actualRows13589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13589=6276 := by core033_kernel_decide
theorem rows13590 : actualRows13590=WordField.canonicalRows actualModulus 13590 (.band 13587 13589) := by core033_kernel_decide
theorem stats13590 : actualRows13590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13590=5124 := by core033_kernel_decide
theorem rows13591 : actualRows13591=WordField.canonicalRows actualModulus 13591 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13591 : actualRows13591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13591=2964 := by core033_kernel_decide
theorem rows13592 : actualRows13592=WordField.canonicalRows actualModulus 13592 (.bxor 693 13591) := by core033_kernel_decide
theorem stats13592 : actualRows13592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13592=7428 := by core033_kernel_decide
theorem rows13593 : actualRows13593=WordField.canonicalRows actualModulus 13593 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13593 : actualRows13593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13593=2820 := by core033_kernel_decide
theorem rows13594 : actualRows13594=WordField.canonicalRows actualModulus 13594 (.bnot 13593) := by core033_kernel_decide
theorem stats13594 : actualRows13594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13594=6276 := by core033_kernel_decide
theorem rows13595 : actualRows13595=WordField.canonicalRows actualModulus 13595 (.bxor 13592 13594) := by core033_kernel_decide
theorem stats13595 : actualRows13595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13595=7428 := by core033_kernel_decide
theorem rows13596 : actualRows13596=WordField.canonicalRows actualModulus 13596 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13596 : actualRows13596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13596=2964 := by core033_kernel_decide
theorem rows13597 : actualRows13597=WordField.canonicalRows actualModulus 13597 (.bxor 693 13596) := by core033_kernel_decide
theorem stats13597 : actualRows13597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13597=7428 := by core033_kernel_decide
theorem rows13598 : actualRows13598=WordField.canonicalRows actualModulus 13598 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13598 : actualRows13598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13598=2820 := by core033_kernel_decide
theorem rows13599 : actualRows13599=WordField.canonicalRows actualModulus 13599 (.bnot 13598) := by core033_kernel_decide
theorem stats13599 : actualRows13599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13599=6276 := by core033_kernel_decide
theorem rows13600 : actualRows13600=WordField.canonicalRows actualModulus 13600 (.badd 13597 13599) := by core033_kernel_decide
theorem stats13600 : actualRows13600.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13600=5388 := by core033_kernel_decide
theorem rows13601 : actualRows13601=WordField.canonicalRows actualModulus 13601 (.bnot 13600) := by core033_kernel_decide
theorem stats13601 : actualRows13601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13601=6276 := by core033_kernel_decide
theorem rows13602 : actualRows13602=WordField.canonicalRows actualModulus 13602 (.band 13595 13601) := by core033_kernel_decide
theorem stats13602 : actualRows13602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13602=5124 := by core033_kernel_decide
theorem rows13603 : actualRows13603=WordField.canonicalRows actualModulus 13603 (.bxor 13590 13602) := by core033_kernel_decide
theorem stats13603 : actualRows13603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13603=7428 := by core033_kernel_decide
theorem rows13604 : actualRows13604=WordField.canonicalRows actualModulus 13604 (.shr 13603 31) := by core033_kernel_decide
theorem stats13604 : actualRows13604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13604=2892 := by core033_kernel_decide
theorem rows13605 : actualRows13605=WordField.canonicalRows actualModulus 13605 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13605 : actualRows13605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13605=2892 := by core033_kernel_decide
theorem rows13606 : actualRows13606=WordField.canonicalRows actualModulus 13606 (.bxor 13604 13605) := by core033_kernel_decide
theorem stats13606 : actualRows13606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13606=7428 := by core033_kernel_decide
theorem rows13607 : actualRows13607=WordField.canonicalRows actualModulus 13607 (.bnot 13606) := by core033_kernel_decide
theorem stats13607 : actualRows13607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13607=6276 := by core033_kernel_decide
theorem rows13608 : actualRows13608=WordField.canonicalRows actualModulus 13608 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13608 : actualRows13608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13608=2892 := by core033_kernel_decide
theorem rows13609 : actualRows13609=WordField.canonicalRows actualModulus 13609 (.badd 13607 13608) := by core033_kernel_decide
theorem stats13609 : actualRows13609.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13609=5388 := by core033_kernel_decide
theorem rows13610 : actualRows13610=WordField.canonicalRows actualModulus 13610 (.bnot 13609) := by core033_kernel_decide
theorem stats13610 : actualRows13610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13610=6276 := by core033_kernel_decide
theorem rows13611 : actualRows13611=WordField.canonicalRows actualModulus 13611 (.band 13610 10490) := by core033_kernel_decide
theorem stats13611 : actualRows13611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13611=5124 := by core033_kernel_decide
theorem rows13612 : actualRows13612=WordField.canonicalRows actualModulus 13612 (.bxor 13585 13611) := by core033_kernel_decide
theorem stats13612 : actualRows13612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13612=7428 := by core033_kernel_decide
theorem rows13613 : actualRows13613=WordField.canonicalRows actualModulus 13613 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13613 : actualRows13613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13613=2964 := by core033_kernel_decide
theorem rows13614 : actualRows13614=WordField.canonicalRows actualModulus 13614 (.bxor 693 13613) := by core033_kernel_decide
theorem stats13614 : actualRows13614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13614=7428 := by core033_kernel_decide
theorem rows13615 : actualRows13615=WordField.canonicalRows actualModulus 13615 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13615 : actualRows13615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13615=2820 := by core033_kernel_decide
theorem rows13616 : actualRows13616=WordField.canonicalRows actualModulus 13616 (.bnot 13615) := by core033_kernel_decide
theorem stats13616 : actualRows13616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13616=6276 := by core033_kernel_decide
theorem rows13617 : actualRows13617=WordField.canonicalRows actualModulus 13617 (.band 13614 13616) := by core033_kernel_decide
theorem stats13617 : actualRows13617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13617=5124 := by core033_kernel_decide
theorem rows13618 : actualRows13618=WordField.canonicalRows actualModulus 13618 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13618 : actualRows13618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13618=2964 := by core033_kernel_decide
theorem rows13619 : actualRows13619=WordField.canonicalRows actualModulus 13619 (.bxor 693 13618) := by core033_kernel_decide
theorem stats13619 : actualRows13619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13619=7428 := by core033_kernel_decide
theorem rows13620 : actualRows13620=WordField.canonicalRows actualModulus 13620 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13620 : actualRows13620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13620=2820 := by core033_kernel_decide
theorem rows13621 : actualRows13621=WordField.canonicalRows actualModulus 13621 (.bnot 13620) := by core033_kernel_decide
theorem stats13621 : actualRows13621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13621=6276 := by core033_kernel_decide
def partRows210 : List R1CS.Row := actualRows13558++actualRows13559++actualRows13560++actualRows13561++actualRows13562++actualRows13563++actualRows13564++actualRows13565++actualRows13566++actualRows13567++actualRows13568++actualRows13569++actualRows13570++actualRows13571++actualRows13572++actualRows13573++actualRows13574++actualRows13575++actualRows13576++actualRows13577++actualRows13578++actualRows13579++actualRows13580++actualRows13581++actualRows13582++actualRows13583++actualRows13584++actualRows13585++actualRows13586++actualRows13587++actualRows13588++actualRows13589++actualRows13590++actualRows13591++actualRows13592++actualRows13593++actualRows13594++actualRows13595++actualRows13596++actualRows13597++actualRows13598++actualRows13599++actualRows13600++actualRows13601++actualRows13602++actualRows13603++actualRows13604++actualRows13605++actualRows13606++actualRows13607++actualRows13608++actualRows13609++actualRows13610++actualRows13611++actualRows13612++actualRows13613++actualRows13614++actualRows13615++actualRows13616++actualRows13617++actualRows13618++actualRows13619++actualRows13620++actualRows13621
def partOps210 : List WordIR.Op := [.bnot 13557,.band 13558 10489,.bxor 13533 13559,.literal (BitVec.ofNat 32 3),.bxor 693 13561,.literal (BitVec.ofNat 32 0),.bnot 13563,.band 13562 13564,.literal (BitVec.ofNat 32 3),.bxor 693 13566,.literal (BitVec.ofNat 32 0),.bnot 13568,.bxor 13567 13569,.literal (BitVec.ofNat 32 3),.bxor 693 13571,.literal (BitVec.ofNat 32 0),.bnot 13573,.badd 13572 13574,.bnot 13575,.band 13570 13576,.bxor 13565 13577,.shr 13578 31,.literal (BitVec.ofNat 32 1),.bxor 13579 13580,.bnot 13581,.literal (BitVec.ofNat 32 1),.badd 13582 13583,.band 13584 11071,.literal (BitVec.ofNat 32 3),.bxor 693 13586,.literal (BitVec.ofNat 32 0),.bnot 13588,.band 13587 13589,.literal (BitVec.ofNat 32 3),.bxor 693 13591,.literal (BitVec.ofNat 32 0),.bnot 13593,.bxor 13592 13594,.literal (BitVec.ofNat 32 3),.bxor 693 13596,.literal (BitVec.ofNat 32 0),.bnot 13598,.badd 13597 13599,.bnot 13600,.band 13595 13601,.bxor 13590 13602,.shr 13603 31,.literal (BitVec.ofNat 32 1),.bxor 13604 13605,.bnot 13606,.literal (BitVec.ofNat 32 1),.badd 13607 13608,.bnot 13609,.band 13610 10490,.bxor 13585 13611,.literal (BitVec.ofNat 32 3),.bxor 693 13613,.literal (BitVec.ofNat 32 0),.bnot 13615,.band 13614 13616,.literal (BitVec.ofNat 32 3),.bxor 693 13618,.literal (BitVec.ofNat 32 0),.bnot 13620]
theorem partExact210 : partRows210=WordField.rows actualModulus 13558 partOps210 := by
  simp only [partRows210,partOps210,WordField.rows,rows13558,rows13559,rows13560,rows13561,rows13562,rows13563,rows13564,rows13565,rows13566,rows13567,rows13568,rows13569,rows13570,rows13571,rows13572,rows13573,rows13574,rows13575,rows13576,rows13577,rows13578,rows13579,rows13580,rows13581,rows13582,rows13583,rows13584,rows13585,rows13586,rows13587,rows13588,rows13589,rows13590,rows13591,rows13592,rows13593,rows13594,rows13595,rows13596,rows13597,rows13598,rows13599,rows13600,rows13601,rows13602,rows13603,rows13604,rows13605,rows13606,rows13607,rows13608,rows13609,rows13610,rows13611,rows13612,rows13613,rows13614,rows13615,rows13616,rows13617,rows13618,rows13619,rows13620,rows13621,List.append_assoc,List.append_nil]
theorem partLength210 : partOps210.length=64 := by decide
theorem partStats210 : partRows210.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows210=332880 := by
  simp only [partRows210,List.length_append,MatrixRowBlocks.rows_weight_append,stats13558.1,stats13558.2,stats13559.1,stats13559.2,stats13560.1,stats13560.2,stats13561.1,stats13561.2,stats13562.1,stats13562.2,stats13563.1,stats13563.2,stats13564.1,stats13564.2,stats13565.1,stats13565.2,stats13566.1,stats13566.2,stats13567.1,stats13567.2,stats13568.1,stats13568.2,stats13569.1,stats13569.2,stats13570.1,stats13570.2,stats13571.1,stats13571.2,stats13572.1,stats13572.2,stats13573.1,stats13573.2,stats13574.1,stats13574.2,stats13575.1,stats13575.2,stats13576.1,stats13576.2,stats13577.1,stats13577.2,stats13578.1,stats13578.2,stats13579.1,stats13579.2,stats13580.1,stats13580.2,stats13581.1,stats13581.2,stats13582.1,stats13582.2,stats13583.1,stats13583.2,stats13584.1,stats13584.2,stats13585.1,stats13585.2,stats13586.1,stats13586.2,stats13587.1,stats13587.2,stats13588.1,stats13588.2,stats13589.1,stats13589.2,stats13590.1,stats13590.2,stats13591.1,stats13591.2,stats13592.1,stats13592.2,stats13593.1,stats13593.2,stats13594.1,stats13594.2,stats13595.1,stats13595.2,stats13596.1,stats13596.2,stats13597.1,stats13597.2,stats13598.1,stats13598.2,stats13599.1,stats13599.2,stats13600.1,stats13600.2,stats13601.1,stats13601.2,stats13602.1,stats13602.2,stats13603.1,stats13603.2,stats13604.1,stats13604.2,stats13605.1,stats13605.2,stats13606.1,stats13606.2,stats13607.1,stats13607.2,stats13608.1,stats13608.2,stats13609.1,stats13609.2,stats13610.1,stats13610.2,stats13611.1,stats13611.2,stats13612.1,stats13612.2,stats13613.1,stats13613.2,stats13614.1,stats13614.2,stats13615.1,stats13615.2,stats13616.1,stats13616.2,stats13617.1,stats13617.2,stats13618.1,stats13618.2,stats13619.1,stats13619.2,stats13620.1,stats13620.2,stats13621.1,stats13621.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
