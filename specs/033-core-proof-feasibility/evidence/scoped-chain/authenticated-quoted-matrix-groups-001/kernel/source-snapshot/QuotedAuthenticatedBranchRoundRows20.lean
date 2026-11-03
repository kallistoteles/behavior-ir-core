import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData21
import AuthenticatedBranchRoundInstructionMatrixData22
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1398 : actualRows1398=WordField.canonicalRows actualModulus 1398 (.bxor 1391 1397) := by core033_kernel_decide
theorem stats1398 : actualRows1398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1398=7428 := by core033_kernel_decide
theorem rows1399 : actualRows1399=WordField.canonicalRows actualModulus 1399 (.bnot 1288) := by core033_kernel_decide
theorem stats1399 : actualRows1399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1399=6276 := by core033_kernel_decide
theorem rows1400 : actualRows1400=WordField.canonicalRows actualModulus 1400 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1400 : actualRows1400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1400=2892 := by core033_kernel_decide
theorem rows1401 : actualRows1401=WordField.canonicalRows actualModulus 1401 (.badd 1399 1400) := by core033_kernel_decide
theorem stats1401 : actualRows1401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1401=5388 := by core033_kernel_decide
theorem rows1402 : actualRows1402=WordField.canonicalRows actualModulus 1402 (.band 1401 803) := by core033_kernel_decide
theorem stats1402 : actualRows1402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1402=5124 := by core033_kernel_decide
theorem rows1403 : actualRows1403=WordField.canonicalRows actualModulus 1403 (.bnot 1288) := by core033_kernel_decide
theorem stats1403 : actualRows1403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1403=6276 := by core033_kernel_decide
theorem rows1404 : actualRows1404=WordField.canonicalRows actualModulus 1404 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1404 : actualRows1404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1404=2892 := by core033_kernel_decide
theorem rows1405 : actualRows1405=WordField.canonicalRows actualModulus 1405 (.badd 1403 1404) := by core033_kernel_decide
theorem stats1405 : actualRows1405.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1405=5388 := by core033_kernel_decide
theorem rows1406 : actualRows1406=WordField.canonicalRows actualModulus 1406 (.bnot 1405) := by core033_kernel_decide
theorem stats1406 : actualRows1406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1406=6276 := by core033_kernel_decide
theorem rows1407 : actualRows1407=WordField.canonicalRows actualModulus 1407 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1407 : actualRows1407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1407=2820 := by core033_kernel_decide
theorem rows1408 : actualRows1408=WordField.canonicalRows actualModulus 1408 (.band 1406 1407) := by core033_kernel_decide
theorem stats1408 : actualRows1408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1408=5124 := by core033_kernel_decide
theorem rows1409 : actualRows1409=WordField.canonicalRows actualModulus 1409 (.bxor 1402 1408) := by core033_kernel_decide
theorem stats1409 : actualRows1409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1409=7428 := by core033_kernel_decide
theorem rows1410 : actualRows1410=WordField.canonicalRows actualModulus 1410 (.bnot 1288) := by core033_kernel_decide
theorem stats1410 : actualRows1410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1410=6276 := by core033_kernel_decide
theorem rows1411 : actualRows1411=WordField.canonicalRows actualModulus 1411 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1411 : actualRows1411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1411=2892 := by core033_kernel_decide
theorem rows1412 : actualRows1412=WordField.canonicalRows actualModulus 1412 (.badd 1410 1411) := by core033_kernel_decide
theorem stats1412 : actualRows1412.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1412=5388 := by core033_kernel_decide
theorem rows1413 : actualRows1413=WordField.canonicalRows actualModulus 1413 (.band 1412 823) := by core033_kernel_decide
theorem stats1413 : actualRows1413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1413=5124 := by core033_kernel_decide
theorem rows1414 : actualRows1414=WordField.canonicalRows actualModulus 1414 (.bnot 1288) := by core033_kernel_decide
theorem stats1414 : actualRows1414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1414=6276 := by core033_kernel_decide
theorem rows1415 : actualRows1415=WordField.canonicalRows actualModulus 1415 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1415 : actualRows1415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1415=2892 := by core033_kernel_decide
theorem rows1416 : actualRows1416=WordField.canonicalRows actualModulus 1416 (.badd 1414 1415) := by core033_kernel_decide
theorem stats1416 : actualRows1416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1416=5388 := by core033_kernel_decide
theorem rows1417 : actualRows1417=WordField.canonicalRows actualModulus 1417 (.bnot 1416) := by core033_kernel_decide
theorem stats1417 : actualRows1417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1417=6276 := by core033_kernel_decide
theorem rows1418 : actualRows1418=WordField.canonicalRows actualModulus 1418 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1418 : actualRows1418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1418=2820 := by core033_kernel_decide
theorem rows1419 : actualRows1419=WordField.canonicalRows actualModulus 1419 (.band 1417 1418) := by core033_kernel_decide
theorem stats1419 : actualRows1419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1419=5124 := by core033_kernel_decide
theorem rows1420 : actualRows1420=WordField.canonicalRows actualModulus 1420 (.bxor 1413 1419) := by core033_kernel_decide
theorem stats1420 : actualRows1420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1420=7428 := by core033_kernel_decide
theorem rows1421 : actualRows1421=WordField.canonicalRows actualModulus 1421 (.bnot 1288) := by core033_kernel_decide
theorem stats1421 : actualRows1421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1421=6276 := by core033_kernel_decide
theorem rows1422 : actualRows1422=WordField.canonicalRows actualModulus 1422 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1422 : actualRows1422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1422=2892 := by core033_kernel_decide
theorem rows1423 : actualRows1423=WordField.canonicalRows actualModulus 1423 (.badd 1421 1422) := by core033_kernel_decide
theorem stats1423 : actualRows1423.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1423=5388 := by core033_kernel_decide
theorem rows1424 : actualRows1424=WordField.canonicalRows actualModulus 1424 (.band 1423 843) := by core033_kernel_decide
theorem stats1424 : actualRows1424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1424=5124 := by core033_kernel_decide
theorem rows1425 : actualRows1425=WordField.canonicalRows actualModulus 1425 (.bnot 1288) := by core033_kernel_decide
theorem stats1425 : actualRows1425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1425=6276 := by core033_kernel_decide
theorem rows1426 : actualRows1426=WordField.canonicalRows actualModulus 1426 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1426 : actualRows1426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1426=2892 := by core033_kernel_decide
theorem rows1427 : actualRows1427=WordField.canonicalRows actualModulus 1427 (.badd 1425 1426) := by core033_kernel_decide
theorem stats1427 : actualRows1427.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1427=5388 := by core033_kernel_decide
theorem rows1428 : actualRows1428=WordField.canonicalRows actualModulus 1428 (.bnot 1427) := by core033_kernel_decide
theorem stats1428 : actualRows1428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1428=6276 := by core033_kernel_decide
theorem rows1429 : actualRows1429=WordField.canonicalRows actualModulus 1429 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1429 : actualRows1429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1429=2820 := by core033_kernel_decide
theorem rows1430 : actualRows1430=WordField.canonicalRows actualModulus 1430 (.band 1428 1429) := by core033_kernel_decide
theorem stats1430 : actualRows1430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1430=5124 := by core033_kernel_decide
theorem rows1431 : actualRows1431=WordField.canonicalRows actualModulus 1431 (.bxor 1424 1430) := by core033_kernel_decide
theorem stats1431 : actualRows1431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1431=7428 := by core033_kernel_decide
theorem rows1432 : actualRows1432=WordField.canonicalRows actualModulus 1432 (.bnot 1288) := by core033_kernel_decide
theorem stats1432 : actualRows1432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1432=6276 := by core033_kernel_decide
theorem rows1433 : actualRows1433=WordField.canonicalRows actualModulus 1433 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1433 : actualRows1433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1433=2892 := by core033_kernel_decide
theorem rows1434 : actualRows1434=WordField.canonicalRows actualModulus 1434 (.badd 1432 1433) := by core033_kernel_decide
theorem stats1434 : actualRows1434.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1434=5388 := by core033_kernel_decide
theorem rows1435 : actualRows1435=WordField.canonicalRows actualModulus 1435 (.band 1434 863) := by core033_kernel_decide
theorem stats1435 : actualRows1435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1435=5124 := by core033_kernel_decide
theorem rows1436 : actualRows1436=WordField.canonicalRows actualModulus 1436 (.bnot 1288) := by core033_kernel_decide
theorem stats1436 : actualRows1436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1436=6276 := by core033_kernel_decide
theorem rows1437 : actualRows1437=WordField.canonicalRows actualModulus 1437 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1437 : actualRows1437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1437=2892 := by core033_kernel_decide
theorem rows1438 : actualRows1438=WordField.canonicalRows actualModulus 1438 (.badd 1436 1437) := by core033_kernel_decide
theorem stats1438 : actualRows1438.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1438=5388 := by core033_kernel_decide
theorem rows1439 : actualRows1439=WordField.canonicalRows actualModulus 1439 (.bnot 1438) := by core033_kernel_decide
theorem stats1439 : actualRows1439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1439=6276 := by core033_kernel_decide
theorem rows1440 : actualRows1440=WordField.canonicalRows actualModulus 1440 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1440 : actualRows1440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1440=2820 := by core033_kernel_decide
theorem rows1441 : actualRows1441=WordField.canonicalRows actualModulus 1441 (.band 1439 1440) := by core033_kernel_decide
theorem stats1441 : actualRows1441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1441=5124 := by core033_kernel_decide
theorem rows1442 : actualRows1442=WordField.canonicalRows actualModulus 1442 (.bxor 1435 1441) := by core033_kernel_decide
theorem stats1442 : actualRows1442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1442=7428 := by core033_kernel_decide
theorem rows1443 : actualRows1443=WordField.canonicalRows actualModulus 1443 (.bnot 1288) := by core033_kernel_decide
theorem stats1443 : actualRows1443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1443=6276 := by core033_kernel_decide
theorem rows1444 : actualRows1444=WordField.canonicalRows actualModulus 1444 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1444 : actualRows1444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1444=2892 := by core033_kernel_decide
theorem rows1445 : actualRows1445=WordField.canonicalRows actualModulus 1445 (.badd 1443 1444) := by core033_kernel_decide
theorem stats1445 : actualRows1445.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1445=5388 := by core033_kernel_decide
theorem rows1446 : actualRows1446=WordField.canonicalRows actualModulus 1446 (.band 1445 883) := by core033_kernel_decide
theorem stats1446 : actualRows1446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1446=5124 := by core033_kernel_decide
theorem rows1447 : actualRows1447=WordField.canonicalRows actualModulus 1447 (.bnot 1288) := by core033_kernel_decide
theorem stats1447 : actualRows1447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1447=6276 := by core033_kernel_decide
theorem rows1448 : actualRows1448=WordField.canonicalRows actualModulus 1448 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1448 : actualRows1448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1448=2892 := by core033_kernel_decide
theorem rows1449 : actualRows1449=WordField.canonicalRows actualModulus 1449 (.badd 1447 1448) := by core033_kernel_decide
theorem stats1449 : actualRows1449.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1449=5388 := by core033_kernel_decide
theorem rows1450 : actualRows1450=WordField.canonicalRows actualModulus 1450 (.bnot 1449) := by core033_kernel_decide
theorem stats1450 : actualRows1450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1450=6276 := by core033_kernel_decide
theorem rows1451 : actualRows1451=WordField.canonicalRows actualModulus 1451 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1451 : actualRows1451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1451=2820 := by core033_kernel_decide
theorem rows1452 : actualRows1452=WordField.canonicalRows actualModulus 1452 (.band 1450 1451) := by core033_kernel_decide
theorem stats1452 : actualRows1452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1452=5124 := by core033_kernel_decide
theorem rows1453 : actualRows1453=WordField.canonicalRows actualModulus 1453 (.bxor 1446 1452) := by core033_kernel_decide
theorem stats1453 : actualRows1453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1453=7428 := by core033_kernel_decide
theorem rows1454 : actualRows1454=WordField.canonicalRows actualModulus 1454 (.bnot 1288) := by core033_kernel_decide
theorem stats1454 : actualRows1454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1454=6276 := by core033_kernel_decide
theorem rows1455 : actualRows1455=WordField.canonicalRows actualModulus 1455 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1455 : actualRows1455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1455=2892 := by core033_kernel_decide
theorem rows1456 : actualRows1456=WordField.canonicalRows actualModulus 1456 (.badd 1454 1455) := by core033_kernel_decide
theorem stats1456 : actualRows1456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1456=5388 := by core033_kernel_decide
theorem rows1457 : actualRows1457=WordField.canonicalRows actualModulus 1457 (.band 1456 903) := by core033_kernel_decide
theorem stats1457 : actualRows1457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1457=5124 := by core033_kernel_decide
theorem rows1458 : actualRows1458=WordField.canonicalRows actualModulus 1458 (.bnot 1288) := by core033_kernel_decide
theorem stats1458 : actualRows1458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1458=6276 := by core033_kernel_decide
theorem rows1459 : actualRows1459=WordField.canonicalRows actualModulus 1459 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1459 : actualRows1459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1459=2892 := by core033_kernel_decide
theorem rows1460 : actualRows1460=WordField.canonicalRows actualModulus 1460 (.badd 1458 1459) := by core033_kernel_decide
theorem stats1460 : actualRows1460.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1460=5388 := by core033_kernel_decide
theorem rows1461 : actualRows1461=WordField.canonicalRows actualModulus 1461 (.bnot 1460) := by core033_kernel_decide
theorem stats1461 : actualRows1461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1461=6276 := by core033_kernel_decide
def partRows20 : List R1CS.Row := actualRows1398++actualRows1399++actualRows1400++actualRows1401++actualRows1402++actualRows1403++actualRows1404++actualRows1405++actualRows1406++actualRows1407++actualRows1408++actualRows1409++actualRows1410++actualRows1411++actualRows1412++actualRows1413++actualRows1414++actualRows1415++actualRows1416++actualRows1417++actualRows1418++actualRows1419++actualRows1420++actualRows1421++actualRows1422++actualRows1423++actualRows1424++actualRows1425++actualRows1426++actualRows1427++actualRows1428++actualRows1429++actualRows1430++actualRows1431++actualRows1432++actualRows1433++actualRows1434++actualRows1435++actualRows1436++actualRows1437++actualRows1438++actualRows1439++actualRows1440++actualRows1441++actualRows1442++actualRows1443++actualRows1444++actualRows1445++actualRows1446++actualRows1447++actualRows1448++actualRows1449++actualRows1450++actualRows1451++actualRows1452++actualRows1453++actualRows1454++actualRows1455++actualRows1456++actualRows1457++actualRows1458++actualRows1459++actualRows1460++actualRows1461
def partOps20 : List WordIR.Op := [.bxor 1391 1397,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1399 1400,.band 1401 803,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1403 1404,.bnot 1405,.literal (BitVec.ofNat 32 0),.band 1406 1407,.bxor 1402 1408,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1410 1411,.band 1412 823,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1414 1415,.bnot 1416,.literal (BitVec.ofNat 32 0),.band 1417 1418,.bxor 1413 1419,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1421 1422,.band 1423 843,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1425 1426,.bnot 1427,.literal (BitVec.ofNat 32 0),.band 1428 1429,.bxor 1424 1430,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1432 1433,.band 1434 863,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1436 1437,.bnot 1438,.literal (BitVec.ofNat 32 0),.band 1439 1440,.bxor 1435 1441,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1443 1444,.band 1445 883,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1447 1448,.bnot 1449,.literal (BitVec.ofNat 32 0),.band 1450 1451,.bxor 1446 1452,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1454 1455,.band 1456 903,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1458 1459,.bnot 1460]
theorem partExact20 : partRows20=WordField.rows actualModulus 1398 partOps20 := by
  simp only [partRows20,partOps20,WordField.rows,rows1398,rows1399,rows1400,rows1401,rows1402,rows1403,rows1404,rows1405,rows1406,rows1407,rows1408,rows1409,rows1410,rows1411,rows1412,rows1413,rows1414,rows1415,rows1416,rows1417,rows1418,rows1419,rows1420,rows1421,rows1422,rows1423,rows1424,rows1425,rows1426,rows1427,rows1428,rows1429,rows1430,rows1431,rows1432,rows1433,rows1434,rows1435,rows1436,rows1437,rows1438,rows1439,rows1440,rows1441,rows1442,rows1443,rows1444,rows1445,rows1446,rows1447,rows1448,rows1449,rows1450,rows1451,rows1452,rows1453,rows1454,rows1455,rows1456,rows1457,rows1458,rows1459,rows1460,rows1461,List.append_assoc,List.append_nil]
