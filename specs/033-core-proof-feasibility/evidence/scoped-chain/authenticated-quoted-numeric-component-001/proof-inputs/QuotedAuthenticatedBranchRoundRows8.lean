import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData9
import AuthenticatedBranchRoundInstructionMatrixData10
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows630 : actualRows630=WordField.canonicalRows actualModulus 630 (.bnot 629) := by core033_kernel_decide
theorem stats630 : actualRows630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows630=6276 := by core033_kernel_decide
theorem rows631 : actualRows631=WordField.canonicalRows actualModulus 631 (.band 624 630) := by core033_kernel_decide
theorem stats631 : actualRows631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows631=5124 := by core033_kernel_decide
theorem rows632 : actualRows632=WordField.canonicalRows actualModulus 632 (.bxor 619 631) := by core033_kernel_decide
theorem stats632 : actualRows632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows632=7428 := by core033_kernel_decide
theorem rows633 : actualRows633=WordField.canonicalRows actualModulus 633 (.shr 632 31) := by core033_kernel_decide
theorem stats633 : actualRows633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows633=2892 := by core033_kernel_decide
theorem rows634 : actualRows634=WordField.canonicalRows actualModulus 634 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats634 : actualRows634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows634=2892 := by core033_kernel_decide
theorem rows635 : actualRows635=WordField.canonicalRows actualModulus 635 (.bxor 633 634) := by core033_kernel_decide
theorem stats635 : actualRows635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows635=7428 := by core033_kernel_decide
theorem rows636 : actualRows636=WordField.canonicalRows actualModulus 636 (.bxor 614 635) := by core033_kernel_decide
theorem stats636 : actualRows636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows636=7428 := by core033_kernel_decide
theorem rows637 : actualRows637=WordField.canonicalRows actualModulus 637 (.bxor 571 636) := by core033_kernel_decide
theorem stats637 : actualRows637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows637=7428 := by core033_kernel_decide
theorem rows638 : actualRows638=WordField.canonicalRows actualModulus 638 (.bnot 182) := by core033_kernel_decide
theorem stats638 : actualRows638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows638=6276 := by core033_kernel_decide
theorem rows639 : actualRows639=WordField.canonicalRows actualModulus 639 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats639 : actualRows639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows639=2892 := by core033_kernel_decide
theorem rows640 : actualRows640=WordField.canonicalRows actualModulus 640 (.badd 638 639) := by core033_kernel_decide
theorem stats640 : actualRows640.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows640=5388 := by core033_kernel_decide
theorem rows641 : actualRows641=WordField.canonicalRows actualModulus 641 (.bnot 377) := by core033_kernel_decide
theorem stats641 : actualRows641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows641=6276 := by core033_kernel_decide
theorem rows642 : actualRows642=WordField.canonicalRows actualModulus 642 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats642 : actualRows642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows642=2892 := by core033_kernel_decide
theorem rows643 : actualRows643=WordField.canonicalRows actualModulus 643 (.badd 641 642) := by core033_kernel_decide
theorem stats643 : actualRows643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows643=5388 := by core033_kernel_decide
theorem rows644 : actualRows644=WordField.canonicalRows actualModulus 644 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats644 : actualRows644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows644=2964 := by core033_kernel_decide
theorem rows645 : actualRows645=WordField.canonicalRows actualModulus 645 (.band 643 644) := by core033_kernel_decide
theorem stats645 : actualRows645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows645=5124 := by core033_kernel_decide
theorem rows646 : actualRows646=WordField.canonicalRows actualModulus 646 (.bnot 377) := by core033_kernel_decide
theorem stats646 : actualRows646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows646=6276 := by core033_kernel_decide
theorem rows647 : actualRows647=WordField.canonicalRows actualModulus 647 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats647 : actualRows647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows647=2892 := by core033_kernel_decide
theorem rows648 : actualRows648=WordField.canonicalRows actualModulus 648 (.badd 646 647) := by core033_kernel_decide
theorem stats648 : actualRows648.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows648=5388 := by core033_kernel_decide
theorem rows649 : actualRows649=WordField.canonicalRows actualModulus 649 (.bnot 648) := by core033_kernel_decide
theorem stats649 : actualRows649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows649=6276 := by core033_kernel_decide
theorem rows650 : actualRows650=WordField.canonicalRows actualModulus 650 (.bnot 312) := by core033_kernel_decide
theorem stats650 : actualRows650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows650=6276 := by core033_kernel_decide
theorem rows651 : actualRows651=WordField.canonicalRows actualModulus 651 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats651 : actualRows651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows651=2892 := by core033_kernel_decide
theorem rows652 : actualRows652=WordField.canonicalRows actualModulus 652 (.badd 650 651) := by core033_kernel_decide
theorem stats652 : actualRows652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows652=5388 := by core033_kernel_decide
theorem rows653 : actualRows653=WordField.canonicalRows actualModulus 653 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats653 : actualRows653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows653=2892 := by core033_kernel_decide
theorem rows654 : actualRows654=WordField.canonicalRows actualModulus 654 (.band 652 653) := by core033_kernel_decide
theorem stats654 : actualRows654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows654=5124 := by core033_kernel_decide
theorem rows655 : actualRows655=WordField.canonicalRows actualModulus 655 (.bnot 312) := by core033_kernel_decide
theorem stats655 : actualRows655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows655=6276 := by core033_kernel_decide
theorem rows656 : actualRows656=WordField.canonicalRows actualModulus 656 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats656 : actualRows656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows656=2892 := by core033_kernel_decide
theorem rows657 : actualRows657=WordField.canonicalRows actualModulus 657 (.badd 655 656) := by core033_kernel_decide
theorem stats657 : actualRows657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows657=5388 := by core033_kernel_decide
theorem rows658 : actualRows658=WordField.canonicalRows actualModulus 658 (.bnot 657) := by core033_kernel_decide
theorem stats658 : actualRows658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows658=6276 := by core033_kernel_decide
theorem rows659 : actualRows659=WordField.canonicalRows actualModulus 659 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats659 : actualRows659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows659=2892 := by core033_kernel_decide
theorem rows660 : actualRows660=WordField.canonicalRows actualModulus 660 (.band 658 659) := by core033_kernel_decide
theorem stats660 : actualRows660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows660=5124 := by core033_kernel_decide
theorem rows661 : actualRows661=WordField.canonicalRows actualModulus 661 (.bxor 654 660) := by core033_kernel_decide
theorem stats661 : actualRows661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows661=7428 := by core033_kernel_decide
theorem rows662 : actualRows662=WordField.canonicalRows actualModulus 662 (.band 649 661) := by core033_kernel_decide
theorem stats662 : actualRows662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows662=5124 := by core033_kernel_decide
theorem rows663 : actualRows663=WordField.canonicalRows actualModulus 663 (.bxor 645 662) := by core033_kernel_decide
theorem stats663 : actualRows663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows663=7428 := by core033_kernel_decide
theorem rows664 : actualRows664=WordField.canonicalRows actualModulus 664 (.band 640 663) := by core033_kernel_decide
theorem stats664 : actualRows664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows664=5124 := by core033_kernel_decide
theorem rows665 : actualRows665=WordField.canonicalRows actualModulus 665 (.bnot 182) := by core033_kernel_decide
theorem stats665 : actualRows665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows665=6276 := by core033_kernel_decide
theorem rows666 : actualRows666=WordField.canonicalRows actualModulus 666 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats666 : actualRows666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows666=2892 := by core033_kernel_decide
theorem rows667 : actualRows667=WordField.canonicalRows actualModulus 667 (.badd 665 666) := by core033_kernel_decide
theorem stats667 : actualRows667.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows667=5388 := by core033_kernel_decide
theorem rows668 : actualRows668=WordField.canonicalRows actualModulus 668 (.bnot 667) := by core033_kernel_decide
theorem stats668 : actualRows668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows668=6276 := by core033_kernel_decide
theorem rows669 : actualRows669=WordField.canonicalRows actualModulus 669 (.bnot 377) := by core033_kernel_decide
theorem stats669 : actualRows669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows669=6276 := by core033_kernel_decide
theorem rows670 : actualRows670=WordField.canonicalRows actualModulus 670 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats670 : actualRows670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows670=2892 := by core033_kernel_decide
theorem rows671 : actualRows671=WordField.canonicalRows actualModulus 671 (.badd 669 670) := by core033_kernel_decide
theorem stats671 : actualRows671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows671=5388 := by core033_kernel_decide
theorem rows672 : actualRows672=WordField.canonicalRows actualModulus 672 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats672 : actualRows672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows672=2964 := by core033_kernel_decide
theorem rows673 : actualRows673=WordField.canonicalRows actualModulus 673 (.band 671 672) := by core033_kernel_decide
theorem stats673 : actualRows673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows673=5124 := by core033_kernel_decide
theorem rows674 : actualRows674=WordField.canonicalRows actualModulus 674 (.bnot 377) := by core033_kernel_decide
theorem stats674 : actualRows674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows674=6276 := by core033_kernel_decide
theorem rows675 : actualRows675=WordField.canonicalRows actualModulus 675 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats675 : actualRows675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows675=2892 := by core033_kernel_decide
theorem rows676 : actualRows676=WordField.canonicalRows actualModulus 676 (.badd 674 675) := by core033_kernel_decide
theorem stats676 : actualRows676.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows676=5388 := by core033_kernel_decide
theorem rows677 : actualRows677=WordField.canonicalRows actualModulus 677 (.bnot 676) := by core033_kernel_decide
theorem stats677 : actualRows677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows677=6276 := by core033_kernel_decide
theorem rows678 : actualRows678=WordField.canonicalRows actualModulus 678 (.bnot 312) := by core033_kernel_decide
theorem stats678 : actualRows678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows678=6276 := by core033_kernel_decide
theorem rows679 : actualRows679=WordField.canonicalRows actualModulus 679 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats679 : actualRows679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows679=2892 := by core033_kernel_decide
theorem rows680 : actualRows680=WordField.canonicalRows actualModulus 680 (.badd 678 679) := by core033_kernel_decide
theorem stats680 : actualRows680.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows680=5388 := by core033_kernel_decide
theorem rows681 : actualRows681=WordField.canonicalRows actualModulus 681 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats681 : actualRows681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows681=2892 := by core033_kernel_decide
theorem rows682 : actualRows682=WordField.canonicalRows actualModulus 682 (.band 680 681) := by core033_kernel_decide
theorem stats682 : actualRows682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows682=5124 := by core033_kernel_decide
theorem rows683 : actualRows683=WordField.canonicalRows actualModulus 683 (.bnot 312) := by core033_kernel_decide
theorem stats683 : actualRows683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows683=6276 := by core033_kernel_decide
theorem rows684 : actualRows684=WordField.canonicalRows actualModulus 684 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats684 : actualRows684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows684=2892 := by core033_kernel_decide
theorem rows685 : actualRows685=WordField.canonicalRows actualModulus 685 (.badd 683 684) := by core033_kernel_decide
theorem stats685 : actualRows685.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows685=5388 := by core033_kernel_decide
theorem rows686 : actualRows686=WordField.canonicalRows actualModulus 686 (.bnot 685) := by core033_kernel_decide
theorem stats686 : actualRows686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows686=6276 := by core033_kernel_decide
theorem rows687 : actualRows687=WordField.canonicalRows actualModulus 687 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats687 : actualRows687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows687=2892 := by core033_kernel_decide
theorem rows688 : actualRows688=WordField.canonicalRows actualModulus 688 (.band 686 687) := by core033_kernel_decide
theorem stats688 : actualRows688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows688=5124 := by core033_kernel_decide
theorem rows689 : actualRows689=WordField.canonicalRows actualModulus 689 (.bxor 682 688) := by core033_kernel_decide
theorem stats689 : actualRows689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows689=7428 := by core033_kernel_decide
theorem rows690 : actualRows690=WordField.canonicalRows actualModulus 690 (.band 677 689) := by core033_kernel_decide
theorem stats690 : actualRows690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows690=5124 := by core033_kernel_decide
theorem rows691 : actualRows691=WordField.canonicalRows actualModulus 691 (.bxor 673 690) := by core033_kernel_decide
theorem stats691 : actualRows691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows691=7428 := by core033_kernel_decide
theorem rows692 : actualRows692=WordField.canonicalRows actualModulus 692 (.band 668 691) := by core033_kernel_decide
theorem stats692 : actualRows692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows692=5124 := by core033_kernel_decide
theorem rows693 : actualRows693=WordField.canonicalRows actualModulus 693 (.bxor 664 692) := by core033_kernel_decide
theorem stats693 : actualRows693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows693=7428 := by core033_kernel_decide
def partRows8 : List R1CS.Row := actualRows630++actualRows631++actualRows632++actualRows633++actualRows634++actualRows635++actualRows636++actualRows637++actualRows638++actualRows639++actualRows640++actualRows641++actualRows642++actualRows643++actualRows644++actualRows645++actualRows646++actualRows647++actualRows648++actualRows649++actualRows650++actualRows651++actualRows652++actualRows653++actualRows654++actualRows655++actualRows656++actualRows657++actualRows658++actualRows659++actualRows660++actualRows661++actualRows662++actualRows663++actualRows664++actualRows665++actualRows666++actualRows667++actualRows668++actualRows669++actualRows670++actualRows671++actualRows672++actualRows673++actualRows674++actualRows675++actualRows676++actualRows677++actualRows678++actualRows679++actualRows680++actualRows681++actualRows682++actualRows683++actualRows684++actualRows685++actualRows686++actualRows687++actualRows688++actualRows689++actualRows690++actualRows691++actualRows692++actualRows693
def partOps8 : List WordIR.Op := [.bnot 629,.band 624 630,.bxor 619 631,.shr 632 31,.literal (BitVec.ofNat 32 1),.bxor 633 634,.bxor 614 635,.bxor 571 636,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 638 639,.bnot 377,.literal (BitVec.ofNat 32 1),.badd 641 642,.literal (BitVec.ofNat 32 3),.band 643 644,.bnot 377,.literal (BitVec.ofNat 32 1),.badd 646 647,.bnot 648,.bnot 312,.literal (BitVec.ofNat 32 1),.badd 650 651,.literal (BitVec.ofNat 32 2),.band 652 653,.bnot 312,.literal (BitVec.ofNat 32 1),.badd 655 656,.bnot 657,.literal (BitVec.ofNat 32 1),.band 658 659,.bxor 654 660,.band 649 661,.bxor 645 662,.band 640 663,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 665 666,.bnot 667,.bnot 377,.literal (BitVec.ofNat 32 1),.badd 669 670,.literal (BitVec.ofNat 32 3),.band 671 672,.bnot 377,.literal (BitVec.ofNat 32 1),.badd 674 675,.bnot 676,.bnot 312,.literal (BitVec.ofNat 32 1),.badd 678 679,.literal (BitVec.ofNat 32 2),.band 680 681,.bnot 312,.literal (BitVec.ofNat 32 1),.badd 683 684,.bnot 685,.literal (BitVec.ofNat 32 1),.band 686 687,.bxor 682 688,.band 677 689,.bxor 673 690,.band 668 691,.bxor 664 692]
theorem partExact8 : partRows8=WordField.rows actualModulus 630 partOps8 := by
  simp only [partRows8,partOps8,WordField.rows,rows630,rows631,rows632,rows633,rows634,rows635,rows636,rows637,rows638,rows639,rows640,rows641,rows642,rows643,rows644,rows645,rows646,rows647,rows648,rows649,rows650,rows651,rows652,rows653,rows654,rows655,rows656,rows657,rows658,rows659,rows660,rows661,rows662,rows663,rows664,rows665,rows666,rows667,rows668,rows669,rows670,rows671,rows672,rows673,rows674,rows675,rows676,rows677,rows678,rows679,rows680,rows681,rows682,rows683,rows684,rows685,rows686,rows687,rows688,rows689,rows690,rows691,rows692,rows693,List.append_assoc,List.append_nil]
