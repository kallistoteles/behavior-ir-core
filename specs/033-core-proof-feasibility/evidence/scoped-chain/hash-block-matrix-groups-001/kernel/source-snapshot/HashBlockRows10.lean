import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData11
import HashBlockInstructionMatrixData12
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows712 : actualRows712=WordField.canonicalRows actualModulus 712 (.shr 38 8) := by core033_kernel_decide
theorem stats712 : actualRows712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows712=4548 := by core033_kernel_decide
theorem rows713 : actualRows713=WordField.canonicalRows actualModulus 713 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats713 : actualRows713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows713=2820 := by core033_kernel_decide
theorem rows714 : actualRows714=WordField.canonicalRows actualModulus 714 (.bnot 713) := by core033_kernel_decide
theorem stats714 : actualRows714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows714=6276 := by core033_kernel_decide
theorem rows715 : actualRows715=WordField.canonicalRows actualModulus 715 (.bxor 712 714) := by core033_kernel_decide
theorem stats715 : actualRows715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows715=7428 := by core033_kernel_decide
theorem rows716 : actualRows716=WordField.canonicalRows actualModulus 716 (.shr 38 8) := by core033_kernel_decide
theorem stats716 : actualRows716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows716=4548 := by core033_kernel_decide
theorem rows717 : actualRows717=WordField.canonicalRows actualModulus 717 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats717 : actualRows717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows717=2820 := by core033_kernel_decide
theorem rows718 : actualRows718=WordField.canonicalRows actualModulus 718 (.bnot 717) := by core033_kernel_decide
theorem stats718 : actualRows718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows718=6276 := by core033_kernel_decide
theorem rows719 : actualRows719=WordField.canonicalRows actualModulus 719 (.badd 716 718) := by core033_kernel_decide
theorem stats719 : actualRows719.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows719=5388 := by core033_kernel_decide
theorem rows720 : actualRows720=WordField.canonicalRows actualModulus 720 (.bnot 719) := by core033_kernel_decide
theorem stats720 : actualRows720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows720=6276 := by core033_kernel_decide
theorem rows721 : actualRows721=WordField.canonicalRows actualModulus 721 (.band 715 720) := by core033_kernel_decide
theorem stats721 : actualRows721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows721=5124 := by core033_kernel_decide
theorem rows722 : actualRows722=WordField.canonicalRows actualModulus 722 (.bxor 711 721) := by core033_kernel_decide
theorem stats722 : actualRows722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows722=7428 := by core033_kernel_decide
theorem rows723 : actualRows723=WordField.canonicalRows actualModulus 723 (.shr 722 31) := by core033_kernel_decide
theorem stats723 : actualRows723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows723=2892 := by core033_kernel_decide
theorem rows724 : actualRows724=WordField.canonicalRows actualModulus 724 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats724 : actualRows724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows724=2892 := by core033_kernel_decide
theorem rows725 : actualRows725=WordField.canonicalRows actualModulus 725 (.bxor 723 724) := by core033_kernel_decide
theorem stats725 : actualRows725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows725=7428 := by core033_kernel_decide
theorem rows726 : actualRows726=WordField.canonicalRows actualModulus 726 (.shr 39 8) := by core033_kernel_decide
theorem stats726 : actualRows726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows726=4548 := by core033_kernel_decide
theorem rows727 : actualRows727=WordField.canonicalRows actualModulus 727 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats727 : actualRows727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows727=2820 := by core033_kernel_decide
theorem rows728 : actualRows728=WordField.canonicalRows actualModulus 728 (.bnot 727) := by core033_kernel_decide
theorem stats728 : actualRows728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows728=6276 := by core033_kernel_decide
theorem rows729 : actualRows729=WordField.canonicalRows actualModulus 729 (.band 726 728) := by core033_kernel_decide
theorem stats729 : actualRows729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows729=5124 := by core033_kernel_decide
theorem rows730 : actualRows730=WordField.canonicalRows actualModulus 730 (.shr 39 8) := by core033_kernel_decide
theorem stats730 : actualRows730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows730=4548 := by core033_kernel_decide
theorem rows731 : actualRows731=WordField.canonicalRows actualModulus 731 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats731 : actualRows731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows731=2820 := by core033_kernel_decide
theorem rows732 : actualRows732=WordField.canonicalRows actualModulus 732 (.bnot 731) := by core033_kernel_decide
theorem stats732 : actualRows732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows732=6276 := by core033_kernel_decide
theorem rows733 : actualRows733=WordField.canonicalRows actualModulus 733 (.bxor 730 732) := by core033_kernel_decide
theorem stats733 : actualRows733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows733=7428 := by core033_kernel_decide
theorem rows734 : actualRows734=WordField.canonicalRows actualModulus 734 (.shr 39 8) := by core033_kernel_decide
theorem stats734 : actualRows734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows734=4548 := by core033_kernel_decide
theorem rows735 : actualRows735=WordField.canonicalRows actualModulus 735 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats735 : actualRows735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows735=2820 := by core033_kernel_decide
theorem rows736 : actualRows736=WordField.canonicalRows actualModulus 736 (.bnot 735) := by core033_kernel_decide
theorem stats736 : actualRows736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows736=6276 := by core033_kernel_decide
theorem rows737 : actualRows737=WordField.canonicalRows actualModulus 737 (.badd 734 736) := by core033_kernel_decide
theorem stats737 : actualRows737.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows737=5388 := by core033_kernel_decide
theorem rows738 : actualRows738=WordField.canonicalRows actualModulus 738 (.bnot 737) := by core033_kernel_decide
theorem stats738 : actualRows738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows738=6276 := by core033_kernel_decide
theorem rows739 : actualRows739=WordField.canonicalRows actualModulus 739 (.band 733 738) := by core033_kernel_decide
theorem stats739 : actualRows739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows739=5124 := by core033_kernel_decide
theorem rows740 : actualRows740=WordField.canonicalRows actualModulus 740 (.bxor 729 739) := by core033_kernel_decide
theorem stats740 : actualRows740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows740=7428 := by core033_kernel_decide
theorem rows741 : actualRows741=WordField.canonicalRows actualModulus 741 (.shr 740 31) := by core033_kernel_decide
theorem stats741 : actualRows741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows741=2892 := by core033_kernel_decide
theorem rows742 : actualRows742=WordField.canonicalRows actualModulus 742 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats742 : actualRows742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows742=2892 := by core033_kernel_decide
theorem rows743 : actualRows743=WordField.canonicalRows actualModulus 743 (.bxor 741 742) := by core033_kernel_decide
theorem stats743 : actualRows743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows743=7428 := by core033_kernel_decide
theorem rows744 : actualRows744=WordField.canonicalRows actualModulus 744 (.shr 40 8) := by core033_kernel_decide
theorem stats744 : actualRows744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows744=4548 := by core033_kernel_decide
theorem rows745 : actualRows745=WordField.canonicalRows actualModulus 745 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats745 : actualRows745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows745=2820 := by core033_kernel_decide
theorem rows746 : actualRows746=WordField.canonicalRows actualModulus 746 (.bnot 745) := by core033_kernel_decide
theorem stats746 : actualRows746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows746=6276 := by core033_kernel_decide
theorem rows747 : actualRows747=WordField.canonicalRows actualModulus 747 (.band 744 746) := by core033_kernel_decide
theorem stats747 : actualRows747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows747=5124 := by core033_kernel_decide
theorem rows748 : actualRows748=WordField.canonicalRows actualModulus 748 (.shr 40 8) := by core033_kernel_decide
theorem stats748 : actualRows748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows748=4548 := by core033_kernel_decide
theorem rows749 : actualRows749=WordField.canonicalRows actualModulus 749 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats749 : actualRows749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows749=2820 := by core033_kernel_decide
theorem rows750 : actualRows750=WordField.canonicalRows actualModulus 750 (.bnot 749) := by core033_kernel_decide
theorem stats750 : actualRows750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows750=6276 := by core033_kernel_decide
theorem rows751 : actualRows751=WordField.canonicalRows actualModulus 751 (.bxor 748 750) := by core033_kernel_decide
theorem stats751 : actualRows751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows751=7428 := by core033_kernel_decide
theorem rows752 : actualRows752=WordField.canonicalRows actualModulus 752 (.shr 40 8) := by core033_kernel_decide
theorem stats752 : actualRows752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows752=4548 := by core033_kernel_decide
theorem rows753 : actualRows753=WordField.canonicalRows actualModulus 753 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats753 : actualRows753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows753=2820 := by core033_kernel_decide
theorem rows754 : actualRows754=WordField.canonicalRows actualModulus 754 (.bnot 753) := by core033_kernel_decide
theorem stats754 : actualRows754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows754=6276 := by core033_kernel_decide
theorem rows755 : actualRows755=WordField.canonicalRows actualModulus 755 (.badd 752 754) := by core033_kernel_decide
theorem stats755 : actualRows755.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows755=5388 := by core033_kernel_decide
theorem rows756 : actualRows756=WordField.canonicalRows actualModulus 756 (.bnot 755) := by core033_kernel_decide
theorem stats756 : actualRows756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows756=6276 := by core033_kernel_decide
theorem rows757 : actualRows757=WordField.canonicalRows actualModulus 757 (.band 751 756) := by core033_kernel_decide
theorem stats757 : actualRows757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows757=5124 := by core033_kernel_decide
theorem rows758 : actualRows758=WordField.canonicalRows actualModulus 758 (.bxor 747 757) := by core033_kernel_decide
theorem stats758 : actualRows758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows758=7428 := by core033_kernel_decide
theorem rows759 : actualRows759=WordField.canonicalRows actualModulus 759 (.shr 758 31) := by core033_kernel_decide
theorem stats759 : actualRows759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows759=2892 := by core033_kernel_decide
theorem rows760 : actualRows760=WordField.canonicalRows actualModulus 760 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats760 : actualRows760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows760=2892 := by core033_kernel_decide
theorem rows761 : actualRows761=WordField.canonicalRows actualModulus 761 (.bxor 759 760) := by core033_kernel_decide
theorem stats761 : actualRows761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows761=7428 := by core033_kernel_decide
theorem rows762 : actualRows762=WordField.canonicalRows actualModulus 762 (.shr 41 8) := by core033_kernel_decide
theorem stats762 : actualRows762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows762=4548 := by core033_kernel_decide
theorem rows763 : actualRows763=WordField.canonicalRows actualModulus 763 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats763 : actualRows763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows763=2820 := by core033_kernel_decide
theorem rows764 : actualRows764=WordField.canonicalRows actualModulus 764 (.bnot 763) := by core033_kernel_decide
theorem stats764 : actualRows764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows764=6276 := by core033_kernel_decide
theorem rows765 : actualRows765=WordField.canonicalRows actualModulus 765 (.band 762 764) := by core033_kernel_decide
theorem stats765 : actualRows765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows765=5124 := by core033_kernel_decide
theorem rows766 : actualRows766=WordField.canonicalRows actualModulus 766 (.shr 41 8) := by core033_kernel_decide
theorem stats766 : actualRows766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows766=4548 := by core033_kernel_decide
theorem rows767 : actualRows767=WordField.canonicalRows actualModulus 767 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats767 : actualRows767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows767=2820 := by core033_kernel_decide
theorem rows768 : actualRows768=WordField.canonicalRows actualModulus 768 (.bnot 767) := by core033_kernel_decide
theorem stats768 : actualRows768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows768=6276 := by core033_kernel_decide
theorem rows769 : actualRows769=WordField.canonicalRows actualModulus 769 (.bxor 766 768) := by core033_kernel_decide
theorem stats769 : actualRows769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows769=7428 := by core033_kernel_decide
theorem rows770 : actualRows770=WordField.canonicalRows actualModulus 770 (.shr 41 8) := by core033_kernel_decide
theorem stats770 : actualRows770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows770=4548 := by core033_kernel_decide
theorem rows771 : actualRows771=WordField.canonicalRows actualModulus 771 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats771 : actualRows771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows771=2820 := by core033_kernel_decide
theorem rows772 : actualRows772=WordField.canonicalRows actualModulus 772 (.bnot 771) := by core033_kernel_decide
theorem stats772 : actualRows772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows772=6276 := by core033_kernel_decide
theorem rows773 : actualRows773=WordField.canonicalRows actualModulus 773 (.badd 770 772) := by core033_kernel_decide
theorem stats773 : actualRows773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows773=5388 := by core033_kernel_decide
theorem rows774 : actualRows774=WordField.canonicalRows actualModulus 774 (.bnot 773) := by core033_kernel_decide
theorem stats774 : actualRows774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows774=6276 := by core033_kernel_decide
theorem rows775 : actualRows775=WordField.canonicalRows actualModulus 775 (.band 769 774) := by core033_kernel_decide
theorem stats775 : actualRows775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows775=5124 := by core033_kernel_decide
def partRows10 : List R1CS.Row := actualRows712++actualRows713++actualRows714++actualRows715++actualRows716++actualRows717++actualRows718++actualRows719++actualRows720++actualRows721++actualRows722++actualRows723++actualRows724++actualRows725++actualRows726++actualRows727++actualRows728++actualRows729++actualRows730++actualRows731++actualRows732++actualRows733++actualRows734++actualRows735++actualRows736++actualRows737++actualRows738++actualRows739++actualRows740++actualRows741++actualRows742++actualRows743++actualRows744++actualRows745++actualRows746++actualRows747++actualRows748++actualRows749++actualRows750++actualRows751++actualRows752++actualRows753++actualRows754++actualRows755++actualRows756++actualRows757++actualRows758++actualRows759++actualRows760++actualRows761++actualRows762++actualRows763++actualRows764++actualRows765++actualRows766++actualRows767++actualRows768++actualRows769++actualRows770++actualRows771++actualRows772++actualRows773++actualRows774++actualRows775
def partOps10 : List WordIR.Op := [.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 713,.bxor 712 714,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 717,.badd 716 718,.bnot 719,.band 715 720,.bxor 711 721,.shr 722 31,.literal (BitVec.ofNat 32 1),.bxor 723 724,.shr 39 8,.literal (BitVec.ofNat 32 0),.bnot 727,.band 726 728,.shr 39 8,.literal (BitVec.ofNat 32 0),.bnot 731,.bxor 730 732,.shr 39 8,.literal (BitVec.ofNat 32 0),.bnot 735,.badd 734 736,.bnot 737,.band 733 738,.bxor 729 739,.shr 740 31,.literal (BitVec.ofNat 32 1),.bxor 741 742,.shr 40 8,.literal (BitVec.ofNat 32 0),.bnot 745,.band 744 746,.shr 40 8,.literal (BitVec.ofNat 32 0),.bnot 749,.bxor 748 750,.shr 40 8,.literal (BitVec.ofNat 32 0),.bnot 753,.badd 752 754,.bnot 755,.band 751 756,.bxor 747 757,.shr 758 31,.literal (BitVec.ofNat 32 1),.bxor 759 760,.shr 41 8,.literal (BitVec.ofNat 32 0),.bnot 763,.band 762 764,.shr 41 8,.literal (BitVec.ofNat 32 0),.bnot 767,.bxor 766 768,.shr 41 8,.literal (BitVec.ofNat 32 0),.bnot 771,.badd 770 772,.bnot 773,.band 769 774]
theorem partExact10 : partRows10=WordField.rows actualModulus 712 partOps10 := by
  simp only [partRows10,partOps10,WordField.rows,rows712,rows713,rows714,rows715,rows716,rows717,rows718,rows719,rows720,rows721,rows722,rows723,rows724,rows725,rows726,rows727,rows728,rows729,rows730,rows731,rows732,rows733,rows734,rows735,rows736,rows737,rows738,rows739,rows740,rows741,rows742,rows743,rows744,rows745,rows746,rows747,rows748,rows749,rows750,rows751,rows752,rows753,rows754,rows755,rows756,rows757,rows758,rows759,rows760,rows761,rows762,rows763,rows764,rows765,rows766,rows767,rows768,rows769,rows770,rows771,rows772,rows773,rows774,rows775,List.append_assoc,List.append_nil]
