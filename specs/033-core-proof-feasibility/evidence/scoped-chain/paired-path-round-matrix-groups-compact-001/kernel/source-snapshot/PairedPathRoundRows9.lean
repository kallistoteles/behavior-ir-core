import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData10
import PairedPathRoundInstructionMatrixData11
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows672 : actualRows672=WordField.canonicalRows actualModulus 672 (.bnot 605) := by core033_kernel_decide
theorem stats672 : actualRows672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows672=6276 := by core033_kernel_decide
theorem rows673 : actualRows673=WordField.canonicalRows actualModulus 673 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats673 : actualRows673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows673=2892 := by core033_kernel_decide
theorem rows674 : actualRows674=WordField.canonicalRows actualModulus 674 (.badd 672 673) := by core033_kernel_decide
theorem stats674 : actualRows674.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows674=5388 := by core033_kernel_decide
theorem rows675 : actualRows675=WordField.canonicalRows actualModulus 675 (.band 674 6) := by core033_kernel_decide
theorem stats675 : actualRows675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows675=5124 := by core033_kernel_decide
theorem rows676 : actualRows676=WordField.canonicalRows actualModulus 676 (.bnot 605) := by core033_kernel_decide
theorem stats676 : actualRows676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows676=6276 := by core033_kernel_decide
theorem rows677 : actualRows677=WordField.canonicalRows actualModulus 677 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats677 : actualRows677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows677=2892 := by core033_kernel_decide
theorem rows678 : actualRows678=WordField.canonicalRows actualModulus 678 (.badd 676 677) := by core033_kernel_decide
theorem stats678 : actualRows678.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows678=5388 := by core033_kernel_decide
theorem rows679 : actualRows679=WordField.canonicalRows actualModulus 679 (.bnot 678) := by core033_kernel_decide
theorem stats679 : actualRows679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows679=6276 := by core033_kernel_decide
theorem rows680 : actualRows680=WordField.canonicalRows actualModulus 680 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats680 : actualRows680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows680=2820 := by core033_kernel_decide
theorem rows681 : actualRows681=WordField.canonicalRows actualModulus 681 (.band 679 680) := by core033_kernel_decide
theorem stats681 : actualRows681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows681=5124 := by core033_kernel_decide
theorem rows682 : actualRows682=WordField.canonicalRows actualModulus 682 (.bxor 675 681) := by core033_kernel_decide
theorem stats682 : actualRows682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows682=7428 := by core033_kernel_decide
theorem rows683 : actualRows683=WordField.canonicalRows actualModulus 683 (.bnot 605) := by core033_kernel_decide
theorem stats683 : actualRows683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows683=6276 := by core033_kernel_decide
theorem rows684 : actualRows684=WordField.canonicalRows actualModulus 684 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats684 : actualRows684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows684=2892 := by core033_kernel_decide
theorem rows685 : actualRows685=WordField.canonicalRows actualModulus 685 (.badd 683 684) := by core033_kernel_decide
theorem stats685 : actualRows685.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows685=5388 := by core033_kernel_decide
theorem rows686 : actualRows686=WordField.canonicalRows actualModulus 686 (.band 685 7) := by core033_kernel_decide
theorem stats686 : actualRows686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows686=5124 := by core033_kernel_decide
theorem rows687 : actualRows687=WordField.canonicalRows actualModulus 687 (.bnot 605) := by core033_kernel_decide
theorem stats687 : actualRows687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows687=6276 := by core033_kernel_decide
theorem rows688 : actualRows688=WordField.canonicalRows actualModulus 688 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats688 : actualRows688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows688=2892 := by core033_kernel_decide
theorem rows689 : actualRows689=WordField.canonicalRows actualModulus 689 (.badd 687 688) := by core033_kernel_decide
theorem stats689 : actualRows689.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows689=5388 := by core033_kernel_decide
theorem rows690 : actualRows690=WordField.canonicalRows actualModulus 690 (.bnot 689) := by core033_kernel_decide
theorem stats690 : actualRows690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows690=6276 := by core033_kernel_decide
theorem rows691 : actualRows691=WordField.canonicalRows actualModulus 691 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats691 : actualRows691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows691=2820 := by core033_kernel_decide
theorem rows692 : actualRows692=WordField.canonicalRows actualModulus 692 (.band 690 691) := by core033_kernel_decide
theorem stats692 : actualRows692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows692=5124 := by core033_kernel_decide
theorem rows693 : actualRows693=WordField.canonicalRows actualModulus 693 (.bxor 686 692) := by core033_kernel_decide
theorem stats693 : actualRows693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows693=7428 := by core033_kernel_decide
theorem rows694 : actualRows694=WordField.canonicalRows actualModulus 694 (.bnot 605) := by core033_kernel_decide
theorem stats694 : actualRows694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows694=6276 := by core033_kernel_decide
theorem rows695 : actualRows695=WordField.canonicalRows actualModulus 695 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats695 : actualRows695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows695=2892 := by core033_kernel_decide
theorem rows696 : actualRows696=WordField.canonicalRows actualModulus 696 (.badd 694 695) := by core033_kernel_decide
theorem stats696 : actualRows696.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows696=5388 := by core033_kernel_decide
theorem rows697 : actualRows697=WordField.canonicalRows actualModulus 697 (.band 696 8) := by core033_kernel_decide
theorem stats697 : actualRows697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows697=5124 := by core033_kernel_decide
theorem rows698 : actualRows698=WordField.canonicalRows actualModulus 698 (.bnot 605) := by core033_kernel_decide
theorem stats698 : actualRows698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows698=6276 := by core033_kernel_decide
theorem rows699 : actualRows699=WordField.canonicalRows actualModulus 699 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats699 : actualRows699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows699=2892 := by core033_kernel_decide
theorem rows700 : actualRows700=WordField.canonicalRows actualModulus 700 (.badd 698 699) := by core033_kernel_decide
theorem stats700 : actualRows700.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows700=5388 := by core033_kernel_decide
theorem rows701 : actualRows701=WordField.canonicalRows actualModulus 701 (.bnot 700) := by core033_kernel_decide
theorem stats701 : actualRows701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows701=6276 := by core033_kernel_decide
theorem rows702 : actualRows702=WordField.canonicalRows actualModulus 702 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats702 : actualRows702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows702=2820 := by core033_kernel_decide
theorem rows703 : actualRows703=WordField.canonicalRows actualModulus 703 (.band 701 702) := by core033_kernel_decide
theorem stats703 : actualRows703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows703=5124 := by core033_kernel_decide
theorem rows704 : actualRows704=WordField.canonicalRows actualModulus 704 (.bxor 697 703) := by core033_kernel_decide
theorem stats704 : actualRows704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows704=7428 := by core033_kernel_decide
theorem rows705 : actualRows705=WordField.canonicalRows actualModulus 705 (.bnot 605) := by core033_kernel_decide
theorem stats705 : actualRows705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows705=6276 := by core033_kernel_decide
theorem rows706 : actualRows706=WordField.canonicalRows actualModulus 706 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats706 : actualRows706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows706=2892 := by core033_kernel_decide
theorem rows707 : actualRows707=WordField.canonicalRows actualModulus 707 (.badd 705 706) := by core033_kernel_decide
theorem stats707 : actualRows707.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows707=5388 := by core033_kernel_decide
theorem rows708 : actualRows708=WordField.canonicalRows actualModulus 708 (.band 707 9) := by core033_kernel_decide
theorem stats708 : actualRows708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows708=5124 := by core033_kernel_decide
theorem rows709 : actualRows709=WordField.canonicalRows actualModulus 709 (.bnot 605) := by core033_kernel_decide
theorem stats709 : actualRows709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows709=6276 := by core033_kernel_decide
theorem rows710 : actualRows710=WordField.canonicalRows actualModulus 710 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats710 : actualRows710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows710=2892 := by core033_kernel_decide
theorem rows711 : actualRows711=WordField.canonicalRows actualModulus 711 (.badd 709 710) := by core033_kernel_decide
theorem stats711 : actualRows711.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows711=5388 := by core033_kernel_decide
theorem rows712 : actualRows712=WordField.canonicalRows actualModulus 712 (.bnot 711) := by core033_kernel_decide
theorem stats712 : actualRows712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows712=6276 := by core033_kernel_decide
theorem rows713 : actualRows713=WordField.canonicalRows actualModulus 713 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats713 : actualRows713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows713=2820 := by core033_kernel_decide
theorem rows714 : actualRows714=WordField.canonicalRows actualModulus 714 (.band 712 713) := by core033_kernel_decide
theorem stats714 : actualRows714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows714=5124 := by core033_kernel_decide
theorem rows715 : actualRows715=WordField.canonicalRows actualModulus 715 (.bxor 708 714) := by core033_kernel_decide
theorem stats715 : actualRows715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows715=7428 := by core033_kernel_decide
theorem rows716 : actualRows716=WordField.canonicalRows actualModulus 716 (.bnot 605) := by core033_kernel_decide
theorem stats716 : actualRows716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows716=6276 := by core033_kernel_decide
theorem rows717 : actualRows717=WordField.canonicalRows actualModulus 717 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats717 : actualRows717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows717=2892 := by core033_kernel_decide
theorem rows718 : actualRows718=WordField.canonicalRows actualModulus 718 (.badd 716 717) := by core033_kernel_decide
theorem stats718 : actualRows718.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows718=5388 := by core033_kernel_decide
theorem rows719 : actualRows719=WordField.canonicalRows actualModulus 719 (.band 718 10) := by core033_kernel_decide
theorem stats719 : actualRows719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows719=5124 := by core033_kernel_decide
theorem rows720 : actualRows720=WordField.canonicalRows actualModulus 720 (.bnot 605) := by core033_kernel_decide
theorem stats720 : actualRows720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows720=6276 := by core033_kernel_decide
theorem rows721 : actualRows721=WordField.canonicalRows actualModulus 721 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats721 : actualRows721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows721=2892 := by core033_kernel_decide
theorem rows722 : actualRows722=WordField.canonicalRows actualModulus 722 (.badd 720 721) := by core033_kernel_decide
theorem stats722 : actualRows722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows722=5388 := by core033_kernel_decide
theorem rows723 : actualRows723=WordField.canonicalRows actualModulus 723 (.bnot 722) := by core033_kernel_decide
theorem stats723 : actualRows723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows723=6276 := by core033_kernel_decide
theorem rows724 : actualRows724=WordField.canonicalRows actualModulus 724 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats724 : actualRows724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows724=2820 := by core033_kernel_decide
theorem rows725 : actualRows725=WordField.canonicalRows actualModulus 725 (.band 723 724) := by core033_kernel_decide
theorem stats725 : actualRows725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows725=5124 := by core033_kernel_decide
theorem rows726 : actualRows726=WordField.canonicalRows actualModulus 726 (.bxor 719 725) := by core033_kernel_decide
theorem stats726 : actualRows726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows726=7428 := by core033_kernel_decide
theorem rows727 : actualRows727=WordField.canonicalRows actualModulus 727 (.bnot 605) := by core033_kernel_decide
theorem stats727 : actualRows727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows727=6276 := by core033_kernel_decide
theorem rows728 : actualRows728=WordField.canonicalRows actualModulus 728 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats728 : actualRows728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows728=2892 := by core033_kernel_decide
theorem rows729 : actualRows729=WordField.canonicalRows actualModulus 729 (.badd 727 728) := by core033_kernel_decide
theorem stats729 : actualRows729.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows729=5388 := by core033_kernel_decide
theorem rows730 : actualRows730=WordField.canonicalRows actualModulus 730 (.band 729 452) := by core033_kernel_decide
theorem stats730 : actualRows730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows730=5124 := by core033_kernel_decide
theorem rows731 : actualRows731=WordField.canonicalRows actualModulus 731 (.bnot 605) := by core033_kernel_decide
theorem stats731 : actualRows731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows731=6276 := by core033_kernel_decide
theorem rows732 : actualRows732=WordField.canonicalRows actualModulus 732 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats732 : actualRows732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows732=2892 := by core033_kernel_decide
theorem rows733 : actualRows733=WordField.canonicalRows actualModulus 733 (.badd 731 732) := by core033_kernel_decide
theorem stats733 : actualRows733.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows733=5388 := by core033_kernel_decide
theorem rows734 : actualRows734=WordField.canonicalRows actualModulus 734 (.bnot 733) := by core033_kernel_decide
theorem stats734 : actualRows734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows734=6276 := by core033_kernel_decide
theorem rows735 : actualRows735=WordField.canonicalRows actualModulus 735 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats735 : actualRows735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows735=2820 := by core033_kernel_decide
def partRows9 : List R1CS.Row := actualRows672++actualRows673++actualRows674++actualRows675++actualRows676++actualRows677++actualRows678++actualRows679++actualRows680++actualRows681++actualRows682++actualRows683++actualRows684++actualRows685++actualRows686++actualRows687++actualRows688++actualRows689++actualRows690++actualRows691++actualRows692++actualRows693++actualRows694++actualRows695++actualRows696++actualRows697++actualRows698++actualRows699++actualRows700++actualRows701++actualRows702++actualRows703++actualRows704++actualRows705++actualRows706++actualRows707++actualRows708++actualRows709++actualRows710++actualRows711++actualRows712++actualRows713++actualRows714++actualRows715++actualRows716++actualRows717++actualRows718++actualRows719++actualRows720++actualRows721++actualRows722++actualRows723++actualRows724++actualRows725++actualRows726++actualRows727++actualRows728++actualRows729++actualRows730++actualRows731++actualRows732++actualRows733++actualRows734++actualRows735
def partOps9 : List WordIR.Op := [.bnot 605,.literal (BitVec.ofNat 32 1),.badd 672 673,.band 674 6,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 676 677,.bnot 678,.literal (BitVec.ofNat 32 0),.band 679 680,.bxor 675 681,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 683 684,.band 685 7,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 687 688,.bnot 689,.literal (BitVec.ofNat 32 0),.band 690 691,.bxor 686 692,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 694 695,.band 696 8,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 698 699,.bnot 700,.literal (BitVec.ofNat 32 0),.band 701 702,.bxor 697 703,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 705 706,.band 707 9,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 709 710,.bnot 711,.literal (BitVec.ofNat 32 0),.band 712 713,.bxor 708 714,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 716 717,.band 718 10,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 720 721,.bnot 722,.literal (BitVec.ofNat 32 0),.band 723 724,.bxor 719 725,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 727 728,.band 729 452,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 731 732,.bnot 733,.literal (BitVec.ofNat 32 0)]
theorem partExact9 : partRows9=WordField.rows actualModulus 672 partOps9 := by
  simp only [partRows9,partOps9,WordField.rows,rows672,rows673,rows674,rows675,rows676,rows677,rows678,rows679,rows680,rows681,rows682,rows683,rows684,rows685,rows686,rows687,rows688,rows689,rows690,rows691,rows692,rows693,rows694,rows695,rows696,rows697,rows698,rows699,rows700,rows701,rows702,rows703,rows704,rows705,rows706,rows707,rows708,rows709,rows710,rows711,rows712,rows713,rows714,rows715,rows716,rows717,rows718,rows719,rows720,rows721,rows722,rows723,rows724,rows725,rows726,rows727,rows728,rows729,rows730,rows731,rows732,rows733,rows734,rows735,List.append_assoc,List.append_nil]
