import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData13
import PathRoundDispatchInstructionMatrixData14
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows875 : actualRows875=WordField.canonicalRows actualModulus 875 (.band 873 874) := by core033_kernel_decide
theorem stats875 : actualRows875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows875=5124 := by core033_kernel_decide
theorem rows876 : actualRows876=WordField.canonicalRows actualModulus 876 (.bnot 875) := by core033_kernel_decide
theorem stats876 : actualRows876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows876=6276 := by core033_kernel_decide
theorem rows877 : actualRows877=WordField.canonicalRows actualModulus 877 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats877 : actualRows877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows877=2892 := by core033_kernel_decide
theorem rows878 : actualRows878=WordField.canonicalRows actualModulus 878 (.badd 876 877) := by core033_kernel_decide
theorem stats878 : actualRows878.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows878=5388 := by core033_kernel_decide
theorem rows879 : actualRows879=WordField.canonicalRows actualModulus 879 (.band 878 305) := by core033_kernel_decide
theorem stats879 : actualRows879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows879=5124 := by core033_kernel_decide
theorem rows880 : actualRows880=WordField.canonicalRows actualModulus 880 (.bnot 875) := by core033_kernel_decide
theorem stats880 : actualRows880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows880=6276 := by core033_kernel_decide
theorem rows881 : actualRows881=WordField.canonicalRows actualModulus 881 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats881 : actualRows881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows881=2892 := by core033_kernel_decide
theorem rows882 : actualRows882=WordField.canonicalRows actualModulus 882 (.badd 880 881) := by core033_kernel_decide
theorem stats882 : actualRows882.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows882=5388 := by core033_kernel_decide
theorem rows883 : actualRows883=WordField.canonicalRows actualModulus 883 (.bnot 882) := by core033_kernel_decide
theorem stats883 : actualRows883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows883=6276 := by core033_kernel_decide
theorem rows884 : actualRows884=WordField.canonicalRows actualModulus 884 (.band 883 217) := by core033_kernel_decide
theorem stats884 : actualRows884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows884=5124 := by core033_kernel_decide
theorem rows885 : actualRows885=WordField.canonicalRows actualModulus 885 (.bxor 879 884) := by core033_kernel_decide
theorem stats885 : actualRows885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows885=7428 := by core033_kernel_decide
theorem rows886 : actualRows886=WordField.canonicalRows actualModulus 886 (.bnot 875) := by core033_kernel_decide
theorem stats886 : actualRows886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows886=6276 := by core033_kernel_decide
theorem rows887 : actualRows887=WordField.canonicalRows actualModulus 887 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats887 : actualRows887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows887=2892 := by core033_kernel_decide
theorem rows888 : actualRows888=WordField.canonicalRows actualModulus 888 (.badd 886 887) := by core033_kernel_decide
theorem stats888 : actualRows888.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows888=5388 := by core033_kernel_decide
theorem rows889 : actualRows889=WordField.canonicalRows actualModulus 889 (.band 888 316) := by core033_kernel_decide
theorem stats889 : actualRows889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows889=5124 := by core033_kernel_decide
theorem rows890 : actualRows890=WordField.canonicalRows actualModulus 890 (.bnot 875) := by core033_kernel_decide
theorem stats890 : actualRows890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows890=6276 := by core033_kernel_decide
theorem rows891 : actualRows891=WordField.canonicalRows actualModulus 891 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats891 : actualRows891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows891=2892 := by core033_kernel_decide
theorem rows892 : actualRows892=WordField.canonicalRows actualModulus 892 (.badd 890 891) := by core033_kernel_decide
theorem stats892 : actualRows892.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows892=5388 := by core033_kernel_decide
theorem rows893 : actualRows893=WordField.canonicalRows actualModulus 893 (.bnot 892) := by core033_kernel_decide
theorem stats893 : actualRows893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows893=6276 := by core033_kernel_decide
theorem rows894 : actualRows894=WordField.canonicalRows actualModulus 894 (.band 893 228) := by core033_kernel_decide
theorem stats894 : actualRows894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows894=5124 := by core033_kernel_decide
theorem rows895 : actualRows895=WordField.canonicalRows actualModulus 895 (.bxor 889 894) := by core033_kernel_decide
theorem stats895 : actualRows895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows895=7428 := by core033_kernel_decide
theorem rows896 : actualRows896=WordField.canonicalRows actualModulus 896 (.bnot 875) := by core033_kernel_decide
theorem stats896 : actualRows896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows896=6276 := by core033_kernel_decide
theorem rows897 : actualRows897=WordField.canonicalRows actualModulus 897 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats897 : actualRows897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows897=2892 := by core033_kernel_decide
theorem rows898 : actualRows898=WordField.canonicalRows actualModulus 898 (.badd 896 897) := by core033_kernel_decide
theorem stats898 : actualRows898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows898=5388 := by core033_kernel_decide
theorem rows899 : actualRows899=WordField.canonicalRows actualModulus 899 (.band 898 327) := by core033_kernel_decide
theorem stats899 : actualRows899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows899=5124 := by core033_kernel_decide
theorem rows900 : actualRows900=WordField.canonicalRows actualModulus 900 (.bnot 875) := by core033_kernel_decide
theorem stats900 : actualRows900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows900=6276 := by core033_kernel_decide
theorem rows901 : actualRows901=WordField.canonicalRows actualModulus 901 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats901 : actualRows901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows901=2892 := by core033_kernel_decide
theorem rows902 : actualRows902=WordField.canonicalRows actualModulus 902 (.badd 900 901) := by core033_kernel_decide
theorem stats902 : actualRows902.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows902=5388 := by core033_kernel_decide
theorem rows903 : actualRows903=WordField.canonicalRows actualModulus 903 (.bnot 902) := by core033_kernel_decide
theorem stats903 : actualRows903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows903=6276 := by core033_kernel_decide
theorem rows904 : actualRows904=WordField.canonicalRows actualModulus 904 (.band 903 239) := by core033_kernel_decide
theorem stats904 : actualRows904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows904=5124 := by core033_kernel_decide
theorem rows905 : actualRows905=WordField.canonicalRows actualModulus 905 (.bxor 899 904) := by core033_kernel_decide
theorem stats905 : actualRows905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows905=7428 := by core033_kernel_decide
theorem rows906 : actualRows906=WordField.canonicalRows actualModulus 906 (.bnot 875) := by core033_kernel_decide
theorem stats906 : actualRows906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows906=6276 := by core033_kernel_decide
theorem rows907 : actualRows907=WordField.canonicalRows actualModulus 907 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats907 : actualRows907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows907=2892 := by core033_kernel_decide
theorem rows908 : actualRows908=WordField.canonicalRows actualModulus 908 (.badd 906 907) := by core033_kernel_decide
theorem stats908 : actualRows908.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows908=5388 := by core033_kernel_decide
theorem rows909 : actualRows909=WordField.canonicalRows actualModulus 909 (.band 908 338) := by core033_kernel_decide
theorem stats909 : actualRows909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows909=5124 := by core033_kernel_decide
theorem rows910 : actualRows910=WordField.canonicalRows actualModulus 910 (.bnot 875) := by core033_kernel_decide
theorem stats910 : actualRows910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows910=6276 := by core033_kernel_decide
theorem rows911 : actualRows911=WordField.canonicalRows actualModulus 911 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats911 : actualRows911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows911=2892 := by core033_kernel_decide
theorem rows912 : actualRows912=WordField.canonicalRows actualModulus 912 (.badd 910 911) := by core033_kernel_decide
theorem stats912 : actualRows912.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows912=5388 := by core033_kernel_decide
theorem rows913 : actualRows913=WordField.canonicalRows actualModulus 913 (.bnot 912) := by core033_kernel_decide
theorem stats913 : actualRows913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows913=6276 := by core033_kernel_decide
theorem rows914 : actualRows914=WordField.canonicalRows actualModulus 914 (.band 913 250) := by core033_kernel_decide
theorem stats914 : actualRows914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows914=5124 := by core033_kernel_decide
theorem rows915 : actualRows915=WordField.canonicalRows actualModulus 915 (.bxor 909 914) := by core033_kernel_decide
theorem stats915 : actualRows915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows915=7428 := by core033_kernel_decide
theorem rows916 : actualRows916=WordField.canonicalRows actualModulus 916 (.bnot 875) := by core033_kernel_decide
theorem stats916 : actualRows916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows916=6276 := by core033_kernel_decide
theorem rows917 : actualRows917=WordField.canonicalRows actualModulus 917 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats917 : actualRows917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows917=2892 := by core033_kernel_decide
theorem rows918 : actualRows918=WordField.canonicalRows actualModulus 918 (.badd 916 917) := by core033_kernel_decide
theorem stats918 : actualRows918.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows918=5388 := by core033_kernel_decide
theorem rows919 : actualRows919=WordField.canonicalRows actualModulus 919 (.band 918 349) := by core033_kernel_decide
theorem stats919 : actualRows919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows919=5124 := by core033_kernel_decide
theorem rows920 : actualRows920=WordField.canonicalRows actualModulus 920 (.bnot 875) := by core033_kernel_decide
theorem stats920 : actualRows920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows920=6276 := by core033_kernel_decide
theorem rows921 : actualRows921=WordField.canonicalRows actualModulus 921 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats921 : actualRows921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows921=2892 := by core033_kernel_decide
theorem rows922 : actualRows922=WordField.canonicalRows actualModulus 922 (.badd 920 921) := by core033_kernel_decide
theorem stats922 : actualRows922.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows922=5388 := by core033_kernel_decide
theorem rows923 : actualRows923=WordField.canonicalRows actualModulus 923 (.bnot 922) := by core033_kernel_decide
theorem stats923 : actualRows923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows923=6276 := by core033_kernel_decide
theorem rows924 : actualRows924=WordField.canonicalRows actualModulus 924 (.band 923 261) := by core033_kernel_decide
theorem stats924 : actualRows924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows924=5124 := by core033_kernel_decide
theorem rows925 : actualRows925=WordField.canonicalRows actualModulus 925 (.bxor 919 924) := by core033_kernel_decide
theorem stats925 : actualRows925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows925=7428 := by core033_kernel_decide
theorem rows926 : actualRows926=WordField.canonicalRows actualModulus 926 (.bnot 875) := by core033_kernel_decide
theorem stats926 : actualRows926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows926=6276 := by core033_kernel_decide
theorem rows927 : actualRows927=WordField.canonicalRows actualModulus 927 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats927 : actualRows927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows927=2892 := by core033_kernel_decide
theorem rows928 : actualRows928=WordField.canonicalRows actualModulus 928 (.badd 926 927) := by core033_kernel_decide
theorem stats928 : actualRows928.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows928=5388 := by core033_kernel_decide
theorem rows929 : actualRows929=WordField.canonicalRows actualModulus 929 (.band 928 360) := by core033_kernel_decide
theorem stats929 : actualRows929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows929=5124 := by core033_kernel_decide
theorem rows930 : actualRows930=WordField.canonicalRows actualModulus 930 (.bnot 875) := by core033_kernel_decide
theorem stats930 : actualRows930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows930=6276 := by core033_kernel_decide
theorem rows931 : actualRows931=WordField.canonicalRows actualModulus 931 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats931 : actualRows931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows931=2892 := by core033_kernel_decide
theorem rows932 : actualRows932=WordField.canonicalRows actualModulus 932 (.badd 930 931) := by core033_kernel_decide
theorem stats932 : actualRows932.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows932=5388 := by core033_kernel_decide
theorem rows933 : actualRows933=WordField.canonicalRows actualModulus 933 (.bnot 932) := by core033_kernel_decide
theorem stats933 : actualRows933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows933=6276 := by core033_kernel_decide
theorem rows934 : actualRows934=WordField.canonicalRows actualModulus 934 (.band 933 272) := by core033_kernel_decide
theorem stats934 : actualRows934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows934=5124 := by core033_kernel_decide
theorem rows935 : actualRows935=WordField.canonicalRows actualModulus 935 (.bxor 929 934) := by core033_kernel_decide
theorem stats935 : actualRows935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows935=7428 := by core033_kernel_decide
theorem rows936 : actualRows936=WordField.canonicalRows actualModulus 936 (.bnot 875) := by core033_kernel_decide
theorem stats936 : actualRows936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows936=6276 := by core033_kernel_decide
theorem rows937 : actualRows937=WordField.canonicalRows actualModulus 937 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats937 : actualRows937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows937=2892 := by core033_kernel_decide
theorem rows938 : actualRows938=WordField.canonicalRows actualModulus 938 (.badd 936 937) := by core033_kernel_decide
theorem stats938 : actualRows938.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows938=5388 := by core033_kernel_decide
def partRows13 : List R1CS.Row := actualRows875++actualRows876++actualRows877++actualRows878++actualRows879++actualRows880++actualRows881++actualRows882++actualRows883++actualRows884++actualRows885++actualRows886++actualRows887++actualRows888++actualRows889++actualRows890++actualRows891++actualRows892++actualRows893++actualRows894++actualRows895++actualRows896++actualRows897++actualRows898++actualRows899++actualRows900++actualRows901++actualRows902++actualRows903++actualRows904++actualRows905++actualRows906++actualRows907++actualRows908++actualRows909++actualRows910++actualRows911++actualRows912++actualRows913++actualRows914++actualRows915++actualRows916++actualRows917++actualRows918++actualRows919++actualRows920++actualRows921++actualRows922++actualRows923++actualRows924++actualRows925++actualRows926++actualRows927++actualRows928++actualRows929++actualRows930++actualRows931++actualRows932++actualRows933++actualRows934++actualRows935++actualRows936++actualRows937++actualRows938
def partOps13 : List WordIR.Op := [.band 873 874,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 876 877,.band 878 305,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 880 881,.bnot 882,.band 883 217,.bxor 879 884,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 886 887,.band 888 316,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 890 891,.bnot 892,.band 893 228,.bxor 889 894,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 896 897,.band 898 327,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 900 901,.bnot 902,.band 903 239,.bxor 899 904,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 906 907,.band 908 338,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 910 911,.bnot 912,.band 913 250,.bxor 909 914,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 916 917,.band 918 349,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 920 921,.bnot 922,.band 923 261,.bxor 919 924,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 926 927,.band 928 360,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 930 931,.bnot 932,.band 933 272,.bxor 929 934,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 936 937]
theorem partExact13 : partRows13=WordField.rows actualModulus 875 partOps13 := by
  simp only [partRows13,partOps13,WordField.rows,rows875,rows876,rows877,rows878,rows879,rows880,rows881,rows882,rows883,rows884,rows885,rows886,rows887,rows888,rows889,rows890,rows891,rows892,rows893,rows894,rows895,rows896,rows897,rows898,rows899,rows900,rows901,rows902,rows903,rows904,rows905,rows906,rows907,rows908,rows909,rows910,rows911,rows912,rows913,rows914,rows915,rows916,rows917,rows918,rows919,rows920,rows921,rows922,rows923,rows924,rows925,rows926,rows927,rows928,rows929,rows930,rows931,rows932,rows933,rows934,rows935,rows936,rows937,rows938,List.append_assoc,List.append_nil]
