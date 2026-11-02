import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData14
import ActualMatrixData15
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows920 : actualRows920=WordField.canonicalRows actualModulus 920 (.bxor 918 919) := by core033_kernel_decide
theorem stats920 : actualRows920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows920=7428 := by core033_kernel_decide
theorem rows921 : actualRows921=WordField.canonicalRows actualModulus 921 (.rotr 917 25) := by core033_kernel_decide
theorem stats921 : actualRows921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows921=5124 := by core033_kernel_decide
theorem rows922 : actualRows922=WordField.canonicalRows actualModulus 922 (.bxor 920 921) := by core033_kernel_decide
theorem stats922 : actualRows922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows922=7428 := by core033_kernel_decide
theorem rows923 : actualRows923=WordField.canonicalRows actualModulus 923 (.badd 836 922) := by core033_kernel_decide
theorem stats923 : actualRows923.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows923=5388 := by core033_kernel_decide
theorem rows924 : actualRows924=WordField.canonicalRows actualModulus 924 (.band 917 890) := by core033_kernel_decide
theorem stats924 : actualRows924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows924=5124 := by core033_kernel_decide
theorem rows925 : actualRows925=WordField.canonicalRows actualModulus 925 (.bnot 917) := by core033_kernel_decide
theorem stats925 : actualRows925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows925=6276 := by core033_kernel_decide
theorem rows926 : actualRows926=WordField.canonicalRows actualModulus 926 (.band 925 863) := by core033_kernel_decide
theorem stats926 : actualRows926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows926=5124 := by core033_kernel_decide
theorem rows927 : actualRows927=WordField.canonicalRows actualModulus 927 (.bxor 924 926) := by core033_kernel_decide
theorem stats927 : actualRows927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows927=7428 := by core033_kernel_decide
theorem rows928 : actualRows928=WordField.canonicalRows actualModulus 928 (.badd 923 927) := by core033_kernel_decide
theorem stats928 : actualRows928.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows928=5388 := by core033_kernel_decide
theorem rows929 : actualRows929=WordField.canonicalRows actualModulus 929 (.literal (BitVec.ofNat 32 607225278)) := by core033_kernel_decide
theorem stats929 : actualRows929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows929=3828 := by core033_kernel_decide
theorem rows930 : actualRows930=WordField.canonicalRows actualModulus 930 (.badd 928 929) := by core033_kernel_decide
theorem stats930 : actualRows930.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows930=5388 := by core033_kernel_decide
theorem rows931 : actualRows931=WordField.canonicalRows actualModulus 931 (.badd 930 18) := by core033_kernel_decide
theorem stats931 : actualRows931.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows931=5388 := by core033_kernel_decide
theorem rows932 : actualRows932=WordField.canonicalRows actualModulus 932 (.rotr 916 2) := by core033_kernel_decide
theorem stats932 : actualRows932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows932=5124 := by core033_kernel_decide
theorem rows933 : actualRows933=WordField.canonicalRows actualModulus 933 (.rotr 916 13) := by core033_kernel_decide
theorem stats933 : actualRows933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows933=5124 := by core033_kernel_decide
theorem rows934 : actualRows934=WordField.canonicalRows actualModulus 934 (.bxor 932 933) := by core033_kernel_decide
theorem stats934 : actualRows934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows934=7428 := by core033_kernel_decide
theorem rows935 : actualRows935=WordField.canonicalRows actualModulus 935 (.rotr 916 22) := by core033_kernel_decide
theorem stats935 : actualRows935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows935=5124 := by core033_kernel_decide
theorem rows936 : actualRows936=WordField.canonicalRows actualModulus 936 (.bxor 934 935) := by core033_kernel_decide
theorem stats936 : actualRows936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows936=7428 := by core033_kernel_decide
theorem rows937 : actualRows937=WordField.canonicalRows actualModulus 937 (.band 916 889) := by core033_kernel_decide
theorem stats937 : actualRows937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows937=5124 := by core033_kernel_decide
theorem rows938 : actualRows938=WordField.canonicalRows actualModulus 938 (.band 916 862) := by core033_kernel_decide
theorem stats938 : actualRows938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows938=5124 := by core033_kernel_decide
theorem rows939 : actualRows939=WordField.canonicalRows actualModulus 939 (.bxor 937 938) := by core033_kernel_decide
theorem stats939 : actualRows939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows939=7428 := by core033_kernel_decide
theorem rows940 : actualRows940=WordField.canonicalRows actualModulus 940 (.band 889 862) := by core033_kernel_decide
theorem stats940 : actualRows940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows940=5124 := by core033_kernel_decide
theorem rows941 : actualRows941=WordField.canonicalRows actualModulus 941 (.bxor 939 940) := by core033_kernel_decide
theorem stats941 : actualRows941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows941=7428 := by core033_kernel_decide
theorem rows942 : actualRows942=WordField.canonicalRows actualModulus 942 (.badd 936 941) := by core033_kernel_decide
theorem stats942 : actualRows942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows942=5388 := by core033_kernel_decide
theorem rows943 : actualRows943=WordField.canonicalRows actualModulus 943 (.badd 931 942) := by core033_kernel_decide
theorem stats943 : actualRows943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows943=5388 := by core033_kernel_decide
theorem rows944 : actualRows944=WordField.canonicalRows actualModulus 944 (.badd 835 931) := by core033_kernel_decide
theorem stats944 : actualRows944.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows944=5388 := by core033_kernel_decide
theorem rows945 : actualRows945=WordField.canonicalRows actualModulus 945 (.rotr 944 6) := by core033_kernel_decide
theorem stats945 : actualRows945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows945=5124 := by core033_kernel_decide
theorem rows946 : actualRows946=WordField.canonicalRows actualModulus 946 (.rotr 944 11) := by core033_kernel_decide
theorem stats946 : actualRows946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows946=5124 := by core033_kernel_decide
theorem rows947 : actualRows947=WordField.canonicalRows actualModulus 947 (.bxor 945 946) := by core033_kernel_decide
theorem stats947 : actualRows947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows947=7428 := by core033_kernel_decide
theorem rows948 : actualRows948=WordField.canonicalRows actualModulus 948 (.rotr 944 25) := by core033_kernel_decide
theorem stats948 : actualRows948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows948=5124 := by core033_kernel_decide
theorem rows949 : actualRows949=WordField.canonicalRows actualModulus 949 (.bxor 947 948) := by core033_kernel_decide
theorem stats949 : actualRows949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows949=7428 := by core033_kernel_decide
theorem rows950 : actualRows950=WordField.canonicalRows actualModulus 950 (.badd 863 949) := by core033_kernel_decide
theorem stats950 : actualRows950.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows950=5388 := by core033_kernel_decide
theorem rows951 : actualRows951=WordField.canonicalRows actualModulus 951 (.band 944 917) := by core033_kernel_decide
theorem stats951 : actualRows951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows951=5124 := by core033_kernel_decide
theorem rows952 : actualRows952=WordField.canonicalRows actualModulus 952 (.bnot 944) := by core033_kernel_decide
theorem stats952 : actualRows952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows952=6276 := by core033_kernel_decide
theorem rows953 : actualRows953=WordField.canonicalRows actualModulus 953 (.band 952 890) := by core033_kernel_decide
theorem stats953 : actualRows953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows953=5124 := by core033_kernel_decide
theorem rows954 : actualRows954=WordField.canonicalRows actualModulus 954 (.bxor 951 953) := by core033_kernel_decide
theorem stats954 : actualRows954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows954=7428 := by core033_kernel_decide
theorem rows955 : actualRows955=WordField.canonicalRows actualModulus 955 (.badd 950 954) := by core033_kernel_decide
theorem stats955 : actualRows955.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows955=5388 := by core033_kernel_decide
theorem rows956 : actualRows956=WordField.canonicalRows actualModulus 956 (.literal (BitVec.ofNat 32 1426881987)) := by core033_kernel_decide
theorem stats956 : actualRows956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows956=3972 := by core033_kernel_decide
theorem rows957 : actualRows957=WordField.canonicalRows actualModulus 957 (.badd 955 956) := by core033_kernel_decide
theorem stats957 : actualRows957.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows957=5388 := by core033_kernel_decide
theorem rows958 : actualRows958=WordField.canonicalRows actualModulus 958 (.badd 957 19) := by core033_kernel_decide
theorem stats958 : actualRows958.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows958=5388 := by core033_kernel_decide
theorem rows959 : actualRows959=WordField.canonicalRows actualModulus 959 (.rotr 943 2) := by core033_kernel_decide
theorem stats959 : actualRows959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows959=5124 := by core033_kernel_decide
theorem rows960 : actualRows960=WordField.canonicalRows actualModulus 960 (.rotr 943 13) := by core033_kernel_decide
theorem stats960 : actualRows960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows960=5124 := by core033_kernel_decide
theorem rows961 : actualRows961=WordField.canonicalRows actualModulus 961 (.bxor 959 960) := by core033_kernel_decide
theorem stats961 : actualRows961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows961=7428 := by core033_kernel_decide
theorem rows962 : actualRows962=WordField.canonicalRows actualModulus 962 (.rotr 943 22) := by core033_kernel_decide
theorem stats962 : actualRows962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows962=5124 := by core033_kernel_decide
theorem rows963 : actualRows963=WordField.canonicalRows actualModulus 963 (.bxor 961 962) := by core033_kernel_decide
theorem stats963 : actualRows963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows963=7428 := by core033_kernel_decide
theorem rows964 : actualRows964=WordField.canonicalRows actualModulus 964 (.band 943 916) := by core033_kernel_decide
theorem stats964 : actualRows964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows964=5124 := by core033_kernel_decide
theorem rows965 : actualRows965=WordField.canonicalRows actualModulus 965 (.band 943 889) := by core033_kernel_decide
theorem stats965 : actualRows965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows965=5124 := by core033_kernel_decide
theorem rows966 : actualRows966=WordField.canonicalRows actualModulus 966 (.bxor 964 965) := by core033_kernel_decide
theorem stats966 : actualRows966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows966=7428 := by core033_kernel_decide
theorem rows967 : actualRows967=WordField.canonicalRows actualModulus 967 (.band 916 889) := by core033_kernel_decide
theorem stats967 : actualRows967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows967=5124 := by core033_kernel_decide
theorem rows968 : actualRows968=WordField.canonicalRows actualModulus 968 (.bxor 966 967) := by core033_kernel_decide
theorem stats968 : actualRows968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows968=7428 := by core033_kernel_decide
theorem rows969 : actualRows969=WordField.canonicalRows actualModulus 969 (.badd 963 968) := by core033_kernel_decide
theorem stats969 : actualRows969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows969=5388 := by core033_kernel_decide
theorem rows970 : actualRows970=WordField.canonicalRows actualModulus 970 (.badd 958 969) := by core033_kernel_decide
theorem stats970 : actualRows970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows970=5388 := by core033_kernel_decide
theorem rows971 : actualRows971=WordField.canonicalRows actualModulus 971 (.badd 862 958) := by core033_kernel_decide
theorem stats971 : actualRows971.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows971=5388 := by core033_kernel_decide
theorem rows972 : actualRows972=WordField.canonicalRows actualModulus 972 (.rotr 971 6) := by core033_kernel_decide
theorem stats972 : actualRows972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows972=5124 := by core033_kernel_decide
theorem rows973 : actualRows973=WordField.canonicalRows actualModulus 973 (.rotr 971 11) := by core033_kernel_decide
theorem stats973 : actualRows973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows973=5124 := by core033_kernel_decide
theorem rows974 : actualRows974=WordField.canonicalRows actualModulus 974 (.bxor 972 973) := by core033_kernel_decide
theorem stats974 : actualRows974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows974=7428 := by core033_kernel_decide
theorem rows975 : actualRows975=WordField.canonicalRows actualModulus 975 (.rotr 971 25) := by core033_kernel_decide
theorem stats975 : actualRows975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows975=5124 := by core033_kernel_decide
theorem rows976 : actualRows976=WordField.canonicalRows actualModulus 976 (.bxor 974 975) := by core033_kernel_decide
theorem stats976 : actualRows976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows976=7428 := by core033_kernel_decide
theorem rows977 : actualRows977=WordField.canonicalRows actualModulus 977 (.badd 890 976) := by core033_kernel_decide
theorem stats977 : actualRows977.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows977=5388 := by core033_kernel_decide
theorem rows978 : actualRows978=WordField.canonicalRows actualModulus 978 (.band 971 944) := by core033_kernel_decide
theorem stats978 : actualRows978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows978=5124 := by core033_kernel_decide
theorem rows979 : actualRows979=WordField.canonicalRows actualModulus 979 (.bnot 971) := by core033_kernel_decide
theorem stats979 : actualRows979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows979=6276 := by core033_kernel_decide
theorem rows980 : actualRows980=WordField.canonicalRows actualModulus 980 (.band 979 917) := by core033_kernel_decide
theorem stats980 : actualRows980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows980=5124 := by core033_kernel_decide
theorem rows981 : actualRows981=WordField.canonicalRows actualModulus 981 (.bxor 978 980) := by core033_kernel_decide
theorem stats981 : actualRows981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows981=7428 := by core033_kernel_decide
theorem rows982 : actualRows982=WordField.canonicalRows actualModulus 982 (.badd 977 981) := by core033_kernel_decide
theorem stats982 : actualRows982.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows982=5388 := by core033_kernel_decide
theorem rows983 : actualRows983=WordField.canonicalRows actualModulus 983 (.literal (BitVec.ofNat 32 1925078388)) := by core033_kernel_decide
theorem stats983 : actualRows983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows983=4188 := by core033_kernel_decide
def partRows14 : List R1CS.Row := actualRows920++actualRows921++actualRows922++actualRows923++actualRows924++actualRows925++actualRows926++actualRows927++actualRows928++actualRows929++actualRows930++actualRows931++actualRows932++actualRows933++actualRows934++actualRows935++actualRows936++actualRows937++actualRows938++actualRows939++actualRows940++actualRows941++actualRows942++actualRows943++actualRows944++actualRows945++actualRows946++actualRows947++actualRows948++actualRows949++actualRows950++actualRows951++actualRows952++actualRows953++actualRows954++actualRows955++actualRows956++actualRows957++actualRows958++actualRows959++actualRows960++actualRows961++actualRows962++actualRows963++actualRows964++actualRows965++actualRows966++actualRows967++actualRows968++actualRows969++actualRows970++actualRows971++actualRows972++actualRows973++actualRows974++actualRows975++actualRows976++actualRows977++actualRows978++actualRows979++actualRows980++actualRows981++actualRows982++actualRows983
def partOps14 : List WordIR.Op := [.bxor 918 919,.rotr 917 25,.bxor 920 921,.badd 836 922,.band 917 890,.bnot 917,.band 925 863,.bxor 924 926,.badd 923 927,.literal (BitVec.ofNat 32 607225278),.badd 928 929,.badd 930 18,.rotr 916 2,.rotr 916 13,.bxor 932 933,.rotr 916 22,.bxor 934 935,.band 916 889,.band 916 862,.bxor 937 938,.band 889 862,.bxor 939 940,.badd 936 941,.badd 931 942,.badd 835 931,.rotr 944 6,.rotr 944 11,.bxor 945 946,.rotr 944 25,.bxor 947 948,.badd 863 949,.band 944 917,.bnot 944,.band 952 890,.bxor 951 953,.badd 950 954,.literal (BitVec.ofNat 32 1426881987),.badd 955 956,.badd 957 19,.rotr 943 2,.rotr 943 13,.bxor 959 960,.rotr 943 22,.bxor 961 962,.band 943 916,.band 943 889,.bxor 964 965,.band 916 889,.bxor 966 967,.badd 963 968,.badd 958 969,.badd 862 958,.rotr 971 6,.rotr 971 11,.bxor 972 973,.rotr 971 25,.bxor 974 975,.badd 890 976,.band 971 944,.bnot 971,.band 979 917,.bxor 978 980,.badd 977 981,.literal (BitVec.ofNat 32 1925078388)]
theorem partRowsExact14 : partRows14=WordField.rows actualModulus 920 partOps14 := by
  simp only [partRows14,partOps14,WordField.rows,rows920,rows921,rows922,rows923,rows924,rows925,rows926,rows927,rows928,rows929,rows930,rows931,rows932,rows933,rows934,rows935,rows936,rows937,rows938,rows939,rows940,rows941,rows942,rows943,rows944,rows945,rows946,rows947,rows948,rows949,rows950,rows951,rows952,rows953,rows954,rows955,rows956,rows957,rows958,rows959,rows960,rows961,rows962,rows963,rows964,rows965,rows966,rows967,rows968,rows969,rows970,rows971,rows972,rows973,rows974,rows975,rows976,rows977,rows978,rows979,rows980,rows981,rows982,rows983,List.append_assoc,List.append_nil]
