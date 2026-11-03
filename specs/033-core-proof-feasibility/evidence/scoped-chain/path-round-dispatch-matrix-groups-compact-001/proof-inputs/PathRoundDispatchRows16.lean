import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData16
import PathRoundDispatchInstructionMatrixData17
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1067 : actualRows1067=WordField.canonicalRows actualModulus 1067 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1067 : actualRows1067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1067=2892 := by core033_kernel_decide
theorem rows1068 : actualRows1068=WordField.canonicalRows actualModulus 1068 (.badd 1066 1067) := by core033_kernel_decide
theorem stats1068 : actualRows1068.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1068=5388 := by core033_kernel_decide
theorem rows1069 : actualRows1069=WordField.canonicalRows actualModulus 1069 (.band 1068 294) := by core033_kernel_decide
theorem stats1069 : actualRows1069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1069=5124 := by core033_kernel_decide
theorem rows1070 : actualRows1070=WordField.canonicalRows actualModulus 1070 (.bnot 875) := by core033_kernel_decide
theorem stats1070 : actualRows1070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1070=6276 := by core033_kernel_decide
theorem rows1071 : actualRows1071=WordField.canonicalRows actualModulus 1071 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1071 : actualRows1071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1071=2892 := by core033_kernel_decide
theorem rows1072 : actualRows1072=WordField.canonicalRows actualModulus 1072 (.badd 1070 1071) := by core033_kernel_decide
theorem stats1072 : actualRows1072.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1072=5388 := by core033_kernel_decide
theorem rows1073 : actualRows1073=WordField.canonicalRows actualModulus 1073 (.bnot 1072) := by core033_kernel_decide
theorem stats1073 : actualRows1073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1073=6276 := by core033_kernel_decide
theorem rows1074 : actualRows1074=WordField.canonicalRows actualModulus 1074 (.band 1073 382) := by core033_kernel_decide
theorem stats1074 : actualRows1074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1074=5124 := by core033_kernel_decide
theorem rows1075 : actualRows1075=WordField.canonicalRows actualModulus 1075 (.bxor 1069 1074) := by core033_kernel_decide
theorem stats1075 : actualRows1075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1075=7428 := by core033_kernel_decide
theorem rows1076 : actualRows1076=WordField.canonicalRows actualModulus 1076 (.bnot 875) := by core033_kernel_decide
theorem stats1076 : actualRows1076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1076=6276 := by core033_kernel_decide
theorem rows1077 : actualRows1077=WordField.canonicalRows actualModulus 1077 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1077 : actualRows1077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1077=2892 := by core033_kernel_decide
theorem rows1078 : actualRows1078=WordField.canonicalRows actualModulus 1078 (.badd 1076 1077) := by core033_kernel_decide
theorem stats1078 : actualRows1078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1078=5388 := by core033_kernel_decide
theorem rows1079 : actualRows1079=WordField.canonicalRows actualModulus 1079 (.band 1078 393) := by core033_kernel_decide
theorem stats1079 : actualRows1079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1079=5124 := by core033_kernel_decide
theorem rows1080 : actualRows1080=WordField.canonicalRows actualModulus 1080 (.bnot 875) := by core033_kernel_decide
theorem stats1080 : actualRows1080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1080=6276 := by core033_kernel_decide
theorem rows1081 : actualRows1081=WordField.canonicalRows actualModulus 1081 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1081 : actualRows1081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1081=2892 := by core033_kernel_decide
theorem rows1082 : actualRows1082=WordField.canonicalRows actualModulus 1082 (.badd 1080 1081) := by core033_kernel_decide
theorem stats1082 : actualRows1082.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1082=5388 := by core033_kernel_decide
theorem rows1083 : actualRows1083=WordField.canonicalRows actualModulus 1083 (.bnot 1082) := by core033_kernel_decide
theorem stats1083 : actualRows1083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1083=6276 := by core033_kernel_decide
theorem rows1084 : actualRows1084=WordField.canonicalRows actualModulus 1084 (.band 1083 415) := by core033_kernel_decide
theorem stats1084 : actualRows1084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1084=5124 := by core033_kernel_decide
theorem rows1085 : actualRows1085=WordField.canonicalRows actualModulus 1085 (.bxor 1079 1084) := by core033_kernel_decide
theorem stats1085 : actualRows1085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1085=7428 := by core033_kernel_decide
theorem rows1086 : actualRows1086=WordField.canonicalRows actualModulus 1086 (.bnot 875) := by core033_kernel_decide
theorem stats1086 : actualRows1086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1086=6276 := by core033_kernel_decide
theorem rows1087 : actualRows1087=WordField.canonicalRows actualModulus 1087 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1087 : actualRows1087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1087=2892 := by core033_kernel_decide
theorem rows1088 : actualRows1088=WordField.canonicalRows actualModulus 1088 (.badd 1086 1087) := by core033_kernel_decide
theorem stats1088 : actualRows1088.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1088=5388 := by core033_kernel_decide
theorem rows1089 : actualRows1089=WordField.canonicalRows actualModulus 1089 (.band 1088 404) := by core033_kernel_decide
theorem stats1089 : actualRows1089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1089=5124 := by core033_kernel_decide
theorem rows1090 : actualRows1090=WordField.canonicalRows actualModulus 1090 (.bnot 875) := by core033_kernel_decide
theorem stats1090 : actualRows1090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1090=6276 := by core033_kernel_decide
theorem rows1091 : actualRows1091=WordField.canonicalRows actualModulus 1091 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1091 : actualRows1091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1091=2892 := by core033_kernel_decide
theorem rows1092 : actualRows1092=WordField.canonicalRows actualModulus 1092 (.badd 1090 1091) := by core033_kernel_decide
theorem stats1092 : actualRows1092.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1092=5388 := by core033_kernel_decide
theorem rows1093 : actualRows1093=WordField.canonicalRows actualModulus 1093 (.bnot 1092) := by core033_kernel_decide
theorem stats1093 : actualRows1093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1093=6276 := by core033_kernel_decide
theorem rows1094 : actualRows1094=WordField.canonicalRows actualModulus 1094 (.band 1093 426) := by core033_kernel_decide
theorem stats1094 : actualRows1094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1094=5124 := by core033_kernel_decide
theorem rows1095 : actualRows1095=WordField.canonicalRows actualModulus 1095 (.bxor 1089 1094) := by core033_kernel_decide
theorem stats1095 : actualRows1095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1095=7428 := by core033_kernel_decide
theorem rows1096 : actualRows1096=WordField.canonicalRows actualModulus 1096 (.bnot 875) := by core033_kernel_decide
theorem stats1096 : actualRows1096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1096=6276 := by core033_kernel_decide
theorem rows1097 : actualRows1097=WordField.canonicalRows actualModulus 1097 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1097 : actualRows1097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1097=2892 := by core033_kernel_decide
theorem rows1098 : actualRows1098=WordField.canonicalRows actualModulus 1098 (.badd 1096 1097) := by core033_kernel_decide
theorem stats1098 : actualRows1098.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1098=5388 := by core033_kernel_decide
theorem rows1099 : actualRows1099=WordField.canonicalRows actualModulus 1099 (.band 1098 437) := by core033_kernel_decide
theorem stats1099 : actualRows1099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1099=5124 := by core033_kernel_decide
theorem rows1100 : actualRows1100=WordField.canonicalRows actualModulus 1100 (.bnot 875) := by core033_kernel_decide
theorem stats1100 : actualRows1100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1100=6276 := by core033_kernel_decide
theorem rows1101 : actualRows1101=WordField.canonicalRows actualModulus 1101 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1101 : actualRows1101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1101=2892 := by core033_kernel_decide
theorem rows1102 : actualRows1102=WordField.canonicalRows actualModulus 1102 (.badd 1100 1101) := by core033_kernel_decide
theorem stats1102 : actualRows1102.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1102=5388 := by core033_kernel_decide
theorem rows1103 : actualRows1103=WordField.canonicalRows actualModulus 1103 (.bnot 1102) := by core033_kernel_decide
theorem stats1103 : actualRows1103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1103=6276 := by core033_kernel_decide
theorem rows1104 : actualRows1104=WordField.canonicalRows actualModulus 1104 (.band 1103 448) := by core033_kernel_decide
theorem stats1104 : actualRows1104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1104=5124 := by core033_kernel_decide
theorem rows1105 : actualRows1105=WordField.canonicalRows actualModulus 1105 (.bxor 1099 1104) := by core033_kernel_decide
theorem stats1105 : actualRows1105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1105=7428 := by core033_kernel_decide
theorem rows1106 : actualRows1106=WordField.canonicalRows actualModulus 1106 (.bnot 875) := by core033_kernel_decide
theorem stats1106 : actualRows1106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1106=6276 := by core033_kernel_decide
theorem rows1107 : actualRows1107=WordField.canonicalRows actualModulus 1107 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1107 : actualRows1107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1107=2892 := by core033_kernel_decide
theorem rows1108 : actualRows1108=WordField.canonicalRows actualModulus 1108 (.badd 1106 1107) := by core033_kernel_decide
theorem stats1108 : actualRows1108.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1108=5388 := by core033_kernel_decide
theorem rows1109 : actualRows1109=WordField.canonicalRows actualModulus 1109 (.band 1108 459) := by core033_kernel_decide
theorem stats1109 : actualRows1109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1109=5124 := by core033_kernel_decide
theorem rows1110 : actualRows1110=WordField.canonicalRows actualModulus 1110 (.bnot 875) := by core033_kernel_decide
theorem stats1110 : actualRows1110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1110=6276 := by core033_kernel_decide
theorem rows1111 : actualRows1111=WordField.canonicalRows actualModulus 1111 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1111 : actualRows1111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1111=2892 := by core033_kernel_decide
theorem rows1112 : actualRows1112=WordField.canonicalRows actualModulus 1112 (.badd 1110 1111) := by core033_kernel_decide
theorem stats1112 : actualRows1112.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1112=5388 := by core033_kernel_decide
theorem rows1113 : actualRows1113=WordField.canonicalRows actualModulus 1113 (.bnot 1112) := by core033_kernel_decide
theorem stats1113 : actualRows1113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1113=6276 := by core033_kernel_decide
theorem rows1114 : actualRows1114=WordField.canonicalRows actualModulus 1114 (.band 1113 470) := by core033_kernel_decide
theorem stats1114 : actualRows1114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1114=5124 := by core033_kernel_decide
theorem rows1115 : actualRows1115=WordField.canonicalRows actualModulus 1115 (.bxor 1109 1114) := by core033_kernel_decide
theorem stats1115 : actualRows1115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1115=7428 := by core033_kernel_decide
theorem rows1116 : actualRows1116=WordField.canonicalRows actualModulus 1116 (.shr 875 1) := by core033_kernel_decide
theorem stats1116 : actualRows1116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1116=5052 := by core033_kernel_decide
theorem rows1117 : actualRows1117=WordField.canonicalRows actualModulus 1117 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1117 : actualRows1117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1117=2820 := by core033_kernel_decide
theorem rows1118 : actualRows1118=WordField.canonicalRows actualModulus 1118 (.bnot 1117) := by core033_kernel_decide
theorem stats1118 : actualRows1118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1118=6276 := by core033_kernel_decide
theorem rows1119 : actualRows1119=WordField.canonicalRows actualModulus 1119 (.band 1116 1118) := by core033_kernel_decide
theorem stats1119 : actualRows1119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1119=5124 := by core033_kernel_decide
theorem rows1120 : actualRows1120=WordField.canonicalRows actualModulus 1120 (.shr 875 1) := by core033_kernel_decide
theorem stats1120 : actualRows1120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1120=5052 := by core033_kernel_decide
theorem rows1121 : actualRows1121=WordField.canonicalRows actualModulus 1121 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1121 : actualRows1121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1121=2820 := by core033_kernel_decide
theorem rows1122 : actualRows1122=WordField.canonicalRows actualModulus 1122 (.bnot 1121) := by core033_kernel_decide
theorem stats1122 : actualRows1122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1122=6276 := by core033_kernel_decide
theorem rows1123 : actualRows1123=WordField.canonicalRows actualModulus 1123 (.bxor 1120 1122) := by core033_kernel_decide
theorem stats1123 : actualRows1123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1123=7428 := by core033_kernel_decide
theorem rows1124 : actualRows1124=WordField.canonicalRows actualModulus 1124 (.shr 875 1) := by core033_kernel_decide
theorem stats1124 : actualRows1124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1124=5052 := by core033_kernel_decide
theorem rows1125 : actualRows1125=WordField.canonicalRows actualModulus 1125 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1125 : actualRows1125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1125=2820 := by core033_kernel_decide
theorem rows1126 : actualRows1126=WordField.canonicalRows actualModulus 1126 (.bnot 1125) := by core033_kernel_decide
theorem stats1126 : actualRows1126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1126=6276 := by core033_kernel_decide
theorem rows1127 : actualRows1127=WordField.canonicalRows actualModulus 1127 (.badd 1124 1126) := by core033_kernel_decide
theorem stats1127 : actualRows1127.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1127=5388 := by core033_kernel_decide
theorem rows1128 : actualRows1128=WordField.canonicalRows actualModulus 1128 (.bnot 1127) := by core033_kernel_decide
theorem stats1128 : actualRows1128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1128=6276 := by core033_kernel_decide
theorem rows1129 : actualRows1129=WordField.canonicalRows actualModulus 1129 (.band 1123 1128) := by core033_kernel_decide
theorem stats1129 : actualRows1129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1129=5124 := by core033_kernel_decide
theorem rows1130 : actualRows1130=WordField.canonicalRows actualModulus 1130 (.bxor 1119 1129) := by core033_kernel_decide
theorem stats1130 : actualRows1130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1130=7428 := by core033_kernel_decide
def partRows16 : List R1CS.Row := actualRows1067++actualRows1068++actualRows1069++actualRows1070++actualRows1071++actualRows1072++actualRows1073++actualRows1074++actualRows1075++actualRows1076++actualRows1077++actualRows1078++actualRows1079++actualRows1080++actualRows1081++actualRows1082++actualRows1083++actualRows1084++actualRows1085++actualRows1086++actualRows1087++actualRows1088++actualRows1089++actualRows1090++actualRows1091++actualRows1092++actualRows1093++actualRows1094++actualRows1095++actualRows1096++actualRows1097++actualRows1098++actualRows1099++actualRows1100++actualRows1101++actualRows1102++actualRows1103++actualRows1104++actualRows1105++actualRows1106++actualRows1107++actualRows1108++actualRows1109++actualRows1110++actualRows1111++actualRows1112++actualRows1113++actualRows1114++actualRows1115++actualRows1116++actualRows1117++actualRows1118++actualRows1119++actualRows1120++actualRows1121++actualRows1122++actualRows1123++actualRows1124++actualRows1125++actualRows1126++actualRows1127++actualRows1128++actualRows1129++actualRows1130
def partOps16 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 1066 1067,.band 1068 294,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1070 1071,.bnot 1072,.band 1073 382,.bxor 1069 1074,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1076 1077,.band 1078 393,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1080 1081,.bnot 1082,.band 1083 415,.bxor 1079 1084,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1086 1087,.band 1088 404,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1090 1091,.bnot 1092,.band 1093 426,.bxor 1089 1094,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1096 1097,.band 1098 437,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1100 1101,.bnot 1102,.band 1103 448,.bxor 1099 1104,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1106 1107,.band 1108 459,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1110 1111,.bnot 1112,.band 1113 470,.bxor 1109 1114,.shr 875 1,.literal (BitVec.ofNat 32 0),.bnot 1117,.band 1116 1118,.shr 875 1,.literal (BitVec.ofNat 32 0),.bnot 1121,.bxor 1120 1122,.shr 875 1,.literal (BitVec.ofNat 32 0),.bnot 1125,.badd 1124 1126,.bnot 1127,.band 1123 1128,.bxor 1119 1129]
theorem partExact16 : partRows16=WordField.rows actualModulus 1067 partOps16 := by
  simp only [partRows16,partOps16,WordField.rows,rows1067,rows1068,rows1069,rows1070,rows1071,rows1072,rows1073,rows1074,rows1075,rows1076,rows1077,rows1078,rows1079,rows1080,rows1081,rows1082,rows1083,rows1084,rows1085,rows1086,rows1087,rows1088,rows1089,rows1090,rows1091,rows1092,rows1093,rows1094,rows1095,rows1096,rows1097,rows1098,rows1099,rows1100,rows1101,rows1102,rows1103,rows1104,rows1105,rows1106,rows1107,rows1108,rows1109,rows1110,rows1111,rows1112,rows1113,rows1114,rows1115,rows1116,rows1117,rows1118,rows1119,rows1120,rows1121,rows1122,rows1123,rows1124,rows1125,rows1126,rows1127,rows1128,rows1129,rows1130,List.append_assoc,List.append_nil]
