import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData12
import ActualMatrixData13
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows792 : actualRows792=WordField.canonicalRows actualModulus 792 (.bxor 789 791) := by core033_kernel_decide
theorem stats792 : actualRows792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows792=7428 := by core033_kernel_decide
theorem rows793 : actualRows793=WordField.canonicalRows actualModulus 793 (.badd 788 792) := by core033_kernel_decide
theorem stats793 : actualRows793.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows793=5388 := by core033_kernel_decide
theorem rows794 : actualRows794=WordField.canonicalRows actualModulus 794 (.literal (BitVec.ofNat 32 1508970993)) := by core033_kernel_decide
theorem stats794 : actualRows794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows794=3972 := by core033_kernel_decide
theorem rows795 : actualRows795=WordField.canonicalRows actualModulus 795 (.badd 793 794) := by core033_kernel_decide
theorem stats795 : actualRows795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows795=5388 := by core033_kernel_decide
theorem rows796 : actualRows796=WordField.canonicalRows actualModulus 796 (.badd 795 13) := by core033_kernel_decide
theorem stats796 : actualRows796.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows796=5388 := by core033_kernel_decide
theorem rows797 : actualRows797=WordField.canonicalRows actualModulus 797 (.rotr 781 2) := by core033_kernel_decide
theorem stats797 : actualRows797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows797=5124 := by core033_kernel_decide
theorem rows798 : actualRows798=WordField.canonicalRows actualModulus 798 (.rotr 781 13) := by core033_kernel_decide
theorem stats798 : actualRows798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows798=5124 := by core033_kernel_decide
theorem rows799 : actualRows799=WordField.canonicalRows actualModulus 799 (.bxor 797 798) := by core033_kernel_decide
theorem stats799 : actualRows799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows799=7428 := by core033_kernel_decide
theorem rows800 : actualRows800=WordField.canonicalRows actualModulus 800 (.rotr 781 22) := by core033_kernel_decide
theorem stats800 : actualRows800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows800=5124 := by core033_kernel_decide
theorem rows801 : actualRows801=WordField.canonicalRows actualModulus 801 (.bxor 799 800) := by core033_kernel_decide
theorem stats801 : actualRows801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows801=7428 := by core033_kernel_decide
theorem rows802 : actualRows802=WordField.canonicalRows actualModulus 802 (.band 781 754) := by core033_kernel_decide
theorem stats802 : actualRows802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows802=5124 := by core033_kernel_decide
theorem rows803 : actualRows803=WordField.canonicalRows actualModulus 803 (.band 781 727) := by core033_kernel_decide
theorem stats803 : actualRows803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows803=5124 := by core033_kernel_decide
theorem rows804 : actualRows804=WordField.canonicalRows actualModulus 804 (.bxor 802 803) := by core033_kernel_decide
theorem stats804 : actualRows804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows804=7428 := by core033_kernel_decide
theorem rows805 : actualRows805=WordField.canonicalRows actualModulus 805 (.band 754 727) := by core033_kernel_decide
theorem stats805 : actualRows805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows805=5124 := by core033_kernel_decide
theorem rows806 : actualRows806=WordField.canonicalRows actualModulus 806 (.bxor 804 805) := by core033_kernel_decide
theorem stats806 : actualRows806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows806=7428 := by core033_kernel_decide
theorem rows807 : actualRows807=WordField.canonicalRows actualModulus 807 (.badd 801 806) := by core033_kernel_decide
theorem stats807 : actualRows807.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows807=5388 := by core033_kernel_decide
theorem rows808 : actualRows808=WordField.canonicalRows actualModulus 808 (.badd 796 807) := by core033_kernel_decide
theorem stats808 : actualRows808.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows808=5388 := by core033_kernel_decide
theorem rows809 : actualRows809=WordField.canonicalRows actualModulus 809 (.badd 700 796) := by core033_kernel_decide
theorem stats809 : actualRows809.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows809=5388 := by core033_kernel_decide
theorem rows810 : actualRows810=WordField.canonicalRows actualModulus 810 (.rotr 809 6) := by core033_kernel_decide
theorem stats810 : actualRows810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows810=5124 := by core033_kernel_decide
theorem rows811 : actualRows811=WordField.canonicalRows actualModulus 811 (.rotr 809 11) := by core033_kernel_decide
theorem stats811 : actualRows811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows811=5124 := by core033_kernel_decide
theorem rows812 : actualRows812=WordField.canonicalRows actualModulus 812 (.bxor 810 811) := by core033_kernel_decide
theorem stats812 : actualRows812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows812=7428 := by core033_kernel_decide
theorem rows813 : actualRows813=WordField.canonicalRows actualModulus 813 (.rotr 809 25) := by core033_kernel_decide
theorem stats813 : actualRows813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows813=5124 := by core033_kernel_decide
theorem rows814 : actualRows814=WordField.canonicalRows actualModulus 814 (.bxor 812 813) := by core033_kernel_decide
theorem stats814 : actualRows814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows814=7428 := by core033_kernel_decide
theorem rows815 : actualRows815=WordField.canonicalRows actualModulus 815 (.badd 728 814) := by core033_kernel_decide
theorem stats815 : actualRows815.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows815=5388 := by core033_kernel_decide
theorem rows816 : actualRows816=WordField.canonicalRows actualModulus 816 (.band 809 782) := by core033_kernel_decide
theorem stats816 : actualRows816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows816=5124 := by core033_kernel_decide
theorem rows817 : actualRows817=WordField.canonicalRows actualModulus 817 (.bnot 809) := by core033_kernel_decide
theorem stats817 : actualRows817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows817=6276 := by core033_kernel_decide
theorem rows818 : actualRows818=WordField.canonicalRows actualModulus 818 (.band 817 755) := by core033_kernel_decide
theorem stats818 : actualRows818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows818=5124 := by core033_kernel_decide
theorem rows819 : actualRows819=WordField.canonicalRows actualModulus 819 (.bxor 816 818) := by core033_kernel_decide
theorem stats819 : actualRows819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows819=7428 := by core033_kernel_decide
theorem rows820 : actualRows820=WordField.canonicalRows actualModulus 820 (.badd 815 819) := by core033_kernel_decide
theorem stats820 : actualRows820.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows820=5388 := by core033_kernel_decide
theorem rows821 : actualRows821=WordField.canonicalRows actualModulus 821 (.literal (BitVec.ofNat 32 2453635748)) := by core033_kernel_decide
theorem stats821 : actualRows821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows821=3828 := by core033_kernel_decide
theorem rows822 : actualRows822=WordField.canonicalRows actualModulus 822 (.badd 820 821) := by core033_kernel_decide
theorem stats822 : actualRows822.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows822=5388 := by core033_kernel_decide
theorem rows823 : actualRows823=WordField.canonicalRows actualModulus 823 (.badd 822 14) := by core033_kernel_decide
theorem stats823 : actualRows823.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows823=5388 := by core033_kernel_decide
theorem rows824 : actualRows824=WordField.canonicalRows actualModulus 824 (.rotr 808 2) := by core033_kernel_decide
theorem stats824 : actualRows824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows824=5124 := by core033_kernel_decide
theorem rows825 : actualRows825=WordField.canonicalRows actualModulus 825 (.rotr 808 13) := by core033_kernel_decide
theorem stats825 : actualRows825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows825=5124 := by core033_kernel_decide
theorem rows826 : actualRows826=WordField.canonicalRows actualModulus 826 (.bxor 824 825) := by core033_kernel_decide
theorem stats826 : actualRows826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows826=7428 := by core033_kernel_decide
theorem rows827 : actualRows827=WordField.canonicalRows actualModulus 827 (.rotr 808 22) := by core033_kernel_decide
theorem stats827 : actualRows827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows827=5124 := by core033_kernel_decide
theorem rows828 : actualRows828=WordField.canonicalRows actualModulus 828 (.bxor 826 827) := by core033_kernel_decide
theorem stats828 : actualRows828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows828=7428 := by core033_kernel_decide
theorem rows829 : actualRows829=WordField.canonicalRows actualModulus 829 (.band 808 781) := by core033_kernel_decide
theorem stats829 : actualRows829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows829=5124 := by core033_kernel_decide
theorem rows830 : actualRows830=WordField.canonicalRows actualModulus 830 (.band 808 754) := by core033_kernel_decide
theorem stats830 : actualRows830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows830=5124 := by core033_kernel_decide
theorem rows831 : actualRows831=WordField.canonicalRows actualModulus 831 (.bxor 829 830) := by core033_kernel_decide
theorem stats831 : actualRows831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows831=7428 := by core033_kernel_decide
theorem rows832 : actualRows832=WordField.canonicalRows actualModulus 832 (.band 781 754) := by core033_kernel_decide
theorem stats832 : actualRows832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows832=5124 := by core033_kernel_decide
theorem rows833 : actualRows833=WordField.canonicalRows actualModulus 833 (.bxor 831 832) := by core033_kernel_decide
theorem stats833 : actualRows833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows833=7428 := by core033_kernel_decide
theorem rows834 : actualRows834=WordField.canonicalRows actualModulus 834 (.badd 828 833) := by core033_kernel_decide
theorem stats834 : actualRows834.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows834=5388 := by core033_kernel_decide
theorem rows835 : actualRows835=WordField.canonicalRows actualModulus 835 (.badd 823 834) := by core033_kernel_decide
theorem stats835 : actualRows835.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows835=5388 := by core033_kernel_decide
theorem rows836 : actualRows836=WordField.canonicalRows actualModulus 836 (.badd 727 823) := by core033_kernel_decide
theorem stats836 : actualRows836.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows836=5388 := by core033_kernel_decide
theorem rows837 : actualRows837=WordField.canonicalRows actualModulus 837 (.rotr 836 6) := by core033_kernel_decide
theorem stats837 : actualRows837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows837=5124 := by core033_kernel_decide
theorem rows838 : actualRows838=WordField.canonicalRows actualModulus 838 (.rotr 836 11) := by core033_kernel_decide
theorem stats838 : actualRows838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows838=5124 := by core033_kernel_decide
theorem rows839 : actualRows839=WordField.canonicalRows actualModulus 839 (.bxor 837 838) := by core033_kernel_decide
theorem stats839 : actualRows839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows839=7428 := by core033_kernel_decide
theorem rows840 : actualRows840=WordField.canonicalRows actualModulus 840 (.rotr 836 25) := by core033_kernel_decide
theorem stats840 : actualRows840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows840=5124 := by core033_kernel_decide
theorem rows841 : actualRows841=WordField.canonicalRows actualModulus 841 (.bxor 839 840) := by core033_kernel_decide
theorem stats841 : actualRows841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows841=7428 := by core033_kernel_decide
theorem rows842 : actualRows842=WordField.canonicalRows actualModulus 842 (.badd 755 841) := by core033_kernel_decide
theorem stats842 : actualRows842.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows842=5388 := by core033_kernel_decide
theorem rows843 : actualRows843=WordField.canonicalRows actualModulus 843 (.band 836 809) := by core033_kernel_decide
theorem stats843 : actualRows843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows843=5124 := by core033_kernel_decide
theorem rows844 : actualRows844=WordField.canonicalRows actualModulus 844 (.bnot 836) := by core033_kernel_decide
theorem stats844 : actualRows844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows844=6276 := by core033_kernel_decide
theorem rows845 : actualRows845=WordField.canonicalRows actualModulus 845 (.band 844 782) := by core033_kernel_decide
theorem stats845 : actualRows845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows845=5124 := by core033_kernel_decide
theorem rows846 : actualRows846=WordField.canonicalRows actualModulus 846 (.bxor 843 845) := by core033_kernel_decide
theorem stats846 : actualRows846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows846=7428 := by core033_kernel_decide
theorem rows847 : actualRows847=WordField.canonicalRows actualModulus 847 (.badd 842 846) := by core033_kernel_decide
theorem stats847 : actualRows847.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows847=5388 := by core033_kernel_decide
theorem rows848 : actualRows848=WordField.canonicalRows actualModulus 848 (.literal (BitVec.ofNat 32 2870763221)) := by core033_kernel_decide
theorem stats848 : actualRows848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows848=4116 := by core033_kernel_decide
theorem rows849 : actualRows849=WordField.canonicalRows actualModulus 849 (.badd 847 848) := by core033_kernel_decide
theorem stats849 : actualRows849.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows849=5388 := by core033_kernel_decide
theorem rows850 : actualRows850=WordField.canonicalRows actualModulus 850 (.badd 849 15) := by core033_kernel_decide
theorem stats850 : actualRows850.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows850=5388 := by core033_kernel_decide
theorem rows851 : actualRows851=WordField.canonicalRows actualModulus 851 (.rotr 835 2) := by core033_kernel_decide
theorem stats851 : actualRows851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows851=5124 := by core033_kernel_decide
theorem rows852 : actualRows852=WordField.canonicalRows actualModulus 852 (.rotr 835 13) := by core033_kernel_decide
theorem stats852 : actualRows852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows852=5124 := by core033_kernel_decide
theorem rows853 : actualRows853=WordField.canonicalRows actualModulus 853 (.bxor 851 852) := by core033_kernel_decide
theorem stats853 : actualRows853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows853=7428 := by core033_kernel_decide
theorem rows854 : actualRows854=WordField.canonicalRows actualModulus 854 (.rotr 835 22) := by core033_kernel_decide
theorem stats854 : actualRows854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows854=5124 := by core033_kernel_decide
theorem rows855 : actualRows855=WordField.canonicalRows actualModulus 855 (.bxor 853 854) := by core033_kernel_decide
theorem stats855 : actualRows855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows855=7428 := by core033_kernel_decide
def partRows12 : List R1CS.Row := actualRows792++actualRows793++actualRows794++actualRows795++actualRows796++actualRows797++actualRows798++actualRows799++actualRows800++actualRows801++actualRows802++actualRows803++actualRows804++actualRows805++actualRows806++actualRows807++actualRows808++actualRows809++actualRows810++actualRows811++actualRows812++actualRows813++actualRows814++actualRows815++actualRows816++actualRows817++actualRows818++actualRows819++actualRows820++actualRows821++actualRows822++actualRows823++actualRows824++actualRows825++actualRows826++actualRows827++actualRows828++actualRows829++actualRows830++actualRows831++actualRows832++actualRows833++actualRows834++actualRows835++actualRows836++actualRows837++actualRows838++actualRows839++actualRows840++actualRows841++actualRows842++actualRows843++actualRows844++actualRows845++actualRows846++actualRows847++actualRows848++actualRows849++actualRows850++actualRows851++actualRows852++actualRows853++actualRows854++actualRows855
def partOps12 : List WordIR.Op := [.bxor 789 791,.badd 788 792,.literal (BitVec.ofNat 32 1508970993),.badd 793 794,.badd 795 13,.rotr 781 2,.rotr 781 13,.bxor 797 798,.rotr 781 22,.bxor 799 800,.band 781 754,.band 781 727,.bxor 802 803,.band 754 727,.bxor 804 805,.badd 801 806,.badd 796 807,.badd 700 796,.rotr 809 6,.rotr 809 11,.bxor 810 811,.rotr 809 25,.bxor 812 813,.badd 728 814,.band 809 782,.bnot 809,.band 817 755,.bxor 816 818,.badd 815 819,.literal (BitVec.ofNat 32 2453635748),.badd 820 821,.badd 822 14,.rotr 808 2,.rotr 808 13,.bxor 824 825,.rotr 808 22,.bxor 826 827,.band 808 781,.band 808 754,.bxor 829 830,.band 781 754,.bxor 831 832,.badd 828 833,.badd 823 834,.badd 727 823,.rotr 836 6,.rotr 836 11,.bxor 837 838,.rotr 836 25,.bxor 839 840,.badd 755 841,.band 836 809,.bnot 836,.band 844 782,.bxor 843 845,.badd 842 846,.literal (BitVec.ofNat 32 2870763221),.badd 847 848,.badd 849 15,.rotr 835 2,.rotr 835 13,.bxor 851 852,.rotr 835 22,.bxor 853 854]
theorem partRowsExact12 : partRows12=WordField.rows actualModulus 792 partOps12 := by
  simp only [partRows12,partOps12,WordField.rows,rows792,rows793,rows794,rows795,rows796,rows797,rows798,rows799,rows800,rows801,rows802,rows803,rows804,rows805,rows806,rows807,rows808,rows809,rows810,rows811,rows812,rows813,rows814,rows815,rows816,rows817,rows818,rows819,rows820,rows821,rows822,rows823,rows824,rows825,rows826,rows827,rows828,rows829,rows830,rows831,rows832,rows833,rows834,rows835,rows836,rows837,rows838,rows839,rows840,rows841,rows842,rows843,rows844,rows845,rows846,rows847,rows848,rows849,rows850,rows851,rows852,rows853,rows854,rows855,List.append_assoc,List.append_nil]
