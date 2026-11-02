import ActualIngressIR
import ArtifactIngressBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import IngressInstructionMatrixData18
namespace IngressCheckedRows
open Core033 IngressInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1152 : actualRows1152=WordField.canonicalRows actualModulus 1152 (.bnot 1151) := by core033_kernel_decide
theorem stats1152 : actualRows1152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1152=6276 := by core033_kernel_decide
theorem rows1153 : actualRows1153=WordField.canonicalRows actualModulus 1153 (.band 1150 1152) := by core033_kernel_decide
theorem stats1153 : actualRows1153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1153=5124 := by core033_kernel_decide
theorem rows1154 : actualRows1154=WordField.canonicalRows actualModulus 1154 (.shr 55 8) := by core033_kernel_decide
theorem stats1154 : actualRows1154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1154=4548 := by core033_kernel_decide
theorem rows1155 : actualRows1155=WordField.canonicalRows actualModulus 1155 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1155 : actualRows1155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1155=2820 := by core033_kernel_decide
theorem rows1156 : actualRows1156=WordField.canonicalRows actualModulus 1156 (.bnot 1155) := by core033_kernel_decide
theorem stats1156 : actualRows1156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1156=6276 := by core033_kernel_decide
theorem rows1157 : actualRows1157=WordField.canonicalRows actualModulus 1157 (.bxor 1154 1156) := by core033_kernel_decide
theorem stats1157 : actualRows1157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1157=7428 := by core033_kernel_decide
theorem rows1158 : actualRows1158=WordField.canonicalRows actualModulus 1158 (.shr 55 8) := by core033_kernel_decide
theorem stats1158 : actualRows1158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1158=4548 := by core033_kernel_decide
theorem rows1159 : actualRows1159=WordField.canonicalRows actualModulus 1159 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1159 : actualRows1159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1159=2820 := by core033_kernel_decide
theorem rows1160 : actualRows1160=WordField.canonicalRows actualModulus 1160 (.bnot 1159) := by core033_kernel_decide
theorem stats1160 : actualRows1160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1160=6276 := by core033_kernel_decide
theorem rows1161 : actualRows1161=WordField.canonicalRows actualModulus 1161 (.badd 1158 1160) := by core033_kernel_decide
theorem stats1161 : actualRows1161.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1161=5388 := by core033_kernel_decide
theorem rows1162 : actualRows1162=WordField.canonicalRows actualModulus 1162 (.bnot 1161) := by core033_kernel_decide
theorem stats1162 : actualRows1162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1162=6276 := by core033_kernel_decide
theorem rows1163 : actualRows1163=WordField.canonicalRows actualModulus 1163 (.band 1157 1162) := by core033_kernel_decide
theorem stats1163 : actualRows1163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1163=5124 := by core033_kernel_decide
theorem rows1164 : actualRows1164=WordField.canonicalRows actualModulus 1164 (.bxor 1153 1163) := by core033_kernel_decide
theorem stats1164 : actualRows1164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1164=7428 := by core033_kernel_decide
theorem rows1165 : actualRows1165=WordField.canonicalRows actualModulus 1165 (.shr 1164 31) := by core033_kernel_decide
theorem stats1165 : actualRows1165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1165=2892 := by core033_kernel_decide
theorem rows1166 : actualRows1166=WordField.canonicalRows actualModulus 1166 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1166 : actualRows1166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1166=2892 := by core033_kernel_decide
theorem rows1167 : actualRows1167=WordField.canonicalRows actualModulus 1167 (.bxor 1165 1166) := by core033_kernel_decide
theorem stats1167 : actualRows1167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1167=7428 := by core033_kernel_decide
theorem rows1168 : actualRows1168=WordField.canonicalRows actualModulus 1168 (.shr 56 8) := by core033_kernel_decide
theorem stats1168 : actualRows1168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1168=4548 := by core033_kernel_decide
theorem rows1169 : actualRows1169=WordField.canonicalRows actualModulus 1169 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1169 : actualRows1169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1169=2820 := by core033_kernel_decide
theorem rows1170 : actualRows1170=WordField.canonicalRows actualModulus 1170 (.bnot 1169) := by core033_kernel_decide
theorem stats1170 : actualRows1170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1170=6276 := by core033_kernel_decide
theorem rows1171 : actualRows1171=WordField.canonicalRows actualModulus 1171 (.band 1168 1170) := by core033_kernel_decide
theorem stats1171 : actualRows1171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1171=5124 := by core033_kernel_decide
theorem rows1172 : actualRows1172=WordField.canonicalRows actualModulus 1172 (.shr 56 8) := by core033_kernel_decide
theorem stats1172 : actualRows1172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1172=4548 := by core033_kernel_decide
theorem rows1173 : actualRows1173=WordField.canonicalRows actualModulus 1173 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1173 : actualRows1173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1173=2820 := by core033_kernel_decide
theorem rows1174 : actualRows1174=WordField.canonicalRows actualModulus 1174 (.bnot 1173) := by core033_kernel_decide
theorem stats1174 : actualRows1174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1174=6276 := by core033_kernel_decide
theorem rows1175 : actualRows1175=WordField.canonicalRows actualModulus 1175 (.bxor 1172 1174) := by core033_kernel_decide
theorem stats1175 : actualRows1175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1175=7428 := by core033_kernel_decide
theorem rows1176 : actualRows1176=WordField.canonicalRows actualModulus 1176 (.shr 56 8) := by core033_kernel_decide
theorem stats1176 : actualRows1176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1176=4548 := by core033_kernel_decide
theorem rows1177 : actualRows1177=WordField.canonicalRows actualModulus 1177 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1177 : actualRows1177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1177=2820 := by core033_kernel_decide
theorem rows1178 : actualRows1178=WordField.canonicalRows actualModulus 1178 (.bnot 1177) := by core033_kernel_decide
theorem stats1178 : actualRows1178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1178=6276 := by core033_kernel_decide
theorem rows1179 : actualRows1179=WordField.canonicalRows actualModulus 1179 (.badd 1176 1178) := by core033_kernel_decide
theorem stats1179 : actualRows1179.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1179=5388 := by core033_kernel_decide
theorem rows1180 : actualRows1180=WordField.canonicalRows actualModulus 1180 (.bnot 1179) := by core033_kernel_decide
theorem stats1180 : actualRows1180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1180=6276 := by core033_kernel_decide
theorem rows1181 : actualRows1181=WordField.canonicalRows actualModulus 1181 (.band 1175 1180) := by core033_kernel_decide
theorem stats1181 : actualRows1181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1181=5124 := by core033_kernel_decide
theorem rows1182 : actualRows1182=WordField.canonicalRows actualModulus 1182 (.bxor 1171 1181) := by core033_kernel_decide
theorem stats1182 : actualRows1182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1182=7428 := by core033_kernel_decide
theorem rows1183 : actualRows1183=WordField.canonicalRows actualModulus 1183 (.shr 1182 31) := by core033_kernel_decide
theorem stats1183 : actualRows1183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1183=2892 := by core033_kernel_decide
theorem rows1184 : actualRows1184=WordField.canonicalRows actualModulus 1184 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1184 : actualRows1184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1184=2892 := by core033_kernel_decide
theorem rows1185 : actualRows1185=WordField.canonicalRows actualModulus 1185 (.bxor 1183 1184) := by core033_kernel_decide
theorem stats1185 : actualRows1185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1185=7428 := by core033_kernel_decide
theorem rows1186 : actualRows1186=WordField.canonicalRows actualModulus 1186 (.shr 57 8) := by core033_kernel_decide
theorem stats1186 : actualRows1186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1186=4548 := by core033_kernel_decide
theorem rows1187 : actualRows1187=WordField.canonicalRows actualModulus 1187 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1187 : actualRows1187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1187=2820 := by core033_kernel_decide
theorem rows1188 : actualRows1188=WordField.canonicalRows actualModulus 1188 (.bnot 1187) := by core033_kernel_decide
theorem stats1188 : actualRows1188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1188=6276 := by core033_kernel_decide
theorem rows1189 : actualRows1189=WordField.canonicalRows actualModulus 1189 (.band 1186 1188) := by core033_kernel_decide
theorem stats1189 : actualRows1189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1189=5124 := by core033_kernel_decide
theorem rows1190 : actualRows1190=WordField.canonicalRows actualModulus 1190 (.shr 57 8) := by core033_kernel_decide
theorem stats1190 : actualRows1190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1190=4548 := by core033_kernel_decide
theorem rows1191 : actualRows1191=WordField.canonicalRows actualModulus 1191 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1191 : actualRows1191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1191=2820 := by core033_kernel_decide
theorem rows1192 : actualRows1192=WordField.canonicalRows actualModulus 1192 (.bnot 1191) := by core033_kernel_decide
theorem stats1192 : actualRows1192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1192=6276 := by core033_kernel_decide
theorem rows1193 : actualRows1193=WordField.canonicalRows actualModulus 1193 (.bxor 1190 1192) := by core033_kernel_decide
theorem stats1193 : actualRows1193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1193=7428 := by core033_kernel_decide
theorem rows1194 : actualRows1194=WordField.canonicalRows actualModulus 1194 (.shr 57 8) := by core033_kernel_decide
theorem stats1194 : actualRows1194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1194=4548 := by core033_kernel_decide
theorem rows1195 : actualRows1195=WordField.canonicalRows actualModulus 1195 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1195 : actualRows1195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1195=2820 := by core033_kernel_decide
theorem rows1196 : actualRows1196=WordField.canonicalRows actualModulus 1196 (.bnot 1195) := by core033_kernel_decide
theorem stats1196 : actualRows1196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1196=6276 := by core033_kernel_decide
theorem rows1197 : actualRows1197=WordField.canonicalRows actualModulus 1197 (.badd 1194 1196) := by core033_kernel_decide
theorem stats1197 : actualRows1197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1197=5388 := by core033_kernel_decide
theorem rows1198 : actualRows1198=WordField.canonicalRows actualModulus 1198 (.bnot 1197) := by core033_kernel_decide
theorem stats1198 : actualRows1198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1198=6276 := by core033_kernel_decide
theorem rows1199 : actualRows1199=WordField.canonicalRows actualModulus 1199 (.band 1193 1198) := by core033_kernel_decide
theorem stats1199 : actualRows1199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1199=5124 := by core033_kernel_decide
theorem rows1200 : actualRows1200=WordField.canonicalRows actualModulus 1200 (.bxor 1189 1199) := by core033_kernel_decide
theorem stats1200 : actualRows1200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1200=7428 := by core033_kernel_decide
theorem rows1201 : actualRows1201=WordField.canonicalRows actualModulus 1201 (.shr 1200 31) := by core033_kernel_decide
theorem stats1201 : actualRows1201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1201=2892 := by core033_kernel_decide
theorem rows1202 : actualRows1202=WordField.canonicalRows actualModulus 1202 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1202 : actualRows1202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1202=2892 := by core033_kernel_decide
theorem rows1203 : actualRows1203=WordField.canonicalRows actualModulus 1203 (.bxor 1201 1202) := by core033_kernel_decide
theorem stats1203 : actualRows1203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1203=7428 := by core033_kernel_decide
theorem rows1204 : actualRows1204=WordField.canonicalRows actualModulus 1204 (.shr 58 8) := by core033_kernel_decide
theorem stats1204 : actualRows1204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1204=4548 := by core033_kernel_decide
theorem rows1205 : actualRows1205=WordField.canonicalRows actualModulus 1205 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1205 : actualRows1205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1205=2820 := by core033_kernel_decide
theorem rows1206 : actualRows1206=WordField.canonicalRows actualModulus 1206 (.bnot 1205) := by core033_kernel_decide
theorem stats1206 : actualRows1206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1206=6276 := by core033_kernel_decide
theorem rows1207 : actualRows1207=WordField.canonicalRows actualModulus 1207 (.band 1204 1206) := by core033_kernel_decide
theorem stats1207 : actualRows1207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1207=5124 := by core033_kernel_decide
theorem rows1208 : actualRows1208=WordField.canonicalRows actualModulus 1208 (.shr 58 8) := by core033_kernel_decide
theorem stats1208 : actualRows1208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1208=4548 := by core033_kernel_decide
theorem rows1209 : actualRows1209=WordField.canonicalRows actualModulus 1209 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1209 : actualRows1209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1209=2820 := by core033_kernel_decide
theorem rows1210 : actualRows1210=WordField.canonicalRows actualModulus 1210 (.bnot 1209) := by core033_kernel_decide
theorem stats1210 : actualRows1210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1210=6276 := by core033_kernel_decide
theorem rows1211 : actualRows1211=WordField.canonicalRows actualModulus 1211 (.bxor 1208 1210) := by core033_kernel_decide
theorem stats1211 : actualRows1211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1211=7428 := by core033_kernel_decide
theorem rows1212 : actualRows1212=WordField.canonicalRows actualModulus 1212 (.shr 58 8) := by core033_kernel_decide
theorem stats1212 : actualRows1212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1212=4548 := by core033_kernel_decide
theorem rows1213 : actualRows1213=WordField.canonicalRows actualModulus 1213 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1213 : actualRows1213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1213=2820 := by core033_kernel_decide
theorem rows1214 : actualRows1214=WordField.canonicalRows actualModulus 1214 (.bnot 1213) := by core033_kernel_decide
theorem stats1214 : actualRows1214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1214=6276 := by core033_kernel_decide
theorem rows1215 : actualRows1215=WordField.canonicalRows actualModulus 1215 (.badd 1212 1214) := by core033_kernel_decide
theorem stats1215 : actualRows1215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1215=5388 := by core033_kernel_decide
def partRows17 : List R1CS.Row := actualRows1152++actualRows1153++actualRows1154++actualRows1155++actualRows1156++actualRows1157++actualRows1158++actualRows1159++actualRows1160++actualRows1161++actualRows1162++actualRows1163++actualRows1164++actualRows1165++actualRows1166++actualRows1167++actualRows1168++actualRows1169++actualRows1170++actualRows1171++actualRows1172++actualRows1173++actualRows1174++actualRows1175++actualRows1176++actualRows1177++actualRows1178++actualRows1179++actualRows1180++actualRows1181++actualRows1182++actualRows1183++actualRows1184++actualRows1185++actualRows1186++actualRows1187++actualRows1188++actualRows1189++actualRows1190++actualRows1191++actualRows1192++actualRows1193++actualRows1194++actualRows1195++actualRows1196++actualRows1197++actualRows1198++actualRows1199++actualRows1200++actualRows1201++actualRows1202++actualRows1203++actualRows1204++actualRows1205++actualRows1206++actualRows1207++actualRows1208++actualRows1209++actualRows1210++actualRows1211++actualRows1212++actualRows1213++actualRows1214++actualRows1215
def partOps17 : List WordIR.Op := [.bnot 1151,.band 1150 1152,.shr 55 8,.literal (BitVec.ofNat 32 0),.bnot 1155,.bxor 1154 1156,.shr 55 8,.literal (BitVec.ofNat 32 0),.bnot 1159,.badd 1158 1160,.bnot 1161,.band 1157 1162,.bxor 1153 1163,.shr 1164 31,.literal (BitVec.ofNat 32 1),.bxor 1165 1166,.shr 56 8,.literal (BitVec.ofNat 32 0),.bnot 1169,.band 1168 1170,.shr 56 8,.literal (BitVec.ofNat 32 0),.bnot 1173,.bxor 1172 1174,.shr 56 8,.literal (BitVec.ofNat 32 0),.bnot 1177,.badd 1176 1178,.bnot 1179,.band 1175 1180,.bxor 1171 1181,.shr 1182 31,.literal (BitVec.ofNat 32 1),.bxor 1183 1184,.shr 57 8,.literal (BitVec.ofNat 32 0),.bnot 1187,.band 1186 1188,.shr 57 8,.literal (BitVec.ofNat 32 0),.bnot 1191,.bxor 1190 1192,.shr 57 8,.literal (BitVec.ofNat 32 0),.bnot 1195,.badd 1194 1196,.bnot 1197,.band 1193 1198,.bxor 1189 1199,.shr 1200 31,.literal (BitVec.ofNat 32 1),.bxor 1201 1202,.shr 58 8,.literal (BitVec.ofNat 32 0),.bnot 1205,.band 1204 1206,.shr 58 8,.literal (BitVec.ofNat 32 0),.bnot 1209,.bxor 1208 1210,.shr 58 8,.literal (BitVec.ofNat 32 0),.bnot 1213,.badd 1212 1214]
theorem partExact17 : partRows17=WordField.rows actualModulus 1152 partOps17 := by
  simp only [partRows17,partOps17,WordField.rows,rows1152,rows1153,rows1154,rows1155,rows1156,rows1157,rows1158,rows1159,rows1160,rows1161,rows1162,rows1163,rows1164,rows1165,rows1166,rows1167,rows1168,rows1169,rows1170,rows1171,rows1172,rows1173,rows1174,rows1175,rows1176,rows1177,rows1178,rows1179,rows1180,rows1181,rows1182,rows1183,rows1184,rows1185,rows1186,rows1187,rows1188,rows1189,rows1190,rows1191,rows1192,rows1193,rows1194,rows1195,rows1196,rows1197,rows1198,rows1199,rows1200,rows1201,rows1202,rows1203,rows1204,rows1205,rows1206,rows1207,rows1208,rows1209,rows1210,rows1211,rows1212,rows1213,rows1214,rows1215,List.append_assoc,List.append_nil]
