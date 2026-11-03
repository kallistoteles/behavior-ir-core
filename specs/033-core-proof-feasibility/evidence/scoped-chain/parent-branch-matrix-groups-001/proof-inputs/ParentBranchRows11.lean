import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData11
import ParentBranchInstructionMatrixData12
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows730 : actualRows730=WordField.canonicalRows actualModulus 730 (.bnot 729) := by core033_kernel_decide
theorem stats730 : actualRows730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows730=6276 := by core033_kernel_decide
theorem rows731 : actualRows731=WordField.canonicalRows actualModulus 731 (.band 20 730) := by core033_kernel_decide
theorem stats731 : actualRows731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows731=5124 := by core033_kernel_decide
theorem rows732 : actualRows732=WordField.canonicalRows actualModulus 732 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats732 : actualRows732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows732=2892 := by core033_kernel_decide
theorem rows733 : actualRows733=WordField.canonicalRows actualModulus 733 (.bnot 732) := by core033_kernel_decide
theorem stats733 : actualRows733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows733=6276 := by core033_kernel_decide
theorem rows734 : actualRows734=WordField.canonicalRows actualModulus 734 (.bxor 20 733) := by core033_kernel_decide
theorem stats734 : actualRows734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows734=7428 := by core033_kernel_decide
theorem rows735 : actualRows735=WordField.canonicalRows actualModulus 735 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats735 : actualRows735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows735=2892 := by core033_kernel_decide
theorem rows736 : actualRows736=WordField.canonicalRows actualModulus 736 (.bnot 735) := by core033_kernel_decide
theorem stats736 : actualRows736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows736=6276 := by core033_kernel_decide
theorem rows737 : actualRows737=WordField.canonicalRows actualModulus 737 (.badd 20 736) := by core033_kernel_decide
theorem stats737 : actualRows737.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows737=5388 := by core033_kernel_decide
theorem rows738 : actualRows738=WordField.canonicalRows actualModulus 738 (.bnot 737) := by core033_kernel_decide
theorem stats738 : actualRows738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows738=6276 := by core033_kernel_decide
theorem rows739 : actualRows739=WordField.canonicalRows actualModulus 739 (.band 734 738) := by core033_kernel_decide
theorem stats739 : actualRows739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows739=5124 := by core033_kernel_decide
theorem rows740 : actualRows740=WordField.canonicalRows actualModulus 740 (.bxor 731 739) := by core033_kernel_decide
theorem stats740 : actualRows740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows740=7428 := by core033_kernel_decide
theorem rows741 : actualRows741=WordField.canonicalRows actualModulus 741 (.shr 740 31) := by core033_kernel_decide
theorem stats741 : actualRows741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows741=2892 := by core033_kernel_decide
theorem rows742 : actualRows742=WordField.canonicalRows actualModulus 742 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats742 : actualRows742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows742=2892 := by core033_kernel_decide
theorem rows743 : actualRows743=WordField.canonicalRows actualModulus 743 (.bxor 741 742) := by core033_kernel_decide
theorem stats743 : actualRows743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows743=7428 := by core033_kernel_decide
theorem rows744 : actualRows744=WordField.canonicalRows actualModulus 744 (.band 728 743) := by core033_kernel_decide
theorem stats744 : actualRows744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows744=5124 := by core033_kernel_decide
theorem rows745 : actualRows745=WordField.canonicalRows actualModulus 745 (.band 713 744) := by core033_kernel_decide
theorem stats745 : actualRows745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows745=5124 := by core033_kernel_decide
theorem rows746 : actualRows746=WordField.canonicalRows actualModulus 746 (.badd 19 21) := by core033_kernel_decide
theorem stats746 : actualRows746.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows746=5388 := by core033_kernel_decide
theorem rows747 : actualRows747=WordField.canonicalRows actualModulus 747 (.band 18 20) := by core033_kernel_decide
theorem stats747 : actualRows747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows747=5124 := by core033_kernel_decide
theorem rows748 : actualRows748=WordField.canonicalRows actualModulus 748 (.bxor 18 20) := by core033_kernel_decide
theorem stats748 : actualRows748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows748=7428 := by core033_kernel_decide
theorem rows749 : actualRows749=WordField.canonicalRows actualModulus 749 (.badd 18 20) := by core033_kernel_decide
theorem stats749 : actualRows749.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows749=5388 := by core033_kernel_decide
theorem rows750 : actualRows750=WordField.canonicalRows actualModulus 750 (.bnot 749) := by core033_kernel_decide
theorem stats750 : actualRows750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows750=6276 := by core033_kernel_decide
theorem rows751 : actualRows751=WordField.canonicalRows actualModulus 751 (.band 748 750) := by core033_kernel_decide
theorem stats751 : actualRows751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows751=5124 := by core033_kernel_decide
theorem rows752 : actualRows752=WordField.canonicalRows actualModulus 752 (.bxor 747 751) := by core033_kernel_decide
theorem stats752 : actualRows752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows752=7428 := by core033_kernel_decide
theorem rows753 : actualRows753=WordField.canonicalRows actualModulus 753 (.shr 752 31) := by core033_kernel_decide
theorem stats753 : actualRows753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows753=2892 := by core033_kernel_decide
theorem rows754 : actualRows754=WordField.canonicalRows actualModulus 754 (.badd 746 753) := by core033_kernel_decide
theorem stats754 : actualRows754.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows754=5388 := by core033_kernel_decide
theorem rows755 : actualRows755=WordField.canonicalRows actualModulus 755 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats755 : actualRows755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows755=2820 := by core033_kernel_decide
theorem rows756 : actualRows756=WordField.canonicalRows actualModulus 756 (.bnot 755) := by core033_kernel_decide
theorem stats756 : actualRows756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows756=6276 := by core033_kernel_decide
theorem rows757 : actualRows757=WordField.canonicalRows actualModulus 757 (.band 754 756) := by core033_kernel_decide
theorem stats757 : actualRows757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows757=5124 := by core033_kernel_decide
theorem rows758 : actualRows758=WordField.canonicalRows actualModulus 758 (.badd 19 21) := by core033_kernel_decide
theorem stats758 : actualRows758.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows758=5388 := by core033_kernel_decide
theorem rows759 : actualRows759=WordField.canonicalRows actualModulus 759 (.band 18 20) := by core033_kernel_decide
theorem stats759 : actualRows759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows759=5124 := by core033_kernel_decide
theorem rows760 : actualRows760=WordField.canonicalRows actualModulus 760 (.bxor 18 20) := by core033_kernel_decide
theorem stats760 : actualRows760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows760=7428 := by core033_kernel_decide
theorem rows761 : actualRows761=WordField.canonicalRows actualModulus 761 (.badd 18 20) := by core033_kernel_decide
theorem stats761 : actualRows761.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows761=5388 := by core033_kernel_decide
theorem rows762 : actualRows762=WordField.canonicalRows actualModulus 762 (.bnot 761) := by core033_kernel_decide
theorem stats762 : actualRows762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows762=6276 := by core033_kernel_decide
theorem rows763 : actualRows763=WordField.canonicalRows actualModulus 763 (.band 760 762) := by core033_kernel_decide
theorem stats763 : actualRows763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows763=5124 := by core033_kernel_decide
theorem rows764 : actualRows764=WordField.canonicalRows actualModulus 764 (.bxor 759 763) := by core033_kernel_decide
theorem stats764 : actualRows764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows764=7428 := by core033_kernel_decide
theorem rows765 : actualRows765=WordField.canonicalRows actualModulus 765 (.shr 764 31) := by core033_kernel_decide
theorem stats765 : actualRows765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows765=2892 := by core033_kernel_decide
theorem rows766 : actualRows766=WordField.canonicalRows actualModulus 766 (.badd 758 765) := by core033_kernel_decide
theorem stats766 : actualRows766.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows766=5388 := by core033_kernel_decide
theorem rows767 : actualRows767=WordField.canonicalRows actualModulus 767 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats767 : actualRows767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows767=2820 := by core033_kernel_decide
theorem rows768 : actualRows768=WordField.canonicalRows actualModulus 768 (.bnot 767) := by core033_kernel_decide
theorem stats768 : actualRows768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows768=6276 := by core033_kernel_decide
theorem rows769 : actualRows769=WordField.canonicalRows actualModulus 769 (.bxor 766 768) := by core033_kernel_decide
theorem stats769 : actualRows769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows769=7428 := by core033_kernel_decide
theorem rows770 : actualRows770=WordField.canonicalRows actualModulus 770 (.badd 19 21) := by core033_kernel_decide
theorem stats770 : actualRows770.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows770=5388 := by core033_kernel_decide
theorem rows771 : actualRows771=WordField.canonicalRows actualModulus 771 (.band 18 20) := by core033_kernel_decide
theorem stats771 : actualRows771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows771=5124 := by core033_kernel_decide
theorem rows772 : actualRows772=WordField.canonicalRows actualModulus 772 (.bxor 18 20) := by core033_kernel_decide
theorem stats772 : actualRows772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows772=7428 := by core033_kernel_decide
theorem rows773 : actualRows773=WordField.canonicalRows actualModulus 773 (.badd 18 20) := by core033_kernel_decide
theorem stats773 : actualRows773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows773=5388 := by core033_kernel_decide
theorem rows774 : actualRows774=WordField.canonicalRows actualModulus 774 (.bnot 773) := by core033_kernel_decide
theorem stats774 : actualRows774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows774=6276 := by core033_kernel_decide
theorem rows775 : actualRows775=WordField.canonicalRows actualModulus 775 (.band 772 774) := by core033_kernel_decide
theorem stats775 : actualRows775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows775=5124 := by core033_kernel_decide
theorem rows776 : actualRows776=WordField.canonicalRows actualModulus 776 (.bxor 771 775) := by core033_kernel_decide
theorem stats776 : actualRows776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows776=7428 := by core033_kernel_decide
theorem rows777 : actualRows777=WordField.canonicalRows actualModulus 777 (.shr 776 31) := by core033_kernel_decide
theorem stats777 : actualRows777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows777=2892 := by core033_kernel_decide
theorem rows778 : actualRows778=WordField.canonicalRows actualModulus 778 (.badd 770 777) := by core033_kernel_decide
theorem stats778 : actualRows778.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows778=5388 := by core033_kernel_decide
theorem rows779 : actualRows779=WordField.canonicalRows actualModulus 779 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats779 : actualRows779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows779=2820 := by core033_kernel_decide
theorem rows780 : actualRows780=WordField.canonicalRows actualModulus 780 (.bnot 779) := by core033_kernel_decide
theorem stats780 : actualRows780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows780=6276 := by core033_kernel_decide
theorem rows781 : actualRows781=WordField.canonicalRows actualModulus 781 (.badd 778 780) := by core033_kernel_decide
theorem stats781 : actualRows781.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows781=5388 := by core033_kernel_decide
theorem rows782 : actualRows782=WordField.canonicalRows actualModulus 782 (.bnot 781) := by core033_kernel_decide
theorem stats782 : actualRows782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows782=6276 := by core033_kernel_decide
theorem rows783 : actualRows783=WordField.canonicalRows actualModulus 783 (.band 769 782) := by core033_kernel_decide
theorem stats783 : actualRows783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows783=5124 := by core033_kernel_decide
theorem rows784 : actualRows784=WordField.canonicalRows actualModulus 784 (.bxor 757 783) := by core033_kernel_decide
theorem stats784 : actualRows784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows784=7428 := by core033_kernel_decide
theorem rows785 : actualRows785=WordField.canonicalRows actualModulus 785 (.shr 784 31) := by core033_kernel_decide
theorem stats785 : actualRows785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows785=2892 := by core033_kernel_decide
theorem rows786 : actualRows786=WordField.canonicalRows actualModulus 786 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats786 : actualRows786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows786=2892 := by core033_kernel_decide
theorem rows787 : actualRows787=WordField.canonicalRows actualModulus 787 (.bxor 785 786) := by core033_kernel_decide
theorem stats787 : actualRows787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows787=7428 := by core033_kernel_decide
theorem rows788 : actualRows788=WordField.canonicalRows actualModulus 788 (.badd 18 20) := by core033_kernel_decide
theorem stats788 : actualRows788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows788=5388 := by core033_kernel_decide
theorem rows789 : actualRows789=WordField.canonicalRows actualModulus 789 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats789 : actualRows789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows789=2892 := by core033_kernel_decide
theorem rows790 : actualRows790=WordField.canonicalRows actualModulus 790 (.bnot 789) := by core033_kernel_decide
theorem stats790 : actualRows790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows790=6276 := by core033_kernel_decide
theorem rows791 : actualRows791=WordField.canonicalRows actualModulus 791 (.band 788 790) := by core033_kernel_decide
theorem stats791 : actualRows791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows791=5124 := by core033_kernel_decide
theorem rows792 : actualRows792=WordField.canonicalRows actualModulus 792 (.badd 18 20) := by core033_kernel_decide
theorem stats792 : actualRows792.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows792=5388 := by core033_kernel_decide
theorem rows793 : actualRows793=WordField.canonicalRows actualModulus 793 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats793 : actualRows793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows793=2892 := by core033_kernel_decide
def partRows11 : List R1CS.Row := actualRows730++actualRows731++actualRows732++actualRows733++actualRows734++actualRows735++actualRows736++actualRows737++actualRows738++actualRows739++actualRows740++actualRows741++actualRows742++actualRows743++actualRows744++actualRows745++actualRows746++actualRows747++actualRows748++actualRows749++actualRows750++actualRows751++actualRows752++actualRows753++actualRows754++actualRows755++actualRows756++actualRows757++actualRows758++actualRows759++actualRows760++actualRows761++actualRows762++actualRows763++actualRows764++actualRows765++actualRows766++actualRows767++actualRows768++actualRows769++actualRows770++actualRows771++actualRows772++actualRows773++actualRows774++actualRows775++actualRows776++actualRows777++actualRows778++actualRows779++actualRows780++actualRows781++actualRows782++actualRows783++actualRows784++actualRows785++actualRows786++actualRows787++actualRows788++actualRows789++actualRows790++actualRows791++actualRows792++actualRows793
def partOps11 : List WordIR.Op := [.bnot 729,.band 20 730,.literal (BitVec.ofNat 32 1048576),.bnot 732,.bxor 20 733,.literal (BitVec.ofNat 32 1048576),.bnot 735,.badd 20 736,.bnot 737,.band 734 738,.bxor 731 739,.shr 740 31,.literal (BitVec.ofNat 32 1),.bxor 741 742,.band 728 743,.band 713 744,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 749,.band 748 750,.bxor 747 751,.shr 752 31,.badd 746 753,.literal (BitVec.ofNat 32 0),.bnot 755,.band 754 756,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 761,.band 760 762,.bxor 759 763,.shr 764 31,.badd 758 765,.literal (BitVec.ofNat 32 0),.bnot 767,.bxor 766 768,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 773,.band 772 774,.bxor 771 775,.shr 776 31,.badd 770 777,.literal (BitVec.ofNat 32 0),.bnot 779,.badd 778 780,.bnot 781,.band 769 782,.bxor 757 783,.shr 784 31,.literal (BitVec.ofNat 32 1),.bxor 785 786,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 789,.band 788 790,.badd 18 20,.literal (BitVec.ofNat 32 1048576)]
theorem partExact11 : partRows11=WordField.rows actualModulus 730 partOps11 := by
  simp only [partRows11,partOps11,WordField.rows,rows730,rows731,rows732,rows733,rows734,rows735,rows736,rows737,rows738,rows739,rows740,rows741,rows742,rows743,rows744,rows745,rows746,rows747,rows748,rows749,rows750,rows751,rows752,rows753,rows754,rows755,rows756,rows757,rows758,rows759,rows760,rows761,rows762,rows763,rows764,rows765,rows766,rows767,rows768,rows769,rows770,rows771,rows772,rows773,rows774,rows775,rows776,rows777,rows778,rows779,rows780,rows781,rows782,rows783,rows784,rows785,rows786,rows787,rows788,rows789,rows790,rows791,rows792,rows793,List.append_assoc,List.append_nil]