theorem partLength9 : partOps9.length=64 := by decide
theorem partStats9 : partRows9.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows9=322752 := by
  simp only [partRows9,List.length_append,MatrixRowBlocks.rows_weight_append,stats672.1,stats672.2,stats673.1,stats673.2,stats674.1,stats674.2,stats675.1,stats675.2,stats676.1,stats676.2,stats677.1,stats677.2,stats678.1,stats678.2,stats679.1,stats679.2,stats680.1,stats680.2,stats681.1,stats681.2,stats682.1,stats682.2,stats683.1,stats683.2,stats684.1,stats684.2,stats685.1,stats685.2,stats686.1,stats686.2,stats687.1,stats687.2,stats688.1,stats688.2,stats689.1,stats689.2,stats690.1,stats690.2,stats691.1,stats691.2,stats692.1,stats692.2,stats693.1,stats693.2,stats694.1,stats694.2,stats695.1,stats695.2,stats696.1,stats696.2,stats697.1,stats697.2,stats698.1,stats698.2,stats699.1,stats699.2,stats700.1,stats700.2,stats701.1,stats701.2,stats702.1,stats702.2,stats703.1,stats703.2,stats704.1,stats704.2,stats705.1,stats705.2,stats706.1,stats706.2,stats707.1,stats707.2,stats708.1,stats708.2,stats709.1,stats709.2,stats710.1,stats710.2,stats711.1,stats711.2,stats712.1,stats712.2,stats713.1,stats713.2,stats714.1,stats714.2,stats715.1,stats715.2,stats716.1,stats716.2,stats717.1,stats717.2,stats718.1,stats718.2,stats719.1,stats719.2,stats720.1,stats720.2,stats721.1,stats721.2,stats722.1,stats722.2,stats723.1,stats723.2,stats724.1,stats724.2,stats725.1,stats725.2,stats726.1,stats726.2,stats727.1,stats727.2,stats728.1,stats728.2,stats729.1,stats729.2,stats730.1,stats730.2,stats731.1,stats731.2,stats732.1,stats732.2,stats733.1,stats733.2,stats734.1,stats734.2,stats735.1,stats735.2]
  decide
end PairedPathRoundCheckedRows
