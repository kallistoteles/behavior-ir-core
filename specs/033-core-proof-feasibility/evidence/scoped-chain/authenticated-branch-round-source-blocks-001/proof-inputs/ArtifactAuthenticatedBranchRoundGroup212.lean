import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup212
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13568 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes13568 : Bytes := ("    let r00003576: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked13568 : bytes13568=statementBytes 13686 (op13568.map lower) ∧ bytes13568.length=41 := by core033_kernel_decide
def op13569 : List WordIR.Op := [.bxor 693 13686]
def bytes13569 : Bytes := ("    let r00003577: u32 = r000002b5 ^ r00003576;\n" : String).toByteArray.data.toList
theorem checked13569 : bytes13569=statementBytes 13687 (op13569.map lower) ∧ bytes13569.length=48 := by core033_kernel_decide
def op13570 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13570 : Bytes := ("    let r00003578: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13570 : bytes13570=statementBytes 13688 (op13570.map lower) ∧ bytes13570.length=41 := by core033_kernel_decide
def op13571 : List WordIR.Op := [.bnot 13688]
def bytes13571 : Bytes := ("    let r00003579: u32 = !r00003578;\n" : String).toByteArray.data.toList
theorem checked13571 : bytes13571=statementBytes 13689 (op13571.map lower) ∧ bytes13571.length=37 := by core033_kernel_decide
def op13572 : List WordIR.Op := [.band 13687 13689]
def bytes13572 : Bytes := ("    let r0000357a: u32 = r00003577 & r00003579;\n" : String).toByteArray.data.toList
theorem checked13572 : bytes13572=statementBytes 13690 (op13572.map lower) ∧ bytes13572.length=48 := by core033_kernel_decide
def op13573 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes13573 : Bytes := ("    let r0000357b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked13573 : bytes13573=statementBytes 13691 (op13573.map lower) ∧ bytes13573.length=41 := by core033_kernel_decide
def op13574 : List WordIR.Op := [.bxor 693 13691]
def bytes13574 : Bytes := ("    let r0000357c: u32 = r000002b5 ^ r0000357b;\n" : String).toByteArray.data.toList
theorem checked13574 : bytes13574=statementBytes 13692 (op13574.map lower) ∧ bytes13574.length=48 := by core033_kernel_decide
def op13575 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13575 : Bytes := ("    let r0000357d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13575 : bytes13575=statementBytes 13693 (op13575.map lower) ∧ bytes13575.length=41 := by core033_kernel_decide
def op13576 : List WordIR.Op := [.bnot 13693]
def bytes13576 : Bytes := ("    let r0000357e: u32 = !r0000357d;\n" : String).toByteArray.data.toList
theorem checked13576 : bytes13576=statementBytes 13694 (op13576.map lower) ∧ bytes13576.length=37 := by core033_kernel_decide
def op13577 : List WordIR.Op := [.bxor 13692 13694]
def bytes13577 : Bytes := ("    let r0000357f: u32 = r0000357c ^ r0000357e;\n" : String).toByteArray.data.toList
theorem checked13577 : bytes13577=statementBytes 13695 (op13577.map lower) ∧ bytes13577.length=48 := by core033_kernel_decide
def op13578 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes13578 : Bytes := ("    let r00003580: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked13578 : bytes13578=statementBytes 13696 (op13578.map lower) ∧ bytes13578.length=41 := by core033_kernel_decide
def op13579 : List WordIR.Op := [.bxor 693 13696]
def bytes13579 : Bytes := ("    let r00003581: u32 = r000002b5 ^ r00003580;\n" : String).toByteArray.data.toList
theorem checked13579 : bytes13579=statementBytes 13697 (op13579.map lower) ∧ bytes13579.length=48 := by core033_kernel_decide
def op13580 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13580 : Bytes := ("    let r00003582: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13580 : bytes13580=statementBytes 13698 (op13580.map lower) ∧ bytes13580.length=41 := by core033_kernel_decide
def op13581 : List WordIR.Op := [.bnot 13698]
def bytes13581 : Bytes := ("    let r00003583: u32 = !r00003582;\n" : String).toByteArray.data.toList
theorem checked13581 : bytes13581=statementBytes 13699 (op13581.map lower) ∧ bytes13581.length=37 := by core033_kernel_decide
def op13582 : List WordIR.Op := [.badd 13697 13699]
def bytes13582 : Bytes := ("    let r00003584: u32 = r00003581.wrapping_add(r00003583);\n" : String).toByteArray.data.toList
theorem checked13582 : bytes13582=statementBytes 13700 (op13582.map lower) ∧ bytes13582.length=60 := by core033_kernel_decide
def op13583 : List WordIR.Op := [.bnot 13700]
def bytes13583 : Bytes := ("    let r00003585: u32 = !r00003584;\n" : String).toByteArray.data.toList
theorem checked13583 : bytes13583=statementBytes 13701 (op13583.map lower) ∧ bytes13583.length=37 := by core033_kernel_decide
def op13584 : List WordIR.Op := [.band 13695 13701]
def bytes13584 : Bytes := ("    let r00003586: u32 = r0000357f & r00003585;\n" : String).toByteArray.data.toList
theorem checked13584 : bytes13584=statementBytes 13702 (op13584.map lower) ∧ bytes13584.length=48 := by core033_kernel_decide
def op13585 : List WordIR.Op := [.bxor 13690 13702]
def bytes13585 : Bytes := ("    let r00003587: u32 = r0000357a ^ r00003586;\n" : String).toByteArray.data.toList
theorem checked13585 : bytes13585=statementBytes 13703 (op13585.map lower) ∧ bytes13585.length=48 := by core033_kernel_decide
def op13586 : List WordIR.Op := [.shr 13703 31]
def bytes13586 : Bytes := ("    let r00003588: u32 = r00003587 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13586 : bytes13586=statementBytes 13704 (op13586.map lower) ∧ bytes13586.length=54 := by core033_kernel_decide
def op13587 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13587 : Bytes := ("    let r00003589: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13587 : bytes13587=statementBytes 13705 (op13587.map lower) ∧ bytes13587.length=41 := by core033_kernel_decide
def op13588 : List WordIR.Op := [.bxor 13704 13705]
def bytes13588 : Bytes := ("    let r0000358a: u32 = r00003588 ^ r00003589;\n" : String).toByteArray.data.toList
theorem checked13588 : bytes13588=statementBytes 13706 (op13588.map lower) ∧ bytes13588.length=48 := by core033_kernel_decide
def op13589 : List WordIR.Op := [.bxor 13685 13706]
def bytes13589 : Bytes := ("    let r0000358b: u32 = r00003575 ^ r0000358a;\n" : String).toByteArray.data.toList
theorem checked13589 : bytes13589=statementBytes 13707 (op13589.map lower) ∧ bytes13589.length=48 := by core033_kernel_decide
def op13590 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13590 : Bytes := ("    let r0000358c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13590 : bytes13590=statementBytes 13708 (op13590.map lower) ∧ bytes13590.length=41 := by core033_kernel_decide
def op13591 : List WordIR.Op := [.bxor 693 13708]
def bytes13591 : Bytes := ("    let r0000358d: u32 = r000002b5 ^ r0000358c;\n" : String).toByteArray.data.toList
theorem checked13591 : bytes13591=statementBytes 13709 (op13591.map lower) ∧ bytes13591.length=48 := by core033_kernel_decide
def op13592 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13592 : Bytes := ("    let r0000358e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13592 : bytes13592=statementBytes 13710 (op13592.map lower) ∧ bytes13592.length=41 := by core033_kernel_decide
def op13593 : List WordIR.Op := [.bnot 13710]
def bytes13593 : Bytes := ("    let r0000358f: u32 = !r0000358e;\n" : String).toByteArray.data.toList
theorem checked13593 : bytes13593=statementBytes 13711 (op13593.map lower) ∧ bytes13593.length=37 := by core033_kernel_decide
def op13594 : List WordIR.Op := [.band 13709 13711]
def bytes13594 : Bytes := ("    let r00003590: u32 = r0000358d & r0000358f;\n" : String).toByteArray.data.toList
theorem checked13594 : bytes13594=statementBytes 13712 (op13594.map lower) ∧ bytes13594.length=48 := by core033_kernel_decide
def op13595 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13595 : Bytes := ("    let r00003591: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13595 : bytes13595=statementBytes 13713 (op13595.map lower) ∧ bytes13595.length=41 := by core033_kernel_decide
def op13596 : List WordIR.Op := [.bxor 693 13713]
def bytes13596 : Bytes := ("    let r00003592: u32 = r000002b5 ^ r00003591;\n" : String).toByteArray.data.toList
theorem checked13596 : bytes13596=statementBytes 13714 (op13596.map lower) ∧ bytes13596.length=48 := by core033_kernel_decide
def op13597 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13597 : Bytes := ("    let r00003593: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13597 : bytes13597=statementBytes 13715 (op13597.map lower) ∧ bytes13597.length=41 := by core033_kernel_decide
def op13598 : List WordIR.Op := [.bnot 13715]
def bytes13598 : Bytes := ("    let r00003594: u32 = !r00003593;\n" : String).toByteArray.data.toList
theorem checked13598 : bytes13598=statementBytes 13716 (op13598.map lower) ∧ bytes13598.length=37 := by core033_kernel_decide
def op13599 : List WordIR.Op := [.bxor 13714 13716]
def bytes13599 : Bytes := ("    let r00003595: u32 = r00003592 ^ r00003594;\n" : String).toByteArray.data.toList
theorem checked13599 : bytes13599=statementBytes 13717 (op13599.map lower) ∧ bytes13599.length=48 := by core033_kernel_decide
def op13600 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13600 : Bytes := ("    let r00003596: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13600 : bytes13600=statementBytes 13718 (op13600.map lower) ∧ bytes13600.length=41 := by core033_kernel_decide
def op13601 : List WordIR.Op := [.bxor 693 13718]
def bytes13601 : Bytes := ("    let r00003597: u32 = r000002b5 ^ r00003596;\n" : String).toByteArray.data.toList
theorem checked13601 : bytes13601=statementBytes 13719 (op13601.map lower) ∧ bytes13601.length=48 := by core033_kernel_decide
def op13602 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13602 : Bytes := ("    let r00003598: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13602 : bytes13602=statementBytes 13720 (op13602.map lower) ∧ bytes13602.length=41 := by core033_kernel_decide
def op13603 : List WordIR.Op := [.bnot 13720]
def bytes13603 : Bytes := ("    let r00003599: u32 = !r00003598;\n" : String).toByteArray.data.toList
theorem checked13603 : bytes13603=statementBytes 13721 (op13603.map lower) ∧ bytes13603.length=37 := by core033_kernel_decide
def op13604 : List WordIR.Op := [.badd 13719 13721]
def bytes13604 : Bytes := ("    let r0000359a: u32 = r00003597.wrapping_add(r00003599);\n" : String).toByteArray.data.toList
theorem checked13604 : bytes13604=statementBytes 13722 (op13604.map lower) ∧ bytes13604.length=60 := by core033_kernel_decide
def op13605 : List WordIR.Op := [.bnot 13722]
def bytes13605 : Bytes := ("    let r0000359b: u32 = !r0000359a;\n" : String).toByteArray.data.toList
theorem checked13605 : bytes13605=statementBytes 13723 (op13605.map lower) ∧ bytes13605.length=37 := by core033_kernel_decide
def op13606 : List WordIR.Op := [.band 13717 13723]
def bytes13606 : Bytes := ("    let r0000359c: u32 = r00003595 & r0000359b;\n" : String).toByteArray.data.toList
theorem checked13606 : bytes13606=statementBytes 13724 (op13606.map lower) ∧ bytes13606.length=48 := by core033_kernel_decide
def op13607 : List WordIR.Op := [.bxor 13712 13724]
def bytes13607 : Bytes := ("    let r0000359d: u32 = r00003590 ^ r0000359c;\n" : String).toByteArray.data.toList
theorem checked13607 : bytes13607=statementBytes 13725 (op13607.map lower) ∧ bytes13607.length=48 := by core033_kernel_decide
def op13608 : List WordIR.Op := [.shr 13725 31]
def bytes13608 : Bytes := ("    let r0000359e: u32 = r0000359d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13608 : bytes13608=statementBytes 13726 (op13608.map lower) ∧ bytes13608.length=54 := by core033_kernel_decide
def op13609 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13609 : Bytes := ("    let r0000359f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13609 : bytes13609=statementBytes 13727 (op13609.map lower) ∧ bytes13609.length=41 := by core033_kernel_decide
def op13610 : List WordIR.Op := [.bxor 13726 13727]
def bytes13610 : Bytes := ("    let r000035a0: u32 = r0000359e ^ r0000359f;\n" : String).toByteArray.data.toList
theorem checked13610 : bytes13610=statementBytes 13728 (op13610.map lower) ∧ bytes13610.length=48 := by core033_kernel_decide
def op13611 : List WordIR.Op := [.bxor 13707 13728]
def bytes13611 : Bytes := ("    let r000035a1: u32 = r0000358b ^ r000035a0;\n" : String).toByteArray.data.toList
theorem checked13611 : bytes13611=statementBytes 13729 (op13611.map lower) ∧ bytes13611.length=48 := by core033_kernel_decide
def op13612 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13612 : Bytes := ("    let r000035a2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13612 : bytes13612=statementBytes 13730 (op13612.map lower) ∧ bytes13612.length=41 := by core033_kernel_decide
def op13613 : List WordIR.Op := [.badd 0 13730]
def bytes13613 : Bytes := ("    let r000035a3: u32 = r00000000.wrapping_add(r000035a2);\n" : String).toByteArray.data.toList
theorem checked13613 : bytes13613=statementBytes 13731 (op13613.map lower) ∧ bytes13613.length=60 := by core033_kernel_decide
def op13614 : List WordIR.Op := [.bnot 440]
def bytes13614 : Bytes := ("    let r000035a4: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13614 : bytes13614=statementBytes 13732 (op13614.map lower) ∧ bytes13614.length=37 := by core033_kernel_decide
def op13615 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13615 : Bytes := ("    let r000035a5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13615 : bytes13615=statementBytes 13733 (op13615.map lower) ∧ bytes13615.length=41 := by core033_kernel_decide
def op13616 : List WordIR.Op := [.badd 13732 13733]
def bytes13616 : Bytes := ("    let r000035a6: u32 = r000035a4.wrapping_add(r000035a5);\n" : String).toByteArray.data.toList
theorem checked13616 : bytes13616=statementBytes 13734 (op13616.map lower) ∧ bytes13616.length=60 := by core033_kernel_decide
def op13617 : List WordIR.Op := [.band 13734 11584]
def bytes13617 : Bytes := ("    let r000035a7: u32 = r000035a6 & r00002d40;\n" : String).toByteArray.data.toList
theorem checked13617 : bytes13617=statementBytes 13735 (op13617.map lower) ∧ bytes13617.length=48 := by core033_kernel_decide
def op13618 : List WordIR.Op := [.bnot 440]
def bytes13618 : Bytes := ("    let r000035a8: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13618 : bytes13618=statementBytes 13736 (op13618.map lower) ∧ bytes13618.length=37 := by core033_kernel_decide
def op13619 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13619 : Bytes := ("    let r000035a9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13619 : bytes13619=statementBytes 13737 (op13619.map lower) ∧ bytes13619.length=41 := by core033_kernel_decide
def op13620 : List WordIR.Op := [.badd 13736 13737]
def bytes13620 : Bytes := ("    let r000035aa: u32 = r000035a8.wrapping_add(r000035a9);\n" : String).toByteArray.data.toList
theorem checked13620 : bytes13620=statementBytes 13738 (op13620.map lower) ∧ bytes13620.length=60 := by core033_kernel_decide
def op13621 : List WordIR.Op := [.bnot 13738]
def bytes13621 : Bytes := ("    let r000035ab: u32 = !r000035aa;\n" : String).toByteArray.data.toList
theorem checked13621 : bytes13621=statementBytes 13739 (op13621.map lower) ∧ bytes13621.length=37 := by core033_kernel_decide
def op13622 : List WordIR.Op := [.band 13739 2]
def bytes13622 : Bytes := ("    let r000035ac: u32 = r000035ab & r00000002;\n" : String).toByteArray.data.toList
theorem checked13622 : bytes13622=statementBytes 13740 (op13622.map lower) ∧ bytes13622.length=48 := by core033_kernel_decide
def op13623 : List WordIR.Op := [.bxor 13735 13740]
def bytes13623 : Bytes := ("    let r000035ad: u32 = r000035a7 ^ r000035ac;\n" : String).toByteArray.data.toList
theorem checked13623 : bytes13623=statementBytes 13741 (op13623.map lower) ∧ bytes13623.length=48 := by core033_kernel_decide
def op13624 : List WordIR.Op := [.bnot 398]
def bytes13624 : Bytes := ("    let r000035ae: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13624 : bytes13624=statementBytes 13742 (op13624.map lower) ∧ bytes13624.length=37 := by core033_kernel_decide
def op13625 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13625 : Bytes := ("    let r000035af: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13625 : bytes13625=statementBytes 13743 (op13625.map lower) ∧ bytes13625.length=41 := by core033_kernel_decide
def op13626 : List WordIR.Op := [.badd 13742 13743]
def bytes13626 : Bytes := ("    let r000035b0: u32 = r000035ae.wrapping_add(r000035af);\n" : String).toByteArray.data.toList
theorem checked13626 : bytes13626=statementBytes 13744 (op13626.map lower) ∧ bytes13626.length=60 := by core033_kernel_decide
def op13627 : List WordIR.Op := [.band 13744 12052]
def bytes13627 : Bytes := ("    let r000035b1: u32 = r000035b0 & r00002f14;\n" : String).toByteArray.data.toList
theorem checked13627 : bytes13627=statementBytes 13745 (op13627.map lower) ∧ bytes13627.length=48 := by core033_kernel_decide
def op13628 : List WordIR.Op := [.bnot 398]
def bytes13628 : Bytes := ("    let r000035b2: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13628 : bytes13628=statementBytes 13746 (op13628.map lower) ∧ bytes13628.length=37 := by core033_kernel_decide
def op13629 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13629 : Bytes := ("    let r000035b3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13629 : bytes13629=statementBytes 13747 (op13629.map lower) ∧ bytes13629.length=41 := by core033_kernel_decide
def op13630 : List WordIR.Op := [.badd 13746 13747]
def bytes13630 : Bytes := ("    let r000035b4: u32 = r000035b2.wrapping_add(r000035b3);\n" : String).toByteArray.data.toList
theorem checked13630 : bytes13630=statementBytes 13748 (op13630.map lower) ∧ bytes13630.length=60 := by core033_kernel_decide
def op13631 : List WordIR.Op := [.bnot 13748]
def bytes13631 : Bytes := ("    let r000035b5: u32 = !r000035b4;\n" : String).toByteArray.data.toList
theorem checked13631 : bytes13631=statementBytes 13749 (op13631.map lower) ∧ bytes13631.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13568,op13569,op13570,op13571,op13572,op13573,op13574,op13575,op13576,op13577,op13578,op13579,op13580,op13581,op13582,op13583,op13584,op13585,op13586,op13587,op13588,op13589,op13590,op13591,op13592,op13593,op13594,op13595,op13596,op13597,op13598,op13599,op13600,op13601,op13602,op13603,op13604,op13605,op13606,op13607,op13608,op13609,op13610,op13611,op13612,op13613,op13614,op13615,op13616,op13617,op13618,op13619,op13620,op13621,op13622,op13623,op13624,op13625,op13626,op13627,op13628,op13629,op13630,op13631]
def chunks : List Bytes := [bytes13568,bytes13569,bytes13570,bytes13571,bytes13572,bytes13573,bytes13574,bytes13575,bytes13576,bytes13577,bytes13578,bytes13579,bytes13580,bytes13581,bytes13582,bytes13583,bytes13584,bytes13585,bytes13586,bytes13587,bytes13588,bytes13589,bytes13590,bytes13591,bytes13592,bytes13593,bytes13594,bytes13595,bytes13596,bytes13597,bytes13598,bytes13599,bytes13600,bytes13601,bytes13602,bytes13603,bytes13604,bytes13605,bytes13606,bytes13607,bytes13608,bytes13609,bytes13610,bytes13611,bytes13612,bytes13613,bytes13614,bytes13615,bytes13616,bytes13617,bytes13618,bytes13619,bytes13620,bytes13621,bytes13622,bytes13623,bytes13624,bytes13625,bytes13626,bytes13627,bytes13628,bytes13629,bytes13630,bytes13631]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13686 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13568.1 (.cons _ _ _ _ _ checked13569.1 (.cons _ _ _ _ _ checked13570.1 (.cons _ _ _ _ _ checked13571.1 (.cons _ _ _ _ _ checked13572.1 (.cons _ _ _ _ _ checked13573.1 (.cons _ _ _ _ _ checked13574.1 (.cons _ _ _ _ _ checked13575.1 (.cons _ _ _ _ _ checked13576.1 (.cons _ _ _ _ _ checked13577.1 (.cons _ _ _ _ _ checked13578.1 (.cons _ _ _ _ _ checked13579.1 (.cons _ _ _ _ _ checked13580.1 (.cons _ _ _ _ _ checked13581.1 (.cons _ _ _ _ _ checked13582.1 (.cons _ _ _ _ _ checked13583.1 (.cons _ _ _ _ _ checked13584.1 (.cons _ _ _ _ _ checked13585.1 (.cons _ _ _ _ _ checked13586.1 (.cons _ _ _ _ _ checked13587.1 (.cons _ _ _ _ _ checked13588.1 (.cons _ _ _ _ _ checked13589.1 (.cons _ _ _ _ _ checked13590.1 (.cons _ _ _ _ _ checked13591.1 (.cons _ _ _ _ _ checked13592.1 (.cons _ _ _ _ _ checked13593.1 (.cons _ _ _ _ _ checked13594.1 (.cons _ _ _ _ _ checked13595.1 (.cons _ _ _ _ _ checked13596.1 (.cons _ _ _ _ _ checked13597.1 (.cons _ _ _ _ _ checked13598.1 (.cons _ _ _ _ _ checked13599.1 (.cons _ _ _ _ _ checked13600.1 (.cons _ _ _ _ _ checked13601.1 (.cons _ _ _ _ _ checked13602.1 (.cons _ _ _ _ _ checked13603.1 (.cons _ _ _ _ _ checked13604.1 (.cons _ _ _ _ _ checked13605.1 (.cons _ _ _ _ _ checked13606.1 (.cons _ _ _ _ _ checked13607.1 (.cons _ _ _ _ _ checked13608.1 (.cons _ _ _ _ _ checked13609.1 (.cons _ _ _ _ _ checked13610.1 (.cons _ _ _ _ _ checked13611.1 (.cons _ _ _ _ _ checked13612.1 (.cons _ _ _ _ _ checked13613.1 (.cons _ _ _ _ _ checked13614.1 (.cons _ _ _ _ _ checked13615.1 (.cons _ _ _ _ _ checked13616.1 (.cons _ _ _ _ _ checked13617.1 (.cons _ _ _ _ _ checked13618.1 (.cons _ _ _ _ _ checked13619.1 (.cons _ _ _ _ _ checked13620.1 (.cons _ _ _ _ _ checked13621.1 (.cons _ _ _ _ _ checked13622.1 (.cons _ _ _ _ _ checked13623.1 (.cons _ _ _ _ _ checked13624.1 (.cons _ _ _ _ _ checked13625.1 (.cons _ _ _ _ _ checked13626.1 (.cons _ _ _ _ _ checked13627.1 (.cons _ _ _ _ _ checked13628.1 (.cons _ _ _ _ _ checked13629.1 (.cons _ _ _ _ _ checked13630.1 (.cons _ _ _ _ _ checked13631.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13686 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2881 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13568.2,checked13569.2,checked13570.2,checked13571.2,checked13572.2,checked13573.2,checked13574.2,checked13575.2,checked13576.2,checked13577.2,checked13578.2,checked13579.2,checked13580.2,checked13581.2,checked13582.2,checked13583.2,checked13584.2,checked13585.2,checked13586.2,checked13587.2,checked13588.2,checked13589.2,checked13590.2,checked13591.2,checked13592.2,checked13593.2,checked13594.2,checked13595.2,checked13596.2,checked13597.2,checked13598.2,checked13599.2,checked13600.2,checked13601.2,checked13602.2,checked13603.2,checked13604.2,checked13605.2,checked13606.2,checked13607.2,checked13608.2,checked13609.2,checked13610.2,checked13611.2,checked13612.2,checked13613.2,checked13614.2,checked13615.2,checked13616.2,checked13617.2,checked13618.2,checked13619.2,checked13620.2,checked13621.2,checked13622.2,checked13623.2,checked13624.2,checked13625.2,checked13626.2,checked13627.2,checked13628.2,checked13629.2,checked13630.2,checked13631.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup212
