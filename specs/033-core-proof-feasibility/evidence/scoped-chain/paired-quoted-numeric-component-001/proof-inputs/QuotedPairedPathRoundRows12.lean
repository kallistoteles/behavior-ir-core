import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData13
import PairedPathRoundInstructionMatrixData14
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows864 : actualRows864=WordField.canonicalRows actualModulus 864 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats864 : actualRows864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows864=2892 := by core033_kernel_decide
theorem rows865 : actualRows865=WordField.canonicalRows actualModulus 865 (.badd 863 864) := by core033_kernel_decide
theorem stats865 : actualRows865.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows865=5388 := by core033_kernel_decide
theorem rows866 : actualRows866=WordField.canonicalRows actualModulus 866 (.bnot 865) := by core033_kernel_decide
theorem stats866 : actualRows866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows866=6276 := by core033_kernel_decide
theorem rows867 : actualRows867=WordField.canonicalRows actualModulus 867 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats867 : actualRows867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows867=2820 := by core033_kernel_decide
theorem rows868 : actualRows868=WordField.canonicalRows actualModulus 868 (.band 866 867) := by core033_kernel_decide
theorem stats868 : actualRows868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows868=5124 := by core033_kernel_decide
theorem rows869 : actualRows869=WordField.canonicalRows actualModulus 869 (.bxor 862 868) := by core033_kernel_decide
theorem stats869 : actualRows869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows869=7428 := by core033_kernel_decide
theorem rows870 : actualRows870=WordField.canonicalRows actualModulus 870 (.bnot 605) := by core033_kernel_decide
theorem stats870 : actualRows870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows870=6276 := by core033_kernel_decide
theorem rows871 : actualRows871=WordField.canonicalRows actualModulus 871 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats871 : actualRows871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows871=2892 := by core033_kernel_decide
theorem rows872 : actualRows872=WordField.canonicalRows actualModulus 872 (.badd 870 871) := by core033_kernel_decide
theorem stats872 : actualRows872.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows872=5388 := by core033_kernel_decide
theorem rows873 : actualRows873=WordField.canonicalRows actualModulus 873 (.band 872 40) := by core033_kernel_decide
theorem stats873 : actualRows873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows873=5124 := by core033_kernel_decide
theorem rows874 : actualRows874=WordField.canonicalRows actualModulus 874 (.bnot 605) := by core033_kernel_decide
theorem stats874 : actualRows874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows874=6276 := by core033_kernel_decide
theorem rows875 : actualRows875=WordField.canonicalRows actualModulus 875 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats875 : actualRows875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows875=2892 := by core033_kernel_decide
theorem rows876 : actualRows876=WordField.canonicalRows actualModulus 876 (.badd 874 875) := by core033_kernel_decide
theorem stats876 : actualRows876.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows876=5388 := by core033_kernel_decide
theorem rows877 : actualRows877=WordField.canonicalRows actualModulus 877 (.bnot 876) := by core033_kernel_decide
theorem stats877 : actualRows877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows877=6276 := by core033_kernel_decide
theorem rows878 : actualRows878=WordField.canonicalRows actualModulus 878 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats878 : actualRows878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows878=2820 := by core033_kernel_decide
theorem rows879 : actualRows879=WordField.canonicalRows actualModulus 879 (.band 877 878) := by core033_kernel_decide
theorem stats879 : actualRows879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows879=5124 := by core033_kernel_decide
theorem rows880 : actualRows880=WordField.canonicalRows actualModulus 880 (.bxor 873 879) := by core033_kernel_decide
theorem stats880 : actualRows880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows880=7428 := by core033_kernel_decide
theorem rows881 : actualRows881=WordField.canonicalRows actualModulus 881 (.bnot 605) := by core033_kernel_decide
theorem stats881 : actualRows881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows881=6276 := by core033_kernel_decide
theorem rows882 : actualRows882=WordField.canonicalRows actualModulus 882 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats882 : actualRows882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows882=2892 := by core033_kernel_decide
theorem rows883 : actualRows883=WordField.canonicalRows actualModulus 883 (.badd 881 882) := by core033_kernel_decide
theorem stats883 : actualRows883.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows883=5388 := by core033_kernel_decide
theorem rows884 : actualRows884=WordField.canonicalRows actualModulus 884 (.band 883 41) := by core033_kernel_decide
theorem stats884 : actualRows884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows884=5124 := by core033_kernel_decide
theorem rows885 : actualRows885=WordField.canonicalRows actualModulus 885 (.bnot 605) := by core033_kernel_decide
theorem stats885 : actualRows885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows885=6276 := by core033_kernel_decide
theorem rows886 : actualRows886=WordField.canonicalRows actualModulus 886 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats886 : actualRows886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows886=2892 := by core033_kernel_decide
theorem rows887 : actualRows887=WordField.canonicalRows actualModulus 887 (.badd 885 886) := by core033_kernel_decide
theorem stats887 : actualRows887.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows887=5388 := by core033_kernel_decide
theorem rows888 : actualRows888=WordField.canonicalRows actualModulus 888 (.bnot 887) := by core033_kernel_decide
theorem stats888 : actualRows888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows888=6276 := by core033_kernel_decide
theorem rows889 : actualRows889=WordField.canonicalRows actualModulus 889 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats889 : actualRows889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows889=2820 := by core033_kernel_decide
theorem rows890 : actualRows890=WordField.canonicalRows actualModulus 890 (.band 888 889) := by core033_kernel_decide
theorem stats890 : actualRows890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows890=5124 := by core033_kernel_decide
theorem rows891 : actualRows891=WordField.canonicalRows actualModulus 891 (.bxor 884 890) := by core033_kernel_decide
theorem stats891 : actualRows891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows891=7428 := by core033_kernel_decide
theorem rows892 : actualRows892=WordField.canonicalRows actualModulus 892 (.bnot 605) := by core033_kernel_decide
theorem stats892 : actualRows892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows892=6276 := by core033_kernel_decide
theorem rows893 : actualRows893=WordField.canonicalRows actualModulus 893 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats893 : actualRows893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows893=2892 := by core033_kernel_decide
theorem rows894 : actualRows894=WordField.canonicalRows actualModulus 894 (.badd 892 893) := by core033_kernel_decide
theorem stats894 : actualRows894.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows894=5388 := by core033_kernel_decide
theorem rows895 : actualRows895=WordField.canonicalRows actualModulus 895 (.band 894 42) := by core033_kernel_decide
theorem stats895 : actualRows895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows895=5124 := by core033_kernel_decide
theorem rows896 : actualRows896=WordField.canonicalRows actualModulus 896 (.bnot 605) := by core033_kernel_decide
theorem stats896 : actualRows896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows896=6276 := by core033_kernel_decide
theorem rows897 : actualRows897=WordField.canonicalRows actualModulus 897 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats897 : actualRows897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows897=2892 := by core033_kernel_decide
theorem rows898 : actualRows898=WordField.canonicalRows actualModulus 898 (.badd 896 897) := by core033_kernel_decide
theorem stats898 : actualRows898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows898=5388 := by core033_kernel_decide
theorem rows899 : actualRows899=WordField.canonicalRows actualModulus 899 (.bnot 898) := by core033_kernel_decide
theorem stats899 : actualRows899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows899=6276 := by core033_kernel_decide
theorem rows900 : actualRows900=WordField.canonicalRows actualModulus 900 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats900 : actualRows900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows900=2820 := by core033_kernel_decide
theorem rows901 : actualRows901=WordField.canonicalRows actualModulus 901 (.band 899 900) := by core033_kernel_decide
theorem stats901 : actualRows901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows901=5124 := by core033_kernel_decide
theorem rows902 : actualRows902=WordField.canonicalRows actualModulus 902 (.bxor 895 901) := by core033_kernel_decide
theorem stats902 : actualRows902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows902=7428 := by core033_kernel_decide
theorem rows903 : actualRows903=WordField.canonicalRows actualModulus 903 (.bnot 605) := by core033_kernel_decide
theorem stats903 : actualRows903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows903=6276 := by core033_kernel_decide
theorem rows904 : actualRows904=WordField.canonicalRows actualModulus 904 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats904 : actualRows904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows904=2892 := by core033_kernel_decide
theorem rows905 : actualRows905=WordField.canonicalRows actualModulus 905 (.badd 903 904) := by core033_kernel_decide
theorem stats905 : actualRows905.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows905=5388 := by core033_kernel_decide
theorem rows906 : actualRows906=WordField.canonicalRows actualModulus 906 (.band 905 532) := by core033_kernel_decide
theorem stats906 : actualRows906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows906=5124 := by core033_kernel_decide
theorem rows907 : actualRows907=WordField.canonicalRows actualModulus 907 (.bnot 605) := by core033_kernel_decide
theorem stats907 : actualRows907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows907=6276 := by core033_kernel_decide
theorem rows908 : actualRows908=WordField.canonicalRows actualModulus 908 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats908 : actualRows908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows908=2892 := by core033_kernel_decide
theorem rows909 : actualRows909=WordField.canonicalRows actualModulus 909 (.badd 907 908) := by core033_kernel_decide
theorem stats909 : actualRows909.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows909=5388 := by core033_kernel_decide
theorem rows910 : actualRows910=WordField.canonicalRows actualModulus 910 (.bnot 909) := by core033_kernel_decide
theorem stats910 : actualRows910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows910=6276 := by core033_kernel_decide
theorem rows911 : actualRows911=WordField.canonicalRows actualModulus 911 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats911 : actualRows911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows911=2820 := by core033_kernel_decide
theorem rows912 : actualRows912=WordField.canonicalRows actualModulus 912 (.band 910 911) := by core033_kernel_decide
theorem stats912 : actualRows912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows912=5124 := by core033_kernel_decide
theorem rows913 : actualRows913=WordField.canonicalRows actualModulus 913 (.bxor 906 912) := by core033_kernel_decide
theorem stats913 : actualRows913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows913=7428 := by core033_kernel_decide
theorem rows914 : actualRows914=WordField.canonicalRows actualModulus 914 (.bnot 605) := by core033_kernel_decide
theorem stats914 : actualRows914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows914=6276 := by core033_kernel_decide
theorem rows915 : actualRows915=WordField.canonicalRows actualModulus 915 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats915 : actualRows915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows915=2892 := by core033_kernel_decide
theorem rows916 : actualRows916=WordField.canonicalRows actualModulus 916 (.badd 914 915) := by core033_kernel_decide
theorem stats916 : actualRows916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows916=5388 := by core033_kernel_decide
theorem rows917 : actualRows917=WordField.canonicalRows actualModulus 917 (.band 916 542) := by core033_kernel_decide
theorem stats917 : actualRows917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows917=5124 := by core033_kernel_decide
theorem rows918 : actualRows918=WordField.canonicalRows actualModulus 918 (.bnot 605) := by core033_kernel_decide
theorem stats918 : actualRows918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows918=6276 := by core033_kernel_decide
theorem rows919 : actualRows919=WordField.canonicalRows actualModulus 919 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats919 : actualRows919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows919=2892 := by core033_kernel_decide
theorem rows920 : actualRows920=WordField.canonicalRows actualModulus 920 (.badd 918 919) := by core033_kernel_decide
theorem stats920 : actualRows920.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows920=5388 := by core033_kernel_decide
theorem rows921 : actualRows921=WordField.canonicalRows actualModulus 921 (.bnot 920) := by core033_kernel_decide
theorem stats921 : actualRows921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows921=6276 := by core033_kernel_decide
theorem rows922 : actualRows922=WordField.canonicalRows actualModulus 922 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats922 : actualRows922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows922=2820 := by core033_kernel_decide
theorem rows923 : actualRows923=WordField.canonicalRows actualModulus 923 (.band 921 922) := by core033_kernel_decide
theorem stats923 : actualRows923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows923=5124 := by core033_kernel_decide
theorem rows924 : actualRows924=WordField.canonicalRows actualModulus 924 (.bxor 917 923) := by core033_kernel_decide
theorem stats924 : actualRows924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows924=7428 := by core033_kernel_decide
theorem rows925 : actualRows925=WordField.canonicalRows actualModulus 925 (.bnot 605) := by core033_kernel_decide
theorem stats925 : actualRows925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows925=6276 := by core033_kernel_decide
theorem rows926 : actualRows926=WordField.canonicalRows actualModulus 926 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats926 : actualRows926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows926=2892 := by core033_kernel_decide
theorem rows927 : actualRows927=WordField.canonicalRows actualModulus 927 (.badd 925 926) := by core033_kernel_decide
theorem stats927 : actualRows927.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows927=5388 := by core033_kernel_decide
def partRows12 : List R1CS.Row := actualRows864++actualRows865++actualRows866++actualRows867++actualRows868++actualRows869++actualRows870++actualRows871++actualRows872++actualRows873++actualRows874++actualRows875++actualRows876++actualRows877++actualRows878++actualRows879++actualRows880++actualRows881++actualRows882++actualRows883++actualRows884++actualRows885++actualRows886++actualRows887++actualRows888++actualRows889++actualRows890++actualRows891++actualRows892++actualRows893++actualRows894++actualRows895++actualRows896++actualRows897++actualRows898++actualRows899++actualRows900++actualRows901++actualRows902++actualRows903++actualRows904++actualRows905++actualRows906++actualRows907++actualRows908++actualRows909++actualRows910++actualRows911++actualRows912++actualRows913++actualRows914++actualRows915++actualRows916++actualRows917++actualRows918++actualRows919++actualRows920++actualRows921++actualRows922++actualRows923++actualRows924++actualRows925++actualRows926++actualRows927
def partOps12 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 863 864,.bnot 865,.literal (BitVec.ofNat 32 0),.band 866 867,.bxor 862 868,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 870 871,.band 872 40,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 874 875,.bnot 876,.literal (BitVec.ofNat 32 0),.band 877 878,.bxor 873 879,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 881 882,.band 883 41,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 885 886,.bnot 887,.literal (BitVec.ofNat 32 0),.band 888 889,.bxor 884 890,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 892 893,.band 894 42,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 896 897,.bnot 898,.literal (BitVec.ofNat 32 0),.band 899 900,.bxor 895 901,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 903 904,.band 905 532,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 907 908,.bnot 909,.literal (BitVec.ofNat 32 0),.band 910 911,.bxor 906 912,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 914 915,.band 916 542,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 918 919,.bnot 920,.literal (BitVec.ofNat 32 0),.band 921 922,.bxor 917 923,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 925 926]
theorem partExact12 : partRows12=WordField.rows actualModulus 864 partOps12 := by
  simp only [partRows12,partOps12,WordField.rows,rows864,rows865,rows866,rows867,rows868,rows869,rows870,rows871,rows872,rows873,rows874,rows875,rows876,rows877,rows878,rows879,rows880,rows881,rows882,rows883,rows884,rows885,rows886,rows887,rows888,rows889,rows890,rows891,rows892,rows893,rows894,rows895,rows896,rows897,rows898,rows899,rows900,rows901,rows902,rows903,rows904,rows905,rows906,rows907,rows908,rows909,rows910,rows911,rows912,rows913,rows914,rows915,rows916,rows917,rows918,rows919,rows920,rows921,rows922,rows923,rows924,rows925,rows926,rows927,List.append_assoc,List.append_nil]
