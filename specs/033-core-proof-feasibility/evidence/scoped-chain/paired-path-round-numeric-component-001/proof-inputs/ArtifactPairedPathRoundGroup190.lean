import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup190
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12160 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12160 : Bytes := ("    let r00002fe0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12160 : bytes12160=statementBytes 12256 (op12160.map lower) ∧ bytes12160.length=41 := by core033_kernel_decide
def op12161 : List WordIR.Op := [.bnot 12256]
def bytes12161 : Bytes := ("    let r00002fe1: u32 = !r00002fe0;\n" : String).toByteArray.data.toList
theorem checked12161 : bytes12161=statementBytes 12257 (op12161.map lower) ∧ bytes12161.length=37 := by core033_kernel_decide
def op12162 : List WordIR.Op := [.band 12255 12257]
def bytes12162 : Bytes := ("    let r00002fe2: u32 = r00002fdf & r00002fe1;\n" : String).toByteArray.data.toList
theorem checked12162 : bytes12162=statementBytes 12258 (op12162.map lower) ∧ bytes12162.length=48 := by core033_kernel_decide
def op12163 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12163 : Bytes := ("    let r00002fe3: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12163 : bytes12163=statementBytes 12259 (op12163.map lower) ∧ bytes12163.length=41 := by core033_kernel_decide
def op12164 : List WordIR.Op := [.bxor 442 12259]
def bytes12164 : Bytes := ("    let r00002fe4: u32 = r000001ba ^ r00002fe3;\n" : String).toByteArray.data.toList
theorem checked12164 : bytes12164=statementBytes 12260 (op12164.map lower) ∧ bytes12164.length=48 := by core033_kernel_decide
def op12165 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12165 : Bytes := ("    let r00002fe5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12165 : bytes12165=statementBytes 12261 (op12165.map lower) ∧ bytes12165.length=41 := by core033_kernel_decide
def op12166 : List WordIR.Op := [.bnot 12261]
def bytes12166 : Bytes := ("    let r00002fe6: u32 = !r00002fe5;\n" : String).toByteArray.data.toList
theorem checked12166 : bytes12166=statementBytes 12262 (op12166.map lower) ∧ bytes12166.length=37 := by core033_kernel_decide
def op12167 : List WordIR.Op := [.bxor 12260 12262]
def bytes12167 : Bytes := ("    let r00002fe7: u32 = r00002fe4 ^ r00002fe6;\n" : String).toByteArray.data.toList
theorem checked12167 : bytes12167=statementBytes 12263 (op12167.map lower) ∧ bytes12167.length=48 := by core033_kernel_decide
def op12168 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12168 : Bytes := ("    let r00002fe8: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12168 : bytes12168=statementBytes 12264 (op12168.map lower) ∧ bytes12168.length=41 := by core033_kernel_decide
def op12169 : List WordIR.Op := [.bxor 442 12264]
def bytes12169 : Bytes := ("    let r00002fe9: u32 = r000001ba ^ r00002fe8;\n" : String).toByteArray.data.toList
theorem checked12169 : bytes12169=statementBytes 12265 (op12169.map lower) ∧ bytes12169.length=48 := by core033_kernel_decide
def op12170 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12170 : Bytes := ("    let r00002fea: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12170 : bytes12170=statementBytes 12266 (op12170.map lower) ∧ bytes12170.length=41 := by core033_kernel_decide
def op12171 : List WordIR.Op := [.bnot 12266]
def bytes12171 : Bytes := ("    let r00002feb: u32 = !r00002fea;\n" : String).toByteArray.data.toList
theorem checked12171 : bytes12171=statementBytes 12267 (op12171.map lower) ∧ bytes12171.length=37 := by core033_kernel_decide
def op12172 : List WordIR.Op := [.badd 12265 12267]
def bytes12172 : Bytes := ("    let r00002fec: u32 = r00002fe9.wrapping_add(r00002feb);\n" : String).toByteArray.data.toList
theorem checked12172 : bytes12172=statementBytes 12268 (op12172.map lower) ∧ bytes12172.length=60 := by core033_kernel_decide
def op12173 : List WordIR.Op := [.bnot 12268]
def bytes12173 : Bytes := ("    let r00002fed: u32 = !r00002fec;\n" : String).toByteArray.data.toList
theorem checked12173 : bytes12173=statementBytes 12269 (op12173.map lower) ∧ bytes12173.length=37 := by core033_kernel_decide
def op12174 : List WordIR.Op := [.band 12263 12269]
def bytes12174 : Bytes := ("    let r00002fee: u32 = r00002fe7 & r00002fed;\n" : String).toByteArray.data.toList
theorem checked12174 : bytes12174=statementBytes 12270 (op12174.map lower) ∧ bytes12174.length=48 := by core033_kernel_decide
def op12175 : List WordIR.Op := [.bxor 12258 12270]
def bytes12175 : Bytes := ("    let r00002fef: u32 = r00002fe2 ^ r00002fee;\n" : String).toByteArray.data.toList
theorem checked12175 : bytes12175=statementBytes 12271 (op12175.map lower) ∧ bytes12175.length=48 := by core033_kernel_decide
def op12176 : List WordIR.Op := [.shr 12271 31]
def bytes12176 : Bytes := ("    let r00002ff0: u32 = r00002fef >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12176 : bytes12176=statementBytes 12272 (op12176.map lower) ∧ bytes12176.length=54 := by core033_kernel_decide
def op12177 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12177 : Bytes := ("    let r00002ff1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12177 : bytes12177=statementBytes 12273 (op12177.map lower) ∧ bytes12177.length=41 := by core033_kernel_decide
def op12178 : List WordIR.Op := [.bxor 12272 12273]
def bytes12178 : Bytes := ("    let r00002ff2: u32 = r00002ff0 ^ r00002ff1;\n" : String).toByteArray.data.toList
theorem checked12178 : bytes12178=statementBytes 12274 (op12178.map lower) ∧ bytes12178.length=48 := by core033_kernel_decide
def op12179 : List WordIR.Op := [.bnot 12274]
def bytes12179 : Bytes := ("    let r00002ff3: u32 = !r00002ff2;\n" : String).toByteArray.data.toList
theorem checked12179 : bytes12179=statementBytes 12275 (op12179.map lower) ∧ bytes12179.length=37 := by core033_kernel_decide
def op12180 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12180 : Bytes := ("    let r00002ff4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12180 : bytes12180=statementBytes 12276 (op12180.map lower) ∧ bytes12180.length=41 := by core033_kernel_decide
def op12181 : List WordIR.Op := [.badd 12275 12276]
def bytes12181 : Bytes := ("    let r00002ff5: u32 = r00002ff3.wrapping_add(r00002ff4);\n" : String).toByteArray.data.toList
theorem checked12181 : bytes12181=statementBytes 12277 (op12181.map lower) ∧ bytes12181.length=60 := by core033_kernel_decide
def op12182 : List WordIR.Op := [.band 12277 10256]
def bytes12182 : Bytes := ("    let r00002ff6: u32 = r00002ff5 & r00002810;\n" : String).toByteArray.data.toList
theorem checked12182 : bytes12182=statementBytes 12278 (op12182.map lower) ∧ bytes12182.length=48 := by core033_kernel_decide
def op12183 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12183 : Bytes := ("    let r00002ff7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12183 : bytes12183=statementBytes 12279 (op12183.map lower) ∧ bytes12183.length=41 := by core033_kernel_decide
def op12184 : List WordIR.Op := [.bxor 442 12279]
def bytes12184 : Bytes := ("    let r00002ff8: u32 = r000001ba ^ r00002ff7;\n" : String).toByteArray.data.toList
theorem checked12184 : bytes12184=statementBytes 12280 (op12184.map lower) ∧ bytes12184.length=48 := by core033_kernel_decide
def op12185 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12185 : Bytes := ("    let r00002ff9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12185 : bytes12185=statementBytes 12281 (op12185.map lower) ∧ bytes12185.length=41 := by core033_kernel_decide
def op12186 : List WordIR.Op := [.bnot 12281]
def bytes12186 : Bytes := ("    let r00002ffa: u32 = !r00002ff9;\n" : String).toByteArray.data.toList
theorem checked12186 : bytes12186=statementBytes 12282 (op12186.map lower) ∧ bytes12186.length=37 := by core033_kernel_decide
def op12187 : List WordIR.Op := [.band 12280 12282]
def bytes12187 : Bytes := ("    let r00002ffb: u32 = r00002ff8 & r00002ffa;\n" : String).toByteArray.data.toList
theorem checked12187 : bytes12187=statementBytes 12283 (op12187.map lower) ∧ bytes12187.length=48 := by core033_kernel_decide
def op12188 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12188 : Bytes := ("    let r00002ffc: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12188 : bytes12188=statementBytes 12284 (op12188.map lower) ∧ bytes12188.length=41 := by core033_kernel_decide
def op12189 : List WordIR.Op := [.bxor 442 12284]
def bytes12189 : Bytes := ("    let r00002ffd: u32 = r000001ba ^ r00002ffc;\n" : String).toByteArray.data.toList
theorem checked12189 : bytes12189=statementBytes 12285 (op12189.map lower) ∧ bytes12189.length=48 := by core033_kernel_decide
def op12190 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12190 : Bytes := ("    let r00002ffe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12190 : bytes12190=statementBytes 12286 (op12190.map lower) ∧ bytes12190.length=41 := by core033_kernel_decide
def op12191 : List WordIR.Op := [.bnot 12286]
def bytes12191 : Bytes := ("    let r00002fff: u32 = !r00002ffe;\n" : String).toByteArray.data.toList
theorem checked12191 : bytes12191=statementBytes 12287 (op12191.map lower) ∧ bytes12191.length=37 := by core033_kernel_decide
def op12192 : List WordIR.Op := [.bxor 12285 12287]
def bytes12192 : Bytes := ("    let r00003000: u32 = r00002ffd ^ r00002fff;\n" : String).toByteArray.data.toList
theorem checked12192 : bytes12192=statementBytes 12288 (op12192.map lower) ∧ bytes12192.length=48 := by core033_kernel_decide
def op12193 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12193 : Bytes := ("    let r00003001: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12193 : bytes12193=statementBytes 12289 (op12193.map lower) ∧ bytes12193.length=41 := by core033_kernel_decide
def op12194 : List WordIR.Op := [.bxor 442 12289]
def bytes12194 : Bytes := ("    let r00003002: u32 = r000001ba ^ r00003001;\n" : String).toByteArray.data.toList
theorem checked12194 : bytes12194=statementBytes 12290 (op12194.map lower) ∧ bytes12194.length=48 := by core033_kernel_decide
def op12195 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12195 : Bytes := ("    let r00003003: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12195 : bytes12195=statementBytes 12291 (op12195.map lower) ∧ bytes12195.length=41 := by core033_kernel_decide
def op12196 : List WordIR.Op := [.bnot 12291]
def bytes12196 : Bytes := ("    let r00003004: u32 = !r00003003;\n" : String).toByteArray.data.toList
theorem checked12196 : bytes12196=statementBytes 12292 (op12196.map lower) ∧ bytes12196.length=37 := by core033_kernel_decide
def op12197 : List WordIR.Op := [.badd 12290 12292]
def bytes12197 : Bytes := ("    let r00003005: u32 = r00003002.wrapping_add(r00003004);\n" : String).toByteArray.data.toList
theorem checked12197 : bytes12197=statementBytes 12293 (op12197.map lower) ∧ bytes12197.length=60 := by core033_kernel_decide
def op12198 : List WordIR.Op := [.bnot 12293]
def bytes12198 : Bytes := ("    let r00003006: u32 = !r00003005;\n" : String).toByteArray.data.toList
theorem checked12198 : bytes12198=statementBytes 12294 (op12198.map lower) ∧ bytes12198.length=37 := by core033_kernel_decide
def op12199 : List WordIR.Op := [.band 12288 12294]
def bytes12199 : Bytes := ("    let r00003007: u32 = r00003000 & r00003006;\n" : String).toByteArray.data.toList
theorem checked12199 : bytes12199=statementBytes 12295 (op12199.map lower) ∧ bytes12199.length=48 := by core033_kernel_decide
def op12200 : List WordIR.Op := [.bxor 12283 12295]
def bytes12200 : Bytes := ("    let r00003008: u32 = r00002ffb ^ r00003007;\n" : String).toByteArray.data.toList
theorem checked12200 : bytes12200=statementBytes 12296 (op12200.map lower) ∧ bytes12200.length=48 := by core033_kernel_decide
def op12201 : List WordIR.Op := [.shr 12296 31]
def bytes12201 : Bytes := ("    let r00003009: u32 = r00003008 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12201 : bytes12201=statementBytes 12297 (op12201.map lower) ∧ bytes12201.length=54 := by core033_kernel_decide
def op12202 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12202 : Bytes := ("    let r0000300a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12202 : bytes12202=statementBytes 12298 (op12202.map lower) ∧ bytes12202.length=41 := by core033_kernel_decide
def op12203 : List WordIR.Op := [.bxor 12297 12298]
def bytes12203 : Bytes := ("    let r0000300b: u32 = r00003009 ^ r0000300a;\n" : String).toByteArray.data.toList
theorem checked12203 : bytes12203=statementBytes 12299 (op12203.map lower) ∧ bytes12203.length=48 := by core033_kernel_decide
def op12204 : List WordIR.Op := [.bnot 12299]
def bytes12204 : Bytes := ("    let r0000300c: u32 = !r0000300b;\n" : String).toByteArray.data.toList
theorem checked12204 : bytes12204=statementBytes 12300 (op12204.map lower) ∧ bytes12204.length=37 := by core033_kernel_decide
def op12205 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12205 : Bytes := ("    let r0000300d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12205 : bytes12205=statementBytes 12301 (op12205.map lower) ∧ bytes12205.length=41 := by core033_kernel_decide
def op12206 : List WordIR.Op := [.badd 12300 12301]
def bytes12206 : Bytes := ("    let r0000300e: u32 = r0000300c.wrapping_add(r0000300d);\n" : String).toByteArray.data.toList
theorem checked12206 : bytes12206=statementBytes 12302 (op12206.map lower) ∧ bytes12206.length=60 := by core033_kernel_decide
def op12207 : List WordIR.Op := [.bnot 12302]
def bytes12207 : Bytes := ("    let r0000300f: u32 = !r0000300e;\n" : String).toByteArray.data.toList
theorem checked12207 : bytes12207=statementBytes 12303 (op12207.map lower) ∧ bytes12207.length=37 := by core033_kernel_decide
def op12208 : List WordIR.Op := [.band 12303 935]
def bytes12208 : Bytes := ("    let r00003010: u32 = r0000300f & r000003a7;\n" : String).toByteArray.data.toList
theorem checked12208 : bytes12208=statementBytes 12304 (op12208.map lower) ∧ bytes12208.length=48 := by core033_kernel_decide
def op12209 : List WordIR.Op := [.bxor 12278 12304]
def bytes12209 : Bytes := ("    let r00003011: u32 = r00002ff6 ^ r00003010;\n" : String).toByteArray.data.toList
theorem checked12209 : bytes12209=statementBytes 12305 (op12209.map lower) ∧ bytes12209.length=48 := by core033_kernel_decide
def op12210 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12210 : Bytes := ("    let r00003012: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12210 : bytes12210=statementBytes 12306 (op12210.map lower) ∧ bytes12210.length=41 := by core033_kernel_decide
def op12211 : List WordIR.Op := [.bxor 442 12306]
def bytes12211 : Bytes := ("    let r00003013: u32 = r000001ba ^ r00003012;\n" : String).toByteArray.data.toList
theorem checked12211 : bytes12211=statementBytes 12307 (op12211.map lower) ∧ bytes12211.length=48 := by core033_kernel_decide
def op12212 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12212 : Bytes := ("    let r00003014: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12212 : bytes12212=statementBytes 12308 (op12212.map lower) ∧ bytes12212.length=41 := by core033_kernel_decide
def op12213 : List WordIR.Op := [.bnot 12308]
def bytes12213 : Bytes := ("    let r00003015: u32 = !r00003014;\n" : String).toByteArray.data.toList
theorem checked12213 : bytes12213=statementBytes 12309 (op12213.map lower) ∧ bytes12213.length=37 := by core033_kernel_decide
def op12214 : List WordIR.Op := [.band 12307 12309]
def bytes12214 : Bytes := ("    let r00003016: u32 = r00003013 & r00003015;\n" : String).toByteArray.data.toList
theorem checked12214 : bytes12214=statementBytes 12310 (op12214.map lower) ∧ bytes12214.length=48 := by core033_kernel_decide
def op12215 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12215 : Bytes := ("    let r00003017: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12215 : bytes12215=statementBytes 12311 (op12215.map lower) ∧ bytes12215.length=41 := by core033_kernel_decide
def op12216 : List WordIR.Op := [.bxor 442 12311]
def bytes12216 : Bytes := ("    let r00003018: u32 = r000001ba ^ r00003017;\n" : String).toByteArray.data.toList
theorem checked12216 : bytes12216=statementBytes 12312 (op12216.map lower) ∧ bytes12216.length=48 := by core033_kernel_decide
def op12217 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12217 : Bytes := ("    let r00003019: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12217 : bytes12217=statementBytes 12313 (op12217.map lower) ∧ bytes12217.length=41 := by core033_kernel_decide
def op12218 : List WordIR.Op := [.bnot 12313]
def bytes12218 : Bytes := ("    let r0000301a: u32 = !r00003019;\n" : String).toByteArray.data.toList
theorem checked12218 : bytes12218=statementBytes 12314 (op12218.map lower) ∧ bytes12218.length=37 := by core033_kernel_decide
def op12219 : List WordIR.Op := [.bxor 12312 12314]
def bytes12219 : Bytes := ("    let r0000301b: u32 = r00003018 ^ r0000301a;\n" : String).toByteArray.data.toList
theorem checked12219 : bytes12219=statementBytes 12315 (op12219.map lower) ∧ bytes12219.length=48 := by core033_kernel_decide
def op12220 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12220 : Bytes := ("    let r0000301c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12220 : bytes12220=statementBytes 12316 (op12220.map lower) ∧ bytes12220.length=41 := by core033_kernel_decide
def op12221 : List WordIR.Op := [.bxor 442 12316]
def bytes12221 : Bytes := ("    let r0000301d: u32 = r000001ba ^ r0000301c;\n" : String).toByteArray.data.toList
theorem checked12221 : bytes12221=statementBytes 12317 (op12221.map lower) ∧ bytes12221.length=48 := by core033_kernel_decide
def op12222 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12222 : Bytes := ("    let r0000301e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12222 : bytes12222=statementBytes 12318 (op12222.map lower) ∧ bytes12222.length=41 := by core033_kernel_decide
def op12223 : List WordIR.Op := [.bnot 12318]
def bytes12223 : Bytes := ("    let r0000301f: u32 = !r0000301e;\n" : String).toByteArray.data.toList
theorem checked12223 : bytes12223=statementBytes 12319 (op12223.map lower) ∧ bytes12223.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12160,op12161,op12162,op12163,op12164,op12165,op12166,op12167,op12168,op12169,op12170,op12171,op12172,op12173,op12174,op12175,op12176,op12177,op12178,op12179,op12180,op12181,op12182,op12183,op12184,op12185,op12186,op12187,op12188,op12189,op12190,op12191,op12192,op12193,op12194,op12195,op12196,op12197,op12198,op12199,op12200,op12201,op12202,op12203,op12204,op12205,op12206,op12207,op12208,op12209,op12210,op12211,op12212,op12213,op12214,op12215,op12216,op12217,op12218,op12219,op12220,op12221,op12222,op12223]
def chunks : List Bytes := [bytes12160,bytes12161,bytes12162,bytes12163,bytes12164,bytes12165,bytes12166,bytes12167,bytes12168,bytes12169,bytes12170,bytes12171,bytes12172,bytes12173,bytes12174,bytes12175,bytes12176,bytes12177,bytes12178,bytes12179,bytes12180,bytes12181,bytes12182,bytes12183,bytes12184,bytes12185,bytes12186,bytes12187,bytes12188,bytes12189,bytes12190,bytes12191,bytes12192,bytes12193,bytes12194,bytes12195,bytes12196,bytes12197,bytes12198,bytes12199,bytes12200,bytes12201,bytes12202,bytes12203,bytes12204,bytes12205,bytes12206,bytes12207,bytes12208,bytes12209,bytes12210,bytes12211,bytes12212,bytes12213,bytes12214,bytes12215,bytes12216,bytes12217,bytes12218,bytes12219,bytes12220,bytes12221,bytes12222,bytes12223]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12256 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12160.1 (.cons _ _ _ _ _ checked12161.1 (.cons _ _ _ _ _ checked12162.1 (.cons _ _ _ _ _ checked12163.1 (.cons _ _ _ _ _ checked12164.1 (.cons _ _ _ _ _ checked12165.1 (.cons _ _ _ _ _ checked12166.1 (.cons _ _ _ _ _ checked12167.1 (.cons _ _ _ _ _ checked12168.1 (.cons _ _ _ _ _ checked12169.1 (.cons _ _ _ _ _ checked12170.1 (.cons _ _ _ _ _ checked12171.1 (.cons _ _ _ _ _ checked12172.1 (.cons _ _ _ _ _ checked12173.1 (.cons _ _ _ _ _ checked12174.1 (.cons _ _ _ _ _ checked12175.1 (.cons _ _ _ _ _ checked12176.1 (.cons _ _ _ _ _ checked12177.1 (.cons _ _ _ _ _ checked12178.1 (.cons _ _ _ _ _ checked12179.1 (.cons _ _ _ _ _ checked12180.1 (.cons _ _ _ _ _ checked12181.1 (.cons _ _ _ _ _ checked12182.1 (.cons _ _ _ _ _ checked12183.1 (.cons _ _ _ _ _ checked12184.1 (.cons _ _ _ _ _ checked12185.1 (.cons _ _ _ _ _ checked12186.1 (.cons _ _ _ _ _ checked12187.1 (.cons _ _ _ _ _ checked12188.1 (.cons _ _ _ _ _ checked12189.1 (.cons _ _ _ _ _ checked12190.1 (.cons _ _ _ _ _ checked12191.1 (.cons _ _ _ _ _ checked12192.1 (.cons _ _ _ _ _ checked12193.1 (.cons _ _ _ _ _ checked12194.1 (.cons _ _ _ _ _ checked12195.1 (.cons _ _ _ _ _ checked12196.1 (.cons _ _ _ _ _ checked12197.1 (.cons _ _ _ _ _ checked12198.1 (.cons _ _ _ _ _ checked12199.1 (.cons _ _ _ _ _ checked12200.1 (.cons _ _ _ _ _ checked12201.1 (.cons _ _ _ _ _ checked12202.1 (.cons _ _ _ _ _ checked12203.1 (.cons _ _ _ _ _ checked12204.1 (.cons _ _ _ _ _ checked12205.1 (.cons _ _ _ _ _ checked12206.1 (.cons _ _ _ _ _ checked12207.1 (.cons _ _ _ _ _ checked12208.1 (.cons _ _ _ _ _ checked12209.1 (.cons _ _ _ _ _ checked12210.1 (.cons _ _ _ _ _ checked12211.1 (.cons _ _ _ _ _ checked12212.1 (.cons _ _ _ _ _ checked12213.1 (.cons _ _ _ _ _ checked12214.1 (.cons _ _ _ _ _ checked12215.1 (.cons _ _ _ _ _ checked12216.1 (.cons _ _ _ _ _ checked12217.1 (.cons _ _ _ _ _ checked12218.1 (.cons _ _ _ _ _ checked12219.1 (.cons _ _ _ _ _ checked12220.1 (.cons _ _ _ _ _ checked12221.1 (.cons _ _ _ _ _ checked12222.1 (.cons _ _ _ _ _ checked12223.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12256 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2831 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12160.2,checked12161.2,checked12162.2,checked12163.2,checked12164.2,checked12165.2,checked12166.2,checked12167.2,checked12168.2,checked12169.2,checked12170.2,checked12171.2,checked12172.2,checked12173.2,checked12174.2,checked12175.2,checked12176.2,checked12177.2,checked12178.2,checked12179.2,checked12180.2,checked12181.2,checked12182.2,checked12183.2,checked12184.2,checked12185.2,checked12186.2,checked12187.2,checked12188.2,checked12189.2,checked12190.2,checked12191.2,checked12192.2,checked12193.2,checked12194.2,checked12195.2,checked12196.2,checked12197.2,checked12198.2,checked12199.2,checked12200.2,checked12201.2,checked12202.2,checked12203.2,checked12204.2,checked12205.2,checked12206.2,checked12207.2,checked12208.2,checked12209.2,checked12210.2,checked12211.2,checked12212.2,checked12213.2,checked12214.2,checked12215.2,checked12216.2,checked12217.2,checked12218.2,checked12219.2,checked12220.2,checked12221.2,checked12222.2,checked12223.2]
  decide
end ArtifactPairedPathRoundGroup190
