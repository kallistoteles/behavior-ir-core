import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup191
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12224 : List WordIR.Op := [.badd 12317 12319]
def bytes12224 : Bytes := ("    let r00003020: u32 = r0000301d.wrapping_add(r0000301f);\n" : String).toByteArray.data.toList
theorem checked12224 : bytes12224=statementBytes 12320 (op12224.map lower) ∧ bytes12224.length=60 := by core033_kernel_decide
def op12225 : List WordIR.Op := [.bnot 12320]
def bytes12225 : Bytes := ("    let r00003021: u32 = !r00003020;\n" : String).toByteArray.data.toList
theorem checked12225 : bytes12225=statementBytes 12321 (op12225.map lower) ∧ bytes12225.length=37 := by core033_kernel_decide
def op12226 : List WordIR.Op := [.band 12315 12321]
def bytes12226 : Bytes := ("    let r00003022: u32 = r0000301b & r00003021;\n" : String).toByteArray.data.toList
theorem checked12226 : bytes12226=statementBytes 12322 (op12226.map lower) ∧ bytes12226.length=48 := by core033_kernel_decide
def op12227 : List WordIR.Op := [.bxor 12310 12322]
def bytes12227 : Bytes := ("    let r00003023: u32 = r00003016 ^ r00003022;\n" : String).toByteArray.data.toList
theorem checked12227 : bytes12227=statementBytes 12323 (op12227.map lower) ∧ bytes12227.length=48 := by core033_kernel_decide
def op12228 : List WordIR.Op := [.shr 12323 31]
def bytes12228 : Bytes := ("    let r00003024: u32 = r00003023 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12228 : bytes12228=statementBytes 12324 (op12228.map lower) ∧ bytes12228.length=54 := by core033_kernel_decide
def op12229 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12229 : Bytes := ("    let r00003025: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12229 : bytes12229=statementBytes 12325 (op12229.map lower) ∧ bytes12229.length=41 := by core033_kernel_decide
def op12230 : List WordIR.Op := [.bxor 12324 12325]
def bytes12230 : Bytes := ("    let r00003026: u32 = r00003024 ^ r00003025;\n" : String).toByteArray.data.toList
theorem checked12230 : bytes12230=statementBytes 12326 (op12230.map lower) ∧ bytes12230.length=48 := by core033_kernel_decide
def op12231 : List WordIR.Op := [.bnot 12326]
def bytes12231 : Bytes := ("    let r00003027: u32 = !r00003026;\n" : String).toByteArray.data.toList
theorem checked12231 : bytes12231=statementBytes 12327 (op12231.map lower) ∧ bytes12231.length=37 := by core033_kernel_decide
def op12232 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12232 : Bytes := ("    let r00003028: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12232 : bytes12232=statementBytes 12328 (op12232.map lower) ∧ bytes12232.length=41 := by core033_kernel_decide
def op12233 : List WordIR.Op := [.badd 12327 12328]
def bytes12233 : Bytes := ("    let r00003029: u32 = r00003027.wrapping_add(r00003028);\n" : String).toByteArray.data.toList
theorem checked12233 : bytes12233=statementBytes 12329 (op12233.map lower) ∧ bytes12233.length=60 := by core033_kernel_decide
def op12234 : List WordIR.Op := [.band 12329 10267]
def bytes12234 : Bytes := ("    let r0000302a: u32 = r00003029 & r0000281b;\n" : String).toByteArray.data.toList
theorem checked12234 : bytes12234=statementBytes 12330 (op12234.map lower) ∧ bytes12234.length=48 := by core033_kernel_decide
def op12235 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12235 : Bytes := ("    let r0000302b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12235 : bytes12235=statementBytes 12331 (op12235.map lower) ∧ bytes12235.length=41 := by core033_kernel_decide
def op12236 : List WordIR.Op := [.bxor 442 12331]
def bytes12236 : Bytes := ("    let r0000302c: u32 = r000001ba ^ r0000302b;\n" : String).toByteArray.data.toList
theorem checked12236 : bytes12236=statementBytes 12332 (op12236.map lower) ∧ bytes12236.length=48 := by core033_kernel_decide
def op12237 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12237 : Bytes := ("    let r0000302d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12237 : bytes12237=statementBytes 12333 (op12237.map lower) ∧ bytes12237.length=41 := by core033_kernel_decide
def op12238 : List WordIR.Op := [.bnot 12333]
def bytes12238 : Bytes := ("    let r0000302e: u32 = !r0000302d;\n" : String).toByteArray.data.toList
theorem checked12238 : bytes12238=statementBytes 12334 (op12238.map lower) ∧ bytes12238.length=37 := by core033_kernel_decide
def op12239 : List WordIR.Op := [.band 12332 12334]
def bytes12239 : Bytes := ("    let r0000302f: u32 = r0000302c & r0000302e;\n" : String).toByteArray.data.toList
theorem checked12239 : bytes12239=statementBytes 12335 (op12239.map lower) ∧ bytes12239.length=48 := by core033_kernel_decide
def op12240 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12240 : Bytes := ("    let r00003030: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12240 : bytes12240=statementBytes 12336 (op12240.map lower) ∧ bytes12240.length=41 := by core033_kernel_decide
def op12241 : List WordIR.Op := [.bxor 442 12336]
def bytes12241 : Bytes := ("    let r00003031: u32 = r000001ba ^ r00003030;\n" : String).toByteArray.data.toList
theorem checked12241 : bytes12241=statementBytes 12337 (op12241.map lower) ∧ bytes12241.length=48 := by core033_kernel_decide
def op12242 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12242 : Bytes := ("    let r00003032: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12242 : bytes12242=statementBytes 12338 (op12242.map lower) ∧ bytes12242.length=41 := by core033_kernel_decide
def op12243 : List WordIR.Op := [.bnot 12338]
def bytes12243 : Bytes := ("    let r00003033: u32 = !r00003032;\n" : String).toByteArray.data.toList
theorem checked12243 : bytes12243=statementBytes 12339 (op12243.map lower) ∧ bytes12243.length=37 := by core033_kernel_decide
def op12244 : List WordIR.Op := [.bxor 12337 12339]
def bytes12244 : Bytes := ("    let r00003034: u32 = r00003031 ^ r00003033;\n" : String).toByteArray.data.toList
theorem checked12244 : bytes12244=statementBytes 12340 (op12244.map lower) ∧ bytes12244.length=48 := by core033_kernel_decide
def op12245 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12245 : Bytes := ("    let r00003035: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12245 : bytes12245=statementBytes 12341 (op12245.map lower) ∧ bytes12245.length=41 := by core033_kernel_decide
def op12246 : List WordIR.Op := [.bxor 442 12341]
def bytes12246 : Bytes := ("    let r00003036: u32 = r000001ba ^ r00003035;\n" : String).toByteArray.data.toList
theorem checked12246 : bytes12246=statementBytes 12342 (op12246.map lower) ∧ bytes12246.length=48 := by core033_kernel_decide
def op12247 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12247 : Bytes := ("    let r00003037: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12247 : bytes12247=statementBytes 12343 (op12247.map lower) ∧ bytes12247.length=41 := by core033_kernel_decide
def op12248 : List WordIR.Op := [.bnot 12343]
def bytes12248 : Bytes := ("    let r00003038: u32 = !r00003037;\n" : String).toByteArray.data.toList
theorem checked12248 : bytes12248=statementBytes 12344 (op12248.map lower) ∧ bytes12248.length=37 := by core033_kernel_decide
def op12249 : List WordIR.Op := [.badd 12342 12344]
def bytes12249 : Bytes := ("    let r00003039: u32 = r00003036.wrapping_add(r00003038);\n" : String).toByteArray.data.toList
theorem checked12249 : bytes12249=statementBytes 12345 (op12249.map lower) ∧ bytes12249.length=60 := by core033_kernel_decide
def op12250 : List WordIR.Op := [.bnot 12345]
def bytes12250 : Bytes := ("    let r0000303a: u32 = !r00003039;\n" : String).toByteArray.data.toList
theorem checked12250 : bytes12250=statementBytes 12346 (op12250.map lower) ∧ bytes12250.length=37 := by core033_kernel_decide
def op12251 : List WordIR.Op := [.band 12340 12346]
def bytes12251 : Bytes := ("    let r0000303b: u32 = r00003034 & r0000303a;\n" : String).toByteArray.data.toList
theorem checked12251 : bytes12251=statementBytes 12347 (op12251.map lower) ∧ bytes12251.length=48 := by core033_kernel_decide
def op12252 : List WordIR.Op := [.bxor 12335 12347]
def bytes12252 : Bytes := ("    let r0000303c: u32 = r0000302f ^ r0000303b;\n" : String).toByteArray.data.toList
theorem checked12252 : bytes12252=statementBytes 12348 (op12252.map lower) ∧ bytes12252.length=48 := by core033_kernel_decide
def op12253 : List WordIR.Op := [.shr 12348 31]
def bytes12253 : Bytes := ("    let r0000303d: u32 = r0000303c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12253 : bytes12253=statementBytes 12349 (op12253.map lower) ∧ bytes12253.length=54 := by core033_kernel_decide
def op12254 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12254 : Bytes := ("    let r0000303e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12254 : bytes12254=statementBytes 12350 (op12254.map lower) ∧ bytes12254.length=41 := by core033_kernel_decide
def op12255 : List WordIR.Op := [.bxor 12349 12350]
def bytes12255 : Bytes := ("    let r0000303f: u32 = r0000303d ^ r0000303e;\n" : String).toByteArray.data.toList
theorem checked12255 : bytes12255=statementBytes 12351 (op12255.map lower) ∧ bytes12255.length=48 := by core033_kernel_decide
def op12256 : List WordIR.Op := [.bnot 12351]
def bytes12256 : Bytes := ("    let r00003040: u32 = !r0000303f;\n" : String).toByteArray.data.toList
theorem checked12256 : bytes12256=statementBytes 12352 (op12256.map lower) ∧ bytes12256.length=37 := by core033_kernel_decide
def op12257 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12257 : Bytes := ("    let r00003041: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12257 : bytes12257=statementBytes 12353 (op12257.map lower) ∧ bytes12257.length=41 := by core033_kernel_decide
def op12258 : List WordIR.Op := [.badd 12352 12353]
def bytes12258 : Bytes := ("    let r00003042: u32 = r00003040.wrapping_add(r00003041);\n" : String).toByteArray.data.toList
theorem checked12258 : bytes12258=statementBytes 12354 (op12258.map lower) ∧ bytes12258.length=60 := by core033_kernel_decide
def op12259 : List WordIR.Op := [.bnot 12354]
def bytes12259 : Bytes := ("    let r00003043: u32 = !r00003042;\n" : String).toByteArray.data.toList
theorem checked12259 : bytes12259=statementBytes 12355 (op12259.map lower) ∧ bytes12259.length=37 := by core033_kernel_decide
def op12260 : List WordIR.Op := [.band 12355 946]
def bytes12260 : Bytes := ("    let r00003044: u32 = r00003043 & r000003b2;\n" : String).toByteArray.data.toList
theorem checked12260 : bytes12260=statementBytes 12356 (op12260.map lower) ∧ bytes12260.length=48 := by core033_kernel_decide
def op12261 : List WordIR.Op := [.bxor 12330 12356]
def bytes12261 : Bytes := ("    let r00003045: u32 = r0000302a ^ r00003044;\n" : String).toByteArray.data.toList
theorem checked12261 : bytes12261=statementBytes 12357 (op12261.map lower) ∧ bytes12261.length=48 := by core033_kernel_decide
def op12262 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12262 : Bytes := ("    let r00003046: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12262 : bytes12262=statementBytes 12358 (op12262.map lower) ∧ bytes12262.length=41 := by core033_kernel_decide
def op12263 : List WordIR.Op := [.bxor 442 12358]
def bytes12263 : Bytes := ("    let r00003047: u32 = r000001ba ^ r00003046;\n" : String).toByteArray.data.toList
theorem checked12263 : bytes12263=statementBytes 12359 (op12263.map lower) ∧ bytes12263.length=48 := by core033_kernel_decide
def op12264 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12264 : Bytes := ("    let r00003048: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12264 : bytes12264=statementBytes 12360 (op12264.map lower) ∧ bytes12264.length=41 := by core033_kernel_decide
def op12265 : List WordIR.Op := [.bnot 12360]
def bytes12265 : Bytes := ("    let r00003049: u32 = !r00003048;\n" : String).toByteArray.data.toList
theorem checked12265 : bytes12265=statementBytes 12361 (op12265.map lower) ∧ bytes12265.length=37 := by core033_kernel_decide
def op12266 : List WordIR.Op := [.band 12359 12361]
def bytes12266 : Bytes := ("    let r0000304a: u32 = r00003047 & r00003049;\n" : String).toByteArray.data.toList
theorem checked12266 : bytes12266=statementBytes 12362 (op12266.map lower) ∧ bytes12266.length=48 := by core033_kernel_decide
def op12267 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12267 : Bytes := ("    let r0000304b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12267 : bytes12267=statementBytes 12363 (op12267.map lower) ∧ bytes12267.length=41 := by core033_kernel_decide
def op12268 : List WordIR.Op := [.bxor 442 12363]
def bytes12268 : Bytes := ("    let r0000304c: u32 = r000001ba ^ r0000304b;\n" : String).toByteArray.data.toList
theorem checked12268 : bytes12268=statementBytes 12364 (op12268.map lower) ∧ bytes12268.length=48 := by core033_kernel_decide
def op12269 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12269 : Bytes := ("    let r0000304d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12269 : bytes12269=statementBytes 12365 (op12269.map lower) ∧ bytes12269.length=41 := by core033_kernel_decide
def op12270 : List WordIR.Op := [.bnot 12365]
def bytes12270 : Bytes := ("    let r0000304e: u32 = !r0000304d;\n" : String).toByteArray.data.toList
theorem checked12270 : bytes12270=statementBytes 12366 (op12270.map lower) ∧ bytes12270.length=37 := by core033_kernel_decide
def op12271 : List WordIR.Op := [.bxor 12364 12366]
def bytes12271 : Bytes := ("    let r0000304f: u32 = r0000304c ^ r0000304e;\n" : String).toByteArray.data.toList
theorem checked12271 : bytes12271=statementBytes 12367 (op12271.map lower) ∧ bytes12271.length=48 := by core033_kernel_decide
def op12272 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12272 : Bytes := ("    let r00003050: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12272 : bytes12272=statementBytes 12368 (op12272.map lower) ∧ bytes12272.length=41 := by core033_kernel_decide
def op12273 : List WordIR.Op := [.bxor 442 12368]
def bytes12273 : Bytes := ("    let r00003051: u32 = r000001ba ^ r00003050;\n" : String).toByteArray.data.toList
theorem checked12273 : bytes12273=statementBytes 12369 (op12273.map lower) ∧ bytes12273.length=48 := by core033_kernel_decide
def op12274 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12274 : Bytes := ("    let r00003052: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12274 : bytes12274=statementBytes 12370 (op12274.map lower) ∧ bytes12274.length=41 := by core033_kernel_decide
def op12275 : List WordIR.Op := [.bnot 12370]
def bytes12275 : Bytes := ("    let r00003053: u32 = !r00003052;\n" : String).toByteArray.data.toList
theorem checked12275 : bytes12275=statementBytes 12371 (op12275.map lower) ∧ bytes12275.length=37 := by core033_kernel_decide
def op12276 : List WordIR.Op := [.badd 12369 12371]
def bytes12276 : Bytes := ("    let r00003054: u32 = r00003051.wrapping_add(r00003053);\n" : String).toByteArray.data.toList
theorem checked12276 : bytes12276=statementBytes 12372 (op12276.map lower) ∧ bytes12276.length=60 := by core033_kernel_decide
def op12277 : List WordIR.Op := [.bnot 12372]
def bytes12277 : Bytes := ("    let r00003055: u32 = !r00003054;\n" : String).toByteArray.data.toList
theorem checked12277 : bytes12277=statementBytes 12373 (op12277.map lower) ∧ bytes12277.length=37 := by core033_kernel_decide
def op12278 : List WordIR.Op := [.band 12367 12373]
def bytes12278 : Bytes := ("    let r00003056: u32 = r0000304f & r00003055;\n" : String).toByteArray.data.toList
theorem checked12278 : bytes12278=statementBytes 12374 (op12278.map lower) ∧ bytes12278.length=48 := by core033_kernel_decide
def op12279 : List WordIR.Op := [.bxor 12362 12374]
def bytes12279 : Bytes := ("    let r00003057: u32 = r0000304a ^ r00003056;\n" : String).toByteArray.data.toList
theorem checked12279 : bytes12279=statementBytes 12375 (op12279.map lower) ∧ bytes12279.length=48 := by core033_kernel_decide
def op12280 : List WordIR.Op := [.shr 12375 31]
def bytes12280 : Bytes := ("    let r00003058: u32 = r00003057 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12280 : bytes12280=statementBytes 12376 (op12280.map lower) ∧ bytes12280.length=54 := by core033_kernel_decide
def op12281 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12281 : Bytes := ("    let r00003059: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12281 : bytes12281=statementBytes 12377 (op12281.map lower) ∧ bytes12281.length=41 := by core033_kernel_decide
def op12282 : List WordIR.Op := [.bxor 12376 12377]
def bytes12282 : Bytes := ("    let r0000305a: u32 = r00003058 ^ r00003059;\n" : String).toByteArray.data.toList
theorem checked12282 : bytes12282=statementBytes 12378 (op12282.map lower) ∧ bytes12282.length=48 := by core033_kernel_decide
def op12283 : List WordIR.Op := [.bnot 12378]
def bytes12283 : Bytes := ("    let r0000305b: u32 = !r0000305a;\n" : String).toByteArray.data.toList
theorem checked12283 : bytes12283=statementBytes 12379 (op12283.map lower) ∧ bytes12283.length=37 := by core033_kernel_decide
def op12284 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12284 : Bytes := ("    let r0000305c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12284 : bytes12284=statementBytes 12380 (op12284.map lower) ∧ bytes12284.length=41 := by core033_kernel_decide
def op12285 : List WordIR.Op := [.badd 12379 12380]
def bytes12285 : Bytes := ("    let r0000305d: u32 = r0000305b.wrapping_add(r0000305c);\n" : String).toByteArray.data.toList
theorem checked12285 : bytes12285=statementBytes 12381 (op12285.map lower) ∧ bytes12285.length=60 := by core033_kernel_decide
def op12286 : List WordIR.Op := [.band 12381 10591]
def bytes12286 : Bytes := ("    let r0000305e: u32 = r0000305d & r0000295f;\n" : String).toByteArray.data.toList
theorem checked12286 : bytes12286=statementBytes 12382 (op12286.map lower) ∧ bytes12286.length=48 := by core033_kernel_decide
def op12287 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12287 : Bytes := ("    let r0000305f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12287 : bytes12287=statementBytes 12383 (op12287.map lower) ∧ bytes12287.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12224,op12225,op12226,op12227,op12228,op12229,op12230,op12231,op12232,op12233,op12234,op12235,op12236,op12237,op12238,op12239,op12240,op12241,op12242,op12243,op12244,op12245,op12246,op12247,op12248,op12249,op12250,op12251,op12252,op12253,op12254,op12255,op12256,op12257,op12258,op12259,op12260,op12261,op12262,op12263,op12264,op12265,op12266,op12267,op12268,op12269,op12270,op12271,op12272,op12273,op12274,op12275,op12276,op12277,op12278,op12279,op12280,op12281,op12282,op12283,op12284,op12285,op12286,op12287]
def chunks : List Bytes := [bytes12224,bytes12225,bytes12226,bytes12227,bytes12228,bytes12229,bytes12230,bytes12231,bytes12232,bytes12233,bytes12234,bytes12235,bytes12236,bytes12237,bytes12238,bytes12239,bytes12240,bytes12241,bytes12242,bytes12243,bytes12244,bytes12245,bytes12246,bytes12247,bytes12248,bytes12249,bytes12250,bytes12251,bytes12252,bytes12253,bytes12254,bytes12255,bytes12256,bytes12257,bytes12258,bytes12259,bytes12260,bytes12261,bytes12262,bytes12263,bytes12264,bytes12265,bytes12266,bytes12267,bytes12268,bytes12269,bytes12270,bytes12271,bytes12272,bytes12273,bytes12274,bytes12275,bytes12276,bytes12277,bytes12278,bytes12279,bytes12280,bytes12281,bytes12282,bytes12283,bytes12284,bytes12285,bytes12286,bytes12287]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12320 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12224.1 (.cons _ _ _ _ _ checked12225.1 (.cons _ _ _ _ _ checked12226.1 (.cons _ _ _ _ _ checked12227.1 (.cons _ _ _ _ _ checked12228.1 (.cons _ _ _ _ _ checked12229.1 (.cons _ _ _ _ _ checked12230.1 (.cons _ _ _ _ _ checked12231.1 (.cons _ _ _ _ _ checked12232.1 (.cons _ _ _ _ _ checked12233.1 (.cons _ _ _ _ _ checked12234.1 (.cons _ _ _ _ _ checked12235.1 (.cons _ _ _ _ _ checked12236.1 (.cons _ _ _ _ _ checked12237.1 (.cons _ _ _ _ _ checked12238.1 (.cons _ _ _ _ _ checked12239.1 (.cons _ _ _ _ _ checked12240.1 (.cons _ _ _ _ _ checked12241.1 (.cons _ _ _ _ _ checked12242.1 (.cons _ _ _ _ _ checked12243.1 (.cons _ _ _ _ _ checked12244.1 (.cons _ _ _ _ _ checked12245.1 (.cons _ _ _ _ _ checked12246.1 (.cons _ _ _ _ _ checked12247.1 (.cons _ _ _ _ _ checked12248.1 (.cons _ _ _ _ _ checked12249.1 (.cons _ _ _ _ _ checked12250.1 (.cons _ _ _ _ _ checked12251.1 (.cons _ _ _ _ _ checked12252.1 (.cons _ _ _ _ _ checked12253.1 (.cons _ _ _ _ _ checked12254.1 (.cons _ _ _ _ _ checked12255.1 (.cons _ _ _ _ _ checked12256.1 (.cons _ _ _ _ _ checked12257.1 (.cons _ _ _ _ _ checked12258.1 (.cons _ _ _ _ _ checked12259.1 (.cons _ _ _ _ _ checked12260.1 (.cons _ _ _ _ _ checked12261.1 (.cons _ _ _ _ _ checked12262.1 (.cons _ _ _ _ _ checked12263.1 (.cons _ _ _ _ _ checked12264.1 (.cons _ _ _ _ _ checked12265.1 (.cons _ _ _ _ _ checked12266.1 (.cons _ _ _ _ _ checked12267.1 (.cons _ _ _ _ _ checked12268.1 (.cons _ _ _ _ _ checked12269.1 (.cons _ _ _ _ _ checked12270.1 (.cons _ _ _ _ _ checked12271.1 (.cons _ _ _ _ _ checked12272.1 (.cons _ _ _ _ _ checked12273.1 (.cons _ _ _ _ _ checked12274.1 (.cons _ _ _ _ _ checked12275.1 (.cons _ _ _ _ _ checked12276.1 (.cons _ _ _ _ _ checked12277.1 (.cons _ _ _ _ _ checked12278.1 (.cons _ _ _ _ _ checked12279.1 (.cons _ _ _ _ _ checked12280.1 (.cons _ _ _ _ _ checked12281.1 (.cons _ _ _ _ _ checked12282.1 (.cons _ _ _ _ _ checked12283.1 (.cons _ _ _ _ _ checked12284.1 (.cons _ _ _ _ _ checked12285.1 (.cons _ _ _ _ _ checked12286.1 (.cons _ _ _ _ _ checked12287.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12320 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2886 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12224.2,checked12225.2,checked12226.2,checked12227.2,checked12228.2,checked12229.2,checked12230.2,checked12231.2,checked12232.2,checked12233.2,checked12234.2,checked12235.2,checked12236.2,checked12237.2,checked12238.2,checked12239.2,checked12240.2,checked12241.2,checked12242.2,checked12243.2,checked12244.2,checked12245.2,checked12246.2,checked12247.2,checked12248.2,checked12249.2,checked12250.2,checked12251.2,checked12252.2,checked12253.2,checked12254.2,checked12255.2,checked12256.2,checked12257.2,checked12258.2,checked12259.2,checked12260.2,checked12261.2,checked12262.2,checked12263.2,checked12264.2,checked12265.2,checked12266.2,checked12267.2,checked12268.2,checked12269.2,checked12270.2,checked12271.2,checked12272.2,checked12273.2,checked12274.2,checked12275.2,checked12276.2,checked12277.2,checked12278.2,checked12279.2,checked12280.2,checked12281.2,checked12282.2,checked12283.2,checked12284.2,checked12285.2,checked12286.2,checked12287.2]
  decide
end ArtifactPairedPathRoundGroup191
