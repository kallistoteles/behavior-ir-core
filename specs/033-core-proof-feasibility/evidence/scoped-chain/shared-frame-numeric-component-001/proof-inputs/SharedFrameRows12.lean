import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData12
import SharedFrameInstructionMatrixData13
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows811 : actualRows811=WordField.canonicalRows actualModulus 811 (.band 645 442) := by core033_kernel_decide
theorem stats811 : actualRows811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows811=5124 := by core033_kernel_decide
theorem rows812 : actualRows812=WordField.canonicalRows actualModulus 812 (.bxor 810 811) := by core033_kernel_decide
theorem stats812 : actualRows812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows812=7428 := by core033_kernel_decide
theorem rows813 : actualRows813=WordField.canonicalRows actualModulus 813 (.band 643 572) := by core033_kernel_decide
theorem stats813 : actualRows813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows813=5124 := by core033_kernel_decide
theorem rows814 : actualRows814=WordField.canonicalRows actualModulus 814 (.band 645 444) := by core033_kernel_decide
theorem stats814 : actualRows814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows814=5124 := by core033_kernel_decide
theorem rows815 : actualRows815=WordField.canonicalRows actualModulus 815 (.bxor 813 814) := by core033_kernel_decide
theorem stats815 : actualRows815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows815=7428 := by core033_kernel_decide
theorem rows816 : actualRows816=WordField.canonicalRows actualModulus 816 (.band 643 574) := by core033_kernel_decide
theorem stats816 : actualRows816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows816=5124 := by core033_kernel_decide
theorem rows817 : actualRows817=WordField.canonicalRows actualModulus 817 (.band 645 446) := by core033_kernel_decide
theorem stats817 : actualRows817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows817=5124 := by core033_kernel_decide
theorem rows818 : actualRows818=WordField.canonicalRows actualModulus 818 (.bxor 816 817) := by core033_kernel_decide
theorem stats818 : actualRows818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows818=7428 := by core033_kernel_decide
theorem rows819 : actualRows819=WordField.canonicalRows actualModulus 819 (.band 643 576) := by core033_kernel_decide
theorem stats819 : actualRows819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows819=5124 := by core033_kernel_decide
theorem rows820 : actualRows820=WordField.canonicalRows actualModulus 820 (.band 645 448) := by core033_kernel_decide
theorem stats820 : actualRows820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows820=5124 := by core033_kernel_decide
theorem rows821 : actualRows821=WordField.canonicalRows actualModulus 821 (.bxor 819 820) := by core033_kernel_decide
theorem stats821 : actualRows821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows821=7428 := by core033_kernel_decide
theorem rows822 : actualRows822=WordField.canonicalRows actualModulus 822 (.band 643 578) := by core033_kernel_decide
theorem stats822 : actualRows822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows822=5124 := by core033_kernel_decide
theorem rows823 : actualRows823=WordField.canonicalRows actualModulus 823 (.band 645 450) := by core033_kernel_decide
theorem stats823 : actualRows823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows823=5124 := by core033_kernel_decide
theorem rows824 : actualRows824=WordField.canonicalRows actualModulus 824 (.bxor 822 823) := by core033_kernel_decide
theorem stats824 : actualRows824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows824=7428 := by core033_kernel_decide
theorem rows825 : actualRows825=WordField.canonicalRows actualModulus 825 (.literal (BitVec.ofNat 32 128)) := by core033_kernel_decide
theorem stats825 : actualRows825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows825=2892 := by core033_kernel_decide
theorem rows826 : actualRows826=WordField.canonicalRows actualModulus 826 (.band 643 825) := by core033_kernel_decide
theorem stats826 : actualRows826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows826=5124 := by core033_kernel_decide
theorem rows827 : actualRows827=WordField.canonicalRows actualModulus 827 (.band 645 452) := by core033_kernel_decide
theorem stats827 : actualRows827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows827=5124 := by core033_kernel_decide
theorem rows828 : actualRows828=WordField.canonicalRows actualModulus 828 (.bxor 826 827) := by core033_kernel_decide
theorem stats828 : actualRows828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows828=7428 := by core033_kernel_decide
theorem rows829 : actualRows829=WordField.canonicalRows actualModulus 829 (.band 643 49) := by core033_kernel_decide
theorem stats829 : actualRows829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows829=5124 := by core033_kernel_decide
theorem rows830 : actualRows830=WordField.canonicalRows actualModulus 830 (.band 645 454) := by core033_kernel_decide
theorem stats830 : actualRows830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows830=5124 := by core033_kernel_decide
theorem rows831 : actualRows831=WordField.canonicalRows actualModulus 831 (.bxor 829 830) := by core033_kernel_decide
theorem stats831 : actualRows831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows831=7428 := by core033_kernel_decide
theorem rows832 : actualRows832=WordField.canonicalRows actualModulus 832 (.band 645 456) := by core033_kernel_decide
theorem stats832 : actualRows832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows832=5124 := by core033_kernel_decide
theorem rows833 : actualRows833=WordField.canonicalRows actualModulus 833 (.bxor 829 832) := by core033_kernel_decide
theorem stats833 : actualRows833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows833=7428 := by core033_kernel_decide
theorem rows834 : actualRows834=WordField.canonicalRows actualModulus 834 (.band 645 458) := by core033_kernel_decide
theorem stats834 : actualRows834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows834=5124 := by core033_kernel_decide
theorem rows835 : actualRows835=WordField.canonicalRows actualModulus 835 (.bxor 829 834) := by core033_kernel_decide
theorem stats835 : actualRows835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows835=7428 := by core033_kernel_decide
theorem rows836 : actualRows836=WordField.canonicalRows actualModulus 836 (.band 645 460) := by core033_kernel_decide
theorem stats836 : actualRows836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows836=5124 := by core033_kernel_decide
theorem rows837 : actualRows837=WordField.canonicalRows actualModulus 837 (.bxor 829 836) := by core033_kernel_decide
theorem stats837 : actualRows837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows837=7428 := by core033_kernel_decide
theorem rows838 : actualRows838=WordField.canonicalRows actualModulus 838 (.band 645 462) := by core033_kernel_decide
theorem stats838 : actualRows838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows838=5124 := by core033_kernel_decide
theorem rows839 : actualRows839=WordField.canonicalRows actualModulus 839 (.bxor 829 838) := by core033_kernel_decide
theorem stats839 : actualRows839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows839=7428 := by core033_kernel_decide
theorem rows840 : actualRows840=WordField.canonicalRows actualModulus 840 (.band 645 464) := by core033_kernel_decide
theorem stats840 : actualRows840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows840=5124 := by core033_kernel_decide
theorem rows841 : actualRows841=WordField.canonicalRows actualModulus 841 (.bxor 829 840) := by core033_kernel_decide
theorem stats841 : actualRows841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows841=7428 := by core033_kernel_decide
theorem rows842 : actualRows842=WordField.canonicalRows actualModulus 842 (.band 645 466) := by core033_kernel_decide
theorem stats842 : actualRows842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows842=5124 := by core033_kernel_decide
theorem rows843 : actualRows843=WordField.canonicalRows actualModulus 843 (.bxor 829 842) := by core033_kernel_decide
theorem stats843 : actualRows843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows843=7428 := by core033_kernel_decide
theorem rows844 : actualRows844=WordField.canonicalRows actualModulus 844 (.band 645 468) := by core033_kernel_decide
theorem stats844 : actualRows844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows844=5124 := by core033_kernel_decide
theorem rows845 : actualRows845=WordField.canonicalRows actualModulus 845 (.bxor 829 844) := by core033_kernel_decide
theorem stats845 : actualRows845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows845=7428 := by core033_kernel_decide
theorem rows846 : actualRows846=WordField.canonicalRows actualModulus 846 (.band 645 470) := by core033_kernel_decide
theorem stats846 : actualRows846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows846=5124 := by core033_kernel_decide
theorem rows847 : actualRows847=WordField.canonicalRows actualModulus 847 (.bxor 829 846) := by core033_kernel_decide
theorem stats847 : actualRows847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows847=7428 := by core033_kernel_decide
theorem rows848 : actualRows848=WordField.canonicalRows actualModulus 848 (.band 645 472) := by core033_kernel_decide
theorem stats848 : actualRows848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows848=5124 := by core033_kernel_decide
theorem rows849 : actualRows849=WordField.canonicalRows actualModulus 849 (.bxor 829 848) := by core033_kernel_decide
theorem stats849 : actualRows849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows849=7428 := by core033_kernel_decide
theorem rows850 : actualRows850=WordField.canonicalRows actualModulus 850 (.band 643 586) := by core033_kernel_decide
theorem stats850 : actualRows850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows850=5124 := by core033_kernel_decide
theorem rows851 : actualRows851=WordField.canonicalRows actualModulus 851 (.band 645 474) := by core033_kernel_decide
theorem stats851 : actualRows851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows851=5124 := by core033_kernel_decide
theorem rows852 : actualRows852=WordField.canonicalRows actualModulus 852 (.bxor 850 851) := by core033_kernel_decide
theorem stats852 : actualRows852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows852=7428 := by core033_kernel_decide
theorem rows853 : actualRows853=WordField.canonicalRows actualModulus 853 (.literal (BitVec.ofNat 32 152)) := by core033_kernel_decide
theorem stats853 : actualRows853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows853=3036 := by core033_kernel_decide
theorem rows854 : actualRows854=WordField.canonicalRows actualModulus 854 (.band 643 853) := by core033_kernel_decide
theorem stats854 : actualRows854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows854=5124 := by core033_kernel_decide
theorem rows855 : actualRows855=WordField.canonicalRows actualModulus 855 (.band 645 476) := by core033_kernel_decide
theorem stats855 : actualRows855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows855=5124 := by core033_kernel_decide
theorem rows856 : actualRows856=WordField.canonicalRows actualModulus 856 (.bxor 854 855) := by core033_kernel_decide
theorem stats856 : actualRows856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows856=7428 := by core033_kernel_decide
theorem rows857 : actualRows857=WordField.canonicalRows actualModulus 857 (.rotr 679 8) := by core033_kernel_decide
theorem stats857 : actualRows857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows857=5124 := by core033_kernel_decide
theorem rows858 : actualRows858=WordField.canonicalRows actualModulus 858 (.rotr 682 16) := by core033_kernel_decide
theorem stats858 : actualRows858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows858=5124 := by core033_kernel_decide
theorem rows859 : actualRows859=WordField.canonicalRows actualModulus 859 (.badd 857 858) := by core033_kernel_decide
theorem stats859 : actualRows859.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows859=5388 := by core033_kernel_decide
theorem rows860 : actualRows860=WordField.canonicalRows actualModulus 860 (.rotr 685 24) := by core033_kernel_decide
theorem stats860 : actualRows860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows860=5124 := by core033_kernel_decide
theorem rows861 : actualRows861=WordField.canonicalRows actualModulus 861 (.badd 859 860) := by core033_kernel_decide
theorem stats861 : actualRows861.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows861=5388 := by core033_kernel_decide
theorem rows862 : actualRows862=WordField.canonicalRows actualModulus 862 (.badd 861 688) := by core033_kernel_decide
theorem stats862 : actualRows862.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows862=5388 := by core033_kernel_decide
theorem rows863 : actualRows863=WordField.canonicalRows actualModulus 863 (.rotr 691 8) := by core033_kernel_decide
theorem stats863 : actualRows863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows863=5124 := by core033_kernel_decide
theorem rows864 : actualRows864=WordField.canonicalRows actualModulus 864 (.rotr 694 16) := by core033_kernel_decide
theorem stats864 : actualRows864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows864=5124 := by core033_kernel_decide
theorem rows865 : actualRows865=WordField.canonicalRows actualModulus 865 (.badd 863 864) := by core033_kernel_decide
theorem stats865 : actualRows865.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows865=5388 := by core033_kernel_decide
theorem rows866 : actualRows866=WordField.canonicalRows actualModulus 866 (.rotr 696 24) := by core033_kernel_decide
theorem stats866 : actualRows866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows866=5124 := by core033_kernel_decide
theorem rows867 : actualRows867=WordField.canonicalRows actualModulus 867 (.badd 865 866) := by core033_kernel_decide
theorem stats867 : actualRows867.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows867=5388 := by core033_kernel_decide
theorem rows868 : actualRows868=WordField.canonicalRows actualModulus 868 (.badd 867 699) := by core033_kernel_decide
theorem stats868 : actualRows868.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows868=5388 := by core033_kernel_decide
theorem rows869 : actualRows869=WordField.canonicalRows actualModulus 869 (.rotr 702 8) := by core033_kernel_decide
theorem stats869 : actualRows869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows869=5124 := by core033_kernel_decide
theorem rows870 : actualRows870=WordField.canonicalRows actualModulus 870 (.rotr 704 16) := by core033_kernel_decide
theorem stats870 : actualRows870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows870=5124 := by core033_kernel_decide
theorem rows871 : actualRows871=WordField.canonicalRows actualModulus 871 (.badd 869 870) := by core033_kernel_decide
theorem stats871 : actualRows871.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows871=5388 := by core033_kernel_decide
theorem rows872 : actualRows872=WordField.canonicalRows actualModulus 872 (.rotr 707 24) := by core033_kernel_decide
theorem stats872 : actualRows872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows872=5124 := by core033_kernel_decide
theorem rows873 : actualRows873=WordField.canonicalRows actualModulus 873 (.badd 871 872) := by core033_kernel_decide
theorem stats873 : actualRows873.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows873=5388 := by core033_kernel_decide
theorem rows874 : actualRows874=WordField.canonicalRows actualModulus 874 (.badd 873 710) := by core033_kernel_decide
theorem stats874 : actualRows874.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows874=5388 := by core033_kernel_decide
def partRows12 : List R1CS.Row := actualRows811++actualRows812++actualRows813++actualRows814++actualRows815++actualRows816++actualRows817++actualRows818++actualRows819++actualRows820++actualRows821++actualRows822++actualRows823++actualRows824++actualRows825++actualRows826++actualRows827++actualRows828++actualRows829++actualRows830++actualRows831++actualRows832++actualRows833++actualRows834++actualRows835++actualRows836++actualRows837++actualRows838++actualRows839++actualRows840++actualRows841++actualRows842++actualRows843++actualRows844++actualRows845++actualRows846++actualRows847++actualRows848++actualRows849++actualRows850++actualRows851++actualRows852++actualRows853++actualRows854++actualRows855++actualRows856++actualRows857++actualRows858++actualRows859++actualRows860++actualRows861++actualRows862++actualRows863++actualRows864++actualRows865++actualRows866++actualRows867++actualRows868++actualRows869++actualRows870++actualRows871++actualRows872++actualRows873++actualRows874
def partOps12 : List WordIR.Op := [.band 645 442,.bxor 810 811,.band 643 572,.band 645 444,.bxor 813 814,.band 643 574,.band 645 446,.bxor 816 817,.band 643 576,.band 645 448,.bxor 819 820,.band 643 578,.band 645 450,.bxor 822 823,.literal (BitVec.ofNat 32 128),.band 643 825,.band 645 452,.bxor 826 827,.band 643 49,.band 645 454,.bxor 829 830,.band 645 456,.bxor 829 832,.band 645 458,.bxor 829 834,.band 645 460,.bxor 829 836,.band 645 462,.bxor 829 838,.band 645 464,.bxor 829 840,.band 645 466,.bxor 829 842,.band 645 468,.bxor 829 844,.band 645 470,.bxor 829 846,.band 645 472,.bxor 829 848,.band 643 586,.band 645 474,.bxor 850 851,.literal (BitVec.ofNat 32 152),.band 643 853,.band 645 476,.bxor 854 855,.rotr 679 8,.rotr 682 16,.badd 857 858,.rotr 685 24,.badd 859 860,.badd 861 688,.rotr 691 8,.rotr 694 16,.badd 863 864,.rotr 696 24,.badd 865 866,.badd 867 699,.rotr 702 8,.rotr 704 16,.badd 869 870,.rotr 707 24,.badd 871 872,.badd 873 710]
theorem partExact12 : partRows12=WordField.rows actualModulus 811 partOps12 := by
  simp only [partRows12,partOps12,WordField.rows,rows811,rows812,rows813,rows814,rows815,rows816,rows817,rows818,rows819,rows820,rows821,rows822,rows823,rows824,rows825,rows826,rows827,rows828,rows829,rows830,rows831,rows832,rows833,rows834,rows835,rows836,rows837,rows838,rows839,rows840,rows841,rows842,rows843,rows844,rows845,rows846,rows847,rows848,rows849,rows850,rows851,rows852,rows853,rows854,rows855,rows856,rows857,rows858,rows859,rows860,rows861,rows862,rows863,rows864,rows865,rows866,rows867,rows868,rows869,rows870,rows871,rows872,rows873,rows874,List.append_assoc,List.append_nil]