theorem partLength13 : partOps13.length=64 := by decide
theorem partStats13 : partRows13.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows13=338064 := by
  simp only [partRows13,List.length_append,MatrixRowBlocks.rows_weight_append,stats875.1,stats875.2,stats876.1,stats876.2,stats877.1,stats877.2,stats878.1,stats878.2,stats879.1,stats879.2,stats880.1,stats880.2,stats881.1,stats881.2,stats882.1,stats882.2,stats883.1,stats883.2,stats884.1,stats884.2,stats885.1,stats885.2,stats886.1,stats886.2,stats887.1,stats887.2,stats888.1,stats888.2,stats889.1,stats889.2,stats890.1,stats890.2,stats891.1,stats891.2,stats892.1,stats892.2,stats893.1,stats893.2,stats894.1,stats894.2,stats895.1,stats895.2,stats896.1,stats896.2,stats897.1,stats897.2,stats898.1,stats898.2,stats899.1,stats899.2,stats900.1,stats900.2,stats901.1,stats901.2,stats902.1,stats902.2,stats903.1,stats903.2,stats904.1,stats904.2,stats905.1,stats905.2,stats906.1,stats906.2,stats907.1,stats907.2,stats908.1,stats908.2,stats909.1,stats909.2,stats910.1,stats910.2,stats911.1,stats911.2,stats912.1,stats912.2,stats913.1,stats913.2,stats914.1,stats914.2,stats915.1,stats915.2,stats916.1,stats916.2,stats917.1,stats917.2,stats918.1,stats918.2,stats919.1,stats919.2,stats920.1,stats920.2,stats921.1,stats921.2,stats922.1,stats922.2,stats923.1,stats923.2,stats924.1,stats924.2,stats925.1,stats925.2,stats926.1,stats926.2,stats927.1,stats927.2,stats928.1,stats928.2,stats929.1,stats929.2,stats930.1,stats930.2,stats931.1,stats931.2,stats932.1,stats932.2,stats933.1,stats933.2,stats934.1,stats934.2,stats935.1,stats935.2,stats936.1,stats936.2,stats937.1,stats937.2,stats938.1,stats938.2]
  decide
end PathRoundDispatchCheckedRows
