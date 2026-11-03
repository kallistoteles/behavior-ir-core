import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData11
import AuthenticatedBranchRoundInstructionMatrixData12
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows758 : actualRows758=WordField.canonicalRows actualModulus 758 (.band 757 6) := by core033_kernel_decide
theorem stats758 : actualRows758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows758=5124 := by core033_kernel_decide
theorem rows759 : actualRows759=WordField.canonicalRows actualModulus 759 (.bxor 753 758) := by core033_kernel_decide
theorem stats759 : actualRows759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows759=7428 := by core033_kernel_decide
theorem rows760 : actualRows760=WordField.canonicalRows actualModulus 760 (.bnot 182) := by core033_kernel_decide
theorem stats760 : actualRows760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows760=6276 := by core033_kernel_decide
theorem rows761 : actualRows761=WordField.canonicalRows actualModulus 761 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats761 : actualRows761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows761=2892 := by core033_kernel_decide
theorem rows762 : actualRows762=WordField.canonicalRows actualModulus 762 (.badd 760 761) := by core033_kernel_decide
theorem stats762 : actualRows762.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows762=5388 := by core033_kernel_decide
theorem rows763 : actualRows763=WordField.canonicalRows actualModulus 763 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats763 : actualRows763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows763=2820 := by core033_kernel_decide
theorem rows764 : actualRows764=WordField.canonicalRows actualModulus 764 (.band 762 763) := by core033_kernel_decide
theorem stats764 : actualRows764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows764=5124 := by core033_kernel_decide
theorem rows765 : actualRows765=WordField.canonicalRows actualModulus 765 (.bnot 182) := by core033_kernel_decide
theorem stats765 : actualRows765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows765=6276 := by core033_kernel_decide
theorem rows766 : actualRows766=WordField.canonicalRows actualModulus 766 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats766 : actualRows766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows766=2892 := by core033_kernel_decide
theorem rows767 : actualRows767=WordField.canonicalRows actualModulus 767 (.badd 765 766) := by core033_kernel_decide
theorem stats767 : actualRows767.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows767=5388 := by core033_kernel_decide
theorem rows768 : actualRows768=WordField.canonicalRows actualModulus 768 (.bnot 767) := by core033_kernel_decide
theorem stats768 : actualRows768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows768=6276 := by core033_kernel_decide
theorem rows769 : actualRows769=WordField.canonicalRows actualModulus 769 (.band 768 7) := by core033_kernel_decide
theorem stats769 : actualRows769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows769=5124 := by core033_kernel_decide
theorem rows770 : actualRows770=WordField.canonicalRows actualModulus 770 (.bxor 764 769) := by core033_kernel_decide
theorem stats770 : actualRows770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows770=7428 := by core033_kernel_decide
theorem rows771 : actualRows771=WordField.canonicalRows actualModulus 771 (.bnot 182) := by core033_kernel_decide
theorem stats771 : actualRows771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows771=6276 := by core033_kernel_decide
theorem rows772 : actualRows772=WordField.canonicalRows actualModulus 772 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats772 : actualRows772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows772=2892 := by core033_kernel_decide
theorem rows773 : actualRows773=WordField.canonicalRows actualModulus 773 (.badd 771 772) := by core033_kernel_decide
theorem stats773 : actualRows773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows773=5388 := by core033_kernel_decide
theorem rows774 : actualRows774=WordField.canonicalRows actualModulus 774 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats774 : actualRows774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows774=2820 := by core033_kernel_decide
theorem rows775 : actualRows775=WordField.canonicalRows actualModulus 775 (.band 773 774) := by core033_kernel_decide
theorem stats775 : actualRows775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows775=5124 := by core033_kernel_decide
theorem rows776 : actualRows776=WordField.canonicalRows actualModulus 776 (.bnot 182) := by core033_kernel_decide
theorem stats776 : actualRows776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows776=6276 := by core033_kernel_decide
theorem rows777 : actualRows777=WordField.canonicalRows actualModulus 777 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats777 : actualRows777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows777=2892 := by core033_kernel_decide
theorem rows778 : actualRows778=WordField.canonicalRows actualModulus 778 (.badd 776 777) := by core033_kernel_decide
theorem stats778 : actualRows778.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows778=5388 := by core033_kernel_decide
theorem rows779 : actualRows779=WordField.canonicalRows actualModulus 779 (.bnot 778) := by core033_kernel_decide
theorem stats779 : actualRows779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows779=6276 := by core033_kernel_decide
theorem rows780 : actualRows780=WordField.canonicalRows actualModulus 780 (.band 779 8) := by core033_kernel_decide
theorem stats780 : actualRows780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows780=5124 := by core033_kernel_decide
theorem rows781 : actualRows781=WordField.canonicalRows actualModulus 781 (.bxor 775 780) := by core033_kernel_decide
theorem stats781 : actualRows781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows781=7428 := by core033_kernel_decide
theorem rows782 : actualRows782=WordField.canonicalRows actualModulus 782 (.bnot 182) := by core033_kernel_decide
theorem stats782 : actualRows782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows782=6276 := by core033_kernel_decide
theorem rows783 : actualRows783=WordField.canonicalRows actualModulus 783 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats783 : actualRows783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows783=2892 := by core033_kernel_decide
theorem rows784 : actualRows784=WordField.canonicalRows actualModulus 784 (.badd 782 783) := by core033_kernel_decide
theorem stats784 : actualRows784.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows784=5388 := by core033_kernel_decide
theorem rows785 : actualRows785=WordField.canonicalRows actualModulus 785 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats785 : actualRows785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows785=2820 := by core033_kernel_decide
theorem rows786 : actualRows786=WordField.canonicalRows actualModulus 786 (.band 784 785) := by core033_kernel_decide
theorem stats786 : actualRows786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows786=5124 := by core033_kernel_decide
theorem rows787 : actualRows787=WordField.canonicalRows actualModulus 787 (.bnot 182) := by core033_kernel_decide
theorem stats787 : actualRows787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows787=6276 := by core033_kernel_decide
theorem rows788 : actualRows788=WordField.canonicalRows actualModulus 788 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats788 : actualRows788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows788=2892 := by core033_kernel_decide
theorem rows789 : actualRows789=WordField.canonicalRows actualModulus 789 (.badd 787 788) := by core033_kernel_decide
theorem stats789 : actualRows789.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows789=5388 := by core033_kernel_decide
theorem rows790 : actualRows790=WordField.canonicalRows actualModulus 790 (.bnot 789) := by core033_kernel_decide
theorem stats790 : actualRows790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows790=6276 := by core033_kernel_decide
theorem rows791 : actualRows791=WordField.canonicalRows actualModulus 791 (.band 790 9) := by core033_kernel_decide
theorem stats791 : actualRows791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows791=5124 := by core033_kernel_decide
theorem rows792 : actualRows792=WordField.canonicalRows actualModulus 792 (.bxor 786 791) := by core033_kernel_decide
theorem stats792 : actualRows792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows792=7428 := by core033_kernel_decide
theorem rows793 : actualRows793=WordField.canonicalRows actualModulus 793 (.bnot 182) := by core033_kernel_decide
theorem stats793 : actualRows793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows793=6276 := by core033_kernel_decide
theorem rows794 : actualRows794=WordField.canonicalRows actualModulus 794 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats794 : actualRows794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows794=2892 := by core033_kernel_decide
theorem rows795 : actualRows795=WordField.canonicalRows actualModulus 795 (.badd 793 794) := by core033_kernel_decide
theorem stats795 : actualRows795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows795=5388 := by core033_kernel_decide
theorem rows796 : actualRows796=WordField.canonicalRows actualModulus 796 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats796 : actualRows796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows796=2820 := by core033_kernel_decide
theorem rows797 : actualRows797=WordField.canonicalRows actualModulus 797 (.band 795 796) := by core033_kernel_decide
theorem stats797 : actualRows797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows797=5124 := by core033_kernel_decide
theorem rows798 : actualRows798=WordField.canonicalRows actualModulus 798 (.bnot 182) := by core033_kernel_decide
theorem stats798 : actualRows798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows798=6276 := by core033_kernel_decide
theorem rows799 : actualRows799=WordField.canonicalRows actualModulus 799 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats799 : actualRows799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows799=2892 := by core033_kernel_decide
theorem rows800 : actualRows800=WordField.canonicalRows actualModulus 800 (.badd 798 799) := by core033_kernel_decide
theorem stats800 : actualRows800.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows800=5388 := by core033_kernel_decide
theorem rows801 : actualRows801=WordField.canonicalRows actualModulus 801 (.bnot 800) := by core033_kernel_decide
theorem stats801 : actualRows801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows801=6276 := by core033_kernel_decide
theorem rows802 : actualRows802=WordField.canonicalRows actualModulus 802 (.band 801 10) := by core033_kernel_decide
theorem stats802 : actualRows802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows802=5124 := by core033_kernel_decide
theorem rows803 : actualRows803=WordField.canonicalRows actualModulus 803 (.bxor 797 802) := by core033_kernel_decide
theorem stats803 : actualRows803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows803=7428 := by core033_kernel_decide
theorem rows804 : actualRows804=WordField.canonicalRows actualModulus 804 (.bnot 182) := by core033_kernel_decide
theorem stats804 : actualRows804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows804=6276 := by core033_kernel_decide
theorem rows805 : actualRows805=WordField.canonicalRows actualModulus 805 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats805 : actualRows805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows805=2892 := by core033_kernel_decide
theorem rows806 : actualRows806=WordField.canonicalRows actualModulus 806 (.badd 804 805) := by core033_kernel_decide
theorem stats806 : actualRows806.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows806=5388 := by core033_kernel_decide
theorem rows807 : actualRows807=WordField.canonicalRows actualModulus 807 (.band 806 96) := by core033_kernel_decide
theorem stats807 : actualRows807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows807=5124 := by core033_kernel_decide
theorem rows808 : actualRows808=WordField.canonicalRows actualModulus 808 (.bnot 182) := by core033_kernel_decide
theorem stats808 : actualRows808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows808=6276 := by core033_kernel_decide
theorem rows809 : actualRows809=WordField.canonicalRows actualModulus 809 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats809 : actualRows809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows809=2892 := by core033_kernel_decide
theorem rows810 : actualRows810=WordField.canonicalRows actualModulus 810 (.badd 808 809) := by core033_kernel_decide
theorem stats810 : actualRows810.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows810=5388 := by core033_kernel_decide
theorem rows811 : actualRows811=WordField.canonicalRows actualModulus 811 (.bnot 810) := by core033_kernel_decide
theorem stats811 : actualRows811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows811=6276 := by core033_kernel_decide
theorem rows812 : actualRows812=WordField.canonicalRows actualModulus 812 (.bnot 247) := by core033_kernel_decide
theorem stats812 : actualRows812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows812=6276 := by core033_kernel_decide
theorem rows813 : actualRows813=WordField.canonicalRows actualModulus 813 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats813 : actualRows813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows813=2892 := by core033_kernel_decide
theorem rows814 : actualRows814=WordField.canonicalRows actualModulus 814 (.badd 812 813) := by core033_kernel_decide
theorem stats814 : actualRows814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows814=5388 := by core033_kernel_decide
theorem rows815 : actualRows815=WordField.canonicalRows actualModulus 815 (.band 814 23) := by core033_kernel_decide
theorem stats815 : actualRows815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows815=5124 := by core033_kernel_decide
theorem rows816 : actualRows816=WordField.canonicalRows actualModulus 816 (.bnot 247) := by core033_kernel_decide
theorem stats816 : actualRows816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows816=6276 := by core033_kernel_decide
theorem rows817 : actualRows817=WordField.canonicalRows actualModulus 817 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats817 : actualRows817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows817=2892 := by core033_kernel_decide
theorem rows818 : actualRows818=WordField.canonicalRows actualModulus 818 (.badd 816 817) := by core033_kernel_decide
theorem stats818 : actualRows818.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows818=5388 := by core033_kernel_decide
theorem rows819 : actualRows819=WordField.canonicalRows actualModulus 819 (.bnot 818) := by core033_kernel_decide
theorem stats819 : actualRows819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows819=6276 := by core033_kernel_decide
theorem rows820 : actualRows820=WordField.canonicalRows actualModulus 820 (.band 819 11) := by core033_kernel_decide
theorem stats820 : actualRows820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows820=5124 := by core033_kernel_decide
theorem rows821 : actualRows821=WordField.canonicalRows actualModulus 821 (.bxor 815 820) := by core033_kernel_decide
theorem stats821 : actualRows821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows821=7428 := by core033_kernel_decide
def partRows10 : List R1CS.Row := actualRows758++actualRows759++actualRows760++actualRows761++actualRows762++actualRows763++actualRows764++actualRows765++actualRows766++actualRows767++actualRows768++actualRows769++actualRows770++actualRows771++actualRows772++actualRows773++actualRows774++actualRows775++actualRows776++actualRows777++actualRows778++actualRows779++actualRows780++actualRows781++actualRows782++actualRows783++actualRows784++actualRows785++actualRows786++actualRows787++actualRows788++actualRows789++actualRows790++actualRows791++actualRows792++actualRows793++actualRows794++actualRows795++actualRows796++actualRows797++actualRows798++actualRows799++actualRows800++actualRows801++actualRows802++actualRows803++actualRows804++actualRows805++actualRows806++actualRows807++actualRows808++actualRows809++actualRows810++actualRows811++actualRows812++actualRows813++actualRows814++actualRows815++actualRows816++actualRows817++actualRows818++actualRows819++actualRows820++actualRows821
def partOps10 : List WordIR.Op := [.band 757 6,.bxor 753 758,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 760 761,.literal (BitVec.ofNat 32 0),.band 762 763,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 765 766,.bnot 767,.band 768 7,.bxor 764 769,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 771 772,.literal (BitVec.ofNat 32 0),.band 773 774,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 776 777,.bnot 778,.band 779 8,.bxor 775 780,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 782 783,.literal (BitVec.ofNat 32 0),.band 784 785,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 787 788,.bnot 789,.band 790 9,.bxor 786 791,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 793 794,.literal (BitVec.ofNat 32 0),.band 795 796,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 798 799,.bnot 800,.band 801 10,.bxor 797 802,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 804 805,.band 806 96,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 808 809,.bnot 810,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 812 813,.band 814 23,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 816 817,.bnot 818,.band 819 11,.bxor 815 820]
theorem partExact10 : partRows10=WordField.rows actualModulus 758 partOps10 := by
  simp only [partRows10,partOps10,WordField.rows,rows758,rows759,rows760,rows761,rows762,rows763,rows764,rows765,rows766,rows767,rows768,rows769,rows770,rows771,rows772,rows773,rows774,rows775,rows776,rows777,rows778,rows779,rows780,rows781,rows782,rows783,rows784,rows785,rows786,rows787,rows788,rows789,rows790,rows791,rows792,rows793,rows794,rows795,rows796,rows797,rows798,rows799,rows800,rows801,rows802,rows803,rows804,rows805,rows806,rows807,rows808,rows809,rows810,rows811,rows812,rows813,rows814,rows815,rows816,rows817,rows818,rows819,rows820,rows821,List.append_assoc,List.append_nil]
