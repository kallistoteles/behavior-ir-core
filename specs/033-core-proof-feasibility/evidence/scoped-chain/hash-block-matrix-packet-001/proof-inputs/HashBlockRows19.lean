import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData20
import HashBlockInstructionMatrixData21
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1288 : actualRows1288=WordField.canonicalRows actualModulus 1288 (.shr 70 8) := by core033_kernel_decide
theorem stats1288 : actualRows1288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1288=4548 := by core033_kernel_decide
theorem rows1289 : actualRows1289=WordField.canonicalRows actualModulus 1289 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1289 : actualRows1289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1289=2820 := by core033_kernel_decide
theorem rows1290 : actualRows1290=WordField.canonicalRows actualModulus 1290 (.bnot 1289) := by core033_kernel_decide
theorem stats1290 : actualRows1290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1290=6276 := by core033_kernel_decide
theorem rows1291 : actualRows1291=WordField.canonicalRows actualModulus 1291 (.bxor 1288 1290) := by core033_kernel_decide
theorem stats1291 : actualRows1291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1291=7428 := by core033_kernel_decide
theorem rows1292 : actualRows1292=WordField.canonicalRows actualModulus 1292 (.shr 70 8) := by core033_kernel_decide
theorem stats1292 : actualRows1292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1292=4548 := by core033_kernel_decide
theorem rows1293 : actualRows1293=WordField.canonicalRows actualModulus 1293 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1293 : actualRows1293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1293=2820 := by core033_kernel_decide
theorem rows1294 : actualRows1294=WordField.canonicalRows actualModulus 1294 (.bnot 1293) := by core033_kernel_decide
theorem stats1294 : actualRows1294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1294=6276 := by core033_kernel_decide
theorem rows1295 : actualRows1295=WordField.canonicalRows actualModulus 1295 (.badd 1292 1294) := by core033_kernel_decide
theorem stats1295 : actualRows1295.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1295=5388 := by core033_kernel_decide
theorem rows1296 : actualRows1296=WordField.canonicalRows actualModulus 1296 (.bnot 1295) := by core033_kernel_decide
theorem stats1296 : actualRows1296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1296=6276 := by core033_kernel_decide
theorem rows1297 : actualRows1297=WordField.canonicalRows actualModulus 1297 (.band 1291 1296) := by core033_kernel_decide
theorem stats1297 : actualRows1297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1297=5124 := by core033_kernel_decide
theorem rows1298 : actualRows1298=WordField.canonicalRows actualModulus 1298 (.bxor 1287 1297) := by core033_kernel_decide
theorem stats1298 : actualRows1298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1298=7428 := by core033_kernel_decide
theorem rows1299 : actualRows1299=WordField.canonicalRows actualModulus 1299 (.shr 1298 31) := by core033_kernel_decide
theorem stats1299 : actualRows1299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1299=2892 := by core033_kernel_decide
theorem rows1300 : actualRows1300=WordField.canonicalRows actualModulus 1300 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1300 : actualRows1300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1300=2892 := by core033_kernel_decide
theorem rows1301 : actualRows1301=WordField.canonicalRows actualModulus 1301 (.bxor 1299 1300) := by core033_kernel_decide
theorem stats1301 : actualRows1301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1301=7428 := by core033_kernel_decide
theorem rows1302 : actualRows1302=WordField.canonicalRows actualModulus 1302 (.shr 71 8) := by core033_kernel_decide
theorem stats1302 : actualRows1302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1302=4548 := by core033_kernel_decide
theorem rows1303 : actualRows1303=WordField.canonicalRows actualModulus 1303 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1303 : actualRows1303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1303=2820 := by core033_kernel_decide
theorem rows1304 : actualRows1304=WordField.canonicalRows actualModulus 1304 (.bnot 1303) := by core033_kernel_decide
theorem stats1304 : actualRows1304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1304=6276 := by core033_kernel_decide
theorem rows1305 : actualRows1305=WordField.canonicalRows actualModulus 1305 (.band 1302 1304) := by core033_kernel_decide
theorem stats1305 : actualRows1305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1305=5124 := by core033_kernel_decide
theorem rows1306 : actualRows1306=WordField.canonicalRows actualModulus 1306 (.shr 71 8) := by core033_kernel_decide
theorem stats1306 : actualRows1306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1306=4548 := by core033_kernel_decide
theorem rows1307 : actualRows1307=WordField.canonicalRows actualModulus 1307 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1307 : actualRows1307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1307=2820 := by core033_kernel_decide
theorem rows1308 : actualRows1308=WordField.canonicalRows actualModulus 1308 (.bnot 1307) := by core033_kernel_decide
theorem stats1308 : actualRows1308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1308=6276 := by core033_kernel_decide
theorem rows1309 : actualRows1309=WordField.canonicalRows actualModulus 1309 (.bxor 1306 1308) := by core033_kernel_decide
theorem stats1309 : actualRows1309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1309=7428 := by core033_kernel_decide
theorem rows1310 : actualRows1310=WordField.canonicalRows actualModulus 1310 (.shr 71 8) := by core033_kernel_decide
theorem stats1310 : actualRows1310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1310=4548 := by core033_kernel_decide
theorem rows1311 : actualRows1311=WordField.canonicalRows actualModulus 1311 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1311 : actualRows1311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1311=2820 := by core033_kernel_decide
theorem rows1312 : actualRows1312=WordField.canonicalRows actualModulus 1312 (.bnot 1311) := by core033_kernel_decide
theorem stats1312 : actualRows1312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1312=6276 := by core033_kernel_decide
theorem rows1313 : actualRows1313=WordField.canonicalRows actualModulus 1313 (.badd 1310 1312) := by core033_kernel_decide
theorem stats1313 : actualRows1313.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1313=5388 := by core033_kernel_decide
theorem rows1314 : actualRows1314=WordField.canonicalRows actualModulus 1314 (.bnot 1313) := by core033_kernel_decide
theorem stats1314 : actualRows1314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1314=6276 := by core033_kernel_decide
theorem rows1315 : actualRows1315=WordField.canonicalRows actualModulus 1315 (.band 1309 1314) := by core033_kernel_decide
theorem stats1315 : actualRows1315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1315=5124 := by core033_kernel_decide
theorem rows1316 : actualRows1316=WordField.canonicalRows actualModulus 1316 (.bxor 1305 1315) := by core033_kernel_decide
theorem stats1316 : actualRows1316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1316=7428 := by core033_kernel_decide
theorem rows1317 : actualRows1317=WordField.canonicalRows actualModulus 1317 (.shr 1316 31) := by core033_kernel_decide
theorem stats1317 : actualRows1317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1317=2892 := by core033_kernel_decide
theorem rows1318 : actualRows1318=WordField.canonicalRows actualModulus 1318 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1318 : actualRows1318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1318=2892 := by core033_kernel_decide
theorem rows1319 : actualRows1319=WordField.canonicalRows actualModulus 1319 (.bxor 1317 1318) := by core033_kernel_decide
theorem stats1319 : actualRows1319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1319=7428 := by core033_kernel_decide
theorem rows1320 : actualRows1320=WordField.canonicalRows actualModulus 1320 (.rotr 161 17) := by core033_kernel_decide
theorem stats1320 : actualRows1320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1320=5124 := by core033_kernel_decide
theorem rows1321 : actualRows1321=WordField.canonicalRows actualModulus 1321 (.rotr 161 19) := by core033_kernel_decide
theorem stats1321 : actualRows1321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1321=5124 := by core033_kernel_decide
theorem rows1322 : actualRows1322=WordField.canonicalRows actualModulus 1322 (.bxor 1320 1321) := by core033_kernel_decide
theorem stats1322 : actualRows1322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1322=7428 := by core033_kernel_decide
theorem rows1323 : actualRows1323=WordField.canonicalRows actualModulus 1323 (.shr 161 10) := by core033_kernel_decide
theorem stats1323 : actualRows1323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1323=4404 := by core033_kernel_decide
theorem rows1324 : actualRows1324=WordField.canonicalRows actualModulus 1324 (.bxor 1322 1323) := by core033_kernel_decide
theorem stats1324 : actualRows1324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1324=7428 := by core033_kernel_decide
theorem rows1325 : actualRows1325=WordField.canonicalRows actualModulus 1325 (.badd 1324 131) := by core033_kernel_decide
theorem stats1325 : actualRows1325.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1325=5388 := by core033_kernel_decide
theorem rows1326 : actualRows1326=WordField.canonicalRows actualModulus 1326 (.rotr 83 7) := by core033_kernel_decide
theorem stats1326 : actualRows1326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1326=5124 := by core033_kernel_decide
theorem rows1327 : actualRows1327=WordField.canonicalRows actualModulus 1327 (.rotr 83 18) := by core033_kernel_decide
theorem stats1327 : actualRows1327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1327=5124 := by core033_kernel_decide
theorem rows1328 : actualRows1328=WordField.canonicalRows actualModulus 1328 (.bxor 1326 1327) := by core033_kernel_decide
theorem stats1328 : actualRows1328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1328=7428 := by core033_kernel_decide
theorem rows1329 : actualRows1329=WordField.canonicalRows actualModulus 1329 (.shr 83 3) := by core033_kernel_decide
theorem stats1329 : actualRows1329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1329=4908 := by core033_kernel_decide
theorem rows1330 : actualRows1330=WordField.canonicalRows actualModulus 1330 (.bxor 1328 1329) := by core033_kernel_decide
theorem stats1330 : actualRows1330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1330=7428 := by core033_kernel_decide
theorem rows1331 : actualRows1331=WordField.canonicalRows actualModulus 1331 (.badd 1325 1330) := by core033_kernel_decide
theorem stats1331 : actualRows1331.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1331=5388 := by core033_kernel_decide
theorem rows1332 : actualRows1332=WordField.canonicalRows actualModulus 1332 (.badd 1331 77) := by core033_kernel_decide
theorem stats1332 : actualRows1332.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1332=5388 := by core033_kernel_decide
theorem rows1333 : actualRows1333=WordField.canonicalRows actualModulus 1333 (.rotr 167 17) := by core033_kernel_decide
theorem stats1333 : actualRows1333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1333=5124 := by core033_kernel_decide
theorem rows1334 : actualRows1334=WordField.canonicalRows actualModulus 1334 (.rotr 167 19) := by core033_kernel_decide
theorem stats1334 : actualRows1334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1334=5124 := by core033_kernel_decide
theorem rows1335 : actualRows1335=WordField.canonicalRows actualModulus 1335 (.bxor 1333 1334) := by core033_kernel_decide
theorem stats1335 : actualRows1335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1335=7428 := by core033_kernel_decide
theorem rows1336 : actualRows1336=WordField.canonicalRows actualModulus 1336 (.shr 167 10) := by core033_kernel_decide
theorem stats1336 : actualRows1336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1336=4404 := by core033_kernel_decide
theorem rows1337 : actualRows1337=WordField.canonicalRows actualModulus 1337 (.bxor 1335 1336) := by core033_kernel_decide
theorem stats1337 : actualRows1337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1337=7428 := by core033_kernel_decide
theorem rows1338 : actualRows1338=WordField.canonicalRows actualModulus 1338 (.badd 1337 137) := by core033_kernel_decide
theorem stats1338 : actualRows1338.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1338=5388 := by core033_kernel_decide
theorem rows1339 : actualRows1339=WordField.canonicalRows actualModulus 1339 (.rotr 89 7) := by core033_kernel_decide
theorem stats1339 : actualRows1339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1339=5124 := by core033_kernel_decide
theorem rows1340 : actualRows1340=WordField.canonicalRows actualModulus 1340 (.rotr 89 18) := by core033_kernel_decide
theorem stats1340 : actualRows1340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1340=5124 := by core033_kernel_decide
theorem rows1341 : actualRows1341=WordField.canonicalRows actualModulus 1341 (.bxor 1339 1340) := by core033_kernel_decide
theorem stats1341 : actualRows1341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1341=7428 := by core033_kernel_decide
theorem rows1342 : actualRows1342=WordField.canonicalRows actualModulus 1342 (.shr 89 3) := by core033_kernel_decide
theorem stats1342 : actualRows1342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1342=4908 := by core033_kernel_decide
theorem rows1343 : actualRows1343=WordField.canonicalRows actualModulus 1343 (.bxor 1341 1342) := by core033_kernel_decide
theorem stats1343 : actualRows1343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1343=7428 := by core033_kernel_decide
theorem rows1344 : actualRows1344=WordField.canonicalRows actualModulus 1344 (.badd 1338 1343) := by core033_kernel_decide
theorem stats1344 : actualRows1344.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1344=5388 := by core033_kernel_decide
theorem rows1345 : actualRows1345=WordField.canonicalRows actualModulus 1345 (.badd 1344 83) := by core033_kernel_decide
theorem stats1345 : actualRows1345.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1345=5388 := by core033_kernel_decide
theorem rows1346 : actualRows1346=WordField.canonicalRows actualModulus 1346 (.rotr 1332 17) := by core033_kernel_decide
theorem stats1346 : actualRows1346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1346=5124 := by core033_kernel_decide
theorem rows1347 : actualRows1347=WordField.canonicalRows actualModulus 1347 (.rotr 1332 19) := by core033_kernel_decide
theorem stats1347 : actualRows1347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1347=5124 := by core033_kernel_decide
theorem rows1348 : actualRows1348=WordField.canonicalRows actualModulus 1348 (.bxor 1346 1347) := by core033_kernel_decide
theorem stats1348 : actualRows1348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1348=7428 := by core033_kernel_decide
theorem rows1349 : actualRows1349=WordField.canonicalRows actualModulus 1349 (.shr 1332 10) := by core033_kernel_decide
theorem stats1349 : actualRows1349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1349=4404 := by core033_kernel_decide
theorem rows1350 : actualRows1350=WordField.canonicalRows actualModulus 1350 (.bxor 1348 1349) := by core033_kernel_decide
theorem stats1350 : actualRows1350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1350=7428 := by core033_kernel_decide
theorem rows1351 : actualRows1351=WordField.canonicalRows actualModulus 1351 (.badd 1350 143) := by core033_kernel_decide
theorem stats1351 : actualRows1351.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1351=5388 := by core033_kernel_decide
def partRows19 : List R1CS.Row := actualRows1288++actualRows1289++actualRows1290++actualRows1291++actualRows1292++actualRows1293++actualRows1294++actualRows1295++actualRows1296++actualRows1297++actualRows1298++actualRows1299++actualRows1300++actualRows1301++actualRows1302++actualRows1303++actualRows1304++actualRows1305++actualRows1306++actualRows1307++actualRows1308++actualRows1309++actualRows1310++actualRows1311++actualRows1312++actualRows1313++actualRows1314++actualRows1315++actualRows1316++actualRows1317++actualRows1318++actualRows1319++actualRows1320++actualRows1321++actualRows1322++actualRows1323++actualRows1324++actualRows1325++actualRows1326++actualRows1327++actualRows1328++actualRows1329++actualRows1330++actualRows1331++actualRows1332++actualRows1333++actualRows1334++actualRows1335++actualRows1336++actualRows1337++actualRows1338++actualRows1339++actualRows1340++actualRows1341++actualRows1342++actualRows1343++actualRows1344++actualRows1345++actualRows1346++actualRows1347++actualRows1348++actualRows1349++actualRows1350++actualRows1351
def partOps19 : List WordIR.Op := [.shr 70 8,.literal (BitVec.ofNat 32 0),.bnot 1289,.bxor 1288 1290,.shr 70 8,.literal (BitVec.ofNat 32 0),.bnot 1293,.badd 1292 1294,.bnot 1295,.band 1291 1296,.bxor 1287 1297,.shr 1298 31,.literal (BitVec.ofNat 32 1),.bxor 1299 1300,.shr 71 8,.literal (BitVec.ofNat 32 0),.bnot 1303,.band 1302 1304,.shr 71 8,.literal (BitVec.ofNat 32 0),.bnot 1307,.bxor 1306 1308,.shr 71 8,.literal (BitVec.ofNat 32 0),.bnot 1311,.badd 1310 1312,.bnot 1313,.band 1309 1314,.bxor 1305 1315,.shr 1316 31,.literal (BitVec.ofNat 32 1),.bxor 1317 1318,.rotr 161 17,.rotr 161 19,.bxor 1320 1321,.shr 161 10,.bxor 1322 1323,.badd 1324 131,.rotr 83 7,.rotr 83 18,.bxor 1326 1327,.shr 83 3,.bxor 1328 1329,.badd 1325 1330,.badd 1331 77,.rotr 167 17,.rotr 167 19,.bxor 1333 1334,.shr 167 10,.bxor 1335 1336,.badd 1337 137,.rotr 89 7,.rotr 89 18,.bxor 1339 1340,.shr 89 3,.bxor 1341 1342,.badd 1338 1343,.badd 1344 83,.rotr 1332 17,.rotr 1332 19,.bxor 1346 1347,.shr 1332 10,.bxor 1348 1349,.badd 1350 143]
theorem partExact19 : partRows19=WordField.rows actualModulus 1288 partOps19 := by
  simp only [partRows19,partOps19,WordField.rows,rows1288,rows1289,rows1290,rows1291,rows1292,rows1293,rows1294,rows1295,rows1296,rows1297,rows1298,rows1299,rows1300,rows1301,rows1302,rows1303,rows1304,rows1305,rows1306,rows1307,rows1308,rows1309,rows1310,rows1311,rows1312,rows1313,rows1314,rows1315,rows1316,rows1317,rows1318,rows1319,rows1320,rows1321,rows1322,rows1323,rows1324,rows1325,rows1326,rows1327,rows1328,rows1329,rows1330,rows1331,rows1332,rows1333,rows1334,rows1335,rows1336,rows1337,rows1338,rows1339,rows1340,rows1341,rows1342,rows1343,rows1344,rows1345,rows1346,rows1347,rows1348,rows1349,rows1350,rows1351,List.append_assoc,List.append_nil]
