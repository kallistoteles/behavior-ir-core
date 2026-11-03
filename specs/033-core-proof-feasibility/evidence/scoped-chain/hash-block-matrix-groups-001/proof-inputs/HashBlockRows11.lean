import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData12
import HashBlockInstructionMatrixData13
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows776 : actualRows776=WordField.canonicalRows actualModulus 776 (.bxor 765 775) := by core033_kernel_decide
theorem stats776 : actualRows776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows776=7428 := by core033_kernel_decide
theorem rows777 : actualRows777=WordField.canonicalRows actualModulus 777 (.shr 776 31) := by core033_kernel_decide
theorem stats777 : actualRows777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows777=2892 := by core033_kernel_decide
theorem rows778 : actualRows778=WordField.canonicalRows actualModulus 778 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats778 : actualRows778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows778=2892 := by core033_kernel_decide
theorem rows779 : actualRows779=WordField.canonicalRows actualModulus 779 (.bxor 777 778) := by core033_kernel_decide
theorem stats779 : actualRows779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows779=7428 := by core033_kernel_decide
theorem rows780 : actualRows780=WordField.canonicalRows actualModulus 780 (.shr 42 8) := by core033_kernel_decide
theorem stats780 : actualRows780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows780=4548 := by core033_kernel_decide
theorem rows781 : actualRows781=WordField.canonicalRows actualModulus 781 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats781 : actualRows781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows781=2820 := by core033_kernel_decide
theorem rows782 : actualRows782=WordField.canonicalRows actualModulus 782 (.bnot 781) := by core033_kernel_decide
theorem stats782 : actualRows782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows782=6276 := by core033_kernel_decide
theorem rows783 : actualRows783=WordField.canonicalRows actualModulus 783 (.band 780 782) := by core033_kernel_decide
theorem stats783 : actualRows783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows783=5124 := by core033_kernel_decide
theorem rows784 : actualRows784=WordField.canonicalRows actualModulus 784 (.shr 42 8) := by core033_kernel_decide
theorem stats784 : actualRows784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows784=4548 := by core033_kernel_decide
theorem rows785 : actualRows785=WordField.canonicalRows actualModulus 785 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats785 : actualRows785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows785=2820 := by core033_kernel_decide
theorem rows786 : actualRows786=WordField.canonicalRows actualModulus 786 (.bnot 785) := by core033_kernel_decide
theorem stats786 : actualRows786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows786=6276 := by core033_kernel_decide
theorem rows787 : actualRows787=WordField.canonicalRows actualModulus 787 (.bxor 784 786) := by core033_kernel_decide
theorem stats787 : actualRows787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows787=7428 := by core033_kernel_decide
theorem rows788 : actualRows788=WordField.canonicalRows actualModulus 788 (.shr 42 8) := by core033_kernel_decide
theorem stats788 : actualRows788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows788=4548 := by core033_kernel_decide
theorem rows789 : actualRows789=WordField.canonicalRows actualModulus 789 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats789 : actualRows789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows789=2820 := by core033_kernel_decide
theorem rows790 : actualRows790=WordField.canonicalRows actualModulus 790 (.bnot 789) := by core033_kernel_decide
theorem stats790 : actualRows790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows790=6276 := by core033_kernel_decide
theorem rows791 : actualRows791=WordField.canonicalRows actualModulus 791 (.badd 788 790) := by core033_kernel_decide
theorem stats791 : actualRows791.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows791=5388 := by core033_kernel_decide
theorem rows792 : actualRows792=WordField.canonicalRows actualModulus 792 (.bnot 791) := by core033_kernel_decide
theorem stats792 : actualRows792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows792=6276 := by core033_kernel_decide
theorem rows793 : actualRows793=WordField.canonicalRows actualModulus 793 (.band 787 792) := by core033_kernel_decide
theorem stats793 : actualRows793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows793=5124 := by core033_kernel_decide
theorem rows794 : actualRows794=WordField.canonicalRows actualModulus 794 (.bxor 783 793) := by core033_kernel_decide
theorem stats794 : actualRows794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows794=7428 := by core033_kernel_decide
theorem rows795 : actualRows795=WordField.canonicalRows actualModulus 795 (.shr 794 31) := by core033_kernel_decide
theorem stats795 : actualRows795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows795=2892 := by core033_kernel_decide
theorem rows796 : actualRows796=WordField.canonicalRows actualModulus 796 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats796 : actualRows796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows796=2892 := by core033_kernel_decide
theorem rows797 : actualRows797=WordField.canonicalRows actualModulus 797 (.bxor 795 796) := by core033_kernel_decide
theorem stats797 : actualRows797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows797=7428 := by core033_kernel_decide
theorem rows798 : actualRows798=WordField.canonicalRows actualModulus 798 (.shr 43 8) := by core033_kernel_decide
theorem stats798 : actualRows798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows798=4548 := by core033_kernel_decide
theorem rows799 : actualRows799=WordField.canonicalRows actualModulus 799 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats799 : actualRows799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows799=2820 := by core033_kernel_decide
theorem rows800 : actualRows800=WordField.canonicalRows actualModulus 800 (.bnot 799) := by core033_kernel_decide
theorem stats800 : actualRows800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows800=6276 := by core033_kernel_decide
theorem rows801 : actualRows801=WordField.canonicalRows actualModulus 801 (.band 798 800) := by core033_kernel_decide
theorem stats801 : actualRows801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows801=5124 := by core033_kernel_decide
theorem rows802 : actualRows802=WordField.canonicalRows actualModulus 802 (.shr 43 8) := by core033_kernel_decide
theorem stats802 : actualRows802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows802=4548 := by core033_kernel_decide
theorem rows803 : actualRows803=WordField.canonicalRows actualModulus 803 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats803 : actualRows803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows803=2820 := by core033_kernel_decide
theorem rows804 : actualRows804=WordField.canonicalRows actualModulus 804 (.bnot 803) := by core033_kernel_decide
theorem stats804 : actualRows804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows804=6276 := by core033_kernel_decide
theorem rows805 : actualRows805=WordField.canonicalRows actualModulus 805 (.bxor 802 804) := by core033_kernel_decide
theorem stats805 : actualRows805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows805=7428 := by core033_kernel_decide
theorem rows806 : actualRows806=WordField.canonicalRows actualModulus 806 (.shr 43 8) := by core033_kernel_decide
theorem stats806 : actualRows806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows806=4548 := by core033_kernel_decide
theorem rows807 : actualRows807=WordField.canonicalRows actualModulus 807 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats807 : actualRows807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows807=2820 := by core033_kernel_decide
theorem rows808 : actualRows808=WordField.canonicalRows actualModulus 808 (.bnot 807) := by core033_kernel_decide
theorem stats808 : actualRows808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows808=6276 := by core033_kernel_decide
theorem rows809 : actualRows809=WordField.canonicalRows actualModulus 809 (.badd 806 808) := by core033_kernel_decide
theorem stats809 : actualRows809.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows809=5388 := by core033_kernel_decide
theorem rows810 : actualRows810=WordField.canonicalRows actualModulus 810 (.bnot 809) := by core033_kernel_decide
theorem stats810 : actualRows810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows810=6276 := by core033_kernel_decide
theorem rows811 : actualRows811=WordField.canonicalRows actualModulus 811 (.band 805 810) := by core033_kernel_decide
theorem stats811 : actualRows811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows811=5124 := by core033_kernel_decide
theorem rows812 : actualRows812=WordField.canonicalRows actualModulus 812 (.bxor 801 811) := by core033_kernel_decide
theorem stats812 : actualRows812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows812=7428 := by core033_kernel_decide
theorem rows813 : actualRows813=WordField.canonicalRows actualModulus 813 (.shr 812 31) := by core033_kernel_decide
theorem stats813 : actualRows813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows813=2892 := by core033_kernel_decide
theorem rows814 : actualRows814=WordField.canonicalRows actualModulus 814 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats814 : actualRows814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows814=2892 := by core033_kernel_decide
theorem rows815 : actualRows815=WordField.canonicalRows actualModulus 815 (.bxor 813 814) := by core033_kernel_decide
theorem stats815 : actualRows815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows815=7428 := by core033_kernel_decide
theorem rows816 : actualRows816=WordField.canonicalRows actualModulus 816 (.shr 44 8) := by core033_kernel_decide
theorem stats816 : actualRows816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows816=4548 := by core033_kernel_decide
theorem rows817 : actualRows817=WordField.canonicalRows actualModulus 817 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats817 : actualRows817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows817=2820 := by core033_kernel_decide
theorem rows818 : actualRows818=WordField.canonicalRows actualModulus 818 (.bnot 817) := by core033_kernel_decide
theorem stats818 : actualRows818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows818=6276 := by core033_kernel_decide
theorem rows819 : actualRows819=WordField.canonicalRows actualModulus 819 (.band 816 818) := by core033_kernel_decide
theorem stats819 : actualRows819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows819=5124 := by core033_kernel_decide
theorem rows820 : actualRows820=WordField.canonicalRows actualModulus 820 (.shr 44 8) := by core033_kernel_decide
theorem stats820 : actualRows820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows820=4548 := by core033_kernel_decide
theorem rows821 : actualRows821=WordField.canonicalRows actualModulus 821 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats821 : actualRows821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows821=2820 := by core033_kernel_decide
theorem rows822 : actualRows822=WordField.canonicalRows actualModulus 822 (.bnot 821) := by core033_kernel_decide
theorem stats822 : actualRows822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows822=6276 := by core033_kernel_decide
theorem rows823 : actualRows823=WordField.canonicalRows actualModulus 823 (.bxor 820 822) := by core033_kernel_decide
theorem stats823 : actualRows823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows823=7428 := by core033_kernel_decide
theorem rows824 : actualRows824=WordField.canonicalRows actualModulus 824 (.shr 44 8) := by core033_kernel_decide
theorem stats824 : actualRows824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows824=4548 := by core033_kernel_decide
theorem rows825 : actualRows825=WordField.canonicalRows actualModulus 825 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats825 : actualRows825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows825=2820 := by core033_kernel_decide
theorem rows826 : actualRows826=WordField.canonicalRows actualModulus 826 (.bnot 825) := by core033_kernel_decide
theorem stats826 : actualRows826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows826=6276 := by core033_kernel_decide
theorem rows827 : actualRows827=WordField.canonicalRows actualModulus 827 (.badd 824 826) := by core033_kernel_decide
theorem stats827 : actualRows827.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows827=5388 := by core033_kernel_decide
theorem rows828 : actualRows828=WordField.canonicalRows actualModulus 828 (.bnot 827) := by core033_kernel_decide
theorem stats828 : actualRows828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows828=6276 := by core033_kernel_decide
theorem rows829 : actualRows829=WordField.canonicalRows actualModulus 829 (.band 823 828) := by core033_kernel_decide
theorem stats829 : actualRows829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows829=5124 := by core033_kernel_decide
theorem rows830 : actualRows830=WordField.canonicalRows actualModulus 830 (.bxor 819 829) := by core033_kernel_decide
theorem stats830 : actualRows830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows830=7428 := by core033_kernel_decide
theorem rows831 : actualRows831=WordField.canonicalRows actualModulus 831 (.shr 830 31) := by core033_kernel_decide
theorem stats831 : actualRows831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows831=2892 := by core033_kernel_decide
theorem rows832 : actualRows832=WordField.canonicalRows actualModulus 832 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats832 : actualRows832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows832=2892 := by core033_kernel_decide
theorem rows833 : actualRows833=WordField.canonicalRows actualModulus 833 (.bxor 831 832) := by core033_kernel_decide
theorem stats833 : actualRows833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows833=7428 := by core033_kernel_decide
theorem rows834 : actualRows834=WordField.canonicalRows actualModulus 834 (.shr 45 8) := by core033_kernel_decide
theorem stats834 : actualRows834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows834=4548 := by core033_kernel_decide
theorem rows835 : actualRows835=WordField.canonicalRows actualModulus 835 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats835 : actualRows835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows835=2820 := by core033_kernel_decide
theorem rows836 : actualRows836=WordField.canonicalRows actualModulus 836 (.bnot 835) := by core033_kernel_decide
theorem stats836 : actualRows836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows836=6276 := by core033_kernel_decide
theorem rows837 : actualRows837=WordField.canonicalRows actualModulus 837 (.band 834 836) := by core033_kernel_decide
theorem stats837 : actualRows837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows837=5124 := by core033_kernel_decide
theorem rows838 : actualRows838=WordField.canonicalRows actualModulus 838 (.shr 45 8) := by core033_kernel_decide
theorem stats838 : actualRows838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows838=4548 := by core033_kernel_decide
theorem rows839 : actualRows839=WordField.canonicalRows actualModulus 839 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats839 : actualRows839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows839=2820 := by core033_kernel_decide
def partRows11 : List R1CS.Row := actualRows776++actualRows777++actualRows778++actualRows779++actualRows780++actualRows781++actualRows782++actualRows783++actualRows784++actualRows785++actualRows786++actualRows787++actualRows788++actualRows789++actualRows790++actualRows791++actualRows792++actualRows793++actualRows794++actualRows795++actualRows796++actualRows797++actualRows798++actualRows799++actualRows800++actualRows801++actualRows802++actualRows803++actualRows804++actualRows805++actualRows806++actualRows807++actualRows808++actualRows809++actualRows810++actualRows811++actualRows812++actualRows813++actualRows814++actualRows815++actualRows816++actualRows817++actualRows818++actualRows819++actualRows820++actualRows821++actualRows822++actualRows823++actualRows824++actualRows825++actualRows826++actualRows827++actualRows828++actualRows829++actualRows830++actualRows831++actualRows832++actualRows833++actualRows834++actualRows835++actualRows836++actualRows837++actualRows838++actualRows839
def partOps11 : List WordIR.Op := [.bxor 765 775,.shr 776 31,.literal (BitVec.ofNat 32 1),.bxor 777 778,.shr 42 8,.literal (BitVec.ofNat 32 0),.bnot 781,.band 780 782,.shr 42 8,.literal (BitVec.ofNat 32 0),.bnot 785,.bxor 784 786,.shr 42 8,.literal (BitVec.ofNat 32 0),.bnot 789,.badd 788 790,.bnot 791,.band 787 792,.bxor 783 793,.shr 794 31,.literal (BitVec.ofNat 32 1),.bxor 795 796,.shr 43 8,.literal (BitVec.ofNat 32 0),.bnot 799,.band 798 800,.shr 43 8,.literal (BitVec.ofNat 32 0),.bnot 803,.bxor 802 804,.shr 43 8,.literal (BitVec.ofNat 32 0),.bnot 807,.badd 806 808,.bnot 809,.band 805 810,.bxor 801 811,.shr 812 31,.literal (BitVec.ofNat 32 1),.bxor 813 814,.shr 44 8,.literal (BitVec.ofNat 32 0),.bnot 817,.band 816 818,.shr 44 8,.literal (BitVec.ofNat 32 0),.bnot 821,.bxor 820 822,.shr 44 8,.literal (BitVec.ofNat 32 0),.bnot 825,.badd 824 826,.bnot 827,.band 823 828,.bxor 819 829,.shr 830 31,.literal (BitVec.ofNat 32 1),.bxor 831 832,.shr 45 8,.literal (BitVec.ofNat 32 0),.bnot 835,.band 834 836,.shr 45 8,.literal (BitVec.ofNat 32 0)]
theorem partExact11 : partRows11=WordField.rows actualModulus 776 partOps11 := by
  simp only [partRows11,partOps11,WordField.rows,rows776,rows777,rows778,rows779,rows780,rows781,rows782,rows783,rows784,rows785,rows786,rows787,rows788,rows789,rows790,rows791,rows792,rows793,rows794,rows795,rows796,rows797,rows798,rows799,rows800,rows801,rows802,rows803,rows804,rows805,rows806,rows807,rows808,rows809,rows810,rows811,rows812,rows813,rows814,rows815,rows816,rows817,rows818,rows819,rows820,rows821,rows822,rows823,rows824,rows825,rows826,rows827,rows828,rows829,rows830,rows831,rows832,rows833,rows834,rows835,rows836,rows837,rows838,rows839,List.append_assoc,List.append_nil]
