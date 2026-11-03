import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup187
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11968 : List WordIR.Op := [.bnot 12085]
def bytes11968 : Bytes := ("    let r00002f36: u32 = !r00002f35;\n" : String).toByteArray.data.toList
theorem checked11968 : bytes11968=statementBytes 12086 (op11968.map lower) ∧ bytes11968.length=37 := by core033_kernel_decide
def op11969 : List WordIR.Op := [.bxor 12084 12086]
def bytes11969 : Bytes := ("    let r00002f37: u32 = r00002f34 ^ r00002f36;\n" : String).toByteArray.data.toList
theorem checked11969 : bytes11969=statementBytes 12087 (op11969.map lower) ∧ bytes11969.length=48 := by core033_kernel_decide
def op11970 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11970 : Bytes := ("    let r00002f38: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11970 : bytes11970=statementBytes 12088 (op11970.map lower) ∧ bytes11970.length=41 := by core033_kernel_decide
def op11971 : List WordIR.Op := [.bxor 693 12088]
def bytes11971 : Bytes := ("    let r00002f39: u32 = r000002b5 ^ r00002f38;\n" : String).toByteArray.data.toList
theorem checked11971 : bytes11971=statementBytes 12089 (op11971.map lower) ∧ bytes11971.length=48 := by core033_kernel_decide
def op11972 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11972 : Bytes := ("    let r00002f3a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11972 : bytes11972=statementBytes 12090 (op11972.map lower) ∧ bytes11972.length=41 := by core033_kernel_decide
def op11973 : List WordIR.Op := [.bnot 12090]
def bytes11973 : Bytes := ("    let r00002f3b: u32 = !r00002f3a;\n" : String).toByteArray.data.toList
theorem checked11973 : bytes11973=statementBytes 12091 (op11973.map lower) ∧ bytes11973.length=37 := by core033_kernel_decide
def op11974 : List WordIR.Op := [.badd 12089 12091]
def bytes11974 : Bytes := ("    let r00002f3c: u32 = r00002f39.wrapping_add(r00002f3b);\n" : String).toByteArray.data.toList
theorem checked11974 : bytes11974=statementBytes 12092 (op11974.map lower) ∧ bytes11974.length=60 := by core033_kernel_decide
def op11975 : List WordIR.Op := [.bnot 12092]
def bytes11975 : Bytes := ("    let r00002f3d: u32 = !r00002f3c;\n" : String).toByteArray.data.toList
theorem checked11975 : bytes11975=statementBytes 12093 (op11975.map lower) ∧ bytes11975.length=37 := by core033_kernel_decide
def op11976 : List WordIR.Op := [.band 12087 12093]
def bytes11976 : Bytes := ("    let r00002f3e: u32 = r00002f37 & r00002f3d;\n" : String).toByteArray.data.toList
theorem checked11976 : bytes11976=statementBytes 12094 (op11976.map lower) ∧ bytes11976.length=48 := by core033_kernel_decide
def op11977 : List WordIR.Op := [.bxor 12082 12094]
def bytes11977 : Bytes := ("    let r00002f3f: u32 = r00002f32 ^ r00002f3e;\n" : String).toByteArray.data.toList
theorem checked11977 : bytes11977=statementBytes 12095 (op11977.map lower) ∧ bytes11977.length=48 := by core033_kernel_decide
def op11978 : List WordIR.Op := [.shr 12095 31]
def bytes11978 : Bytes := ("    let r00002f40: u32 = r00002f3f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11978 : bytes11978=statementBytes 12096 (op11978.map lower) ∧ bytes11978.length=54 := by core033_kernel_decide
def op11979 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11979 : Bytes := ("    let r00002f41: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11979 : bytes11979=statementBytes 12097 (op11979.map lower) ∧ bytes11979.length=41 := by core033_kernel_decide
def op11980 : List WordIR.Op := [.bxor 12096 12097]
def bytes11980 : Bytes := ("    let r00002f42: u32 = r00002f40 ^ r00002f41;\n" : String).toByteArray.data.toList
theorem checked11980 : bytes11980=statementBytes 12098 (op11980.map lower) ∧ bytes11980.length=48 := by core033_kernel_decide
def op11981 : List WordIR.Op := [.bnot 12098]
def bytes11981 : Bytes := ("    let r00002f43: u32 = !r00002f42;\n" : String).toByteArray.data.toList
theorem checked11981 : bytes11981=statementBytes 12099 (op11981.map lower) ∧ bytes11981.length=37 := by core033_kernel_decide
def op11982 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11982 : Bytes := ("    let r00002f44: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11982 : bytes11982=statementBytes 12100 (op11982.map lower) ∧ bytes11982.length=41 := by core033_kernel_decide
def op11983 : List WordIR.Op := [.badd 12099 12100]
def bytes11983 : Bytes := ("    let r00002f45: u32 = r00002f43.wrapping_add(r00002f44);\n" : String).toByteArray.data.toList
theorem checked11983 : bytes11983=statementBytes 12101 (op11983.map lower) ∧ bytes11983.length=60 := by core033_kernel_decide
def op11984 : List WordIR.Op := [.bnot 12101]
def bytes11984 : Bytes := ("    let r00002f46: u32 = !r00002f45;\n" : String).toByteArray.data.toList
theorem checked11984 : bytes11984=statementBytes 12102 (op11984.map lower) ∧ bytes11984.length=37 := by core033_kernel_decide
def op11985 : List WordIR.Op := [.band 12102 1431]
def bytes11985 : Bytes := ("    let r00002f47: u32 = r00002f46 & r00000597;\n" : String).toByteArray.data.toList
theorem checked11985 : bytes11985=statementBytes 12103 (op11985.map lower) ∧ bytes11985.length=48 := by core033_kernel_decide
def op11986 : List WordIR.Op := [.bxor 12077 12103]
def bytes11986 : Bytes := ("    let r00002f48: u32 = r00002f2d ^ r00002f47;\n" : String).toByteArray.data.toList
theorem checked11986 : bytes11986=statementBytes 12104 (op11986.map lower) ∧ bytes11986.length=48 := by core033_kernel_decide
def op11987 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11987 : Bytes := ("    let r00002f49: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11987 : bytes11987=statementBytes 12105 (op11987.map lower) ∧ bytes11987.length=41 := by core033_kernel_decide
def op11988 : List WordIR.Op := [.bxor 693 12105]
def bytes11988 : Bytes := ("    let r00002f4a: u32 = r000002b5 ^ r00002f49;\n" : String).toByteArray.data.toList
theorem checked11988 : bytes11988=statementBytes 12106 (op11988.map lower) ∧ bytes11988.length=48 := by core033_kernel_decide
def op11989 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11989 : Bytes := ("    let r00002f4b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11989 : bytes11989=statementBytes 12107 (op11989.map lower) ∧ bytes11989.length=41 := by core033_kernel_decide
def op11990 : List WordIR.Op := [.bnot 12107]
def bytes11990 : Bytes := ("    let r00002f4c: u32 = !r00002f4b;\n" : String).toByteArray.data.toList
theorem checked11990 : bytes11990=statementBytes 12108 (op11990.map lower) ∧ bytes11990.length=37 := by core033_kernel_decide
def op11991 : List WordIR.Op := [.band 12106 12108]
def bytes11991 : Bytes := ("    let r00002f4d: u32 = r00002f4a & r00002f4c;\n" : String).toByteArray.data.toList
theorem checked11991 : bytes11991=statementBytes 12109 (op11991.map lower) ∧ bytes11991.length=48 := by core033_kernel_decide
def op11992 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11992 : Bytes := ("    let r00002f4e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11992 : bytes11992=statementBytes 12110 (op11992.map lower) ∧ bytes11992.length=41 := by core033_kernel_decide
def op11993 : List WordIR.Op := [.bxor 693 12110]
def bytes11993 : Bytes := ("    let r00002f4f: u32 = r000002b5 ^ r00002f4e;\n" : String).toByteArray.data.toList
theorem checked11993 : bytes11993=statementBytes 12111 (op11993.map lower) ∧ bytes11993.length=48 := by core033_kernel_decide
def op11994 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11994 : Bytes := ("    let r00002f50: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11994 : bytes11994=statementBytes 12112 (op11994.map lower) ∧ bytes11994.length=41 := by core033_kernel_decide
def op11995 : List WordIR.Op := [.bnot 12112]
def bytes11995 : Bytes := ("    let r00002f51: u32 = !r00002f50;\n" : String).toByteArray.data.toList
theorem checked11995 : bytes11995=statementBytes 12113 (op11995.map lower) ∧ bytes11995.length=37 := by core033_kernel_decide
def op11996 : List WordIR.Op := [.bxor 12111 12113]
def bytes11996 : Bytes := ("    let r00002f52: u32 = r00002f4f ^ r00002f51;\n" : String).toByteArray.data.toList
theorem checked11996 : bytes11996=statementBytes 12114 (op11996.map lower) ∧ bytes11996.length=48 := by core033_kernel_decide
def op11997 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11997 : Bytes := ("    let r00002f53: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11997 : bytes11997=statementBytes 12115 (op11997.map lower) ∧ bytes11997.length=41 := by core033_kernel_decide
def op11998 : List WordIR.Op := [.bxor 693 12115]
def bytes11998 : Bytes := ("    let r00002f54: u32 = r000002b5 ^ r00002f53;\n" : String).toByteArray.data.toList
theorem checked11998 : bytes11998=statementBytes 12116 (op11998.map lower) ∧ bytes11998.length=48 := by core033_kernel_decide
def op11999 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11999 : Bytes := ("    let r00002f55: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11999 : bytes11999=statementBytes 12117 (op11999.map lower) ∧ bytes11999.length=41 := by core033_kernel_decide
def op12000 : List WordIR.Op := [.bnot 12117]
def bytes12000 : Bytes := ("    let r00002f56: u32 = !r00002f55;\n" : String).toByteArray.data.toList
theorem checked12000 : bytes12000=statementBytes 12118 (op12000.map lower) ∧ bytes12000.length=37 := by core033_kernel_decide
def op12001 : List WordIR.Op := [.badd 12116 12118]
def bytes12001 : Bytes := ("    let r00002f57: u32 = r00002f54.wrapping_add(r00002f56);\n" : String).toByteArray.data.toList
theorem checked12001 : bytes12001=statementBytes 12119 (op12001.map lower) ∧ bytes12001.length=60 := by core033_kernel_decide
def op12002 : List WordIR.Op := [.bnot 12119]
def bytes12002 : Bytes := ("    let r00002f58: u32 = !r00002f57;\n" : String).toByteArray.data.toList
theorem checked12002 : bytes12002=statementBytes 12120 (op12002.map lower) ∧ bytes12002.length=37 := by core033_kernel_decide
def op12003 : List WordIR.Op := [.band 12114 12120]
def bytes12003 : Bytes := ("    let r00002f59: u32 = r00002f52 & r00002f58;\n" : String).toByteArray.data.toList
theorem checked12003 : bytes12003=statementBytes 12121 (op12003.map lower) ∧ bytes12003.length=48 := by core033_kernel_decide
def op12004 : List WordIR.Op := [.bxor 12109 12121]
def bytes12004 : Bytes := ("    let r00002f5a: u32 = r00002f4d ^ r00002f59;\n" : String).toByteArray.data.toList
theorem checked12004 : bytes12004=statementBytes 12122 (op12004.map lower) ∧ bytes12004.length=48 := by core033_kernel_decide
def op12005 : List WordIR.Op := [.shr 12122 31]
def bytes12005 : Bytes := ("    let r00002f5b: u32 = r00002f5a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12005 : bytes12005=statementBytes 12123 (op12005.map lower) ∧ bytes12005.length=54 := by core033_kernel_decide
def op12006 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12006 : Bytes := ("    let r00002f5c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12006 : bytes12006=statementBytes 12124 (op12006.map lower) ∧ bytes12006.length=41 := by core033_kernel_decide
def op12007 : List WordIR.Op := [.bxor 12123 12124]
def bytes12007 : Bytes := ("    let r00002f5d: u32 = r00002f5b ^ r00002f5c;\n" : String).toByteArray.data.toList
theorem checked12007 : bytes12007=statementBytes 12125 (op12007.map lower) ∧ bytes12007.length=48 := by core033_kernel_decide
def op12008 : List WordIR.Op := [.bnot 12125]
def bytes12008 : Bytes := ("    let r00002f5e: u32 = !r00002f5d;\n" : String).toByteArray.data.toList
theorem checked12008 : bytes12008=statementBytes 12126 (op12008.map lower) ∧ bytes12008.length=37 := by core033_kernel_decide
def op12009 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12009 : Bytes := ("    let r00002f5f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12009 : bytes12009=statementBytes 12127 (op12009.map lower) ∧ bytes12009.length=41 := by core033_kernel_decide
def op12010 : List WordIR.Op := [.badd 12126 12127]
def bytes12010 : Bytes := ("    let r00002f60: u32 = r00002f5e.wrapping_add(r00002f5f);\n" : String).toByteArray.data.toList
theorem checked12010 : bytes12010=statementBytes 12128 (op12010.map lower) ∧ bytes12010.length=60 := by core033_kernel_decide
def op12011 : List WordIR.Op := [.band 12128 11103]
def bytes12011 : Bytes := ("    let r00002f61: u32 = r00002f60 & r00002b5f;\n" : String).toByteArray.data.toList
theorem checked12011 : bytes12011=statementBytes 12129 (op12011.map lower) ∧ bytes12011.length=48 := by core033_kernel_decide
def op12012 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12012 : Bytes := ("    let r00002f62: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12012 : bytes12012=statementBytes 12130 (op12012.map lower) ∧ bytes12012.length=41 := by core033_kernel_decide
def op12013 : List WordIR.Op := [.bxor 693 12130]
def bytes12013 : Bytes := ("    let r00002f63: u32 = r000002b5 ^ r00002f62;\n" : String).toByteArray.data.toList
theorem checked12013 : bytes12013=statementBytes 12131 (op12013.map lower) ∧ bytes12013.length=48 := by core033_kernel_decide
def op12014 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12014 : Bytes := ("    let r00002f64: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12014 : bytes12014=statementBytes 12132 (op12014.map lower) ∧ bytes12014.length=41 := by core033_kernel_decide
def op12015 : List WordIR.Op := [.bnot 12132]
def bytes12015 : Bytes := ("    let r00002f65: u32 = !r00002f64;\n" : String).toByteArray.data.toList
theorem checked12015 : bytes12015=statementBytes 12133 (op12015.map lower) ∧ bytes12015.length=37 := by core033_kernel_decide
def op12016 : List WordIR.Op := [.band 12131 12133]
def bytes12016 : Bytes := ("    let r00002f66: u32 = r00002f63 & r00002f65;\n" : String).toByteArray.data.toList
theorem checked12016 : bytes12016=statementBytes 12134 (op12016.map lower) ∧ bytes12016.length=48 := by core033_kernel_decide
def op12017 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12017 : Bytes := ("    let r00002f67: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12017 : bytes12017=statementBytes 12135 (op12017.map lower) ∧ bytes12017.length=41 := by core033_kernel_decide
def op12018 : List WordIR.Op := [.bxor 693 12135]
def bytes12018 : Bytes := ("    let r00002f68: u32 = r000002b5 ^ r00002f67;\n" : String).toByteArray.data.toList
theorem checked12018 : bytes12018=statementBytes 12136 (op12018.map lower) ∧ bytes12018.length=48 := by core033_kernel_decide
def op12019 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12019 : Bytes := ("    let r00002f69: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12019 : bytes12019=statementBytes 12137 (op12019.map lower) ∧ bytes12019.length=41 := by core033_kernel_decide
def op12020 : List WordIR.Op := [.bnot 12137]
def bytes12020 : Bytes := ("    let r00002f6a: u32 = !r00002f69;\n" : String).toByteArray.data.toList
theorem checked12020 : bytes12020=statementBytes 12138 (op12020.map lower) ∧ bytes12020.length=37 := by core033_kernel_decide
def op12021 : List WordIR.Op := [.bxor 12136 12138]
def bytes12021 : Bytes := ("    let r00002f6b: u32 = r00002f68 ^ r00002f6a;\n" : String).toByteArray.data.toList
theorem checked12021 : bytes12021=statementBytes 12139 (op12021.map lower) ∧ bytes12021.length=48 := by core033_kernel_decide
def op12022 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12022 : Bytes := ("    let r00002f6c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12022 : bytes12022=statementBytes 12140 (op12022.map lower) ∧ bytes12022.length=41 := by core033_kernel_decide
def op12023 : List WordIR.Op := [.bxor 693 12140]
def bytes12023 : Bytes := ("    let r00002f6d: u32 = r000002b5 ^ r00002f6c;\n" : String).toByteArray.data.toList
theorem checked12023 : bytes12023=statementBytes 12141 (op12023.map lower) ∧ bytes12023.length=48 := by core033_kernel_decide
def op12024 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12024 : Bytes := ("    let r00002f6e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12024 : bytes12024=statementBytes 12142 (op12024.map lower) ∧ bytes12024.length=41 := by core033_kernel_decide
def op12025 : List WordIR.Op := [.bnot 12142]
def bytes12025 : Bytes := ("    let r00002f6f: u32 = !r00002f6e;\n" : String).toByteArray.data.toList
theorem checked12025 : bytes12025=statementBytes 12143 (op12025.map lower) ∧ bytes12025.length=37 := by core033_kernel_decide
def op12026 : List WordIR.Op := [.badd 12141 12143]
def bytes12026 : Bytes := ("    let r00002f70: u32 = r00002f6d.wrapping_add(r00002f6f);\n" : String).toByteArray.data.toList
theorem checked12026 : bytes12026=statementBytes 12144 (op12026.map lower) ∧ bytes12026.length=60 := by core033_kernel_decide
def op12027 : List WordIR.Op := [.bnot 12144]
def bytes12027 : Bytes := ("    let r00002f71: u32 = !r00002f70;\n" : String).toByteArray.data.toList
theorem checked12027 : bytes12027=statementBytes 12145 (op12027.map lower) ∧ bytes12027.length=37 := by core033_kernel_decide
def op12028 : List WordIR.Op := [.band 12139 12145]
def bytes12028 : Bytes := ("    let r00002f72: u32 = r00002f6b & r00002f71;\n" : String).toByteArray.data.toList
theorem checked12028 : bytes12028=statementBytes 12146 (op12028.map lower) ∧ bytes12028.length=48 := by core033_kernel_decide
def op12029 : List WordIR.Op := [.bxor 12134 12146]
def bytes12029 : Bytes := ("    let r00002f73: u32 = r00002f66 ^ r00002f72;\n" : String).toByteArray.data.toList
theorem checked12029 : bytes12029=statementBytes 12147 (op12029.map lower) ∧ bytes12029.length=48 := by core033_kernel_decide
def op12030 : List WordIR.Op := [.shr 12147 31]
def bytes12030 : Bytes := ("    let r00002f74: u32 = r00002f73 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12030 : bytes12030=statementBytes 12148 (op12030.map lower) ∧ bytes12030.length=54 := by core033_kernel_decide
def op12031 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12031 : Bytes := ("    let r00002f75: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12031 : bytes12031=statementBytes 12149 (op12031.map lower) ∧ bytes12031.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11968,op11969,op11970,op11971,op11972,op11973,op11974,op11975,op11976,op11977,op11978,op11979,op11980,op11981,op11982,op11983,op11984,op11985,op11986,op11987,op11988,op11989,op11990,op11991,op11992,op11993,op11994,op11995,op11996,op11997,op11998,op11999,op12000,op12001,op12002,op12003,op12004,op12005,op12006,op12007,op12008,op12009,op12010,op12011,op12012,op12013,op12014,op12015,op12016,op12017,op12018,op12019,op12020,op12021,op12022,op12023,op12024,op12025,op12026,op12027,op12028,op12029,op12030,op12031]
def chunks : List Bytes := [bytes11968,bytes11969,bytes11970,bytes11971,bytes11972,bytes11973,bytes11974,bytes11975,bytes11976,bytes11977,bytes11978,bytes11979,bytes11980,bytes11981,bytes11982,bytes11983,bytes11984,bytes11985,bytes11986,bytes11987,bytes11988,bytes11989,bytes11990,bytes11991,bytes11992,bytes11993,bytes11994,bytes11995,bytes11996,bytes11997,bytes11998,bytes11999,bytes12000,bytes12001,bytes12002,bytes12003,bytes12004,bytes12005,bytes12006,bytes12007,bytes12008,bytes12009,bytes12010,bytes12011,bytes12012,bytes12013,bytes12014,bytes12015,bytes12016,bytes12017,bytes12018,bytes12019,bytes12020,bytes12021,bytes12022,bytes12023,bytes12024,bytes12025,bytes12026,bytes12027,bytes12028,bytes12029,bytes12030,bytes12031]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12086 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11968.1 (.cons _ _ _ _ _ checked11969.1 (.cons _ _ _ _ _ checked11970.1 (.cons _ _ _ _ _ checked11971.1 (.cons _ _ _ _ _ checked11972.1 (.cons _ _ _ _ _ checked11973.1 (.cons _ _ _ _ _ checked11974.1 (.cons _ _ _ _ _ checked11975.1 (.cons _ _ _ _ _ checked11976.1 (.cons _ _ _ _ _ checked11977.1 (.cons _ _ _ _ _ checked11978.1 (.cons _ _ _ _ _ checked11979.1 (.cons _ _ _ _ _ checked11980.1 (.cons _ _ _ _ _ checked11981.1 (.cons _ _ _ _ _ checked11982.1 (.cons _ _ _ _ _ checked11983.1 (.cons _ _ _ _ _ checked11984.1 (.cons _ _ _ _ _ checked11985.1 (.cons _ _ _ _ _ checked11986.1 (.cons _ _ _ _ _ checked11987.1 (.cons _ _ _ _ _ checked11988.1 (.cons _ _ _ _ _ checked11989.1 (.cons _ _ _ _ _ checked11990.1 (.cons _ _ _ _ _ checked11991.1 (.cons _ _ _ _ _ checked11992.1 (.cons _ _ _ _ _ checked11993.1 (.cons _ _ _ _ _ checked11994.1 (.cons _ _ _ _ _ checked11995.1 (.cons _ _ _ _ _ checked11996.1 (.cons _ _ _ _ _ checked11997.1 (.cons _ _ _ _ _ checked11998.1 (.cons _ _ _ _ _ checked11999.1 (.cons _ _ _ _ _ checked12000.1 (.cons _ _ _ _ _ checked12001.1 (.cons _ _ _ _ _ checked12002.1 (.cons _ _ _ _ _ checked12003.1 (.cons _ _ _ _ _ checked12004.1 (.cons _ _ _ _ _ checked12005.1 (.cons _ _ _ _ _ checked12006.1 (.cons _ _ _ _ _ checked12007.1 (.cons _ _ _ _ _ checked12008.1 (.cons _ _ _ _ _ checked12009.1 (.cons _ _ _ _ _ checked12010.1 (.cons _ _ _ _ _ checked12011.1 (.cons _ _ _ _ _ checked12012.1 (.cons _ _ _ _ _ checked12013.1 (.cons _ _ _ _ _ checked12014.1 (.cons _ _ _ _ _ checked12015.1 (.cons _ _ _ _ _ checked12016.1 (.cons _ _ _ _ _ checked12017.1 (.cons _ _ _ _ _ checked12018.1 (.cons _ _ _ _ _ checked12019.1 (.cons _ _ _ _ _ checked12020.1 (.cons _ _ _ _ _ checked12021.1 (.cons _ _ _ _ _ checked12022.1 (.cons _ _ _ _ _ checked12023.1 (.cons _ _ _ _ _ checked12024.1 (.cons _ _ _ _ _ checked12025.1 (.cons _ _ _ _ _ checked12026.1 (.cons _ _ _ _ _ checked12027.1 (.cons _ _ _ _ _ checked12028.1 (.cons _ _ _ _ _ checked12029.1 (.cons _ _ _ _ _ checked12030.1 (.cons _ _ _ _ _ checked12031.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12086 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11968.2,checked11969.2,checked11970.2,checked11971.2,checked11972.2,checked11973.2,checked11974.2,checked11975.2,checked11976.2,checked11977.2,checked11978.2,checked11979.2,checked11980.2,checked11981.2,checked11982.2,checked11983.2,checked11984.2,checked11985.2,checked11986.2,checked11987.2,checked11988.2,checked11989.2,checked11990.2,checked11991.2,checked11992.2,checked11993.2,checked11994.2,checked11995.2,checked11996.2,checked11997.2,checked11998.2,checked11999.2,checked12000.2,checked12001.2,checked12002.2,checked12003.2,checked12004.2,checked12005.2,checked12006.2,checked12007.2,checked12008.2,checked12009.2,checked12010.2,checked12011.2,checked12012.2,checked12013.2,checked12014.2,checked12015.2,checked12016.2,checked12017.2,checked12018.2,checked12019.2,checked12020.2,checked12021.2,checked12022.2,checked12023.2,checked12024.2,checked12025.2,checked12026.2,checked12027.2,checked12028.2,checked12029.2,checked12030.2,checked12031.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup187
