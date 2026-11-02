import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData11
import ActualMatrixData12
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows728 : actualRows728=WordField.canonicalRows actualModulus 728 (.badd 1 715) := by core033_kernel_decide
theorem stats728 : actualRows728.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows728=5388 := by core033_kernel_decide
theorem rows729 : actualRows729=WordField.canonicalRows actualModulus 729 (.rotr 728 6) := by core033_kernel_decide
theorem stats729 : actualRows729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows729=5124 := by core033_kernel_decide
theorem rows730 : actualRows730=WordField.canonicalRows actualModulus 730 (.rotr 728 11) := by core033_kernel_decide
theorem stats730 : actualRows730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows730=5124 := by core033_kernel_decide
theorem rows731 : actualRows731=WordField.canonicalRows actualModulus 731 (.bxor 729 730) := by core033_kernel_decide
theorem stats731 : actualRows731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows731=7428 := by core033_kernel_decide
theorem rows732 : actualRows732=WordField.canonicalRows actualModulus 732 (.rotr 728 25) := by core033_kernel_decide
theorem stats732 : actualRows732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows732=5124 := by core033_kernel_decide
theorem rows733 : actualRows733=WordField.canonicalRows actualModulus 733 (.bxor 731 732) := by core033_kernel_decide
theorem stats733 : actualRows733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows733=7428 := by core033_kernel_decide
theorem rows734 : actualRows734=WordField.canonicalRows actualModulus 734 (.badd 4 733) := by core033_kernel_decide
theorem stats734 : actualRows734.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows734=5388 := by core033_kernel_decide
theorem rows735 : actualRows735=WordField.canonicalRows actualModulus 735 (.band 728 701) := by core033_kernel_decide
theorem stats735 : actualRows735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows735=5124 := by core033_kernel_decide
theorem rows736 : actualRows736=WordField.canonicalRows actualModulus 736 (.bnot 728) := by core033_kernel_decide
theorem stats736 : actualRows736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows736=6276 := by core033_kernel_decide
theorem rows737 : actualRows737=WordField.canonicalRows actualModulus 737 (.band 736 674) := by core033_kernel_decide
theorem stats737 : actualRows737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows737=5124 := by core033_kernel_decide
theorem rows738 : actualRows738=WordField.canonicalRows actualModulus 738 (.bxor 735 737) := by core033_kernel_decide
theorem stats738 : actualRows738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows738=7428 := by core033_kernel_decide
theorem rows739 : actualRows739=WordField.canonicalRows actualModulus 739 (.badd 734 738) := by core033_kernel_decide
theorem stats739 : actualRows739.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows739=5388 := by core033_kernel_decide
theorem rows740 : actualRows740=WordField.canonicalRows actualModulus 740 (.literal (BitVec.ofNat 32 3921009573)) := by core033_kernel_decide
theorem stats740 : actualRows740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows740=4260 := by core033_kernel_decide
theorem rows741 : actualRows741=WordField.canonicalRows actualModulus 741 (.badd 739 740) := by core033_kernel_decide
theorem stats741 : actualRows741.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows741=5388 := by core033_kernel_decide
theorem rows742 : actualRows742=WordField.canonicalRows actualModulus 742 (.badd 741 11) := by core033_kernel_decide
theorem stats742 : actualRows742.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows742=5388 := by core033_kernel_decide
theorem rows743 : actualRows743=WordField.canonicalRows actualModulus 743 (.rotr 727 2) := by core033_kernel_decide
theorem stats743 : actualRows743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows743=5124 := by core033_kernel_decide
theorem rows744 : actualRows744=WordField.canonicalRows actualModulus 744 (.rotr 727 13) := by core033_kernel_decide
theorem stats744 : actualRows744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows744=5124 := by core033_kernel_decide
theorem rows745 : actualRows745=WordField.canonicalRows actualModulus 745 (.bxor 743 744) := by core033_kernel_decide
theorem stats745 : actualRows745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows745=7428 := by core033_kernel_decide
theorem rows746 : actualRows746=WordField.canonicalRows actualModulus 746 (.rotr 727 22) := by core033_kernel_decide
theorem stats746 : actualRows746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows746=5124 := by core033_kernel_decide
theorem rows747 : actualRows747=WordField.canonicalRows actualModulus 747 (.bxor 745 746) := by core033_kernel_decide
theorem stats747 : actualRows747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows747=7428 := by core033_kernel_decide
theorem rows748 : actualRows748=WordField.canonicalRows actualModulus 748 (.band 727 700) := by core033_kernel_decide
theorem stats748 : actualRows748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows748=5124 := by core033_kernel_decide
theorem rows749 : actualRows749=WordField.canonicalRows actualModulus 749 (.band 727 673) := by core033_kernel_decide
theorem stats749 : actualRows749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows749=5124 := by core033_kernel_decide
theorem rows750 : actualRows750=WordField.canonicalRows actualModulus 750 (.bxor 748 749) := by core033_kernel_decide
theorem stats750 : actualRows750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows750=7428 := by core033_kernel_decide
theorem rows751 : actualRows751=WordField.canonicalRows actualModulus 751 (.band 700 673) := by core033_kernel_decide
theorem stats751 : actualRows751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows751=5124 := by core033_kernel_decide
theorem rows752 : actualRows752=WordField.canonicalRows actualModulus 752 (.bxor 750 751) := by core033_kernel_decide
theorem stats752 : actualRows752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows752=7428 := by core033_kernel_decide
theorem rows753 : actualRows753=WordField.canonicalRows actualModulus 753 (.badd 747 752) := by core033_kernel_decide
theorem stats753 : actualRows753.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows753=5388 := by core033_kernel_decide
theorem rows754 : actualRows754=WordField.canonicalRows actualModulus 754 (.badd 742 753) := by core033_kernel_decide
theorem stats754 : actualRows754.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows754=5388 := by core033_kernel_decide
theorem rows755 : actualRows755=WordField.canonicalRows actualModulus 755 (.badd 0 742) := by core033_kernel_decide
theorem stats755 : actualRows755.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows755=5388 := by core033_kernel_decide
theorem rows756 : actualRows756=WordField.canonicalRows actualModulus 756 (.rotr 755 6) := by core033_kernel_decide
theorem stats756 : actualRows756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows756=5124 := by core033_kernel_decide
theorem rows757 : actualRows757=WordField.canonicalRows actualModulus 757 (.rotr 755 11) := by core033_kernel_decide
theorem stats757 : actualRows757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows757=5124 := by core033_kernel_decide
theorem rows758 : actualRows758=WordField.canonicalRows actualModulus 758 (.bxor 756 757) := by core033_kernel_decide
theorem stats758 : actualRows758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows758=7428 := by core033_kernel_decide
theorem rows759 : actualRows759=WordField.canonicalRows actualModulus 759 (.rotr 755 25) := by core033_kernel_decide
theorem stats759 : actualRows759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows759=5124 := by core033_kernel_decide
theorem rows760 : actualRows760=WordField.canonicalRows actualModulus 760 (.bxor 758 759) := by core033_kernel_decide
theorem stats760 : actualRows760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows760=7428 := by core033_kernel_decide
theorem rows761 : actualRows761=WordField.canonicalRows actualModulus 761 (.badd 674 760) := by core033_kernel_decide
theorem stats761 : actualRows761.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows761=5388 := by core033_kernel_decide
theorem rows762 : actualRows762=WordField.canonicalRows actualModulus 762 (.band 755 728) := by core033_kernel_decide
theorem stats762 : actualRows762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows762=5124 := by core033_kernel_decide
theorem rows763 : actualRows763=WordField.canonicalRows actualModulus 763 (.bnot 755) := by core033_kernel_decide
theorem stats763 : actualRows763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows763=6276 := by core033_kernel_decide
theorem rows764 : actualRows764=WordField.canonicalRows actualModulus 764 (.band 763 701) := by core033_kernel_decide
theorem stats764 : actualRows764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows764=5124 := by core033_kernel_decide
theorem rows765 : actualRows765=WordField.canonicalRows actualModulus 765 (.bxor 762 764) := by core033_kernel_decide
theorem stats765 : actualRows765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows765=7428 := by core033_kernel_decide
theorem rows766 : actualRows766=WordField.canonicalRows actualModulus 766 (.badd 761 765) := by core033_kernel_decide
theorem stats766 : actualRows766.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows766=5388 := by core033_kernel_decide
theorem rows767 : actualRows767=WordField.canonicalRows actualModulus 767 (.literal (BitVec.ofNat 32 961987163)) := by core033_kernel_decide
theorem stats767 : actualRows767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows767=3972 := by core033_kernel_decide
theorem rows768 : actualRows768=WordField.canonicalRows actualModulus 768 (.badd 766 767) := by core033_kernel_decide
theorem stats768 : actualRows768.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows768=5388 := by core033_kernel_decide
theorem rows769 : actualRows769=WordField.canonicalRows actualModulus 769 (.badd 768 12) := by core033_kernel_decide
theorem stats769 : actualRows769.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows769=5388 := by core033_kernel_decide
theorem rows770 : actualRows770=WordField.canonicalRows actualModulus 770 (.rotr 754 2) := by core033_kernel_decide
theorem stats770 : actualRows770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows770=5124 := by core033_kernel_decide
theorem rows771 : actualRows771=WordField.canonicalRows actualModulus 771 (.rotr 754 13) := by core033_kernel_decide
theorem stats771 : actualRows771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows771=5124 := by core033_kernel_decide
theorem rows772 : actualRows772=WordField.canonicalRows actualModulus 772 (.bxor 770 771) := by core033_kernel_decide
theorem stats772 : actualRows772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows772=7428 := by core033_kernel_decide
theorem rows773 : actualRows773=WordField.canonicalRows actualModulus 773 (.rotr 754 22) := by core033_kernel_decide
theorem stats773 : actualRows773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows773=5124 := by core033_kernel_decide
theorem rows774 : actualRows774=WordField.canonicalRows actualModulus 774 (.bxor 772 773) := by core033_kernel_decide
theorem stats774 : actualRows774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows774=7428 := by core033_kernel_decide
theorem rows775 : actualRows775=WordField.canonicalRows actualModulus 775 (.band 754 727) := by core033_kernel_decide
theorem stats775 : actualRows775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows775=5124 := by core033_kernel_decide
theorem rows776 : actualRows776=WordField.canonicalRows actualModulus 776 (.band 754 700) := by core033_kernel_decide
theorem stats776 : actualRows776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows776=5124 := by core033_kernel_decide
theorem rows777 : actualRows777=WordField.canonicalRows actualModulus 777 (.bxor 775 776) := by core033_kernel_decide
theorem stats777 : actualRows777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows777=7428 := by core033_kernel_decide
theorem rows778 : actualRows778=WordField.canonicalRows actualModulus 778 (.band 727 700) := by core033_kernel_decide
theorem stats778 : actualRows778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows778=5124 := by core033_kernel_decide
theorem rows779 : actualRows779=WordField.canonicalRows actualModulus 779 (.bxor 777 778) := by core033_kernel_decide
theorem stats779 : actualRows779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows779=7428 := by core033_kernel_decide
theorem rows780 : actualRows780=WordField.canonicalRows actualModulus 780 (.badd 774 779) := by core033_kernel_decide
theorem stats780 : actualRows780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows780=5388 := by core033_kernel_decide
theorem rows781 : actualRows781=WordField.canonicalRows actualModulus 781 (.badd 769 780) := by core033_kernel_decide
theorem stats781 : actualRows781.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows781=5388 := by core033_kernel_decide
theorem rows782 : actualRows782=WordField.canonicalRows actualModulus 782 (.badd 673 769) := by core033_kernel_decide
theorem stats782 : actualRows782.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows782=5388 := by core033_kernel_decide
theorem rows783 : actualRows783=WordField.canonicalRows actualModulus 783 (.rotr 782 6) := by core033_kernel_decide
theorem stats783 : actualRows783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows783=5124 := by core033_kernel_decide
theorem rows784 : actualRows784=WordField.canonicalRows actualModulus 784 (.rotr 782 11) := by core033_kernel_decide
theorem stats784 : actualRows784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows784=5124 := by core033_kernel_decide
theorem rows785 : actualRows785=WordField.canonicalRows actualModulus 785 (.bxor 783 784) := by core033_kernel_decide
theorem stats785 : actualRows785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows785=7428 := by core033_kernel_decide
theorem rows786 : actualRows786=WordField.canonicalRows actualModulus 786 (.rotr 782 25) := by core033_kernel_decide
theorem stats786 : actualRows786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows786=5124 := by core033_kernel_decide
theorem rows787 : actualRows787=WordField.canonicalRows actualModulus 787 (.bxor 785 786) := by core033_kernel_decide
theorem stats787 : actualRows787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows787=7428 := by core033_kernel_decide
theorem rows788 : actualRows788=WordField.canonicalRows actualModulus 788 (.badd 701 787) := by core033_kernel_decide
theorem stats788 : actualRows788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows788=5388 := by core033_kernel_decide
theorem rows789 : actualRows789=WordField.canonicalRows actualModulus 789 (.band 782 755) := by core033_kernel_decide
theorem stats789 : actualRows789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows789=5124 := by core033_kernel_decide
theorem rows790 : actualRows790=WordField.canonicalRows actualModulus 790 (.bnot 782) := by core033_kernel_decide
theorem stats790 : actualRows790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows790=6276 := by core033_kernel_decide
theorem rows791 : actualRows791=WordField.canonicalRows actualModulus 791 (.band 790 728) := by core033_kernel_decide
theorem stats791 : actualRows791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows791=5124 := by core033_kernel_decide
def partRows11 : List R1CS.Row := actualRows728++actualRows729++actualRows730++actualRows731++actualRows732++actualRows733++actualRows734++actualRows735++actualRows736++actualRows737++actualRows738++actualRows739++actualRows740++actualRows741++actualRows742++actualRows743++actualRows744++actualRows745++actualRows746++actualRows747++actualRows748++actualRows749++actualRows750++actualRows751++actualRows752++actualRows753++actualRows754++actualRows755++actualRows756++actualRows757++actualRows758++actualRows759++actualRows760++actualRows761++actualRows762++actualRows763++actualRows764++actualRows765++actualRows766++actualRows767++actualRows768++actualRows769++actualRows770++actualRows771++actualRows772++actualRows773++actualRows774++actualRows775++actualRows776++actualRows777++actualRows778++actualRows779++actualRows780++actualRows781++actualRows782++actualRows783++actualRows784++actualRows785++actualRows786++actualRows787++actualRows788++actualRows789++actualRows790++actualRows791
def partOps11 : List WordIR.Op := [.badd 1 715,.rotr 728 6,.rotr 728 11,.bxor 729 730,.rotr 728 25,.bxor 731 732,.badd 4 733,.band 728 701,.bnot 728,.band 736 674,.bxor 735 737,.badd 734 738,.literal (BitVec.ofNat 32 3921009573),.badd 739 740,.badd 741 11,.rotr 727 2,.rotr 727 13,.bxor 743 744,.rotr 727 22,.bxor 745 746,.band 727 700,.band 727 673,.bxor 748 749,.band 700 673,.bxor 750 751,.badd 747 752,.badd 742 753,.badd 0 742,.rotr 755 6,.rotr 755 11,.bxor 756 757,.rotr 755 25,.bxor 758 759,.badd 674 760,.band 755 728,.bnot 755,.band 763 701,.bxor 762 764,.badd 761 765,.literal (BitVec.ofNat 32 961987163),.badd 766 767,.badd 768 12,.rotr 754 2,.rotr 754 13,.bxor 770 771,.rotr 754 22,.bxor 772 773,.band 754 727,.band 754 700,.bxor 775 776,.band 727 700,.bxor 777 778,.badd 774 779,.badd 769 780,.badd 673 769,.rotr 782 6,.rotr 782 11,.bxor 783 784,.rotr 782 25,.bxor 785 786,.badd 701 787,.band 782 755,.bnot 782,.band 790 728]
theorem partRowsExact11 : partRows11=WordField.rows actualModulus 728 partOps11 := by
  simp only [partRows11,partOps11,WordField.rows,rows728,rows729,rows730,rows731,rows732,rows733,rows734,rows735,rows736,rows737,rows738,rows739,rows740,rows741,rows742,rows743,rows744,rows745,rows746,rows747,rows748,rows749,rows750,rows751,rows752,rows753,rows754,rows755,rows756,rows757,rows758,rows759,rows760,rows761,rows762,rows763,rows764,rows765,rows766,rows767,rows768,rows769,rows770,rows771,rows772,rows773,rows774,rows775,rows776,rows777,rows778,rows779,rows780,rows781,rows782,rows783,rows784,rows785,rows786,rows787,rows788,rows789,rows790,rows791,List.append_assoc,List.append_nil]
