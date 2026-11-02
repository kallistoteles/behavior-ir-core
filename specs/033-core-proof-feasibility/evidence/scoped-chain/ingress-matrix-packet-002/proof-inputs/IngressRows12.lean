import ActualIngressIR
import ArtifactIngressBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import IngressInstructionMatrixData13
namespace IngressCheckedRows
open Core033 IngressInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows832 : actualRows832=WordField.canonicalRows actualModulus 832 (.bnot 831) := by core033_kernel_decide
theorem stats832 : actualRows832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows832=6276 := by core033_kernel_decide
theorem rows833 : actualRows833=WordField.canonicalRows actualModulus 833 (.bxor 830 832) := by core033_kernel_decide
theorem stats833 : actualRows833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows833=7428 := by core033_kernel_decide
theorem rows834 : actualRows834=WordField.canonicalRows actualModulus 834 (.shr 37 8) := by core033_kernel_decide
theorem stats834 : actualRows834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows834=4548 := by core033_kernel_decide
theorem rows835 : actualRows835=WordField.canonicalRows actualModulus 835 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats835 : actualRows835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows835=2820 := by core033_kernel_decide
theorem rows836 : actualRows836=WordField.canonicalRows actualModulus 836 (.bnot 835) := by core033_kernel_decide
theorem stats836 : actualRows836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows836=6276 := by core033_kernel_decide
theorem rows837 : actualRows837=WordField.canonicalRows actualModulus 837 (.badd 834 836) := by core033_kernel_decide
theorem stats837 : actualRows837.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows837=5388 := by core033_kernel_decide
theorem rows838 : actualRows838=WordField.canonicalRows actualModulus 838 (.bnot 837) := by core033_kernel_decide
theorem stats838 : actualRows838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows838=6276 := by core033_kernel_decide
theorem rows839 : actualRows839=WordField.canonicalRows actualModulus 839 (.band 833 838) := by core033_kernel_decide
theorem stats839 : actualRows839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows839=5124 := by core033_kernel_decide
theorem rows840 : actualRows840=WordField.canonicalRows actualModulus 840 (.bxor 829 839) := by core033_kernel_decide
theorem stats840 : actualRows840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows840=7428 := by core033_kernel_decide
theorem rows841 : actualRows841=WordField.canonicalRows actualModulus 841 (.shr 840 31) := by core033_kernel_decide
theorem stats841 : actualRows841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows841=2892 := by core033_kernel_decide
theorem rows842 : actualRows842=WordField.canonicalRows actualModulus 842 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats842 : actualRows842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows842=2892 := by core033_kernel_decide
theorem rows843 : actualRows843=WordField.canonicalRows actualModulus 843 (.bxor 841 842) := by core033_kernel_decide
theorem stats843 : actualRows843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows843=7428 := by core033_kernel_decide
theorem rows844 : actualRows844=WordField.canonicalRows actualModulus 844 (.shr 38 8) := by core033_kernel_decide
theorem stats844 : actualRows844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows844=4548 := by core033_kernel_decide
theorem rows845 : actualRows845=WordField.canonicalRows actualModulus 845 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats845 : actualRows845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows845=2820 := by core033_kernel_decide
theorem rows846 : actualRows846=WordField.canonicalRows actualModulus 846 (.bnot 845) := by core033_kernel_decide
theorem stats846 : actualRows846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows846=6276 := by core033_kernel_decide
theorem rows847 : actualRows847=WordField.canonicalRows actualModulus 847 (.band 844 846) := by core033_kernel_decide
theorem stats847 : actualRows847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows847=5124 := by core033_kernel_decide
theorem rows848 : actualRows848=WordField.canonicalRows actualModulus 848 (.shr 38 8) := by core033_kernel_decide
theorem stats848 : actualRows848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows848=4548 := by core033_kernel_decide
theorem rows849 : actualRows849=WordField.canonicalRows actualModulus 849 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats849 : actualRows849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows849=2820 := by core033_kernel_decide
theorem rows850 : actualRows850=WordField.canonicalRows actualModulus 850 (.bnot 849) := by core033_kernel_decide
theorem stats850 : actualRows850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows850=6276 := by core033_kernel_decide
theorem rows851 : actualRows851=WordField.canonicalRows actualModulus 851 (.bxor 848 850) := by core033_kernel_decide
theorem stats851 : actualRows851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows851=7428 := by core033_kernel_decide
theorem rows852 : actualRows852=WordField.canonicalRows actualModulus 852 (.shr 38 8) := by core033_kernel_decide
theorem stats852 : actualRows852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows852=4548 := by core033_kernel_decide
theorem rows853 : actualRows853=WordField.canonicalRows actualModulus 853 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats853 : actualRows853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows853=2820 := by core033_kernel_decide
theorem rows854 : actualRows854=WordField.canonicalRows actualModulus 854 (.bnot 853) := by core033_kernel_decide
theorem stats854 : actualRows854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows854=6276 := by core033_kernel_decide
theorem rows855 : actualRows855=WordField.canonicalRows actualModulus 855 (.badd 852 854) := by core033_kernel_decide
theorem stats855 : actualRows855.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows855=5388 := by core033_kernel_decide
theorem rows856 : actualRows856=WordField.canonicalRows actualModulus 856 (.bnot 855) := by core033_kernel_decide
theorem stats856 : actualRows856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows856=6276 := by core033_kernel_decide
theorem rows857 : actualRows857=WordField.canonicalRows actualModulus 857 (.band 851 856) := by core033_kernel_decide
theorem stats857 : actualRows857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows857=5124 := by core033_kernel_decide
theorem rows858 : actualRows858=WordField.canonicalRows actualModulus 858 (.bxor 847 857) := by core033_kernel_decide
theorem stats858 : actualRows858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows858=7428 := by core033_kernel_decide
theorem rows859 : actualRows859=WordField.canonicalRows actualModulus 859 (.shr 858 31) := by core033_kernel_decide
theorem stats859 : actualRows859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows859=2892 := by core033_kernel_decide
theorem rows860 : actualRows860=WordField.canonicalRows actualModulus 860 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats860 : actualRows860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows860=2892 := by core033_kernel_decide
theorem rows861 : actualRows861=WordField.canonicalRows actualModulus 861 (.bxor 859 860) := by core033_kernel_decide
theorem stats861 : actualRows861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows861=7428 := by core033_kernel_decide
theorem rows862 : actualRows862=WordField.canonicalRows actualModulus 862 (.shr 39 8) := by core033_kernel_decide
theorem stats862 : actualRows862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows862=4548 := by core033_kernel_decide
theorem rows863 : actualRows863=WordField.canonicalRows actualModulus 863 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats863 : actualRows863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows863=2820 := by core033_kernel_decide
theorem rows864 : actualRows864=WordField.canonicalRows actualModulus 864 (.bnot 863) := by core033_kernel_decide
theorem stats864 : actualRows864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows864=6276 := by core033_kernel_decide
theorem rows865 : actualRows865=WordField.canonicalRows actualModulus 865 (.band 862 864) := by core033_kernel_decide
theorem stats865 : actualRows865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows865=5124 := by core033_kernel_decide
theorem rows866 : actualRows866=WordField.canonicalRows actualModulus 866 (.shr 39 8) := by core033_kernel_decide
theorem stats866 : actualRows866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows866=4548 := by core033_kernel_decide
theorem rows867 : actualRows867=WordField.canonicalRows actualModulus 867 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats867 : actualRows867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows867=2820 := by core033_kernel_decide
theorem rows868 : actualRows868=WordField.canonicalRows actualModulus 868 (.bnot 867) := by core033_kernel_decide
theorem stats868 : actualRows868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows868=6276 := by core033_kernel_decide
theorem rows869 : actualRows869=WordField.canonicalRows actualModulus 869 (.bxor 866 868) := by core033_kernel_decide
theorem stats869 : actualRows869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows869=7428 := by core033_kernel_decide
theorem rows870 : actualRows870=WordField.canonicalRows actualModulus 870 (.shr 39 8) := by core033_kernel_decide
theorem stats870 : actualRows870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows870=4548 := by core033_kernel_decide
theorem rows871 : actualRows871=WordField.canonicalRows actualModulus 871 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats871 : actualRows871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows871=2820 := by core033_kernel_decide
theorem rows872 : actualRows872=WordField.canonicalRows actualModulus 872 (.bnot 871) := by core033_kernel_decide
theorem stats872 : actualRows872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows872=6276 := by core033_kernel_decide
theorem rows873 : actualRows873=WordField.canonicalRows actualModulus 873 (.badd 870 872) := by core033_kernel_decide
theorem stats873 : actualRows873.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows873=5388 := by core033_kernel_decide
theorem rows874 : actualRows874=WordField.canonicalRows actualModulus 874 (.bnot 873) := by core033_kernel_decide
theorem stats874 : actualRows874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows874=6276 := by core033_kernel_decide
theorem rows875 : actualRows875=WordField.canonicalRows actualModulus 875 (.band 869 874) := by core033_kernel_decide
theorem stats875 : actualRows875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows875=5124 := by core033_kernel_decide
theorem rows876 : actualRows876=WordField.canonicalRows actualModulus 876 (.bxor 865 875) := by core033_kernel_decide
theorem stats876 : actualRows876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows876=7428 := by core033_kernel_decide
theorem rows877 : actualRows877=WordField.canonicalRows actualModulus 877 (.shr 876 31) := by core033_kernel_decide
theorem stats877 : actualRows877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows877=2892 := by core033_kernel_decide
theorem rows878 : actualRows878=WordField.canonicalRows actualModulus 878 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats878 : actualRows878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows878=2892 := by core033_kernel_decide
theorem rows879 : actualRows879=WordField.canonicalRows actualModulus 879 (.bxor 877 878) := by core033_kernel_decide
theorem stats879 : actualRows879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows879=7428 := by core033_kernel_decide
theorem rows880 : actualRows880=WordField.canonicalRows actualModulus 880 (.shr 40 8) := by core033_kernel_decide
theorem stats880 : actualRows880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows880=4548 := by core033_kernel_decide
theorem rows881 : actualRows881=WordField.canonicalRows actualModulus 881 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats881 : actualRows881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows881=2820 := by core033_kernel_decide
theorem rows882 : actualRows882=WordField.canonicalRows actualModulus 882 (.bnot 881) := by core033_kernel_decide
theorem stats882 : actualRows882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows882=6276 := by core033_kernel_decide
theorem rows883 : actualRows883=WordField.canonicalRows actualModulus 883 (.band 880 882) := by core033_kernel_decide
theorem stats883 : actualRows883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows883=5124 := by core033_kernel_decide
theorem rows884 : actualRows884=WordField.canonicalRows actualModulus 884 (.shr 40 8) := by core033_kernel_decide
theorem stats884 : actualRows884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows884=4548 := by core033_kernel_decide
theorem rows885 : actualRows885=WordField.canonicalRows actualModulus 885 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats885 : actualRows885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows885=2820 := by core033_kernel_decide
theorem rows886 : actualRows886=WordField.canonicalRows actualModulus 886 (.bnot 885) := by core033_kernel_decide
theorem stats886 : actualRows886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows886=6276 := by core033_kernel_decide
theorem rows887 : actualRows887=WordField.canonicalRows actualModulus 887 (.bxor 884 886) := by core033_kernel_decide
theorem stats887 : actualRows887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows887=7428 := by core033_kernel_decide
theorem rows888 : actualRows888=WordField.canonicalRows actualModulus 888 (.shr 40 8) := by core033_kernel_decide
theorem stats888 : actualRows888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows888=4548 := by core033_kernel_decide
theorem rows889 : actualRows889=WordField.canonicalRows actualModulus 889 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats889 : actualRows889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows889=2820 := by core033_kernel_decide
theorem rows890 : actualRows890=WordField.canonicalRows actualModulus 890 (.bnot 889) := by core033_kernel_decide
theorem stats890 : actualRows890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows890=6276 := by core033_kernel_decide
theorem rows891 : actualRows891=WordField.canonicalRows actualModulus 891 (.badd 888 890) := by core033_kernel_decide
theorem stats891 : actualRows891.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows891=5388 := by core033_kernel_decide
theorem rows892 : actualRows892=WordField.canonicalRows actualModulus 892 (.bnot 891) := by core033_kernel_decide
theorem stats892 : actualRows892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows892=6276 := by core033_kernel_decide
theorem rows893 : actualRows893=WordField.canonicalRows actualModulus 893 (.band 887 892) := by core033_kernel_decide
theorem stats893 : actualRows893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows893=5124 := by core033_kernel_decide
theorem rows894 : actualRows894=WordField.canonicalRows actualModulus 894 (.bxor 883 893) := by core033_kernel_decide
theorem stats894 : actualRows894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows894=7428 := by core033_kernel_decide
theorem rows895 : actualRows895=WordField.canonicalRows actualModulus 895 (.shr 894 31) := by core033_kernel_decide
theorem stats895 : actualRows895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows895=2892 := by core033_kernel_decide
def partRows12 : List R1CS.Row := actualRows832++actualRows833++actualRows834++actualRows835++actualRows836++actualRows837++actualRows838++actualRows839++actualRows840++actualRows841++actualRows842++actualRows843++actualRows844++actualRows845++actualRows846++actualRows847++actualRows848++actualRows849++actualRows850++actualRows851++actualRows852++actualRows853++actualRows854++actualRows855++actualRows856++actualRows857++actualRows858++actualRows859++actualRows860++actualRows861++actualRows862++actualRows863++actualRows864++actualRows865++actualRows866++actualRows867++actualRows868++actualRows869++actualRows870++actualRows871++actualRows872++actualRows873++actualRows874++actualRows875++actualRows876++actualRows877++actualRows878++actualRows879++actualRows880++actualRows881++actualRows882++actualRows883++actualRows884++actualRows885++actualRows886++actualRows887++actualRows888++actualRows889++actualRows890++actualRows891++actualRows892++actualRows893++actualRows894++actualRows895
def partOps12 : List WordIR.Op := [.bnot 831,.bxor 830 832,.shr 37 8,.literal (BitVec.ofNat 32 0),.bnot 835,.badd 834 836,.bnot 837,.band 833 838,.bxor 829 839,.shr 840 31,.literal (BitVec.ofNat 32 1),.bxor 841 842,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 845,.band 844 846,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 849,.bxor 848 850,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 853,.badd 852 854,.bnot 855,.band 851 856,.bxor 847 857,.shr 858 31,.literal (BitVec.ofNat 32 1),.bxor 859 860,.shr 39 8,.literal (BitVec.ofNat 32 0),.bnot 863,.band 862 864,.shr 39 8,.literal (BitVec.ofNat 32 0),.bnot 867,.bxor 866 868,.shr 39 8,.literal (BitVec.ofNat 32 0),.bnot 871,.badd 870 872,.bnot 873,.band 869 874,.bxor 865 875,.shr 876 31,.literal (BitVec.ofNat 32 1),.bxor 877 878,.shr 40 8,.literal (BitVec.ofNat 32 0),.bnot 881,.band 880 882,.shr 40 8,.literal (BitVec.ofNat 32 0),.bnot 885,.bxor 884 886,.shr 40 8,.literal (BitVec.ofNat 32 0),.bnot 889,.badd 888 890,.bnot 891,.band 887 892,.bxor 883 893,.shr 894 31]
theorem partExact12 : partRows12=WordField.rows actualModulus 832 partOps12 := by
  simp only [partRows12,partOps12,WordField.rows,rows832,rows833,rows834,rows835,rows836,rows837,rows838,rows839,rows840,rows841,rows842,rows843,rows844,rows845,rows846,rows847,rows848,rows849,rows850,rows851,rows852,rows853,rows854,rows855,rows856,rows857,rows858,rows859,rows860,rows861,rows862,rows863,rows864,rows865,rows866,rows867,rows868,rows869,rows870,rows871,rows872,rows873,rows874,rows875,rows876,rows877,rows878,rows879,rows880,rows881,rows882,rows883,rows884,rows885,rows886,rows887,rows888,rows889,rows890,rows891,rows892,rows893,rows894,rows895,List.append_assoc,List.append_nil]
