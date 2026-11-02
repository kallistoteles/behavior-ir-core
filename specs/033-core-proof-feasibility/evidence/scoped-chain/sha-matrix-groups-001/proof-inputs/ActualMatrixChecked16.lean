import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData16
import ActualMatrixData17
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1048 : actualRows1048=WordField.canonicalRows actualModulus 1048 (.band 997 970) := by core033_kernel_decide
theorem stats1048 : actualRows1048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1048=5124 := by core033_kernel_decide
theorem rows1049 : actualRows1049=WordField.canonicalRows actualModulus 1049 (.bxor 1047 1048) := by core033_kernel_decide
theorem stats1049 : actualRows1049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1049=7428 := by core033_kernel_decide
theorem rows1050 : actualRows1050=WordField.canonicalRows actualModulus 1050 (.badd 1044 1049) := by core033_kernel_decide
theorem stats1050 : actualRows1050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1050=5388 := by core033_kernel_decide
theorem rows1051 : actualRows1051=WordField.canonicalRows actualModulus 1051 (.badd 1039 1050) := by core033_kernel_decide
theorem stats1051 : actualRows1051.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1051=5388 := by core033_kernel_decide
theorem rows1052 : actualRows1052=WordField.canonicalRows actualModulus 1052 (.badd 943 1039) := by core033_kernel_decide
theorem stats1052 : actualRows1052.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1052=5388 := by core033_kernel_decide
theorem rows1053 : actualRows1053=WordField.canonicalRows actualModulus 1053 (.rotr 1052 6) := by core033_kernel_decide
theorem stats1053 : actualRows1053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1053=5124 := by core033_kernel_decide
theorem rows1054 : actualRows1054=WordField.canonicalRows actualModulus 1054 (.rotr 1052 11) := by core033_kernel_decide
theorem stats1054 : actualRows1054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1054=5124 := by core033_kernel_decide
theorem rows1055 : actualRows1055=WordField.canonicalRows actualModulus 1055 (.bxor 1053 1054) := by core033_kernel_decide
theorem stats1055 : actualRows1055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1055=7428 := by core033_kernel_decide
theorem rows1056 : actualRows1056=WordField.canonicalRows actualModulus 1056 (.rotr 1052 25) := by core033_kernel_decide
theorem stats1056 : actualRows1056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1056=5124 := by core033_kernel_decide
theorem rows1057 : actualRows1057=WordField.canonicalRows actualModulus 1057 (.bxor 1055 1056) := by core033_kernel_decide
theorem stats1057 : actualRows1057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1057=7428 := by core033_kernel_decide
theorem rows1058 : actualRows1058=WordField.canonicalRows actualModulus 1058 (.badd 971 1057) := by core033_kernel_decide
theorem stats1058 : actualRows1058.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1058=5388 := by core033_kernel_decide
theorem rows1059 : actualRows1059=WordField.canonicalRows actualModulus 1059 (.band 1052 1025) := by core033_kernel_decide
theorem stats1059 : actualRows1059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1059=5124 := by core033_kernel_decide
theorem rows1060 : actualRows1060=WordField.canonicalRows actualModulus 1060 (.bnot 1052) := by core033_kernel_decide
theorem stats1060 : actualRows1060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1060=6276 := by core033_kernel_decide
theorem rows1061 : actualRows1061=WordField.canonicalRows actualModulus 1061 (.band 1060 998) := by core033_kernel_decide
theorem stats1061 : actualRows1061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1061=5124 := by core033_kernel_decide
theorem rows1062 : actualRows1062=WordField.canonicalRows actualModulus 1062 (.bxor 1059 1061) := by core033_kernel_decide
theorem stats1062 : actualRows1062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1062=7428 := by core033_kernel_decide
theorem rows1063 : actualRows1063=WordField.canonicalRows actualModulus 1063 (.badd 1058 1062) := by core033_kernel_decide
theorem stats1063 : actualRows1063.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1063=5388 := by core033_kernel_decide
theorem rows1064 : actualRows1064=WordField.canonicalRows actualModulus 1064 (.literal (BitVec.ofNat 32 3248222580)) := by core033_kernel_decide
theorem stats1064 : actualRows1064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1064=4044 := by core033_kernel_decide
theorem rows1065 : actualRows1065=WordField.canonicalRows actualModulus 1065 (.badd 1063 1064) := by core033_kernel_decide
theorem stats1065 : actualRows1065.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1065=5388 := by core033_kernel_decide
theorem rows1066 : actualRows1066=WordField.canonicalRows actualModulus 1066 (.badd 1065 23) := by core033_kernel_decide
theorem stats1066 : actualRows1066.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1066=5388 := by core033_kernel_decide
theorem rows1067 : actualRows1067=WordField.canonicalRows actualModulus 1067 (.rotr 1051 2) := by core033_kernel_decide
theorem stats1067 : actualRows1067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1067=5124 := by core033_kernel_decide
theorem rows1068 : actualRows1068=WordField.canonicalRows actualModulus 1068 (.rotr 1051 13) := by core033_kernel_decide
theorem stats1068 : actualRows1068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1068=5124 := by core033_kernel_decide
theorem rows1069 : actualRows1069=WordField.canonicalRows actualModulus 1069 (.bxor 1067 1068) := by core033_kernel_decide
theorem stats1069 : actualRows1069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1069=7428 := by core033_kernel_decide
theorem rows1070 : actualRows1070=WordField.canonicalRows actualModulus 1070 (.rotr 1051 22) := by core033_kernel_decide
theorem stats1070 : actualRows1070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1070=5124 := by core033_kernel_decide
theorem rows1071 : actualRows1071=WordField.canonicalRows actualModulus 1071 (.bxor 1069 1070) := by core033_kernel_decide
theorem stats1071 : actualRows1071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1071=7428 := by core033_kernel_decide
theorem rows1072 : actualRows1072=WordField.canonicalRows actualModulus 1072 (.band 1051 1024) := by core033_kernel_decide
theorem stats1072 : actualRows1072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1072=5124 := by core033_kernel_decide
theorem rows1073 : actualRows1073=WordField.canonicalRows actualModulus 1073 (.band 1051 997) := by core033_kernel_decide
theorem stats1073 : actualRows1073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1073=5124 := by core033_kernel_decide
theorem rows1074 : actualRows1074=WordField.canonicalRows actualModulus 1074 (.bxor 1072 1073) := by core033_kernel_decide
theorem stats1074 : actualRows1074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1074=7428 := by core033_kernel_decide
theorem rows1075 : actualRows1075=WordField.canonicalRows actualModulus 1075 (.band 1024 997) := by core033_kernel_decide
theorem stats1075 : actualRows1075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1075=5124 := by core033_kernel_decide
theorem rows1076 : actualRows1076=WordField.canonicalRows actualModulus 1076 (.bxor 1074 1075) := by core033_kernel_decide
theorem stats1076 : actualRows1076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1076=7428 := by core033_kernel_decide
theorem rows1077 : actualRows1077=WordField.canonicalRows actualModulus 1077 (.badd 1071 1076) := by core033_kernel_decide
theorem stats1077 : actualRows1077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1077=5388 := by core033_kernel_decide
theorem rows1078 : actualRows1078=WordField.canonicalRows actualModulus 1078 (.badd 1066 1077) := by core033_kernel_decide
theorem stats1078 : actualRows1078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1078=5388 := by core033_kernel_decide
theorem rows1079 : actualRows1079=WordField.canonicalRows actualModulus 1079 (.badd 970 1066) := by core033_kernel_decide
theorem stats1079 : actualRows1079.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1079=5388 := by core033_kernel_decide
theorem rows1080 : actualRows1080=WordField.canonicalRows actualModulus 1080 (.rotr 1079 6) := by core033_kernel_decide
theorem stats1080 : actualRows1080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1080=5124 := by core033_kernel_decide
theorem rows1081 : actualRows1081=WordField.canonicalRows actualModulus 1081 (.rotr 1079 11) := by core033_kernel_decide
theorem stats1081 : actualRows1081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1081=5124 := by core033_kernel_decide
theorem rows1082 : actualRows1082=WordField.canonicalRows actualModulus 1082 (.bxor 1080 1081) := by core033_kernel_decide
theorem stats1082 : actualRows1082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1082=7428 := by core033_kernel_decide
theorem rows1083 : actualRows1083=WordField.canonicalRows actualModulus 1083 (.rotr 1079 25) := by core033_kernel_decide
theorem stats1083 : actualRows1083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1083=5124 := by core033_kernel_decide
theorem rows1084 : actualRows1084=WordField.canonicalRows actualModulus 1084 (.bxor 1082 1083) := by core033_kernel_decide
theorem stats1084 : actualRows1084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1084=7428 := by core033_kernel_decide
theorem rows1085 : actualRows1085=WordField.canonicalRows actualModulus 1085 (.badd 998 1084) := by core033_kernel_decide
theorem stats1085 : actualRows1085.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1085=5388 := by core033_kernel_decide
theorem rows1086 : actualRows1086=WordField.canonicalRows actualModulus 1086 (.band 1079 1052) := by core033_kernel_decide
theorem stats1086 : actualRows1086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1086=5124 := by core033_kernel_decide
theorem rows1087 : actualRows1087=WordField.canonicalRows actualModulus 1087 (.bnot 1079) := by core033_kernel_decide
theorem stats1087 : actualRows1087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1087=6276 := by core033_kernel_decide
theorem rows1088 : actualRows1088=WordField.canonicalRows actualModulus 1088 (.band 1087 1025) := by core033_kernel_decide
theorem stats1088 : actualRows1088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1088=5124 := by core033_kernel_decide
theorem rows1089 : actualRows1089=WordField.canonicalRows actualModulus 1089 (.bxor 1086 1088) := by core033_kernel_decide
theorem stats1089 : actualRows1089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1089=7428 := by core033_kernel_decide
theorem rows1090 : actualRows1090=WordField.canonicalRows actualModulus 1090 (.badd 1085 1089) := by core033_kernel_decide
theorem stats1090 : actualRows1090.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1090=5388 := by core033_kernel_decide
theorem rows1091 : actualRows1091=WordField.canonicalRows actualModulus 1091 (.literal (BitVec.ofNat 32 3835390401)) := by core033_kernel_decide
theorem stats1091 : actualRows1091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1091=3972 := by core033_kernel_decide
theorem rows1092 : actualRows1092=WordField.canonicalRows actualModulus 1092 (.badd 1090 1091) := by core033_kernel_decide
theorem stats1092 : actualRows1092.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1092=5388 := by core033_kernel_decide
theorem rows1093 : actualRows1093=WordField.canonicalRows actualModulus 1093 (.badd 1092 36) := by core033_kernel_decide
theorem stats1093 : actualRows1093.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1093=5388 := by core033_kernel_decide
theorem rows1094 : actualRows1094=WordField.canonicalRows actualModulus 1094 (.rotr 1078 2) := by core033_kernel_decide
theorem stats1094 : actualRows1094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1094=5124 := by core033_kernel_decide
theorem rows1095 : actualRows1095=WordField.canonicalRows actualModulus 1095 (.rotr 1078 13) := by core033_kernel_decide
theorem stats1095 : actualRows1095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1095=5124 := by core033_kernel_decide
theorem rows1096 : actualRows1096=WordField.canonicalRows actualModulus 1096 (.bxor 1094 1095) := by core033_kernel_decide
theorem stats1096 : actualRows1096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1096=7428 := by core033_kernel_decide
theorem rows1097 : actualRows1097=WordField.canonicalRows actualModulus 1097 (.rotr 1078 22) := by core033_kernel_decide
theorem stats1097 : actualRows1097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1097=5124 := by core033_kernel_decide
theorem rows1098 : actualRows1098=WordField.canonicalRows actualModulus 1098 (.bxor 1096 1097) := by core033_kernel_decide
theorem stats1098 : actualRows1098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1098=7428 := by core033_kernel_decide
theorem rows1099 : actualRows1099=WordField.canonicalRows actualModulus 1099 (.band 1078 1051) := by core033_kernel_decide
theorem stats1099 : actualRows1099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1099=5124 := by core033_kernel_decide
theorem rows1100 : actualRows1100=WordField.canonicalRows actualModulus 1100 (.band 1078 1024) := by core033_kernel_decide
theorem stats1100 : actualRows1100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1100=5124 := by core033_kernel_decide
theorem rows1101 : actualRows1101=WordField.canonicalRows actualModulus 1101 (.bxor 1099 1100) := by core033_kernel_decide
theorem stats1101 : actualRows1101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1101=7428 := by core033_kernel_decide
theorem rows1102 : actualRows1102=WordField.canonicalRows actualModulus 1102 (.band 1051 1024) := by core033_kernel_decide
theorem stats1102 : actualRows1102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1102=5124 := by core033_kernel_decide
theorem rows1103 : actualRows1103=WordField.canonicalRows actualModulus 1103 (.bxor 1101 1102) := by core033_kernel_decide
theorem stats1103 : actualRows1103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1103=7428 := by core033_kernel_decide
theorem rows1104 : actualRows1104=WordField.canonicalRows actualModulus 1104 (.badd 1098 1103) := by core033_kernel_decide
theorem stats1104 : actualRows1104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1104=5388 := by core033_kernel_decide
theorem rows1105 : actualRows1105=WordField.canonicalRows actualModulus 1105 (.badd 1093 1104) := by core033_kernel_decide
theorem stats1105 : actualRows1105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1105=5388 := by core033_kernel_decide
theorem rows1106 : actualRows1106=WordField.canonicalRows actualModulus 1106 (.badd 997 1093) := by core033_kernel_decide
theorem stats1106 : actualRows1106.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1106=5388 := by core033_kernel_decide
theorem rows1107 : actualRows1107=WordField.canonicalRows actualModulus 1107 (.rotr 1106 6) := by core033_kernel_decide
theorem stats1107 : actualRows1107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1107=5124 := by core033_kernel_decide
theorem rows1108 : actualRows1108=WordField.canonicalRows actualModulus 1108 (.rotr 1106 11) := by core033_kernel_decide
theorem stats1108 : actualRows1108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1108=5124 := by core033_kernel_decide
theorem rows1109 : actualRows1109=WordField.canonicalRows actualModulus 1109 (.bxor 1107 1108) := by core033_kernel_decide
theorem stats1109 : actualRows1109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1109=7428 := by core033_kernel_decide
theorem rows1110 : actualRows1110=WordField.canonicalRows actualModulus 1110 (.rotr 1106 25) := by core033_kernel_decide
theorem stats1110 : actualRows1110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1110=5124 := by core033_kernel_decide
theorem rows1111 : actualRows1111=WordField.canonicalRows actualModulus 1111 (.bxor 1109 1110) := by core033_kernel_decide
theorem stats1111 : actualRows1111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1111=7428 := by core033_kernel_decide
def partRows16 : List R1CS.Row := actualRows1048++actualRows1049++actualRows1050++actualRows1051++actualRows1052++actualRows1053++actualRows1054++actualRows1055++actualRows1056++actualRows1057++actualRows1058++actualRows1059++actualRows1060++actualRows1061++actualRows1062++actualRows1063++actualRows1064++actualRows1065++actualRows1066++actualRows1067++actualRows1068++actualRows1069++actualRows1070++actualRows1071++actualRows1072++actualRows1073++actualRows1074++actualRows1075++actualRows1076++actualRows1077++actualRows1078++actualRows1079++actualRows1080++actualRows1081++actualRows1082++actualRows1083++actualRows1084++actualRows1085++actualRows1086++actualRows1087++actualRows1088++actualRows1089++actualRows1090++actualRows1091++actualRows1092++actualRows1093++actualRows1094++actualRows1095++actualRows1096++actualRows1097++actualRows1098++actualRows1099++actualRows1100++actualRows1101++actualRows1102++actualRows1103++actualRows1104++actualRows1105++actualRows1106++actualRows1107++actualRows1108++actualRows1109++actualRows1110++actualRows1111
def partOps16 : List WordIR.Op := [.band 997 970,.bxor 1047 1048,.badd 1044 1049,.badd 1039 1050,.badd 943 1039,.rotr 1052 6,.rotr 1052 11,.bxor 1053 1054,.rotr 1052 25,.bxor 1055 1056,.badd 971 1057,.band 1052 1025,.bnot 1052,.band 1060 998,.bxor 1059 1061,.badd 1058 1062,.literal (BitVec.ofNat 32 3248222580),.badd 1063 1064,.badd 1065 23,.rotr 1051 2,.rotr 1051 13,.bxor 1067 1068,.rotr 1051 22,.bxor 1069 1070,.band 1051 1024,.band 1051 997,.bxor 1072 1073,.band 1024 997,.bxor 1074 1075,.badd 1071 1076,.badd 1066 1077,.badd 970 1066,.rotr 1079 6,.rotr 1079 11,.bxor 1080 1081,.rotr 1079 25,.bxor 1082 1083,.badd 998 1084,.band 1079 1052,.bnot 1079,.band 1087 1025,.bxor 1086 1088,.badd 1085 1089,.literal (BitVec.ofNat 32 3835390401),.badd 1090 1091,.badd 1092 36,.rotr 1078 2,.rotr 1078 13,.bxor 1094 1095,.rotr 1078 22,.bxor 1096 1097,.band 1078 1051,.band 1078 1024,.bxor 1099 1100,.band 1051 1024,.bxor 1101 1102,.badd 1098 1103,.badd 1093 1104,.badd 997 1093,.rotr 1106 6,.rotr 1106 11,.bxor 1107 1108,.rotr 1106 25,.bxor 1109 1110]
theorem partRowsExact16 : partRows16=WordField.rows actualModulus 1048 partOps16 := by
  simp only [partRows16,partOps16,WordField.rows,rows1048,rows1049,rows1050,rows1051,rows1052,rows1053,rows1054,rows1055,rows1056,rows1057,rows1058,rows1059,rows1060,rows1061,rows1062,rows1063,rows1064,rows1065,rows1066,rows1067,rows1068,rows1069,rows1070,rows1071,rows1072,rows1073,rows1074,rows1075,rows1076,rows1077,rows1078,rows1079,rows1080,rows1081,rows1082,rows1083,rows1084,rows1085,rows1086,rows1087,rows1088,rows1089,rows1090,rows1091,rows1092,rows1093,rows1094,rows1095,rows1096,rows1097,rows1098,rows1099,rows1100,rows1101,rows1102,rows1103,rows1104,rows1105,rows1106,rows1107,rows1108,rows1109,rows1110,rows1111,List.append_assoc,List.append_nil]