theorem partLength20 : partOps20.length=64 := by decide
theorem partStats20 : partRows20.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows20=327360 := by
  simp only [partRows20,List.length_append,MatrixRowBlocks.rows_weight_append,stats1398.1,stats1398.2,stats1399.1,stats1399.2,stats1400.1,stats1400.2,stats1401.1,stats1401.2,stats1402.1,stats1402.2,stats1403.1,stats1403.2,stats1404.1,stats1404.2,stats1405.1,stats1405.2,stats1406.1,stats1406.2,stats1407.1,stats1407.2,stats1408.1,stats1408.2,stats1409.1,stats1409.2,stats1410.1,stats1410.2,stats1411.1,stats1411.2,stats1412.1,stats1412.2,stats1413.1,stats1413.2,stats1414.1,stats1414.2,stats1415.1,stats1415.2,stats1416.1,stats1416.2,stats1417.1,stats1417.2,stats1418.1,stats1418.2,stats1419.1,stats1419.2,stats1420.1,stats1420.2,stats1421.1,stats1421.2,stats1422.1,stats1422.2,stats1423.1,stats1423.2,stats1424.1,stats1424.2,stats1425.1,stats1425.2,stats1426.1,stats1426.2,stats1427.1,stats1427.2,stats1428.1,stats1428.2,stats1429.1,stats1429.2,stats1430.1,stats1430.2,stats1431.1,stats1431.2,stats1432.1,stats1432.2,stats1433.1,stats1433.2,stats1434.1,stats1434.2,stats1435.1,stats1435.2,stats1436.1,stats1436.2,stats1437.1,stats1437.2,stats1438.1,stats1438.2,stats1439.1,stats1439.2,stats1440.1,stats1440.2,stats1441.1,stats1441.2,stats1442.1,stats1442.2,stats1443.1,stats1443.2,stats1444.1,stats1444.2,stats1445.1,stats1445.2,stats1446.1,stats1446.2,stats1447.1,stats1447.2,stats1448.1,stats1448.2,stats1449.1,stats1449.2,stats1450.1,stats1450.2,stats1451.1,stats1451.2,stats1452.1,stats1452.2,stats1453.1,stats1453.2,stats1454.1,stats1454.2,stats1455.1,stats1455.2,stats1456.1,stats1456.2,stats1457.1,stats1457.2,stats1458.1,stats1458.2,stats1459.1,stats1459.2,stats1460.1,stats1460.2,stats1461.1,stats1461.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
