import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData18
import ActualMatrixData19
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1176 : actualRows1176=WordField.canonicalRows actualModulus 1176 (.rotr 1159 13) := by core033_kernel_decide
theorem stats1176 : actualRows1176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1176=5124 := by core033_kernel_decide
theorem rows1177 : actualRows1177=WordField.canonicalRows actualModulus 1177 (.bxor 1175 1176) := by core033_kernel_decide
theorem stats1177 : actualRows1177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1177=7428 := by core033_kernel_decide
theorem rows1178 : actualRows1178=WordField.canonicalRows actualModulus 1178 (.rotr 1159 22) := by core033_kernel_decide
theorem stats1178 : actualRows1178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1178=5124 := by core033_kernel_decide
theorem rows1179 : actualRows1179=WordField.canonicalRows actualModulus 1179 (.bxor 1177 1178) := by core033_kernel_decide
theorem stats1179 : actualRows1179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1179=7428 := by core033_kernel_decide
theorem rows1180 : actualRows1180=WordField.canonicalRows actualModulus 1180 (.band 1159 1132) := by core033_kernel_decide
theorem stats1180 : actualRows1180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1180=5124 := by core033_kernel_decide
theorem rows1181 : actualRows1181=WordField.canonicalRows actualModulus 1181 (.band 1159 1105) := by core033_kernel_decide
theorem stats1181 : actualRows1181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1181=5124 := by core033_kernel_decide
theorem rows1182 : actualRows1182=WordField.canonicalRows actualModulus 1182 (.bxor 1180 1181) := by core033_kernel_decide
theorem stats1182 : actualRows1182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1182=7428 := by core033_kernel_decide
theorem rows1183 : actualRows1183=WordField.canonicalRows actualModulus 1183 (.band 1132 1105) := by core033_kernel_decide
theorem stats1183 : actualRows1183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1183=5124 := by core033_kernel_decide
theorem rows1184 : actualRows1184=WordField.canonicalRows actualModulus 1184 (.bxor 1182 1183) := by core033_kernel_decide
theorem stats1184 : actualRows1184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1184=7428 := by core033_kernel_decide
theorem rows1185 : actualRows1185=WordField.canonicalRows actualModulus 1185 (.badd 1179 1184) := by core033_kernel_decide
theorem stats1185 : actualRows1185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1185=5388 := by core033_kernel_decide
theorem rows1186 : actualRows1186=WordField.canonicalRows actualModulus 1186 (.badd 1174 1185) := by core033_kernel_decide
theorem stats1186 : actualRows1186.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1186=5388 := by core033_kernel_decide
theorem rows1187 : actualRows1187=WordField.canonicalRows actualModulus 1187 (.badd 1078 1174) := by core033_kernel_decide
theorem stats1187 : actualRows1187.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1187=5388 := by core033_kernel_decide
theorem rows1188 : actualRows1188=WordField.canonicalRows actualModulus 1188 (.rotr 1187 6) := by core033_kernel_decide
theorem stats1188 : actualRows1188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1188=5124 := by core033_kernel_decide
theorem rows1189 : actualRows1189=WordField.canonicalRows actualModulus 1189 (.rotr 1187 11) := by core033_kernel_decide
theorem stats1189 : actualRows1189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1189=5124 := by core033_kernel_decide
theorem rows1190 : actualRows1190=WordField.canonicalRows actualModulus 1190 (.bxor 1188 1189) := by core033_kernel_decide
theorem stats1190 : actualRows1190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1190=7428 := by core033_kernel_decide
theorem rows1191 : actualRows1191=WordField.canonicalRows actualModulus 1191 (.rotr 1187 25) := by core033_kernel_decide
theorem stats1191 : actualRows1191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1191=5124 := by core033_kernel_decide
theorem rows1192 : actualRows1192=WordField.canonicalRows actualModulus 1192 (.bxor 1190 1191) := by core033_kernel_decide
theorem stats1192 : actualRows1192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1192=7428 := by core033_kernel_decide
theorem rows1193 : actualRows1193=WordField.canonicalRows actualModulus 1193 (.badd 1106 1192) := by core033_kernel_decide
theorem stats1193 : actualRows1193.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1193=5388 := by core033_kernel_decide
theorem rows1194 : actualRows1194=WordField.canonicalRows actualModulus 1194 (.band 1187 1160) := by core033_kernel_decide
theorem stats1194 : actualRows1194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1194=5124 := by core033_kernel_decide
theorem rows1195 : actualRows1195=WordField.canonicalRows actualModulus 1195 (.bnot 1187) := by core033_kernel_decide
theorem stats1195 : actualRows1195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1195=6276 := by core033_kernel_decide
theorem rows1196 : actualRows1196=WordField.canonicalRows actualModulus 1196 (.band 1195 1133) := by core033_kernel_decide
theorem stats1196 : actualRows1196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1196=5124 := by core033_kernel_decide
theorem rows1197 : actualRows1197=WordField.canonicalRows actualModulus 1197 (.bxor 1194 1196) := by core033_kernel_decide
theorem stats1197 : actualRows1197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1197=7428 := by core033_kernel_decide
theorem rows1198 : actualRows1198=WordField.canonicalRows actualModulus 1198 (.badd 1193 1197) := by core033_kernel_decide
theorem stats1198 : actualRows1198.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1198=5388 := by core033_kernel_decide
theorem rows1199 : actualRows1199=WordField.canonicalRows actualModulus 1199 (.literal (BitVec.ofNat 32 770255983)) := by core033_kernel_decide
theorem stats1199 : actualRows1199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1199=4116 := by core033_kernel_decide
theorem rows1200 : actualRows1200=WordField.canonicalRows actualModulus 1200 (.badd 1198 1199) := by core033_kernel_decide
theorem stats1200 : actualRows1200.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1200=5388 := by core033_kernel_decide
theorem rows1201 : actualRows1201=WordField.canonicalRows actualModulus 1201 (.badd 1200 88) := by core033_kernel_decide
theorem stats1201 : actualRows1201.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1201=5388 := by core033_kernel_decide
theorem rows1202 : actualRows1202=WordField.canonicalRows actualModulus 1202 (.rotr 1186 2) := by core033_kernel_decide
theorem stats1202 : actualRows1202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1202=5124 := by core033_kernel_decide
theorem rows1203 : actualRows1203=WordField.canonicalRows actualModulus 1203 (.rotr 1186 13) := by core033_kernel_decide
theorem stats1203 : actualRows1203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1203=5124 := by core033_kernel_decide
theorem rows1204 : actualRows1204=WordField.canonicalRows actualModulus 1204 (.bxor 1202 1203) := by core033_kernel_decide
theorem stats1204 : actualRows1204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1204=7428 := by core033_kernel_decide
theorem rows1205 : actualRows1205=WordField.canonicalRows actualModulus 1205 (.rotr 1186 22) := by core033_kernel_decide
theorem stats1205 : actualRows1205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1205=5124 := by core033_kernel_decide
theorem rows1206 : actualRows1206=WordField.canonicalRows actualModulus 1206 (.bxor 1204 1205) := by core033_kernel_decide
theorem stats1206 : actualRows1206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1206=7428 := by core033_kernel_decide
theorem rows1207 : actualRows1207=WordField.canonicalRows actualModulus 1207 (.band 1186 1159) := by core033_kernel_decide
theorem stats1207 : actualRows1207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1207=5124 := by core033_kernel_decide
theorem rows1208 : actualRows1208=WordField.canonicalRows actualModulus 1208 (.band 1186 1132) := by core033_kernel_decide
theorem stats1208 : actualRows1208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1208=5124 := by core033_kernel_decide
theorem rows1209 : actualRows1209=WordField.canonicalRows actualModulus 1209 (.bxor 1207 1208) := by core033_kernel_decide
theorem stats1209 : actualRows1209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1209=7428 := by core033_kernel_decide
theorem rows1210 : actualRows1210=WordField.canonicalRows actualModulus 1210 (.band 1159 1132) := by core033_kernel_decide
theorem stats1210 : actualRows1210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1210=5124 := by core033_kernel_decide
theorem rows1211 : actualRows1211=WordField.canonicalRows actualModulus 1211 (.bxor 1209 1210) := by core033_kernel_decide
theorem stats1211 : actualRows1211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1211=7428 := by core033_kernel_decide
theorem rows1212 : actualRows1212=WordField.canonicalRows actualModulus 1212 (.badd 1206 1211) := by core033_kernel_decide
theorem stats1212 : actualRows1212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1212=5388 := by core033_kernel_decide
theorem rows1213 : actualRows1213=WordField.canonicalRows actualModulus 1213 (.badd 1201 1212) := by core033_kernel_decide
theorem stats1213 : actualRows1213.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1213=5388 := by core033_kernel_decide
theorem rows1214 : actualRows1214=WordField.canonicalRows actualModulus 1214 (.badd 1105 1201) := by core033_kernel_decide
theorem stats1214 : actualRows1214.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1214=5388 := by core033_kernel_decide
theorem rows1215 : actualRows1215=WordField.canonicalRows actualModulus 1215 (.rotr 1214 6) := by core033_kernel_decide
theorem stats1215 : actualRows1215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1215=5124 := by core033_kernel_decide
theorem rows1216 : actualRows1216=WordField.canonicalRows actualModulus 1216 (.rotr 1214 11) := by core033_kernel_decide
theorem stats1216 : actualRows1216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1216=5124 := by core033_kernel_decide
theorem rows1217 : actualRows1217=WordField.canonicalRows actualModulus 1217 (.bxor 1215 1216) := by core033_kernel_decide
theorem stats1217 : actualRows1217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1217=7428 := by core033_kernel_decide
theorem rows1218 : actualRows1218=WordField.canonicalRows actualModulus 1218 (.rotr 1214 25) := by core033_kernel_decide
theorem stats1218 : actualRows1218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1218=5124 := by core033_kernel_decide
theorem rows1219 : actualRows1219=WordField.canonicalRows actualModulus 1219 (.bxor 1217 1218) := by core033_kernel_decide
theorem stats1219 : actualRows1219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1219=7428 := by core033_kernel_decide
theorem rows1220 : actualRows1220=WordField.canonicalRows actualModulus 1220 (.badd 1133 1219) := by core033_kernel_decide
theorem stats1220 : actualRows1220.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1220=5388 := by core033_kernel_decide
theorem rows1221 : actualRows1221=WordField.canonicalRows actualModulus 1221 (.band 1214 1187) := by core033_kernel_decide
theorem stats1221 : actualRows1221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1221=5124 := by core033_kernel_decide
theorem rows1222 : actualRows1222=WordField.canonicalRows actualModulus 1222 (.bnot 1214) := by core033_kernel_decide
theorem stats1222 : actualRows1222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1222=6276 := by core033_kernel_decide
theorem rows1223 : actualRows1223=WordField.canonicalRows actualModulus 1223 (.band 1222 1160) := by core033_kernel_decide
theorem stats1223 : actualRows1223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1223=5124 := by core033_kernel_decide
theorem rows1224 : actualRows1224=WordField.canonicalRows actualModulus 1224 (.bxor 1221 1223) := by core033_kernel_decide
theorem stats1224 : actualRows1224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1224=7428 := by core033_kernel_decide
theorem rows1225 : actualRows1225=WordField.canonicalRows actualModulus 1225 (.badd 1220 1224) := by core033_kernel_decide
theorem stats1225 : actualRows1225.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1225=5388 := by core033_kernel_decide
theorem rows1226 : actualRows1226=WordField.canonicalRows actualModulus 1226 (.literal (BitVec.ofNat 32 1249150122)) := by core033_kernel_decide
theorem stats1226 : actualRows1226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1226=3756 := by core033_kernel_decide
theorem rows1227 : actualRows1227=WordField.canonicalRows actualModulus 1227 (.badd 1225 1226) := by core033_kernel_decide
theorem stats1227 : actualRows1227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1227=5388 := by core033_kernel_decide
theorem rows1228 : actualRows1228=WordField.canonicalRows actualModulus 1228 (.badd 1227 101) := by core033_kernel_decide
theorem stats1228 : actualRows1228.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1228=5388 := by core033_kernel_decide
theorem rows1229 : actualRows1229=WordField.canonicalRows actualModulus 1229 (.rotr 1213 2) := by core033_kernel_decide
theorem stats1229 : actualRows1229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1229=5124 := by core033_kernel_decide
theorem rows1230 : actualRows1230=WordField.canonicalRows actualModulus 1230 (.rotr 1213 13) := by core033_kernel_decide
theorem stats1230 : actualRows1230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1230=5124 := by core033_kernel_decide
theorem rows1231 : actualRows1231=WordField.canonicalRows actualModulus 1231 (.bxor 1229 1230) := by core033_kernel_decide
theorem stats1231 : actualRows1231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1231=7428 := by core033_kernel_decide
theorem rows1232 : actualRows1232=WordField.canonicalRows actualModulus 1232 (.rotr 1213 22) := by core033_kernel_decide
theorem stats1232 : actualRows1232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1232=5124 := by core033_kernel_decide
theorem rows1233 : actualRows1233=WordField.canonicalRows actualModulus 1233 (.bxor 1231 1232) := by core033_kernel_decide
theorem stats1233 : actualRows1233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1233=7428 := by core033_kernel_decide
theorem rows1234 : actualRows1234=WordField.canonicalRows actualModulus 1234 (.band 1213 1186) := by core033_kernel_decide
theorem stats1234 : actualRows1234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1234=5124 := by core033_kernel_decide
theorem rows1235 : actualRows1235=WordField.canonicalRows actualModulus 1235 (.band 1213 1159) := by core033_kernel_decide
theorem stats1235 : actualRows1235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1235=5124 := by core033_kernel_decide
theorem rows1236 : actualRows1236=WordField.canonicalRows actualModulus 1236 (.bxor 1234 1235) := by core033_kernel_decide
theorem stats1236 : actualRows1236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1236=7428 := by core033_kernel_decide
theorem rows1237 : actualRows1237=WordField.canonicalRows actualModulus 1237 (.band 1186 1159) := by core033_kernel_decide
theorem stats1237 : actualRows1237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1237=5124 := by core033_kernel_decide
theorem rows1238 : actualRows1238=WordField.canonicalRows actualModulus 1238 (.bxor 1236 1237) := by core033_kernel_decide
theorem stats1238 : actualRows1238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1238=7428 := by core033_kernel_decide
theorem rows1239 : actualRows1239=WordField.canonicalRows actualModulus 1239 (.badd 1233 1238) := by core033_kernel_decide
theorem stats1239 : actualRows1239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1239=5388 := by core033_kernel_decide
def partRows18 : List R1CS.Row := actualRows1176++actualRows1177++actualRows1178++actualRows1179++actualRows1180++actualRows1181++actualRows1182++actualRows1183++actualRows1184++actualRows1185++actualRows1186++actualRows1187++actualRows1188++actualRows1189++actualRows1190++actualRows1191++actualRows1192++actualRows1193++actualRows1194++actualRows1195++actualRows1196++actualRows1197++actualRows1198++actualRows1199++actualRows1200++actualRows1201++actualRows1202++actualRows1203++actualRows1204++actualRows1205++actualRows1206++actualRows1207++actualRows1208++actualRows1209++actualRows1210++actualRows1211++actualRows1212++actualRows1213++actualRows1214++actualRows1215++actualRows1216++actualRows1217++actualRows1218++actualRows1219++actualRows1220++actualRows1221++actualRows1222++actualRows1223++actualRows1224++actualRows1225++actualRows1226++actualRows1227++actualRows1228++actualRows1229++actualRows1230++actualRows1231++actualRows1232++actualRows1233++actualRows1234++actualRows1235++actualRows1236++actualRows1237++actualRows1238++actualRows1239
def partOps18 : List WordIR.Op := [.rotr 1159 13,.bxor 1175 1176,.rotr 1159 22,.bxor 1177 1178,.band 1159 1132,.band 1159 1105,.bxor 1180 1181,.band 1132 1105,.bxor 1182 1183,.badd 1179 1184,.badd 1174 1185,.badd 1078 1174,.rotr 1187 6,.rotr 1187 11,.bxor 1188 1189,.rotr 1187 25,.bxor 1190 1191,.badd 1106 1192,.band 1187 1160,.bnot 1187,.band 1195 1133,.bxor 1194 1196,.badd 1193 1197,.literal (BitVec.ofNat 32 770255983),.badd 1198 1199,.badd 1200 88,.rotr 1186 2,.rotr 1186 13,.bxor 1202 1203,.rotr 1186 22,.bxor 1204 1205,.band 1186 1159,.band 1186 1132,.bxor 1207 1208,.band 1159 1132,.bxor 1209 1210,.badd 1206 1211,.badd 1201 1212,.badd 1105 1201,.rotr 1214 6,.rotr 1214 11,.bxor 1215 1216,.rotr 1214 25,.bxor 1217 1218,.badd 1133 1219,.band 1214 1187,.bnot 1214,.band 1222 1160,.bxor 1221 1223,.badd 1220 1224,.literal (BitVec.ofNat 32 1249150122),.badd 1225 1226,.badd 1227 101,.rotr 1213 2,.rotr 1213 13,.bxor 1229 1230,.rotr 1213 22,.bxor 1231 1232,.band 1213 1186,.band 1213 1159,.bxor 1234 1235,.band 1186 1159,.bxor 1236 1237,.badd 1233 1238]
theorem partRowsExact18 : partRows18=WordField.rows actualModulus 1176 partOps18 := by
  simp only [partRows18,partOps18,WordField.rows,rows1176,rows1177,rows1178,rows1179,rows1180,rows1181,rows1182,rows1183,rows1184,rows1185,rows1186,rows1187,rows1188,rows1189,rows1190,rows1191,rows1192,rows1193,rows1194,rows1195,rows1196,rows1197,rows1198,rows1199,rows1200,rows1201,rows1202,rows1203,rows1204,rows1205,rows1206,rows1207,rows1208,rows1209,rows1210,rows1211,rows1212,rows1213,rows1214,rows1215,rows1216,rows1217,rows1218,rows1219,rows1220,rows1221,rows1222,rows1223,rows1224,rows1225,rows1226,rows1227,rows1228,rows1229,rows1230,rows1231,rows1232,rows1233,rows1234,rows1235,rows1236,rows1237,rows1238,rows1239,List.append_assoc,List.append_nil]
