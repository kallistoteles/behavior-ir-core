import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData10
import ParentBranchInstructionMatrixData11
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows666 : actualRows666=WordField.canonicalRows actualModulus 666 (.bxor 18 20) := by core033_kernel_decide
theorem stats666 : actualRows666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows666=7428 := by core033_kernel_decide
theorem rows667 : actualRows667=WordField.canonicalRows actualModulus 667 (.badd 18 20) := by core033_kernel_decide
theorem stats667 : actualRows667.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows667=5388 := by core033_kernel_decide
theorem rows668 : actualRows668=WordField.canonicalRows actualModulus 668 (.bnot 667) := by core033_kernel_decide
theorem stats668 : actualRows668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows668=6276 := by core033_kernel_decide
theorem rows669 : actualRows669=WordField.canonicalRows actualModulus 669 (.band 666 668) := by core033_kernel_decide
theorem stats669 : actualRows669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows669=5124 := by core033_kernel_decide
theorem rows670 : actualRows670=WordField.canonicalRows actualModulus 670 (.bxor 665 669) := by core033_kernel_decide
theorem stats670 : actualRows670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows670=7428 := by core033_kernel_decide
theorem rows671 : actualRows671=WordField.canonicalRows actualModulus 671 (.shr 670 31) := by core033_kernel_decide
theorem stats671 : actualRows671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows671=2892 := by core033_kernel_decide
theorem rows672 : actualRows672=WordField.canonicalRows actualModulus 672 (.badd 664 671) := by core033_kernel_decide
theorem stats672 : actualRows672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows672=5388 := by core033_kernel_decide
theorem rows673 : actualRows673=WordField.canonicalRows actualModulus 673 (.bxor 672 35) := by core033_kernel_decide
theorem stats673 : actualRows673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows673=7428 := by core033_kernel_decide
theorem rows674 : actualRows674=WordField.canonicalRows actualModulus 674 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats674 : actualRows674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows674=2820 := by core033_kernel_decide
theorem rows675 : actualRows675=WordField.canonicalRows actualModulus 675 (.bnot 674) := by core033_kernel_decide
theorem stats675 : actualRows675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows675=6276 := by core033_kernel_decide
theorem rows676 : actualRows676=WordField.canonicalRows actualModulus 676 (.badd 673 675) := by core033_kernel_decide
theorem stats676 : actualRows676.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows676=5388 := by core033_kernel_decide
theorem rows677 : actualRows677=WordField.canonicalRows actualModulus 677 (.bnot 676) := by core033_kernel_decide
theorem stats677 : actualRows677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows677=6276 := by core033_kernel_decide
theorem rows678 : actualRows678=WordField.canonicalRows actualModulus 678 (.band 663 677) := by core033_kernel_decide
theorem stats678 : actualRows678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows678=5124 := by core033_kernel_decide
theorem rows679 : actualRows679=WordField.canonicalRows actualModulus 679 (.bxor 650 678) := by core033_kernel_decide
theorem stats679 : actualRows679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows679=7428 := by core033_kernel_decide
theorem rows680 : actualRows680=WordField.canonicalRows actualModulus 680 (.shr 679 31) := by core033_kernel_decide
theorem stats680 : actualRows680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows680=2892 := by core033_kernel_decide
theorem rows681 : actualRows681=WordField.canonicalRows actualModulus 681 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats681 : actualRows681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows681=2892 := by core033_kernel_decide
theorem rows682 : actualRows682=WordField.canonicalRows actualModulus 682 (.bxor 680 681) := by core033_kernel_decide
theorem stats682 : actualRows682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows682=7428 := by core033_kernel_decide
theorem rows683 : actualRows683=WordField.canonicalRows actualModulus 683 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats683 : actualRows683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows683=2820 := by core033_kernel_decide
theorem rows684 : actualRows684=WordField.canonicalRows actualModulus 684 (.bnot 683) := by core033_kernel_decide
theorem stats684 : actualRows684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows684=6276 := by core033_kernel_decide
theorem rows685 : actualRows685=WordField.canonicalRows actualModulus 685 (.band 19 684) := by core033_kernel_decide
theorem stats685 : actualRows685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows685=5124 := by core033_kernel_decide
theorem rows686 : actualRows686=WordField.canonicalRows actualModulus 686 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats686 : actualRows686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows686=2820 := by core033_kernel_decide
theorem rows687 : actualRows687=WordField.canonicalRows actualModulus 687 (.bnot 686) := by core033_kernel_decide
theorem stats687 : actualRows687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows687=6276 := by core033_kernel_decide
theorem rows688 : actualRows688=WordField.canonicalRows actualModulus 688 (.bxor 19 687) := by core033_kernel_decide
theorem stats688 : actualRows688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows688=7428 := by core033_kernel_decide
theorem rows689 : actualRows689=WordField.canonicalRows actualModulus 689 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats689 : actualRows689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows689=2820 := by core033_kernel_decide
theorem rows690 : actualRows690=WordField.canonicalRows actualModulus 690 (.bnot 689) := by core033_kernel_decide
theorem stats690 : actualRows690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows690=6276 := by core033_kernel_decide
theorem rows691 : actualRows691=WordField.canonicalRows actualModulus 691 (.badd 19 690) := by core033_kernel_decide
theorem stats691 : actualRows691.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows691=5388 := by core033_kernel_decide
theorem rows692 : actualRows692=WordField.canonicalRows actualModulus 692 (.bnot 691) := by core033_kernel_decide
theorem stats692 : actualRows692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows692=6276 := by core033_kernel_decide
theorem rows693 : actualRows693=WordField.canonicalRows actualModulus 693 (.band 688 692) := by core033_kernel_decide
theorem stats693 : actualRows693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows693=5124 := by core033_kernel_decide
theorem rows694 : actualRows694=WordField.canonicalRows actualModulus 694 (.bxor 685 693) := by core033_kernel_decide
theorem stats694 : actualRows694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows694=7428 := by core033_kernel_decide
theorem rows695 : actualRows695=WordField.canonicalRows actualModulus 695 (.shr 694 31) := by core033_kernel_decide
theorem stats695 : actualRows695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows695=2892 := by core033_kernel_decide
theorem rows696 : actualRows696=WordField.canonicalRows actualModulus 696 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats696 : actualRows696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows696=2892 := by core033_kernel_decide
theorem rows697 : actualRows697=WordField.canonicalRows actualModulus 697 (.bxor 695 696) := by core033_kernel_decide
theorem stats697 : actualRows697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows697=7428 := by core033_kernel_decide
theorem rows698 : actualRows698=WordField.canonicalRows actualModulus 698 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats698 : actualRows698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows698=2892 := by core033_kernel_decide
theorem rows699 : actualRows699=WordField.canonicalRows actualModulus 699 (.bnot 698) := by core033_kernel_decide
theorem stats699 : actualRows699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows699=6276 := by core033_kernel_decide
theorem rows700 : actualRows700=WordField.canonicalRows actualModulus 700 (.band 18 699) := by core033_kernel_decide
theorem stats700 : actualRows700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows700=5124 := by core033_kernel_decide
theorem rows701 : actualRows701=WordField.canonicalRows actualModulus 701 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats701 : actualRows701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows701=2892 := by core033_kernel_decide
theorem rows702 : actualRows702=WordField.canonicalRows actualModulus 702 (.bnot 701) := by core033_kernel_decide
theorem stats702 : actualRows702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows702=6276 := by core033_kernel_decide
theorem rows703 : actualRows703=WordField.canonicalRows actualModulus 703 (.bxor 18 702) := by core033_kernel_decide
theorem stats703 : actualRows703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows703=7428 := by core033_kernel_decide
theorem rows704 : actualRows704=WordField.canonicalRows actualModulus 704 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats704 : actualRows704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows704=2892 := by core033_kernel_decide
theorem rows705 : actualRows705=WordField.canonicalRows actualModulus 705 (.bnot 704) := by core033_kernel_decide
theorem stats705 : actualRows705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows705=6276 := by core033_kernel_decide
theorem rows706 : actualRows706=WordField.canonicalRows actualModulus 706 (.badd 18 705) := by core033_kernel_decide
theorem stats706 : actualRows706.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows706=5388 := by core033_kernel_decide
theorem rows707 : actualRows707=WordField.canonicalRows actualModulus 707 (.bnot 706) := by core033_kernel_decide
theorem stats707 : actualRows707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows707=6276 := by core033_kernel_decide
theorem rows708 : actualRows708=WordField.canonicalRows actualModulus 708 (.band 703 707) := by core033_kernel_decide
theorem stats708 : actualRows708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows708=5124 := by core033_kernel_decide
theorem rows709 : actualRows709=WordField.canonicalRows actualModulus 709 (.bxor 700 708) := by core033_kernel_decide
theorem stats709 : actualRows709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows709=7428 := by core033_kernel_decide
theorem rows710 : actualRows710=WordField.canonicalRows actualModulus 710 (.shr 709 31) := by core033_kernel_decide
theorem stats710 : actualRows710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows710=2892 := by core033_kernel_decide
theorem rows711 : actualRows711=WordField.canonicalRows actualModulus 711 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats711 : actualRows711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows711=2892 := by core033_kernel_decide
theorem rows712 : actualRows712=WordField.canonicalRows actualModulus 712 (.bxor 710 711) := by core033_kernel_decide
theorem stats712 : actualRows712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows712=7428 := by core033_kernel_decide
theorem rows713 : actualRows713=WordField.canonicalRows actualModulus 713 (.band 697 712) := by core033_kernel_decide
theorem stats713 : actualRows713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows713=5124 := by core033_kernel_decide
theorem rows714 : actualRows714=WordField.canonicalRows actualModulus 714 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats714 : actualRows714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows714=2820 := by core033_kernel_decide
theorem rows715 : actualRows715=WordField.canonicalRows actualModulus 715 (.bnot 714) := by core033_kernel_decide
theorem stats715 : actualRows715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows715=6276 := by core033_kernel_decide
theorem rows716 : actualRows716=WordField.canonicalRows actualModulus 716 (.band 21 715) := by core033_kernel_decide
theorem stats716 : actualRows716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows716=5124 := by core033_kernel_decide
theorem rows717 : actualRows717=WordField.canonicalRows actualModulus 717 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats717 : actualRows717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows717=2820 := by core033_kernel_decide
theorem rows718 : actualRows718=WordField.canonicalRows actualModulus 718 (.bnot 717) := by core033_kernel_decide
theorem stats718 : actualRows718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows718=6276 := by core033_kernel_decide
theorem rows719 : actualRows719=WordField.canonicalRows actualModulus 719 (.bxor 21 718) := by core033_kernel_decide
theorem stats719 : actualRows719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows719=7428 := by core033_kernel_decide
theorem rows720 : actualRows720=WordField.canonicalRows actualModulus 720 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats720 : actualRows720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows720=2820 := by core033_kernel_decide
theorem rows721 : actualRows721=WordField.canonicalRows actualModulus 721 (.bnot 720) := by core033_kernel_decide
theorem stats721 : actualRows721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows721=6276 := by core033_kernel_decide
theorem rows722 : actualRows722=WordField.canonicalRows actualModulus 722 (.badd 21 721) := by core033_kernel_decide
theorem stats722 : actualRows722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows722=5388 := by core033_kernel_decide
theorem rows723 : actualRows723=WordField.canonicalRows actualModulus 723 (.bnot 722) := by core033_kernel_decide
theorem stats723 : actualRows723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows723=6276 := by core033_kernel_decide
theorem rows724 : actualRows724=WordField.canonicalRows actualModulus 724 (.band 719 723) := by core033_kernel_decide
theorem stats724 : actualRows724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows724=5124 := by core033_kernel_decide
theorem rows725 : actualRows725=WordField.canonicalRows actualModulus 725 (.bxor 716 724) := by core033_kernel_decide
theorem stats725 : actualRows725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows725=7428 := by core033_kernel_decide
theorem rows726 : actualRows726=WordField.canonicalRows actualModulus 726 (.shr 725 31) := by core033_kernel_decide
theorem stats726 : actualRows726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows726=2892 := by core033_kernel_decide
theorem rows727 : actualRows727=WordField.canonicalRows actualModulus 727 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats727 : actualRows727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows727=2892 := by core033_kernel_decide
theorem rows728 : actualRows728=WordField.canonicalRows actualModulus 728 (.bxor 726 727) := by core033_kernel_decide
theorem stats728 : actualRows728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows728=7428 := by core033_kernel_decide
theorem rows729 : actualRows729=WordField.canonicalRows actualModulus 729 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats729 : actualRows729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows729=2892 := by core033_kernel_decide
def partRows10 : List R1CS.Row := actualRows666++actualRows667++actualRows668++actualRows669++actualRows670++actualRows671++actualRows672++actualRows673++actualRows674++actualRows675++actualRows676++actualRows677++actualRows678++actualRows679++actualRows680++actualRows681++actualRows682++actualRows683++actualRows684++actualRows685++actualRows686++actualRows687++actualRows688++actualRows689++actualRows690++actualRows691++actualRows692++actualRows693++actualRows694++actualRows695++actualRows696++actualRows697++actualRows698++actualRows699++actualRows700++actualRows701++actualRows702++actualRows703++actualRows704++actualRows705++actualRows706++actualRows707++actualRows708++actualRows709++actualRows710++actualRows711++actualRows712++actualRows713++actualRows714++actualRows715++actualRows716++actualRows717++actualRows718++actualRows719++actualRows720++actualRows721++actualRows722++actualRows723++actualRows724++actualRows725++actualRows726++actualRows727++actualRows728++actualRows729
def partOps10 : List WordIR.Op := [.bxor 18 20,.badd 18 20,.bnot 667,.band 666 668,.bxor 665 669,.shr 670 31,.badd 664 671,.bxor 672 35,.literal (BitVec.ofNat 32 0),.bnot 674,.badd 673 675,.bnot 676,.band 663 677,.bxor 650 678,.shr 679 31,.literal (BitVec.ofNat 32 1),.bxor 680 681,.literal (BitVec.ofNat 32 0),.bnot 683,.band 19 684,.literal (BitVec.ofNat 32 0),.bnot 686,.bxor 19 687,.literal (BitVec.ofNat 32 0),.bnot 689,.badd 19 690,.bnot 691,.band 688 692,.bxor 685 693,.shr 694 31,.literal (BitVec.ofNat 32 1),.bxor 695 696,.literal (BitVec.ofNat 32 1048576),.bnot 698,.band 18 699,.literal (BitVec.ofNat 32 1048576),.bnot 701,.bxor 18 702,.literal (BitVec.ofNat 32 1048576),.bnot 704,.badd 18 705,.bnot 706,.band 703 707,.bxor 700 708,.shr 709 31,.literal (BitVec.ofNat 32 1),.bxor 710 711,.band 697 712,.literal (BitVec.ofNat 32 0),.bnot 714,.band 21 715,.literal (BitVec.ofNat 32 0),.bnot 717,.bxor 21 718,.literal (BitVec.ofNat 32 0),.bnot 720,.badd 21 721,.bnot 722,.band 719 723,.bxor 716 724,.shr 725 31,.literal (BitVec.ofNat 32 1),.bxor 726 727,.literal (BitVec.ofNat 32 1048576)]
theorem partExact10 : partRows10=WordField.rows actualModulus 666 partOps10 := by
  simp only [partRows10,partOps10,WordField.rows,rows666,rows667,rows668,rows669,rows670,rows671,rows672,rows673,rows674,rows675,rows676,rows677,rows678,rows679,rows680,rows681,rows682,rows683,rows684,rows685,rows686,rows687,rows688,rows689,rows690,rows691,rows692,rows693,rows694,rows695,rows696,rows697,rows698,rows699,rows700,rows701,rows702,rows703,rows704,rows705,rows706,rows707,rows708,rows709,rows710,rows711,rows712,rows713,rows714,rows715,rows716,rows717,rows718,rows719,rows720,rows721,rows722,rows723,rows724,rows725,rows726,rows727,rows728,rows729,List.append_assoc,List.append_nil]
