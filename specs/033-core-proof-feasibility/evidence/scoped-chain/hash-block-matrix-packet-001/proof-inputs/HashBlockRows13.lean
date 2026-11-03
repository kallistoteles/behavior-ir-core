import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData14
import HashBlockInstructionMatrixData15
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows904 : actualRows904=WordField.canonicalRows actualModulus 904 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats904 : actualRows904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows904=2892 := by core033_kernel_decide
theorem rows905 : actualRows905=WordField.canonicalRows actualModulus 905 (.bxor 903 904) := by core033_kernel_decide
theorem stats905 : actualRows905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows905=7428 := by core033_kernel_decide
theorem rows906 : actualRows906=WordField.canonicalRows actualModulus 906 (.shr 49 8) := by core033_kernel_decide
theorem stats906 : actualRows906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows906=4548 := by core033_kernel_decide
theorem rows907 : actualRows907=WordField.canonicalRows actualModulus 907 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats907 : actualRows907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows907=2820 := by core033_kernel_decide
theorem rows908 : actualRows908=WordField.canonicalRows actualModulus 908 (.bnot 907) := by core033_kernel_decide
theorem stats908 : actualRows908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows908=6276 := by core033_kernel_decide
theorem rows909 : actualRows909=WordField.canonicalRows actualModulus 909 (.band 906 908) := by core033_kernel_decide
theorem stats909 : actualRows909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows909=5124 := by core033_kernel_decide
theorem rows910 : actualRows910=WordField.canonicalRows actualModulus 910 (.shr 49 8) := by core033_kernel_decide
theorem stats910 : actualRows910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows910=4548 := by core033_kernel_decide
theorem rows911 : actualRows911=WordField.canonicalRows actualModulus 911 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats911 : actualRows911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows911=2820 := by core033_kernel_decide
theorem rows912 : actualRows912=WordField.canonicalRows actualModulus 912 (.bnot 911) := by core033_kernel_decide
theorem stats912 : actualRows912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows912=6276 := by core033_kernel_decide
theorem rows913 : actualRows913=WordField.canonicalRows actualModulus 913 (.bxor 910 912) := by core033_kernel_decide
theorem stats913 : actualRows913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows913=7428 := by core033_kernel_decide
theorem rows914 : actualRows914=WordField.canonicalRows actualModulus 914 (.shr 49 8) := by core033_kernel_decide
theorem stats914 : actualRows914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows914=4548 := by core033_kernel_decide
theorem rows915 : actualRows915=WordField.canonicalRows actualModulus 915 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats915 : actualRows915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows915=2820 := by core033_kernel_decide
theorem rows916 : actualRows916=WordField.canonicalRows actualModulus 916 (.bnot 915) := by core033_kernel_decide
theorem stats916 : actualRows916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows916=6276 := by core033_kernel_decide
theorem rows917 : actualRows917=WordField.canonicalRows actualModulus 917 (.badd 914 916) := by core033_kernel_decide
theorem stats917 : actualRows917.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows917=5388 := by core033_kernel_decide
theorem rows918 : actualRows918=WordField.canonicalRows actualModulus 918 (.bnot 917) := by core033_kernel_decide
theorem stats918 : actualRows918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows918=6276 := by core033_kernel_decide
theorem rows919 : actualRows919=WordField.canonicalRows actualModulus 919 (.band 913 918) := by core033_kernel_decide
theorem stats919 : actualRows919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows919=5124 := by core033_kernel_decide
theorem rows920 : actualRows920=WordField.canonicalRows actualModulus 920 (.bxor 909 919) := by core033_kernel_decide
theorem stats920 : actualRows920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows920=7428 := by core033_kernel_decide
theorem rows921 : actualRows921=WordField.canonicalRows actualModulus 921 (.shr 920 31) := by core033_kernel_decide
theorem stats921 : actualRows921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows921=2892 := by core033_kernel_decide
theorem rows922 : actualRows922=WordField.canonicalRows actualModulus 922 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats922 : actualRows922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows922=2892 := by core033_kernel_decide
theorem rows923 : actualRows923=WordField.canonicalRows actualModulus 923 (.bxor 921 922) := by core033_kernel_decide
theorem stats923 : actualRows923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows923=7428 := by core033_kernel_decide
theorem rows924 : actualRows924=WordField.canonicalRows actualModulus 924 (.shr 50 8) := by core033_kernel_decide
theorem stats924 : actualRows924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows924=4548 := by core033_kernel_decide
theorem rows925 : actualRows925=WordField.canonicalRows actualModulus 925 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats925 : actualRows925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows925=2820 := by core033_kernel_decide
theorem rows926 : actualRows926=WordField.canonicalRows actualModulus 926 (.bnot 925) := by core033_kernel_decide
theorem stats926 : actualRows926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows926=6276 := by core033_kernel_decide
theorem rows927 : actualRows927=WordField.canonicalRows actualModulus 927 (.band 924 926) := by core033_kernel_decide
theorem stats927 : actualRows927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows927=5124 := by core033_kernel_decide
theorem rows928 : actualRows928=WordField.canonicalRows actualModulus 928 (.shr 50 8) := by core033_kernel_decide
theorem stats928 : actualRows928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows928=4548 := by core033_kernel_decide
theorem rows929 : actualRows929=WordField.canonicalRows actualModulus 929 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats929 : actualRows929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows929=2820 := by core033_kernel_decide
theorem rows930 : actualRows930=WordField.canonicalRows actualModulus 930 (.bnot 929) := by core033_kernel_decide
theorem stats930 : actualRows930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows930=6276 := by core033_kernel_decide
theorem rows931 : actualRows931=WordField.canonicalRows actualModulus 931 (.bxor 928 930) := by core033_kernel_decide
theorem stats931 : actualRows931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows931=7428 := by core033_kernel_decide
theorem rows932 : actualRows932=WordField.canonicalRows actualModulus 932 (.shr 50 8) := by core033_kernel_decide
theorem stats932 : actualRows932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows932=4548 := by core033_kernel_decide
theorem rows933 : actualRows933=WordField.canonicalRows actualModulus 933 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats933 : actualRows933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows933=2820 := by core033_kernel_decide
theorem rows934 : actualRows934=WordField.canonicalRows actualModulus 934 (.bnot 933) := by core033_kernel_decide
theorem stats934 : actualRows934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows934=6276 := by core033_kernel_decide
theorem rows935 : actualRows935=WordField.canonicalRows actualModulus 935 (.badd 932 934) := by core033_kernel_decide
theorem stats935 : actualRows935.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows935=5388 := by core033_kernel_decide
theorem rows936 : actualRows936=WordField.canonicalRows actualModulus 936 (.bnot 935) := by core033_kernel_decide
theorem stats936 : actualRows936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows936=6276 := by core033_kernel_decide
theorem rows937 : actualRows937=WordField.canonicalRows actualModulus 937 (.band 931 936) := by core033_kernel_decide
theorem stats937 : actualRows937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows937=5124 := by core033_kernel_decide
theorem rows938 : actualRows938=WordField.canonicalRows actualModulus 938 (.bxor 927 937) := by core033_kernel_decide
theorem stats938 : actualRows938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows938=7428 := by core033_kernel_decide
theorem rows939 : actualRows939=WordField.canonicalRows actualModulus 939 (.shr 938 31) := by core033_kernel_decide
theorem stats939 : actualRows939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows939=2892 := by core033_kernel_decide
theorem rows940 : actualRows940=WordField.canonicalRows actualModulus 940 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats940 : actualRows940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows940=2892 := by core033_kernel_decide
theorem rows941 : actualRows941=WordField.canonicalRows actualModulus 941 (.bxor 939 940) := by core033_kernel_decide
theorem stats941 : actualRows941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows941=7428 := by core033_kernel_decide
theorem rows942 : actualRows942=WordField.canonicalRows actualModulus 942 (.shr 51 8) := by core033_kernel_decide
theorem stats942 : actualRows942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows942=4548 := by core033_kernel_decide
theorem rows943 : actualRows943=WordField.canonicalRows actualModulus 943 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats943 : actualRows943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows943=2820 := by core033_kernel_decide
theorem rows944 : actualRows944=WordField.canonicalRows actualModulus 944 (.bnot 943) := by core033_kernel_decide
theorem stats944 : actualRows944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows944=6276 := by core033_kernel_decide
theorem rows945 : actualRows945=WordField.canonicalRows actualModulus 945 (.band 942 944) := by core033_kernel_decide
theorem stats945 : actualRows945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows945=5124 := by core033_kernel_decide
theorem rows946 : actualRows946=WordField.canonicalRows actualModulus 946 (.shr 51 8) := by core033_kernel_decide
theorem stats946 : actualRows946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows946=4548 := by core033_kernel_decide
theorem rows947 : actualRows947=WordField.canonicalRows actualModulus 947 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats947 : actualRows947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows947=2820 := by core033_kernel_decide
theorem rows948 : actualRows948=WordField.canonicalRows actualModulus 948 (.bnot 947) := by core033_kernel_decide
theorem stats948 : actualRows948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows948=6276 := by core033_kernel_decide
theorem rows949 : actualRows949=WordField.canonicalRows actualModulus 949 (.bxor 946 948) := by core033_kernel_decide
theorem stats949 : actualRows949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows949=7428 := by core033_kernel_decide
theorem rows950 : actualRows950=WordField.canonicalRows actualModulus 950 (.shr 51 8) := by core033_kernel_decide
theorem stats950 : actualRows950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows950=4548 := by core033_kernel_decide
theorem rows951 : actualRows951=WordField.canonicalRows actualModulus 951 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats951 : actualRows951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows951=2820 := by core033_kernel_decide
theorem rows952 : actualRows952=WordField.canonicalRows actualModulus 952 (.bnot 951) := by core033_kernel_decide
theorem stats952 : actualRows952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows952=6276 := by core033_kernel_decide
theorem rows953 : actualRows953=WordField.canonicalRows actualModulus 953 (.badd 950 952) := by core033_kernel_decide
theorem stats953 : actualRows953.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows953=5388 := by core033_kernel_decide
theorem rows954 : actualRows954=WordField.canonicalRows actualModulus 954 (.bnot 953) := by core033_kernel_decide
theorem stats954 : actualRows954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows954=6276 := by core033_kernel_decide
theorem rows955 : actualRows955=WordField.canonicalRows actualModulus 955 (.band 949 954) := by core033_kernel_decide
theorem stats955 : actualRows955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows955=5124 := by core033_kernel_decide
theorem rows956 : actualRows956=WordField.canonicalRows actualModulus 956 (.bxor 945 955) := by core033_kernel_decide
theorem stats956 : actualRows956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows956=7428 := by core033_kernel_decide
theorem rows957 : actualRows957=WordField.canonicalRows actualModulus 957 (.shr 956 31) := by core033_kernel_decide
theorem stats957 : actualRows957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows957=2892 := by core033_kernel_decide
theorem rows958 : actualRows958=WordField.canonicalRows actualModulus 958 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats958 : actualRows958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows958=2892 := by core033_kernel_decide
theorem rows959 : actualRows959=WordField.canonicalRows actualModulus 959 (.bxor 957 958) := by core033_kernel_decide
theorem stats959 : actualRows959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows959=7428 := by core033_kernel_decide
theorem rows960 : actualRows960=WordField.canonicalRows actualModulus 960 (.shr 52 8) := by core033_kernel_decide
theorem stats960 : actualRows960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows960=4548 := by core033_kernel_decide
theorem rows961 : actualRows961=WordField.canonicalRows actualModulus 961 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats961 : actualRows961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows961=2820 := by core033_kernel_decide
theorem rows962 : actualRows962=WordField.canonicalRows actualModulus 962 (.bnot 961) := by core033_kernel_decide
theorem stats962 : actualRows962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows962=6276 := by core033_kernel_decide
theorem rows963 : actualRows963=WordField.canonicalRows actualModulus 963 (.band 960 962) := by core033_kernel_decide
theorem stats963 : actualRows963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows963=5124 := by core033_kernel_decide
theorem rows964 : actualRows964=WordField.canonicalRows actualModulus 964 (.shr 52 8) := by core033_kernel_decide
theorem stats964 : actualRows964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows964=4548 := by core033_kernel_decide
theorem rows965 : actualRows965=WordField.canonicalRows actualModulus 965 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats965 : actualRows965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows965=2820 := by core033_kernel_decide
theorem rows966 : actualRows966=WordField.canonicalRows actualModulus 966 (.bnot 965) := by core033_kernel_decide
theorem stats966 : actualRows966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows966=6276 := by core033_kernel_decide
theorem rows967 : actualRows967=WordField.canonicalRows actualModulus 967 (.bxor 964 966) := by core033_kernel_decide
theorem stats967 : actualRows967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows967=7428 := by core033_kernel_decide
def partRows13 : List R1CS.Row := actualRows904++actualRows905++actualRows906++actualRows907++actualRows908++actualRows909++actualRows910++actualRows911++actualRows912++actualRows913++actualRows914++actualRows915++actualRows916++actualRows917++actualRows918++actualRows919++actualRows920++actualRows921++actualRows922++actualRows923++actualRows924++actualRows925++actualRows926++actualRows927++actualRows928++actualRows929++actualRows930++actualRows931++actualRows932++actualRows933++actualRows934++actualRows935++actualRows936++actualRows937++actualRows938++actualRows939++actualRows940++actualRows941++actualRows942++actualRows943++actualRows944++actualRows945++actualRows946++actualRows947++actualRows948++actualRows949++actualRows950++actualRows951++actualRows952++actualRows953++actualRows954++actualRows955++actualRows956++actualRows957++actualRows958++actualRows959++actualRows960++actualRows961++actualRows962++actualRows963++actualRows964++actualRows965++actualRows966++actualRows967
def partOps13 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 903 904,.shr 49 8,.literal (BitVec.ofNat 32 0),.bnot 907,.band 906 908,.shr 49 8,.literal (BitVec.ofNat 32 0),.bnot 911,.bxor 910 912,.shr 49 8,.literal (BitVec.ofNat 32 0),.bnot 915,.badd 914 916,.bnot 917,.band 913 918,.bxor 909 919,.shr 920 31,.literal (BitVec.ofNat 32 1),.bxor 921 922,.shr 50 8,.literal (BitVec.ofNat 32 0),.bnot 925,.band 924 926,.shr 50 8,.literal (BitVec.ofNat 32 0),.bnot 929,.bxor 928 930,.shr 50 8,.literal (BitVec.ofNat 32 0),.bnot 933,.badd 932 934,.bnot 935,.band 931 936,.bxor 927 937,.shr 938 31,.literal (BitVec.ofNat 32 1),.bxor 939 940,.shr 51 8,.literal (BitVec.ofNat 32 0),.bnot 943,.band 942 944,.shr 51 8,.literal (BitVec.ofNat 32 0),.bnot 947,.bxor 946 948,.shr 51 8,.literal (BitVec.ofNat 32 0),.bnot 951,.badd 950 952,.bnot 953,.band 949 954,.bxor 945 955,.shr 956 31,.literal (BitVec.ofNat 32 1),.bxor 957 958,.shr 52 8,.literal (BitVec.ofNat 32 0),.bnot 961,.band 960 962,.shr 52 8,.literal (BitVec.ofNat 32 0),.bnot 965,.bxor 964 966]
theorem partExact13 : partRows13=WordField.rows actualModulus 904 partOps13 := by
  simp only [partRows13,partOps13,WordField.rows,rows904,rows905,rows906,rows907,rows908,rows909,rows910,rows911,rows912,rows913,rows914,rows915,rows916,rows917,rows918,rows919,rows920,rows921,rows922,rows923,rows924,rows925,rows926,rows927,rows928,rows929,rows930,rows931,rows932,rows933,rows934,rows935,rows936,rows937,rows938,rows939,rows940,rows941,rows942,rows943,rows944,rows945,rows946,rows947,rows948,rows949,rows950,rows951,rows952,rows953,rows954,rows955,rows956,rows957,rows958,rows959,rows960,rows961,rows962,rows963,rows964,rows965,rows966,rows967,List.append_assoc,List.append_nil]
