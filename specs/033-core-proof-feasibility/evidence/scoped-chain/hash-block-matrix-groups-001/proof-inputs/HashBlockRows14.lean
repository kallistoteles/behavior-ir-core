import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData15
import HashBlockInstructionMatrixData16
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows968 : actualRows968=WordField.canonicalRows actualModulus 968 (.shr 52 8) := by core033_kernel_decide
theorem stats968 : actualRows968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows968=4548 := by core033_kernel_decide
theorem rows969 : actualRows969=WordField.canonicalRows actualModulus 969 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats969 : actualRows969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows969=2820 := by core033_kernel_decide
theorem rows970 : actualRows970=WordField.canonicalRows actualModulus 970 (.bnot 969) := by core033_kernel_decide
theorem stats970 : actualRows970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows970=6276 := by core033_kernel_decide
theorem rows971 : actualRows971=WordField.canonicalRows actualModulus 971 (.badd 968 970) := by core033_kernel_decide
theorem stats971 : actualRows971.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows971=5388 := by core033_kernel_decide
theorem rows972 : actualRows972=WordField.canonicalRows actualModulus 972 (.bnot 971) := by core033_kernel_decide
theorem stats972 : actualRows972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows972=6276 := by core033_kernel_decide
theorem rows973 : actualRows973=WordField.canonicalRows actualModulus 973 (.band 967 972) := by core033_kernel_decide
theorem stats973 : actualRows973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows973=5124 := by core033_kernel_decide
theorem rows974 : actualRows974=WordField.canonicalRows actualModulus 974 (.bxor 963 973) := by core033_kernel_decide
theorem stats974 : actualRows974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows974=7428 := by core033_kernel_decide
theorem rows975 : actualRows975=WordField.canonicalRows actualModulus 975 (.shr 974 31) := by core033_kernel_decide
theorem stats975 : actualRows975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows975=2892 := by core033_kernel_decide
theorem rows976 : actualRows976=WordField.canonicalRows actualModulus 976 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats976 : actualRows976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows976=2892 := by core033_kernel_decide
theorem rows977 : actualRows977=WordField.canonicalRows actualModulus 977 (.bxor 975 976) := by core033_kernel_decide
theorem stats977 : actualRows977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows977=7428 := by core033_kernel_decide
theorem rows978 : actualRows978=WordField.canonicalRows actualModulus 978 (.shr 53 8) := by core033_kernel_decide
theorem stats978 : actualRows978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows978=4548 := by core033_kernel_decide
theorem rows979 : actualRows979=WordField.canonicalRows actualModulus 979 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats979 : actualRows979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows979=2820 := by core033_kernel_decide
theorem rows980 : actualRows980=WordField.canonicalRows actualModulus 980 (.bnot 979) := by core033_kernel_decide
theorem stats980 : actualRows980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows980=6276 := by core033_kernel_decide
theorem rows981 : actualRows981=WordField.canonicalRows actualModulus 981 (.band 978 980) := by core033_kernel_decide
theorem stats981 : actualRows981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows981=5124 := by core033_kernel_decide
theorem rows982 : actualRows982=WordField.canonicalRows actualModulus 982 (.shr 53 8) := by core033_kernel_decide
theorem stats982 : actualRows982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows982=4548 := by core033_kernel_decide
theorem rows983 : actualRows983=WordField.canonicalRows actualModulus 983 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats983 : actualRows983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows983=2820 := by core033_kernel_decide
theorem rows984 : actualRows984=WordField.canonicalRows actualModulus 984 (.bnot 983) := by core033_kernel_decide
theorem stats984 : actualRows984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows984=6276 := by core033_kernel_decide
theorem rows985 : actualRows985=WordField.canonicalRows actualModulus 985 (.bxor 982 984) := by core033_kernel_decide
theorem stats985 : actualRows985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows985=7428 := by core033_kernel_decide
theorem rows986 : actualRows986=WordField.canonicalRows actualModulus 986 (.shr 53 8) := by core033_kernel_decide
theorem stats986 : actualRows986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows986=4548 := by core033_kernel_decide
theorem rows987 : actualRows987=WordField.canonicalRows actualModulus 987 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats987 : actualRows987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows987=2820 := by core033_kernel_decide
theorem rows988 : actualRows988=WordField.canonicalRows actualModulus 988 (.bnot 987) := by core033_kernel_decide
theorem stats988 : actualRows988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows988=6276 := by core033_kernel_decide
theorem rows989 : actualRows989=WordField.canonicalRows actualModulus 989 (.badd 986 988) := by core033_kernel_decide
theorem stats989 : actualRows989.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows989=5388 := by core033_kernel_decide
theorem rows990 : actualRows990=WordField.canonicalRows actualModulus 990 (.bnot 989) := by core033_kernel_decide
theorem stats990 : actualRows990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows990=6276 := by core033_kernel_decide
theorem rows991 : actualRows991=WordField.canonicalRows actualModulus 991 (.band 985 990) := by core033_kernel_decide
theorem stats991 : actualRows991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows991=5124 := by core033_kernel_decide
theorem rows992 : actualRows992=WordField.canonicalRows actualModulus 992 (.bxor 981 991) := by core033_kernel_decide
theorem stats992 : actualRows992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows992=7428 := by core033_kernel_decide
theorem rows993 : actualRows993=WordField.canonicalRows actualModulus 993 (.shr 992 31) := by core033_kernel_decide
theorem stats993 : actualRows993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows993=2892 := by core033_kernel_decide
theorem rows994 : actualRows994=WordField.canonicalRows actualModulus 994 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats994 : actualRows994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows994=2892 := by core033_kernel_decide
theorem rows995 : actualRows995=WordField.canonicalRows actualModulus 995 (.bxor 993 994) := by core033_kernel_decide
theorem stats995 : actualRows995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows995=7428 := by core033_kernel_decide
theorem rows996 : actualRows996=WordField.canonicalRows actualModulus 996 (.shr 54 8) := by core033_kernel_decide
theorem stats996 : actualRows996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows996=4548 := by core033_kernel_decide
theorem rows997 : actualRows997=WordField.canonicalRows actualModulus 997 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats997 : actualRows997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows997=2820 := by core033_kernel_decide
theorem rows998 : actualRows998=WordField.canonicalRows actualModulus 998 (.bnot 997) := by core033_kernel_decide
theorem stats998 : actualRows998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows998=6276 := by core033_kernel_decide
theorem rows999 : actualRows999=WordField.canonicalRows actualModulus 999 (.band 996 998) := by core033_kernel_decide
theorem stats999 : actualRows999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows999=5124 := by core033_kernel_decide
theorem rows1000 : actualRows1000=WordField.canonicalRows actualModulus 1000 (.shr 54 8) := by core033_kernel_decide
theorem stats1000 : actualRows1000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1000=4548 := by core033_kernel_decide
theorem rows1001 : actualRows1001=WordField.canonicalRows actualModulus 1001 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1001 : actualRows1001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1001=2820 := by core033_kernel_decide
theorem rows1002 : actualRows1002=WordField.canonicalRows actualModulus 1002 (.bnot 1001) := by core033_kernel_decide
theorem stats1002 : actualRows1002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1002=6276 := by core033_kernel_decide
theorem rows1003 : actualRows1003=WordField.canonicalRows actualModulus 1003 (.bxor 1000 1002) := by core033_kernel_decide
theorem stats1003 : actualRows1003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1003=7428 := by core033_kernel_decide
theorem rows1004 : actualRows1004=WordField.canonicalRows actualModulus 1004 (.shr 54 8) := by core033_kernel_decide
theorem stats1004 : actualRows1004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1004=4548 := by core033_kernel_decide
theorem rows1005 : actualRows1005=WordField.canonicalRows actualModulus 1005 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1005 : actualRows1005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1005=2820 := by core033_kernel_decide
theorem rows1006 : actualRows1006=WordField.canonicalRows actualModulus 1006 (.bnot 1005) := by core033_kernel_decide
theorem stats1006 : actualRows1006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1006=6276 := by core033_kernel_decide
theorem rows1007 : actualRows1007=WordField.canonicalRows actualModulus 1007 (.badd 1004 1006) := by core033_kernel_decide
theorem stats1007 : actualRows1007.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1007=5388 := by core033_kernel_decide
theorem rows1008 : actualRows1008=WordField.canonicalRows actualModulus 1008 (.bnot 1007) := by core033_kernel_decide
theorem stats1008 : actualRows1008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1008=6276 := by core033_kernel_decide
theorem rows1009 : actualRows1009=WordField.canonicalRows actualModulus 1009 (.band 1003 1008) := by core033_kernel_decide
theorem stats1009 : actualRows1009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1009=5124 := by core033_kernel_decide
theorem rows1010 : actualRows1010=WordField.canonicalRows actualModulus 1010 (.bxor 999 1009) := by core033_kernel_decide
theorem stats1010 : actualRows1010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1010=7428 := by core033_kernel_decide
theorem rows1011 : actualRows1011=WordField.canonicalRows actualModulus 1011 (.shr 1010 31) := by core033_kernel_decide
theorem stats1011 : actualRows1011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1011=2892 := by core033_kernel_decide
theorem rows1012 : actualRows1012=WordField.canonicalRows actualModulus 1012 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1012 : actualRows1012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1012=2892 := by core033_kernel_decide
theorem rows1013 : actualRows1013=WordField.canonicalRows actualModulus 1013 (.bxor 1011 1012) := by core033_kernel_decide
theorem stats1013 : actualRows1013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1013=7428 := by core033_kernel_decide
theorem rows1014 : actualRows1014=WordField.canonicalRows actualModulus 1014 (.shr 55 8) := by core033_kernel_decide
theorem stats1014 : actualRows1014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1014=4548 := by core033_kernel_decide
theorem rows1015 : actualRows1015=WordField.canonicalRows actualModulus 1015 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1015 : actualRows1015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1015=2820 := by core033_kernel_decide
theorem rows1016 : actualRows1016=WordField.canonicalRows actualModulus 1016 (.bnot 1015) := by core033_kernel_decide
theorem stats1016 : actualRows1016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1016=6276 := by core033_kernel_decide
theorem rows1017 : actualRows1017=WordField.canonicalRows actualModulus 1017 (.band 1014 1016) := by core033_kernel_decide
theorem stats1017 : actualRows1017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1017=5124 := by core033_kernel_decide
theorem rows1018 : actualRows1018=WordField.canonicalRows actualModulus 1018 (.shr 55 8) := by core033_kernel_decide
theorem stats1018 : actualRows1018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1018=4548 := by core033_kernel_decide
theorem rows1019 : actualRows1019=WordField.canonicalRows actualModulus 1019 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1019 : actualRows1019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1019=2820 := by core033_kernel_decide
theorem rows1020 : actualRows1020=WordField.canonicalRows actualModulus 1020 (.bnot 1019) := by core033_kernel_decide
theorem stats1020 : actualRows1020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1020=6276 := by core033_kernel_decide
theorem rows1021 : actualRows1021=WordField.canonicalRows actualModulus 1021 (.bxor 1018 1020) := by core033_kernel_decide
theorem stats1021 : actualRows1021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1021=7428 := by core033_kernel_decide
theorem rows1022 : actualRows1022=WordField.canonicalRows actualModulus 1022 (.shr 55 8) := by core033_kernel_decide
theorem stats1022 : actualRows1022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1022=4548 := by core033_kernel_decide
theorem rows1023 : actualRows1023=WordField.canonicalRows actualModulus 1023 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1023 : actualRows1023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1023=2820 := by core033_kernel_decide
theorem rows1024 : actualRows1024=WordField.canonicalRows actualModulus 1024 (.bnot 1023) := by core033_kernel_decide
theorem stats1024 : actualRows1024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1024=6276 := by core033_kernel_decide
theorem rows1025 : actualRows1025=WordField.canonicalRows actualModulus 1025 (.badd 1022 1024) := by core033_kernel_decide
theorem stats1025 : actualRows1025.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1025=5388 := by core033_kernel_decide
theorem rows1026 : actualRows1026=WordField.canonicalRows actualModulus 1026 (.bnot 1025) := by core033_kernel_decide
theorem stats1026 : actualRows1026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1026=6276 := by core033_kernel_decide
theorem rows1027 : actualRows1027=WordField.canonicalRows actualModulus 1027 (.band 1021 1026) := by core033_kernel_decide
theorem stats1027 : actualRows1027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1027=5124 := by core033_kernel_decide
theorem rows1028 : actualRows1028=WordField.canonicalRows actualModulus 1028 (.bxor 1017 1027) := by core033_kernel_decide
theorem stats1028 : actualRows1028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1028=7428 := by core033_kernel_decide
theorem rows1029 : actualRows1029=WordField.canonicalRows actualModulus 1029 (.shr 1028 31) := by core033_kernel_decide
theorem stats1029 : actualRows1029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1029=2892 := by core033_kernel_decide
theorem rows1030 : actualRows1030=WordField.canonicalRows actualModulus 1030 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1030 : actualRows1030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1030=2892 := by core033_kernel_decide
theorem rows1031 : actualRows1031=WordField.canonicalRows actualModulus 1031 (.bxor 1029 1030) := by core033_kernel_decide
theorem stats1031 : actualRows1031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1031=7428 := by core033_kernel_decide
def partRows14 : List R1CS.Row := actualRows968++actualRows969++actualRows970++actualRows971++actualRows972++actualRows973++actualRows974++actualRows975++actualRows976++actualRows977++actualRows978++actualRows979++actualRows980++actualRows981++actualRows982++actualRows983++actualRows984++actualRows985++actualRows986++actualRows987++actualRows988++actualRows989++actualRows990++actualRows991++actualRows992++actualRows993++actualRows994++actualRows995++actualRows996++actualRows997++actualRows998++actualRows999++actualRows1000++actualRows1001++actualRows1002++actualRows1003++actualRows1004++actualRows1005++actualRows1006++actualRows1007++actualRows1008++actualRows1009++actualRows1010++actualRows1011++actualRows1012++actualRows1013++actualRows1014++actualRows1015++actualRows1016++actualRows1017++actualRows1018++actualRows1019++actualRows1020++actualRows1021++actualRows1022++actualRows1023++actualRows1024++actualRows1025++actualRows1026++actualRows1027++actualRows1028++actualRows1029++actualRows1030++actualRows1031
def partOps14 : List WordIR.Op := [.shr 52 8,.literal (BitVec.ofNat 32 0),.bnot 969,.badd 968 970,.bnot 971,.band 967 972,.bxor 963 973,.shr 974 31,.literal (BitVec.ofNat 32 1),.bxor 975 976,.shr 53 8,.literal (BitVec.ofNat 32 0),.bnot 979,.band 978 980,.shr 53 8,.literal (BitVec.ofNat 32 0),.bnot 983,.bxor 982 984,.shr 53 8,.literal (BitVec.ofNat 32 0),.bnot 987,.badd 986 988,.bnot 989,.band 985 990,.bxor 981 991,.shr 992 31,.literal (BitVec.ofNat 32 1),.bxor 993 994,.shr 54 8,.literal (BitVec.ofNat 32 0),.bnot 997,.band 996 998,.shr 54 8,.literal (BitVec.ofNat 32 0),.bnot 1001,.bxor 1000 1002,.shr 54 8,.literal (BitVec.ofNat 32 0),.bnot 1005,.badd 1004 1006,.bnot 1007,.band 1003 1008,.bxor 999 1009,.shr 1010 31,.literal (BitVec.ofNat 32 1),.bxor 1011 1012,.shr 55 8,.literal (BitVec.ofNat 32 0),.bnot 1015,.band 1014 1016,.shr 55 8,.literal (BitVec.ofNat 32 0),.bnot 1019,.bxor 1018 1020,.shr 55 8,.literal (BitVec.ofNat 32 0),.bnot 1023,.badd 1022 1024,.bnot 1025,.band 1021 1026,.bxor 1017 1027,.shr 1028 31,.literal (BitVec.ofNat 32 1),.bxor 1029 1030]
theorem partExact14 : partRows14=WordField.rows actualModulus 968 partOps14 := by
  simp only [partRows14,partOps14,WordField.rows,rows968,rows969,rows970,rows971,rows972,rows973,rows974,rows975,rows976,rows977,rows978,rows979,rows980,rows981,rows982,rows983,rows984,rows985,rows986,rows987,rows988,rows989,rows990,rows991,rows992,rows993,rows994,rows995,rows996,rows997,rows998,rows999,rows1000,rows1001,rows1002,rows1003,rows1004,rows1005,rows1006,rows1007,rows1008,rows1009,rows1010,rows1011,rows1012,rows1013,rows1014,rows1015,rows1016,rows1017,rows1018,rows1019,rows1020,rows1021,rows1022,rows1023,rows1024,rows1025,rows1026,rows1027,rows1028,rows1029,rows1030,rows1031,List.append_assoc,List.append_nil]
