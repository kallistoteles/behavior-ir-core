import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup169
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10816 : List WordIR.Op := [.bxor 10856 10858]
def bytes10816 : Bytes := ("    let r00002a6b: u32 = r00002a68 ^ r00002a6a;\n" : String).toByteArray.data.toList
theorem checked10816 : bytes10816=statementBytes 10859 (op10816.map lower) ∧ bytes10816.length=48 := by core033_kernel_decide
def op10817 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10817 : Bytes := ("    let r00002a6c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10817 : bytes10817=statementBytes 10860 (op10817.map lower) ∧ bytes10817.length=41 := by core033_kernel_decide
def op10818 : List WordIR.Op := [.bxor 0 10860]
def bytes10818 : Bytes := ("    let r00002a6d: u32 = r00000000 ^ r00002a6c;\n" : String).toByteArray.data.toList
theorem checked10818 : bytes10818=statementBytes 10861 (op10818.map lower) ∧ bytes10818.length=48 := by core033_kernel_decide
def op10819 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10819 : Bytes := ("    let r00002a6e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10819 : bytes10819=statementBytes 10862 (op10819.map lower) ∧ bytes10819.length=41 := by core033_kernel_decide
def op10820 : List WordIR.Op := [.bnot 10862]
def bytes10820 : Bytes := ("    let r00002a6f: u32 = !r00002a6e;\n" : String).toByteArray.data.toList
theorem checked10820 : bytes10820=statementBytes 10863 (op10820.map lower) ∧ bytes10820.length=37 := by core033_kernel_decide
def op10821 : List WordIR.Op := [.badd 10861 10863]
def bytes10821 : Bytes := ("    let r00002a70: u32 = r00002a6d.wrapping_add(r00002a6f);\n" : String).toByteArray.data.toList
theorem checked10821 : bytes10821=statementBytes 10864 (op10821.map lower) ∧ bytes10821.length=60 := by core033_kernel_decide
def op10822 : List WordIR.Op := [.bnot 10864]
def bytes10822 : Bytes := ("    let r00002a71: u32 = !r00002a70;\n" : String).toByteArray.data.toList
theorem checked10822 : bytes10822=statementBytes 10865 (op10822.map lower) ∧ bytes10822.length=37 := by core033_kernel_decide
def op10823 : List WordIR.Op := [.band 10859 10865]
def bytes10823 : Bytes := ("    let r00002a72: u32 = r00002a6b & r00002a71;\n" : String).toByteArray.data.toList
theorem checked10823 : bytes10823=statementBytes 10866 (op10823.map lower) ∧ bytes10823.length=48 := by core033_kernel_decide
def op10824 : List WordIR.Op := [.bxor 10854 10866]
def bytes10824 : Bytes := ("    let r00002a73: u32 = r00002a66 ^ r00002a72;\n" : String).toByteArray.data.toList
theorem checked10824 : bytes10824=statementBytes 10867 (op10824.map lower) ∧ bytes10824.length=48 := by core033_kernel_decide
def op10825 : List WordIR.Op := [.shr 10867 31]
def bytes10825 : Bytes := ("    let r00002a74: u32 = r00002a73 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10825 : bytes10825=statementBytes 10868 (op10825.map lower) ∧ bytes10825.length=54 := by core033_kernel_decide
def op10826 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10826 : Bytes := ("    let r00002a75: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10826 : bytes10826=statementBytes 10869 (op10826.map lower) ∧ bytes10826.length=41 := by core033_kernel_decide
def op10827 : List WordIR.Op := [.bxor 10868 10869]
def bytes10827 : Bytes := ("    let r00002a76: u32 = r00002a74 ^ r00002a75;\n" : String).toByteArray.data.toList
theorem checked10827 : bytes10827=statementBytes 10870 (op10827.map lower) ∧ bytes10827.length=48 := by core033_kernel_decide
def op10828 : List WordIR.Op := [.bnot 10870]
def bytes10828 : Bytes := ("    let r00002a77: u32 = !r00002a76;\n" : String).toByteArray.data.toList
theorem checked10828 : bytes10828=statementBytes 10871 (op10828.map lower) ∧ bytes10828.length=37 := by core033_kernel_decide
def op10829 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10829 : Bytes := ("    let r00002a78: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10829 : bytes10829=statementBytes 10872 (op10829.map lower) ∧ bytes10829.length=41 := by core033_kernel_decide
def op10830 : List WordIR.Op := [.badd 10871 10872]
def bytes10830 : Bytes := ("    let r00002a79: u32 = r00002a77.wrapping_add(r00002a78);\n" : String).toByteArray.data.toList
theorem checked10830 : bytes10830=statementBytes 10873 (op10830.map lower) ∧ bytes10830.length=60 := by core033_kernel_decide
def op10831 : List WordIR.Op := [.band 10873 9893]
def bytes10831 : Bytes := ("    let r00002a7a: u32 = r00002a79 & r000026a5;\n" : String).toByteArray.data.toList
theorem checked10831 : bytes10831=statementBytes 10874 (op10831.map lower) ∧ bytes10831.length=48 := by core033_kernel_decide
def op10832 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10832 : Bytes := ("    let r00002a7b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10832 : bytes10832=statementBytes 10875 (op10832.map lower) ∧ bytes10832.length=41 := by core033_kernel_decide
def op10833 : List WordIR.Op := [.bxor 0 10875]
def bytes10833 : Bytes := ("    let r00002a7c: u32 = r00000000 ^ r00002a7b;\n" : String).toByteArray.data.toList
theorem checked10833 : bytes10833=statementBytes 10876 (op10833.map lower) ∧ bytes10833.length=48 := by core033_kernel_decide
def op10834 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10834 : Bytes := ("    let r00002a7d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10834 : bytes10834=statementBytes 10877 (op10834.map lower) ∧ bytes10834.length=41 := by core033_kernel_decide
def op10835 : List WordIR.Op := [.bnot 10877]
def bytes10835 : Bytes := ("    let r00002a7e: u32 = !r00002a7d;\n" : String).toByteArray.data.toList
theorem checked10835 : bytes10835=statementBytes 10878 (op10835.map lower) ∧ bytes10835.length=37 := by core033_kernel_decide
def op10836 : List WordIR.Op := [.band 10876 10878]
def bytes10836 : Bytes := ("    let r00002a7f: u32 = r00002a7c & r00002a7e;\n" : String).toByteArray.data.toList
theorem checked10836 : bytes10836=statementBytes 10879 (op10836.map lower) ∧ bytes10836.length=48 := by core033_kernel_decide
def op10837 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10837 : Bytes := ("    let r00002a80: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10837 : bytes10837=statementBytes 10880 (op10837.map lower) ∧ bytes10837.length=41 := by core033_kernel_decide
def op10838 : List WordIR.Op := [.bxor 0 10880]
def bytes10838 : Bytes := ("    let r00002a81: u32 = r00000000 ^ r00002a80;\n" : String).toByteArray.data.toList
theorem checked10838 : bytes10838=statementBytes 10881 (op10838.map lower) ∧ bytes10838.length=48 := by core033_kernel_decide
def op10839 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10839 : Bytes := ("    let r00002a82: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10839 : bytes10839=statementBytes 10882 (op10839.map lower) ∧ bytes10839.length=41 := by core033_kernel_decide
def op10840 : List WordIR.Op := [.bnot 10882]
def bytes10840 : Bytes := ("    let r00002a83: u32 = !r00002a82;\n" : String).toByteArray.data.toList
theorem checked10840 : bytes10840=statementBytes 10883 (op10840.map lower) ∧ bytes10840.length=37 := by core033_kernel_decide
def op10841 : List WordIR.Op := [.bxor 10881 10883]
def bytes10841 : Bytes := ("    let r00002a84: u32 = r00002a81 ^ r00002a83;\n" : String).toByteArray.data.toList
theorem checked10841 : bytes10841=statementBytes 10884 (op10841.map lower) ∧ bytes10841.length=48 := by core033_kernel_decide
def op10842 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10842 : Bytes := ("    let r00002a85: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10842 : bytes10842=statementBytes 10885 (op10842.map lower) ∧ bytes10842.length=41 := by core033_kernel_decide
def op10843 : List WordIR.Op := [.bxor 0 10885]
def bytes10843 : Bytes := ("    let r00002a86: u32 = r00000000 ^ r00002a85;\n" : String).toByteArray.data.toList
theorem checked10843 : bytes10843=statementBytes 10886 (op10843.map lower) ∧ bytes10843.length=48 := by core033_kernel_decide
def op10844 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10844 : Bytes := ("    let r00002a87: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10844 : bytes10844=statementBytes 10887 (op10844.map lower) ∧ bytes10844.length=41 := by core033_kernel_decide
def op10845 : List WordIR.Op := [.bnot 10887]
def bytes10845 : Bytes := ("    let r00002a88: u32 = !r00002a87;\n" : String).toByteArray.data.toList
theorem checked10845 : bytes10845=statementBytes 10888 (op10845.map lower) ∧ bytes10845.length=37 := by core033_kernel_decide
def op10846 : List WordIR.Op := [.badd 10886 10888]
def bytes10846 : Bytes := ("    let r00002a89: u32 = r00002a86.wrapping_add(r00002a88);\n" : String).toByteArray.data.toList
theorem checked10846 : bytes10846=statementBytes 10889 (op10846.map lower) ∧ bytes10846.length=60 := by core033_kernel_decide
def op10847 : List WordIR.Op := [.bnot 10889]
def bytes10847 : Bytes := ("    let r00002a8a: u32 = !r00002a89;\n" : String).toByteArray.data.toList
theorem checked10847 : bytes10847=statementBytes 10890 (op10847.map lower) ∧ bytes10847.length=37 := by core033_kernel_decide
def op10848 : List WordIR.Op := [.band 10884 10890]
def bytes10848 : Bytes := ("    let r00002a8b: u32 = r00002a84 & r00002a8a;\n" : String).toByteArray.data.toList
theorem checked10848 : bytes10848=statementBytes 10891 (op10848.map lower) ∧ bytes10848.length=48 := by core033_kernel_decide
def op10849 : List WordIR.Op := [.bxor 10879 10891]
def bytes10849 : Bytes := ("    let r00002a8c: u32 = r00002a7f ^ r00002a8b;\n" : String).toByteArray.data.toList
theorem checked10849 : bytes10849=statementBytes 10892 (op10849.map lower) ∧ bytes10849.length=48 := by core033_kernel_decide
def op10850 : List WordIR.Op := [.shr 10892 31]
def bytes10850 : Bytes := ("    let r00002a8d: u32 = r00002a8c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10850 : bytes10850=statementBytes 10893 (op10850.map lower) ∧ bytes10850.length=54 := by core033_kernel_decide
def op10851 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10851 : Bytes := ("    let r00002a8e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10851 : bytes10851=statementBytes 10894 (op10851.map lower) ∧ bytes10851.length=41 := by core033_kernel_decide
def op10852 : List WordIR.Op := [.bxor 10893 10894]
def bytes10852 : Bytes := ("    let r00002a8f: u32 = r00002a8d ^ r00002a8e;\n" : String).toByteArray.data.toList
theorem checked10852 : bytes10852=statementBytes 10895 (op10852.map lower) ∧ bytes10852.length=48 := by core033_kernel_decide
def op10853 : List WordIR.Op := [.bnot 10895]
def bytes10853 : Bytes := ("    let r00002a90: u32 = !r00002a8f;\n" : String).toByteArray.data.toList
theorem checked10853 : bytes10853=statementBytes 10896 (op10853.map lower) ∧ bytes10853.length=37 := by core033_kernel_decide
def op10854 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10854 : Bytes := ("    let r00002a91: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10854 : bytes10854=statementBytes 10897 (op10854.map lower) ∧ bytes10854.length=41 := by core033_kernel_decide
def op10855 : List WordIR.Op := [.badd 10896 10897]
def bytes10855 : Bytes := ("    let r00002a92: u32 = r00002a90.wrapping_add(r00002a91);\n" : String).toByteArray.data.toList
theorem checked10855 : bytes10855=statementBytes 10898 (op10855.map lower) ∧ bytes10855.length=60 := by core033_kernel_decide
def op10856 : List WordIR.Op := [.bnot 10898]
def bytes10856 : Bytes := ("    let r00002a93: u32 = !r00002a92;\n" : String).toByteArray.data.toList
theorem checked10856 : bytes10856=statementBytes 10899 (op10856.map lower) ∧ bytes10856.length=37 := by core033_kernel_decide
def op10857 : List WordIR.Op := [.band 10899 228]
def bytes10857 : Bytes := ("    let r00002a94: u32 = r00002a93 & r000000e4;\n" : String).toByteArray.data.toList
theorem checked10857 : bytes10857=statementBytes 10900 (op10857.map lower) ∧ bytes10857.length=48 := by core033_kernel_decide
def op10858 : List WordIR.Op := [.bxor 10874 10900]
def bytes10858 : Bytes := ("    let r00002a95: u32 = r00002a7a ^ r00002a94;\n" : String).toByteArray.data.toList
theorem checked10858 : bytes10858=statementBytes 10901 (op10858.map lower) ∧ bytes10858.length=48 := by core033_kernel_decide
def op10859 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10859 : Bytes := ("    let r00002a96: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10859 : bytes10859=statementBytes 10902 (op10859.map lower) ∧ bytes10859.length=41 := by core033_kernel_decide
def op10860 : List WordIR.Op := [.bxor 0 10902]
def bytes10860 : Bytes := ("    let r00002a97: u32 = r00000000 ^ r00002a96;\n" : String).toByteArray.data.toList
theorem checked10860 : bytes10860=statementBytes 10903 (op10860.map lower) ∧ bytes10860.length=48 := by core033_kernel_decide
def op10861 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10861 : Bytes := ("    let r00002a98: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10861 : bytes10861=statementBytes 10904 (op10861.map lower) ∧ bytes10861.length=41 := by core033_kernel_decide
def op10862 : List WordIR.Op := [.bnot 10904]
def bytes10862 : Bytes := ("    let r00002a99: u32 = !r00002a98;\n" : String).toByteArray.data.toList
theorem checked10862 : bytes10862=statementBytes 10905 (op10862.map lower) ∧ bytes10862.length=37 := by core033_kernel_decide
def op10863 : List WordIR.Op := [.band 10903 10905]
def bytes10863 : Bytes := ("    let r00002a9a: u32 = r00002a97 & r00002a99;\n" : String).toByteArray.data.toList
theorem checked10863 : bytes10863=statementBytes 10906 (op10863.map lower) ∧ bytes10863.length=48 := by core033_kernel_decide
def op10864 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10864 : Bytes := ("    let r00002a9b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10864 : bytes10864=statementBytes 10907 (op10864.map lower) ∧ bytes10864.length=41 := by core033_kernel_decide
def op10865 : List WordIR.Op := [.bxor 0 10907]
def bytes10865 : Bytes := ("    let r00002a9c: u32 = r00000000 ^ r00002a9b;\n" : String).toByteArray.data.toList
theorem checked10865 : bytes10865=statementBytes 10908 (op10865.map lower) ∧ bytes10865.length=48 := by core033_kernel_decide
def op10866 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10866 : Bytes := ("    let r00002a9d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10866 : bytes10866=statementBytes 10909 (op10866.map lower) ∧ bytes10866.length=41 := by core033_kernel_decide
def op10867 : List WordIR.Op := [.bnot 10909]
def bytes10867 : Bytes := ("    let r00002a9e: u32 = !r00002a9d;\n" : String).toByteArray.data.toList
theorem checked10867 : bytes10867=statementBytes 10910 (op10867.map lower) ∧ bytes10867.length=37 := by core033_kernel_decide
def op10868 : List WordIR.Op := [.bxor 10908 10910]
def bytes10868 : Bytes := ("    let r00002a9f: u32 = r00002a9c ^ r00002a9e;\n" : String).toByteArray.data.toList
theorem checked10868 : bytes10868=statementBytes 10911 (op10868.map lower) ∧ bytes10868.length=48 := by core033_kernel_decide
def op10869 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10869 : Bytes := ("    let r00002aa0: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10869 : bytes10869=statementBytes 10912 (op10869.map lower) ∧ bytes10869.length=41 := by core033_kernel_decide
def op10870 : List WordIR.Op := [.bxor 0 10912]
def bytes10870 : Bytes := ("    let r00002aa1: u32 = r00000000 ^ r00002aa0;\n" : String).toByteArray.data.toList
theorem checked10870 : bytes10870=statementBytes 10913 (op10870.map lower) ∧ bytes10870.length=48 := by core033_kernel_decide
def op10871 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10871 : Bytes := ("    let r00002aa2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10871 : bytes10871=statementBytes 10914 (op10871.map lower) ∧ bytes10871.length=41 := by core033_kernel_decide
def op10872 : List WordIR.Op := [.bnot 10914]
def bytes10872 : Bytes := ("    let r00002aa3: u32 = !r00002aa2;\n" : String).toByteArray.data.toList
theorem checked10872 : bytes10872=statementBytes 10915 (op10872.map lower) ∧ bytes10872.length=37 := by core033_kernel_decide
def op10873 : List WordIR.Op := [.badd 10913 10915]
def bytes10873 : Bytes := ("    let r00002aa4: u32 = r00002aa1.wrapping_add(r00002aa3);\n" : String).toByteArray.data.toList
theorem checked10873 : bytes10873=statementBytes 10916 (op10873.map lower) ∧ bytes10873.length=60 := by core033_kernel_decide
def op10874 : List WordIR.Op := [.bnot 10916]
def bytes10874 : Bytes := ("    let r00002aa5: u32 = !r00002aa4;\n" : String).toByteArray.data.toList
theorem checked10874 : bytes10874=statementBytes 10917 (op10874.map lower) ∧ bytes10874.length=37 := by core033_kernel_decide
def op10875 : List WordIR.Op := [.band 10911 10917]
def bytes10875 : Bytes := ("    let r00002aa6: u32 = r00002a9f & r00002aa5;\n" : String).toByteArray.data.toList
theorem checked10875 : bytes10875=statementBytes 10918 (op10875.map lower) ∧ bytes10875.length=48 := by core033_kernel_decide
def op10876 : List WordIR.Op := [.bxor 10906 10918]
def bytes10876 : Bytes := ("    let r00002aa7: u32 = r00002a9a ^ r00002aa6;\n" : String).toByteArray.data.toList
theorem checked10876 : bytes10876=statementBytes 10919 (op10876.map lower) ∧ bytes10876.length=48 := by core033_kernel_decide
def op10877 : List WordIR.Op := [.shr 10919 31]
def bytes10877 : Bytes := ("    let r00002aa8: u32 = r00002aa7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10877 : bytes10877=statementBytes 10920 (op10877.map lower) ∧ bytes10877.length=54 := by core033_kernel_decide
def op10878 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10878 : Bytes := ("    let r00002aa9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10878 : bytes10878=statementBytes 10921 (op10878.map lower) ∧ bytes10878.length=41 := by core033_kernel_decide
def op10879 : List WordIR.Op := [.bxor 10920 10921]
def bytes10879 : Bytes := ("    let r00002aaa: u32 = r00002aa8 ^ r00002aa9;\n" : String).toByteArray.data.toList
theorem checked10879 : bytes10879=statementBytes 10922 (op10879.map lower) ∧ bytes10879.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10816,op10817,op10818,op10819,op10820,op10821,op10822,op10823,op10824,op10825,op10826,op10827,op10828,op10829,op10830,op10831,op10832,op10833,op10834,op10835,op10836,op10837,op10838,op10839,op10840,op10841,op10842,op10843,op10844,op10845,op10846,op10847,op10848,op10849,op10850,op10851,op10852,op10853,op10854,op10855,op10856,op10857,op10858,op10859,op10860,op10861,op10862,op10863,op10864,op10865,op10866,op10867,op10868,op10869,op10870,op10871,op10872,op10873,op10874,op10875,op10876,op10877,op10878,op10879]
def chunks : List Bytes := [bytes10816,bytes10817,bytes10818,bytes10819,bytes10820,bytes10821,bytes10822,bytes10823,bytes10824,bytes10825,bytes10826,bytes10827,bytes10828,bytes10829,bytes10830,bytes10831,bytes10832,bytes10833,bytes10834,bytes10835,bytes10836,bytes10837,bytes10838,bytes10839,bytes10840,bytes10841,bytes10842,bytes10843,bytes10844,bytes10845,bytes10846,bytes10847,bytes10848,bytes10849,bytes10850,bytes10851,bytes10852,bytes10853,bytes10854,bytes10855,bytes10856,bytes10857,bytes10858,bytes10859,bytes10860,bytes10861,bytes10862,bytes10863,bytes10864,bytes10865,bytes10866,bytes10867,bytes10868,bytes10869,bytes10870,bytes10871,bytes10872,bytes10873,bytes10874,bytes10875,bytes10876,bytes10877,bytes10878,bytes10879]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10859 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10816.1 (.cons _ _ _ _ _ checked10817.1 (.cons _ _ _ _ _ checked10818.1 (.cons _ _ _ _ _ checked10819.1 (.cons _ _ _ _ _ checked10820.1 (.cons _ _ _ _ _ checked10821.1 (.cons _ _ _ _ _ checked10822.1 (.cons _ _ _ _ _ checked10823.1 (.cons _ _ _ _ _ checked10824.1 (.cons _ _ _ _ _ checked10825.1 (.cons _ _ _ _ _ checked10826.1 (.cons _ _ _ _ _ checked10827.1 (.cons _ _ _ _ _ checked10828.1 (.cons _ _ _ _ _ checked10829.1 (.cons _ _ _ _ _ checked10830.1 (.cons _ _ _ _ _ checked10831.1 (.cons _ _ _ _ _ checked10832.1 (.cons _ _ _ _ _ checked10833.1 (.cons _ _ _ _ _ checked10834.1 (.cons _ _ _ _ _ checked10835.1 (.cons _ _ _ _ _ checked10836.1 (.cons _ _ _ _ _ checked10837.1 (.cons _ _ _ _ _ checked10838.1 (.cons _ _ _ _ _ checked10839.1 (.cons _ _ _ _ _ checked10840.1 (.cons _ _ _ _ _ checked10841.1 (.cons _ _ _ _ _ checked10842.1 (.cons _ _ _ _ _ checked10843.1 (.cons _ _ _ _ _ checked10844.1 (.cons _ _ _ _ _ checked10845.1 (.cons _ _ _ _ _ checked10846.1 (.cons _ _ _ _ _ checked10847.1 (.cons _ _ _ _ _ checked10848.1 (.cons _ _ _ _ _ checked10849.1 (.cons _ _ _ _ _ checked10850.1 (.cons _ _ _ _ _ checked10851.1 (.cons _ _ _ _ _ checked10852.1 (.cons _ _ _ _ _ checked10853.1 (.cons _ _ _ _ _ checked10854.1 (.cons _ _ _ _ _ checked10855.1 (.cons _ _ _ _ _ checked10856.1 (.cons _ _ _ _ _ checked10857.1 (.cons _ _ _ _ _ checked10858.1 (.cons _ _ _ _ _ checked10859.1 (.cons _ _ _ _ _ checked10860.1 (.cons _ _ _ _ _ checked10861.1 (.cons _ _ _ _ _ checked10862.1 (.cons _ _ _ _ _ checked10863.1 (.cons _ _ _ _ _ checked10864.1 (.cons _ _ _ _ _ checked10865.1 (.cons _ _ _ _ _ checked10866.1 (.cons _ _ _ _ _ checked10867.1 (.cons _ _ _ _ _ checked10868.1 (.cons _ _ _ _ _ checked10869.1 (.cons _ _ _ _ _ checked10870.1 (.cons _ _ _ _ _ checked10871.1 (.cons _ _ _ _ _ checked10872.1 (.cons _ _ _ _ _ checked10873.1 (.cons _ _ _ _ _ checked10874.1 (.cons _ _ _ _ _ checked10875.1 (.cons _ _ _ _ _ checked10876.1 (.cons _ _ _ _ _ checked10877.1 (.cons _ _ _ _ _ checked10878.1 (.cons _ _ _ _ _ checked10879.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10859 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2874 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10816.2,checked10817.2,checked10818.2,checked10819.2,checked10820.2,checked10821.2,checked10822.2,checked10823.2,checked10824.2,checked10825.2,checked10826.2,checked10827.2,checked10828.2,checked10829.2,checked10830.2,checked10831.2,checked10832.2,checked10833.2,checked10834.2,checked10835.2,checked10836.2,checked10837.2,checked10838.2,checked10839.2,checked10840.2,checked10841.2,checked10842.2,checked10843.2,checked10844.2,checked10845.2,checked10846.2,checked10847.2,checked10848.2,checked10849.2,checked10850.2,checked10851.2,checked10852.2,checked10853.2,checked10854.2,checked10855.2,checked10856.2,checked10857.2,checked10858.2,checked10859.2,checked10860.2,checked10861.2,checked10862.2,checked10863.2,checked10864.2,checked10865.2,checked10866.2,checked10867.2,checked10868.2,checked10869.2,checked10870.2,checked10871.2,checked10872.2,checked10873.2,checked10874.2,checked10875.2,checked10876.2,checked10877.2,checked10878.2,checked10879.2]
  decide
end ArtifactPathRoundDispatchGroup169
