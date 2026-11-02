import ActualIngressIR
import ArtifactIngressBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import IngressInstructionMatrixData17
namespace IngressCheckedRows
open Core033 IngressInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1088 : actualRows1088=WordField.canonicalRows actualModulus 1088 (.bnot 1087) := by core033_kernel_decide
theorem stats1088 : actualRows1088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1088=6276 := by core033_kernel_decide
theorem rows1089 : actualRows1089=WordField.canonicalRows actualModulus 1089 (.badd 1086 1088) := by core033_kernel_decide
theorem stats1089 : actualRows1089.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1089=5388 := by core033_kernel_decide
theorem rows1090 : actualRows1090=WordField.canonicalRows actualModulus 1090 (.bnot 1089) := by core033_kernel_decide
theorem stats1090 : actualRows1090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1090=6276 := by core033_kernel_decide
theorem rows1091 : actualRows1091=WordField.canonicalRows actualModulus 1091 (.band 1085 1090) := by core033_kernel_decide
theorem stats1091 : actualRows1091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1091=5124 := by core033_kernel_decide
theorem rows1092 : actualRows1092=WordField.canonicalRows actualModulus 1092 (.bxor 1081 1091) := by core033_kernel_decide
theorem stats1092 : actualRows1092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1092=7428 := by core033_kernel_decide
theorem rows1093 : actualRows1093=WordField.canonicalRows actualModulus 1093 (.shr 1092 31) := by core033_kernel_decide
theorem stats1093 : actualRows1093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1093=2892 := by core033_kernel_decide
theorem rows1094 : actualRows1094=WordField.canonicalRows actualModulus 1094 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1094 : actualRows1094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1094=2892 := by core033_kernel_decide
theorem rows1095 : actualRows1095=WordField.canonicalRows actualModulus 1095 (.bxor 1093 1094) := by core033_kernel_decide
theorem stats1095 : actualRows1095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1095=7428 := by core033_kernel_decide
theorem rows1096 : actualRows1096=WordField.canonicalRows actualModulus 1096 (.shr 52 8) := by core033_kernel_decide
theorem stats1096 : actualRows1096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1096=4548 := by core033_kernel_decide
theorem rows1097 : actualRows1097=WordField.canonicalRows actualModulus 1097 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1097 : actualRows1097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1097=2820 := by core033_kernel_decide
theorem rows1098 : actualRows1098=WordField.canonicalRows actualModulus 1098 (.bnot 1097) := by core033_kernel_decide
theorem stats1098 : actualRows1098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1098=6276 := by core033_kernel_decide
theorem rows1099 : actualRows1099=WordField.canonicalRows actualModulus 1099 (.band 1096 1098) := by core033_kernel_decide
theorem stats1099 : actualRows1099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1099=5124 := by core033_kernel_decide
theorem rows1100 : actualRows1100=WordField.canonicalRows actualModulus 1100 (.shr 52 8) := by core033_kernel_decide
theorem stats1100 : actualRows1100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1100=4548 := by core033_kernel_decide
theorem rows1101 : actualRows1101=WordField.canonicalRows actualModulus 1101 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1101 : actualRows1101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1101=2820 := by core033_kernel_decide
theorem rows1102 : actualRows1102=WordField.canonicalRows actualModulus 1102 (.bnot 1101) := by core033_kernel_decide
theorem stats1102 : actualRows1102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1102=6276 := by core033_kernel_decide
theorem rows1103 : actualRows1103=WordField.canonicalRows actualModulus 1103 (.bxor 1100 1102) := by core033_kernel_decide
theorem stats1103 : actualRows1103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1103=7428 := by core033_kernel_decide
theorem rows1104 : actualRows1104=WordField.canonicalRows actualModulus 1104 (.shr 52 8) := by core033_kernel_decide
theorem stats1104 : actualRows1104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1104=4548 := by core033_kernel_decide
theorem rows1105 : actualRows1105=WordField.canonicalRows actualModulus 1105 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1105 : actualRows1105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1105=2820 := by core033_kernel_decide
theorem rows1106 : actualRows1106=WordField.canonicalRows actualModulus 1106 (.bnot 1105) := by core033_kernel_decide
theorem stats1106 : actualRows1106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1106=6276 := by core033_kernel_decide
theorem rows1107 : actualRows1107=WordField.canonicalRows actualModulus 1107 (.badd 1104 1106) := by core033_kernel_decide
theorem stats1107 : actualRows1107.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1107=5388 := by core033_kernel_decide
theorem rows1108 : actualRows1108=WordField.canonicalRows actualModulus 1108 (.bnot 1107) := by core033_kernel_decide
theorem stats1108 : actualRows1108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1108=6276 := by core033_kernel_decide
theorem rows1109 : actualRows1109=WordField.canonicalRows actualModulus 1109 (.band 1103 1108) := by core033_kernel_decide
theorem stats1109 : actualRows1109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1109=5124 := by core033_kernel_decide
theorem rows1110 : actualRows1110=WordField.canonicalRows actualModulus 1110 (.bxor 1099 1109) := by core033_kernel_decide
theorem stats1110 : actualRows1110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1110=7428 := by core033_kernel_decide
theorem rows1111 : actualRows1111=WordField.canonicalRows actualModulus 1111 (.shr 1110 31) := by core033_kernel_decide
theorem stats1111 : actualRows1111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1111=2892 := by core033_kernel_decide
theorem rows1112 : actualRows1112=WordField.canonicalRows actualModulus 1112 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1112 : actualRows1112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1112=2892 := by core033_kernel_decide
theorem rows1113 : actualRows1113=WordField.canonicalRows actualModulus 1113 (.bxor 1111 1112) := by core033_kernel_decide
theorem stats1113 : actualRows1113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1113=7428 := by core033_kernel_decide
theorem rows1114 : actualRows1114=WordField.canonicalRows actualModulus 1114 (.shr 53 8) := by core033_kernel_decide
theorem stats1114 : actualRows1114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1114=4548 := by core033_kernel_decide
theorem rows1115 : actualRows1115=WordField.canonicalRows actualModulus 1115 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1115 : actualRows1115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1115=2820 := by core033_kernel_decide
theorem rows1116 : actualRows1116=WordField.canonicalRows actualModulus 1116 (.bnot 1115) := by core033_kernel_decide
theorem stats1116 : actualRows1116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1116=6276 := by core033_kernel_decide
theorem rows1117 : actualRows1117=WordField.canonicalRows actualModulus 1117 (.band 1114 1116) := by core033_kernel_decide
theorem stats1117 : actualRows1117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1117=5124 := by core033_kernel_decide
theorem rows1118 : actualRows1118=WordField.canonicalRows actualModulus 1118 (.shr 53 8) := by core033_kernel_decide
theorem stats1118 : actualRows1118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1118=4548 := by core033_kernel_decide
theorem rows1119 : actualRows1119=WordField.canonicalRows actualModulus 1119 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1119 : actualRows1119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1119=2820 := by core033_kernel_decide
theorem rows1120 : actualRows1120=WordField.canonicalRows actualModulus 1120 (.bnot 1119) := by core033_kernel_decide
theorem stats1120 : actualRows1120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1120=6276 := by core033_kernel_decide
theorem rows1121 : actualRows1121=WordField.canonicalRows actualModulus 1121 (.bxor 1118 1120) := by core033_kernel_decide
theorem stats1121 : actualRows1121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1121=7428 := by core033_kernel_decide
theorem rows1122 : actualRows1122=WordField.canonicalRows actualModulus 1122 (.shr 53 8) := by core033_kernel_decide
theorem stats1122 : actualRows1122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1122=4548 := by core033_kernel_decide
theorem rows1123 : actualRows1123=WordField.canonicalRows actualModulus 1123 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1123 : actualRows1123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1123=2820 := by core033_kernel_decide
theorem rows1124 : actualRows1124=WordField.canonicalRows actualModulus 1124 (.bnot 1123) := by core033_kernel_decide
theorem stats1124 : actualRows1124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1124=6276 := by core033_kernel_decide
theorem rows1125 : actualRows1125=WordField.canonicalRows actualModulus 1125 (.badd 1122 1124) := by core033_kernel_decide
theorem stats1125 : actualRows1125.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1125=5388 := by core033_kernel_decide
theorem rows1126 : actualRows1126=WordField.canonicalRows actualModulus 1126 (.bnot 1125) := by core033_kernel_decide
theorem stats1126 : actualRows1126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1126=6276 := by core033_kernel_decide
theorem rows1127 : actualRows1127=WordField.canonicalRows actualModulus 1127 (.band 1121 1126) := by core033_kernel_decide
theorem stats1127 : actualRows1127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1127=5124 := by core033_kernel_decide
theorem rows1128 : actualRows1128=WordField.canonicalRows actualModulus 1128 (.bxor 1117 1127) := by core033_kernel_decide
theorem stats1128 : actualRows1128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1128=7428 := by core033_kernel_decide
theorem rows1129 : actualRows1129=WordField.canonicalRows actualModulus 1129 (.shr 1128 31) := by core033_kernel_decide
theorem stats1129 : actualRows1129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1129=2892 := by core033_kernel_decide
theorem rows1130 : actualRows1130=WordField.canonicalRows actualModulus 1130 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1130 : actualRows1130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1130=2892 := by core033_kernel_decide
theorem rows1131 : actualRows1131=WordField.canonicalRows actualModulus 1131 (.bxor 1129 1130) := by core033_kernel_decide
theorem stats1131 : actualRows1131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1131=7428 := by core033_kernel_decide
theorem rows1132 : actualRows1132=WordField.canonicalRows actualModulus 1132 (.shr 54 8) := by core033_kernel_decide
theorem stats1132 : actualRows1132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1132=4548 := by core033_kernel_decide
theorem rows1133 : actualRows1133=WordField.canonicalRows actualModulus 1133 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1133 : actualRows1133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1133=2820 := by core033_kernel_decide
theorem rows1134 : actualRows1134=WordField.canonicalRows actualModulus 1134 (.bnot 1133) := by core033_kernel_decide
theorem stats1134 : actualRows1134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1134=6276 := by core033_kernel_decide
theorem rows1135 : actualRows1135=WordField.canonicalRows actualModulus 1135 (.band 1132 1134) := by core033_kernel_decide
theorem stats1135 : actualRows1135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1135=5124 := by core033_kernel_decide
theorem rows1136 : actualRows1136=WordField.canonicalRows actualModulus 1136 (.shr 54 8) := by core033_kernel_decide
theorem stats1136 : actualRows1136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1136=4548 := by core033_kernel_decide
theorem rows1137 : actualRows1137=WordField.canonicalRows actualModulus 1137 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1137 : actualRows1137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1137=2820 := by core033_kernel_decide
theorem rows1138 : actualRows1138=WordField.canonicalRows actualModulus 1138 (.bnot 1137) := by core033_kernel_decide
theorem stats1138 : actualRows1138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1138=6276 := by core033_kernel_decide
theorem rows1139 : actualRows1139=WordField.canonicalRows actualModulus 1139 (.bxor 1136 1138) := by core033_kernel_decide
theorem stats1139 : actualRows1139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1139=7428 := by core033_kernel_decide
theorem rows1140 : actualRows1140=WordField.canonicalRows actualModulus 1140 (.shr 54 8) := by core033_kernel_decide
theorem stats1140 : actualRows1140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1140=4548 := by core033_kernel_decide
theorem rows1141 : actualRows1141=WordField.canonicalRows actualModulus 1141 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1141 : actualRows1141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1141=2820 := by core033_kernel_decide
theorem rows1142 : actualRows1142=WordField.canonicalRows actualModulus 1142 (.bnot 1141) := by core033_kernel_decide
theorem stats1142 : actualRows1142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1142=6276 := by core033_kernel_decide
theorem rows1143 : actualRows1143=WordField.canonicalRows actualModulus 1143 (.badd 1140 1142) := by core033_kernel_decide
theorem stats1143 : actualRows1143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1143=5388 := by core033_kernel_decide
theorem rows1144 : actualRows1144=WordField.canonicalRows actualModulus 1144 (.bnot 1143) := by core033_kernel_decide
theorem stats1144 : actualRows1144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1144=6276 := by core033_kernel_decide
theorem rows1145 : actualRows1145=WordField.canonicalRows actualModulus 1145 (.band 1139 1144) := by core033_kernel_decide
theorem stats1145 : actualRows1145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1145=5124 := by core033_kernel_decide
theorem rows1146 : actualRows1146=WordField.canonicalRows actualModulus 1146 (.bxor 1135 1145) := by core033_kernel_decide
theorem stats1146 : actualRows1146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1146=7428 := by core033_kernel_decide
theorem rows1147 : actualRows1147=WordField.canonicalRows actualModulus 1147 (.shr 1146 31) := by core033_kernel_decide
theorem stats1147 : actualRows1147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1147=2892 := by core033_kernel_decide
theorem rows1148 : actualRows1148=WordField.canonicalRows actualModulus 1148 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1148 : actualRows1148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1148=2892 := by core033_kernel_decide
theorem rows1149 : actualRows1149=WordField.canonicalRows actualModulus 1149 (.bxor 1147 1148) := by core033_kernel_decide
theorem stats1149 : actualRows1149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1149=7428 := by core033_kernel_decide
theorem rows1150 : actualRows1150=WordField.canonicalRows actualModulus 1150 (.shr 55 8) := by core033_kernel_decide
theorem stats1150 : actualRows1150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1150=4548 := by core033_kernel_decide
theorem rows1151 : actualRows1151=WordField.canonicalRows actualModulus 1151 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1151 : actualRows1151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1151=2820 := by core033_kernel_decide
def partRows16 : List R1CS.Row := actualRows1088++actualRows1089++actualRows1090++actualRows1091++actualRows1092++actualRows1093++actualRows1094++actualRows1095++actualRows1096++actualRows1097++actualRows1098++actualRows1099++actualRows1100++actualRows1101++actualRows1102++actualRows1103++actualRows1104++actualRows1105++actualRows1106++actualRows1107++actualRows1108++actualRows1109++actualRows1110++actualRows1111++actualRows1112++actualRows1113++actualRows1114++actualRows1115++actualRows1116++actualRows1117++actualRows1118++actualRows1119++actualRows1120++actualRows1121++actualRows1122++actualRows1123++actualRows1124++actualRows1125++actualRows1126++actualRows1127++actualRows1128++actualRows1129++actualRows1130++actualRows1131++actualRows1132++actualRows1133++actualRows1134++actualRows1135++actualRows1136++actualRows1137++actualRows1138++actualRows1139++actualRows1140++actualRows1141++actualRows1142++actualRows1143++actualRows1144++actualRows1145++actualRows1146++actualRows1147++actualRows1148++actualRows1149++actualRows1150++actualRows1151
def partOps16 : List WordIR.Op := [.bnot 1087,.badd 1086 1088,.bnot 1089,.band 1085 1090,.bxor 1081 1091,.shr 1092 31,.literal (BitVec.ofNat 32 1),.bxor 1093 1094,.shr 52 8,.literal (BitVec.ofNat 32 0),.bnot 1097,.band 1096 1098,.shr 52 8,.literal (BitVec.ofNat 32 0),.bnot 1101,.bxor 1100 1102,.shr 52 8,.literal (BitVec.ofNat 32 0),.bnot 1105,.badd 1104 1106,.bnot 1107,.band 1103 1108,.bxor 1099 1109,.shr 1110 31,.literal (BitVec.ofNat 32 1),.bxor 1111 1112,.shr 53 8,.literal (BitVec.ofNat 32 0),.bnot 1115,.band 1114 1116,.shr 53 8,.literal (BitVec.ofNat 32 0),.bnot 1119,.bxor 1118 1120,.shr 53 8,.literal (BitVec.ofNat 32 0),.bnot 1123,.badd 1122 1124,.bnot 1125,.band 1121 1126,.bxor 1117 1127,.shr 1128 31,.literal (BitVec.ofNat 32 1),.bxor 1129 1130,.shr 54 8,.literal (BitVec.ofNat 32 0),.bnot 1133,.band 1132 1134,.shr 54 8,.literal (BitVec.ofNat 32 0),.bnot 1137,.bxor 1136 1138,.shr 54 8,.literal (BitVec.ofNat 32 0),.bnot 1141,.badd 1140 1142,.bnot 1143,.band 1139 1144,.bxor 1135 1145,.shr 1146 31,.literal (BitVec.ofNat 32 1),.bxor 1147 1148,.shr 55 8,.literal (BitVec.ofNat 32 0)]
theorem partExact16 : partRows16=WordField.rows actualModulus 1088 partOps16 := by
  simp only [partRows16,partOps16,WordField.rows,rows1088,rows1089,rows1090,rows1091,rows1092,rows1093,rows1094,rows1095,rows1096,rows1097,rows1098,rows1099,rows1100,rows1101,rows1102,rows1103,rows1104,rows1105,rows1106,rows1107,rows1108,rows1109,rows1110,rows1111,rows1112,rows1113,rows1114,rows1115,rows1116,rows1117,rows1118,rows1119,rows1120,rows1121,rows1122,rows1123,rows1124,rows1125,rows1126,rows1127,rows1128,rows1129,rows1130,rows1131,rows1132,rows1133,rows1134,rows1135,rows1136,rows1137,rows1138,rows1139,rows1140,rows1141,rows1142,rows1143,rows1144,rows1145,rows1146,rows1147,rows1148,rows1149,rows1150,rows1151,List.append_assoc,List.append_nil]
