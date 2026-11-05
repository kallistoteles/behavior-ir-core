import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData10
import SharedFrameInstructionMatrixData11
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows683 : actualRows683=WordField.canonicalRows actualModulus 683 (.band 643 482) := by core033_kernel_decide
theorem stats683 : actualRows683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows683=5124 := by core033_kernel_decide
theorem rows684 : actualRows684=WordField.canonicalRows actualModulus 684 (.band 645 380) := by core033_kernel_decide
theorem stats684 : actualRows684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows684=5124 := by core033_kernel_decide
theorem rows685 : actualRows685=WordField.canonicalRows actualModulus 685 (.bxor 683 684) := by core033_kernel_decide
theorem stats685 : actualRows685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows685=7428 := by core033_kernel_decide
theorem rows686 : actualRows686=WordField.canonicalRows actualModulus 686 (.band 643 484) := by core033_kernel_decide
theorem stats686 : actualRows686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows686=5124 := by core033_kernel_decide
theorem rows687 : actualRows687=WordField.canonicalRows actualModulus 687 (.band 645 381) := by core033_kernel_decide
theorem stats687 : actualRows687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows687=5124 := by core033_kernel_decide
theorem rows688 : actualRows688=WordField.canonicalRows actualModulus 688 (.bxor 686 687) := by core033_kernel_decide
theorem stats688 : actualRows688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows688=7428 := by core033_kernel_decide
theorem rows689 : actualRows689=WordField.canonicalRows actualModulus 689 (.band 643 486) := by core033_kernel_decide
theorem stats689 : actualRows689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows689=5124 := by core033_kernel_decide
theorem rows690 : actualRows690=WordField.canonicalRows actualModulus 690 (.band 645 382) := by core033_kernel_decide
theorem stats690 : actualRows690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows690=5124 := by core033_kernel_decide
theorem rows691 : actualRows691=WordField.canonicalRows actualModulus 691 (.bxor 689 690) := by core033_kernel_decide
theorem stats691 : actualRows691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows691=7428 := by core033_kernel_decide
theorem rows692 : actualRows692=WordField.canonicalRows actualModulus 692 (.band 643 488) := by core033_kernel_decide
theorem stats692 : actualRows692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows692=5124 := by core033_kernel_decide
theorem rows693 : actualRows693=WordField.canonicalRows actualModulus 693 (.band 645 383) := by core033_kernel_decide
theorem stats693 : actualRows693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows693=5124 := by core033_kernel_decide
theorem rows694 : actualRows694=WordField.canonicalRows actualModulus 694 (.bxor 692 693) := by core033_kernel_decide
theorem stats694 : actualRows694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows694=7428 := by core033_kernel_decide
theorem rows695 : actualRows695=WordField.canonicalRows actualModulus 695 (.band 643 490) := by core033_kernel_decide
theorem stats695 : actualRows695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows695=5124 := by core033_kernel_decide
theorem rows696 : actualRows696=WordField.canonicalRows actualModulus 696 (.bxor 695 693) := by core033_kernel_decide
theorem stats696 : actualRows696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows696=7428 := by core033_kernel_decide
theorem rows697 : actualRows697=WordField.canonicalRows actualModulus 697 (.band 643 492) := by core033_kernel_decide
theorem stats697 : actualRows697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows697=5124 := by core033_kernel_decide
theorem rows698 : actualRows698=WordField.canonicalRows actualModulus 698 (.band 645 384) := by core033_kernel_decide
theorem stats698 : actualRows698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows698=5124 := by core033_kernel_decide
theorem rows699 : actualRows699=WordField.canonicalRows actualModulus 699 (.bxor 697 698) := by core033_kernel_decide
theorem stats699 : actualRows699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows699=7428 := by core033_kernel_decide
theorem rows700 : actualRows700=WordField.canonicalRows actualModulus 700 (.band 643 494) := by core033_kernel_decide
theorem stats700 : actualRows700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows700=5124 := by core033_kernel_decide
theorem rows701 : actualRows701=WordField.canonicalRows actualModulus 701 (.band 645 385) := by core033_kernel_decide
theorem stats701 : actualRows701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows701=5124 := by core033_kernel_decide
theorem rows702 : actualRows702=WordField.canonicalRows actualModulus 702 (.bxor 700 701) := by core033_kernel_decide
theorem stats702 : actualRows702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows702=7428 := by core033_kernel_decide
theorem rows703 : actualRows703=WordField.canonicalRows actualModulus 703 (.band 643 496) := by core033_kernel_decide
theorem stats703 : actualRows703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows703=5124 := by core033_kernel_decide
theorem rows704 : actualRows704=WordField.canonicalRows actualModulus 704 (.bxor 703 687) := by core033_kernel_decide
theorem stats704 : actualRows704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows704=7428 := by core033_kernel_decide
theorem rows705 : actualRows705=WordField.canonicalRows actualModulus 705 (.band 643 498) := by core033_kernel_decide
theorem stats705 : actualRows705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows705=5124 := by core033_kernel_decide
theorem rows706 : actualRows706=WordField.canonicalRows actualModulus 706 (.band 645 386) := by core033_kernel_decide
theorem stats706 : actualRows706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows706=5124 := by core033_kernel_decide
theorem rows707 : actualRows707=WordField.canonicalRows actualModulus 707 (.bxor 705 706) := by core033_kernel_decide
theorem stats707 : actualRows707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows707=7428 := by core033_kernel_decide
theorem rows708 : actualRows708=WordField.canonicalRows actualModulus 708 (.band 643 500) := by core033_kernel_decide
theorem stats708 : actualRows708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows708=5124 := by core033_kernel_decide
theorem rows709 : actualRows709=WordField.canonicalRows actualModulus 709 (.band 645 387) := by core033_kernel_decide
theorem stats709 : actualRows709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows709=5124 := by core033_kernel_decide
theorem rows710 : actualRows710=WordField.canonicalRows actualModulus 710 (.bxor 708 709) := by core033_kernel_decide
theorem stats710 : actualRows710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows710=7428 := by core033_kernel_decide
theorem rows711 : actualRows711=WordField.canonicalRows actualModulus 711 (.band 643 502) := by core033_kernel_decide
theorem stats711 : actualRows711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows711=5124 := by core033_kernel_decide
theorem rows712 : actualRows712=WordField.canonicalRows actualModulus 712 (.band 645 388) := by core033_kernel_decide
theorem stats712 : actualRows712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows712=5124 := by core033_kernel_decide
theorem rows713 : actualRows713=WordField.canonicalRows actualModulus 713 (.bxor 711 712) := by core033_kernel_decide
theorem stats713 : actualRows713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows713=7428 := by core033_kernel_decide
theorem rows714 : actualRows714=WordField.canonicalRows actualModulus 714 (.band 643 504) := by core033_kernel_decide
theorem stats714 : actualRows714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows714=5124 := by core033_kernel_decide
theorem rows715 : actualRows715=WordField.canonicalRows actualModulus 715 (.band 645 389) := by core033_kernel_decide
theorem stats715 : actualRows715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows715=5124 := by core033_kernel_decide
theorem rows716 : actualRows716=WordField.canonicalRows actualModulus 716 (.bxor 714 715) := by core033_kernel_decide
theorem stats716 : actualRows716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows716=7428 := by core033_kernel_decide
theorem rows717 : actualRows717=WordField.canonicalRows actualModulus 717 (.band 643 506) := by core033_kernel_decide
theorem stats717 : actualRows717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows717=5124 := by core033_kernel_decide
theorem rows718 : actualRows718=WordField.canonicalRows actualModulus 718 (.band 645 390) := by core033_kernel_decide
theorem stats718 : actualRows718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows718=5124 := by core033_kernel_decide
theorem rows719 : actualRows719=WordField.canonicalRows actualModulus 719 (.bxor 717 718) := by core033_kernel_decide
theorem stats719 : actualRows719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows719=7428 := by core033_kernel_decide
theorem rows720 : actualRows720=WordField.canonicalRows actualModulus 720 (.band 643 508) := by core033_kernel_decide
theorem stats720 : actualRows720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows720=5124 := by core033_kernel_decide
theorem rows721 : actualRows721=WordField.canonicalRows actualModulus 721 (.bxor 720 678) := by core033_kernel_decide
theorem stats721 : actualRows721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows721=7428 := by core033_kernel_decide
theorem rows722 : actualRows722=WordField.canonicalRows actualModulus 722 (.band 643 510) := by core033_kernel_decide
theorem stats722 : actualRows722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows722=5124 := by core033_kernel_decide
theorem rows723 : actualRows723=WordField.canonicalRows actualModulus 723 (.bxor 722 698) := by core033_kernel_decide
theorem stats723 : actualRows723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows723=7428 := by core033_kernel_decide
theorem rows724 : actualRows724=WordField.canonicalRows actualModulus 724 (.band 643 512) := by core033_kernel_decide
theorem stats724 : actualRows724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows724=5124 := by core033_kernel_decide
theorem rows725 : actualRows725=WordField.canonicalRows actualModulus 725 (.band 645 391) := by core033_kernel_decide
theorem stats725 : actualRows725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows725=5124 := by core033_kernel_decide
theorem rows726 : actualRows726=WordField.canonicalRows actualModulus 726 (.bxor 724 725) := by core033_kernel_decide
theorem stats726 : actualRows726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows726=7428 := by core033_kernel_decide
theorem rows727 : actualRows727=WordField.canonicalRows actualModulus 727 (.band 643 514) := by core033_kernel_decide
theorem stats727 : actualRows727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows727=5124 := by core033_kernel_decide
theorem rows728 : actualRows728=WordField.canonicalRows actualModulus 728 (.band 645 392) := by core033_kernel_decide
theorem stats728 : actualRows728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows728=5124 := by core033_kernel_decide
theorem rows729 : actualRows729=WordField.canonicalRows actualModulus 729 (.bxor 727 728) := by core033_kernel_decide
theorem stats729 : actualRows729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows729=7428 := by core033_kernel_decide
theorem rows730 : actualRows730=WordField.canonicalRows actualModulus 730 (.band 643 516) := by core033_kernel_decide
theorem stats730 : actualRows730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows730=5124 := by core033_kernel_decide
theorem rows731 : actualRows731=WordField.canonicalRows actualModulus 731 (.band 645 49) := by core033_kernel_decide
theorem stats731 : actualRows731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows731=5124 := by core033_kernel_decide
theorem rows732 : actualRows732=WordField.canonicalRows actualModulus 732 (.bxor 730 731) := by core033_kernel_decide
theorem stats732 : actualRows732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows732=7428 := by core033_kernel_decide
theorem rows733 : actualRows733=WordField.canonicalRows actualModulus 733 (.band 643 518) := by core033_kernel_decide
theorem stats733 : actualRows733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows733=5124 := by core033_kernel_decide
theorem rows734 : actualRows734=WordField.canonicalRows actualModulus 734 (.band 645 393) := by core033_kernel_decide
theorem stats734 : actualRows734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows734=5124 := by core033_kernel_decide
theorem rows735 : actualRows735=WordField.canonicalRows actualModulus 735 (.bxor 733 734) := by core033_kernel_decide
theorem stats735 : actualRows735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows735=7428 := by core033_kernel_decide
theorem rows736 : actualRows736=WordField.canonicalRows actualModulus 736 (.band 643 520) := by core033_kernel_decide
theorem stats736 : actualRows736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows736=5124 := by core033_kernel_decide
theorem rows737 : actualRows737=WordField.canonicalRows actualModulus 737 (.bxor 736 731) := by core033_kernel_decide
theorem stats737 : actualRows737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows737=7428 := by core033_kernel_decide
theorem rows738 : actualRows738=WordField.canonicalRows actualModulus 738 (.band 643 522) := by core033_kernel_decide
theorem stats738 : actualRows738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows738=5124 := by core033_kernel_decide
theorem rows739 : actualRows739=WordField.canonicalRows actualModulus 739 (.band 645 395) := by core033_kernel_decide
theorem stats739 : actualRows739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows739=5124 := by core033_kernel_decide
theorem rows740 : actualRows740=WordField.canonicalRows actualModulus 740 (.bxor 738 739) := by core033_kernel_decide
theorem stats740 : actualRows740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows740=7428 := by core033_kernel_decide
theorem rows741 : actualRows741=WordField.canonicalRows actualModulus 741 (.band 643 524) := by core033_kernel_decide
theorem stats741 : actualRows741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows741=5124 := by core033_kernel_decide
theorem rows742 : actualRows742=WordField.canonicalRows actualModulus 742 (.band 645 397) := by core033_kernel_decide
theorem stats742 : actualRows742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows742=5124 := by core033_kernel_decide
theorem rows743 : actualRows743=WordField.canonicalRows actualModulus 743 (.bxor 741 742) := by core033_kernel_decide
theorem stats743 : actualRows743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows743=7428 := by core033_kernel_decide
theorem rows744 : actualRows744=WordField.canonicalRows actualModulus 744 (.band 643 526) := by core033_kernel_decide
theorem stats744 : actualRows744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows744=5124 := by core033_kernel_decide
theorem rows745 : actualRows745=WordField.canonicalRows actualModulus 745 (.band 645 398) := by core033_kernel_decide
theorem stats745 : actualRows745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows745=5124 := by core033_kernel_decide
theorem rows746 : actualRows746=WordField.canonicalRows actualModulus 746 (.bxor 744 745) := by core033_kernel_decide
theorem stats746 : actualRows746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows746=7428 := by core033_kernel_decide
def partRows10 : List R1CS.Row := actualRows683++actualRows684++actualRows685++actualRows686++actualRows687++actualRows688++actualRows689++actualRows690++actualRows691++actualRows692++actualRows693++actualRows694++actualRows695++actualRows696++actualRows697++actualRows698++actualRows699++actualRows700++actualRows701++actualRows702++actualRows703++actualRows704++actualRows705++actualRows706++actualRows707++actualRows708++actualRows709++actualRows710++actualRows711++actualRows712++actualRows713++actualRows714++actualRows715++actualRows716++actualRows717++actualRows718++actualRows719++actualRows720++actualRows721++actualRows722++actualRows723++actualRows724++actualRows725++actualRows726++actualRows727++actualRows728++actualRows729++actualRows730++actualRows731++actualRows732++actualRows733++actualRows734++actualRows735++actualRows736++actualRows737++actualRows738++actualRows739++actualRows740++actualRows741++actualRows742++actualRows743++actualRows744++actualRows745++actualRows746
def partOps10 : List WordIR.Op := [.band 643 482,.band 645 380,.bxor 683 684,.band 643 484,.band 645 381,.bxor 686 687,.band 643 486,.band 645 382,.bxor 689 690,.band 643 488,.band 645 383,.bxor 692 693,.band 643 490,.bxor 695 693,.band 643 492,.band 645 384,.bxor 697 698,.band 643 494,.band 645 385,.bxor 700 701,.band 643 496,.bxor 703 687,.band 643 498,.band 645 386,.bxor 705 706,.band 643 500,.band 645 387,.bxor 708 709,.band 643 502,.band 645 388,.bxor 711 712,.band 643 504,.band 645 389,.bxor 714 715,.band 643 506,.band 645 390,.bxor 717 718,.band 643 508,.bxor 720 678,.band 643 510,.bxor 722 698,.band 643 512,.band 645 391,.bxor 724 725,.band 643 514,.band 645 392,.bxor 727 728,.band 643 516,.band 645 49,.bxor 730 731,.band 643 518,.band 645 393,.bxor 733 734,.band 643 520,.bxor 736 731,.band 643 522,.band 645 395,.bxor 738 739,.band 643 524,.band 645 397,.bxor 741 742,.band 643 526,.band 645 398,.bxor 744 745]
theorem partExact10 : partRows10=WordField.rows actualModulus 683 partOps10 := by
  simp only [partRows10,partOps10,WordField.rows,rows683,rows684,rows685,rows686,rows687,rows688,rows689,rows690,rows691,rows692,rows693,rows694,rows695,rows696,rows697,rows698,rows699,rows700,rows701,rows702,rows703,rows704,rows705,rows706,rows707,rows708,rows709,rows710,rows711,rows712,rows713,rows714,rows715,rows716,rows717,rows718,rows719,rows720,rows721,rows722,rows723,rows724,rows725,rows726,rows727,rows728,rows729,rows730,rows731,rows732,rows733,rows734,rows735,rows736,rows737,rows738,rows739,rows740,rows741,rows742,rows743,rows744,rows745,rows746,List.append_assoc,List.append_nil]
