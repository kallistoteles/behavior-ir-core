import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData19
import PathFrameInstructionMatrixData20
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1250 : actualRows1250=WordField.canonicalRows actualModulus 1250 (.badd 440 560) := by core033_kernel_decide
theorem stats1250 : actualRows1250.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1250=5388 := by core033_kernel_decide
theorem rows1251 : actualRows1251=WordField.canonicalRows actualModulus 1251 (.bnot 1250) := by core033_kernel_decide
theorem stats1251 : actualRows1251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1251=6276 := by core033_kernel_decide
theorem rows1252 : actualRows1252=WordField.canonicalRows actualModulus 1252 (.band 1249 1251) := by core033_kernel_decide
theorem stats1252 : actualRows1252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1252=5124 := by core033_kernel_decide
theorem rows1253 : actualRows1253=WordField.canonicalRows actualModulus 1253 (.bxor 1248 1252) := by core033_kernel_decide
theorem stats1253 : actualRows1253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1253=7428 := by core033_kernel_decide
theorem rows1254 : actualRows1254=WordField.canonicalRows actualModulus 1254 (.shr 1253 31) := by core033_kernel_decide
theorem stats1254 : actualRows1254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1254=2892 := by core033_kernel_decide
theorem rows1255 : actualRows1255=WordField.canonicalRows actualModulus 1255 (.badd 1247 1254) := by core033_kernel_decide
theorem stats1255 : actualRows1255.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1255=5388 := by core033_kernel_decide
theorem rows1256 : actualRows1256=WordField.canonicalRows actualModulus 1256 (.bxor 1255 618) := by core033_kernel_decide
theorem stats1256 : actualRows1256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1256=7428 := by core033_kernel_decide
theorem rows1257 : actualRows1257=WordField.canonicalRows actualModulus 1257 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1257 : actualRows1257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1257=2820 := by core033_kernel_decide
theorem rows1258 : actualRows1258=WordField.canonicalRows actualModulus 1258 (.bnot 1257) := by core033_kernel_decide
theorem stats1258 : actualRows1258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1258=6276 := by core033_kernel_decide
theorem rows1259 : actualRows1259=WordField.canonicalRows actualModulus 1259 (.badd 1256 1258) := by core033_kernel_decide
theorem stats1259 : actualRows1259.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1259=5388 := by core033_kernel_decide
theorem rows1260 : actualRows1260=WordField.canonicalRows actualModulus 1260 (.bnot 1259) := by core033_kernel_decide
theorem stats1260 : actualRows1260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1260=6276 := by core033_kernel_decide
theorem rows1261 : actualRows1261=WordField.canonicalRows actualModulus 1261 (.band 1246 1260) := by core033_kernel_decide
theorem stats1261 : actualRows1261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1261=5124 := by core033_kernel_decide
theorem rows1262 : actualRows1262=WordField.canonicalRows actualModulus 1262 (.bxor 1233 1261) := by core033_kernel_decide
theorem stats1262 : actualRows1262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1262=7428 := by core033_kernel_decide
theorem rows1263 : actualRows1263=WordField.canonicalRows actualModulus 1263 (.shr 1262 31) := by core033_kernel_decide
theorem stats1263 : actualRows1263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1263=2892 := by core033_kernel_decide
theorem rows1264 : actualRows1264=WordField.canonicalRows actualModulus 1264 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1264 : actualRows1264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1264=2892 := by core033_kernel_decide
theorem rows1265 : actualRows1265=WordField.canonicalRows actualModulus 1265 (.bxor 1263 1264) := by core033_kernel_decide
theorem stats1265 : actualRows1265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1265=7428 := by core033_kernel_decide
theorem rows1266 : actualRows1266=WordField.canonicalRows actualModulus 1266 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1266 : actualRows1266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1266=2820 := by core033_kernel_decide
theorem rows1267 : actualRows1267=WordField.canonicalRows actualModulus 1267 (.bnot 1266) := by core033_kernel_decide
theorem stats1267 : actualRows1267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1267=6276 := by core033_kernel_decide
theorem rows1268 : actualRows1268=WordField.canonicalRows actualModulus 1268 (.band 450 1267) := by core033_kernel_decide
theorem stats1268 : actualRows1268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1268=5124 := by core033_kernel_decide
theorem rows1269 : actualRows1269=WordField.canonicalRows actualModulus 1269 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1269 : actualRows1269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1269=2820 := by core033_kernel_decide
theorem rows1270 : actualRows1270=WordField.canonicalRows actualModulus 1270 (.bnot 1269) := by core033_kernel_decide
theorem stats1270 : actualRows1270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1270=6276 := by core033_kernel_decide
theorem rows1271 : actualRows1271=WordField.canonicalRows actualModulus 1271 (.bxor 450 1270) := by core033_kernel_decide
theorem stats1271 : actualRows1271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1271=7428 := by core033_kernel_decide
theorem rows1272 : actualRows1272=WordField.canonicalRows actualModulus 1272 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1272 : actualRows1272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1272=2820 := by core033_kernel_decide
theorem rows1273 : actualRows1273=WordField.canonicalRows actualModulus 1273 (.bnot 1272) := by core033_kernel_decide
theorem stats1273 : actualRows1273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1273=6276 := by core033_kernel_decide
theorem rows1274 : actualRows1274=WordField.canonicalRows actualModulus 1274 (.badd 450 1273) := by core033_kernel_decide
theorem stats1274 : actualRows1274.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1274=5388 := by core033_kernel_decide
theorem rows1275 : actualRows1275=WordField.canonicalRows actualModulus 1275 (.bnot 1274) := by core033_kernel_decide
theorem stats1275 : actualRows1275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1275=6276 := by core033_kernel_decide
theorem rows1276 : actualRows1276=WordField.canonicalRows actualModulus 1276 (.band 1271 1275) := by core033_kernel_decide
theorem stats1276 : actualRows1276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1276=5124 := by core033_kernel_decide
theorem rows1277 : actualRows1277=WordField.canonicalRows actualModulus 1277 (.bxor 1268 1276) := by core033_kernel_decide
theorem stats1277 : actualRows1277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1277=7428 := by core033_kernel_decide
theorem rows1278 : actualRows1278=WordField.canonicalRows actualModulus 1278 (.shr 1277 31) := by core033_kernel_decide
theorem stats1278 : actualRows1278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1278=2892 := by core033_kernel_decide
theorem rows1279 : actualRows1279=WordField.canonicalRows actualModulus 1279 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1279 : actualRows1279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1279=2892 := by core033_kernel_decide
theorem rows1280 : actualRows1280=WordField.canonicalRows actualModulus 1280 (.bxor 1278 1279) := by core033_kernel_decide
theorem stats1280 : actualRows1280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1280=7428 := by core033_kernel_decide
theorem rows1281 : actualRows1281=WordField.canonicalRows actualModulus 1281 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1281 : actualRows1281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1281=2892 := by core033_kernel_decide
theorem rows1282 : actualRows1282=WordField.canonicalRows actualModulus 1282 (.bnot 1281) := by core033_kernel_decide
theorem stats1282 : actualRows1282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1282=6276 := by core033_kernel_decide
theorem rows1283 : actualRows1283=WordField.canonicalRows actualModulus 1283 (.band 440 1282) := by core033_kernel_decide
theorem stats1283 : actualRows1283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1283=5124 := by core033_kernel_decide
theorem rows1284 : actualRows1284=WordField.canonicalRows actualModulus 1284 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1284 : actualRows1284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1284=2892 := by core033_kernel_decide
theorem rows1285 : actualRows1285=WordField.canonicalRows actualModulus 1285 (.bnot 1284) := by core033_kernel_decide
theorem stats1285 : actualRows1285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1285=6276 := by core033_kernel_decide
theorem rows1286 : actualRows1286=WordField.canonicalRows actualModulus 1286 (.bxor 440 1285) := by core033_kernel_decide
theorem stats1286 : actualRows1286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1286=7428 := by core033_kernel_decide
theorem rows1287 : actualRows1287=WordField.canonicalRows actualModulus 1287 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1287 : actualRows1287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1287=2892 := by core033_kernel_decide
theorem rows1288 : actualRows1288=WordField.canonicalRows actualModulus 1288 (.bnot 1287) := by core033_kernel_decide
theorem stats1288 : actualRows1288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1288=6276 := by core033_kernel_decide
theorem rows1289 : actualRows1289=WordField.canonicalRows actualModulus 1289 (.badd 440 1288) := by core033_kernel_decide
theorem stats1289 : actualRows1289.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1289=5388 := by core033_kernel_decide
theorem rows1290 : actualRows1290=WordField.canonicalRows actualModulus 1290 (.bnot 1289) := by core033_kernel_decide
theorem stats1290 : actualRows1290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1290=6276 := by core033_kernel_decide
theorem rows1291 : actualRows1291=WordField.canonicalRows actualModulus 1291 (.band 1286 1290) := by core033_kernel_decide
theorem stats1291 : actualRows1291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1291=5124 := by core033_kernel_decide
theorem rows1292 : actualRows1292=WordField.canonicalRows actualModulus 1292 (.bxor 1283 1291) := by core033_kernel_decide
theorem stats1292 : actualRows1292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1292=7428 := by core033_kernel_decide
theorem rows1293 : actualRows1293=WordField.canonicalRows actualModulus 1293 (.shr 1292 31) := by core033_kernel_decide
theorem stats1293 : actualRows1293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1293=2892 := by core033_kernel_decide
theorem rows1294 : actualRows1294=WordField.canonicalRows actualModulus 1294 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1294 : actualRows1294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1294=2892 := by core033_kernel_decide
theorem rows1295 : actualRows1295=WordField.canonicalRows actualModulus 1295 (.bxor 1293 1294) := by core033_kernel_decide
theorem stats1295 : actualRows1295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1295=7428 := by core033_kernel_decide
theorem rows1296 : actualRows1296=WordField.canonicalRows actualModulus 1296 (.band 1280 1295) := by core033_kernel_decide
theorem stats1296 : actualRows1296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1296=5124 := by core033_kernel_decide
theorem rows1297 : actualRows1297=WordField.canonicalRows actualModulus 1297 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1297 : actualRows1297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1297=2820 := by core033_kernel_decide
theorem rows1298 : actualRows1298=WordField.canonicalRows actualModulus 1298 (.bnot 1297) := by core033_kernel_decide
theorem stats1298 : actualRows1298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1298=6276 := by core033_kernel_decide
theorem rows1299 : actualRows1299=WordField.canonicalRows actualModulus 1299 (.band 570 1298) := by core033_kernel_decide
theorem stats1299 : actualRows1299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1299=5124 := by core033_kernel_decide
theorem rows1300 : actualRows1300=WordField.canonicalRows actualModulus 1300 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1300 : actualRows1300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1300=2820 := by core033_kernel_decide
theorem rows1301 : actualRows1301=WordField.canonicalRows actualModulus 1301 (.bnot 1300) := by core033_kernel_decide
theorem stats1301 : actualRows1301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1301=6276 := by core033_kernel_decide
theorem rows1302 : actualRows1302=WordField.canonicalRows actualModulus 1302 (.bxor 570 1301) := by core033_kernel_decide
theorem stats1302 : actualRows1302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1302=7428 := by core033_kernel_decide
theorem rows1303 : actualRows1303=WordField.canonicalRows actualModulus 1303 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1303 : actualRows1303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1303=2820 := by core033_kernel_decide
theorem rows1304 : actualRows1304=WordField.canonicalRows actualModulus 1304 (.bnot 1303) := by core033_kernel_decide
theorem stats1304 : actualRows1304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1304=6276 := by core033_kernel_decide
theorem rows1305 : actualRows1305=WordField.canonicalRows actualModulus 1305 (.badd 570 1304) := by core033_kernel_decide
theorem stats1305 : actualRows1305.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1305=5388 := by core033_kernel_decide
theorem rows1306 : actualRows1306=WordField.canonicalRows actualModulus 1306 (.bnot 1305) := by core033_kernel_decide
theorem stats1306 : actualRows1306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1306=6276 := by core033_kernel_decide
theorem rows1307 : actualRows1307=WordField.canonicalRows actualModulus 1307 (.band 1302 1306) := by core033_kernel_decide
theorem stats1307 : actualRows1307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1307=5124 := by core033_kernel_decide
theorem rows1308 : actualRows1308=WordField.canonicalRows actualModulus 1308 (.bxor 1299 1307) := by core033_kernel_decide
theorem stats1308 : actualRows1308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1308=7428 := by core033_kernel_decide
theorem rows1309 : actualRows1309=WordField.canonicalRows actualModulus 1309 (.shr 1308 31) := by core033_kernel_decide
theorem stats1309 : actualRows1309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1309=2892 := by core033_kernel_decide
theorem rows1310 : actualRows1310=WordField.canonicalRows actualModulus 1310 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1310 : actualRows1310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1310=2892 := by core033_kernel_decide
theorem rows1311 : actualRows1311=WordField.canonicalRows actualModulus 1311 (.bxor 1309 1310) := by core033_kernel_decide
theorem stats1311 : actualRows1311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1311=7428 := by core033_kernel_decide
theorem rows1312 : actualRows1312=WordField.canonicalRows actualModulus 1312 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1312 : actualRows1312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1312=2892 := by core033_kernel_decide
theorem rows1313 : actualRows1313=WordField.canonicalRows actualModulus 1313 (.bnot 1312) := by core033_kernel_decide
theorem stats1313 : actualRows1313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1313=6276 := by core033_kernel_decide
def partRows19 : List R1CS.Row := actualRows1250++actualRows1251++actualRows1252++actualRows1253++actualRows1254++actualRows1255++actualRows1256++actualRows1257++actualRows1258++actualRows1259++actualRows1260++actualRows1261++actualRows1262++actualRows1263++actualRows1264++actualRows1265++actualRows1266++actualRows1267++actualRows1268++actualRows1269++actualRows1270++actualRows1271++actualRows1272++actualRows1273++actualRows1274++actualRows1275++actualRows1276++actualRows1277++actualRows1278++actualRows1279++actualRows1280++actualRows1281++actualRows1282++actualRows1283++actualRows1284++actualRows1285++actualRows1286++actualRows1287++actualRows1288++actualRows1289++actualRows1290++actualRows1291++actualRows1292++actualRows1293++actualRows1294++actualRows1295++actualRows1296++actualRows1297++actualRows1298++actualRows1299++actualRows1300++actualRows1301++actualRows1302++actualRows1303++actualRows1304++actualRows1305++actualRows1306++actualRows1307++actualRows1308++actualRows1309++actualRows1310++actualRows1311++actualRows1312++actualRows1313
def partOps19 : List WordIR.Op := [.badd 440 560,.bnot 1250,.band 1249 1251,.bxor 1248 1252,.shr 1253 31,.badd 1247 1254,.bxor 1255 618,.literal (BitVec.ofNat 32 0),.bnot 1257,.badd 1256 1258,.bnot 1259,.band 1246 1260,.bxor 1233 1261,.shr 1262 31,.literal (BitVec.ofNat 32 1),.bxor 1263 1264,.literal (BitVec.ofNat 32 0),.bnot 1266,.band 450 1267,.literal (BitVec.ofNat 32 0),.bnot 1269,.bxor 450 1270,.literal (BitVec.ofNat 32 0),.bnot 1272,.badd 450 1273,.bnot 1274,.band 1271 1275,.bxor 1268 1276,.shr 1277 31,.literal (BitVec.ofNat 32 1),.bxor 1278 1279,.literal (BitVec.ofNat 32 1048576),.bnot 1281,.band 440 1282,.literal (BitVec.ofNat 32 1048576),.bnot 1284,.bxor 440 1285,.literal (BitVec.ofNat 32 1048576),.bnot 1287,.badd 440 1288,.bnot 1289,.band 1286 1290,.bxor 1283 1291,.shr 1292 31,.literal (BitVec.ofNat 32 1),.bxor 1293 1294,.band 1280 1295,.literal (BitVec.ofNat 32 0),.bnot 1297,.band 570 1298,.literal (BitVec.ofNat 32 0),.bnot 1300,.bxor 570 1301,.literal (BitVec.ofNat 32 0),.bnot 1303,.badd 570 1304,.bnot 1305,.band 1302 1306,.bxor 1299 1307,.shr 1308 31,.literal (BitVec.ofNat 32 1),.bxor 1309 1310,.literal (BitVec.ofNat 32 1048576),.bnot 1312]
theorem partExact19 : partRows19=WordField.rows actualModulus 1250 partOps19 := by
  simp only [partRows19,partOps19,WordField.rows,rows1250,rows1251,rows1252,rows1253,rows1254,rows1255,rows1256,rows1257,rows1258,rows1259,rows1260,rows1261,rows1262,rows1263,rows1264,rows1265,rows1266,rows1267,rows1268,rows1269,rows1270,rows1271,rows1272,rows1273,rows1274,rows1275,rows1276,rows1277,rows1278,rows1279,rows1280,rows1281,rows1282,rows1283,rows1284,rows1285,rows1286,rows1287,rows1288,rows1289,rows1290,rows1291,rows1292,rows1293,rows1294,rows1295,rows1296,rows1297,rows1298,rows1299,rows1300,rows1301,rows1302,rows1303,rows1304,rows1305,rows1306,rows1307,rows1308,rows1309,rows1310,rows1311,rows1312,rows1313,List.append_assoc,List.append_nil]
