import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup3
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op192 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes192 : Bytes := ("    let r00000136: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked192 : bytes192=statementBytes 310 (op192.map lower) ∧ bytes192.length=41 := by core033_kernel_decide
def op193 : List WordIR.Op := [.bxor 309 310]
def bytes193 : Bytes := ("    let r00000137: u32 = r00000135 ^ r00000136;\n" : String).toByteArray.data.toList
theorem checked193 : bytes193=statementBytes 311 (op193.map lower) ∧ bytes193.length=48 := by core033_kernel_decide
def op194 : List WordIR.Op := [.bxor 290 311]
def bytes194 : Bytes := ("    let r00000138: u32 = r00000122 ^ r00000137;\n" : String).toByteArray.data.toList
theorem checked194 : bytes194=statementBytes 312 (op194.map lower) ∧ bytes194.length=48 := by core033_kernel_decide
def op195 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes195 : Bytes := ("    let r00000139: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked195 : bytes195=statementBytes 313 (op195.map lower) ∧ bytes195.length=41 := by core033_kernel_decide
def op196 : List WordIR.Op := [.bxor 0 313]
def bytes196 : Bytes := ("    let r0000013a: u32 = r00000000 ^ r00000139;\n" : String).toByteArray.data.toList
theorem checked196 : bytes196=statementBytes 314 (op196.map lower) ∧ bytes196.length=48 := by core033_kernel_decide
def op197 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes197 : Bytes := ("    let r0000013b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked197 : bytes197=statementBytes 315 (op197.map lower) ∧ bytes197.length=41 := by core033_kernel_decide
def op198 : List WordIR.Op := [.bnot 315]
def bytes198 : Bytes := ("    let r0000013c: u32 = !r0000013b;\n" : String).toByteArray.data.toList
theorem checked198 : bytes198=statementBytes 316 (op198.map lower) ∧ bytes198.length=37 := by core033_kernel_decide
def op199 : List WordIR.Op := [.band 314 316]
def bytes199 : Bytes := ("    let r0000013d: u32 = r0000013a & r0000013c;\n" : String).toByteArray.data.toList
theorem checked199 : bytes199=statementBytes 317 (op199.map lower) ∧ bytes199.length=48 := by core033_kernel_decide
def op200 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes200 : Bytes := ("    let r0000013e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked200 : bytes200=statementBytes 318 (op200.map lower) ∧ bytes200.length=41 := by core033_kernel_decide
def op201 : List WordIR.Op := [.bxor 0 318]
def bytes201 : Bytes := ("    let r0000013f: u32 = r00000000 ^ r0000013e;\n" : String).toByteArray.data.toList
theorem checked201 : bytes201=statementBytes 319 (op201.map lower) ∧ bytes201.length=48 := by core033_kernel_decide
def op202 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes202 : Bytes := ("    let r00000140: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked202 : bytes202=statementBytes 320 (op202.map lower) ∧ bytes202.length=41 := by core033_kernel_decide
def op203 : List WordIR.Op := [.bnot 320]
def bytes203 : Bytes := ("    let r00000141: u32 = !r00000140;\n" : String).toByteArray.data.toList
theorem checked203 : bytes203=statementBytes 321 (op203.map lower) ∧ bytes203.length=37 := by core033_kernel_decide
def op204 : List WordIR.Op := [.bxor 319 321]
def bytes204 : Bytes := ("    let r00000142: u32 = r0000013f ^ r00000141;\n" : String).toByteArray.data.toList
theorem checked204 : bytes204=statementBytes 322 (op204.map lower) ∧ bytes204.length=48 := by core033_kernel_decide
def op205 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes205 : Bytes := ("    let r00000143: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked205 : bytes205=statementBytes 323 (op205.map lower) ∧ bytes205.length=41 := by core033_kernel_decide
def op206 : List WordIR.Op := [.bxor 0 323]
def bytes206 : Bytes := ("    let r00000144: u32 = r00000000 ^ r00000143;\n" : String).toByteArray.data.toList
theorem checked206 : bytes206=statementBytes 324 (op206.map lower) ∧ bytes206.length=48 := by core033_kernel_decide
def op207 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes207 : Bytes := ("    let r00000145: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked207 : bytes207=statementBytes 325 (op207.map lower) ∧ bytes207.length=41 := by core033_kernel_decide
def op208 : List WordIR.Op := [.bnot 325]
def bytes208 : Bytes := ("    let r00000146: u32 = !r00000145;\n" : String).toByteArray.data.toList
theorem checked208 : bytes208=statementBytes 326 (op208.map lower) ∧ bytes208.length=37 := by core033_kernel_decide
def op209 : List WordIR.Op := [.badd 324 326]
def bytes209 : Bytes := ("    let r00000147: u32 = r00000144.wrapping_add(r00000146);\n" : String).toByteArray.data.toList
theorem checked209 : bytes209=statementBytes 327 (op209.map lower) ∧ bytes209.length=60 := by core033_kernel_decide
def op210 : List WordIR.Op := [.bnot 327]
def bytes210 : Bytes := ("    let r00000148: u32 = !r00000147;\n" : String).toByteArray.data.toList
theorem checked210 : bytes210=statementBytes 328 (op210.map lower) ∧ bytes210.length=37 := by core033_kernel_decide
def op211 : List WordIR.Op := [.band 322 328]
def bytes211 : Bytes := ("    let r00000149: u32 = r00000142 & r00000148;\n" : String).toByteArray.data.toList
theorem checked211 : bytes211=statementBytes 329 (op211.map lower) ∧ bytes211.length=48 := by core033_kernel_decide
def op212 : List WordIR.Op := [.bxor 317 329]
def bytes212 : Bytes := ("    let r0000014a: u32 = r0000013d ^ r00000149;\n" : String).toByteArray.data.toList
theorem checked212 : bytes212=statementBytes 330 (op212.map lower) ∧ bytes212.length=48 := by core033_kernel_decide
def op213 : List WordIR.Op := [.shr 330 31]
def bytes213 : Bytes := ("    let r0000014b: u32 = r0000014a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked213 : bytes213=statementBytes 331 (op213.map lower) ∧ bytes213.length=54 := by core033_kernel_decide
def op214 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes214 : Bytes := ("    let r0000014c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked214 : bytes214=statementBytes 332 (op214.map lower) ∧ bytes214.length=41 := by core033_kernel_decide
def op215 : List WordIR.Op := [.bxor 331 332]
def bytes215 : Bytes := ("    let r0000014d: u32 = r0000014b ^ r0000014c;\n" : String).toByteArray.data.toList
theorem checked215 : bytes215=statementBytes 333 (op215.map lower) ∧ bytes215.length=48 := by core033_kernel_decide
def op216 : List WordIR.Op := [.literal (BitVec.ofNat 32 6)]
def bytes216 : Bytes := ("    let r0000014e: u32 = 0x00000006_u32;\n" : String).toByteArray.data.toList
theorem checked216 : bytes216=statementBytes 334 (op216.map lower) ∧ bytes216.length=41 := by core033_kernel_decide
def op217 : List WordIR.Op := [.bxor 0 334]
def bytes217 : Bytes := ("    let r0000014f: u32 = r00000000 ^ r0000014e;\n" : String).toByteArray.data.toList
theorem checked217 : bytes217=statementBytes 335 (op217.map lower) ∧ bytes217.length=48 := by core033_kernel_decide
def op218 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes218 : Bytes := ("    let r00000150: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked218 : bytes218=statementBytes 336 (op218.map lower) ∧ bytes218.length=41 := by core033_kernel_decide
def op219 : List WordIR.Op := [.bnot 336]
def bytes219 : Bytes := ("    let r00000151: u32 = !r00000150;\n" : String).toByteArray.data.toList
theorem checked219 : bytes219=statementBytes 337 (op219.map lower) ∧ bytes219.length=37 := by core033_kernel_decide
def op220 : List WordIR.Op := [.band 335 337]
def bytes220 : Bytes := ("    let r00000152: u32 = r0000014f & r00000151;\n" : String).toByteArray.data.toList
theorem checked220 : bytes220=statementBytes 338 (op220.map lower) ∧ bytes220.length=48 := by core033_kernel_decide
def op221 : List WordIR.Op := [.literal (BitVec.ofNat 32 6)]
def bytes221 : Bytes := ("    let r00000153: u32 = 0x00000006_u32;\n" : String).toByteArray.data.toList
theorem checked221 : bytes221=statementBytes 339 (op221.map lower) ∧ bytes221.length=41 := by core033_kernel_decide
def op222 : List WordIR.Op := [.bxor 0 339]
def bytes222 : Bytes := ("    let r00000154: u32 = r00000000 ^ r00000153;\n" : String).toByteArray.data.toList
theorem checked222 : bytes222=statementBytes 340 (op222.map lower) ∧ bytes222.length=48 := by core033_kernel_decide
def op223 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes223 : Bytes := ("    let r00000155: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked223 : bytes223=statementBytes 341 (op223.map lower) ∧ bytes223.length=41 := by core033_kernel_decide
def op224 : List WordIR.Op := [.bnot 341]
def bytes224 : Bytes := ("    let r00000156: u32 = !r00000155;\n" : String).toByteArray.data.toList
theorem checked224 : bytes224=statementBytes 342 (op224.map lower) ∧ bytes224.length=37 := by core033_kernel_decide
def op225 : List WordIR.Op := [.bxor 340 342]
def bytes225 : Bytes := ("    let r00000157: u32 = r00000154 ^ r00000156;\n" : String).toByteArray.data.toList
theorem checked225 : bytes225=statementBytes 343 (op225.map lower) ∧ bytes225.length=48 := by core033_kernel_decide
def op226 : List WordIR.Op := [.literal (BitVec.ofNat 32 6)]
def bytes226 : Bytes := ("    let r00000158: u32 = 0x00000006_u32;\n" : String).toByteArray.data.toList
theorem checked226 : bytes226=statementBytes 344 (op226.map lower) ∧ bytes226.length=41 := by core033_kernel_decide
def op227 : List WordIR.Op := [.bxor 0 344]
def bytes227 : Bytes := ("    let r00000159: u32 = r00000000 ^ r00000158;\n" : String).toByteArray.data.toList
theorem checked227 : bytes227=statementBytes 345 (op227.map lower) ∧ bytes227.length=48 := by core033_kernel_decide
def op228 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes228 : Bytes := ("    let r0000015a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked228 : bytes228=statementBytes 346 (op228.map lower) ∧ bytes228.length=41 := by core033_kernel_decide
def op229 : List WordIR.Op := [.bnot 346]
def bytes229 : Bytes := ("    let r0000015b: u32 = !r0000015a;\n" : String).toByteArray.data.toList
theorem checked229 : bytes229=statementBytes 347 (op229.map lower) ∧ bytes229.length=37 := by core033_kernel_decide
def op230 : List WordIR.Op := [.badd 345 347]
def bytes230 : Bytes := ("    let r0000015c: u32 = r00000159.wrapping_add(r0000015b);\n" : String).toByteArray.data.toList
theorem checked230 : bytes230=statementBytes 348 (op230.map lower) ∧ bytes230.length=60 := by core033_kernel_decide
def op231 : List WordIR.Op := [.bnot 348]
def bytes231 : Bytes := ("    let r0000015d: u32 = !r0000015c;\n" : String).toByteArray.data.toList
theorem checked231 : bytes231=statementBytes 349 (op231.map lower) ∧ bytes231.length=37 := by core033_kernel_decide
def op232 : List WordIR.Op := [.band 343 349]
def bytes232 : Bytes := ("    let r0000015e: u32 = r00000157 & r0000015d;\n" : String).toByteArray.data.toList
theorem checked232 : bytes232=statementBytes 350 (op232.map lower) ∧ bytes232.length=48 := by core033_kernel_decide
def op233 : List WordIR.Op := [.bxor 338 350]
def bytes233 : Bytes := ("    let r0000015f: u32 = r00000152 ^ r0000015e;\n" : String).toByteArray.data.toList
theorem checked233 : bytes233=statementBytes 351 (op233.map lower) ∧ bytes233.length=48 := by core033_kernel_decide
def op234 : List WordIR.Op := [.shr 351 31]
def bytes234 : Bytes := ("    let r00000160: u32 = r0000015f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked234 : bytes234=statementBytes 352 (op234.map lower) ∧ bytes234.length=54 := by core033_kernel_decide
def op235 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes235 : Bytes := ("    let r00000161: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked235 : bytes235=statementBytes 353 (op235.map lower) ∧ bytes235.length=41 := by core033_kernel_decide
def op236 : List WordIR.Op := [.bxor 352 353]
def bytes236 : Bytes := ("    let r00000162: u32 = r00000160 ^ r00000161;\n" : String).toByteArray.data.toList
theorem checked236 : bytes236=statementBytes 354 (op236.map lower) ∧ bytes236.length=48 := by core033_kernel_decide
def op237 : List WordIR.Op := [.bxor 333 354]
def bytes237 : Bytes := ("    let r00000163: u32 = r0000014d ^ r00000162;\n" : String).toByteArray.data.toList
theorem checked237 : bytes237=statementBytes 355 (op237.map lower) ∧ bytes237.length=48 := by core033_kernel_decide
def op238 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes238 : Bytes := ("    let r00000164: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked238 : bytes238=statementBytes 356 (op238.map lower) ∧ bytes238.length=41 := by core033_kernel_decide
def op239 : List WordIR.Op := [.bxor 0 356]
def bytes239 : Bytes := ("    let r00000165: u32 = r00000000 ^ r00000164;\n" : String).toByteArray.data.toList
theorem checked239 : bytes239=statementBytes 357 (op239.map lower) ∧ bytes239.length=48 := by core033_kernel_decide
def op240 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes240 : Bytes := ("    let r00000166: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked240 : bytes240=statementBytes 358 (op240.map lower) ∧ bytes240.length=41 := by core033_kernel_decide
def op241 : List WordIR.Op := [.bnot 358]
def bytes241 : Bytes := ("    let r00000167: u32 = !r00000166;\n" : String).toByteArray.data.toList
theorem checked241 : bytes241=statementBytes 359 (op241.map lower) ∧ bytes241.length=37 := by core033_kernel_decide
def op242 : List WordIR.Op := [.band 357 359]
def bytes242 : Bytes := ("    let r00000168: u32 = r00000165 & r00000167;\n" : String).toByteArray.data.toList
theorem checked242 : bytes242=statementBytes 360 (op242.map lower) ∧ bytes242.length=48 := by core033_kernel_decide
def op243 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes243 : Bytes := ("    let r00000169: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked243 : bytes243=statementBytes 361 (op243.map lower) ∧ bytes243.length=41 := by core033_kernel_decide
def op244 : List WordIR.Op := [.bxor 0 361]
def bytes244 : Bytes := ("    let r0000016a: u32 = r00000000 ^ r00000169;\n" : String).toByteArray.data.toList
theorem checked244 : bytes244=statementBytes 362 (op244.map lower) ∧ bytes244.length=48 := by core033_kernel_decide
def op245 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes245 : Bytes := ("    let r0000016b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked245 : bytes245=statementBytes 363 (op245.map lower) ∧ bytes245.length=41 := by core033_kernel_decide
def op246 : List WordIR.Op := [.bnot 363]
def bytes246 : Bytes := ("    let r0000016c: u32 = !r0000016b;\n" : String).toByteArray.data.toList
theorem checked246 : bytes246=statementBytes 364 (op246.map lower) ∧ bytes246.length=37 := by core033_kernel_decide
def op247 : List WordIR.Op := [.bxor 362 364]
def bytes247 : Bytes := ("    let r0000016d: u32 = r0000016a ^ r0000016c;\n" : String).toByteArray.data.toList
theorem checked247 : bytes247=statementBytes 365 (op247.map lower) ∧ bytes247.length=48 := by core033_kernel_decide
def op248 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes248 : Bytes := ("    let r0000016e: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked248 : bytes248=statementBytes 366 (op248.map lower) ∧ bytes248.length=41 := by core033_kernel_decide
def op249 : List WordIR.Op := [.bxor 0 366]
def bytes249 : Bytes := ("    let r0000016f: u32 = r00000000 ^ r0000016e;\n" : String).toByteArray.data.toList
theorem checked249 : bytes249=statementBytes 367 (op249.map lower) ∧ bytes249.length=48 := by core033_kernel_decide
def op250 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes250 : Bytes := ("    let r00000170: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked250 : bytes250=statementBytes 368 (op250.map lower) ∧ bytes250.length=41 := by core033_kernel_decide
def op251 : List WordIR.Op := [.bnot 368]
def bytes251 : Bytes := ("    let r00000171: u32 = !r00000170;\n" : String).toByteArray.data.toList
theorem checked251 : bytes251=statementBytes 369 (op251.map lower) ∧ bytes251.length=37 := by core033_kernel_decide
def op252 : List WordIR.Op := [.badd 367 369]
def bytes252 : Bytes := ("    let r00000172: u32 = r0000016f.wrapping_add(r00000171);\n" : String).toByteArray.data.toList
theorem checked252 : bytes252=statementBytes 370 (op252.map lower) ∧ bytes252.length=60 := by core033_kernel_decide
def op253 : List WordIR.Op := [.bnot 370]
def bytes253 : Bytes := ("    let r00000173: u32 = !r00000172;\n" : String).toByteArray.data.toList
theorem checked253 : bytes253=statementBytes 371 (op253.map lower) ∧ bytes253.length=37 := by core033_kernel_decide
def op254 : List WordIR.Op := [.band 365 371]
def bytes254 : Bytes := ("    let r00000174: u32 = r0000016d & r00000173;\n" : String).toByteArray.data.toList
theorem checked254 : bytes254=statementBytes 372 (op254.map lower) ∧ bytes254.length=48 := by core033_kernel_decide
def op255 : List WordIR.Op := [.bxor 360 372]
def bytes255 : Bytes := ("    let r00000175: u32 = r00000168 ^ r00000174;\n" : String).toByteArray.data.toList
theorem checked255 : bytes255=statementBytes 373 (op255.map lower) ∧ bytes255.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op192,op193,op194,op195,op196,op197,op198,op199,op200,op201,op202,op203,op204,op205,op206,op207,op208,op209,op210,op211,op212,op213,op214,op215,op216,op217,op218,op219,op220,op221,op222,op223,op224,op225,op226,op227,op228,op229,op230,op231,op232,op233,op234,op235,op236,op237,op238,op239,op240,op241,op242,op243,op244,op245,op246,op247,op248,op249,op250,op251,op252,op253,op254,op255]
def chunks : List Bytes := [bytes192,bytes193,bytes194,bytes195,bytes196,bytes197,bytes198,bytes199,bytes200,bytes201,bytes202,bytes203,bytes204,bytes205,bytes206,bytes207,bytes208,bytes209,bytes210,bytes211,bytes212,bytes213,bytes214,bytes215,bytes216,bytes217,bytes218,bytes219,bytes220,bytes221,bytes222,bytes223,bytes224,bytes225,bytes226,bytes227,bytes228,bytes229,bytes230,bytes231,bytes232,bytes233,bytes234,bytes235,bytes236,bytes237,bytes238,bytes239,bytes240,bytes241,bytes242,bytes243,bytes244,bytes245,bytes246,bytes247,bytes248,bytes249,bytes250,bytes251,bytes252,bytes253,bytes254,bytes255]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 310 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked192.1 (.cons _ _ _ _ _ checked193.1 (.cons _ _ _ _ _ checked194.1 (.cons _ _ _ _ _ checked195.1 (.cons _ _ _ _ _ checked196.1 (.cons _ _ _ _ _ checked197.1 (.cons _ _ _ _ _ checked198.1 (.cons _ _ _ _ _ checked199.1 (.cons _ _ _ _ _ checked200.1 (.cons _ _ _ _ _ checked201.1 (.cons _ _ _ _ _ checked202.1 (.cons _ _ _ _ _ checked203.1 (.cons _ _ _ _ _ checked204.1 (.cons _ _ _ _ _ checked205.1 (.cons _ _ _ _ _ checked206.1 (.cons _ _ _ _ _ checked207.1 (.cons _ _ _ _ _ checked208.1 (.cons _ _ _ _ _ checked209.1 (.cons _ _ _ _ _ checked210.1 (.cons _ _ _ _ _ checked211.1 (.cons _ _ _ _ _ checked212.1 (.cons _ _ _ _ _ checked213.1 (.cons _ _ _ _ _ checked214.1 (.cons _ _ _ _ _ checked215.1 (.cons _ _ _ _ _ checked216.1 (.cons _ _ _ _ _ checked217.1 (.cons _ _ _ _ _ checked218.1 (.cons _ _ _ _ _ checked219.1 (.cons _ _ _ _ _ checked220.1 (.cons _ _ _ _ _ checked221.1 (.cons _ _ _ _ _ checked222.1 (.cons _ _ _ _ _ checked223.1 (.cons _ _ _ _ _ checked224.1 (.cons _ _ _ _ _ checked225.1 (.cons _ _ _ _ _ checked226.1 (.cons _ _ _ _ _ checked227.1 (.cons _ _ _ _ _ checked228.1 (.cons _ _ _ _ _ checked229.1 (.cons _ _ _ _ _ checked230.1 (.cons _ _ _ _ _ checked231.1 (.cons _ _ _ _ _ checked232.1 (.cons _ _ _ _ _ checked233.1 (.cons _ _ _ _ _ checked234.1 (.cons _ _ _ _ _ checked235.1 (.cons _ _ _ _ _ checked236.1 (.cons _ _ _ _ _ checked237.1 (.cons _ _ _ _ _ checked238.1 (.cons _ _ _ _ _ checked239.1 (.cons _ _ _ _ _ checked240.1 (.cons _ _ _ _ _ checked241.1 (.cons _ _ _ _ _ checked242.1 (.cons _ _ _ _ _ checked243.1 (.cons _ _ _ _ _ checked244.1 (.cons _ _ _ _ _ checked245.1 (.cons _ _ _ _ _ checked246.1 (.cons _ _ _ _ _ checked247.1 (.cons _ _ _ _ _ checked248.1 (.cons _ _ _ _ _ checked249.1 (.cons _ _ _ _ _ checked250.1 (.cons _ _ _ _ _ checked251.1 (.cons _ _ _ _ _ checked252.1 (.cons _ _ _ _ _ checked253.1 (.cons _ _ _ _ _ checked254.1 (.cons _ _ _ _ _ checked255.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 310 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2841 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked192.2,checked193.2,checked194.2,checked195.2,checked196.2,checked197.2,checked198.2,checked199.2,checked200.2,checked201.2,checked202.2,checked203.2,checked204.2,checked205.2,checked206.2,checked207.2,checked208.2,checked209.2,checked210.2,checked211.2,checked212.2,checked213.2,checked214.2,checked215.2,checked216.2,checked217.2,checked218.2,checked219.2,checked220.2,checked221.2,checked222.2,checked223.2,checked224.2,checked225.2,checked226.2,checked227.2,checked228.2,checked229.2,checked230.2,checked231.2,checked232.2,checked233.2,checked234.2,checked235.2,checked236.2,checked237.2,checked238.2,checked239.2,checked240.2,checked241.2,checked242.2,checked243.2,checked244.2,checked245.2,checked246.2,checked247.2,checked248.2,checked249.2,checked250.2,checked251.2,checked252.2,checked253.2,checked254.2,checked255.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup3
