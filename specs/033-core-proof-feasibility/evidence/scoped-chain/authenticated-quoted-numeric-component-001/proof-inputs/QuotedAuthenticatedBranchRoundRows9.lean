import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData10
import AuthenticatedBranchRoundInstructionMatrixData11
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows694 : actualRows694=WordField.canonicalRows actualModulus 694 (.bnot 182) := by core033_kernel_decide
theorem stats694 : actualRows694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows694=6276 := by core033_kernel_decide
theorem rows695 : actualRows695=WordField.canonicalRows actualModulus 695 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats695 : actualRows695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows695=2892 := by core033_kernel_decide
theorem rows696 : actualRows696=WordField.canonicalRows actualModulus 696 (.badd 694 695) := by core033_kernel_decide
theorem stats696 : actualRows696.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows696=5388 := by core033_kernel_decide
theorem rows697 : actualRows697=WordField.canonicalRows actualModulus 697 (.band 696 1) := by core033_kernel_decide
theorem stats697 : actualRows697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows697=5124 := by core033_kernel_decide
theorem rows698 : actualRows698=WordField.canonicalRows actualModulus 698 (.bnot 182) := by core033_kernel_decide
theorem stats698 : actualRows698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows698=6276 := by core033_kernel_decide
theorem rows699 : actualRows699=WordField.canonicalRows actualModulus 699 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats699 : actualRows699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows699=2892 := by core033_kernel_decide
theorem rows700 : actualRows700=WordField.canonicalRows actualModulus 700 (.badd 698 699) := by core033_kernel_decide
theorem stats700 : actualRows700.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows700=5388 := by core033_kernel_decide
theorem rows701 : actualRows701=WordField.canonicalRows actualModulus 701 (.bnot 700) := by core033_kernel_decide
theorem stats701 : actualRows701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows701=6276 := by core033_kernel_decide
theorem rows702 : actualRows702=WordField.canonicalRows actualModulus 702 (.band 701 1) := by core033_kernel_decide
theorem stats702 : actualRows702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows702=5124 := by core033_kernel_decide
theorem rows703 : actualRows703=WordField.canonicalRows actualModulus 703 (.bxor 697 702) := by core033_kernel_decide
theorem stats703 : actualRows703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows703=7428 := by core033_kernel_decide
theorem rows704 : actualRows704=WordField.canonicalRows actualModulus 704 (.bnot 182) := by core033_kernel_decide
theorem stats704 : actualRows704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows704=6276 := by core033_kernel_decide
theorem rows705 : actualRows705=WordField.canonicalRows actualModulus 705 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats705 : actualRows705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows705=2892 := by core033_kernel_decide
theorem rows706 : actualRows706=WordField.canonicalRows actualModulus 706 (.badd 704 705) := by core033_kernel_decide
theorem stats706 : actualRows706.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows706=5388 := by core033_kernel_decide
theorem rows707 : actualRows707=WordField.canonicalRows actualModulus 707 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats707 : actualRows707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows707=5124 := by core033_kernel_decide
theorem rows708 : actualRows708=WordField.canonicalRows actualModulus 708 (.badd 2 707) := by core033_kernel_decide
theorem stats708 : actualRows708.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows708=5388 := by core033_kernel_decide
theorem rows709 : actualRows709=WordField.canonicalRows actualModulus 709 (.band 706 708) := by core033_kernel_decide
theorem stats709 : actualRows709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows709=5124 := by core033_kernel_decide
theorem rows710 : actualRows710=WordField.canonicalRows actualModulus 710 (.bnot 182) := by core033_kernel_decide
theorem stats710 : actualRows710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows710=6276 := by core033_kernel_decide
theorem rows711 : actualRows711=WordField.canonicalRows actualModulus 711 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats711 : actualRows711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows711=2892 := by core033_kernel_decide
theorem rows712 : actualRows712=WordField.canonicalRows actualModulus 712 (.badd 710 711) := by core033_kernel_decide
theorem stats712 : actualRows712.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows712=5388 := by core033_kernel_decide
theorem rows713 : actualRows713=WordField.canonicalRows actualModulus 713 (.bnot 712) := by core033_kernel_decide
theorem stats713 : actualRows713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows713=6276 := by core033_kernel_decide
theorem rows714 : actualRows714=WordField.canonicalRows actualModulus 714 (.band 713 2) := by core033_kernel_decide
theorem stats714 : actualRows714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows714=5124 := by core033_kernel_decide
theorem rows715 : actualRows715=WordField.canonicalRows actualModulus 715 (.bxor 709 714) := by core033_kernel_decide
theorem stats715 : actualRows715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows715=7428 := by core033_kernel_decide
theorem rows716 : actualRows716=WordField.canonicalRows actualModulus 716 (.bnot 182) := by core033_kernel_decide
theorem stats716 : actualRows716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows716=6276 := by core033_kernel_decide
theorem rows717 : actualRows717=WordField.canonicalRows actualModulus 717 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats717 : actualRows717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows717=2892 := by core033_kernel_decide
theorem rows718 : actualRows718=WordField.canonicalRows actualModulus 718 (.badd 716 717) := by core033_kernel_decide
theorem stats718 : actualRows718.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows718=5388 := by core033_kernel_decide
theorem rows719 : actualRows719=WordField.canonicalRows actualModulus 719 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats719 : actualRows719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows719=2820 := by core033_kernel_decide
theorem rows720 : actualRows720=WordField.canonicalRows actualModulus 720 (.band 718 719) := by core033_kernel_decide
theorem stats720 : actualRows720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows720=5124 := by core033_kernel_decide
theorem rows721 : actualRows721=WordField.canonicalRows actualModulus 721 (.bnot 182) := by core033_kernel_decide
theorem stats721 : actualRows721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows721=6276 := by core033_kernel_decide
theorem rows722 : actualRows722=WordField.canonicalRows actualModulus 722 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats722 : actualRows722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows722=2892 := by core033_kernel_decide
theorem rows723 : actualRows723=WordField.canonicalRows actualModulus 723 (.badd 721 722) := by core033_kernel_decide
theorem stats723 : actualRows723.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows723=5388 := by core033_kernel_decide
theorem rows724 : actualRows724=WordField.canonicalRows actualModulus 724 (.bnot 723) := by core033_kernel_decide
theorem stats724 : actualRows724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows724=6276 := by core033_kernel_decide
theorem rows725 : actualRows725=WordField.canonicalRows actualModulus 725 (.band 724 3) := by core033_kernel_decide
theorem stats725 : actualRows725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows725=5124 := by core033_kernel_decide
theorem rows726 : actualRows726=WordField.canonicalRows actualModulus 726 (.bxor 720 725) := by core033_kernel_decide
theorem stats726 : actualRows726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows726=7428 := by core033_kernel_decide
theorem rows727 : actualRows727=WordField.canonicalRows actualModulus 727 (.bnot 182) := by core033_kernel_decide
theorem stats727 : actualRows727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows727=6276 := by core033_kernel_decide
theorem rows728 : actualRows728=WordField.canonicalRows actualModulus 728 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats728 : actualRows728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows728=2892 := by core033_kernel_decide
theorem rows729 : actualRows729=WordField.canonicalRows actualModulus 729 (.badd 727 728) := by core033_kernel_decide
theorem stats729 : actualRows729.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows729=5388 := by core033_kernel_decide
theorem rows730 : actualRows730=WordField.canonicalRows actualModulus 730 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats730 : actualRows730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows730=2820 := by core033_kernel_decide
theorem rows731 : actualRows731=WordField.canonicalRows actualModulus 731 (.band 729 730) := by core033_kernel_decide
theorem stats731 : actualRows731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows731=5124 := by core033_kernel_decide
theorem rows732 : actualRows732=WordField.canonicalRows actualModulus 732 (.bnot 182) := by core033_kernel_decide
theorem stats732 : actualRows732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows732=6276 := by core033_kernel_decide
theorem rows733 : actualRows733=WordField.canonicalRows actualModulus 733 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats733 : actualRows733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows733=2892 := by core033_kernel_decide
theorem rows734 : actualRows734=WordField.canonicalRows actualModulus 734 (.badd 732 733) := by core033_kernel_decide
theorem stats734 : actualRows734.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows734=5388 := by core033_kernel_decide
theorem rows735 : actualRows735=WordField.canonicalRows actualModulus 735 (.bnot 734) := by core033_kernel_decide
theorem stats735 : actualRows735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows735=6276 := by core033_kernel_decide
theorem rows736 : actualRows736=WordField.canonicalRows actualModulus 736 (.band 735 4) := by core033_kernel_decide
theorem stats736 : actualRows736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows736=5124 := by core033_kernel_decide
theorem rows737 : actualRows737=WordField.canonicalRows actualModulus 737 (.bxor 731 736) := by core033_kernel_decide
theorem stats737 : actualRows737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows737=7428 := by core033_kernel_decide
theorem rows738 : actualRows738=WordField.canonicalRows actualModulus 738 (.bnot 182) := by core033_kernel_decide
theorem stats738 : actualRows738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows738=6276 := by core033_kernel_decide
theorem rows739 : actualRows739=WordField.canonicalRows actualModulus 739 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats739 : actualRows739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows739=2892 := by core033_kernel_decide
theorem rows740 : actualRows740=WordField.canonicalRows actualModulus 740 (.badd 738 739) := by core033_kernel_decide
theorem stats740 : actualRows740.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows740=5388 := by core033_kernel_decide
theorem rows741 : actualRows741=WordField.canonicalRows actualModulus 741 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats741 : actualRows741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows741=2820 := by core033_kernel_decide
theorem rows742 : actualRows742=WordField.canonicalRows actualModulus 742 (.band 740 741) := by core033_kernel_decide
theorem stats742 : actualRows742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows742=5124 := by core033_kernel_decide
theorem rows743 : actualRows743=WordField.canonicalRows actualModulus 743 (.bnot 182) := by core033_kernel_decide
theorem stats743 : actualRows743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows743=6276 := by core033_kernel_decide
theorem rows744 : actualRows744=WordField.canonicalRows actualModulus 744 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats744 : actualRows744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows744=2892 := by core033_kernel_decide
theorem rows745 : actualRows745=WordField.canonicalRows actualModulus 745 (.badd 743 744) := by core033_kernel_decide
theorem stats745 : actualRows745.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows745=5388 := by core033_kernel_decide
theorem rows746 : actualRows746=WordField.canonicalRows actualModulus 746 (.bnot 745) := by core033_kernel_decide
theorem stats746 : actualRows746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows746=6276 := by core033_kernel_decide
theorem rows747 : actualRows747=WordField.canonicalRows actualModulus 747 (.band 746 5) := by core033_kernel_decide
theorem stats747 : actualRows747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows747=5124 := by core033_kernel_decide
theorem rows748 : actualRows748=WordField.canonicalRows actualModulus 748 (.bxor 742 747) := by core033_kernel_decide
theorem stats748 : actualRows748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows748=7428 := by core033_kernel_decide
theorem rows749 : actualRows749=WordField.canonicalRows actualModulus 749 (.bnot 182) := by core033_kernel_decide
theorem stats749 : actualRows749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows749=6276 := by core033_kernel_decide
theorem rows750 : actualRows750=WordField.canonicalRows actualModulus 750 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats750 : actualRows750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows750=2892 := by core033_kernel_decide
theorem rows751 : actualRows751=WordField.canonicalRows actualModulus 751 (.badd 749 750) := by core033_kernel_decide
theorem stats751 : actualRows751.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows751=5388 := by core033_kernel_decide
theorem rows752 : actualRows752=WordField.canonicalRows actualModulus 752 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats752 : actualRows752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows752=2820 := by core033_kernel_decide
theorem rows753 : actualRows753=WordField.canonicalRows actualModulus 753 (.band 751 752) := by core033_kernel_decide
theorem stats753 : actualRows753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows753=5124 := by core033_kernel_decide
theorem rows754 : actualRows754=WordField.canonicalRows actualModulus 754 (.bnot 182) := by core033_kernel_decide
theorem stats754 : actualRows754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows754=6276 := by core033_kernel_decide
theorem rows755 : actualRows755=WordField.canonicalRows actualModulus 755 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats755 : actualRows755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows755=2892 := by core033_kernel_decide
theorem rows756 : actualRows756=WordField.canonicalRows actualModulus 756 (.badd 754 755) := by core033_kernel_decide
theorem stats756 : actualRows756.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows756=5388 := by core033_kernel_decide
theorem rows757 : actualRows757=WordField.canonicalRows actualModulus 757 (.bnot 756) := by core033_kernel_decide
theorem stats757 : actualRows757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows757=6276 := by core033_kernel_decide
def partRows9 : List R1CS.Row := actualRows694++actualRows695++actualRows696++actualRows697++actualRows698++actualRows699++actualRows700++actualRows701++actualRows702++actualRows703++actualRows704++actualRows705++actualRows706++actualRows707++actualRows708++actualRows709++actualRows710++actualRows711++actualRows712++actualRows713++actualRows714++actualRows715++actualRows716++actualRows717++actualRows718++actualRows719++actualRows720++actualRows721++actualRows722++actualRows723++actualRows724++actualRows725++actualRows726++actualRows727++actualRows728++actualRows729++actualRows730++actualRows731++actualRows732++actualRows733++actualRows734++actualRows735++actualRows736++actualRows737++actualRows738++actualRows739++actualRows740++actualRows741++actualRows742++actualRows743++actualRows744++actualRows745++actualRows746++actualRows747++actualRows748++actualRows749++actualRows750++actualRows751++actualRows752++actualRows753++actualRows754++actualRows755++actualRows756++actualRows757
def partOps9 : List WordIR.Op := [.bnot 182,.literal (BitVec.ofNat 32 1),.badd 694 695,.band 696 1,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 698 699,.bnot 700,.band 701 1,.bxor 697 702,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 704 705,.literal (BitVec.ofNat 32 4294967295),.badd 2 707,.band 706 708,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 710 711,.bnot 712,.band 713 2,.bxor 709 714,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 716 717,.literal (BitVec.ofNat 32 0),.band 718 719,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 721 722,.bnot 723,.band 724 3,.bxor 720 725,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 727 728,.literal (BitVec.ofNat 32 0),.band 729 730,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 732 733,.bnot 734,.band 735 4,.bxor 731 736,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 738 739,.literal (BitVec.ofNat 32 0),.band 740 741,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 743 744,.bnot 745,.band 746 5,.bxor 742 747,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 749 750,.literal (BitVec.ofNat 32 0),.band 751 752,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 754 755,.bnot 756]
theorem partExact9 : partRows9=WordField.rows actualModulus 694 partOps9 := by
  simp only [partRows9,partOps9,WordField.rows,rows694,rows695,rows696,rows697,rows698,rows699,rows700,rows701,rows702,rows703,rows704,rows705,rows706,rows707,rows708,rows709,rows710,rows711,rows712,rows713,rows714,rows715,rows716,rows717,rows718,rows719,rows720,rows721,rows722,rows723,rows724,rows725,rows726,rows727,rows728,rows729,rows730,rows731,rows732,rows733,rows734,rows735,rows736,rows737,rows738,rows739,rows740,rows741,rows742,rows743,rows744,rows745,rows746,rows747,rows748,rows749,rows750,rows751,rows752,rows753,rows754,rows755,rows756,rows757,List.append_assoc,List.append_nil]
