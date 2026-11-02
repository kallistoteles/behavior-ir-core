import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op768 : List WordIR.Op := [.bxor 789 791]
def bytes768 : Bytes := ("    let r00000318: u32 = r00000315 ^ r00000317;\n" : String).toByteArray.data.toList
theorem checked768 : bytes768=statementBytes 792 (op768.map lower) ∧ bytes768.length=48 := by core033_kernel_decide
def op769 : List WordIR.Op := [.badd 788 792]
def bytes769 : Bytes := ("    let r00000319: u32 = r00000314.wrapping_add(r00000318);\n" : String).toByteArray.data.toList
theorem checked769 : bytes769=statementBytes 793 (op769.map lower) ∧ bytes769.length=60 := by core033_kernel_decide
def op770 : List WordIR.Op := [.literal (BitVec.ofNat 32 1508970993)]
def bytes770 : Bytes := ("    let r0000031a: u32 = 0x59f111f1_u32;\n" : String).toByteArray.data.toList
theorem checked770 : bytes770=statementBytes 794 (op770.map lower) ∧ bytes770.length=41 := by core033_kernel_decide
def op771 : List WordIR.Op := [.badd 793 794]
def bytes771 : Bytes := ("    let r0000031b: u32 = r00000319.wrapping_add(r0000031a);\n" : String).toByteArray.data.toList
theorem checked771 : bytes771=statementBytes 795 (op771.map lower) ∧ bytes771.length=60 := by core033_kernel_decide
def op772 : List WordIR.Op := [.badd 795 13]
def bytes772 : Bytes := ("    let r0000031c: u32 = r0000031b.wrapping_add(r0000000d);\n" : String).toByteArray.data.toList
theorem checked772 : bytes772=statementBytes 796 (op772.map lower) ∧ bytes772.length=60 := by core033_kernel_decide
def op773 : List WordIR.Op := [.rotr 781 2]
def bytes773 : Bytes := ("    let r0000031d: u32 = r0000030d.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked773 : bytes773=statementBytes 797 (op773.map lower) ∧ bytes773.length=65 := by core033_kernel_decide
def op774 : List WordIR.Op := [.rotr 781 13]
def bytes774 : Bytes := ("    let r0000031e: u32 = r0000030d.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked774 : bytes774=statementBytes 798 (op774.map lower) ∧ bytes774.length=65 := by core033_kernel_decide
def op775 : List WordIR.Op := [.bxor 797 798]
def bytes775 : Bytes := ("    let r0000031f: u32 = r0000031d ^ r0000031e;\n" : String).toByteArray.data.toList
theorem checked775 : bytes775=statementBytes 799 (op775.map lower) ∧ bytes775.length=48 := by core033_kernel_decide
def op776 : List WordIR.Op := [.rotr 781 22]
def bytes776 : Bytes := ("    let r00000320: u32 = r0000030d.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked776 : bytes776=statementBytes 800 (op776.map lower) ∧ bytes776.length=65 := by core033_kernel_decide
def op777 : List WordIR.Op := [.bxor 799 800]
def bytes777 : Bytes := ("    let r00000321: u32 = r0000031f ^ r00000320;\n" : String).toByteArray.data.toList
theorem checked777 : bytes777=statementBytes 801 (op777.map lower) ∧ bytes777.length=48 := by core033_kernel_decide
def op778 : List WordIR.Op := [.band 781 754]
def bytes778 : Bytes := ("    let r00000322: u32 = r0000030d & r000002f2;\n" : String).toByteArray.data.toList
theorem checked778 : bytes778=statementBytes 802 (op778.map lower) ∧ bytes778.length=48 := by core033_kernel_decide
def op779 : List WordIR.Op := [.band 781 727]
def bytes779 : Bytes := ("    let r00000323: u32 = r0000030d & r000002d7;\n" : String).toByteArray.data.toList
theorem checked779 : bytes779=statementBytes 803 (op779.map lower) ∧ bytes779.length=48 := by core033_kernel_decide
def op780 : List WordIR.Op := [.bxor 802 803]
def bytes780 : Bytes := ("    let r00000324: u32 = r00000322 ^ r00000323;\n" : String).toByteArray.data.toList
theorem checked780 : bytes780=statementBytes 804 (op780.map lower) ∧ bytes780.length=48 := by core033_kernel_decide
def op781 : List WordIR.Op := [.band 754 727]
def bytes781 : Bytes := ("    let r00000325: u32 = r000002f2 & r000002d7;\n" : String).toByteArray.data.toList
theorem checked781 : bytes781=statementBytes 805 (op781.map lower) ∧ bytes781.length=48 := by core033_kernel_decide
def op782 : List WordIR.Op := [.bxor 804 805]
def bytes782 : Bytes := ("    let r00000326: u32 = r00000324 ^ r00000325;\n" : String).toByteArray.data.toList
theorem checked782 : bytes782=statementBytes 806 (op782.map lower) ∧ bytes782.length=48 := by core033_kernel_decide
def op783 : List WordIR.Op := [.badd 801 806]
def bytes783 : Bytes := ("    let r00000327: u32 = r00000321.wrapping_add(r00000326);\n" : String).toByteArray.data.toList
theorem checked783 : bytes783=statementBytes 807 (op783.map lower) ∧ bytes783.length=60 := by core033_kernel_decide
def op784 : List WordIR.Op := [.badd 796 807]
def bytes784 : Bytes := ("    let r00000328: u32 = r0000031c.wrapping_add(r00000327);\n" : String).toByteArray.data.toList
theorem checked784 : bytes784=statementBytes 808 (op784.map lower) ∧ bytes784.length=60 := by core033_kernel_decide
def op785 : List WordIR.Op := [.badd 700 796]
def bytes785 : Bytes := ("    let r00000329: u32 = r000002bc.wrapping_add(r0000031c);\n" : String).toByteArray.data.toList
theorem checked785 : bytes785=statementBytes 809 (op785.map lower) ∧ bytes785.length=60 := by core033_kernel_decide
def op786 : List WordIR.Op := [.rotr 809 6]
def bytes786 : Bytes := ("    let r0000032a: u32 = r00000329.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked786 : bytes786=statementBytes 810 (op786.map lower) ∧ bytes786.length=65 := by core033_kernel_decide
def op787 : List WordIR.Op := [.rotr 809 11]
def bytes787 : Bytes := ("    let r0000032b: u32 = r00000329.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked787 : bytes787=statementBytes 811 (op787.map lower) ∧ bytes787.length=65 := by core033_kernel_decide
def op788 : List WordIR.Op := [.bxor 810 811]
def bytes788 : Bytes := ("    let r0000032c: u32 = r0000032a ^ r0000032b;\n" : String).toByteArray.data.toList
theorem checked788 : bytes788=statementBytes 812 (op788.map lower) ∧ bytes788.length=48 := by core033_kernel_decide
def op789 : List WordIR.Op := [.rotr 809 25]
def bytes789 : Bytes := ("    let r0000032d: u32 = r00000329.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked789 : bytes789=statementBytes 813 (op789.map lower) ∧ bytes789.length=65 := by core033_kernel_decide
def op790 : List WordIR.Op := [.bxor 812 813]
def bytes790 : Bytes := ("    let r0000032e: u32 = r0000032c ^ r0000032d;\n" : String).toByteArray.data.toList
theorem checked790 : bytes790=statementBytes 814 (op790.map lower) ∧ bytes790.length=48 := by core033_kernel_decide
def op791 : List WordIR.Op := [.badd 728 814]
def bytes791 : Bytes := ("    let r0000032f: u32 = r000002d8.wrapping_add(r0000032e);\n" : String).toByteArray.data.toList
theorem checked791 : bytes791=statementBytes 815 (op791.map lower) ∧ bytes791.length=60 := by core033_kernel_decide
def op792 : List WordIR.Op := [.band 809 782]
def bytes792 : Bytes := ("    let r00000330: u32 = r00000329 & r0000030e;\n" : String).toByteArray.data.toList
theorem checked792 : bytes792=statementBytes 816 (op792.map lower) ∧ bytes792.length=48 := by core033_kernel_decide
def op793 : List WordIR.Op := [.bnot 809]
def bytes793 : Bytes := ("    let r00000331: u32 = !r00000329;\n" : String).toByteArray.data.toList
theorem checked793 : bytes793=statementBytes 817 (op793.map lower) ∧ bytes793.length=37 := by core033_kernel_decide
def op794 : List WordIR.Op := [.band 817 755]
def bytes794 : Bytes := ("    let r00000332: u32 = r00000331 & r000002f3;\n" : String).toByteArray.data.toList
theorem checked794 : bytes794=statementBytes 818 (op794.map lower) ∧ bytes794.length=48 := by core033_kernel_decide
def op795 : List WordIR.Op := [.bxor 816 818]
def bytes795 : Bytes := ("    let r00000333: u32 = r00000330 ^ r00000332;\n" : String).toByteArray.data.toList
theorem checked795 : bytes795=statementBytes 819 (op795.map lower) ∧ bytes795.length=48 := by core033_kernel_decide
def op796 : List WordIR.Op := [.badd 815 819]
def bytes796 : Bytes := ("    let r00000334: u32 = r0000032f.wrapping_add(r00000333);\n" : String).toByteArray.data.toList
theorem checked796 : bytes796=statementBytes 820 (op796.map lower) ∧ bytes796.length=60 := by core033_kernel_decide
def op797 : List WordIR.Op := [.literal (BitVec.ofNat 32 2453635748)]
def bytes797 : Bytes := ("    let r00000335: u32 = 0x923f82a4_u32;\n" : String).toByteArray.data.toList
theorem checked797 : bytes797=statementBytes 821 (op797.map lower) ∧ bytes797.length=41 := by core033_kernel_decide
def op798 : List WordIR.Op := [.badd 820 821]
def bytes798 : Bytes := ("    let r00000336: u32 = r00000334.wrapping_add(r00000335);\n" : String).toByteArray.data.toList
theorem checked798 : bytes798=statementBytes 822 (op798.map lower) ∧ bytes798.length=60 := by core033_kernel_decide
def op799 : List WordIR.Op := [.badd 822 14]
def bytes799 : Bytes := ("    let r00000337: u32 = r00000336.wrapping_add(r0000000e);\n" : String).toByteArray.data.toList
theorem checked799 : bytes799=statementBytes 823 (op799.map lower) ∧ bytes799.length=60 := by core033_kernel_decide
def op800 : List WordIR.Op := [.rotr 808 2]
def bytes800 : Bytes := ("    let r00000338: u32 = r00000328.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked800 : bytes800=statementBytes 824 (op800.map lower) ∧ bytes800.length=65 := by core033_kernel_decide
def op801 : List WordIR.Op := [.rotr 808 13]
def bytes801 : Bytes := ("    let r00000339: u32 = r00000328.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked801 : bytes801=statementBytes 825 (op801.map lower) ∧ bytes801.length=65 := by core033_kernel_decide
def op802 : List WordIR.Op := [.bxor 824 825]
def bytes802 : Bytes := ("    let r0000033a: u32 = r00000338 ^ r00000339;\n" : String).toByteArray.data.toList
theorem checked802 : bytes802=statementBytes 826 (op802.map lower) ∧ bytes802.length=48 := by core033_kernel_decide
def op803 : List WordIR.Op := [.rotr 808 22]
def bytes803 : Bytes := ("    let r0000033b: u32 = r00000328.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked803 : bytes803=statementBytes 827 (op803.map lower) ∧ bytes803.length=65 := by core033_kernel_decide
def op804 : List WordIR.Op := [.bxor 826 827]
def bytes804 : Bytes := ("    let r0000033c: u32 = r0000033a ^ r0000033b;\n" : String).toByteArray.data.toList
theorem checked804 : bytes804=statementBytes 828 (op804.map lower) ∧ bytes804.length=48 := by core033_kernel_decide
def op805 : List WordIR.Op := [.band 808 781]
def bytes805 : Bytes := ("    let r0000033d: u32 = r00000328 & r0000030d;\n" : String).toByteArray.data.toList
theorem checked805 : bytes805=statementBytes 829 (op805.map lower) ∧ bytes805.length=48 := by core033_kernel_decide
def op806 : List WordIR.Op := [.band 808 754]
def bytes806 : Bytes := ("    let r0000033e: u32 = r00000328 & r000002f2;\n" : String).toByteArray.data.toList
theorem checked806 : bytes806=statementBytes 830 (op806.map lower) ∧ bytes806.length=48 := by core033_kernel_decide
def op807 : List WordIR.Op := [.bxor 829 830]
def bytes807 : Bytes := ("    let r0000033f: u32 = r0000033d ^ r0000033e;\n" : String).toByteArray.data.toList
theorem checked807 : bytes807=statementBytes 831 (op807.map lower) ∧ bytes807.length=48 := by core033_kernel_decide
def op808 : List WordIR.Op := [.band 781 754]
def bytes808 : Bytes := ("    let r00000340: u32 = r0000030d & r000002f2;\n" : String).toByteArray.data.toList
theorem checked808 : bytes808=statementBytes 832 (op808.map lower) ∧ bytes808.length=48 := by core033_kernel_decide
def op809 : List WordIR.Op := [.bxor 831 832]
def bytes809 : Bytes := ("    let r00000341: u32 = r0000033f ^ r00000340;\n" : String).toByteArray.data.toList
theorem checked809 : bytes809=statementBytes 833 (op809.map lower) ∧ bytes809.length=48 := by core033_kernel_decide
def op810 : List WordIR.Op := [.badd 828 833]
def bytes810 : Bytes := ("    let r00000342: u32 = r0000033c.wrapping_add(r00000341);\n" : String).toByteArray.data.toList
theorem checked810 : bytes810=statementBytes 834 (op810.map lower) ∧ bytes810.length=60 := by core033_kernel_decide
def op811 : List WordIR.Op := [.badd 823 834]
def bytes811 : Bytes := ("    let r00000343: u32 = r00000337.wrapping_add(r00000342);\n" : String).toByteArray.data.toList
theorem checked811 : bytes811=statementBytes 835 (op811.map lower) ∧ bytes811.length=60 := by core033_kernel_decide
def op812 : List WordIR.Op := [.badd 727 823]
def bytes812 : Bytes := ("    let r00000344: u32 = r000002d7.wrapping_add(r00000337);\n" : String).toByteArray.data.toList
theorem checked812 : bytes812=statementBytes 836 (op812.map lower) ∧ bytes812.length=60 := by core033_kernel_decide
def op813 : List WordIR.Op := [.rotr 836 6]
def bytes813 : Bytes := ("    let r00000345: u32 = r00000344.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked813 : bytes813=statementBytes 837 (op813.map lower) ∧ bytes813.length=65 := by core033_kernel_decide
def op814 : List WordIR.Op := [.rotr 836 11]
def bytes814 : Bytes := ("    let r00000346: u32 = r00000344.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked814 : bytes814=statementBytes 838 (op814.map lower) ∧ bytes814.length=65 := by core033_kernel_decide
def op815 : List WordIR.Op := [.bxor 837 838]
def bytes815 : Bytes := ("    let r00000347: u32 = r00000345 ^ r00000346;\n" : String).toByteArray.data.toList
theorem checked815 : bytes815=statementBytes 839 (op815.map lower) ∧ bytes815.length=48 := by core033_kernel_decide
def op816 : List WordIR.Op := [.rotr 836 25]
def bytes816 : Bytes := ("    let r00000348: u32 = r00000344.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked816 : bytes816=statementBytes 840 (op816.map lower) ∧ bytes816.length=65 := by core033_kernel_decide
def op817 : List WordIR.Op := [.bxor 839 840]
def bytes817 : Bytes := ("    let r00000349: u32 = r00000347 ^ r00000348;\n" : String).toByteArray.data.toList
theorem checked817 : bytes817=statementBytes 841 (op817.map lower) ∧ bytes817.length=48 := by core033_kernel_decide
def op818 : List WordIR.Op := [.badd 755 841]
def bytes818 : Bytes := ("    let r0000034a: u32 = r000002f3.wrapping_add(r00000349);\n" : String).toByteArray.data.toList
theorem checked818 : bytes818=statementBytes 842 (op818.map lower) ∧ bytes818.length=60 := by core033_kernel_decide
def op819 : List WordIR.Op := [.band 836 809]
def bytes819 : Bytes := ("    let r0000034b: u32 = r00000344 & r00000329;\n" : String).toByteArray.data.toList
theorem checked819 : bytes819=statementBytes 843 (op819.map lower) ∧ bytes819.length=48 := by core033_kernel_decide
def op820 : List WordIR.Op := [.bnot 836]
def bytes820 : Bytes := ("    let r0000034c: u32 = !r00000344;\n" : String).toByteArray.data.toList
theorem checked820 : bytes820=statementBytes 844 (op820.map lower) ∧ bytes820.length=37 := by core033_kernel_decide
def op821 : List WordIR.Op := [.band 844 782]
def bytes821 : Bytes := ("    let r0000034d: u32 = r0000034c & r0000030e;\n" : String).toByteArray.data.toList
theorem checked821 : bytes821=statementBytes 845 (op821.map lower) ∧ bytes821.length=48 := by core033_kernel_decide
def op822 : List WordIR.Op := [.bxor 843 845]
def bytes822 : Bytes := ("    let r0000034e: u32 = r0000034b ^ r0000034d;\n" : String).toByteArray.data.toList
theorem checked822 : bytes822=statementBytes 846 (op822.map lower) ∧ bytes822.length=48 := by core033_kernel_decide
def op823 : List WordIR.Op := [.badd 842 846]
def bytes823 : Bytes := ("    let r0000034f: u32 = r0000034a.wrapping_add(r0000034e);\n" : String).toByteArray.data.toList
theorem checked823 : bytes823=statementBytes 847 (op823.map lower) ∧ bytes823.length=60 := by core033_kernel_decide
def op824 : List WordIR.Op := [.literal (BitVec.ofNat 32 2870763221)]
def bytes824 : Bytes := ("    let r00000350: u32 = 0xab1c5ed5_u32;\n" : String).toByteArray.data.toList
theorem checked824 : bytes824=statementBytes 848 (op824.map lower) ∧ bytes824.length=41 := by core033_kernel_decide
def op825 : List WordIR.Op := [.badd 847 848]
def bytes825 : Bytes := ("    let r00000351: u32 = r0000034f.wrapping_add(r00000350);\n" : String).toByteArray.data.toList
theorem checked825 : bytes825=statementBytes 849 (op825.map lower) ∧ bytes825.length=60 := by core033_kernel_decide
def op826 : List WordIR.Op := [.badd 849 15]
def bytes826 : Bytes := ("    let r00000352: u32 = r00000351.wrapping_add(r0000000f);\n" : String).toByteArray.data.toList
theorem checked826 : bytes826=statementBytes 850 (op826.map lower) ∧ bytes826.length=60 := by core033_kernel_decide
def op827 : List WordIR.Op := [.rotr 835 2]
def bytes827 : Bytes := ("    let r00000353: u32 = r00000343.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked827 : bytes827=statementBytes 851 (op827.map lower) ∧ bytes827.length=65 := by core033_kernel_decide
def op828 : List WordIR.Op := [.rotr 835 13]
def bytes828 : Bytes := ("    let r00000354: u32 = r00000343.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked828 : bytes828=statementBytes 852 (op828.map lower) ∧ bytes828.length=65 := by core033_kernel_decide
def op829 : List WordIR.Op := [.bxor 851 852]
def bytes829 : Bytes := ("    let r00000355: u32 = r00000353 ^ r00000354;\n" : String).toByteArray.data.toList
theorem checked829 : bytes829=statementBytes 853 (op829.map lower) ∧ bytes829.length=48 := by core033_kernel_decide
def op830 : List WordIR.Op := [.rotr 835 22]
def bytes830 : Bytes := ("    let r00000356: u32 = r00000343.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked830 : bytes830=statementBytes 854 (op830.map lower) ∧ bytes830.length=65 := by core033_kernel_decide
def op831 : List WordIR.Op := [.bxor 853 854]
def bytes831 : Bytes := ("    let r00000357: u32 = r00000355 ^ r00000356;\n" : String).toByteArray.data.toList
theorem checked831 : bytes831=statementBytes 855 (op831.map lower) ∧ bytes831.length=48 := by core033_kernel_decide
def innerBlocks12 : List (List WordIR.Op) := [op768,op769,op770,op771,op772,op773,op774,op775,op776,op777,op778,op779,op780,op781,op782,op783,op784,op785,op786,op787,op788,op789,op790,op791,op792,op793,op794,op795,op796,op797,op798,op799,op800,op801,op802,op803,op804,op805,op806,op807,op808,op809,op810,op811,op812,op813,op814,op815,op816,op817,op818,op819,op820,op821,op822,op823,op824,op825,op826,op827,op828,op829,op830,op831]
def innerBytes12 : List Bytes := [bytes768,bytes769,bytes770,bytes771,bytes772,bytes773,bytes774,bytes775,bytes776,bytes777,bytes778,bytes779,bytes780,bytes781,bytes782,bytes783,bytes784,bytes785,bytes786,bytes787,bytes788,bytes789,bytes790,bytes791,bytes792,bytes793,bytes794,bytes795,bytes796,bytes797,bytes798,bytes799,bytes800,bytes801,bytes802,bytes803,bytes804,bytes805,bytes806,bytes807,bytes808,bytes809,bytes810,bytes811,bytes812,bytes813,bytes814,bytes815,bytes816,bytes817,bytes818,bytes819,bytes820,bytes821,bytes822,bytes823,bytes824,bytes825,bytes826,bytes827,bytes828,bytes829,bytes830,bytes831]
def partOps12 : List WordIR.Op := innerBlocks12.flatten
def partBytes12 : Bytes := innerBytes12.flatten
theorem partChain12 : BlockChain 792 innerBlocks12 innerBytes12 := by
  unfold innerBlocks12 innerBytes12
  exact (.cons _ _ _ _ _ checked768.1 (.cons _ _ _ _ _ checked769.1 (.cons _ _ _ _ _ checked770.1 (.cons _ _ _ _ _ checked771.1 (.cons _ _ _ _ _ checked772.1 (.cons _ _ _ _ _ checked773.1 (.cons _ _ _ _ _ checked774.1 (.cons _ _ _ _ _ checked775.1 (.cons _ _ _ _ _ checked776.1 (.cons _ _ _ _ _ checked777.1 (.cons _ _ _ _ _ checked778.1 (.cons _ _ _ _ _ checked779.1 (.cons _ _ _ _ _ checked780.1 (.cons _ _ _ _ _ checked781.1 (.cons _ _ _ _ _ checked782.1 (.cons _ _ _ _ _ checked783.1 (.cons _ _ _ _ _ checked784.1 (.cons _ _ _ _ _ checked785.1 (.cons _ _ _ _ _ checked786.1 (.cons _ _ _ _ _ checked787.1 (.cons _ _ _ _ _ checked788.1 (.cons _ _ _ _ _ checked789.1 (.cons _ _ _ _ _ checked790.1 (.cons _ _ _ _ _ checked791.1 (.cons _ _ _ _ _ checked792.1 (.cons _ _ _ _ _ checked793.1 (.cons _ _ _ _ _ checked794.1 (.cons _ _ _ _ _ checked795.1 (.cons _ _ _ _ _ checked796.1 (.cons _ _ _ _ _ checked797.1 (.cons _ _ _ _ _ checked798.1 (.cons _ _ _ _ _ checked799.1 (.cons _ _ _ _ _ checked800.1 (.cons _ _ _ _ _ checked801.1 (.cons _ _ _ _ _ checked802.1 (.cons _ _ _ _ _ checked803.1 (.cons _ _ _ _ _ checked804.1 (.cons _ _ _ _ _ checked805.1 (.cons _ _ _ _ _ checked806.1 (.cons _ _ _ _ _ checked807.1 (.cons _ _ _ _ _ checked808.1 (.cons _ _ _ _ _ checked809.1 (.cons _ _ _ _ _ checked810.1 (.cons _ _ _ _ _ checked811.1 (.cons _ _ _ _ _ checked812.1 (.cons _ _ _ _ _ checked813.1 (.cons _ _ _ _ _ checked814.1 (.cons _ _ _ _ _ checked815.1 (.cons _ _ _ _ _ checked816.1 (.cons _ _ _ _ _ checked817.1 (.cons _ _ _ _ _ checked818.1 (.cons _ _ _ _ _ checked819.1 (.cons _ _ _ _ _ checked820.1 (.cons _ _ _ _ _ checked821.1 (.cons _ _ _ _ _ checked822.1 (.cons _ _ _ _ _ checked823.1 (.cons _ _ _ _ _ checked824.1 (.cons _ _ _ _ _ checked825.1 (.cons _ _ _ _ _ checked826.1 (.cons _ _ _ _ _ checked827.1 (.cons _ _ _ _ _ checked828.1 (.cons _ _ _ _ _ checked829.1 (.cons _ _ _ _ _ checked830.1 (.cons _ _ _ _ _ checked831.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked12 : partBytes12=statementBytes 792 (partOps12.map lower) ∧ partBytes12.length=3488 := by
  constructor
  · exact (chain_exact partChain12).trans (body_exact innerBlocks12 792)
  · simp only [partBytes12,WordSource.chunk_sizes_exact,innerBytes12,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked768.2,checked769.2,checked770.2,checked771.2,checked772.2,checked773.2,checked774.2,checked775.2,checked776.2,checked777.2,checked778.2,checked779.2,checked780.2,checked781.2,checked782.2,checked783.2,checked784.2,checked785.2,checked786.2,checked787.2,checked788.2,checked789.2,checked790.2,checked791.2,checked792.2,checked793.2,checked794.2,checked795.2,checked796.2,checked797.2,checked798.2,checked799.2,checked800.2,checked801.2,checked802.2,checked803.2,checked804.2,checked805.2,checked806.2,checked807.2,checked808.2,checked809.2,checked810.2,checked811.2,checked812.2,checked813.2,checked814.2,checked815.2,checked816.2,checked817.2,checked818.2,checked819.2,checked820.2,checked821.2,checked822.2,checked823.2,checked824.2,checked825.2,checked826.2,checked827.2,checked828.2,checked829.2,checked830.2,checked831.2]
theorem partLength12 : partOps12.length=64 := by
  simp only [partOps12,innerBlocks12,op768,op769,op770,op771,op772,op773,op774,op775,op776,op777,op778,op779,op780,op781,op782,op783,op784,op785,op786,op787,op788,op789,op790,op791,op792,op793,op794,op795,op796,op797,op798,op799,op800,op801,op802,op803,op804,op805,op806,op807,op808,op809,op810,op811,op812,op813,op814,op815,op816,op817,op818,op819,op820,op821,op822,op823,op824,op825,op826,op827,op828,op829,op830,op831,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
