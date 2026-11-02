import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData17
import ActualMatrixData18
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1112 : actualRows1112=WordField.canonicalRows actualModulus 1112 (.badd 1025 1111) := by core033_kernel_decide
theorem stats1112 : actualRows1112.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1112=5388 := by core033_kernel_decide
theorem rows1113 : actualRows1113=WordField.canonicalRows actualModulus 1113 (.band 1106 1079) := by core033_kernel_decide
theorem stats1113 : actualRows1113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1113=5124 := by core033_kernel_decide
theorem rows1114 : actualRows1114=WordField.canonicalRows actualModulus 1114 (.bnot 1106) := by core033_kernel_decide
theorem stats1114 : actualRows1114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1114=6276 := by core033_kernel_decide
theorem rows1115 : actualRows1115=WordField.canonicalRows actualModulus 1115 (.band 1114 1052) := by core033_kernel_decide
theorem stats1115 : actualRows1115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1115=5124 := by core033_kernel_decide
theorem rows1116 : actualRows1116=WordField.canonicalRows actualModulus 1116 (.bxor 1113 1115) := by core033_kernel_decide
theorem stats1116 : actualRows1116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1116=7428 := by core033_kernel_decide
theorem rows1117 : actualRows1117=WordField.canonicalRows actualModulus 1117 (.badd 1112 1116) := by core033_kernel_decide
theorem stats1117 : actualRows1117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1117=5388 := by core033_kernel_decide
theorem rows1118 : actualRows1118=WordField.canonicalRows actualModulus 1118 (.literal (BitVec.ofNat 32 4022224774)) := by core033_kernel_decide
theorem stats1118 : actualRows1118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1118=4260 := by core033_kernel_decide
theorem rows1119 : actualRows1119=WordField.canonicalRows actualModulus 1119 (.badd 1117 1118) := by core033_kernel_decide
theorem stats1119 : actualRows1119.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1119=5388 := by core033_kernel_decide
theorem rows1120 : actualRows1120=WordField.canonicalRows actualModulus 1120 (.badd 1119 49) := by core033_kernel_decide
theorem stats1120 : actualRows1120.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1120=5388 := by core033_kernel_decide
theorem rows1121 : actualRows1121=WordField.canonicalRows actualModulus 1121 (.rotr 1105 2) := by core033_kernel_decide
theorem stats1121 : actualRows1121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1121=5124 := by core033_kernel_decide
theorem rows1122 : actualRows1122=WordField.canonicalRows actualModulus 1122 (.rotr 1105 13) := by core033_kernel_decide
theorem stats1122 : actualRows1122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1122=5124 := by core033_kernel_decide
theorem rows1123 : actualRows1123=WordField.canonicalRows actualModulus 1123 (.bxor 1121 1122) := by core033_kernel_decide
theorem stats1123 : actualRows1123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1123=7428 := by core033_kernel_decide
theorem rows1124 : actualRows1124=WordField.canonicalRows actualModulus 1124 (.rotr 1105 22) := by core033_kernel_decide
theorem stats1124 : actualRows1124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1124=5124 := by core033_kernel_decide
theorem rows1125 : actualRows1125=WordField.canonicalRows actualModulus 1125 (.bxor 1123 1124) := by core033_kernel_decide
theorem stats1125 : actualRows1125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1125=7428 := by core033_kernel_decide
theorem rows1126 : actualRows1126=WordField.canonicalRows actualModulus 1126 (.band 1105 1078) := by core033_kernel_decide
theorem stats1126 : actualRows1126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1126=5124 := by core033_kernel_decide
theorem rows1127 : actualRows1127=WordField.canonicalRows actualModulus 1127 (.band 1105 1051) := by core033_kernel_decide
theorem stats1127 : actualRows1127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1127=5124 := by core033_kernel_decide
theorem rows1128 : actualRows1128=WordField.canonicalRows actualModulus 1128 (.bxor 1126 1127) := by core033_kernel_decide
theorem stats1128 : actualRows1128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1128=7428 := by core033_kernel_decide
theorem rows1129 : actualRows1129=WordField.canonicalRows actualModulus 1129 (.band 1078 1051) := by core033_kernel_decide
theorem stats1129 : actualRows1129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1129=5124 := by core033_kernel_decide
theorem rows1130 : actualRows1130=WordField.canonicalRows actualModulus 1130 (.bxor 1128 1129) := by core033_kernel_decide
theorem stats1130 : actualRows1130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1130=7428 := by core033_kernel_decide
theorem rows1131 : actualRows1131=WordField.canonicalRows actualModulus 1131 (.badd 1125 1130) := by core033_kernel_decide
theorem stats1131 : actualRows1131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1131=5388 := by core033_kernel_decide
theorem rows1132 : actualRows1132=WordField.canonicalRows actualModulus 1132 (.badd 1120 1131) := by core033_kernel_decide
theorem stats1132 : actualRows1132.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1132=5388 := by core033_kernel_decide
theorem rows1133 : actualRows1133=WordField.canonicalRows actualModulus 1133 (.badd 1024 1120) := by core033_kernel_decide
theorem stats1133 : actualRows1133.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1133=5388 := by core033_kernel_decide
theorem rows1134 : actualRows1134=WordField.canonicalRows actualModulus 1134 (.rotr 1133 6) := by core033_kernel_decide
theorem stats1134 : actualRows1134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1134=5124 := by core033_kernel_decide
theorem rows1135 : actualRows1135=WordField.canonicalRows actualModulus 1135 (.rotr 1133 11) := by core033_kernel_decide
theorem stats1135 : actualRows1135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1135=5124 := by core033_kernel_decide
theorem rows1136 : actualRows1136=WordField.canonicalRows actualModulus 1136 (.bxor 1134 1135) := by core033_kernel_decide
theorem stats1136 : actualRows1136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1136=7428 := by core033_kernel_decide
theorem rows1137 : actualRows1137=WordField.canonicalRows actualModulus 1137 (.rotr 1133 25) := by core033_kernel_decide
theorem stats1137 : actualRows1137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1137=5124 := by core033_kernel_decide
theorem rows1138 : actualRows1138=WordField.canonicalRows actualModulus 1138 (.bxor 1136 1137) := by core033_kernel_decide
theorem stats1138 : actualRows1138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1138=7428 := by core033_kernel_decide
theorem rows1139 : actualRows1139=WordField.canonicalRows actualModulus 1139 (.badd 1052 1138) := by core033_kernel_decide
theorem stats1139 : actualRows1139.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1139=5388 := by core033_kernel_decide
theorem rows1140 : actualRows1140=WordField.canonicalRows actualModulus 1140 (.band 1133 1106) := by core033_kernel_decide
theorem stats1140 : actualRows1140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1140=5124 := by core033_kernel_decide
theorem rows1141 : actualRows1141=WordField.canonicalRows actualModulus 1141 (.bnot 1133) := by core033_kernel_decide
theorem stats1141 : actualRows1141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1141=6276 := by core033_kernel_decide
theorem rows1142 : actualRows1142=WordField.canonicalRows actualModulus 1142 (.band 1141 1079) := by core033_kernel_decide
theorem stats1142 : actualRows1142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1142=5124 := by core033_kernel_decide
theorem rows1143 : actualRows1143=WordField.canonicalRows actualModulus 1143 (.bxor 1140 1142) := by core033_kernel_decide
theorem stats1143 : actualRows1143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1143=7428 := by core033_kernel_decide
theorem rows1144 : actualRows1144=WordField.canonicalRows actualModulus 1144 (.badd 1139 1143) := by core033_kernel_decide
theorem stats1144 : actualRows1144.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1144=5388 := by core033_kernel_decide
theorem rows1145 : actualRows1145=WordField.canonicalRows actualModulus 1145 (.literal (BitVec.ofNat 32 264347078)) := by core033_kernel_decide
theorem stats1145 : actualRows1145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1145=3972 := by core033_kernel_decide
theorem rows1146 : actualRows1146=WordField.canonicalRows actualModulus 1146 (.badd 1144 1145) := by core033_kernel_decide
theorem stats1146 : actualRows1146.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1146=5388 := by core033_kernel_decide
theorem rows1147 : actualRows1147=WordField.canonicalRows actualModulus 1147 (.badd 1146 62) := by core033_kernel_decide
theorem stats1147 : actualRows1147.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1147=5388 := by core033_kernel_decide
theorem rows1148 : actualRows1148=WordField.canonicalRows actualModulus 1148 (.rotr 1132 2) := by core033_kernel_decide
theorem stats1148 : actualRows1148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1148=5124 := by core033_kernel_decide
theorem rows1149 : actualRows1149=WordField.canonicalRows actualModulus 1149 (.rotr 1132 13) := by core033_kernel_decide
theorem stats1149 : actualRows1149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1149=5124 := by core033_kernel_decide
theorem rows1150 : actualRows1150=WordField.canonicalRows actualModulus 1150 (.bxor 1148 1149) := by core033_kernel_decide
theorem stats1150 : actualRows1150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1150=7428 := by core033_kernel_decide
theorem rows1151 : actualRows1151=WordField.canonicalRows actualModulus 1151 (.rotr 1132 22) := by core033_kernel_decide
theorem stats1151 : actualRows1151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1151=5124 := by core033_kernel_decide
theorem rows1152 : actualRows1152=WordField.canonicalRows actualModulus 1152 (.bxor 1150 1151) := by core033_kernel_decide
theorem stats1152 : actualRows1152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1152=7428 := by core033_kernel_decide
theorem rows1153 : actualRows1153=WordField.canonicalRows actualModulus 1153 (.band 1132 1105) := by core033_kernel_decide
theorem stats1153 : actualRows1153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1153=5124 := by core033_kernel_decide
theorem rows1154 : actualRows1154=WordField.canonicalRows actualModulus 1154 (.band 1132 1078) := by core033_kernel_decide
theorem stats1154 : actualRows1154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1154=5124 := by core033_kernel_decide
theorem rows1155 : actualRows1155=WordField.canonicalRows actualModulus 1155 (.bxor 1153 1154) := by core033_kernel_decide
theorem stats1155 : actualRows1155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1155=7428 := by core033_kernel_decide
theorem rows1156 : actualRows1156=WordField.canonicalRows actualModulus 1156 (.band 1105 1078) := by core033_kernel_decide
theorem stats1156 : actualRows1156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1156=5124 := by core033_kernel_decide
theorem rows1157 : actualRows1157=WordField.canonicalRows actualModulus 1157 (.bxor 1155 1156) := by core033_kernel_decide
theorem stats1157 : actualRows1157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1157=7428 := by core033_kernel_decide
theorem rows1158 : actualRows1158=WordField.canonicalRows actualModulus 1158 (.badd 1152 1157) := by core033_kernel_decide
theorem stats1158 : actualRows1158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1158=5388 := by core033_kernel_decide
theorem rows1159 : actualRows1159=WordField.canonicalRows actualModulus 1159 (.badd 1147 1158) := by core033_kernel_decide
theorem stats1159 : actualRows1159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1159=5388 := by core033_kernel_decide
theorem rows1160 : actualRows1160=WordField.canonicalRows actualModulus 1160 (.badd 1051 1147) := by core033_kernel_decide
theorem stats1160 : actualRows1160.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1160=5388 := by core033_kernel_decide
theorem rows1161 : actualRows1161=WordField.canonicalRows actualModulus 1161 (.rotr 1160 6) := by core033_kernel_decide
theorem stats1161 : actualRows1161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1161=5124 := by core033_kernel_decide
theorem rows1162 : actualRows1162=WordField.canonicalRows actualModulus 1162 (.rotr 1160 11) := by core033_kernel_decide
theorem stats1162 : actualRows1162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1162=5124 := by core033_kernel_decide
theorem rows1163 : actualRows1163=WordField.canonicalRows actualModulus 1163 (.bxor 1161 1162) := by core033_kernel_decide
theorem stats1163 : actualRows1163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1163=7428 := by core033_kernel_decide
theorem rows1164 : actualRows1164=WordField.canonicalRows actualModulus 1164 (.rotr 1160 25) := by core033_kernel_decide
theorem stats1164 : actualRows1164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1164=5124 := by core033_kernel_decide
theorem rows1165 : actualRows1165=WordField.canonicalRows actualModulus 1165 (.bxor 1163 1164) := by core033_kernel_decide
theorem stats1165 : actualRows1165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1165=7428 := by core033_kernel_decide
theorem rows1166 : actualRows1166=WordField.canonicalRows actualModulus 1166 (.badd 1079 1165) := by core033_kernel_decide
theorem stats1166 : actualRows1166.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1166=5388 := by core033_kernel_decide
theorem rows1167 : actualRows1167=WordField.canonicalRows actualModulus 1167 (.band 1160 1133) := by core033_kernel_decide
theorem stats1167 : actualRows1167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1167=5124 := by core033_kernel_decide
theorem rows1168 : actualRows1168=WordField.canonicalRows actualModulus 1168 (.bnot 1160) := by core033_kernel_decide
theorem stats1168 : actualRows1168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1168=6276 := by core033_kernel_decide
theorem rows1169 : actualRows1169=WordField.canonicalRows actualModulus 1169 (.band 1168 1106) := by core033_kernel_decide
theorem stats1169 : actualRows1169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1169=5124 := by core033_kernel_decide
theorem rows1170 : actualRows1170=WordField.canonicalRows actualModulus 1170 (.bxor 1167 1169) := by core033_kernel_decide
theorem stats1170 : actualRows1170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1170=7428 := by core033_kernel_decide
theorem rows1171 : actualRows1171=WordField.canonicalRows actualModulus 1171 (.badd 1166 1170) := by core033_kernel_decide
theorem stats1171 : actualRows1171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1171=5388 := by core033_kernel_decide
theorem rows1172 : actualRows1172=WordField.canonicalRows actualModulus 1172 (.literal (BitVec.ofNat 32 604807628)) := by core033_kernel_decide
theorem stats1172 : actualRows1172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1172=3612 := by core033_kernel_decide
theorem rows1173 : actualRows1173=WordField.canonicalRows actualModulus 1173 (.badd 1171 1172) := by core033_kernel_decide
theorem stats1173 : actualRows1173.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1173=5388 := by core033_kernel_decide
theorem rows1174 : actualRows1174=WordField.canonicalRows actualModulus 1174 (.badd 1173 75) := by core033_kernel_decide
theorem stats1174 : actualRows1174.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1174=5388 := by core033_kernel_decide
theorem rows1175 : actualRows1175=WordField.canonicalRows actualModulus 1175 (.rotr 1159 2) := by core033_kernel_decide
theorem stats1175 : actualRows1175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1175=5124 := by core033_kernel_decide
def partRows17 : List R1CS.Row := actualRows1112++actualRows1113++actualRows1114++actualRows1115++actualRows1116++actualRows1117++actualRows1118++actualRows1119++actualRows1120++actualRows1121++actualRows1122++actualRows1123++actualRows1124++actualRows1125++actualRows1126++actualRows1127++actualRows1128++actualRows1129++actualRows1130++actualRows1131++actualRows1132++actualRows1133++actualRows1134++actualRows1135++actualRows1136++actualRows1137++actualRows1138++actualRows1139++actualRows1140++actualRows1141++actualRows1142++actualRows1143++actualRows1144++actualRows1145++actualRows1146++actualRows1147++actualRows1148++actualRows1149++actualRows1150++actualRows1151++actualRows1152++actualRows1153++actualRows1154++actualRows1155++actualRows1156++actualRows1157++actualRows1158++actualRows1159++actualRows1160++actualRows1161++actualRows1162++actualRows1163++actualRows1164++actualRows1165++actualRows1166++actualRows1167++actualRows1168++actualRows1169++actualRows1170++actualRows1171++actualRows1172++actualRows1173++actualRows1174++actualRows1175
def partOps17 : List WordIR.Op := [.badd 1025 1111,.band 1106 1079,.bnot 1106,.band 1114 1052,.bxor 1113 1115,.badd 1112 1116,.literal (BitVec.ofNat 32 4022224774),.badd 1117 1118,.badd 1119 49,.rotr 1105 2,.rotr 1105 13,.bxor 1121 1122,.rotr 1105 22,.bxor 1123 1124,.band 1105 1078,.band 1105 1051,.bxor 1126 1127,.band 1078 1051,.bxor 1128 1129,.badd 1125 1130,.badd 1120 1131,.badd 1024 1120,.rotr 1133 6,.rotr 1133 11,.bxor 1134 1135,.rotr 1133 25,.bxor 1136 1137,.badd 1052 1138,.band 1133 1106,.bnot 1133,.band 1141 1079,.bxor 1140 1142,.badd 1139 1143,.literal (BitVec.ofNat 32 264347078),.badd 1144 1145,.badd 1146 62,.rotr 1132 2,.rotr 1132 13,.bxor 1148 1149,.rotr 1132 22,.bxor 1150 1151,.band 1132 1105,.band 1132 1078,.bxor 1153 1154,.band 1105 1078,.bxor 1155 1156,.badd 1152 1157,.badd 1147 1158,.badd 1051 1147,.rotr 1160 6,.rotr 1160 11,.bxor 1161 1162,.rotr 1160 25,.bxor 1163 1164,.badd 1079 1165,.band 1160 1133,.bnot 1160,.band 1168 1106,.bxor 1167 1169,.badd 1166 1170,.literal (BitVec.ofNat 32 604807628),.badd 1171 1172,.badd 1173 75,.rotr 1159 2]
theorem partRowsExact17 : partRows17=WordField.rows actualModulus 1112 partOps17 := by
  simp only [partRows17,partOps17,WordField.rows,rows1112,rows1113,rows1114,rows1115,rows1116,rows1117,rows1118,rows1119,rows1120,rows1121,rows1122,rows1123,rows1124,rows1125,rows1126,rows1127,rows1128,rows1129,rows1130,rows1131,rows1132,rows1133,rows1134,rows1135,rows1136,rows1137,rows1138,rows1139,rows1140,rows1141,rows1142,rows1143,rows1144,rows1145,rows1146,rows1147,rows1148,rows1149,rows1150,rows1151,rows1152,rows1153,rows1154,rows1155,rows1156,rows1157,rows1158,rows1159,rows1160,rows1161,rows1162,rows1163,rows1164,rows1165,rows1166,rows1167,rows1168,rows1169,rows1170,rows1171,rows1172,rows1173,rows1174,rows1175,List.append_assoc,List.append_nil]
