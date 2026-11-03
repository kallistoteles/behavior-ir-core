import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup171
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10944 : List WordIR.Op := [.bxor 11037 11039]
def bytes10944 : Bytes := ("    let r00002b20: u32 = r00002b1d ^ r00002b1f;\n" : String).toByteArray.data.toList
theorem checked10944 : bytes10944=statementBytes 11040 (op10944.map lower) ∧ bytes10944.length=48 := by core033_kernel_decide
def op10945 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10945 : Bytes := ("    let r00002b21: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10945 : bytes10945=statementBytes 11041 (op10945.map lower) ∧ bytes10945.length=41 := by core033_kernel_decide
def op10946 : List WordIR.Op := [.bxor 442 11041]
def bytes10946 : Bytes := ("    let r00002b22: u32 = r000001ba ^ r00002b21;\n" : String).toByteArray.data.toList
theorem checked10946 : bytes10946=statementBytes 11042 (op10946.map lower) ∧ bytes10946.length=48 := by core033_kernel_decide
def op10947 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10947 : Bytes := ("    let r00002b23: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10947 : bytes10947=statementBytes 11043 (op10947.map lower) ∧ bytes10947.length=41 := by core033_kernel_decide
def op10948 : List WordIR.Op := [.bnot 11043]
def bytes10948 : Bytes := ("    let r00002b24: u32 = !r00002b23;\n" : String).toByteArray.data.toList
theorem checked10948 : bytes10948=statementBytes 11044 (op10948.map lower) ∧ bytes10948.length=37 := by core033_kernel_decide
def op10949 : List WordIR.Op := [.badd 11042 11044]
def bytes10949 : Bytes := ("    let r00002b25: u32 = r00002b22.wrapping_add(r00002b24);\n" : String).toByteArray.data.toList
theorem checked10949 : bytes10949=statementBytes 11045 (op10949.map lower) ∧ bytes10949.length=60 := by core033_kernel_decide
def op10950 : List WordIR.Op := [.bnot 11045]
def bytes10950 : Bytes := ("    let r00002b26: u32 = !r00002b25;\n" : String).toByteArray.data.toList
theorem checked10950 : bytes10950=statementBytes 11046 (op10950.map lower) ∧ bytes10950.length=37 := by core033_kernel_decide
def op10951 : List WordIR.Op := [.band 11040 11046]
def bytes10951 : Bytes := ("    let r00002b27: u32 = r00002b20 & r00002b26;\n" : String).toByteArray.data.toList
theorem checked10951 : bytes10951=statementBytes 11047 (op10951.map lower) ∧ bytes10951.length=48 := by core033_kernel_decide
def op10952 : List WordIR.Op := [.bxor 11035 11047]
def bytes10952 : Bytes := ("    let r00002b28: u32 = r00002b1b ^ r00002b27;\n" : String).toByteArray.data.toList
theorem checked10952 : bytes10952=statementBytes 11048 (op10952.map lower) ∧ bytes10952.length=48 := by core033_kernel_decide
def op10953 : List WordIR.Op := [.shr 11048 31]
def bytes10953 : Bytes := ("    let r00002b29: u32 = r00002b28 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10953 : bytes10953=statementBytes 11049 (op10953.map lower) ∧ bytes10953.length=54 := by core033_kernel_decide
def op10954 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10954 : Bytes := ("    let r00002b2a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10954 : bytes10954=statementBytes 11050 (op10954.map lower) ∧ bytes10954.length=41 := by core033_kernel_decide
def op10955 : List WordIR.Op := [.bxor 11049 11050]
def bytes10955 : Bytes := ("    let r00002b2b: u32 = r00002b29 ^ r00002b2a;\n" : String).toByteArray.data.toList
theorem checked10955 : bytes10955=statementBytes 11051 (op10955.map lower) ∧ bytes10955.length=48 := by core033_kernel_decide
def op10956 : List WordIR.Op := [.bnot 11051]
def bytes10956 : Bytes := ("    let r00002b2c: u32 = !r00002b2b;\n" : String).toByteArray.data.toList
theorem checked10956 : bytes10956=statementBytes 11052 (op10956.map lower) ∧ bytes10956.length=37 := by core033_kernel_decide
def op10957 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10957 : Bytes := ("    let r00002b2d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10957 : bytes10957=statementBytes 11053 (op10957.map lower) ∧ bytes10957.length=41 := by core033_kernel_decide
def op10958 : List WordIR.Op := [.badd 11052 11053]
def bytes10958 : Bytes := ("    let r00002b2e: u32 = r00002b2c.wrapping_add(r00002b2d);\n" : String).toByteArray.data.toList
theorem checked10958 : bytes10958=statementBytes 11054 (op10958.map lower) ∧ bytes10958.length=60 := by core033_kernel_decide
def op10959 : List WordIR.Op := [.bnot 11054]
def bytes10959 : Bytes := ("    let r00002b2f: u32 = !r00002b2e;\n" : String).toByteArray.data.toList
theorem checked10959 : bytes10959=statementBytes 11055 (op10959.map lower) ∧ bytes10959.length=37 := by core033_kernel_decide
def op10960 : List WordIR.Op := [.band 11055 671]
def bytes10960 : Bytes := ("    let r00002b30: u32 = r00002b2f & r0000029f;\n" : String).toByteArray.data.toList
theorem checked10960 : bytes10960=statementBytes 11056 (op10960.map lower) ∧ bytes10960.length=48 := by core033_kernel_decide
def op10961 : List WordIR.Op := [.bxor 11030 11056]
def bytes10961 : Bytes := ("    let r00002b31: u32 = r00002b16 ^ r00002b30;\n" : String).toByteArray.data.toList
theorem checked10961 : bytes10961=statementBytes 11057 (op10961.map lower) ∧ bytes10961.length=48 := by core033_kernel_decide
def op10962 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10962 : Bytes := ("    let r00002b32: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10962 : bytes10962=statementBytes 11058 (op10962.map lower) ∧ bytes10962.length=41 := by core033_kernel_decide
def op10963 : List WordIR.Op := [.bxor 442 11058]
def bytes10963 : Bytes := ("    let r00002b33: u32 = r000001ba ^ r00002b32;\n" : String).toByteArray.data.toList
theorem checked10963 : bytes10963=statementBytes 11059 (op10963.map lower) ∧ bytes10963.length=48 := by core033_kernel_decide
def op10964 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10964 : Bytes := ("    let r00002b34: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10964 : bytes10964=statementBytes 11060 (op10964.map lower) ∧ bytes10964.length=41 := by core033_kernel_decide
def op10965 : List WordIR.Op := [.bnot 11060]
def bytes10965 : Bytes := ("    let r00002b35: u32 = !r00002b34;\n" : String).toByteArray.data.toList
theorem checked10965 : bytes10965=statementBytes 11061 (op10965.map lower) ∧ bytes10965.length=37 := by core033_kernel_decide
def op10966 : List WordIR.Op := [.band 11059 11061]
def bytes10966 : Bytes := ("    let r00002b36: u32 = r00002b33 & r00002b35;\n" : String).toByteArray.data.toList
theorem checked10966 : bytes10966=statementBytes 11062 (op10966.map lower) ∧ bytes10966.length=48 := by core033_kernel_decide
def op10967 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10967 : Bytes := ("    let r00002b37: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10967 : bytes10967=statementBytes 11063 (op10967.map lower) ∧ bytes10967.length=41 := by core033_kernel_decide
def op10968 : List WordIR.Op := [.bxor 442 11063]
def bytes10968 : Bytes := ("    let r00002b38: u32 = r000001ba ^ r00002b37;\n" : String).toByteArray.data.toList
theorem checked10968 : bytes10968=statementBytes 11064 (op10968.map lower) ∧ bytes10968.length=48 := by core033_kernel_decide
def op10969 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10969 : Bytes := ("    let r00002b39: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10969 : bytes10969=statementBytes 11065 (op10969.map lower) ∧ bytes10969.length=41 := by core033_kernel_decide
def op10970 : List WordIR.Op := [.bnot 11065]
def bytes10970 : Bytes := ("    let r00002b3a: u32 = !r00002b39;\n" : String).toByteArray.data.toList
theorem checked10970 : bytes10970=statementBytes 11066 (op10970.map lower) ∧ bytes10970.length=37 := by core033_kernel_decide
def op10971 : List WordIR.Op := [.bxor 11064 11066]
def bytes10971 : Bytes := ("    let r00002b3b: u32 = r00002b38 ^ r00002b3a;\n" : String).toByteArray.data.toList
theorem checked10971 : bytes10971=statementBytes 11067 (op10971.map lower) ∧ bytes10971.length=48 := by core033_kernel_decide
def op10972 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10972 : Bytes := ("    let r00002b3c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10972 : bytes10972=statementBytes 11068 (op10972.map lower) ∧ bytes10972.length=41 := by core033_kernel_decide
def op10973 : List WordIR.Op := [.bxor 442 11068]
def bytes10973 : Bytes := ("    let r00002b3d: u32 = r000001ba ^ r00002b3c;\n" : String).toByteArray.data.toList
theorem checked10973 : bytes10973=statementBytes 11069 (op10973.map lower) ∧ bytes10973.length=48 := by core033_kernel_decide
def op10974 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10974 : Bytes := ("    let r00002b3e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10974 : bytes10974=statementBytes 11070 (op10974.map lower) ∧ bytes10974.length=41 := by core033_kernel_decide
def op10975 : List WordIR.Op := [.bnot 11070]
def bytes10975 : Bytes := ("    let r00002b3f: u32 = !r00002b3e;\n" : String).toByteArray.data.toList
theorem checked10975 : bytes10975=statementBytes 11071 (op10975.map lower) ∧ bytes10975.length=37 := by core033_kernel_decide
def op10976 : List WordIR.Op := [.badd 11069 11071]
def bytes10976 : Bytes := ("    let r00002b40: u32 = r00002b3d.wrapping_add(r00002b3f);\n" : String).toByteArray.data.toList
theorem checked10976 : bytes10976=statementBytes 11072 (op10976.map lower) ∧ bytes10976.length=60 := by core033_kernel_decide
def op10977 : List WordIR.Op := [.bnot 11072]
def bytes10977 : Bytes := ("    let r00002b41: u32 = !r00002b40;\n" : String).toByteArray.data.toList
theorem checked10977 : bytes10977=statementBytes 11073 (op10977.map lower) ∧ bytes10977.length=37 := by core033_kernel_decide
def op10978 : List WordIR.Op := [.band 11067 11073]
def bytes10978 : Bytes := ("    let r00002b42: u32 = r00002b3b & r00002b41;\n" : String).toByteArray.data.toList
theorem checked10978 : bytes10978=statementBytes 11074 (op10978.map lower) ∧ bytes10978.length=48 := by core033_kernel_decide
def op10979 : List WordIR.Op := [.bxor 11062 11074]
def bytes10979 : Bytes := ("    let r00002b43: u32 = r00002b36 ^ r00002b42;\n" : String).toByteArray.data.toList
theorem checked10979 : bytes10979=statementBytes 11075 (op10979.map lower) ∧ bytes10979.length=48 := by core033_kernel_decide
def op10980 : List WordIR.Op := [.shr 11075 31]
def bytes10980 : Bytes := ("    let r00002b44: u32 = r00002b43 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10980 : bytes10980=statementBytes 11076 (op10980.map lower) ∧ bytes10980.length=54 := by core033_kernel_decide
def op10981 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10981 : Bytes := ("    let r00002b45: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10981 : bytes10981=statementBytes 11077 (op10981.map lower) ∧ bytes10981.length=41 := by core033_kernel_decide
def op10982 : List WordIR.Op := [.bxor 11076 11077]
def bytes10982 : Bytes := ("    let r00002b46: u32 = r00002b44 ^ r00002b45;\n" : String).toByteArray.data.toList
theorem checked10982 : bytes10982=statementBytes 11078 (op10982.map lower) ∧ bytes10982.length=48 := by core033_kernel_decide
def op10983 : List WordIR.Op := [.bnot 11078]
def bytes10983 : Bytes := ("    let r00002b47: u32 = !r00002b46;\n" : String).toByteArray.data.toList
theorem checked10983 : bytes10983=statementBytes 11079 (op10983.map lower) ∧ bytes10983.length=37 := by core033_kernel_decide
def op10984 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10984 : Bytes := ("    let r00002b48: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10984 : bytes10984=statementBytes 11080 (op10984.map lower) ∧ bytes10984.length=41 := by core033_kernel_decide
def op10985 : List WordIR.Op := [.badd 11079 11080]
def bytes10985 : Bytes := ("    let r00002b49: u32 = r00002b47.wrapping_add(r00002b48);\n" : String).toByteArray.data.toList
theorem checked10985 : bytes10985=statementBytes 11081 (op10985.map lower) ∧ bytes10985.length=60 := by core033_kernel_decide
def op10986 : List WordIR.Op := [.band 11081 10003]
def bytes10986 : Bytes := ("    let r00002b4a: u32 = r00002b49 & r00002713;\n" : String).toByteArray.data.toList
theorem checked10986 : bytes10986=statementBytes 11082 (op10986.map lower) ∧ bytes10986.length=48 := by core033_kernel_decide
def op10987 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10987 : Bytes := ("    let r00002b4b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10987 : bytes10987=statementBytes 11083 (op10987.map lower) ∧ bytes10987.length=41 := by core033_kernel_decide
def op10988 : List WordIR.Op := [.bxor 442 11083]
def bytes10988 : Bytes := ("    let r00002b4c: u32 = r000001ba ^ r00002b4b;\n" : String).toByteArray.data.toList
theorem checked10988 : bytes10988=statementBytes 11084 (op10988.map lower) ∧ bytes10988.length=48 := by core033_kernel_decide
def op10989 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10989 : Bytes := ("    let r00002b4d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10989 : bytes10989=statementBytes 11085 (op10989.map lower) ∧ bytes10989.length=41 := by core033_kernel_decide
def op10990 : List WordIR.Op := [.bnot 11085]
def bytes10990 : Bytes := ("    let r00002b4e: u32 = !r00002b4d;\n" : String).toByteArray.data.toList
theorem checked10990 : bytes10990=statementBytes 11086 (op10990.map lower) ∧ bytes10990.length=37 := by core033_kernel_decide
def op10991 : List WordIR.Op := [.band 11084 11086]
def bytes10991 : Bytes := ("    let r00002b4f: u32 = r00002b4c & r00002b4e;\n" : String).toByteArray.data.toList
theorem checked10991 : bytes10991=statementBytes 11087 (op10991.map lower) ∧ bytes10991.length=48 := by core033_kernel_decide
def op10992 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10992 : Bytes := ("    let r00002b50: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10992 : bytes10992=statementBytes 11088 (op10992.map lower) ∧ bytes10992.length=41 := by core033_kernel_decide
def op10993 : List WordIR.Op := [.bxor 442 11088]
def bytes10993 : Bytes := ("    let r00002b51: u32 = r000001ba ^ r00002b50;\n" : String).toByteArray.data.toList
theorem checked10993 : bytes10993=statementBytes 11089 (op10993.map lower) ∧ bytes10993.length=48 := by core033_kernel_decide
def op10994 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10994 : Bytes := ("    let r00002b52: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10994 : bytes10994=statementBytes 11090 (op10994.map lower) ∧ bytes10994.length=41 := by core033_kernel_decide
def op10995 : List WordIR.Op := [.bnot 11090]
def bytes10995 : Bytes := ("    let r00002b53: u32 = !r00002b52;\n" : String).toByteArray.data.toList
theorem checked10995 : bytes10995=statementBytes 11091 (op10995.map lower) ∧ bytes10995.length=37 := by core033_kernel_decide
def op10996 : List WordIR.Op := [.bxor 11089 11091]
def bytes10996 : Bytes := ("    let r00002b54: u32 = r00002b51 ^ r00002b53;\n" : String).toByteArray.data.toList
theorem checked10996 : bytes10996=statementBytes 11092 (op10996.map lower) ∧ bytes10996.length=48 := by core033_kernel_decide
def op10997 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10997 : Bytes := ("    let r00002b55: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10997 : bytes10997=statementBytes 11093 (op10997.map lower) ∧ bytes10997.length=41 := by core033_kernel_decide
def op10998 : List WordIR.Op := [.bxor 442 11093]
def bytes10998 : Bytes := ("    let r00002b56: u32 = r000001ba ^ r00002b55;\n" : String).toByteArray.data.toList
theorem checked10998 : bytes10998=statementBytes 11094 (op10998.map lower) ∧ bytes10998.length=48 := by core033_kernel_decide
def op10999 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10999 : Bytes := ("    let r00002b57: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10999 : bytes10999=statementBytes 11095 (op10999.map lower) ∧ bytes10999.length=41 := by core033_kernel_decide
def op11000 : List WordIR.Op := [.bnot 11095]
def bytes11000 : Bytes := ("    let r00002b58: u32 = !r00002b57;\n" : String).toByteArray.data.toList
theorem checked11000 : bytes11000=statementBytes 11096 (op11000.map lower) ∧ bytes11000.length=37 := by core033_kernel_decide
def op11001 : List WordIR.Op := [.badd 11094 11096]
def bytes11001 : Bytes := ("    let r00002b59: u32 = r00002b56.wrapping_add(r00002b58);\n" : String).toByteArray.data.toList
theorem checked11001 : bytes11001=statementBytes 11097 (op11001.map lower) ∧ bytes11001.length=60 := by core033_kernel_decide
def op11002 : List WordIR.Op := [.bnot 11097]
def bytes11002 : Bytes := ("    let r00002b5a: u32 = !r00002b59;\n" : String).toByteArray.data.toList
theorem checked11002 : bytes11002=statementBytes 11098 (op11002.map lower) ∧ bytes11002.length=37 := by core033_kernel_decide
def op11003 : List WordIR.Op := [.band 11092 11098]
def bytes11003 : Bytes := ("    let r00002b5b: u32 = r00002b54 & r00002b5a;\n" : String).toByteArray.data.toList
theorem checked11003 : bytes11003=statementBytes 11099 (op11003.map lower) ∧ bytes11003.length=48 := by core033_kernel_decide
def op11004 : List WordIR.Op := [.bxor 11087 11099]
def bytes11004 : Bytes := ("    let r00002b5c: u32 = r00002b4f ^ r00002b5b;\n" : String).toByteArray.data.toList
theorem checked11004 : bytes11004=statementBytes 11100 (op11004.map lower) ∧ bytes11004.length=48 := by core033_kernel_decide
def op11005 : List WordIR.Op := [.shr 11100 31]
def bytes11005 : Bytes := ("    let r00002b5d: u32 = r00002b5c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11005 : bytes11005=statementBytes 11101 (op11005.map lower) ∧ bytes11005.length=54 := by core033_kernel_decide
def op11006 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11006 : Bytes := ("    let r00002b5e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11006 : bytes11006=statementBytes 11102 (op11006.map lower) ∧ bytes11006.length=41 := by core033_kernel_decide
def op11007 : List WordIR.Op := [.bxor 11101 11102]
def bytes11007 : Bytes := ("    let r00002b5f: u32 = r00002b5d ^ r00002b5e;\n" : String).toByteArray.data.toList
theorem checked11007 : bytes11007=statementBytes 11103 (op11007.map lower) ∧ bytes11007.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10944,op10945,op10946,op10947,op10948,op10949,op10950,op10951,op10952,op10953,op10954,op10955,op10956,op10957,op10958,op10959,op10960,op10961,op10962,op10963,op10964,op10965,op10966,op10967,op10968,op10969,op10970,op10971,op10972,op10973,op10974,op10975,op10976,op10977,op10978,op10979,op10980,op10981,op10982,op10983,op10984,op10985,op10986,op10987,op10988,op10989,op10990,op10991,op10992,op10993,op10994,op10995,op10996,op10997,op10998,op10999,op11000,op11001,op11002,op11003,op11004,op11005,op11006,op11007]
def chunks : List Bytes := [bytes10944,bytes10945,bytes10946,bytes10947,bytes10948,bytes10949,bytes10950,bytes10951,bytes10952,bytes10953,bytes10954,bytes10955,bytes10956,bytes10957,bytes10958,bytes10959,bytes10960,bytes10961,bytes10962,bytes10963,bytes10964,bytes10965,bytes10966,bytes10967,bytes10968,bytes10969,bytes10970,bytes10971,bytes10972,bytes10973,bytes10974,bytes10975,bytes10976,bytes10977,bytes10978,bytes10979,bytes10980,bytes10981,bytes10982,bytes10983,bytes10984,bytes10985,bytes10986,bytes10987,bytes10988,bytes10989,bytes10990,bytes10991,bytes10992,bytes10993,bytes10994,bytes10995,bytes10996,bytes10997,bytes10998,bytes10999,bytes11000,bytes11001,bytes11002,bytes11003,bytes11004,bytes11005,bytes11006,bytes11007]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11040 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10944.1 (.cons _ _ _ _ _ checked10945.1 (.cons _ _ _ _ _ checked10946.1 (.cons _ _ _ _ _ checked10947.1 (.cons _ _ _ _ _ checked10948.1 (.cons _ _ _ _ _ checked10949.1 (.cons _ _ _ _ _ checked10950.1 (.cons _ _ _ _ _ checked10951.1 (.cons _ _ _ _ _ checked10952.1 (.cons _ _ _ _ _ checked10953.1 (.cons _ _ _ _ _ checked10954.1 (.cons _ _ _ _ _ checked10955.1 (.cons _ _ _ _ _ checked10956.1 (.cons _ _ _ _ _ checked10957.1 (.cons _ _ _ _ _ checked10958.1 (.cons _ _ _ _ _ checked10959.1 (.cons _ _ _ _ _ checked10960.1 (.cons _ _ _ _ _ checked10961.1 (.cons _ _ _ _ _ checked10962.1 (.cons _ _ _ _ _ checked10963.1 (.cons _ _ _ _ _ checked10964.1 (.cons _ _ _ _ _ checked10965.1 (.cons _ _ _ _ _ checked10966.1 (.cons _ _ _ _ _ checked10967.1 (.cons _ _ _ _ _ checked10968.1 (.cons _ _ _ _ _ checked10969.1 (.cons _ _ _ _ _ checked10970.1 (.cons _ _ _ _ _ checked10971.1 (.cons _ _ _ _ _ checked10972.1 (.cons _ _ _ _ _ checked10973.1 (.cons _ _ _ _ _ checked10974.1 (.cons _ _ _ _ _ checked10975.1 (.cons _ _ _ _ _ checked10976.1 (.cons _ _ _ _ _ checked10977.1 (.cons _ _ _ _ _ checked10978.1 (.cons _ _ _ _ _ checked10979.1 (.cons _ _ _ _ _ checked10980.1 (.cons _ _ _ _ _ checked10981.1 (.cons _ _ _ _ _ checked10982.1 (.cons _ _ _ _ _ checked10983.1 (.cons _ _ _ _ _ checked10984.1 (.cons _ _ _ _ _ checked10985.1 (.cons _ _ _ _ _ checked10986.1 (.cons _ _ _ _ _ checked10987.1 (.cons _ _ _ _ _ checked10988.1 (.cons _ _ _ _ _ checked10989.1 (.cons _ _ _ _ _ checked10990.1 (.cons _ _ _ _ _ checked10991.1 (.cons _ _ _ _ _ checked10992.1 (.cons _ _ _ _ _ checked10993.1 (.cons _ _ _ _ _ checked10994.1 (.cons _ _ _ _ _ checked10995.1 (.cons _ _ _ _ _ checked10996.1 (.cons _ _ _ _ _ checked10997.1 (.cons _ _ _ _ _ checked10998.1 (.cons _ _ _ _ _ checked10999.1 (.cons _ _ _ _ _ checked11000.1 (.cons _ _ _ _ _ checked11001.1 (.cons _ _ _ _ _ checked11002.1 (.cons _ _ _ _ _ checked11003.1 (.cons _ _ _ _ _ checked11004.1 (.cons _ _ _ _ _ checked11005.1 (.cons _ _ _ _ _ checked11006.1 (.cons _ _ _ _ _ checked11007.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11040 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2874 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10944.2,checked10945.2,checked10946.2,checked10947.2,checked10948.2,checked10949.2,checked10950.2,checked10951.2,checked10952.2,checked10953.2,checked10954.2,checked10955.2,checked10956.2,checked10957.2,checked10958.2,checked10959.2,checked10960.2,checked10961.2,checked10962.2,checked10963.2,checked10964.2,checked10965.2,checked10966.2,checked10967.2,checked10968.2,checked10969.2,checked10970.2,checked10971.2,checked10972.2,checked10973.2,checked10974.2,checked10975.2,checked10976.2,checked10977.2,checked10978.2,checked10979.2,checked10980.2,checked10981.2,checked10982.2,checked10983.2,checked10984.2,checked10985.2,checked10986.2,checked10987.2,checked10988.2,checked10989.2,checked10990.2,checked10991.2,checked10992.2,checked10993.2,checked10994.2,checked10995.2,checked10996.2,checked10997.2,checked10998.2,checked10999.2,checked11000.2,checked11001.2,checked11002.2,checked11003.2,checked11004.2,checked11005.2,checked11006.2,checked11007.2]
  decide
end ArtifactPairedPathRoundGroup171
