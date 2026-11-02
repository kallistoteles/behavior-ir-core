import ActualIngressIR
import ArtifactIngressBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import IngressInstructionMatrixData19
namespace IngressCheckedRows
open Core033 IngressInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1216 : actualRows1216=WordField.canonicalRows actualModulus 1216 (.bnot 1215) := by core033_kernel_decide
theorem stats1216 : actualRows1216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1216=6276 := by core033_kernel_decide
theorem rows1217 : actualRows1217=WordField.canonicalRows actualModulus 1217 (.band 1211 1216) := by core033_kernel_decide
theorem stats1217 : actualRows1217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1217=5124 := by core033_kernel_decide
theorem rows1218 : actualRows1218=WordField.canonicalRows actualModulus 1218 (.bxor 1207 1217) := by core033_kernel_decide
theorem stats1218 : actualRows1218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1218=7428 := by core033_kernel_decide
theorem rows1219 : actualRows1219=WordField.canonicalRows actualModulus 1219 (.shr 1218 31) := by core033_kernel_decide
theorem stats1219 : actualRows1219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1219=2892 := by core033_kernel_decide
theorem rows1220 : actualRows1220=WordField.canonicalRows actualModulus 1220 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1220 : actualRows1220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1220=2892 := by core033_kernel_decide
theorem rows1221 : actualRows1221=WordField.canonicalRows actualModulus 1221 (.bxor 1219 1220) := by core033_kernel_decide
theorem stats1221 : actualRows1221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1221=7428 := by core033_kernel_decide
theorem rows1222 : actualRows1222=WordField.canonicalRows actualModulus 1222 (.shr 59 8) := by core033_kernel_decide
theorem stats1222 : actualRows1222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1222=4548 := by core033_kernel_decide
theorem rows1223 : actualRows1223=WordField.canonicalRows actualModulus 1223 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1223 : actualRows1223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1223=2820 := by core033_kernel_decide
theorem rows1224 : actualRows1224=WordField.canonicalRows actualModulus 1224 (.bnot 1223) := by core033_kernel_decide
theorem stats1224 : actualRows1224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1224=6276 := by core033_kernel_decide
theorem rows1225 : actualRows1225=WordField.canonicalRows actualModulus 1225 (.band 1222 1224) := by core033_kernel_decide
theorem stats1225 : actualRows1225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1225=5124 := by core033_kernel_decide
theorem rows1226 : actualRows1226=WordField.canonicalRows actualModulus 1226 (.shr 59 8) := by core033_kernel_decide
theorem stats1226 : actualRows1226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1226=4548 := by core033_kernel_decide
theorem rows1227 : actualRows1227=WordField.canonicalRows actualModulus 1227 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1227 : actualRows1227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1227=2820 := by core033_kernel_decide
theorem rows1228 : actualRows1228=WordField.canonicalRows actualModulus 1228 (.bnot 1227) := by core033_kernel_decide
theorem stats1228 : actualRows1228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1228=6276 := by core033_kernel_decide
theorem rows1229 : actualRows1229=WordField.canonicalRows actualModulus 1229 (.bxor 1226 1228) := by core033_kernel_decide
theorem stats1229 : actualRows1229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1229=7428 := by core033_kernel_decide
theorem rows1230 : actualRows1230=WordField.canonicalRows actualModulus 1230 (.shr 59 8) := by core033_kernel_decide
theorem stats1230 : actualRows1230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1230=4548 := by core033_kernel_decide
theorem rows1231 : actualRows1231=WordField.canonicalRows actualModulus 1231 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1231 : actualRows1231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1231=2820 := by core033_kernel_decide
theorem rows1232 : actualRows1232=WordField.canonicalRows actualModulus 1232 (.bnot 1231) := by core033_kernel_decide
theorem stats1232 : actualRows1232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1232=6276 := by core033_kernel_decide
theorem rows1233 : actualRows1233=WordField.canonicalRows actualModulus 1233 (.badd 1230 1232) := by core033_kernel_decide
theorem stats1233 : actualRows1233.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1233=5388 := by core033_kernel_decide
theorem rows1234 : actualRows1234=WordField.canonicalRows actualModulus 1234 (.bnot 1233) := by core033_kernel_decide
theorem stats1234 : actualRows1234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1234=6276 := by core033_kernel_decide
theorem rows1235 : actualRows1235=WordField.canonicalRows actualModulus 1235 (.band 1229 1234) := by core033_kernel_decide
theorem stats1235 : actualRows1235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1235=5124 := by core033_kernel_decide
theorem rows1236 : actualRows1236=WordField.canonicalRows actualModulus 1236 (.bxor 1225 1235) := by core033_kernel_decide
theorem stats1236 : actualRows1236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1236=7428 := by core033_kernel_decide
theorem rows1237 : actualRows1237=WordField.canonicalRows actualModulus 1237 (.shr 1236 31) := by core033_kernel_decide
theorem stats1237 : actualRows1237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1237=2892 := by core033_kernel_decide
theorem rows1238 : actualRows1238=WordField.canonicalRows actualModulus 1238 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1238 : actualRows1238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1238=2892 := by core033_kernel_decide
theorem rows1239 : actualRows1239=WordField.canonicalRows actualModulus 1239 (.bxor 1237 1238) := by core033_kernel_decide
theorem stats1239 : actualRows1239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1239=7428 := by core033_kernel_decide
theorem rows1240 : actualRows1240=WordField.canonicalRows actualModulus 1240 (.shr 60 8) := by core033_kernel_decide
theorem stats1240 : actualRows1240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1240=4548 := by core033_kernel_decide
theorem rows1241 : actualRows1241=WordField.canonicalRows actualModulus 1241 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1241 : actualRows1241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1241=2820 := by core033_kernel_decide
theorem rows1242 : actualRows1242=WordField.canonicalRows actualModulus 1242 (.bnot 1241) := by core033_kernel_decide
theorem stats1242 : actualRows1242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1242=6276 := by core033_kernel_decide
theorem rows1243 : actualRows1243=WordField.canonicalRows actualModulus 1243 (.band 1240 1242) := by core033_kernel_decide
theorem stats1243 : actualRows1243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1243=5124 := by core033_kernel_decide
theorem rows1244 : actualRows1244=WordField.canonicalRows actualModulus 1244 (.shr 60 8) := by core033_kernel_decide
theorem stats1244 : actualRows1244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1244=4548 := by core033_kernel_decide
theorem rows1245 : actualRows1245=WordField.canonicalRows actualModulus 1245 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1245 : actualRows1245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1245=2820 := by core033_kernel_decide
theorem rows1246 : actualRows1246=WordField.canonicalRows actualModulus 1246 (.bnot 1245) := by core033_kernel_decide
theorem stats1246 : actualRows1246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1246=6276 := by core033_kernel_decide
theorem rows1247 : actualRows1247=WordField.canonicalRows actualModulus 1247 (.bxor 1244 1246) := by core033_kernel_decide
theorem stats1247 : actualRows1247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1247=7428 := by core033_kernel_decide
theorem rows1248 : actualRows1248=WordField.canonicalRows actualModulus 1248 (.shr 60 8) := by core033_kernel_decide
theorem stats1248 : actualRows1248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1248=4548 := by core033_kernel_decide
theorem rows1249 : actualRows1249=WordField.canonicalRows actualModulus 1249 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1249 : actualRows1249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1249=2820 := by core033_kernel_decide
theorem rows1250 : actualRows1250=WordField.canonicalRows actualModulus 1250 (.bnot 1249) := by core033_kernel_decide
theorem stats1250 : actualRows1250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1250=6276 := by core033_kernel_decide
theorem rows1251 : actualRows1251=WordField.canonicalRows actualModulus 1251 (.badd 1248 1250) := by core033_kernel_decide
theorem stats1251 : actualRows1251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1251=5388 := by core033_kernel_decide
theorem rows1252 : actualRows1252=WordField.canonicalRows actualModulus 1252 (.bnot 1251) := by core033_kernel_decide
theorem stats1252 : actualRows1252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1252=6276 := by core033_kernel_decide
theorem rows1253 : actualRows1253=WordField.canonicalRows actualModulus 1253 (.band 1247 1252) := by core033_kernel_decide
theorem stats1253 : actualRows1253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1253=5124 := by core033_kernel_decide
theorem rows1254 : actualRows1254=WordField.canonicalRows actualModulus 1254 (.bxor 1243 1253) := by core033_kernel_decide
theorem stats1254 : actualRows1254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1254=7428 := by core033_kernel_decide
theorem rows1255 : actualRows1255=WordField.canonicalRows actualModulus 1255 (.shr 1254 31) := by core033_kernel_decide
theorem stats1255 : actualRows1255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1255=2892 := by core033_kernel_decide
theorem rows1256 : actualRows1256=WordField.canonicalRows actualModulus 1256 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1256 : actualRows1256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1256=2892 := by core033_kernel_decide
theorem rows1257 : actualRows1257=WordField.canonicalRows actualModulus 1257 (.bxor 1255 1256) := by core033_kernel_decide
theorem stats1257 : actualRows1257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1257=7428 := by core033_kernel_decide
theorem rows1258 : actualRows1258=WordField.canonicalRows actualModulus 1258 (.shr 61 8) := by core033_kernel_decide
theorem stats1258 : actualRows1258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1258=4548 := by core033_kernel_decide
theorem rows1259 : actualRows1259=WordField.canonicalRows actualModulus 1259 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1259 : actualRows1259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1259=2820 := by core033_kernel_decide
theorem rows1260 : actualRows1260=WordField.canonicalRows actualModulus 1260 (.bnot 1259) := by core033_kernel_decide
theorem stats1260 : actualRows1260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1260=6276 := by core033_kernel_decide
theorem rows1261 : actualRows1261=WordField.canonicalRows actualModulus 1261 (.band 1258 1260) := by core033_kernel_decide
theorem stats1261 : actualRows1261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1261=5124 := by core033_kernel_decide
theorem rows1262 : actualRows1262=WordField.canonicalRows actualModulus 1262 (.shr 61 8) := by core033_kernel_decide
theorem stats1262 : actualRows1262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1262=4548 := by core033_kernel_decide
theorem rows1263 : actualRows1263=WordField.canonicalRows actualModulus 1263 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1263 : actualRows1263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1263=2820 := by core033_kernel_decide
theorem rows1264 : actualRows1264=WordField.canonicalRows actualModulus 1264 (.bnot 1263) := by core033_kernel_decide
theorem stats1264 : actualRows1264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1264=6276 := by core033_kernel_decide
theorem rows1265 : actualRows1265=WordField.canonicalRows actualModulus 1265 (.bxor 1262 1264) := by core033_kernel_decide
theorem stats1265 : actualRows1265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1265=7428 := by core033_kernel_decide
theorem rows1266 : actualRows1266=WordField.canonicalRows actualModulus 1266 (.shr 61 8) := by core033_kernel_decide
theorem stats1266 : actualRows1266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1266=4548 := by core033_kernel_decide
theorem rows1267 : actualRows1267=WordField.canonicalRows actualModulus 1267 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1267 : actualRows1267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1267=2820 := by core033_kernel_decide
theorem rows1268 : actualRows1268=WordField.canonicalRows actualModulus 1268 (.bnot 1267) := by core033_kernel_decide
theorem stats1268 : actualRows1268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1268=6276 := by core033_kernel_decide
theorem rows1269 : actualRows1269=WordField.canonicalRows actualModulus 1269 (.badd 1266 1268) := by core033_kernel_decide
theorem stats1269 : actualRows1269.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1269=5388 := by core033_kernel_decide
theorem rows1270 : actualRows1270=WordField.canonicalRows actualModulus 1270 (.bnot 1269) := by core033_kernel_decide
theorem stats1270 : actualRows1270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1270=6276 := by core033_kernel_decide
theorem rows1271 : actualRows1271=WordField.canonicalRows actualModulus 1271 (.band 1265 1270) := by core033_kernel_decide
theorem stats1271 : actualRows1271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1271=5124 := by core033_kernel_decide
theorem rows1272 : actualRows1272=WordField.canonicalRows actualModulus 1272 (.bxor 1261 1271) := by core033_kernel_decide
theorem stats1272 : actualRows1272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1272=7428 := by core033_kernel_decide
theorem rows1273 : actualRows1273=WordField.canonicalRows actualModulus 1273 (.shr 1272 31) := by core033_kernel_decide
theorem stats1273 : actualRows1273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1273=2892 := by core033_kernel_decide
theorem rows1274 : actualRows1274=WordField.canonicalRows actualModulus 1274 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1274 : actualRows1274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1274=2892 := by core033_kernel_decide
theorem rows1275 : actualRows1275=WordField.canonicalRows actualModulus 1275 (.bxor 1273 1274) := by core033_kernel_decide
theorem stats1275 : actualRows1275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1275=7428 := by core033_kernel_decide
theorem rows1276 : actualRows1276=WordField.canonicalRows actualModulus 1276 (.shr 62 8) := by core033_kernel_decide
theorem stats1276 : actualRows1276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1276=4548 := by core033_kernel_decide
theorem rows1277 : actualRows1277=WordField.canonicalRows actualModulus 1277 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1277 : actualRows1277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1277=2820 := by core033_kernel_decide
theorem rows1278 : actualRows1278=WordField.canonicalRows actualModulus 1278 (.bnot 1277) := by core033_kernel_decide
theorem stats1278 : actualRows1278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1278=6276 := by core033_kernel_decide
theorem rows1279 : actualRows1279=WordField.canonicalRows actualModulus 1279 (.band 1276 1278) := by core033_kernel_decide
theorem stats1279 : actualRows1279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1279=5124 := by core033_kernel_decide
def partRows18 : List R1CS.Row := actualRows1216++actualRows1217++actualRows1218++actualRows1219++actualRows1220++actualRows1221++actualRows1222++actualRows1223++actualRows1224++actualRows1225++actualRows1226++actualRows1227++actualRows1228++actualRows1229++actualRows1230++actualRows1231++actualRows1232++actualRows1233++actualRows1234++actualRows1235++actualRows1236++actualRows1237++actualRows1238++actualRows1239++actualRows1240++actualRows1241++actualRows1242++actualRows1243++actualRows1244++actualRows1245++actualRows1246++actualRows1247++actualRows1248++actualRows1249++actualRows1250++actualRows1251++actualRows1252++actualRows1253++actualRows1254++actualRows1255++actualRows1256++actualRows1257++actualRows1258++actualRows1259++actualRows1260++actualRows1261++actualRows1262++actualRows1263++actualRows1264++actualRows1265++actualRows1266++actualRows1267++actualRows1268++actualRows1269++actualRows1270++actualRows1271++actualRows1272++actualRows1273++actualRows1274++actualRows1275++actualRows1276++actualRows1277++actualRows1278++actualRows1279
def partOps18 : List WordIR.Op := [.bnot 1215,.band 1211 1216,.bxor 1207 1217,.shr 1218 31,.literal (BitVec.ofNat 32 1),.bxor 1219 1220,.shr 59 8,.literal (BitVec.ofNat 32 0),.bnot 1223,.band 1222 1224,.shr 59 8,.literal (BitVec.ofNat 32 0),.bnot 1227,.bxor 1226 1228,.shr 59 8,.literal (BitVec.ofNat 32 0),.bnot 1231,.badd 1230 1232,.bnot 1233,.band 1229 1234,.bxor 1225 1235,.shr 1236 31,.literal (BitVec.ofNat 32 1),.bxor 1237 1238,.shr 60 8,.literal (BitVec.ofNat 32 0),.bnot 1241,.band 1240 1242,.shr 60 8,.literal (BitVec.ofNat 32 0),.bnot 1245,.bxor 1244 1246,.shr 60 8,.literal (BitVec.ofNat 32 0),.bnot 1249,.badd 1248 1250,.bnot 1251,.band 1247 1252,.bxor 1243 1253,.shr 1254 31,.literal (BitVec.ofNat 32 1),.bxor 1255 1256,.shr 61 8,.literal (BitVec.ofNat 32 0),.bnot 1259,.band 1258 1260,.shr 61 8,.literal (BitVec.ofNat 32 0),.bnot 1263,.bxor 1262 1264,.shr 61 8,.literal (BitVec.ofNat 32 0),.bnot 1267,.badd 1266 1268,.bnot 1269,.band 1265 1270,.bxor 1261 1271,.shr 1272 31,.literal (BitVec.ofNat 32 1),.bxor 1273 1274,.shr 62 8,.literal (BitVec.ofNat 32 0),.bnot 1277,.band 1276 1278]
theorem partExact18 : partRows18=WordField.rows actualModulus 1216 partOps18 := by
  simp only [partRows18,partOps18,WordField.rows,rows1216,rows1217,rows1218,rows1219,rows1220,rows1221,rows1222,rows1223,rows1224,rows1225,rows1226,rows1227,rows1228,rows1229,rows1230,rows1231,rows1232,rows1233,rows1234,rows1235,rows1236,rows1237,rows1238,rows1239,rows1240,rows1241,rows1242,rows1243,rows1244,rows1245,rows1246,rows1247,rows1248,rows1249,rows1250,rows1251,rows1252,rows1253,rows1254,rows1255,rows1256,rows1257,rows1258,rows1259,rows1260,rows1261,rows1262,rows1263,rows1264,rows1265,rows1266,rows1267,rows1268,rows1269,rows1270,rows1271,rows1272,rows1273,rows1274,rows1275,rows1276,rows1277,rows1278,rows1279,List.append_assoc,List.append_nil]
