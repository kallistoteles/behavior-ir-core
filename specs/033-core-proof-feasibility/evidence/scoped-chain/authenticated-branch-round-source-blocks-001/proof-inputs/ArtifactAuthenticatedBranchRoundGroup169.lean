import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup169
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10816 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10816 : Bytes := ("    let r00002ab6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10816 : bytes10816=statementBytes 10934 (op10816.map lower) ∧ bytes10816.length=41 := by core033_kernel_decide
def op10817 : List WordIR.Op := [.badd 10933 10934]
def bytes10817 : Bytes := ("    let r00002ab7: u32 = r00002ab5.wrapping_add(r00002ab6);\n" : String).toByteArray.data.toList
theorem checked10817 : bytes10817=statementBytes 10935 (op10817.map lower) ∧ bytes10817.length=60 := by core033_kernel_decide
def op10818 : List WordIR.Op := [.bnot 10935]
def bytes10818 : Bytes := ("    let r00002ab8: u32 = !r00002ab7;\n" : String).toByteArray.data.toList
theorem checked10818 : bytes10818=statementBytes 10936 (op10818.map lower) ∧ bytes10818.length=37 := by core033_kernel_decide
def op10819 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10819 : Bytes := ("    let r00002ab9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10819 : bytes10819=statementBytes 10937 (op10819.map lower) ∧ bytes10819.length=41 := by core033_kernel_decide
def op10820 : List WordIR.Op := [.band 10936 10937]
def bytes10820 : Bytes := ("    let r00002aba: u32 = r00002ab8 & r00002ab9;\n" : String).toByteArray.data.toList
theorem checked10820 : bytes10820=statementBytes 10938 (op10820.map lower) ∧ bytes10820.length=48 := by core033_kernel_decide
def op10821 : List WordIR.Op := [.bxor 10932 10938]
def bytes10821 : Bytes := ("    let r00002abb: u32 = r00002ab4 ^ r00002aba;\n" : String).toByteArray.data.toList
theorem checked10821 : bytes10821=statementBytes 10939 (op10821.map lower) ∧ bytes10821.length=48 := by core033_kernel_decide
def op10822 : List WordIR.Op := [.bnot 10609]
def bytes10822 : Bytes := ("    let r00002abc: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10822 : bytes10822=statementBytes 10940 (op10822.map lower) ∧ bytes10822.length=37 := by core033_kernel_decide
def op10823 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10823 : Bytes := ("    let r00002abd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10823 : bytes10823=statementBytes 10941 (op10823.map lower) ∧ bytes10823.length=41 := by core033_kernel_decide
def op10824 : List WordIR.Op := [.badd 10940 10941]
def bytes10824 : Bytes := ("    let r00002abe: u32 = r00002abc.wrapping_add(r00002abd);\n" : String).toByteArray.data.toList
theorem checked10824 : bytes10824=statementBytes 10942 (op10824.map lower) ∧ bytes10824.length=60 := by core033_kernel_decide
def op10825 : List WordIR.Op := [.band 10942 1103]
def bytes10825 : Bytes := ("    let r00002abf: u32 = r00002abe & r0000044f;\n" : String).toByteArray.data.toList
theorem checked10825 : bytes10825=statementBytes 10943 (op10825.map lower) ∧ bytes10825.length=48 := by core033_kernel_decide
def op10826 : List WordIR.Op := [.bnot 10609]
def bytes10826 : Bytes := ("    let r00002ac0: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10826 : bytes10826=statementBytes 10944 (op10826.map lower) ∧ bytes10826.length=37 := by core033_kernel_decide
def op10827 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10827 : Bytes := ("    let r00002ac1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10827 : bytes10827=statementBytes 10945 (op10827.map lower) ∧ bytes10827.length=41 := by core033_kernel_decide
def op10828 : List WordIR.Op := [.badd 10944 10945]
def bytes10828 : Bytes := ("    let r00002ac2: u32 = r00002ac0.wrapping_add(r00002ac1);\n" : String).toByteArray.data.toList
theorem checked10828 : bytes10828=statementBytes 10946 (op10828.map lower) ∧ bytes10828.length=60 := by core033_kernel_decide
def op10829 : List WordIR.Op := [.bnot 10946]
def bytes10829 : Bytes := ("    let r00002ac3: u32 = !r00002ac2;\n" : String).toByteArray.data.toList
theorem checked10829 : bytes10829=statementBytes 10947 (op10829.map lower) ∧ bytes10829.length=37 := by core033_kernel_decide
def op10830 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10830 : Bytes := ("    let r00002ac4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10830 : bytes10830=statementBytes 10948 (op10830.map lower) ∧ bytes10830.length=41 := by core033_kernel_decide
def op10831 : List WordIR.Op := [.band 10947 10948]
def bytes10831 : Bytes := ("    let r00002ac5: u32 = r00002ac3 & r00002ac4;\n" : String).toByteArray.data.toList
theorem checked10831 : bytes10831=statementBytes 10949 (op10831.map lower) ∧ bytes10831.length=48 := by core033_kernel_decide
def op10832 : List WordIR.Op := [.bxor 10943 10949]
def bytes10832 : Bytes := ("    let r00002ac6: u32 = r00002abf ^ r00002ac5;\n" : String).toByteArray.data.toList
theorem checked10832 : bytes10832=statementBytes 10950 (op10832.map lower) ∧ bytes10832.length=48 := by core033_kernel_decide
def op10833 : List WordIR.Op := [.bnot 10609]
def bytes10833 : Bytes := ("    let r00002ac7: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10833 : bytes10833=statementBytes 10951 (op10833.map lower) ∧ bytes10833.length=37 := by core033_kernel_decide
def op10834 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10834 : Bytes := ("    let r00002ac8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10834 : bytes10834=statementBytes 10952 (op10834.map lower) ∧ bytes10834.length=41 := by core033_kernel_decide
def op10835 : List WordIR.Op := [.badd 10951 10952]
def bytes10835 : Bytes := ("    let r00002ac9: u32 = r00002ac7.wrapping_add(r00002ac8);\n" : String).toByteArray.data.toList
theorem checked10835 : bytes10835=statementBytes 10953 (op10835.map lower) ∧ bytes10835.length=60 := by core033_kernel_decide
def op10836 : List WordIR.Op := [.band 10953 1123]
def bytes10836 : Bytes := ("    let r00002aca: u32 = r00002ac9 & r00000463;\n" : String).toByteArray.data.toList
theorem checked10836 : bytes10836=statementBytes 10954 (op10836.map lower) ∧ bytes10836.length=48 := by core033_kernel_decide
def op10837 : List WordIR.Op := [.bnot 10609]
def bytes10837 : Bytes := ("    let r00002acb: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10837 : bytes10837=statementBytes 10955 (op10837.map lower) ∧ bytes10837.length=37 := by core033_kernel_decide
def op10838 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10838 : Bytes := ("    let r00002acc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10838 : bytes10838=statementBytes 10956 (op10838.map lower) ∧ bytes10838.length=41 := by core033_kernel_decide
def op10839 : List WordIR.Op := [.badd 10955 10956]
def bytes10839 : Bytes := ("    let r00002acd: u32 = r00002acb.wrapping_add(r00002acc);\n" : String).toByteArray.data.toList
theorem checked10839 : bytes10839=statementBytes 10957 (op10839.map lower) ∧ bytes10839.length=60 := by core033_kernel_decide
def op10840 : List WordIR.Op := [.bnot 10957]
def bytes10840 : Bytes := ("    let r00002ace: u32 = !r00002acd;\n" : String).toByteArray.data.toList
theorem checked10840 : bytes10840=statementBytes 10958 (op10840.map lower) ∧ bytes10840.length=37 := by core033_kernel_decide
def op10841 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10841 : Bytes := ("    let r00002acf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10841 : bytes10841=statementBytes 10959 (op10841.map lower) ∧ bytes10841.length=41 := by core033_kernel_decide
def op10842 : List WordIR.Op := [.band 10958 10959]
def bytes10842 : Bytes := ("    let r00002ad0: u32 = r00002ace & r00002acf;\n" : String).toByteArray.data.toList
theorem checked10842 : bytes10842=statementBytes 10960 (op10842.map lower) ∧ bytes10842.length=48 := by core033_kernel_decide
def op10843 : List WordIR.Op := [.bxor 10954 10960]
def bytes10843 : Bytes := ("    let r00002ad1: u32 = r00002aca ^ r00002ad0;\n" : String).toByteArray.data.toList
theorem checked10843 : bytes10843=statementBytes 10961 (op10843.map lower) ∧ bytes10843.length=48 := by core033_kernel_decide
def op10844 : List WordIR.Op := [.bnot 10609]
def bytes10844 : Bytes := ("    let r00002ad2: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10844 : bytes10844=statementBytes 10962 (op10844.map lower) ∧ bytes10844.length=37 := by core033_kernel_decide
def op10845 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10845 : Bytes := ("    let r00002ad3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10845 : bytes10845=statementBytes 10963 (op10845.map lower) ∧ bytes10845.length=41 := by core033_kernel_decide
def op10846 : List WordIR.Op := [.badd 10962 10963]
def bytes10846 : Bytes := ("    let r00002ad4: u32 = r00002ad2.wrapping_add(r00002ad3);\n" : String).toByteArray.data.toList
theorem checked10846 : bytes10846=statementBytes 10964 (op10846.map lower) ∧ bytes10846.length=60 := by core033_kernel_decide
def op10847 : List WordIR.Op := [.band 10964 1134]
def bytes10847 : Bytes := ("    let r00002ad5: u32 = r00002ad4 & r0000046e;\n" : String).toByteArray.data.toList
theorem checked10847 : bytes10847=statementBytes 10965 (op10847.map lower) ∧ bytes10847.length=48 := by core033_kernel_decide
def op10848 : List WordIR.Op := [.bnot 10609]
def bytes10848 : Bytes := ("    let r00002ad6: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10848 : bytes10848=statementBytes 10966 (op10848.map lower) ∧ bytes10848.length=37 := by core033_kernel_decide
def op10849 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10849 : Bytes := ("    let r00002ad7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10849 : bytes10849=statementBytes 10967 (op10849.map lower) ∧ bytes10849.length=41 := by core033_kernel_decide
def op10850 : List WordIR.Op := [.badd 10966 10967]
def bytes10850 : Bytes := ("    let r00002ad8: u32 = r00002ad6.wrapping_add(r00002ad7);\n" : String).toByteArray.data.toList
theorem checked10850 : bytes10850=statementBytes 10968 (op10850.map lower) ∧ bytes10850.length=60 := by core033_kernel_decide
def op10851 : List WordIR.Op := [.bnot 10968]
def bytes10851 : Bytes := ("    let r00002ad9: u32 = !r00002ad8;\n" : String).toByteArray.data.toList
theorem checked10851 : bytes10851=statementBytes 10969 (op10851.map lower) ∧ bytes10851.length=37 := by core033_kernel_decide
def op10852 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10852 : Bytes := ("    let r00002ada: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10852 : bytes10852=statementBytes 10970 (op10852.map lower) ∧ bytes10852.length=41 := by core033_kernel_decide
def op10853 : List WordIR.Op := [.band 10969 10970]
def bytes10853 : Bytes := ("    let r00002adb: u32 = r00002ad9 & r00002ada;\n" : String).toByteArray.data.toList
theorem checked10853 : bytes10853=statementBytes 10971 (op10853.map lower) ∧ bytes10853.length=48 := by core033_kernel_decide
def op10854 : List WordIR.Op := [.bxor 10965 10971]
def bytes10854 : Bytes := ("    let r00002adc: u32 = r00002ad5 ^ r00002adb;\n" : String).toByteArray.data.toList
theorem checked10854 : bytes10854=statementBytes 10972 (op10854.map lower) ∧ bytes10854.length=48 := by core033_kernel_decide
def op10855 : List WordIR.Op := [.bnot 10609]
def bytes10855 : Bytes := ("    let r00002add: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10855 : bytes10855=statementBytes 10973 (op10855.map lower) ∧ bytes10855.length=37 := by core033_kernel_decide
def op10856 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10856 : Bytes := ("    let r00002ade: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10856 : bytes10856=statementBytes 10974 (op10856.map lower) ∧ bytes10856.length=41 := by core033_kernel_decide
def op10857 : List WordIR.Op := [.badd 10973 10974]
def bytes10857 : Bytes := ("    let r00002adf: u32 = r00002add.wrapping_add(r00002ade);\n" : String).toByteArray.data.toList
theorem checked10857 : bytes10857=statementBytes 10975 (op10857.map lower) ∧ bytes10857.length=60 := by core033_kernel_decide
def op10858 : List WordIR.Op := [.band 10975 1154]
def bytes10858 : Bytes := ("    let r00002ae0: u32 = r00002adf & r00000482;\n" : String).toByteArray.data.toList
theorem checked10858 : bytes10858=statementBytes 10976 (op10858.map lower) ∧ bytes10858.length=48 := by core033_kernel_decide
def op10859 : List WordIR.Op := [.bnot 10609]
def bytes10859 : Bytes := ("    let r00002ae1: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10859 : bytes10859=statementBytes 10977 (op10859.map lower) ∧ bytes10859.length=37 := by core033_kernel_decide
def op10860 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10860 : Bytes := ("    let r00002ae2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10860 : bytes10860=statementBytes 10978 (op10860.map lower) ∧ bytes10860.length=41 := by core033_kernel_decide
def op10861 : List WordIR.Op := [.badd 10977 10978]
def bytes10861 : Bytes := ("    let r00002ae3: u32 = r00002ae1.wrapping_add(r00002ae2);\n" : String).toByteArray.data.toList
theorem checked10861 : bytes10861=statementBytes 10979 (op10861.map lower) ∧ bytes10861.length=60 := by core033_kernel_decide
def op10862 : List WordIR.Op := [.bnot 10979]
def bytes10862 : Bytes := ("    let r00002ae4: u32 = !r00002ae3;\n" : String).toByteArray.data.toList
theorem checked10862 : bytes10862=statementBytes 10980 (op10862.map lower) ∧ bytes10862.length=37 := by core033_kernel_decide
def op10863 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10863 : Bytes := ("    let r00002ae5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10863 : bytes10863=statementBytes 10981 (op10863.map lower) ∧ bytes10863.length=41 := by core033_kernel_decide
def op10864 : List WordIR.Op := [.band 10980 10981]
def bytes10864 : Bytes := ("    let r00002ae6: u32 = r00002ae4 & r00002ae5;\n" : String).toByteArray.data.toList
theorem checked10864 : bytes10864=statementBytes 10982 (op10864.map lower) ∧ bytes10864.length=48 := by core033_kernel_decide
def op10865 : List WordIR.Op := [.bxor 10976 10982]
def bytes10865 : Bytes := ("    let r00002ae7: u32 = r00002ae0 ^ r00002ae6;\n" : String).toByteArray.data.toList
theorem checked10865 : bytes10865=statementBytes 10983 (op10865.map lower) ∧ bytes10865.length=48 := by core033_kernel_decide
def op10866 : List WordIR.Op := [.bnot 10609]
def bytes10866 : Bytes := ("    let r00002ae8: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10866 : bytes10866=statementBytes 10984 (op10866.map lower) ∧ bytes10866.length=37 := by core033_kernel_decide
def op10867 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10867 : Bytes := ("    let r00002ae9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10867 : bytes10867=statementBytes 10985 (op10867.map lower) ∧ bytes10867.length=41 := by core033_kernel_decide
def op10868 : List WordIR.Op := [.badd 10984 10985]
def bytes10868 : Bytes := ("    let r00002aea: u32 = r00002ae8.wrapping_add(r00002ae9);\n" : String).toByteArray.data.toList
theorem checked10868 : bytes10868=statementBytes 10986 (op10868.map lower) ∧ bytes10868.length=60 := by core033_kernel_decide
def op10869 : List WordIR.Op := [.band 10986 1165]
def bytes10869 : Bytes := ("    let r00002aeb: u32 = r00002aea & r0000048d;\n" : String).toByteArray.data.toList
theorem checked10869 : bytes10869=statementBytes 10987 (op10869.map lower) ∧ bytes10869.length=48 := by core033_kernel_decide
def op10870 : List WordIR.Op := [.bnot 10609]
def bytes10870 : Bytes := ("    let r00002aec: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10870 : bytes10870=statementBytes 10988 (op10870.map lower) ∧ bytes10870.length=37 := by core033_kernel_decide
def op10871 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10871 : Bytes := ("    let r00002aed: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10871 : bytes10871=statementBytes 10989 (op10871.map lower) ∧ bytes10871.length=41 := by core033_kernel_decide
def op10872 : List WordIR.Op := [.badd 10988 10989]
def bytes10872 : Bytes := ("    let r00002aee: u32 = r00002aec.wrapping_add(r00002aed);\n" : String).toByteArray.data.toList
theorem checked10872 : bytes10872=statementBytes 10990 (op10872.map lower) ∧ bytes10872.length=60 := by core033_kernel_decide
def op10873 : List WordIR.Op := [.bnot 10990]
def bytes10873 : Bytes := ("    let r00002aef: u32 = !r00002aee;\n" : String).toByteArray.data.toList
theorem checked10873 : bytes10873=statementBytes 10991 (op10873.map lower) ∧ bytes10873.length=37 := by core033_kernel_decide
def op10874 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10874 : Bytes := ("    let r00002af0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10874 : bytes10874=statementBytes 10992 (op10874.map lower) ∧ bytes10874.length=41 := by core033_kernel_decide
def op10875 : List WordIR.Op := [.band 10991 10992]
def bytes10875 : Bytes := ("    let r00002af1: u32 = r00002aef & r00002af0;\n" : String).toByteArray.data.toList
theorem checked10875 : bytes10875=statementBytes 10993 (op10875.map lower) ∧ bytes10875.length=48 := by core033_kernel_decide
def op10876 : List WordIR.Op := [.bxor 10987 10993]
def bytes10876 : Bytes := ("    let r00002af2: u32 = r00002aeb ^ r00002af1;\n" : String).toByteArray.data.toList
theorem checked10876 : bytes10876=statementBytes 10994 (op10876.map lower) ∧ bytes10876.length=48 := by core033_kernel_decide
def op10877 : List WordIR.Op := [.bnot 10609]
def bytes10877 : Bytes := ("    let r00002af3: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10877 : bytes10877=statementBytes 10995 (op10877.map lower) ∧ bytes10877.length=37 := by core033_kernel_decide
def op10878 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10878 : Bytes := ("    let r00002af4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10878 : bytes10878=statementBytes 10996 (op10878.map lower) ∧ bytes10878.length=41 := by core033_kernel_decide
def op10879 : List WordIR.Op := [.badd 10995 10996]
def bytes10879 : Bytes := ("    let r00002af5: u32 = r00002af3.wrapping_add(r00002af4);\n" : String).toByteArray.data.toList
theorem checked10879 : bytes10879=statementBytes 10997 (op10879.map lower) ∧ bytes10879.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10816,op10817,op10818,op10819,op10820,op10821,op10822,op10823,op10824,op10825,op10826,op10827,op10828,op10829,op10830,op10831,op10832,op10833,op10834,op10835,op10836,op10837,op10838,op10839,op10840,op10841,op10842,op10843,op10844,op10845,op10846,op10847,op10848,op10849,op10850,op10851,op10852,op10853,op10854,op10855,op10856,op10857,op10858,op10859,op10860,op10861,op10862,op10863,op10864,op10865,op10866,op10867,op10868,op10869,op10870,op10871,op10872,op10873,op10874,op10875,op10876,op10877,op10878,op10879]
def chunks : List Bytes := [bytes10816,bytes10817,bytes10818,bytes10819,bytes10820,bytes10821,bytes10822,bytes10823,bytes10824,bytes10825,bytes10826,bytes10827,bytes10828,bytes10829,bytes10830,bytes10831,bytes10832,bytes10833,bytes10834,bytes10835,bytes10836,bytes10837,bytes10838,bytes10839,bytes10840,bytes10841,bytes10842,bytes10843,bytes10844,bytes10845,bytes10846,bytes10847,bytes10848,bytes10849,bytes10850,bytes10851,bytes10852,bytes10853,bytes10854,bytes10855,bytes10856,bytes10857,bytes10858,bytes10859,bytes10860,bytes10861,bytes10862,bytes10863,bytes10864,bytes10865,bytes10866,bytes10867,bytes10868,bytes10869,bytes10870,bytes10871,bytes10872,bytes10873,bytes10874,bytes10875,bytes10876,bytes10877,bytes10878,bytes10879]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10934 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10816.1 (.cons _ _ _ _ _ checked10817.1 (.cons _ _ _ _ _ checked10818.1 (.cons _ _ _ _ _ checked10819.1 (.cons _ _ _ _ _ checked10820.1 (.cons _ _ _ _ _ checked10821.1 (.cons _ _ _ _ _ checked10822.1 (.cons _ _ _ _ _ checked10823.1 (.cons _ _ _ _ _ checked10824.1 (.cons _ _ _ _ _ checked10825.1 (.cons _ _ _ _ _ checked10826.1 (.cons _ _ _ _ _ checked10827.1 (.cons _ _ _ _ _ checked10828.1 (.cons _ _ _ _ _ checked10829.1 (.cons _ _ _ _ _ checked10830.1 (.cons _ _ _ _ _ checked10831.1 (.cons _ _ _ _ _ checked10832.1 (.cons _ _ _ _ _ checked10833.1 (.cons _ _ _ _ _ checked10834.1 (.cons _ _ _ _ _ checked10835.1 (.cons _ _ _ _ _ checked10836.1 (.cons _ _ _ _ _ checked10837.1 (.cons _ _ _ _ _ checked10838.1 (.cons _ _ _ _ _ checked10839.1 (.cons _ _ _ _ _ checked10840.1 (.cons _ _ _ _ _ checked10841.1 (.cons _ _ _ _ _ checked10842.1 (.cons _ _ _ _ _ checked10843.1 (.cons _ _ _ _ _ checked10844.1 (.cons _ _ _ _ _ checked10845.1 (.cons _ _ _ _ _ checked10846.1 (.cons _ _ _ _ _ checked10847.1 (.cons _ _ _ _ _ checked10848.1 (.cons _ _ _ _ _ checked10849.1 (.cons _ _ _ _ _ checked10850.1 (.cons _ _ _ _ _ checked10851.1 (.cons _ _ _ _ _ checked10852.1 (.cons _ _ _ _ _ checked10853.1 (.cons _ _ _ _ _ checked10854.1 (.cons _ _ _ _ _ checked10855.1 (.cons _ _ _ _ _ checked10856.1 (.cons _ _ _ _ _ checked10857.1 (.cons _ _ _ _ _ checked10858.1 (.cons _ _ _ _ _ checked10859.1 (.cons _ _ _ _ _ checked10860.1 (.cons _ _ _ _ _ checked10861.1 (.cons _ _ _ _ _ checked10862.1 (.cons _ _ _ _ _ checked10863.1 (.cons _ _ _ _ _ checked10864.1 (.cons _ _ _ _ _ checked10865.1 (.cons _ _ _ _ _ checked10866.1 (.cons _ _ _ _ _ checked10867.1 (.cons _ _ _ _ _ checked10868.1 (.cons _ _ _ _ _ checked10869.1 (.cons _ _ _ _ _ checked10870.1 (.cons _ _ _ _ _ checked10871.1 (.cons _ _ _ _ _ checked10872.1 (.cons _ _ _ _ _ checked10873.1 (.cons _ _ _ _ _ checked10874.1 (.cons _ _ _ _ _ checked10875.1 (.cons _ _ _ _ _ checked10876.1 (.cons _ _ _ _ _ checked10877.1 (.cons _ _ _ _ _ checked10878.1 (.cons _ _ _ _ _ checked10879.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10934 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2903 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10816.2,checked10817.2,checked10818.2,checked10819.2,checked10820.2,checked10821.2,checked10822.2,checked10823.2,checked10824.2,checked10825.2,checked10826.2,checked10827.2,checked10828.2,checked10829.2,checked10830.2,checked10831.2,checked10832.2,checked10833.2,checked10834.2,checked10835.2,checked10836.2,checked10837.2,checked10838.2,checked10839.2,checked10840.2,checked10841.2,checked10842.2,checked10843.2,checked10844.2,checked10845.2,checked10846.2,checked10847.2,checked10848.2,checked10849.2,checked10850.2,checked10851.2,checked10852.2,checked10853.2,checked10854.2,checked10855.2,checked10856.2,checked10857.2,checked10858.2,checked10859.2,checked10860.2,checked10861.2,checked10862.2,checked10863.2,checked10864.2,checked10865.2,checked10866.2,checked10867.2,checked10868.2,checked10869.2,checked10870.2,checked10871.2,checked10872.2,checked10873.2,checked10874.2,checked10875.2,checked10876.2,checked10877.2,checked10878.2,checked10879.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup169