theorem partOpsLength18 : partOps18.length=64 := by decide
theorem partStats18 : partRows18.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows18=373296 := by
  simp only [partRows18,List.length_append,MatrixRowBlocks.rows_weight_append,stats1176.1,stats1176.2,stats1177.1,stats1177.2,stats1178.1,stats1178.2,stats1179.1,stats1179.2,stats1180.1,stats1180.2,stats1181.1,stats1181.2,stats1182.1,stats1182.2,stats1183.1,stats1183.2,stats1184.1,stats1184.2,stats1185.1,stats1185.2,stats1186.1,stats1186.2,stats1187.1,stats1187.2,stats1188.1,stats1188.2,stats1189.1,stats1189.2,stats1190.1,stats1190.2,stats1191.1,stats1191.2,stats1192.1,stats1192.2,stats1193.1,stats1193.2,stats1194.1,stats1194.2,stats1195.1,stats1195.2,stats1196.1,stats1196.2,stats1197.1,stats1197.2,stats1198.1,stats1198.2,stats1199.1,stats1199.2,stats1200.1,stats1200.2,stats1201.1,stats1201.2,stats1202.1,stats1202.2,stats1203.1,stats1203.2,stats1204.1,stats1204.2,stats1205.1,stats1205.2,stats1206.1,stats1206.2,stats1207.1,stats1207.2,stats1208.1,stats1208.2,stats1209.1,stats1209.2,stats1210.1,stats1210.2,stats1211.1,stats1211.2,stats1212.1,stats1212.2,stats1213.1,stats1213.2,stats1214.1,stats1214.2,stats1215.1,stats1215.2,stats1216.1,stats1216.2,stats1217.1,stats1217.2,stats1218.1,stats1218.2,stats1219.1,stats1219.2,stats1220.1,stats1220.2,stats1221.1,stats1221.2,stats1222.1,stats1222.2,stats1223.1,stats1223.2,stats1224.1,stats1224.2,stats1225.1,stats1225.2,stats1226.1,stats1226.2,stats1227.1,stats1227.2,stats1228.1,stats1228.2,stats1229.1,stats1229.2,stats1230.1,stats1230.2,stats1231.1,stats1231.2,stats1232.1,stats1232.2,stats1233.1,stats1233.2,stats1234.1,stats1234.2,stats1235.1,stats1235.2,stats1236.1,stats1236.2,stats1237.1,stats1237.2,stats1238.1,stats1238.2,stats1239.1,stats1239.2]
  decide
end ActualSHAMatrixRows
