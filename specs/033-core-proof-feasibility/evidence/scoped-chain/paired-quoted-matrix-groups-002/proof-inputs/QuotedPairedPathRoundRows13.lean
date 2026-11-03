import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData14
import PairedPathRoundInstructionMatrixData15
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows928 : actualRows928=WordField.canonicalRows actualModulus 928 (.band 927 43) := by core033_kernel_decide
theorem stats928 : actualRows928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows928=5124 := by core033_kernel_decide
theorem rows929 : actualRows929=WordField.canonicalRows actualModulus 929 (.bnot 605) := by core033_kernel_decide
theorem stats929 : actualRows929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows929=6276 := by core033_kernel_decide
theorem rows930 : actualRows930=WordField.canonicalRows actualModulus 930 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats930 : actualRows930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows930=2892 := by core033_kernel_decide
theorem rows931 : actualRows931=WordField.canonicalRows actualModulus 931 (.badd 929 930) := by core033_kernel_decide
theorem stats931 : actualRows931.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows931=5388 := by core033_kernel_decide
theorem rows932 : actualRows932=WordField.canonicalRows actualModulus 932 (.bnot 931) := by core033_kernel_decide
theorem stats932 : actualRows932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows932=6276 := by core033_kernel_decide
theorem rows933 : actualRows933=WordField.canonicalRows actualModulus 933 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats933 : actualRows933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows933=2820 := by core033_kernel_decide
theorem rows934 : actualRows934=WordField.canonicalRows actualModulus 934 (.band 932 933) := by core033_kernel_decide
theorem stats934 : actualRows934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows934=5124 := by core033_kernel_decide
theorem rows935 : actualRows935=WordField.canonicalRows actualModulus 935 (.bxor 928 934) := by core033_kernel_decide
theorem stats935 : actualRows935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows935=7428 := by core033_kernel_decide
theorem rows936 : actualRows936=WordField.canonicalRows actualModulus 936 (.bnot 605) := by core033_kernel_decide
theorem stats936 : actualRows936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows936=6276 := by core033_kernel_decide
theorem rows937 : actualRows937=WordField.canonicalRows actualModulus 937 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats937 : actualRows937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows937=2892 := by core033_kernel_decide
theorem rows938 : actualRows938=WordField.canonicalRows actualModulus 938 (.badd 936 937) := by core033_kernel_decide
theorem stats938 : actualRows938.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows938=5388 := by core033_kernel_decide
theorem rows939 : actualRows939=WordField.canonicalRows actualModulus 939 (.band 938 44) := by core033_kernel_decide
theorem stats939 : actualRows939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows939=5124 := by core033_kernel_decide
theorem rows940 : actualRows940=WordField.canonicalRows actualModulus 940 (.bnot 605) := by core033_kernel_decide
theorem stats940 : actualRows940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows940=6276 := by core033_kernel_decide
theorem rows941 : actualRows941=WordField.canonicalRows actualModulus 941 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats941 : actualRows941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows941=2892 := by core033_kernel_decide
theorem rows942 : actualRows942=WordField.canonicalRows actualModulus 942 (.badd 940 941) := by core033_kernel_decide
theorem stats942 : actualRows942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows942=5388 := by core033_kernel_decide
theorem rows943 : actualRows943=WordField.canonicalRows actualModulus 943 (.bnot 942) := by core033_kernel_decide
theorem stats943 : actualRows943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows943=6276 := by core033_kernel_decide
theorem rows944 : actualRows944=WordField.canonicalRows actualModulus 944 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats944 : actualRows944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows944=2820 := by core033_kernel_decide
theorem rows945 : actualRows945=WordField.canonicalRows actualModulus 945 (.band 943 944) := by core033_kernel_decide
theorem stats945 : actualRows945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows945=5124 := by core033_kernel_decide
theorem rows946 : actualRows946=WordField.canonicalRows actualModulus 946 (.bxor 939 945) := by core033_kernel_decide
theorem stats946 : actualRows946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows946=7428 := by core033_kernel_decide
theorem rows947 : actualRows947=WordField.canonicalRows actualModulus 947 (.bnot 605) := by core033_kernel_decide
theorem stats947 : actualRows947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows947=6276 := by core033_kernel_decide
theorem rows948 : actualRows948=WordField.canonicalRows actualModulus 948 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats948 : actualRows948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows948=2892 := by core033_kernel_decide
theorem rows949 : actualRows949=WordField.canonicalRows actualModulus 949 (.badd 947 948) := by core033_kernel_decide
theorem stats949 : actualRows949.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows949=5388 := by core033_kernel_decide
theorem rows950 : actualRows950=WordField.canonicalRows actualModulus 950 (.band 949 552) := by core033_kernel_decide
theorem stats950 : actualRows950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows950=5124 := by core033_kernel_decide
theorem rows951 : actualRows951=WordField.canonicalRows actualModulus 951 (.bnot 605) := by core033_kernel_decide
theorem stats951 : actualRows951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows951=6276 := by core033_kernel_decide
theorem rows952 : actualRows952=WordField.canonicalRows actualModulus 952 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats952 : actualRows952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows952=2892 := by core033_kernel_decide
theorem rows953 : actualRows953=WordField.canonicalRows actualModulus 953 (.badd 951 952) := by core033_kernel_decide
theorem stats953 : actualRows953.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows953=5388 := by core033_kernel_decide
theorem rows954 : actualRows954=WordField.canonicalRows actualModulus 954 (.bnot 953) := by core033_kernel_decide
theorem stats954 : actualRows954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows954=6276 := by core033_kernel_decide
theorem rows955 : actualRows955=WordField.canonicalRows actualModulus 955 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats955 : actualRows955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows955=2820 := by core033_kernel_decide
theorem rows956 : actualRows956=WordField.canonicalRows actualModulus 956 (.band 954 955) := by core033_kernel_decide
theorem stats956 : actualRows956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows956=5124 := by core033_kernel_decide
theorem rows957 : actualRows957=WordField.canonicalRows actualModulus 957 (.bxor 950 956) := by core033_kernel_decide
theorem stats957 : actualRows957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows957=7428 := by core033_kernel_decide
theorem rows958 : actualRows958=WordField.canonicalRows actualModulus 958 (.bnot 605) := by core033_kernel_decide
theorem stats958 : actualRows958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows958=6276 := by core033_kernel_decide
theorem rows959 : actualRows959=WordField.canonicalRows actualModulus 959 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats959 : actualRows959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows959=2892 := by core033_kernel_decide
theorem rows960 : actualRows960=WordField.canonicalRows actualModulus 960 (.badd 958 959) := by core033_kernel_decide
theorem stats960 : actualRows960.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows960=5388 := by core033_kernel_decide
theorem rows961 : actualRows961=WordField.canonicalRows actualModulus 961 (.band 960 45) := by core033_kernel_decide
theorem stats961 : actualRows961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows961=5124 := by core033_kernel_decide
theorem rows962 : actualRows962=WordField.canonicalRows actualModulus 962 (.bnot 605) := by core033_kernel_decide
theorem stats962 : actualRows962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows962=6276 := by core033_kernel_decide
theorem rows963 : actualRows963=WordField.canonicalRows actualModulus 963 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats963 : actualRows963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows963=2892 := by core033_kernel_decide
theorem rows964 : actualRows964=WordField.canonicalRows actualModulus 964 (.badd 962 963) := by core033_kernel_decide
theorem stats964 : actualRows964.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows964=5388 := by core033_kernel_decide
theorem rows965 : actualRows965=WordField.canonicalRows actualModulus 965 (.bnot 964) := by core033_kernel_decide
theorem stats965 : actualRows965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows965=6276 := by core033_kernel_decide
theorem rows966 : actualRows966=WordField.canonicalRows actualModulus 966 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats966 : actualRows966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows966=2820 := by core033_kernel_decide
theorem rows967 : actualRows967=WordField.canonicalRows actualModulus 967 (.band 965 966) := by core033_kernel_decide
theorem stats967 : actualRows967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows967=5124 := by core033_kernel_decide
theorem rows968 : actualRows968=WordField.canonicalRows actualModulus 968 (.bxor 961 967) := by core033_kernel_decide
theorem stats968 : actualRows968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows968=7428 := by core033_kernel_decide
theorem rows969 : actualRows969=WordField.canonicalRows actualModulus 969 (.bnot 605) := by core033_kernel_decide
theorem stats969 : actualRows969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows969=6276 := by core033_kernel_decide
theorem rows970 : actualRows970=WordField.canonicalRows actualModulus 970 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats970 : actualRows970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows970=2892 := by core033_kernel_decide
theorem rows971 : actualRows971=WordField.canonicalRows actualModulus 971 (.badd 969 970) := by core033_kernel_decide
theorem stats971 : actualRows971.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows971=5388 := by core033_kernel_decide
theorem rows972 : actualRows972=WordField.canonicalRows actualModulus 972 (.band 971 562) := by core033_kernel_decide
theorem stats972 : actualRows972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows972=5124 := by core033_kernel_decide
theorem rows973 : actualRows973=WordField.canonicalRows actualModulus 973 (.bnot 605) := by core033_kernel_decide
theorem stats973 : actualRows973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows973=6276 := by core033_kernel_decide
theorem rows974 : actualRows974=WordField.canonicalRows actualModulus 974 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats974 : actualRows974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows974=2892 := by core033_kernel_decide
theorem rows975 : actualRows975=WordField.canonicalRows actualModulus 975 (.badd 973 974) := by core033_kernel_decide
theorem stats975 : actualRows975.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows975=5388 := by core033_kernel_decide
theorem rows976 : actualRows976=WordField.canonicalRows actualModulus 976 (.bnot 975) := by core033_kernel_decide
theorem stats976 : actualRows976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows976=6276 := by core033_kernel_decide
theorem rows977 : actualRows977=WordField.canonicalRows actualModulus 977 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats977 : actualRows977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows977=2820 := by core033_kernel_decide
theorem rows978 : actualRows978=WordField.canonicalRows actualModulus 978 (.band 976 977) := by core033_kernel_decide
theorem stats978 : actualRows978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows978=5124 := by core033_kernel_decide
theorem rows979 : actualRows979=WordField.canonicalRows actualModulus 979 (.bxor 972 978) := by core033_kernel_decide
theorem stats979 : actualRows979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows979=7428 := by core033_kernel_decide
theorem rows980 : actualRows980=WordField.canonicalRows actualModulus 980 (.bnot 605) := by core033_kernel_decide
theorem stats980 : actualRows980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows980=6276 := by core033_kernel_decide
theorem rows981 : actualRows981=WordField.canonicalRows actualModulus 981 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats981 : actualRows981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows981=2892 := by core033_kernel_decide
theorem rows982 : actualRows982=WordField.canonicalRows actualModulus 982 (.badd 980 981) := by core033_kernel_decide
theorem stats982 : actualRows982.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows982=5388 := by core033_kernel_decide
theorem rows983 : actualRows983=WordField.canonicalRows actualModulus 983 (.band 982 46) := by core033_kernel_decide
theorem stats983 : actualRows983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows983=5124 := by core033_kernel_decide
theorem rows984 : actualRows984=WordField.canonicalRows actualModulus 984 (.bnot 605) := by core033_kernel_decide
theorem stats984 : actualRows984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows984=6276 := by core033_kernel_decide
theorem rows985 : actualRows985=WordField.canonicalRows actualModulus 985 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats985 : actualRows985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows985=2892 := by core033_kernel_decide
theorem rows986 : actualRows986=WordField.canonicalRows actualModulus 986 (.badd 984 985) := by core033_kernel_decide
theorem stats986 : actualRows986.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows986=5388 := by core033_kernel_decide
theorem rows987 : actualRows987=WordField.canonicalRows actualModulus 987 (.bnot 986) := by core033_kernel_decide
theorem stats987 : actualRows987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows987=6276 := by core033_kernel_decide
theorem rows988 : actualRows988=WordField.canonicalRows actualModulus 988 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats988 : actualRows988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows988=2820 := by core033_kernel_decide
theorem rows989 : actualRows989=WordField.canonicalRows actualModulus 989 (.band 987 988) := by core033_kernel_decide
theorem stats989 : actualRows989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows989=5124 := by core033_kernel_decide
theorem rows990 : actualRows990=WordField.canonicalRows actualModulus 990 (.bxor 983 989) := by core033_kernel_decide
theorem stats990 : actualRows990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows990=7428 := by core033_kernel_decide
theorem rows991 : actualRows991=WordField.canonicalRows actualModulus 991 (.bnot 605) := by core033_kernel_decide
theorem stats991 : actualRows991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows991=6276 := by core033_kernel_decide
def partRows13 : List R1CS.Row := actualRows928++actualRows929++actualRows930++actualRows931++actualRows932++actualRows933++actualRows934++actualRows935++actualRows936++actualRows937++actualRows938++actualRows939++actualRows940++actualRows941++actualRows942++actualRows943++actualRows944++actualRows945++actualRows946++actualRows947++actualRows948++actualRows949++actualRows950++actualRows951++actualRows952++actualRows953++actualRows954++actualRows955++actualRows956++actualRows957++actualRows958++actualRows959++actualRows960++actualRows961++actualRows962++actualRows963++actualRows964++actualRows965++actualRows966++actualRows967++actualRows968++actualRows969++actualRows970++actualRows971++actualRows972++actualRows973++actualRows974++actualRows975++actualRows976++actualRows977++actualRows978++actualRows979++actualRows980++actualRows981++actualRows982++actualRows983++actualRows984++actualRows985++actualRows986++actualRows987++actualRows988++actualRows989++actualRows990++actualRows991
def partOps13 : List WordIR.Op := [.band 927 43,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 929 930,.bnot 931,.literal (BitVec.ofNat 32 0),.band 932 933,.bxor 928 934,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 936 937,.band 938 44,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 940 941,.bnot 942,.literal (BitVec.ofNat 32 0),.band 943 944,.bxor 939 945,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 947 948,.band 949 552,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 951 952,.bnot 953,.literal (BitVec.ofNat 32 0),.band 954 955,.bxor 950 956,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 958 959,.band 960 45,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 962 963,.bnot 964,.literal (BitVec.ofNat 32 0),.band 965 966,.bxor 961 967,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 969 970,.band 971 562,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 973 974,.bnot 975,.literal (BitVec.ofNat 32 0),.band 976 977,.bxor 972 978,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 980 981,.band 982 46,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 984 985,.bnot 986,.literal (BitVec.ofNat 32 0),.band 987 988,.bxor 983 989,.bnot 605]
theorem partExact13 : partRows13=WordField.rows actualModulus 928 partOps13 := by
  simp only [partRows13,partOps13,WordField.rows,rows928,rows929,rows930,rows931,rows932,rows933,rows934,rows935,rows936,rows937,rows938,rows939,rows940,rows941,rows942,rows943,rows944,rows945,rows946,rows947,rows948,rows949,rows950,rows951,rows952,rows953,rows954,rows955,rows956,rows957,rows958,rows959,rows960,rows961,rows962,rows963,rows964,rows965,rows966,rows967,rows968,rows969,rows970,rows971,rows972,rows973,rows974,rows975,rows976,rows977,rows978,rows979,rows980,rows981,rows982,rows983,rows984,rows985,rows986,rows987,rows988,rows989,rows990,rows991,List.append_assoc,List.append_nil]
