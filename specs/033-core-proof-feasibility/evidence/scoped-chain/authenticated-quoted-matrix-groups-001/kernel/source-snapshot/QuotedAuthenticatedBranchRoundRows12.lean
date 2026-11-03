import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData13
import AuthenticatedBranchRoundInstructionMatrixData14
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows886 : actualRows886=WordField.canonicalRows actualModulus 886 (.badd 884 885) := by core033_kernel_decide
theorem stats886 : actualRows886.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows886=5388 := by core033_kernel_decide
theorem rows887 : actualRows887=WordField.canonicalRows actualModulus 887 (.band 886 100) := by core033_kernel_decide
theorem stats887 : actualRows887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows887=5124 := by core033_kernel_decide
theorem rows888 : actualRows888=WordField.canonicalRows actualModulus 888 (.bnot 182) := by core033_kernel_decide
theorem stats888 : actualRows888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows888=6276 := by core033_kernel_decide
theorem rows889 : actualRows889=WordField.canonicalRows actualModulus 889 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats889 : actualRows889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows889=2892 := by core033_kernel_decide
theorem rows890 : actualRows890=WordField.canonicalRows actualModulus 890 (.badd 888 889) := by core033_kernel_decide
theorem stats890 : actualRows890.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows890=5388 := by core033_kernel_decide
theorem rows891 : actualRows891=WordField.canonicalRows actualModulus 891 (.bnot 890) := by core033_kernel_decide
theorem stats891 : actualRows891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows891=6276 := by core033_kernel_decide
theorem rows892 : actualRows892=WordField.canonicalRows actualModulus 892 (.bnot 247) := by core033_kernel_decide
theorem stats892 : actualRows892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows892=6276 := by core033_kernel_decide
theorem rows893 : actualRows893=WordField.canonicalRows actualModulus 893 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats893 : actualRows893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows893=2892 := by core033_kernel_decide
theorem rows894 : actualRows894=WordField.canonicalRows actualModulus 894 (.badd 892 893) := by core033_kernel_decide
theorem stats894 : actualRows894.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows894=5388 := by core033_kernel_decide
theorem rows895 : actualRows895=WordField.canonicalRows actualModulus 895 (.band 894 27) := by core033_kernel_decide
theorem stats895 : actualRows895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows895=5124 := by core033_kernel_decide
theorem rows896 : actualRows896=WordField.canonicalRows actualModulus 896 (.bnot 247) := by core033_kernel_decide
theorem stats896 : actualRows896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows896=6276 := by core033_kernel_decide
theorem rows897 : actualRows897=WordField.canonicalRows actualModulus 897 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats897 : actualRows897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows897=2892 := by core033_kernel_decide
theorem rows898 : actualRows898=WordField.canonicalRows actualModulus 898 (.badd 896 897) := by core033_kernel_decide
theorem stats898 : actualRows898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows898=5388 := by core033_kernel_decide
theorem rows899 : actualRows899=WordField.canonicalRows actualModulus 899 (.bnot 898) := by core033_kernel_decide
theorem stats899 : actualRows899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows899=6276 := by core033_kernel_decide
theorem rows900 : actualRows900=WordField.canonicalRows actualModulus 900 (.band 899 15) := by core033_kernel_decide
theorem stats900 : actualRows900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows900=5124 := by core033_kernel_decide
theorem rows901 : actualRows901=WordField.canonicalRows actualModulus 901 (.bxor 895 900) := by core033_kernel_decide
theorem stats901 : actualRows901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows901=7428 := by core033_kernel_decide
theorem rows902 : actualRows902=WordField.canonicalRows actualModulus 902 (.band 891 901) := by core033_kernel_decide
theorem stats902 : actualRows902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows902=5124 := by core033_kernel_decide
theorem rows903 : actualRows903=WordField.canonicalRows actualModulus 903 (.bxor 887 902) := by core033_kernel_decide
theorem stats903 : actualRows903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows903=7428 := by core033_kernel_decide
theorem rows904 : actualRows904=WordField.canonicalRows actualModulus 904 (.bnot 182) := by core033_kernel_decide
theorem stats904 : actualRows904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows904=6276 := by core033_kernel_decide
theorem rows905 : actualRows905=WordField.canonicalRows actualModulus 905 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats905 : actualRows905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows905=2892 := by core033_kernel_decide
theorem rows906 : actualRows906=WordField.canonicalRows actualModulus 906 (.badd 904 905) := by core033_kernel_decide
theorem stats906 : actualRows906.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows906=5388 := by core033_kernel_decide
theorem rows907 : actualRows907=WordField.canonicalRows actualModulus 907 (.band 906 101) := by core033_kernel_decide
theorem stats907 : actualRows907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows907=5124 := by core033_kernel_decide
theorem rows908 : actualRows908=WordField.canonicalRows actualModulus 908 (.bnot 182) := by core033_kernel_decide
theorem stats908 : actualRows908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows908=6276 := by core033_kernel_decide
theorem rows909 : actualRows909=WordField.canonicalRows actualModulus 909 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats909 : actualRows909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows909=2892 := by core033_kernel_decide
theorem rows910 : actualRows910=WordField.canonicalRows actualModulus 910 (.badd 908 909) := by core033_kernel_decide
theorem stats910 : actualRows910.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows910=5388 := by core033_kernel_decide
theorem rows911 : actualRows911=WordField.canonicalRows actualModulus 911 (.bnot 910) := by core033_kernel_decide
theorem stats911 : actualRows911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows911=6276 := by core033_kernel_decide
theorem rows912 : actualRows912=WordField.canonicalRows actualModulus 912 (.bnot 247) := by core033_kernel_decide
theorem stats912 : actualRows912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows912=6276 := by core033_kernel_decide
theorem rows913 : actualRows913=WordField.canonicalRows actualModulus 913 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats913 : actualRows913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows913=2892 := by core033_kernel_decide
theorem rows914 : actualRows914=WordField.canonicalRows actualModulus 914 (.badd 912 913) := by core033_kernel_decide
theorem stats914 : actualRows914.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows914=5388 := by core033_kernel_decide
theorem rows915 : actualRows915=WordField.canonicalRows actualModulus 915 (.band 914 28) := by core033_kernel_decide
theorem stats915 : actualRows915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows915=5124 := by core033_kernel_decide
theorem rows916 : actualRows916=WordField.canonicalRows actualModulus 916 (.bnot 247) := by core033_kernel_decide
theorem stats916 : actualRows916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows916=6276 := by core033_kernel_decide
theorem rows917 : actualRows917=WordField.canonicalRows actualModulus 917 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats917 : actualRows917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows917=2892 := by core033_kernel_decide
theorem rows918 : actualRows918=WordField.canonicalRows actualModulus 918 (.badd 916 917) := by core033_kernel_decide
theorem stats918 : actualRows918.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows918=5388 := by core033_kernel_decide
theorem rows919 : actualRows919=WordField.canonicalRows actualModulus 919 (.bnot 918) := by core033_kernel_decide
theorem stats919 : actualRows919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows919=6276 := by core033_kernel_decide
theorem rows920 : actualRows920=WordField.canonicalRows actualModulus 920 (.band 919 16) := by core033_kernel_decide
theorem stats920 : actualRows920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows920=5124 := by core033_kernel_decide
theorem rows921 : actualRows921=WordField.canonicalRows actualModulus 921 (.bxor 915 920) := by core033_kernel_decide
theorem stats921 : actualRows921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows921=7428 := by core033_kernel_decide
theorem rows922 : actualRows922=WordField.canonicalRows actualModulus 922 (.band 911 921) := by core033_kernel_decide
theorem stats922 : actualRows922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows922=5124 := by core033_kernel_decide
theorem rows923 : actualRows923=WordField.canonicalRows actualModulus 923 (.bxor 907 922) := by core033_kernel_decide
theorem stats923 : actualRows923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows923=7428 := by core033_kernel_decide
theorem rows924 : actualRows924=WordField.canonicalRows actualModulus 924 (.bnot 182) := by core033_kernel_decide
theorem stats924 : actualRows924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows924=6276 := by core033_kernel_decide
theorem rows925 : actualRows925=WordField.canonicalRows actualModulus 925 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats925 : actualRows925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows925=2892 := by core033_kernel_decide
theorem rows926 : actualRows926=WordField.canonicalRows actualModulus 926 (.badd 924 925) := by core033_kernel_decide
theorem stats926 : actualRows926.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows926=5388 := by core033_kernel_decide
theorem rows927 : actualRows927=WordField.canonicalRows actualModulus 927 (.band 926 102) := by core033_kernel_decide
theorem stats927 : actualRows927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows927=5124 := by core033_kernel_decide
theorem rows928 : actualRows928=WordField.canonicalRows actualModulus 928 (.bnot 182) := by core033_kernel_decide
theorem stats928 : actualRows928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows928=6276 := by core033_kernel_decide
theorem rows929 : actualRows929=WordField.canonicalRows actualModulus 929 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats929 : actualRows929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows929=2892 := by core033_kernel_decide
theorem rows930 : actualRows930=WordField.canonicalRows actualModulus 930 (.badd 928 929) := by core033_kernel_decide
theorem stats930 : actualRows930.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows930=5388 := by core033_kernel_decide
theorem rows931 : actualRows931=WordField.canonicalRows actualModulus 931 (.bnot 930) := by core033_kernel_decide
theorem stats931 : actualRows931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows931=6276 := by core033_kernel_decide
theorem rows932 : actualRows932=WordField.canonicalRows actualModulus 932 (.bnot 247) := by core033_kernel_decide
theorem stats932 : actualRows932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows932=6276 := by core033_kernel_decide
theorem rows933 : actualRows933=WordField.canonicalRows actualModulus 933 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats933 : actualRows933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows933=2892 := by core033_kernel_decide
theorem rows934 : actualRows934=WordField.canonicalRows actualModulus 934 (.badd 932 933) := by core033_kernel_decide
theorem stats934 : actualRows934.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows934=5388 := by core033_kernel_decide
theorem rows935 : actualRows935=WordField.canonicalRows actualModulus 935 (.band 934 29) := by core033_kernel_decide
theorem stats935 : actualRows935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows935=5124 := by core033_kernel_decide
theorem rows936 : actualRows936=WordField.canonicalRows actualModulus 936 (.bnot 247) := by core033_kernel_decide
theorem stats936 : actualRows936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows936=6276 := by core033_kernel_decide
theorem rows937 : actualRows937=WordField.canonicalRows actualModulus 937 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats937 : actualRows937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows937=2892 := by core033_kernel_decide
theorem rows938 : actualRows938=WordField.canonicalRows actualModulus 938 (.badd 936 937) := by core033_kernel_decide
theorem stats938 : actualRows938.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows938=5388 := by core033_kernel_decide
theorem rows939 : actualRows939=WordField.canonicalRows actualModulus 939 (.bnot 938) := by core033_kernel_decide
theorem stats939 : actualRows939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows939=6276 := by core033_kernel_decide
theorem rows940 : actualRows940=WordField.canonicalRows actualModulus 940 (.band 939 17) := by core033_kernel_decide
theorem stats940 : actualRows940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows940=5124 := by core033_kernel_decide
theorem rows941 : actualRows941=WordField.canonicalRows actualModulus 941 (.bxor 935 940) := by core033_kernel_decide
theorem stats941 : actualRows941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows941=7428 := by core033_kernel_decide
theorem rows942 : actualRows942=WordField.canonicalRows actualModulus 942 (.band 931 941) := by core033_kernel_decide
theorem stats942 : actualRows942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows942=5124 := by core033_kernel_decide
theorem rows943 : actualRows943=WordField.canonicalRows actualModulus 943 (.bxor 927 942) := by core033_kernel_decide
theorem stats943 : actualRows943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows943=7428 := by core033_kernel_decide
theorem rows944 : actualRows944=WordField.canonicalRows actualModulus 944 (.bnot 182) := by core033_kernel_decide
theorem stats944 : actualRows944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows944=6276 := by core033_kernel_decide
theorem rows945 : actualRows945=WordField.canonicalRows actualModulus 945 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats945 : actualRows945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows945=2892 := by core033_kernel_decide
theorem rows946 : actualRows946=WordField.canonicalRows actualModulus 946 (.badd 944 945) := by core033_kernel_decide
theorem stats946 : actualRows946.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows946=5388 := by core033_kernel_decide
theorem rows947 : actualRows947=WordField.canonicalRows actualModulus 947 (.band 946 103) := by core033_kernel_decide
theorem stats947 : actualRows947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows947=5124 := by core033_kernel_decide
theorem rows948 : actualRows948=WordField.canonicalRows actualModulus 948 (.bnot 182) := by core033_kernel_decide
theorem stats948 : actualRows948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows948=6276 := by core033_kernel_decide
theorem rows949 : actualRows949=WordField.canonicalRows actualModulus 949 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats949 : actualRows949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows949=2892 := by core033_kernel_decide
def partRows12 : List R1CS.Row := actualRows886++actualRows887++actualRows888++actualRows889++actualRows890++actualRows891++actualRows892++actualRows893++actualRows894++actualRows895++actualRows896++actualRows897++actualRows898++actualRows899++actualRows900++actualRows901++actualRows902++actualRows903++actualRows904++actualRows905++actualRows906++actualRows907++actualRows908++actualRows909++actualRows910++actualRows911++actualRows912++actualRows913++actualRows914++actualRows915++actualRows916++actualRows917++actualRows918++actualRows919++actualRows920++actualRows921++actualRows922++actualRows923++actualRows924++actualRows925++actualRows926++actualRows927++actualRows928++actualRows929++actualRows930++actualRows931++actualRows932++actualRows933++actualRows934++actualRows935++actualRows936++actualRows937++actualRows938++actualRows939++actualRows940++actualRows941++actualRows942++actualRows943++actualRows944++actualRows945++actualRows946++actualRows947++actualRows948++actualRows949
def partOps12 : List WordIR.Op := [.badd 884 885,.band 886 100,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 888 889,.bnot 890,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 892 893,.band 894 27,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 896 897,.bnot 898,.band 899 15,.bxor 895 900,.band 891 901,.bxor 887 902,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 904 905,.band 906 101,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 908 909,.bnot 910,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 912 913,.band 914 28,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 916 917,.bnot 918,.band 919 16,.bxor 915 920,.band 911 921,.bxor 907 922,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 924 925,.band 926 102,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 928 929,.bnot 930,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 932 933,.band 934 29,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 936 937,.bnot 938,.band 939 17,.bxor 935 940,.band 931 941,.bxor 927 942,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 944 945,.band 946 103,.bnot 182,.literal (BitVec.ofNat 32 1)]
theorem partExact12 : partRows12=WordField.rows actualModulus 886 partOps12 := by
  simp only [partRows12,partOps12,WordField.rows,rows886,rows887,rows888,rows889,rows890,rows891,rows892,rows893,rows894,rows895,rows896,rows897,rows898,rows899,rows900,rows901,rows902,rows903,rows904,rows905,rows906,rows907,rows908,rows909,rows910,rows911,rows912,rows913,rows914,rows915,rows916,rows917,rows918,rows919,rows920,rows921,rows922,rows923,rows924,rows925,rows926,rows927,rows928,rows929,rows930,rows931,rows932,rows933,rows934,rows935,rows936,rows937,rows938,rows939,rows940,rows941,rows942,rows943,rows944,rows945,rows946,rows947,rows948,rows949,List.append_assoc,List.append_nil]
