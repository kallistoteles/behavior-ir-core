import ActualPadByteIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPadByteGroup12
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op768 : List WordIR.Op := [.bnot 1]
def bytes768 : Bytes := ("    let r00000303: u32 = !r00000001;\n" : String).toByteArray.data.toList
theorem checked768 : bytes768=statementBytes 771 (op768.map lower) ∧ bytes768.length=37 := by core033_kernel_decide
def op769 : List WordIR.Op := [.band 770 771]
def bytes769 : Bytes := ("    let r00000304: u32 = r00000302 & r00000303;\n" : String).toByteArray.data.toList
theorem checked769 : bytes769=statementBytes 772 (op769.map lower) ∧ bytes769.length=48 := by core033_kernel_decide
def op770 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes770 : Bytes := ("    let r00000305: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked770 : bytes770=statementBytes 773 (op770.map lower) ∧ bytes770.length=41 := by core033_kernel_decide
def op771 : List WordIR.Op := [.badd 0 773]
def bytes771 : Bytes := ("    let r00000306: u32 = r00000000.wrapping_add(r00000305);\n" : String).toByteArray.data.toList
theorem checked771 : bytes771=statementBytes 774 (op771.map lower) ∧ bytes771.length=60 := by core033_kernel_decide
def op772 : List WordIR.Op := [.literal (BitVec.ofNat 32 119)]
def bytes772 : Bytes := ("    let r00000307: u32 = 0x00000077_u32;\n" : String).toByteArray.data.toList
theorem checked772 : bytes772=statementBytes 775 (op772.map lower) ∧ bytes772.length=41 := by core033_kernel_decide
def op773 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes773 : Bytes := ("    let r00000308: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked773 : bytes773=statementBytes 776 (op773.map lower) ∧ bytes773.length=41 := by core033_kernel_decide
def op774 : List WordIR.Op := [.band 0 776]
def bytes774 : Bytes := ("    let r00000309: u32 = r00000000 & r00000308;\n" : String).toByteArray.data.toList
theorem checked774 : bytes774=statementBytes 777 (op774.map lower) ∧ bytes774.length=48 := by core033_kernel_decide
def op775 : List WordIR.Op := [.bnot 777]
def bytes775 : Bytes := ("    let r0000030a: u32 = !r00000309;\n" : String).toByteArray.data.toList
theorem checked775 : bytes775=statementBytes 778 (op775.map lower) ∧ bytes775.length=37 := by core033_kernel_decide
def op776 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes776 : Bytes := ("    let r0000030b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked776 : bytes776=statementBytes 779 (op776.map lower) ∧ bytes776.length=41 := by core033_kernel_decide
def op777 : List WordIR.Op := [.badd 778 779]
def bytes777 : Bytes := ("    let r0000030c: u32 = r0000030a.wrapping_add(r0000030b);\n" : String).toByteArray.data.toList
theorem checked777 : bytes777=statementBytes 780 (op777.map lower) ∧ bytes777.length=60 := by core033_kernel_decide
def op778 : List WordIR.Op := [.badd 775 780]
def bytes778 : Bytes := ("    let r0000030d: u32 = r00000307.wrapping_add(r0000030c);\n" : String).toByteArray.data.toList
theorem checked778 : bytes778=statementBytes 781 (op778.map lower) ∧ bytes778.length=60 := by core033_kernel_decide
def op779 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes779 : Bytes := ("    let r0000030e: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked779 : bytes779=statementBytes 782 (op779.map lower) ∧ bytes779.length=41 := by core033_kernel_decide
def op780 : List WordIR.Op := [.band 781 782]
def bytes780 : Bytes := ("    let r0000030f: u32 = r0000030d & r0000030e;\n" : String).toByteArray.data.toList
theorem checked780 : bytes780=statementBytes 783 (op780.map lower) ∧ bytes780.length=48 := by core033_kernel_decide
def op781 : List WordIR.Op := [.badd 774 783]
def bytes781 : Bytes := ("    let r00000310: u32 = r00000306.wrapping_add(r0000030f);\n" : String).toByteArray.data.toList
theorem checked781 : bytes781=statementBytes 784 (op781.map lower) ∧ bytes781.length=60 := by core033_kernel_decide
def op782 : List WordIR.Op := [.bnot 1]
def bytes782 : Bytes := ("    let r00000311: u32 = !r00000001;\n" : String).toByteArray.data.toList
theorem checked782 : bytes782=statementBytes 785 (op782.map lower) ∧ bytes782.length=37 := by core033_kernel_decide
def op783 : List WordIR.Op := [.bxor 784 785]
def bytes783 : Bytes := ("    let r00000312: u32 = r00000310 ^ r00000311;\n" : String).toByteArray.data.toList
theorem checked783 : bytes783=statementBytes 786 (op783.map lower) ∧ bytes783.length=48 := by core033_kernel_decide
def op784 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes784 : Bytes := ("    let r00000313: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked784 : bytes784=statementBytes 787 (op784.map lower) ∧ bytes784.length=41 := by core033_kernel_decide
def op785 : List WordIR.Op := [.badd 0 787]
def bytes785 : Bytes := ("    let r00000314: u32 = r00000000.wrapping_add(r00000313);\n" : String).toByteArray.data.toList
theorem checked785 : bytes785=statementBytes 788 (op785.map lower) ∧ bytes785.length=60 := by core033_kernel_decide
def op786 : List WordIR.Op := [.literal (BitVec.ofNat 32 119)]
def bytes786 : Bytes := ("    let r00000315: u32 = 0x00000077_u32;\n" : String).toByteArray.data.toList
theorem checked786 : bytes786=statementBytes 789 (op786.map lower) ∧ bytes786.length=41 := by core033_kernel_decide
def op787 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes787 : Bytes := ("    let r00000316: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked787 : bytes787=statementBytes 790 (op787.map lower) ∧ bytes787.length=41 := by core033_kernel_decide
def op788 : List WordIR.Op := [.band 0 790]
def bytes788 : Bytes := ("    let r00000317: u32 = r00000000 & r00000316;\n" : String).toByteArray.data.toList
theorem checked788 : bytes788=statementBytes 791 (op788.map lower) ∧ bytes788.length=48 := by core033_kernel_decide
def op789 : List WordIR.Op := [.bnot 791]
def bytes789 : Bytes := ("    let r00000318: u32 = !r00000317;\n" : String).toByteArray.data.toList
theorem checked789 : bytes789=statementBytes 792 (op789.map lower) ∧ bytes789.length=37 := by core033_kernel_decide
def op790 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes790 : Bytes := ("    let r00000319: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked790 : bytes790=statementBytes 793 (op790.map lower) ∧ bytes790.length=41 := by core033_kernel_decide
def op791 : List WordIR.Op := [.badd 792 793]
def bytes791 : Bytes := ("    let r0000031a: u32 = r00000318.wrapping_add(r00000319);\n" : String).toByteArray.data.toList
theorem checked791 : bytes791=statementBytes 794 (op791.map lower) ∧ bytes791.length=60 := by core033_kernel_decide
def op792 : List WordIR.Op := [.badd 789 794]
def bytes792 : Bytes := ("    let r0000031b: u32 = r00000315.wrapping_add(r0000031a);\n" : String).toByteArray.data.toList
theorem checked792 : bytes792=statementBytes 795 (op792.map lower) ∧ bytes792.length=60 := by core033_kernel_decide
def op793 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes793 : Bytes := ("    let r0000031c: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked793 : bytes793=statementBytes 796 (op793.map lower) ∧ bytes793.length=41 := by core033_kernel_decide
def op794 : List WordIR.Op := [.band 795 796]
def bytes794 : Bytes := ("    let r0000031d: u32 = r0000031b & r0000031c;\n" : String).toByteArray.data.toList
theorem checked794 : bytes794=statementBytes 797 (op794.map lower) ∧ bytes794.length=48 := by core033_kernel_decide
def op795 : List WordIR.Op := [.badd 788 797]
def bytes795 : Bytes := ("    let r0000031e: u32 = r00000314.wrapping_add(r0000031d);\n" : String).toByteArray.data.toList
theorem checked795 : bytes795=statementBytes 798 (op795.map lower) ∧ bytes795.length=60 := by core033_kernel_decide
def op796 : List WordIR.Op := [.bnot 1]
def bytes796 : Bytes := ("    let r0000031f: u32 = !r00000001;\n" : String).toByteArray.data.toList
theorem checked796 : bytes796=statementBytes 799 (op796.map lower) ∧ bytes796.length=37 := by core033_kernel_decide
def op797 : List WordIR.Op := [.badd 798 799]
def bytes797 : Bytes := ("    let r00000320: u32 = r0000031e.wrapping_add(r0000031f);\n" : String).toByteArray.data.toList
theorem checked797 : bytes797=statementBytes 800 (op797.map lower) ∧ bytes797.length=60 := by core033_kernel_decide
def op798 : List WordIR.Op := [.bnot 800]
def bytes798 : Bytes := ("    let r00000321: u32 = !r00000320;\n" : String).toByteArray.data.toList
theorem checked798 : bytes798=statementBytes 801 (op798.map lower) ∧ bytes798.length=37 := by core033_kernel_decide
def op799 : List WordIR.Op := [.band 786 801]
def bytes799 : Bytes := ("    let r00000322: u32 = r00000312 & r00000321;\n" : String).toByteArray.data.toList
theorem checked799 : bytes799=statementBytes 802 (op799.map lower) ∧ bytes799.length=48 := by core033_kernel_decide
def op800 : List WordIR.Op := [.bxor 772 802]
def bytes800 : Bytes := ("    let r00000323: u32 = r00000304 ^ r00000322;\n" : String).toByteArray.data.toList
theorem checked800 : bytes800=statementBytes 803 (op800.map lower) ∧ bytes800.length=48 := by core033_kernel_decide
def op801 : List WordIR.Op := [.shr 803 31]
def bytes801 : Bytes := ("    let r00000324: u32 = r00000323 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked801 : bytes801=statementBytes 804 (op801.map lower) ∧ bytes801.length=54 := by core033_kernel_decide
def op802 : List WordIR.Op := [.shr 2 8]
def bytes802 : Bytes := ("    let r00000325: u32 = r00000002 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked802 : bytes802=statementBytes 805 (op802.map lower) ∧ bytes802.length=54 := by core033_kernel_decide
def op803 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes803 : Bytes := ("    let r00000326: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked803 : bytes803=statementBytes 806 (op803.map lower) ∧ bytes803.length=41 := by core033_kernel_decide
def op804 : List WordIR.Op := [.bnot 806]
def bytes804 : Bytes := ("    let r00000327: u32 = !r00000326;\n" : String).toByteArray.data.toList
theorem checked804 : bytes804=statementBytes 807 (op804.map lower) ∧ bytes804.length=37 := by core033_kernel_decide
def op805 : List WordIR.Op := [.band 805 807]
def bytes805 : Bytes := ("    let r00000328: u32 = r00000325 & r00000327;\n" : String).toByteArray.data.toList
theorem checked805 : bytes805=statementBytes 808 (op805.map lower) ∧ bytes805.length=48 := by core033_kernel_decide
def op806 : List WordIR.Op := [.shr 2 8]
def bytes806 : Bytes := ("    let r00000329: u32 = r00000002 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked806 : bytes806=statementBytes 809 (op806.map lower) ∧ bytes806.length=54 := by core033_kernel_decide
def op807 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes807 : Bytes := ("    let r0000032a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked807 : bytes807=statementBytes 810 (op807.map lower) ∧ bytes807.length=41 := by core033_kernel_decide
def op808 : List WordIR.Op := [.bnot 810]
def bytes808 : Bytes := ("    let r0000032b: u32 = !r0000032a;\n" : String).toByteArray.data.toList
theorem checked808 : bytes808=statementBytes 811 (op808.map lower) ∧ bytes808.length=37 := by core033_kernel_decide
def op809 : List WordIR.Op := [.bxor 809 811]
def bytes809 : Bytes := ("    let r0000032c: u32 = r00000329 ^ r0000032b;\n" : String).toByteArray.data.toList
theorem checked809 : bytes809=statementBytes 812 (op809.map lower) ∧ bytes809.length=48 := by core033_kernel_decide
def op810 : List WordIR.Op := [.shr 2 8]
def bytes810 : Bytes := ("    let r0000032d: u32 = r00000002 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked810 : bytes810=statementBytes 813 (op810.map lower) ∧ bytes810.length=54 := by core033_kernel_decide
def op811 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes811 : Bytes := ("    let r0000032e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked811 : bytes811=statementBytes 814 (op811.map lower) ∧ bytes811.length=41 := by core033_kernel_decide
def op812 : List WordIR.Op := [.bnot 814]
def bytes812 : Bytes := ("    let r0000032f: u32 = !r0000032e;\n" : String).toByteArray.data.toList
theorem checked812 : bytes812=statementBytes 815 (op812.map lower) ∧ bytes812.length=37 := by core033_kernel_decide
def op813 : List WordIR.Op := [.badd 813 815]
def bytes813 : Bytes := ("    let r00000330: u32 = r0000032d.wrapping_add(r0000032f);\n" : String).toByteArray.data.toList
theorem checked813 : bytes813=statementBytes 816 (op813.map lower) ∧ bytes813.length=60 := by core033_kernel_decide
def op814 : List WordIR.Op := [.bnot 816]
def bytes814 : Bytes := ("    let r00000331: u32 = !r00000330;\n" : String).toByteArray.data.toList
theorem checked814 : bytes814=statementBytes 817 (op814.map lower) ∧ bytes814.length=37 := by core033_kernel_decide
def op815 : List WordIR.Op := [.band 812 817]
def bytes815 : Bytes := ("    let r00000332: u32 = r0000032c & r00000331;\n" : String).toByteArray.data.toList
theorem checked815 : bytes815=statementBytes 818 (op815.map lower) ∧ bytes815.length=48 := by core033_kernel_decide
def op816 : List WordIR.Op := [.bxor 808 818]
def bytes816 : Bytes := ("    let r00000333: u32 = r00000328 ^ r00000332;\n" : String).toByteArray.data.toList
theorem checked816 : bytes816=statementBytes 819 (op816.map lower) ∧ bytes816.length=48 := by core033_kernel_decide
def op817 : List WordIR.Op := [.shr 819 31]
def bytes817 : Bytes := ("    let r00000334: u32 = r00000333 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked817 : bytes817=statementBytes 820 (op817.map lower) ∧ bytes817.length=54 := by core033_kernel_decide
def op818 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes818 : Bytes := ("    let r00000335: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked818 : bytes818=statementBytes 821 (op818.map lower) ∧ bytes818.length=41 := by core033_kernel_decide
def op819 : List WordIR.Op := [.bxor 820 821]
def bytes819 : Bytes := ("    let r00000336: u32 = r00000334 ^ r00000335;\n" : String).toByteArray.data.toList
theorem checked819 : bytes819=statementBytes 822 (op819.map lower) ∧ bytes819.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op768,op769,op770,op771,op772,op773,op774,op775,op776,op777,op778,op779,op780,op781,op782,op783,op784,op785,op786,op787,op788,op789,op790,op791,op792,op793,op794,op795,op796,op797,op798,op799,op800,op801,op802,op803,op804,op805,op806,op807,op808,op809,op810,op811,op812,op813,op814,op815,op816,op817,op818,op819]
def chunks : List Bytes := [bytes768,bytes769,bytes770,bytes771,bytes772,bytes773,bytes774,bytes775,bytes776,bytes777,bytes778,bytes779,bytes780,bytes781,bytes782,bytes783,bytes784,bytes785,bytes786,bytes787,bytes788,bytes789,bytes790,bytes791,bytes792,bytes793,bytes794,bytes795,bytes796,bytes797,bytes798,bytes799,bytes800,bytes801,bytes802,bytes803,bytes804,bytes805,bytes806,bytes807,bytes808,bytes809,bytes810,bytes811,bytes812,bytes813,bytes814,bytes815,bytes816,bytes817,bytes818,bytes819]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 771 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked768.1 (.cons _ _ _ _ _ checked769.1 (.cons _ _ _ _ _ checked770.1 (.cons _ _ _ _ _ checked771.1 (.cons _ _ _ _ _ checked772.1 (.cons _ _ _ _ _ checked773.1 (.cons _ _ _ _ _ checked774.1 (.cons _ _ _ _ _ checked775.1 (.cons _ _ _ _ _ checked776.1 (.cons _ _ _ _ _ checked777.1 (.cons _ _ _ _ _ checked778.1 (.cons _ _ _ _ _ checked779.1 (.cons _ _ _ _ _ checked780.1 (.cons _ _ _ _ _ checked781.1 (.cons _ _ _ _ _ checked782.1 (.cons _ _ _ _ _ checked783.1 (.cons _ _ _ _ _ checked784.1 (.cons _ _ _ _ _ checked785.1 (.cons _ _ _ _ _ checked786.1 (.cons _ _ _ _ _ checked787.1 (.cons _ _ _ _ _ checked788.1 (.cons _ _ _ _ _ checked789.1 (.cons _ _ _ _ _ checked790.1 (.cons _ _ _ _ _ checked791.1 (.cons _ _ _ _ _ checked792.1 (.cons _ _ _ _ _ checked793.1 (.cons _ _ _ _ _ checked794.1 (.cons _ _ _ _ _ checked795.1 (.cons _ _ _ _ _ checked796.1 (.cons _ _ _ _ _ checked797.1 (.cons _ _ _ _ _ checked798.1 (.cons _ _ _ _ _ checked799.1 (.cons _ _ _ _ _ checked800.1 (.cons _ _ _ _ _ checked801.1 (.cons _ _ _ _ _ checked802.1 (.cons _ _ _ _ _ checked803.1 (.cons _ _ _ _ _ checked804.1 (.cons _ _ _ _ _ checked805.1 (.cons _ _ _ _ _ checked806.1 (.cons _ _ _ _ _ checked807.1 (.cons _ _ _ _ _ checked808.1 (.cons _ _ _ _ _ checked809.1 (.cons _ _ _ _ _ checked810.1 (.cons _ _ _ _ _ checked811.1 (.cons _ _ _ _ _ checked812.1 (.cons _ _ _ _ _ checked813.1 (.cons _ _ _ _ _ checked814.1 (.cons _ _ _ _ _ checked815.1 (.cons _ _ _ _ _ checked816.1 (.cons _ _ _ _ _ checked817.1 (.cons _ _ _ _ _ checked818.1 (.cons _ _ _ _ _ checked819.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 771 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=52 := rfl
theorem partSize : partBytes.length=2438 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked768.2,checked769.2,checked770.2,checked771.2,checked772.2,checked773.2,checked774.2,checked775.2,checked776.2,checked777.2,checked778.2,checked779.2,checked780.2,checked781.2,checked782.2,checked783.2,checked784.2,checked785.2,checked786.2,checked787.2,checked788.2,checked789.2,checked790.2,checked791.2,checked792.2,checked793.2,checked794.2,checked795.2,checked796.2,checked797.2,checked798.2,checked799.2,checked800.2,checked801.2,checked802.2,checked803.2,checked804.2,checked805.2,checked806.2,checked807.2,checked808.2,checked809.2,checked810.2,checked811.2,checked812.2,checked813.2,checked814.2,checked815.2,checked816.2,checked817.2,checked818.2,checked819.2]
  decide
end ArtifactPadByteGroup12
