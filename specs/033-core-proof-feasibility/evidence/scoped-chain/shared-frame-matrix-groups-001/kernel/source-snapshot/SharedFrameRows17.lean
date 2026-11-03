import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData17
import SharedFrameInstructionMatrixData18
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1131 : actualRows1131=WordField.canonicalRows actualModulus 1131 (.shr 1130 31) := by core033_kernel_decide
theorem stats1131 : actualRows1131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1131=2892 := by core033_kernel_decide
theorem rows1132 : actualRows1132=WordField.canonicalRows actualModulus 1132 (.bxor 1131 43) := by core033_kernel_decide
theorem stats1132 : actualRows1132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1132=7428 := by core033_kernel_decide
theorem rows1133 : actualRows1133=WordField.canonicalRows actualModulus 1133 (.shr 735 8) := by core033_kernel_decide
theorem stats1133 : actualRows1133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1133=4548 := by core033_kernel_decide
theorem rows1134 : actualRows1134=WordField.canonicalRows actualModulus 1134 (.band 1133 50) := by core033_kernel_decide
theorem stats1134 : actualRows1134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1134=5124 := by core033_kernel_decide
theorem rows1135 : actualRows1135=WordField.canonicalRows actualModulus 1135 (.bxor 1133 50) := by core033_kernel_decide
theorem stats1135 : actualRows1135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1135=7428 := by core033_kernel_decide
theorem rows1136 : actualRows1136=WordField.canonicalRows actualModulus 1136 (.badd 1133 50) := by core033_kernel_decide
theorem stats1136 : actualRows1136.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1136=5388 := by core033_kernel_decide
theorem rows1137 : actualRows1137=WordField.canonicalRows actualModulus 1137 (.bnot 1136) := by core033_kernel_decide
theorem stats1137 : actualRows1137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1137=6276 := by core033_kernel_decide
theorem rows1138 : actualRows1138=WordField.canonicalRows actualModulus 1138 (.band 1135 1137) := by core033_kernel_decide
theorem stats1138 : actualRows1138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1138=5124 := by core033_kernel_decide
theorem rows1139 : actualRows1139=WordField.canonicalRows actualModulus 1139 (.bxor 1134 1138) := by core033_kernel_decide
theorem stats1139 : actualRows1139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1139=7428 := by core033_kernel_decide
theorem rows1140 : actualRows1140=WordField.canonicalRows actualModulus 1140 (.shr 1139 31) := by core033_kernel_decide
theorem stats1140 : actualRows1140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1140=2892 := by core033_kernel_decide
theorem rows1141 : actualRows1141=WordField.canonicalRows actualModulus 1141 (.bxor 1140 43) := by core033_kernel_decide
theorem stats1141 : actualRows1141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1141=7428 := by core033_kernel_decide
theorem rows1142 : actualRows1142=WordField.canonicalRows actualModulus 1142 (.shr 737 8) := by core033_kernel_decide
theorem stats1142 : actualRows1142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1142=4548 := by core033_kernel_decide
theorem rows1143 : actualRows1143=WordField.canonicalRows actualModulus 1143 (.band 1142 50) := by core033_kernel_decide
theorem stats1143 : actualRows1143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1143=5124 := by core033_kernel_decide
theorem rows1144 : actualRows1144=WordField.canonicalRows actualModulus 1144 (.bxor 1142 50) := by core033_kernel_decide
theorem stats1144 : actualRows1144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1144=7428 := by core033_kernel_decide
theorem rows1145 : actualRows1145=WordField.canonicalRows actualModulus 1145 (.badd 1142 50) := by core033_kernel_decide
theorem stats1145 : actualRows1145.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1145=5388 := by core033_kernel_decide
theorem rows1146 : actualRows1146=WordField.canonicalRows actualModulus 1146 (.bnot 1145) := by core033_kernel_decide
theorem stats1146 : actualRows1146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1146=6276 := by core033_kernel_decide
theorem rows1147 : actualRows1147=WordField.canonicalRows actualModulus 1147 (.band 1144 1146) := by core033_kernel_decide
theorem stats1147 : actualRows1147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1147=5124 := by core033_kernel_decide
theorem rows1148 : actualRows1148=WordField.canonicalRows actualModulus 1148 (.bxor 1143 1147) := by core033_kernel_decide
theorem stats1148 : actualRows1148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1148=7428 := by core033_kernel_decide
theorem rows1149 : actualRows1149=WordField.canonicalRows actualModulus 1149 (.shr 1148 31) := by core033_kernel_decide
theorem stats1149 : actualRows1149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1149=2892 := by core033_kernel_decide
theorem rows1150 : actualRows1150=WordField.canonicalRows actualModulus 1150 (.bxor 1149 43) := by core033_kernel_decide
theorem stats1150 : actualRows1150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1150=7428 := by core033_kernel_decide
theorem rows1151 : actualRows1151=WordField.canonicalRows actualModulus 1151 (.shr 740 8) := by core033_kernel_decide
theorem stats1151 : actualRows1151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1151=4548 := by core033_kernel_decide
theorem rows1152 : actualRows1152=WordField.canonicalRows actualModulus 1152 (.band 1151 50) := by core033_kernel_decide
theorem stats1152 : actualRows1152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1152=5124 := by core033_kernel_decide
theorem rows1153 : actualRows1153=WordField.canonicalRows actualModulus 1153 (.bxor 1151 50) := by core033_kernel_decide
theorem stats1153 : actualRows1153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1153=7428 := by core033_kernel_decide
theorem rows1154 : actualRows1154=WordField.canonicalRows actualModulus 1154 (.badd 1151 50) := by core033_kernel_decide
theorem stats1154 : actualRows1154.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1154=5388 := by core033_kernel_decide
theorem rows1155 : actualRows1155=WordField.canonicalRows actualModulus 1155 (.bnot 1154) := by core033_kernel_decide
theorem stats1155 : actualRows1155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1155=6276 := by core033_kernel_decide
theorem rows1156 : actualRows1156=WordField.canonicalRows actualModulus 1156 (.band 1153 1155) := by core033_kernel_decide
theorem stats1156 : actualRows1156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1156=5124 := by core033_kernel_decide
theorem rows1157 : actualRows1157=WordField.canonicalRows actualModulus 1157 (.bxor 1152 1156) := by core033_kernel_decide
theorem stats1157 : actualRows1157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1157=7428 := by core033_kernel_decide
theorem rows1158 : actualRows1158=WordField.canonicalRows actualModulus 1158 (.shr 1157 31) := by core033_kernel_decide
theorem stats1158 : actualRows1158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1158=2892 := by core033_kernel_decide
theorem rows1159 : actualRows1159=WordField.canonicalRows actualModulus 1159 (.bxor 1158 43) := by core033_kernel_decide
theorem stats1159 : actualRows1159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1159=7428 := by core033_kernel_decide
theorem rows1160 : actualRows1160=WordField.canonicalRows actualModulus 1160 (.shr 743 8) := by core033_kernel_decide
theorem stats1160 : actualRows1160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1160=4548 := by core033_kernel_decide
theorem rows1161 : actualRows1161=WordField.canonicalRows actualModulus 1161 (.band 1160 50) := by core033_kernel_decide
theorem stats1161 : actualRows1161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1161=5124 := by core033_kernel_decide
theorem rows1162 : actualRows1162=WordField.canonicalRows actualModulus 1162 (.bxor 1160 50) := by core033_kernel_decide
theorem stats1162 : actualRows1162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1162=7428 := by core033_kernel_decide
theorem rows1163 : actualRows1163=WordField.canonicalRows actualModulus 1163 (.badd 1160 50) := by core033_kernel_decide
theorem stats1163 : actualRows1163.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1163=5388 := by core033_kernel_decide
theorem rows1164 : actualRows1164=WordField.canonicalRows actualModulus 1164 (.bnot 1163) := by core033_kernel_decide
theorem stats1164 : actualRows1164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1164=6276 := by core033_kernel_decide
theorem rows1165 : actualRows1165=WordField.canonicalRows actualModulus 1165 (.band 1162 1164) := by core033_kernel_decide
theorem stats1165 : actualRows1165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1165=5124 := by core033_kernel_decide
theorem rows1166 : actualRows1166=WordField.canonicalRows actualModulus 1166 (.bxor 1161 1165) := by core033_kernel_decide
theorem stats1166 : actualRows1166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1166=7428 := by core033_kernel_decide
theorem rows1167 : actualRows1167=WordField.canonicalRows actualModulus 1167 (.shr 1166 31) := by core033_kernel_decide
theorem stats1167 : actualRows1167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1167=2892 := by core033_kernel_decide
theorem rows1168 : actualRows1168=WordField.canonicalRows actualModulus 1168 (.bxor 1167 43) := by core033_kernel_decide
theorem stats1168 : actualRows1168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1168=7428 := by core033_kernel_decide
theorem rows1169 : actualRows1169=WordField.canonicalRows actualModulus 1169 (.shr 746 8) := by core033_kernel_decide
theorem stats1169 : actualRows1169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1169=4548 := by core033_kernel_decide
theorem rows1170 : actualRows1170=WordField.canonicalRows actualModulus 1170 (.band 1169 50) := by core033_kernel_decide
theorem stats1170 : actualRows1170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1170=5124 := by core033_kernel_decide
theorem rows1171 : actualRows1171=WordField.canonicalRows actualModulus 1171 (.bxor 1169 50) := by core033_kernel_decide
theorem stats1171 : actualRows1171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1171=7428 := by core033_kernel_decide
theorem rows1172 : actualRows1172=WordField.canonicalRows actualModulus 1172 (.badd 1169 50) := by core033_kernel_decide
theorem stats1172 : actualRows1172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1172=5388 := by core033_kernel_decide
theorem rows1173 : actualRows1173=WordField.canonicalRows actualModulus 1173 (.bnot 1172) := by core033_kernel_decide
theorem stats1173 : actualRows1173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1173=6276 := by core033_kernel_decide
theorem rows1174 : actualRows1174=WordField.canonicalRows actualModulus 1174 (.band 1171 1173) := by core033_kernel_decide
theorem stats1174 : actualRows1174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1174=5124 := by core033_kernel_decide
theorem rows1175 : actualRows1175=WordField.canonicalRows actualModulus 1175 (.bxor 1170 1174) := by core033_kernel_decide
theorem stats1175 : actualRows1175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1175=7428 := by core033_kernel_decide
theorem rows1176 : actualRows1176=WordField.canonicalRows actualModulus 1176 (.shr 1175 31) := by core033_kernel_decide
theorem stats1176 : actualRows1176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1176=2892 := by core033_kernel_decide
theorem rows1177 : actualRows1177=WordField.canonicalRows actualModulus 1177 (.bxor 1176 43) := by core033_kernel_decide
theorem stats1177 : actualRows1177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1177=7428 := by core033_kernel_decide
theorem rows1178 : actualRows1178=WordField.canonicalRows actualModulus 1178 (.shr 749 8) := by core033_kernel_decide
theorem stats1178 : actualRows1178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1178=4548 := by core033_kernel_decide
theorem rows1179 : actualRows1179=WordField.canonicalRows actualModulus 1179 (.band 1178 50) := by core033_kernel_decide
theorem stats1179 : actualRows1179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1179=5124 := by core033_kernel_decide
theorem rows1180 : actualRows1180=WordField.canonicalRows actualModulus 1180 (.bxor 1178 50) := by core033_kernel_decide
theorem stats1180 : actualRows1180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1180=7428 := by core033_kernel_decide
theorem rows1181 : actualRows1181=WordField.canonicalRows actualModulus 1181 (.badd 1178 50) := by core033_kernel_decide
theorem stats1181 : actualRows1181.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1181=5388 := by core033_kernel_decide
theorem rows1182 : actualRows1182=WordField.canonicalRows actualModulus 1182 (.bnot 1181) := by core033_kernel_decide
theorem stats1182 : actualRows1182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1182=6276 := by core033_kernel_decide
theorem rows1183 : actualRows1183=WordField.canonicalRows actualModulus 1183 (.band 1180 1182) := by core033_kernel_decide
theorem stats1183 : actualRows1183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1183=5124 := by core033_kernel_decide
theorem rows1184 : actualRows1184=WordField.canonicalRows actualModulus 1184 (.bxor 1179 1183) := by core033_kernel_decide
theorem stats1184 : actualRows1184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1184=7428 := by core033_kernel_decide
theorem rows1185 : actualRows1185=WordField.canonicalRows actualModulus 1185 (.shr 1184 31) := by core033_kernel_decide
theorem stats1185 : actualRows1185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1185=2892 := by core033_kernel_decide
theorem rows1186 : actualRows1186=WordField.canonicalRows actualModulus 1186 (.bxor 1185 43) := by core033_kernel_decide
theorem stats1186 : actualRows1186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1186=7428 := by core033_kernel_decide
theorem rows1187 : actualRows1187=WordField.canonicalRows actualModulus 1187 (.shr 752 8) := by core033_kernel_decide
theorem stats1187 : actualRows1187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1187=4548 := by core033_kernel_decide
theorem rows1188 : actualRows1188=WordField.canonicalRows actualModulus 1188 (.band 1187 50) := by core033_kernel_decide
theorem stats1188 : actualRows1188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1188=5124 := by core033_kernel_decide
theorem rows1189 : actualRows1189=WordField.canonicalRows actualModulus 1189 (.bxor 1187 50) := by core033_kernel_decide
theorem stats1189 : actualRows1189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1189=7428 := by core033_kernel_decide
theorem rows1190 : actualRows1190=WordField.canonicalRows actualModulus 1190 (.badd 1187 50) := by core033_kernel_decide
theorem stats1190 : actualRows1190.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1190=5388 := by core033_kernel_decide
theorem rows1191 : actualRows1191=WordField.canonicalRows actualModulus 1191 (.bnot 1190) := by core033_kernel_decide
theorem stats1191 : actualRows1191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1191=6276 := by core033_kernel_decide
theorem rows1192 : actualRows1192=WordField.canonicalRows actualModulus 1192 (.band 1189 1191) := by core033_kernel_decide
theorem stats1192 : actualRows1192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1192=5124 := by core033_kernel_decide
theorem rows1193 : actualRows1193=WordField.canonicalRows actualModulus 1193 (.bxor 1188 1192) := by core033_kernel_decide
theorem stats1193 : actualRows1193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1193=7428 := by core033_kernel_decide
theorem rows1194 : actualRows1194=WordField.canonicalRows actualModulus 1194 (.shr 1193 31) := by core033_kernel_decide
theorem stats1194 : actualRows1194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1194=2892 := by core033_kernel_decide
def partRows17 : List R1CS.Row := actualRows1131++actualRows1132++actualRows1133++actualRows1134++actualRows1135++actualRows1136++actualRows1137++actualRows1138++actualRows1139++actualRows1140++actualRows1141++actualRows1142++actualRows1143++actualRows1144++actualRows1145++actualRows1146++actualRows1147++actualRows1148++actualRows1149++actualRows1150++actualRows1151++actualRows1152++actualRows1153++actualRows1154++actualRows1155++actualRows1156++actualRows1157++actualRows1158++actualRows1159++actualRows1160++actualRows1161++actualRows1162++actualRows1163++actualRows1164++actualRows1165++actualRows1166++actualRows1167++actualRows1168++actualRows1169++actualRows1170++actualRows1171++actualRows1172++actualRows1173++actualRows1174++actualRows1175++actualRows1176++actualRows1177++actualRows1178++actualRows1179++actualRows1180++actualRows1181++actualRows1182++actualRows1183++actualRows1184++actualRows1185++actualRows1186++actualRows1187++actualRows1188++actualRows1189++actualRows1190++actualRows1191++actualRows1192++actualRows1193++actualRows1194
def partOps17 : List WordIR.Op := [.shr 1130 31,.bxor 1131 43,.shr 735 8,.band 1133 50,.bxor 1133 50,.badd 1133 50,.bnot 1136,.band 1135 1137,.bxor 1134 1138,.shr 1139 31,.bxor 1140 43,.shr 737 8,.band 1142 50,.bxor 1142 50,.badd 1142 50,.bnot 1145,.band 1144 1146,.bxor 1143 1147,.shr 1148 31,.bxor 1149 43,.shr 740 8,.band 1151 50,.bxor 1151 50,.badd 1151 50,.bnot 1154,.band 1153 1155,.bxor 1152 1156,.shr 1157 31,.bxor 1158 43,.shr 743 8,.band 1160 50,.bxor 1160 50,.badd 1160 50,.bnot 1163,.band 1162 1164,.bxor 1161 1165,.shr 1166 31,.bxor 1167 43,.shr 746 8,.band 1169 50,.bxor 1169 50,.badd 1169 50,.bnot 1172,.band 1171 1173,.bxor 1170 1174,.shr 1175 31,.bxor 1176 43,.shr 749 8,.band 1178 50,.bxor 1178 50,.badd 1178 50,.bnot 1181,.band 1180 1182,.bxor 1179 1183,.shr 1184 31,.bxor 1185 43,.shr 752 8,.band 1187 50,.bxor 1187 50,.badd 1187 50,.bnot 1190,.band 1189 1191,.bxor 1188 1192,.shr 1193 31]
theorem partExact17 : partRows17=WordField.rows actualModulus 1131 partOps17 := by
  simp only [partRows17,partOps17,WordField.rows,rows1131,rows1132,rows1133,rows1134,rows1135,rows1136,rows1137,rows1138,rows1139,rows1140,rows1141,rows1142,rows1143,rows1144,rows1145,rows1146,rows1147,rows1148,rows1149,rows1150,rows1151,rows1152,rows1153,rows1154,rows1155,rows1156,rows1157,rows1158,rows1159,rows1160,rows1161,rows1162,rows1163,rows1164,rows1165,rows1166,rows1167,rows1168,rows1169,rows1170,rows1171,rows1172,rows1173,rows1174,rows1175,rows1176,rows1177,rows1178,rows1179,rows1180,rows1181,rows1182,rows1183,rows1184,rows1185,rows1186,rows1187,rows1188,rows1189,rows1190,rows1191,rows1192,rows1193,rows1194,List.append_assoc,List.append_nil]