theorem partOpsLength16 : partOps16.length=64 := by decide
theorem partStats16 : partRows16.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows16=371664 := by
  simp only [partRows16,List.length_append,MatrixRowBlocks.rows_weight_append,stats1048.1,stats1048.2,stats1049.1,stats1049.2,stats1050.1,stats1050.2,stats1051.1,stats1051.2,stats1052.1,stats1052.2,stats1053.1,stats1053.2,stats1054.1,stats1054.2,stats1055.1,stats1055.2,stats1056.1,stats1056.2,stats1057.1,stats1057.2,stats1058.1,stats1058.2,stats1059.1,stats1059.2,stats1060.1,stats1060.2,stats1061.1,stats1061.2,stats1062.1,stats1062.2,stats1063.1,stats1063.2,stats1064.1,stats1064.2,stats1065.1,stats1065.2,stats1066.1,stats1066.2,stats1067.1,stats1067.2,stats1068.1,stats1068.2,stats1069.1,stats1069.2,stats1070.1,stats1070.2,stats1071.1,stats1071.2,stats1072.1,stats1072.2,stats1073.1,stats1073.2,stats1074.1,stats1074.2,stats1075.1,stats1075.2,stats1076.1,stats1076.2,stats1077.1,stats1077.2,stats1078.1,stats1078.2,stats1079.1,stats1079.2,stats1080.1,stats1080.2,stats1081.1,stats1081.2,stats1082.1,stats1082.2,stats1083.1,stats1083.2,stats1084.1,stats1084.2,stats1085.1,stats1085.2,stats1086.1,stats1086.2,stats1087.1,stats1087.2,stats1088.1,stats1088.2,stats1089.1,stats1089.2,stats1090.1,stats1090.2,stats1091.1,stats1091.2,stats1092.1,stats1092.2,stats1093.1,stats1093.2,stats1094.1,stats1094.2,stats1095.1,stats1095.2,stats1096.1,stats1096.2,stats1097.1,stats1097.2,stats1098.1,stats1098.2,stats1099.1,stats1099.2,stats1100.1,stats1100.2,stats1101.1,stats1101.2,stats1102.1,stats1102.2,stats1103.1,stats1103.2,stats1104.1,stats1104.2,stats1105.1,stats1105.2,stats1106.1,stats1106.2,stats1107.1,stats1107.2,stats1108.1,stats1108.2,stats1109.1,stats1109.2,stats1110.1,stats1110.2,stats1111.1,stats1111.2]
  decide
end ActualSHAMatrixRows
