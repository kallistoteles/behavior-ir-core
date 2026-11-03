import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData12
import PairedPathRoundInstructionMatrixData13
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows800 : actualRows800=WordField.canonicalRows actualModulus 800 (.bnot 799) := by core033_kernel_decide
theorem stats800 : actualRows800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows800=6276 := by core033_kernel_decide
theorem rows801 : actualRows801=WordField.canonicalRows actualModulus 801 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats801 : actualRows801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows801=2820 := by core033_kernel_decide
theorem rows802 : actualRows802=WordField.canonicalRows actualModulus 802 (.band 800 801) := by core033_kernel_decide
theorem stats802 : actualRows802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows802=5124 := by core033_kernel_decide
theorem rows803 : actualRows803=WordField.canonicalRows actualModulus 803 (.bxor 796 802) := by core033_kernel_decide
theorem stats803 : actualRows803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows803=7428 := by core033_kernel_decide
theorem rows804 : actualRows804=WordField.canonicalRows actualModulus 804 (.bnot 605) := by core033_kernel_decide
theorem stats804 : actualRows804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows804=6276 := by core033_kernel_decide
theorem rows805 : actualRows805=WordField.canonicalRows actualModulus 805 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats805 : actualRows805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows805=2892 := by core033_kernel_decide
theorem rows806 : actualRows806=WordField.canonicalRows actualModulus 806 (.badd 804 805) := by core033_kernel_decide
theorem stats806 : actualRows806.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows806=5388 := by core033_kernel_decide
theorem rows807 : actualRows807=WordField.canonicalRows actualModulus 807 (.band 806 522) := by core033_kernel_decide
theorem stats807 : actualRows807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows807=5124 := by core033_kernel_decide
theorem rows808 : actualRows808=WordField.canonicalRows actualModulus 808 (.bnot 605) := by core033_kernel_decide
theorem stats808 : actualRows808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows808=6276 := by core033_kernel_decide
theorem rows809 : actualRows809=WordField.canonicalRows actualModulus 809 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats809 : actualRows809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows809=2892 := by core033_kernel_decide
theorem rows810 : actualRows810=WordField.canonicalRows actualModulus 810 (.badd 808 809) := by core033_kernel_decide
theorem stats810 : actualRows810.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows810=5388 := by core033_kernel_decide
theorem rows811 : actualRows811=WordField.canonicalRows actualModulus 811 (.bnot 810) := by core033_kernel_decide
theorem stats811 : actualRows811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows811=6276 := by core033_kernel_decide
theorem rows812 : actualRows812=WordField.canonicalRows actualModulus 812 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats812 : actualRows812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows812=2820 := by core033_kernel_decide
theorem rows813 : actualRows813=WordField.canonicalRows actualModulus 813 (.band 811 812) := by core033_kernel_decide
theorem stats813 : actualRows813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows813=5124 := by core033_kernel_decide
theorem rows814 : actualRows814=WordField.canonicalRows actualModulus 814 (.bxor 807 813) := by core033_kernel_decide
theorem stats814 : actualRows814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows814=7428 := by core033_kernel_decide
theorem rows815 : actualRows815=WordField.canonicalRows actualModulus 815 (.bnot 605) := by core033_kernel_decide
theorem stats815 : actualRows815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows815=6276 := by core033_kernel_decide
theorem rows816 : actualRows816=WordField.canonicalRows actualModulus 816 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats816 : actualRows816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows816=2892 := by core033_kernel_decide
theorem rows817 : actualRows817=WordField.canonicalRows actualModulus 817 (.badd 815 816) := by core033_kernel_decide
theorem stats817 : actualRows817.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows817=5388 := by core033_kernel_decide
theorem rows818 : actualRows818=WordField.canonicalRows actualModulus 818 (.band 817 35) := by core033_kernel_decide
theorem stats818 : actualRows818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows818=5124 := by core033_kernel_decide
theorem rows819 : actualRows819=WordField.canonicalRows actualModulus 819 (.bnot 605) := by core033_kernel_decide
theorem stats819 : actualRows819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows819=6276 := by core033_kernel_decide
theorem rows820 : actualRows820=WordField.canonicalRows actualModulus 820 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats820 : actualRows820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows820=2892 := by core033_kernel_decide
theorem rows821 : actualRows821=WordField.canonicalRows actualModulus 821 (.badd 819 820) := by core033_kernel_decide
theorem stats821 : actualRows821.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows821=5388 := by core033_kernel_decide
theorem rows822 : actualRows822=WordField.canonicalRows actualModulus 822 (.bnot 821) := by core033_kernel_decide
theorem stats822 : actualRows822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows822=6276 := by core033_kernel_decide
theorem rows823 : actualRows823=WordField.canonicalRows actualModulus 823 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats823 : actualRows823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows823=2820 := by core033_kernel_decide
theorem rows824 : actualRows824=WordField.canonicalRows actualModulus 824 (.band 822 823) := by core033_kernel_decide
theorem stats824 : actualRows824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows824=5124 := by core033_kernel_decide
theorem rows825 : actualRows825=WordField.canonicalRows actualModulus 825 (.bxor 818 824) := by core033_kernel_decide
theorem stats825 : actualRows825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows825=7428 := by core033_kernel_decide
theorem rows826 : actualRows826=WordField.canonicalRows actualModulus 826 (.bnot 605) := by core033_kernel_decide
theorem stats826 : actualRows826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows826=6276 := by core033_kernel_decide
theorem rows827 : actualRows827=WordField.canonicalRows actualModulus 827 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats827 : actualRows827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows827=2892 := by core033_kernel_decide
theorem rows828 : actualRows828=WordField.canonicalRows actualModulus 828 (.badd 826 827) := by core033_kernel_decide
theorem stats828 : actualRows828.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows828=5388 := by core033_kernel_decide
theorem rows829 : actualRows829=WordField.canonicalRows actualModulus 829 (.band 828 36) := by core033_kernel_decide
theorem stats829 : actualRows829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows829=5124 := by core033_kernel_decide
theorem rows830 : actualRows830=WordField.canonicalRows actualModulus 830 (.bnot 605) := by core033_kernel_decide
theorem stats830 : actualRows830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows830=6276 := by core033_kernel_decide
theorem rows831 : actualRows831=WordField.canonicalRows actualModulus 831 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats831 : actualRows831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows831=2892 := by core033_kernel_decide
theorem rows832 : actualRows832=WordField.canonicalRows actualModulus 832 (.badd 830 831) := by core033_kernel_decide
theorem stats832 : actualRows832.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows832=5388 := by core033_kernel_decide
theorem rows833 : actualRows833=WordField.canonicalRows actualModulus 833 (.bnot 832) := by core033_kernel_decide
theorem stats833 : actualRows833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows833=6276 := by core033_kernel_decide
theorem rows834 : actualRows834=WordField.canonicalRows actualModulus 834 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats834 : actualRows834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows834=2820 := by core033_kernel_decide
theorem rows835 : actualRows835=WordField.canonicalRows actualModulus 835 (.band 833 834) := by core033_kernel_decide
theorem stats835 : actualRows835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows835=5124 := by core033_kernel_decide
theorem rows836 : actualRows836=WordField.canonicalRows actualModulus 836 (.bxor 829 835) := by core033_kernel_decide
theorem stats836 : actualRows836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows836=7428 := by core033_kernel_decide
theorem rows837 : actualRows837=WordField.canonicalRows actualModulus 837 (.bnot 605) := by core033_kernel_decide
theorem stats837 : actualRows837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows837=6276 := by core033_kernel_decide
theorem rows838 : actualRows838=WordField.canonicalRows actualModulus 838 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats838 : actualRows838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows838=2892 := by core033_kernel_decide
theorem rows839 : actualRows839=WordField.canonicalRows actualModulus 839 (.badd 837 838) := by core033_kernel_decide
theorem stats839 : actualRows839.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows839=5388 := by core033_kernel_decide
theorem rows840 : actualRows840=WordField.canonicalRows actualModulus 840 (.band 839 37) := by core033_kernel_decide
theorem stats840 : actualRows840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows840=5124 := by core033_kernel_decide
theorem rows841 : actualRows841=WordField.canonicalRows actualModulus 841 (.bnot 605) := by core033_kernel_decide
theorem stats841 : actualRows841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows841=6276 := by core033_kernel_decide
theorem rows842 : actualRows842=WordField.canonicalRows actualModulus 842 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats842 : actualRows842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows842=2892 := by core033_kernel_decide
theorem rows843 : actualRows843=WordField.canonicalRows actualModulus 843 (.badd 841 842) := by core033_kernel_decide
theorem stats843 : actualRows843.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows843=5388 := by core033_kernel_decide
theorem rows844 : actualRows844=WordField.canonicalRows actualModulus 844 (.bnot 843) := by core033_kernel_decide
theorem stats844 : actualRows844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows844=6276 := by core033_kernel_decide
theorem rows845 : actualRows845=WordField.canonicalRows actualModulus 845 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats845 : actualRows845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows845=2820 := by core033_kernel_decide
theorem rows846 : actualRows846=WordField.canonicalRows actualModulus 846 (.band 844 845) := by core033_kernel_decide
theorem stats846 : actualRows846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows846=5124 := by core033_kernel_decide
theorem rows847 : actualRows847=WordField.canonicalRows actualModulus 847 (.bxor 840 846) := by core033_kernel_decide
theorem stats847 : actualRows847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows847=7428 := by core033_kernel_decide
theorem rows848 : actualRows848=WordField.canonicalRows actualModulus 848 (.bnot 605) := by core033_kernel_decide
theorem stats848 : actualRows848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows848=6276 := by core033_kernel_decide
theorem rows849 : actualRows849=WordField.canonicalRows actualModulus 849 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats849 : actualRows849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows849=2892 := by core033_kernel_decide
theorem rows850 : actualRows850=WordField.canonicalRows actualModulus 850 (.badd 848 849) := by core033_kernel_decide
theorem stats850 : actualRows850.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows850=5388 := by core033_kernel_decide
theorem rows851 : actualRows851=WordField.canonicalRows actualModulus 851 (.band 850 38) := by core033_kernel_decide
theorem stats851 : actualRows851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows851=5124 := by core033_kernel_decide
theorem rows852 : actualRows852=WordField.canonicalRows actualModulus 852 (.bnot 605) := by core033_kernel_decide
theorem stats852 : actualRows852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows852=6276 := by core033_kernel_decide
theorem rows853 : actualRows853=WordField.canonicalRows actualModulus 853 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats853 : actualRows853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows853=2892 := by core033_kernel_decide
theorem rows854 : actualRows854=WordField.canonicalRows actualModulus 854 (.badd 852 853) := by core033_kernel_decide
theorem stats854 : actualRows854.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows854=5388 := by core033_kernel_decide
theorem rows855 : actualRows855=WordField.canonicalRows actualModulus 855 (.bnot 854) := by core033_kernel_decide
theorem stats855 : actualRows855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows855=6276 := by core033_kernel_decide
theorem rows856 : actualRows856=WordField.canonicalRows actualModulus 856 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats856 : actualRows856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows856=2820 := by core033_kernel_decide
theorem rows857 : actualRows857=WordField.canonicalRows actualModulus 857 (.band 855 856) := by core033_kernel_decide
theorem stats857 : actualRows857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows857=5124 := by core033_kernel_decide
theorem rows858 : actualRows858=WordField.canonicalRows actualModulus 858 (.bxor 851 857) := by core033_kernel_decide
theorem stats858 : actualRows858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows858=7428 := by core033_kernel_decide
theorem rows859 : actualRows859=WordField.canonicalRows actualModulus 859 (.bnot 605) := by core033_kernel_decide
theorem stats859 : actualRows859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows859=6276 := by core033_kernel_decide
theorem rows860 : actualRows860=WordField.canonicalRows actualModulus 860 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats860 : actualRows860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows860=2892 := by core033_kernel_decide
theorem rows861 : actualRows861=WordField.canonicalRows actualModulus 861 (.badd 859 860) := by core033_kernel_decide
theorem stats861 : actualRows861.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows861=5388 := by core033_kernel_decide
theorem rows862 : actualRows862=WordField.canonicalRows actualModulus 862 (.band 861 39) := by core033_kernel_decide
theorem stats862 : actualRows862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows862=5124 := by core033_kernel_decide
theorem rows863 : actualRows863=WordField.canonicalRows actualModulus 863 (.bnot 605) := by core033_kernel_decide
theorem stats863 : actualRows863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows863=6276 := by core033_kernel_decide
def partRows11 : List R1CS.Row := actualRows800++actualRows801++actualRows802++actualRows803++actualRows804++actualRows805++actualRows806++actualRows807++actualRows808++actualRows809++actualRows810++actualRows811++actualRows812++actualRows813++actualRows814++actualRows815++actualRows816++actualRows817++actualRows818++actualRows819++actualRows820++actualRows821++actualRows822++actualRows823++actualRows824++actualRows825++actualRows826++actualRows827++actualRows828++actualRows829++actualRows830++actualRows831++actualRows832++actualRows833++actualRows834++actualRows835++actualRows836++actualRows837++actualRows838++actualRows839++actualRows840++actualRows841++actualRows842++actualRows843++actualRows844++actualRows845++actualRows846++actualRows847++actualRows848++actualRows849++actualRows850++actualRows851++actualRows852++actualRows853++actualRows854++actualRows855++actualRows856++actualRows857++actualRows858++actualRows859++actualRows860++actualRows861++actualRows862++actualRows863
def partOps11 : List WordIR.Op := [.bnot 799,.literal (BitVec.ofNat 32 0),.band 800 801,.bxor 796 802,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 804 805,.band 806 522,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 808 809,.bnot 810,.literal (BitVec.ofNat 32 0),.band 811 812,.bxor 807 813,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 815 816,.band 817 35,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 819 820,.bnot 821,.literal (BitVec.ofNat 32 0),.band 822 823,.bxor 818 824,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 826 827,.band 828 36,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 830 831,.bnot 832,.literal (BitVec.ofNat 32 0),.band 833 834,.bxor 829 835,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 837 838,.band 839 37,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 841 842,.bnot 843,.literal (BitVec.ofNat 32 0),.band 844 845,.bxor 840 846,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 848 849,.band 850 38,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 852 853,.bnot 854,.literal (BitVec.ofNat 32 0),.band 855 856,.bxor 851 857,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 859 860,.band 861 39,.bnot 605]
theorem partExact11 : partRows11=WordField.rows actualModulus 800 partOps11 := by
  simp only [partRows11,partOps11,WordField.rows,rows800,rows801,rows802,rows803,rows804,rows805,rows806,rows807,rows808,rows809,rows810,rows811,rows812,rows813,rows814,rows815,rows816,rows817,rows818,rows819,rows820,rows821,rows822,rows823,rows824,rows825,rows826,rows827,rows828,rows829,rows830,rows831,rows832,rows833,rows834,rows835,rows836,rows837,rows838,rows839,rows840,rows841,rows842,rows843,rows844,rows845,rows846,rows847,rows848,rows849,rows850,rows851,rows852,rows853,rows854,rows855,rows856,rows857,rows858,rows859,rows860,rows861,rows862,rows863,List.append_assoc,List.append_nil]
