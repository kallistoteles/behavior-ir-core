import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup170
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10880 : List WordIR.Op := [.band 10997 1175]
def bytes10880 : Bytes := ("    let r00002af6: u32 = r00002af5 & r00000497;\n" : String).toByteArray.data.toList
theorem checked10880 : bytes10880=statementBytes 10998 (op10880.map lower) ∧ bytes10880.length=48 := by core033_kernel_decide
def op10881 : List WordIR.Op := [.bnot 10609]
def bytes10881 : Bytes := ("    let r00002af7: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10881 : bytes10881=statementBytes 10999 (op10881.map lower) ∧ bytes10881.length=37 := by core033_kernel_decide
def op10882 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10882 : Bytes := ("    let r00002af8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10882 : bytes10882=statementBytes 11000 (op10882.map lower) ∧ bytes10882.length=41 := by core033_kernel_decide
def op10883 : List WordIR.Op := [.badd 10999 11000]
def bytes10883 : Bytes := ("    let r00002af9: u32 = r00002af7.wrapping_add(r00002af8);\n" : String).toByteArray.data.toList
theorem checked10883 : bytes10883=statementBytes 11001 (op10883.map lower) ∧ bytes10883.length=60 := by core033_kernel_decide
def op10884 : List WordIR.Op := [.bnot 11001]
def bytes10884 : Bytes := ("    let r00002afa: u32 = !r00002af9;\n" : String).toByteArray.data.toList
theorem checked10884 : bytes10884=statementBytes 11002 (op10884.map lower) ∧ bytes10884.length=37 := by core033_kernel_decide
def op10885 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10885 : Bytes := ("    let r00002afb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10885 : bytes10885=statementBytes 11003 (op10885.map lower) ∧ bytes10885.length=41 := by core033_kernel_decide
def op10886 : List WordIR.Op := [.band 11002 11003]
def bytes10886 : Bytes := ("    let r00002afc: u32 = r00002afa & r00002afb;\n" : String).toByteArray.data.toList
theorem checked10886 : bytes10886=statementBytes 11004 (op10886.map lower) ∧ bytes10886.length=48 := by core033_kernel_decide
def op10887 : List WordIR.Op := [.bxor 10998 11004]
def bytes10887 : Bytes := ("    let r00002afd: u32 = r00002af6 ^ r00002afc;\n" : String).toByteArray.data.toList
theorem checked10887 : bytes10887=statementBytes 11005 (op10887.map lower) ∧ bytes10887.length=48 := by core033_kernel_decide
def op10888 : List WordIR.Op := [.bnot 10609]
def bytes10888 : Bytes := ("    let r00002afe: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10888 : bytes10888=statementBytes 11006 (op10888.map lower) ∧ bytes10888.length=37 := by core033_kernel_decide
def op10889 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10889 : Bytes := ("    let r00002aff: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10889 : bytes10889=statementBytes 11007 (op10889.map lower) ∧ bytes10889.length=41 := by core033_kernel_decide
def op10890 : List WordIR.Op := [.badd 11006 11007]
def bytes10890 : Bytes := ("    let r00002b00: u32 = r00002afe.wrapping_add(r00002aff);\n" : String).toByteArray.data.toList
theorem checked10890 : bytes10890=statementBytes 11008 (op10890.map lower) ∧ bytes10890.length=60 := by core033_kernel_decide
def op10891 : List WordIR.Op := [.band 11008 1185]
def bytes10891 : Bytes := ("    let r00002b01: u32 = r00002b00 & r000004a1;\n" : String).toByteArray.data.toList
theorem checked10891 : bytes10891=statementBytes 11009 (op10891.map lower) ∧ bytes10891.length=48 := by core033_kernel_decide
def op10892 : List WordIR.Op := [.bnot 10609]
def bytes10892 : Bytes := ("    let r00002b02: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10892 : bytes10892=statementBytes 11010 (op10892.map lower) ∧ bytes10892.length=37 := by core033_kernel_decide
def op10893 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10893 : Bytes := ("    let r00002b03: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10893 : bytes10893=statementBytes 11011 (op10893.map lower) ∧ bytes10893.length=41 := by core033_kernel_decide
def op10894 : List WordIR.Op := [.badd 11010 11011]
def bytes10894 : Bytes := ("    let r00002b04: u32 = r00002b02.wrapping_add(r00002b03);\n" : String).toByteArray.data.toList
theorem checked10894 : bytes10894=statementBytes 11012 (op10894.map lower) ∧ bytes10894.length=60 := by core033_kernel_decide
def op10895 : List WordIR.Op := [.bnot 11012]
def bytes10895 : Bytes := ("    let r00002b05: u32 = !r00002b04;\n" : String).toByteArray.data.toList
theorem checked10895 : bytes10895=statementBytes 11013 (op10895.map lower) ∧ bytes10895.length=37 := by core033_kernel_decide
def op10896 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10896 : Bytes := ("    let r00002b06: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10896 : bytes10896=statementBytes 11014 (op10896.map lower) ∧ bytes10896.length=41 := by core033_kernel_decide
def op10897 : List WordIR.Op := [.band 11013 11014]
def bytes10897 : Bytes := ("    let r00002b07: u32 = r00002b05 & r00002b06;\n" : String).toByteArray.data.toList
theorem checked10897 : bytes10897=statementBytes 11015 (op10897.map lower) ∧ bytes10897.length=48 := by core033_kernel_decide
def op10898 : List WordIR.Op := [.bxor 11009 11015]
def bytes10898 : Bytes := ("    let r00002b08: u32 = r00002b01 ^ r00002b07;\n" : String).toByteArray.data.toList
theorem checked10898 : bytes10898=statementBytes 11016 (op10898.map lower) ∧ bytes10898.length=48 := by core033_kernel_decide
def op10899 : List WordIR.Op := [.bnot 10609]
def bytes10899 : Bytes := ("    let r00002b09: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10899 : bytes10899=statementBytes 11017 (op10899.map lower) ∧ bytes10899.length=37 := by core033_kernel_decide
def op10900 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10900 : Bytes := ("    let r00002b0a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10900 : bytes10900=statementBytes 11018 (op10900.map lower) ∧ bytes10900.length=41 := by core033_kernel_decide
def op10901 : List WordIR.Op := [.badd 11017 11018]
def bytes10901 : Bytes := ("    let r00002b0b: u32 = r00002b09.wrapping_add(r00002b0a);\n" : String).toByteArray.data.toList
theorem checked10901 : bytes10901=statementBytes 11019 (op10901.map lower) ∧ bytes10901.length=60 := by core033_kernel_decide
def op10902 : List WordIR.Op := [.band 11019 1195]
def bytes10902 : Bytes := ("    let r00002b0c: u32 = r00002b0b & r000004ab;\n" : String).toByteArray.data.toList
theorem checked10902 : bytes10902=statementBytes 11020 (op10902.map lower) ∧ bytes10902.length=48 := by core033_kernel_decide
def op10903 : List WordIR.Op := [.bnot 10609]
def bytes10903 : Bytes := ("    let r00002b0d: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10903 : bytes10903=statementBytes 11021 (op10903.map lower) ∧ bytes10903.length=37 := by core033_kernel_decide
def op10904 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10904 : Bytes := ("    let r00002b0e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10904 : bytes10904=statementBytes 11022 (op10904.map lower) ∧ bytes10904.length=41 := by core033_kernel_decide
def op10905 : List WordIR.Op := [.badd 11021 11022]
def bytes10905 : Bytes := ("    let r00002b0f: u32 = r00002b0d.wrapping_add(r00002b0e);\n" : String).toByteArray.data.toList
theorem checked10905 : bytes10905=statementBytes 11023 (op10905.map lower) ∧ bytes10905.length=60 := by core033_kernel_decide
def op10906 : List WordIR.Op := [.bnot 11023]
def bytes10906 : Bytes := ("    let r00002b10: u32 = !r00002b0f;\n" : String).toByteArray.data.toList
theorem checked10906 : bytes10906=statementBytes 11024 (op10906.map lower) ∧ bytes10906.length=37 := by core033_kernel_decide
def op10907 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10907 : Bytes := ("    let r00002b11: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10907 : bytes10907=statementBytes 11025 (op10907.map lower) ∧ bytes10907.length=41 := by core033_kernel_decide
def op10908 : List WordIR.Op := [.band 11024 11025]
def bytes10908 : Bytes := ("    let r00002b12: u32 = r00002b10 & r00002b11;\n" : String).toByteArray.data.toList
theorem checked10908 : bytes10908=statementBytes 11026 (op10908.map lower) ∧ bytes10908.length=48 := by core033_kernel_decide
def op10909 : List WordIR.Op := [.bxor 11020 11026]
def bytes10909 : Bytes := ("    let r00002b13: u32 = r00002b0c ^ r00002b12;\n" : String).toByteArray.data.toList
theorem checked10909 : bytes10909=statementBytes 11027 (op10909.map lower) ∧ bytes10909.length=48 := by core033_kernel_decide
def op10910 : List WordIR.Op := [.bnot 10609]
def bytes10910 : Bytes := ("    let r00002b14: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10910 : bytes10910=statementBytes 11028 (op10910.map lower) ∧ bytes10910.length=37 := by core033_kernel_decide
def op10911 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10911 : Bytes := ("    let r00002b15: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10911 : bytes10911=statementBytes 11029 (op10911.map lower) ∧ bytes10911.length=41 := by core033_kernel_decide
def op10912 : List WordIR.Op := [.badd 11028 11029]
def bytes10912 : Bytes := ("    let r00002b16: u32 = r00002b14.wrapping_add(r00002b15);\n" : String).toByteArray.data.toList
theorem checked10912 : bytes10912=statementBytes 11030 (op10912.map lower) ∧ bytes10912.length=60 := by core033_kernel_decide
def op10913 : List WordIR.Op := [.band 11030 1205]
def bytes10913 : Bytes := ("    let r00002b17: u32 = r00002b16 & r000004b5;\n" : String).toByteArray.data.toList
theorem checked10913 : bytes10913=statementBytes 11031 (op10913.map lower) ∧ bytes10913.length=48 := by core033_kernel_decide
def op10914 : List WordIR.Op := [.bnot 10609]
def bytes10914 : Bytes := ("    let r00002b18: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10914 : bytes10914=statementBytes 11032 (op10914.map lower) ∧ bytes10914.length=37 := by core033_kernel_decide
def op10915 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10915 : Bytes := ("    let r00002b19: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10915 : bytes10915=statementBytes 11033 (op10915.map lower) ∧ bytes10915.length=41 := by core033_kernel_decide
def op10916 : List WordIR.Op := [.badd 11032 11033]
def bytes10916 : Bytes := ("    let r00002b1a: u32 = r00002b18.wrapping_add(r00002b19);\n" : String).toByteArray.data.toList
theorem checked10916 : bytes10916=statementBytes 11034 (op10916.map lower) ∧ bytes10916.length=60 := by core033_kernel_decide
def op10917 : List WordIR.Op := [.bnot 11034]
def bytes10917 : Bytes := ("    let r00002b1b: u32 = !r00002b1a;\n" : String).toByteArray.data.toList
theorem checked10917 : bytes10917=statementBytes 11035 (op10917.map lower) ∧ bytes10917.length=37 := by core033_kernel_decide
def op10918 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10918 : Bytes := ("    let r00002b1c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10918 : bytes10918=statementBytes 11036 (op10918.map lower) ∧ bytes10918.length=41 := by core033_kernel_decide
def op10919 : List WordIR.Op := [.band 11035 11036]
def bytes10919 : Bytes := ("    let r00002b1d: u32 = r00002b1b & r00002b1c;\n" : String).toByteArray.data.toList
theorem checked10919 : bytes10919=statementBytes 11037 (op10919.map lower) ∧ bytes10919.length=48 := by core033_kernel_decide
def op10920 : List WordIR.Op := [.bxor 11031 11037]
def bytes10920 : Bytes := ("    let r00002b1e: u32 = r00002b17 ^ r00002b1d;\n" : String).toByteArray.data.toList
theorem checked10920 : bytes10920=statementBytes 11038 (op10920.map lower) ∧ bytes10920.length=48 := by core033_kernel_decide
def op10921 : List WordIR.Op := [.bnot 10609]
def bytes10921 : Bytes := ("    let r00002b1f: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10921 : bytes10921=statementBytes 11039 (op10921.map lower) ∧ bytes10921.length=37 := by core033_kernel_decide
def op10922 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10922 : Bytes := ("    let r00002b20: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10922 : bytes10922=statementBytes 11040 (op10922.map lower) ∧ bytes10922.length=41 := by core033_kernel_decide
def op10923 : List WordIR.Op := [.badd 11039 11040]
def bytes10923 : Bytes := ("    let r00002b21: u32 = r00002b1f.wrapping_add(r00002b20);\n" : String).toByteArray.data.toList
theorem checked10923 : bytes10923=statementBytes 11041 (op10923.map lower) ∧ bytes10923.length=60 := by core033_kernel_decide
def op10924 : List WordIR.Op := [.band 11041 1215]
def bytes10924 : Bytes := ("    let r00002b22: u32 = r00002b21 & r000004bf;\n" : String).toByteArray.data.toList
theorem checked10924 : bytes10924=statementBytes 11042 (op10924.map lower) ∧ bytes10924.length=48 := by core033_kernel_decide
def op10925 : List WordIR.Op := [.bnot 10609]
def bytes10925 : Bytes := ("    let r00002b23: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10925 : bytes10925=statementBytes 11043 (op10925.map lower) ∧ bytes10925.length=37 := by core033_kernel_decide
def op10926 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10926 : Bytes := ("    let r00002b24: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10926 : bytes10926=statementBytes 11044 (op10926.map lower) ∧ bytes10926.length=41 := by core033_kernel_decide
def op10927 : List WordIR.Op := [.badd 11043 11044]
def bytes10927 : Bytes := ("    let r00002b25: u32 = r00002b23.wrapping_add(r00002b24);\n" : String).toByteArray.data.toList
theorem checked10927 : bytes10927=statementBytes 11045 (op10927.map lower) ∧ bytes10927.length=60 := by core033_kernel_decide
def op10928 : List WordIR.Op := [.bnot 11045]
def bytes10928 : Bytes := ("    let r00002b26: u32 = !r00002b25;\n" : String).toByteArray.data.toList
theorem checked10928 : bytes10928=statementBytes 11046 (op10928.map lower) ∧ bytes10928.length=37 := by core033_kernel_decide
def op10929 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10929 : Bytes := ("    let r00002b27: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10929 : bytes10929=statementBytes 11047 (op10929.map lower) ∧ bytes10929.length=41 := by core033_kernel_decide
def op10930 : List WordIR.Op := [.band 11046 11047]
def bytes10930 : Bytes := ("    let r00002b28: u32 = r00002b26 & r00002b27;\n" : String).toByteArray.data.toList
theorem checked10930 : bytes10930=statementBytes 11048 (op10930.map lower) ∧ bytes10930.length=48 := by core033_kernel_decide
def op10931 : List WordIR.Op := [.bxor 11042 11048]
def bytes10931 : Bytes := ("    let r00002b29: u32 = r00002b22 ^ r00002b28;\n" : String).toByteArray.data.toList
theorem checked10931 : bytes10931=statementBytes 11049 (op10931.map lower) ∧ bytes10931.length=48 := by core033_kernel_decide
def op10932 : List WordIR.Op := [.bnot 10609]
def bytes10932 : Bytes := ("    let r00002b2a: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10932 : bytes10932=statementBytes 11050 (op10932.map lower) ∧ bytes10932.length=37 := by core033_kernel_decide
def op10933 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10933 : Bytes := ("    let r00002b2b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10933 : bytes10933=statementBytes 11051 (op10933.map lower) ∧ bytes10933.length=41 := by core033_kernel_decide
def op10934 : List WordIR.Op := [.badd 11050 11051]
def bytes10934 : Bytes := ("    let r00002b2c: u32 = r00002b2a.wrapping_add(r00002b2b);\n" : String).toByteArray.data.toList
theorem checked10934 : bytes10934=statementBytes 11052 (op10934.map lower) ∧ bytes10934.length=60 := by core033_kernel_decide
def op10935 : List WordIR.Op := [.band 11052 1225]
def bytes10935 : Bytes := ("    let r00002b2d: u32 = r00002b2c & r000004c9;\n" : String).toByteArray.data.toList
theorem checked10935 : bytes10935=statementBytes 11053 (op10935.map lower) ∧ bytes10935.length=48 := by core033_kernel_decide
def op10936 : List WordIR.Op := [.bnot 10609]
def bytes10936 : Bytes := ("    let r00002b2e: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10936 : bytes10936=statementBytes 11054 (op10936.map lower) ∧ bytes10936.length=37 := by core033_kernel_decide
def op10937 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10937 : Bytes := ("    let r00002b2f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10937 : bytes10937=statementBytes 11055 (op10937.map lower) ∧ bytes10937.length=41 := by core033_kernel_decide
def op10938 : List WordIR.Op := [.badd 11054 11055]
def bytes10938 : Bytes := ("    let r00002b30: u32 = r00002b2e.wrapping_add(r00002b2f);\n" : String).toByteArray.data.toList
theorem checked10938 : bytes10938=statementBytes 11056 (op10938.map lower) ∧ bytes10938.length=60 := by core033_kernel_decide
def op10939 : List WordIR.Op := [.bnot 11056]
def bytes10939 : Bytes := ("    let r00002b31: u32 = !r00002b30;\n" : String).toByteArray.data.toList
theorem checked10939 : bytes10939=statementBytes 11057 (op10939.map lower) ∧ bytes10939.length=37 := by core033_kernel_decide
def op10940 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10940 : Bytes := ("    let r00002b32: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10940 : bytes10940=statementBytes 11058 (op10940.map lower) ∧ bytes10940.length=41 := by core033_kernel_decide
def op10941 : List WordIR.Op := [.band 11057 11058]
def bytes10941 : Bytes := ("    let r00002b33: u32 = r00002b31 & r00002b32;\n" : String).toByteArray.data.toList
theorem checked10941 : bytes10941=statementBytes 11059 (op10941.map lower) ∧ bytes10941.length=48 := by core033_kernel_decide
def op10942 : List WordIR.Op := [.bxor 11053 11059]
def bytes10942 : Bytes := ("    let r00002b34: u32 = r00002b2d ^ r00002b33;\n" : String).toByteArray.data.toList
theorem checked10942 : bytes10942=statementBytes 11060 (op10942.map lower) ∧ bytes10942.length=48 := by core033_kernel_decide
def op10943 : List WordIR.Op := [.bnot 10609]
def bytes10943 : Bytes := ("    let r00002b35: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10943 : bytes10943=statementBytes 11061 (op10943.map lower) ∧ bytes10943.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10880,op10881,op10882,op10883,op10884,op10885,op10886,op10887,op10888,op10889,op10890,op10891,op10892,op10893,op10894,op10895,op10896,op10897,op10898,op10899,op10900,op10901,op10902,op10903,op10904,op10905,op10906,op10907,op10908,op10909,op10910,op10911,op10912,op10913,op10914,op10915,op10916,op10917,op10918,op10919,op10920,op10921,op10922,op10923,op10924,op10925,op10926,op10927,op10928,op10929,op10930,op10931,op10932,op10933,op10934,op10935,op10936,op10937,op10938,op10939,op10940,op10941,op10942,op10943]
def chunks : List Bytes := [bytes10880,bytes10881,bytes10882,bytes10883,bytes10884,bytes10885,bytes10886,bytes10887,bytes10888,bytes10889,bytes10890,bytes10891,bytes10892,bytes10893,bytes10894,bytes10895,bytes10896,bytes10897,bytes10898,bytes10899,bytes10900,bytes10901,bytes10902,bytes10903,bytes10904,bytes10905,bytes10906,bytes10907,bytes10908,bytes10909,bytes10910,bytes10911,bytes10912,bytes10913,bytes10914,bytes10915,bytes10916,bytes10917,bytes10918,bytes10919,bytes10920,bytes10921,bytes10922,bytes10923,bytes10924,bytes10925,bytes10926,bytes10927,bytes10928,bytes10929,bytes10930,bytes10931,bytes10932,bytes10933,bytes10934,bytes10935,bytes10936,bytes10937,bytes10938,bytes10939,bytes10940,bytes10941,bytes10942,bytes10943]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10998 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10880.1 (.cons _ _ _ _ _ checked10881.1 (.cons _ _ _ _ _ checked10882.1 (.cons _ _ _ _ _ checked10883.1 (.cons _ _ _ _ _ checked10884.1 (.cons _ _ _ _ _ checked10885.1 (.cons _ _ _ _ _ checked10886.1 (.cons _ _ _ _ _ checked10887.1 (.cons _ _ _ _ _ checked10888.1 (.cons _ _ _ _ _ checked10889.1 (.cons _ _ _ _ _ checked10890.1 (.cons _ _ _ _ _ checked10891.1 (.cons _ _ _ _ _ checked10892.1 (.cons _ _ _ _ _ checked10893.1 (.cons _ _ _ _ _ checked10894.1 (.cons _ _ _ _ _ checked10895.1 (.cons _ _ _ _ _ checked10896.1 (.cons _ _ _ _ _ checked10897.1 (.cons _ _ _ _ _ checked10898.1 (.cons _ _ _ _ _ checked10899.1 (.cons _ _ _ _ _ checked10900.1 (.cons _ _ _ _ _ checked10901.1 (.cons _ _ _ _ _ checked10902.1 (.cons _ _ _ _ _ checked10903.1 (.cons _ _ _ _ _ checked10904.1 (.cons _ _ _ _ _ checked10905.1 (.cons _ _ _ _ _ checked10906.1 (.cons _ _ _ _ _ checked10907.1 (.cons _ _ _ _ _ checked10908.1 (.cons _ _ _ _ _ checked10909.1 (.cons _ _ _ _ _ checked10910.1 (.cons _ _ _ _ _ checked10911.1 (.cons _ _ _ _ _ checked10912.1 (.cons _ _ _ _ _ checked10913.1 (.cons _ _ _ _ _ checked10914.1 (.cons _ _ _ _ _ checked10915.1 (.cons _ _ _ _ _ checked10916.1 (.cons _ _ _ _ _ checked10917.1 (.cons _ _ _ _ _ checked10918.1 (.cons _ _ _ _ _ checked10919.1 (.cons _ _ _ _ _ checked10920.1 (.cons _ _ _ _ _ checked10921.1 (.cons _ _ _ _ _ checked10922.1 (.cons _ _ _ _ _ checked10923.1 (.cons _ _ _ _ _ checked10924.1 (.cons _ _ _ _ _ checked10925.1 (.cons _ _ _ _ _ checked10926.1 (.cons _ _ _ _ _ checked10927.1 (.cons _ _ _ _ _ checked10928.1 (.cons _ _ _ _ _ checked10929.1 (.cons _ _ _ _ _ checked10930.1 (.cons _ _ _ _ _ checked10931.1 (.cons _ _ _ _ _ checked10932.1 (.cons _ _ _ _ _ checked10933.1 (.cons _ _ _ _ _ checked10934.1 (.cons _ _ _ _ _ checked10935.1 (.cons _ _ _ _ _ checked10936.1 (.cons _ _ _ _ _ checked10937.1 (.cons _ _ _ _ _ checked10938.1 (.cons _ _ _ _ _ checked10939.1 (.cons _ _ _ _ _ checked10940.1 (.cons _ _ _ _ _ checked10941.1 (.cons _ _ _ _ _ checked10942.1 (.cons _ _ _ _ _ checked10943.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10998 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2887 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10880.2,checked10881.2,checked10882.2,checked10883.2,checked10884.2,checked10885.2,checked10886.2,checked10887.2,checked10888.2,checked10889.2,checked10890.2,checked10891.2,checked10892.2,checked10893.2,checked10894.2,checked10895.2,checked10896.2,checked10897.2,checked10898.2,checked10899.2,checked10900.2,checked10901.2,checked10902.2,checked10903.2,checked10904.2,checked10905.2,checked10906.2,checked10907.2,checked10908.2,checked10909.2,checked10910.2,checked10911.2,checked10912.2,checked10913.2,checked10914.2,checked10915.2,checked10916.2,checked10917.2,checked10918.2,checked10919.2,checked10920.2,checked10921.2,checked10922.2,checked10923.2,checked10924.2,checked10925.2,checked10926.2,checked10927.2,checked10928.2,checked10929.2,checked10930.2,checked10931.2,checked10932.2,checked10933.2,checked10934.2,checked10935.2,checked10936.2,checked10937.2,checked10938.2,checked10939.2,checked10940.2,checked10941.2,checked10942.2,checked10943.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup170