theorem partLength8 : partOps8.length=64 := by decide
theorem partStats8 : partRows8.length=2186 ∧ MatrixRowBlocks.rowsWeight partRows8=329712 := by
  simp only [partRows8,List.length_append,MatrixRowBlocks.rows_weight_append,stats630.1,stats630.2,stats631.1,stats631.2,stats632.1,stats632.2,stats633.1,stats633.2,stats634.1,stats634.2,stats635.1,stats635.2,stats636.1,stats636.2,stats637.1,stats637.2,stats638.1,stats638.2,stats639.1,stats639.2,stats640.1,stats640.2,stats641.1,stats641.2,stats642.1,stats642.2,stats643.1,stats643.2,stats644.1,stats644.2,stats645.1,stats645.2,stats646.1,stats646.2,stats647.1,stats647.2,stats648.1,stats648.2,stats649.1,stats649.2,stats650.1,stats650.2,stats651.1,stats651.2,stats652.1,stats652.2,stats653.1,stats653.2,stats654.1,stats654.2,stats655.1,stats655.2,stats656.1,stats656.2,stats657.1,stats657.2,stats658.1,stats658.2,stats659.1,stats659.2,stats660.1,stats660.2,stats661.1,stats661.2,stats662.1,stats662.2,stats663.1,stats663.2,stats664.1,stats664.2,stats665.1,stats665.2,stats666.1,stats666.2,stats667.1,stats667.2,stats668.1,stats668.2,stats669.1,stats669.2,stats670.1,stats670.2,stats671.1,stats671.2,stats672.1,stats672.2,stats673.1,stats673.2,stats674.1,stats674.2,stats675.1,stats675.2,stats676.1,stats676.2,stats677.1,stats677.2,stats678.1,stats678.2,stats679.1,stats679.2,stats680.1,stats680.2,stats681.1,stats681.2,stats682.1,stats682.2,stats683.1,stats683.2,stats684.1,stats684.2,stats685.1,stats685.2,stats686.1,stats686.2,stats687.1,stats687.2,stats688.1,stats688.2,stats689.1,stats689.2,stats690.1,stats690.2,stats691.1,stats691.2,stats692.1,stats692.2,stats693.1,stats693.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