theorem partLength13 : partOps13.length=64 := by decide
theorem partStats13 : partRows13.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows13=322896 := by
  simp only [partRows13,List.length_append,MatrixRowBlocks.rows_weight_append,stats904.1,stats904.2,stats905.1,stats905.2,stats906.1,stats906.2,stats907.1,stats907.2,stats908.1,stats908.2,stats909.1,stats909.2,stats910.1,stats910.2,stats911.1,stats911.2,stats912.1,stats912.2,stats913.1,stats913.2,stats914.1,stats914.2,stats915.1,stats915.2,stats916.1,stats916.2,stats917.1,stats917.2,stats918.1,stats918.2,stats919.1,stats919.2,stats920.1,stats920.2,stats921.1,stats921.2,stats922.1,stats922.2,stats923.1,stats923.2,stats924.1,stats924.2,stats925.1,stats925.2,stats926.1,stats926.2,stats927.1,stats927.2,stats928.1,stats928.2,stats929.1,stats929.2,stats930.1,stats930.2,stats931.1,stats931.2,stats932.1,stats932.2,stats933.1,stats933.2,stats934.1,stats934.2,stats935.1,stats935.2,stats936.1,stats936.2,stats937.1,stats937.2,stats938.1,stats938.2,stats939.1,stats939.2,stats940.1,stats940.2,stats941.1,stats941.2,stats942.1,stats942.2,stats943.1,stats943.2,stats944.1,stats944.2,stats945.1,stats945.2,stats946.1,stats946.2,stats947.1,stats947.2,stats948.1,stats948.2,stats949.1,stats949.2,stats950.1,stats950.2,stats951.1,stats951.2,stats952.1,stats952.2,stats953.1,stats953.2,stats954.1,stats954.2,stats955.1,stats955.2,stats956.1,stats956.2,stats957.1,stats957.2,stats958.1,stats958.2,stats959.1,stats959.2,stats960.1,stats960.2,stats961.1,stats961.2,stats962.1,stats962.2,stats963.1,stats963.2,stats964.1,stats964.2,stats965.1,stats965.2,stats966.1,stats966.2,stats967.1,stats967.2]
  decide
end HashBlockCheckedRows