theorem partLength11 : partOps11.length=64 := by decide
theorem partStats11 : partRows11.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows11=319512 := by
  simp only [partRows11,List.length_append,MatrixRowBlocks.rows_weight_append,stats776.1,stats776.2,stats777.1,stats777.2,stats778.1,stats778.2,stats779.1,stats779.2,stats780.1,stats780.2,stats781.1,stats781.2,stats782.1,stats782.2,stats783.1,stats783.2,stats784.1,stats784.2,stats785.1,stats785.2,stats786.1,stats786.2,stats787.1,stats787.2,stats788.1,stats788.2,stats789.1,stats789.2,stats790.1,stats790.2,stats791.1,stats791.2,stats792.1,stats792.2,stats793.1,stats793.2,stats794.1,stats794.2,stats795.1,stats795.2,stats796.1,stats796.2,stats797.1,stats797.2,stats798.1,stats798.2,stats799.1,stats799.2,stats800.1,stats800.2,stats801.1,stats801.2,stats802.1,stats802.2,stats803.1,stats803.2,stats804.1,stats804.2,stats805.1,stats805.2,stats806.1,stats806.2,stats807.1,stats807.2,stats808.1,stats808.2,stats809.1,stats809.2,stats810.1,stats810.2,stats811.1,stats811.2,stats812.1,stats812.2,stats813.1,stats813.2,stats814.1,stats814.2,stats815.1,stats815.2,stats816.1,stats816.2,stats817.1,stats817.2,stats818.1,stats818.2,stats819.1,stats819.2,stats820.1,stats820.2,stats821.1,stats821.2,stats822.1,stats822.2,stats823.1,stats823.2,stats824.1,stats824.2,stats825.1,stats825.2,stats826.1,stats826.2,stats827.1,stats827.2,stats828.1,stats828.2,stats829.1,stats829.2,stats830.1,stats830.2,stats831.1,stats831.2,stats832.1,stats832.2,stats833.1,stats833.2,stats834.1,stats834.2,stats835.1,stats835.2,stats836.1,stats836.2,stats837.1,stats837.2,stats838.1,stats838.2,stats839.1,stats839.2]
  decide
end HashBlockCheckedRows
