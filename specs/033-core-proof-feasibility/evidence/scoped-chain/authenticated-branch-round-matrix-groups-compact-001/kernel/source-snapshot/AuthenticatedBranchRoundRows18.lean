import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData19
import AuthenticatedBranchRoundInstructionMatrixData20
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1270 : actualRows1270=WordField.canonicalRows actualModulus 1270 (.bnot 1269) := by core033_kernel_decide
theorem stats1270 : actualRows1270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1270=6276 := by core033_kernel_decide
theorem rows1271 : actualRows1271=WordField.canonicalRows actualModulus 1271 (.band 1268 1270) := by core033_kernel_decide
theorem stats1271 : actualRows1271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1271=5124 := by core033_kernel_decide
theorem rows1272 : actualRows1272=WordField.canonicalRows actualModulus 1272 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1272 : actualRows1272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1272=2892 := by core033_kernel_decide
theorem rows1273 : actualRows1273=WordField.canonicalRows actualModulus 1273 (.bxor 693 1272) := by core033_kernel_decide
theorem stats1273 : actualRows1273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1273=7428 := by core033_kernel_decide
theorem rows1274 : actualRows1274=WordField.canonicalRows actualModulus 1274 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1274 : actualRows1274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1274=2820 := by core033_kernel_decide
theorem rows1275 : actualRows1275=WordField.canonicalRows actualModulus 1275 (.bnot 1274) := by core033_kernel_decide
theorem stats1275 : actualRows1275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1275=6276 := by core033_kernel_decide
theorem rows1276 : actualRows1276=WordField.canonicalRows actualModulus 1276 (.bxor 1273 1275) := by core033_kernel_decide
theorem stats1276 : actualRows1276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1276=7428 := by core033_kernel_decide
theorem rows1277 : actualRows1277=WordField.canonicalRows actualModulus 1277 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1277 : actualRows1277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1277=2892 := by core033_kernel_decide
theorem rows1278 : actualRows1278=WordField.canonicalRows actualModulus 1278 (.bxor 693 1277) := by core033_kernel_decide
theorem stats1278 : actualRows1278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1278=7428 := by core033_kernel_decide
theorem rows1279 : actualRows1279=WordField.canonicalRows actualModulus 1279 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1279 : actualRows1279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1279=2820 := by core033_kernel_decide
theorem rows1280 : actualRows1280=WordField.canonicalRows actualModulus 1280 (.bnot 1279) := by core033_kernel_decide
theorem stats1280 : actualRows1280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1280=6276 := by core033_kernel_decide
theorem rows1281 : actualRows1281=WordField.canonicalRows actualModulus 1281 (.badd 1278 1280) := by core033_kernel_decide
theorem stats1281 : actualRows1281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1281=5388 := by core033_kernel_decide
theorem rows1282 : actualRows1282=WordField.canonicalRows actualModulus 1282 (.bnot 1281) := by core033_kernel_decide
theorem stats1282 : actualRows1282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1282=6276 := by core033_kernel_decide
theorem rows1283 : actualRows1283=WordField.canonicalRows actualModulus 1283 (.band 1276 1282) := by core033_kernel_decide
theorem stats1283 : actualRows1283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1283=5124 := by core033_kernel_decide
theorem rows1284 : actualRows1284=WordField.canonicalRows actualModulus 1284 (.bxor 1271 1283) := by core033_kernel_decide
theorem stats1284 : actualRows1284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1284=7428 := by core033_kernel_decide
theorem rows1285 : actualRows1285=WordField.canonicalRows actualModulus 1285 (.shr 1284 31) := by core033_kernel_decide
theorem stats1285 : actualRows1285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1285=2892 := by core033_kernel_decide
theorem rows1286 : actualRows1286=WordField.canonicalRows actualModulus 1286 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1286 : actualRows1286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1286=2892 := by core033_kernel_decide
theorem rows1287 : actualRows1287=WordField.canonicalRows actualModulus 1287 (.bxor 1285 1286) := by core033_kernel_decide
theorem stats1287 : actualRows1287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1287=7428 := by core033_kernel_decide
theorem rows1288 : actualRows1288=WordField.canonicalRows actualModulus 1288 (.bxor 1266 1287) := by core033_kernel_decide
theorem stats1288 : actualRows1288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1288=7428 := by core033_kernel_decide
theorem rows1289 : actualRows1289=WordField.canonicalRows actualModulus 1289 (.bnot 1288) := by core033_kernel_decide
theorem stats1289 : actualRows1289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1289=6276 := by core033_kernel_decide
theorem rows1290 : actualRows1290=WordField.canonicalRows actualModulus 1290 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1290 : actualRows1290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1290=2892 := by core033_kernel_decide
theorem rows1291 : actualRows1291=WordField.canonicalRows actualModulus 1291 (.badd 1289 1290) := by core033_kernel_decide
theorem stats1291 : actualRows1291.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1291=5388 := by core033_kernel_decide
theorem rows1292 : actualRows1292=WordField.canonicalRows actualModulus 1292 (.band 1291 693) := by core033_kernel_decide
theorem stats1292 : actualRows1292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1292=5124 := by core033_kernel_decide
theorem rows1293 : actualRows1293=WordField.canonicalRows actualModulus 1293 (.bnot 1288) := by core033_kernel_decide
theorem stats1293 : actualRows1293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1293=6276 := by core033_kernel_decide
theorem rows1294 : actualRows1294=WordField.canonicalRows actualModulus 1294 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1294 : actualRows1294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1294=2892 := by core033_kernel_decide
theorem rows1295 : actualRows1295=WordField.canonicalRows actualModulus 1295 (.badd 1293 1294) := by core033_kernel_decide
theorem stats1295 : actualRows1295.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1295=5388 := by core033_kernel_decide
theorem rows1296 : actualRows1296=WordField.canonicalRows actualModulus 1296 (.bnot 1295) := by core033_kernel_decide
theorem stats1296 : actualRows1296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1296=6276 := by core033_kernel_decide
theorem rows1297 : actualRows1297=WordField.canonicalRows actualModulus 1297 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1297 : actualRows1297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1297=2892 := by core033_kernel_decide
theorem rows1298 : actualRows1298=WordField.canonicalRows actualModulus 1298 (.band 1296 1297) := by core033_kernel_decide
theorem stats1298 : actualRows1298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1298=5124 := by core033_kernel_decide
theorem rows1299 : actualRows1299=WordField.canonicalRows actualModulus 1299 (.bxor 1292 1298) := by core033_kernel_decide
theorem stats1299 : actualRows1299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1299=7428 := by core033_kernel_decide
theorem rows1300 : actualRows1300=WordField.canonicalRows actualModulus 1300 (.bnot 1288) := by core033_kernel_decide
theorem stats1300 : actualRows1300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1300=6276 := by core033_kernel_decide
theorem rows1301 : actualRows1301=WordField.canonicalRows actualModulus 1301 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1301 : actualRows1301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1301=2892 := by core033_kernel_decide
theorem rows1302 : actualRows1302=WordField.canonicalRows actualModulus 1302 (.badd 1300 1301) := by core033_kernel_decide
theorem stats1302 : actualRows1302.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1302=5388 := by core033_kernel_decide
theorem rows1303 : actualRows1303=WordField.canonicalRows actualModulus 1303 (.band 1302 703) := by core033_kernel_decide
theorem stats1303 : actualRows1303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1303=5124 := by core033_kernel_decide
theorem rows1304 : actualRows1304=WordField.canonicalRows actualModulus 1304 (.bnot 1288) := by core033_kernel_decide
theorem stats1304 : actualRows1304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1304=6276 := by core033_kernel_decide
theorem rows1305 : actualRows1305=WordField.canonicalRows actualModulus 1305 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1305 : actualRows1305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1305=2892 := by core033_kernel_decide
theorem rows1306 : actualRows1306=WordField.canonicalRows actualModulus 1306 (.badd 1304 1305) := by core033_kernel_decide
theorem stats1306 : actualRows1306.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1306=5388 := by core033_kernel_decide
theorem rows1307 : actualRows1307=WordField.canonicalRows actualModulus 1307 (.bnot 1306) := by core033_kernel_decide
theorem stats1307 : actualRows1307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1307=6276 := by core033_kernel_decide
theorem rows1308 : actualRows1308=WordField.canonicalRows actualModulus 1308 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1308 : actualRows1308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1308=2892 := by core033_kernel_decide
theorem rows1309 : actualRows1309=WordField.canonicalRows actualModulus 1309 (.band 1307 1308) := by core033_kernel_decide
theorem stats1309 : actualRows1309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1309=5124 := by core033_kernel_decide
theorem rows1310 : actualRows1310=WordField.canonicalRows actualModulus 1310 (.bxor 1303 1309) := by core033_kernel_decide
theorem stats1310 : actualRows1310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1310=7428 := by core033_kernel_decide
theorem rows1311 : actualRows1311=WordField.canonicalRows actualModulus 1311 (.bnot 1288) := by core033_kernel_decide
theorem stats1311 : actualRows1311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1311=6276 := by core033_kernel_decide
theorem rows1312 : actualRows1312=WordField.canonicalRows actualModulus 1312 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1312 : actualRows1312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1312=2892 := by core033_kernel_decide
theorem rows1313 : actualRows1313=WordField.canonicalRows actualModulus 1313 (.badd 1311 1312) := by core033_kernel_decide
theorem stats1313 : actualRows1313.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1313=5388 := by core033_kernel_decide
theorem rows1314 : actualRows1314=WordField.canonicalRows actualModulus 1314 (.band 1313 715) := by core033_kernel_decide
theorem stats1314 : actualRows1314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1314=5124 := by core033_kernel_decide
theorem rows1315 : actualRows1315=WordField.canonicalRows actualModulus 1315 (.bnot 1288) := by core033_kernel_decide
theorem stats1315 : actualRows1315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1315=6276 := by core033_kernel_decide
theorem rows1316 : actualRows1316=WordField.canonicalRows actualModulus 1316 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1316 : actualRows1316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1316=2892 := by core033_kernel_decide
theorem rows1317 : actualRows1317=WordField.canonicalRows actualModulus 1317 (.badd 1315 1316) := by core033_kernel_decide
theorem stats1317 : actualRows1317.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1317=5388 := by core033_kernel_decide
theorem rows1318 : actualRows1318=WordField.canonicalRows actualModulus 1318 (.bnot 1317) := by core033_kernel_decide
theorem stats1318 : actualRows1318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1318=6276 := by core033_kernel_decide
theorem rows1319 : actualRows1319=WordField.canonicalRows actualModulus 1319 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1319 : actualRows1319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1319=2820 := by core033_kernel_decide
theorem rows1320 : actualRows1320=WordField.canonicalRows actualModulus 1320 (.band 1318 1319) := by core033_kernel_decide
theorem stats1320 : actualRows1320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1320=5124 := by core033_kernel_decide
theorem rows1321 : actualRows1321=WordField.canonicalRows actualModulus 1321 (.bxor 1314 1320) := by core033_kernel_decide
theorem stats1321 : actualRows1321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1321=7428 := by core033_kernel_decide
theorem rows1322 : actualRows1322=WordField.canonicalRows actualModulus 1322 (.bnot 1288) := by core033_kernel_decide
theorem stats1322 : actualRows1322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1322=6276 := by core033_kernel_decide
theorem rows1323 : actualRows1323=WordField.canonicalRows actualModulus 1323 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1323 : actualRows1323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1323=2892 := by core033_kernel_decide
theorem rows1324 : actualRows1324=WordField.canonicalRows actualModulus 1324 (.badd 1322 1323) := by core033_kernel_decide
theorem stats1324 : actualRows1324.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1324=5388 := by core033_kernel_decide
theorem rows1325 : actualRows1325=WordField.canonicalRows actualModulus 1325 (.band 1324 726) := by core033_kernel_decide
theorem stats1325 : actualRows1325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1325=5124 := by core033_kernel_decide
theorem rows1326 : actualRows1326=WordField.canonicalRows actualModulus 1326 (.bnot 1288) := by core033_kernel_decide
theorem stats1326 : actualRows1326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1326=6276 := by core033_kernel_decide
theorem rows1327 : actualRows1327=WordField.canonicalRows actualModulus 1327 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1327 : actualRows1327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1327=2892 := by core033_kernel_decide
theorem rows1328 : actualRows1328=WordField.canonicalRows actualModulus 1328 (.badd 1326 1327) := by core033_kernel_decide
theorem stats1328 : actualRows1328.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1328=5388 := by core033_kernel_decide
theorem rows1329 : actualRows1329=WordField.canonicalRows actualModulus 1329 (.bnot 1328) := by core033_kernel_decide
theorem stats1329 : actualRows1329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1329=6276 := by core033_kernel_decide
theorem rows1330 : actualRows1330=WordField.canonicalRows actualModulus 1330 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1330 : actualRows1330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1330=2820 := by core033_kernel_decide
theorem rows1331 : actualRows1331=WordField.canonicalRows actualModulus 1331 (.band 1329 1330) := by core033_kernel_decide
theorem stats1331 : actualRows1331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1331=5124 := by core033_kernel_decide
theorem rows1332 : actualRows1332=WordField.canonicalRows actualModulus 1332 (.bxor 1325 1331) := by core033_kernel_decide
theorem stats1332 : actualRows1332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1332=7428 := by core033_kernel_decide
theorem rows1333 : actualRows1333=WordField.canonicalRows actualModulus 1333 (.bnot 1288) := by core033_kernel_decide
theorem stats1333 : actualRows1333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1333=6276 := by core033_kernel_decide
def partRows18 : List R1CS.Row := actualRows1270++actualRows1271++actualRows1272++actualRows1273++actualRows1274++actualRows1275++actualRows1276++actualRows1277++actualRows1278++actualRows1279++actualRows1280++actualRows1281++actualRows1282++actualRows1283++actualRows1284++actualRows1285++actualRows1286++actualRows1287++actualRows1288++actualRows1289++actualRows1290++actualRows1291++actualRows1292++actualRows1293++actualRows1294++actualRows1295++actualRows1296++actualRows1297++actualRows1298++actualRows1299++actualRows1300++actualRows1301++actualRows1302++actualRows1303++actualRows1304++actualRows1305++actualRows1306++actualRows1307++actualRows1308++actualRows1309++actualRows1310++actualRows1311++actualRows1312++actualRows1313++actualRows1314++actualRows1315++actualRows1316++actualRows1317++actualRows1318++actualRows1319++actualRows1320++actualRows1321++actualRows1322++actualRows1323++actualRows1324++actualRows1325++actualRows1326++actualRows1327++actualRows1328++actualRows1329++actualRows1330++actualRows1331++actualRows1332++actualRows1333
def partOps18 : List WordIR.Op := [.bnot 1269,.band 1268 1270,.literal (BitVec.ofNat 32 2),.bxor 693 1272,.literal (BitVec.ofNat 32 0),.bnot 1274,.bxor 1273 1275,.literal (BitVec.ofNat 32 2),.bxor 693 1277,.literal (BitVec.ofNat 32 0),.bnot 1279,.badd 1278 1280,.bnot 1281,.band 1276 1282,.bxor 1271 1283,.shr 1284 31,.literal (BitVec.ofNat 32 1),.bxor 1285 1286,.bxor 1266 1287,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1289 1290,.band 1291 693,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1293 1294,.bnot 1295,.literal (BitVec.ofNat 32 1),.band 1296 1297,.bxor 1292 1298,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1300 1301,.band 1302 703,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1304 1305,.bnot 1306,.literal (BitVec.ofNat 32 1),.band 1307 1308,.bxor 1303 1309,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1311 1312,.band 1313 715,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1315 1316,.bnot 1317,.literal (BitVec.ofNat 32 0),.band 1318 1319,.bxor 1314 1320,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1322 1323,.band 1324 726,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1326 1327,.bnot 1328,.literal (BitVec.ofNat 32 0),.band 1329 1330,.bxor 1325 1331,.bnot 1288]
theorem partExact18 : partRows18=WordField.rows actualModulus 1270 partOps18 := by
  simp only [partRows18,partOps18,WordField.rows,rows1270,rows1271,rows1272,rows1273,rows1274,rows1275,rows1276,rows1277,rows1278,rows1279,rows1280,rows1281,rows1282,rows1283,rows1284,rows1285,rows1286,rows1287,rows1288,rows1289,rows1290,rows1291,rows1292,rows1293,rows1294,rows1295,rows1296,rows1297,rows1298,rows1299,rows1300,rows1301,rows1302,rows1303,rows1304,rows1305,rows1306,rows1307,rows1308,rows1309,rows1310,rows1311,rows1312,rows1313,rows1314,rows1315,rows1316,rows1317,rows1318,rows1319,rows1320,rows1321,rows1322,rows1323,rows1324,rows1325,rows1326,rows1327,rows1328,rows1329,rows1330,rows1331,rows1332,rows1333,List.append_assoc,List.append_nil]