theorem partOpsLength14 : partOps14.length=64 := by decide
theorem partStats14 : partRows14.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows14=371400 := by
  simp only [partRows14,List.length_append,MatrixRowBlocks.rows_weight_append,stats920.1,stats920.2,stats921.1,stats921.2,stats922.1,stats922.2,stats923.1,stats923.2,stats924.1,stats924.2,stats925.1,stats925.2,stats926.1,stats926.2,stats927.1,stats927.2,stats928.1,stats928.2,stats929.1,stats929.2,stats930.1,stats930.2,stats931.1,stats931.2,stats932.1,stats932.2,stats933.1,stats933.2,stats934.1,stats934.2,stats935.1,stats935.2,stats936.1,stats936.2,stats937.1,stats937.2,stats938.1,stats938.2,stats939.1,stats939.2,stats940.1,stats940.2,stats941.1,stats941.2,stats942.1,stats942.2,stats943.1,stats943.2,stats944.1,stats944.2,stats945.1,stats945.2,stats946.1,stats946.2,stats947.1,stats947.2,stats948.1,stats948.2,stats949.1,stats949.2,stats950.1,stats950.2,stats951.1,stats951.2,stats952.1,stats952.2,stats953.1,stats953.2,stats954.1,stats954.2,stats955.1,stats955.2,stats956.1,stats956.2,stats957.1,stats957.2,stats958.1,stats958.2,stats959.1,stats959.2,stats960.1,stats960.2,stats961.1,stats961.2,stats962.1,stats962.2,stats963.1,stats963.2,stats964.1,stats964.2,stats965.1,stats965.2,stats966.1,stats966.2,stats967.1,stats967.2,stats968.1,stats968.2,stats969.1,stats969.2,stats970.1,stats970.2,stats971.1,stats971.2,stats972.1,stats972.2,stats973.1,stats973.2,stats974.1,stats974.2,stats975.1,stats975.2,stats976.1,stats976.2,stats977.1,stats977.2,stats978.1,stats978.2,stats979.1,stats979.2,stats980.1,stats980.2,stats981.1,stats981.2,stats982.1,stats982.2,stats983.1,stats983.2]
  decide
end ActualSHAMatrixRows