theorem partLength10 : partOps10.length=64 := by decide
theorem partStats10 : partRows10.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows10=329664 := by
  simp only [partRows10,List.length_append,MatrixRowBlocks.rows_weight_append,stats758.1,stats758.2,stats759.1,stats759.2,stats760.1,stats760.2,stats761.1,stats761.2,stats762.1,stats762.2,stats763.1,stats763.2,stats764.1,stats764.2,stats765.1,stats765.2,stats766.1,stats766.2,stats767.1,stats767.2,stats768.1,stats768.2,stats769.1,stats769.2,stats770.1,stats770.2,stats771.1,stats771.2,stats772.1,stats772.2,stats773.1,stats773.2,stats774.1,stats774.2,stats775.1,stats775.2,stats776.1,stats776.2,stats777.1,stats777.2,stats778.1,stats778.2,stats779.1,stats779.2,stats780.1,stats780.2,stats781.1,stats781.2,stats782.1,stats782.2,stats783.1,stats783.2,stats784.1,stats784.2,stats785.1,stats785.2,stats786.1,stats786.2,stats787.1,stats787.2,stats788.1,stats788.2,stats789.1,stats789.2,stats790.1,stats790.2,stats791.1,stats791.2,stats792.1,stats792.2,stats793.1,stats793.2,stats794.1,stats794.2,stats795.1,stats795.2,stats796.1,stats796.2,stats797.1,stats797.2,stats798.1,stats798.2,stats799.1,stats799.2,stats800.1,stats800.2,stats801.1,stats801.2,stats802.1,stats802.2,stats803.1,stats803.2,stats804.1,stats804.2,stats805.1,stats805.2,stats806.1,stats806.2,stats807.1,stats807.2,stats808.1,stats808.2,stats809.1,stats809.2,stats810.1,stats810.2,stats811.1,stats811.2,stats812.1,stats812.2,stats813.1,stats813.2,stats814.1,stats814.2,stats815.1,stats815.2,stats816.1,stats816.2,stats817.1,stats817.2,stats818.1,stats818.2,stats819.1,stats819.2,stats820.1,stats820.2,stats821.1,stats821.2]
  decide
end AuthenticatedBranchRoundCheckedRows
