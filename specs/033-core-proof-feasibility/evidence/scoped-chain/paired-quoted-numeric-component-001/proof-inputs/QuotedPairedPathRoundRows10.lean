import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData11
import PairedPathRoundInstructionMatrixData12
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows736 : actualRows736=WordField.canonicalRows actualModulus 736 (.band 734 735) := by core033_kernel_decide
theorem stats736 : actualRows736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows736=5124 := by core033_kernel_decide
theorem rows737 : actualRows737=WordField.canonicalRows actualModulus 737 (.bxor 730 736) := by core033_kernel_decide
theorem stats737 : actualRows737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows737=7428 := by core033_kernel_decide
theorem rows738 : actualRows738=WordField.canonicalRows actualModulus 738 (.bnot 605) := by core033_kernel_decide
theorem stats738 : actualRows738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows738=6276 := by core033_kernel_decide
theorem rows739 : actualRows739=WordField.canonicalRows actualModulus 739 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats739 : actualRows739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows739=2892 := by core033_kernel_decide
theorem rows740 : actualRows740=WordField.canonicalRows actualModulus 740 (.badd 738 739) := by core033_kernel_decide
theorem stats740 : actualRows740.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows740=5388 := by core033_kernel_decide
theorem rows741 : actualRows741=WordField.canonicalRows actualModulus 741 (.band 740 462) := by core033_kernel_decide
theorem stats741 : actualRows741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows741=5124 := by core033_kernel_decide
theorem rows742 : actualRows742=WordField.canonicalRows actualModulus 742 (.bnot 605) := by core033_kernel_decide
theorem stats742 : actualRows742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows742=6276 := by core033_kernel_decide
theorem rows743 : actualRows743=WordField.canonicalRows actualModulus 743 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats743 : actualRows743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows743=2892 := by core033_kernel_decide
theorem rows744 : actualRows744=WordField.canonicalRows actualModulus 744 (.badd 742 743) := by core033_kernel_decide
theorem stats744 : actualRows744.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows744=5388 := by core033_kernel_decide
theorem rows745 : actualRows745=WordField.canonicalRows actualModulus 745 (.bnot 744) := by core033_kernel_decide
theorem stats745 : actualRows745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows745=6276 := by core033_kernel_decide
theorem rows746 : actualRows746=WordField.canonicalRows actualModulus 746 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats746 : actualRows746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows746=2820 := by core033_kernel_decide
theorem rows747 : actualRows747=WordField.canonicalRows actualModulus 747 (.band 745 746) := by core033_kernel_decide
theorem stats747 : actualRows747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows747=5124 := by core033_kernel_decide
theorem rows748 : actualRows748=WordField.canonicalRows actualModulus 748 (.bxor 741 747) := by core033_kernel_decide
theorem stats748 : actualRows748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows748=7428 := by core033_kernel_decide
theorem rows749 : actualRows749=WordField.canonicalRows actualModulus 749 (.bnot 605) := by core033_kernel_decide
theorem stats749 : actualRows749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows749=6276 := by core033_kernel_decide
theorem rows750 : actualRows750=WordField.canonicalRows actualModulus 750 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats750 : actualRows750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows750=2892 := by core033_kernel_decide
theorem rows751 : actualRows751=WordField.canonicalRows actualModulus 751 (.badd 749 750) := by core033_kernel_decide
theorem stats751 : actualRows751.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows751=5388 := by core033_kernel_decide
theorem rows752 : actualRows752=WordField.canonicalRows actualModulus 752 (.band 751 472) := by core033_kernel_decide
theorem stats752 : actualRows752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows752=5124 := by core033_kernel_decide
theorem rows753 : actualRows753=WordField.canonicalRows actualModulus 753 (.bnot 605) := by core033_kernel_decide
theorem stats753 : actualRows753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows753=6276 := by core033_kernel_decide
theorem rows754 : actualRows754=WordField.canonicalRows actualModulus 754 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats754 : actualRows754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows754=2892 := by core033_kernel_decide
theorem rows755 : actualRows755=WordField.canonicalRows actualModulus 755 (.badd 753 754) := by core033_kernel_decide
theorem stats755 : actualRows755.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows755=5388 := by core033_kernel_decide
theorem rows756 : actualRows756=WordField.canonicalRows actualModulus 756 (.bnot 755) := by core033_kernel_decide
theorem stats756 : actualRows756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows756=6276 := by core033_kernel_decide
theorem rows757 : actualRows757=WordField.canonicalRows actualModulus 757 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats757 : actualRows757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows757=2820 := by core033_kernel_decide
theorem rows758 : actualRows758=WordField.canonicalRows actualModulus 758 (.band 756 757) := by core033_kernel_decide
theorem stats758 : actualRows758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows758=5124 := by core033_kernel_decide
theorem rows759 : actualRows759=WordField.canonicalRows actualModulus 759 (.bxor 752 758) := by core033_kernel_decide
theorem stats759 : actualRows759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows759=7428 := by core033_kernel_decide
theorem rows760 : actualRows760=WordField.canonicalRows actualModulus 760 (.bnot 605) := by core033_kernel_decide
theorem stats760 : actualRows760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows760=6276 := by core033_kernel_decide
theorem rows761 : actualRows761=WordField.canonicalRows actualModulus 761 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats761 : actualRows761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows761=2892 := by core033_kernel_decide
theorem rows762 : actualRows762=WordField.canonicalRows actualModulus 762 (.badd 760 761) := by core033_kernel_decide
theorem stats762 : actualRows762.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows762=5388 := by core033_kernel_decide
theorem rows763 : actualRows763=WordField.canonicalRows actualModulus 763 (.band 762 482) := by core033_kernel_decide
theorem stats763 : actualRows763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows763=5124 := by core033_kernel_decide
theorem rows764 : actualRows764=WordField.canonicalRows actualModulus 764 (.bnot 605) := by core033_kernel_decide
theorem stats764 : actualRows764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows764=6276 := by core033_kernel_decide
theorem rows765 : actualRows765=WordField.canonicalRows actualModulus 765 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats765 : actualRows765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows765=2892 := by core033_kernel_decide
theorem rows766 : actualRows766=WordField.canonicalRows actualModulus 766 (.badd 764 765) := by core033_kernel_decide
theorem stats766 : actualRows766.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows766=5388 := by core033_kernel_decide
theorem rows767 : actualRows767=WordField.canonicalRows actualModulus 767 (.bnot 766) := by core033_kernel_decide
theorem stats767 : actualRows767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows767=6276 := by core033_kernel_decide
theorem rows768 : actualRows768=WordField.canonicalRows actualModulus 768 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats768 : actualRows768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows768=2820 := by core033_kernel_decide
theorem rows769 : actualRows769=WordField.canonicalRows actualModulus 769 (.band 767 768) := by core033_kernel_decide
theorem stats769 : actualRows769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows769=5124 := by core033_kernel_decide
theorem rows770 : actualRows770=WordField.canonicalRows actualModulus 770 (.bxor 763 769) := by core033_kernel_decide
theorem stats770 : actualRows770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows770=7428 := by core033_kernel_decide
theorem rows771 : actualRows771=WordField.canonicalRows actualModulus 771 (.bnot 605) := by core033_kernel_decide
theorem stats771 : actualRows771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows771=6276 := by core033_kernel_decide
theorem rows772 : actualRows772=WordField.canonicalRows actualModulus 772 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats772 : actualRows772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows772=2892 := by core033_kernel_decide
theorem rows773 : actualRows773=WordField.canonicalRows actualModulus 773 (.badd 771 772) := by core033_kernel_decide
theorem stats773 : actualRows773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows773=5388 := by core033_kernel_decide
theorem rows774 : actualRows774=WordField.canonicalRows actualModulus 774 (.band 773 492) := by core033_kernel_decide
theorem stats774 : actualRows774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows774=5124 := by core033_kernel_decide
theorem rows775 : actualRows775=WordField.canonicalRows actualModulus 775 (.bnot 605) := by core033_kernel_decide
theorem stats775 : actualRows775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows775=6276 := by core033_kernel_decide
theorem rows776 : actualRows776=WordField.canonicalRows actualModulus 776 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats776 : actualRows776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows776=2892 := by core033_kernel_decide
theorem rows777 : actualRows777=WordField.canonicalRows actualModulus 777 (.badd 775 776) := by core033_kernel_decide
theorem stats777 : actualRows777.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows777=5388 := by core033_kernel_decide
theorem rows778 : actualRows778=WordField.canonicalRows actualModulus 778 (.bnot 777) := by core033_kernel_decide
theorem stats778 : actualRows778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows778=6276 := by core033_kernel_decide
theorem rows779 : actualRows779=WordField.canonicalRows actualModulus 779 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats779 : actualRows779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows779=2820 := by core033_kernel_decide
theorem rows780 : actualRows780=WordField.canonicalRows actualModulus 780 (.band 778 779) := by core033_kernel_decide
theorem stats780 : actualRows780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows780=5124 := by core033_kernel_decide
theorem rows781 : actualRows781=WordField.canonicalRows actualModulus 781 (.bxor 774 780) := by core033_kernel_decide
theorem stats781 : actualRows781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows781=7428 := by core033_kernel_decide
theorem rows782 : actualRows782=WordField.canonicalRows actualModulus 782 (.bnot 605) := by core033_kernel_decide
theorem stats782 : actualRows782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows782=6276 := by core033_kernel_decide
theorem rows783 : actualRows783=WordField.canonicalRows actualModulus 783 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats783 : actualRows783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows783=2892 := by core033_kernel_decide
theorem rows784 : actualRows784=WordField.canonicalRows actualModulus 784 (.badd 782 783) := by core033_kernel_decide
theorem stats784 : actualRows784.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows784=5388 := by core033_kernel_decide
theorem rows785 : actualRows785=WordField.canonicalRows actualModulus 785 (.band 784 502) := by core033_kernel_decide
theorem stats785 : actualRows785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows785=5124 := by core033_kernel_decide
theorem rows786 : actualRows786=WordField.canonicalRows actualModulus 786 (.bnot 605) := by core033_kernel_decide
theorem stats786 : actualRows786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows786=6276 := by core033_kernel_decide
theorem rows787 : actualRows787=WordField.canonicalRows actualModulus 787 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats787 : actualRows787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows787=2892 := by core033_kernel_decide
theorem rows788 : actualRows788=WordField.canonicalRows actualModulus 788 (.badd 786 787) := by core033_kernel_decide
theorem stats788 : actualRows788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows788=5388 := by core033_kernel_decide
theorem rows789 : actualRows789=WordField.canonicalRows actualModulus 789 (.bnot 788) := by core033_kernel_decide
theorem stats789 : actualRows789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows789=6276 := by core033_kernel_decide
theorem rows790 : actualRows790=WordField.canonicalRows actualModulus 790 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats790 : actualRows790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows790=2820 := by core033_kernel_decide
theorem rows791 : actualRows791=WordField.canonicalRows actualModulus 791 (.band 789 790) := by core033_kernel_decide
theorem stats791 : actualRows791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows791=5124 := by core033_kernel_decide
theorem rows792 : actualRows792=WordField.canonicalRows actualModulus 792 (.bxor 785 791) := by core033_kernel_decide
theorem stats792 : actualRows792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows792=7428 := by core033_kernel_decide
theorem rows793 : actualRows793=WordField.canonicalRows actualModulus 793 (.bnot 605) := by core033_kernel_decide
theorem stats793 : actualRows793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows793=6276 := by core033_kernel_decide
theorem rows794 : actualRows794=WordField.canonicalRows actualModulus 794 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats794 : actualRows794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows794=2892 := by core033_kernel_decide
theorem rows795 : actualRows795=WordField.canonicalRows actualModulus 795 (.badd 793 794) := by core033_kernel_decide
theorem stats795 : actualRows795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows795=5388 := by core033_kernel_decide
theorem rows796 : actualRows796=WordField.canonicalRows actualModulus 796 (.band 795 512) := by core033_kernel_decide
theorem stats796 : actualRows796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows796=5124 := by core033_kernel_decide
theorem rows797 : actualRows797=WordField.canonicalRows actualModulus 797 (.bnot 605) := by core033_kernel_decide
theorem stats797 : actualRows797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows797=6276 := by core033_kernel_decide
theorem rows798 : actualRows798=WordField.canonicalRows actualModulus 798 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats798 : actualRows798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows798=2892 := by core033_kernel_decide
theorem rows799 : actualRows799=WordField.canonicalRows actualModulus 799 (.badd 797 798) := by core033_kernel_decide
theorem stats799 : actualRows799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows799=5388 := by core033_kernel_decide
def partRows10 : List R1CS.Row := actualRows736++actualRows737++actualRows738++actualRows739++actualRows740++actualRows741++actualRows742++actualRows743++actualRows744++actualRows745++actualRows746++actualRows747++actualRows748++actualRows749++actualRows750++actualRows751++actualRows752++actualRows753++actualRows754++actualRows755++actualRows756++actualRows757++actualRows758++actualRows759++actualRows760++actualRows761++actualRows762++actualRows763++actualRows764++actualRows765++actualRows766++actualRows767++actualRows768++actualRows769++actualRows770++actualRows771++actualRows772++actualRows773++actualRows774++actualRows775++actualRows776++actualRows777++actualRows778++actualRows779++actualRows780++actualRows781++actualRows782++actualRows783++actualRows784++actualRows785++actualRows786++actualRows787++actualRows788++actualRows789++actualRows790++actualRows791++actualRows792++actualRows793++actualRows794++actualRows795++actualRows796++actualRows797++actualRows798++actualRows799
def partOps10 : List WordIR.Op := [.band 734 735,.bxor 730 736,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 738 739,.band 740 462,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 742 743,.bnot 744,.literal (BitVec.ofNat 32 0),.band 745 746,.bxor 741 747,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 749 750,.band 751 472,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 753 754,.bnot 755,.literal (BitVec.ofNat 32 0),.band 756 757,.bxor 752 758,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 760 761,.band 762 482,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 764 765,.bnot 766,.literal (BitVec.ofNat 32 0),.band 767 768,.bxor 763 769,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 771 772,.band 773 492,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 775 776,.bnot 777,.literal (BitVec.ofNat 32 0),.band 778 779,.bxor 774 780,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 782 783,.band 784 502,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 786 787,.bnot 788,.literal (BitVec.ofNat 32 0),.band 789 790,.bxor 785 791,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 793 794,.band 795 512,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 797 798]
theorem partExact10 : partRows10=WordField.rows actualModulus 736 partOps10 := by
  simp only [partRows10,partOps10,WordField.rows,rows736,rows737,rows738,rows739,rows740,rows741,rows742,rows743,rows744,rows745,rows746,rows747,rows748,rows749,rows750,rows751,rows752,rows753,rows754,rows755,rows756,rows757,rows758,rows759,rows760,rows761,rows762,rows763,rows764,rows765,rows766,rows767,rows768,rows769,rows770,rows771,rows772,rows773,rows774,rows775,rows776,rows777,rows778,rows779,rows780,rows781,rows782,rows783,rows784,rows785,rows786,rows787,rows788,rows789,rows790,rows791,rows792,rows793,rows794,rows795,rows796,rows797,rows798,rows799,List.append_assoc,List.append_nil]