theorem partLength9 : partOps9.length=64 := by decide
theorem partStats9 : partRows9.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows9=327624 := by
  simp only [partRows9,List.length_append,MatrixRowBlocks.rows_weight_append,stats694.1,stats694.2,stats695.1,stats695.2,stats696.1,stats696.2,stats697.1,stats697.2,stats698.1,stats698.2,stats699.1,stats699.2,stats700.1,stats700.2,stats701.1,stats701.2,stats702.1,stats702.2,stats703.1,stats703.2,stats704.1,stats704.2,stats705.1,stats705.2,stats706.1,stats706.2,stats707.1,stats707.2,stats708.1,stats708.2,stats709.1,stats709.2,stats710.1,stats710.2,stats711.1,stats711.2,stats712.1,stats712.2,stats713.1,stats713.2,stats714.1,stats714.2,stats715.1,stats715.2,stats716.1,stats716.2,stats717.1,stats717.2,stats718.1,stats718.2,stats719.1,stats719.2,stats720.1,stats720.2,stats721.1,stats721.2,stats722.1,stats722.2,stats723.1,stats723.2,stats724.1,stats724.2,stats725.1,stats725.2,stats726.1,stats726.2,stats727.1,stats727.2,stats728.1,stats728.2,stats729.1,stats729.2,stats730.1,stats730.2,stats731.1,stats731.2,stats732.1,stats732.2,stats733.1,stats733.2,stats734.1,stats734.2,stats735.1,stats735.2,stats736.1,stats736.2,stats737.1,stats737.2,stats738.1,stats738.2,stats739.1,stats739.2,stats740.1,stats740.2,stats741.1,stats741.2,stats742.1,stats742.2,stats743.1,stats743.2,stats744.1,stats744.2,stats745.1,stats745.2,stats746.1,stats746.2,stats747.1,stats747.2,stats748.1,stats748.2,stats749.1,stats749.2,stats750.1,stats750.2,stats751.1,stats751.2,stats752.1,stats752.2,stats753.1,stats753.2,stats754.1,stats754.2,stats755.1,stats755.2,stats756.1,stats756.2,stats757.1,stats757.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