theorem partLength12 : partOps12.length=64 := by decide
theorem partStats12 : partRows12.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows12=323904 := by
  simp only [partRows12,List.length_append,MatrixRowBlocks.rows_weight_append,stats864.1,stats864.2,stats865.1,stats865.2,stats866.1,stats866.2,stats867.1,stats867.2,stats868.1,stats868.2,stats869.1,stats869.2,stats870.1,stats870.2,stats871.1,stats871.2,stats872.1,stats872.2,stats873.1,stats873.2,stats874.1,stats874.2,stats875.1,stats875.2,stats876.1,stats876.2,stats877.1,stats877.2,stats878.1,stats878.2,stats879.1,stats879.2,stats880.1,stats880.2,stats881.1,stats881.2,stats882.1,stats882.2,stats883.1,stats883.2,stats884.1,stats884.2,stats885.1,stats885.2,stats886.1,stats886.2,stats887.1,stats887.2,stats888.1,stats888.2,stats889.1,stats889.2,stats890.1,stats890.2,stats891.1,stats891.2,stats892.1,stats892.2,stats893.1,stats893.2,stats894.1,stats894.2,stats895.1,stats895.2,stats896.1,stats896.2,stats897.1,stats897.2,stats898.1,stats898.2,stats899.1,stats899.2,stats900.1,stats900.2,stats901.1,stats901.2,stats902.1,stats902.2,stats903.1,stats903.2,stats904.1,stats904.2,stats905.1,stats905.2,stats906.1,stats906.2,stats907.1,stats907.2,stats908.1,stats908.2,stats909.1,stats909.2,stats910.1,stats910.2,stats911.1,stats911.2,stats912.1,stats912.2,stats913.1,stats913.2,stats914.1,stats914.2,stats915.1,stats915.2,stats916.1,stats916.2,stats917.1,stats917.2,stats918.1,stats918.2,stats919.1,stats919.2,stats920.1,stats920.2,stats921.1,stats921.2,stats922.1,stats922.2,stats923.1,stats923.2,stats924.1,stats924.2,stats925.1,stats925.2,stats926.1,stats926.2,stats927.1,stats927.2]
  decide
end QuotedPairedPathRoundCheckedRows
