import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup188
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12032 : List WordIR.Op := [.band 12072 12074]
def bytes12032 : Bytes := ("    let r00002f2b: u32 = r00002f28 & r00002f2a;\n" : String).toByteArray.data.toList
theorem checked12032 : bytes12032=statementBytes 12075 (op12032.map lower) ∧ bytes12032.length=48 := by core033_kernel_decide
def op12033 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12033 : Bytes := ("    let r00002f2c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12033 : bytes12033=statementBytes 12076 (op12033.map lower) ∧ bytes12033.length=41 := by core033_kernel_decide
def op12034 : List WordIR.Op := [.bxor 0 12076]
def bytes12034 : Bytes := ("    let r00002f2d: u32 = r00000000 ^ r00002f2c;\n" : String).toByteArray.data.toList
theorem checked12034 : bytes12034=statementBytes 12077 (op12034.map lower) ∧ bytes12034.length=48 := by core033_kernel_decide
def op12035 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12035 : Bytes := ("    let r00002f2e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12035 : bytes12035=statementBytes 12078 (op12035.map lower) ∧ bytes12035.length=41 := by core033_kernel_decide
def op12036 : List WordIR.Op := [.bnot 12078]
def bytes12036 : Bytes := ("    let r00002f2f: u32 = !r00002f2e;\n" : String).toByteArray.data.toList
theorem checked12036 : bytes12036=statementBytes 12079 (op12036.map lower) ∧ bytes12036.length=37 := by core033_kernel_decide
def op12037 : List WordIR.Op := [.bxor 12077 12079]
def bytes12037 : Bytes := ("    let r00002f30: u32 = r00002f2d ^ r00002f2f;\n" : String).toByteArray.data.toList
theorem checked12037 : bytes12037=statementBytes 12080 (op12037.map lower) ∧ bytes12037.length=48 := by core033_kernel_decide
def op12038 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12038 : Bytes := ("    let r00002f31: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12038 : bytes12038=statementBytes 12081 (op12038.map lower) ∧ bytes12038.length=41 := by core033_kernel_decide
def op12039 : List WordIR.Op := [.bxor 0 12081]
def bytes12039 : Bytes := ("    let r00002f32: u32 = r00000000 ^ r00002f31;\n" : String).toByteArray.data.toList
theorem checked12039 : bytes12039=statementBytes 12082 (op12039.map lower) ∧ bytes12039.length=48 := by core033_kernel_decide
def op12040 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12040 : Bytes := ("    let r00002f33: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12040 : bytes12040=statementBytes 12083 (op12040.map lower) ∧ bytes12040.length=41 := by core033_kernel_decide
def op12041 : List WordIR.Op := [.bnot 12083]
def bytes12041 : Bytes := ("    let r00002f34: u32 = !r00002f33;\n" : String).toByteArray.data.toList
theorem checked12041 : bytes12041=statementBytes 12084 (op12041.map lower) ∧ bytes12041.length=37 := by core033_kernel_decide
def op12042 : List WordIR.Op := [.badd 12082 12084]
def bytes12042 : Bytes := ("    let r00002f35: u32 = r00002f32.wrapping_add(r00002f34);\n" : String).toByteArray.data.toList
theorem checked12042 : bytes12042=statementBytes 12085 (op12042.map lower) ∧ bytes12042.length=60 := by core033_kernel_decide
def op12043 : List WordIR.Op := [.bnot 12085]
def bytes12043 : Bytes := ("    let r00002f36: u32 = !r00002f35;\n" : String).toByteArray.data.toList
theorem checked12043 : bytes12043=statementBytes 12086 (op12043.map lower) ∧ bytes12043.length=37 := by core033_kernel_decide
def op12044 : List WordIR.Op := [.band 12080 12086]
def bytes12044 : Bytes := ("    let r00002f37: u32 = r00002f30 & r00002f36;\n" : String).toByteArray.data.toList
theorem checked12044 : bytes12044=statementBytes 12087 (op12044.map lower) ∧ bytes12044.length=48 := by core033_kernel_decide
def op12045 : List WordIR.Op := [.bxor 12075 12087]
def bytes12045 : Bytes := ("    let r00002f38: u32 = r00002f2b ^ r00002f37;\n" : String).toByteArray.data.toList
theorem checked12045 : bytes12045=statementBytes 12088 (op12045.map lower) ∧ bytes12045.length=48 := by core033_kernel_decide
def op12046 : List WordIR.Op := [.shr 12088 31]
def bytes12046 : Bytes := ("    let r00002f39: u32 = r00002f38 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12046 : bytes12046=statementBytes 12089 (op12046.map lower) ∧ bytes12046.length=54 := by core033_kernel_decide
def op12047 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12047 : Bytes := ("    let r00002f3a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12047 : bytes12047=statementBytes 12090 (op12047.map lower) ∧ bytes12047.length=41 := by core033_kernel_decide
def op12048 : List WordIR.Op := [.bxor 12089 12090]
def bytes12048 : Bytes := ("    let r00002f3b: u32 = r00002f39 ^ r00002f3a;\n" : String).toByteArray.data.toList
theorem checked12048 : bytes12048=statementBytes 12091 (op12048.map lower) ∧ bytes12048.length=48 := by core033_kernel_decide
def op12049 : List WordIR.Op := [.bnot 12091]
def bytes12049 : Bytes := ("    let r00002f3c: u32 = !r00002f3b;\n" : String).toByteArray.data.toList
theorem checked12049 : bytes12049=statementBytes 12092 (op12049.map lower) ∧ bytes12049.length=37 := by core033_kernel_decide
def op12050 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12050 : Bytes := ("    let r00002f3d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12050 : bytes12050=statementBytes 12093 (op12050.map lower) ∧ bytes12050.length=41 := by core033_kernel_decide
def op12051 : List WordIR.Op := [.badd 12092 12093]
def bytes12051 : Bytes := ("    let r00002f3e: u32 = r00002f3c.wrapping_add(r00002f3d);\n" : String).toByteArray.data.toList
theorem checked12051 : bytes12051=statementBytes 12094 (op12051.map lower) ∧ bytes12051.length=60 := by core033_kernel_decide
def op12052 : List WordIR.Op := [.bnot 12094]
def bytes12052 : Bytes := ("    let r00002f3f: u32 = !r00002f3e;\n" : String).toByteArray.data.toList
theorem checked12052 : bytes12052=statementBytes 12095 (op12052.map lower) ∧ bytes12052.length=37 := by core033_kernel_decide
def op12053 : List WordIR.Op := [.band 12095 9281]
def bytes12053 : Bytes := ("    let r00002f40: u32 = r00002f3f & r00002441;\n" : String).toByteArray.data.toList
theorem checked12053 : bytes12053=statementBytes 12096 (op12053.map lower) ∧ bytes12053.length=48 := by core033_kernel_decide
def op12054 : List WordIR.Op := [.bxor 12070 12096]
def bytes12054 : Bytes := ("    let r00002f41: u32 = r00002f26 ^ r00002f40;\n" : String).toByteArray.data.toList
theorem checked12054 : bytes12054=statementBytes 12097 (op12054.map lower) ∧ bytes12054.length=48 := by core033_kernel_decide
def op12055 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12055 : Bytes := ("    let r00002f42: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12055 : bytes12055=statementBytes 12098 (op12055.map lower) ∧ bytes12055.length=41 := by core033_kernel_decide
def op12056 : List WordIR.Op := [.bxor 0 12098]
def bytes12056 : Bytes := ("    let r00002f43: u32 = r00000000 ^ r00002f42;\n" : String).toByteArray.data.toList
theorem checked12056 : bytes12056=statementBytes 12099 (op12056.map lower) ∧ bytes12056.length=48 := by core033_kernel_decide
def op12057 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12057 : Bytes := ("    let r00002f44: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12057 : bytes12057=statementBytes 12100 (op12057.map lower) ∧ bytes12057.length=41 := by core033_kernel_decide
def op12058 : List WordIR.Op := [.bnot 12100]
def bytes12058 : Bytes := ("    let r00002f45: u32 = !r00002f44;\n" : String).toByteArray.data.toList
theorem checked12058 : bytes12058=statementBytes 12101 (op12058.map lower) ∧ bytes12058.length=37 := by core033_kernel_decide
def op12059 : List WordIR.Op := [.band 12099 12101]
def bytes12059 : Bytes := ("    let r00002f46: u32 = r00002f43 & r00002f45;\n" : String).toByteArray.data.toList
theorem checked12059 : bytes12059=statementBytes 12102 (op12059.map lower) ∧ bytes12059.length=48 := by core033_kernel_decide
def op12060 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12060 : Bytes := ("    let r00002f47: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12060 : bytes12060=statementBytes 12103 (op12060.map lower) ∧ bytes12060.length=41 := by core033_kernel_decide
def op12061 : List WordIR.Op := [.bxor 0 12103]
def bytes12061 : Bytes := ("    let r00002f48: u32 = r00000000 ^ r00002f47;\n" : String).toByteArray.data.toList
theorem checked12061 : bytes12061=statementBytes 12104 (op12061.map lower) ∧ bytes12061.length=48 := by core033_kernel_decide
def op12062 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12062 : Bytes := ("    let r00002f49: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12062 : bytes12062=statementBytes 12105 (op12062.map lower) ∧ bytes12062.length=41 := by core033_kernel_decide
def op12063 : List WordIR.Op := [.bnot 12105]
def bytes12063 : Bytes := ("    let r00002f4a: u32 = !r00002f49;\n" : String).toByteArray.data.toList
theorem checked12063 : bytes12063=statementBytes 12106 (op12063.map lower) ∧ bytes12063.length=37 := by core033_kernel_decide
def op12064 : List WordIR.Op := [.bxor 12104 12106]
def bytes12064 : Bytes := ("    let r00002f4b: u32 = r00002f48 ^ r00002f4a;\n" : String).toByteArray.data.toList
theorem checked12064 : bytes12064=statementBytes 12107 (op12064.map lower) ∧ bytes12064.length=48 := by core033_kernel_decide
def op12065 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12065 : Bytes := ("    let r00002f4c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12065 : bytes12065=statementBytes 12108 (op12065.map lower) ∧ bytes12065.length=41 := by core033_kernel_decide
def op12066 : List WordIR.Op := [.bxor 0 12108]
def bytes12066 : Bytes := ("    let r00002f4d: u32 = r00000000 ^ r00002f4c;\n" : String).toByteArray.data.toList
theorem checked12066 : bytes12066=statementBytes 12109 (op12066.map lower) ∧ bytes12066.length=48 := by core033_kernel_decide
def op12067 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12067 : Bytes := ("    let r00002f4e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12067 : bytes12067=statementBytes 12110 (op12067.map lower) ∧ bytes12067.length=41 := by core033_kernel_decide
def op12068 : List WordIR.Op := [.bnot 12110]
def bytes12068 : Bytes := ("    let r00002f4f: u32 = !r00002f4e;\n" : String).toByteArray.data.toList
theorem checked12068 : bytes12068=statementBytes 12111 (op12068.map lower) ∧ bytes12068.length=37 := by core033_kernel_decide
def op12069 : List WordIR.Op := [.badd 12109 12111]
def bytes12069 : Bytes := ("    let r00002f50: u32 = r00002f4d.wrapping_add(r00002f4f);\n" : String).toByteArray.data.toList
theorem checked12069 : bytes12069=statementBytes 12112 (op12069.map lower) ∧ bytes12069.length=60 := by core033_kernel_decide
def op12070 : List WordIR.Op := [.bnot 12112]
def bytes12070 : Bytes := ("    let r00002f51: u32 = !r00002f50;\n" : String).toByteArray.data.toList
theorem checked12070 : bytes12070=statementBytes 12113 (op12070.map lower) ∧ bytes12070.length=37 := by core033_kernel_decide
def op12071 : List WordIR.Op := [.band 12107 12113]
def bytes12071 : Bytes := ("    let r00002f52: u32 = r00002f4b & r00002f51;\n" : String).toByteArray.data.toList
theorem checked12071 : bytes12071=statementBytes 12114 (op12071.map lower) ∧ bytes12071.length=48 := by core033_kernel_decide
def op12072 : List WordIR.Op := [.bxor 12102 12114]
def bytes12072 : Bytes := ("    let r00002f53: u32 = r00002f46 ^ r00002f52;\n" : String).toByteArray.data.toList
theorem checked12072 : bytes12072=statementBytes 12115 (op12072.map lower) ∧ bytes12072.length=48 := by core033_kernel_decide
def op12073 : List WordIR.Op := [.shr 12115 31]
def bytes12073 : Bytes := ("    let r00002f54: u32 = r00002f53 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12073 : bytes12073=statementBytes 12116 (op12073.map lower) ∧ bytes12073.length=54 := by core033_kernel_decide
def op12074 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12074 : Bytes := ("    let r00002f55: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12074 : bytes12074=statementBytes 12117 (op12074.map lower) ∧ bytes12074.length=41 := by core033_kernel_decide
def op12075 : List WordIR.Op := [.bxor 12116 12117]
def bytes12075 : Bytes := ("    let r00002f56: u32 = r00002f54 ^ r00002f55;\n" : String).toByteArray.data.toList
theorem checked12075 : bytes12075=statementBytes 12118 (op12075.map lower) ∧ bytes12075.length=48 := by core033_kernel_decide
def op12076 : List WordIR.Op := [.bnot 12118]
def bytes12076 : Bytes := ("    let r00002f57: u32 = !r00002f56;\n" : String).toByteArray.data.toList
theorem checked12076 : bytes12076=statementBytes 12119 (op12076.map lower) ∧ bytes12076.length=37 := by core033_kernel_decide
def op12077 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12077 : Bytes := ("    let r00002f58: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12077 : bytes12077=statementBytes 12120 (op12077.map lower) ∧ bytes12077.length=41 := by core033_kernel_decide
def op12078 : List WordIR.Op := [.badd 12119 12120]
def bytes12078 : Bytes := ("    let r00002f59: u32 = r00002f57.wrapping_add(r00002f58);\n" : String).toByteArray.data.toList
theorem checked12078 : bytes12078=statementBytes 12121 (op12078.map lower) ∧ bytes12078.length=60 := by core033_kernel_decide
def op12079 : List WordIR.Op := [.band 12121 9813]
def bytes12079 : Bytes := ("    let r00002f5a: u32 = r00002f59 & r00002655;\n" : String).toByteArray.data.toList
theorem checked12079 : bytes12079=statementBytes 12122 (op12079.map lower) ∧ bytes12079.length=48 := by core033_kernel_decide
def op12080 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12080 : Bytes := ("    let r00002f5b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12080 : bytes12080=statementBytes 12123 (op12080.map lower) ∧ bytes12080.length=41 := by core033_kernel_decide
def op12081 : List WordIR.Op := [.bxor 0 12123]
def bytes12081 : Bytes := ("    let r00002f5c: u32 = r00000000 ^ r00002f5b;\n" : String).toByteArray.data.toList
theorem checked12081 : bytes12081=statementBytes 12124 (op12081.map lower) ∧ bytes12081.length=48 := by core033_kernel_decide
def op12082 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12082 : Bytes := ("    let r00002f5d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12082 : bytes12082=statementBytes 12125 (op12082.map lower) ∧ bytes12082.length=41 := by core033_kernel_decide
def op12083 : List WordIR.Op := [.bnot 12125]
def bytes12083 : Bytes := ("    let r00002f5e: u32 = !r00002f5d;\n" : String).toByteArray.data.toList
theorem checked12083 : bytes12083=statementBytes 12126 (op12083.map lower) ∧ bytes12083.length=37 := by core033_kernel_decide
def op12084 : List WordIR.Op := [.band 12124 12126]
def bytes12084 : Bytes := ("    let r00002f5f: u32 = r00002f5c & r00002f5e;\n" : String).toByteArray.data.toList
theorem checked12084 : bytes12084=statementBytes 12127 (op12084.map lower) ∧ bytes12084.length=48 := by core033_kernel_decide
def op12085 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12085 : Bytes := ("    let r00002f60: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12085 : bytes12085=statementBytes 12128 (op12085.map lower) ∧ bytes12085.length=41 := by core033_kernel_decide
def op12086 : List WordIR.Op := [.bxor 0 12128]
def bytes12086 : Bytes := ("    let r00002f61: u32 = r00000000 ^ r00002f60;\n" : String).toByteArray.data.toList
theorem checked12086 : bytes12086=statementBytes 12129 (op12086.map lower) ∧ bytes12086.length=48 := by core033_kernel_decide
def op12087 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12087 : Bytes := ("    let r00002f62: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12087 : bytes12087=statementBytes 12130 (op12087.map lower) ∧ bytes12087.length=41 := by core033_kernel_decide
def op12088 : List WordIR.Op := [.bnot 12130]
def bytes12088 : Bytes := ("    let r00002f63: u32 = !r00002f62;\n" : String).toByteArray.data.toList
theorem checked12088 : bytes12088=statementBytes 12131 (op12088.map lower) ∧ bytes12088.length=37 := by core033_kernel_decide
def op12089 : List WordIR.Op := [.bxor 12129 12131]
def bytes12089 : Bytes := ("    let r00002f64: u32 = r00002f61 ^ r00002f63;\n" : String).toByteArray.data.toList
theorem checked12089 : bytes12089=statementBytes 12132 (op12089.map lower) ∧ bytes12089.length=48 := by core033_kernel_decide
def op12090 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12090 : Bytes := ("    let r00002f65: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12090 : bytes12090=statementBytes 12133 (op12090.map lower) ∧ bytes12090.length=41 := by core033_kernel_decide
def op12091 : List WordIR.Op := [.bxor 0 12133]
def bytes12091 : Bytes := ("    let r00002f66: u32 = r00000000 ^ r00002f65;\n" : String).toByteArray.data.toList
theorem checked12091 : bytes12091=statementBytes 12134 (op12091.map lower) ∧ bytes12091.length=48 := by core033_kernel_decide
def op12092 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12092 : Bytes := ("    let r00002f67: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12092 : bytes12092=statementBytes 12135 (op12092.map lower) ∧ bytes12092.length=41 := by core033_kernel_decide
def op12093 : List WordIR.Op := [.bnot 12135]
def bytes12093 : Bytes := ("    let r00002f68: u32 = !r00002f67;\n" : String).toByteArray.data.toList
theorem checked12093 : bytes12093=statementBytes 12136 (op12093.map lower) ∧ bytes12093.length=37 := by core033_kernel_decide
def op12094 : List WordIR.Op := [.badd 12134 12136]
def bytes12094 : Bytes := ("    let r00002f69: u32 = r00002f66.wrapping_add(r00002f68);\n" : String).toByteArray.data.toList
theorem checked12094 : bytes12094=statementBytes 12137 (op12094.map lower) ∧ bytes12094.length=60 := by core033_kernel_decide
def op12095 : List WordIR.Op := [.bnot 12137]
def bytes12095 : Bytes := ("    let r00002f6a: u32 = !r00002f69;\n" : String).toByteArray.data.toList
theorem checked12095 : bytes12095=statementBytes 12138 (op12095.map lower) ∧ bytes12095.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12032,op12033,op12034,op12035,op12036,op12037,op12038,op12039,op12040,op12041,op12042,op12043,op12044,op12045,op12046,op12047,op12048,op12049,op12050,op12051,op12052,op12053,op12054,op12055,op12056,op12057,op12058,op12059,op12060,op12061,op12062,op12063,op12064,op12065,op12066,op12067,op12068,op12069,op12070,op12071,op12072,op12073,op12074,op12075,op12076,op12077,op12078,op12079,op12080,op12081,op12082,op12083,op12084,op12085,op12086,op12087,op12088,op12089,op12090,op12091,op12092,op12093,op12094,op12095]
def chunks : List Bytes := [bytes12032,bytes12033,bytes12034,bytes12035,bytes12036,bytes12037,bytes12038,bytes12039,bytes12040,bytes12041,bytes12042,bytes12043,bytes12044,bytes12045,bytes12046,bytes12047,bytes12048,bytes12049,bytes12050,bytes12051,bytes12052,bytes12053,bytes12054,bytes12055,bytes12056,bytes12057,bytes12058,bytes12059,bytes12060,bytes12061,bytes12062,bytes12063,bytes12064,bytes12065,bytes12066,bytes12067,bytes12068,bytes12069,bytes12070,bytes12071,bytes12072,bytes12073,bytes12074,bytes12075,bytes12076,bytes12077,bytes12078,bytes12079,bytes12080,bytes12081,bytes12082,bytes12083,bytes12084,bytes12085,bytes12086,bytes12087,bytes12088,bytes12089,bytes12090,bytes12091,bytes12092,bytes12093,bytes12094,bytes12095]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12075 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12032.1 (.cons _ _ _ _ _ checked12033.1 (.cons _ _ _ _ _ checked12034.1 (.cons _ _ _ _ _ checked12035.1 (.cons _ _ _ _ _ checked12036.1 (.cons _ _ _ _ _ checked12037.1 (.cons _ _ _ _ _ checked12038.1 (.cons _ _ _ _ _ checked12039.1 (.cons _ _ _ _ _ checked12040.1 (.cons _ _ _ _ _ checked12041.1 (.cons _ _ _ _ _ checked12042.1 (.cons _ _ _ _ _ checked12043.1 (.cons _ _ _ _ _ checked12044.1 (.cons _ _ _ _ _ checked12045.1 (.cons _ _ _ _ _ checked12046.1 (.cons _ _ _ _ _ checked12047.1 (.cons _ _ _ _ _ checked12048.1 (.cons _ _ _ _ _ checked12049.1 (.cons _ _ _ _ _ checked12050.1 (.cons _ _ _ _ _ checked12051.1 (.cons _ _ _ _ _ checked12052.1 (.cons _ _ _ _ _ checked12053.1 (.cons _ _ _ _ _ checked12054.1 (.cons _ _ _ _ _ checked12055.1 (.cons _ _ _ _ _ checked12056.1 (.cons _ _ _ _ _ checked12057.1 (.cons _ _ _ _ _ checked12058.1 (.cons _ _ _ _ _ checked12059.1 (.cons _ _ _ _ _ checked12060.1 (.cons _ _ _ _ _ checked12061.1 (.cons _ _ _ _ _ checked12062.1 (.cons _ _ _ _ _ checked12063.1 (.cons _ _ _ _ _ checked12064.1 (.cons _ _ _ _ _ checked12065.1 (.cons _ _ _ _ _ checked12066.1 (.cons _ _ _ _ _ checked12067.1 (.cons _ _ _ _ _ checked12068.1 (.cons _ _ _ _ _ checked12069.1 (.cons _ _ _ _ _ checked12070.1 (.cons _ _ _ _ _ checked12071.1 (.cons _ _ _ _ _ checked12072.1 (.cons _ _ _ _ _ checked12073.1 (.cons _ _ _ _ _ checked12074.1 (.cons _ _ _ _ _ checked12075.1 (.cons _ _ _ _ _ checked12076.1 (.cons _ _ _ _ _ checked12077.1 (.cons _ _ _ _ _ checked12078.1 (.cons _ _ _ _ _ checked12079.1 (.cons _ _ _ _ _ checked12080.1 (.cons _ _ _ _ _ checked12081.1 (.cons _ _ _ _ _ checked12082.1 (.cons _ _ _ _ _ checked12083.1 (.cons _ _ _ _ _ checked12084.1 (.cons _ _ _ _ _ checked12085.1 (.cons _ _ _ _ _ checked12086.1 (.cons _ _ _ _ _ checked12087.1 (.cons _ _ _ _ _ checked12088.1 (.cons _ _ _ _ _ checked12089.1 (.cons _ _ _ _ _ checked12090.1 (.cons _ _ _ _ _ checked12091.1 (.cons _ _ _ _ _ checked12092.1 (.cons _ _ _ _ _ checked12093.1 (.cons _ _ _ _ _ checked12094.1 (.cons _ _ _ _ _ checked12095.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12075 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12032.2,checked12033.2,checked12034.2,checked12035.2,checked12036.2,checked12037.2,checked12038.2,checked12039.2,checked12040.2,checked12041.2,checked12042.2,checked12043.2,checked12044.2,checked12045.2,checked12046.2,checked12047.2,checked12048.2,checked12049.2,checked12050.2,checked12051.2,checked12052.2,checked12053.2,checked12054.2,checked12055.2,checked12056.2,checked12057.2,checked12058.2,checked12059.2,checked12060.2,checked12061.2,checked12062.2,checked12063.2,checked12064.2,checked12065.2,checked12066.2,checked12067.2,checked12068.2,checked12069.2,checked12070.2,checked12071.2,checked12072.2,checked12073.2,checked12074.2,checked12075.2,checked12076.2,checked12077.2,checked12078.2,checked12079.2,checked12080.2,checked12081.2,checked12082.2,checked12083.2,checked12084.2,checked12085.2,checked12086.2,checked12087.2,checked12088.2,checked12089.2,checked12090.2,checked12091.2,checked12092.2,checked12093.2,checked12094.2,checked12095.2]
  decide
end ArtifactPathRoundDispatchGroup188