theorem partLength10 : partOps10.length=64 := by decide
theorem partStats10 : partRows10.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows10=324240 := by
  simp only [partRows10,List.length_append,MatrixRowBlocks.rows_weight_append,stats712.1,stats712.2,stats713.1,stats713.2,stats714.1,stats714.2,stats715.1,stats715.2,stats716.1,stats716.2,stats717.1,stats717.2,stats718.1,stats718.2,stats719.1,stats719.2,stats720.1,stats720.2,stats721.1,stats721.2,stats722.1,stats722.2,stats723.1,stats723.2,stats724.1,stats724.2,stats725.1,stats725.2,stats726.1,stats726.2,stats727.1,stats727.2,stats728.1,stats728.2,stats729.1,stats729.2,stats730.1,stats730.2,stats731.1,stats731.2,stats732.1,stats732.2,stats733.1,stats733.2,stats734.1,stats734.2,stats735.1,stats735.2,stats736.1,stats736.2,stats737.1,stats737.2,stats738.1,stats738.2,stats739.1,stats739.2,stats740.1,stats740.2,stats741.1,stats741.2,stats742.1,stats742.2,stats743.1,stats743.2,stats744.1,stats744.2,stats745.1,stats745.2,stats746.1,stats746.2,stats747.1,stats747.2,stats748.1,stats748.2,stats749.1,stats749.2,stats750.1,stats750.2,stats751.1,stats751.2,stats752.1,stats752.2,stats753.1,stats753.2,stats754.1,stats754.2,stats755.1,stats755.2,stats756.1,stats756.2,stats757.1,stats757.2,stats758.1,stats758.2,stats759.1,stats759.2,stats760.1,stats760.2,stats761.1,stats761.2,stats762.1,stats762.2,stats763.1,stats763.2,stats764.1,stats764.2,stats765.1,stats765.2,stats766.1,stats766.2,stats767.1,stats767.2,stats768.1,stats768.2,stats769.1,stats769.2,stats770.1,stats770.2,stats771.1,stats771.2,stats772.1,stats772.2,stats773.1,stats773.2,stats774.1,stats774.2,stats775.1,stats775.2]
  decide
end HashBlockCheckedRows