theorem partOpsLength17 : partOps17.length=64 := by decide
theorem partStats17 : partRows17.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows17=367176 := by
  simp only [partRows17,List.length_append,MatrixRowBlocks.rows_weight_append,stats1112.1,stats1112.2,stats1113.1,stats1113.2,stats1114.1,stats1114.2,stats1115.1,stats1115.2,stats1116.1,stats1116.2,stats1117.1,stats1117.2,stats1118.1,stats1118.2,stats1119.1,stats1119.2,stats1120.1,stats1120.2,stats1121.1,stats1121.2,stats1122.1,stats1122.2,stats1123.1,stats1123.2,stats1124.1,stats1124.2,stats1125.1,stats1125.2,stats1126.1,stats1126.2,stats1127.1,stats1127.2,stats1128.1,stats1128.2,stats1129.1,stats1129.2,stats1130.1,stats1130.2,stats1131.1,stats1131.2,stats1132.1,stats1132.2,stats1133.1,stats1133.2,stats1134.1,stats1134.2,stats1135.1,stats1135.2,stats1136.1,stats1136.2,stats1137.1,stats1137.2,stats1138.1,stats1138.2,stats1139.1,stats1139.2,stats1140.1,stats1140.2,stats1141.1,stats1141.2,stats1142.1,stats1142.2,stats1143.1,stats1143.2,stats1144.1,stats1144.2,stats1145.1,stats1145.2,stats1146.1,stats1146.2,stats1147.1,stats1147.2,stats1148.1,stats1148.2,stats1149.1,stats1149.2,stats1150.1,stats1150.2,stats1151.1,stats1151.2,stats1152.1,stats1152.2,stats1153.1,stats1153.2,stats1154.1,stats1154.2,stats1155.1,stats1155.2,stats1156.1,stats1156.2,stats1157.1,stats1157.2,stats1158.1,stats1158.2,stats1159.1,stats1159.2,stats1160.1,stats1160.2,stats1161.1,stats1161.2,stats1162.1,stats1162.2,stats1163.1,stats1163.2,stats1164.1,stats1164.2,stats1165.1,stats1165.2,stats1166.1,stats1166.2,stats1167.1,stats1167.2,stats1168.1,stats1168.2,stats1169.1,stats1169.2,stats1170.1,stats1170.2,stats1171.1,stats1171.2,stats1172.1,stats1172.2,stats1173.1,stats1173.2,stats1174.1,stats1174.2,stats1175.1,stats1175.2]
  decide
end ActualSHAMatrixRows
