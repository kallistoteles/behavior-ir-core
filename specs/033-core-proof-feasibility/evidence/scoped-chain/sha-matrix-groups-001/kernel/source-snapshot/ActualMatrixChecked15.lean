import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData15
import ActualMatrixData16
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows984 : actualRows984=WordField.canonicalRows actualModulus 984 (.badd 982 983) := by core033_kernel_decide
theorem stats984 : actualRows984.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows984=5388 := by core033_kernel_decide
theorem rows985 : actualRows985=WordField.canonicalRows actualModulus 985 (.badd 984 20) := by core033_kernel_decide
theorem stats985 : actualRows985.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows985=5388 := by core033_kernel_decide
theorem rows986 : actualRows986=WordField.canonicalRows actualModulus 986 (.rotr 970 2) := by core033_kernel_decide
theorem stats986 : actualRows986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows986=5124 := by core033_kernel_decide
theorem rows987 : actualRows987=WordField.canonicalRows actualModulus 987 (.rotr 970 13) := by core033_kernel_decide
theorem stats987 : actualRows987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows987=5124 := by core033_kernel_decide
theorem rows988 : actualRows988=WordField.canonicalRows actualModulus 988 (.bxor 986 987) := by core033_kernel_decide
theorem stats988 : actualRows988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows988=7428 := by core033_kernel_decide
theorem rows989 : actualRows989=WordField.canonicalRows actualModulus 989 (.rotr 970 22) := by core033_kernel_decide
theorem stats989 : actualRows989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows989=5124 := by core033_kernel_decide
theorem rows990 : actualRows990=WordField.canonicalRows actualModulus 990 (.bxor 988 989) := by core033_kernel_decide
theorem stats990 : actualRows990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows990=7428 := by core033_kernel_decide
theorem rows991 : actualRows991=WordField.canonicalRows actualModulus 991 (.band 970 943) := by core033_kernel_decide
theorem stats991 : actualRows991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows991=5124 := by core033_kernel_decide
theorem rows992 : actualRows992=WordField.canonicalRows actualModulus 992 (.band 970 916) := by core033_kernel_decide
theorem stats992 : actualRows992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows992=5124 := by core033_kernel_decide
theorem rows993 : actualRows993=WordField.canonicalRows actualModulus 993 (.bxor 991 992) := by core033_kernel_decide
theorem stats993 : actualRows993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows993=7428 := by core033_kernel_decide
theorem rows994 : actualRows994=WordField.canonicalRows actualModulus 994 (.band 943 916) := by core033_kernel_decide
theorem stats994 : actualRows994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows994=5124 := by core033_kernel_decide
theorem rows995 : actualRows995=WordField.canonicalRows actualModulus 995 (.bxor 993 994) := by core033_kernel_decide
theorem stats995 : actualRows995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows995=7428 := by core033_kernel_decide
theorem rows996 : actualRows996=WordField.canonicalRows actualModulus 996 (.badd 990 995) := by core033_kernel_decide
theorem stats996 : actualRows996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows996=5388 := by core033_kernel_decide
theorem rows997 : actualRows997=WordField.canonicalRows actualModulus 997 (.badd 985 996) := by core033_kernel_decide
theorem stats997 : actualRows997.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows997=5388 := by core033_kernel_decide
theorem rows998 : actualRows998=WordField.canonicalRows actualModulus 998 (.badd 889 985) := by core033_kernel_decide
theorem stats998 : actualRows998.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows998=5388 := by core033_kernel_decide
theorem rows999 : actualRows999=WordField.canonicalRows actualModulus 999 (.rotr 998 6) := by core033_kernel_decide
theorem stats999 : actualRows999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows999=5124 := by core033_kernel_decide
theorem rows1000 : actualRows1000=WordField.canonicalRows actualModulus 1000 (.rotr 998 11) := by core033_kernel_decide
theorem stats1000 : actualRows1000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1000=5124 := by core033_kernel_decide
theorem rows1001 : actualRows1001=WordField.canonicalRows actualModulus 1001 (.bxor 999 1000) := by core033_kernel_decide
theorem stats1001 : actualRows1001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1001=7428 := by core033_kernel_decide
theorem rows1002 : actualRows1002=WordField.canonicalRows actualModulus 1002 (.rotr 998 25) := by core033_kernel_decide
theorem stats1002 : actualRows1002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1002=5124 := by core033_kernel_decide
theorem rows1003 : actualRows1003=WordField.canonicalRows actualModulus 1003 (.bxor 1001 1002) := by core033_kernel_decide
theorem stats1003 : actualRows1003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1003=7428 := by core033_kernel_decide
theorem rows1004 : actualRows1004=WordField.canonicalRows actualModulus 1004 (.badd 917 1003) := by core033_kernel_decide
theorem stats1004 : actualRows1004.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1004=5388 := by core033_kernel_decide
theorem rows1005 : actualRows1005=WordField.canonicalRows actualModulus 1005 (.band 998 971) := by core033_kernel_decide
theorem stats1005 : actualRows1005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1005=5124 := by core033_kernel_decide
theorem rows1006 : actualRows1006=WordField.canonicalRows actualModulus 1006 (.bnot 998) := by core033_kernel_decide
theorem stats1006 : actualRows1006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1006=6276 := by core033_kernel_decide
theorem rows1007 : actualRows1007=WordField.canonicalRows actualModulus 1007 (.band 1006 944) := by core033_kernel_decide
theorem stats1007 : actualRows1007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1007=5124 := by core033_kernel_decide
theorem rows1008 : actualRows1008=WordField.canonicalRows actualModulus 1008 (.bxor 1005 1007) := by core033_kernel_decide
theorem stats1008 : actualRows1008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1008=7428 := by core033_kernel_decide
theorem rows1009 : actualRows1009=WordField.canonicalRows actualModulus 1009 (.badd 1004 1008) := by core033_kernel_decide
theorem stats1009 : actualRows1009.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1009=5388 := by core033_kernel_decide
theorem rows1010 : actualRows1010=WordField.canonicalRows actualModulus 1010 (.literal (BitVec.ofNat 32 2162078206)) := by core033_kernel_decide
theorem stats1010 : actualRows1010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1010=4116 := by core033_kernel_decide
theorem rows1011 : actualRows1011=WordField.canonicalRows actualModulus 1011 (.badd 1009 1010) := by core033_kernel_decide
theorem stats1011 : actualRows1011.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1011=5388 := by core033_kernel_decide
theorem rows1012 : actualRows1012=WordField.canonicalRows actualModulus 1012 (.badd 1011 21) := by core033_kernel_decide
theorem stats1012 : actualRows1012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1012=5388 := by core033_kernel_decide
theorem rows1013 : actualRows1013=WordField.canonicalRows actualModulus 1013 (.rotr 997 2) := by core033_kernel_decide
theorem stats1013 : actualRows1013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1013=5124 := by core033_kernel_decide
theorem rows1014 : actualRows1014=WordField.canonicalRows actualModulus 1014 (.rotr 997 13) := by core033_kernel_decide
theorem stats1014 : actualRows1014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1014=5124 := by core033_kernel_decide
theorem rows1015 : actualRows1015=WordField.canonicalRows actualModulus 1015 (.bxor 1013 1014) := by core033_kernel_decide
theorem stats1015 : actualRows1015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1015=7428 := by core033_kernel_decide
theorem rows1016 : actualRows1016=WordField.canonicalRows actualModulus 1016 (.rotr 997 22) := by core033_kernel_decide
theorem stats1016 : actualRows1016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1016=5124 := by core033_kernel_decide
theorem rows1017 : actualRows1017=WordField.canonicalRows actualModulus 1017 (.bxor 1015 1016) := by core033_kernel_decide
theorem stats1017 : actualRows1017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1017=7428 := by core033_kernel_decide
theorem rows1018 : actualRows1018=WordField.canonicalRows actualModulus 1018 (.band 997 970) := by core033_kernel_decide
theorem stats1018 : actualRows1018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1018=5124 := by core033_kernel_decide
theorem rows1019 : actualRows1019=WordField.canonicalRows actualModulus 1019 (.band 997 943) := by core033_kernel_decide
theorem stats1019 : actualRows1019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1019=5124 := by core033_kernel_decide
theorem rows1020 : actualRows1020=WordField.canonicalRows actualModulus 1020 (.bxor 1018 1019) := by core033_kernel_decide
theorem stats1020 : actualRows1020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1020=7428 := by core033_kernel_decide
theorem rows1021 : actualRows1021=WordField.canonicalRows actualModulus 1021 (.band 970 943) := by core033_kernel_decide
theorem stats1021 : actualRows1021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1021=5124 := by core033_kernel_decide
theorem rows1022 : actualRows1022=WordField.canonicalRows actualModulus 1022 (.bxor 1020 1021) := by core033_kernel_decide
theorem stats1022 : actualRows1022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1022=7428 := by core033_kernel_decide
theorem rows1023 : actualRows1023=WordField.canonicalRows actualModulus 1023 (.badd 1017 1022) := by core033_kernel_decide
theorem stats1023 : actualRows1023.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1023=5388 := by core033_kernel_decide
theorem rows1024 : actualRows1024=WordField.canonicalRows actualModulus 1024 (.badd 1012 1023) := by core033_kernel_decide
theorem stats1024 : actualRows1024.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1024=5388 := by core033_kernel_decide
theorem rows1025 : actualRows1025=WordField.canonicalRows actualModulus 1025 (.badd 916 1012) := by core033_kernel_decide
theorem stats1025 : actualRows1025.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1025=5388 := by core033_kernel_decide
theorem rows1026 : actualRows1026=WordField.canonicalRows actualModulus 1026 (.rotr 1025 6) := by core033_kernel_decide
theorem stats1026 : actualRows1026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1026=5124 := by core033_kernel_decide
theorem rows1027 : actualRows1027=WordField.canonicalRows actualModulus 1027 (.rotr 1025 11) := by core033_kernel_decide
theorem stats1027 : actualRows1027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1027=5124 := by core033_kernel_decide
theorem rows1028 : actualRows1028=WordField.canonicalRows actualModulus 1028 (.bxor 1026 1027) := by core033_kernel_decide
theorem stats1028 : actualRows1028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1028=7428 := by core033_kernel_decide
theorem rows1029 : actualRows1029=WordField.canonicalRows actualModulus 1029 (.rotr 1025 25) := by core033_kernel_decide
theorem stats1029 : actualRows1029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1029=5124 := by core033_kernel_decide
theorem rows1030 : actualRows1030=WordField.canonicalRows actualModulus 1030 (.bxor 1028 1029) := by core033_kernel_decide
theorem stats1030 : actualRows1030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1030=7428 := by core033_kernel_decide
theorem rows1031 : actualRows1031=WordField.canonicalRows actualModulus 1031 (.badd 944 1030) := by core033_kernel_decide
theorem stats1031 : actualRows1031.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1031=5388 := by core033_kernel_decide
theorem rows1032 : actualRows1032=WordField.canonicalRows actualModulus 1032 (.band 1025 998) := by core033_kernel_decide
theorem stats1032 : actualRows1032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1032=5124 := by core033_kernel_decide
theorem rows1033 : actualRows1033=WordField.canonicalRows actualModulus 1033 (.bnot 1025) := by core033_kernel_decide
theorem stats1033 : actualRows1033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1033=6276 := by core033_kernel_decide
theorem rows1034 : actualRows1034=WordField.canonicalRows actualModulus 1034 (.band 1033 971) := by core033_kernel_decide
theorem stats1034 : actualRows1034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1034=5124 := by core033_kernel_decide
theorem rows1035 : actualRows1035=WordField.canonicalRows actualModulus 1035 (.bxor 1032 1034) := by core033_kernel_decide
theorem stats1035 : actualRows1035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1035=7428 := by core033_kernel_decide
theorem rows1036 : actualRows1036=WordField.canonicalRows actualModulus 1036 (.badd 1031 1035) := by core033_kernel_decide
theorem stats1036 : actualRows1036.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1036=5388 := by core033_kernel_decide
theorem rows1037 : actualRows1037=WordField.canonicalRows actualModulus 1037 (.literal (BitVec.ofNat 32 2614888103)) := by core033_kernel_decide
theorem stats1037 : actualRows1037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1037=4044 := by core033_kernel_decide
theorem rows1038 : actualRows1038=WordField.canonicalRows actualModulus 1038 (.badd 1036 1037) := by core033_kernel_decide
theorem stats1038 : actualRows1038.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1038=5388 := by core033_kernel_decide
theorem rows1039 : actualRows1039=WordField.canonicalRows actualModulus 1039 (.badd 1038 22) := by core033_kernel_decide
theorem stats1039 : actualRows1039.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1039=5388 := by core033_kernel_decide
theorem rows1040 : actualRows1040=WordField.canonicalRows actualModulus 1040 (.rotr 1024 2) := by core033_kernel_decide
theorem stats1040 : actualRows1040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1040=5124 := by core033_kernel_decide
theorem rows1041 : actualRows1041=WordField.canonicalRows actualModulus 1041 (.rotr 1024 13) := by core033_kernel_decide
theorem stats1041 : actualRows1041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1041=5124 := by core033_kernel_decide
theorem rows1042 : actualRows1042=WordField.canonicalRows actualModulus 1042 (.bxor 1040 1041) := by core033_kernel_decide
theorem stats1042 : actualRows1042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1042=7428 := by core033_kernel_decide
theorem rows1043 : actualRows1043=WordField.canonicalRows actualModulus 1043 (.rotr 1024 22) := by core033_kernel_decide
theorem stats1043 : actualRows1043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1043=5124 := by core033_kernel_decide
theorem rows1044 : actualRows1044=WordField.canonicalRows actualModulus 1044 (.bxor 1042 1043) := by core033_kernel_decide
theorem stats1044 : actualRows1044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1044=7428 := by core033_kernel_decide
theorem rows1045 : actualRows1045=WordField.canonicalRows actualModulus 1045 (.band 1024 997) := by core033_kernel_decide
theorem stats1045 : actualRows1045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1045=5124 := by core033_kernel_decide
theorem rows1046 : actualRows1046=WordField.canonicalRows actualModulus 1046 (.band 1024 970) := by core033_kernel_decide
theorem stats1046 : actualRows1046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1046=5124 := by core033_kernel_decide
theorem rows1047 : actualRows1047=WordField.canonicalRows actualModulus 1047 (.bxor 1045 1046) := by core033_kernel_decide
theorem stats1047 : actualRows1047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1047=7428 := by core033_kernel_decide
def partRows15 : List R1CS.Row := actualRows984++actualRows985++actualRows986++actualRows987++actualRows988++actualRows989++actualRows990++actualRows991++actualRows992++actualRows993++actualRows994++actualRows995++actualRows996++actualRows997++actualRows998++actualRows999++actualRows1000++actualRows1001++actualRows1002++actualRows1003++actualRows1004++actualRows1005++actualRows1006++actualRows1007++actualRows1008++actualRows1009++actualRows1010++actualRows1011++actualRows1012++actualRows1013++actualRows1014++actualRows1015++actualRows1016++actualRows1017++actualRows1018++actualRows1019++actualRows1020++actualRows1021++actualRows1022++actualRows1023++actualRows1024++actualRows1025++actualRows1026++actualRows1027++actualRows1028++actualRows1029++actualRows1030++actualRows1031++actualRows1032++actualRows1033++actualRows1034++actualRows1035++actualRows1036++actualRows1037++actualRows1038++actualRows1039++actualRows1040++actualRows1041++actualRows1042++actualRows1043++actualRows1044++actualRows1045++actualRows1046++actualRows1047
def partOps15 : List WordIR.Op := [.badd 982 983,.badd 984 20,.rotr 970 2,.rotr 970 13,.bxor 986 987,.rotr 970 22,.bxor 988 989,.band 970 943,.band 970 916,.bxor 991 992,.band 943 916,.bxor 993 994,.badd 990 995,.badd 985 996,.badd 889 985,.rotr 998 6,.rotr 998 11,.bxor 999 1000,.rotr 998 25,.bxor 1001 1002,.badd 917 1003,.band 998 971,.bnot 998,.band 1006 944,.bxor 1005 1007,.badd 1004 1008,.literal (BitVec.ofNat 32 2162078206),.badd 1009 1010,.badd 1011 21,.rotr 997 2,.rotr 997 13,.bxor 1013 1014,.rotr 997 22,.bxor 1015 1016,.band 997 970,.band 997 943,.bxor 1018 1019,.band 970 943,.bxor 1020 1021,.badd 1017 1022,.badd 1012 1023,.badd 916 1012,.rotr 1025 6,.rotr 1025 11,.bxor 1026 1027,.rotr 1025 25,.bxor 1028 1029,.badd 944 1030,.band 1025 998,.bnot 1025,.band 1033 971,.bxor 1032 1034,.badd 1031 1035,.literal (BitVec.ofNat 32 2614888103),.badd 1036 1037,.badd 1038 22,.rotr 1024 2,.rotr 1024 13,.bxor 1040 1041,.rotr 1024 22,.bxor 1042 1043,.band 1024 997,.band 1024 970,.bxor 1045 1046]
theorem partRowsExact15 : partRows15=WordField.rows actualModulus 984 partOps15 := by
  simp only [partRows15,partOps15,WordField.rows,rows984,rows985,rows986,rows987,rows988,rows989,rows990,rows991,rows992,rows993,rows994,rows995,rows996,rows997,rows998,rows999,rows1000,rows1001,rows1002,rows1003,rows1004,rows1005,rows1006,rows1007,rows1008,rows1009,rows1010,rows1011,rows1012,rows1013,rows1014,rows1015,rows1016,rows1017,rows1018,rows1019,rows1020,rows1021,rows1022,rows1023,rows1024,rows1025,rows1026,rows1027,rows1028,rows1029,rows1030,rows1031,rows1032,rows1033,rows1034,rows1035,rows1036,rows1037,rows1038,rows1039,rows1040,rows1041,rows1042,rows1043,rows1044,rows1045,rows1046,rows1047,List.append_assoc,List.append_nil]
