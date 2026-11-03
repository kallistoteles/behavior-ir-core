import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData16
import PathFrameInstructionMatrixData17
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1058 : actualRows1058=WordField.canonicalRows actualModulus 1058 (.band 1056 1057) := by core033_kernel_decide
theorem stats1058 : actualRows1058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1058=5124 := by core033_kernel_decide
theorem rows1059 : actualRows1059=WordField.canonicalRows actualModulus 1059 (.shr 450 16) := by core033_kernel_decide
theorem stats1059 : actualRows1059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1059=3972 := by core033_kernel_decide
theorem rows1060 : actualRows1060=WordField.canonicalRows actualModulus 1060 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1060 : actualRows1060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1060=3396 := by core033_kernel_decide
theorem rows1061 : actualRows1061=WordField.canonicalRows actualModulus 1061 (.band 1059 1060) := by core033_kernel_decide
theorem stats1061 : actualRows1061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1061=5124 := by core033_kernel_decide
theorem rows1062 : actualRows1062=WordField.canonicalRows actualModulus 1062 (.shr 450 24) := by core033_kernel_decide
theorem stats1062 : actualRows1062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1062=3396 := by core033_kernel_decide
theorem rows1063 : actualRows1063=WordField.canonicalRows actualModulus 1063 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1063 : actualRows1063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1063=3396 := by core033_kernel_decide
theorem rows1064 : actualRows1064=WordField.canonicalRows actualModulus 1064 (.band 1062 1063) := by core033_kernel_decide
theorem stats1064 : actualRows1064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1064=5124 := by core033_kernel_decide
theorem rows1065 : actualRows1065=WordField.canonicalRows actualModulus 1065 (.shr 560 0) := by core033_kernel_decide
theorem stats1065 : actualRows1065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1065=5124 := by core033_kernel_decide
theorem rows1066 : actualRows1066=WordField.canonicalRows actualModulus 1066 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1066 : actualRows1066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1066=3396 := by core033_kernel_decide
theorem rows1067 : actualRows1067=WordField.canonicalRows actualModulus 1067 (.band 1065 1066) := by core033_kernel_decide
theorem stats1067 : actualRows1067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1067=5124 := by core033_kernel_decide
theorem rows1068 : actualRows1068=WordField.canonicalRows actualModulus 1068 (.shr 560 8) := by core033_kernel_decide
theorem stats1068 : actualRows1068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1068=4548 := by core033_kernel_decide
theorem rows1069 : actualRows1069=WordField.canonicalRows actualModulus 1069 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1069 : actualRows1069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1069=3396 := by core033_kernel_decide
theorem rows1070 : actualRows1070=WordField.canonicalRows actualModulus 1070 (.band 1068 1069) := by core033_kernel_decide
theorem stats1070 : actualRows1070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1070=5124 := by core033_kernel_decide
theorem rows1071 : actualRows1071=WordField.canonicalRows actualModulus 1071 (.shr 560 16) := by core033_kernel_decide
theorem stats1071 : actualRows1071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1071=3972 := by core033_kernel_decide
theorem rows1072 : actualRows1072=WordField.canonicalRows actualModulus 1072 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1072 : actualRows1072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1072=3396 := by core033_kernel_decide
theorem rows1073 : actualRows1073=WordField.canonicalRows actualModulus 1073 (.band 1071 1072) := by core033_kernel_decide
theorem stats1073 : actualRows1073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1073=5124 := by core033_kernel_decide
theorem rows1074 : actualRows1074=WordField.canonicalRows actualModulus 1074 (.shr 560 24) := by core033_kernel_decide
theorem stats1074 : actualRows1074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1074=3396 := by core033_kernel_decide
theorem rows1075 : actualRows1075=WordField.canonicalRows actualModulus 1075 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1075 : actualRows1075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1075=3396 := by core033_kernel_decide
theorem rows1076 : actualRows1076=WordField.canonicalRows actualModulus 1076 (.band 1074 1075) := by core033_kernel_decide
theorem stats1076 : actualRows1076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1076=5124 := by core033_kernel_decide
theorem rows1077 : actualRows1077=WordField.canonicalRows actualModulus 1077 (.shr 570 0) := by core033_kernel_decide
theorem stats1077 : actualRows1077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1077=5124 := by core033_kernel_decide
theorem rows1078 : actualRows1078=WordField.canonicalRows actualModulus 1078 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1078 : actualRows1078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1078=3396 := by core033_kernel_decide
theorem rows1079 : actualRows1079=WordField.canonicalRows actualModulus 1079 (.band 1077 1078) := by core033_kernel_decide
theorem stats1079 : actualRows1079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1079=5124 := by core033_kernel_decide
theorem rows1080 : actualRows1080=WordField.canonicalRows actualModulus 1080 (.shr 570 8) := by core033_kernel_decide
theorem stats1080 : actualRows1080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1080=4548 := by core033_kernel_decide
theorem rows1081 : actualRows1081=WordField.canonicalRows actualModulus 1081 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1081 : actualRows1081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1081=3396 := by core033_kernel_decide
theorem rows1082 : actualRows1082=WordField.canonicalRows actualModulus 1082 (.band 1080 1081) := by core033_kernel_decide
theorem stats1082 : actualRows1082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1082=5124 := by core033_kernel_decide
theorem rows1083 : actualRows1083=WordField.canonicalRows actualModulus 1083 (.shr 570 16) := by core033_kernel_decide
theorem stats1083 : actualRows1083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1083=3972 := by core033_kernel_decide
theorem rows1084 : actualRows1084=WordField.canonicalRows actualModulus 1084 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1084 : actualRows1084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1084=3396 := by core033_kernel_decide
theorem rows1085 : actualRows1085=WordField.canonicalRows actualModulus 1085 (.band 1083 1084) := by core033_kernel_decide
theorem stats1085 : actualRows1085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1085=5124 := by core033_kernel_decide
theorem rows1086 : actualRows1086=WordField.canonicalRows actualModulus 1086 (.shr 570 24) := by core033_kernel_decide
theorem stats1086 : actualRows1086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1086=3396 := by core033_kernel_decide
theorem rows1087 : actualRows1087=WordField.canonicalRows actualModulus 1087 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1087 : actualRows1087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1087=3396 := by core033_kernel_decide
theorem rows1088 : actualRows1088=WordField.canonicalRows actualModulus 1088 (.band 1086 1087) := by core033_kernel_decide
theorem stats1088 : actualRows1088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1088=5124 := by core033_kernel_decide
theorem rows1089 : actualRows1089=WordField.canonicalRows actualModulus 1089 (.shr 609 0) := by core033_kernel_decide
theorem stats1089 : actualRows1089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1089=5124 := by core033_kernel_decide
theorem rows1090 : actualRows1090=WordField.canonicalRows actualModulus 1090 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1090 : actualRows1090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1090=3396 := by core033_kernel_decide
theorem rows1091 : actualRows1091=WordField.canonicalRows actualModulus 1091 (.band 1089 1090) := by core033_kernel_decide
theorem stats1091 : actualRows1091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1091=5124 := by core033_kernel_decide
theorem rows1092 : actualRows1092=WordField.canonicalRows actualModulus 1092 (.shr 609 8) := by core033_kernel_decide
theorem stats1092 : actualRows1092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1092=4548 := by core033_kernel_decide
theorem rows1093 : actualRows1093=WordField.canonicalRows actualModulus 1093 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1093 : actualRows1093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1093=3396 := by core033_kernel_decide
theorem rows1094 : actualRows1094=WordField.canonicalRows actualModulus 1094 (.band 1092 1093) := by core033_kernel_decide
theorem stats1094 : actualRows1094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1094=5124 := by core033_kernel_decide
theorem rows1095 : actualRows1095=WordField.canonicalRows actualModulus 1095 (.shr 609 16) := by core033_kernel_decide
theorem stats1095 : actualRows1095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1095=3972 := by core033_kernel_decide
theorem rows1096 : actualRows1096=WordField.canonicalRows actualModulus 1096 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1096 : actualRows1096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1096=3396 := by core033_kernel_decide
theorem rows1097 : actualRows1097=WordField.canonicalRows actualModulus 1097 (.band 1095 1096) := by core033_kernel_decide
theorem stats1097 : actualRows1097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1097=5124 := by core033_kernel_decide
theorem rows1098 : actualRows1098=WordField.canonicalRows actualModulus 1098 (.shr 609 24) := by core033_kernel_decide
theorem stats1098 : actualRows1098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1098=3396 := by core033_kernel_decide
theorem rows1099 : actualRows1099=WordField.canonicalRows actualModulus 1099 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1099 : actualRows1099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1099=3396 := by core033_kernel_decide
theorem rows1100 : actualRows1100=WordField.canonicalRows actualModulus 1100 (.band 1098 1099) := by core033_kernel_decide
theorem stats1100 : actualRows1100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1100=5124 := by core033_kernel_decide
theorem rows1101 : actualRows1101=WordField.canonicalRows actualModulus 1101 (.shr 618 0) := by core033_kernel_decide
theorem stats1101 : actualRows1101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1101=5124 := by core033_kernel_decide
theorem rows1102 : actualRows1102=WordField.canonicalRows actualModulus 1102 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1102 : actualRows1102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1102=3396 := by core033_kernel_decide
theorem rows1103 : actualRows1103=WordField.canonicalRows actualModulus 1103 (.band 1101 1102) := by core033_kernel_decide
theorem stats1103 : actualRows1103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1103=5124 := by core033_kernel_decide
theorem rows1104 : actualRows1104=WordField.canonicalRows actualModulus 1104 (.shr 618 8) := by core033_kernel_decide
theorem stats1104 : actualRows1104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1104=4548 := by core033_kernel_decide
theorem rows1105 : actualRows1105=WordField.canonicalRows actualModulus 1105 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1105 : actualRows1105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1105=3396 := by core033_kernel_decide
theorem rows1106 : actualRows1106=WordField.canonicalRows actualModulus 1106 (.band 1104 1105) := by core033_kernel_decide
theorem stats1106 : actualRows1106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1106=5124 := by core033_kernel_decide
theorem rows1107 : actualRows1107=WordField.canonicalRows actualModulus 1107 (.shr 618 16) := by core033_kernel_decide
theorem stats1107 : actualRows1107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1107=3972 := by core033_kernel_decide
theorem rows1108 : actualRows1108=WordField.canonicalRows actualModulus 1108 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1108 : actualRows1108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1108=3396 := by core033_kernel_decide
theorem rows1109 : actualRows1109=WordField.canonicalRows actualModulus 1109 (.band 1107 1108) := by core033_kernel_decide
theorem stats1109 : actualRows1109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1109=5124 := by core033_kernel_decide
theorem rows1110 : actualRows1110=WordField.canonicalRows actualModulus 1110 (.shr 618 24) := by core033_kernel_decide
theorem stats1110 : actualRows1110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1110=3396 := by core033_kernel_decide
theorem rows1111 : actualRows1111=WordField.canonicalRows actualModulus 1111 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1111 : actualRows1111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1111=3396 := by core033_kernel_decide
theorem rows1112 : actualRows1112=WordField.canonicalRows actualModulus 1112 (.band 1110 1111) := by core033_kernel_decide
theorem stats1112 : actualRows1112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1112=5124 := by core033_kernel_decide
theorem rows1113 : actualRows1113=WordField.canonicalRows actualModulus 1113 (.shr 744 0) := by core033_kernel_decide
theorem stats1113 : actualRows1113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1113=5124 := by core033_kernel_decide
theorem rows1114 : actualRows1114=WordField.canonicalRows actualModulus 1114 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1114 : actualRows1114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1114=3396 := by core033_kernel_decide
theorem rows1115 : actualRows1115=WordField.canonicalRows actualModulus 1115 (.band 1113 1114) := by core033_kernel_decide
theorem stats1115 : actualRows1115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1115=5124 := by core033_kernel_decide
theorem rows1116 : actualRows1116=WordField.canonicalRows actualModulus 1116 (.shr 745 0) := by core033_kernel_decide
theorem stats1116 : actualRows1116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1116=5124 := by core033_kernel_decide
theorem rows1117 : actualRows1117=WordField.canonicalRows actualModulus 1117 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1117 : actualRows1117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1117=3396 := by core033_kernel_decide
theorem rows1118 : actualRows1118=WordField.canonicalRows actualModulus 1118 (.band 1116 1117) := by core033_kernel_decide
theorem stats1118 : actualRows1118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1118=5124 := by core033_kernel_decide
theorem rows1119 : actualRows1119=WordField.canonicalRows actualModulus 1119 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1119 : actualRows1119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1119=2820 := by core033_kernel_decide
theorem rows1120 : actualRows1120=WordField.canonicalRows actualModulus 1120 (.bnot 1119) := by core033_kernel_decide
theorem stats1120 : actualRows1120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1120=6276 := by core033_kernel_decide
theorem rows1121 : actualRows1121=WordField.canonicalRows actualModulus 1121 (.band 0 1120) := by core033_kernel_decide
theorem stats1121 : actualRows1121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1121=5124 := by core033_kernel_decide
def partRows16 : List R1CS.Row := actualRows1058++actualRows1059++actualRows1060++actualRows1061++actualRows1062++actualRows1063++actualRows1064++actualRows1065++actualRows1066++actualRows1067++actualRows1068++actualRows1069++actualRows1070++actualRows1071++actualRows1072++actualRows1073++actualRows1074++actualRows1075++actualRows1076++actualRows1077++actualRows1078++actualRows1079++actualRows1080++actualRows1081++actualRows1082++actualRows1083++actualRows1084++actualRows1085++actualRows1086++actualRows1087++actualRows1088++actualRows1089++actualRows1090++actualRows1091++actualRows1092++actualRows1093++actualRows1094++actualRows1095++actualRows1096++actualRows1097++actualRows1098++actualRows1099++actualRows1100++actualRows1101++actualRows1102++actualRows1103++actualRows1104++actualRows1105++actualRows1106++actualRows1107++actualRows1108++actualRows1109++actualRows1110++actualRows1111++actualRows1112++actualRows1113++actualRows1114++actualRows1115++actualRows1116++actualRows1117++actualRows1118++actualRows1119++actualRows1120++actualRows1121
def partOps16 : List WordIR.Op := [.band 1056 1057,.shr 450 16,.literal (BitVec.ofNat 32 255),.band 1059 1060,.shr 450 24,.literal (BitVec.ofNat 32 255),.band 1062 1063,.shr 560 0,.literal (BitVec.ofNat 32 255),.band 1065 1066,.shr 560 8,.literal (BitVec.ofNat 32 255),.band 1068 1069,.shr 560 16,.literal (BitVec.ofNat 32 255),.band 1071 1072,.shr 560 24,.literal (BitVec.ofNat 32 255),.band 1074 1075,.shr 570 0,.literal (BitVec.ofNat 32 255),.band 1077 1078,.shr 570 8,.literal (BitVec.ofNat 32 255),.band 1080 1081,.shr 570 16,.literal (BitVec.ofNat 32 255),.band 1083 1084,.shr 570 24,.literal (BitVec.ofNat 32 255),.band 1086 1087,.shr 609 0,.literal (BitVec.ofNat 32 255),.band 1089 1090,.shr 609 8,.literal (BitVec.ofNat 32 255),.band 1092 1093,.shr 609 16,.literal (BitVec.ofNat 32 255),.band 1095 1096,.shr 609 24,.literal (BitVec.ofNat 32 255),.band 1098 1099,.shr 618 0,.literal (BitVec.ofNat 32 255),.band 1101 1102,.shr 618 8,.literal (BitVec.ofNat 32 255),.band 1104 1105,.shr 618 16,.literal (BitVec.ofNat 32 255),.band 1107 1108,.shr 618 24,.literal (BitVec.ofNat 32 255),.band 1110 1111,.shr 744 0,.literal (BitVec.ofNat 32 255),.band 1113 1114,.shr 745 0,.literal (BitVec.ofNat 32 255),.band 1116 1117,.literal (BitVec.ofNat 32 0),.bnot 1119,.band 0 1120]
theorem partExact16 : partRows16=WordField.rows actualModulus 1058 partOps16 := by
  simp only [partRows16,partOps16,WordField.rows,rows1058,rows1059,rows1060,rows1061,rows1062,rows1063,rows1064,rows1065,rows1066,rows1067,rows1068,rows1069,rows1070,rows1071,rows1072,rows1073,rows1074,rows1075,rows1076,rows1077,rows1078,rows1079,rows1080,rows1081,rows1082,rows1083,rows1084,rows1085,rows1086,rows1087,rows1088,rows1089,rows1090,rows1091,rows1092,rows1093,rows1094,rows1095,rows1096,rows1097,rows1098,rows1099,rows1100,rows1101,rows1102,rows1103,rows1104,rows1105,rows1106,rows1107,rows1108,rows1109,rows1110,rows1111,rows1112,rows1113,rows1114,rows1115,rows1116,rows1117,rows1118,rows1119,rows1120,rows1121,List.append_assoc,List.append_nil]
