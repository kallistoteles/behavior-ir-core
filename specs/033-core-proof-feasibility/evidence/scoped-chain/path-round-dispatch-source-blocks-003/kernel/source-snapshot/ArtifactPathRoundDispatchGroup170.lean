import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup170
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10880 : List WordIR.Op := [.bnot 10922]
def bytes10880 : Bytes := ("    let r00002aab: u32 = !r00002aaa;\n" : String).toByteArray.data.toList
theorem checked10880 : bytes10880=statementBytes 10923 (op10880.map lower) ∧ bytes10880.length=37 := by core033_kernel_decide
def op10881 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10881 : Bytes := ("    let r00002aac: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10881 : bytes10881=statementBytes 10924 (op10881.map lower) ∧ bytes10881.length=41 := by core033_kernel_decide
def op10882 : List WordIR.Op := [.badd 10923 10924]
def bytes10882 : Bytes := ("    let r00002aad: u32 = r00002aab.wrapping_add(r00002aac);\n" : String).toByteArray.data.toList
theorem checked10882 : bytes10882=statementBytes 10925 (op10882.map lower) ∧ bytes10882.length=60 := by core033_kernel_decide
def op10883 : List WordIR.Op := [.band 10925 9900]
def bytes10883 : Bytes := ("    let r00002aae: u32 = r00002aad & r000026ac;\n" : String).toByteArray.data.toList
theorem checked10883 : bytes10883=statementBytes 10926 (op10883.map lower) ∧ bytes10883.length=48 := by core033_kernel_decide
def op10884 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10884 : Bytes := ("    let r00002aaf: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10884 : bytes10884=statementBytes 10927 (op10884.map lower) ∧ bytes10884.length=41 := by core033_kernel_decide
def op10885 : List WordIR.Op := [.bxor 0 10927]
def bytes10885 : Bytes := ("    let r00002ab0: u32 = r00000000 ^ r00002aaf;\n" : String).toByteArray.data.toList
theorem checked10885 : bytes10885=statementBytes 10928 (op10885.map lower) ∧ bytes10885.length=48 := by core033_kernel_decide
def op10886 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10886 : Bytes := ("    let r00002ab1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10886 : bytes10886=statementBytes 10929 (op10886.map lower) ∧ bytes10886.length=41 := by core033_kernel_decide
def op10887 : List WordIR.Op := [.bnot 10929]
def bytes10887 : Bytes := ("    let r00002ab2: u32 = !r00002ab1;\n" : String).toByteArray.data.toList
theorem checked10887 : bytes10887=statementBytes 10930 (op10887.map lower) ∧ bytes10887.length=37 := by core033_kernel_decide
def op10888 : List WordIR.Op := [.band 10928 10930]
def bytes10888 : Bytes := ("    let r00002ab3: u32 = r00002ab0 & r00002ab2;\n" : String).toByteArray.data.toList
theorem checked10888 : bytes10888=statementBytes 10931 (op10888.map lower) ∧ bytes10888.length=48 := by core033_kernel_decide
def op10889 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10889 : Bytes := ("    let r00002ab4: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10889 : bytes10889=statementBytes 10932 (op10889.map lower) ∧ bytes10889.length=41 := by core033_kernel_decide
def op10890 : List WordIR.Op := [.bxor 0 10932]
def bytes10890 : Bytes := ("    let r00002ab5: u32 = r00000000 ^ r00002ab4;\n" : String).toByteArray.data.toList
theorem checked10890 : bytes10890=statementBytes 10933 (op10890.map lower) ∧ bytes10890.length=48 := by core033_kernel_decide
def op10891 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10891 : Bytes := ("    let r00002ab6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10891 : bytes10891=statementBytes 10934 (op10891.map lower) ∧ bytes10891.length=41 := by core033_kernel_decide
def op10892 : List WordIR.Op := [.bnot 10934]
def bytes10892 : Bytes := ("    let r00002ab7: u32 = !r00002ab6;\n" : String).toByteArray.data.toList
theorem checked10892 : bytes10892=statementBytes 10935 (op10892.map lower) ∧ bytes10892.length=37 := by core033_kernel_decide
def op10893 : List WordIR.Op := [.bxor 10933 10935]
def bytes10893 : Bytes := ("    let r00002ab8: u32 = r00002ab5 ^ r00002ab7;\n" : String).toByteArray.data.toList
theorem checked10893 : bytes10893=statementBytes 10936 (op10893.map lower) ∧ bytes10893.length=48 := by core033_kernel_decide
def op10894 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10894 : Bytes := ("    let r00002ab9: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10894 : bytes10894=statementBytes 10937 (op10894.map lower) ∧ bytes10894.length=41 := by core033_kernel_decide
def op10895 : List WordIR.Op := [.bxor 0 10937]
def bytes10895 : Bytes := ("    let r00002aba: u32 = r00000000 ^ r00002ab9;\n" : String).toByteArray.data.toList
theorem checked10895 : bytes10895=statementBytes 10938 (op10895.map lower) ∧ bytes10895.length=48 := by core033_kernel_decide
def op10896 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10896 : Bytes := ("    let r00002abb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10896 : bytes10896=statementBytes 10939 (op10896.map lower) ∧ bytes10896.length=41 := by core033_kernel_decide
def op10897 : List WordIR.Op := [.bnot 10939]
def bytes10897 : Bytes := ("    let r00002abc: u32 = !r00002abb;\n" : String).toByteArray.data.toList
theorem checked10897 : bytes10897=statementBytes 10940 (op10897.map lower) ∧ bytes10897.length=37 := by core033_kernel_decide
def op10898 : List WordIR.Op := [.badd 10938 10940]
def bytes10898 : Bytes := ("    let r00002abd: u32 = r00002aba.wrapping_add(r00002abc);\n" : String).toByteArray.data.toList
theorem checked10898 : bytes10898=statementBytes 10941 (op10898.map lower) ∧ bytes10898.length=60 := by core033_kernel_decide
def op10899 : List WordIR.Op := [.bnot 10941]
def bytes10899 : Bytes := ("    let r00002abe: u32 = !r00002abd;\n" : String).toByteArray.data.toList
theorem checked10899 : bytes10899=statementBytes 10942 (op10899.map lower) ∧ bytes10899.length=37 := by core033_kernel_decide
def op10900 : List WordIR.Op := [.band 10936 10942]
def bytes10900 : Bytes := ("    let r00002abf: u32 = r00002ab8 & r00002abe;\n" : String).toByteArray.data.toList
theorem checked10900 : bytes10900=statementBytes 10943 (op10900.map lower) ∧ bytes10900.length=48 := by core033_kernel_decide
def op10901 : List WordIR.Op := [.bxor 10931 10943]
def bytes10901 : Bytes := ("    let r00002ac0: u32 = r00002ab3 ^ r00002abf;\n" : String).toByteArray.data.toList
theorem checked10901 : bytes10901=statementBytes 10944 (op10901.map lower) ∧ bytes10901.length=48 := by core033_kernel_decide
def op10902 : List WordIR.Op := [.shr 10944 31]
def bytes10902 : Bytes := ("    let r00002ac1: u32 = r00002ac0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10902 : bytes10902=statementBytes 10945 (op10902.map lower) ∧ bytes10902.length=54 := by core033_kernel_decide
def op10903 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10903 : Bytes := ("    let r00002ac2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10903 : bytes10903=statementBytes 10946 (op10903.map lower) ∧ bytes10903.length=41 := by core033_kernel_decide
def op10904 : List WordIR.Op := [.bxor 10945 10946]
def bytes10904 : Bytes := ("    let r00002ac3: u32 = r00002ac1 ^ r00002ac2;\n" : String).toByteArray.data.toList
theorem checked10904 : bytes10904=statementBytes 10947 (op10904.map lower) ∧ bytes10904.length=48 := by core033_kernel_decide
def op10905 : List WordIR.Op := [.bnot 10947]
def bytes10905 : Bytes := ("    let r00002ac4: u32 = !r00002ac3;\n" : String).toByteArray.data.toList
theorem checked10905 : bytes10905=statementBytes 10948 (op10905.map lower) ∧ bytes10905.length=37 := by core033_kernel_decide
def op10906 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10906 : Bytes := ("    let r00002ac5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10906 : bytes10906=statementBytes 10949 (op10906.map lower) ∧ bytes10906.length=41 := by core033_kernel_decide
def op10907 : List WordIR.Op := [.badd 10948 10949]
def bytes10907 : Bytes := ("    let r00002ac6: u32 = r00002ac4.wrapping_add(r00002ac5);\n" : String).toByteArray.data.toList
theorem checked10907 : bytes10907=statementBytes 10950 (op10907.map lower) ∧ bytes10907.length=60 := by core033_kernel_decide
def op10908 : List WordIR.Op := [.bnot 10950]
def bytes10908 : Bytes := ("    let r00002ac7: u32 = !r00002ac6;\n" : String).toByteArray.data.toList
theorem checked10908 : bytes10908=statementBytes 10951 (op10908.map lower) ∧ bytes10908.length=37 := by core033_kernel_decide
def op10909 : List WordIR.Op := [.band 10951 239]
def bytes10909 : Bytes := ("    let r00002ac8: u32 = r00002ac7 & r000000ef;\n" : String).toByteArray.data.toList
theorem checked10909 : bytes10909=statementBytes 10952 (op10909.map lower) ∧ bytes10909.length=48 := by core033_kernel_decide
def op10910 : List WordIR.Op := [.bxor 10926 10952]
def bytes10910 : Bytes := ("    let r00002ac9: u32 = r00002aae ^ r00002ac8;\n" : String).toByteArray.data.toList
theorem checked10910 : bytes10910=statementBytes 10953 (op10910.map lower) ∧ bytes10910.length=48 := by core033_kernel_decide
def op10911 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10911 : Bytes := ("    let r00002aca: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10911 : bytes10911=statementBytes 10954 (op10911.map lower) ∧ bytes10911.length=41 := by core033_kernel_decide
def op10912 : List WordIR.Op := [.bxor 0 10954]
def bytes10912 : Bytes := ("    let r00002acb: u32 = r00000000 ^ r00002aca;\n" : String).toByteArray.data.toList
theorem checked10912 : bytes10912=statementBytes 10955 (op10912.map lower) ∧ bytes10912.length=48 := by core033_kernel_decide
def op10913 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10913 : Bytes := ("    let r00002acc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10913 : bytes10913=statementBytes 10956 (op10913.map lower) ∧ bytes10913.length=41 := by core033_kernel_decide
def op10914 : List WordIR.Op := [.bnot 10956]
def bytes10914 : Bytes := ("    let r00002acd: u32 = !r00002acc;\n" : String).toByteArray.data.toList
theorem checked10914 : bytes10914=statementBytes 10957 (op10914.map lower) ∧ bytes10914.length=37 := by core033_kernel_decide
def op10915 : List WordIR.Op := [.band 10955 10957]
def bytes10915 : Bytes := ("    let r00002ace: u32 = r00002acb & r00002acd;\n" : String).toByteArray.data.toList
theorem checked10915 : bytes10915=statementBytes 10958 (op10915.map lower) ∧ bytes10915.length=48 := by core033_kernel_decide
def op10916 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10916 : Bytes := ("    let r00002acf: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10916 : bytes10916=statementBytes 10959 (op10916.map lower) ∧ bytes10916.length=41 := by core033_kernel_decide
def op10917 : List WordIR.Op := [.bxor 0 10959]
def bytes10917 : Bytes := ("    let r00002ad0: u32 = r00000000 ^ r00002acf;\n" : String).toByteArray.data.toList
theorem checked10917 : bytes10917=statementBytes 10960 (op10917.map lower) ∧ bytes10917.length=48 := by core033_kernel_decide
def op10918 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10918 : Bytes := ("    let r00002ad1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10918 : bytes10918=statementBytes 10961 (op10918.map lower) ∧ bytes10918.length=41 := by core033_kernel_decide
def op10919 : List WordIR.Op := [.bnot 10961]
def bytes10919 : Bytes := ("    let r00002ad2: u32 = !r00002ad1;\n" : String).toByteArray.data.toList
theorem checked10919 : bytes10919=statementBytes 10962 (op10919.map lower) ∧ bytes10919.length=37 := by core033_kernel_decide
def op10920 : List WordIR.Op := [.bxor 10960 10962]
def bytes10920 : Bytes := ("    let r00002ad3: u32 = r00002ad0 ^ r00002ad2;\n" : String).toByteArray.data.toList
theorem checked10920 : bytes10920=statementBytes 10963 (op10920.map lower) ∧ bytes10920.length=48 := by core033_kernel_decide
def op10921 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10921 : Bytes := ("    let r00002ad4: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10921 : bytes10921=statementBytes 10964 (op10921.map lower) ∧ bytes10921.length=41 := by core033_kernel_decide
def op10922 : List WordIR.Op := [.bxor 0 10964]
def bytes10922 : Bytes := ("    let r00002ad5: u32 = r00000000 ^ r00002ad4;\n" : String).toByteArray.data.toList
theorem checked10922 : bytes10922=statementBytes 10965 (op10922.map lower) ∧ bytes10922.length=48 := by core033_kernel_decide
def op10923 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10923 : Bytes := ("    let r00002ad6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10923 : bytes10923=statementBytes 10966 (op10923.map lower) ∧ bytes10923.length=41 := by core033_kernel_decide
def op10924 : List WordIR.Op := [.bnot 10966]
def bytes10924 : Bytes := ("    let r00002ad7: u32 = !r00002ad6;\n" : String).toByteArray.data.toList
theorem checked10924 : bytes10924=statementBytes 10967 (op10924.map lower) ∧ bytes10924.length=37 := by core033_kernel_decide
def op10925 : List WordIR.Op := [.badd 10965 10967]
def bytes10925 : Bytes := ("    let r00002ad8: u32 = r00002ad5.wrapping_add(r00002ad7);\n" : String).toByteArray.data.toList
theorem checked10925 : bytes10925=statementBytes 10968 (op10925.map lower) ∧ bytes10925.length=60 := by core033_kernel_decide
def op10926 : List WordIR.Op := [.bnot 10968]
def bytes10926 : Bytes := ("    let r00002ad9: u32 = !r00002ad8;\n" : String).toByteArray.data.toList
theorem checked10926 : bytes10926=statementBytes 10969 (op10926.map lower) ∧ bytes10926.length=37 := by core033_kernel_decide
def op10927 : List WordIR.Op := [.band 10963 10969]
def bytes10927 : Bytes := ("    let r00002ada: u32 = r00002ad3 & r00002ad9;\n" : String).toByteArray.data.toList
theorem checked10927 : bytes10927=statementBytes 10970 (op10927.map lower) ∧ bytes10927.length=48 := by core033_kernel_decide
def op10928 : List WordIR.Op := [.bxor 10958 10970]
def bytes10928 : Bytes := ("    let r00002adb: u32 = r00002ace ^ r00002ada;\n" : String).toByteArray.data.toList
theorem checked10928 : bytes10928=statementBytes 10971 (op10928.map lower) ∧ bytes10928.length=48 := by core033_kernel_decide
def op10929 : List WordIR.Op := [.shr 10971 31]
def bytes10929 : Bytes := ("    let r00002adc: u32 = r00002adb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10929 : bytes10929=statementBytes 10972 (op10929.map lower) ∧ bytes10929.length=54 := by core033_kernel_decide
def op10930 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10930 : Bytes := ("    let r00002add: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10930 : bytes10930=statementBytes 10973 (op10930.map lower) ∧ bytes10930.length=41 := by core033_kernel_decide
def op10931 : List WordIR.Op := [.bxor 10972 10973]
def bytes10931 : Bytes := ("    let r00002ade: u32 = r00002adc ^ r00002add;\n" : String).toByteArray.data.toList
theorem checked10931 : bytes10931=statementBytes 10974 (op10931.map lower) ∧ bytes10931.length=48 := by core033_kernel_decide
def op10932 : List WordIR.Op := [.bnot 10974]
def bytes10932 : Bytes := ("    let r00002adf: u32 = !r00002ade;\n" : String).toByteArray.data.toList
theorem checked10932 : bytes10932=statementBytes 10975 (op10932.map lower) ∧ bytes10932.length=37 := by core033_kernel_decide
def op10933 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10933 : Bytes := ("    let r00002ae0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10933 : bytes10933=statementBytes 10976 (op10933.map lower) ∧ bytes10933.length=41 := by core033_kernel_decide
def op10934 : List WordIR.Op := [.badd 10975 10976]
def bytes10934 : Bytes := ("    let r00002ae1: u32 = r00002adf.wrapping_add(r00002ae0);\n" : String).toByteArray.data.toList
theorem checked10934 : bytes10934=statementBytes 10977 (op10934.map lower) ∧ bytes10934.length=60 := by core033_kernel_decide
def op10935 : List WordIR.Op := [.band 10977 9907]
def bytes10935 : Bytes := ("    let r00002ae2: u32 = r00002ae1 & r000026b3;\n" : String).toByteArray.data.toList
theorem checked10935 : bytes10935=statementBytes 10978 (op10935.map lower) ∧ bytes10935.length=48 := by core033_kernel_decide
def op10936 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10936 : Bytes := ("    let r00002ae3: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10936 : bytes10936=statementBytes 10979 (op10936.map lower) ∧ bytes10936.length=41 := by core033_kernel_decide
def op10937 : List WordIR.Op := [.bxor 0 10979]
def bytes10937 : Bytes := ("    let r00002ae4: u32 = r00000000 ^ r00002ae3;\n" : String).toByteArray.data.toList
theorem checked10937 : bytes10937=statementBytes 10980 (op10937.map lower) ∧ bytes10937.length=48 := by core033_kernel_decide
def op10938 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10938 : Bytes := ("    let r00002ae5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10938 : bytes10938=statementBytes 10981 (op10938.map lower) ∧ bytes10938.length=41 := by core033_kernel_decide
def op10939 : List WordIR.Op := [.bnot 10981]
def bytes10939 : Bytes := ("    let r00002ae6: u32 = !r00002ae5;\n" : String).toByteArray.data.toList
theorem checked10939 : bytes10939=statementBytes 10982 (op10939.map lower) ∧ bytes10939.length=37 := by core033_kernel_decide
def op10940 : List WordIR.Op := [.band 10980 10982]
def bytes10940 : Bytes := ("    let r00002ae7: u32 = r00002ae4 & r00002ae6;\n" : String).toByteArray.data.toList
theorem checked10940 : bytes10940=statementBytes 10983 (op10940.map lower) ∧ bytes10940.length=48 := by core033_kernel_decide
def op10941 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10941 : Bytes := ("    let r00002ae8: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10941 : bytes10941=statementBytes 10984 (op10941.map lower) ∧ bytes10941.length=41 := by core033_kernel_decide
def op10942 : List WordIR.Op := [.bxor 0 10984]
def bytes10942 : Bytes := ("    let r00002ae9: u32 = r00000000 ^ r00002ae8;\n" : String).toByteArray.data.toList
theorem checked10942 : bytes10942=statementBytes 10985 (op10942.map lower) ∧ bytes10942.length=48 := by core033_kernel_decide
def op10943 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10943 : Bytes := ("    let r00002aea: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10943 : bytes10943=statementBytes 10986 (op10943.map lower) ∧ bytes10943.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10880,op10881,op10882,op10883,op10884,op10885,op10886,op10887,op10888,op10889,op10890,op10891,op10892,op10893,op10894,op10895,op10896,op10897,op10898,op10899,op10900,op10901,op10902,op10903,op10904,op10905,op10906,op10907,op10908,op10909,op10910,op10911,op10912,op10913,op10914,op10915,op10916,op10917,op10918,op10919,op10920,op10921,op10922,op10923,op10924,op10925,op10926,op10927,op10928,op10929,op10930,op10931,op10932,op10933,op10934,op10935,op10936,op10937,op10938,op10939,op10940,op10941,op10942,op10943]
def chunks : List Bytes := [bytes10880,bytes10881,bytes10882,bytes10883,bytes10884,bytes10885,bytes10886,bytes10887,bytes10888,bytes10889,bytes10890,bytes10891,bytes10892,bytes10893,bytes10894,bytes10895,bytes10896,bytes10897,bytes10898,bytes10899,bytes10900,bytes10901,bytes10902,bytes10903,bytes10904,bytes10905,bytes10906,bytes10907,bytes10908,bytes10909,bytes10910,bytes10911,bytes10912,bytes10913,bytes10914,bytes10915,bytes10916,bytes10917,bytes10918,bytes10919,bytes10920,bytes10921,bytes10922,bytes10923,bytes10924,bytes10925,bytes10926,bytes10927,bytes10928,bytes10929,bytes10930,bytes10931,bytes10932,bytes10933,bytes10934,bytes10935,bytes10936,bytes10937,bytes10938,bytes10939,bytes10940,bytes10941,bytes10942,bytes10943]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10923 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10880.1 (.cons _ _ _ _ _ checked10881.1 (.cons _ _ _ _ _ checked10882.1 (.cons _ _ _ _ _ checked10883.1 (.cons _ _ _ _ _ checked10884.1 (.cons _ _ _ _ _ checked10885.1 (.cons _ _ _ _ _ checked10886.1 (.cons _ _ _ _ _ checked10887.1 (.cons _ _ _ _ _ checked10888.1 (.cons _ _ _ _ _ checked10889.1 (.cons _ _ _ _ _ checked10890.1 (.cons _ _ _ _ _ checked10891.1 (.cons _ _ _ _ _ checked10892.1 (.cons _ _ _ _ _ checked10893.1 (.cons _ _ _ _ _ checked10894.1 (.cons _ _ _ _ _ checked10895.1 (.cons _ _ _ _ _ checked10896.1 (.cons _ _ _ _ _ checked10897.1 (.cons _ _ _ _ _ checked10898.1 (.cons _ _ _ _ _ checked10899.1 (.cons _ _ _ _ _ checked10900.1 (.cons _ _ _ _ _ checked10901.1 (.cons _ _ _ _ _ checked10902.1 (.cons _ _ _ _ _ checked10903.1 (.cons _ _ _ _ _ checked10904.1 (.cons _ _ _ _ _ checked10905.1 (.cons _ _ _ _ _ checked10906.1 (.cons _ _ _ _ _ checked10907.1 (.cons _ _ _ _ _ checked10908.1 (.cons _ _ _ _ _ checked10909.1 (.cons _ _ _ _ _ checked10910.1 (.cons _ _ _ _ _ checked10911.1 (.cons _ _ _ _ _ checked10912.1 (.cons _ _ _ _ _ checked10913.1 (.cons _ _ _ _ _ checked10914.1 (.cons _ _ _ _ _ checked10915.1 (.cons _ _ _ _ _ checked10916.1 (.cons _ _ _ _ _ checked10917.1 (.cons _ _ _ _ _ checked10918.1 (.cons _ _ _ _ _ checked10919.1 (.cons _ _ _ _ _ checked10920.1 (.cons _ _ _ _ _ checked10921.1 (.cons _ _ _ _ _ checked10922.1 (.cons _ _ _ _ _ checked10923.1 (.cons _ _ _ _ _ checked10924.1 (.cons _ _ _ _ _ checked10925.1 (.cons _ _ _ _ _ checked10926.1 (.cons _ _ _ _ _ checked10927.1 (.cons _ _ _ _ _ checked10928.1 (.cons _ _ _ _ _ checked10929.1 (.cons _ _ _ _ _ checked10930.1 (.cons _ _ _ _ _ checked10931.1 (.cons _ _ _ _ _ checked10932.1 (.cons _ _ _ _ _ checked10933.1 (.cons _ _ _ _ _ checked10934.1 (.cons _ _ _ _ _ checked10935.1 (.cons _ _ _ _ _ checked10936.1 (.cons _ _ _ _ _ checked10937.1 (.cons _ _ _ _ _ checked10938.1 (.cons _ _ _ _ _ checked10939.1 (.cons _ _ _ _ _ checked10940.1 (.cons _ _ _ _ _ checked10941.1 (.cons _ _ _ _ _ checked10942.1 (.cons _ _ _ _ _ checked10943.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10923 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2854 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10880.2,checked10881.2,checked10882.2,checked10883.2,checked10884.2,checked10885.2,checked10886.2,checked10887.2,checked10888.2,checked10889.2,checked10890.2,checked10891.2,checked10892.2,checked10893.2,checked10894.2,checked10895.2,checked10896.2,checked10897.2,checked10898.2,checked10899.2,checked10900.2,checked10901.2,checked10902.2,checked10903.2,checked10904.2,checked10905.2,checked10906.2,checked10907.2,checked10908.2,checked10909.2,checked10910.2,checked10911.2,checked10912.2,checked10913.2,checked10914.2,checked10915.2,checked10916.2,checked10917.2,checked10918.2,checked10919.2,checked10920.2,checked10921.2,checked10922.2,checked10923.2,checked10924.2,checked10925.2,checked10926.2,checked10927.2,checked10928.2,checked10929.2,checked10930.2,checked10931.2,checked10932.2,checked10933.2,checked10934.2,checked10935.2,checked10936.2,checked10937.2,checked10938.2,checked10939.2,checked10940.2,checked10941.2,checked10942.2,checked10943.2]
  decide
end ArtifactPathRoundDispatchGroup170