theorem partLength19 : partOps19.length=64 := by decide
theorem partStats19 : partRows19.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows19=332760 := by
  simp only [partRows19,List.length_append,MatrixRowBlocks.rows_weight_append,stats1250.1,stats1250.2,stats1251.1,stats1251.2,stats1252.1,stats1252.2,stats1253.1,stats1253.2,stats1254.1,stats1254.2,stats1255.1,stats1255.2,stats1256.1,stats1256.2,stats1257.1,stats1257.2,stats1258.1,stats1258.2,stats1259.1,stats1259.2,stats1260.1,stats1260.2,stats1261.1,stats1261.2,stats1262.1,stats1262.2,stats1263.1,stats1263.2,stats1264.1,stats1264.2,stats1265.1,stats1265.2,stats1266.1,stats1266.2,stats1267.1,stats1267.2,stats1268.1,stats1268.2,stats1269.1,stats1269.2,stats1270.1,stats1270.2,stats1271.1,stats1271.2,stats1272.1,stats1272.2,stats1273.1,stats1273.2,stats1274.1,stats1274.2,stats1275.1,stats1275.2,stats1276.1,stats1276.2,stats1277.1,stats1277.2,stats1278.1,stats1278.2,stats1279.1,stats1279.2,stats1280.1,stats1280.2,stats1281.1,stats1281.2,stats1282.1,stats1282.2,stats1283.1,stats1283.2,stats1284.1,stats1284.2,stats1285.1,stats1285.2,stats1286.1,stats1286.2,stats1287.1,stats1287.2,stats1288.1,stats1288.2,stats1289.1,stats1289.2,stats1290.1,stats1290.2,stats1291.1,stats1291.2,stats1292.1,stats1292.2,stats1293.1,stats1293.2,stats1294.1,stats1294.2,stats1295.1,stats1295.2,stats1296.1,stats1296.2,stats1297.1,stats1297.2,stats1298.1,stats1298.2,stats1299.1,stats1299.2,stats1300.1,stats1300.2,stats1301.1,stats1301.2,stats1302.1,stats1302.2,stats1303.1,stats1303.2,stats1304.1,stats1304.2,stats1305.1,stats1305.2,stats1306.1,stats1306.2,stats1307.1,stats1307.2,stats1308.1,stats1308.2,stats1309.1,stats1309.2,stats1310.1,stats1310.2,stats1311.1,stats1311.2,stats1312.1,stats1312.2,stats1313.1,stats1313.2]
  decide
end PathFrameCheckedRows
