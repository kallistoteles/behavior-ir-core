import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData11
import FrameHashControllerInstructionMatrixData12
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows747 : actualRows747=WordField.canonicalRows actualModulus 747 (.bxor 736 746) := by core033_kernel_decide
theorem stats747 : actualRows747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows747=7428 := by core033_kernel_decide
theorem rows748 : actualRows748=WordField.canonicalRows actualModulus 748 (.shr 747 31) := by core033_kernel_decide
theorem stats748 : actualRows748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows748=2892 := by core033_kernel_decide
theorem rows749 : actualRows749=WordField.canonicalRows actualModulus 749 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats749 : actualRows749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows749=2892 := by core033_kernel_decide
theorem rows750 : actualRows750=WordField.canonicalRows actualModulus 750 (.bxor 748 749) := by core033_kernel_decide
theorem stats750 : actualRows750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows750=7428 := by core033_kernel_decide
theorem rows751 : actualRows751=WordField.canonicalRows actualModulus 751 (.band 732 750) := by core033_kernel_decide
theorem stats751 : actualRows751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows751=5124 := by core033_kernel_decide
theorem rows752 : actualRows752=WordField.canonicalRows actualModulus 752 (.band 690 751) := by core033_kernel_decide
theorem stats752 : actualRows752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows752=5124 := by core033_kernel_decide
theorem rows753 : actualRows753=WordField.canonicalRows actualModulus 753 (.band 469 589) := by core033_kernel_decide
theorem stats753 : actualRows753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows753=5124 := by core033_kernel_decide
theorem rows754 : actualRows754=WordField.canonicalRows actualModulus 754 (.band 479 599) := by core033_kernel_decide
theorem stats754 : actualRows754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows754=5124 := by core033_kernel_decide
theorem rows755 : actualRows755=WordField.canonicalRows actualModulus 755 (.shr 469 1) := by core033_kernel_decide
theorem stats755 : actualRows755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows755=5052 := by core033_kernel_decide
theorem rows756 : actualRows756=WordField.canonicalRows actualModulus 756 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats756 : actualRows756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows756=2820 := by core033_kernel_decide
theorem rows757 : actualRows757=WordField.canonicalRows actualModulus 757 (.bnot 756) := by core033_kernel_decide
theorem stats757 : actualRows757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows757=6276 := by core033_kernel_decide
theorem rows758 : actualRows758=WordField.canonicalRows actualModulus 758 (.band 755 757) := by core033_kernel_decide
theorem stats758 : actualRows758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows758=5124 := by core033_kernel_decide
theorem rows759 : actualRows759=WordField.canonicalRows actualModulus 759 (.shr 469 1) := by core033_kernel_decide
theorem stats759 : actualRows759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows759=5052 := by core033_kernel_decide
theorem rows760 : actualRows760=WordField.canonicalRows actualModulus 760 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats760 : actualRows760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows760=2820 := by core033_kernel_decide
theorem rows761 : actualRows761=WordField.canonicalRows actualModulus 761 (.bnot 760) := by core033_kernel_decide
theorem stats761 : actualRows761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows761=6276 := by core033_kernel_decide
theorem rows762 : actualRows762=WordField.canonicalRows actualModulus 762 (.bxor 759 761) := by core033_kernel_decide
theorem stats762 : actualRows762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows762=7428 := by core033_kernel_decide
theorem rows763 : actualRows763=WordField.canonicalRows actualModulus 763 (.shr 469 1) := by core033_kernel_decide
theorem stats763 : actualRows763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows763=5052 := by core033_kernel_decide
theorem rows764 : actualRows764=WordField.canonicalRows actualModulus 764 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats764 : actualRows764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows764=2820 := by core033_kernel_decide
theorem rows765 : actualRows765=WordField.canonicalRows actualModulus 765 (.bnot 764) := by core033_kernel_decide
theorem stats765 : actualRows765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows765=6276 := by core033_kernel_decide
theorem rows766 : actualRows766=WordField.canonicalRows actualModulus 766 (.badd 763 765) := by core033_kernel_decide
theorem stats766 : actualRows766.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows766=5388 := by core033_kernel_decide
theorem rows767 : actualRows767=WordField.canonicalRows actualModulus 767 (.bnot 766) := by core033_kernel_decide
theorem stats767 : actualRows767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows767=6276 := by core033_kernel_decide
theorem rows768 : actualRows768=WordField.canonicalRows actualModulus 768 (.band 762 767) := by core033_kernel_decide
theorem stats768 : actualRows768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows768=5124 := by core033_kernel_decide
theorem rows769 : actualRows769=WordField.canonicalRows actualModulus 769 (.bxor 758 768) := by core033_kernel_decide
theorem stats769 : actualRows769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows769=7428 := by core033_kernel_decide
theorem rows770 : actualRows770=WordField.canonicalRows actualModulus 770 (.shr 769 31) := by core033_kernel_decide
theorem stats770 : actualRows770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows770=2892 := by core033_kernel_decide
theorem rows771 : actualRows771=WordField.canonicalRows actualModulus 771 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats771 : actualRows771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows771=2892 := by core033_kernel_decide
theorem rows772 : actualRows772=WordField.canonicalRows actualModulus 772 (.bxor 770 771) := by core033_kernel_decide
theorem stats772 : actualRows772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows772=7428 := by core033_kernel_decide
theorem rows773 : actualRows773=WordField.canonicalRows actualModulus 773 (.shr 589 1) := by core033_kernel_decide
theorem stats773 : actualRows773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows773=5052 := by core033_kernel_decide
theorem rows774 : actualRows774=WordField.canonicalRows actualModulus 774 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats774 : actualRows774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows774=2820 := by core033_kernel_decide
theorem rows775 : actualRows775=WordField.canonicalRows actualModulus 775 (.bnot 774) := by core033_kernel_decide
theorem stats775 : actualRows775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows775=6276 := by core033_kernel_decide
theorem rows776 : actualRows776=WordField.canonicalRows actualModulus 776 (.band 773 775) := by core033_kernel_decide
theorem stats776 : actualRows776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows776=5124 := by core033_kernel_decide
theorem rows777 : actualRows777=WordField.canonicalRows actualModulus 777 (.shr 589 1) := by core033_kernel_decide
theorem stats777 : actualRows777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows777=5052 := by core033_kernel_decide
theorem rows778 : actualRows778=WordField.canonicalRows actualModulus 778 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats778 : actualRows778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows778=2820 := by core033_kernel_decide
theorem rows779 : actualRows779=WordField.canonicalRows actualModulus 779 (.bnot 778) := by core033_kernel_decide
theorem stats779 : actualRows779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows779=6276 := by core033_kernel_decide
theorem rows780 : actualRows780=WordField.canonicalRows actualModulus 780 (.bxor 777 779) := by core033_kernel_decide
theorem stats780 : actualRows780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows780=7428 := by core033_kernel_decide
theorem rows781 : actualRows781=WordField.canonicalRows actualModulus 781 (.shr 589 1) := by core033_kernel_decide
theorem stats781 : actualRows781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows781=5052 := by core033_kernel_decide
theorem rows782 : actualRows782=WordField.canonicalRows actualModulus 782 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats782 : actualRows782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows782=2820 := by core033_kernel_decide
theorem rows783 : actualRows783=WordField.canonicalRows actualModulus 783 (.bnot 782) := by core033_kernel_decide
theorem stats783 : actualRows783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows783=6276 := by core033_kernel_decide
theorem rows784 : actualRows784=WordField.canonicalRows actualModulus 784 (.badd 781 783) := by core033_kernel_decide
theorem stats784 : actualRows784.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows784=5388 := by core033_kernel_decide
theorem rows785 : actualRows785=WordField.canonicalRows actualModulus 785 (.bnot 784) := by core033_kernel_decide
theorem stats785 : actualRows785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows785=6276 := by core033_kernel_decide
theorem rows786 : actualRows786=WordField.canonicalRows actualModulus 786 (.band 780 785) := by core033_kernel_decide
theorem stats786 : actualRows786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows786=5124 := by core033_kernel_decide
theorem rows787 : actualRows787=WordField.canonicalRows actualModulus 787 (.bxor 776 786) := by core033_kernel_decide
theorem stats787 : actualRows787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows787=7428 := by core033_kernel_decide
theorem rows788 : actualRows788=WordField.canonicalRows actualModulus 788 (.shr 787 31) := by core033_kernel_decide
theorem stats788 : actualRows788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows788=2892 := by core033_kernel_decide
theorem rows789 : actualRows789=WordField.canonicalRows actualModulus 789 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats789 : actualRows789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows789=2892 := by core033_kernel_decide
theorem rows790 : actualRows790=WordField.canonicalRows actualModulus 790 (.bxor 788 789) := by core033_kernel_decide
theorem stats790 : actualRows790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows790=7428 := by core033_kernel_decide
theorem rows791 : actualRows791=WordField.canonicalRows actualModulus 791 (.shr 479 1) := by core033_kernel_decide
theorem stats791 : actualRows791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows791=5052 := by core033_kernel_decide
theorem rows792 : actualRows792=WordField.canonicalRows actualModulus 792 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats792 : actualRows792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows792=2820 := by core033_kernel_decide
theorem rows793 : actualRows793=WordField.canonicalRows actualModulus 793 (.bnot 792) := by core033_kernel_decide
theorem stats793 : actualRows793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows793=6276 := by core033_kernel_decide
theorem rows794 : actualRows794=WordField.canonicalRows actualModulus 794 (.band 791 793) := by core033_kernel_decide
theorem stats794 : actualRows794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows794=5124 := by core033_kernel_decide
theorem rows795 : actualRows795=WordField.canonicalRows actualModulus 795 (.shr 479 1) := by core033_kernel_decide
theorem stats795 : actualRows795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows795=5052 := by core033_kernel_decide
theorem rows796 : actualRows796=WordField.canonicalRows actualModulus 796 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats796 : actualRows796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows796=2820 := by core033_kernel_decide
theorem rows797 : actualRows797=WordField.canonicalRows actualModulus 797 (.bnot 796) := by core033_kernel_decide
theorem stats797 : actualRows797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows797=6276 := by core033_kernel_decide
theorem rows798 : actualRows798=WordField.canonicalRows actualModulus 798 (.bxor 795 797) := by core033_kernel_decide
theorem stats798 : actualRows798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows798=7428 := by core033_kernel_decide
theorem rows799 : actualRows799=WordField.canonicalRows actualModulus 799 (.shr 479 1) := by core033_kernel_decide
theorem stats799 : actualRows799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows799=5052 := by core033_kernel_decide
theorem rows800 : actualRows800=WordField.canonicalRows actualModulus 800 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats800 : actualRows800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows800=2820 := by core033_kernel_decide
theorem rows801 : actualRows801=WordField.canonicalRows actualModulus 801 (.bnot 800) := by core033_kernel_decide
theorem stats801 : actualRows801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows801=6276 := by core033_kernel_decide
theorem rows802 : actualRows802=WordField.canonicalRows actualModulus 802 (.badd 799 801) := by core033_kernel_decide
theorem stats802 : actualRows802.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows802=5388 := by core033_kernel_decide
theorem rows803 : actualRows803=WordField.canonicalRows actualModulus 803 (.bnot 802) := by core033_kernel_decide
theorem stats803 : actualRows803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows803=6276 := by core033_kernel_decide
theorem rows804 : actualRows804=WordField.canonicalRows actualModulus 804 (.band 798 803) := by core033_kernel_decide
theorem stats804 : actualRows804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows804=5124 := by core033_kernel_decide
theorem rows805 : actualRows805=WordField.canonicalRows actualModulus 805 (.bxor 794 804) := by core033_kernel_decide
theorem stats805 : actualRows805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows805=7428 := by core033_kernel_decide
theorem rows806 : actualRows806=WordField.canonicalRows actualModulus 806 (.shr 805 31) := by core033_kernel_decide
theorem stats806 : actualRows806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows806=2892 := by core033_kernel_decide
theorem rows807 : actualRows807=WordField.canonicalRows actualModulus 807 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats807 : actualRows807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows807=2892 := by core033_kernel_decide
theorem rows808 : actualRows808=WordField.canonicalRows actualModulus 808 (.bxor 806 807) := by core033_kernel_decide
theorem stats808 : actualRows808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows808=7428 := by core033_kernel_decide
theorem rows809 : actualRows809=WordField.canonicalRows actualModulus 809 (.shr 599 1) := by core033_kernel_decide
theorem stats809 : actualRows809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows809=5052 := by core033_kernel_decide
theorem rows810 : actualRows810=WordField.canonicalRows actualModulus 810 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats810 : actualRows810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows810=2820 := by core033_kernel_decide
def partRows11 : List R1CS.Row := actualRows747++actualRows748++actualRows749++actualRows750++actualRows751++actualRows752++actualRows753++actualRows754++actualRows755++actualRows756++actualRows757++actualRows758++actualRows759++actualRows760++actualRows761++actualRows762++actualRows763++actualRows764++actualRows765++actualRows766++actualRows767++actualRows768++actualRows769++actualRows770++actualRows771++actualRows772++actualRows773++actualRows774++actualRows775++actualRows776++actualRows777++actualRows778++actualRows779++actualRows780++actualRows781++actualRows782++actualRows783++actualRows784++actualRows785++actualRows786++actualRows787++actualRows788++actualRows789++actualRows790++actualRows791++actualRows792++actualRows793++actualRows794++actualRows795++actualRows796++actualRows797++actualRows798++actualRows799++actualRows800++actualRows801++actualRows802++actualRows803++actualRows804++actualRows805++actualRows806++actualRows807++actualRows808++actualRows809++actualRows810
def partOps11 : List WordIR.Op := [.bxor 736 746,.shr 747 31,.literal (BitVec.ofNat 32 1),.bxor 748 749,.band 732 750,.band 690 751,.band 469 589,.band 479 599,.shr 469 1,.literal (BitVec.ofNat 32 0),.bnot 756,.band 755 757,.shr 469 1,.literal (BitVec.ofNat 32 0),.bnot 760,.bxor 759 761,.shr 469 1,.literal (BitVec.ofNat 32 0),.bnot 764,.badd 763 765,.bnot 766,.band 762 767,.bxor 758 768,.shr 769 31,.literal (BitVec.ofNat 32 1),.bxor 770 771,.shr 589 1,.literal (BitVec.ofNat 32 0),.bnot 774,.band 773 775,.shr 589 1,.literal (BitVec.ofNat 32 0),.bnot 778,.bxor 777 779,.shr 589 1,.literal (BitVec.ofNat 32 0),.bnot 782,.badd 781 783,.bnot 784,.band 780 785,.bxor 776 786,.shr 787 31,.literal (BitVec.ofNat 32 1),.bxor 788 789,.shr 479 1,.literal (BitVec.ofNat 32 0),.bnot 792,.band 791 793,.shr 479 1,.literal (BitVec.ofNat 32 0),.bnot 796,.bxor 795 797,.shr 479 1,.literal (BitVec.ofNat 32 0),.bnot 800,.badd 799 801,.bnot 802,.band 798 803,.bxor 794 804,.shr 805 31,.literal (BitVec.ofNat 32 1),.bxor 806 807,.shr 599 1,.literal (BitVec.ofNat 32 0)]
theorem partExact11 : partRows11=WordField.rows actualModulus 747 partOps11 := by
  simp only [partRows11,partOps11,WordField.rows,rows747,rows748,rows749,rows750,rows751,rows752,rows753,rows754,rows755,rows756,rows757,rows758,rows759,rows760,rows761,rows762,rows763,rows764,rows765,rows766,rows767,rows768,rows769,rows770,rows771,rows772,rows773,rows774,rows775,rows776,rows777,rows778,rows779,rows780,rows781,rows782,rows783,rows784,rows785,rows786,rows787,rows788,rows789,rows790,rows791,rows792,rows793,rows794,rows795,rows796,rows797,rows798,rows799,rows800,rows801,rows802,rows803,rows804,rows805,rows806,rows807,rows808,rows809,rows810,List.append_assoc,List.append_nil]
