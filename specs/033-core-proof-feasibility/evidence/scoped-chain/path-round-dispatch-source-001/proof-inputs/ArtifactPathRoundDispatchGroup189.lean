import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup189
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12096 : List WordIR.Op := [.band 12132 12138]
def bytes12096 : Bytes := ("    let r00002f6b: u32 = r00002f64 & r00002f6a;\n" : String).toByteArray.data.toList
theorem checked12096 : bytes12096=statementBytes 12139 (op12096.map lower) ∧ bytes12096.length=48 := by core033_kernel_decide
def op12097 : List WordIR.Op := [.bxor 12127 12139]
def bytes12097 : Bytes := ("    let r00002f6c: u32 = r00002f5f ^ r00002f6b;\n" : String).toByteArray.data.toList
theorem checked12097 : bytes12097=statementBytes 12140 (op12097.map lower) ∧ bytes12097.length=48 := by core033_kernel_decide
def op12098 : List WordIR.Op := [.shr 12140 31]
def bytes12098 : Bytes := ("    let r00002f6d: u32 = r00002f6c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12098 : bytes12098=statementBytes 12141 (op12098.map lower) ∧ bytes12098.length=54 := by core033_kernel_decide
def op12099 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12099 : Bytes := ("    let r00002f6e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12099 : bytes12099=statementBytes 12142 (op12099.map lower) ∧ bytes12099.length=41 := by core033_kernel_decide
def op12100 : List WordIR.Op := [.bxor 12141 12142]
def bytes12100 : Bytes := ("    let r00002f6f: u32 = r00002f6d ^ r00002f6e;\n" : String).toByteArray.data.toList
theorem checked12100 : bytes12100=statementBytes 12143 (op12100.map lower) ∧ bytes12100.length=48 := by core033_kernel_decide
def op12101 : List WordIR.Op := [.bnot 12143]
def bytes12101 : Bytes := ("    let r00002f70: u32 = !r00002f6f;\n" : String).toByteArray.data.toList
theorem checked12101 : bytes12101=statementBytes 12144 (op12101.map lower) ∧ bytes12101.length=37 := by core033_kernel_decide
def op12102 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12102 : Bytes := ("    let r00002f71: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12102 : bytes12102=statementBytes 12145 (op12102.map lower) ∧ bytes12102.length=41 := by core033_kernel_decide
def op12103 : List WordIR.Op := [.badd 12144 12145]
def bytes12103 : Bytes := ("    let r00002f72: u32 = r00002f70.wrapping_add(r00002f71);\n" : String).toByteArray.data.toList
theorem checked12103 : bytes12103=statementBytes 12146 (op12103.map lower) ∧ bytes12103.length=60 := by core033_kernel_decide
def op12104 : List WordIR.Op := [.bnot 12146]
def bytes12104 : Bytes := ("    let r00002f73: u32 = !r00002f72;\n" : String).toByteArray.data.toList
theorem checked12104 : bytes12104=statementBytes 12147 (op12104.map lower) ∧ bytes12104.length=37 := by core033_kernel_decide
def op12105 : List WordIR.Op := [.band 12147 9282]
def bytes12105 : Bytes := ("    let r00002f74: u32 = r00002f73 & r00002442;\n" : String).toByteArray.data.toList
theorem checked12105 : bytes12105=statementBytes 12148 (op12105.map lower) ∧ bytes12105.length=48 := by core033_kernel_decide
def op12106 : List WordIR.Op := [.bxor 12122 12148]
def bytes12106 : Bytes := ("    let r00002f75: u32 = r00002f5a ^ r00002f74;\n" : String).toByteArray.data.toList
theorem checked12106 : bytes12106=statementBytes 12149 (op12106.map lower) ∧ bytes12106.length=48 := by core033_kernel_decide
def op12107 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12107 : Bytes := ("    let r00002f76: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12107 : bytes12107=statementBytes 12150 (op12107.map lower) ∧ bytes12107.length=41 := by core033_kernel_decide
def op12108 : List WordIR.Op := [.bxor 0 12150]
def bytes12108 : Bytes := ("    let r00002f77: u32 = r00000000 ^ r00002f76;\n" : String).toByteArray.data.toList
theorem checked12108 : bytes12108=statementBytes 12151 (op12108.map lower) ∧ bytes12108.length=48 := by core033_kernel_decide
def op12109 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12109 : Bytes := ("    let r00002f78: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12109 : bytes12109=statementBytes 12152 (op12109.map lower) ∧ bytes12109.length=41 := by core033_kernel_decide
def op12110 : List WordIR.Op := [.bnot 12152]
def bytes12110 : Bytes := ("    let r00002f79: u32 = !r00002f78;\n" : String).toByteArray.data.toList
theorem checked12110 : bytes12110=statementBytes 12153 (op12110.map lower) ∧ bytes12110.length=37 := by core033_kernel_decide
def op12111 : List WordIR.Op := [.band 12151 12153]
def bytes12111 : Bytes := ("    let r00002f7a: u32 = r00002f77 & r00002f79;\n" : String).toByteArray.data.toList
theorem checked12111 : bytes12111=statementBytes 12154 (op12111.map lower) ∧ bytes12111.length=48 := by core033_kernel_decide
def op12112 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12112 : Bytes := ("    let r00002f7b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12112 : bytes12112=statementBytes 12155 (op12112.map lower) ∧ bytes12112.length=41 := by core033_kernel_decide
def op12113 : List WordIR.Op := [.bxor 0 12155]
def bytes12113 : Bytes := ("    let r00002f7c: u32 = r00000000 ^ r00002f7b;\n" : String).toByteArray.data.toList
theorem checked12113 : bytes12113=statementBytes 12156 (op12113.map lower) ∧ bytes12113.length=48 := by core033_kernel_decide
def op12114 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12114 : Bytes := ("    let r00002f7d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12114 : bytes12114=statementBytes 12157 (op12114.map lower) ∧ bytes12114.length=41 := by core033_kernel_decide
def op12115 : List WordIR.Op := [.bnot 12157]
def bytes12115 : Bytes := ("    let r00002f7e: u32 = !r00002f7d;\n" : String).toByteArray.data.toList
theorem checked12115 : bytes12115=statementBytes 12158 (op12115.map lower) ∧ bytes12115.length=37 := by core033_kernel_decide
def op12116 : List WordIR.Op := [.bxor 12156 12158]
def bytes12116 : Bytes := ("    let r00002f7f: u32 = r00002f7c ^ r00002f7e;\n" : String).toByteArray.data.toList
theorem checked12116 : bytes12116=statementBytes 12159 (op12116.map lower) ∧ bytes12116.length=48 := by core033_kernel_decide
def op12117 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12117 : Bytes := ("    let r00002f80: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12117 : bytes12117=statementBytes 12160 (op12117.map lower) ∧ bytes12117.length=41 := by core033_kernel_decide
def op12118 : List WordIR.Op := [.bxor 0 12160]
def bytes12118 : Bytes := ("    let r00002f81: u32 = r00000000 ^ r00002f80;\n" : String).toByteArray.data.toList
theorem checked12118 : bytes12118=statementBytes 12161 (op12118.map lower) ∧ bytes12118.length=48 := by core033_kernel_decide
def op12119 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12119 : Bytes := ("    let r00002f82: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12119 : bytes12119=statementBytes 12162 (op12119.map lower) ∧ bytes12119.length=41 := by core033_kernel_decide
def op12120 : List WordIR.Op := [.bnot 12162]
def bytes12120 : Bytes := ("    let r00002f83: u32 = !r00002f82;\n" : String).toByteArray.data.toList
theorem checked12120 : bytes12120=statementBytes 12163 (op12120.map lower) ∧ bytes12120.length=37 := by core033_kernel_decide
def op12121 : List WordIR.Op := [.badd 12161 12163]
def bytes12121 : Bytes := ("    let r00002f84: u32 = r00002f81.wrapping_add(r00002f83);\n" : String).toByteArray.data.toList
theorem checked12121 : bytes12121=statementBytes 12164 (op12121.map lower) ∧ bytes12121.length=60 := by core033_kernel_decide
def op12122 : List WordIR.Op := [.bnot 12164]
def bytes12122 : Bytes := ("    let r00002f85: u32 = !r00002f84;\n" : String).toByteArray.data.toList
theorem checked12122 : bytes12122=statementBytes 12165 (op12122.map lower) ∧ bytes12122.length=37 := by core033_kernel_decide
def op12123 : List WordIR.Op := [.band 12159 12165]
def bytes12123 : Bytes := ("    let r00002f86: u32 = r00002f7f & r00002f85;\n" : String).toByteArray.data.toList
theorem checked12123 : bytes12123=statementBytes 12166 (op12123.map lower) ∧ bytes12123.length=48 := by core033_kernel_decide
def op12124 : List WordIR.Op := [.bxor 12154 12166]
def bytes12124 : Bytes := ("    let r00002f87: u32 = r00002f7a ^ r00002f86;\n" : String).toByteArray.data.toList
theorem checked12124 : bytes12124=statementBytes 12167 (op12124.map lower) ∧ bytes12124.length=48 := by core033_kernel_decide
def op12125 : List WordIR.Op := [.shr 12167 31]
def bytes12125 : Bytes := ("    let r00002f88: u32 = r00002f87 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12125 : bytes12125=statementBytes 12168 (op12125.map lower) ∧ bytes12125.length=54 := by core033_kernel_decide
def op12126 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12126 : Bytes := ("    let r00002f89: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12126 : bytes12126=statementBytes 12169 (op12126.map lower) ∧ bytes12126.length=41 := by core033_kernel_decide
def op12127 : List WordIR.Op := [.bxor 12168 12169]
def bytes12127 : Bytes := ("    let r00002f8a: u32 = r00002f88 ^ r00002f89;\n" : String).toByteArray.data.toList
theorem checked12127 : bytes12127=statementBytes 12170 (op12127.map lower) ∧ bytes12127.length=48 := by core033_kernel_decide
def op12128 : List WordIR.Op := [.bnot 12170]
def bytes12128 : Bytes := ("    let r00002f8b: u32 = !r00002f8a;\n" : String).toByteArray.data.toList
theorem checked12128 : bytes12128=statementBytes 12171 (op12128.map lower) ∧ bytes12128.length=37 := by core033_kernel_decide
def op12129 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12129 : Bytes := ("    let r00002f8c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12129 : bytes12129=statementBytes 12172 (op12129.map lower) ∧ bytes12129.length=41 := by core033_kernel_decide
def op12130 : List WordIR.Op := [.badd 12171 12172]
def bytes12130 : Bytes := ("    let r00002f8d: u32 = r00002f8b.wrapping_add(r00002f8c);\n" : String).toByteArray.data.toList
theorem checked12130 : bytes12130=statementBytes 12173 (op12130.map lower) ∧ bytes12130.length=60 := by core033_kernel_decide
def op12131 : List WordIR.Op := [.band 12173 9824]
def bytes12131 : Bytes := ("    let r00002f8e: u32 = r00002f8d & r00002660;\n" : String).toByteArray.data.toList
theorem checked12131 : bytes12131=statementBytes 12174 (op12131.map lower) ∧ bytes12131.length=48 := by core033_kernel_decide
def op12132 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12132 : Bytes := ("    let r00002f8f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12132 : bytes12132=statementBytes 12175 (op12132.map lower) ∧ bytes12132.length=41 := by core033_kernel_decide
def op12133 : List WordIR.Op := [.bxor 0 12175]
def bytes12133 : Bytes := ("    let r00002f90: u32 = r00000000 ^ r00002f8f;\n" : String).toByteArray.data.toList
theorem checked12133 : bytes12133=statementBytes 12176 (op12133.map lower) ∧ bytes12133.length=48 := by core033_kernel_decide
def op12134 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12134 : Bytes := ("    let r00002f91: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12134 : bytes12134=statementBytes 12177 (op12134.map lower) ∧ bytes12134.length=41 := by core033_kernel_decide
def op12135 : List WordIR.Op := [.bnot 12177]
def bytes12135 : Bytes := ("    let r00002f92: u32 = !r00002f91;\n" : String).toByteArray.data.toList
theorem checked12135 : bytes12135=statementBytes 12178 (op12135.map lower) ∧ bytes12135.length=37 := by core033_kernel_decide
def op12136 : List WordIR.Op := [.band 12176 12178]
def bytes12136 : Bytes := ("    let r00002f93: u32 = r00002f90 & r00002f92;\n" : String).toByteArray.data.toList
theorem checked12136 : bytes12136=statementBytes 12179 (op12136.map lower) ∧ bytes12136.length=48 := by core033_kernel_decide
def op12137 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12137 : Bytes := ("    let r00002f94: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12137 : bytes12137=statementBytes 12180 (op12137.map lower) ∧ bytes12137.length=41 := by core033_kernel_decide
def op12138 : List WordIR.Op := [.bxor 0 12180]
def bytes12138 : Bytes := ("    let r00002f95: u32 = r00000000 ^ r00002f94;\n" : String).toByteArray.data.toList
theorem checked12138 : bytes12138=statementBytes 12181 (op12138.map lower) ∧ bytes12138.length=48 := by core033_kernel_decide
def op12139 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12139 : Bytes := ("    let r00002f96: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12139 : bytes12139=statementBytes 12182 (op12139.map lower) ∧ bytes12139.length=41 := by core033_kernel_decide
def op12140 : List WordIR.Op := [.bnot 12182]
def bytes12140 : Bytes := ("    let r00002f97: u32 = !r00002f96;\n" : String).toByteArray.data.toList
theorem checked12140 : bytes12140=statementBytes 12183 (op12140.map lower) ∧ bytes12140.length=37 := by core033_kernel_decide
def op12141 : List WordIR.Op := [.bxor 12181 12183]
def bytes12141 : Bytes := ("    let r00002f98: u32 = r00002f95 ^ r00002f97;\n" : String).toByteArray.data.toList
theorem checked12141 : bytes12141=statementBytes 12184 (op12141.map lower) ∧ bytes12141.length=48 := by core033_kernel_decide
def op12142 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12142 : Bytes := ("    let r00002f99: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12142 : bytes12142=statementBytes 12185 (op12142.map lower) ∧ bytes12142.length=41 := by core033_kernel_decide
def op12143 : List WordIR.Op := [.bxor 0 12185]
def bytes12143 : Bytes := ("    let r00002f9a: u32 = r00000000 ^ r00002f99;\n" : String).toByteArray.data.toList
theorem checked12143 : bytes12143=statementBytes 12186 (op12143.map lower) ∧ bytes12143.length=48 := by core033_kernel_decide
def op12144 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12144 : Bytes := ("    let r00002f9b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12144 : bytes12144=statementBytes 12187 (op12144.map lower) ∧ bytes12144.length=41 := by core033_kernel_decide
def op12145 : List WordIR.Op := [.bnot 12187]
def bytes12145 : Bytes := ("    let r00002f9c: u32 = !r00002f9b;\n" : String).toByteArray.data.toList
theorem checked12145 : bytes12145=statementBytes 12188 (op12145.map lower) ∧ bytes12145.length=37 := by core033_kernel_decide
def op12146 : List WordIR.Op := [.badd 12186 12188]
def bytes12146 : Bytes := ("    let r00002f9d: u32 = r00002f9a.wrapping_add(r00002f9c);\n" : String).toByteArray.data.toList
theorem checked12146 : bytes12146=statementBytes 12189 (op12146.map lower) ∧ bytes12146.length=60 := by core033_kernel_decide
def op12147 : List WordIR.Op := [.bnot 12189]
def bytes12147 : Bytes := ("    let r00002f9e: u32 = !r00002f9d;\n" : String).toByteArray.data.toList
theorem checked12147 : bytes12147=statementBytes 12190 (op12147.map lower) ∧ bytes12147.length=37 := by core033_kernel_decide
def op12148 : List WordIR.Op := [.band 12184 12190]
def bytes12148 : Bytes := ("    let r00002f9f: u32 = r00002f98 & r00002f9e;\n" : String).toByteArray.data.toList
theorem checked12148 : bytes12148=statementBytes 12191 (op12148.map lower) ∧ bytes12148.length=48 := by core033_kernel_decide
def op12149 : List WordIR.Op := [.bxor 12179 12191]
def bytes12149 : Bytes := ("    let r00002fa0: u32 = r00002f93 ^ r00002f9f;\n" : String).toByteArray.data.toList
theorem checked12149 : bytes12149=statementBytes 12192 (op12149.map lower) ∧ bytes12149.length=48 := by core033_kernel_decide
def op12150 : List WordIR.Op := [.shr 12192 31]
def bytes12150 : Bytes := ("    let r00002fa1: u32 = r00002fa0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12150 : bytes12150=statementBytes 12193 (op12150.map lower) ∧ bytes12150.length=54 := by core033_kernel_decide
def op12151 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12151 : Bytes := ("    let r00002fa2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12151 : bytes12151=statementBytes 12194 (op12151.map lower) ∧ bytes12151.length=41 := by core033_kernel_decide
def op12152 : List WordIR.Op := [.bxor 12193 12194]
def bytes12152 : Bytes := ("    let r00002fa3: u32 = r00002fa1 ^ r00002fa2;\n" : String).toByteArray.data.toList
theorem checked12152 : bytes12152=statementBytes 12195 (op12152.map lower) ∧ bytes12152.length=48 := by core033_kernel_decide
def op12153 : List WordIR.Op := [.bnot 12195]
def bytes12153 : Bytes := ("    let r00002fa4: u32 = !r00002fa3;\n" : String).toByteArray.data.toList
theorem checked12153 : bytes12153=statementBytes 12196 (op12153.map lower) ∧ bytes12153.length=37 := by core033_kernel_decide
def op12154 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12154 : Bytes := ("    let r00002fa5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12154 : bytes12154=statementBytes 12197 (op12154.map lower) ∧ bytes12154.length=41 := by core033_kernel_decide
def op12155 : List WordIR.Op := [.badd 12196 12197]
def bytes12155 : Bytes := ("    let r00002fa6: u32 = r00002fa4.wrapping_add(r00002fa5);\n" : String).toByteArray.data.toList
theorem checked12155 : bytes12155=statementBytes 12198 (op12155.map lower) ∧ bytes12155.length=60 := by core033_kernel_decide
def op12156 : List WordIR.Op := [.bnot 12198]
def bytes12156 : Bytes := ("    let r00002fa7: u32 = !r00002fa6;\n" : String).toByteArray.data.toList
theorem checked12156 : bytes12156=statementBytes 12199 (op12156.map lower) ∧ bytes12156.length=37 := by core033_kernel_decide
def op12157 : List WordIR.Op := [.band 12199 9283]
def bytes12157 : Bytes := ("    let r00002fa8: u32 = r00002fa7 & r00002443;\n" : String).toByteArray.data.toList
theorem checked12157 : bytes12157=statementBytes 12200 (op12157.map lower) ∧ bytes12157.length=48 := by core033_kernel_decide
def op12158 : List WordIR.Op := [.bxor 12174 12200]
def bytes12158 : Bytes := ("    let r00002fa9: u32 = r00002f8e ^ r00002fa8;\n" : String).toByteArray.data.toList
theorem checked12158 : bytes12158=statementBytes 12201 (op12158.map lower) ∧ bytes12158.length=48 := by core033_kernel_decide
def op12159 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12159 : Bytes := ("    let r00002faa: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12159 : bytes12159=statementBytes 12202 (op12159.map lower) ∧ bytes12159.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12096,op12097,op12098,op12099,op12100,op12101,op12102,op12103,op12104,op12105,op12106,op12107,op12108,op12109,op12110,op12111,op12112,op12113,op12114,op12115,op12116,op12117,op12118,op12119,op12120,op12121,op12122,op12123,op12124,op12125,op12126,op12127,op12128,op12129,op12130,op12131,op12132,op12133,op12134,op12135,op12136,op12137,op12138,op12139,op12140,op12141,op12142,op12143,op12144,op12145,op12146,op12147,op12148,op12149,op12150,op12151,op12152,op12153,op12154,op12155,op12156,op12157,op12158,op12159]
def chunks : List Bytes := [bytes12096,bytes12097,bytes12098,bytes12099,bytes12100,bytes12101,bytes12102,bytes12103,bytes12104,bytes12105,bytes12106,bytes12107,bytes12108,bytes12109,bytes12110,bytes12111,bytes12112,bytes12113,bytes12114,bytes12115,bytes12116,bytes12117,bytes12118,bytes12119,bytes12120,bytes12121,bytes12122,bytes12123,bytes12124,bytes12125,bytes12126,bytes12127,bytes12128,bytes12129,bytes12130,bytes12131,bytes12132,bytes12133,bytes12134,bytes12135,bytes12136,bytes12137,bytes12138,bytes12139,bytes12140,bytes12141,bytes12142,bytes12143,bytes12144,bytes12145,bytes12146,bytes12147,bytes12148,bytes12149,bytes12150,bytes12151,bytes12152,bytes12153,bytes12154,bytes12155,bytes12156,bytes12157,bytes12158,bytes12159]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12139 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12096.1 (.cons _ _ _ _ _ checked12097.1 (.cons _ _ _ _ _ checked12098.1 (.cons _ _ _ _ _ checked12099.1 (.cons _ _ _ _ _ checked12100.1 (.cons _ _ _ _ _ checked12101.1 (.cons _ _ _ _ _ checked12102.1 (.cons _ _ _ _ _ checked12103.1 (.cons _ _ _ _ _ checked12104.1 (.cons _ _ _ _ _ checked12105.1 (.cons _ _ _ _ _ checked12106.1 (.cons _ _ _ _ _ checked12107.1 (.cons _ _ _ _ _ checked12108.1 (.cons _ _ _ _ _ checked12109.1 (.cons _ _ _ _ _ checked12110.1 (.cons _ _ _ _ _ checked12111.1 (.cons _ _ _ _ _ checked12112.1 (.cons _ _ _ _ _ checked12113.1 (.cons _ _ _ _ _ checked12114.1 (.cons _ _ _ _ _ checked12115.1 (.cons _ _ _ _ _ checked12116.1 (.cons _ _ _ _ _ checked12117.1 (.cons _ _ _ _ _ checked12118.1 (.cons _ _ _ _ _ checked12119.1 (.cons _ _ _ _ _ checked12120.1 (.cons _ _ _ _ _ checked12121.1 (.cons _ _ _ _ _ checked12122.1 (.cons _ _ _ _ _ checked12123.1 (.cons _ _ _ _ _ checked12124.1 (.cons _ _ _ _ _ checked12125.1 (.cons _ _ _ _ _ checked12126.1 (.cons _ _ _ _ _ checked12127.1 (.cons _ _ _ _ _ checked12128.1 (.cons _ _ _ _ _ checked12129.1 (.cons _ _ _ _ _ checked12130.1 (.cons _ _ _ _ _ checked12131.1 (.cons _ _ _ _ _ checked12132.1 (.cons _ _ _ _ _ checked12133.1 (.cons _ _ _ _ _ checked12134.1 (.cons _ _ _ _ _ checked12135.1 (.cons _ _ _ _ _ checked12136.1 (.cons _ _ _ _ _ checked12137.1 (.cons _ _ _ _ _ checked12138.1 (.cons _ _ _ _ _ checked12139.1 (.cons _ _ _ _ _ checked12140.1 (.cons _ _ _ _ _ checked12141.1 (.cons _ _ _ _ _ checked12142.1 (.cons _ _ _ _ _ checked12143.1 (.cons _ _ _ _ _ checked12144.1 (.cons _ _ _ _ _ checked12145.1 (.cons _ _ _ _ _ checked12146.1 (.cons _ _ _ _ _ checked12147.1 (.cons _ _ _ _ _ checked12148.1 (.cons _ _ _ _ _ checked12149.1 (.cons _ _ _ _ _ checked12150.1 (.cons _ _ _ _ _ checked12151.1 (.cons _ _ _ _ _ checked12152.1 (.cons _ _ _ _ _ checked12153.1 (.cons _ _ _ _ _ checked12154.1 (.cons _ _ _ _ _ checked12155.1 (.cons _ _ _ _ _ checked12156.1 (.cons _ _ _ _ _ checked12157.1 (.cons _ _ _ _ _ checked12158.1 (.cons _ _ _ _ _ checked12159.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12139 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2874 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12096.2,checked12097.2,checked12098.2,checked12099.2,checked12100.2,checked12101.2,checked12102.2,checked12103.2,checked12104.2,checked12105.2,checked12106.2,checked12107.2,checked12108.2,checked12109.2,checked12110.2,checked12111.2,checked12112.2,checked12113.2,checked12114.2,checked12115.2,checked12116.2,checked12117.2,checked12118.2,checked12119.2,checked12120.2,checked12121.2,checked12122.2,checked12123.2,checked12124.2,checked12125.2,checked12126.2,checked12127.2,checked12128.2,checked12129.2,checked12130.2,checked12131.2,checked12132.2,checked12133.2,checked12134.2,checked12135.2,checked12136.2,checked12137.2,checked12138.2,checked12139.2,checked12140.2,checked12141.2,checked12142.2,checked12143.2,checked12144.2,checked12145.2,checked12146.2,checked12147.2,checked12148.2,checked12149.2,checked12150.2,checked12151.2,checked12152.2,checked12153.2,checked12154.2,checked12155.2,checked12156.2,checked12157.2,checked12158.2,checked12159.2]
  decide
end ArtifactPathRoundDispatchGroup189
