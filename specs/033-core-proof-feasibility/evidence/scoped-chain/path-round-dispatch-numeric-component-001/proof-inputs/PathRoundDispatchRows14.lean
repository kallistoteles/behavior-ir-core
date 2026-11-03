import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData14
import PathRoundDispatchInstructionMatrixData15
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows939 : actualRows939=WordField.canonicalRows actualModulus 939 (.band 938 371) := by core033_kernel_decide
theorem stats939 : actualRows939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows939=5124 := by core033_kernel_decide
theorem rows940 : actualRows940=WordField.canonicalRows actualModulus 940 (.bnot 875) := by core033_kernel_decide
theorem stats940 : actualRows940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows940=6276 := by core033_kernel_decide
theorem rows941 : actualRows941=WordField.canonicalRows actualModulus 941 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats941 : actualRows941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows941=2892 := by core033_kernel_decide
theorem rows942 : actualRows942=WordField.canonicalRows actualModulus 942 (.badd 940 941) := by core033_kernel_decide
theorem stats942 : actualRows942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows942=5388 := by core033_kernel_decide
theorem rows943 : actualRows943=WordField.canonicalRows actualModulus 943 (.bnot 942) := by core033_kernel_decide
theorem stats943 : actualRows943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows943=6276 := by core033_kernel_decide
theorem rows944 : actualRows944=WordField.canonicalRows actualModulus 944 (.band 943 283) := by core033_kernel_decide
theorem stats944 : actualRows944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows944=5124 := by core033_kernel_decide
theorem rows945 : actualRows945=WordField.canonicalRows actualModulus 945 (.bxor 939 944) := by core033_kernel_decide
theorem stats945 : actualRows945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows945=7428 := by core033_kernel_decide
theorem rows946 : actualRows946=WordField.canonicalRows actualModulus 946 (.bnot 875) := by core033_kernel_decide
theorem stats946 : actualRows946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows946=6276 := by core033_kernel_decide
theorem rows947 : actualRows947=WordField.canonicalRows actualModulus 947 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats947 : actualRows947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows947=2892 := by core033_kernel_decide
theorem rows948 : actualRows948=WordField.canonicalRows actualModulus 948 (.badd 946 947) := by core033_kernel_decide
theorem stats948 : actualRows948.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows948=5388 := by core033_kernel_decide
theorem rows949 : actualRows949=WordField.canonicalRows actualModulus 949 (.band 948 382) := by core033_kernel_decide
theorem stats949 : actualRows949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows949=5124 := by core033_kernel_decide
theorem rows950 : actualRows950=WordField.canonicalRows actualModulus 950 (.bnot 875) := by core033_kernel_decide
theorem stats950 : actualRows950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows950=6276 := by core033_kernel_decide
theorem rows951 : actualRows951=WordField.canonicalRows actualModulus 951 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats951 : actualRows951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows951=2892 := by core033_kernel_decide
theorem rows952 : actualRows952=WordField.canonicalRows actualModulus 952 (.badd 950 951) := by core033_kernel_decide
theorem stats952 : actualRows952.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows952=5388 := by core033_kernel_decide
theorem rows953 : actualRows953=WordField.canonicalRows actualModulus 953 (.bnot 952) := by core033_kernel_decide
theorem stats953 : actualRows953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows953=6276 := by core033_kernel_decide
theorem rows954 : actualRows954=WordField.canonicalRows actualModulus 954 (.band 953 294) := by core033_kernel_decide
theorem stats954 : actualRows954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows954=5124 := by core033_kernel_decide
theorem rows955 : actualRows955=WordField.canonicalRows actualModulus 955 (.bxor 949 954) := by core033_kernel_decide
theorem stats955 : actualRows955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows955=7428 := by core033_kernel_decide
theorem rows956 : actualRows956=WordField.canonicalRows actualModulus 956 (.bnot 875) := by core033_kernel_decide
theorem stats956 : actualRows956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows956=6276 := by core033_kernel_decide
theorem rows957 : actualRows957=WordField.canonicalRows actualModulus 957 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats957 : actualRows957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows957=2892 := by core033_kernel_decide
theorem rows958 : actualRows958=WordField.canonicalRows actualModulus 958 (.badd 956 957) := by core033_kernel_decide
theorem stats958 : actualRows958.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows958=5388 := by core033_kernel_decide
theorem rows959 : actualRows959=WordField.canonicalRows actualModulus 959 (.band 958 415) := by core033_kernel_decide
theorem stats959 : actualRows959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows959=5124 := by core033_kernel_decide
theorem rows960 : actualRows960=WordField.canonicalRows actualModulus 960 (.bnot 875) := by core033_kernel_decide
theorem stats960 : actualRows960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows960=6276 := by core033_kernel_decide
theorem rows961 : actualRows961=WordField.canonicalRows actualModulus 961 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats961 : actualRows961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows961=2892 := by core033_kernel_decide
theorem rows962 : actualRows962=WordField.canonicalRows actualModulus 962 (.badd 960 961) := by core033_kernel_decide
theorem stats962 : actualRows962.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows962=5388 := by core033_kernel_decide
theorem rows963 : actualRows963=WordField.canonicalRows actualModulus 963 (.bnot 962) := by core033_kernel_decide
theorem stats963 : actualRows963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows963=6276 := by core033_kernel_decide
theorem rows964 : actualRows964=WordField.canonicalRows actualModulus 964 (.band 963 393) := by core033_kernel_decide
theorem stats964 : actualRows964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows964=5124 := by core033_kernel_decide
theorem rows965 : actualRows965=WordField.canonicalRows actualModulus 965 (.bxor 959 964) := by core033_kernel_decide
theorem stats965 : actualRows965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows965=7428 := by core033_kernel_decide
theorem rows966 : actualRows966=WordField.canonicalRows actualModulus 966 (.bnot 875) := by core033_kernel_decide
theorem stats966 : actualRows966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows966=6276 := by core033_kernel_decide
theorem rows967 : actualRows967=WordField.canonicalRows actualModulus 967 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats967 : actualRows967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows967=2892 := by core033_kernel_decide
theorem rows968 : actualRows968=WordField.canonicalRows actualModulus 968 (.badd 966 967) := by core033_kernel_decide
theorem stats968 : actualRows968.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows968=5388 := by core033_kernel_decide
theorem rows969 : actualRows969=WordField.canonicalRows actualModulus 969 (.band 968 426) := by core033_kernel_decide
theorem stats969 : actualRows969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows969=5124 := by core033_kernel_decide
theorem rows970 : actualRows970=WordField.canonicalRows actualModulus 970 (.bnot 875) := by core033_kernel_decide
theorem stats970 : actualRows970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows970=6276 := by core033_kernel_decide
theorem rows971 : actualRows971=WordField.canonicalRows actualModulus 971 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats971 : actualRows971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows971=2892 := by core033_kernel_decide
theorem rows972 : actualRows972=WordField.canonicalRows actualModulus 972 (.badd 970 971) := by core033_kernel_decide
theorem stats972 : actualRows972.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows972=5388 := by core033_kernel_decide
theorem rows973 : actualRows973=WordField.canonicalRows actualModulus 973 (.bnot 972) := by core033_kernel_decide
theorem stats973 : actualRows973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows973=6276 := by core033_kernel_decide
theorem rows974 : actualRows974=WordField.canonicalRows actualModulus 974 (.band 973 404) := by core033_kernel_decide
theorem stats974 : actualRows974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows974=5124 := by core033_kernel_decide
theorem rows975 : actualRows975=WordField.canonicalRows actualModulus 975 (.bxor 969 974) := by core033_kernel_decide
theorem stats975 : actualRows975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows975=7428 := by core033_kernel_decide
theorem rows976 : actualRows976=WordField.canonicalRows actualModulus 976 (.bnot 875) := by core033_kernel_decide
theorem stats976 : actualRows976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows976=6276 := by core033_kernel_decide
theorem rows977 : actualRows977=WordField.canonicalRows actualModulus 977 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats977 : actualRows977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows977=2892 := by core033_kernel_decide
theorem rows978 : actualRows978=WordField.canonicalRows actualModulus 978 (.badd 976 977) := by core033_kernel_decide
theorem stats978 : actualRows978.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows978=5388 := by core033_kernel_decide
theorem rows979 : actualRows979=WordField.canonicalRows actualModulus 979 (.band 978 448) := by core033_kernel_decide
theorem stats979 : actualRows979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows979=5124 := by core033_kernel_decide
theorem rows980 : actualRows980=WordField.canonicalRows actualModulus 980 (.bnot 875) := by core033_kernel_decide
theorem stats980 : actualRows980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows980=6276 := by core033_kernel_decide
theorem rows981 : actualRows981=WordField.canonicalRows actualModulus 981 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats981 : actualRows981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows981=2892 := by core033_kernel_decide
theorem rows982 : actualRows982=WordField.canonicalRows actualModulus 982 (.badd 980 981) := by core033_kernel_decide
theorem stats982 : actualRows982.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows982=5388 := by core033_kernel_decide
theorem rows983 : actualRows983=WordField.canonicalRows actualModulus 983 (.bnot 982) := by core033_kernel_decide
theorem stats983 : actualRows983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows983=6276 := by core033_kernel_decide
theorem rows984 : actualRows984=WordField.canonicalRows actualModulus 984 (.band 983 437) := by core033_kernel_decide
theorem stats984 : actualRows984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows984=5124 := by core033_kernel_decide
theorem rows985 : actualRows985=WordField.canonicalRows actualModulus 985 (.bxor 979 984) := by core033_kernel_decide
theorem stats985 : actualRows985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows985=7428 := by core033_kernel_decide
theorem rows986 : actualRows986=WordField.canonicalRows actualModulus 986 (.bnot 875) := by core033_kernel_decide
theorem stats986 : actualRows986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows986=6276 := by core033_kernel_decide
theorem rows987 : actualRows987=WordField.canonicalRows actualModulus 987 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats987 : actualRows987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows987=2892 := by core033_kernel_decide
theorem rows988 : actualRows988=WordField.canonicalRows actualModulus 988 (.badd 986 987) := by core033_kernel_decide
theorem stats988 : actualRows988.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows988=5388 := by core033_kernel_decide
theorem rows989 : actualRows989=WordField.canonicalRows actualModulus 989 (.band 988 470) := by core033_kernel_decide
theorem stats989 : actualRows989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows989=5124 := by core033_kernel_decide
theorem rows990 : actualRows990=WordField.canonicalRows actualModulus 990 (.bnot 875) := by core033_kernel_decide
theorem stats990 : actualRows990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows990=6276 := by core033_kernel_decide
theorem rows991 : actualRows991=WordField.canonicalRows actualModulus 991 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats991 : actualRows991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows991=2892 := by core033_kernel_decide
theorem rows992 : actualRows992=WordField.canonicalRows actualModulus 992 (.badd 990 991) := by core033_kernel_decide
theorem stats992 : actualRows992.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows992=5388 := by core033_kernel_decide
theorem rows993 : actualRows993=WordField.canonicalRows actualModulus 993 (.bnot 992) := by core033_kernel_decide
theorem stats993 : actualRows993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows993=6276 := by core033_kernel_decide
theorem rows994 : actualRows994=WordField.canonicalRows actualModulus 994 (.band 993 459) := by core033_kernel_decide
theorem stats994 : actualRows994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows994=5124 := by core033_kernel_decide
theorem rows995 : actualRows995=WordField.canonicalRows actualModulus 995 (.bxor 989 994) := by core033_kernel_decide
theorem stats995 : actualRows995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows995=7428 := by core033_kernel_decide
theorem rows996 : actualRows996=WordField.canonicalRows actualModulus 996 (.bnot 875) := by core033_kernel_decide
theorem stats996 : actualRows996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows996=6276 := by core033_kernel_decide
theorem rows997 : actualRows997=WordField.canonicalRows actualModulus 997 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats997 : actualRows997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows997=2892 := by core033_kernel_decide
theorem rows998 : actualRows998=WordField.canonicalRows actualModulus 998 (.badd 996 997) := by core033_kernel_decide
theorem stats998 : actualRows998.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows998=5388 := by core033_kernel_decide
theorem rows999 : actualRows999=WordField.canonicalRows actualModulus 999 (.band 998 217) := by core033_kernel_decide
theorem stats999 : actualRows999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows999=5124 := by core033_kernel_decide
theorem rows1000 : actualRows1000=WordField.canonicalRows actualModulus 1000 (.bnot 875) := by core033_kernel_decide
theorem stats1000 : actualRows1000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1000=6276 := by core033_kernel_decide
theorem rows1001 : actualRows1001=WordField.canonicalRows actualModulus 1001 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1001 : actualRows1001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1001=2892 := by core033_kernel_decide
theorem rows1002 : actualRows1002=WordField.canonicalRows actualModulus 1002 (.badd 1000 1001) := by core033_kernel_decide
theorem stats1002 : actualRows1002.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1002=5388 := by core033_kernel_decide
def partRows14 : List R1CS.Row := actualRows939++actualRows940++actualRows941++actualRows942++actualRows943++actualRows944++actualRows945++actualRows946++actualRows947++actualRows948++actualRows949++actualRows950++actualRows951++actualRows952++actualRows953++actualRows954++actualRows955++actualRows956++actualRows957++actualRows958++actualRows959++actualRows960++actualRows961++actualRows962++actualRows963++actualRows964++actualRows965++actualRows966++actualRows967++actualRows968++actualRows969++actualRows970++actualRows971++actualRows972++actualRows973++actualRows974++actualRows975++actualRows976++actualRows977++actualRows978++actualRows979++actualRows980++actualRows981++actualRows982++actualRows983++actualRows984++actualRows985++actualRows986++actualRows987++actualRows988++actualRows989++actualRows990++actualRows991++actualRows992++actualRows993++actualRows994++actualRows995++actualRows996++actualRows997++actualRows998++actualRows999++actualRows1000++actualRows1001++actualRows1002
def partOps14 : List WordIR.Op := [.band 938 371,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 940 941,.bnot 942,.band 943 283,.bxor 939 944,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 946 947,.band 948 382,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 950 951,.bnot 952,.band 953 294,.bxor 949 954,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 956 957,.band 958 415,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 960 961,.bnot 962,.band 963 393,.bxor 959 964,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 966 967,.band 968 426,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 970 971,.bnot 972,.band 973 404,.bxor 969 974,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 976 977,.band 978 448,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 980 981,.bnot 982,.band 983 437,.bxor 979 984,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 986 987,.band 988 470,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 990 991,.bnot 992,.band 993 459,.bxor 989 994,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 996 997,.band 998 217,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1000 1001]
theorem partExact14 : partRows14=WordField.rows actualModulus 939 partOps14 := by
  simp only [partRows14,partOps14,WordField.rows,rows939,rows940,rows941,rows942,rows943,rows944,rows945,rows946,rows947,rows948,rows949,rows950,rows951,rows952,rows953,rows954,rows955,rows956,rows957,rows958,rows959,rows960,rows961,rows962,rows963,rows964,rows965,rows966,rows967,rows968,rows969,rows970,rows971,rows972,rows973,rows974,rows975,rows976,rows977,rows978,rows979,rows980,rows981,rows982,rows983,rows984,rows985,rows986,rows987,rows988,rows989,rows990,rows991,rows992,rows993,rows994,rows995,rows996,rows997,rows998,rows999,rows1000,rows1001,rows1002,List.append_assoc,List.append_nil]
