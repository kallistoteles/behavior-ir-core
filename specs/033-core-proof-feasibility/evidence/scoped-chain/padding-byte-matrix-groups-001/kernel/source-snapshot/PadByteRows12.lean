import ActualPadByteIR
import ArtifactPadByteBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PadByteInstructionMatrixData12
namespace PadByteCheckedRows
open Core033 PadByteInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows771 : actualRows771=WordField.canonicalRows actualModulus 771 (.bnot 1) := by core033_kernel_decide
theorem stats771 : actualRows771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows771=6276 := by core033_kernel_decide
theorem rows772 : actualRows772=WordField.canonicalRows actualModulus 772 (.band 770 771) := by core033_kernel_decide
theorem stats772 : actualRows772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows772=5124 := by core033_kernel_decide
theorem rows773 : actualRows773=WordField.canonicalRows actualModulus 773 (.literal (BitVec.ofNat 32 9)) := by core033_kernel_decide
theorem stats773 : actualRows773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows773=2964 := by core033_kernel_decide
theorem rows774 : actualRows774=WordField.canonicalRows actualModulus 774 (.badd 0 773) := by core033_kernel_decide
theorem stats774 : actualRows774.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows774=5388 := by core033_kernel_decide
theorem rows775 : actualRows775=WordField.canonicalRows actualModulus 775 (.literal (BitVec.ofNat 32 119)) := by core033_kernel_decide
theorem stats775 : actualRows775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows775=3252 := by core033_kernel_decide
theorem rows776 : actualRows776=WordField.canonicalRows actualModulus 776 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats776 : actualRows776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows776=3252 := by core033_kernel_decide
theorem rows777 : actualRows777=WordField.canonicalRows actualModulus 777 (.band 0 776) := by core033_kernel_decide
theorem stats777 : actualRows777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows777=5124 := by core033_kernel_decide
theorem rows778 : actualRows778=WordField.canonicalRows actualModulus 778 (.bnot 777) := by core033_kernel_decide
theorem stats778 : actualRows778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows778=6276 := by core033_kernel_decide
theorem rows779 : actualRows779=WordField.canonicalRows actualModulus 779 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats779 : actualRows779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows779=2892 := by core033_kernel_decide
theorem rows780 : actualRows780=WordField.canonicalRows actualModulus 780 (.badd 778 779) := by core033_kernel_decide
theorem stats780 : actualRows780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows780=5388 := by core033_kernel_decide
theorem rows781 : actualRows781=WordField.canonicalRows actualModulus 781 (.badd 775 780) := by core033_kernel_decide
theorem stats781 : actualRows781.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows781=5388 := by core033_kernel_decide
theorem rows782 : actualRows782=WordField.canonicalRows actualModulus 782 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats782 : actualRows782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows782=3252 := by core033_kernel_decide
theorem rows783 : actualRows783=WordField.canonicalRows actualModulus 783 (.band 781 782) := by core033_kernel_decide
theorem stats783 : actualRows783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows783=5124 := by core033_kernel_decide
theorem rows784 : actualRows784=WordField.canonicalRows actualModulus 784 (.badd 774 783) := by core033_kernel_decide
theorem stats784 : actualRows784.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows784=5388 := by core033_kernel_decide
theorem rows785 : actualRows785=WordField.canonicalRows actualModulus 785 (.bnot 1) := by core033_kernel_decide
theorem stats785 : actualRows785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows785=6276 := by core033_kernel_decide
theorem rows786 : actualRows786=WordField.canonicalRows actualModulus 786 (.bxor 784 785) := by core033_kernel_decide
theorem stats786 : actualRows786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows786=7428 := by core033_kernel_decide
theorem rows787 : actualRows787=WordField.canonicalRows actualModulus 787 (.literal (BitVec.ofNat 32 9)) := by core033_kernel_decide
theorem stats787 : actualRows787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows787=2964 := by core033_kernel_decide
theorem rows788 : actualRows788=WordField.canonicalRows actualModulus 788 (.badd 0 787) := by core033_kernel_decide
theorem stats788 : actualRows788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows788=5388 := by core033_kernel_decide
theorem rows789 : actualRows789=WordField.canonicalRows actualModulus 789 (.literal (BitVec.ofNat 32 119)) := by core033_kernel_decide
theorem stats789 : actualRows789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows789=3252 := by core033_kernel_decide
theorem rows790 : actualRows790=WordField.canonicalRows actualModulus 790 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats790 : actualRows790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows790=3252 := by core033_kernel_decide
theorem rows791 : actualRows791=WordField.canonicalRows actualModulus 791 (.band 0 790) := by core033_kernel_decide
theorem stats791 : actualRows791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows791=5124 := by core033_kernel_decide
theorem rows792 : actualRows792=WordField.canonicalRows actualModulus 792 (.bnot 791) := by core033_kernel_decide
theorem stats792 : actualRows792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows792=6276 := by core033_kernel_decide
theorem rows793 : actualRows793=WordField.canonicalRows actualModulus 793 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats793 : actualRows793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows793=2892 := by core033_kernel_decide
theorem rows794 : actualRows794=WordField.canonicalRows actualModulus 794 (.badd 792 793) := by core033_kernel_decide
theorem stats794 : actualRows794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows794=5388 := by core033_kernel_decide
theorem rows795 : actualRows795=WordField.canonicalRows actualModulus 795 (.badd 789 794) := by core033_kernel_decide
theorem stats795 : actualRows795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows795=5388 := by core033_kernel_decide
theorem rows796 : actualRows796=WordField.canonicalRows actualModulus 796 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats796 : actualRows796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows796=3252 := by core033_kernel_decide
theorem rows797 : actualRows797=WordField.canonicalRows actualModulus 797 (.band 795 796) := by core033_kernel_decide
theorem stats797 : actualRows797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows797=5124 := by core033_kernel_decide
theorem rows798 : actualRows798=WordField.canonicalRows actualModulus 798 (.badd 788 797) := by core033_kernel_decide
theorem stats798 : actualRows798.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows798=5388 := by core033_kernel_decide
theorem rows799 : actualRows799=WordField.canonicalRows actualModulus 799 (.bnot 1) := by core033_kernel_decide
theorem stats799 : actualRows799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows799=6276 := by core033_kernel_decide
theorem rows800 : actualRows800=WordField.canonicalRows actualModulus 800 (.badd 798 799) := by core033_kernel_decide
theorem stats800 : actualRows800.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows800=5388 := by core033_kernel_decide
theorem rows801 : actualRows801=WordField.canonicalRows actualModulus 801 (.bnot 800) := by core033_kernel_decide
theorem stats801 : actualRows801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows801=6276 := by core033_kernel_decide
theorem rows802 : actualRows802=WordField.canonicalRows actualModulus 802 (.band 786 801) := by core033_kernel_decide
theorem stats802 : actualRows802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows802=5124 := by core033_kernel_decide
theorem rows803 : actualRows803=WordField.canonicalRows actualModulus 803 (.bxor 772 802) := by core033_kernel_decide
theorem stats803 : actualRows803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows803=7428 := by core033_kernel_decide
theorem rows804 : actualRows804=WordField.canonicalRows actualModulus 804 (.shr 803 31) := by core033_kernel_decide
theorem stats804 : actualRows804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows804=2892 := by core033_kernel_decide
theorem rows805 : actualRows805=WordField.canonicalRows actualModulus 805 (.shr 2 8) := by core033_kernel_decide
theorem stats805 : actualRows805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows805=4548 := by core033_kernel_decide
theorem rows806 : actualRows806=WordField.canonicalRows actualModulus 806 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats806 : actualRows806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows806=2820 := by core033_kernel_decide
theorem rows807 : actualRows807=WordField.canonicalRows actualModulus 807 (.bnot 806) := by core033_kernel_decide
theorem stats807 : actualRows807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows807=6276 := by core033_kernel_decide
theorem rows808 : actualRows808=WordField.canonicalRows actualModulus 808 (.band 805 807) := by core033_kernel_decide
theorem stats808 : actualRows808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows808=5124 := by core033_kernel_decide
theorem rows809 : actualRows809=WordField.canonicalRows actualModulus 809 (.shr 2 8) := by core033_kernel_decide
theorem stats809 : actualRows809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows809=4548 := by core033_kernel_decide
theorem rows810 : actualRows810=WordField.canonicalRows actualModulus 810 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats810 : actualRows810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows810=2820 := by core033_kernel_decide
theorem rows811 : actualRows811=WordField.canonicalRows actualModulus 811 (.bnot 810) := by core033_kernel_decide
theorem stats811 : actualRows811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows811=6276 := by core033_kernel_decide
theorem rows812 : actualRows812=WordField.canonicalRows actualModulus 812 (.bxor 809 811) := by core033_kernel_decide
theorem stats812 : actualRows812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows812=7428 := by core033_kernel_decide
theorem rows813 : actualRows813=WordField.canonicalRows actualModulus 813 (.shr 2 8) := by core033_kernel_decide
theorem stats813 : actualRows813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows813=4548 := by core033_kernel_decide
theorem rows814 : actualRows814=WordField.canonicalRows actualModulus 814 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats814 : actualRows814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows814=2820 := by core033_kernel_decide
theorem rows815 : actualRows815=WordField.canonicalRows actualModulus 815 (.bnot 814) := by core033_kernel_decide
theorem stats815 : actualRows815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows815=6276 := by core033_kernel_decide
theorem rows816 : actualRows816=WordField.canonicalRows actualModulus 816 (.badd 813 815) := by core033_kernel_decide
theorem stats816 : actualRows816.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows816=5388 := by core033_kernel_decide
theorem rows817 : actualRows817=WordField.canonicalRows actualModulus 817 (.bnot 816) := by core033_kernel_decide
theorem stats817 : actualRows817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows817=6276 := by core033_kernel_decide
theorem rows818 : actualRows818=WordField.canonicalRows actualModulus 818 (.band 812 817) := by core033_kernel_decide
theorem stats818 : actualRows818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows818=5124 := by core033_kernel_decide
theorem rows819 : actualRows819=WordField.canonicalRows actualModulus 819 (.bxor 808 818) := by core033_kernel_decide
theorem stats819 : actualRows819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows819=7428 := by core033_kernel_decide
theorem rows820 : actualRows820=WordField.canonicalRows actualModulus 820 (.shr 819 31) := by core033_kernel_decide
theorem stats820 : actualRows820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows820=2892 := by core033_kernel_decide
theorem rows821 : actualRows821=WordField.canonicalRows actualModulus 821 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats821 : actualRows821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows821=2892 := by core033_kernel_decide
theorem rows822 : actualRows822=WordField.canonicalRows actualModulus 822 (.bxor 820 821) := by core033_kernel_decide
theorem stats822 : actualRows822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows822=7428 := by core033_kernel_decide
def partRows12 : List R1CS.Row := actualRows771++actualRows772++actualRows773++actualRows774++actualRows775++actualRows776++actualRows777++actualRows778++actualRows779++actualRows780++actualRows781++actualRows782++actualRows783++actualRows784++actualRows785++actualRows786++actualRows787++actualRows788++actualRows789++actualRows790++actualRows791++actualRows792++actualRows793++actualRows794++actualRows795++actualRows796++actualRows797++actualRows798++actualRows799++actualRows800++actualRows801++actualRows802++actualRows803++actualRows804++actualRows805++actualRows806++actualRows807++actualRows808++actualRows809++actualRows810++actualRows811++actualRows812++actualRows813++actualRows814++actualRows815++actualRows816++actualRows817++actualRows818++actualRows819++actualRows820++actualRows821++actualRows822
def partOps12 : List WordIR.Op := [.bnot 1,.band 770 771,.literal (BitVec.ofNat 32 9),.badd 0 773,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 776,.bnot 777,.literal (BitVec.ofNat 32 1),.badd 778 779,.badd 775 780,.literal (BitVec.ofNat 32 63),.band 781 782,.badd 774 783,.bnot 1,.bxor 784 785,.literal (BitVec.ofNat 32 9),.badd 0 787,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 790,.bnot 791,.literal (BitVec.ofNat 32 1),.badd 792 793,.badd 789 794,.literal (BitVec.ofNat 32 63),.band 795 796,.badd 788 797,.bnot 1,.badd 798 799,.bnot 800,.band 786 801,.bxor 772 802,.shr 803 31,.shr 2 8,.literal (BitVec.ofNat 32 0),.bnot 806,.band 805 807,.shr 2 8,.literal (BitVec.ofNat 32 0),.bnot 810,.bxor 809 811,.shr 2 8,.literal (BitVec.ofNat 32 0),.bnot 814,.badd 813 815,.bnot 816,.band 812 817,.bxor 808 818,.shr 819 31,.literal (BitVec.ofNat 32 1),.bxor 820 821]
theorem partExact12 : partRows12=WordField.rows actualModulus 771 partOps12 := by
  simp only [partRows12,partOps12,WordField.rows,rows771,rows772,rows773,rows774,rows775,rows776,rows777,rows778,rows779,rows780,rows781,rows782,rows783,rows784,rows785,rows786,rows787,rows788,rows789,rows790,rows791,rows792,rows793,rows794,rows795,rows796,rows797,rows798,rows799,rows800,rows801,rows802,rows803,rows804,rows805,rows806,rows807,rows808,rows809,rows810,rows811,rows812,rows813,rows814,rows815,rows816,rows817,rows818,rows819,rows820,rows821,rows822,List.append_assoc,List.append_nil]