theorem partLength17 : partOps17.length=64 := by decide
theorem partStats17 : partRows17.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows17=364344 := by
  simp only [partRows17,List.length_append,MatrixRowBlocks.rows_weight_append,stats1131.1,stats1131.2,stats1132.1,stats1132.2,stats1133.1,stats1133.2,stats1134.1,stats1134.2,stats1135.1,stats1135.2,stats1136.1,stats1136.2,stats1137.1,stats1137.2,stats1138.1,stats1138.2,stats1139.1,stats1139.2,stats1140.1,stats1140.2,stats1141.1,stats1141.2,stats1142.1,stats1142.2,stats1143.1,stats1143.2,stats1144.1,stats1144.2,stats1145.1,stats1145.2,stats1146.1,stats1146.2,stats1147.1,stats1147.2,stats1148.1,stats1148.2,stats1149.1,stats1149.2,stats1150.1,stats1150.2,stats1151.1,stats1151.2,stats1152.1,stats1152.2,stats1153.1,stats1153.2,stats1154.1,stats1154.2,stats1155.1,stats1155.2,stats1156.1,stats1156.2,stats1157.1,stats1157.2,stats1158.1,stats1158.2,stats1159.1,stats1159.2,stats1160.1,stats1160.2,stats1161.1,stats1161.2,stats1162.1,stats1162.2,stats1163.1,stats1163.2,stats1164.1,stats1164.2,stats1165.1,stats1165.2,stats1166.1,stats1166.2,stats1167.1,stats1167.2,stats1168.1,stats1168.2,stats1169.1,stats1169.2,stats1170.1,stats1170.2,stats1171.1,stats1171.2,stats1172.1,stats1172.2,stats1173.1,stats1173.2,stats1174.1,stats1174.2,stats1175.1,stats1175.2,stats1176.1,stats1176.2,stats1177.1,stats1177.2,stats1178.1,stats1178.2,stats1179.1,stats1179.2,stats1180.1,stats1180.2,stats1181.1,stats1181.2,stats1182.1,stats1182.2,stats1183.1,stats1183.2,stats1184.1,stats1184.2,stats1185.1,stats1185.2,stats1186.1,stats1186.2,stats1187.1,stats1187.2,stats1188.1,stats1188.2,stats1189.1,stats1189.2,stats1190.1,stats1190.2,stats1191.1,stats1191.2,stats1192.1,stats1192.2,stats1193.1,stats1193.2,stats1194.1,stats1194.2]
  decide
end SharedFrameCheckedRows