theorem partLength17 : partOps17.length=64 := by decide
theorem partStats17 : partRows17.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows17=324240 := by
  simp only [partRows17,List.length_append,MatrixRowBlocks.rows_weight_append,stats1152.1,stats1152.2,stats1153.1,stats1153.2,stats1154.1,stats1154.2,stats1155.1,stats1155.2,stats1156.1,stats1156.2,stats1157.1,stats1157.2,stats1158.1,stats1158.2,stats1159.1,stats1159.2,stats1160.1,stats1160.2,stats1161.1,stats1161.2,stats1162.1,stats1162.2,stats1163.1,stats1163.2,stats1164.1,stats1164.2,stats1165.1,stats1165.2,stats1166.1,stats1166.2,stats1167.1,stats1167.2,stats1168.1,stats1168.2,stats1169.1,stats1169.2,stats1170.1,stats1170.2,stats1171.1,stats1171.2,stats1172.1,stats1172.2,stats1173.1,stats1173.2,stats1174.1,stats1174.2,stats1175.1,stats1175.2,stats1176.1,stats1176.2,stats1177.1,stats1177.2,stats1178.1,stats1178.2,stats1179.1,stats1179.2,stats1180.1,stats1180.2,stats1181.1,stats1181.2,stats1182.1,stats1182.2,stats1183.1,stats1183.2,stats1184.1,stats1184.2,stats1185.1,stats1185.2,stats1186.1,stats1186.2,stats1187.1,stats1187.2,stats1188.1,stats1188.2,stats1189.1,stats1189.2,stats1190.1,stats1190.2,stats1191.1,stats1191.2,stats1192.1,stats1192.2,stats1193.1,stats1193.2,stats1194.1,stats1194.2,stats1195.1,stats1195.2,stats1196.1,stats1196.2,stats1197.1,stats1197.2,stats1198.1,stats1198.2,stats1199.1,stats1199.2,stats1200.1,stats1200.2,stats1201.1,stats1201.2,stats1202.1,stats1202.2,stats1203.1,stats1203.2,stats1204.1,stats1204.2,stats1205.1,stats1205.2,stats1206.1,stats1206.2,stats1207.1,stats1207.2,stats1208.1,stats1208.2,stats1209.1,stats1209.2,stats1210.1,stats1210.2,stats1211.1,stats1211.2,stats1212.1,stats1212.2,stats1213.1,stats1213.2,stats1214.1,stats1214.2,stats1215.1,stats1215.2]
  decide
end IngressCheckedRows
