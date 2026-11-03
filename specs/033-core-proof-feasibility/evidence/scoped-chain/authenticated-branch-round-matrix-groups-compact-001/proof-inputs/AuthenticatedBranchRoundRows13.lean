import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData14
import AuthenticatedBranchRoundInstructionMatrixData15
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows950 : actualRows950=WordField.canonicalRows actualModulus 950 (.badd 948 949) := by core033_kernel_decide
theorem stats950 : actualRows950.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows950=5388 := by core033_kernel_decide
theorem rows951 : actualRows951=WordField.canonicalRows actualModulus 951 (.bnot 950) := by core033_kernel_decide
theorem stats951 : actualRows951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows951=6276 := by core033_kernel_decide
theorem rows952 : actualRows952=WordField.canonicalRows actualModulus 952 (.bnot 247) := by core033_kernel_decide
theorem stats952 : actualRows952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows952=6276 := by core033_kernel_decide
theorem rows953 : actualRows953=WordField.canonicalRows actualModulus 953 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats953 : actualRows953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows953=2892 := by core033_kernel_decide
theorem rows954 : actualRows954=WordField.canonicalRows actualModulus 954 (.badd 952 953) := by core033_kernel_decide
theorem stats954 : actualRows954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows954=5388 := by core033_kernel_decide
theorem rows955 : actualRows955=WordField.canonicalRows actualModulus 955 (.band 954 30) := by core033_kernel_decide
theorem stats955 : actualRows955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows955=5124 := by core033_kernel_decide
theorem rows956 : actualRows956=WordField.canonicalRows actualModulus 956 (.bnot 247) := by core033_kernel_decide
theorem stats956 : actualRows956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows956=6276 := by core033_kernel_decide
theorem rows957 : actualRows957=WordField.canonicalRows actualModulus 957 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats957 : actualRows957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows957=2892 := by core033_kernel_decide
theorem rows958 : actualRows958=WordField.canonicalRows actualModulus 958 (.badd 956 957) := by core033_kernel_decide
theorem stats958 : actualRows958.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows958=5388 := by core033_kernel_decide
theorem rows959 : actualRows959=WordField.canonicalRows actualModulus 959 (.bnot 958) := by core033_kernel_decide
theorem stats959 : actualRows959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows959=6276 := by core033_kernel_decide
theorem rows960 : actualRows960=WordField.canonicalRows actualModulus 960 (.band 959 18) := by core033_kernel_decide
theorem stats960 : actualRows960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows960=5124 := by core033_kernel_decide
theorem rows961 : actualRows961=WordField.canonicalRows actualModulus 961 (.bxor 955 960) := by core033_kernel_decide
theorem stats961 : actualRows961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows961=7428 := by core033_kernel_decide
theorem rows962 : actualRows962=WordField.canonicalRows actualModulus 962 (.band 951 961) := by core033_kernel_decide
theorem stats962 : actualRows962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows962=5124 := by core033_kernel_decide
theorem rows963 : actualRows963=WordField.canonicalRows actualModulus 963 (.bxor 947 962) := by core033_kernel_decide
theorem stats963 : actualRows963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows963=7428 := by core033_kernel_decide
theorem rows964 : actualRows964=WordField.canonicalRows actualModulus 964 (.bnot 182) := by core033_kernel_decide
theorem stats964 : actualRows964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows964=6276 := by core033_kernel_decide
theorem rows965 : actualRows965=WordField.canonicalRows actualModulus 965 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats965 : actualRows965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows965=2892 := by core033_kernel_decide
theorem rows966 : actualRows966=WordField.canonicalRows actualModulus 966 (.badd 964 965) := by core033_kernel_decide
theorem stats966 : actualRows966.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows966=5388 := by core033_kernel_decide
theorem rows967 : actualRows967=WordField.canonicalRows actualModulus 967 (.band 966 104) := by core033_kernel_decide
theorem stats967 : actualRows967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows967=5124 := by core033_kernel_decide
theorem rows968 : actualRows968=WordField.canonicalRows actualModulus 968 (.bnot 182) := by core033_kernel_decide
theorem stats968 : actualRows968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows968=6276 := by core033_kernel_decide
theorem rows969 : actualRows969=WordField.canonicalRows actualModulus 969 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats969 : actualRows969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows969=2892 := by core033_kernel_decide
theorem rows970 : actualRows970=WordField.canonicalRows actualModulus 970 (.badd 968 969) := by core033_kernel_decide
theorem stats970 : actualRows970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows970=5388 := by core033_kernel_decide
theorem rows971 : actualRows971=WordField.canonicalRows actualModulus 971 (.bnot 970) := by core033_kernel_decide
theorem stats971 : actualRows971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows971=6276 := by core033_kernel_decide
theorem rows972 : actualRows972=WordField.canonicalRows actualModulus 972 (.band 971 35) := by core033_kernel_decide
theorem stats972 : actualRows972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows972=5124 := by core033_kernel_decide
theorem rows973 : actualRows973=WordField.canonicalRows actualModulus 973 (.bxor 967 972) := by core033_kernel_decide
theorem stats973 : actualRows973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows973=7428 := by core033_kernel_decide
theorem rows974 : actualRows974=WordField.canonicalRows actualModulus 974 (.bnot 182) := by core033_kernel_decide
theorem stats974 : actualRows974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows974=6276 := by core033_kernel_decide
theorem rows975 : actualRows975=WordField.canonicalRows actualModulus 975 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats975 : actualRows975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows975=2892 := by core033_kernel_decide
theorem rows976 : actualRows976=WordField.canonicalRows actualModulus 976 (.badd 974 975) := by core033_kernel_decide
theorem stats976 : actualRows976.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows976=5388 := by core033_kernel_decide
theorem rows977 : actualRows977=WordField.canonicalRows actualModulus 977 (.band 976 105) := by core033_kernel_decide
theorem stats977 : actualRows977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows977=5124 := by core033_kernel_decide
theorem rows978 : actualRows978=WordField.canonicalRows actualModulus 978 (.bnot 182) := by core033_kernel_decide
theorem stats978 : actualRows978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows978=6276 := by core033_kernel_decide
theorem rows979 : actualRows979=WordField.canonicalRows actualModulus 979 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats979 : actualRows979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows979=2892 := by core033_kernel_decide
theorem rows980 : actualRows980=WordField.canonicalRows actualModulus 980 (.badd 978 979) := by core033_kernel_decide
theorem stats980 : actualRows980.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows980=5388 := by core033_kernel_decide
theorem rows981 : actualRows981=WordField.canonicalRows actualModulus 981 (.bnot 980) := by core033_kernel_decide
theorem stats981 : actualRows981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows981=6276 := by core033_kernel_decide
theorem rows982 : actualRows982=WordField.canonicalRows actualModulus 982 (.band 981 36) := by core033_kernel_decide
theorem stats982 : actualRows982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows982=5124 := by core033_kernel_decide
theorem rows983 : actualRows983=WordField.canonicalRows actualModulus 983 (.bxor 977 982) := by core033_kernel_decide
theorem stats983 : actualRows983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows983=7428 := by core033_kernel_decide
theorem rows984 : actualRows984=WordField.canonicalRows actualModulus 984 (.bnot 182) := by core033_kernel_decide
theorem stats984 : actualRows984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows984=6276 := by core033_kernel_decide
theorem rows985 : actualRows985=WordField.canonicalRows actualModulus 985 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats985 : actualRows985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows985=2892 := by core033_kernel_decide
theorem rows986 : actualRows986=WordField.canonicalRows actualModulus 986 (.badd 984 985) := by core033_kernel_decide
theorem stats986 : actualRows986.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows986=5388 := by core033_kernel_decide
theorem rows987 : actualRows987=WordField.canonicalRows actualModulus 987 (.band 986 106) := by core033_kernel_decide
theorem stats987 : actualRows987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows987=5124 := by core033_kernel_decide
theorem rows988 : actualRows988=WordField.canonicalRows actualModulus 988 (.bnot 182) := by core033_kernel_decide
theorem stats988 : actualRows988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows988=6276 := by core033_kernel_decide
theorem rows989 : actualRows989=WordField.canonicalRows actualModulus 989 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats989 : actualRows989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows989=2892 := by core033_kernel_decide
theorem rows990 : actualRows990=WordField.canonicalRows actualModulus 990 (.badd 988 989) := by core033_kernel_decide
theorem stats990 : actualRows990.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows990=5388 := by core033_kernel_decide
theorem rows991 : actualRows991=WordField.canonicalRows actualModulus 991 (.bnot 990) := by core033_kernel_decide
theorem stats991 : actualRows991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows991=6276 := by core033_kernel_decide
theorem rows992 : actualRows992=WordField.canonicalRows actualModulus 992 (.band 991 37) := by core033_kernel_decide
theorem stats992 : actualRows992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows992=5124 := by core033_kernel_decide
theorem rows993 : actualRows993=WordField.canonicalRows actualModulus 993 (.bxor 987 992) := by core033_kernel_decide
theorem stats993 : actualRows993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows993=7428 := by core033_kernel_decide
theorem rows994 : actualRows994=WordField.canonicalRows actualModulus 994 (.bnot 182) := by core033_kernel_decide
theorem stats994 : actualRows994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows994=6276 := by core033_kernel_decide
theorem rows995 : actualRows995=WordField.canonicalRows actualModulus 995 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats995 : actualRows995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows995=2892 := by core033_kernel_decide
theorem rows996 : actualRows996=WordField.canonicalRows actualModulus 996 (.badd 994 995) := by core033_kernel_decide
theorem stats996 : actualRows996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows996=5388 := by core033_kernel_decide
theorem rows997 : actualRows997=WordField.canonicalRows actualModulus 997 (.band 996 107) := by core033_kernel_decide
theorem stats997 : actualRows997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows997=5124 := by core033_kernel_decide
theorem rows998 : actualRows998=WordField.canonicalRows actualModulus 998 (.bnot 182) := by core033_kernel_decide
theorem stats998 : actualRows998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows998=6276 := by core033_kernel_decide
theorem rows999 : actualRows999=WordField.canonicalRows actualModulus 999 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats999 : actualRows999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows999=2892 := by core033_kernel_decide
theorem rows1000 : actualRows1000=WordField.canonicalRows actualModulus 1000 (.badd 998 999) := by core033_kernel_decide
theorem stats1000 : actualRows1000.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1000=5388 := by core033_kernel_decide
theorem rows1001 : actualRows1001=WordField.canonicalRows actualModulus 1001 (.bnot 1000) := by core033_kernel_decide
theorem stats1001 : actualRows1001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1001=6276 := by core033_kernel_decide
theorem rows1002 : actualRows1002=WordField.canonicalRows actualModulus 1002 (.band 1001 38) := by core033_kernel_decide
theorem stats1002 : actualRows1002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1002=5124 := by core033_kernel_decide
theorem rows1003 : actualRows1003=WordField.canonicalRows actualModulus 1003 (.bxor 997 1002) := by core033_kernel_decide
theorem stats1003 : actualRows1003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1003=7428 := by core033_kernel_decide
theorem rows1004 : actualRows1004=WordField.canonicalRows actualModulus 1004 (.bnot 182) := by core033_kernel_decide
theorem stats1004 : actualRows1004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1004=6276 := by core033_kernel_decide
theorem rows1005 : actualRows1005=WordField.canonicalRows actualModulus 1005 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1005 : actualRows1005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1005=2892 := by core033_kernel_decide
theorem rows1006 : actualRows1006=WordField.canonicalRows actualModulus 1006 (.badd 1004 1005) := by core033_kernel_decide
theorem stats1006 : actualRows1006.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1006=5388 := by core033_kernel_decide
theorem rows1007 : actualRows1007=WordField.canonicalRows actualModulus 1007 (.band 1006 108) := by core033_kernel_decide
theorem stats1007 : actualRows1007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1007=5124 := by core033_kernel_decide
theorem rows1008 : actualRows1008=WordField.canonicalRows actualModulus 1008 (.bnot 182) := by core033_kernel_decide
theorem stats1008 : actualRows1008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1008=6276 := by core033_kernel_decide
theorem rows1009 : actualRows1009=WordField.canonicalRows actualModulus 1009 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1009 : actualRows1009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1009=2892 := by core033_kernel_decide
theorem rows1010 : actualRows1010=WordField.canonicalRows actualModulus 1010 (.badd 1008 1009) := by core033_kernel_decide
theorem stats1010 : actualRows1010.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1010=5388 := by core033_kernel_decide
theorem rows1011 : actualRows1011=WordField.canonicalRows actualModulus 1011 (.bnot 1010) := by core033_kernel_decide
theorem stats1011 : actualRows1011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1011=6276 := by core033_kernel_decide
theorem rows1012 : actualRows1012=WordField.canonicalRows actualModulus 1012 (.band 1011 39) := by core033_kernel_decide
theorem stats1012 : actualRows1012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1012=5124 := by core033_kernel_decide
theorem rows1013 : actualRows1013=WordField.canonicalRows actualModulus 1013 (.bxor 1007 1012) := by core033_kernel_decide
theorem stats1013 : actualRows1013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1013=7428 := by core033_kernel_decide
def partRows13 : List R1CS.Row := actualRows950++actualRows951++actualRows952++actualRows953++actualRows954++actualRows955++actualRows956++actualRows957++actualRows958++actualRows959++actualRows960++actualRows961++actualRows962++actualRows963++actualRows964++actualRows965++actualRows966++actualRows967++actualRows968++actualRows969++actualRows970++actualRows971++actualRows972++actualRows973++actualRows974++actualRows975++actualRows976++actualRows977++actualRows978++actualRows979++actualRows980++actualRows981++actualRows982++actualRows983++actualRows984++actualRows985++actualRows986++actualRows987++actualRows988++actualRows989++actualRows990++actualRows991++actualRows992++actualRows993++actualRows994++actualRows995++actualRows996++actualRows997++actualRows998++actualRows999++actualRows1000++actualRows1001++actualRows1002++actualRows1003++actualRows1004++actualRows1005++actualRows1006++actualRows1007++actualRows1008++actualRows1009++actualRows1010++actualRows1011++actualRows1012++actualRows1013
def partOps13 : List WordIR.Op := [.badd 948 949,.bnot 950,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 952 953,.band 954 30,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 956 957,.bnot 958,.band 959 18,.bxor 955 960,.band 951 961,.bxor 947 962,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 964 965,.band 966 104,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 968 969,.bnot 970,.band 971 35,.bxor 967 972,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 974 975,.band 976 105,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 978 979,.bnot 980,.band 981 36,.bxor 977 982,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 984 985,.band 986 106,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 988 989,.bnot 990,.band 991 37,.bxor 987 992,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 994 995,.band 996 107,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 998 999,.bnot 1000,.band 1001 38,.bxor 997 1002,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1004 1005,.band 1006 108,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1008 1009,.bnot 1010,.band 1011 39,.bxor 1007 1012]
theorem partExact13 : partRows13=WordField.rows actualModulus 950 partOps13 := by
  simp only [partRows13,partOps13,WordField.rows,rows950,rows951,rows952,rows953,rows954,rows955,rows956,rows957,rows958,rows959,rows960,rows961,rows962,rows963,rows964,rows965,rows966,rows967,rows968,rows969,rows970,rows971,rows972,rows973,rows974,rows975,rows976,rows977,rows978,rows979,rows980,rows981,rows982,rows983,rows984,rows985,rows986,rows987,rows988,rows989,rows990,rows991,rows992,rows993,rows994,rows995,rows996,rows997,rows998,rows999,rows1000,rows1001,rows1002,rows1003,rows1004,rows1005,rows1006,rows1007,rows1008,rows1009,rows1010,rows1011,rows1012,rows1013,List.append_assoc,List.append_nil]