theorem partLength16 : partOps16.length=64 := by decide
theorem partStats16 : partRows16.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows16=323808 := by
  simp only [partRows16,List.length_append,MatrixRowBlocks.rows_weight_append,stats1088.1,stats1088.2,stats1089.1,stats1089.2,stats1090.1,stats1090.2,stats1091.1,stats1091.2,stats1092.1,stats1092.2,stats1093.1,stats1093.2,stats1094.1,stats1094.2,stats1095.1,stats1095.2,stats1096.1,stats1096.2,stats1097.1,stats1097.2,stats1098.1,stats1098.2,stats1099.1,stats1099.2,stats1100.1,stats1100.2,stats1101.1,stats1101.2,stats1102.1,stats1102.2,stats1103.1,stats1103.2,stats1104.1,stats1104.2,stats1105.1,stats1105.2,stats1106.1,stats1106.2,stats1107.1,stats1107.2,stats1108.1,stats1108.2,stats1109.1,stats1109.2,stats1110.1,stats1110.2,stats1111.1,stats1111.2,stats1112.1,stats1112.2,stats1113.1,stats1113.2,stats1114.1,stats1114.2,stats1115.1,stats1115.2,stats1116.1,stats1116.2,stats1117.1,stats1117.2,stats1118.1,stats1118.2,stats1119.1,stats1119.2,stats1120.1,stats1120.2,stats1121.1,stats1121.2,stats1122.1,stats1122.2,stats1123.1,stats1123.2,stats1124.1,stats1124.2,stats1125.1,stats1125.2,stats1126.1,stats1126.2,stats1127.1,stats1127.2,stats1128.1,stats1128.2,stats1129.1,stats1129.2,stats1130.1,stats1130.2,stats1131.1,stats1131.2,stats1132.1,stats1132.2,stats1133.1,stats1133.2,stats1134.1,stats1134.2,stats1135.1,stats1135.2,stats1136.1,stats1136.2,stats1137.1,stats1137.2,stats1138.1,stats1138.2,stats1139.1,stats1139.2,stats1140.1,stats1140.2,stats1141.1,stats1141.2,stats1142.1,stats1142.2,stats1143.1,stats1143.2,stats1144.1,stats1144.2,stats1145.1,stats1145.2,stats1146.1,stats1146.2,stats1147.1,stats1147.2,stats1148.1,stats1148.2,stats1149.1,stats1149.2,stats1150.1,stats1150.2,stats1151.1,stats1151.2]
  decide
end IngressCheckedRows
