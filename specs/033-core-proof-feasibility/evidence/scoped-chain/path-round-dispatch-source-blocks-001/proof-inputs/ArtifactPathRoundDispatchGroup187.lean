import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup187
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11968 : List WordIR.Op := [.bxor 11998 12010]
def bytes11968 : Bytes := ("    let r00002eeb: u32 = r00002ede ^ r00002eea;\n" : String).toByteArray.data.toList
theorem checked11968 : bytes11968=statementBytes 12011 (op11968.map lower) ∧ bytes11968.length=48 := by core033_kernel_decide
def op11969 : List WordIR.Op := [.shr 12011 31]
def bytes11969 : Bytes := ("    let r00002eec: u32 = r00002eeb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11969 : bytes11969=statementBytes 12012 (op11969.map lower) ∧ bytes11969.length=54 := by core033_kernel_decide
def op11970 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11970 : Bytes := ("    let r00002eed: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11970 : bytes11970=statementBytes 12013 (op11970.map lower) ∧ bytes11970.length=41 := by core033_kernel_decide
def op11971 : List WordIR.Op := [.bxor 12012 12013]
def bytes11971 : Bytes := ("    let r00002eee: u32 = r00002eec ^ r00002eed;\n" : String).toByteArray.data.toList
theorem checked11971 : bytes11971=statementBytes 12014 (op11971.map lower) ∧ bytes11971.length=48 := by core033_kernel_decide
def op11972 : List WordIR.Op := [.bnot 12014]
def bytes11972 : Bytes := ("    let r00002eef: u32 = !r00002eee;\n" : String).toByteArray.data.toList
theorem checked11972 : bytes11972=statementBytes 12015 (op11972.map lower) ∧ bytes11972.length=37 := by core033_kernel_decide
def op11973 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11973 : Bytes := ("    let r00002ef0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11973 : bytes11973=statementBytes 12016 (op11973.map lower) ∧ bytes11973.length=41 := by core033_kernel_decide
def op11974 : List WordIR.Op := [.badd 12015 12016]
def bytes11974 : Bytes := ("    let r00002ef1: u32 = r00002eef.wrapping_add(r00002ef0);\n" : String).toByteArray.data.toList
theorem checked11974 : bytes11974=statementBytes 12017 (op11974.map lower) ∧ bytes11974.length=60 := by core033_kernel_decide
def op11975 : List WordIR.Op := [.band 12017 9791]
def bytes11975 : Bytes := ("    let r00002ef2: u32 = r00002ef1 & r0000263f;\n" : String).toByteArray.data.toList
theorem checked11975 : bytes11975=statementBytes 12018 (op11975.map lower) ∧ bytes11975.length=48 := by core033_kernel_decide
def op11976 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11976 : Bytes := ("    let r00002ef3: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11976 : bytes11976=statementBytes 12019 (op11976.map lower) ∧ bytes11976.length=41 := by core033_kernel_decide
def op11977 : List WordIR.Op := [.bxor 0 12019]
def bytes11977 : Bytes := ("    let r00002ef4: u32 = r00000000 ^ r00002ef3;\n" : String).toByteArray.data.toList
theorem checked11977 : bytes11977=statementBytes 12020 (op11977.map lower) ∧ bytes11977.length=48 := by core033_kernel_decide
def op11978 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11978 : Bytes := ("    let r00002ef5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11978 : bytes11978=statementBytes 12021 (op11978.map lower) ∧ bytes11978.length=41 := by core033_kernel_decide
def op11979 : List WordIR.Op := [.bnot 12021]
def bytes11979 : Bytes := ("    let r00002ef6: u32 = !r00002ef5;\n" : String).toByteArray.data.toList
theorem checked11979 : bytes11979=statementBytes 12022 (op11979.map lower) ∧ bytes11979.length=37 := by core033_kernel_decide
def op11980 : List WordIR.Op := [.band 12020 12022]
def bytes11980 : Bytes := ("    let r00002ef7: u32 = r00002ef4 & r00002ef6;\n" : String).toByteArray.data.toList
theorem checked11980 : bytes11980=statementBytes 12023 (op11980.map lower) ∧ bytes11980.length=48 := by core033_kernel_decide
def op11981 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11981 : Bytes := ("    let r00002ef8: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11981 : bytes11981=statementBytes 12024 (op11981.map lower) ∧ bytes11981.length=41 := by core033_kernel_decide
def op11982 : List WordIR.Op := [.bxor 0 12024]
def bytes11982 : Bytes := ("    let r00002ef9: u32 = r00000000 ^ r00002ef8;\n" : String).toByteArray.data.toList
theorem checked11982 : bytes11982=statementBytes 12025 (op11982.map lower) ∧ bytes11982.length=48 := by core033_kernel_decide
def op11983 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11983 : Bytes := ("    let r00002efa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11983 : bytes11983=statementBytes 12026 (op11983.map lower) ∧ bytes11983.length=41 := by core033_kernel_decide
def op11984 : List WordIR.Op := [.bnot 12026]
def bytes11984 : Bytes := ("    let r00002efb: u32 = !r00002efa;\n" : String).toByteArray.data.toList
theorem checked11984 : bytes11984=statementBytes 12027 (op11984.map lower) ∧ bytes11984.length=37 := by core033_kernel_decide
def op11985 : List WordIR.Op := [.bxor 12025 12027]
def bytes11985 : Bytes := ("    let r00002efc: u32 = r00002ef9 ^ r00002efb;\n" : String).toByteArray.data.toList
theorem checked11985 : bytes11985=statementBytes 12028 (op11985.map lower) ∧ bytes11985.length=48 := by core033_kernel_decide
def op11986 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11986 : Bytes := ("    let r00002efd: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11986 : bytes11986=statementBytes 12029 (op11986.map lower) ∧ bytes11986.length=41 := by core033_kernel_decide
def op11987 : List WordIR.Op := [.bxor 0 12029]
def bytes11987 : Bytes := ("    let r00002efe: u32 = r00000000 ^ r00002efd;\n" : String).toByteArray.data.toList
theorem checked11987 : bytes11987=statementBytes 12030 (op11987.map lower) ∧ bytes11987.length=48 := by core033_kernel_decide
def op11988 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11988 : Bytes := ("    let r00002eff: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11988 : bytes11988=statementBytes 12031 (op11988.map lower) ∧ bytes11988.length=41 := by core033_kernel_decide
def op11989 : List WordIR.Op := [.bnot 12031]
def bytes11989 : Bytes := ("    let r00002f00: u32 = !r00002eff;\n" : String).toByteArray.data.toList
theorem checked11989 : bytes11989=statementBytes 12032 (op11989.map lower) ∧ bytes11989.length=37 := by core033_kernel_decide
def op11990 : List WordIR.Op := [.badd 12030 12032]
def bytes11990 : Bytes := ("    let r00002f01: u32 = r00002efe.wrapping_add(r00002f00);\n" : String).toByteArray.data.toList
theorem checked11990 : bytes11990=statementBytes 12033 (op11990.map lower) ∧ bytes11990.length=60 := by core033_kernel_decide
def op11991 : List WordIR.Op := [.bnot 12033]
def bytes11991 : Bytes := ("    let r00002f02: u32 = !r00002f01;\n" : String).toByteArray.data.toList
theorem checked11991 : bytes11991=statementBytes 12034 (op11991.map lower) ∧ bytes11991.length=37 := by core033_kernel_decide
def op11992 : List WordIR.Op := [.band 12028 12034]
def bytes11992 : Bytes := ("    let r00002f03: u32 = r00002efc & r00002f02;\n" : String).toByteArray.data.toList
theorem checked11992 : bytes11992=statementBytes 12035 (op11992.map lower) ∧ bytes11992.length=48 := by core033_kernel_decide
def op11993 : List WordIR.Op := [.bxor 12023 12035]
def bytes11993 : Bytes := ("    let r00002f04: u32 = r00002ef7 ^ r00002f03;\n" : String).toByteArray.data.toList
theorem checked11993 : bytes11993=statementBytes 12036 (op11993.map lower) ∧ bytes11993.length=48 := by core033_kernel_decide
def op11994 : List WordIR.Op := [.shr 12036 31]
def bytes11994 : Bytes := ("    let r00002f05: u32 = r00002f04 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11994 : bytes11994=statementBytes 12037 (op11994.map lower) ∧ bytes11994.length=54 := by core033_kernel_decide
def op11995 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11995 : Bytes := ("    let r00002f06: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11995 : bytes11995=statementBytes 12038 (op11995.map lower) ∧ bytes11995.length=41 := by core033_kernel_decide
def op11996 : List WordIR.Op := [.bxor 12037 12038]
def bytes11996 : Bytes := ("    let r00002f07: u32 = r00002f05 ^ r00002f06;\n" : String).toByteArray.data.toList
theorem checked11996 : bytes11996=statementBytes 12039 (op11996.map lower) ∧ bytes11996.length=48 := by core033_kernel_decide
def op11997 : List WordIR.Op := [.bnot 12039]
def bytes11997 : Bytes := ("    let r00002f08: u32 = !r00002f07;\n" : String).toByteArray.data.toList
theorem checked11997 : bytes11997=statementBytes 12040 (op11997.map lower) ∧ bytes11997.length=37 := by core033_kernel_decide
def op11998 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11998 : Bytes := ("    let r00002f09: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11998 : bytes11998=statementBytes 12041 (op11998.map lower) ∧ bytes11998.length=41 := by core033_kernel_decide
def op11999 : List WordIR.Op := [.badd 12040 12041]
def bytes11999 : Bytes := ("    let r00002f0a: u32 = r00002f08.wrapping_add(r00002f09);\n" : String).toByteArray.data.toList
theorem checked11999 : bytes11999=statementBytes 12042 (op11999.map lower) ∧ bytes11999.length=60 := by core033_kernel_decide
def op12000 : List WordIR.Op := [.bnot 12042]
def bytes12000 : Bytes := ("    let r00002f0b: u32 = !r00002f0a;\n" : String).toByteArray.data.toList
theorem checked12000 : bytes12000=statementBytes 12043 (op12000.map lower) ∧ bytes12000.length=37 := by core033_kernel_decide
def op12001 : List WordIR.Op := [.band 12043 470]
def bytes12001 : Bytes := ("    let r00002f0c: u32 = r00002f0b & r000001d6;\n" : String).toByteArray.data.toList
theorem checked12001 : bytes12001=statementBytes 12044 (op12001.map lower) ∧ bytes12001.length=48 := by core033_kernel_decide
def op12002 : List WordIR.Op := [.bxor 12018 12044]
def bytes12002 : Bytes := ("    let r00002f0d: u32 = r00002ef2 ^ r00002f0c;\n" : String).toByteArray.data.toList
theorem checked12002 : bytes12002=statementBytes 12045 (op12002.map lower) ∧ bytes12002.length=48 := by core033_kernel_decide
def op12003 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12003 : Bytes := ("    let r00002f0e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12003 : bytes12003=statementBytes 12046 (op12003.map lower) ∧ bytes12003.length=41 := by core033_kernel_decide
def op12004 : List WordIR.Op := [.bxor 0 12046]
def bytes12004 : Bytes := ("    let r00002f0f: u32 = r00000000 ^ r00002f0e;\n" : String).toByteArray.data.toList
theorem checked12004 : bytes12004=statementBytes 12047 (op12004.map lower) ∧ bytes12004.length=48 := by core033_kernel_decide
def op12005 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12005 : Bytes := ("    let r00002f10: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12005 : bytes12005=statementBytes 12048 (op12005.map lower) ∧ bytes12005.length=41 := by core033_kernel_decide
def op12006 : List WordIR.Op := [.bnot 12048]
def bytes12006 : Bytes := ("    let r00002f11: u32 = !r00002f10;\n" : String).toByteArray.data.toList
theorem checked12006 : bytes12006=statementBytes 12049 (op12006.map lower) ∧ bytes12006.length=37 := by core033_kernel_decide
def op12007 : List WordIR.Op := [.band 12047 12049]
def bytes12007 : Bytes := ("    let r00002f12: u32 = r00002f0f & r00002f11;\n" : String).toByteArray.data.toList
theorem checked12007 : bytes12007=statementBytes 12050 (op12007.map lower) ∧ bytes12007.length=48 := by core033_kernel_decide
def op12008 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12008 : Bytes := ("    let r00002f13: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12008 : bytes12008=statementBytes 12051 (op12008.map lower) ∧ bytes12008.length=41 := by core033_kernel_decide
def op12009 : List WordIR.Op := [.bxor 0 12051]
def bytes12009 : Bytes := ("    let r00002f14: u32 = r00000000 ^ r00002f13;\n" : String).toByteArray.data.toList
theorem checked12009 : bytes12009=statementBytes 12052 (op12009.map lower) ∧ bytes12009.length=48 := by core033_kernel_decide
def op12010 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12010 : Bytes := ("    let r00002f15: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12010 : bytes12010=statementBytes 12053 (op12010.map lower) ∧ bytes12010.length=41 := by core033_kernel_decide
def op12011 : List WordIR.Op := [.bnot 12053]
def bytes12011 : Bytes := ("    let r00002f16: u32 = !r00002f15;\n" : String).toByteArray.data.toList
theorem checked12011 : bytes12011=statementBytes 12054 (op12011.map lower) ∧ bytes12011.length=37 := by core033_kernel_decide
def op12012 : List WordIR.Op := [.bxor 12052 12054]
def bytes12012 : Bytes := ("    let r00002f17: u32 = r00002f14 ^ r00002f16;\n" : String).toByteArray.data.toList
theorem checked12012 : bytes12012=statementBytes 12055 (op12012.map lower) ∧ bytes12012.length=48 := by core033_kernel_decide
def op12013 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12013 : Bytes := ("    let r00002f18: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12013 : bytes12013=statementBytes 12056 (op12013.map lower) ∧ bytes12013.length=41 := by core033_kernel_decide
def op12014 : List WordIR.Op := [.bxor 0 12056]
def bytes12014 : Bytes := ("    let r00002f19: u32 = r00000000 ^ r00002f18;\n" : String).toByteArray.data.toList
theorem checked12014 : bytes12014=statementBytes 12057 (op12014.map lower) ∧ bytes12014.length=48 := by core033_kernel_decide
def op12015 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12015 : Bytes := ("    let r00002f1a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12015 : bytes12015=statementBytes 12058 (op12015.map lower) ∧ bytes12015.length=41 := by core033_kernel_decide
def op12016 : List WordIR.Op := [.bnot 12058]
def bytes12016 : Bytes := ("    let r00002f1b: u32 = !r00002f1a;\n" : String).toByteArray.data.toList
theorem checked12016 : bytes12016=statementBytes 12059 (op12016.map lower) ∧ bytes12016.length=37 := by core033_kernel_decide
def op12017 : List WordIR.Op := [.badd 12057 12059]
def bytes12017 : Bytes := ("    let r00002f1c: u32 = r00002f19.wrapping_add(r00002f1b);\n" : String).toByteArray.data.toList
theorem checked12017 : bytes12017=statementBytes 12060 (op12017.map lower) ∧ bytes12017.length=60 := by core033_kernel_decide
def op12018 : List WordIR.Op := [.bnot 12060]
def bytes12018 : Bytes := ("    let r00002f1d: u32 = !r00002f1c;\n" : String).toByteArray.data.toList
theorem checked12018 : bytes12018=statementBytes 12061 (op12018.map lower) ∧ bytes12018.length=37 := by core033_kernel_decide
def op12019 : List WordIR.Op := [.band 12055 12061]
def bytes12019 : Bytes := ("    let r00002f1e: u32 = r00002f17 & r00002f1d;\n" : String).toByteArray.data.toList
theorem checked12019 : bytes12019=statementBytes 12062 (op12019.map lower) ∧ bytes12019.length=48 := by core033_kernel_decide
def op12020 : List WordIR.Op := [.bxor 12050 12062]
def bytes12020 : Bytes := ("    let r00002f1f: u32 = r00002f12 ^ r00002f1e;\n" : String).toByteArray.data.toList
theorem checked12020 : bytes12020=statementBytes 12063 (op12020.map lower) ∧ bytes12020.length=48 := by core033_kernel_decide
def op12021 : List WordIR.Op := [.shr 12063 31]
def bytes12021 : Bytes := ("    let r00002f20: u32 = r00002f1f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12021 : bytes12021=statementBytes 12064 (op12021.map lower) ∧ bytes12021.length=54 := by core033_kernel_decide
def op12022 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12022 : Bytes := ("    let r00002f21: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12022 : bytes12022=statementBytes 12065 (op12022.map lower) ∧ bytes12022.length=41 := by core033_kernel_decide
def op12023 : List WordIR.Op := [.bxor 12064 12065]
def bytes12023 : Bytes := ("    let r00002f22: u32 = r00002f20 ^ r00002f21;\n" : String).toByteArray.data.toList
theorem checked12023 : bytes12023=statementBytes 12066 (op12023.map lower) ∧ bytes12023.length=48 := by core033_kernel_decide
def op12024 : List WordIR.Op := [.bnot 12066]
def bytes12024 : Bytes := ("    let r00002f23: u32 = !r00002f22;\n" : String).toByteArray.data.toList
theorem checked12024 : bytes12024=statementBytes 12067 (op12024.map lower) ∧ bytes12024.length=37 := by core033_kernel_decide
def op12025 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12025 : Bytes := ("    let r00002f24: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12025 : bytes12025=statementBytes 12068 (op12025.map lower) ∧ bytes12025.length=41 := by core033_kernel_decide
def op12026 : List WordIR.Op := [.badd 12067 12068]
def bytes12026 : Bytes := ("    let r00002f25: u32 = r00002f23.wrapping_add(r00002f24);\n" : String).toByteArray.data.toList
theorem checked12026 : bytes12026=statementBytes 12069 (op12026.map lower) ∧ bytes12026.length=60 := by core033_kernel_decide
def op12027 : List WordIR.Op := [.band 12069 9802]
def bytes12027 : Bytes := ("    let r00002f26: u32 = r00002f25 & r0000264a;\n" : String).toByteArray.data.toList
theorem checked12027 : bytes12027=statementBytes 12070 (op12027.map lower) ∧ bytes12027.length=48 := by core033_kernel_decide
def op12028 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12028 : Bytes := ("    let r00002f27: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12028 : bytes12028=statementBytes 12071 (op12028.map lower) ∧ bytes12028.length=41 := by core033_kernel_decide
def op12029 : List WordIR.Op := [.bxor 0 12071]
def bytes12029 : Bytes := ("    let r00002f28: u32 = r00000000 ^ r00002f27;\n" : String).toByteArray.data.toList
theorem checked12029 : bytes12029=statementBytes 12072 (op12029.map lower) ∧ bytes12029.length=48 := by core033_kernel_decide
def op12030 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12030 : Bytes := ("    let r00002f29: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12030 : bytes12030=statementBytes 12073 (op12030.map lower) ∧ bytes12030.length=41 := by core033_kernel_decide
def op12031 : List WordIR.Op := [.bnot 12073]
def bytes12031 : Bytes := ("    let r00002f2a: u32 = !r00002f29;\n" : String).toByteArray.data.toList
theorem checked12031 : bytes12031=statementBytes 12074 (op12031.map lower) ∧ bytes12031.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11968,op11969,op11970,op11971,op11972,op11973,op11974,op11975,op11976,op11977,op11978,op11979,op11980,op11981,op11982,op11983,op11984,op11985,op11986,op11987,op11988,op11989,op11990,op11991,op11992,op11993,op11994,op11995,op11996,op11997,op11998,op11999,op12000,op12001,op12002,op12003,op12004,op12005,op12006,op12007,op12008,op12009,op12010,op12011,op12012,op12013,op12014,op12015,op12016,op12017,op12018,op12019,op12020,op12021,op12022,op12023,op12024,op12025,op12026,op12027,op12028,op12029,op12030,op12031]
def chunks : List Bytes := [bytes11968,bytes11969,bytes11970,bytes11971,bytes11972,bytes11973,bytes11974,bytes11975,bytes11976,bytes11977,bytes11978,bytes11979,bytes11980,bytes11981,bytes11982,bytes11983,bytes11984,bytes11985,bytes11986,bytes11987,bytes11988,bytes11989,bytes11990,bytes11991,bytes11992,bytes11993,bytes11994,bytes11995,bytes11996,bytes11997,bytes11998,bytes11999,bytes12000,bytes12001,bytes12002,bytes12003,bytes12004,bytes12005,bytes12006,bytes12007,bytes12008,bytes12009,bytes12010,bytes12011,bytes12012,bytes12013,bytes12014,bytes12015,bytes12016,bytes12017,bytes12018,bytes12019,bytes12020,bytes12021,bytes12022,bytes12023,bytes12024,bytes12025,bytes12026,bytes12027,bytes12028,bytes12029,bytes12030,bytes12031]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12011 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11968.1 (.cons _ _ _ _ _ checked11969.1 (.cons _ _ _ _ _ checked11970.1 (.cons _ _ _ _ _ checked11971.1 (.cons _ _ _ _ _ checked11972.1 (.cons _ _ _ _ _ checked11973.1 (.cons _ _ _ _ _ checked11974.1 (.cons _ _ _ _ _ checked11975.1 (.cons _ _ _ _ _ checked11976.1 (.cons _ _ _ _ _ checked11977.1 (.cons _ _ _ _ _ checked11978.1 (.cons _ _ _ _ _ checked11979.1 (.cons _ _ _ _ _ checked11980.1 (.cons _ _ _ _ _ checked11981.1 (.cons _ _ _ _ _ checked11982.1 (.cons _ _ _ _ _ checked11983.1 (.cons _ _ _ _ _ checked11984.1 (.cons _ _ _ _ _ checked11985.1 (.cons _ _ _ _ _ checked11986.1 (.cons _ _ _ _ _ checked11987.1 (.cons _ _ _ _ _ checked11988.1 (.cons _ _ _ _ _ checked11989.1 (.cons _ _ _ _ _ checked11990.1 (.cons _ _ _ _ _ checked11991.1 (.cons _ _ _ _ _ checked11992.1 (.cons _ _ _ _ _ checked11993.1 (.cons _ _ _ _ _ checked11994.1 (.cons _ _ _ _ _ checked11995.1 (.cons _ _ _ _ _ checked11996.1 (.cons _ _ _ _ _ checked11997.1 (.cons _ _ _ _ _ checked11998.1 (.cons _ _ _ _ _ checked11999.1 (.cons _ _ _ _ _ checked12000.1 (.cons _ _ _ _ _ checked12001.1 (.cons _ _ _ _ _ checked12002.1 (.cons _ _ _ _ _ checked12003.1 (.cons _ _ _ _ _ checked12004.1 (.cons _ _ _ _ _ checked12005.1 (.cons _ _ _ _ _ checked12006.1 (.cons _ _ _ _ _ checked12007.1 (.cons _ _ _ _ _ checked12008.1 (.cons _ _ _ _ _ checked12009.1 (.cons _ _ _ _ _ checked12010.1 (.cons _ _ _ _ _ checked12011.1 (.cons _ _ _ _ _ checked12012.1 (.cons _ _ _ _ _ checked12013.1 (.cons _ _ _ _ _ checked12014.1 (.cons _ _ _ _ _ checked12015.1 (.cons _ _ _ _ _ checked12016.1 (.cons _ _ _ _ _ checked12017.1 (.cons _ _ _ _ _ checked12018.1 (.cons _ _ _ _ _ checked12019.1 (.cons _ _ _ _ _ checked12020.1 (.cons _ _ _ _ _ checked12021.1 (.cons _ _ _ _ _ checked12022.1 (.cons _ _ _ _ _ checked12023.1 (.cons _ _ _ _ _ checked12024.1 (.cons _ _ _ _ _ checked12025.1 (.cons _ _ _ _ _ checked12026.1 (.cons _ _ _ _ _ checked12027.1 (.cons _ _ _ _ _ checked12028.1 (.cons _ _ _ _ _ checked12029.1 (.cons _ _ _ _ _ checked12030.1 (.cons _ _ _ _ _ checked12031.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12011 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11968.2,checked11969.2,checked11970.2,checked11971.2,checked11972.2,checked11973.2,checked11974.2,checked11975.2,checked11976.2,checked11977.2,checked11978.2,checked11979.2,checked11980.2,checked11981.2,checked11982.2,checked11983.2,checked11984.2,checked11985.2,checked11986.2,checked11987.2,checked11988.2,checked11989.2,checked11990.2,checked11991.2,checked11992.2,checked11993.2,checked11994.2,checked11995.2,checked11996.2,checked11997.2,checked11998.2,checked11999.2,checked12000.2,checked12001.2,checked12002.2,checked12003.2,checked12004.2,checked12005.2,checked12006.2,checked12007.2,checked12008.2,checked12009.2,checked12010.2,checked12011.2,checked12012.2,checked12013.2,checked12014.2,checked12015.2,checked12016.2,checked12017.2,checked12018.2,checked12019.2,checked12020.2,checked12021.2,checked12022.2,checked12023.2,checked12024.2,checked12025.2,checked12026.2,checked12027.2,checked12028.2,checked12029.2,checked12030.2,checked12031.2]
  decide
end ArtifactPathRoundDispatchGroup187
