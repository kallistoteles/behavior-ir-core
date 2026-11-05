import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData19
import SharedFrameInstructionMatrixData20
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1259 : actualRows1259=WordField.canonicalRows actualModulus 1259 (.shr 776 8) := by core033_kernel_decide
theorem stats1259 : actualRows1259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1259=4548 := by core033_kernel_decide
theorem rows1260 : actualRows1260=WordField.canonicalRows actualModulus 1260 (.band 1259 50) := by core033_kernel_decide
theorem stats1260 : actualRows1260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1260=5124 := by core033_kernel_decide
theorem rows1261 : actualRows1261=WordField.canonicalRows actualModulus 1261 (.bxor 1259 50) := by core033_kernel_decide
theorem stats1261 : actualRows1261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1261=7428 := by core033_kernel_decide
theorem rows1262 : actualRows1262=WordField.canonicalRows actualModulus 1262 (.badd 1259 50) := by core033_kernel_decide
theorem stats1262 : actualRows1262.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1262=5388 := by core033_kernel_decide
theorem rows1263 : actualRows1263=WordField.canonicalRows actualModulus 1263 (.bnot 1262) := by core033_kernel_decide
theorem stats1263 : actualRows1263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1263=6276 := by core033_kernel_decide
theorem rows1264 : actualRows1264=WordField.canonicalRows actualModulus 1264 (.band 1261 1263) := by core033_kernel_decide
theorem stats1264 : actualRows1264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1264=5124 := by core033_kernel_decide
theorem rows1265 : actualRows1265=WordField.canonicalRows actualModulus 1265 (.bxor 1260 1264) := by core033_kernel_decide
theorem stats1265 : actualRows1265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1265=7428 := by core033_kernel_decide
theorem rows1266 : actualRows1266=WordField.canonicalRows actualModulus 1266 (.shr 1265 31) := by core033_kernel_decide
theorem stats1266 : actualRows1266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1266=2892 := by core033_kernel_decide
theorem rows1267 : actualRows1267=WordField.canonicalRows actualModulus 1267 (.bxor 1266 43) := by core033_kernel_decide
theorem stats1267 : actualRows1267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1267=7428 := by core033_kernel_decide
theorem rows1268 : actualRows1268=WordField.canonicalRows actualModulus 1268 (.shr 779 8) := by core033_kernel_decide
theorem stats1268 : actualRows1268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1268=4548 := by core033_kernel_decide
theorem rows1269 : actualRows1269=WordField.canonicalRows actualModulus 1269 (.band 1268 50) := by core033_kernel_decide
theorem stats1269 : actualRows1269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1269=5124 := by core033_kernel_decide
theorem rows1270 : actualRows1270=WordField.canonicalRows actualModulus 1270 (.bxor 1268 50) := by core033_kernel_decide
theorem stats1270 : actualRows1270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1270=7428 := by core033_kernel_decide
theorem rows1271 : actualRows1271=WordField.canonicalRows actualModulus 1271 (.badd 1268 50) := by core033_kernel_decide
theorem stats1271 : actualRows1271.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1271=5388 := by core033_kernel_decide
theorem rows1272 : actualRows1272=WordField.canonicalRows actualModulus 1272 (.bnot 1271) := by core033_kernel_decide
theorem stats1272 : actualRows1272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1272=6276 := by core033_kernel_decide
theorem rows1273 : actualRows1273=WordField.canonicalRows actualModulus 1273 (.band 1270 1272) := by core033_kernel_decide
theorem stats1273 : actualRows1273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1273=5124 := by core033_kernel_decide
theorem rows1274 : actualRows1274=WordField.canonicalRows actualModulus 1274 (.bxor 1269 1273) := by core033_kernel_decide
theorem stats1274 : actualRows1274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1274=7428 := by core033_kernel_decide
theorem rows1275 : actualRows1275=WordField.canonicalRows actualModulus 1275 (.shr 1274 31) := by core033_kernel_decide
theorem stats1275 : actualRows1275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1275=2892 := by core033_kernel_decide
theorem rows1276 : actualRows1276=WordField.canonicalRows actualModulus 1276 (.bxor 1275 43) := by core033_kernel_decide
theorem stats1276 : actualRows1276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1276=7428 := by core033_kernel_decide
theorem rows1277 : actualRows1277=WordField.canonicalRows actualModulus 1277 (.shr 782 8) := by core033_kernel_decide
theorem stats1277 : actualRows1277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1277=4548 := by core033_kernel_decide
theorem rows1278 : actualRows1278=WordField.canonicalRows actualModulus 1278 (.band 1277 50) := by core033_kernel_decide
theorem stats1278 : actualRows1278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1278=5124 := by core033_kernel_decide
theorem rows1279 : actualRows1279=WordField.canonicalRows actualModulus 1279 (.bxor 1277 50) := by core033_kernel_decide
theorem stats1279 : actualRows1279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1279=7428 := by core033_kernel_decide
theorem rows1280 : actualRows1280=WordField.canonicalRows actualModulus 1280 (.badd 1277 50) := by core033_kernel_decide
theorem stats1280 : actualRows1280.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1280=5388 := by core033_kernel_decide
theorem rows1281 : actualRows1281=WordField.canonicalRows actualModulus 1281 (.bnot 1280) := by core033_kernel_decide
theorem stats1281 : actualRows1281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1281=6276 := by core033_kernel_decide
theorem rows1282 : actualRows1282=WordField.canonicalRows actualModulus 1282 (.band 1279 1281) := by core033_kernel_decide
theorem stats1282 : actualRows1282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1282=5124 := by core033_kernel_decide
theorem rows1283 : actualRows1283=WordField.canonicalRows actualModulus 1283 (.bxor 1278 1282) := by core033_kernel_decide
theorem stats1283 : actualRows1283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1283=7428 := by core033_kernel_decide
theorem rows1284 : actualRows1284=WordField.canonicalRows actualModulus 1284 (.shr 1283 31) := by core033_kernel_decide
theorem stats1284 : actualRows1284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1284=2892 := by core033_kernel_decide
theorem rows1285 : actualRows1285=WordField.canonicalRows actualModulus 1285 (.bxor 1284 43) := by core033_kernel_decide
theorem stats1285 : actualRows1285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1285=7428 := by core033_kernel_decide
theorem rows1286 : actualRows1286=WordField.canonicalRows actualModulus 1286 (.shr 785 8) := by core033_kernel_decide
theorem stats1286 : actualRows1286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1286=4548 := by core033_kernel_decide
theorem rows1287 : actualRows1287=WordField.canonicalRows actualModulus 1287 (.band 1286 50) := by core033_kernel_decide
theorem stats1287 : actualRows1287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1287=5124 := by core033_kernel_decide
theorem rows1288 : actualRows1288=WordField.canonicalRows actualModulus 1288 (.bxor 1286 50) := by core033_kernel_decide
theorem stats1288 : actualRows1288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1288=7428 := by core033_kernel_decide
theorem rows1289 : actualRows1289=WordField.canonicalRows actualModulus 1289 (.badd 1286 50) := by core033_kernel_decide
theorem stats1289 : actualRows1289.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1289=5388 := by core033_kernel_decide
theorem rows1290 : actualRows1290=WordField.canonicalRows actualModulus 1290 (.bnot 1289) := by core033_kernel_decide
theorem stats1290 : actualRows1290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1290=6276 := by core033_kernel_decide
theorem rows1291 : actualRows1291=WordField.canonicalRows actualModulus 1291 (.band 1288 1290) := by core033_kernel_decide
theorem stats1291 : actualRows1291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1291=5124 := by core033_kernel_decide
theorem rows1292 : actualRows1292=WordField.canonicalRows actualModulus 1292 (.bxor 1287 1291) := by core033_kernel_decide
theorem stats1292 : actualRows1292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1292=7428 := by core033_kernel_decide
theorem rows1293 : actualRows1293=WordField.canonicalRows actualModulus 1293 (.shr 1292 31) := by core033_kernel_decide
theorem stats1293 : actualRows1293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1293=2892 := by core033_kernel_decide
theorem rows1294 : actualRows1294=WordField.canonicalRows actualModulus 1294 (.bxor 1293 43) := by core033_kernel_decide
theorem stats1294 : actualRows1294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1294=7428 := by core033_kernel_decide
theorem rows1295 : actualRows1295=WordField.canonicalRows actualModulus 1295 (.shr 788 8) := by core033_kernel_decide
theorem stats1295 : actualRows1295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1295=4548 := by core033_kernel_decide
theorem rows1296 : actualRows1296=WordField.canonicalRows actualModulus 1296 (.band 1295 50) := by core033_kernel_decide
theorem stats1296 : actualRows1296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1296=5124 := by core033_kernel_decide
theorem rows1297 : actualRows1297=WordField.canonicalRows actualModulus 1297 (.bxor 1295 50) := by core033_kernel_decide
theorem stats1297 : actualRows1297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1297=7428 := by core033_kernel_decide
theorem rows1298 : actualRows1298=WordField.canonicalRows actualModulus 1298 (.badd 1295 50) := by core033_kernel_decide
theorem stats1298 : actualRows1298.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1298=5388 := by core033_kernel_decide
theorem rows1299 : actualRows1299=WordField.canonicalRows actualModulus 1299 (.bnot 1298) := by core033_kernel_decide
theorem stats1299 : actualRows1299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1299=6276 := by core033_kernel_decide
theorem rows1300 : actualRows1300=WordField.canonicalRows actualModulus 1300 (.band 1297 1299) := by core033_kernel_decide
theorem stats1300 : actualRows1300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1300=5124 := by core033_kernel_decide
theorem rows1301 : actualRows1301=WordField.canonicalRows actualModulus 1301 (.bxor 1296 1300) := by core033_kernel_decide
theorem stats1301 : actualRows1301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1301=7428 := by core033_kernel_decide
theorem rows1302 : actualRows1302=WordField.canonicalRows actualModulus 1302 (.shr 1301 31) := by core033_kernel_decide
theorem stats1302 : actualRows1302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1302=2892 := by core033_kernel_decide
theorem rows1303 : actualRows1303=WordField.canonicalRows actualModulus 1303 (.bxor 1302 43) := by core033_kernel_decide
theorem stats1303 : actualRows1303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1303=7428 := by core033_kernel_decide
theorem rows1304 : actualRows1304=WordField.canonicalRows actualModulus 1304 (.shr 791 8) := by core033_kernel_decide
theorem stats1304 : actualRows1304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1304=4548 := by core033_kernel_decide
theorem rows1305 : actualRows1305=WordField.canonicalRows actualModulus 1305 (.band 1304 50) := by core033_kernel_decide
theorem stats1305 : actualRows1305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1305=5124 := by core033_kernel_decide
theorem rows1306 : actualRows1306=WordField.canonicalRows actualModulus 1306 (.bxor 1304 50) := by core033_kernel_decide
theorem stats1306 : actualRows1306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1306=7428 := by core033_kernel_decide
theorem rows1307 : actualRows1307=WordField.canonicalRows actualModulus 1307 (.badd 1304 50) := by core033_kernel_decide
theorem stats1307 : actualRows1307.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1307=5388 := by core033_kernel_decide
theorem rows1308 : actualRows1308=WordField.canonicalRows actualModulus 1308 (.bnot 1307) := by core033_kernel_decide
theorem stats1308 : actualRows1308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1308=6276 := by core033_kernel_decide
theorem rows1309 : actualRows1309=WordField.canonicalRows actualModulus 1309 (.band 1306 1308) := by core033_kernel_decide
theorem stats1309 : actualRows1309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1309=5124 := by core033_kernel_decide
theorem rows1310 : actualRows1310=WordField.canonicalRows actualModulus 1310 (.bxor 1305 1309) := by core033_kernel_decide
theorem stats1310 : actualRows1310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1310=7428 := by core033_kernel_decide
theorem rows1311 : actualRows1311=WordField.canonicalRows actualModulus 1311 (.shr 1310 31) := by core033_kernel_decide
theorem stats1311 : actualRows1311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1311=2892 := by core033_kernel_decide
theorem rows1312 : actualRows1312=WordField.canonicalRows actualModulus 1312 (.bxor 1311 43) := by core033_kernel_decide
theorem stats1312 : actualRows1312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1312=7428 := by core033_kernel_decide
theorem rows1313 : actualRows1313=WordField.canonicalRows actualModulus 1313 (.shr 794 8) := by core033_kernel_decide
theorem stats1313 : actualRows1313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1313=4548 := by core033_kernel_decide
theorem rows1314 : actualRows1314=WordField.canonicalRows actualModulus 1314 (.band 1313 50) := by core033_kernel_decide
theorem stats1314 : actualRows1314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1314=5124 := by core033_kernel_decide
theorem rows1315 : actualRows1315=WordField.canonicalRows actualModulus 1315 (.bxor 1313 50) := by core033_kernel_decide
theorem stats1315 : actualRows1315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1315=7428 := by core033_kernel_decide
theorem rows1316 : actualRows1316=WordField.canonicalRows actualModulus 1316 (.badd 1313 50) := by core033_kernel_decide
theorem stats1316 : actualRows1316.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1316=5388 := by core033_kernel_decide
theorem rows1317 : actualRows1317=WordField.canonicalRows actualModulus 1317 (.bnot 1316) := by core033_kernel_decide
theorem stats1317 : actualRows1317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1317=6276 := by core033_kernel_decide
theorem rows1318 : actualRows1318=WordField.canonicalRows actualModulus 1318 (.band 1315 1317) := by core033_kernel_decide
theorem stats1318 : actualRows1318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1318=5124 := by core033_kernel_decide
theorem rows1319 : actualRows1319=WordField.canonicalRows actualModulus 1319 (.bxor 1314 1318) := by core033_kernel_decide
theorem stats1319 : actualRows1319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1319=7428 := by core033_kernel_decide
theorem rows1320 : actualRows1320=WordField.canonicalRows actualModulus 1320 (.shr 1319 31) := by core033_kernel_decide
theorem stats1320 : actualRows1320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1320=2892 := by core033_kernel_decide
theorem rows1321 : actualRows1321=WordField.canonicalRows actualModulus 1321 (.bxor 1320 43) := by core033_kernel_decide
theorem stats1321 : actualRows1321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1321=7428 := by core033_kernel_decide
theorem rows1322 : actualRows1322=WordField.canonicalRows actualModulus 1322 (.shr 797 8) := by core033_kernel_decide
theorem stats1322 : actualRows1322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1322=4548 := by core033_kernel_decide
def partRows19 : List R1CS.Row := actualRows1259++actualRows1260++actualRows1261++actualRows1262++actualRows1263++actualRows1264++actualRows1265++actualRows1266++actualRows1267++actualRows1268++actualRows1269++actualRows1270++actualRows1271++actualRows1272++actualRows1273++actualRows1274++actualRows1275++actualRows1276++actualRows1277++actualRows1278++actualRows1279++actualRows1280++actualRows1281++actualRows1282++actualRows1283++actualRows1284++actualRows1285++actualRows1286++actualRows1287++actualRows1288++actualRows1289++actualRows1290++actualRows1291++actualRows1292++actualRows1293++actualRows1294++actualRows1295++actualRows1296++actualRows1297++actualRows1298++actualRows1299++actualRows1300++actualRows1301++actualRows1302++actualRows1303++actualRows1304++actualRows1305++actualRows1306++actualRows1307++actualRows1308++actualRows1309++actualRows1310++actualRows1311++actualRows1312++actualRows1313++actualRows1314++actualRows1315++actualRows1316++actualRows1317++actualRows1318++actualRows1319++actualRows1320++actualRows1321++actualRows1322
def partOps19 : List WordIR.Op := [.shr 776 8,.band 1259 50,.bxor 1259 50,.badd 1259 50,.bnot 1262,.band 1261 1263,.bxor 1260 1264,.shr 1265 31,.bxor 1266 43,.shr 779 8,.band 1268 50,.bxor 1268 50,.badd 1268 50,.bnot 1271,.band 1270 1272,.bxor 1269 1273,.shr 1274 31,.bxor 1275 43,.shr 782 8,.band 1277 50,.bxor 1277 50,.badd 1277 50,.bnot 1280,.band 1279 1281,.bxor 1278 1282,.shr 1283 31,.bxor 1284 43,.shr 785 8,.band 1286 50,.bxor 1286 50,.badd 1286 50,.bnot 1289,.band 1288 1290,.bxor 1287 1291,.shr 1292 31,.bxor 1293 43,.shr 788 8,.band 1295 50,.bxor 1295 50,.badd 1295 50,.bnot 1298,.band 1297 1299,.bxor 1296 1300,.shr 1301 31,.bxor 1302 43,.shr 791 8,.band 1304 50,.bxor 1304 50,.badd 1304 50,.bnot 1307,.band 1306 1308,.bxor 1305 1309,.shr 1310 31,.bxor 1311 43,.shr 794 8,.band 1313 50,.bxor 1313 50,.badd 1313 50,.bnot 1316,.band 1315 1317,.bxor 1314 1318,.shr 1319 31,.bxor 1320 43,.shr 797 8]
theorem partExact19 : partRows19=WordField.rows actualModulus 1259 partOps19 := by
  simp only [partRows19,partOps19,WordField.rows,rows1259,rows1260,rows1261,rows1262,rows1263,rows1264,rows1265,rows1266,rows1267,rows1268,rows1269,rows1270,rows1271,rows1272,rows1273,rows1274,rows1275,rows1276,rows1277,rows1278,rows1279,rows1280,rows1281,rows1282,rows1283,rows1284,rows1285,rows1286,rows1287,rows1288,rows1289,rows1290,rows1291,rows1292,rows1293,rows1294,rows1295,rows1296,rows1297,rows1298,rows1299,rows1300,rows1301,rows1302,rows1303,rows1304,rows1305,rows1306,rows1307,rows1308,rows1309,rows1310,rows1311,rows1312,rows1313,rows1314,rows1315,rows1316,rows1317,rows1318,rows1319,rows1320,rows1321,rows1322,List.append_assoc,List.append_nil]
