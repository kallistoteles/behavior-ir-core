import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup197
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12608 : List WordIR.Op := [.bxor 12701 12703]
def bytes12608 : Bytes := ("    let r000031a0: u32 = r0000319d ^ r0000319f;\n" : String).toByteArray.data.toList
theorem checked12608 : bytes12608=statementBytes 12704 (op12608.map lower) ∧ bytes12608.length=48 := by core033_kernel_decide
def op12609 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12609 : Bytes := ("    let r000031a1: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12609 : bytes12609=statementBytes 12705 (op12609.map lower) ∧ bytes12609.length=41 := by core033_kernel_decide
def op12610 : List WordIR.Op := [.bxor 442 12705]
def bytes12610 : Bytes := ("    let r000031a2: u32 = r000001ba ^ r000031a1;\n" : String).toByteArray.data.toList
theorem checked12610 : bytes12610=statementBytes 12706 (op12610.map lower) ∧ bytes12610.length=48 := by core033_kernel_decide
def op12611 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12611 : Bytes := ("    let r000031a3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12611 : bytes12611=statementBytes 12707 (op12611.map lower) ∧ bytes12611.length=41 := by core033_kernel_decide
def op12612 : List WordIR.Op := [.bnot 12707]
def bytes12612 : Bytes := ("    let r000031a4: u32 = !r000031a3;\n" : String).toByteArray.data.toList
theorem checked12612 : bytes12612=statementBytes 12708 (op12612.map lower) ∧ bytes12612.length=37 := by core033_kernel_decide
def op12613 : List WordIR.Op := [.badd 12706 12708]
def bytes12613 : Bytes := ("    let r000031a5: u32 = r000031a2.wrapping_add(r000031a4);\n" : String).toByteArray.data.toList
theorem checked12613 : bytes12613=statementBytes 12709 (op12613.map lower) ∧ bytes12613.length=60 := by core033_kernel_decide
def op12614 : List WordIR.Op := [.bnot 12709]
def bytes12614 : Bytes := ("    let r000031a6: u32 = !r000031a5;\n" : String).toByteArray.data.toList
theorem checked12614 : bytes12614=statementBytes 12710 (op12614.map lower) ∧ bytes12614.length=37 := by core033_kernel_decide
def op12615 : List WordIR.Op := [.band 12704 12710]
def bytes12615 : Bytes := ("    let r000031a7: u32 = r000031a0 & r000031a6;\n" : String).toByteArray.data.toList
theorem checked12615 : bytes12615=statementBytes 12711 (op12615.map lower) ∧ bytes12615.length=48 := by core033_kernel_decide
def op12616 : List WordIR.Op := [.bxor 12699 12711]
def bytes12616 : Bytes := ("    let r000031a8: u32 = r0000319b ^ r000031a7;\n" : String).toByteArray.data.toList
theorem checked12616 : bytes12616=statementBytes 12712 (op12616.map lower) ∧ bytes12616.length=48 := by core033_kernel_decide
def op12617 : List WordIR.Op := [.shr 12712 31]
def bytes12617 : Bytes := ("    let r000031a9: u32 = r000031a8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12617 : bytes12617=statementBytes 12713 (op12617.map lower) ∧ bytes12617.length=54 := by core033_kernel_decide
def op12618 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12618 : Bytes := ("    let r000031aa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12618 : bytes12618=statementBytes 12714 (op12618.map lower) ∧ bytes12618.length=41 := by core033_kernel_decide
def op12619 : List WordIR.Op := [.bxor 12713 12714]
def bytes12619 : Bytes := ("    let r000031ab: u32 = r000031a9 ^ r000031aa;\n" : String).toByteArray.data.toList
theorem checked12619 : bytes12619=statementBytes 12715 (op12619.map lower) ∧ bytes12619.length=48 := by core033_kernel_decide
def op12620 : List WordIR.Op := [.bnot 12715]
def bytes12620 : Bytes := ("    let r000031ac: u32 = !r000031ab;\n" : String).toByteArray.data.toList
theorem checked12620 : bytes12620=statementBytes 12716 (op12620.map lower) ∧ bytes12620.length=37 := by core033_kernel_decide
def op12621 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12621 : Bytes := ("    let r000031ad: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12621 : bytes12621=statementBytes 12717 (op12621.map lower) ∧ bytes12621.length=41 := by core033_kernel_decide
def op12622 : List WordIR.Op := [.badd 12716 12717]
def bytes12622 : Bytes := ("    let r000031ae: u32 = r000031ac.wrapping_add(r000031ad);\n" : String).toByteArray.data.toList
theorem checked12622 : bytes12622=statementBytes 12718 (op12622.map lower) ∧ bytes12622.length=60 := by core033_kernel_decide
def op12623 : List WordIR.Op := [.bnot 12718]
def bytes12623 : Bytes := ("    let r000031af: u32 = !r000031ae;\n" : String).toByteArray.data.toList
theorem checked12623 : bytes12623=statementBytes 12719 (op12623.map lower) ∧ bytes12623.length=37 := by core033_kernel_decide
def op12624 : List WordIR.Op := [.band 12719 9803]
def bytes12624 : Bytes := ("    let r000031b0: u32 = r000031af & r0000264b;\n" : String).toByteArray.data.toList
theorem checked12624 : bytes12624=statementBytes 12720 (op12624.map lower) ∧ bytes12624.length=48 := by core033_kernel_decide
def op12625 : List WordIR.Op := [.bxor 12694 12720]
def bytes12625 : Bytes := ("    let r000031b1: u32 = r00003196 ^ r000031b0;\n" : String).toByteArray.data.toList
theorem checked12625 : bytes12625=statementBytes 12721 (op12625.map lower) ∧ bytes12625.length=48 := by core033_kernel_decide
def op12626 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12626 : Bytes := ("    let r000031b2: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12626 : bytes12626=statementBytes 12722 (op12626.map lower) ∧ bytes12626.length=41 := by core033_kernel_decide
def op12627 : List WordIR.Op := [.bxor 442 12722]
def bytes12627 : Bytes := ("    let r000031b3: u32 = r000001ba ^ r000031b2;\n" : String).toByteArray.data.toList
theorem checked12627 : bytes12627=statementBytes 12723 (op12627.map lower) ∧ bytes12627.length=48 := by core033_kernel_decide
def op12628 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12628 : Bytes := ("    let r000031b4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12628 : bytes12628=statementBytes 12724 (op12628.map lower) ∧ bytes12628.length=41 := by core033_kernel_decide
def op12629 : List WordIR.Op := [.bnot 12724]
def bytes12629 : Bytes := ("    let r000031b5: u32 = !r000031b4;\n" : String).toByteArray.data.toList
theorem checked12629 : bytes12629=statementBytes 12725 (op12629.map lower) ∧ bytes12629.length=37 := by core033_kernel_decide
def op12630 : List WordIR.Op := [.band 12723 12725]
def bytes12630 : Bytes := ("    let r000031b6: u32 = r000031b3 & r000031b5;\n" : String).toByteArray.data.toList
theorem checked12630 : bytes12630=statementBytes 12726 (op12630.map lower) ∧ bytes12630.length=48 := by core033_kernel_decide
def op12631 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12631 : Bytes := ("    let r000031b7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12631 : bytes12631=statementBytes 12727 (op12631.map lower) ∧ bytes12631.length=41 := by core033_kernel_decide
def op12632 : List WordIR.Op := [.bxor 442 12727]
def bytes12632 : Bytes := ("    let r000031b8: u32 = r000001ba ^ r000031b7;\n" : String).toByteArray.data.toList
theorem checked12632 : bytes12632=statementBytes 12728 (op12632.map lower) ∧ bytes12632.length=48 := by core033_kernel_decide
def op12633 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12633 : Bytes := ("    let r000031b9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12633 : bytes12633=statementBytes 12729 (op12633.map lower) ∧ bytes12633.length=41 := by core033_kernel_decide
def op12634 : List WordIR.Op := [.bnot 12729]
def bytes12634 : Bytes := ("    let r000031ba: u32 = !r000031b9;\n" : String).toByteArray.data.toList
theorem checked12634 : bytes12634=statementBytes 12730 (op12634.map lower) ∧ bytes12634.length=37 := by core033_kernel_decide
def op12635 : List WordIR.Op := [.bxor 12728 12730]
def bytes12635 : Bytes := ("    let r000031bb: u32 = r000031b8 ^ r000031ba;\n" : String).toByteArray.data.toList
theorem checked12635 : bytes12635=statementBytes 12731 (op12635.map lower) ∧ bytes12635.length=48 := by core033_kernel_decide
def op12636 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12636 : Bytes := ("    let r000031bc: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12636 : bytes12636=statementBytes 12732 (op12636.map lower) ∧ bytes12636.length=41 := by core033_kernel_decide
def op12637 : List WordIR.Op := [.bxor 442 12732]
def bytes12637 : Bytes := ("    let r000031bd: u32 = r000001ba ^ r000031bc;\n" : String).toByteArray.data.toList
theorem checked12637 : bytes12637=statementBytes 12733 (op12637.map lower) ∧ bytes12637.length=48 := by core033_kernel_decide
def op12638 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12638 : Bytes := ("    let r000031be: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12638 : bytes12638=statementBytes 12734 (op12638.map lower) ∧ bytes12638.length=41 := by core033_kernel_decide
def op12639 : List WordIR.Op := [.bnot 12734]
def bytes12639 : Bytes := ("    let r000031bf: u32 = !r000031be;\n" : String).toByteArray.data.toList
theorem checked12639 : bytes12639=statementBytes 12735 (op12639.map lower) ∧ bytes12639.length=37 := by core033_kernel_decide
def op12640 : List WordIR.Op := [.badd 12733 12735]
def bytes12640 : Bytes := ("    let r000031c0: u32 = r000031bd.wrapping_add(r000031bf);\n" : String).toByteArray.data.toList
theorem checked12640 : bytes12640=statementBytes 12736 (op12640.map lower) ∧ bytes12640.length=60 := by core033_kernel_decide
def op12641 : List WordIR.Op := [.bnot 12736]
def bytes12641 : Bytes := ("    let r000031c1: u32 = !r000031c0;\n" : String).toByteArray.data.toList
theorem checked12641 : bytes12641=statementBytes 12737 (op12641.map lower) ∧ bytes12641.length=37 := by core033_kernel_decide
def op12642 : List WordIR.Op := [.band 12731 12737]
def bytes12642 : Bytes := ("    let r000031c2: u32 = r000031bb & r000031c1;\n" : String).toByteArray.data.toList
theorem checked12642 : bytes12642=statementBytes 12738 (op12642.map lower) ∧ bytes12642.length=48 := by core033_kernel_decide
def op12643 : List WordIR.Op := [.bxor 12726 12738]
def bytes12643 : Bytes := ("    let r000031c3: u32 = r000031b6 ^ r000031c2;\n" : String).toByteArray.data.toList
theorem checked12643 : bytes12643=statementBytes 12739 (op12643.map lower) ∧ bytes12643.length=48 := by core033_kernel_decide
def op12644 : List WordIR.Op := [.shr 12739 31]
def bytes12644 : Bytes := ("    let r000031c4: u32 = r000031c3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12644 : bytes12644=statementBytes 12740 (op12644.map lower) ∧ bytes12644.length=54 := by core033_kernel_decide
def op12645 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12645 : Bytes := ("    let r000031c5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12645 : bytes12645=statementBytes 12741 (op12645.map lower) ∧ bytes12645.length=41 := by core033_kernel_decide
def op12646 : List WordIR.Op := [.bxor 12740 12741]
def bytes12646 : Bytes := ("    let r000031c6: u32 = r000031c4 ^ r000031c5;\n" : String).toByteArray.data.toList
theorem checked12646 : bytes12646=statementBytes 12742 (op12646.map lower) ∧ bytes12646.length=48 := by core033_kernel_decide
def op12647 : List WordIR.Op := [.bnot 12742]
def bytes12647 : Bytes := ("    let r000031c7: u32 = !r000031c6;\n" : String).toByteArray.data.toList
theorem checked12647 : bytes12647=statementBytes 12743 (op12647.map lower) ∧ bytes12647.length=37 := by core033_kernel_decide
def op12648 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12648 : Bytes := ("    let r000031c8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12648 : bytes12648=statementBytes 12744 (op12648.map lower) ∧ bytes12648.length=41 := by core033_kernel_decide
def op12649 : List WordIR.Op := [.badd 12743 12744]
def bytes12649 : Bytes := ("    let r000031c9: u32 = r000031c7.wrapping_add(r000031c8);\n" : String).toByteArray.data.toList
theorem checked12649 : bytes12649=statementBytes 12745 (op12649.map lower) ∧ bytes12649.length=60 := by core033_kernel_decide
def op12650 : List WordIR.Op := [.band 12745 10355]
def bytes12650 : Bytes := ("    let r000031ca: u32 = r000031c9 & r00002873;\n" : String).toByteArray.data.toList
theorem checked12650 : bytes12650=statementBytes 12746 (op12650.map lower) ∧ bytes12650.length=48 := by core033_kernel_decide
def op12651 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12651 : Bytes := ("    let r000031cb: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12651 : bytes12651=statementBytes 12747 (op12651.map lower) ∧ bytes12651.length=41 := by core033_kernel_decide
def op12652 : List WordIR.Op := [.bxor 442 12747]
def bytes12652 : Bytes := ("    let r000031cc: u32 = r000001ba ^ r000031cb;\n" : String).toByteArray.data.toList
theorem checked12652 : bytes12652=statementBytes 12748 (op12652.map lower) ∧ bytes12652.length=48 := by core033_kernel_decide
def op12653 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12653 : Bytes := ("    let r000031cd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12653 : bytes12653=statementBytes 12749 (op12653.map lower) ∧ bytes12653.length=41 := by core033_kernel_decide
def op12654 : List WordIR.Op := [.bnot 12749]
def bytes12654 : Bytes := ("    let r000031ce: u32 = !r000031cd;\n" : String).toByteArray.data.toList
theorem checked12654 : bytes12654=statementBytes 12750 (op12654.map lower) ∧ bytes12654.length=37 := by core033_kernel_decide
def op12655 : List WordIR.Op := [.band 12748 12750]
def bytes12655 : Bytes := ("    let r000031cf: u32 = r000031cc & r000031ce;\n" : String).toByteArray.data.toList
theorem checked12655 : bytes12655=statementBytes 12751 (op12655.map lower) ∧ bytes12655.length=48 := by core033_kernel_decide
def op12656 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12656 : Bytes := ("    let r000031d0: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12656 : bytes12656=statementBytes 12752 (op12656.map lower) ∧ bytes12656.length=41 := by core033_kernel_decide
def op12657 : List WordIR.Op := [.bxor 442 12752]
def bytes12657 : Bytes := ("    let r000031d1: u32 = r000001ba ^ r000031d0;\n" : String).toByteArray.data.toList
theorem checked12657 : bytes12657=statementBytes 12753 (op12657.map lower) ∧ bytes12657.length=48 := by core033_kernel_decide
def op12658 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12658 : Bytes := ("    let r000031d2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12658 : bytes12658=statementBytes 12754 (op12658.map lower) ∧ bytes12658.length=41 := by core033_kernel_decide
def op12659 : List WordIR.Op := [.bnot 12754]
def bytes12659 : Bytes := ("    let r000031d3: u32 = !r000031d2;\n" : String).toByteArray.data.toList
theorem checked12659 : bytes12659=statementBytes 12755 (op12659.map lower) ∧ bytes12659.length=37 := by core033_kernel_decide
def op12660 : List WordIR.Op := [.bxor 12753 12755]
def bytes12660 : Bytes := ("    let r000031d4: u32 = r000031d1 ^ r000031d3;\n" : String).toByteArray.data.toList
theorem checked12660 : bytes12660=statementBytes 12756 (op12660.map lower) ∧ bytes12660.length=48 := by core033_kernel_decide
def op12661 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12661 : Bytes := ("    let r000031d5: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12661 : bytes12661=statementBytes 12757 (op12661.map lower) ∧ bytes12661.length=41 := by core033_kernel_decide
def op12662 : List WordIR.Op := [.bxor 442 12757]
def bytes12662 : Bytes := ("    let r000031d6: u32 = r000001ba ^ r000031d5;\n" : String).toByteArray.data.toList
theorem checked12662 : bytes12662=statementBytes 12758 (op12662.map lower) ∧ bytes12662.length=48 := by core033_kernel_decide
def op12663 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12663 : Bytes := ("    let r000031d7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12663 : bytes12663=statementBytes 12759 (op12663.map lower) ∧ bytes12663.length=41 := by core033_kernel_decide
def op12664 : List WordIR.Op := [.bnot 12759]
def bytes12664 : Bytes := ("    let r000031d8: u32 = !r000031d7;\n" : String).toByteArray.data.toList
theorem checked12664 : bytes12664=statementBytes 12760 (op12664.map lower) ∧ bytes12664.length=37 := by core033_kernel_decide
def op12665 : List WordIR.Op := [.badd 12758 12760]
def bytes12665 : Bytes := ("    let r000031d9: u32 = r000031d6.wrapping_add(r000031d8);\n" : String).toByteArray.data.toList
theorem checked12665 : bytes12665=statementBytes 12761 (op12665.map lower) ∧ bytes12665.length=60 := by core033_kernel_decide
def op12666 : List WordIR.Op := [.bnot 12761]
def bytes12666 : Bytes := ("    let r000031da: u32 = !r000031d9;\n" : String).toByteArray.data.toList
theorem checked12666 : bytes12666=statementBytes 12762 (op12666.map lower) ∧ bytes12666.length=37 := by core033_kernel_decide
def op12667 : List WordIR.Op := [.band 12756 12762]
def bytes12667 : Bytes := ("    let r000031db: u32 = r000031d4 & r000031da;\n" : String).toByteArray.data.toList
theorem checked12667 : bytes12667=statementBytes 12763 (op12667.map lower) ∧ bytes12667.length=48 := by core033_kernel_decide
def op12668 : List WordIR.Op := [.bxor 12751 12763]
def bytes12668 : Bytes := ("    let r000031dc: u32 = r000031cf ^ r000031db;\n" : String).toByteArray.data.toList
theorem checked12668 : bytes12668=statementBytes 12764 (op12668.map lower) ∧ bytes12668.length=48 := by core033_kernel_decide
def op12669 : List WordIR.Op := [.shr 12764 31]
def bytes12669 : Bytes := ("    let r000031dd: u32 = r000031dc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12669 : bytes12669=statementBytes 12765 (op12669.map lower) ∧ bytes12669.length=54 := by core033_kernel_decide
def op12670 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12670 : Bytes := ("    let r000031de: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12670 : bytes12670=statementBytes 12766 (op12670.map lower) ∧ bytes12670.length=41 := by core033_kernel_decide
def op12671 : List WordIR.Op := [.bxor 12765 12766]
def bytes12671 : Bytes := ("    let r000031df: u32 = r000031dd ^ r000031de;\n" : String).toByteArray.data.toList
theorem checked12671 : bytes12671=statementBytes 12767 (op12671.map lower) ∧ bytes12671.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12608,op12609,op12610,op12611,op12612,op12613,op12614,op12615,op12616,op12617,op12618,op12619,op12620,op12621,op12622,op12623,op12624,op12625,op12626,op12627,op12628,op12629,op12630,op12631,op12632,op12633,op12634,op12635,op12636,op12637,op12638,op12639,op12640,op12641,op12642,op12643,op12644,op12645,op12646,op12647,op12648,op12649,op12650,op12651,op12652,op12653,op12654,op12655,op12656,op12657,op12658,op12659,op12660,op12661,op12662,op12663,op12664,op12665,op12666,op12667,op12668,op12669,op12670,op12671]
def chunks : List Bytes := [bytes12608,bytes12609,bytes12610,bytes12611,bytes12612,bytes12613,bytes12614,bytes12615,bytes12616,bytes12617,bytes12618,bytes12619,bytes12620,bytes12621,bytes12622,bytes12623,bytes12624,bytes12625,bytes12626,bytes12627,bytes12628,bytes12629,bytes12630,bytes12631,bytes12632,bytes12633,bytes12634,bytes12635,bytes12636,bytes12637,bytes12638,bytes12639,bytes12640,bytes12641,bytes12642,bytes12643,bytes12644,bytes12645,bytes12646,bytes12647,bytes12648,bytes12649,bytes12650,bytes12651,bytes12652,bytes12653,bytes12654,bytes12655,bytes12656,bytes12657,bytes12658,bytes12659,bytes12660,bytes12661,bytes12662,bytes12663,bytes12664,bytes12665,bytes12666,bytes12667,bytes12668,bytes12669,bytes12670,bytes12671]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12704 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12608.1 (.cons _ _ _ _ _ checked12609.1 (.cons _ _ _ _ _ checked12610.1 (.cons _ _ _ _ _ checked12611.1 (.cons _ _ _ _ _ checked12612.1 (.cons _ _ _ _ _ checked12613.1 (.cons _ _ _ _ _ checked12614.1 (.cons _ _ _ _ _ checked12615.1 (.cons _ _ _ _ _ checked12616.1 (.cons _ _ _ _ _ checked12617.1 (.cons _ _ _ _ _ checked12618.1 (.cons _ _ _ _ _ checked12619.1 (.cons _ _ _ _ _ checked12620.1 (.cons _ _ _ _ _ checked12621.1 (.cons _ _ _ _ _ checked12622.1 (.cons _ _ _ _ _ checked12623.1 (.cons _ _ _ _ _ checked12624.1 (.cons _ _ _ _ _ checked12625.1 (.cons _ _ _ _ _ checked12626.1 (.cons _ _ _ _ _ checked12627.1 (.cons _ _ _ _ _ checked12628.1 (.cons _ _ _ _ _ checked12629.1 (.cons _ _ _ _ _ checked12630.1 (.cons _ _ _ _ _ checked12631.1 (.cons _ _ _ _ _ checked12632.1 (.cons _ _ _ _ _ checked12633.1 (.cons _ _ _ _ _ checked12634.1 (.cons _ _ _ _ _ checked12635.1 (.cons _ _ _ _ _ checked12636.1 (.cons _ _ _ _ _ checked12637.1 (.cons _ _ _ _ _ checked12638.1 (.cons _ _ _ _ _ checked12639.1 (.cons _ _ _ _ _ checked12640.1 (.cons _ _ _ _ _ checked12641.1 (.cons _ _ _ _ _ checked12642.1 (.cons _ _ _ _ _ checked12643.1 (.cons _ _ _ _ _ checked12644.1 (.cons _ _ _ _ _ checked12645.1 (.cons _ _ _ _ _ checked12646.1 (.cons _ _ _ _ _ checked12647.1 (.cons _ _ _ _ _ checked12648.1 (.cons _ _ _ _ _ checked12649.1 (.cons _ _ _ _ _ checked12650.1 (.cons _ _ _ _ _ checked12651.1 (.cons _ _ _ _ _ checked12652.1 (.cons _ _ _ _ _ checked12653.1 (.cons _ _ _ _ _ checked12654.1 (.cons _ _ _ _ _ checked12655.1 (.cons _ _ _ _ _ checked12656.1 (.cons _ _ _ _ _ checked12657.1 (.cons _ _ _ _ _ checked12658.1 (.cons _ _ _ _ _ checked12659.1 (.cons _ _ _ _ _ checked12660.1 (.cons _ _ _ _ _ checked12661.1 (.cons _ _ _ _ _ checked12662.1 (.cons _ _ _ _ _ checked12663.1 (.cons _ _ _ _ _ checked12664.1 (.cons _ _ _ _ _ checked12665.1 (.cons _ _ _ _ _ checked12666.1 (.cons _ _ _ _ _ checked12667.1 (.cons _ _ _ _ _ checked12668.1 (.cons _ _ _ _ _ checked12669.1 (.cons _ _ _ _ _ checked12670.1 (.cons _ _ _ _ _ checked12671.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12704 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2874 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12608.2,checked12609.2,checked12610.2,checked12611.2,checked12612.2,checked12613.2,checked12614.2,checked12615.2,checked12616.2,checked12617.2,checked12618.2,checked12619.2,checked12620.2,checked12621.2,checked12622.2,checked12623.2,checked12624.2,checked12625.2,checked12626.2,checked12627.2,checked12628.2,checked12629.2,checked12630.2,checked12631.2,checked12632.2,checked12633.2,checked12634.2,checked12635.2,checked12636.2,checked12637.2,checked12638.2,checked12639.2,checked12640.2,checked12641.2,checked12642.2,checked12643.2,checked12644.2,checked12645.2,checked12646.2,checked12647.2,checked12648.2,checked12649.2,checked12650.2,checked12651.2,checked12652.2,checked12653.2,checked12654.2,checked12655.2,checked12656.2,checked12657.2,checked12658.2,checked12659.2,checked12660.2,checked12661.2,checked12662.2,checked12663.2,checked12664.2,checked12665.2,checked12666.2,checked12667.2,checked12668.2,checked12669.2,checked12670.2,checked12671.2]
  decide
end ArtifactPairedPathRoundGroup197
