import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup22
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1408 : List WordIR.Op := [.band 1449 1450]
def bytes1408 : Bytes := ("    let r000005ab: u32 = r000005a9 & r000005aa;\n" : String).toByteArray.data.toList
theorem checked1408 : bytes1408=statementBytes 1451 (op1408.map lower) ∧ bytes1408.length=48 := by core033_kernel_decide
def op1409 : List WordIR.Op := [.shr 945 16]
def bytes1409 : Bytes := ("    let r000005ac: u32 = r000003b1 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1409 : bytes1409=statementBytes 1452 (op1409.map lower) ∧ bytes1409.length=54 := by core033_kernel_decide
def op1410 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1410 : Bytes := ("    let r000005ad: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1410 : bytes1410=statementBytes 1453 (op1410.map lower) ∧ bytes1410.length=41 := by core033_kernel_decide
def op1411 : List WordIR.Op := [.band 1452 1453]
def bytes1411 : Bytes := ("    let r000005ae: u32 = r000005ac & r000005ad;\n" : String).toByteArray.data.toList
theorem checked1411 : bytes1411=statementBytes 1454 (op1411.map lower) ∧ bytes1411.length=48 := by core033_kernel_decide
def op1412 : List WordIR.Op := [.shr 945 24]
def bytes1412 : Bytes := ("    let r000005af: u32 = r000003b1 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1412 : bytes1412=statementBytes 1455 (op1412.map lower) ∧ bytes1412.length=54 := by core033_kernel_decide
def op1413 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1413 : Bytes := ("    let r000005b0: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1413 : bytes1413=statementBytes 1456 (op1413.map lower) ∧ bytes1413.length=41 := by core033_kernel_decide
def op1414 : List WordIR.Op := [.band 1455 1456]
def bytes1414 : Bytes := ("    let r000005b1: u32 = r000005af & r000005b0;\n" : String).toByteArray.data.toList
theorem checked1414 : bytes1414=statementBytes 1457 (op1414.map lower) ∧ bytes1414.length=48 := by core033_kernel_decide
def op1415 : List WordIR.Op := [.shr 955 0]
def bytes1415 : Bytes := ("    let r000005b2: u32 = r000003bb >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1415 : bytes1415=statementBytes 1458 (op1415.map lower) ∧ bytes1415.length=54 := by core033_kernel_decide
def op1416 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1416 : Bytes := ("    let r000005b3: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1416 : bytes1416=statementBytes 1459 (op1416.map lower) ∧ bytes1416.length=41 := by core033_kernel_decide
def op1417 : List WordIR.Op := [.band 1458 1459]
def bytes1417 : Bytes := ("    let r000005b4: u32 = r000005b2 & r000005b3;\n" : String).toByteArray.data.toList
theorem checked1417 : bytes1417=statementBytes 1460 (op1417.map lower) ∧ bytes1417.length=48 := by core033_kernel_decide
def op1418 : List WordIR.Op := [.shr 955 8]
def bytes1418 : Bytes := ("    let r000005b5: u32 = r000003bb >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1418 : bytes1418=statementBytes 1461 (op1418.map lower) ∧ bytes1418.length=54 := by core033_kernel_decide
def op1419 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1419 : Bytes := ("    let r000005b6: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1419 : bytes1419=statementBytes 1462 (op1419.map lower) ∧ bytes1419.length=41 := by core033_kernel_decide
def op1420 : List WordIR.Op := [.band 1461 1462]
def bytes1420 : Bytes := ("    let r000005b7: u32 = r000005b5 & r000005b6;\n" : String).toByteArray.data.toList
theorem checked1420 : bytes1420=statementBytes 1463 (op1420.map lower) ∧ bytes1420.length=48 := by core033_kernel_decide
def op1421 : List WordIR.Op := [.shr 955 16]
def bytes1421 : Bytes := ("    let r000005b8: u32 = r000003bb >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1421 : bytes1421=statementBytes 1464 (op1421.map lower) ∧ bytes1421.length=54 := by core033_kernel_decide
def op1422 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1422 : Bytes := ("    let r000005b9: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1422 : bytes1422=statementBytes 1465 (op1422.map lower) ∧ bytes1422.length=41 := by core033_kernel_decide
def op1423 : List WordIR.Op := [.band 1464 1465]
def bytes1423 : Bytes := ("    let r000005ba: u32 = r000005b8 & r000005b9;\n" : String).toByteArray.data.toList
theorem checked1423 : bytes1423=statementBytes 1466 (op1423.map lower) ∧ bytes1423.length=48 := by core033_kernel_decide
def op1424 : List WordIR.Op := [.shr 955 24]
def bytes1424 : Bytes := ("    let r000005bb: u32 = r000003bb >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1424 : bytes1424=statementBytes 1467 (op1424.map lower) ∧ bytes1424.length=54 := by core033_kernel_decide
def op1425 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1425 : Bytes := ("    let r000005bc: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1425 : bytes1425=statementBytes 1468 (op1425.map lower) ∧ bytes1425.length=41 := by core033_kernel_decide
def op1426 : List WordIR.Op := [.band 1467 1468]
def bytes1426 : Bytes := ("    let r000005bd: u32 = r000005bb & r000005bc;\n" : String).toByteArray.data.toList
theorem checked1426 : bytes1426=statementBytes 1469 (op1426.map lower) ∧ bytes1426.length=48 := by core033_kernel_decide
def op1427 : List WordIR.Op := [.shr 1005 0]
def bytes1427 : Bytes := ("    let r000005be: u32 = r000003ed >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1427 : bytes1427=statementBytes 1470 (op1427.map lower) ∧ bytes1427.length=54 := by core033_kernel_decide
def op1428 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1428 : Bytes := ("    let r000005bf: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1428 : bytes1428=statementBytes 1471 (op1428.map lower) ∧ bytes1428.length=41 := by core033_kernel_decide
def op1429 : List WordIR.Op := [.band 1470 1471]
def bytes1429 : Bytes := ("    let r000005c0: u32 = r000005be & r000005bf;\n" : String).toByteArray.data.toList
theorem checked1429 : bytes1429=statementBytes 1472 (op1429.map lower) ∧ bytes1429.length=48 := by core033_kernel_decide
def op1430 : List WordIR.Op := [.shr 1005 8]
def bytes1430 : Bytes := ("    let r000005c1: u32 = r000003ed >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1430 : bytes1430=statementBytes 1473 (op1430.map lower) ∧ bytes1430.length=54 := by core033_kernel_decide
def op1431 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1431 : Bytes := ("    let r000005c2: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1431 : bytes1431=statementBytes 1474 (op1431.map lower) ∧ bytes1431.length=41 := by core033_kernel_decide
def op1432 : List WordIR.Op := [.band 1473 1474]
def bytes1432 : Bytes := ("    let r000005c3: u32 = r000005c1 & r000005c2;\n" : String).toByteArray.data.toList
theorem checked1432 : bytes1432=statementBytes 1475 (op1432.map lower) ∧ bytes1432.length=48 := by core033_kernel_decide
def op1433 : List WordIR.Op := [.shr 1005 16]
def bytes1433 : Bytes := ("    let r000005c4: u32 = r000003ed >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1433 : bytes1433=statementBytes 1476 (op1433.map lower) ∧ bytes1433.length=54 := by core033_kernel_decide
def op1434 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1434 : Bytes := ("    let r000005c5: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1434 : bytes1434=statementBytes 1477 (op1434.map lower) ∧ bytes1434.length=41 := by core033_kernel_decide
def op1435 : List WordIR.Op := [.band 1476 1477]
def bytes1435 : Bytes := ("    let r000005c6: u32 = r000005c4 & r000005c5;\n" : String).toByteArray.data.toList
theorem checked1435 : bytes1435=statementBytes 1478 (op1435.map lower) ∧ bytes1435.length=48 := by core033_kernel_decide
def op1436 : List WordIR.Op := [.shr 1005 24]
def bytes1436 : Bytes := ("    let r000005c7: u32 = r000003ed >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1436 : bytes1436=statementBytes 1479 (op1436.map lower) ∧ bytes1436.length=54 := by core033_kernel_decide
def op1437 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1437 : Bytes := ("    let r000005c8: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1437 : bytes1437=statementBytes 1480 (op1437.map lower) ∧ bytes1437.length=41 := by core033_kernel_decide
def op1438 : List WordIR.Op := [.band 1479 1480]
def bytes1438 : Bytes := ("    let r000005c9: u32 = r000005c7 & r000005c8;\n" : String).toByteArray.data.toList
theorem checked1438 : bytes1438=statementBytes 1481 (op1438.map lower) ∧ bytes1438.length=48 := by core033_kernel_decide
def op1439 : List WordIR.Op := [.shr 1015 0]
def bytes1439 : Bytes := ("    let r000005ca: u32 = r000003f7 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1439 : bytes1439=statementBytes 1482 (op1439.map lower) ∧ bytes1439.length=54 := by core033_kernel_decide
def op1440 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1440 : Bytes := ("    let r000005cb: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1440 : bytes1440=statementBytes 1483 (op1440.map lower) ∧ bytes1440.length=41 := by core033_kernel_decide
def op1441 : List WordIR.Op := [.band 1482 1483]
def bytes1441 : Bytes := ("    let r000005cc: u32 = r000005ca & r000005cb;\n" : String).toByteArray.data.toList
theorem checked1441 : bytes1441=statementBytes 1484 (op1441.map lower) ∧ bytes1441.length=48 := by core033_kernel_decide
def op1442 : List WordIR.Op := [.shr 1015 8]
def bytes1442 : Bytes := ("    let r000005cd: u32 = r000003f7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1442 : bytes1442=statementBytes 1485 (op1442.map lower) ∧ bytes1442.length=54 := by core033_kernel_decide
def op1443 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1443 : Bytes := ("    let r000005ce: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1443 : bytes1443=statementBytes 1486 (op1443.map lower) ∧ bytes1443.length=41 := by core033_kernel_decide
def op1444 : List WordIR.Op := [.band 1485 1486]
def bytes1444 : Bytes := ("    let r000005cf: u32 = r000005cd & r000005ce;\n" : String).toByteArray.data.toList
theorem checked1444 : bytes1444=statementBytes 1487 (op1444.map lower) ∧ bytes1444.length=48 := by core033_kernel_decide
def op1445 : List WordIR.Op := [.shr 1015 16]
def bytes1445 : Bytes := ("    let r000005d0: u32 = r000003f7 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1445 : bytes1445=statementBytes 1488 (op1445.map lower) ∧ bytes1445.length=54 := by core033_kernel_decide
def op1446 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1446 : Bytes := ("    let r000005d1: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1446 : bytes1446=statementBytes 1489 (op1446.map lower) ∧ bytes1446.length=41 := by core033_kernel_decide
def op1447 : List WordIR.Op := [.band 1488 1489]
def bytes1447 : Bytes := ("    let r000005d2: u32 = r000005d0 & r000005d1;\n" : String).toByteArray.data.toList
theorem checked1447 : bytes1447=statementBytes 1490 (op1447.map lower) ∧ bytes1447.length=48 := by core033_kernel_decide
def op1448 : List WordIR.Op := [.shr 1015 24]
def bytes1448 : Bytes := ("    let r000005d3: u32 = r000003f7 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1448 : bytes1448=statementBytes 1491 (op1448.map lower) ∧ bytes1448.length=54 := by core033_kernel_decide
def op1449 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1449 : Bytes := ("    let r000005d4: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1449 : bytes1449=statementBytes 1492 (op1449.map lower) ∧ bytes1449.length=41 := by core033_kernel_decide
def op1450 : List WordIR.Op := [.band 1491 1492]
def bytes1450 : Bytes := ("    let r000005d5: u32 = r000005d3 & r000005d4;\n" : String).toByteArray.data.toList
theorem checked1450 : bytes1450=statementBytes 1493 (op1450.map lower) ∧ bytes1450.length=48 := by core033_kernel_decide
def op1451 : List WordIR.Op := [.shr 1025 0]
def bytes1451 : Bytes := ("    let r000005d6: u32 = r00000401 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1451 : bytes1451=statementBytes 1494 (op1451.map lower) ∧ bytes1451.length=54 := by core033_kernel_decide
def op1452 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1452 : Bytes := ("    let r000005d7: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1452 : bytes1452=statementBytes 1495 (op1452.map lower) ∧ bytes1452.length=41 := by core033_kernel_decide
def op1453 : List WordIR.Op := [.band 1494 1495]
def bytes1453 : Bytes := ("    let r000005d8: u32 = r000005d6 & r000005d7;\n" : String).toByteArray.data.toList
theorem checked1453 : bytes1453=statementBytes 1496 (op1453.map lower) ∧ bytes1453.length=48 := by core033_kernel_decide
def op1454 : List WordIR.Op := [.shr 1025 8]
def bytes1454 : Bytes := ("    let r000005d9: u32 = r00000401 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1454 : bytes1454=statementBytes 1497 (op1454.map lower) ∧ bytes1454.length=54 := by core033_kernel_decide
def op1455 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1455 : Bytes := ("    let r000005da: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1455 : bytes1455=statementBytes 1498 (op1455.map lower) ∧ bytes1455.length=41 := by core033_kernel_decide
def op1456 : List WordIR.Op := [.band 1497 1498]
def bytes1456 : Bytes := ("    let r000005db: u32 = r000005d9 & r000005da;\n" : String).toByteArray.data.toList
theorem checked1456 : bytes1456=statementBytes 1499 (op1456.map lower) ∧ bytes1456.length=48 := by core033_kernel_decide
def op1457 : List WordIR.Op := [.shr 1025 16]
def bytes1457 : Bytes := ("    let r000005dc: u32 = r00000401 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1457 : bytes1457=statementBytes 1500 (op1457.map lower) ∧ bytes1457.length=54 := by core033_kernel_decide
def op1458 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1458 : Bytes := ("    let r000005dd: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1458 : bytes1458=statementBytes 1501 (op1458.map lower) ∧ bytes1458.length=41 := by core033_kernel_decide
def op1459 : List WordIR.Op := [.band 1500 1501]
def bytes1459 : Bytes := ("    let r000005de: u32 = r000005dc & r000005dd;\n" : String).toByteArray.data.toList
theorem checked1459 : bytes1459=statementBytes 1502 (op1459.map lower) ∧ bytes1459.length=48 := by core033_kernel_decide
def op1460 : List WordIR.Op := [.shr 1025 24]
def bytes1460 : Bytes := ("    let r000005df: u32 = r00000401 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1460 : bytes1460=statementBytes 1503 (op1460.map lower) ∧ bytes1460.length=54 := by core033_kernel_decide
def op1461 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1461 : Bytes := ("    let r000005e0: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1461 : bytes1461=statementBytes 1504 (op1461.map lower) ∧ bytes1461.length=41 := by core033_kernel_decide
def op1462 : List WordIR.Op := [.band 1503 1504]
def bytes1462 : Bytes := ("    let r000005e1: u32 = r000005df & r000005e0;\n" : String).toByteArray.data.toList
theorem checked1462 : bytes1462=statementBytes 1505 (op1462.map lower) ∧ bytes1462.length=48 := by core033_kernel_decide
def op1463 : List WordIR.Op := [.shr 1035 0]
def bytes1463 : Bytes := ("    let r000005e2: u32 = r0000040b >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1463 : bytes1463=statementBytes 1506 (op1463.map lower) ∧ bytes1463.length=54 := by core033_kernel_decide
def op1464 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1464 : Bytes := ("    let r000005e3: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1464 : bytes1464=statementBytes 1507 (op1464.map lower) ∧ bytes1464.length=41 := by core033_kernel_decide
def op1465 : List WordIR.Op := [.band 1506 1507]
def bytes1465 : Bytes := ("    let r000005e4: u32 = r000005e2 & r000005e3;\n" : String).toByteArray.data.toList
theorem checked1465 : bytes1465=statementBytes 1508 (op1465.map lower) ∧ bytes1465.length=48 := by core033_kernel_decide
def op1466 : List WordIR.Op := [.shr 1035 8]
def bytes1466 : Bytes := ("    let r000005e5: u32 = r0000040b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1466 : bytes1466=statementBytes 1509 (op1466.map lower) ∧ bytes1466.length=54 := by core033_kernel_decide
def op1467 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1467 : Bytes := ("    let r000005e6: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1467 : bytes1467=statementBytes 1510 (op1467.map lower) ∧ bytes1467.length=41 := by core033_kernel_decide
def op1468 : List WordIR.Op := [.band 1509 1510]
def bytes1468 : Bytes := ("    let r000005e7: u32 = r000005e5 & r000005e6;\n" : String).toByteArray.data.toList
theorem checked1468 : bytes1468=statementBytes 1511 (op1468.map lower) ∧ bytes1468.length=48 := by core033_kernel_decide
def op1469 : List WordIR.Op := [.shr 1035 16]
def bytes1469 : Bytes := ("    let r000005e8: u32 = r0000040b >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1469 : bytes1469=statementBytes 1512 (op1469.map lower) ∧ bytes1469.length=54 := by core033_kernel_decide
def op1470 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1470 : Bytes := ("    let r000005e9: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1470 : bytes1470=statementBytes 1513 (op1470.map lower) ∧ bytes1470.length=41 := by core033_kernel_decide
def op1471 : List WordIR.Op := [.band 1512 1513]
def bytes1471 : Bytes := ("    let r000005ea: u32 = r000005e8 & r000005e9;\n" : String).toByteArray.data.toList
theorem checked1471 : bytes1471=statementBytes 1514 (op1471.map lower) ∧ bytes1471.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1408,op1409,op1410,op1411,op1412,op1413,op1414,op1415,op1416,op1417,op1418,op1419,op1420,op1421,op1422,op1423,op1424,op1425,op1426,op1427,op1428,op1429,op1430,op1431,op1432,op1433,op1434,op1435,op1436,op1437,op1438,op1439,op1440,op1441,op1442,op1443,op1444,op1445,op1446,op1447,op1448,op1449,op1450,op1451,op1452,op1453,op1454,op1455,op1456,op1457,op1458,op1459,op1460,op1461,op1462,op1463,op1464,op1465,op1466,op1467,op1468,op1469,op1470,op1471]
def chunks : List Bytes := [bytes1408,bytes1409,bytes1410,bytes1411,bytes1412,bytes1413,bytes1414,bytes1415,bytes1416,bytes1417,bytes1418,bytes1419,bytes1420,bytes1421,bytes1422,bytes1423,bytes1424,bytes1425,bytes1426,bytes1427,bytes1428,bytes1429,bytes1430,bytes1431,bytes1432,bytes1433,bytes1434,bytes1435,bytes1436,bytes1437,bytes1438,bytes1439,bytes1440,bytes1441,bytes1442,bytes1443,bytes1444,bytes1445,bytes1446,bytes1447,bytes1448,bytes1449,bytes1450,bytes1451,bytes1452,bytes1453,bytes1454,bytes1455,bytes1456,bytes1457,bytes1458,bytes1459,bytes1460,bytes1461,bytes1462,bytes1463,bytes1464,bytes1465,bytes1466,bytes1467,bytes1468,bytes1469,bytes1470,bytes1471]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1451 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1408.1 (.cons _ _ _ _ _ checked1409.1 (.cons _ _ _ _ _ checked1410.1 (.cons _ _ _ _ _ checked1411.1 (.cons _ _ _ _ _ checked1412.1 (.cons _ _ _ _ _ checked1413.1 (.cons _ _ _ _ _ checked1414.1 (.cons _ _ _ _ _ checked1415.1 (.cons _ _ _ _ _ checked1416.1 (.cons _ _ _ _ _ checked1417.1 (.cons _ _ _ _ _ checked1418.1 (.cons _ _ _ _ _ checked1419.1 (.cons _ _ _ _ _ checked1420.1 (.cons _ _ _ _ _ checked1421.1 (.cons _ _ _ _ _ checked1422.1 (.cons _ _ _ _ _ checked1423.1 (.cons _ _ _ _ _ checked1424.1 (.cons _ _ _ _ _ checked1425.1 (.cons _ _ _ _ _ checked1426.1 (.cons _ _ _ _ _ checked1427.1 (.cons _ _ _ _ _ checked1428.1 (.cons _ _ _ _ _ checked1429.1 (.cons _ _ _ _ _ checked1430.1 (.cons _ _ _ _ _ checked1431.1 (.cons _ _ _ _ _ checked1432.1 (.cons _ _ _ _ _ checked1433.1 (.cons _ _ _ _ _ checked1434.1 (.cons _ _ _ _ _ checked1435.1 (.cons _ _ _ _ _ checked1436.1 (.cons _ _ _ _ _ checked1437.1 (.cons _ _ _ _ _ checked1438.1 (.cons _ _ _ _ _ checked1439.1 (.cons _ _ _ _ _ checked1440.1 (.cons _ _ _ _ _ checked1441.1 (.cons _ _ _ _ _ checked1442.1 (.cons _ _ _ _ _ checked1443.1 (.cons _ _ _ _ _ checked1444.1 (.cons _ _ _ _ _ checked1445.1 (.cons _ _ _ _ _ checked1446.1 (.cons _ _ _ _ _ checked1447.1 (.cons _ _ _ _ _ checked1448.1 (.cons _ _ _ _ _ checked1449.1 (.cons _ _ _ _ _ checked1450.1 (.cons _ _ _ _ _ checked1451.1 (.cons _ _ _ _ _ checked1452.1 (.cons _ _ _ _ _ checked1453.1 (.cons _ _ _ _ _ checked1454.1 (.cons _ _ _ _ _ checked1455.1 (.cons _ _ _ _ _ checked1456.1 (.cons _ _ _ _ _ checked1457.1 (.cons _ _ _ _ _ checked1458.1 (.cons _ _ _ _ _ checked1459.1 (.cons _ _ _ _ _ checked1460.1 (.cons _ _ _ _ _ checked1461.1 (.cons _ _ _ _ _ checked1462.1 (.cons _ _ _ _ _ checked1463.1 (.cons _ _ _ _ _ checked1464.1 (.cons _ _ _ _ _ checked1465.1 (.cons _ _ _ _ _ checked1466.1 (.cons _ _ _ _ _ checked1467.1 (.cons _ _ _ _ _ checked1468.1 (.cons _ _ _ _ _ checked1469.1 (.cons _ _ _ _ _ checked1470.1 (.cons _ _ _ _ _ checked1471.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1451 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3051 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1408.2,checked1409.2,checked1410.2,checked1411.2,checked1412.2,checked1413.2,checked1414.2,checked1415.2,checked1416.2,checked1417.2,checked1418.2,checked1419.2,checked1420.2,checked1421.2,checked1422.2,checked1423.2,checked1424.2,checked1425.2,checked1426.2,checked1427.2,checked1428.2,checked1429.2,checked1430.2,checked1431.2,checked1432.2,checked1433.2,checked1434.2,checked1435.2,checked1436.2,checked1437.2,checked1438.2,checked1439.2,checked1440.2,checked1441.2,checked1442.2,checked1443.2,checked1444.2,checked1445.2,checked1446.2,checked1447.2,checked1448.2,checked1449.2,checked1450.2,checked1451.2,checked1452.2,checked1453.2,checked1454.2,checked1455.2,checked1456.2,checked1457.2,checked1458.2,checked1459.2,checked1460.2,checked1461.2,checked1462.2,checked1463.2,checked1464.2,checked1465.2,checked1466.2,checked1467.2,checked1468.2,checked1469.2,checked1470.2,checked1471.2]
  decide
end ArtifactPathRoundDispatchGroup22
