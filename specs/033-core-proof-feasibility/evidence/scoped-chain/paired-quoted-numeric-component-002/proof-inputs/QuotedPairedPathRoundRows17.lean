import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData18
import PairedPathRoundInstructionMatrixData19
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1184 : actualRows1184=WordField.canonicalRows actualModulus 1184 (.badd 1182 1183) := by core033_kernel_decide
theorem stats1184 : actualRows1184.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1184=5388 := by core033_kernel_decide
theorem rows1185 : actualRows1185=WordField.canonicalRows actualModulus 1185 (.bnot 1184) := by core033_kernel_decide
theorem stats1185 : actualRows1185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1185=6276 := by core033_kernel_decide
theorem rows1186 : actualRows1186=WordField.canonicalRows actualModulus 1186 (.band 1185 715) := by core033_kernel_decide
theorem stats1186 : actualRows1186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1186=5124 := by core033_kernel_decide
theorem rows1187 : actualRows1187=WordField.canonicalRows actualModulus 1187 (.bxor 1178 1186) := by core033_kernel_decide
theorem stats1187 : actualRows1187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1187=7428 := by core033_kernel_decide
theorem rows1188 : actualRows1188=WordField.canonicalRows actualModulus 1188 (.band 1171 1187) := by core033_kernel_decide
theorem stats1188 : actualRows1188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1188=5124 := by core033_kernel_decide
theorem rows1189 : actualRows1189=WordField.canonicalRows actualModulus 1189 (.shr 1138 1) := by core033_kernel_decide
theorem stats1189 : actualRows1189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1189=5052 := by core033_kernel_decide
theorem rows1190 : actualRows1190=WordField.canonicalRows actualModulus 1190 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1190 : actualRows1190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1190=2892 := by core033_kernel_decide
theorem rows1191 : actualRows1191=WordField.canonicalRows actualModulus 1191 (.band 1189 1190) := by core033_kernel_decide
theorem stats1191 : actualRows1191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1191=5124 := by core033_kernel_decide
theorem rows1192 : actualRows1192=WordField.canonicalRows actualModulus 1192 (.bnot 1191) := by core033_kernel_decide
theorem stats1192 : actualRows1192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1192=6276 := by core033_kernel_decide
theorem rows1193 : actualRows1193=WordField.canonicalRows actualModulus 1193 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1193 : actualRows1193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1193=2892 := by core033_kernel_decide
theorem rows1194 : actualRows1194=WordField.canonicalRows actualModulus 1194 (.badd 1192 1193) := by core033_kernel_decide
theorem stats1194 : actualRows1194.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1194=5388 := by core033_kernel_decide
theorem rows1195 : actualRows1195=WordField.canonicalRows actualModulus 1195 (.bnot 1194) := by core033_kernel_decide
theorem stats1195 : actualRows1195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1195=6276 := by core033_kernel_decide
theorem rows1196 : actualRows1196=WordField.canonicalRows actualModulus 1196 (.shr 1138 0) := by core033_kernel_decide
theorem stats1196 : actualRows1196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1196=5124 := by core033_kernel_decide
theorem rows1197 : actualRows1197=WordField.canonicalRows actualModulus 1197 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1197 : actualRows1197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1197=2892 := by core033_kernel_decide
theorem rows1198 : actualRows1198=WordField.canonicalRows actualModulus 1198 (.band 1196 1197) := by core033_kernel_decide
theorem stats1198 : actualRows1198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1198=5124 := by core033_kernel_decide
theorem rows1199 : actualRows1199=WordField.canonicalRows actualModulus 1199 (.bnot 1198) := by core033_kernel_decide
theorem stats1199 : actualRows1199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1199=6276 := by core033_kernel_decide
theorem rows1200 : actualRows1200=WordField.canonicalRows actualModulus 1200 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1200 : actualRows1200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1200=2892 := by core033_kernel_decide
theorem rows1201 : actualRows1201=WordField.canonicalRows actualModulus 1201 (.badd 1199 1200) := by core033_kernel_decide
theorem stats1201 : actualRows1201.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1201=5388 := by core033_kernel_decide
theorem rows1202 : actualRows1202=WordField.canonicalRows actualModulus 1202 (.band 1201 704) := by core033_kernel_decide
theorem stats1202 : actualRows1202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1202=5124 := by core033_kernel_decide
theorem rows1203 : actualRows1203=WordField.canonicalRows actualModulus 1203 (.shr 1138 0) := by core033_kernel_decide
theorem stats1203 : actualRows1203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1203=5124 := by core033_kernel_decide
theorem rows1204 : actualRows1204=WordField.canonicalRows actualModulus 1204 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1204 : actualRows1204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1204=2892 := by core033_kernel_decide
theorem rows1205 : actualRows1205=WordField.canonicalRows actualModulus 1205 (.band 1203 1204) := by core033_kernel_decide
theorem stats1205 : actualRows1205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1205=5124 := by core033_kernel_decide
theorem rows1206 : actualRows1206=WordField.canonicalRows actualModulus 1206 (.bnot 1205) := by core033_kernel_decide
theorem stats1206 : actualRows1206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1206=6276 := by core033_kernel_decide
theorem rows1207 : actualRows1207=WordField.canonicalRows actualModulus 1207 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1207 : actualRows1207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1207=2892 := by core033_kernel_decide
theorem rows1208 : actualRows1208=WordField.canonicalRows actualModulus 1208 (.badd 1206 1207) := by core033_kernel_decide
theorem stats1208 : actualRows1208.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1208=5388 := by core033_kernel_decide
theorem rows1209 : actualRows1209=WordField.canonicalRows actualModulus 1209 (.bnot 1208) := by core033_kernel_decide
theorem stats1209 : actualRows1209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1209=6276 := by core033_kernel_decide
theorem rows1210 : actualRows1210=WordField.canonicalRows actualModulus 1210 (.band 1209 693) := by core033_kernel_decide
theorem stats1210 : actualRows1210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1210=5124 := by core033_kernel_decide
theorem rows1211 : actualRows1211=WordField.canonicalRows actualModulus 1211 (.bxor 1202 1210) := by core033_kernel_decide
theorem stats1211 : actualRows1211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1211=7428 := by core033_kernel_decide
theorem rows1212 : actualRows1212=WordField.canonicalRows actualModulus 1212 (.band 1195 1211) := by core033_kernel_decide
theorem stats1212 : actualRows1212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1212=5124 := by core033_kernel_decide
theorem rows1213 : actualRows1213=WordField.canonicalRows actualModulus 1213 (.bxor 1188 1212) := by core033_kernel_decide
theorem stats1213 : actualRows1213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1213=7428 := by core033_kernel_decide
theorem rows1214 : actualRows1214=WordField.canonicalRows actualModulus 1214 (.band 1165 1213) := by core033_kernel_decide
theorem stats1214 : actualRows1214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1214=5124 := by core033_kernel_decide
theorem rows1215 : actualRows1215=WordField.canonicalRows actualModulus 1215 (.shr 1138 2) := by core033_kernel_decide
theorem stats1215 : actualRows1215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1215=4980 := by core033_kernel_decide
theorem rows1216 : actualRows1216=WordField.canonicalRows actualModulus 1216 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1216 : actualRows1216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1216=2892 := by core033_kernel_decide
theorem rows1217 : actualRows1217=WordField.canonicalRows actualModulus 1217 (.band 1215 1216) := by core033_kernel_decide
theorem stats1217 : actualRows1217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1217=5124 := by core033_kernel_decide
theorem rows1218 : actualRows1218=WordField.canonicalRows actualModulus 1218 (.bnot 1217) := by core033_kernel_decide
theorem stats1218 : actualRows1218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1218=6276 := by core033_kernel_decide
theorem rows1219 : actualRows1219=WordField.canonicalRows actualModulus 1219 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1219 : actualRows1219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1219=2892 := by core033_kernel_decide
theorem rows1220 : actualRows1220=WordField.canonicalRows actualModulus 1220 (.badd 1218 1219) := by core033_kernel_decide
theorem stats1220 : actualRows1220.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1220=5388 := by core033_kernel_decide
theorem rows1221 : actualRows1221=WordField.canonicalRows actualModulus 1221 (.bnot 1220) := by core033_kernel_decide
theorem stats1221 : actualRows1221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1221=6276 := by core033_kernel_decide
theorem rows1222 : actualRows1222=WordField.canonicalRows actualModulus 1222 (.shr 1138 1) := by core033_kernel_decide
theorem stats1222 : actualRows1222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1222=5052 := by core033_kernel_decide
theorem rows1223 : actualRows1223=WordField.canonicalRows actualModulus 1223 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1223 : actualRows1223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1223=2892 := by core033_kernel_decide
theorem rows1224 : actualRows1224=WordField.canonicalRows actualModulus 1224 (.band 1222 1223) := by core033_kernel_decide
theorem stats1224 : actualRows1224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1224=5124 := by core033_kernel_decide
theorem rows1225 : actualRows1225=WordField.canonicalRows actualModulus 1225 (.bnot 1224) := by core033_kernel_decide
theorem stats1225 : actualRows1225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1225=6276 := by core033_kernel_decide
theorem rows1226 : actualRows1226=WordField.canonicalRows actualModulus 1226 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1226 : actualRows1226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1226=2892 := by core033_kernel_decide
theorem rows1227 : actualRows1227=WordField.canonicalRows actualModulus 1227 (.badd 1225 1226) := by core033_kernel_decide
theorem stats1227 : actualRows1227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1227=5388 := by core033_kernel_decide
theorem rows1228 : actualRows1228=WordField.canonicalRows actualModulus 1228 (.shr 1138 0) := by core033_kernel_decide
theorem stats1228 : actualRows1228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1228=5124 := by core033_kernel_decide
theorem rows1229 : actualRows1229=WordField.canonicalRows actualModulus 1229 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1229 : actualRows1229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1229=2892 := by core033_kernel_decide
theorem rows1230 : actualRows1230=WordField.canonicalRows actualModulus 1230 (.band 1228 1229) := by core033_kernel_decide
theorem stats1230 : actualRows1230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1230=5124 := by core033_kernel_decide
theorem rows1231 : actualRows1231=WordField.canonicalRows actualModulus 1231 (.bnot 1230) := by core033_kernel_decide
theorem stats1231 : actualRows1231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1231=6276 := by core033_kernel_decide
theorem rows1232 : actualRows1232=WordField.canonicalRows actualModulus 1232 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1232 : actualRows1232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1232=2892 := by core033_kernel_decide
theorem rows1233 : actualRows1233=WordField.canonicalRows actualModulus 1233 (.badd 1231 1232) := by core033_kernel_decide
theorem stats1233 : actualRows1233.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1233=5388 := by core033_kernel_decide
theorem rows1234 : actualRows1234=WordField.canonicalRows actualModulus 1234 (.band 1233 682) := by core033_kernel_decide
theorem stats1234 : actualRows1234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1234=5124 := by core033_kernel_decide
theorem rows1235 : actualRows1235=WordField.canonicalRows actualModulus 1235 (.shr 1138 0) := by core033_kernel_decide
theorem stats1235 : actualRows1235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1235=5124 := by core033_kernel_decide
theorem rows1236 : actualRows1236=WordField.canonicalRows actualModulus 1236 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1236 : actualRows1236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1236=2892 := by core033_kernel_decide
theorem rows1237 : actualRows1237=WordField.canonicalRows actualModulus 1237 (.band 1235 1236) := by core033_kernel_decide
theorem stats1237 : actualRows1237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1237=5124 := by core033_kernel_decide
theorem rows1238 : actualRows1238=WordField.canonicalRows actualModulus 1238 (.bnot 1237) := by core033_kernel_decide
theorem stats1238 : actualRows1238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1238=6276 := by core033_kernel_decide
theorem rows1239 : actualRows1239=WordField.canonicalRows actualModulus 1239 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1239 : actualRows1239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1239=2892 := by core033_kernel_decide
theorem rows1240 : actualRows1240=WordField.canonicalRows actualModulus 1240 (.badd 1238 1239) := by core033_kernel_decide
theorem stats1240 : actualRows1240.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1240=5388 := by core033_kernel_decide
theorem rows1241 : actualRows1241=WordField.canonicalRows actualModulus 1241 (.bnot 1240) := by core033_kernel_decide
theorem stats1241 : actualRows1241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1241=6276 := by core033_kernel_decide
theorem rows1242 : actualRows1242=WordField.canonicalRows actualModulus 1242 (.band 1241 671) := by core033_kernel_decide
theorem stats1242 : actualRows1242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1242=5124 := by core033_kernel_decide
theorem rows1243 : actualRows1243=WordField.canonicalRows actualModulus 1243 (.bxor 1234 1242) := by core033_kernel_decide
theorem stats1243 : actualRows1243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1243=7428 := by core033_kernel_decide
theorem rows1244 : actualRows1244=WordField.canonicalRows actualModulus 1244 (.band 1227 1243) := by core033_kernel_decide
theorem stats1244 : actualRows1244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1244=5124 := by core033_kernel_decide
theorem rows1245 : actualRows1245=WordField.canonicalRows actualModulus 1245 (.shr 1138 1) := by core033_kernel_decide
theorem stats1245 : actualRows1245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1245=5052 := by core033_kernel_decide
theorem rows1246 : actualRows1246=WordField.canonicalRows actualModulus 1246 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1246 : actualRows1246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1246=2892 := by core033_kernel_decide
theorem rows1247 : actualRows1247=WordField.canonicalRows actualModulus 1247 (.band 1245 1246) := by core033_kernel_decide
theorem stats1247 : actualRows1247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1247=5124 := by core033_kernel_decide
def partRows17 : List R1CS.Row := actualRows1184++actualRows1185++actualRows1186++actualRows1187++actualRows1188++actualRows1189++actualRows1190++actualRows1191++actualRows1192++actualRows1193++actualRows1194++actualRows1195++actualRows1196++actualRows1197++actualRows1198++actualRows1199++actualRows1200++actualRows1201++actualRows1202++actualRows1203++actualRows1204++actualRows1205++actualRows1206++actualRows1207++actualRows1208++actualRows1209++actualRows1210++actualRows1211++actualRows1212++actualRows1213++actualRows1214++actualRows1215++actualRows1216++actualRows1217++actualRows1218++actualRows1219++actualRows1220++actualRows1221++actualRows1222++actualRows1223++actualRows1224++actualRows1225++actualRows1226++actualRows1227++actualRows1228++actualRows1229++actualRows1230++actualRows1231++actualRows1232++actualRows1233++actualRows1234++actualRows1235++actualRows1236++actualRows1237++actualRows1238++actualRows1239++actualRows1240++actualRows1241++actualRows1242++actualRows1243++actualRows1244++actualRows1245++actualRows1246++actualRows1247
def partOps17 : List WordIR.Op := [.badd 1182 1183,.bnot 1184,.band 1185 715,.bxor 1178 1186,.band 1171 1187,.shr 1138 1,.literal (BitVec.ofNat 32 1),.band 1189 1190,.bnot 1191,.literal (BitVec.ofNat 32 1),.badd 1192 1193,.bnot 1194,.shr 1138 0,.literal (BitVec.ofNat 32 1),.band 1196 1197,.bnot 1198,.literal (BitVec.ofNat 32 1),.badd 1199 1200,.band 1201 704,.shr 1138 0,.literal (BitVec.ofNat 32 1),.band 1203 1204,.bnot 1205,.literal (BitVec.ofNat 32 1),.badd 1206 1207,.bnot 1208,.band 1209 693,.bxor 1202 1210,.band 1195 1211,.bxor 1188 1212,.band 1165 1213,.shr 1138 2,.literal (BitVec.ofNat 32 1),.band 1215 1216,.bnot 1217,.literal (BitVec.ofNat 32 1),.badd 1218 1219,.bnot 1220,.shr 1138 1,.literal (BitVec.ofNat 32 1),.band 1222 1223,.bnot 1224,.literal (BitVec.ofNat 32 1),.badd 1225 1226,.shr 1138 0,.literal (BitVec.ofNat 32 1),.band 1228 1229,.bnot 1230,.literal (BitVec.ofNat 32 1),.badd 1231 1232,.band 1233 682,.shr 1138 0,.literal (BitVec.ofNat 32 1),.band 1235 1236,.bnot 1237,.literal (BitVec.ofNat 32 1),.badd 1238 1239,.bnot 1240,.band 1241 671,.bxor 1234 1242,.band 1227 1243,.shr 1138 1,.literal (BitVec.ofNat 32 1),.band 1245 1246]
theorem partExact17 : partRows17=WordField.rows actualModulus 1184 partOps17 := by
  simp only [partRows17,partOps17,WordField.rows,rows1184,rows1185,rows1186,rows1187,rows1188,rows1189,rows1190,rows1191,rows1192,rows1193,rows1194,rows1195,rows1196,rows1197,rows1198,rows1199,rows1200,rows1201,rows1202,rows1203,rows1204,rows1205,rows1206,rows1207,rows1208,rows1209,rows1210,rows1211,rows1212,rows1213,rows1214,rows1215,rows1216,rows1217,rows1218,rows1219,rows1220,rows1221,rows1222,rows1223,rows1224,rows1225,rows1226,rows1227,rows1228,rows1229,rows1230,rows1231,rows1232,rows1233,rows1234,rows1235,rows1236,rows1237,rows1238,rows1239,rows1240,rows1241,rows1242,rows1243,rows1244,rows1245,rows1246,rows1247,List.append_assoc,List.append_nil]
