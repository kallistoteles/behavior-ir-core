import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData19
import ActualMatrixData20
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1240 : actualRows1240=WordField.canonicalRows actualModulus 1240 (.badd 1228 1239) := by core033_kernel_decide
theorem stats1240 : actualRows1240.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1240=5388 := by core033_kernel_decide
theorem rows1241 : actualRows1241=WordField.canonicalRows actualModulus 1241 (.badd 1132 1228) := by core033_kernel_decide
theorem stats1241 : actualRows1241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1241=5388 := by core033_kernel_decide
theorem rows1242 : actualRows1242=WordField.canonicalRows actualModulus 1242 (.rotr 1241 6) := by core033_kernel_decide
theorem stats1242 : actualRows1242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1242=5124 := by core033_kernel_decide
theorem rows1243 : actualRows1243=WordField.canonicalRows actualModulus 1243 (.rotr 1241 11) := by core033_kernel_decide
theorem stats1243 : actualRows1243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1243=5124 := by core033_kernel_decide
theorem rows1244 : actualRows1244=WordField.canonicalRows actualModulus 1244 (.bxor 1242 1243) := by core033_kernel_decide
theorem stats1244 : actualRows1244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1244=7428 := by core033_kernel_decide
theorem rows1245 : actualRows1245=WordField.canonicalRows actualModulus 1245 (.rotr 1241 25) := by core033_kernel_decide
theorem stats1245 : actualRows1245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1245=5124 := by core033_kernel_decide
theorem rows1246 : actualRows1246=WordField.canonicalRows actualModulus 1246 (.bxor 1244 1245) := by core033_kernel_decide
theorem stats1246 : actualRows1246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1246=7428 := by core033_kernel_decide
theorem rows1247 : actualRows1247=WordField.canonicalRows actualModulus 1247 (.badd 1160 1246) := by core033_kernel_decide
theorem stats1247 : actualRows1247.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1247=5388 := by core033_kernel_decide
theorem rows1248 : actualRows1248=WordField.canonicalRows actualModulus 1248 (.band 1241 1214) := by core033_kernel_decide
theorem stats1248 : actualRows1248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1248=5124 := by core033_kernel_decide
theorem rows1249 : actualRows1249=WordField.canonicalRows actualModulus 1249 (.bnot 1241) := by core033_kernel_decide
theorem stats1249 : actualRows1249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1249=6276 := by core033_kernel_decide
theorem rows1250 : actualRows1250=WordField.canonicalRows actualModulus 1250 (.band 1249 1187) := by core033_kernel_decide
theorem stats1250 : actualRows1250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1250=5124 := by core033_kernel_decide
theorem rows1251 : actualRows1251=WordField.canonicalRows actualModulus 1251 (.bxor 1248 1250) := by core033_kernel_decide
theorem stats1251 : actualRows1251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1251=7428 := by core033_kernel_decide
theorem rows1252 : actualRows1252=WordField.canonicalRows actualModulus 1252 (.badd 1247 1251) := by core033_kernel_decide
theorem stats1252 : actualRows1252.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1252=5388 := by core033_kernel_decide
theorem rows1253 : actualRows1253=WordField.canonicalRows actualModulus 1253 (.literal (BitVec.ofNat 32 1555081692)) := by core033_kernel_decide
theorem stats1253 : actualRows1253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1253=3972 := by core033_kernel_decide
theorem rows1254 : actualRows1254=WordField.canonicalRows actualModulus 1254 (.badd 1252 1253) := by core033_kernel_decide
theorem stats1254 : actualRows1254.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1254=5388 := by core033_kernel_decide
theorem rows1255 : actualRows1255=WordField.canonicalRows actualModulus 1255 (.badd 1254 114) := by core033_kernel_decide
theorem stats1255 : actualRows1255.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1255=5388 := by core033_kernel_decide
theorem rows1256 : actualRows1256=WordField.canonicalRows actualModulus 1256 (.rotr 1240 2) := by core033_kernel_decide
theorem stats1256 : actualRows1256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1256=5124 := by core033_kernel_decide
theorem rows1257 : actualRows1257=WordField.canonicalRows actualModulus 1257 (.rotr 1240 13) := by core033_kernel_decide
theorem stats1257 : actualRows1257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1257=5124 := by core033_kernel_decide
theorem rows1258 : actualRows1258=WordField.canonicalRows actualModulus 1258 (.bxor 1256 1257) := by core033_kernel_decide
theorem stats1258 : actualRows1258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1258=7428 := by core033_kernel_decide
theorem rows1259 : actualRows1259=WordField.canonicalRows actualModulus 1259 (.rotr 1240 22) := by core033_kernel_decide
theorem stats1259 : actualRows1259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1259=5124 := by core033_kernel_decide
theorem rows1260 : actualRows1260=WordField.canonicalRows actualModulus 1260 (.bxor 1258 1259) := by core033_kernel_decide
theorem stats1260 : actualRows1260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1260=7428 := by core033_kernel_decide
theorem rows1261 : actualRows1261=WordField.canonicalRows actualModulus 1261 (.band 1240 1213) := by core033_kernel_decide
theorem stats1261 : actualRows1261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1261=5124 := by core033_kernel_decide
theorem rows1262 : actualRows1262=WordField.canonicalRows actualModulus 1262 (.band 1240 1186) := by core033_kernel_decide
theorem stats1262 : actualRows1262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1262=5124 := by core033_kernel_decide
theorem rows1263 : actualRows1263=WordField.canonicalRows actualModulus 1263 (.bxor 1261 1262) := by core033_kernel_decide
theorem stats1263 : actualRows1263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1263=7428 := by core033_kernel_decide
theorem rows1264 : actualRows1264=WordField.canonicalRows actualModulus 1264 (.band 1213 1186) := by core033_kernel_decide
theorem stats1264 : actualRows1264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1264=5124 := by core033_kernel_decide
theorem rows1265 : actualRows1265=WordField.canonicalRows actualModulus 1265 (.bxor 1263 1264) := by core033_kernel_decide
theorem stats1265 : actualRows1265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1265=7428 := by core033_kernel_decide
theorem rows1266 : actualRows1266=WordField.canonicalRows actualModulus 1266 (.badd 1260 1265) := by core033_kernel_decide
theorem stats1266 : actualRows1266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1266=5388 := by core033_kernel_decide
theorem rows1267 : actualRows1267=WordField.canonicalRows actualModulus 1267 (.badd 1255 1266) := by core033_kernel_decide
theorem stats1267 : actualRows1267.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1267=5388 := by core033_kernel_decide
theorem rows1268 : actualRows1268=WordField.canonicalRows actualModulus 1268 (.badd 1159 1255) := by core033_kernel_decide
theorem stats1268 : actualRows1268.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1268=5388 := by core033_kernel_decide
theorem rows1269 : actualRows1269=WordField.canonicalRows actualModulus 1269 (.rotr 1268 6) := by core033_kernel_decide
theorem stats1269 : actualRows1269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1269=5124 := by core033_kernel_decide
theorem rows1270 : actualRows1270=WordField.canonicalRows actualModulus 1270 (.rotr 1268 11) := by core033_kernel_decide
theorem stats1270 : actualRows1270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1270=5124 := by core033_kernel_decide
theorem rows1271 : actualRows1271=WordField.canonicalRows actualModulus 1271 (.bxor 1269 1270) := by core033_kernel_decide
theorem stats1271 : actualRows1271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1271=7428 := by core033_kernel_decide
theorem rows1272 : actualRows1272=WordField.canonicalRows actualModulus 1272 (.rotr 1268 25) := by core033_kernel_decide
theorem stats1272 : actualRows1272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1272=5124 := by core033_kernel_decide
theorem rows1273 : actualRows1273=WordField.canonicalRows actualModulus 1273 (.bxor 1271 1272) := by core033_kernel_decide
theorem stats1273 : actualRows1273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1273=7428 := by core033_kernel_decide
theorem rows1274 : actualRows1274=WordField.canonicalRows actualModulus 1274 (.badd 1187 1273) := by core033_kernel_decide
theorem stats1274 : actualRows1274.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1274=5388 := by core033_kernel_decide
theorem rows1275 : actualRows1275=WordField.canonicalRows actualModulus 1275 (.band 1268 1241) := by core033_kernel_decide
theorem stats1275 : actualRows1275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1275=5124 := by core033_kernel_decide
theorem rows1276 : actualRows1276=WordField.canonicalRows actualModulus 1276 (.bnot 1268) := by core033_kernel_decide
theorem stats1276 : actualRows1276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1276=6276 := by core033_kernel_decide
theorem rows1277 : actualRows1277=WordField.canonicalRows actualModulus 1277 (.band 1276 1214) := by core033_kernel_decide
theorem stats1277 : actualRows1277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1277=5124 := by core033_kernel_decide
theorem rows1278 : actualRows1278=WordField.canonicalRows actualModulus 1278 (.bxor 1275 1277) := by core033_kernel_decide
theorem stats1278 : actualRows1278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1278=7428 := by core033_kernel_decide
theorem rows1279 : actualRows1279=WordField.canonicalRows actualModulus 1279 (.badd 1274 1278) := by core033_kernel_decide
theorem stats1279 : actualRows1279.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1279=5388 := by core033_kernel_decide
theorem rows1280 : actualRows1280=WordField.canonicalRows actualModulus 1280 (.literal (BitVec.ofNat 32 1996064986)) := by core033_kernel_decide
theorem stats1280 : actualRows1280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1280=4116 := by core033_kernel_decide
theorem rows1281 : actualRows1281=WordField.canonicalRows actualModulus 1281 (.badd 1279 1280) := by core033_kernel_decide
theorem stats1281 : actualRows1281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1281=5388 := by core033_kernel_decide
theorem rows1282 : actualRows1282=WordField.canonicalRows actualModulus 1282 (.badd 1281 127) := by core033_kernel_decide
theorem stats1282 : actualRows1282.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1282=5388 := by core033_kernel_decide
theorem rows1283 : actualRows1283=WordField.canonicalRows actualModulus 1283 (.rotr 1267 2) := by core033_kernel_decide
theorem stats1283 : actualRows1283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1283=5124 := by core033_kernel_decide
theorem rows1284 : actualRows1284=WordField.canonicalRows actualModulus 1284 (.rotr 1267 13) := by core033_kernel_decide
theorem stats1284 : actualRows1284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1284=5124 := by core033_kernel_decide
theorem rows1285 : actualRows1285=WordField.canonicalRows actualModulus 1285 (.bxor 1283 1284) := by core033_kernel_decide
theorem stats1285 : actualRows1285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1285=7428 := by core033_kernel_decide
theorem rows1286 : actualRows1286=WordField.canonicalRows actualModulus 1286 (.rotr 1267 22) := by core033_kernel_decide
theorem stats1286 : actualRows1286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1286=5124 := by core033_kernel_decide
theorem rows1287 : actualRows1287=WordField.canonicalRows actualModulus 1287 (.bxor 1285 1286) := by core033_kernel_decide
theorem stats1287 : actualRows1287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1287=7428 := by core033_kernel_decide
theorem rows1288 : actualRows1288=WordField.canonicalRows actualModulus 1288 (.band 1267 1240) := by core033_kernel_decide
theorem stats1288 : actualRows1288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1288=5124 := by core033_kernel_decide
theorem rows1289 : actualRows1289=WordField.canonicalRows actualModulus 1289 (.band 1267 1213) := by core033_kernel_decide
theorem stats1289 : actualRows1289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1289=5124 := by core033_kernel_decide
theorem rows1290 : actualRows1290=WordField.canonicalRows actualModulus 1290 (.bxor 1288 1289) := by core033_kernel_decide
theorem stats1290 : actualRows1290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1290=7428 := by core033_kernel_decide
theorem rows1291 : actualRows1291=WordField.canonicalRows actualModulus 1291 (.band 1240 1213) := by core033_kernel_decide
theorem stats1291 : actualRows1291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1291=5124 := by core033_kernel_decide
theorem rows1292 : actualRows1292=WordField.canonicalRows actualModulus 1292 (.bxor 1290 1291) := by core033_kernel_decide
theorem stats1292 : actualRows1292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1292=7428 := by core033_kernel_decide
theorem rows1293 : actualRows1293=WordField.canonicalRows actualModulus 1293 (.badd 1287 1292) := by core033_kernel_decide
theorem stats1293 : actualRows1293.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1293=5388 := by core033_kernel_decide
theorem rows1294 : actualRows1294=WordField.canonicalRows actualModulus 1294 (.badd 1282 1293) := by core033_kernel_decide
theorem stats1294 : actualRows1294.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1294=5388 := by core033_kernel_decide
theorem rows1295 : actualRows1295=WordField.canonicalRows actualModulus 1295 (.badd 1186 1282) := by core033_kernel_decide
theorem stats1295 : actualRows1295.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1295=5388 := by core033_kernel_decide
theorem rows1296 : actualRows1296=WordField.canonicalRows actualModulus 1296 (.rotr 1295 6) := by core033_kernel_decide
theorem stats1296 : actualRows1296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1296=5124 := by core033_kernel_decide
theorem rows1297 : actualRows1297=WordField.canonicalRows actualModulus 1297 (.rotr 1295 11) := by core033_kernel_decide
theorem stats1297 : actualRows1297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1297=5124 := by core033_kernel_decide
theorem rows1298 : actualRows1298=WordField.canonicalRows actualModulus 1298 (.bxor 1296 1297) := by core033_kernel_decide
theorem stats1298 : actualRows1298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1298=7428 := by core033_kernel_decide
theorem rows1299 : actualRows1299=WordField.canonicalRows actualModulus 1299 (.rotr 1295 25) := by core033_kernel_decide
theorem stats1299 : actualRows1299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1299=5124 := by core033_kernel_decide
theorem rows1300 : actualRows1300=WordField.canonicalRows actualModulus 1300 (.bxor 1298 1299) := by core033_kernel_decide
theorem stats1300 : actualRows1300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1300=7428 := by core033_kernel_decide
theorem rows1301 : actualRows1301=WordField.canonicalRows actualModulus 1301 (.badd 1214 1300) := by core033_kernel_decide
theorem stats1301 : actualRows1301.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1301=5388 := by core033_kernel_decide
theorem rows1302 : actualRows1302=WordField.canonicalRows actualModulus 1302 (.band 1295 1268) := by core033_kernel_decide
theorem stats1302 : actualRows1302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1302=5124 := by core033_kernel_decide
theorem rows1303 : actualRows1303=WordField.canonicalRows actualModulus 1303 (.bnot 1295) := by core033_kernel_decide
theorem stats1303 : actualRows1303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1303=6276 := by core033_kernel_decide
def partRows19 : List R1CS.Row := actualRows1240++actualRows1241++actualRows1242++actualRows1243++actualRows1244++actualRows1245++actualRows1246++actualRows1247++actualRows1248++actualRows1249++actualRows1250++actualRows1251++actualRows1252++actualRows1253++actualRows1254++actualRows1255++actualRows1256++actualRows1257++actualRows1258++actualRows1259++actualRows1260++actualRows1261++actualRows1262++actualRows1263++actualRows1264++actualRows1265++actualRows1266++actualRows1267++actualRows1268++actualRows1269++actualRows1270++actualRows1271++actualRows1272++actualRows1273++actualRows1274++actualRows1275++actualRows1276++actualRows1277++actualRows1278++actualRows1279++actualRows1280++actualRows1281++actualRows1282++actualRows1283++actualRows1284++actualRows1285++actualRows1286++actualRows1287++actualRows1288++actualRows1289++actualRows1290++actualRows1291++actualRows1292++actualRows1293++actualRows1294++actualRows1295++actualRows1296++actualRows1297++actualRows1298++actualRows1299++actualRows1300++actualRows1301++actualRows1302++actualRows1303
def partOps19 : List WordIR.Op := [.badd 1228 1239,.badd 1132 1228,.rotr 1241 6,.rotr 1241 11,.bxor 1242 1243,.rotr 1241 25,.bxor 1244 1245,.badd 1160 1246,.band 1241 1214,.bnot 1241,.band 1249 1187,.bxor 1248 1250,.badd 1247 1251,.literal (BitVec.ofNat 32 1555081692),.badd 1252 1253,.badd 1254 114,.rotr 1240 2,.rotr 1240 13,.bxor 1256 1257,.rotr 1240 22,.bxor 1258 1259,.band 1240 1213,.band 1240 1186,.bxor 1261 1262,.band 1213 1186,.bxor 1263 1264,.badd 1260 1265,.badd 1255 1266,.badd 1159 1255,.rotr 1268 6,.rotr 1268 11,.bxor 1269 1270,.rotr 1268 25,.bxor 1271 1272,.badd 1187 1273,.band 1268 1241,.bnot 1268,.band 1276 1214,.bxor 1275 1277,.badd 1274 1278,.literal (BitVec.ofNat 32 1996064986),.badd 1279 1280,.badd 1281 127,.rotr 1267 2,.rotr 1267 13,.bxor 1283 1284,.rotr 1267 22,.bxor 1285 1286,.band 1267 1240,.band 1267 1213,.bxor 1288 1289,.band 1240 1213,.bxor 1290 1291,.badd 1287 1292,.badd 1282 1293,.badd 1186 1282,.rotr 1295 6,.rotr 1295 11,.bxor 1296 1297,.rotr 1295 25,.bxor 1298 1299,.badd 1214 1300,.band 1295 1268,.bnot 1295]
theorem partRowsExact19 : partRows19=WordField.rows actualModulus 1240 partOps19 := by
  simp only [partRows19,partOps19,WordField.rows,rows1240,rows1241,rows1242,rows1243,rows1244,rows1245,rows1246,rows1247,rows1248,rows1249,rows1250,rows1251,rows1252,rows1253,rows1254,rows1255,rows1256,rows1257,rows1258,rows1259,rows1260,rows1261,rows1262,rows1263,rows1264,rows1265,rows1266,rows1267,rows1268,rows1269,rows1270,rows1271,rows1272,rows1273,rows1274,rows1275,rows1276,rows1277,rows1278,rows1279,rows1280,rows1281,rows1282,rows1283,rows1284,rows1285,rows1286,rows1287,rows1288,rows1289,rows1290,rows1291,rows1292,rows1293,rows1294,rows1295,rows1296,rows1297,rows1298,rows1299,rows1300,rows1301,rows1302,rows1303,List.append_assoc,List.append_nil]