theorem partLength12 : partOps12.length=52 := by decide
theorem partStats12 : partRows12.length=1778 ∧ MatrixRowBlocks.rowsWeight partRows12=256776 := by
  simp only [partRows12,List.length_append,MatrixRowBlocks.rows_weight_append,stats771.1,stats771.2,stats772.1,stats772.2,stats773.1,stats773.2,stats774.1,stats774.2,stats775.1,stats775.2,stats776.1,stats776.2,stats777.1,stats777.2,stats778.1,stats778.2,stats779.1,stats779.2,stats780.1,stats780.2,stats781.1,stats781.2,stats782.1,stats782.2,stats783.1,stats783.2,stats784.1,stats784.2,stats785.1,stats785.2,stats786.1,stats786.2,stats787.1,stats787.2,stats788.1,stats788.2,stats789.1,stats789.2,stats790.1,stats790.2,stats791.1,stats791.2,stats792.1,stats792.2,stats793.1,stats793.2,stats794.1,stats794.2,stats795.1,stats795.2,stats796.1,stats796.2,stats797.1,stats797.2,stats798.1,stats798.2,stats799.1,stats799.2,stats800.1,stats800.2,stats801.1,stats801.2,stats802.1,stats802.2,stats803.1,stats803.2,stats804.1,stats804.2,stats805.1,stats805.2,stats806.1,stats806.2,stats807.1,stats807.2,stats808.1,stats808.2,stats809.1,stats809.2,stats810.1,stats810.2,stats811.1,stats811.2,stats812.1,stats812.2,stats813.1,stats813.2,stats814.1,stats814.2,stats815.1,stats815.2,stats816.1,stats816.2,stats817.1,stats817.2,stats818.1,stats818.2,stats819.1,stats819.2,stats820.1,stats820.2,stats821.1,stats821.2,stats822.1,stats822.2]
  decide
end PadByteCheckedRows
