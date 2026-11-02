import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1472 : List WordIR.Op := [.literal (BitVec.ofNat 32 338241895)]
def bytes1472 : Bytes := ("    let r000005d8: u32 = 0x14292967_u32;\n" : String).toByteArray.data.toList
theorem checked1472 : bytes1472=statementBytes 1496 (op1472.map lower) ∧ bytes1472.length=41 := by core033_kernel_decide
def op1473 : List WordIR.Op := [.badd 1495 1496]
def bytes1473 : Bytes := ("    let r000005d9: u32 = r000005d7.wrapping_add(r000005d8);\n" : String).toByteArray.data.toList
theorem checked1473 : bytes1473=statementBytes 1497 (op1473.map lower) ∧ bytes1473.length=60 := by core033_kernel_decide
def op1474 : List WordIR.Op := [.badd 1497 231]
def bytes1474 : Bytes := ("    let r000005da: u32 = r000005d9.wrapping_add(r000000e7);\n" : String).toByteArray.data.toList
theorem checked1474 : bytes1474=statementBytes 1498 (op1474.map lower) ∧ bytes1474.length=60 := by core033_kernel_decide
def op1475 : List WordIR.Op := [.rotr 1483 2]
def bytes1475 : Bytes := ("    let r000005db: u32 = r000005cb.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1475 : bytes1475=statementBytes 1499 (op1475.map lower) ∧ bytes1475.length=65 := by core033_kernel_decide
def op1476 : List WordIR.Op := [.rotr 1483 13]
def bytes1476 : Bytes := ("    let r000005dc: u32 = r000005cb.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1476 : bytes1476=statementBytes 1500 (op1476.map lower) ∧ bytes1476.length=65 := by core033_kernel_decide
def op1477 : List WordIR.Op := [.bxor 1499 1500]
def bytes1477 : Bytes := ("    let r000005dd: u32 = r000005db ^ r000005dc;\n" : String).toByteArray.data.toList
theorem checked1477 : bytes1477=statementBytes 1501 (op1477.map lower) ∧ bytes1477.length=48 := by core033_kernel_decide
def op1478 : List WordIR.Op := [.rotr 1483 22]
def bytes1478 : Bytes := ("    let r000005de: u32 = r000005cb.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1478 : bytes1478=statementBytes 1502 (op1478.map lower) ∧ bytes1478.length=65 := by core033_kernel_decide
def op1479 : List WordIR.Op := [.bxor 1501 1502]
def bytes1479 : Bytes := ("    let r000005df: u32 = r000005dd ^ r000005de;\n" : String).toByteArray.data.toList
theorem checked1479 : bytes1479=statementBytes 1503 (op1479.map lower) ∧ bytes1479.length=48 := by core033_kernel_decide
def op1480 : List WordIR.Op := [.band 1483 1456]
def bytes1480 : Bytes := ("    let r000005e0: u32 = r000005cb & r000005b0;\n" : String).toByteArray.data.toList
theorem checked1480 : bytes1480=statementBytes 1504 (op1480.map lower) ∧ bytes1480.length=48 := by core033_kernel_decide
def op1481 : List WordIR.Op := [.band 1483 1429]
def bytes1481 : Bytes := ("    let r000005e1: u32 = r000005cb & r00000595;\n" : String).toByteArray.data.toList
theorem checked1481 : bytes1481=statementBytes 1505 (op1481.map lower) ∧ bytes1481.length=48 := by core033_kernel_decide
def op1482 : List WordIR.Op := [.bxor 1504 1505]
def bytes1482 : Bytes := ("    let r000005e2: u32 = r000005e0 ^ r000005e1;\n" : String).toByteArray.data.toList
theorem checked1482 : bytes1482=statementBytes 1506 (op1482.map lower) ∧ bytes1482.length=48 := by core033_kernel_decide
def op1483 : List WordIR.Op := [.band 1456 1429]
def bytes1483 : Bytes := ("    let r000005e3: u32 = r000005b0 & r00000595;\n" : String).toByteArray.data.toList
theorem checked1483 : bytes1483=statementBytes 1507 (op1483.map lower) ∧ bytes1483.length=48 := by core033_kernel_decide
def op1484 : List WordIR.Op := [.bxor 1506 1507]
def bytes1484 : Bytes := ("    let r000005e4: u32 = r000005e2 ^ r000005e3;\n" : String).toByteArray.data.toList
theorem checked1484 : bytes1484=statementBytes 1508 (op1484.map lower) ∧ bytes1484.length=48 := by core033_kernel_decide
def op1485 : List WordIR.Op := [.badd 1503 1508]
def bytes1485 : Bytes := ("    let r000005e5: u32 = r000005df.wrapping_add(r000005e4);\n" : String).toByteArray.data.toList
theorem checked1485 : bytes1485=statementBytes 1509 (op1485.map lower) ∧ bytes1485.length=60 := by core033_kernel_decide
def op1486 : List WordIR.Op := [.badd 1498 1509]
def bytes1486 : Bytes := ("    let r000005e6: u32 = r000005da.wrapping_add(r000005e5);\n" : String).toByteArray.data.toList
theorem checked1486 : bytes1486=statementBytes 1510 (op1486.map lower) ∧ bytes1486.length=60 := by core033_kernel_decide
def op1487 : List WordIR.Op := [.badd 1402 1498]
def bytes1487 : Bytes := ("    let r000005e7: u32 = r0000057a.wrapping_add(r000005da);\n" : String).toByteArray.data.toList
theorem checked1487 : bytes1487=statementBytes 1511 (op1487.map lower) ∧ bytes1487.length=60 := by core033_kernel_decide
def op1488 : List WordIR.Op := [.rotr 1511 6]
def bytes1488 : Bytes := ("    let r000005e8: u32 = r000005e7.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1488 : bytes1488=statementBytes 1512 (op1488.map lower) ∧ bytes1488.length=65 := by core033_kernel_decide
def op1489 : List WordIR.Op := [.rotr 1511 11]
def bytes1489 : Bytes := ("    let r000005e9: u32 = r000005e7.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1489 : bytes1489=statementBytes 1513 (op1489.map lower) ∧ bytes1489.length=65 := by core033_kernel_decide
def op1490 : List WordIR.Op := [.bxor 1512 1513]
def bytes1490 : Bytes := ("    let r000005ea: u32 = r000005e8 ^ r000005e9;\n" : String).toByteArray.data.toList
theorem checked1490 : bytes1490=statementBytes 1514 (op1490.map lower) ∧ bytes1490.length=48 := by core033_kernel_decide
def op1491 : List WordIR.Op := [.rotr 1511 25]
def bytes1491 : Bytes := ("    let r000005eb: u32 = r000005e7.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1491 : bytes1491=statementBytes 1515 (op1491.map lower) ∧ bytes1491.length=65 := by core033_kernel_decide
def op1492 : List WordIR.Op := [.bxor 1514 1515]
def bytes1492 : Bytes := ("    let r000005ec: u32 = r000005ea ^ r000005eb;\n" : String).toByteArray.data.toList
theorem checked1492 : bytes1492=statementBytes 1516 (op1492.map lower) ∧ bytes1492.length=48 := by core033_kernel_decide
def op1493 : List WordIR.Op := [.badd 1430 1516]
def bytes1493 : Bytes := ("    let r000005ed: u32 = r00000596.wrapping_add(r000005ec);\n" : String).toByteArray.data.toList
theorem checked1493 : bytes1493=statementBytes 1517 (op1493.map lower) ∧ bytes1493.length=60 := by core033_kernel_decide
def op1494 : List WordIR.Op := [.band 1511 1484]
def bytes1494 : Bytes := ("    let r000005ee: u32 = r000005e7 & r000005cc;\n" : String).toByteArray.data.toList
theorem checked1494 : bytes1494=statementBytes 1518 (op1494.map lower) ∧ bytes1494.length=48 := by core033_kernel_decide
def op1495 : List WordIR.Op := [.bnot 1511]
def bytes1495 : Bytes := ("    let r000005ef: u32 = !r000005e7;\n" : String).toByteArray.data.toList
theorem checked1495 : bytes1495=statementBytes 1519 (op1495.map lower) ∧ bytes1495.length=37 := by core033_kernel_decide
def op1496 : List WordIR.Op := [.band 1519 1457]
def bytes1496 : Bytes := ("    let r000005f0: u32 = r000005ef & r000005b1;\n" : String).toByteArray.data.toList
theorem checked1496 : bytes1496=statementBytes 1520 (op1496.map lower) ∧ bytes1496.length=48 := by core033_kernel_decide
def op1497 : List WordIR.Op := [.bxor 1518 1520]
def bytes1497 : Bytes := ("    let r000005f1: u32 = r000005ee ^ r000005f0;\n" : String).toByteArray.data.toList
theorem checked1497 : bytes1497=statementBytes 1521 (op1497.map lower) ∧ bytes1497.length=48 := by core033_kernel_decide
def op1498 : List WordIR.Op := [.badd 1517 1521]
def bytes1498 : Bytes := ("    let r000005f2: u32 = r000005ed.wrapping_add(r000005f1);\n" : String).toByteArray.data.toList
theorem checked1498 : bytes1498=statementBytes 1522 (op1498.map lower) ∧ bytes1498.length=60 := by core033_kernel_decide
def op1499 : List WordIR.Op := [.literal (BitVec.ofNat 32 666307205)]
def bytes1499 : Bytes := ("    let r000005f3: u32 = 0x27b70a85_u32;\n" : String).toByteArray.data.toList
theorem checked1499 : bytes1499=statementBytes 1523 (op1499.map lower) ∧ bytes1499.length=41 := by core033_kernel_decide
def op1500 : List WordIR.Op := [.badd 1522 1523]
def bytes1500 : Bytes := ("    let r000005f4: u32 = r000005f2.wrapping_add(r000005f3);\n" : String).toByteArray.data.toList
theorem checked1500 : bytes1500=statementBytes 1524 (op1500.map lower) ∧ bytes1500.length=60 := by core033_kernel_decide
def op1501 : List WordIR.Op := [.badd 1524 244]
def bytes1501 : Bytes := ("    let r000005f5: u32 = r000005f4.wrapping_add(r000000f4);\n" : String).toByteArray.data.toList
theorem checked1501 : bytes1501=statementBytes 1525 (op1501.map lower) ∧ bytes1501.length=60 := by core033_kernel_decide
def op1502 : List WordIR.Op := [.rotr 1510 2]
def bytes1502 : Bytes := ("    let r000005f6: u32 = r000005e6.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1502 : bytes1502=statementBytes 1526 (op1502.map lower) ∧ bytes1502.length=65 := by core033_kernel_decide
def op1503 : List WordIR.Op := [.rotr 1510 13]
def bytes1503 : Bytes := ("    let r000005f7: u32 = r000005e6.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1503 : bytes1503=statementBytes 1527 (op1503.map lower) ∧ bytes1503.length=65 := by core033_kernel_decide
def op1504 : List WordIR.Op := [.bxor 1526 1527]
def bytes1504 : Bytes := ("    let r000005f8: u32 = r000005f6 ^ r000005f7;\n" : String).toByteArray.data.toList
theorem checked1504 : bytes1504=statementBytes 1528 (op1504.map lower) ∧ bytes1504.length=48 := by core033_kernel_decide
def op1505 : List WordIR.Op := [.rotr 1510 22]
def bytes1505 : Bytes := ("    let r000005f9: u32 = r000005e6.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1505 : bytes1505=statementBytes 1529 (op1505.map lower) ∧ bytes1505.length=65 := by core033_kernel_decide
def op1506 : List WordIR.Op := [.bxor 1528 1529]
def bytes1506 : Bytes := ("    let r000005fa: u32 = r000005f8 ^ r000005f9;\n" : String).toByteArray.data.toList
theorem checked1506 : bytes1506=statementBytes 1530 (op1506.map lower) ∧ bytes1506.length=48 := by core033_kernel_decide
def op1507 : List WordIR.Op := [.band 1510 1483]
def bytes1507 : Bytes := ("    let r000005fb: u32 = r000005e6 & r000005cb;\n" : String).toByteArray.data.toList
theorem checked1507 : bytes1507=statementBytes 1531 (op1507.map lower) ∧ bytes1507.length=48 := by core033_kernel_decide
def op1508 : List WordIR.Op := [.band 1510 1456]
def bytes1508 : Bytes := ("    let r000005fc: u32 = r000005e6 & r000005b0;\n" : String).toByteArray.data.toList
theorem checked1508 : bytes1508=statementBytes 1532 (op1508.map lower) ∧ bytes1508.length=48 := by core033_kernel_decide
def op1509 : List WordIR.Op := [.bxor 1531 1532]
def bytes1509 : Bytes := ("    let r000005fd: u32 = r000005fb ^ r000005fc;\n" : String).toByteArray.data.toList
theorem checked1509 : bytes1509=statementBytes 1533 (op1509.map lower) ∧ bytes1509.length=48 := by core033_kernel_decide
def op1510 : List WordIR.Op := [.band 1483 1456]
def bytes1510 : Bytes := ("    let r000005fe: u32 = r000005cb & r000005b0;\n" : String).toByteArray.data.toList
theorem checked1510 : bytes1510=statementBytes 1534 (op1510.map lower) ∧ bytes1510.length=48 := by core033_kernel_decide
def op1511 : List WordIR.Op := [.bxor 1533 1534]
def bytes1511 : Bytes := ("    let r000005ff: u32 = r000005fd ^ r000005fe;\n" : String).toByteArray.data.toList
theorem checked1511 : bytes1511=statementBytes 1535 (op1511.map lower) ∧ bytes1511.length=48 := by core033_kernel_decide
def op1512 : List WordIR.Op := [.badd 1530 1535]
def bytes1512 : Bytes := ("    let r00000600: u32 = r000005fa.wrapping_add(r000005ff);\n" : String).toByteArray.data.toList
theorem checked1512 : bytes1512=statementBytes 1536 (op1512.map lower) ∧ bytes1512.length=60 := by core033_kernel_decide
def op1513 : List WordIR.Op := [.badd 1525 1536]
def bytes1513 : Bytes := ("    let r00000601: u32 = r000005f5.wrapping_add(r00000600);\n" : String).toByteArray.data.toList
theorem checked1513 : bytes1513=statementBytes 1537 (op1513.map lower) ∧ bytes1513.length=60 := by core033_kernel_decide
def op1514 : List WordIR.Op := [.badd 1429 1525]
def bytes1514 : Bytes := ("    let r00000602: u32 = r00000595.wrapping_add(r000005f5);\n" : String).toByteArray.data.toList
theorem checked1514 : bytes1514=statementBytes 1538 (op1514.map lower) ∧ bytes1514.length=60 := by core033_kernel_decide
def op1515 : List WordIR.Op := [.rotr 1538 6]
def bytes1515 : Bytes := ("    let r00000603: u32 = r00000602.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1515 : bytes1515=statementBytes 1539 (op1515.map lower) ∧ bytes1515.length=65 := by core033_kernel_decide
def op1516 : List WordIR.Op := [.rotr 1538 11]
def bytes1516 : Bytes := ("    let r00000604: u32 = r00000602.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1516 : bytes1516=statementBytes 1540 (op1516.map lower) ∧ bytes1516.length=65 := by core033_kernel_decide
def op1517 : List WordIR.Op := [.bxor 1539 1540]
def bytes1517 : Bytes := ("    let r00000605: u32 = r00000603 ^ r00000604;\n" : String).toByteArray.data.toList
theorem checked1517 : bytes1517=statementBytes 1541 (op1517.map lower) ∧ bytes1517.length=48 := by core033_kernel_decide
def op1518 : List WordIR.Op := [.rotr 1538 25]
def bytes1518 : Bytes := ("    let r00000606: u32 = r00000602.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1518 : bytes1518=statementBytes 1542 (op1518.map lower) ∧ bytes1518.length=65 := by core033_kernel_decide
def op1519 : List WordIR.Op := [.bxor 1541 1542]
def bytes1519 : Bytes := ("    let r00000607: u32 = r00000605 ^ r00000606;\n" : String).toByteArray.data.toList
theorem checked1519 : bytes1519=statementBytes 1543 (op1519.map lower) ∧ bytes1519.length=48 := by core033_kernel_decide
def op1520 : List WordIR.Op := [.badd 1457 1543]
def bytes1520 : Bytes := ("    let r00000608: u32 = r000005b1.wrapping_add(r00000607);\n" : String).toByteArray.data.toList
theorem checked1520 : bytes1520=statementBytes 1544 (op1520.map lower) ∧ bytes1520.length=60 := by core033_kernel_decide
def op1521 : List WordIR.Op := [.band 1538 1511]
def bytes1521 : Bytes := ("    let r00000609: u32 = r00000602 & r000005e7;\n" : String).toByteArray.data.toList
theorem checked1521 : bytes1521=statementBytes 1545 (op1521.map lower) ∧ bytes1521.length=48 := by core033_kernel_decide
def op1522 : List WordIR.Op := [.bnot 1538]
def bytes1522 : Bytes := ("    let r0000060a: u32 = !r00000602;\n" : String).toByteArray.data.toList
theorem checked1522 : bytes1522=statementBytes 1546 (op1522.map lower) ∧ bytes1522.length=37 := by core033_kernel_decide
def op1523 : List WordIR.Op := [.band 1546 1484]
def bytes1523 : Bytes := ("    let r0000060b: u32 = r0000060a & r000005cc;\n" : String).toByteArray.data.toList
theorem checked1523 : bytes1523=statementBytes 1547 (op1523.map lower) ∧ bytes1523.length=48 := by core033_kernel_decide
def op1524 : List WordIR.Op := [.bxor 1545 1547]
def bytes1524 : Bytes := ("    let r0000060c: u32 = r00000609 ^ r0000060b;\n" : String).toByteArray.data.toList
theorem checked1524 : bytes1524=statementBytes 1548 (op1524.map lower) ∧ bytes1524.length=48 := by core033_kernel_decide
def op1525 : List WordIR.Op := [.badd 1544 1548]
def bytes1525 : Bytes := ("    let r0000060d: u32 = r00000608.wrapping_add(r0000060c);\n" : String).toByteArray.data.toList
theorem checked1525 : bytes1525=statementBytes 1549 (op1525.map lower) ∧ bytes1525.length=60 := by core033_kernel_decide
def op1526 : List WordIR.Op := [.literal (BitVec.ofNat 32 773529912)]
def bytes1526 : Bytes := ("    let r0000060e: u32 = 0x2e1b2138_u32;\n" : String).toByteArray.data.toList
theorem checked1526 : bytes1526=statementBytes 1550 (op1526.map lower) ∧ bytes1526.length=41 := by core033_kernel_decide
def op1527 : List WordIR.Op := [.badd 1549 1550]
def bytes1527 : Bytes := ("    let r0000060f: u32 = r0000060d.wrapping_add(r0000060e);\n" : String).toByteArray.data.toList
theorem checked1527 : bytes1527=statementBytes 1551 (op1527.map lower) ∧ bytes1527.length=60 := by core033_kernel_decide
def op1528 : List WordIR.Op := [.badd 1551 257]
def bytes1528 : Bytes := ("    let r00000610: u32 = r0000060f.wrapping_add(r00000101);\n" : String).toByteArray.data.toList
theorem checked1528 : bytes1528=statementBytes 1552 (op1528.map lower) ∧ bytes1528.length=60 := by core033_kernel_decide
def op1529 : List WordIR.Op := [.rotr 1537 2]
def bytes1529 : Bytes := ("    let r00000611: u32 = r00000601.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1529 : bytes1529=statementBytes 1553 (op1529.map lower) ∧ bytes1529.length=65 := by core033_kernel_decide
def op1530 : List WordIR.Op := [.rotr 1537 13]
def bytes1530 : Bytes := ("    let r00000612: u32 = r00000601.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1530 : bytes1530=statementBytes 1554 (op1530.map lower) ∧ bytes1530.length=65 := by core033_kernel_decide
def op1531 : List WordIR.Op := [.bxor 1553 1554]
def bytes1531 : Bytes := ("    let r00000613: u32 = r00000611 ^ r00000612;\n" : String).toByteArray.data.toList
theorem checked1531 : bytes1531=statementBytes 1555 (op1531.map lower) ∧ bytes1531.length=48 := by core033_kernel_decide
def op1532 : List WordIR.Op := [.rotr 1537 22]
def bytes1532 : Bytes := ("    let r00000614: u32 = r00000601.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1532 : bytes1532=statementBytes 1556 (op1532.map lower) ∧ bytes1532.length=65 := by core033_kernel_decide
def op1533 : List WordIR.Op := [.bxor 1555 1556]
def bytes1533 : Bytes := ("    let r00000615: u32 = r00000613 ^ r00000614;\n" : String).toByteArray.data.toList
theorem checked1533 : bytes1533=statementBytes 1557 (op1533.map lower) ∧ bytes1533.length=48 := by core033_kernel_decide
def op1534 : List WordIR.Op := [.band 1537 1510]
def bytes1534 : Bytes := ("    let r00000616: u32 = r00000601 & r000005e6;\n" : String).toByteArray.data.toList
theorem checked1534 : bytes1534=statementBytes 1558 (op1534.map lower) ∧ bytes1534.length=48 := by core033_kernel_decide
def op1535 : List WordIR.Op := [.band 1537 1483]
def bytes1535 : Bytes := ("    let r00000617: u32 = r00000601 & r000005cb;\n" : String).toByteArray.data.toList
theorem checked1535 : bytes1535=statementBytes 1559 (op1535.map lower) ∧ bytes1535.length=48 := by core033_kernel_decide
def innerBlocks23 : List (List WordIR.Op) := [op1472,op1473,op1474,op1475,op1476,op1477,op1478,op1479,op1480,op1481,op1482,op1483,op1484,op1485,op1486,op1487,op1488,op1489,op1490,op1491,op1492,op1493,op1494,op1495,op1496,op1497,op1498,op1499,op1500,op1501,op1502,op1503,op1504,op1505,op1506,op1507,op1508,op1509,op1510,op1511,op1512,op1513,op1514,op1515,op1516,op1517,op1518,op1519,op1520,op1521,op1522,op1523,op1524,op1525,op1526,op1527,op1528,op1529,op1530,op1531,op1532,op1533,op1534,op1535]
def innerBytes23 : List Bytes := [bytes1472,bytes1473,bytes1474,bytes1475,bytes1476,bytes1477,bytes1478,bytes1479,bytes1480,bytes1481,bytes1482,bytes1483,bytes1484,bytes1485,bytes1486,bytes1487,bytes1488,bytes1489,bytes1490,bytes1491,bytes1492,bytes1493,bytes1494,bytes1495,bytes1496,bytes1497,bytes1498,bytes1499,bytes1500,bytes1501,bytes1502,bytes1503,bytes1504,bytes1505,bytes1506,bytes1507,bytes1508,bytes1509,bytes1510,bytes1511,bytes1512,bytes1513,bytes1514,bytes1515,bytes1516,bytes1517,bytes1518,bytes1519,bytes1520,bytes1521,bytes1522,bytes1523,bytes1524,bytes1525,bytes1526,bytes1527,bytes1528,bytes1529,bytes1530,bytes1531,bytes1532,bytes1533,bytes1534,bytes1535]
def partOps23 : List WordIR.Op := innerBlocks23.flatten
def partBytes23 : Bytes := innerBytes23.flatten
theorem partChain23 : BlockChain 1496 innerBlocks23 innerBytes23 := by
  unfold innerBlocks23 innerBytes23
  exact (.cons _ _ _ _ _ checked1472.1 (.cons _ _ _ _ _ checked1473.1 (.cons _ _ _ _ _ checked1474.1 (.cons _ _ _ _ _ checked1475.1 (.cons _ _ _ _ _ checked1476.1 (.cons _ _ _ _ _ checked1477.1 (.cons _ _ _ _ _ checked1478.1 (.cons _ _ _ _ _ checked1479.1 (.cons _ _ _ _ _ checked1480.1 (.cons _ _ _ _ _ checked1481.1 (.cons _ _ _ _ _ checked1482.1 (.cons _ _ _ _ _ checked1483.1 (.cons _ _ _ _ _ checked1484.1 (.cons _ _ _ _ _ checked1485.1 (.cons _ _ _ _ _ checked1486.1 (.cons _ _ _ _ _ checked1487.1 (.cons _ _ _ _ _ checked1488.1 (.cons _ _ _ _ _ checked1489.1 (.cons _ _ _ _ _ checked1490.1 (.cons _ _ _ _ _ checked1491.1 (.cons _ _ _ _ _ checked1492.1 (.cons _ _ _ _ _ checked1493.1 (.cons _ _ _ _ _ checked1494.1 (.cons _ _ _ _ _ checked1495.1 (.cons _ _ _ _ _ checked1496.1 (.cons _ _ _ _ _ checked1497.1 (.cons _ _ _ _ _ checked1498.1 (.cons _ _ _ _ _ checked1499.1 (.cons _ _ _ _ _ checked1500.1 (.cons _ _ _ _ _ checked1501.1 (.cons _ _ _ _ _ checked1502.1 (.cons _ _ _ _ _ checked1503.1 (.cons _ _ _ _ _ checked1504.1 (.cons _ _ _ _ _ checked1505.1 (.cons _ _ _ _ _ checked1506.1 (.cons _ _ _ _ _ checked1507.1 (.cons _ _ _ _ _ checked1508.1 (.cons _ _ _ _ _ checked1509.1 (.cons _ _ _ _ _ checked1510.1 (.cons _ _ _ _ _ checked1511.1 (.cons _ _ _ _ _ checked1512.1 (.cons _ _ _ _ _ checked1513.1 (.cons _ _ _ _ _ checked1514.1 (.cons _ _ _ _ _ checked1515.1 (.cons _ _ _ _ _ checked1516.1 (.cons _ _ _ _ _ checked1517.1 (.cons _ _ _ _ _ checked1518.1 (.cons _ _ _ _ _ checked1519.1 (.cons _ _ _ _ _ checked1520.1 (.cons _ _ _ _ _ checked1521.1 (.cons _ _ _ _ _ checked1522.1 (.cons _ _ _ _ _ checked1523.1 (.cons _ _ _ _ _ checked1524.1 (.cons _ _ _ _ _ checked1525.1 (.cons _ _ _ _ _ checked1526.1 (.cons _ _ _ _ _ checked1527.1 (.cons _ _ _ _ _ checked1528.1 (.cons _ _ _ _ _ checked1529.1 (.cons _ _ _ _ _ checked1530.1 (.cons _ _ _ _ _ checked1531.1 (.cons _ _ _ _ _ checked1532.1 (.cons _ _ _ _ _ checked1533.1 (.cons _ _ _ _ _ checked1534.1 (.cons _ _ _ _ _ checked1535.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked23 : partBytes23=statementBytes 1496 (partOps23.map lower) ∧ partBytes23.length=3476 := by
  constructor
  · exact (chain_exact partChain23).trans (body_exact innerBlocks23 1496)
  · simp only [partBytes23,WordSource.chunk_sizes_exact,innerBytes23,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1472.2,checked1473.2,checked1474.2,checked1475.2,checked1476.2,checked1477.2,checked1478.2,checked1479.2,checked1480.2,checked1481.2,checked1482.2,checked1483.2,checked1484.2,checked1485.2,checked1486.2,checked1487.2,checked1488.2,checked1489.2,checked1490.2,checked1491.2,checked1492.2,checked1493.2,checked1494.2,checked1495.2,checked1496.2,checked1497.2,checked1498.2,checked1499.2,checked1500.2,checked1501.2,checked1502.2,checked1503.2,checked1504.2,checked1505.2,checked1506.2,checked1507.2,checked1508.2,checked1509.2,checked1510.2,checked1511.2,checked1512.2,checked1513.2,checked1514.2,checked1515.2,checked1516.2,checked1517.2,checked1518.2,checked1519.2,checked1520.2,checked1521.2,checked1522.2,checked1523.2,checked1524.2,checked1525.2,checked1526.2,checked1527.2,checked1528.2,checked1529.2,checked1530.2,checked1531.2,checked1532.2,checked1533.2,checked1534.2,checked1535.2]
theorem partLength23 : partOps23.length=64 := by
  simp only [partOps23,innerBlocks23,op1472,op1473,op1474,op1475,op1476,op1477,op1478,op1479,op1480,op1481,op1482,op1483,op1484,op1485,op1486,op1487,op1488,op1489,op1490,op1491,op1492,op1493,op1494,op1495,op1496,op1497,op1498,op1499,op1500,op1501,op1502,op1503,op1504,op1505,op1506,op1507,op1508,op1509,op1510,op1511,op1512,op1513,op1514,op1515,op1516,op1517,op1518,op1519,op1520,op1521,op1522,op1523,op1524,op1525,op1526,op1527,op1528,op1529,op1530,op1531,op1532,op1533,op1534,op1535,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
