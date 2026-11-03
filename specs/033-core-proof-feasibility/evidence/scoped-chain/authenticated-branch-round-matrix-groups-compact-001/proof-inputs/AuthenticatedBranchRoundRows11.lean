import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData12
import AuthenticatedBranchRoundInstructionMatrixData13
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows822 : actualRows822=WordField.canonicalRows actualModulus 822 (.band 811 821) := by core033_kernel_decide
theorem stats822 : actualRows822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows822=5124 := by core033_kernel_decide
theorem rows823 : actualRows823=WordField.canonicalRows actualModulus 823 (.bxor 807 822) := by core033_kernel_decide
theorem stats823 : actualRows823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows823=7428 := by core033_kernel_decide
theorem rows824 : actualRows824=WordField.canonicalRows actualModulus 824 (.bnot 182) := by core033_kernel_decide
theorem stats824 : actualRows824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows824=6276 := by core033_kernel_decide
theorem rows825 : actualRows825=WordField.canonicalRows actualModulus 825 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats825 : actualRows825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows825=2892 := by core033_kernel_decide
theorem rows826 : actualRows826=WordField.canonicalRows actualModulus 826 (.badd 824 825) := by core033_kernel_decide
theorem stats826 : actualRows826.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows826=5388 := by core033_kernel_decide
theorem rows827 : actualRows827=WordField.canonicalRows actualModulus 827 (.band 826 97) := by core033_kernel_decide
theorem stats827 : actualRows827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows827=5124 := by core033_kernel_decide
theorem rows828 : actualRows828=WordField.canonicalRows actualModulus 828 (.bnot 182) := by core033_kernel_decide
theorem stats828 : actualRows828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows828=6276 := by core033_kernel_decide
theorem rows829 : actualRows829=WordField.canonicalRows actualModulus 829 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats829 : actualRows829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows829=2892 := by core033_kernel_decide
theorem rows830 : actualRows830=WordField.canonicalRows actualModulus 830 (.badd 828 829) := by core033_kernel_decide
theorem stats830 : actualRows830.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows830=5388 := by core033_kernel_decide
theorem rows831 : actualRows831=WordField.canonicalRows actualModulus 831 (.bnot 830) := by core033_kernel_decide
theorem stats831 : actualRows831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows831=6276 := by core033_kernel_decide
theorem rows832 : actualRows832=WordField.canonicalRows actualModulus 832 (.bnot 247) := by core033_kernel_decide
theorem stats832 : actualRows832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows832=6276 := by core033_kernel_decide
theorem rows833 : actualRows833=WordField.canonicalRows actualModulus 833 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats833 : actualRows833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows833=2892 := by core033_kernel_decide
theorem rows834 : actualRows834=WordField.canonicalRows actualModulus 834 (.badd 832 833) := by core033_kernel_decide
theorem stats834 : actualRows834.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows834=5388 := by core033_kernel_decide
theorem rows835 : actualRows835=WordField.canonicalRows actualModulus 835 (.band 834 24) := by core033_kernel_decide
theorem stats835 : actualRows835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows835=5124 := by core033_kernel_decide
theorem rows836 : actualRows836=WordField.canonicalRows actualModulus 836 (.bnot 247) := by core033_kernel_decide
theorem stats836 : actualRows836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows836=6276 := by core033_kernel_decide
theorem rows837 : actualRows837=WordField.canonicalRows actualModulus 837 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats837 : actualRows837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows837=2892 := by core033_kernel_decide
theorem rows838 : actualRows838=WordField.canonicalRows actualModulus 838 (.badd 836 837) := by core033_kernel_decide
theorem stats838 : actualRows838.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows838=5388 := by core033_kernel_decide
theorem rows839 : actualRows839=WordField.canonicalRows actualModulus 839 (.bnot 838) := by core033_kernel_decide
theorem stats839 : actualRows839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows839=6276 := by core033_kernel_decide
theorem rows840 : actualRows840=WordField.canonicalRows actualModulus 840 (.band 839 12) := by core033_kernel_decide
theorem stats840 : actualRows840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows840=5124 := by core033_kernel_decide
theorem rows841 : actualRows841=WordField.canonicalRows actualModulus 841 (.bxor 835 840) := by core033_kernel_decide
theorem stats841 : actualRows841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows841=7428 := by core033_kernel_decide
theorem rows842 : actualRows842=WordField.canonicalRows actualModulus 842 (.band 831 841) := by core033_kernel_decide
theorem stats842 : actualRows842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows842=5124 := by core033_kernel_decide
theorem rows843 : actualRows843=WordField.canonicalRows actualModulus 843 (.bxor 827 842) := by core033_kernel_decide
theorem stats843 : actualRows843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows843=7428 := by core033_kernel_decide
theorem rows844 : actualRows844=WordField.canonicalRows actualModulus 844 (.bnot 182) := by core033_kernel_decide
theorem stats844 : actualRows844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows844=6276 := by core033_kernel_decide
theorem rows845 : actualRows845=WordField.canonicalRows actualModulus 845 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats845 : actualRows845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows845=2892 := by core033_kernel_decide
theorem rows846 : actualRows846=WordField.canonicalRows actualModulus 846 (.badd 844 845) := by core033_kernel_decide
theorem stats846 : actualRows846.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows846=5388 := by core033_kernel_decide
theorem rows847 : actualRows847=WordField.canonicalRows actualModulus 847 (.band 846 98) := by core033_kernel_decide
theorem stats847 : actualRows847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows847=5124 := by core033_kernel_decide
theorem rows848 : actualRows848=WordField.canonicalRows actualModulus 848 (.bnot 182) := by core033_kernel_decide
theorem stats848 : actualRows848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows848=6276 := by core033_kernel_decide
theorem rows849 : actualRows849=WordField.canonicalRows actualModulus 849 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats849 : actualRows849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows849=2892 := by core033_kernel_decide
theorem rows850 : actualRows850=WordField.canonicalRows actualModulus 850 (.badd 848 849) := by core033_kernel_decide
theorem stats850 : actualRows850.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows850=5388 := by core033_kernel_decide
theorem rows851 : actualRows851=WordField.canonicalRows actualModulus 851 (.bnot 850) := by core033_kernel_decide
theorem stats851 : actualRows851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows851=6276 := by core033_kernel_decide
theorem rows852 : actualRows852=WordField.canonicalRows actualModulus 852 (.bnot 247) := by core033_kernel_decide
theorem stats852 : actualRows852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows852=6276 := by core033_kernel_decide
theorem rows853 : actualRows853=WordField.canonicalRows actualModulus 853 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats853 : actualRows853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows853=2892 := by core033_kernel_decide
theorem rows854 : actualRows854=WordField.canonicalRows actualModulus 854 (.badd 852 853) := by core033_kernel_decide
theorem stats854 : actualRows854.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows854=5388 := by core033_kernel_decide
theorem rows855 : actualRows855=WordField.canonicalRows actualModulus 855 (.band 854 25) := by core033_kernel_decide
theorem stats855 : actualRows855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows855=5124 := by core033_kernel_decide
theorem rows856 : actualRows856=WordField.canonicalRows actualModulus 856 (.bnot 247) := by core033_kernel_decide
theorem stats856 : actualRows856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows856=6276 := by core033_kernel_decide
theorem rows857 : actualRows857=WordField.canonicalRows actualModulus 857 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats857 : actualRows857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows857=2892 := by core033_kernel_decide
theorem rows858 : actualRows858=WordField.canonicalRows actualModulus 858 (.badd 856 857) := by core033_kernel_decide
theorem stats858 : actualRows858.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows858=5388 := by core033_kernel_decide
theorem rows859 : actualRows859=WordField.canonicalRows actualModulus 859 (.bnot 858) := by core033_kernel_decide
theorem stats859 : actualRows859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows859=6276 := by core033_kernel_decide
theorem rows860 : actualRows860=WordField.canonicalRows actualModulus 860 (.band 859 13) := by core033_kernel_decide
theorem stats860 : actualRows860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows860=5124 := by core033_kernel_decide
theorem rows861 : actualRows861=WordField.canonicalRows actualModulus 861 (.bxor 855 860) := by core033_kernel_decide
theorem stats861 : actualRows861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows861=7428 := by core033_kernel_decide
theorem rows862 : actualRows862=WordField.canonicalRows actualModulus 862 (.band 851 861) := by core033_kernel_decide
theorem stats862 : actualRows862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows862=5124 := by core033_kernel_decide
theorem rows863 : actualRows863=WordField.canonicalRows actualModulus 863 (.bxor 847 862) := by core033_kernel_decide
theorem stats863 : actualRows863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows863=7428 := by core033_kernel_decide
theorem rows864 : actualRows864=WordField.canonicalRows actualModulus 864 (.bnot 182) := by core033_kernel_decide
theorem stats864 : actualRows864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows864=6276 := by core033_kernel_decide
theorem rows865 : actualRows865=WordField.canonicalRows actualModulus 865 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats865 : actualRows865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows865=2892 := by core033_kernel_decide
theorem rows866 : actualRows866=WordField.canonicalRows actualModulus 866 (.badd 864 865) := by core033_kernel_decide
theorem stats866 : actualRows866.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows866=5388 := by core033_kernel_decide
theorem rows867 : actualRows867=WordField.canonicalRows actualModulus 867 (.band 866 99) := by core033_kernel_decide
theorem stats867 : actualRows867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows867=5124 := by core033_kernel_decide
theorem rows868 : actualRows868=WordField.canonicalRows actualModulus 868 (.bnot 182) := by core033_kernel_decide
theorem stats868 : actualRows868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows868=6276 := by core033_kernel_decide
theorem rows869 : actualRows869=WordField.canonicalRows actualModulus 869 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats869 : actualRows869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows869=2892 := by core033_kernel_decide
theorem rows870 : actualRows870=WordField.canonicalRows actualModulus 870 (.badd 868 869) := by core033_kernel_decide
theorem stats870 : actualRows870.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows870=5388 := by core033_kernel_decide
theorem rows871 : actualRows871=WordField.canonicalRows actualModulus 871 (.bnot 870) := by core033_kernel_decide
theorem stats871 : actualRows871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows871=6276 := by core033_kernel_decide
theorem rows872 : actualRows872=WordField.canonicalRows actualModulus 872 (.bnot 247) := by core033_kernel_decide
theorem stats872 : actualRows872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows872=6276 := by core033_kernel_decide
theorem rows873 : actualRows873=WordField.canonicalRows actualModulus 873 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats873 : actualRows873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows873=2892 := by core033_kernel_decide
theorem rows874 : actualRows874=WordField.canonicalRows actualModulus 874 (.badd 872 873) := by core033_kernel_decide
theorem stats874 : actualRows874.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows874=5388 := by core033_kernel_decide
theorem rows875 : actualRows875=WordField.canonicalRows actualModulus 875 (.band 874 26) := by core033_kernel_decide
theorem stats875 : actualRows875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows875=5124 := by core033_kernel_decide
theorem rows876 : actualRows876=WordField.canonicalRows actualModulus 876 (.bnot 247) := by core033_kernel_decide
theorem stats876 : actualRows876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows876=6276 := by core033_kernel_decide
theorem rows877 : actualRows877=WordField.canonicalRows actualModulus 877 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats877 : actualRows877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows877=2892 := by core033_kernel_decide
theorem rows878 : actualRows878=WordField.canonicalRows actualModulus 878 (.badd 876 877) := by core033_kernel_decide
theorem stats878 : actualRows878.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows878=5388 := by core033_kernel_decide
theorem rows879 : actualRows879=WordField.canonicalRows actualModulus 879 (.bnot 878) := by core033_kernel_decide
theorem stats879 : actualRows879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows879=6276 := by core033_kernel_decide
theorem rows880 : actualRows880=WordField.canonicalRows actualModulus 880 (.band 879 14) := by core033_kernel_decide
theorem stats880 : actualRows880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows880=5124 := by core033_kernel_decide
theorem rows881 : actualRows881=WordField.canonicalRows actualModulus 881 (.bxor 875 880) := by core033_kernel_decide
theorem stats881 : actualRows881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows881=7428 := by core033_kernel_decide
theorem rows882 : actualRows882=WordField.canonicalRows actualModulus 882 (.band 871 881) := by core033_kernel_decide
theorem stats882 : actualRows882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows882=5124 := by core033_kernel_decide
theorem rows883 : actualRows883=WordField.canonicalRows actualModulus 883 (.bxor 867 882) := by core033_kernel_decide
theorem stats883 : actualRows883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows883=7428 := by core033_kernel_decide
theorem rows884 : actualRows884=WordField.canonicalRows actualModulus 884 (.bnot 182) := by core033_kernel_decide
theorem stats884 : actualRows884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows884=6276 := by core033_kernel_decide
theorem rows885 : actualRows885=WordField.canonicalRows actualModulus 885 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats885 : actualRows885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows885=2892 := by core033_kernel_decide
def partRows11 : List R1CS.Row := actualRows822++actualRows823++actualRows824++actualRows825++actualRows826++actualRows827++actualRows828++actualRows829++actualRows830++actualRows831++actualRows832++actualRows833++actualRows834++actualRows835++actualRows836++actualRows837++actualRows838++actualRows839++actualRows840++actualRows841++actualRows842++actualRows843++actualRows844++actualRows845++actualRows846++actualRows847++actualRows848++actualRows849++actualRows850++actualRows851++actualRows852++actualRows853++actualRows854++actualRows855++actualRows856++actualRows857++actualRows858++actualRows859++actualRows860++actualRows861++actualRows862++actualRows863++actualRows864++actualRows865++actualRows866++actualRows867++actualRows868++actualRows869++actualRows870++actualRows871++actualRows872++actualRows873++actualRows874++actualRows875++actualRows876++actualRows877++actualRows878++actualRows879++actualRows880++actualRows881++actualRows882++actualRows883++actualRows884++actualRows885
def partOps11 : List WordIR.Op := [.band 811 821,.bxor 807 822,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 824 825,.band 826 97,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 828 829,.bnot 830,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 832 833,.band 834 24,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 836 837,.bnot 838,.band 839 12,.bxor 835 840,.band 831 841,.bxor 827 842,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 844 845,.band 846 98,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 848 849,.bnot 850,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 852 853,.band 854 25,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 856 857,.bnot 858,.band 859 13,.bxor 855 860,.band 851 861,.bxor 847 862,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 864 865,.band 866 99,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 868 869,.bnot 870,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 872 873,.band 874 26,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 876 877,.bnot 878,.band 879 14,.bxor 875 880,.band 871 881,.bxor 867 882,.bnot 182,.literal (BitVec.ofNat 32 1)]
theorem partExact11 : partRows11=WordField.rows actualModulus 822 partOps11 := by
  simp only [partRows11,partOps11,WordField.rows,rows822,rows823,rows824,rows825,rows826,rows827,rows828,rows829,rows830,rows831,rows832,rows833,rows834,rows835,rows836,rows837,rows838,rows839,rows840,rows841,rows842,rows843,rows844,rows845,rows846,rows847,rows848,rows849,rows850,rows851,rows852,rows853,rows854,rows855,rows856,rows857,rows858,rows859,rows860,rows861,rows862,rows863,rows864,rows865,rows866,rows867,rows868,rows869,rows870,rows871,rows872,rows873,rows874,rows875,rows876,rows877,rows878,rows879,rows880,rows881,rows882,rows883,rows884,rows885,List.append_assoc,List.append_nil]