theorem partLength10 : partOps10.length=64 := by decide
theorem partStats10 : partRows10.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows10=333912 := by
  simp only [partRows10,List.length_append,MatrixRowBlocks.rows_weight_append,stats666.1,stats666.2,stats667.1,stats667.2,stats668.1,stats668.2,stats669.1,stats669.2,stats670.1,stats670.2,stats671.1,stats671.2,stats672.1,stats672.2,stats673.1,stats673.2,stats674.1,stats674.2,stats675.1,stats675.2,stats676.1,stats676.2,stats677.1,stats677.2,stats678.1,stats678.2,stats679.1,stats679.2,stats680.1,stats680.2,stats681.1,stats681.2,stats682.1,stats682.2,stats683.1,stats683.2,stats684.1,stats684.2,stats685.1,stats685.2,stats686.1,stats686.2,stats687.1,stats687.2,stats688.1,stats688.2,stats689.1,stats689.2,stats690.1,stats690.2,stats691.1,stats691.2,stats692.1,stats692.2,stats693.1,stats693.2,stats694.1,stats694.2,stats695.1,stats695.2,stats696.1,stats696.2,stats697.1,stats697.2,stats698.1,stats698.2,stats699.1,stats699.2,stats700.1,stats700.2,stats701.1,stats701.2,stats702.1,stats702.2,stats703.1,stats703.2,stats704.1,stats704.2,stats705.1,stats705.2,stats706.1,stats706.2,stats707.1,stats707.2,stats708.1,stats708.2,stats709.1,stats709.2,stats710.1,stats710.2,stats711.1,stats711.2,stats712.1,stats712.2,stats713.1,stats713.2,stats714.1,stats714.2,stats715.1,stats715.2,stats716.1,stats716.2,stats717.1,stats717.2,stats718.1,stats718.2,stats719.1,stats719.2,stats720.1,stats720.2,stats721.1,stats721.2,stats722.1,stats722.2,stats723.1,stats723.2,stats724.1,stats724.2,stats725.1,stats725.2,stats726.1,stats726.2,stats727.1,stats727.2,stats728.1,stats728.2,stats729.1,stats729.2]
  decide
end ParentBranchCheckedRows