theorem partLength19 : partOps19.length=64 := by decide
theorem partStats19 : partRows19.length=2185 ∧ MatrixRowBlocks.rowsWeight partRows19=349320 := by
  simp only [partRows19,List.length_append,MatrixRowBlocks.rows_weight_append,stats1288.1,stats1288.2,stats1289.1,stats1289.2,stats1290.1,stats1290.2,stats1291.1,stats1291.2,stats1292.1,stats1292.2,stats1293.1,stats1293.2,stats1294.1,stats1294.2,stats1295.1,stats1295.2,stats1296.1,stats1296.2,stats1297.1,stats1297.2,stats1298.1,stats1298.2,stats1299.1,stats1299.2,stats1300.1,stats1300.2,stats1301.1,stats1301.2,stats1302.1,stats1302.2,stats1303.1,stats1303.2,stats1304.1,stats1304.2,stats1305.1,stats1305.2,stats1306.1,stats1306.2,stats1307.1,stats1307.2,stats1308.1,stats1308.2,stats1309.1,stats1309.2,stats1310.1,stats1310.2,stats1311.1,stats1311.2,stats1312.1,stats1312.2,stats1313.1,stats1313.2,stats1314.1,stats1314.2,stats1315.1,stats1315.2,stats1316.1,stats1316.2,stats1317.1,stats1317.2,stats1318.1,stats1318.2,stats1319.1,stats1319.2,stats1320.1,stats1320.2,stats1321.1,stats1321.2,stats1322.1,stats1322.2,stats1323.1,stats1323.2,stats1324.1,stats1324.2,stats1325.1,stats1325.2,stats1326.1,stats1326.2,stats1327.1,stats1327.2,stats1328.1,stats1328.2,stats1329.1,stats1329.2,stats1330.1,stats1330.2,stats1331.1,stats1331.2,stats1332.1,stats1332.2,stats1333.1,stats1333.2,stats1334.1,stats1334.2,stats1335.1,stats1335.2,stats1336.1,stats1336.2,stats1337.1,stats1337.2,stats1338.1,stats1338.2,stats1339.1,stats1339.2,stats1340.1,stats1340.2,stats1341.1,stats1341.2,stats1342.1,stats1342.2,stats1343.1,stats1343.2,stats1344.1,stats1344.2,stats1345.1,stats1345.2,stats1346.1,stats1346.2,stats1347.1,stats1347.2,stats1348.1,stats1348.2,stats1349.1,stats1349.2,stats1350.1,stats1350.2,stats1351.1,stats1351.2]
  decide
end HashBlockCheckedRows