theorem partLength11 : partOps11.length=64 := by decide
theorem partStats11 : partRows11.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows11=326280 := by
  simp only [partRows11,List.length_append,MatrixRowBlocks.rows_weight_append,stats747.1,stats747.2,stats748.1,stats748.2,stats749.1,stats749.2,stats750.1,stats750.2,stats751.1,stats751.2,stats752.1,stats752.2,stats753.1,stats753.2,stats754.1,stats754.2,stats755.1,stats755.2,stats756.1,stats756.2,stats757.1,stats757.2,stats758.1,stats758.2,stats759.1,stats759.2,stats760.1,stats760.2,stats761.1,stats761.2,stats762.1,stats762.2,stats763.1,stats763.2,stats764.1,stats764.2,stats765.1,stats765.2,stats766.1,stats766.2,stats767.1,stats767.2,stats768.1,stats768.2,stats769.1,stats769.2,stats770.1,stats770.2,stats771.1,stats771.2,stats772.1,stats772.2,stats773.1,stats773.2,stats774.1,stats774.2,stats775.1,stats775.2,stats776.1,stats776.2,stats777.1,stats777.2,stats778.1,stats778.2,stats779.1,stats779.2,stats780.1,stats780.2,stats781.1,stats781.2,stats782.1,stats782.2,stats783.1,stats783.2,stats784.1,stats784.2,stats785.1,stats785.2,stats786.1,stats786.2,stats787.1,stats787.2,stats788.1,stats788.2,stats789.1,stats789.2,stats790.1,stats790.2,stats791.1,stats791.2,stats792.1,stats792.2,stats793.1,stats793.2,stats794.1,stats794.2,stats795.1,stats795.2,stats796.1,stats796.2,stats797.1,stats797.2,stats798.1,stats798.2,stats799.1,stats799.2,stats800.1,stats800.2,stats801.1,stats801.2,stats802.1,stats802.2,stats803.1,stats803.2,stats804.1,stats804.2,stats805.1,stats805.2,stats806.1,stats806.2,stats807.1,stats807.2,stats808.1,stats808.2,stats809.1,stats809.2,stats810.1,stats810.2]
  decide
end FrameHashControllerCheckedRows
