import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op576 : List WordIR.Op := [.bxor 598 599]
def bytes576 : Bytes := ("    let r00000258: u32 = r00000256 ^ r00000257;\n" : String).toByteArray.data.toList
theorem checked576 : bytes576=statementBytes 600 (op576.map lower) ∧ bytes576.length=48 := by core033_kernel_decide
def op577 : List WordIR.Op := [.badd 600 517]
def bytes577 : Bytes := ("    let r00000259: u32 = r00000258.wrapping_add(r00000205);\n" : String).toByteArray.data.toList
theorem checked577 : bytes577=statementBytes 601 (op577.map lower) ∧ bytes577.length=60 := by core033_kernel_decide
def op578 : List WordIR.Op := [.rotr 413 7]
def bytes578 : Bytes := ("    let r0000025a: u32 = r0000019d.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked578 : bytes578=statementBytes 602 (op578.map lower) ∧ bytes578.length=65 := by core033_kernel_decide
def op579 : List WordIR.Op := [.rotr 413 18]
def bytes579 : Bytes := ("    let r0000025b: u32 = r0000019d.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked579 : bytes579=statementBytes 603 (op579.map lower) ∧ bytes579.length=65 := by core033_kernel_decide
def op580 : List WordIR.Op := [.bxor 602 603]
def bytes580 : Bytes := ("    let r0000025c: u32 = r0000025a ^ r0000025b;\n" : String).toByteArray.data.toList
theorem checked580 : bytes580=statementBytes 604 (op580.map lower) ∧ bytes580.length=48 := by core033_kernel_decide
def op581 : List WordIR.Op := [.shr 413 3]
def bytes581 : Bytes := ("    let r0000025d: u32 = r0000019d >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked581 : bytes581=statementBytes 605 (op581.map lower) ∧ bytes581.length=54 := by core033_kernel_decide
def op582 : List WordIR.Op := [.bxor 604 605]
def bytes582 : Bytes := ("    let r0000025e: u32 = r0000025c ^ r0000025d;\n" : String).toByteArray.data.toList
theorem checked582 : bytes582=statementBytes 606 (op582.map lower) ∧ bytes582.length=48 := by core033_kernel_decide
def op583 : List WordIR.Op := [.badd 601 606]
def bytes583 : Bytes := ("    let r0000025f: u32 = r00000259.wrapping_add(r0000025e);\n" : String).toByteArray.data.toList
theorem checked583 : bytes583=statementBytes 607 (op583.map lower) ∧ bytes583.length=60 := by core033_kernel_decide
def op584 : List WordIR.Op := [.badd 607 400]
def bytes584 : Bytes := ("    let r00000260: u32 = r0000025f.wrapping_add(r00000190);\n" : String).toByteArray.data.toList
theorem checked584 : bytes584=statementBytes 608 (op584.map lower) ∧ bytes584.length=60 := by core033_kernel_decide
def op585 : List WordIR.Op := [.rotr 595 17]
def bytes585 : Bytes := ("    let r00000261: u32 = r00000253.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked585 : bytes585=statementBytes 609 (op585.map lower) ∧ bytes585.length=65 := by core033_kernel_decide
def op586 : List WordIR.Op := [.rotr 595 19]
def bytes586 : Bytes := ("    let r00000262: u32 = r00000253.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked586 : bytes586=statementBytes 610 (op586.map lower) ∧ bytes586.length=65 := by core033_kernel_decide
def op587 : List WordIR.Op := [.bxor 609 610]
def bytes587 : Bytes := ("    let r00000263: u32 = r00000261 ^ r00000262;\n" : String).toByteArray.data.toList
theorem checked587 : bytes587=statementBytes 611 (op587.map lower) ∧ bytes587.length=48 := by core033_kernel_decide
def op588 : List WordIR.Op := [.shr 595 10]
def bytes588 : Bytes := ("    let r00000264: u32 = r00000253 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked588 : bytes588=statementBytes 612 (op588.map lower) ∧ bytes588.length=54 := by core033_kernel_decide
def op589 : List WordIR.Op := [.bxor 611 612]
def bytes589 : Bytes := ("    let r00000265: u32 = r00000263 ^ r00000264;\n" : String).toByteArray.data.toList
theorem checked589 : bytes589=statementBytes 613 (op589.map lower) ∧ bytes589.length=48 := by core033_kernel_decide
def op590 : List WordIR.Op := [.badd 613 530]
def bytes590 : Bytes := ("    let r00000266: u32 = r00000265.wrapping_add(r00000212);\n" : String).toByteArray.data.toList
theorem checked590 : bytes590=statementBytes 614 (op590.map lower) ∧ bytes590.length=60 := by core033_kernel_decide
def op591 : List WordIR.Op := [.rotr 426 7]
def bytes591 : Bytes := ("    let r00000267: u32 = r000001aa.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked591 : bytes591=statementBytes 615 (op591.map lower) ∧ bytes591.length=65 := by core033_kernel_decide
def op592 : List WordIR.Op := [.rotr 426 18]
def bytes592 : Bytes := ("    let r00000268: u32 = r000001aa.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked592 : bytes592=statementBytes 616 (op592.map lower) ∧ bytes592.length=65 := by core033_kernel_decide
def op593 : List WordIR.Op := [.bxor 615 616]
def bytes593 : Bytes := ("    let r00000269: u32 = r00000267 ^ r00000268;\n" : String).toByteArray.data.toList
theorem checked593 : bytes593=statementBytes 617 (op593.map lower) ∧ bytes593.length=48 := by core033_kernel_decide
def op594 : List WordIR.Op := [.shr 426 3]
def bytes594 : Bytes := ("    let r0000026a: u32 = r000001aa >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked594 : bytes594=statementBytes 618 (op594.map lower) ∧ bytes594.length=54 := by core033_kernel_decide
def op595 : List WordIR.Op := [.bxor 617 618]
def bytes595 : Bytes := ("    let r0000026b: u32 = r00000269 ^ r0000026a;\n" : String).toByteArray.data.toList
theorem checked595 : bytes595=statementBytes 619 (op595.map lower) ∧ bytes595.length=48 := by core033_kernel_decide
def op596 : List WordIR.Op := [.badd 614 619]
def bytes596 : Bytes := ("    let r0000026c: u32 = r00000266.wrapping_add(r0000026b);\n" : String).toByteArray.data.toList
theorem checked596 : bytes596=statementBytes 620 (op596.map lower) ∧ bytes596.length=60 := by core033_kernel_decide
def op597 : List WordIR.Op := [.badd 620 413]
def bytes597 : Bytes := ("    let r0000026d: u32 = r0000026c.wrapping_add(r0000019d);\n" : String).toByteArray.data.toList
theorem checked597 : bytes597=statementBytes 621 (op597.map lower) ∧ bytes597.length=60 := by core033_kernel_decide
def op598 : List WordIR.Op := [.rotr 608 17]
def bytes598 : Bytes := ("    let r0000026e: u32 = r00000260.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked598 : bytes598=statementBytes 622 (op598.map lower) ∧ bytes598.length=65 := by core033_kernel_decide
def op599 : List WordIR.Op := [.rotr 608 19]
def bytes599 : Bytes := ("    let r0000026f: u32 = r00000260.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked599 : bytes599=statementBytes 623 (op599.map lower) ∧ bytes599.length=65 := by core033_kernel_decide
def op600 : List WordIR.Op := [.bxor 622 623]
def bytes600 : Bytes := ("    let r00000270: u32 = r0000026e ^ r0000026f;\n" : String).toByteArray.data.toList
theorem checked600 : bytes600=statementBytes 624 (op600.map lower) ∧ bytes600.length=48 := by core033_kernel_decide
def op601 : List WordIR.Op := [.shr 608 10]
def bytes601 : Bytes := ("    let r00000271: u32 = r00000260 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked601 : bytes601=statementBytes 625 (op601.map lower) ∧ bytes601.length=54 := by core033_kernel_decide
def op602 : List WordIR.Op := [.bxor 624 625]
def bytes602 : Bytes := ("    let r00000272: u32 = r00000270 ^ r00000271;\n" : String).toByteArray.data.toList
theorem checked602 : bytes602=statementBytes 626 (op602.map lower) ∧ bytes602.length=48 := by core033_kernel_decide
def op603 : List WordIR.Op := [.badd 626 543]
def bytes603 : Bytes := ("    let r00000273: u32 = r00000272.wrapping_add(r0000021f);\n" : String).toByteArray.data.toList
theorem checked603 : bytes603=statementBytes 627 (op603.map lower) ∧ bytes603.length=60 := by core033_kernel_decide
def op604 : List WordIR.Op := [.rotr 439 7]
def bytes604 : Bytes := ("    let r00000274: u32 = r000001b7.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked604 : bytes604=statementBytes 628 (op604.map lower) ∧ bytes604.length=65 := by core033_kernel_decide
def op605 : List WordIR.Op := [.rotr 439 18]
def bytes605 : Bytes := ("    let r00000275: u32 = r000001b7.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked605 : bytes605=statementBytes 629 (op605.map lower) ∧ bytes605.length=65 := by core033_kernel_decide
def op606 : List WordIR.Op := [.bxor 628 629]
def bytes606 : Bytes := ("    let r00000276: u32 = r00000274 ^ r00000275;\n" : String).toByteArray.data.toList
theorem checked606 : bytes606=statementBytes 630 (op606.map lower) ∧ bytes606.length=48 := by core033_kernel_decide
def op607 : List WordIR.Op := [.shr 439 3]
def bytes607 : Bytes := ("    let r00000277: u32 = r000001b7 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked607 : bytes607=statementBytes 631 (op607.map lower) ∧ bytes607.length=54 := by core033_kernel_decide
def op608 : List WordIR.Op := [.bxor 630 631]
def bytes608 : Bytes := ("    let r00000278: u32 = r00000276 ^ r00000277;\n" : String).toByteArray.data.toList
theorem checked608 : bytes608=statementBytes 632 (op608.map lower) ∧ bytes608.length=48 := by core033_kernel_decide
def op609 : List WordIR.Op := [.badd 627 632]
def bytes609 : Bytes := ("    let r00000279: u32 = r00000273.wrapping_add(r00000278);\n" : String).toByteArray.data.toList
theorem checked609 : bytes609=statementBytes 633 (op609.map lower) ∧ bytes609.length=60 := by core033_kernel_decide
def op610 : List WordIR.Op := [.badd 633 426]
def bytes610 : Bytes := ("    let r0000027a: u32 = r00000279.wrapping_add(r000001aa);\n" : String).toByteArray.data.toList
theorem checked610 : bytes610=statementBytes 634 (op610.map lower) ∧ bytes610.length=60 := by core033_kernel_decide
def op611 : List WordIR.Op := [.rotr 621 17]
def bytes611 : Bytes := ("    let r0000027b: u32 = r0000026d.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked611 : bytes611=statementBytes 635 (op611.map lower) ∧ bytes611.length=65 := by core033_kernel_decide
def op612 : List WordIR.Op := [.rotr 621 19]
def bytes612 : Bytes := ("    let r0000027c: u32 = r0000026d.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked612 : bytes612=statementBytes 636 (op612.map lower) ∧ bytes612.length=65 := by core033_kernel_decide
def op613 : List WordIR.Op := [.bxor 635 636]
def bytes613 : Bytes := ("    let r0000027d: u32 = r0000027b ^ r0000027c;\n" : String).toByteArray.data.toList
theorem checked613 : bytes613=statementBytes 637 (op613.map lower) ∧ bytes613.length=48 := by core033_kernel_decide
def op614 : List WordIR.Op := [.shr 621 10]
def bytes614 : Bytes := ("    let r0000027e: u32 = r0000026d >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked614 : bytes614=statementBytes 638 (op614.map lower) ∧ bytes614.length=54 := by core033_kernel_decide
def op615 : List WordIR.Op := [.bxor 637 638]
def bytes615 : Bytes := ("    let r0000027f: u32 = r0000027d ^ r0000027e;\n" : String).toByteArray.data.toList
theorem checked615 : bytes615=statementBytes 639 (op615.map lower) ∧ bytes615.length=48 := by core033_kernel_decide
def op616 : List WordIR.Op := [.badd 639 556]
def bytes616 : Bytes := ("    let r00000280: u32 = r0000027f.wrapping_add(r0000022c);\n" : String).toByteArray.data.toList
theorem checked616 : bytes616=statementBytes 640 (op616.map lower) ∧ bytes616.length=60 := by core033_kernel_decide
def op617 : List WordIR.Op := [.rotr 452 7]
def bytes617 : Bytes := ("    let r00000281: u32 = r000001c4.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked617 : bytes617=statementBytes 641 (op617.map lower) ∧ bytes617.length=65 := by core033_kernel_decide
def op618 : List WordIR.Op := [.rotr 452 18]
def bytes618 : Bytes := ("    let r00000282: u32 = r000001c4.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked618 : bytes618=statementBytes 642 (op618.map lower) ∧ bytes618.length=65 := by core033_kernel_decide
def op619 : List WordIR.Op := [.bxor 641 642]
def bytes619 : Bytes := ("    let r00000283: u32 = r00000281 ^ r00000282;\n" : String).toByteArray.data.toList
theorem checked619 : bytes619=statementBytes 643 (op619.map lower) ∧ bytes619.length=48 := by core033_kernel_decide
def op620 : List WordIR.Op := [.shr 452 3]
def bytes620 : Bytes := ("    let r00000284: u32 = r000001c4 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked620 : bytes620=statementBytes 644 (op620.map lower) ∧ bytes620.length=54 := by core033_kernel_decide
def op621 : List WordIR.Op := [.bxor 643 644]
def bytes621 : Bytes := ("    let r00000285: u32 = r00000283 ^ r00000284;\n" : String).toByteArray.data.toList
theorem checked621 : bytes621=statementBytes 645 (op621.map lower) ∧ bytes621.length=48 := by core033_kernel_decide
def op622 : List WordIR.Op := [.badd 640 645]
def bytes622 : Bytes := ("    let r00000286: u32 = r00000280.wrapping_add(r00000285);\n" : String).toByteArray.data.toList
theorem checked622 : bytes622=statementBytes 646 (op622.map lower) ∧ bytes622.length=60 := by core033_kernel_decide
def op623 : List WordIR.Op := [.badd 646 439]
def bytes623 : Bytes := ("    let r00000287: u32 = r00000286.wrapping_add(r000001b7);\n" : String).toByteArray.data.toList
theorem checked623 : bytes623=statementBytes 647 (op623.map lower) ∧ bytes623.length=60 := by core033_kernel_decide
def op624 : List WordIR.Op := [.rotr 4 6]
def bytes624 : Bytes := ("    let r00000288: u32 = r00000004.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked624 : bytes624=statementBytes 648 (op624.map lower) ∧ bytes624.length=65 := by core033_kernel_decide
def op625 : List WordIR.Op := [.rotr 4 11]
def bytes625 : Bytes := ("    let r00000289: u32 = r00000004.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked625 : bytes625=statementBytes 649 (op625.map lower) ∧ bytes625.length=65 := by core033_kernel_decide
def op626 : List WordIR.Op := [.bxor 648 649]
def bytes626 : Bytes := ("    let r0000028a: u32 = r00000288 ^ r00000289;\n" : String).toByteArray.data.toList
theorem checked626 : bytes626=statementBytes 650 (op626.map lower) ∧ bytes626.length=48 := by core033_kernel_decide
def op627 : List WordIR.Op := [.rotr 4 25]
def bytes627 : Bytes := ("    let r0000028b: u32 = r00000004.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked627 : bytes627=statementBytes 651 (op627.map lower) ∧ bytes627.length=65 := by core033_kernel_decide
def op628 : List WordIR.Op := [.bxor 650 651]
def bytes628 : Bytes := ("    let r0000028c: u32 = r0000028a ^ r0000028b;\n" : String).toByteArray.data.toList
theorem checked628 : bytes628=statementBytes 652 (op628.map lower) ∧ bytes628.length=48 := by core033_kernel_decide
def op629 : List WordIR.Op := [.badd 7 652]
def bytes629 : Bytes := ("    let r0000028d: u32 = r00000007.wrapping_add(r0000028c);\n" : String).toByteArray.data.toList
theorem checked629 : bytes629=statementBytes 653 (op629.map lower) ∧ bytes629.length=60 := by core033_kernel_decide
def op630 : List WordIR.Op := [.band 4 5]
def bytes630 : Bytes := ("    let r0000028e: u32 = r00000004 & r00000005;\n" : String).toByteArray.data.toList
theorem checked630 : bytes630=statementBytes 654 (op630.map lower) ∧ bytes630.length=48 := by core033_kernel_decide
def op631 : List WordIR.Op := [.bnot 4]
def bytes631 : Bytes := ("    let r0000028f: u32 = !r00000004;\n" : String).toByteArray.data.toList
theorem checked631 : bytes631=statementBytes 655 (op631.map lower) ∧ bytes631.length=37 := by core033_kernel_decide
def op632 : List WordIR.Op := [.band 655 6]
def bytes632 : Bytes := ("    let r00000290: u32 = r0000028f & r00000006;\n" : String).toByteArray.data.toList
theorem checked632 : bytes632=statementBytes 656 (op632.map lower) ∧ bytes632.length=48 := by core033_kernel_decide
def op633 : List WordIR.Op := [.bxor 654 656]
def bytes633 : Bytes := ("    let r00000291: u32 = r0000028e ^ r00000290;\n" : String).toByteArray.data.toList
theorem checked633 : bytes633=statementBytes 657 (op633.map lower) ∧ bytes633.length=48 := by core033_kernel_decide
def op634 : List WordIR.Op := [.badd 653 657]
def bytes634 : Bytes := ("    let r00000292: u32 = r0000028d.wrapping_add(r00000291);\n" : String).toByteArray.data.toList
theorem checked634 : bytes634=statementBytes 658 (op634.map lower) ∧ bytes634.length=60 := by core033_kernel_decide
def op635 : List WordIR.Op := [.literal (BitVec.ofNat 32 1116352408)]
def bytes635 : Bytes := ("    let r00000293: u32 = 0x428a2f98_u32;\n" : String).toByteArray.data.toList
theorem checked635 : bytes635=statementBytes 659 (op635.map lower) ∧ bytes635.length=41 := by core033_kernel_decide
def op636 : List WordIR.Op := [.badd 658 659]
def bytes636 : Bytes := ("    let r00000294: u32 = r00000292.wrapping_add(r00000293);\n" : String).toByteArray.data.toList
theorem checked636 : bytes636=statementBytes 660 (op636.map lower) ∧ bytes636.length=60 := by core033_kernel_decide
def op637 : List WordIR.Op := [.badd 660 8]
def bytes637 : Bytes := ("    let r00000295: u32 = r00000294.wrapping_add(r00000008);\n" : String).toByteArray.data.toList
theorem checked637 : bytes637=statementBytes 661 (op637.map lower) ∧ bytes637.length=60 := by core033_kernel_decide
def op638 : List WordIR.Op := [.rotr 0 2]
def bytes638 : Bytes := ("    let r00000296: u32 = r00000000.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked638 : bytes638=statementBytes 662 (op638.map lower) ∧ bytes638.length=65 := by core033_kernel_decide
def op639 : List WordIR.Op := [.rotr 0 13]
def bytes639 : Bytes := ("    let r00000297: u32 = r00000000.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked639 : bytes639=statementBytes 663 (op639.map lower) ∧ bytes639.length=65 := by core033_kernel_decide
def innerBlocks9 : List (List WordIR.Op) := [op576,op577,op578,op579,op580,op581,op582,op583,op584,op585,op586,op587,op588,op589,op590,op591,op592,op593,op594,op595,op596,op597,op598,op599,op600,op601,op602,op603,op604,op605,op606,op607,op608,op609,op610,op611,op612,op613,op614,op615,op616,op617,op618,op619,op620,op621,op622,op623,op624,op625,op626,op627,op628,op629,op630,op631,op632,op633,op634,op635,op636,op637,op638,op639]
def innerBytes9 : List Bytes := [bytes576,bytes577,bytes578,bytes579,bytes580,bytes581,bytes582,bytes583,bytes584,bytes585,bytes586,bytes587,bytes588,bytes589,bytes590,bytes591,bytes592,bytes593,bytes594,bytes595,bytes596,bytes597,bytes598,bytes599,bytes600,bytes601,bytes602,bytes603,bytes604,bytes605,bytes606,bytes607,bytes608,bytes609,bytes610,bytes611,bytes612,bytes613,bytes614,bytes615,bytes616,bytes617,bytes618,bytes619,bytes620,bytes621,bytes622,bytes623,bytes624,bytes625,bytes626,bytes627,bytes628,bytes629,bytes630,bytes631,bytes632,bytes633,bytes634,bytes635,bytes636,bytes637,bytes638,bytes639]
def partOps9 : List WordIR.Op := innerBlocks9.flatten
def partBytes9 : Bytes := innerBytes9.flatten
theorem partChain9 : BlockChain 600 innerBlocks9 innerBytes9 := by
  unfold innerBlocks9 innerBytes9
  exact (.cons _ _ _ _ _ checked576.1 (.cons _ _ _ _ _ checked577.1 (.cons _ _ _ _ _ checked578.1 (.cons _ _ _ _ _ checked579.1 (.cons _ _ _ _ _ checked580.1 (.cons _ _ _ _ _ checked581.1 (.cons _ _ _ _ _ checked582.1 (.cons _ _ _ _ _ checked583.1 (.cons _ _ _ _ _ checked584.1 (.cons _ _ _ _ _ checked585.1 (.cons _ _ _ _ _ checked586.1 (.cons _ _ _ _ _ checked587.1 (.cons _ _ _ _ _ checked588.1 (.cons _ _ _ _ _ checked589.1 (.cons _ _ _ _ _ checked590.1 (.cons _ _ _ _ _ checked591.1 (.cons _ _ _ _ _ checked592.1 (.cons _ _ _ _ _ checked593.1 (.cons _ _ _ _ _ checked594.1 (.cons _ _ _ _ _ checked595.1 (.cons _ _ _ _ _ checked596.1 (.cons _ _ _ _ _ checked597.1 (.cons _ _ _ _ _ checked598.1 (.cons _ _ _ _ _ checked599.1 (.cons _ _ _ _ _ checked600.1 (.cons _ _ _ _ _ checked601.1 (.cons _ _ _ _ _ checked602.1 (.cons _ _ _ _ _ checked603.1 (.cons _ _ _ _ _ checked604.1 (.cons _ _ _ _ _ checked605.1 (.cons _ _ _ _ _ checked606.1 (.cons _ _ _ _ _ checked607.1 (.cons _ _ _ _ _ checked608.1 (.cons _ _ _ _ _ checked609.1 (.cons _ _ _ _ _ checked610.1 (.cons _ _ _ _ _ checked611.1 (.cons _ _ _ _ _ checked612.1 (.cons _ _ _ _ _ checked613.1 (.cons _ _ _ _ _ checked614.1 (.cons _ _ _ _ _ checked615.1 (.cons _ _ _ _ _ checked616.1 (.cons _ _ _ _ _ checked617.1 (.cons _ _ _ _ _ checked618.1 (.cons _ _ _ _ _ checked619.1 (.cons _ _ _ _ _ checked620.1 (.cons _ _ _ _ _ checked621.1 (.cons _ _ _ _ _ checked622.1 (.cons _ _ _ _ _ checked623.1 (.cons _ _ _ _ _ checked624.1 (.cons _ _ _ _ _ checked625.1 (.cons _ _ _ _ _ checked626.1 (.cons _ _ _ _ _ checked627.1 (.cons _ _ _ _ _ checked628.1 (.cons _ _ _ _ _ checked629.1 (.cons _ _ _ _ _ checked630.1 (.cons _ _ _ _ _ checked631.1 (.cons _ _ _ _ _ checked632.1 (.cons _ _ _ _ _ checked633.1 (.cons _ _ _ _ _ checked634.1 (.cons _ _ _ _ _ checked635.1 (.cons _ _ _ _ _ checked636.1 (.cons _ _ _ _ _ checked637.1 (.cons _ _ _ _ _ checked638.1 (.cons _ _ _ _ _ checked639.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked9 : partBytes9=statementBytes 600 (partOps9.map lower) ∧ partBytes9.length=3611 := by
  constructor
  · exact (chain_exact partChain9).trans (body_exact innerBlocks9 600)
  · simp only [partBytes9,WordSource.chunk_sizes_exact,innerBytes9,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked576.2,checked577.2,checked578.2,checked579.2,checked580.2,checked581.2,checked582.2,checked583.2,checked584.2,checked585.2,checked586.2,checked587.2,checked588.2,checked589.2,checked590.2,checked591.2,checked592.2,checked593.2,checked594.2,checked595.2,checked596.2,checked597.2,checked598.2,checked599.2,checked600.2,checked601.2,checked602.2,checked603.2,checked604.2,checked605.2,checked606.2,checked607.2,checked608.2,checked609.2,checked610.2,checked611.2,checked612.2,checked613.2,checked614.2,checked615.2,checked616.2,checked617.2,checked618.2,checked619.2,checked620.2,checked621.2,checked622.2,checked623.2,checked624.2,checked625.2,checked626.2,checked627.2,checked628.2,checked629.2,checked630.2,checked631.2,checked632.2,checked633.2,checked634.2,checked635.2,checked636.2,checked637.2,checked638.2,checked639.2]
    decide
theorem partLength9 : partOps9.length=64 := by
  simp only [partOps9,innerBlocks9,op576,op577,op578,op579,op580,op581,op582,op583,op584,op585,op586,op587,op588,op589,op590,op591,op592,op593,op594,op595,op596,op597,op598,op599,op600,op601,op602,op603,op604,op605,op606,op607,op608,op609,op610,op611,op612,op613,op614,op615,op616,op617,op618,op619,op620,op621,op622,op623,op624,op625,op626,op627,op628,op629,op630,op631,op632,op633,op634,op635,op636,op637,op638,op639,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