theorem partLength14 : partOps14.length=64 := by decide
theorem partStats14 : partRows14.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows14=323808 := by
  simp only [partRows14,List.length_append,MatrixRowBlocks.rows_weight_append,stats968.1,stats968.2,stats969.1,stats969.2,stats970.1,stats970.2,stats971.1,stats971.2,stats972.1,stats972.2,stats973.1,stats973.2,stats974.1,stats974.2,stats975.1,stats975.2,stats976.1,stats976.2,stats977.1,stats977.2,stats978.1,stats978.2,stats979.1,stats979.2,stats980.1,stats980.2,stats981.1,stats981.2,stats982.1,stats982.2,stats983.1,stats983.2,stats984.1,stats984.2,stats985.1,stats985.2,stats986.1,stats986.2,stats987.1,stats987.2,stats988.1,stats988.2,stats989.1,stats989.2,stats990.1,stats990.2,stats991.1,stats991.2,stats992.1,stats992.2,stats993.1,stats993.2,stats994.1,stats994.2,stats995.1,stats995.2,stats996.1,stats996.2,stats997.1,stats997.2,stats998.1,stats998.2,stats999.1,stats999.2,stats1000.1,stats1000.2,stats1001.1,stats1001.2,stats1002.1,stats1002.2,stats1003.1,stats1003.2,stats1004.1,stats1004.2,stats1005.1,stats1005.2,stats1006.1,stats1006.2,stats1007.1,stats1007.2,stats1008.1,stats1008.2,stats1009.1,stats1009.2,stats1010.1,stats1010.2,stats1011.1,stats1011.2,stats1012.1,stats1012.2,stats1013.1,stats1013.2,stats1014.1,stats1014.2,stats1015.1,stats1015.2,stats1016.1,stats1016.2,stats1017.1,stats1017.2,stats1018.1,stats1018.2,stats1019.1,stats1019.2,stats1020.1,stats1020.2,stats1021.1,stats1021.2,stats1022.1,stats1022.2,stats1023.1,stats1023.2,stats1024.1,stats1024.2,stats1025.1,stats1025.2,stats1026.1,stats1026.2,stats1027.1,stats1027.2,stats1028.1,stats1028.2,stats1029.1,stats1029.2,stats1030.1,stats1030.2,stats1031.1,stats1031.2]
  decide
end HashBlockCheckedRows
