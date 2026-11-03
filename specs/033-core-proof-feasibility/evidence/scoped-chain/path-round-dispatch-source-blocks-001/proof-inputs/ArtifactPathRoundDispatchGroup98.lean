import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup98
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6272 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6272 : Bytes := ("    let r000018ab: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6272 : bytes6272=statementBytes 6315 (op6272.map lower) ∧ bytes6272.length=41 := by core033_kernel_decide
def op6273 : List WordIR.Op := [.bxor 6314 6315]
def bytes6273 : Bytes := ("    let r000018ac: u32 = r000018aa ^ r000018ab;\n" : String).toByteArray.data.toList
theorem checked6273 : bytes6273=statementBytes 6316 (op6273.map lower) ∧ bytes6273.length=48 := by core033_kernel_decide
def op6274 : List WordIR.Op := [.shr 3951 8]
def bytes6274 : Bytes := ("    let r000018ad: u32 = r00000f6f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6274 : bytes6274=statementBytes 6317 (op6274.map lower) ∧ bytes6274.length=54 := by core033_kernel_decide
def op6275 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6275 : Bytes := ("    let r000018ae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6275 : bytes6275=statementBytes 6318 (op6275.map lower) ∧ bytes6275.length=41 := by core033_kernel_decide
def op6276 : List WordIR.Op := [.bnot 6318]
def bytes6276 : Bytes := ("    let r000018af: u32 = !r000018ae;\n" : String).toByteArray.data.toList
theorem checked6276 : bytes6276=statementBytes 6319 (op6276.map lower) ∧ bytes6276.length=37 := by core033_kernel_decide
def op6277 : List WordIR.Op := [.band 6317 6319]
def bytes6277 : Bytes := ("    let r000018b0: u32 = r000018ad & r000018af;\n" : String).toByteArray.data.toList
theorem checked6277 : bytes6277=statementBytes 6320 (op6277.map lower) ∧ bytes6277.length=48 := by core033_kernel_decide
def op6278 : List WordIR.Op := [.shr 3951 8]
def bytes6278 : Bytes := ("    let r000018b1: u32 = r00000f6f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6278 : bytes6278=statementBytes 6321 (op6278.map lower) ∧ bytes6278.length=54 := by core033_kernel_decide
def op6279 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6279 : Bytes := ("    let r000018b2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6279 : bytes6279=statementBytes 6322 (op6279.map lower) ∧ bytes6279.length=41 := by core033_kernel_decide
def op6280 : List WordIR.Op := [.bnot 6322]
def bytes6280 : Bytes := ("    let r000018b3: u32 = !r000018b2;\n" : String).toByteArray.data.toList
theorem checked6280 : bytes6280=statementBytes 6323 (op6280.map lower) ∧ bytes6280.length=37 := by core033_kernel_decide
def op6281 : List WordIR.Op := [.bxor 6321 6323]
def bytes6281 : Bytes := ("    let r000018b4: u32 = r000018b1 ^ r000018b3;\n" : String).toByteArray.data.toList
theorem checked6281 : bytes6281=statementBytes 6324 (op6281.map lower) ∧ bytes6281.length=48 := by core033_kernel_decide
def op6282 : List WordIR.Op := [.shr 3951 8]
def bytes6282 : Bytes := ("    let r000018b5: u32 = r00000f6f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6282 : bytes6282=statementBytes 6325 (op6282.map lower) ∧ bytes6282.length=54 := by core033_kernel_decide
def op6283 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6283 : Bytes := ("    let r000018b6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6283 : bytes6283=statementBytes 6326 (op6283.map lower) ∧ bytes6283.length=41 := by core033_kernel_decide
def op6284 : List WordIR.Op := [.bnot 6326]
def bytes6284 : Bytes := ("    let r000018b7: u32 = !r000018b6;\n" : String).toByteArray.data.toList
theorem checked6284 : bytes6284=statementBytes 6327 (op6284.map lower) ∧ bytes6284.length=37 := by core033_kernel_decide
def op6285 : List WordIR.Op := [.badd 6325 6327]
def bytes6285 : Bytes := ("    let r000018b8: u32 = r000018b5.wrapping_add(r000018b7);\n" : String).toByteArray.data.toList
theorem checked6285 : bytes6285=statementBytes 6328 (op6285.map lower) ∧ bytes6285.length=60 := by core033_kernel_decide
def op6286 : List WordIR.Op := [.bnot 6328]
def bytes6286 : Bytes := ("    let r000018b9: u32 = !r000018b8;\n" : String).toByteArray.data.toList
theorem checked6286 : bytes6286=statementBytes 6329 (op6286.map lower) ∧ bytes6286.length=37 := by core033_kernel_decide
def op6287 : List WordIR.Op := [.band 6324 6329]
def bytes6287 : Bytes := ("    let r000018ba: u32 = r000018b4 & r000018b9;\n" : String).toByteArray.data.toList
theorem checked6287 : bytes6287=statementBytes 6330 (op6287.map lower) ∧ bytes6287.length=48 := by core033_kernel_decide
def op6288 : List WordIR.Op := [.bxor 6320 6330]
def bytes6288 : Bytes := ("    let r000018bb: u32 = r000018b0 ^ r000018ba;\n" : String).toByteArray.data.toList
theorem checked6288 : bytes6288=statementBytes 6331 (op6288.map lower) ∧ bytes6288.length=48 := by core033_kernel_decide
def op6289 : List WordIR.Op := [.shr 6331 31]
def bytes6289 : Bytes := ("    let r000018bc: u32 = r000018bb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6289 : bytes6289=statementBytes 6332 (op6289.map lower) ∧ bytes6289.length=54 := by core033_kernel_decide
def op6290 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6290 : Bytes := ("    let r000018bd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6290 : bytes6290=statementBytes 6333 (op6290.map lower) ∧ bytes6290.length=41 := by core033_kernel_decide
def op6291 : List WordIR.Op := [.bxor 6332 6333]
def bytes6291 : Bytes := ("    let r000018be: u32 = r000018bc ^ r000018bd;\n" : String).toByteArray.data.toList
theorem checked6291 : bytes6291=statementBytes 6334 (op6291.map lower) ∧ bytes6291.length=48 := by core033_kernel_decide
def op6292 : List WordIR.Op := [.shr 4003 8]
def bytes6292 : Bytes := ("    let r000018bf: u32 = r00000fa3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6292 : bytes6292=statementBytes 6335 (op6292.map lower) ∧ bytes6292.length=54 := by core033_kernel_decide
def op6293 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6293 : Bytes := ("    let r000018c0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6293 : bytes6293=statementBytes 6336 (op6293.map lower) ∧ bytes6293.length=41 := by core033_kernel_decide
def op6294 : List WordIR.Op := [.bnot 6336]
def bytes6294 : Bytes := ("    let r000018c1: u32 = !r000018c0;\n" : String).toByteArray.data.toList
theorem checked6294 : bytes6294=statementBytes 6337 (op6294.map lower) ∧ bytes6294.length=37 := by core033_kernel_decide
def op6295 : List WordIR.Op := [.band 6335 6337]
def bytes6295 : Bytes := ("    let r000018c2: u32 = r000018bf & r000018c1;\n" : String).toByteArray.data.toList
theorem checked6295 : bytes6295=statementBytes 6338 (op6295.map lower) ∧ bytes6295.length=48 := by core033_kernel_decide
def op6296 : List WordIR.Op := [.shr 4003 8]
def bytes6296 : Bytes := ("    let r000018c3: u32 = r00000fa3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6296 : bytes6296=statementBytes 6339 (op6296.map lower) ∧ bytes6296.length=54 := by core033_kernel_decide
def op6297 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6297 : Bytes := ("    let r000018c4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6297 : bytes6297=statementBytes 6340 (op6297.map lower) ∧ bytes6297.length=41 := by core033_kernel_decide
def op6298 : List WordIR.Op := [.bnot 6340]
def bytes6298 : Bytes := ("    let r000018c5: u32 = !r000018c4;\n" : String).toByteArray.data.toList
theorem checked6298 : bytes6298=statementBytes 6341 (op6298.map lower) ∧ bytes6298.length=37 := by core033_kernel_decide
def op6299 : List WordIR.Op := [.bxor 6339 6341]
def bytes6299 : Bytes := ("    let r000018c6: u32 = r000018c3 ^ r000018c5;\n" : String).toByteArray.data.toList
theorem checked6299 : bytes6299=statementBytes 6342 (op6299.map lower) ∧ bytes6299.length=48 := by core033_kernel_decide
def op6300 : List WordIR.Op := [.shr 4003 8]
def bytes6300 : Bytes := ("    let r000018c7: u32 = r00000fa3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6300 : bytes6300=statementBytes 6343 (op6300.map lower) ∧ bytes6300.length=54 := by core033_kernel_decide
def op6301 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6301 : Bytes := ("    let r000018c8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6301 : bytes6301=statementBytes 6344 (op6301.map lower) ∧ bytes6301.length=41 := by core033_kernel_decide
def op6302 : List WordIR.Op := [.bnot 6344]
def bytes6302 : Bytes := ("    let r000018c9: u32 = !r000018c8;\n" : String).toByteArray.data.toList
theorem checked6302 : bytes6302=statementBytes 6345 (op6302.map lower) ∧ bytes6302.length=37 := by core033_kernel_decide
def op6303 : List WordIR.Op := [.badd 6343 6345]
def bytes6303 : Bytes := ("    let r000018ca: u32 = r000018c7.wrapping_add(r000018c9);\n" : String).toByteArray.data.toList
theorem checked6303 : bytes6303=statementBytes 6346 (op6303.map lower) ∧ bytes6303.length=60 := by core033_kernel_decide
def op6304 : List WordIR.Op := [.bnot 6346]
def bytes6304 : Bytes := ("    let r000018cb: u32 = !r000018ca;\n" : String).toByteArray.data.toList
theorem checked6304 : bytes6304=statementBytes 6347 (op6304.map lower) ∧ bytes6304.length=37 := by core033_kernel_decide
def op6305 : List WordIR.Op := [.band 6342 6347]
def bytes6305 : Bytes := ("    let r000018cc: u32 = r000018c6 & r000018cb;\n" : String).toByteArray.data.toList
theorem checked6305 : bytes6305=statementBytes 6348 (op6305.map lower) ∧ bytes6305.length=48 := by core033_kernel_decide
def op6306 : List WordIR.Op := [.bxor 6338 6348]
def bytes6306 : Bytes := ("    let r000018cd: u32 = r000018c2 ^ r000018cc;\n" : String).toByteArray.data.toList
theorem checked6306 : bytes6306=statementBytes 6349 (op6306.map lower) ∧ bytes6306.length=48 := by core033_kernel_decide
def op6307 : List WordIR.Op := [.shr 6349 31]
def bytes6307 : Bytes := ("    let r000018ce: u32 = r000018cd >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6307 : bytes6307=statementBytes 6350 (op6307.map lower) ∧ bytes6307.length=54 := by core033_kernel_decide
def op6308 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6308 : Bytes := ("    let r000018cf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6308 : bytes6308=statementBytes 6351 (op6308.map lower) ∧ bytes6308.length=41 := by core033_kernel_decide
def op6309 : List WordIR.Op := [.bxor 6350 6351]
def bytes6309 : Bytes := ("    let r000018d0: u32 = r000018ce ^ r000018cf;\n" : String).toByteArray.data.toList
theorem checked6309 : bytes6309=statementBytes 6352 (op6309.map lower) ∧ bytes6309.length=48 := by core033_kernel_decide
def op6310 : List WordIR.Op := [.shr 4055 8]
def bytes6310 : Bytes := ("    let r000018d1: u32 = r00000fd7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6310 : bytes6310=statementBytes 6353 (op6310.map lower) ∧ bytes6310.length=54 := by core033_kernel_decide
def op6311 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6311 : Bytes := ("    let r000018d2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6311 : bytes6311=statementBytes 6354 (op6311.map lower) ∧ bytes6311.length=41 := by core033_kernel_decide
def op6312 : List WordIR.Op := [.bnot 6354]
def bytes6312 : Bytes := ("    let r000018d3: u32 = !r000018d2;\n" : String).toByteArray.data.toList
theorem checked6312 : bytes6312=statementBytes 6355 (op6312.map lower) ∧ bytes6312.length=37 := by core033_kernel_decide
def op6313 : List WordIR.Op := [.band 6353 6355]
def bytes6313 : Bytes := ("    let r000018d4: u32 = r000018d1 & r000018d3;\n" : String).toByteArray.data.toList
theorem checked6313 : bytes6313=statementBytes 6356 (op6313.map lower) ∧ bytes6313.length=48 := by core033_kernel_decide
def op6314 : List WordIR.Op := [.shr 4055 8]
def bytes6314 : Bytes := ("    let r000018d5: u32 = r00000fd7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6314 : bytes6314=statementBytes 6357 (op6314.map lower) ∧ bytes6314.length=54 := by core033_kernel_decide
def op6315 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6315 : Bytes := ("    let r000018d6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6315 : bytes6315=statementBytes 6358 (op6315.map lower) ∧ bytes6315.length=41 := by core033_kernel_decide
def op6316 : List WordIR.Op := [.bnot 6358]
def bytes6316 : Bytes := ("    let r000018d7: u32 = !r000018d6;\n" : String).toByteArray.data.toList
theorem checked6316 : bytes6316=statementBytes 6359 (op6316.map lower) ∧ bytes6316.length=37 := by core033_kernel_decide
def op6317 : List WordIR.Op := [.bxor 6357 6359]
def bytes6317 : Bytes := ("    let r000018d8: u32 = r000018d5 ^ r000018d7;\n" : String).toByteArray.data.toList
theorem checked6317 : bytes6317=statementBytes 6360 (op6317.map lower) ∧ bytes6317.length=48 := by core033_kernel_decide
def op6318 : List WordIR.Op := [.shr 4055 8]
def bytes6318 : Bytes := ("    let r000018d9: u32 = r00000fd7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6318 : bytes6318=statementBytes 6361 (op6318.map lower) ∧ bytes6318.length=54 := by core033_kernel_decide
def op6319 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6319 : Bytes := ("    let r000018da: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6319 : bytes6319=statementBytes 6362 (op6319.map lower) ∧ bytes6319.length=41 := by core033_kernel_decide
def op6320 : List WordIR.Op := [.bnot 6362]
def bytes6320 : Bytes := ("    let r000018db: u32 = !r000018da;\n" : String).toByteArray.data.toList
theorem checked6320 : bytes6320=statementBytes 6363 (op6320.map lower) ∧ bytes6320.length=37 := by core033_kernel_decide
def op6321 : List WordIR.Op := [.badd 6361 6363]
def bytes6321 : Bytes := ("    let r000018dc: u32 = r000018d9.wrapping_add(r000018db);\n" : String).toByteArray.data.toList
theorem checked6321 : bytes6321=statementBytes 6364 (op6321.map lower) ∧ bytes6321.length=60 := by core033_kernel_decide
def op6322 : List WordIR.Op := [.bnot 6364]
def bytes6322 : Bytes := ("    let r000018dd: u32 = !r000018dc;\n" : String).toByteArray.data.toList
theorem checked6322 : bytes6322=statementBytes 6365 (op6322.map lower) ∧ bytes6322.length=37 := by core033_kernel_decide
def op6323 : List WordIR.Op := [.band 6360 6365]
def bytes6323 : Bytes := ("    let r000018de: u32 = r000018d8 & r000018dd;\n" : String).toByteArray.data.toList
theorem checked6323 : bytes6323=statementBytes 6366 (op6323.map lower) ∧ bytes6323.length=48 := by core033_kernel_decide
def op6324 : List WordIR.Op := [.bxor 6356 6366]
def bytes6324 : Bytes := ("    let r000018df: u32 = r000018d4 ^ r000018de;\n" : String).toByteArray.data.toList
theorem checked6324 : bytes6324=statementBytes 6367 (op6324.map lower) ∧ bytes6324.length=48 := by core033_kernel_decide
def op6325 : List WordIR.Op := [.shr 6367 31]
def bytes6325 : Bytes := ("    let r000018e0: u32 = r000018df >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6325 : bytes6325=statementBytes 6368 (op6325.map lower) ∧ bytes6325.length=54 := by core033_kernel_decide
def op6326 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6326 : Bytes := ("    let r000018e1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6326 : bytes6326=statementBytes 6369 (op6326.map lower) ∧ bytes6326.length=41 := by core033_kernel_decide
def op6327 : List WordIR.Op := [.bxor 6368 6369]
def bytes6327 : Bytes := ("    let r000018e2: u32 = r000018e0 ^ r000018e1;\n" : String).toByteArray.data.toList
theorem checked6327 : bytes6327=statementBytes 6370 (op6327.map lower) ∧ bytes6327.length=48 := by core033_kernel_decide
def op6328 : List WordIR.Op := [.shr 4107 8]
def bytes6328 : Bytes := ("    let r000018e3: u32 = r0000100b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6328 : bytes6328=statementBytes 6371 (op6328.map lower) ∧ bytes6328.length=54 := by core033_kernel_decide
def op6329 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6329 : Bytes := ("    let r000018e4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6329 : bytes6329=statementBytes 6372 (op6329.map lower) ∧ bytes6329.length=41 := by core033_kernel_decide
def op6330 : List WordIR.Op := [.bnot 6372]
def bytes6330 : Bytes := ("    let r000018e5: u32 = !r000018e4;\n" : String).toByteArray.data.toList
theorem checked6330 : bytes6330=statementBytes 6373 (op6330.map lower) ∧ bytes6330.length=37 := by core033_kernel_decide
def op6331 : List WordIR.Op := [.band 6371 6373]
def bytes6331 : Bytes := ("    let r000018e6: u32 = r000018e3 & r000018e5;\n" : String).toByteArray.data.toList
theorem checked6331 : bytes6331=statementBytes 6374 (op6331.map lower) ∧ bytes6331.length=48 := by core033_kernel_decide
def op6332 : List WordIR.Op := [.shr 4107 8]
def bytes6332 : Bytes := ("    let r000018e7: u32 = r0000100b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6332 : bytes6332=statementBytes 6375 (op6332.map lower) ∧ bytes6332.length=54 := by core033_kernel_decide
def op6333 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6333 : Bytes := ("    let r000018e8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6333 : bytes6333=statementBytes 6376 (op6333.map lower) ∧ bytes6333.length=41 := by core033_kernel_decide
def op6334 : List WordIR.Op := [.bnot 6376]
def bytes6334 : Bytes := ("    let r000018e9: u32 = !r000018e8;\n" : String).toByteArray.data.toList
theorem checked6334 : bytes6334=statementBytes 6377 (op6334.map lower) ∧ bytes6334.length=37 := by core033_kernel_decide
def op6335 : List WordIR.Op := [.bxor 6375 6377]
def bytes6335 : Bytes := ("    let r000018ea: u32 = r000018e7 ^ r000018e9;\n" : String).toByteArray.data.toList
theorem checked6335 : bytes6335=statementBytes 6378 (op6335.map lower) ∧ bytes6335.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6272,op6273,op6274,op6275,op6276,op6277,op6278,op6279,op6280,op6281,op6282,op6283,op6284,op6285,op6286,op6287,op6288,op6289,op6290,op6291,op6292,op6293,op6294,op6295,op6296,op6297,op6298,op6299,op6300,op6301,op6302,op6303,op6304,op6305,op6306,op6307,op6308,op6309,op6310,op6311,op6312,op6313,op6314,op6315,op6316,op6317,op6318,op6319,op6320,op6321,op6322,op6323,op6324,op6325,op6326,op6327,op6328,op6329,op6330,op6331,op6332,op6333,op6334,op6335]
def chunks : List Bytes := [bytes6272,bytes6273,bytes6274,bytes6275,bytes6276,bytes6277,bytes6278,bytes6279,bytes6280,bytes6281,bytes6282,bytes6283,bytes6284,bytes6285,bytes6286,bytes6287,bytes6288,bytes6289,bytes6290,bytes6291,bytes6292,bytes6293,bytes6294,bytes6295,bytes6296,bytes6297,bytes6298,bytes6299,bytes6300,bytes6301,bytes6302,bytes6303,bytes6304,bytes6305,bytes6306,bytes6307,bytes6308,bytes6309,bytes6310,bytes6311,bytes6312,bytes6313,bytes6314,bytes6315,bytes6316,bytes6317,bytes6318,bytes6319,bytes6320,bytes6321,bytes6322,bytes6323,bytes6324,bytes6325,bytes6326,bytes6327,bytes6328,bytes6329,bytes6330,bytes6331,bytes6332,bytes6333,bytes6334,bytes6335]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6315 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6272.1 (.cons _ _ _ _ _ checked6273.1 (.cons _ _ _ _ _ checked6274.1 (.cons _ _ _ _ _ checked6275.1 (.cons _ _ _ _ _ checked6276.1 (.cons _ _ _ _ _ checked6277.1 (.cons _ _ _ _ _ checked6278.1 (.cons _ _ _ _ _ checked6279.1 (.cons _ _ _ _ _ checked6280.1 (.cons _ _ _ _ _ checked6281.1 (.cons _ _ _ _ _ checked6282.1 (.cons _ _ _ _ _ checked6283.1 (.cons _ _ _ _ _ checked6284.1 (.cons _ _ _ _ _ checked6285.1 (.cons _ _ _ _ _ checked6286.1 (.cons _ _ _ _ _ checked6287.1 (.cons _ _ _ _ _ checked6288.1 (.cons _ _ _ _ _ checked6289.1 (.cons _ _ _ _ _ checked6290.1 (.cons _ _ _ _ _ checked6291.1 (.cons _ _ _ _ _ checked6292.1 (.cons _ _ _ _ _ checked6293.1 (.cons _ _ _ _ _ checked6294.1 (.cons _ _ _ _ _ checked6295.1 (.cons _ _ _ _ _ checked6296.1 (.cons _ _ _ _ _ checked6297.1 (.cons _ _ _ _ _ checked6298.1 (.cons _ _ _ _ _ checked6299.1 (.cons _ _ _ _ _ checked6300.1 (.cons _ _ _ _ _ checked6301.1 (.cons _ _ _ _ _ checked6302.1 (.cons _ _ _ _ _ checked6303.1 (.cons _ _ _ _ _ checked6304.1 (.cons _ _ _ _ _ checked6305.1 (.cons _ _ _ _ _ checked6306.1 (.cons _ _ _ _ _ checked6307.1 (.cons _ _ _ _ _ checked6308.1 (.cons _ _ _ _ _ checked6309.1 (.cons _ _ _ _ _ checked6310.1 (.cons _ _ _ _ _ checked6311.1 (.cons _ _ _ _ _ checked6312.1 (.cons _ _ _ _ _ checked6313.1 (.cons _ _ _ _ _ checked6314.1 (.cons _ _ _ _ _ checked6315.1 (.cons _ _ _ _ _ checked6316.1 (.cons _ _ _ _ _ checked6317.1 (.cons _ _ _ _ _ checked6318.1 (.cons _ _ _ _ _ checked6319.1 (.cons _ _ _ _ _ checked6320.1 (.cons _ _ _ _ _ checked6321.1 (.cons _ _ _ _ _ checked6322.1 (.cons _ _ _ _ _ checked6323.1 (.cons _ _ _ _ _ checked6324.1 (.cons _ _ _ _ _ checked6325.1 (.cons _ _ _ _ _ checked6326.1 (.cons _ _ _ _ _ checked6327.1 (.cons _ _ _ _ _ checked6328.1 (.cons _ _ _ _ _ checked6329.1 (.cons _ _ _ _ _ checked6330.1 (.cons _ _ _ _ _ checked6331.1 (.cons _ _ _ _ _ checked6332.1 (.cons _ _ _ _ _ checked6333.1 (.cons _ _ _ _ _ checked6334.1 (.cons _ _ _ _ _ checked6335.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6315 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2933 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6272.2,checked6273.2,checked6274.2,checked6275.2,checked6276.2,checked6277.2,checked6278.2,checked6279.2,checked6280.2,checked6281.2,checked6282.2,checked6283.2,checked6284.2,checked6285.2,checked6286.2,checked6287.2,checked6288.2,checked6289.2,checked6290.2,checked6291.2,checked6292.2,checked6293.2,checked6294.2,checked6295.2,checked6296.2,checked6297.2,checked6298.2,checked6299.2,checked6300.2,checked6301.2,checked6302.2,checked6303.2,checked6304.2,checked6305.2,checked6306.2,checked6307.2,checked6308.2,checked6309.2,checked6310.2,checked6311.2,checked6312.2,checked6313.2,checked6314.2,checked6315.2,checked6316.2,checked6317.2,checked6318.2,checked6319.2,checked6320.2,checked6321.2,checked6322.2,checked6323.2,checked6324.2,checked6325.2,checked6326.2,checked6327.2,checked6328.2,checked6329.2,checked6330.2,checked6331.2,checked6332.2,checked6333.2,checked6334.2,checked6335.2]
  decide
end ArtifactPathRoundDispatchGroup98
