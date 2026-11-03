import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData13
import HashBlockInstructionMatrixData14
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows840 : actualRows840=WordField.canonicalRows actualModulus 840 (.bnot 839) := by core033_kernel_decide
theorem stats840 : actualRows840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows840=6276 := by core033_kernel_decide
theorem rows841 : actualRows841=WordField.canonicalRows actualModulus 841 (.bxor 838 840) := by core033_kernel_decide
theorem stats841 : actualRows841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows841=7428 := by core033_kernel_decide
theorem rows842 : actualRows842=WordField.canonicalRows actualModulus 842 (.shr 45 8) := by core033_kernel_decide
theorem stats842 : actualRows842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows842=4548 := by core033_kernel_decide
theorem rows843 : actualRows843=WordField.canonicalRows actualModulus 843 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats843 : actualRows843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows843=2820 := by core033_kernel_decide
theorem rows844 : actualRows844=WordField.canonicalRows actualModulus 844 (.bnot 843) := by core033_kernel_decide
theorem stats844 : actualRows844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows844=6276 := by core033_kernel_decide
theorem rows845 : actualRows845=WordField.canonicalRows actualModulus 845 (.badd 842 844) := by core033_kernel_decide
theorem stats845 : actualRows845.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows845=5388 := by core033_kernel_decide
theorem rows846 : actualRows846=WordField.canonicalRows actualModulus 846 (.bnot 845) := by core033_kernel_decide
theorem stats846 : actualRows846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows846=6276 := by core033_kernel_decide
theorem rows847 : actualRows847=WordField.canonicalRows actualModulus 847 (.band 841 846) := by core033_kernel_decide
theorem stats847 : actualRows847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows847=5124 := by core033_kernel_decide
theorem rows848 : actualRows848=WordField.canonicalRows actualModulus 848 (.bxor 837 847) := by core033_kernel_decide
theorem stats848 : actualRows848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows848=7428 := by core033_kernel_decide
theorem rows849 : actualRows849=WordField.canonicalRows actualModulus 849 (.shr 848 31) := by core033_kernel_decide
theorem stats849 : actualRows849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows849=2892 := by core033_kernel_decide
theorem rows850 : actualRows850=WordField.canonicalRows actualModulus 850 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats850 : actualRows850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows850=2892 := by core033_kernel_decide
theorem rows851 : actualRows851=WordField.canonicalRows actualModulus 851 (.bxor 849 850) := by core033_kernel_decide
theorem stats851 : actualRows851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows851=7428 := by core033_kernel_decide
theorem rows852 : actualRows852=WordField.canonicalRows actualModulus 852 (.shr 46 8) := by core033_kernel_decide
theorem stats852 : actualRows852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows852=4548 := by core033_kernel_decide
theorem rows853 : actualRows853=WordField.canonicalRows actualModulus 853 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats853 : actualRows853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows853=2820 := by core033_kernel_decide
theorem rows854 : actualRows854=WordField.canonicalRows actualModulus 854 (.bnot 853) := by core033_kernel_decide
theorem stats854 : actualRows854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows854=6276 := by core033_kernel_decide
theorem rows855 : actualRows855=WordField.canonicalRows actualModulus 855 (.band 852 854) := by core033_kernel_decide
theorem stats855 : actualRows855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows855=5124 := by core033_kernel_decide
theorem rows856 : actualRows856=WordField.canonicalRows actualModulus 856 (.shr 46 8) := by core033_kernel_decide
theorem stats856 : actualRows856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows856=4548 := by core033_kernel_decide
theorem rows857 : actualRows857=WordField.canonicalRows actualModulus 857 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats857 : actualRows857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows857=2820 := by core033_kernel_decide
theorem rows858 : actualRows858=WordField.canonicalRows actualModulus 858 (.bnot 857) := by core033_kernel_decide
theorem stats858 : actualRows858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows858=6276 := by core033_kernel_decide
theorem rows859 : actualRows859=WordField.canonicalRows actualModulus 859 (.bxor 856 858) := by core033_kernel_decide
theorem stats859 : actualRows859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows859=7428 := by core033_kernel_decide
theorem rows860 : actualRows860=WordField.canonicalRows actualModulus 860 (.shr 46 8) := by core033_kernel_decide
theorem stats860 : actualRows860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows860=4548 := by core033_kernel_decide
theorem rows861 : actualRows861=WordField.canonicalRows actualModulus 861 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats861 : actualRows861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows861=2820 := by core033_kernel_decide
theorem rows862 : actualRows862=WordField.canonicalRows actualModulus 862 (.bnot 861) := by core033_kernel_decide
theorem stats862 : actualRows862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows862=6276 := by core033_kernel_decide
theorem rows863 : actualRows863=WordField.canonicalRows actualModulus 863 (.badd 860 862) := by core033_kernel_decide
theorem stats863 : actualRows863.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows863=5388 := by core033_kernel_decide
theorem rows864 : actualRows864=WordField.canonicalRows actualModulus 864 (.bnot 863) := by core033_kernel_decide
theorem stats864 : actualRows864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows864=6276 := by core033_kernel_decide
theorem rows865 : actualRows865=WordField.canonicalRows actualModulus 865 (.band 859 864) := by core033_kernel_decide
theorem stats865 : actualRows865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows865=5124 := by core033_kernel_decide
theorem rows866 : actualRows866=WordField.canonicalRows actualModulus 866 (.bxor 855 865) := by core033_kernel_decide
theorem stats866 : actualRows866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows866=7428 := by core033_kernel_decide
theorem rows867 : actualRows867=WordField.canonicalRows actualModulus 867 (.shr 866 31) := by core033_kernel_decide
theorem stats867 : actualRows867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows867=2892 := by core033_kernel_decide
theorem rows868 : actualRows868=WordField.canonicalRows actualModulus 868 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats868 : actualRows868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows868=2892 := by core033_kernel_decide
theorem rows869 : actualRows869=WordField.canonicalRows actualModulus 869 (.bxor 867 868) := by core033_kernel_decide
theorem stats869 : actualRows869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows869=7428 := by core033_kernel_decide
theorem rows870 : actualRows870=WordField.canonicalRows actualModulus 870 (.shr 47 8) := by core033_kernel_decide
theorem stats870 : actualRows870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows870=4548 := by core033_kernel_decide
theorem rows871 : actualRows871=WordField.canonicalRows actualModulus 871 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats871 : actualRows871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows871=2820 := by core033_kernel_decide
theorem rows872 : actualRows872=WordField.canonicalRows actualModulus 872 (.bnot 871) := by core033_kernel_decide
theorem stats872 : actualRows872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows872=6276 := by core033_kernel_decide
theorem rows873 : actualRows873=WordField.canonicalRows actualModulus 873 (.band 870 872) := by core033_kernel_decide
theorem stats873 : actualRows873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows873=5124 := by core033_kernel_decide
theorem rows874 : actualRows874=WordField.canonicalRows actualModulus 874 (.shr 47 8) := by core033_kernel_decide
theorem stats874 : actualRows874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows874=4548 := by core033_kernel_decide
theorem rows875 : actualRows875=WordField.canonicalRows actualModulus 875 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats875 : actualRows875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows875=2820 := by core033_kernel_decide
theorem rows876 : actualRows876=WordField.canonicalRows actualModulus 876 (.bnot 875) := by core033_kernel_decide
theorem stats876 : actualRows876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows876=6276 := by core033_kernel_decide
theorem rows877 : actualRows877=WordField.canonicalRows actualModulus 877 (.bxor 874 876) := by core033_kernel_decide
theorem stats877 : actualRows877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows877=7428 := by core033_kernel_decide
theorem rows878 : actualRows878=WordField.canonicalRows actualModulus 878 (.shr 47 8) := by core033_kernel_decide
theorem stats878 : actualRows878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows878=4548 := by core033_kernel_decide
theorem rows879 : actualRows879=WordField.canonicalRows actualModulus 879 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats879 : actualRows879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows879=2820 := by core033_kernel_decide
theorem rows880 : actualRows880=WordField.canonicalRows actualModulus 880 (.bnot 879) := by core033_kernel_decide
theorem stats880 : actualRows880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows880=6276 := by core033_kernel_decide
theorem rows881 : actualRows881=WordField.canonicalRows actualModulus 881 (.badd 878 880) := by core033_kernel_decide
theorem stats881 : actualRows881.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows881=5388 := by core033_kernel_decide
theorem rows882 : actualRows882=WordField.canonicalRows actualModulus 882 (.bnot 881) := by core033_kernel_decide
theorem stats882 : actualRows882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows882=6276 := by core033_kernel_decide
theorem rows883 : actualRows883=WordField.canonicalRows actualModulus 883 (.band 877 882) := by core033_kernel_decide
theorem stats883 : actualRows883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows883=5124 := by core033_kernel_decide
theorem rows884 : actualRows884=WordField.canonicalRows actualModulus 884 (.bxor 873 883) := by core033_kernel_decide
theorem stats884 : actualRows884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows884=7428 := by core033_kernel_decide
theorem rows885 : actualRows885=WordField.canonicalRows actualModulus 885 (.shr 884 31) := by core033_kernel_decide
theorem stats885 : actualRows885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows885=2892 := by core033_kernel_decide
theorem rows886 : actualRows886=WordField.canonicalRows actualModulus 886 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats886 : actualRows886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows886=2892 := by core033_kernel_decide
theorem rows887 : actualRows887=WordField.canonicalRows actualModulus 887 (.bxor 885 886) := by core033_kernel_decide
theorem stats887 : actualRows887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows887=7428 := by core033_kernel_decide
theorem rows888 : actualRows888=WordField.canonicalRows actualModulus 888 (.shr 48 8) := by core033_kernel_decide
theorem stats888 : actualRows888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows888=4548 := by core033_kernel_decide
theorem rows889 : actualRows889=WordField.canonicalRows actualModulus 889 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats889 : actualRows889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows889=2820 := by core033_kernel_decide
theorem rows890 : actualRows890=WordField.canonicalRows actualModulus 890 (.bnot 889) := by core033_kernel_decide
theorem stats890 : actualRows890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows890=6276 := by core033_kernel_decide
theorem rows891 : actualRows891=WordField.canonicalRows actualModulus 891 (.band 888 890) := by core033_kernel_decide
theorem stats891 : actualRows891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows891=5124 := by core033_kernel_decide
theorem rows892 : actualRows892=WordField.canonicalRows actualModulus 892 (.shr 48 8) := by core033_kernel_decide
theorem stats892 : actualRows892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows892=4548 := by core033_kernel_decide
theorem rows893 : actualRows893=WordField.canonicalRows actualModulus 893 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats893 : actualRows893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows893=2820 := by core033_kernel_decide
theorem rows894 : actualRows894=WordField.canonicalRows actualModulus 894 (.bnot 893) := by core033_kernel_decide
theorem stats894 : actualRows894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows894=6276 := by core033_kernel_decide
theorem rows895 : actualRows895=WordField.canonicalRows actualModulus 895 (.bxor 892 894) := by core033_kernel_decide
theorem stats895 : actualRows895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows895=7428 := by core033_kernel_decide
theorem rows896 : actualRows896=WordField.canonicalRows actualModulus 896 (.shr 48 8) := by core033_kernel_decide
theorem stats896 : actualRows896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows896=4548 := by core033_kernel_decide
theorem rows897 : actualRows897=WordField.canonicalRows actualModulus 897 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats897 : actualRows897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows897=2820 := by core033_kernel_decide
theorem rows898 : actualRows898=WordField.canonicalRows actualModulus 898 (.bnot 897) := by core033_kernel_decide
theorem stats898 : actualRows898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows898=6276 := by core033_kernel_decide
theorem rows899 : actualRows899=WordField.canonicalRows actualModulus 899 (.badd 896 898) := by core033_kernel_decide
theorem stats899 : actualRows899.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows899=5388 := by core033_kernel_decide
theorem rows900 : actualRows900=WordField.canonicalRows actualModulus 900 (.bnot 899) := by core033_kernel_decide
theorem stats900 : actualRows900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows900=6276 := by core033_kernel_decide
theorem rows901 : actualRows901=WordField.canonicalRows actualModulus 901 (.band 895 900) := by core033_kernel_decide
theorem stats901 : actualRows901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows901=5124 := by core033_kernel_decide
theorem rows902 : actualRows902=WordField.canonicalRows actualModulus 902 (.bxor 891 901) := by core033_kernel_decide
theorem stats902 : actualRows902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows902=7428 := by core033_kernel_decide
theorem rows903 : actualRows903=WordField.canonicalRows actualModulus 903 (.shr 902 31) := by core033_kernel_decide
theorem stats903 : actualRows903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows903=2892 := by core033_kernel_decide
def partRows12 : List R1CS.Row := actualRows840++actualRows841++actualRows842++actualRows843++actualRows844++actualRows845++actualRows846++actualRows847++actualRows848++actualRows849++actualRows850++actualRows851++actualRows852++actualRows853++actualRows854++actualRows855++actualRows856++actualRows857++actualRows858++actualRows859++actualRows860++actualRows861++actualRows862++actualRows863++actualRows864++actualRows865++actualRows866++actualRows867++actualRows868++actualRows869++actualRows870++actualRows871++actualRows872++actualRows873++actualRows874++actualRows875++actualRows876++actualRows877++actualRows878++actualRows879++actualRows880++actualRows881++actualRows882++actualRows883++actualRows884++actualRows885++actualRows886++actualRows887++actualRows888++actualRows889++actualRows890++actualRows891++actualRows892++actualRows893++actualRows894++actualRows895++actualRows896++actualRows897++actualRows898++actualRows899++actualRows900++actualRows901++actualRows902++actualRows903
def partOps12 : List WordIR.Op := [.bnot 839,.bxor 838 840,.shr 45 8,.literal (BitVec.ofNat 32 0),.bnot 843,.badd 842 844,.bnot 845,.band 841 846,.bxor 837 847,.shr 848 31,.literal (BitVec.ofNat 32 1),.bxor 849 850,.shr 46 8,.literal (BitVec.ofNat 32 0),.bnot 853,.band 852 854,.shr 46 8,.literal (BitVec.ofNat 32 0),.bnot 857,.bxor 856 858,.shr 46 8,.literal (BitVec.ofNat 32 0),.bnot 861,.badd 860 862,.bnot 863,.band 859 864,.bxor 855 865,.shr 866 31,.literal (BitVec.ofNat 32 1),.bxor 867 868,.shr 47 8,.literal (BitVec.ofNat 32 0),.bnot 871,.band 870 872,.shr 47 8,.literal (BitVec.ofNat 32 0),.bnot 875,.bxor 874 876,.shr 47 8,.literal (BitVec.ofNat 32 0),.bnot 879,.badd 878 880,.bnot 881,.band 877 882,.bxor 873 883,.shr 884 31,.literal (BitVec.ofNat 32 1),.bxor 885 886,.shr 48 8,.literal (BitVec.ofNat 32 0),.bnot 889,.band 888 890,.shr 48 8,.literal (BitVec.ofNat 32 0),.bnot 893,.bxor 892 894,.shr 48 8,.literal (BitVec.ofNat 32 0),.bnot 897,.badd 896 898,.bnot 899,.band 895 900,.bxor 891 901,.shr 902 31]
theorem partExact12 : partRows12=WordField.rows actualModulus 840 partOps12 := by
  simp only [partRows12,partOps12,WordField.rows,rows840,rows841,rows842,rows843,rows844,rows845,rows846,rows847,rows848,rows849,rows850,rows851,rows852,rows853,rows854,rows855,rows856,rows857,rows858,rows859,rows860,rows861,rows862,rows863,rows864,rows865,rows866,rows867,rows868,rows869,rows870,rows871,rows872,rows873,rows874,rows875,rows876,rows877,rows878,rows879,rows880,rows881,rows882,rows883,rows884,rows885,rows886,rows887,rows888,rows889,rows890,rows891,rows892,rows893,rows894,rows895,rows896,rows897,rows898,rows899,rows900,rows901,rows902,rows903,List.append_assoc,List.append_nil]
