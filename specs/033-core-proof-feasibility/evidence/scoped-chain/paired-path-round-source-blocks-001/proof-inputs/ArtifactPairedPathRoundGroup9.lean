import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup9
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op576 : List WordIR.Op := [.bnot 605]
def bytes576 : Bytes := ("    let r000002a0: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked576 : bytes576=statementBytes 672 (op576.map lower) ∧ bytes576.length=37 := by core033_kernel_decide
def op577 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes577 : Bytes := ("    let r000002a1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked577 : bytes577=statementBytes 673 (op577.map lower) ∧ bytes577.length=41 := by core033_kernel_decide
def op578 : List WordIR.Op := [.badd 672 673]
def bytes578 : Bytes := ("    let r000002a2: u32 = r000002a0.wrapping_add(r000002a1);\n" : String).toByteArray.data.toList
theorem checked578 : bytes578=statementBytes 674 (op578.map lower) ∧ bytes578.length=60 := by core033_kernel_decide
def op579 : List WordIR.Op := [.band 674 6]
def bytes579 : Bytes := ("    let r000002a3: u32 = r000002a2 & r00000006;\n" : String).toByteArray.data.toList
theorem checked579 : bytes579=statementBytes 675 (op579.map lower) ∧ bytes579.length=48 := by core033_kernel_decide
def op580 : List WordIR.Op := [.bnot 605]
def bytes580 : Bytes := ("    let r000002a4: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked580 : bytes580=statementBytes 676 (op580.map lower) ∧ bytes580.length=37 := by core033_kernel_decide
def op581 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes581 : Bytes := ("    let r000002a5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked581 : bytes581=statementBytes 677 (op581.map lower) ∧ bytes581.length=41 := by core033_kernel_decide
def op582 : List WordIR.Op := [.badd 676 677]
def bytes582 : Bytes := ("    let r000002a6: u32 = r000002a4.wrapping_add(r000002a5);\n" : String).toByteArray.data.toList
theorem checked582 : bytes582=statementBytes 678 (op582.map lower) ∧ bytes582.length=60 := by core033_kernel_decide
def op583 : List WordIR.Op := [.bnot 678]
def bytes583 : Bytes := ("    let r000002a7: u32 = !r000002a6;\n" : String).toByteArray.data.toList
theorem checked583 : bytes583=statementBytes 679 (op583.map lower) ∧ bytes583.length=37 := by core033_kernel_decide
def op584 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes584 : Bytes := ("    let r000002a8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked584 : bytes584=statementBytes 680 (op584.map lower) ∧ bytes584.length=41 := by core033_kernel_decide
def op585 : List WordIR.Op := [.band 679 680]
def bytes585 : Bytes := ("    let r000002a9: u32 = r000002a7 & r000002a8;\n" : String).toByteArray.data.toList
theorem checked585 : bytes585=statementBytes 681 (op585.map lower) ∧ bytes585.length=48 := by core033_kernel_decide
def op586 : List WordIR.Op := [.bxor 675 681]
def bytes586 : Bytes := ("    let r000002aa: u32 = r000002a3 ^ r000002a9;\n" : String).toByteArray.data.toList
theorem checked586 : bytes586=statementBytes 682 (op586.map lower) ∧ bytes586.length=48 := by core033_kernel_decide
def op587 : List WordIR.Op := [.bnot 605]
def bytes587 : Bytes := ("    let r000002ab: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked587 : bytes587=statementBytes 683 (op587.map lower) ∧ bytes587.length=37 := by core033_kernel_decide
def op588 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes588 : Bytes := ("    let r000002ac: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked588 : bytes588=statementBytes 684 (op588.map lower) ∧ bytes588.length=41 := by core033_kernel_decide
def op589 : List WordIR.Op := [.badd 683 684]
def bytes589 : Bytes := ("    let r000002ad: u32 = r000002ab.wrapping_add(r000002ac);\n" : String).toByteArray.data.toList
theorem checked589 : bytes589=statementBytes 685 (op589.map lower) ∧ bytes589.length=60 := by core033_kernel_decide
def op590 : List WordIR.Op := [.band 685 7]
def bytes590 : Bytes := ("    let r000002ae: u32 = r000002ad & r00000007;\n" : String).toByteArray.data.toList
theorem checked590 : bytes590=statementBytes 686 (op590.map lower) ∧ bytes590.length=48 := by core033_kernel_decide
def op591 : List WordIR.Op := [.bnot 605]
def bytes591 : Bytes := ("    let r000002af: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked591 : bytes591=statementBytes 687 (op591.map lower) ∧ bytes591.length=37 := by core033_kernel_decide
def op592 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes592 : Bytes := ("    let r000002b0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked592 : bytes592=statementBytes 688 (op592.map lower) ∧ bytes592.length=41 := by core033_kernel_decide
def op593 : List WordIR.Op := [.badd 687 688]
def bytes593 : Bytes := ("    let r000002b1: u32 = r000002af.wrapping_add(r000002b0);\n" : String).toByteArray.data.toList
theorem checked593 : bytes593=statementBytes 689 (op593.map lower) ∧ bytes593.length=60 := by core033_kernel_decide
def op594 : List WordIR.Op := [.bnot 689]
def bytes594 : Bytes := ("    let r000002b2: u32 = !r000002b1;\n" : String).toByteArray.data.toList
theorem checked594 : bytes594=statementBytes 690 (op594.map lower) ∧ bytes594.length=37 := by core033_kernel_decide
def op595 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes595 : Bytes := ("    let r000002b3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked595 : bytes595=statementBytes 691 (op595.map lower) ∧ bytes595.length=41 := by core033_kernel_decide
def op596 : List WordIR.Op := [.band 690 691]
def bytes596 : Bytes := ("    let r000002b4: u32 = r000002b2 & r000002b3;\n" : String).toByteArray.data.toList
theorem checked596 : bytes596=statementBytes 692 (op596.map lower) ∧ bytes596.length=48 := by core033_kernel_decide
def op597 : List WordIR.Op := [.bxor 686 692]
def bytes597 : Bytes := ("    let r000002b5: u32 = r000002ae ^ r000002b4;\n" : String).toByteArray.data.toList
theorem checked597 : bytes597=statementBytes 693 (op597.map lower) ∧ bytes597.length=48 := by core033_kernel_decide
def op598 : List WordIR.Op := [.bnot 605]
def bytes598 : Bytes := ("    let r000002b6: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked598 : bytes598=statementBytes 694 (op598.map lower) ∧ bytes598.length=37 := by core033_kernel_decide
def op599 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes599 : Bytes := ("    let r000002b7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked599 : bytes599=statementBytes 695 (op599.map lower) ∧ bytes599.length=41 := by core033_kernel_decide
def op600 : List WordIR.Op := [.badd 694 695]
def bytes600 : Bytes := ("    let r000002b8: u32 = r000002b6.wrapping_add(r000002b7);\n" : String).toByteArray.data.toList
theorem checked600 : bytes600=statementBytes 696 (op600.map lower) ∧ bytes600.length=60 := by core033_kernel_decide
def op601 : List WordIR.Op := [.band 696 8]
def bytes601 : Bytes := ("    let r000002b9: u32 = r000002b8 & r00000008;\n" : String).toByteArray.data.toList
theorem checked601 : bytes601=statementBytes 697 (op601.map lower) ∧ bytes601.length=48 := by core033_kernel_decide
def op602 : List WordIR.Op := [.bnot 605]
def bytes602 : Bytes := ("    let r000002ba: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked602 : bytes602=statementBytes 698 (op602.map lower) ∧ bytes602.length=37 := by core033_kernel_decide
def op603 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes603 : Bytes := ("    let r000002bb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked603 : bytes603=statementBytes 699 (op603.map lower) ∧ bytes603.length=41 := by core033_kernel_decide
def op604 : List WordIR.Op := [.badd 698 699]
def bytes604 : Bytes := ("    let r000002bc: u32 = r000002ba.wrapping_add(r000002bb);\n" : String).toByteArray.data.toList
theorem checked604 : bytes604=statementBytes 700 (op604.map lower) ∧ bytes604.length=60 := by core033_kernel_decide
def op605 : List WordIR.Op := [.bnot 700]
def bytes605 : Bytes := ("    let r000002bd: u32 = !r000002bc;\n" : String).toByteArray.data.toList
theorem checked605 : bytes605=statementBytes 701 (op605.map lower) ∧ bytes605.length=37 := by core033_kernel_decide
def op606 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes606 : Bytes := ("    let r000002be: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked606 : bytes606=statementBytes 702 (op606.map lower) ∧ bytes606.length=41 := by core033_kernel_decide
def op607 : List WordIR.Op := [.band 701 702]
def bytes607 : Bytes := ("    let r000002bf: u32 = r000002bd & r000002be;\n" : String).toByteArray.data.toList
theorem checked607 : bytes607=statementBytes 703 (op607.map lower) ∧ bytes607.length=48 := by core033_kernel_decide
def op608 : List WordIR.Op := [.bxor 697 703]
def bytes608 : Bytes := ("    let r000002c0: u32 = r000002b9 ^ r000002bf;\n" : String).toByteArray.data.toList
theorem checked608 : bytes608=statementBytes 704 (op608.map lower) ∧ bytes608.length=48 := by core033_kernel_decide
def op609 : List WordIR.Op := [.bnot 605]
def bytes609 : Bytes := ("    let r000002c1: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked609 : bytes609=statementBytes 705 (op609.map lower) ∧ bytes609.length=37 := by core033_kernel_decide
def op610 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes610 : Bytes := ("    let r000002c2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked610 : bytes610=statementBytes 706 (op610.map lower) ∧ bytes610.length=41 := by core033_kernel_decide
def op611 : List WordIR.Op := [.badd 705 706]
def bytes611 : Bytes := ("    let r000002c3: u32 = r000002c1.wrapping_add(r000002c2);\n" : String).toByteArray.data.toList
theorem checked611 : bytes611=statementBytes 707 (op611.map lower) ∧ bytes611.length=60 := by core033_kernel_decide
def op612 : List WordIR.Op := [.band 707 9]
def bytes612 : Bytes := ("    let r000002c4: u32 = r000002c3 & r00000009;\n" : String).toByteArray.data.toList
theorem checked612 : bytes612=statementBytes 708 (op612.map lower) ∧ bytes612.length=48 := by core033_kernel_decide
def op613 : List WordIR.Op := [.bnot 605]
def bytes613 : Bytes := ("    let r000002c5: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked613 : bytes613=statementBytes 709 (op613.map lower) ∧ bytes613.length=37 := by core033_kernel_decide
def op614 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes614 : Bytes := ("    let r000002c6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked614 : bytes614=statementBytes 710 (op614.map lower) ∧ bytes614.length=41 := by core033_kernel_decide
def op615 : List WordIR.Op := [.badd 709 710]
def bytes615 : Bytes := ("    let r000002c7: u32 = r000002c5.wrapping_add(r000002c6);\n" : String).toByteArray.data.toList
theorem checked615 : bytes615=statementBytes 711 (op615.map lower) ∧ bytes615.length=60 := by core033_kernel_decide
def op616 : List WordIR.Op := [.bnot 711]
def bytes616 : Bytes := ("    let r000002c8: u32 = !r000002c7;\n" : String).toByteArray.data.toList
theorem checked616 : bytes616=statementBytes 712 (op616.map lower) ∧ bytes616.length=37 := by core033_kernel_decide
def op617 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes617 : Bytes := ("    let r000002c9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked617 : bytes617=statementBytes 713 (op617.map lower) ∧ bytes617.length=41 := by core033_kernel_decide
def op618 : List WordIR.Op := [.band 712 713]
def bytes618 : Bytes := ("    let r000002ca: u32 = r000002c8 & r000002c9;\n" : String).toByteArray.data.toList
theorem checked618 : bytes618=statementBytes 714 (op618.map lower) ∧ bytes618.length=48 := by core033_kernel_decide
def op619 : List WordIR.Op := [.bxor 708 714]
def bytes619 : Bytes := ("    let r000002cb: u32 = r000002c4 ^ r000002ca;\n" : String).toByteArray.data.toList
theorem checked619 : bytes619=statementBytes 715 (op619.map lower) ∧ bytes619.length=48 := by core033_kernel_decide
def op620 : List WordIR.Op := [.bnot 605]
def bytes620 : Bytes := ("    let r000002cc: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked620 : bytes620=statementBytes 716 (op620.map lower) ∧ bytes620.length=37 := by core033_kernel_decide
def op621 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes621 : Bytes := ("    let r000002cd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked621 : bytes621=statementBytes 717 (op621.map lower) ∧ bytes621.length=41 := by core033_kernel_decide
def op622 : List WordIR.Op := [.badd 716 717]
def bytes622 : Bytes := ("    let r000002ce: u32 = r000002cc.wrapping_add(r000002cd);\n" : String).toByteArray.data.toList
theorem checked622 : bytes622=statementBytes 718 (op622.map lower) ∧ bytes622.length=60 := by core033_kernel_decide
def op623 : List WordIR.Op := [.band 718 10]
def bytes623 : Bytes := ("    let r000002cf: u32 = r000002ce & r0000000a;\n" : String).toByteArray.data.toList
theorem checked623 : bytes623=statementBytes 719 (op623.map lower) ∧ bytes623.length=48 := by core033_kernel_decide
def op624 : List WordIR.Op := [.bnot 605]
def bytes624 : Bytes := ("    let r000002d0: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked624 : bytes624=statementBytes 720 (op624.map lower) ∧ bytes624.length=37 := by core033_kernel_decide
def op625 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes625 : Bytes := ("    let r000002d1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked625 : bytes625=statementBytes 721 (op625.map lower) ∧ bytes625.length=41 := by core033_kernel_decide
def op626 : List WordIR.Op := [.badd 720 721]
def bytes626 : Bytes := ("    let r000002d2: u32 = r000002d0.wrapping_add(r000002d1);\n" : String).toByteArray.data.toList
theorem checked626 : bytes626=statementBytes 722 (op626.map lower) ∧ bytes626.length=60 := by core033_kernel_decide
def op627 : List WordIR.Op := [.bnot 722]
def bytes627 : Bytes := ("    let r000002d3: u32 = !r000002d2;\n" : String).toByteArray.data.toList
theorem checked627 : bytes627=statementBytes 723 (op627.map lower) ∧ bytes627.length=37 := by core033_kernel_decide
def op628 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes628 : Bytes := ("    let r000002d4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked628 : bytes628=statementBytes 724 (op628.map lower) ∧ bytes628.length=41 := by core033_kernel_decide
def op629 : List WordIR.Op := [.band 723 724]
def bytes629 : Bytes := ("    let r000002d5: u32 = r000002d3 & r000002d4;\n" : String).toByteArray.data.toList
theorem checked629 : bytes629=statementBytes 725 (op629.map lower) ∧ bytes629.length=48 := by core033_kernel_decide
def op630 : List WordIR.Op := [.bxor 719 725]
def bytes630 : Bytes := ("    let r000002d6: u32 = r000002cf ^ r000002d5;\n" : String).toByteArray.data.toList
theorem checked630 : bytes630=statementBytes 726 (op630.map lower) ∧ bytes630.length=48 := by core033_kernel_decide
def op631 : List WordIR.Op := [.bnot 605]
def bytes631 : Bytes := ("    let r000002d7: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked631 : bytes631=statementBytes 727 (op631.map lower) ∧ bytes631.length=37 := by core033_kernel_decide
def op632 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes632 : Bytes := ("    let r000002d8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked632 : bytes632=statementBytes 728 (op632.map lower) ∧ bytes632.length=41 := by core033_kernel_decide
def op633 : List WordIR.Op := [.badd 727 728]
def bytes633 : Bytes := ("    let r000002d9: u32 = r000002d7.wrapping_add(r000002d8);\n" : String).toByteArray.data.toList
theorem checked633 : bytes633=statementBytes 729 (op633.map lower) ∧ bytes633.length=60 := by core033_kernel_decide
def op634 : List WordIR.Op := [.band 729 452]
def bytes634 : Bytes := ("    let r000002da: u32 = r000002d9 & r000001c4;\n" : String).toByteArray.data.toList
theorem checked634 : bytes634=statementBytes 730 (op634.map lower) ∧ bytes634.length=48 := by core033_kernel_decide
def op635 : List WordIR.Op := [.bnot 605]
def bytes635 : Bytes := ("    let r000002db: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked635 : bytes635=statementBytes 731 (op635.map lower) ∧ bytes635.length=37 := by core033_kernel_decide
def op636 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes636 : Bytes := ("    let r000002dc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked636 : bytes636=statementBytes 732 (op636.map lower) ∧ bytes636.length=41 := by core033_kernel_decide
def op637 : List WordIR.Op := [.badd 731 732]
def bytes637 : Bytes := ("    let r000002dd: u32 = r000002db.wrapping_add(r000002dc);\n" : String).toByteArray.data.toList
theorem checked637 : bytes637=statementBytes 733 (op637.map lower) ∧ bytes637.length=60 := by core033_kernel_decide
def op638 : List WordIR.Op := [.bnot 733]
def bytes638 : Bytes := ("    let r000002de: u32 = !r000002dd;\n" : String).toByteArray.data.toList
theorem checked638 : bytes638=statementBytes 734 (op638.map lower) ∧ bytes638.length=37 := by core033_kernel_decide
def op639 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes639 : Bytes := ("    let r000002df: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked639 : bytes639=statementBytes 735 (op639.map lower) ∧ bytes639.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op576,op577,op578,op579,op580,op581,op582,op583,op584,op585,op586,op587,op588,op589,op590,op591,op592,op593,op594,op595,op596,op597,op598,op599,op600,op601,op602,op603,op604,op605,op606,op607,op608,op609,op610,op611,op612,op613,op614,op615,op616,op617,op618,op619,op620,op621,op622,op623,op624,op625,op626,op627,op628,op629,op630,op631,op632,op633,op634,op635,op636,op637,op638,op639]
def chunks : List Bytes := [bytes576,bytes577,bytes578,bytes579,bytes580,bytes581,bytes582,bytes583,bytes584,bytes585,bytes586,bytes587,bytes588,bytes589,bytes590,bytes591,bytes592,bytes593,bytes594,bytes595,bytes596,bytes597,bytes598,bytes599,bytes600,bytes601,bytes602,bytes603,bytes604,bytes605,bytes606,bytes607,bytes608,bytes609,bytes610,bytes611,bytes612,bytes613,bytes614,bytes615,bytes616,bytes617,bytes618,bytes619,bytes620,bytes621,bytes622,bytes623,bytes624,bytes625,bytes626,bytes627,bytes628,bytes629,bytes630,bytes631,bytes632,bytes633,bytes634,bytes635,bytes636,bytes637,bytes638,bytes639]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 672 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked576.1 (.cons _ _ _ _ _ checked577.1 (.cons _ _ _ _ _ checked578.1 (.cons _ _ _ _ _ checked579.1 (.cons _ _ _ _ _ checked580.1 (.cons _ _ _ _ _ checked581.1 (.cons _ _ _ _ _ checked582.1 (.cons _ _ _ _ _ checked583.1 (.cons _ _ _ _ _ checked584.1 (.cons _ _ _ _ _ checked585.1 (.cons _ _ _ _ _ checked586.1 (.cons _ _ _ _ _ checked587.1 (.cons _ _ _ _ _ checked588.1 (.cons _ _ _ _ _ checked589.1 (.cons _ _ _ _ _ checked590.1 (.cons _ _ _ _ _ checked591.1 (.cons _ _ _ _ _ checked592.1 (.cons _ _ _ _ _ checked593.1 (.cons _ _ _ _ _ checked594.1 (.cons _ _ _ _ _ checked595.1 (.cons _ _ _ _ _ checked596.1 (.cons _ _ _ _ _ checked597.1 (.cons _ _ _ _ _ checked598.1 (.cons _ _ _ _ _ checked599.1 (.cons _ _ _ _ _ checked600.1 (.cons _ _ _ _ _ checked601.1 (.cons _ _ _ _ _ checked602.1 (.cons _ _ _ _ _ checked603.1 (.cons _ _ _ _ _ checked604.1 (.cons _ _ _ _ _ checked605.1 (.cons _ _ _ _ _ checked606.1 (.cons _ _ _ _ _ checked607.1 (.cons _ _ _ _ _ checked608.1 (.cons _ _ _ _ _ checked609.1 (.cons _ _ _ _ _ checked610.1 (.cons _ _ _ _ _ checked611.1 (.cons _ _ _ _ _ checked612.1 (.cons _ _ _ _ _ checked613.1 (.cons _ _ _ _ _ checked614.1 (.cons _ _ _ _ _ checked615.1 (.cons _ _ _ _ _ checked616.1 (.cons _ _ _ _ _ checked617.1 (.cons _ _ _ _ _ checked618.1 (.cons _ _ _ _ _ checked619.1 (.cons _ _ _ _ _ checked620.1 (.cons _ _ _ _ _ checked621.1 (.cons _ _ _ _ _ checked622.1 (.cons _ _ _ _ _ checked623.1 (.cons _ _ _ _ _ checked624.1 (.cons _ _ _ _ _ checked625.1 (.cons _ _ _ _ _ checked626.1 (.cons _ _ _ _ _ checked627.1 (.cons _ _ _ _ _ checked628.1 (.cons _ _ _ _ _ checked629.1 (.cons _ _ _ _ _ checked630.1 (.cons _ _ _ _ _ checked631.1 (.cons _ _ _ _ _ checked632.1 (.cons _ _ _ _ _ checked633.1 (.cons _ _ _ _ _ checked634.1 (.cons _ _ _ _ _ checked635.1 (.cons _ _ _ _ _ checked636.1 (.cons _ _ _ _ _ checked637.1 (.cons _ _ _ _ _ checked638.1 (.cons _ _ _ _ _ checked639.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 672 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2892 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked576.2,checked577.2,checked578.2,checked579.2,checked580.2,checked581.2,checked582.2,checked583.2,checked584.2,checked585.2,checked586.2,checked587.2,checked588.2,checked589.2,checked590.2,checked591.2,checked592.2,checked593.2,checked594.2,checked595.2,checked596.2,checked597.2,checked598.2,checked599.2,checked600.2,checked601.2,checked602.2,checked603.2,checked604.2,checked605.2,checked606.2,checked607.2,checked608.2,checked609.2,checked610.2,checked611.2,checked612.2,checked613.2,checked614.2,checked615.2,checked616.2,checked617.2,checked618.2,checked619.2,checked620.2,checked621.2,checked622.2,checked623.2,checked624.2,checked625.2,checked626.2,checked627.2,checked628.2,checked629.2,checked630.2,checked631.2,checked632.2,checked633.2,checked634.2,checked635.2,checked636.2,checked637.2,checked638.2,checked639.2]
  decide
end ArtifactPairedPathRoundGroup9
