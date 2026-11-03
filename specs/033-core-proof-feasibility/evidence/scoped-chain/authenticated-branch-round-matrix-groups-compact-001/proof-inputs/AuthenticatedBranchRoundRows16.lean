import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData17
import AuthenticatedBranchRoundInstructionMatrixData18
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1142 : actualRows1142=WordField.canonicalRows actualModulus 1142 (.bnot 1141) := by core033_kernel_decide
theorem stats1142 : actualRows1142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1142=6276 := by core033_kernel_decide
theorem rows1143 : actualRows1143=WordField.canonicalRows actualModulus 1143 (.bnot 247) := by core033_kernel_decide
theorem stats1143 : actualRows1143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1143=6276 := by core033_kernel_decide
theorem rows1144 : actualRows1144=WordField.canonicalRows actualModulus 1144 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1144 : actualRows1144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1144=2892 := by core033_kernel_decide
theorem rows1145 : actualRows1145=WordField.canonicalRows actualModulus 1145 (.badd 1143 1144) := by core033_kernel_decide
theorem stats1145 : actualRows1145.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1145=5388 := by core033_kernel_decide
theorem rows1146 : actualRows1146=WordField.canonicalRows actualModulus 1146 (.band 1145 34) := by core033_kernel_decide
theorem stats1146 : actualRows1146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1146=5124 := by core033_kernel_decide
theorem rows1147 : actualRows1147=WordField.canonicalRows actualModulus 1147 (.bnot 247) := by core033_kernel_decide
theorem stats1147 : actualRows1147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1147=6276 := by core033_kernel_decide
theorem rows1148 : actualRows1148=WordField.canonicalRows actualModulus 1148 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1148 : actualRows1148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1148=2892 := by core033_kernel_decide
theorem rows1149 : actualRows1149=WordField.canonicalRows actualModulus 1149 (.badd 1147 1148) := by core033_kernel_decide
theorem stats1149 : actualRows1149.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1149=5388 := by core033_kernel_decide
theorem rows1150 : actualRows1150=WordField.canonicalRows actualModulus 1150 (.bnot 1149) := by core033_kernel_decide
theorem stats1150 : actualRows1150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1150=6276 := by core033_kernel_decide
theorem rows1151 : actualRows1151=WordField.canonicalRows actualModulus 1151 (.band 1150 22) := by core033_kernel_decide
theorem stats1151 : actualRows1151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1151=5124 := by core033_kernel_decide
theorem rows1152 : actualRows1152=WordField.canonicalRows actualModulus 1152 (.bxor 1146 1151) := by core033_kernel_decide
theorem stats1152 : actualRows1152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1152=7428 := by core033_kernel_decide
theorem rows1153 : actualRows1153=WordField.canonicalRows actualModulus 1153 (.band 1142 1152) := by core033_kernel_decide
theorem stats1153 : actualRows1153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1153=5124 := by core033_kernel_decide
theorem rows1154 : actualRows1154=WordField.canonicalRows actualModulus 1154 (.bxor 1138 1153) := by core033_kernel_decide
theorem stats1154 : actualRows1154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1154=7428 := by core033_kernel_decide
theorem rows1155 : actualRows1155=WordField.canonicalRows actualModulus 1155 (.bnot 182) := by core033_kernel_decide
theorem stats1155 : actualRows1155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1155=6276 := by core033_kernel_decide
theorem rows1156 : actualRows1156=WordField.canonicalRows actualModulus 1156 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1156 : actualRows1156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1156=2892 := by core033_kernel_decide
theorem rows1157 : actualRows1157=WordField.canonicalRows actualModulus 1157 (.badd 1155 1156) := by core033_kernel_decide
theorem stats1157 : actualRows1157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1157=5388 := by core033_kernel_decide
theorem rows1158 : actualRows1158=WordField.canonicalRows actualModulus 1158 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1158 : actualRows1158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1158=2892 := by core033_kernel_decide
theorem rows1159 : actualRows1159=WordField.canonicalRows actualModulus 1159 (.band 1157 1158) := by core033_kernel_decide
theorem stats1159 : actualRows1159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1159=5124 := by core033_kernel_decide
theorem rows1160 : actualRows1160=WordField.canonicalRows actualModulus 1160 (.bnot 182) := by core033_kernel_decide
theorem stats1160 : actualRows1160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1160=6276 := by core033_kernel_decide
theorem rows1161 : actualRows1161=WordField.canonicalRows actualModulus 1161 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1161 : actualRows1161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1161=2892 := by core033_kernel_decide
theorem rows1162 : actualRows1162=WordField.canonicalRows actualModulus 1162 (.badd 1160 1161) := by core033_kernel_decide
theorem stats1162 : actualRows1162.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1162=5388 := by core033_kernel_decide
theorem rows1163 : actualRows1163=WordField.canonicalRows actualModulus 1163 (.bnot 1162) := by core033_kernel_decide
theorem stats1163 : actualRows1163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1163=6276 := by core033_kernel_decide
theorem rows1164 : actualRows1164=WordField.canonicalRows actualModulus 1164 (.band 1163 46) := by core033_kernel_decide
theorem stats1164 : actualRows1164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1164=5124 := by core033_kernel_decide
theorem rows1165 : actualRows1165=WordField.canonicalRows actualModulus 1165 (.bxor 1159 1164) := by core033_kernel_decide
theorem stats1165 : actualRows1165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1165=7428 := by core033_kernel_decide
theorem rows1166 : actualRows1166=WordField.canonicalRows actualModulus 1166 (.bnot 182) := by core033_kernel_decide
theorem stats1166 : actualRows1166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1166=6276 := by core033_kernel_decide
theorem rows1167 : actualRows1167=WordField.canonicalRows actualModulus 1167 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1167 : actualRows1167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1167=2892 := by core033_kernel_decide
theorem rows1168 : actualRows1168=WordField.canonicalRows actualModulus 1168 (.badd 1166 1167) := by core033_kernel_decide
theorem stats1168 : actualRows1168.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1168=5388 := by core033_kernel_decide
theorem rows1169 : actualRows1169=WordField.canonicalRows actualModulus 1169 (.band 1168 47) := by core033_kernel_decide
theorem stats1169 : actualRows1169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1169=5124 := by core033_kernel_decide
theorem rows1170 : actualRows1170=WordField.canonicalRows actualModulus 1170 (.bnot 182) := by core033_kernel_decide
theorem stats1170 : actualRows1170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1170=6276 := by core033_kernel_decide
theorem rows1171 : actualRows1171=WordField.canonicalRows actualModulus 1171 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1171 : actualRows1171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1171=2892 := by core033_kernel_decide
theorem rows1172 : actualRows1172=WordField.canonicalRows actualModulus 1172 (.badd 1170 1171) := by core033_kernel_decide
theorem stats1172 : actualRows1172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1172=5388 := by core033_kernel_decide
theorem rows1173 : actualRows1173=WordField.canonicalRows actualModulus 1173 (.bnot 1172) := by core033_kernel_decide
theorem stats1173 : actualRows1173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1173=6276 := by core033_kernel_decide
theorem rows1174 : actualRows1174=WordField.canonicalRows actualModulus 1174 (.band 1173 47) := by core033_kernel_decide
theorem stats1174 : actualRows1174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1174=5124 := by core033_kernel_decide
theorem rows1175 : actualRows1175=WordField.canonicalRows actualModulus 1175 (.bxor 1169 1174) := by core033_kernel_decide
theorem stats1175 : actualRows1175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1175=7428 := by core033_kernel_decide
theorem rows1176 : actualRows1176=WordField.canonicalRows actualModulus 1176 (.bnot 182) := by core033_kernel_decide
theorem stats1176 : actualRows1176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1176=6276 := by core033_kernel_decide
theorem rows1177 : actualRows1177=WordField.canonicalRows actualModulus 1177 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1177 : actualRows1177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1177=2892 := by core033_kernel_decide
theorem rows1178 : actualRows1178=WordField.canonicalRows actualModulus 1178 (.badd 1176 1177) := by core033_kernel_decide
theorem stats1178 : actualRows1178.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1178=5388 := by core033_kernel_decide
theorem rows1179 : actualRows1179=WordField.canonicalRows actualModulus 1179 (.band 1178 48) := by core033_kernel_decide
theorem stats1179 : actualRows1179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1179=5124 := by core033_kernel_decide
theorem rows1180 : actualRows1180=WordField.canonicalRows actualModulus 1180 (.bnot 182) := by core033_kernel_decide
theorem stats1180 : actualRows1180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1180=6276 := by core033_kernel_decide
theorem rows1181 : actualRows1181=WordField.canonicalRows actualModulus 1181 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1181 : actualRows1181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1181=2892 := by core033_kernel_decide
theorem rows1182 : actualRows1182=WordField.canonicalRows actualModulus 1182 (.badd 1180 1181) := by core033_kernel_decide
theorem stats1182 : actualRows1182.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1182=5388 := by core033_kernel_decide
theorem rows1183 : actualRows1183=WordField.canonicalRows actualModulus 1183 (.bnot 1182) := by core033_kernel_decide
theorem stats1183 : actualRows1183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1183=6276 := by core033_kernel_decide
theorem rows1184 : actualRows1184=WordField.canonicalRows actualModulus 1184 (.band 1183 48) := by core033_kernel_decide
theorem stats1184 : actualRows1184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1184=5124 := by core033_kernel_decide
theorem rows1185 : actualRows1185=WordField.canonicalRows actualModulus 1185 (.bxor 1179 1184) := by core033_kernel_decide
theorem stats1185 : actualRows1185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1185=7428 := by core033_kernel_decide
theorem rows1186 : actualRows1186=WordField.canonicalRows actualModulus 1186 (.bnot 182) := by core033_kernel_decide
theorem stats1186 : actualRows1186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1186=6276 := by core033_kernel_decide
theorem rows1187 : actualRows1187=WordField.canonicalRows actualModulus 1187 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1187 : actualRows1187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1187=2892 := by core033_kernel_decide
theorem rows1188 : actualRows1188=WordField.canonicalRows actualModulus 1188 (.badd 1186 1187) := by core033_kernel_decide
theorem stats1188 : actualRows1188.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1188=5388 := by core033_kernel_decide
theorem rows1189 : actualRows1189=WordField.canonicalRows actualModulus 1189 (.band 1188 49) := by core033_kernel_decide
theorem stats1189 : actualRows1189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1189=5124 := by core033_kernel_decide
theorem rows1190 : actualRows1190=WordField.canonicalRows actualModulus 1190 (.bnot 182) := by core033_kernel_decide
theorem stats1190 : actualRows1190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1190=6276 := by core033_kernel_decide
theorem rows1191 : actualRows1191=WordField.canonicalRows actualModulus 1191 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1191 : actualRows1191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1191=2892 := by core033_kernel_decide
theorem rows1192 : actualRows1192=WordField.canonicalRows actualModulus 1192 (.badd 1190 1191) := by core033_kernel_decide
theorem stats1192 : actualRows1192.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1192=5388 := by core033_kernel_decide
theorem rows1193 : actualRows1193=WordField.canonicalRows actualModulus 1193 (.bnot 1192) := by core033_kernel_decide
theorem stats1193 : actualRows1193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1193=6276 := by core033_kernel_decide
theorem rows1194 : actualRows1194=WordField.canonicalRows actualModulus 1194 (.band 1193 49) := by core033_kernel_decide
theorem stats1194 : actualRows1194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1194=5124 := by core033_kernel_decide
theorem rows1195 : actualRows1195=WordField.canonicalRows actualModulus 1195 (.bxor 1189 1194) := by core033_kernel_decide
theorem stats1195 : actualRows1195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1195=7428 := by core033_kernel_decide
theorem rows1196 : actualRows1196=WordField.canonicalRows actualModulus 1196 (.bnot 182) := by core033_kernel_decide
theorem stats1196 : actualRows1196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1196=6276 := by core033_kernel_decide
theorem rows1197 : actualRows1197=WordField.canonicalRows actualModulus 1197 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1197 : actualRows1197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1197=2892 := by core033_kernel_decide
theorem rows1198 : actualRows1198=WordField.canonicalRows actualModulus 1198 (.badd 1196 1197) := by core033_kernel_decide
theorem stats1198 : actualRows1198.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1198=5388 := by core033_kernel_decide
theorem rows1199 : actualRows1199=WordField.canonicalRows actualModulus 1199 (.band 1198 50) := by core033_kernel_decide
theorem stats1199 : actualRows1199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1199=5124 := by core033_kernel_decide
theorem rows1200 : actualRows1200=WordField.canonicalRows actualModulus 1200 (.bnot 182) := by core033_kernel_decide
theorem stats1200 : actualRows1200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1200=6276 := by core033_kernel_decide
theorem rows1201 : actualRows1201=WordField.canonicalRows actualModulus 1201 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1201 : actualRows1201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1201=2892 := by core033_kernel_decide
theorem rows1202 : actualRows1202=WordField.canonicalRows actualModulus 1202 (.badd 1200 1201) := by core033_kernel_decide
theorem stats1202 : actualRows1202.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1202=5388 := by core033_kernel_decide
theorem rows1203 : actualRows1203=WordField.canonicalRows actualModulus 1203 (.bnot 1202) := by core033_kernel_decide
theorem stats1203 : actualRows1203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1203=6276 := by core033_kernel_decide
theorem rows1204 : actualRows1204=WordField.canonicalRows actualModulus 1204 (.band 1203 50) := by core033_kernel_decide
theorem stats1204 : actualRows1204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1204=5124 := by core033_kernel_decide
theorem rows1205 : actualRows1205=WordField.canonicalRows actualModulus 1205 (.bxor 1199 1204) := by core033_kernel_decide
theorem stats1205 : actualRows1205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1205=7428 := by core033_kernel_decide
def partRows16 : List R1CS.Row := actualRows1142++actualRows1143++actualRows1144++actualRows1145++actualRows1146++actualRows1147++actualRows1148++actualRows1149++actualRows1150++actualRows1151++actualRows1152++actualRows1153++actualRows1154++actualRows1155++actualRows1156++actualRows1157++actualRows1158++actualRows1159++actualRows1160++actualRows1161++actualRows1162++actualRows1163++actualRows1164++actualRows1165++actualRows1166++actualRows1167++actualRows1168++actualRows1169++actualRows1170++actualRows1171++actualRows1172++actualRows1173++actualRows1174++actualRows1175++actualRows1176++actualRows1177++actualRows1178++actualRows1179++actualRows1180++actualRows1181++actualRows1182++actualRows1183++actualRows1184++actualRows1185++actualRows1186++actualRows1187++actualRows1188++actualRows1189++actualRows1190++actualRows1191++actualRows1192++actualRows1193++actualRows1194++actualRows1195++actualRows1196++actualRows1197++actualRows1198++actualRows1199++actualRows1200++actualRows1201++actualRows1202++actualRows1203++actualRows1204++actualRows1205
def partOps16 : List WordIR.Op := [.bnot 1141,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 1143 1144,.band 1145 34,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 1147 1148,.bnot 1149,.band 1150 22,.bxor 1146 1151,.band 1142 1152,.bxor 1138 1153,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1155 1156,.literal (BitVec.ofNat 32 1),.band 1157 1158,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1160 1161,.bnot 1162,.band 1163 46,.bxor 1159 1164,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1166 1167,.band 1168 47,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1170 1171,.bnot 1172,.band 1173 47,.bxor 1169 1174,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1176 1177,.band 1178 48,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1180 1181,.bnot 1182,.band 1183 48,.bxor 1179 1184,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1186 1187,.band 1188 49,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1190 1191,.bnot 1192,.band 1193 49,.bxor 1189 1194,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1196 1197,.band 1198 50,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1200 1201,.bnot 1202,.band 1203 50,.bxor 1199 1204]
theorem partExact16 : partRows16=WordField.rows actualModulus 1142 partOps16 := by
  simp only [partRows16,partOps16,WordField.rows,rows1142,rows1143,rows1144,rows1145,rows1146,rows1147,rows1148,rows1149,rows1150,rows1151,rows1152,rows1153,rows1154,rows1155,rows1156,rows1157,rows1158,rows1159,rows1160,rows1161,rows1162,rows1163,rows1164,rows1165,rows1166,rows1167,rows1168,rows1169,rows1170,rows1171,rows1172,rows1173,rows1174,rows1175,rows1176,rows1177,rows1178,rows1179,rows1180,rows1181,rows1182,rows1183,rows1184,rows1185,rows1186,rows1187,rows1188,rows1189,rows1190,rows1191,rows1192,rows1193,rows1194,rows1195,rows1196,rows1197,rows1198,rows1199,rows1200,rows1201,rows1202,rows1203,rows1204,rows1205,List.append_assoc,List.append_nil]