theorem partLength12 : partOps12.length=64 := by decide
theorem partStats12 : partRows12.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows12=327192 := by
  simp only [partRows12,List.length_append,MatrixRowBlocks.rows_weight_append,stats840.1,stats840.2,stats841.1,stats841.2,stats842.1,stats842.2,stats843.1,stats843.2,stats844.1,stats844.2,stats845.1,stats845.2,stats846.1,stats846.2,stats847.1,stats847.2,stats848.1,stats848.2,stats849.1,stats849.2,stats850.1,stats850.2,stats851.1,stats851.2,stats852.1,stats852.2,stats853.1,stats853.2,stats854.1,stats854.2,stats855.1,stats855.2,stats856.1,stats856.2,stats857.1,stats857.2,stats858.1,stats858.2,stats859.1,stats859.2,stats860.1,stats860.2,stats861.1,stats861.2,stats862.1,stats862.2,stats863.1,stats863.2,stats864.1,stats864.2,stats865.1,stats865.2,stats866.1,stats866.2,stats867.1,stats867.2,stats868.1,stats868.2,stats869.1,stats869.2,stats870.1,stats870.2,stats871.1,stats871.2,stats872.1,stats872.2,stats873.1,stats873.2,stats874.1,stats874.2,stats875.1,stats875.2,stats876.1,stats876.2,stats877.1,stats877.2,stats878.1,stats878.2,stats879.1,stats879.2,stats880.1,stats880.2,stats881.1,stats881.2,stats882.1,stats882.2,stats883.1,stats883.2,stats884.1,stats884.2,stats885.1,stats885.2,stats886.1,stats886.2,stats887.1,stats887.2,stats888.1,stats888.2,stats889.1,stats889.2,stats890.1,stats890.2,stats891.1,stats891.2,stats892.1,stats892.2,stats893.1,stats893.2,stats894.1,stats894.2,stats895.1,stats895.2,stats896.1,stats896.2,stats897.1,stats897.2,stats898.1,stats898.2,stats899.1,stats899.2,stats900.1,stats900.2,stats901.1,stats901.2,stats902.1,stats902.2,stats903.1,stats903.2]
  decide
end HashBlockCheckedRows