theorem partLength12 : partOps12.length=64 := by decide
theorem partStats12 : partRows12.length=2185 ∧ MatrixRowBlocks.rowsWeight partRows12=367464 := by
  simp only [partRows12,List.length_append,MatrixRowBlocks.rows_weight_append,stats811.1,stats811.2,stats812.1,stats812.2,stats813.1,stats813.2,stats814.1,stats814.2,stats815.1,stats815.2,stats816.1,stats816.2,stats817.1,stats817.2,stats818.1,stats818.2,stats819.1,stats819.2,stats820.1,stats820.2,stats821.1,stats821.2,stats822.1,stats822.2,stats823.1,stats823.2,stats824.1,stats824.2,stats825.1,stats825.2,stats826.1,stats826.2,stats827.1,stats827.2,stats828.1,stats828.2,stats829.1,stats829.2,stats830.1,stats830.2,stats831.1,stats831.2,stats832.1,stats832.2,stats833.1,stats833.2,stats834.1,stats834.2,stats835.1,stats835.2,stats836.1,stats836.2,stats837.1,stats837.2,stats838.1,stats838.2,stats839.1,stats839.2,stats840.1,stats840.2,stats841.1,stats841.2,stats842.1,stats842.2,stats843.1,stats843.2,stats844.1,stats844.2,stats845.1,stats845.2,stats846.1,stats846.2,stats847.1,stats847.2,stats848.1,stats848.2,stats849.1,stats849.2,stats850.1,stats850.2,stats851.1,stats851.2,stats852.1,stats852.2,stats853.1,stats853.2,stats854.1,stats854.2,stats855.1,stats855.2,stats856.1,stats856.2,stats857.1,stats857.2,stats858.1,stats858.2,stats859.1,stats859.2,stats860.1,stats860.2,stats861.1,stats861.2,stats862.1,stats862.2,stats863.1,stats863.2,stats864.1,stats864.2,stats865.1,stats865.2,stats866.1,stats866.2,stats867.1,stats867.2,stats868.1,stats868.2,stats869.1,stats869.2,stats870.1,stats870.2,stats871.1,stats871.2,stats872.1,stats872.2,stats873.1,stats873.2,stats874.1,stats874.2]
  decide
end SharedFrameCheckedRows