theorem partOpsLength15 : partOps15.length=64 := by decide
theorem partStats15 : partRows15.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows15=371544 := by
  simp only [partRows15,List.length_append,MatrixRowBlocks.rows_weight_append,stats984.1,stats984.2,stats985.1,stats985.2,stats986.1,stats986.2,stats987.1,stats987.2,stats988.1,stats988.2,stats989.1,stats989.2,stats990.1,stats990.2,stats991.1,stats991.2,stats992.1,stats992.2,stats993.1,stats993.2,stats994.1,stats994.2,stats995.1,stats995.2,stats996.1,stats996.2,stats997.1,stats997.2,stats998.1,stats998.2,stats999.1,stats999.2,stats1000.1,stats1000.2,stats1001.1,stats1001.2,stats1002.1,stats1002.2,stats1003.1,stats1003.2,stats1004.1,stats1004.2,stats1005.1,stats1005.2,stats1006.1,stats1006.2,stats1007.1,stats1007.2,stats1008.1,stats1008.2,stats1009.1,stats1009.2,stats1010.1,stats1010.2,stats1011.1,stats1011.2,stats1012.1,stats1012.2,stats1013.1,stats1013.2,stats1014.1,stats1014.2,stats1015.1,stats1015.2,stats1016.1,stats1016.2,stats1017.1,stats1017.2,stats1018.1,stats1018.2,stats1019.1,stats1019.2,stats1020.1,stats1020.2,stats1021.1,stats1021.2,stats1022.1,stats1022.2,stats1023.1,stats1023.2,stats1024.1,stats1024.2,stats1025.1,stats1025.2,stats1026.1,stats1026.2,stats1027.1,stats1027.2,stats1028.1,stats1028.2,stats1029.1,stats1029.2,stats1030.1,stats1030.2,stats1031.1,stats1031.2,stats1032.1,stats1032.2,stats1033.1,stats1033.2,stats1034.1,stats1034.2,stats1035.1,stats1035.2,stats1036.1,stats1036.2,stats1037.1,stats1037.2,stats1038.1,stats1038.2,stats1039.1,stats1039.2,stats1040.1,stats1040.2,stats1041.1,stats1041.2,stats1042.1,stats1042.2,stats1043.1,stats1043.2,stats1044.1,stats1044.2,stats1045.1,stats1045.2,stats1046.1,stats1046.2,stats1047.1,stats1047.2]
  decide
end ActualSHAMatrixRows