theorem partLength17 : partOps17.length=64 := by decide
theorem partStats17 : partRows17.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows17=319248 := by
  simp only [partRows17,List.length_append,MatrixRowBlocks.rows_weight_append,stats1184.1,stats1184.2,stats1185.1,stats1185.2,stats1186.1,stats1186.2,stats1187.1,stats1187.2,stats1188.1,stats1188.2,stats1189.1,stats1189.2,stats1190.1,stats1190.2,stats1191.1,stats1191.2,stats1192.1,stats1192.2,stats1193.1,stats1193.2,stats1194.1,stats1194.2,stats1195.1,stats1195.2,stats1196.1,stats1196.2,stats1197.1,stats1197.2,stats1198.1,stats1198.2,stats1199.1,stats1199.2,stats1200.1,stats1200.2,stats1201.1,stats1201.2,stats1202.1,stats1202.2,stats1203.1,stats1203.2,stats1204.1,stats1204.2,stats1205.1,stats1205.2,stats1206.1,stats1206.2,stats1207.1,stats1207.2,stats1208.1,stats1208.2,stats1209.1,stats1209.2,stats1210.1,stats1210.2,stats1211.1,stats1211.2,stats1212.1,stats1212.2,stats1213.1,stats1213.2,stats1214.1,stats1214.2,stats1215.1,stats1215.2,stats1216.1,stats1216.2,stats1217.1,stats1217.2,stats1218.1,stats1218.2,stats1219.1,stats1219.2,stats1220.1,stats1220.2,stats1221.1,stats1221.2,stats1222.1,stats1222.2,stats1223.1,stats1223.2,stats1224.1,stats1224.2,stats1225.1,stats1225.2,stats1226.1,stats1226.2,stats1227.1,stats1227.2,stats1228.1,stats1228.2,stats1229.1,stats1229.2,stats1230.1,stats1230.2,stats1231.1,stats1231.2,stats1232.1,stats1232.2,stats1233.1,stats1233.2,stats1234.1,stats1234.2,stats1235.1,stats1235.2,stats1236.1,stats1236.2,stats1237.1,stats1237.2,stats1238.1,stats1238.2,stats1239.1,stats1239.2,stats1240.1,stats1240.2,stats1241.1,stats1241.2,stats1242.1,stats1242.2,stats1243.1,stats1243.2,stats1244.1,stats1244.2,stats1245.1,stats1245.2,stats1246.1,stats1246.2,stats1247.1,stats1247.2]
  decide
end QuotedPairedPathRoundCheckedRows