theorem partLength18 : partOps18.length=64 := by decide
theorem partStats18 : partRows18.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows18=323544 := by
  simp only [partRows18,List.length_append,MatrixRowBlocks.rows_weight_append,stats1216.1,stats1216.2,stats1217.1,stats1217.2,stats1218.1,stats1218.2,stats1219.1,stats1219.2,stats1220.1,stats1220.2,stats1221.1,stats1221.2,stats1222.1,stats1222.2,stats1223.1,stats1223.2,stats1224.1,stats1224.2,stats1225.1,stats1225.2,stats1226.1,stats1226.2,stats1227.1,stats1227.2,stats1228.1,stats1228.2,stats1229.1,stats1229.2,stats1230.1,stats1230.2,stats1231.1,stats1231.2,stats1232.1,stats1232.2,stats1233.1,stats1233.2,stats1234.1,stats1234.2,stats1235.1,stats1235.2,stats1236.1,stats1236.2,stats1237.1,stats1237.2,stats1238.1,stats1238.2,stats1239.1,stats1239.2,stats1240.1,stats1240.2,stats1241.1,stats1241.2,stats1242.1,stats1242.2,stats1243.1,stats1243.2,stats1244.1,stats1244.2,stats1245.1,stats1245.2,stats1246.1,stats1246.2,stats1247.1,stats1247.2,stats1248.1,stats1248.2,stats1249.1,stats1249.2,stats1250.1,stats1250.2,stats1251.1,stats1251.2,stats1252.1,stats1252.2,stats1253.1,stats1253.2,stats1254.1,stats1254.2,stats1255.1,stats1255.2,stats1256.1,stats1256.2,stats1257.1,stats1257.2,stats1258.1,stats1258.2,stats1259.1,stats1259.2,stats1260.1,stats1260.2,stats1261.1,stats1261.2,stats1262.1,stats1262.2,stats1263.1,stats1263.2,stats1264.1,stats1264.2,stats1265.1,stats1265.2,stats1266.1,stats1266.2,stats1267.1,stats1267.2,stats1268.1,stats1268.2,stats1269.1,stats1269.2,stats1270.1,stats1270.2,stats1271.1,stats1271.2,stats1272.1,stats1272.2,stats1273.1,stats1273.2,stats1274.1,stats1274.2,stats1275.1,stats1275.2,stats1276.1,stats1276.2,stats1277.1,stats1277.2,stats1278.1,stats1278.2,stats1279.1,stats1279.2]
  decide
end IngressCheckedRows