theorem partOpsLength19 : partOps19.length=64 := by decide
theorem partStats19 : partRows19.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows19=370584 := by
  simp only [partRows19,List.length_append,MatrixRowBlocks.rows_weight_append,stats1240.1,stats1240.2,stats1241.1,stats1241.2,stats1242.1,stats1242.2,stats1243.1,stats1243.2,stats1244.1,stats1244.2,stats1245.1,stats1245.2,stats1246.1,stats1246.2,stats1247.1,stats1247.2,stats1248.1,stats1248.2,stats1249.1,stats1249.2,stats1250.1,stats1250.2,stats1251.1,stats1251.2,stats1252.1,stats1252.2,stats1253.1,stats1253.2,stats1254.1,stats1254.2,stats1255.1,stats1255.2,stats1256.1,stats1256.2,stats1257.1,stats1257.2,stats1258.1,stats1258.2,stats1259.1,stats1259.2,stats1260.1,stats1260.2,stats1261.1,stats1261.2,stats1262.1,stats1262.2,stats1263.1,stats1263.2,stats1264.1,stats1264.2,stats1265.1,stats1265.2,stats1266.1,stats1266.2,stats1267.1,stats1267.2,stats1268.1,stats1268.2,stats1269.1,stats1269.2,stats1270.1,stats1270.2,stats1271.1,stats1271.2,stats1272.1,stats1272.2,stats1273.1,stats1273.2,stats1274.1,stats1274.2,stats1275.1,stats1275.2,stats1276.1,stats1276.2,stats1277.1,stats1277.2,stats1278.1,stats1278.2,stats1279.1,stats1279.2,stats1280.1,stats1280.2,stats1281.1,stats1281.2,stats1282.1,stats1282.2,stats1283.1,stats1283.2,stats1284.1,stats1284.2,stats1285.1,stats1285.2,stats1286.1,stats1286.2,stats1287.1,stats1287.2,stats1288.1,stats1288.2,stats1289.1,stats1289.2,stats1290.1,stats1290.2,stats1291.1,stats1291.2,stats1292.1,stats1292.2,stats1293.1,stats1293.2,stats1294.1,stats1294.2,stats1295.1,stats1295.2,stats1296.1,stats1296.2,stats1297.1,stats1297.2,stats1298.1,stats1298.2,stats1299.1,stats1299.2,stats1300.1,stats1300.2,stats1301.1,stats1301.2,stats1302.1,stats1302.2,stats1303.1,stats1303.2]
  decide
end ActualSHAMatrixRows