theorem partLength11 : partOps11.length=64 := by decide
theorem partStats11 : partRows11.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows11=340104 := by
  simp only [partRows11,List.length_append,MatrixRowBlocks.rows_weight_append,stats822.1,stats822.2,stats823.1,stats823.2,stats824.1,stats824.2,stats825.1,stats825.2,stats826.1,stats826.2,stats827.1,stats827.2,stats828.1,stats828.2,stats829.1,stats829.2,stats830.1,stats830.2,stats831.1,stats831.2,stats832.1,stats832.2,stats833.1,stats833.2,stats834.1,stats834.2,stats835.1,stats835.2,stats836.1,stats836.2,stats837.1,stats837.2,stats838.1,stats838.2,stats839.1,stats839.2,stats840.1,stats840.2,stats841.1,stats841.2,stats842.1,stats842.2,stats843.1,stats843.2,stats844.1,stats844.2,stats845.1,stats845.2,stats846.1,stats846.2,stats847.1,stats847.2,stats848.1,stats848.2,stats849.1,stats849.2,stats850.1,stats850.2,stats851.1,stats851.2,stats852.1,stats852.2,stats853.1,stats853.2,stats854.1,stats854.2,stats855.1,stats855.2,stats856.1,stats856.2,stats857.1,stats857.2,stats858.1,stats858.2,stats859.1,stats859.2,stats860.1,stats860.2,stats861.1,stats861.2,stats862.1,stats862.2,stats863.1,stats863.2,stats864.1,stats864.2,stats865.1,stats865.2,stats866.1,stats866.2,stats867.1,stats867.2,stats868.1,stats868.2,stats869.1,stats869.2,stats870.1,stats870.2,stats871.1,stats871.2,stats872.1,stats872.2,stats873.1,stats873.2,stats874.1,stats874.2,stats875.1,stats875.2,stats876.1,stats876.2,stats877.1,stats877.2,stats878.1,stats878.2,stats879.1,stats879.2,stats880.1,stats880.2,stats881.1,stats881.2,stats882.1,stats882.2,stats883.1,stats883.2,stats884.1,stats884.2,stats885.1,stats885.2]
  decide
end AuthenticatedBranchRoundCheckedRows