theorem partLength10 : partOps10.length=64 := by decide
theorem partStats10 : partRows10.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows10=380928 := by
  simp only [partRows10,List.length_append,MatrixRowBlocks.rows_weight_append,stats683.1,stats683.2,stats684.1,stats684.2,stats685.1,stats685.2,stats686.1,stats686.2,stats687.1,stats687.2,stats688.1,stats688.2,stats689.1,stats689.2,stats690.1,stats690.2,stats691.1,stats691.2,stats692.1,stats692.2,stats693.1,stats693.2,stats694.1,stats694.2,stats695.1,stats695.2,stats696.1,stats696.2,stats697.1,stats697.2,stats698.1,stats698.2,stats699.1,stats699.2,stats700.1,stats700.2,stats701.1,stats701.2,stats702.1,stats702.2,stats703.1,stats703.2,stats704.1,stats704.2,stats705.1,stats705.2,stats706.1,stats706.2,stats707.1,stats707.2,stats708.1,stats708.2,stats709.1,stats709.2,stats710.1,stats710.2,stats711.1,stats711.2,stats712.1,stats712.2,stats713.1,stats713.2,stats714.1,stats714.2,stats715.1,stats715.2,stats716.1,stats716.2,stats717.1,stats717.2,stats718.1,stats718.2,stats719.1,stats719.2,stats720.1,stats720.2,stats721.1,stats721.2,stats722.1,stats722.2,stats723.1,stats723.2,stats724.1,stats724.2,stats725.1,stats725.2,stats726.1,stats726.2,stats727.1,stats727.2,stats728.1,stats728.2,stats729.1,stats729.2,stats730.1,stats730.2,stats731.1,stats731.2,stats732.1,stats732.2,stats733.1,stats733.2,stats734.1,stats734.2,stats735.1,stats735.2,stats736.1,stats736.2,stats737.1,stats737.2,stats738.1,stats738.2,stats739.1,stats739.2,stats740.1,stats740.2,stats741.1,stats741.2,stats742.1,stats742.2,stats743.1,stats743.2,stats744.1,stats744.2,stats745.1,stats745.2,stats746.1,stats746.2]
  decide
end SharedFrameCheckedRows