theorem partLength11 : partOps11.length=64 := by decide
theorem partStats11 : partRows11.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows11=341376 := by
  simp only [partRows11,List.length_append,MatrixRowBlocks.rows_weight_append,stats730.1,stats730.2,stats731.1,stats731.2,stats732.1,stats732.2,stats733.1,stats733.2,stats734.1,stats734.2,stats735.1,stats735.2,stats736.1,stats736.2,stats737.1,stats737.2,stats738.1,stats738.2,stats739.1,stats739.2,stats740.1,stats740.2,stats741.1,stats741.2,stats742.1,stats742.2,stats743.1,stats743.2,stats744.1,stats744.2,stats745.1,stats745.2,stats746.1,stats746.2,stats747.1,stats747.2,stats748.1,stats748.2,stats749.1,stats749.2,stats750.1,stats750.2,stats751.1,stats751.2,stats752.1,stats752.2,stats753.1,stats753.2,stats754.1,stats754.2,stats755.1,stats755.2,stats756.1,stats756.2,stats757.1,stats757.2,stats758.1,stats758.2,stats759.1,stats759.2,stats760.1,stats760.2,stats761.1,stats761.2,stats762.1,stats762.2,stats763.1,stats763.2,stats764.1,stats764.2,stats765.1,stats765.2,stats766.1,stats766.2,stats767.1,stats767.2,stats768.1,stats768.2,stats769.1,stats769.2,stats770.1,stats770.2,stats771.1,stats771.2,stats772.1,stats772.2,stats773.1,stats773.2,stats774.1,stats774.2,stats775.1,stats775.2,stats776.1,stats776.2,stats777.1,stats777.2,stats778.1,stats778.2,stats779.1,stats779.2,stats780.1,stats780.2,stats781.1,stats781.2,stats782.1,stats782.2,stats783.1,stats783.2,stats784.1,stats784.2,stats785.1,stats785.2,stats786.1,stats786.2,stats787.1,stats787.2,stats788.1,stats788.2,stats789.1,stats789.2,stats790.1,stats790.2,stats791.1,stats791.2,stats792.1,stats792.2,stats793.1,stats793.2]
  decide
end ParentBranchCheckedRows
