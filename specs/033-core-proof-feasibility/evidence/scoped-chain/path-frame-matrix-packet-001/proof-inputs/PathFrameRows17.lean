import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData17
import PathFrameInstructionMatrixData18
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1122 : actualRows1122=WordField.canonicalRows actualModulus 1122 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1122 : actualRows1122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1122=2820 := by core033_kernel_decide
theorem rows1123 : actualRows1123=WordField.canonicalRows actualModulus 1123 (.bnot 1122) := by core033_kernel_decide
theorem stats1123 : actualRows1123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1123=6276 := by core033_kernel_decide
theorem rows1124 : actualRows1124=WordField.canonicalRows actualModulus 1124 (.bxor 0 1123) := by core033_kernel_decide
theorem stats1124 : actualRows1124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1124=7428 := by core033_kernel_decide
theorem rows1125 : actualRows1125=WordField.canonicalRows actualModulus 1125 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1125 : actualRows1125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1125=2820 := by core033_kernel_decide
theorem rows1126 : actualRows1126=WordField.canonicalRows actualModulus 1126 (.bnot 1125) := by core033_kernel_decide
theorem stats1126 : actualRows1126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1126=6276 := by core033_kernel_decide
theorem rows1127 : actualRows1127=WordField.canonicalRows actualModulus 1127 (.badd 0 1126) := by core033_kernel_decide
theorem stats1127 : actualRows1127.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1127=5388 := by core033_kernel_decide
theorem rows1128 : actualRows1128=WordField.canonicalRows actualModulus 1128 (.bnot 1127) := by core033_kernel_decide
theorem stats1128 : actualRows1128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1128=6276 := by core033_kernel_decide
theorem rows1129 : actualRows1129=WordField.canonicalRows actualModulus 1129 (.band 1124 1128) := by core033_kernel_decide
theorem stats1129 : actualRows1129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1129=5124 := by core033_kernel_decide
theorem rows1130 : actualRows1130=WordField.canonicalRows actualModulus 1130 (.bxor 1121 1129) := by core033_kernel_decide
theorem stats1130 : actualRows1130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1130=7428 := by core033_kernel_decide
theorem rows1131 : actualRows1131=WordField.canonicalRows actualModulus 1131 (.shr 1130 31) := by core033_kernel_decide
theorem stats1131 : actualRows1131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1131=2892 := by core033_kernel_decide
theorem rows1132 : actualRows1132=WordField.canonicalRows actualModulus 1132 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats1132 : actualRows1132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1132=2964 := by core033_kernel_decide
theorem rows1133 : actualRows1133=WordField.canonicalRows actualModulus 1133 (.bnot 0) := by core033_kernel_decide
theorem stats1133 : actualRows1133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1133=6276 := by core033_kernel_decide
theorem rows1134 : actualRows1134=WordField.canonicalRows actualModulus 1134 (.band 1132 1133) := by core033_kernel_decide
theorem stats1134 : actualRows1134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1134=5124 := by core033_kernel_decide
theorem rows1135 : actualRows1135=WordField.canonicalRows actualModulus 1135 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats1135 : actualRows1135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1135=2964 := by core033_kernel_decide
theorem rows1136 : actualRows1136=WordField.canonicalRows actualModulus 1136 (.bnot 0) := by core033_kernel_decide
theorem stats1136 : actualRows1136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1136=6276 := by core033_kernel_decide
theorem rows1137 : actualRows1137=WordField.canonicalRows actualModulus 1137 (.bxor 1135 1136) := by core033_kernel_decide
theorem stats1137 : actualRows1137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1137=7428 := by core033_kernel_decide
theorem rows1138 : actualRows1138=WordField.canonicalRows actualModulus 1138 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats1138 : actualRows1138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1138=2964 := by core033_kernel_decide
theorem rows1139 : actualRows1139=WordField.canonicalRows actualModulus 1139 (.bnot 0) := by core033_kernel_decide
theorem stats1139 : actualRows1139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1139=6276 := by core033_kernel_decide
theorem rows1140 : actualRows1140=WordField.canonicalRows actualModulus 1140 (.badd 1138 1139) := by core033_kernel_decide
theorem stats1140 : actualRows1140.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1140=5388 := by core033_kernel_decide
theorem rows1141 : actualRows1141=WordField.canonicalRows actualModulus 1141 (.bnot 1140) := by core033_kernel_decide
theorem stats1141 : actualRows1141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1141=6276 := by core033_kernel_decide
theorem rows1142 : actualRows1142=WordField.canonicalRows actualModulus 1142 (.band 1137 1141) := by core033_kernel_decide
theorem stats1142 : actualRows1142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1142=5124 := by core033_kernel_decide
theorem rows1143 : actualRows1143=WordField.canonicalRows actualModulus 1143 (.bxor 1134 1142) := by core033_kernel_decide
theorem stats1143 : actualRows1143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1143=7428 := by core033_kernel_decide
theorem rows1144 : actualRows1144=WordField.canonicalRows actualModulus 1144 (.shr 1143 31) := by core033_kernel_decide
theorem stats1144 : actualRows1144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1144=2892 := by core033_kernel_decide
theorem rows1145 : actualRows1145=WordField.canonicalRows actualModulus 1145 (.band 1131 1144) := by core033_kernel_decide
theorem stats1145 : actualRows1145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1145=5124 := by core033_kernel_decide
theorem rows1146 : actualRows1146=WordField.canonicalRows actualModulus 1146 (.shr 38 8) := by core033_kernel_decide
theorem stats1146 : actualRows1146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1146=4548 := by core033_kernel_decide
theorem rows1147 : actualRows1147=WordField.canonicalRows actualModulus 1147 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1147 : actualRows1147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1147=2820 := by core033_kernel_decide
theorem rows1148 : actualRows1148=WordField.canonicalRows actualModulus 1148 (.bnot 1147) := by core033_kernel_decide
theorem stats1148 : actualRows1148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1148=6276 := by core033_kernel_decide
theorem rows1149 : actualRows1149=WordField.canonicalRows actualModulus 1149 (.band 1146 1148) := by core033_kernel_decide
theorem stats1149 : actualRows1149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1149=5124 := by core033_kernel_decide
theorem rows1150 : actualRows1150=WordField.canonicalRows actualModulus 1150 (.shr 38 8) := by core033_kernel_decide
theorem stats1150 : actualRows1150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1150=4548 := by core033_kernel_decide
theorem rows1151 : actualRows1151=WordField.canonicalRows actualModulus 1151 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1151 : actualRows1151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1151=2820 := by core033_kernel_decide
theorem rows1152 : actualRows1152=WordField.canonicalRows actualModulus 1152 (.bnot 1151) := by core033_kernel_decide
theorem stats1152 : actualRows1152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1152=6276 := by core033_kernel_decide
theorem rows1153 : actualRows1153=WordField.canonicalRows actualModulus 1153 (.bxor 1150 1152) := by core033_kernel_decide
theorem stats1153 : actualRows1153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1153=7428 := by core033_kernel_decide
theorem rows1154 : actualRows1154=WordField.canonicalRows actualModulus 1154 (.shr 38 8) := by core033_kernel_decide
theorem stats1154 : actualRows1154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1154=4548 := by core033_kernel_decide
theorem rows1155 : actualRows1155=WordField.canonicalRows actualModulus 1155 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1155 : actualRows1155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1155=2820 := by core033_kernel_decide
theorem rows1156 : actualRows1156=WordField.canonicalRows actualModulus 1156 (.bnot 1155) := by core033_kernel_decide
theorem stats1156 : actualRows1156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1156=6276 := by core033_kernel_decide
theorem rows1157 : actualRows1157=WordField.canonicalRows actualModulus 1157 (.badd 1154 1156) := by core033_kernel_decide
theorem stats1157 : actualRows1157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1157=5388 := by core033_kernel_decide
theorem rows1158 : actualRows1158=WordField.canonicalRows actualModulus 1158 (.bnot 1157) := by core033_kernel_decide
theorem stats1158 : actualRows1158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1158=6276 := by core033_kernel_decide
theorem rows1159 : actualRows1159=WordField.canonicalRows actualModulus 1159 (.band 1153 1158) := by core033_kernel_decide
theorem stats1159 : actualRows1159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1159=5124 := by core033_kernel_decide
theorem rows1160 : actualRows1160=WordField.canonicalRows actualModulus 1160 (.bxor 1149 1159) := by core033_kernel_decide
theorem stats1160 : actualRows1160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1160=7428 := by core033_kernel_decide
theorem rows1161 : actualRows1161=WordField.canonicalRows actualModulus 1161 (.shr 1160 31) := by core033_kernel_decide
theorem stats1161 : actualRows1161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1161=2892 := by core033_kernel_decide
theorem rows1162 : actualRows1162=WordField.canonicalRows actualModulus 1162 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1162 : actualRows1162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1162=2892 := by core033_kernel_decide
theorem rows1163 : actualRows1163=WordField.canonicalRows actualModulus 1163 (.bxor 1161 1162) := by core033_kernel_decide
theorem stats1163 : actualRows1163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1163=7428 := by core033_kernel_decide
theorem rows1164 : actualRows1164=WordField.canonicalRows actualModulus 1164 (.shr 744 1) := by core033_kernel_decide
theorem stats1164 : actualRows1164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1164=5052 := by core033_kernel_decide
theorem rows1165 : actualRows1165=WordField.canonicalRows actualModulus 1165 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1165 : actualRows1165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1165=2820 := by core033_kernel_decide
theorem rows1166 : actualRows1166=WordField.canonicalRows actualModulus 1166 (.bnot 1165) := by core033_kernel_decide
theorem stats1166 : actualRows1166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1166=6276 := by core033_kernel_decide
theorem rows1167 : actualRows1167=WordField.canonicalRows actualModulus 1167 (.band 1164 1166) := by core033_kernel_decide
theorem stats1167 : actualRows1167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1167=5124 := by core033_kernel_decide
theorem rows1168 : actualRows1168=WordField.canonicalRows actualModulus 1168 (.shr 744 1) := by core033_kernel_decide
theorem stats1168 : actualRows1168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1168=5052 := by core033_kernel_decide
theorem rows1169 : actualRows1169=WordField.canonicalRows actualModulus 1169 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1169 : actualRows1169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1169=2820 := by core033_kernel_decide
theorem rows1170 : actualRows1170=WordField.canonicalRows actualModulus 1170 (.bnot 1169) := by core033_kernel_decide
theorem stats1170 : actualRows1170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1170=6276 := by core033_kernel_decide
theorem rows1171 : actualRows1171=WordField.canonicalRows actualModulus 1171 (.bxor 1168 1170) := by core033_kernel_decide
theorem stats1171 : actualRows1171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1171=7428 := by core033_kernel_decide
theorem rows1172 : actualRows1172=WordField.canonicalRows actualModulus 1172 (.shr 744 1) := by core033_kernel_decide
theorem stats1172 : actualRows1172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1172=5052 := by core033_kernel_decide
theorem rows1173 : actualRows1173=WordField.canonicalRows actualModulus 1173 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1173 : actualRows1173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1173=2820 := by core033_kernel_decide
theorem rows1174 : actualRows1174=WordField.canonicalRows actualModulus 1174 (.bnot 1173) := by core033_kernel_decide
theorem stats1174 : actualRows1174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1174=6276 := by core033_kernel_decide
theorem rows1175 : actualRows1175=WordField.canonicalRows actualModulus 1175 (.badd 1172 1174) := by core033_kernel_decide
theorem stats1175 : actualRows1175.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1175=5388 := by core033_kernel_decide
theorem rows1176 : actualRows1176=WordField.canonicalRows actualModulus 1176 (.bnot 1175) := by core033_kernel_decide
theorem stats1176 : actualRows1176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1176=6276 := by core033_kernel_decide
theorem rows1177 : actualRows1177=WordField.canonicalRows actualModulus 1177 (.band 1171 1176) := by core033_kernel_decide
theorem stats1177 : actualRows1177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1177=5124 := by core033_kernel_decide
theorem rows1178 : actualRows1178=WordField.canonicalRows actualModulus 1178 (.bxor 1167 1177) := by core033_kernel_decide
theorem stats1178 : actualRows1178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1178=7428 := by core033_kernel_decide
theorem rows1179 : actualRows1179=WordField.canonicalRows actualModulus 1179 (.shr 1178 31) := by core033_kernel_decide
theorem stats1179 : actualRows1179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1179=2892 := by core033_kernel_decide
theorem rows1180 : actualRows1180=WordField.canonicalRows actualModulus 1180 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1180 : actualRows1180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1180=2892 := by core033_kernel_decide
theorem rows1181 : actualRows1181=WordField.canonicalRows actualModulus 1181 (.bxor 1179 1180) := by core033_kernel_decide
theorem stats1181 : actualRows1181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1181=7428 := by core033_kernel_decide
theorem rows1182 : actualRows1182=WordField.canonicalRows actualModulus 1182 (.shr 745 1) := by core033_kernel_decide
theorem stats1182 : actualRows1182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1182=5052 := by core033_kernel_decide
theorem rows1183 : actualRows1183=WordField.canonicalRows actualModulus 1183 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1183 : actualRows1183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1183=2820 := by core033_kernel_decide
theorem rows1184 : actualRows1184=WordField.canonicalRows actualModulus 1184 (.bnot 1183) := by core033_kernel_decide
theorem stats1184 : actualRows1184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1184=6276 := by core033_kernel_decide
theorem rows1185 : actualRows1185=WordField.canonicalRows actualModulus 1185 (.band 1182 1184) := by core033_kernel_decide
theorem stats1185 : actualRows1185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1185=5124 := by core033_kernel_decide
def partRows17 : List R1CS.Row := actualRows1122++actualRows1123++actualRows1124++actualRows1125++actualRows1126++actualRows1127++actualRows1128++actualRows1129++actualRows1130++actualRows1131++actualRows1132++actualRows1133++actualRows1134++actualRows1135++actualRows1136++actualRows1137++actualRows1138++actualRows1139++actualRows1140++actualRows1141++actualRows1142++actualRows1143++actualRows1144++actualRows1145++actualRows1146++actualRows1147++actualRows1148++actualRows1149++actualRows1150++actualRows1151++actualRows1152++actualRows1153++actualRows1154++actualRows1155++actualRows1156++actualRows1157++actualRows1158++actualRows1159++actualRows1160++actualRows1161++actualRows1162++actualRows1163++actualRows1164++actualRows1165++actualRows1166++actualRows1167++actualRows1168++actualRows1169++actualRows1170++actualRows1171++actualRows1172++actualRows1173++actualRows1174++actualRows1175++actualRows1176++actualRows1177++actualRows1178++actualRows1179++actualRows1180++actualRows1181++actualRows1182++actualRows1183++actualRows1184++actualRows1185
def partOps17 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 1122,.bxor 0 1123,.literal (BitVec.ofNat 32 0),.bnot 1125,.badd 0 1126,.bnot 1127,.band 1124 1128,.bxor 1121 1129,.shr 1130 31,.literal (BitVec.ofNat 32 3),.bnot 0,.band 1132 1133,.literal (BitVec.ofNat 32 3),.bnot 0,.bxor 1135 1136,.literal (BitVec.ofNat 32 3),.bnot 0,.badd 1138 1139,.bnot 1140,.band 1137 1141,.bxor 1134 1142,.shr 1143 31,.band 1131 1144,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 1147,.band 1146 1148,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 1151,.bxor 1150 1152,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 1155,.badd 1154 1156,.bnot 1157,.band 1153 1158,.bxor 1149 1159,.shr 1160 31,.literal (BitVec.ofNat 32 1),.bxor 1161 1162,.shr 744 1,.literal (BitVec.ofNat 32 0),.bnot 1165,.band 1164 1166,.shr 744 1,.literal (BitVec.ofNat 32 0),.bnot 1169,.bxor 1168 1170,.shr 744 1,.literal (BitVec.ofNat 32 0),.bnot 1173,.badd 1172 1174,.bnot 1175,.band 1171 1176,.bxor 1167 1177,.shr 1178 31,.literal (BitVec.ofNat 32 1),.bxor 1179 1180,.shr 745 1,.literal (BitVec.ofNat 32 0),.bnot 1183,.band 1182 1184]
theorem partExact17 : partRows17=WordField.rows actualModulus 1122 partOps17 := by
  simp only [partRows17,partOps17,WordField.rows,rows1122,rows1123,rows1124,rows1125,rows1126,rows1127,rows1128,rows1129,rows1130,rows1131,rows1132,rows1133,rows1134,rows1135,rows1136,rows1137,rows1138,rows1139,rows1140,rows1141,rows1142,rows1143,rows1144,rows1145,rows1146,rows1147,rows1148,rows1149,rows1150,rows1151,rows1152,rows1153,rows1154,rows1155,rows1156,rows1157,rows1158,rows1159,rows1160,rows1161,rows1162,rows1163,rows1164,rows1165,rows1166,rows1167,rows1168,rows1169,rows1170,rows1171,rows1172,rows1173,rows1174,rows1175,rows1176,rows1177,rows1178,rows1179,rows1180,rows1181,rows1182,rows1183,rows1184,rows1185,List.append_assoc,List.append_nil]