theorem partLength13 : partOps13.length=64 := by decide
theorem partStats13 : partRows13.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows13=342600 := by
  simp only [partRows13,List.length_append,MatrixRowBlocks.rows_weight_append,stats950.1,stats950.2,stats951.1,stats951.2,stats952.1,stats952.2,stats953.1,stats953.2,stats954.1,stats954.2,stats955.1,stats955.2,stats956.1,stats956.2,stats957.1,stats957.2,stats958.1,stats958.2,stats959.1,stats959.2,stats960.1,stats960.2,stats961.1,stats961.2,stats962.1,stats962.2,stats963.1,stats963.2,stats964.1,stats964.2,stats965.1,stats965.2,stats966.1,stats966.2,stats967.1,stats967.2,stats968.1,stats968.2,stats969.1,stats969.2,stats970.1,stats970.2,stats971.1,stats971.2,stats972.1,stats972.2,stats973.1,stats973.2,stats974.1,stats974.2,stats975.1,stats975.2,stats976.1,stats976.2,stats977.1,stats977.2,stats978.1,stats978.2,stats979.1,stats979.2,stats980.1,stats980.2,stats981.1,stats981.2,stats982.1,stats982.2,stats983.1,stats983.2,stats984.1,stats984.2,stats985.1,stats985.2,stats986.1,stats986.2,stats987.1,stats987.2,stats988.1,stats988.2,stats989.1,stats989.2,stats990.1,stats990.2,stats991.1,stats991.2,stats992.1,stats992.2,stats993.1,stats993.2,stats994.1,stats994.2,stats995.1,stats995.2,stats996.1,stats996.2,stats997.1,stats997.2,stats998.1,stats998.2,stats999.1,stats999.2,stats1000.1,stats1000.2,stats1001.1,stats1001.2,stats1002.1,stats1002.2,stats1003.1,stats1003.2,stats1004.1,stats1004.2,stats1005.1,stats1005.2,stats1006.1,stats1006.2,stats1007.1,stats1007.2,stats1008.1,stats1008.2,stats1009.1,stats1009.2,stats1010.1,stats1010.2,stats1011.1,stats1011.2,stats1012.1,stats1012.2,stats1013.1,stats1013.2]
  decide
end AuthenticatedBranchRoundCheckedRows