theorem partOpsLength12 : partOps12.length=64 := by decide
theorem partStats12 : partRows12.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows12=370440 := by
  simp only [partRows12,List.length_append,MatrixRowBlocks.rows_weight_append,stats792.1,stats792.2,stats793.1,stats793.2,stats794.1,stats794.2,stats795.1,stats795.2,stats796.1,stats796.2,stats797.1,stats797.2,stats798.1,stats798.2,stats799.1,stats799.2,stats800.1,stats800.2,stats801.1,stats801.2,stats802.1,stats802.2,stats803.1,stats803.2,stats804.1,stats804.2,stats805.1,stats805.2,stats806.1,stats806.2,stats807.1,stats807.2,stats808.1,stats808.2,stats809.1,stats809.2,stats810.1,stats810.2,stats811.1,stats811.2,stats812.1,stats812.2,stats813.1,stats813.2,stats814.1,stats814.2,stats815.1,stats815.2,stats816.1,stats816.2,stats817.1,stats817.2,stats818.1,stats818.2,stats819.1,stats819.2,stats820.1,stats820.2,stats821.1,stats821.2,stats822.1,stats822.2,stats823.1,stats823.2,stats824.1,stats824.2,stats825.1,stats825.2,stats826.1,stats826.2,stats827.1,stats827.2,stats828.1,stats828.2,stats829.1,stats829.2,stats830.1,stats830.2,stats831.1,stats831.2,stats832.1,stats832.2,stats833.1,stats833.2,stats834.1,stats834.2,stats835.1,stats835.2,stats836.1,stats836.2,stats837.1,stats837.2,stats838.1,stats838.2,stats839.1,stats839.2,stats840.1,stats840.2,stats841.1,stats841.2,stats842.1,stats842.2,stats843.1,stats843.2,stats844.1,stats844.2,stats845.1,stats845.2,stats846.1,stats846.2,stats847.1,stats847.2,stats848.1,stats848.2,stats849.1,stats849.2,stats850.1,stats850.2,stats851.1,stats851.2,stats852.1,stats852.2,stats853.1,stats853.2,stats854.1,stats854.2,stats855.1,stats855.2]
  decide
end ActualSHAMatrixRows