theorem partLength16 : partOps16.length=64 := by decide
theorem partStats16 : partRows16.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows16=338256 := by
  simp only [partRows16,List.length_append,MatrixRowBlocks.rows_weight_append,stats1067.1,stats1067.2,stats1068.1,stats1068.2,stats1069.1,stats1069.2,stats1070.1,stats1070.2,stats1071.1,stats1071.2,stats1072.1,stats1072.2,stats1073.1,stats1073.2,stats1074.1,stats1074.2,stats1075.1,stats1075.2,stats1076.1,stats1076.2,stats1077.1,stats1077.2,stats1078.1,stats1078.2,stats1079.1,stats1079.2,stats1080.1,stats1080.2,stats1081.1,stats1081.2,stats1082.1,stats1082.2,stats1083.1,stats1083.2,stats1084.1,stats1084.2,stats1085.1,stats1085.2,stats1086.1,stats1086.2,stats1087.1,stats1087.2,stats1088.1,stats1088.2,stats1089.1,stats1089.2,stats1090.1,stats1090.2,stats1091.1,stats1091.2,stats1092.1,stats1092.2,stats1093.1,stats1093.2,stats1094.1,stats1094.2,stats1095.1,stats1095.2,stats1096.1,stats1096.2,stats1097.1,stats1097.2,stats1098.1,stats1098.2,stats1099.1,stats1099.2,stats1100.1,stats1100.2,stats1101.1,stats1101.2,stats1102.1,stats1102.2,stats1103.1,stats1103.2,stats1104.1,stats1104.2,stats1105.1,stats1105.2,stats1106.1,stats1106.2,stats1107.1,stats1107.2,stats1108.1,stats1108.2,stats1109.1,stats1109.2,stats1110.1,stats1110.2,stats1111.1,stats1111.2,stats1112.1,stats1112.2,stats1113.1,stats1113.2,stats1114.1,stats1114.2,stats1115.1,stats1115.2,stats1116.1,stats1116.2,stats1117.1,stats1117.2,stats1118.1,stats1118.2,stats1119.1,stats1119.2,stats1120.1,stats1120.2,stats1121.1,stats1121.2,stats1122.1,stats1122.2,stats1123.1,stats1123.2,stats1124.1,stats1124.2,stats1125.1,stats1125.2,stats1126.1,stats1126.2,stats1127.1,stats1127.2,stats1128.1,stats1128.2,stats1129.1,stats1129.2,stats1130.1,stats1130.2]
  decide
end PathRoundDispatchCheckedRows