theorem partLength14 : partOps14.length=64 := by decide
theorem partStats14 : partRows14.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows14=338064 := by
  simp only [partRows14,List.length_append,MatrixRowBlocks.rows_weight_append,stats939.1,stats939.2,stats940.1,stats940.2,stats941.1,stats941.2,stats942.1,stats942.2,stats943.1,stats943.2,stats944.1,stats944.2,stats945.1,stats945.2,stats946.1,stats946.2,stats947.1,stats947.2,stats948.1,stats948.2,stats949.1,stats949.2,stats950.1,stats950.2,stats951.1,stats951.2,stats952.1,stats952.2,stats953.1,stats953.2,stats954.1,stats954.2,stats955.1,stats955.2,stats956.1,stats956.2,stats957.1,stats957.2,stats958.1,stats958.2,stats959.1,stats959.2,stats960.1,stats960.2,stats961.1,stats961.2,stats962.1,stats962.2,stats963.1,stats963.2,stats964.1,stats964.2,stats965.1,stats965.2,stats966.1,stats966.2,stats967.1,stats967.2,stats968.1,stats968.2,stats969.1,stats969.2,stats970.1,stats970.2,stats971.1,stats971.2,stats972.1,stats972.2,stats973.1,stats973.2,stats974.1,stats974.2,stats975.1,stats975.2,stats976.1,stats976.2,stats977.1,stats977.2,stats978.1,stats978.2,stats979.1,stats979.2,stats980.1,stats980.2,stats981.1,stats981.2,stats982.1,stats982.2,stats983.1,stats983.2,stats984.1,stats984.2,stats985.1,stats985.2,stats986.1,stats986.2,stats987.1,stats987.2,stats988.1,stats988.2,stats989.1,stats989.2,stats990.1,stats990.2,stats991.1,stats991.2,stats992.1,stats992.2,stats993.1,stats993.2,stats994.1,stats994.2,stats995.1,stats995.2,stats996.1,stats996.2,stats997.1,stats997.2,stats998.1,stats998.2,stats999.1,stats999.2,stats1000.1,stats1000.2,stats1001.1,stats1001.2,stats1002.1,stats1002.2]
  decide
end PathRoundDispatchCheckedRows