theorem partLength16 : partOps16.length=64 := by decide
theorem partStats16 : partRows16.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows16=275520 := by
  simp only [partRows16,List.length_append,MatrixRowBlocks.rows_weight_append,stats1058.1,stats1058.2,stats1059.1,stats1059.2,stats1060.1,stats1060.2,stats1061.1,stats1061.2,stats1062.1,stats1062.2,stats1063.1,stats1063.2,stats1064.1,stats1064.2,stats1065.1,stats1065.2,stats1066.1,stats1066.2,stats1067.1,stats1067.2,stats1068.1,stats1068.2,stats1069.1,stats1069.2,stats1070.1,stats1070.2,stats1071.1,stats1071.2,stats1072.1,stats1072.2,stats1073.1,stats1073.2,stats1074.1,stats1074.2,stats1075.1,stats1075.2,stats1076.1,stats1076.2,stats1077.1,stats1077.2,stats1078.1,stats1078.2,stats1079.1,stats1079.2,stats1080.1,stats1080.2,stats1081.1,stats1081.2,stats1082.1,stats1082.2,stats1083.1,stats1083.2,stats1084.1,stats1084.2,stats1085.1,stats1085.2,stats1086.1,stats1086.2,stats1087.1,stats1087.2,stats1088.1,stats1088.2,stats1089.1,stats1089.2,stats1090.1,stats1090.2,stats1091.1,stats1091.2,stats1092.1,stats1092.2,stats1093.1,stats1093.2,stats1094.1,stats1094.2,stats1095.1,stats1095.2,stats1096.1,stats1096.2,stats1097.1,stats1097.2,stats1098.1,stats1098.2,stats1099.1,stats1099.2,stats1100.1,stats1100.2,stats1101.1,stats1101.2,stats1102.1,stats1102.2,stats1103.1,stats1103.2,stats1104.1,stats1104.2,stats1105.1,stats1105.2,stats1106.1,stats1106.2,stats1107.1,stats1107.2,stats1108.1,stats1108.2,stats1109.1,stats1109.2,stats1110.1,stats1110.2,stats1111.1,stats1111.2,stats1112.1,stats1112.2,stats1113.1,stats1113.2,stats1114.1,stats1114.2,stats1115.1,stats1115.2,stats1116.1,stats1116.2,stats1117.1,stats1117.2,stats1118.1,stats1118.2,stats1119.1,stats1119.2,stats1120.1,stats1120.2,stats1121.1,stats1121.2]
  decide
end PathFrameCheckedRows