theorem partOpsLength11 : partOps11.length=64 := by decide
theorem partStats11 : partRows11.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows11=370464 := by
  simp only [partRows11,List.length_append,MatrixRowBlocks.rows_weight_append,stats728.1,stats728.2,stats729.1,stats729.2,stats730.1,stats730.2,stats731.1,stats731.2,stats732.1,stats732.2,stats733.1,stats733.2,stats734.1,stats734.2,stats735.1,stats735.2,stats736.1,stats736.2,stats737.1,stats737.2,stats738.1,stats738.2,stats739.1,stats739.2,stats740.1,stats740.2,stats741.1,stats741.2,stats742.1,stats742.2,stats743.1,stats743.2,stats744.1,stats744.2,stats745.1,stats745.2,stats746.1,stats746.2,stats747.1,stats747.2,stats748.1,stats748.2,stats749.1,stats749.2,stats750.1,stats750.2,stats751.1,stats751.2,stats752.1,stats752.2,stats753.1,stats753.2,stats754.1,stats754.2,stats755.1,stats755.2,stats756.1,stats756.2,stats757.1,stats757.2,stats758.1,stats758.2,stats759.1,stats759.2,stats760.1,stats760.2,stats761.1,stats761.2,stats762.1,stats762.2,stats763.1,stats763.2,stats764.1,stats764.2,stats765.1,stats765.2,stats766.1,stats766.2,stats767.1,stats767.2,stats768.1,stats768.2,stats769.1,stats769.2,stats770.1,stats770.2,stats771.1,stats771.2,stats772.1,stats772.2,stats773.1,stats773.2,stats774.1,stats774.2,stats775.1,stats775.2,stats776.1,stats776.2,stats777.1,stats777.2,stats778.1,stats778.2,stats779.1,stats779.2,stats780.1,stats780.2,stats781.1,stats781.2,stats782.1,stats782.2,stats783.1,stats783.2,stats784.1,stats784.2,stats785.1,stats785.2,stats786.1,stats786.2,stats787.1,stats787.2,stats788.1,stats788.2,stats789.1,stats789.2,stats790.1,stats790.2,stats791.1,stats791.2]
  decide
end ActualSHAMatrixRows