theorem partLength12 : partOps12.length=64 := by decide
theorem partStats12 : partRows12.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows12=327192 := by
  simp only [partRows12,List.length_append,MatrixRowBlocks.rows_weight_append,stats832.1,stats832.2,stats833.1,stats833.2,stats834.1,stats834.2,stats835.1,stats835.2,stats836.1,stats836.2,stats837.1,stats837.2,stats838.1,stats838.2,stats839.1,stats839.2,stats840.1,stats840.2,stats841.1,stats841.2,stats842.1,stats842.2,stats843.1,stats843.2,stats844.1,stats844.2,stats845.1,stats845.2,stats846.1,stats846.2,stats847.1,stats847.2,stats848.1,stats848.2,stats849.1,stats849.2,stats850.1,stats850.2,stats851.1,stats851.2,stats852.1,stats852.2,stats853.1,stats853.2,stats854.1,stats854.2,stats855.1,stats855.2,stats856.1,stats856.2,stats857.1,stats857.2,stats858.1,stats858.2,stats859.1,stats859.2,stats860.1,stats860.2,stats861.1,stats861.2,stats862.1,stats862.2,stats863.1,stats863.2,stats864.1,stats864.2,stats865.1,stats865.2,stats866.1,stats866.2,stats867.1,stats867.2,stats868.1,stats868.2,stats869.1,stats869.2,stats870.1,stats870.2,stats871.1,stats871.2,stats872.1,stats872.2,stats873.1,stats873.2,stats874.1,stats874.2,stats875.1,stats875.2,stats876.1,stats876.2,stats877.1,stats877.2,stats878.1,stats878.2,stats879.1,stats879.2,stats880.1,stats880.2,stats881.1,stats881.2,stats882.1,stats882.2,stats883.1,stats883.2,stats884.1,stats884.2,stats885.1,stats885.2,stats886.1,stats886.2,stats887.1,stats887.2,stats888.1,stats888.2,stats889.1,stats889.2,stats890.1,stats890.2,stats891.1,stats891.2,stats892.1,stats892.2,stats893.1,stats893.2,stats894.1,stats894.2,stats895.1,stats895.2]
  decide
end IngressCheckedRows
