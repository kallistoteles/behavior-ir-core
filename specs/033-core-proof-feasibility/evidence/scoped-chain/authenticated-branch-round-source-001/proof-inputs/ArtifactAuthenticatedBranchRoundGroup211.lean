import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup211
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13504 : List WordIR.Op := [.bxor 13619 13621]
def bytes13504 : Bytes := ("    let r00003536: u32 = r00003533 ^ r00003535;\n" : String).toByteArray.data.toList
theorem checked13504 : bytes13504=statementBytes 13622 (op13504.map lower) ∧ bytes13504.length=48 := by core033_kernel_decide
def op13505 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13505 : Bytes := ("    let r00003537: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13505 : bytes13505=statementBytes 13623 (op13505.map lower) ∧ bytes13505.length=41 := by core033_kernel_decide
def op13506 : List WordIR.Op := [.bxor 693 13623]
def bytes13506 : Bytes := ("    let r00003538: u32 = r000002b5 ^ r00003537;\n" : String).toByteArray.data.toList
theorem checked13506 : bytes13506=statementBytes 13624 (op13506.map lower) ∧ bytes13506.length=48 := by core033_kernel_decide
def op13507 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13507 : Bytes := ("    let r00003539: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13507 : bytes13507=statementBytes 13625 (op13507.map lower) ∧ bytes13507.length=41 := by core033_kernel_decide
def op13508 : List WordIR.Op := [.bnot 13625]
def bytes13508 : Bytes := ("    let r0000353a: u32 = !r00003539;\n" : String).toByteArray.data.toList
theorem checked13508 : bytes13508=statementBytes 13626 (op13508.map lower) ∧ bytes13508.length=37 := by core033_kernel_decide
def op13509 : List WordIR.Op := [.badd 13624 13626]
def bytes13509 : Bytes := ("    let r0000353b: u32 = r00003538.wrapping_add(r0000353a);\n" : String).toByteArray.data.toList
theorem checked13509 : bytes13509=statementBytes 13627 (op13509.map lower) ∧ bytes13509.length=60 := by core033_kernel_decide
def op13510 : List WordIR.Op := [.bnot 13627]
def bytes13510 : Bytes := ("    let r0000353c: u32 = !r0000353b;\n" : String).toByteArray.data.toList
theorem checked13510 : bytes13510=statementBytes 13628 (op13510.map lower) ∧ bytes13510.length=37 := by core033_kernel_decide
def op13511 : List WordIR.Op := [.band 13622 13628]
def bytes13511 : Bytes := ("    let r0000353d: u32 = r00003536 & r0000353c;\n" : String).toByteArray.data.toList
theorem checked13511 : bytes13511=statementBytes 13629 (op13511.map lower) ∧ bytes13511.length=48 := by core033_kernel_decide
def op13512 : List WordIR.Op := [.bxor 13617 13629]
def bytes13512 : Bytes := ("    let r0000353e: u32 = r00003531 ^ r0000353d;\n" : String).toByteArray.data.toList
theorem checked13512 : bytes13512=statementBytes 13630 (op13512.map lower) ∧ bytes13512.length=48 := by core033_kernel_decide
def op13513 : List WordIR.Op := [.shr 13630 31]
def bytes13513 : Bytes := ("    let r0000353f: u32 = r0000353e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13513 : bytes13513=statementBytes 13631 (op13513.map lower) ∧ bytes13513.length=54 := by core033_kernel_decide
def op13514 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13514 : Bytes := ("    let r00003540: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13514 : bytes13514=statementBytes 13632 (op13514.map lower) ∧ bytes13514.length=41 := by core033_kernel_decide
def op13515 : List WordIR.Op := [.bxor 13631 13632]
def bytes13515 : Bytes := ("    let r00003541: u32 = r0000353f ^ r00003540;\n" : String).toByteArray.data.toList
theorem checked13515 : bytes13515=statementBytes 13633 (op13515.map lower) ∧ bytes13515.length=48 := by core033_kernel_decide
def op13516 : List WordIR.Op := [.bnot 13633]
def bytes13516 : Bytes := ("    let r00003542: u32 = !r00003541;\n" : String).toByteArray.data.toList
theorem checked13516 : bytes13516=statementBytes 13634 (op13516.map lower) ∧ bytes13516.length=37 := by core033_kernel_decide
def op13517 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13517 : Bytes := ("    let r00003543: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13517 : bytes13517=statementBytes 13635 (op13517.map lower) ∧ bytes13517.length=41 := by core033_kernel_decide
def op13518 : List WordIR.Op := [.badd 13634 13635]
def bytes13518 : Bytes := ("    let r00003544: u32 = r00003542.wrapping_add(r00003543);\n" : String).toByteArray.data.toList
theorem checked13518 : bytes13518=statementBytes 13636 (op13518.map lower) ∧ bytes13518.length=60 := by core033_kernel_decide
def op13519 : List WordIR.Op := [.band 13636 11082]
def bytes13519 : Bytes := ("    let r00003545: u32 = r00003544 & r00002b4a;\n" : String).toByteArray.data.toList
theorem checked13519 : bytes13519=statementBytes 13637 (op13519.map lower) ∧ bytes13519.length=48 := by core033_kernel_decide
def op13520 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13520 : Bytes := ("    let r00003546: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13520 : bytes13520=statementBytes 13638 (op13520.map lower) ∧ bytes13520.length=41 := by core033_kernel_decide
def op13521 : List WordIR.Op := [.bxor 693 13638]
def bytes13521 : Bytes := ("    let r00003547: u32 = r000002b5 ^ r00003546;\n" : String).toByteArray.data.toList
theorem checked13521 : bytes13521=statementBytes 13639 (op13521.map lower) ∧ bytes13521.length=48 := by core033_kernel_decide
def op13522 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13522 : Bytes := ("    let r00003548: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13522 : bytes13522=statementBytes 13640 (op13522.map lower) ∧ bytes13522.length=41 := by core033_kernel_decide
def op13523 : List WordIR.Op := [.bnot 13640]
def bytes13523 : Bytes := ("    let r00003549: u32 = !r00003548;\n" : String).toByteArray.data.toList
theorem checked13523 : bytes13523=statementBytes 13641 (op13523.map lower) ∧ bytes13523.length=37 := by core033_kernel_decide
def op13524 : List WordIR.Op := [.band 13639 13641]
def bytes13524 : Bytes := ("    let r0000354a: u32 = r00003547 & r00003549;\n" : String).toByteArray.data.toList
theorem checked13524 : bytes13524=statementBytes 13642 (op13524.map lower) ∧ bytes13524.length=48 := by core033_kernel_decide
def op13525 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13525 : Bytes := ("    let r0000354b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13525 : bytes13525=statementBytes 13643 (op13525.map lower) ∧ bytes13525.length=41 := by core033_kernel_decide
def op13526 : List WordIR.Op := [.bxor 693 13643]
def bytes13526 : Bytes := ("    let r0000354c: u32 = r000002b5 ^ r0000354b;\n" : String).toByteArray.data.toList
theorem checked13526 : bytes13526=statementBytes 13644 (op13526.map lower) ∧ bytes13526.length=48 := by core033_kernel_decide
def op13527 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13527 : Bytes := ("    let r0000354d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13527 : bytes13527=statementBytes 13645 (op13527.map lower) ∧ bytes13527.length=41 := by core033_kernel_decide
def op13528 : List WordIR.Op := [.bnot 13645]
def bytes13528 : Bytes := ("    let r0000354e: u32 = !r0000354d;\n" : String).toByteArray.data.toList
theorem checked13528 : bytes13528=statementBytes 13646 (op13528.map lower) ∧ bytes13528.length=37 := by core033_kernel_decide
def op13529 : List WordIR.Op := [.bxor 13644 13646]
def bytes13529 : Bytes := ("    let r0000354f: u32 = r0000354c ^ r0000354e;\n" : String).toByteArray.data.toList
theorem checked13529 : bytes13529=statementBytes 13647 (op13529.map lower) ∧ bytes13529.length=48 := by core033_kernel_decide
def op13530 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13530 : Bytes := ("    let r00003550: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13530 : bytes13530=statementBytes 13648 (op13530.map lower) ∧ bytes13530.length=41 := by core033_kernel_decide
def op13531 : List WordIR.Op := [.bxor 693 13648]
def bytes13531 : Bytes := ("    let r00003551: u32 = r000002b5 ^ r00003550;\n" : String).toByteArray.data.toList
theorem checked13531 : bytes13531=statementBytes 13649 (op13531.map lower) ∧ bytes13531.length=48 := by core033_kernel_decide
def op13532 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13532 : Bytes := ("    let r00003552: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13532 : bytes13532=statementBytes 13650 (op13532.map lower) ∧ bytes13532.length=41 := by core033_kernel_decide
def op13533 : List WordIR.Op := [.bnot 13650]
def bytes13533 : Bytes := ("    let r00003553: u32 = !r00003552;\n" : String).toByteArray.data.toList
theorem checked13533 : bytes13533=statementBytes 13651 (op13533.map lower) ∧ bytes13533.length=37 := by core033_kernel_decide
def op13534 : List WordIR.Op := [.badd 13649 13651]
def bytes13534 : Bytes := ("    let r00003554: u32 = r00003551.wrapping_add(r00003553);\n" : String).toByteArray.data.toList
theorem checked13534 : bytes13534=statementBytes 13652 (op13534.map lower) ∧ bytes13534.length=60 := by core033_kernel_decide
def op13535 : List WordIR.Op := [.bnot 13652]
def bytes13535 : Bytes := ("    let r00003555: u32 = !r00003554;\n" : String).toByteArray.data.toList
theorem checked13535 : bytes13535=statementBytes 13653 (op13535.map lower) ∧ bytes13535.length=37 := by core033_kernel_decide
def op13536 : List WordIR.Op := [.band 13647 13653]
def bytes13536 : Bytes := ("    let r00003556: u32 = r0000354f & r00003555;\n" : String).toByteArray.data.toList
theorem checked13536 : bytes13536=statementBytes 13654 (op13536.map lower) ∧ bytes13536.length=48 := by core033_kernel_decide
def op13537 : List WordIR.Op := [.bxor 13642 13654]
def bytes13537 : Bytes := ("    let r00003557: u32 = r0000354a ^ r00003556;\n" : String).toByteArray.data.toList
theorem checked13537 : bytes13537=statementBytes 13655 (op13537.map lower) ∧ bytes13537.length=48 := by core033_kernel_decide
def op13538 : List WordIR.Op := [.shr 13655 31]
def bytes13538 : Bytes := ("    let r00003558: u32 = r00003557 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13538 : bytes13538=statementBytes 13656 (op13538.map lower) ∧ bytes13538.length=54 := by core033_kernel_decide
def op13539 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13539 : Bytes := ("    let r00003559: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13539 : bytes13539=statementBytes 13657 (op13539.map lower) ∧ bytes13539.length=41 := by core033_kernel_decide
def op13540 : List WordIR.Op := [.bxor 13656 13657]
def bytes13540 : Bytes := ("    let r0000355a: u32 = r00003558 ^ r00003559;\n" : String).toByteArray.data.toList
theorem checked13540 : bytes13540=statementBytes 13658 (op13540.map lower) ∧ bytes13540.length=48 := by core033_kernel_decide
def op13541 : List WordIR.Op := [.bnot 13658]
def bytes13541 : Bytes := ("    let r0000355b: u32 = !r0000355a;\n" : String).toByteArray.data.toList
theorem checked13541 : bytes13541=statementBytes 13659 (op13541.map lower) ∧ bytes13541.length=37 := by core033_kernel_decide
def op13542 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13542 : Bytes := ("    let r0000355c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13542 : bytes13542=statementBytes 13660 (op13542.map lower) ∧ bytes13542.length=41 := by core033_kernel_decide
def op13543 : List WordIR.Op := [.badd 13659 13660]
def bytes13543 : Bytes := ("    let r0000355d: u32 = r0000355b.wrapping_add(r0000355c);\n" : String).toByteArray.data.toList
theorem checked13543 : bytes13543=statementBytes 13661 (op13543.map lower) ∧ bytes13543.length=60 := by core033_kernel_decide
def op13544 : List WordIR.Op := [.bnot 13661]
def bytes13544 : Bytes := ("    let r0000355e: u32 = !r0000355d;\n" : String).toByteArray.data.toList
theorem checked13544 : bytes13544=statementBytes 13662 (op13544.map lower) ∧ bytes13544.length=37 := by core033_kernel_decide
def op13545 : List WordIR.Op := [.band 13662 10491]
def bytes13545 : Bytes := ("    let r0000355f: u32 = r0000355e & r000028fb;\n" : String).toByteArray.data.toList
theorem checked13545 : bytes13545=statementBytes 13663 (op13545.map lower) ∧ bytes13545.length=48 := by core033_kernel_decide
def op13546 : List WordIR.Op := [.bxor 13637 13663]
def bytes13546 : Bytes := ("    let r00003560: u32 = r00003545 ^ r0000355f;\n" : String).toByteArray.data.toList
theorem checked13546 : bytes13546=statementBytes 13664 (op13546.map lower) ∧ bytes13546.length=48 := by core033_kernel_decide
def op13547 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13547 : Bytes := ("    let r00003561: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13547 : bytes13547=statementBytes 13665 (op13547.map lower) ∧ bytes13547.length=41 := by core033_kernel_decide
def op13548 : List WordIR.Op := [.bxor 693 13665]
def bytes13548 : Bytes := ("    let r00003562: u32 = r000002b5 ^ r00003561;\n" : String).toByteArray.data.toList
theorem checked13548 : bytes13548=statementBytes 13666 (op13548.map lower) ∧ bytes13548.length=48 := by core033_kernel_decide
def op13549 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13549 : Bytes := ("    let r00003563: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13549 : bytes13549=statementBytes 13667 (op13549.map lower) ∧ bytes13549.length=41 := by core033_kernel_decide
def op13550 : List WordIR.Op := [.bnot 13667]
def bytes13550 : Bytes := ("    let r00003564: u32 = !r00003563;\n" : String).toByteArray.data.toList
theorem checked13550 : bytes13550=statementBytes 13668 (op13550.map lower) ∧ bytes13550.length=37 := by core033_kernel_decide
def op13551 : List WordIR.Op := [.band 13666 13668]
def bytes13551 : Bytes := ("    let r00003565: u32 = r00003562 & r00003564;\n" : String).toByteArray.data.toList
theorem checked13551 : bytes13551=statementBytes 13669 (op13551.map lower) ∧ bytes13551.length=48 := by core033_kernel_decide
def op13552 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13552 : Bytes := ("    let r00003566: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13552 : bytes13552=statementBytes 13670 (op13552.map lower) ∧ bytes13552.length=41 := by core033_kernel_decide
def op13553 : List WordIR.Op := [.bxor 693 13670]
def bytes13553 : Bytes := ("    let r00003567: u32 = r000002b5 ^ r00003566;\n" : String).toByteArray.data.toList
theorem checked13553 : bytes13553=statementBytes 13671 (op13553.map lower) ∧ bytes13553.length=48 := by core033_kernel_decide
def op13554 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13554 : Bytes := ("    let r00003568: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13554 : bytes13554=statementBytes 13672 (op13554.map lower) ∧ bytes13554.length=41 := by core033_kernel_decide
def op13555 : List WordIR.Op := [.bnot 13672]
def bytes13555 : Bytes := ("    let r00003569: u32 = !r00003568;\n" : String).toByteArray.data.toList
theorem checked13555 : bytes13555=statementBytes 13673 (op13555.map lower) ∧ bytes13555.length=37 := by core033_kernel_decide
def op13556 : List WordIR.Op := [.bxor 13671 13673]
def bytes13556 : Bytes := ("    let r0000356a: u32 = r00003567 ^ r00003569;\n" : String).toByteArray.data.toList
theorem checked13556 : bytes13556=statementBytes 13674 (op13556.map lower) ∧ bytes13556.length=48 := by core033_kernel_decide
def op13557 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13557 : Bytes := ("    let r0000356b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13557 : bytes13557=statementBytes 13675 (op13557.map lower) ∧ bytes13557.length=41 := by core033_kernel_decide
def op13558 : List WordIR.Op := [.bxor 693 13675]
def bytes13558 : Bytes := ("    let r0000356c: u32 = r000002b5 ^ r0000356b;\n" : String).toByteArray.data.toList
theorem checked13558 : bytes13558=statementBytes 13676 (op13558.map lower) ∧ bytes13558.length=48 := by core033_kernel_decide
def op13559 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13559 : Bytes := ("    let r0000356d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13559 : bytes13559=statementBytes 13677 (op13559.map lower) ∧ bytes13559.length=41 := by core033_kernel_decide
def op13560 : List WordIR.Op := [.bnot 13677]
def bytes13560 : Bytes := ("    let r0000356e: u32 = !r0000356d;\n" : String).toByteArray.data.toList
theorem checked13560 : bytes13560=statementBytes 13678 (op13560.map lower) ∧ bytes13560.length=37 := by core033_kernel_decide
def op13561 : List WordIR.Op := [.badd 13676 13678]
def bytes13561 : Bytes := ("    let r0000356f: u32 = r0000356c.wrapping_add(r0000356e);\n" : String).toByteArray.data.toList
theorem checked13561 : bytes13561=statementBytes 13679 (op13561.map lower) ∧ bytes13561.length=60 := by core033_kernel_decide
def op13562 : List WordIR.Op := [.bnot 13679]
def bytes13562 : Bytes := ("    let r00003570: u32 = !r0000356f;\n" : String).toByteArray.data.toList
theorem checked13562 : bytes13562=statementBytes 13680 (op13562.map lower) ∧ bytes13562.length=37 := by core033_kernel_decide
def op13563 : List WordIR.Op := [.band 13674 13680]
def bytes13563 : Bytes := ("    let r00003571: u32 = r0000356a & r00003570;\n" : String).toByteArray.data.toList
theorem checked13563 : bytes13563=statementBytes 13681 (op13563.map lower) ∧ bytes13563.length=48 := by core033_kernel_decide
def op13564 : List WordIR.Op := [.bxor 13669 13681]
def bytes13564 : Bytes := ("    let r00003572: u32 = r00003565 ^ r00003571;\n" : String).toByteArray.data.toList
theorem checked13564 : bytes13564=statementBytes 13682 (op13564.map lower) ∧ bytes13564.length=48 := by core033_kernel_decide
def op13565 : List WordIR.Op := [.shr 13682 31]
def bytes13565 : Bytes := ("    let r00003573: u32 = r00003572 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13565 : bytes13565=statementBytes 13683 (op13565.map lower) ∧ bytes13565.length=54 := by core033_kernel_decide
def op13566 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13566 : Bytes := ("    let r00003574: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13566 : bytes13566=statementBytes 13684 (op13566.map lower) ∧ bytes13566.length=41 := by core033_kernel_decide
def op13567 : List WordIR.Op := [.bxor 13683 13684]
def bytes13567 : Bytes := ("    let r00003575: u32 = r00003573 ^ r00003574;\n" : String).toByteArray.data.toList
theorem checked13567 : bytes13567=statementBytes 13685 (op13567.map lower) ∧ bytes13567.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13504,op13505,op13506,op13507,op13508,op13509,op13510,op13511,op13512,op13513,op13514,op13515,op13516,op13517,op13518,op13519,op13520,op13521,op13522,op13523,op13524,op13525,op13526,op13527,op13528,op13529,op13530,op13531,op13532,op13533,op13534,op13535,op13536,op13537,op13538,op13539,op13540,op13541,op13542,op13543,op13544,op13545,op13546,op13547,op13548,op13549,op13550,op13551,op13552,op13553,op13554,op13555,op13556,op13557,op13558,op13559,op13560,op13561,op13562,op13563,op13564,op13565,op13566,op13567]
def chunks : List Bytes := [bytes13504,bytes13505,bytes13506,bytes13507,bytes13508,bytes13509,bytes13510,bytes13511,bytes13512,bytes13513,bytes13514,bytes13515,bytes13516,bytes13517,bytes13518,bytes13519,bytes13520,bytes13521,bytes13522,bytes13523,bytes13524,bytes13525,bytes13526,bytes13527,bytes13528,bytes13529,bytes13530,bytes13531,bytes13532,bytes13533,bytes13534,bytes13535,bytes13536,bytes13537,bytes13538,bytes13539,bytes13540,bytes13541,bytes13542,bytes13543,bytes13544,bytes13545,bytes13546,bytes13547,bytes13548,bytes13549,bytes13550,bytes13551,bytes13552,bytes13553,bytes13554,bytes13555,bytes13556,bytes13557,bytes13558,bytes13559,bytes13560,bytes13561,bytes13562,bytes13563,bytes13564,bytes13565,bytes13566,bytes13567]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13622 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13504.1 (.cons _ _ _ _ _ checked13505.1 (.cons _ _ _ _ _ checked13506.1 (.cons _ _ _ _ _ checked13507.1 (.cons _ _ _ _ _ checked13508.1 (.cons _ _ _ _ _ checked13509.1 (.cons _ _ _ _ _ checked13510.1 (.cons _ _ _ _ _ checked13511.1 (.cons _ _ _ _ _ checked13512.1 (.cons _ _ _ _ _ checked13513.1 (.cons _ _ _ _ _ checked13514.1 (.cons _ _ _ _ _ checked13515.1 (.cons _ _ _ _ _ checked13516.1 (.cons _ _ _ _ _ checked13517.1 (.cons _ _ _ _ _ checked13518.1 (.cons _ _ _ _ _ checked13519.1 (.cons _ _ _ _ _ checked13520.1 (.cons _ _ _ _ _ checked13521.1 (.cons _ _ _ _ _ checked13522.1 (.cons _ _ _ _ _ checked13523.1 (.cons _ _ _ _ _ checked13524.1 (.cons _ _ _ _ _ checked13525.1 (.cons _ _ _ _ _ checked13526.1 (.cons _ _ _ _ _ checked13527.1 (.cons _ _ _ _ _ checked13528.1 (.cons _ _ _ _ _ checked13529.1 (.cons _ _ _ _ _ checked13530.1 (.cons _ _ _ _ _ checked13531.1 (.cons _ _ _ _ _ checked13532.1 (.cons _ _ _ _ _ checked13533.1 (.cons _ _ _ _ _ checked13534.1 (.cons _ _ _ _ _ checked13535.1 (.cons _ _ _ _ _ checked13536.1 (.cons _ _ _ _ _ checked13537.1 (.cons _ _ _ _ _ checked13538.1 (.cons _ _ _ _ _ checked13539.1 (.cons _ _ _ _ _ checked13540.1 (.cons _ _ _ _ _ checked13541.1 (.cons _ _ _ _ _ checked13542.1 (.cons _ _ _ _ _ checked13543.1 (.cons _ _ _ _ _ checked13544.1 (.cons _ _ _ _ _ checked13545.1 (.cons _ _ _ _ _ checked13546.1 (.cons _ _ _ _ _ checked13547.1 (.cons _ _ _ _ _ checked13548.1 (.cons _ _ _ _ _ checked13549.1 (.cons _ _ _ _ _ checked13550.1 (.cons _ _ _ _ _ checked13551.1 (.cons _ _ _ _ _ checked13552.1 (.cons _ _ _ _ _ checked13553.1 (.cons _ _ _ _ _ checked13554.1 (.cons _ _ _ _ _ checked13555.1 (.cons _ _ _ _ _ checked13556.1 (.cons _ _ _ _ _ checked13557.1 (.cons _ _ _ _ _ checked13558.1 (.cons _ _ _ _ _ checked13559.1 (.cons _ _ _ _ _ checked13560.1 (.cons _ _ _ _ _ checked13561.1 (.cons _ _ _ _ _ checked13562.1 (.cons _ _ _ _ _ checked13563.1 (.cons _ _ _ _ _ checked13564.1 (.cons _ _ _ _ _ checked13565.1 (.cons _ _ _ _ _ checked13566.1 (.cons _ _ _ _ _ checked13567.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13622 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2874 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13504.2,checked13505.2,checked13506.2,checked13507.2,checked13508.2,checked13509.2,checked13510.2,checked13511.2,checked13512.2,checked13513.2,checked13514.2,checked13515.2,checked13516.2,checked13517.2,checked13518.2,checked13519.2,checked13520.2,checked13521.2,checked13522.2,checked13523.2,checked13524.2,checked13525.2,checked13526.2,checked13527.2,checked13528.2,checked13529.2,checked13530.2,checked13531.2,checked13532.2,checked13533.2,checked13534.2,checked13535.2,checked13536.2,checked13537.2,checked13538.2,checked13539.2,checked13540.2,checked13541.2,checked13542.2,checked13543.2,checked13544.2,checked13545.2,checked13546.2,checked13547.2,checked13548.2,checked13549.2,checked13550.2,checked13551.2,checked13552.2,checked13553.2,checked13554.2,checked13555.2,checked13556.2,checked13557.2,checked13558.2,checked13559.2,checked13560.2,checked13561.2,checked13562.2,checked13563.2,checked13564.2,checked13565.2,checked13566.2,checked13567.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup211