theorem partLength12 : partOps12.length=64 := by decide
theorem partStats12 : partRows12.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows12=338064 := by
  simp only [partRows12,List.length_append,MatrixRowBlocks.rows_weight_append,stats886.1,stats886.2,stats887.1,stats887.2,stats888.1,stats888.2,stats889.1,stats889.2,stats890.1,stats890.2,stats891.1,stats891.2,stats892.1,stats892.2,stats893.1,stats893.2,stats894.1,stats894.2,stats895.1,stats895.2,stats896.1,stats896.2,stats897.1,stats897.2,stats898.1,stats898.2,stats899.1,stats899.2,stats900.1,stats900.2,stats901.1,stats901.2,stats902.1,stats902.2,stats903.1,stats903.2,stats904.1,stats904.2,stats905.1,stats905.2,stats906.1,stats906.2,stats907.1,stats907.2,stats908.1,stats908.2,stats909.1,stats909.2,stats910.1,stats910.2,stats911.1,stats911.2,stats912.1,stats912.2,stats913.1,stats913.2,stats914.1,stats914.2,stats915.1,stats915.2,stats916.1,stats916.2,stats917.1,stats917.2,stats918.1,stats918.2,stats919.1,stats919.2,stats920.1,stats920.2,stats921.1,stats921.2,stats922.1,stats922.2,stats923.1,stats923.2,stats924.1,stats924.2,stats925.1,stats925.2,stats926.1,stats926.2,stats927.1,stats927.2,stats928.1,stats928.2,stats929.1,stats929.2,stats930.1,stats930.2,stats931.1,stats931.2,stats932.1,stats932.2,stats933.1,stats933.2,stats934.1,stats934.2,stats935.1,stats935.2,stats936.1,stats936.2,stats937.1,stats937.2,stats938.1,stats938.2,stats939.1,stats939.2,stats940.1,stats940.2,stats941.1,stats941.2,stats942.1,stats942.2,stats943.1,stats943.2,stats944.1,stats944.2,stats945.1,stats945.2,stats946.1,stats946.2,stats947.1,stats947.2,stats948.1,stats948.2,stats949.1,stats949.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