theorem partLength11 : partOps11.length=64 := by decide
theorem partStats11 : partRows11.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows11=327024 := by
  simp only [partRows11,List.length_append,MatrixRowBlocks.rows_weight_append,stats800.1,stats800.2,stats801.1,stats801.2,stats802.1,stats802.2,stats803.1,stats803.2,stats804.1,stats804.2,stats805.1,stats805.2,stats806.1,stats806.2,stats807.1,stats807.2,stats808.1,stats808.2,stats809.1,stats809.2,stats810.1,stats810.2,stats811.1,stats811.2,stats812.1,stats812.2,stats813.1,stats813.2,stats814.1,stats814.2,stats815.1,stats815.2,stats816.1,stats816.2,stats817.1,stats817.2,stats818.1,stats818.2,stats819.1,stats819.2,stats820.1,stats820.2,stats821.1,stats821.2,stats822.1,stats822.2,stats823.1,stats823.2,stats824.1,stats824.2,stats825.1,stats825.2,stats826.1,stats826.2,stats827.1,stats827.2,stats828.1,stats828.2,stats829.1,stats829.2,stats830.1,stats830.2,stats831.1,stats831.2,stats832.1,stats832.2,stats833.1,stats833.2,stats834.1,stats834.2,stats835.1,stats835.2,stats836.1,stats836.2,stats837.1,stats837.2,stats838.1,stats838.2,stats839.1,stats839.2,stats840.1,stats840.2,stats841.1,stats841.2,stats842.1,stats842.2,stats843.1,stats843.2,stats844.1,stats844.2,stats845.1,stats845.2,stats846.1,stats846.2,stats847.1,stats847.2,stats848.1,stats848.2,stats849.1,stats849.2,stats850.1,stats850.2,stats851.1,stats851.2,stats852.1,stats852.2,stats853.1,stats853.2,stats854.1,stats854.2,stats855.1,stats855.2,stats856.1,stats856.2,stats857.1,stats857.2,stats858.1,stats858.2,stats859.1,stats859.2,stats860.1,stats860.2,stats861.1,stats861.2,stats862.1,stats862.2,stats863.1,stats863.2]
  decide
end QuotedPairedPathRoundCheckedRows