theorem partLength13 : partOps13.length=64 := by decide
theorem partStats13 : partRows13.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows13=327024 := by
  simp only [partRows13,List.length_append,MatrixRowBlocks.rows_weight_append,stats928.1,stats928.2,stats929.1,stats929.2,stats930.1,stats930.2,stats931.1,stats931.2,stats932.1,stats932.2,stats933.1,stats933.2,stats934.1,stats934.2,stats935.1,stats935.2,stats936.1,stats936.2,stats937.1,stats937.2,stats938.1,stats938.2,stats939.1,stats939.2,stats940.1,stats940.2,stats941.1,stats941.2,stats942.1,stats942.2,stats943.1,stats943.2,stats944.1,stats944.2,stats945.1,stats945.2,stats946.1,stats946.2,stats947.1,stats947.2,stats948.1,stats948.2,stats949.1,stats949.2,stats950.1,stats950.2,stats951.1,stats951.2,stats952.1,stats952.2,stats953.1,stats953.2,stats954.1,stats954.2,stats955.1,stats955.2,stats956.1,stats956.2,stats957.1,stats957.2,stats958.1,stats958.2,stats959.1,stats959.2,stats960.1,stats960.2,stats961.1,stats961.2,stats962.1,stats962.2,stats963.1,stats963.2,stats964.1,stats964.2,stats965.1,stats965.2,stats966.1,stats966.2,stats967.1,stats967.2,stats968.1,stats968.2,stats969.1,stats969.2,stats970.1,stats970.2,stats971.1,stats971.2,stats972.1,stats972.2,stats973.1,stats973.2,stats974.1,stats974.2,stats975.1,stats975.2,stats976.1,stats976.2,stats977.1,stats977.2,stats978.1,stats978.2,stats979.1,stats979.2,stats980.1,stats980.2,stats981.1,stats981.2,stats982.1,stats982.2,stats983.1,stats983.2,stats984.1,stats984.2,stats985.1,stats985.2,stats986.1,stats986.2,stats987.1,stats987.2,stats988.1,stats988.2,stats989.1,stats989.2,stats990.1,stats990.2,stats991.1,stats991.2]
  decide
end QuotedPairedPathRoundCheckedRows