theorem partLength10 : partOps10.length=64 := by decide
theorem partStats10 : partRows10.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows10=326208 := by
  simp only [partRows10,List.length_append,MatrixRowBlocks.rows_weight_append,stats736.1,stats736.2,stats737.1,stats737.2,stats738.1,stats738.2,stats739.1,stats739.2,stats740.1,stats740.2,stats741.1,stats741.2,stats742.1,stats742.2,stats743.1,stats743.2,stats744.1,stats744.2,stats745.1,stats745.2,stats746.1,stats746.2,stats747.1,stats747.2,stats748.1,stats748.2,stats749.1,stats749.2,stats750.1,stats750.2,stats751.1,stats751.2,stats752.1,stats752.2,stats753.1,stats753.2,stats754.1,stats754.2,stats755.1,stats755.2,stats756.1,stats756.2,stats757.1,stats757.2,stats758.1,stats758.2,stats759.1,stats759.2,stats760.1,stats760.2,stats761.1,stats761.2,stats762.1,stats762.2,stats763.1,stats763.2,stats764.1,stats764.2,stats765.1,stats765.2,stats766.1,stats766.2,stats767.1,stats767.2,stats768.1,stats768.2,stats769.1,stats769.2,stats770.1,stats770.2,stats771.1,stats771.2,stats772.1,stats772.2,stats773.1,stats773.2,stats774.1,stats774.2,stats775.1,stats775.2,stats776.1,stats776.2,stats777.1,stats777.2,stats778.1,stats778.2,stats779.1,stats779.2,stats780.1,stats780.2,stats781.1,stats781.2,stats782.1,stats782.2,stats783.1,stats783.2,stats784.1,stats784.2,stats785.1,stats785.2,stats786.1,stats786.2,stats787.1,stats787.2,stats788.1,stats788.2,stats789.1,stats789.2,stats790.1,stats790.2,stats791.1,stats791.2,stats792.1,stats792.2,stats793.1,stats793.2,stats794.1,stats794.2,stats795.1,stats795.2,stats796.1,stats796.2,stats797.1,stats797.2,stats798.1,stats798.2,stats799.1,stats799.2]
  decide
end QuotedPairedPathRoundCheckedRows