theorem partLength18 : partOps18.length=64 := by decide
theorem partStats18 : partRows18.length=2185 ∧ MatrixRowBlocks.rowsWeight partRows18=332472 := by
  simp only [partRows18,List.length_append,MatrixRowBlocks.rows_weight_append,stats1270.1,stats1270.2,stats1271.1,stats1271.2,stats1272.1,stats1272.2,stats1273.1,stats1273.2,stats1274.1,stats1274.2,stats1275.1,stats1275.2,stats1276.1,stats1276.2,stats1277.1,stats1277.2,stats1278.1,stats1278.2,stats1279.1,stats1279.2,stats1280.1,stats1280.2,stats1281.1,stats1281.2,stats1282.1,stats1282.2,stats1283.1,stats1283.2,stats1284.1,stats1284.2,stats1285.1,stats1285.2,stats1286.1,stats1286.2,stats1287.1,stats1287.2,stats1288.1,stats1288.2,stats1289.1,stats1289.2,stats1290.1,stats1290.2,stats1291.1,stats1291.2,stats1292.1,stats1292.2,stats1293.1,stats1293.2,stats1294.1,stats1294.2,stats1295.1,stats1295.2,stats1296.1,stats1296.2,stats1297.1,stats1297.2,stats1298.1,stats1298.2,stats1299.1,stats1299.2,stats1300.1,stats1300.2,stats1301.1,stats1301.2,stats1302.1,stats1302.2,stats1303.1,stats1303.2,stats1304.1,stats1304.2,stats1305.1,stats1305.2,stats1306.1,stats1306.2,stats1307.1,stats1307.2,stats1308.1,stats1308.2,stats1309.1,stats1309.2,stats1310.1,stats1310.2,stats1311.1,stats1311.2,stats1312.1,stats1312.2,stats1313.1,stats1313.2,stats1314.1,stats1314.2,stats1315.1,stats1315.2,stats1316.1,stats1316.2,stats1317.1,stats1317.2,stats1318.1,stats1318.2,stats1319.1,stats1319.2,stats1320.1,stats1320.2,stats1321.1,stats1321.2,stats1322.1,stats1322.2,stats1323.1,stats1323.2,stats1324.1,stats1324.2,stats1325.1,stats1325.2,stats1326.1,stats1326.2,stats1327.1,stats1327.2,stats1328.1,stats1328.2,stats1329.1,stats1329.2,stats1330.1,stats1330.2,stats1331.1,stats1331.2,stats1332.1,stats1332.2,stats1333.1,stats1333.2]
  decide
end AuthenticatedBranchRoundCheckedRows
