import ActualBranchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactBranchGroup3
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op192 : List WordIR.Op := [.band 216 217]
def bytes192 : Bytes := ("    let r000000da: u32 = r000000d8 & r000000d9;\n" : String).toByteArray.data.toList
theorem checked192 : bytes192=statementBytes 218 (op192.map lower) ∧ bytes192.length=48 := by core033_kernel_decide
def op193 : List WordIR.Op := [.shr 15 16]
def bytes193 : Bytes := ("    let r000000db: u32 = r0000000f >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked193 : bytes193=statementBytes 219 (op193.map lower) ∧ bytes193.length=54 := by core033_kernel_decide
def op194 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes194 : Bytes := ("    let r000000dc: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked194 : bytes194=statementBytes 220 (op194.map lower) ∧ bytes194.length=41 := by core033_kernel_decide
def op195 : List WordIR.Op := [.band 219 220]
def bytes195 : Bytes := ("    let r000000dd: u32 = r000000db & r000000dc;\n" : String).toByteArray.data.toList
theorem checked195 : bytes195=statementBytes 221 (op195.map lower) ∧ bytes195.length=48 := by core033_kernel_decide
def op196 : List WordIR.Op := [.shr 15 24]
def bytes196 : Bytes := ("    let r000000de: u32 = r0000000f >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked196 : bytes196=statementBytes 222 (op196.map lower) ∧ bytes196.length=54 := by core033_kernel_decide
def op197 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes197 : Bytes := ("    let r000000df: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked197 : bytes197=statementBytes 223 (op197.map lower) ∧ bytes197.length=41 := by core033_kernel_decide
def op198 : List WordIR.Op := [.band 222 223]
def bytes198 : Bytes := ("    let r000000e0: u32 = r000000de & r000000df;\n" : String).toByteArray.data.toList
theorem checked198 : bytes198=statementBytes 224 (op198.map lower) ∧ bytes198.length=48 := by core033_kernel_decide
def op199 : List WordIR.Op := [.shr 16 0]
def bytes199 : Bytes := ("    let r000000e1: u32 = r00000010 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked199 : bytes199=statementBytes 225 (op199.map lower) ∧ bytes199.length=54 := by core033_kernel_decide
def op200 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes200 : Bytes := ("    let r000000e2: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked200 : bytes200=statementBytes 226 (op200.map lower) ∧ bytes200.length=41 := by core033_kernel_decide
def op201 : List WordIR.Op := [.band 225 226]
def bytes201 : Bytes := ("    let r000000e3: u32 = r000000e1 & r000000e2;\n" : String).toByteArray.data.toList
theorem checked201 : bytes201=statementBytes 227 (op201.map lower) ∧ bytes201.length=48 := by core033_kernel_decide
def op202 : List WordIR.Op := [.shr 16 8]
def bytes202 : Bytes := ("    let r000000e4: u32 = r00000010 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked202 : bytes202=statementBytes 228 (op202.map lower) ∧ bytes202.length=54 := by core033_kernel_decide
def op203 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes203 : Bytes := ("    let r000000e5: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked203 : bytes203=statementBytes 229 (op203.map lower) ∧ bytes203.length=41 := by core033_kernel_decide
def op204 : List WordIR.Op := [.band 228 229]
def bytes204 : Bytes := ("    let r000000e6: u32 = r000000e4 & r000000e5;\n" : String).toByteArray.data.toList
theorem checked204 : bytes204=statementBytes 230 (op204.map lower) ∧ bytes204.length=48 := by core033_kernel_decide
def op205 : List WordIR.Op := [.shr 16 16]
def bytes205 : Bytes := ("    let r000000e7: u32 = r00000010 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked205 : bytes205=statementBytes 231 (op205.map lower) ∧ bytes205.length=54 := by core033_kernel_decide
def op206 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes206 : Bytes := ("    let r000000e8: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked206 : bytes206=statementBytes 232 (op206.map lower) ∧ bytes206.length=41 := by core033_kernel_decide
def op207 : List WordIR.Op := [.band 231 232]
def bytes207 : Bytes := ("    let r000000e9: u32 = r000000e7 & r000000e8;\n" : String).toByteArray.data.toList
theorem checked207 : bytes207=statementBytes 233 (op207.map lower) ∧ bytes207.length=48 := by core033_kernel_decide
def op208 : List WordIR.Op := [.shr 16 24]
def bytes208 : Bytes := ("    let r000000ea: u32 = r00000010 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked208 : bytes208=statementBytes 234 (op208.map lower) ∧ bytes208.length=54 := by core033_kernel_decide
def op209 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes209 : Bytes := ("    let r000000eb: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked209 : bytes209=statementBytes 235 (op209.map lower) ∧ bytes209.length=41 := by core033_kernel_decide
def op210 : List WordIR.Op := [.band 234 235]
def bytes210 : Bytes := ("    let r000000ec: u32 = r000000ea & r000000eb;\n" : String).toByteArray.data.toList
theorem checked210 : bytes210=statementBytes 236 (op210.map lower) ∧ bytes210.length=48 := by core033_kernel_decide
def op211 : List WordIR.Op := [.shr 17 0]
def bytes211 : Bytes := ("    let r000000ed: u32 = r00000011 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked211 : bytes211=statementBytes 237 (op211.map lower) ∧ bytes211.length=54 := by core033_kernel_decide
def op212 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes212 : Bytes := ("    let r000000ee: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked212 : bytes212=statementBytes 238 (op212.map lower) ∧ bytes212.length=41 := by core033_kernel_decide
def op213 : List WordIR.Op := [.band 237 238]
def bytes213 : Bytes := ("    let r000000ef: u32 = r000000ed & r000000ee;\n" : String).toByteArray.data.toList
theorem checked213 : bytes213=statementBytes 239 (op213.map lower) ∧ bytes213.length=48 := by core033_kernel_decide
def op214 : List WordIR.Op := [.shr 17 8]
def bytes214 : Bytes := ("    let r000000f0: u32 = r00000011 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked214 : bytes214=statementBytes 240 (op214.map lower) ∧ bytes214.length=54 := by core033_kernel_decide
def op215 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes215 : Bytes := ("    let r000000f1: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked215 : bytes215=statementBytes 241 (op215.map lower) ∧ bytes215.length=41 := by core033_kernel_decide
def op216 : List WordIR.Op := [.band 240 241]
def bytes216 : Bytes := ("    let r000000f2: u32 = r000000f0 & r000000f1;\n" : String).toByteArray.data.toList
theorem checked216 : bytes216=statementBytes 242 (op216.map lower) ∧ bytes216.length=48 := by core033_kernel_decide
def op217 : List WordIR.Op := [.shr 17 16]
def bytes217 : Bytes := ("    let r000000f3: u32 = r00000011 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked217 : bytes217=statementBytes 243 (op217.map lower) ∧ bytes217.length=54 := by core033_kernel_decide
def op218 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes218 : Bytes := ("    let r000000f4: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked218 : bytes218=statementBytes 244 (op218.map lower) ∧ bytes218.length=41 := by core033_kernel_decide
def op219 : List WordIR.Op := [.band 243 244]
def bytes219 : Bytes := ("    let r000000f5: u32 = r000000f3 & r000000f4;\n" : String).toByteArray.data.toList
theorem checked219 : bytes219=statementBytes 245 (op219.map lower) ∧ bytes219.length=48 := by core033_kernel_decide
def op220 : List WordIR.Op := [.shr 17 24]
def bytes220 : Bytes := ("    let r000000f6: u32 = r00000011 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked220 : bytes220=statementBytes 246 (op220.map lower) ∧ bytes220.length=54 := by core033_kernel_decide
def op221 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes221 : Bytes := ("    let r000000f7: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked221 : bytes221=statementBytes 247 (op221.map lower) ∧ bytes221.length=41 := by core033_kernel_decide
def op222 : List WordIR.Op := [.band 246 247]
def bytes222 : Bytes := ("    let r000000f8: u32 = r000000f6 & r000000f7;\n" : String).toByteArray.data.toList
theorem checked222 : bytes222=statementBytes 248 (op222.map lower) ∧ bytes222.length=48 := by core033_kernel_decide
def op223 : List WordIR.Op := [.shr 18 0]
def bytes223 : Bytes := ("    let r000000f9: u32 = r00000012 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked223 : bytes223=statementBytes 249 (op223.map lower) ∧ bytes223.length=54 := by core033_kernel_decide
def op224 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes224 : Bytes := ("    let r000000fa: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked224 : bytes224=statementBytes 250 (op224.map lower) ∧ bytes224.length=41 := by core033_kernel_decide
def op225 : List WordIR.Op := [.band 249 250]
def bytes225 : Bytes := ("    let r000000fb: u32 = r000000f9 & r000000fa;\n" : String).toByteArray.data.toList
theorem checked225 : bytes225=statementBytes 251 (op225.map lower) ∧ bytes225.length=48 := by core033_kernel_decide
def op226 : List WordIR.Op := [.shr 18 8]
def bytes226 : Bytes := ("    let r000000fc: u32 = r00000012 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked226 : bytes226=statementBytes 252 (op226.map lower) ∧ bytes226.length=54 := by core033_kernel_decide
def op227 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes227 : Bytes := ("    let r000000fd: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked227 : bytes227=statementBytes 253 (op227.map lower) ∧ bytes227.length=41 := by core033_kernel_decide
def op228 : List WordIR.Op := [.band 252 253]
def bytes228 : Bytes := ("    let r000000fe: u32 = r000000fc & r000000fd;\n" : String).toByteArray.data.toList
theorem checked228 : bytes228=statementBytes 254 (op228.map lower) ∧ bytes228.length=48 := by core033_kernel_decide
def op229 : List WordIR.Op := [.shr 18 16]
def bytes229 : Bytes := ("    let r000000ff: u32 = r00000012 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked229 : bytes229=statementBytes 255 (op229.map lower) ∧ bytes229.length=54 := by core033_kernel_decide
def op230 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes230 : Bytes := ("    let r00000100: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked230 : bytes230=statementBytes 256 (op230.map lower) ∧ bytes230.length=41 := by core033_kernel_decide
def op231 : List WordIR.Op := [.band 255 256]
def bytes231 : Bytes := ("    let r00000101: u32 = r000000ff & r00000100;\n" : String).toByteArray.data.toList
theorem checked231 : bytes231=statementBytes 257 (op231.map lower) ∧ bytes231.length=48 := by core033_kernel_decide
def op232 : List WordIR.Op := [.shr 18 24]
def bytes232 : Bytes := ("    let r00000102: u32 = r00000012 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked232 : bytes232=statementBytes 258 (op232.map lower) ∧ bytes232.length=54 := by core033_kernel_decide
def op233 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes233 : Bytes := ("    let r00000103: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked233 : bytes233=statementBytes 259 (op233.map lower) ∧ bytes233.length=41 := by core033_kernel_decide
def op234 : List WordIR.Op := [.band 258 259]
def bytes234 : Bytes := ("    let r00000104: u32 = r00000102 & r00000103;\n" : String).toByteArray.data.toList
theorem checked234 : bytes234=statementBytes 260 (op234.map lower) ∧ bytes234.length=48 := by core033_kernel_decide
def op235 : List WordIR.Op := [.shr 19 0]
def bytes235 : Bytes := ("    let r00000105: u32 = r00000013 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked235 : bytes235=statementBytes 261 (op235.map lower) ∧ bytes235.length=54 := by core033_kernel_decide
def op236 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes236 : Bytes := ("    let r00000106: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked236 : bytes236=statementBytes 262 (op236.map lower) ∧ bytes236.length=41 := by core033_kernel_decide
def op237 : List WordIR.Op := [.band 261 262]
def bytes237 : Bytes := ("    let r00000107: u32 = r00000105 & r00000106;\n" : String).toByteArray.data.toList
theorem checked237 : bytes237=statementBytes 263 (op237.map lower) ∧ bytes237.length=48 := by core033_kernel_decide
def op238 : List WordIR.Op := [.shr 19 8]
def bytes238 : Bytes := ("    let r00000108: u32 = r00000013 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked238 : bytes238=statementBytes 264 (op238.map lower) ∧ bytes238.length=54 := by core033_kernel_decide
def op239 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes239 : Bytes := ("    let r00000109: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked239 : bytes239=statementBytes 265 (op239.map lower) ∧ bytes239.length=41 := by core033_kernel_decide
def op240 : List WordIR.Op := [.band 264 265]
def bytes240 : Bytes := ("    let r0000010a: u32 = r00000108 & r00000109;\n" : String).toByteArray.data.toList
theorem checked240 : bytes240=statementBytes 266 (op240.map lower) ∧ bytes240.length=48 := by core033_kernel_decide
def op241 : List WordIR.Op := [.shr 19 16]
def bytes241 : Bytes := ("    let r0000010b: u32 = r00000013 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked241 : bytes241=statementBytes 267 (op241.map lower) ∧ bytes241.length=54 := by core033_kernel_decide
def op242 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes242 : Bytes := ("    let r0000010c: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked242 : bytes242=statementBytes 268 (op242.map lower) ∧ bytes242.length=41 := by core033_kernel_decide
def op243 : List WordIR.Op := [.band 267 268]
def bytes243 : Bytes := ("    let r0000010d: u32 = r0000010b & r0000010c;\n" : String).toByteArray.data.toList
theorem checked243 : bytes243=statementBytes 269 (op243.map lower) ∧ bytes243.length=48 := by core033_kernel_decide
def op244 : List WordIR.Op := [.shr 19 24]
def bytes244 : Bytes := ("    let r0000010e: u32 = r00000013 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked244 : bytes244=statementBytes 270 (op244.map lower) ∧ bytes244.length=54 := by core033_kernel_decide
def op245 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes245 : Bytes := ("    let r0000010f: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked245 : bytes245=statementBytes 271 (op245.map lower) ∧ bytes245.length=41 := by core033_kernel_decide
def op246 : List WordIR.Op := [.band 270 271]
def bytes246 : Bytes := ("    let r00000110: u32 = r0000010e & r0000010f;\n" : String).toByteArray.data.toList
theorem checked246 : bytes246=statementBytes 272 (op246.map lower) ∧ bytes246.length=48 := by core033_kernel_decide
def op247 : List WordIR.Op := [.shr 20 0]
def bytes247 : Bytes := ("    let r00000111: u32 = r00000014 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked247 : bytes247=statementBytes 273 (op247.map lower) ∧ bytes247.length=54 := by core033_kernel_decide
def op248 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes248 : Bytes := ("    let r00000112: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked248 : bytes248=statementBytes 274 (op248.map lower) ∧ bytes248.length=41 := by core033_kernel_decide
def op249 : List WordIR.Op := [.band 273 274]
def bytes249 : Bytes := ("    let r00000113: u32 = r00000111 & r00000112;\n" : String).toByteArray.data.toList
theorem checked249 : bytes249=statementBytes 275 (op249.map lower) ∧ bytes249.length=48 := by core033_kernel_decide
def op250 : List WordIR.Op := [.shr 20 8]
def bytes250 : Bytes := ("    let r00000114: u32 = r00000014 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked250 : bytes250=statementBytes 276 (op250.map lower) ∧ bytes250.length=54 := by core033_kernel_decide
def op251 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes251 : Bytes := ("    let r00000115: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked251 : bytes251=statementBytes 277 (op251.map lower) ∧ bytes251.length=41 := by core033_kernel_decide
def op252 : List WordIR.Op := [.band 276 277]
def bytes252 : Bytes := ("    let r00000116: u32 = r00000114 & r00000115;\n" : String).toByteArray.data.toList
theorem checked252 : bytes252=statementBytes 278 (op252.map lower) ∧ bytes252.length=48 := by core033_kernel_decide
def op253 : List WordIR.Op := [.shr 20 16]
def bytes253 : Bytes := ("    let r00000117: u32 = r00000014 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked253 : bytes253=statementBytes 279 (op253.map lower) ∧ bytes253.length=54 := by core033_kernel_decide
def op254 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes254 : Bytes := ("    let r00000118: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked254 : bytes254=statementBytes 280 (op254.map lower) ∧ bytes254.length=41 := by core033_kernel_decide
def op255 : List WordIR.Op := [.band 279 280]
def bytes255 : Bytes := ("    let r00000119: u32 = r00000117 & r00000118;\n" : String).toByteArray.data.toList
theorem checked255 : bytes255=statementBytes 281 (op255.map lower) ∧ bytes255.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op192,op193,op194,op195,op196,op197,op198,op199,op200,op201,op202,op203,op204,op205,op206,op207,op208,op209,op210,op211,op212,op213,op214,op215,op216,op217,op218,op219,op220,op221,op222,op223,op224,op225,op226,op227,op228,op229,op230,op231,op232,op233,op234,op235,op236,op237,op238,op239,op240,op241,op242,op243,op244,op245,op246,op247,op248,op249,op250,op251,op252,op253,op254,op255]
def chunks : List Bytes := [bytes192,bytes193,bytes194,bytes195,bytes196,bytes197,bytes198,bytes199,bytes200,bytes201,bytes202,bytes203,bytes204,bytes205,bytes206,bytes207,bytes208,bytes209,bytes210,bytes211,bytes212,bytes213,bytes214,bytes215,bytes216,bytes217,bytes218,bytes219,bytes220,bytes221,bytes222,bytes223,bytes224,bytes225,bytes226,bytes227,bytes228,bytes229,bytes230,bytes231,bytes232,bytes233,bytes234,bytes235,bytes236,bytes237,bytes238,bytes239,bytes240,bytes241,bytes242,bytes243,bytes244,bytes245,bytes246,bytes247,bytes248,bytes249,bytes250,bytes251,bytes252,bytes253,bytes254,bytes255]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 218 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked192.1 (.cons _ _ _ _ _ checked193.1 (.cons _ _ _ _ _ checked194.1 (.cons _ _ _ _ _ checked195.1 (.cons _ _ _ _ _ checked196.1 (.cons _ _ _ _ _ checked197.1 (.cons _ _ _ _ _ checked198.1 (.cons _ _ _ _ _ checked199.1 (.cons _ _ _ _ _ checked200.1 (.cons _ _ _ _ _ checked201.1 (.cons _ _ _ _ _ checked202.1 (.cons _ _ _ _ _ checked203.1 (.cons _ _ _ _ _ checked204.1 (.cons _ _ _ _ _ checked205.1 (.cons _ _ _ _ _ checked206.1 (.cons _ _ _ _ _ checked207.1 (.cons _ _ _ _ _ checked208.1 (.cons _ _ _ _ _ checked209.1 (.cons _ _ _ _ _ checked210.1 (.cons _ _ _ _ _ checked211.1 (.cons _ _ _ _ _ checked212.1 (.cons _ _ _ _ _ checked213.1 (.cons _ _ _ _ _ checked214.1 (.cons _ _ _ _ _ checked215.1 (.cons _ _ _ _ _ checked216.1 (.cons _ _ _ _ _ checked217.1 (.cons _ _ _ _ _ checked218.1 (.cons _ _ _ _ _ checked219.1 (.cons _ _ _ _ _ checked220.1 (.cons _ _ _ _ _ checked221.1 (.cons _ _ _ _ _ checked222.1 (.cons _ _ _ _ _ checked223.1 (.cons _ _ _ _ _ checked224.1 (.cons _ _ _ _ _ checked225.1 (.cons _ _ _ _ _ checked226.1 (.cons _ _ _ _ _ checked227.1 (.cons _ _ _ _ _ checked228.1 (.cons _ _ _ _ _ checked229.1 (.cons _ _ _ _ _ checked230.1 (.cons _ _ _ _ _ checked231.1 (.cons _ _ _ _ _ checked232.1 (.cons _ _ _ _ _ checked233.1 (.cons _ _ _ _ _ checked234.1 (.cons _ _ _ _ _ checked235.1 (.cons _ _ _ _ _ checked236.1 (.cons _ _ _ _ _ checked237.1 (.cons _ _ _ _ _ checked238.1 (.cons _ _ _ _ _ checked239.1 (.cons _ _ _ _ _ checked240.1 (.cons _ _ _ _ _ checked241.1 (.cons _ _ _ _ _ checked242.1 (.cons _ _ _ _ _ checked243.1 (.cons _ _ _ _ _ checked244.1 (.cons _ _ _ _ _ checked245.1 (.cons _ _ _ _ _ checked246.1 (.cons _ _ _ _ _ checked247.1 (.cons _ _ _ _ _ checked248.1 (.cons _ _ _ _ _ checked249.1 (.cons _ _ _ _ _ checked250.1 (.cons _ _ _ _ _ checked251.1 (.cons _ _ _ _ _ checked252.1 (.cons _ _ _ _ _ checked253.1 (.cons _ _ _ _ _ checked254.1 (.cons _ _ _ _ _ checked255.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 218 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3051 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked192.2,checked193.2,checked194.2,checked195.2,checked196.2,checked197.2,checked198.2,checked199.2,checked200.2,checked201.2,checked202.2,checked203.2,checked204.2,checked205.2,checked206.2,checked207.2,checked208.2,checked209.2,checked210.2,checked211.2,checked212.2,checked213.2,checked214.2,checked215.2,checked216.2,checked217.2,checked218.2,checked219.2,checked220.2,checked221.2,checked222.2,checked223.2,checked224.2,checked225.2,checked226.2,checked227.2,checked228.2,checked229.2,checked230.2,checked231.2,checked232.2,checked233.2,checked234.2,checked235.2,checked236.2,checked237.2,checked238.2,checked239.2,checked240.2,checked241.2,checked242.2,checked243.2,checked244.2,checked245.2,checked246.2,checked247.2,checked248.2,checked249.2,checked250.2,checked251.2,checked252.2,checked253.2,checked254.2,checked255.2]
  decide
end ArtifactBranchGroup3