theorem partLength19 : partOps19.length=64 := by decide
theorem partStats19 : partRows19.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows19=366000 := by
  simp only [partRows19,List.length_append,MatrixRowBlocks.rows_weight_append,stats1259.1,stats1259.2,stats1260.1,stats1260.2,stats1261.1,stats1261.2,stats1262.1,stats1262.2,stats1263.1,stats1263.2,stats1264.1,stats1264.2,stats1265.1,stats1265.2,stats1266.1,stats1266.2,stats1267.1,stats1267.2,stats1268.1,stats1268.2,stats1269.1,stats1269.2,stats1270.1,stats1270.2,stats1271.1,stats1271.2,stats1272.1,stats1272.2,stats1273.1,stats1273.2,stats1274.1,stats1274.2,stats1275.1,stats1275.2,stats1276.1,stats1276.2,stats1277.1,stats1277.2,stats1278.1,stats1278.2,stats1279.1,stats1279.2,stats1280.1,stats1280.2,stats1281.1,stats1281.2,stats1282.1,stats1282.2,stats1283.1,stats1283.2,stats1284.1,stats1284.2,stats1285.1,stats1285.2,stats1286.1,stats1286.2,stats1287.1,stats1287.2,stats1288.1,stats1288.2,stats1289.1,stats1289.2,stats1290.1,stats1290.2,stats1291.1,stats1291.2,stats1292.1,stats1292.2,stats1293.1,stats1293.2,stats1294.1,stats1294.2,stats1295.1,stats1295.2,stats1296.1,stats1296.2,stats1297.1,stats1297.2,stats1298.1,stats1298.2,stats1299.1,stats1299.2,stats1300.1,stats1300.2,stats1301.1,stats1301.2,stats1302.1,stats1302.2,stats1303.1,stats1303.2,stats1304.1,stats1304.2,stats1305.1,stats1305.2,stats1306.1,stats1306.2,stats1307.1,stats1307.2,stats1308.1,stats1308.2,stats1309.1,stats1309.2,stats1310.1,stats1310.2,stats1311.1,stats1311.2,stats1312.1,stats1312.2,stats1313.1,stats1313.2,stats1314.1,stats1314.2,stats1315.1,stats1315.2,stats1316.1,stats1316.2,stats1317.1,stats1317.2,stats1318.1,stats1318.2,stats1319.1,stats1319.2,stats1320.1,stats1320.2,stats1321.1,stats1321.2,stats1322.1,stats1322.2]
  decide
end SharedFrameCheckedRows
