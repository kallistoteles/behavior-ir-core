import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup3
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op192 : List WordIR.Op := [.band 195 20]
def bytes192 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000eb: u32 = r000000c3 & r00000014;\n" : String)
theorem checked192 : bytes192=statementBytes 235 (op192.map lower) ∧ bytes192.length=48 := by core033_kernel_decide
def op193 : List WordIR.Op := [.bxor 234 235]
def bytes193 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ec: u32 = r000000ea ^ r000000eb;\n" : String)
theorem checked193 : bytes193=statementBytes 236 (op193.map lower) ∧ bytes193.length=48 := by core033_kernel_decide
def op194 : List WordIR.Op := [.band 193 13]
def bytes194 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ed: u32 = r000000c1 & r0000000d;\n" : String)
theorem checked194 : bytes194=statementBytes 237 (op194.map lower) ∧ bytes194.length=48 := by core033_kernel_decide
def op195 : List WordIR.Op := [.band 195 21]
def bytes195 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ee: u32 = r000000c3 & r00000015;\n" : String)
theorem checked195 : bytes195=statementBytes 238 (op195.map lower) ∧ bytes195.length=48 := by core033_kernel_decide
def op196 : List WordIR.Op := [.bxor 237 238]
def bytes196 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ef: u32 = r000000ed ^ r000000ee;\n" : String)
theorem checked196 : bytes196=statementBytes 239 (op196.map lower) ∧ bytes196.length=48 := by core033_kernel_decide
def op197 : List WordIR.Op := [.band 193 14]
def bytes197 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f0: u32 = r000000c1 & r0000000e;\n" : String)
theorem checked197 : bytes197=statementBytes 240 (op197.map lower) ∧ bytes197.length=48 := by core033_kernel_decide
def op198 : List WordIR.Op := [.band 195 22]
def bytes198 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f1: u32 = r000000c3 & r00000016;\n" : String)
theorem checked198 : bytes198=statementBytes 241 (op198.map lower) ∧ bytes198.length=48 := by core033_kernel_decide
def op199 : List WordIR.Op := [.bxor 240 241]
def bytes199 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f2: u32 = r000000f0 ^ r000000f1;\n" : String)
theorem checked199 : bytes199=statementBytes 242 (op199.map lower) ∧ bytes199.length=48 := by core033_kernel_decide
def op200 : List WordIR.Op := [.band 193 15]
def bytes200 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f3: u32 = r000000c1 & r0000000f;\n" : String)
theorem checked200 : bytes200=statementBytes 243 (op200.map lower) ∧ bytes200.length=48 := by core033_kernel_decide
def op201 : List WordIR.Op := [.band 195 23]
def bytes201 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f4: u32 = r000000c3 & r00000017;\n" : String)
theorem checked201 : bytes201=statementBytes 244 (op201.map lower) ∧ bytes201.length=48 := by core033_kernel_decide
def op202 : List WordIR.Op := [.bxor 243 244]
def bytes202 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f5: u32 = r000000f3 ^ r000000f4;\n" : String)
theorem checked202 : bytes202=statementBytes 245 (op202.map lower) ∧ bytes202.length=48 := by core033_kernel_decide
def op203 : List WordIR.Op := [.band 193 16]
def bytes203 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f6: u32 = r000000c1 & r00000010;\n" : String)
theorem checked203 : bytes203=statementBytes 246 (op203.map lower) ∧ bytes203.length=48 := by core033_kernel_decide
def op204 : List WordIR.Op := [.band 195 24]
def bytes204 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f7: u32 = r000000c3 & r00000018;\n" : String)
theorem checked204 : bytes204=statementBytes 247 (op204.map lower) ∧ bytes204.length=48 := by core033_kernel_decide
def op205 : List WordIR.Op := [.bxor 246 247]
def bytes205 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f8: u32 = r000000f6 ^ r000000f7;\n" : String)
theorem checked205 : bytes205=statementBytes 248 (op205.map lower) ∧ bytes205.length=48 := by core033_kernel_decide
def op206 : List WordIR.Op := [.band 193 17]
def bytes206 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f9: u32 = r000000c1 & r00000011;\n" : String)
theorem checked206 : bytes206=statementBytes 249 (op206.map lower) ∧ bytes206.length=48 := by core033_kernel_decide
def op207 : List WordIR.Op := [.band 195 25]
def bytes207 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fa: u32 = r000000c3 & r00000019;\n" : String)
theorem checked207 : bytes207=statementBytes 250 (op207.map lower) ∧ bytes207.length=48 := by core033_kernel_decide
def op208 : List WordIR.Op := [.bxor 249 250]
def bytes208 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fb: u32 = r000000f9 ^ r000000fa;\n" : String)
theorem checked208 : bytes208=statementBytes 251 (op208.map lower) ∧ bytes208.length=48 := by core033_kernel_decide
def op209 : List WordIR.Op := [.band 193 18]
def bytes209 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fc: u32 = r000000c1 & r00000012;\n" : String)
theorem checked209 : bytes209=statementBytes 252 (op209.map lower) ∧ bytes209.length=48 := by core033_kernel_decide
def op210 : List WordIR.Op := [.band 195 26]
def bytes210 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fd: u32 = r000000c3 & r0000001a;\n" : String)
theorem checked210 : bytes210=statementBytes 253 (op210.map lower) ∧ bytes210.length=48 := by core033_kernel_decide
def op211 : List WordIR.Op := [.bxor 252 253]
def bytes211 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fe: u32 = r000000fc ^ r000000fd;\n" : String)
theorem checked211 : bytes211=statementBytes 254 (op211.map lower) ∧ bytes211.length=48 := by core033_kernel_decide
def op212 : List WordIR.Op := [.band 193 27]
def bytes212 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ff: u32 = r000000c1 & r0000001b;\n" : String)
theorem checked212 : bytes212=statementBytes 255 (op212.map lower) ∧ bytes212.length=48 := by core033_kernel_decide
def op213 : List WordIR.Op := [.band 195 29]
def bytes213 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000100: u32 = r000000c3 & r0000001d;\n" : String)
theorem checked213 : bytes213=statementBytes 256 (op213.map lower) ∧ bytes213.length=48 := by core033_kernel_decide
def op214 : List WordIR.Op := [.bxor 255 256]
def bytes214 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000101: u32 = r000000ff ^ r00000100;\n" : String)
theorem checked214 : bytes214=statementBytes 257 (op214.map lower) ∧ bytes214.length=48 := by core033_kernel_decide
def op215 : List WordIR.Op := [.band 193 28]
def bytes215 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000102: u32 = r000000c1 & r0000001c;\n" : String)
theorem checked215 : bytes215=statementBytes 258 (op215.map lower) ∧ bytes215.length=48 := by core033_kernel_decide
def op216 : List WordIR.Op := [.band 195 30]
def bytes216 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000103: u32 = r000000c3 & r0000001e;\n" : String)
theorem checked216 : bytes216=statementBytes 259 (op216.map lower) ∧ bytes216.length=48 := by core033_kernel_decide
def op217 : List WordIR.Op := [.bxor 258 259]
def bytes217 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000104: u32 = r00000102 ^ r00000103;\n" : String)
theorem checked217 : bytes217=statementBytes 260 (op217.map lower) ∧ bytes217.length=48 := by core033_kernel_decide
def op218 : List WordIR.Op := [.band 193 31]
def bytes218 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000105: u32 = r000000c1 & r0000001f;\n" : String)
theorem checked218 : bytes218=statementBytes 261 (op218.map lower) ∧ bytes218.length=48 := by core033_kernel_decide
def op219 : List WordIR.Op := [.band 195 32]
def bytes219 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000106: u32 = r000000c3 & r00000020;\n" : String)
theorem checked219 : bytes219=statementBytes 262 (op219.map lower) ∧ bytes219.length=48 := by core033_kernel_decide
def op220 : List WordIR.Op := [.bxor 261 262]
def bytes220 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000107: u32 = r00000105 ^ r00000106;\n" : String)
theorem checked220 : bytes220=statementBytes 263 (op220.map lower) ∧ bytes220.length=48 := by core033_kernel_decide
def op221 : List WordIR.Op := [.band 193 33]
def bytes221 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000108: u32 = r000000c1 & r00000021;\n" : String)
theorem checked221 : bytes221=statementBytes 264 (op221.map lower) ∧ bytes221.length=48 := by core033_kernel_decide
def op222 : List WordIR.Op := [.band 195 34]
def bytes222 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000109: u32 = r000000c3 & r00000022;\n" : String)
theorem checked222 : bytes222=statementBytes 265 (op222.map lower) ∧ bytes222.length=48 := by core033_kernel_decide
def op223 : List WordIR.Op := [.bxor 264 265]
def bytes223 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010a: u32 = r00000108 ^ r00000109;\n" : String)
theorem checked223 : bytes223=statementBytes 266 (op223.map lower) ∧ bytes223.length=48 := by core033_kernel_decide
def op224 : List WordIR.Op := [.shr 191 1]
def bytes224 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010b: u32 = r000000bf >> 0x00000001_u32;\n" : String)
theorem checked224 : bytes224=statementBytes 267 (op224.map lower) ∧ bytes224.length=54 := by core033_kernel_decide
def op225 : List WordIR.Op := [.band 267 50]
def bytes225 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010c: u32 = r0000010b & r00000032;\n" : String)
theorem checked225 : bytes225=statementBytes 268 (op225.map lower) ∧ bytes225.length=48 := by core033_kernel_decide
def op226 : List WordIR.Op := [.bxor 267 50]
def bytes226 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010d: u32 = r0000010b ^ r00000032;\n" : String)
theorem checked226 : bytes226=statementBytes 269 (op226.map lower) ∧ bytes226.length=48 := by core033_kernel_decide
def op227 : List WordIR.Op := [.badd 267 50]
def bytes227 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010e: u32 = r0000010b.wrapping_add(r00000032);\n" : String)
theorem checked227 : bytes227=statementBytes 270 (op227.map lower) ∧ bytes227.length=60 := by core033_kernel_decide
def op228 : List WordIR.Op := [.bnot 270]
def bytes228 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010f: u32 = !r0000010e;\n" : String)
theorem checked228 : bytes228=statementBytes 271 (op228.map lower) ∧ bytes228.length=37 := by core033_kernel_decide
def op229 : List WordIR.Op := [.band 269 271]
def bytes229 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000110: u32 = r0000010d & r0000010f;\n" : String)
theorem checked229 : bytes229=statementBytes 272 (op229.map lower) ∧ bytes229.length=48 := by core033_kernel_decide
def op230 : List WordIR.Op := [.bxor 268 272]
def bytes230 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000111: u32 = r0000010c ^ r00000110;\n" : String)
theorem checked230 : bytes230=statementBytes 273 (op230.map lower) ∧ bytes230.length=48 := by core033_kernel_decide
def op231 : List WordIR.Op := [.shr 273 31]
def bytes231 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000112: u32 = r00000111 >> 0x0000001f_u32;\n" : String)
theorem checked231 : bytes231=statementBytes 274 (op231.map lower) ∧ bytes231.length=54 := by core033_kernel_decide
def op232 : List WordIR.Op := [.bxor 274 43]
def bytes232 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000113: u32 = r00000112 ^ r0000002b;\n" : String)
theorem checked232 : bytes232=statementBytes 275 (op232.map lower) ∧ bytes232.length=48 := by core033_kernel_decide
def op233 : List WordIR.Op := [.badd 221 257]
def bytes233 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000114: u32 = r000000dd.wrapping_add(r00000101);\n" : String)
theorem checked233 : bytes233=statementBytes 276 (op233.map lower) ∧ bytes233.length=60 := by core033_kernel_decide
def op234 : List WordIR.Op := [.badd 224 260]
def bytes234 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000115: u32 = r000000e0.wrapping_add(r00000104);\n" : String)
theorem checked234 : bytes234=statementBytes 277 (op234.map lower) ∧ bytes234.length=60 := by core033_kernel_decide
def op235 : List WordIR.Op := [.band 221 257]
def bytes235 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000116: u32 = r000000dd & r00000101;\n" : String)
theorem checked235 : bytes235=statementBytes 278 (op235.map lower) ∧ bytes235.length=48 := by core033_kernel_decide
def op236 : List WordIR.Op := [.bxor 221 257]
def bytes236 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000117: u32 = r000000dd ^ r00000101;\n" : String)
theorem checked236 : bytes236=statementBytes 279 (op236.map lower) ∧ bytes236.length=48 := by core033_kernel_decide
def op237 : List WordIR.Op := [.bnot 276]
def bytes237 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000118: u32 = !r00000114;\n" : String)
theorem checked237 : bytes237=statementBytes 280 (op237.map lower) ∧ bytes237.length=37 := by core033_kernel_decide
def op238 : List WordIR.Op := [.band 279 280]
def bytes238 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000119: u32 = r00000117 & r00000118;\n" : String)
theorem checked238 : bytes238=statementBytes 281 (op238.map lower) ∧ bytes238.length=48 := by core033_kernel_decide
def op239 : List WordIR.Op := [.bxor 278 281]
def bytes239 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011a: u32 = r00000116 ^ r00000119;\n" : String)
theorem checked239 : bytes239=statementBytes 282 (op239.map lower) ∧ bytes239.length=48 := by core033_kernel_decide
def op240 : List WordIR.Op := [.shr 282 31]
def bytes240 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011b: u32 = r0000011a >> 0x0000001f_u32;\n" : String)
theorem checked240 : bytes240=statementBytes 283 (op240.map lower) ∧ bytes240.length=54 := by core033_kernel_decide
def op241 : List WordIR.Op := [.badd 277 283]
def bytes241 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011c: u32 = r00000115.wrapping_add(r0000011b);\n" : String)
theorem checked241 : bytes241=statementBytes 284 (op241.map lower) ∧ bytes241.length=60 := by core033_kernel_decide
def op242 : List WordIR.Op := [.band 224 50]
def bytes242 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011d: u32 = r000000e0 & r00000032;\n" : String)
theorem checked242 : bytes242=statementBytes 285 (op242.map lower) ∧ bytes242.length=48 := by core033_kernel_decide
def op243 : List WordIR.Op := [.bxor 224 50]
def bytes243 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011e: u32 = r000000e0 ^ r00000032;\n" : String)
theorem checked243 : bytes243=statementBytes 286 (op243.map lower) ∧ bytes243.length=48 := by core033_kernel_decide
def op244 : List WordIR.Op := [.badd 224 50]
def bytes244 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011f: u32 = r000000e0.wrapping_add(r00000032);\n" : String)
theorem checked244 : bytes244=statementBytes 287 (op244.map lower) ∧ bytes244.length=60 := by core033_kernel_decide
def op245 : List WordIR.Op := [.bnot 287]
def bytes245 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000120: u32 = !r0000011f;\n" : String)
theorem checked245 : bytes245=statementBytes 288 (op245.map lower) ∧ bytes245.length=37 := by core033_kernel_decide
def op246 : List WordIR.Op := [.band 286 288]
def bytes246 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000121: u32 = r0000011e & r00000120;\n" : String)
theorem checked246 : bytes246=statementBytes 289 (op246.map lower) ∧ bytes246.length=48 := by core033_kernel_decide
def op247 : List WordIR.Op := [.bxor 285 289]
def bytes247 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000122: u32 = r0000011d ^ r00000121;\n" : String)
theorem checked247 : bytes247=statementBytes 290 (op247.map lower) ∧ bytes247.length=48 := by core033_kernel_decide
def op248 : List WordIR.Op := [.shr 290 31]
def bytes248 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000123: u32 = r00000122 >> 0x0000001f_u32;\n" : String)
theorem checked248 : bytes248=statementBytes 291 (op248.map lower) ∧ bytes248.length=54 := by core033_kernel_decide
def op249 : List WordIR.Op := [.bxor 291 43]
def bytes249 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000124: u32 = r00000123 ^ r0000002b;\n" : String)
theorem checked249 : bytes249=statementBytes 292 (op249.map lower) ∧ bytes249.length=48 := by core033_kernel_decide
def op250 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes250 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000125: u32 = 0x00100000_u32;\n" : String)
theorem checked250 : bytes250=statementBytes 293 (op250.map lower) ∧ bytes250.length=41 := by core033_kernel_decide
def op251 : List WordIR.Op := [.bnot 293]
def bytes251 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000126: u32 = !r00000125;\n" : String)
theorem checked251 : bytes251=statementBytes 294 (op251.map lower) ∧ bytes251.length=37 := by core033_kernel_decide
def op252 : List WordIR.Op := [.band 221 294]
def bytes252 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000127: u32 = r000000dd & r00000126;\n" : String)
theorem checked252 : bytes252=statementBytes 295 (op252.map lower) ∧ bytes252.length=48 := by core033_kernel_decide
def op253 : List WordIR.Op := [.bxor 221 294]
def bytes253 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000128: u32 = r000000dd ^ r00000126;\n" : String)
theorem checked253 : bytes253=statementBytes 296 (op253.map lower) ∧ bytes253.length=48 := by core033_kernel_decide
def op254 : List WordIR.Op := [.badd 221 294]
def bytes254 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000129: u32 = r000000dd.wrapping_add(r00000126);\n" : String)
theorem checked254 : bytes254=statementBytes 297 (op254.map lower) ∧ bytes254.length=60 := by core033_kernel_decide
def op255 : List WordIR.Op := [.bnot 297]
def bytes255 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000012a: u32 = !r00000129;\n" : String)
theorem checked255 : bytes255=statementBytes 298 (op255.map lower) ∧ bytes255.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op192,op193,op194,op195,op196,op197,op198,op199,op200,op201,op202,op203,op204,op205,op206,op207,op208,op209,op210,op211,op212,op213,op214,op215,op216,op217,op218,op219,op220,op221,op222,op223,op224,op225,op226,op227,op228,op229,op230,op231,op232,op233,op234,op235,op236,op237,op238,op239,op240,op241,op242,op243,op244,op245,op246,op247,op248,op249,op250,op251,op252,op253,op254,op255]
def chunks : List Bytes := [bytes192,bytes193,bytes194,bytes195,bytes196,bytes197,bytes198,bytes199,bytes200,bytes201,bytes202,bytes203,bytes204,bytes205,bytes206,bytes207,bytes208,bytes209,bytes210,bytes211,bytes212,bytes213,bytes214,bytes215,bytes216,bytes217,bytes218,bytes219,bytes220,bytes221,bytes222,bytes223,bytes224,bytes225,bytes226,bytes227,bytes228,bytes229,bytes230,bytes231,bytes232,bytes233,bytes234,bytes235,bytes236,bytes237,bytes238,bytes239,bytes240,bytes241,bytes242,bytes243,bytes244,bytes245,bytes246,bytes247,bytes248,bytes249,bytes250,bytes251,bytes252,bytes253,bytes254,bytes255]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 235 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked192.1 (.cons _ _ _ _ _ checked193.1 (.cons _ _ _ _ _ checked194.1 (.cons _ _ _ _ _ checked195.1 (.cons _ _ _ _ _ checked196.1 (.cons _ _ _ _ _ checked197.1 (.cons _ _ _ _ _ checked198.1 (.cons _ _ _ _ _ checked199.1 (.cons _ _ _ _ _ checked200.1 (.cons _ _ _ _ _ checked201.1 (.cons _ _ _ _ _ checked202.1 (.cons _ _ _ _ _ checked203.1 (.cons _ _ _ _ _ checked204.1 (.cons _ _ _ _ _ checked205.1 (.cons _ _ _ _ _ checked206.1 (.cons _ _ _ _ _ checked207.1 (.cons _ _ _ _ _ checked208.1 (.cons _ _ _ _ _ checked209.1 (.cons _ _ _ _ _ checked210.1 (.cons _ _ _ _ _ checked211.1 (.cons _ _ _ _ _ checked212.1 (.cons _ _ _ _ _ checked213.1 (.cons _ _ _ _ _ checked214.1 (.cons _ _ _ _ _ checked215.1 (.cons _ _ _ _ _ checked216.1 (.cons _ _ _ _ _ checked217.1 (.cons _ _ _ _ _ checked218.1 (.cons _ _ _ _ _ checked219.1 (.cons _ _ _ _ _ checked220.1 (.cons _ _ _ _ _ checked221.1 (.cons _ _ _ _ _ checked222.1 (.cons _ _ _ _ _ checked223.1 (.cons _ _ _ _ _ checked224.1 (.cons _ _ _ _ _ checked225.1 (.cons _ _ _ _ _ checked226.1 (.cons _ _ _ _ _ checked227.1 (.cons _ _ _ _ _ checked228.1 (.cons _ _ _ _ _ checked229.1 (.cons _ _ _ _ _ checked230.1 (.cons _ _ _ _ _ checked231.1 (.cons _ _ _ _ _ checked232.1 (.cons _ _ _ _ _ checked233.1 (.cons _ _ _ _ _ checked234.1 (.cons _ _ _ _ _ checked235.1 (.cons _ _ _ _ _ checked236.1 (.cons _ _ _ _ _ checked237.1 (.cons _ _ _ _ _ checked238.1 (.cons _ _ _ _ _ checked239.1 (.cons _ _ _ _ _ checked240.1 (.cons _ _ _ _ _ checked241.1 (.cons _ _ _ _ _ checked242.1 (.cons _ _ _ _ _ checked243.1 (.cons _ _ _ _ _ checked244.1 (.cons _ _ _ _ _ checked245.1 (.cons _ _ _ _ _ checked246.1 (.cons _ _ _ _ _ checked247.1 (.cons _ _ _ _ _ checked248.1 (.cons _ _ _ _ _ checked249.1 (.cons _ _ _ _ _ checked250.1 (.cons _ _ _ _ _ checked251.1 (.cons _ _ _ _ _ checked252.1 (.cons _ _ _ _ _ checked253.1 (.cons _ _ _ _ _ checked254.1 (.cons _ _ _ _ _ checked255.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 235 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3106 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked192.2,checked193.2,checked194.2,checked195.2,checked196.2,checked197.2,checked198.2,checked199.2,checked200.2,checked201.2,checked202.2,checked203.2,checked204.2,checked205.2,checked206.2,checked207.2,checked208.2,checked209.2,checked210.2,checked211.2,checked212.2,checked213.2,checked214.2,checked215.2,checked216.2,checked217.2,checked218.2,checked219.2,checked220.2,checked221.2,checked222.2,checked223.2,checked224.2,checked225.2,checked226.2,checked227.2,checked228.2,checked229.2,checked230.2,checked231.2,checked232.2,checked233.2,checked234.2,checked235.2,checked236.2,checked237.2,checked238.2,checked239.2,checked240.2,checked241.2,checked242.2,checked243.2,checked244.2,checked245.2,checked246.2,checked247.2,checked248.2,checked249.2,checked250.2,checked251.2,checked252.2,checked253.2,checked254.2,checked255.2]
  decide
end ArtifactSharedFrameGroup3