theorem partLength16 : partOps16.length=64 := by decide
theorem partStats16 : partRows16.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows16=340104 := by
  simp only [partRows16,List.length_append,MatrixRowBlocks.rows_weight_append,stats1142.1,stats1142.2,stats1143.1,stats1143.2,stats1144.1,stats1144.2,stats1145.1,stats1145.2,stats1146.1,stats1146.2,stats1147.1,stats1147.2,stats1148.1,stats1148.2,stats1149.1,stats1149.2,stats1150.1,stats1150.2,stats1151.1,stats1151.2,stats1152.1,stats1152.2,stats1153.1,stats1153.2,stats1154.1,stats1154.2,stats1155.1,stats1155.2,stats1156.1,stats1156.2,stats1157.1,stats1157.2,stats1158.1,stats1158.2,stats1159.1,stats1159.2,stats1160.1,stats1160.2,stats1161.1,stats1161.2,stats1162.1,stats1162.2,stats1163.1,stats1163.2,stats1164.1,stats1164.2,stats1165.1,stats1165.2,stats1166.1,stats1166.2,stats1167.1,stats1167.2,stats1168.1,stats1168.2,stats1169.1,stats1169.2,stats1170.1,stats1170.2,stats1171.1,stats1171.2,stats1172.1,stats1172.2,stats1173.1,stats1173.2,stats1174.1,stats1174.2,stats1175.1,stats1175.2,stats1176.1,stats1176.2,stats1177.1,stats1177.2,stats1178.1,stats1178.2,stats1179.1,stats1179.2,stats1180.1,stats1180.2,stats1181.1,stats1181.2,stats1182.1,stats1182.2,stats1183.1,stats1183.2,stats1184.1,stats1184.2,stats1185.1,stats1185.2,stats1186.1,stats1186.2,stats1187.1,stats1187.2,stats1188.1,stats1188.2,stats1189.1,stats1189.2,stats1190.1,stats1190.2,stats1191.1,stats1191.2,stats1192.1,stats1192.2,stats1193.1,stats1193.2,stats1194.1,stats1194.2,stats1195.1,stats1195.2,stats1196.1,stats1196.2,stats1197.1,stats1197.2,stats1198.1,stats1198.2,stats1199.1,stats1199.2,stats1200.1,stats1200.2,stats1201.1,stats1201.2,stats1202.1,stats1202.2,stats1203.1,stats1203.2,stats1204.1,stats1204.2,stats1205.1,stats1205.2]
  decide
end AuthenticatedBranchRoundCheckedRows