theorem partLength17 : partOps17.length=64 := by decide
theorem partStats17 : partRows17.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows17=327840 := by
  simp only [partRows17,List.length_append,MatrixRowBlocks.rows_weight_append,stats1122.1,stats1122.2,stats1123.1,stats1123.2,stats1124.1,stats1124.2,stats1125.1,stats1125.2,stats1126.1,stats1126.2,stats1127.1,stats1127.2,stats1128.1,stats1128.2,stats1129.1,stats1129.2,stats1130.1,stats1130.2,stats1131.1,stats1131.2,stats1132.1,stats1132.2,stats1133.1,stats1133.2,stats1134.1,stats1134.2,stats1135.1,stats1135.2,stats1136.1,stats1136.2,stats1137.1,stats1137.2,stats1138.1,stats1138.2,stats1139.1,stats1139.2,stats1140.1,stats1140.2,stats1141.1,stats1141.2,stats1142.1,stats1142.2,stats1143.1,stats1143.2,stats1144.1,stats1144.2,stats1145.1,stats1145.2,stats1146.1,stats1146.2,stats1147.1,stats1147.2,stats1148.1,stats1148.2,stats1149.1,stats1149.2,stats1150.1,stats1150.2,stats1151.1,stats1151.2,stats1152.1,stats1152.2,stats1153.1,stats1153.2,stats1154.1,stats1154.2,stats1155.1,stats1155.2,stats1156.1,stats1156.2,stats1157.1,stats1157.2,stats1158.1,stats1158.2,stats1159.1,stats1159.2,stats1160.1,stats1160.2,stats1161.1,stats1161.2,stats1162.1,stats1162.2,stats1163.1,stats1163.2,stats1164.1,stats1164.2,stats1165.1,stats1165.2,stats1166.1,stats1166.2,stats1167.1,stats1167.2,stats1168.1,stats1168.2,stats1169.1,stats1169.2,stats1170.1,stats1170.2,stats1171.1,stats1171.2,stats1172.1,stats1172.2,stats1173.1,stats1173.2,stats1174.1,stats1174.2,stats1175.1,stats1175.2,stats1176.1,stats1176.2,stats1177.1,stats1177.2,stats1178.1,stats1178.2,stats1179.1,stats1179.2,stats1180.1,stats1180.2,stats1181.1,stats1181.2,stats1182.1,stats1182.2,stats1183.1,stats1183.2,stats1184.1,stats1184.2,stats1185.1,stats1185.2]
  decide
end PathFrameCheckedRows
