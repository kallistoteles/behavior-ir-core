import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup113
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7232 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7232 : Bytes := ("    let r00001ca0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7232 : bytes7232=statementBytes 7328 (op7232.map lower) ∧ bytes7232.length=41 := by core033_kernel_decide
def op7233 : List WordIR.Op := [.bnot 7328]
def bytes7233 : Bytes := ("    let r00001ca1: u32 = !r00001ca0;\n" : String).toByteArray.data.toList
theorem checked7233 : bytes7233=statementBytes 7329 (op7233.map lower) ∧ bytes7233.length=37 := by core033_kernel_decide
def op7234 : List WordIR.Op := [.bxor 7327 7329]
def bytes7234 : Bytes := ("    let r00001ca2: u32 = r00001c9f ^ r00001ca1;\n" : String).toByteArray.data.toList
theorem checked7234 : bytes7234=statementBytes 7330 (op7234.map lower) ∧ bytes7234.length=48 := by core033_kernel_decide
def op7235 : List WordIR.Op := [.shr 5882 8]
def bytes7235 : Bytes := ("    let r00001ca3: u32 = r000016fa >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7235 : bytes7235=statementBytes 7331 (op7235.map lower) ∧ bytes7235.length=54 := by core033_kernel_decide
def op7236 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7236 : Bytes := ("    let r00001ca4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7236 : bytes7236=statementBytes 7332 (op7236.map lower) ∧ bytes7236.length=41 := by core033_kernel_decide
def op7237 : List WordIR.Op := [.bnot 7332]
def bytes7237 : Bytes := ("    let r00001ca5: u32 = !r00001ca4;\n" : String).toByteArray.data.toList
theorem checked7237 : bytes7237=statementBytes 7333 (op7237.map lower) ∧ bytes7237.length=37 := by core033_kernel_decide
def op7238 : List WordIR.Op := [.badd 7331 7333]
def bytes7238 : Bytes := ("    let r00001ca6: u32 = r00001ca3.wrapping_add(r00001ca5);\n" : String).toByteArray.data.toList
theorem checked7238 : bytes7238=statementBytes 7334 (op7238.map lower) ∧ bytes7238.length=60 := by core033_kernel_decide
def op7239 : List WordIR.Op := [.bnot 7334]
def bytes7239 : Bytes := ("    let r00001ca7: u32 = !r00001ca6;\n" : String).toByteArray.data.toList
theorem checked7239 : bytes7239=statementBytes 7335 (op7239.map lower) ∧ bytes7239.length=37 := by core033_kernel_decide
def op7240 : List WordIR.Op := [.band 7330 7335]
def bytes7240 : Bytes := ("    let r00001ca8: u32 = r00001ca2 & r00001ca7;\n" : String).toByteArray.data.toList
theorem checked7240 : bytes7240=statementBytes 7336 (op7240.map lower) ∧ bytes7240.length=48 := by core033_kernel_decide
def op7241 : List WordIR.Op := [.bxor 7326 7336]
def bytes7241 : Bytes := ("    let r00001ca9: u32 = r00001c9e ^ r00001ca8;\n" : String).toByteArray.data.toList
theorem checked7241 : bytes7241=statementBytes 7337 (op7241.map lower) ∧ bytes7241.length=48 := by core033_kernel_decide
def op7242 : List WordIR.Op := [.shr 7337 31]
def bytes7242 : Bytes := ("    let r00001caa: u32 = r00001ca9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7242 : bytes7242=statementBytes 7338 (op7242.map lower) ∧ bytes7242.length=54 := by core033_kernel_decide
def op7243 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7243 : Bytes := ("    let r00001cab: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7243 : bytes7243=statementBytes 7339 (op7243.map lower) ∧ bytes7243.length=41 := by core033_kernel_decide
def op7244 : List WordIR.Op := [.bxor 7338 7339]
def bytes7244 : Bytes := ("    let r00001cac: u32 = r00001caa ^ r00001cab;\n" : String).toByteArray.data.toList
theorem checked7244 : bytes7244=statementBytes 7340 (op7244.map lower) ∧ bytes7244.length=48 := by core033_kernel_decide
def op7245 : List WordIR.Op := [.shr 5935 8]
def bytes7245 : Bytes := ("    let r00001cad: u32 = r0000172f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7245 : bytes7245=statementBytes 7341 (op7245.map lower) ∧ bytes7245.length=54 := by core033_kernel_decide
def op7246 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7246 : Bytes := ("    let r00001cae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7246 : bytes7246=statementBytes 7342 (op7246.map lower) ∧ bytes7246.length=41 := by core033_kernel_decide
def op7247 : List WordIR.Op := [.bnot 7342]
def bytes7247 : Bytes := ("    let r00001caf: u32 = !r00001cae;\n" : String).toByteArray.data.toList
theorem checked7247 : bytes7247=statementBytes 7343 (op7247.map lower) ∧ bytes7247.length=37 := by core033_kernel_decide
def op7248 : List WordIR.Op := [.band 7341 7343]
def bytes7248 : Bytes := ("    let r00001cb0: u32 = r00001cad & r00001caf;\n" : String).toByteArray.data.toList
theorem checked7248 : bytes7248=statementBytes 7344 (op7248.map lower) ∧ bytes7248.length=48 := by core033_kernel_decide
def op7249 : List WordIR.Op := [.shr 5935 8]
def bytes7249 : Bytes := ("    let r00001cb1: u32 = r0000172f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7249 : bytes7249=statementBytes 7345 (op7249.map lower) ∧ bytes7249.length=54 := by core033_kernel_decide
def op7250 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7250 : Bytes := ("    let r00001cb2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7250 : bytes7250=statementBytes 7346 (op7250.map lower) ∧ bytes7250.length=41 := by core033_kernel_decide
def op7251 : List WordIR.Op := [.bnot 7346]
def bytes7251 : Bytes := ("    let r00001cb3: u32 = !r00001cb2;\n" : String).toByteArray.data.toList
theorem checked7251 : bytes7251=statementBytes 7347 (op7251.map lower) ∧ bytes7251.length=37 := by core033_kernel_decide
def op7252 : List WordIR.Op := [.bxor 7345 7347]
def bytes7252 : Bytes := ("    let r00001cb4: u32 = r00001cb1 ^ r00001cb3;\n" : String).toByteArray.data.toList
theorem checked7252 : bytes7252=statementBytes 7348 (op7252.map lower) ∧ bytes7252.length=48 := by core033_kernel_decide
def op7253 : List WordIR.Op := [.shr 5935 8]
def bytes7253 : Bytes := ("    let r00001cb5: u32 = r0000172f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7253 : bytes7253=statementBytes 7349 (op7253.map lower) ∧ bytes7253.length=54 := by core033_kernel_decide
def op7254 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7254 : Bytes := ("    let r00001cb6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7254 : bytes7254=statementBytes 7350 (op7254.map lower) ∧ bytes7254.length=41 := by core033_kernel_decide
def op7255 : List WordIR.Op := [.bnot 7350]
def bytes7255 : Bytes := ("    let r00001cb7: u32 = !r00001cb6;\n" : String).toByteArray.data.toList
theorem checked7255 : bytes7255=statementBytes 7351 (op7255.map lower) ∧ bytes7255.length=37 := by core033_kernel_decide
def op7256 : List WordIR.Op := [.badd 7349 7351]
def bytes7256 : Bytes := ("    let r00001cb8: u32 = r00001cb5.wrapping_add(r00001cb7);\n" : String).toByteArray.data.toList
theorem checked7256 : bytes7256=statementBytes 7352 (op7256.map lower) ∧ bytes7256.length=60 := by core033_kernel_decide
def op7257 : List WordIR.Op := [.bnot 7352]
def bytes7257 : Bytes := ("    let r00001cb9: u32 = !r00001cb8;\n" : String).toByteArray.data.toList
theorem checked7257 : bytes7257=statementBytes 7353 (op7257.map lower) ∧ bytes7257.length=37 := by core033_kernel_decide
def op7258 : List WordIR.Op := [.band 7348 7353]
def bytes7258 : Bytes := ("    let r00001cba: u32 = r00001cb4 & r00001cb9;\n" : String).toByteArray.data.toList
theorem checked7258 : bytes7258=statementBytes 7354 (op7258.map lower) ∧ bytes7258.length=48 := by core033_kernel_decide
def op7259 : List WordIR.Op := [.bxor 7344 7354]
def bytes7259 : Bytes := ("    let r00001cbb: u32 = r00001cb0 ^ r00001cba;\n" : String).toByteArray.data.toList
theorem checked7259 : bytes7259=statementBytes 7355 (op7259.map lower) ∧ bytes7259.length=48 := by core033_kernel_decide
def op7260 : List WordIR.Op := [.shr 7355 31]
def bytes7260 : Bytes := ("    let r00001cbc: u32 = r00001cbb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7260 : bytes7260=statementBytes 7356 (op7260.map lower) ∧ bytes7260.length=54 := by core033_kernel_decide
def op7261 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7261 : Bytes := ("    let r00001cbd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7261 : bytes7261=statementBytes 7357 (op7261.map lower) ∧ bytes7261.length=41 := by core033_kernel_decide
def op7262 : List WordIR.Op := [.bxor 7356 7357]
def bytes7262 : Bytes := ("    let r00001cbe: u32 = r00001cbc ^ r00001cbd;\n" : String).toByteArray.data.toList
theorem checked7262 : bytes7262=statementBytes 7358 (op7262.map lower) ∧ bytes7262.length=48 := by core033_kernel_decide
def op7263 : List WordIR.Op := [.shr 5988 8]
def bytes7263 : Bytes := ("    let r00001cbf: u32 = r00001764 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7263 : bytes7263=statementBytes 7359 (op7263.map lower) ∧ bytes7263.length=54 := by core033_kernel_decide
def op7264 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7264 : Bytes := ("    let r00001cc0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7264 : bytes7264=statementBytes 7360 (op7264.map lower) ∧ bytes7264.length=41 := by core033_kernel_decide
def op7265 : List WordIR.Op := [.bnot 7360]
def bytes7265 : Bytes := ("    let r00001cc1: u32 = !r00001cc0;\n" : String).toByteArray.data.toList
theorem checked7265 : bytes7265=statementBytes 7361 (op7265.map lower) ∧ bytes7265.length=37 := by core033_kernel_decide
def op7266 : List WordIR.Op := [.band 7359 7361]
def bytes7266 : Bytes := ("    let r00001cc2: u32 = r00001cbf & r00001cc1;\n" : String).toByteArray.data.toList
theorem checked7266 : bytes7266=statementBytes 7362 (op7266.map lower) ∧ bytes7266.length=48 := by core033_kernel_decide
def op7267 : List WordIR.Op := [.shr 5988 8]
def bytes7267 : Bytes := ("    let r00001cc3: u32 = r00001764 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7267 : bytes7267=statementBytes 7363 (op7267.map lower) ∧ bytes7267.length=54 := by core033_kernel_decide
def op7268 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7268 : Bytes := ("    let r00001cc4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7268 : bytes7268=statementBytes 7364 (op7268.map lower) ∧ bytes7268.length=41 := by core033_kernel_decide
def op7269 : List WordIR.Op := [.bnot 7364]
def bytes7269 : Bytes := ("    let r00001cc5: u32 = !r00001cc4;\n" : String).toByteArray.data.toList
theorem checked7269 : bytes7269=statementBytes 7365 (op7269.map lower) ∧ bytes7269.length=37 := by core033_kernel_decide
def op7270 : List WordIR.Op := [.bxor 7363 7365]
def bytes7270 : Bytes := ("    let r00001cc6: u32 = r00001cc3 ^ r00001cc5;\n" : String).toByteArray.data.toList
theorem checked7270 : bytes7270=statementBytes 7366 (op7270.map lower) ∧ bytes7270.length=48 := by core033_kernel_decide
def op7271 : List WordIR.Op := [.shr 5988 8]
def bytes7271 : Bytes := ("    let r00001cc7: u32 = r00001764 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7271 : bytes7271=statementBytes 7367 (op7271.map lower) ∧ bytes7271.length=54 := by core033_kernel_decide
def op7272 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7272 : Bytes := ("    let r00001cc8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7272 : bytes7272=statementBytes 7368 (op7272.map lower) ∧ bytes7272.length=41 := by core033_kernel_decide
def op7273 : List WordIR.Op := [.bnot 7368]
def bytes7273 : Bytes := ("    let r00001cc9: u32 = !r00001cc8;\n" : String).toByteArray.data.toList
theorem checked7273 : bytes7273=statementBytes 7369 (op7273.map lower) ∧ bytes7273.length=37 := by core033_kernel_decide
def op7274 : List WordIR.Op := [.badd 7367 7369]
def bytes7274 : Bytes := ("    let r00001cca: u32 = r00001cc7.wrapping_add(r00001cc9);\n" : String).toByteArray.data.toList
theorem checked7274 : bytes7274=statementBytes 7370 (op7274.map lower) ∧ bytes7274.length=60 := by core033_kernel_decide
def op7275 : List WordIR.Op := [.bnot 7370]
def bytes7275 : Bytes := ("    let r00001ccb: u32 = !r00001cca;\n" : String).toByteArray.data.toList
theorem checked7275 : bytes7275=statementBytes 7371 (op7275.map lower) ∧ bytes7275.length=37 := by core033_kernel_decide
def op7276 : List WordIR.Op := [.band 7366 7371]
def bytes7276 : Bytes := ("    let r00001ccc: u32 = r00001cc6 & r00001ccb;\n" : String).toByteArray.data.toList
theorem checked7276 : bytes7276=statementBytes 7372 (op7276.map lower) ∧ bytes7276.length=48 := by core033_kernel_decide
def op7277 : List WordIR.Op := [.bxor 7362 7372]
def bytes7277 : Bytes := ("    let r00001ccd: u32 = r00001cc2 ^ r00001ccc;\n" : String).toByteArray.data.toList
theorem checked7277 : bytes7277=statementBytes 7373 (op7277.map lower) ∧ bytes7277.length=48 := by core033_kernel_decide
def op7278 : List WordIR.Op := [.shr 7373 31]
def bytes7278 : Bytes := ("    let r00001cce: u32 = r00001ccd >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7278 : bytes7278=statementBytes 7374 (op7278.map lower) ∧ bytes7278.length=54 := by core033_kernel_decide
def op7279 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7279 : Bytes := ("    let r00001ccf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7279 : bytes7279=statementBytes 7375 (op7279.map lower) ∧ bytes7279.length=41 := by core033_kernel_decide
def op7280 : List WordIR.Op := [.bxor 7374 7375]
def bytes7280 : Bytes := ("    let r00001cd0: u32 = r00001cce ^ r00001ccf;\n" : String).toByteArray.data.toList
theorem checked7280 : bytes7280=statementBytes 7376 (op7280.map lower) ∧ bytes7280.length=48 := by core033_kernel_decide
def op7281 : List WordIR.Op := [.shr 6041 8]
def bytes7281 : Bytes := ("    let r00001cd1: u32 = r00001799 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7281 : bytes7281=statementBytes 7377 (op7281.map lower) ∧ bytes7281.length=54 := by core033_kernel_decide
def op7282 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7282 : Bytes := ("    let r00001cd2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7282 : bytes7282=statementBytes 7378 (op7282.map lower) ∧ bytes7282.length=41 := by core033_kernel_decide
def op7283 : List WordIR.Op := [.bnot 7378]
def bytes7283 : Bytes := ("    let r00001cd3: u32 = !r00001cd2;\n" : String).toByteArray.data.toList
theorem checked7283 : bytes7283=statementBytes 7379 (op7283.map lower) ∧ bytes7283.length=37 := by core033_kernel_decide
def op7284 : List WordIR.Op := [.band 7377 7379]
def bytes7284 : Bytes := ("    let r00001cd4: u32 = r00001cd1 & r00001cd3;\n" : String).toByteArray.data.toList
theorem checked7284 : bytes7284=statementBytes 7380 (op7284.map lower) ∧ bytes7284.length=48 := by core033_kernel_decide
def op7285 : List WordIR.Op := [.shr 6041 8]
def bytes7285 : Bytes := ("    let r00001cd5: u32 = r00001799 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7285 : bytes7285=statementBytes 7381 (op7285.map lower) ∧ bytes7285.length=54 := by core033_kernel_decide
def op7286 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7286 : Bytes := ("    let r00001cd6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7286 : bytes7286=statementBytes 7382 (op7286.map lower) ∧ bytes7286.length=41 := by core033_kernel_decide
def op7287 : List WordIR.Op := [.bnot 7382]
def bytes7287 : Bytes := ("    let r00001cd7: u32 = !r00001cd6;\n" : String).toByteArray.data.toList
theorem checked7287 : bytes7287=statementBytes 7383 (op7287.map lower) ∧ bytes7287.length=37 := by core033_kernel_decide
def op7288 : List WordIR.Op := [.bxor 7381 7383]
def bytes7288 : Bytes := ("    let r00001cd8: u32 = r00001cd5 ^ r00001cd7;\n" : String).toByteArray.data.toList
theorem checked7288 : bytes7288=statementBytes 7384 (op7288.map lower) ∧ bytes7288.length=48 := by core033_kernel_decide
def op7289 : List WordIR.Op := [.shr 6041 8]
def bytes7289 : Bytes := ("    let r00001cd9: u32 = r00001799 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7289 : bytes7289=statementBytes 7385 (op7289.map lower) ∧ bytes7289.length=54 := by core033_kernel_decide
def op7290 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7290 : Bytes := ("    let r00001cda: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7290 : bytes7290=statementBytes 7386 (op7290.map lower) ∧ bytes7290.length=41 := by core033_kernel_decide
def op7291 : List WordIR.Op := [.bnot 7386]
def bytes7291 : Bytes := ("    let r00001cdb: u32 = !r00001cda;\n" : String).toByteArray.data.toList
theorem checked7291 : bytes7291=statementBytes 7387 (op7291.map lower) ∧ bytes7291.length=37 := by core033_kernel_decide
def op7292 : List WordIR.Op := [.badd 7385 7387]
def bytes7292 : Bytes := ("    let r00001cdc: u32 = r00001cd9.wrapping_add(r00001cdb);\n" : String).toByteArray.data.toList
theorem checked7292 : bytes7292=statementBytes 7388 (op7292.map lower) ∧ bytes7292.length=60 := by core033_kernel_decide
def op7293 : List WordIR.Op := [.bnot 7388]
def bytes7293 : Bytes := ("    let r00001cdd: u32 = !r00001cdc;\n" : String).toByteArray.data.toList
theorem checked7293 : bytes7293=statementBytes 7389 (op7293.map lower) ∧ bytes7293.length=37 := by core033_kernel_decide
def op7294 : List WordIR.Op := [.band 7384 7389]
def bytes7294 : Bytes := ("    let r00001cde: u32 = r00001cd8 & r00001cdd;\n" : String).toByteArray.data.toList
theorem checked7294 : bytes7294=statementBytes 7390 (op7294.map lower) ∧ bytes7294.length=48 := by core033_kernel_decide
def op7295 : List WordIR.Op := [.bxor 7380 7390]
def bytes7295 : Bytes := ("    let r00001cdf: u32 = r00001cd4 ^ r00001cde;\n" : String).toByteArray.data.toList
theorem checked7295 : bytes7295=statementBytes 7391 (op7295.map lower) ∧ bytes7295.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7232,op7233,op7234,op7235,op7236,op7237,op7238,op7239,op7240,op7241,op7242,op7243,op7244,op7245,op7246,op7247,op7248,op7249,op7250,op7251,op7252,op7253,op7254,op7255,op7256,op7257,op7258,op7259,op7260,op7261,op7262,op7263,op7264,op7265,op7266,op7267,op7268,op7269,op7270,op7271,op7272,op7273,op7274,op7275,op7276,op7277,op7278,op7279,op7280,op7281,op7282,op7283,op7284,op7285,op7286,op7287,op7288,op7289,op7290,op7291,op7292,op7293,op7294,op7295]
def chunks : List Bytes := [bytes7232,bytes7233,bytes7234,bytes7235,bytes7236,bytes7237,bytes7238,bytes7239,bytes7240,bytes7241,bytes7242,bytes7243,bytes7244,bytes7245,bytes7246,bytes7247,bytes7248,bytes7249,bytes7250,bytes7251,bytes7252,bytes7253,bytes7254,bytes7255,bytes7256,bytes7257,bytes7258,bytes7259,bytes7260,bytes7261,bytes7262,bytes7263,bytes7264,bytes7265,bytes7266,bytes7267,bytes7268,bytes7269,bytes7270,bytes7271,bytes7272,bytes7273,bytes7274,bytes7275,bytes7276,bytes7277,bytes7278,bytes7279,bytes7280,bytes7281,bytes7282,bytes7283,bytes7284,bytes7285,bytes7286,bytes7287,bytes7288,bytes7289,bytes7290,bytes7291,bytes7292,bytes7293,bytes7294,bytes7295]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7328 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7232.1 (.cons _ _ _ _ _ checked7233.1 (.cons _ _ _ _ _ checked7234.1 (.cons _ _ _ _ _ checked7235.1 (.cons _ _ _ _ _ checked7236.1 (.cons _ _ _ _ _ checked7237.1 (.cons _ _ _ _ _ checked7238.1 (.cons _ _ _ _ _ checked7239.1 (.cons _ _ _ _ _ checked7240.1 (.cons _ _ _ _ _ checked7241.1 (.cons _ _ _ _ _ checked7242.1 (.cons _ _ _ _ _ checked7243.1 (.cons _ _ _ _ _ checked7244.1 (.cons _ _ _ _ _ checked7245.1 (.cons _ _ _ _ _ checked7246.1 (.cons _ _ _ _ _ checked7247.1 (.cons _ _ _ _ _ checked7248.1 (.cons _ _ _ _ _ checked7249.1 (.cons _ _ _ _ _ checked7250.1 (.cons _ _ _ _ _ checked7251.1 (.cons _ _ _ _ _ checked7252.1 (.cons _ _ _ _ _ checked7253.1 (.cons _ _ _ _ _ checked7254.1 (.cons _ _ _ _ _ checked7255.1 (.cons _ _ _ _ _ checked7256.1 (.cons _ _ _ _ _ checked7257.1 (.cons _ _ _ _ _ checked7258.1 (.cons _ _ _ _ _ checked7259.1 (.cons _ _ _ _ _ checked7260.1 (.cons _ _ _ _ _ checked7261.1 (.cons _ _ _ _ _ checked7262.1 (.cons _ _ _ _ _ checked7263.1 (.cons _ _ _ _ _ checked7264.1 (.cons _ _ _ _ _ checked7265.1 (.cons _ _ _ _ _ checked7266.1 (.cons _ _ _ _ _ checked7267.1 (.cons _ _ _ _ _ checked7268.1 (.cons _ _ _ _ _ checked7269.1 (.cons _ _ _ _ _ checked7270.1 (.cons _ _ _ _ _ checked7271.1 (.cons _ _ _ _ _ checked7272.1 (.cons _ _ _ _ _ checked7273.1 (.cons _ _ _ _ _ checked7274.1 (.cons _ _ _ _ _ checked7275.1 (.cons _ _ _ _ _ checked7276.1 (.cons _ _ _ _ _ checked7277.1 (.cons _ _ _ _ _ checked7278.1 (.cons _ _ _ _ _ checked7279.1 (.cons _ _ _ _ _ checked7280.1 (.cons _ _ _ _ _ checked7281.1 (.cons _ _ _ _ _ checked7282.1 (.cons _ _ _ _ _ checked7283.1 (.cons _ _ _ _ _ checked7284.1 (.cons _ _ _ _ _ checked7285.1 (.cons _ _ _ _ _ checked7286.1 (.cons _ _ _ _ _ checked7287.1 (.cons _ _ _ _ _ checked7288.1 (.cons _ _ _ _ _ checked7289.1 (.cons _ _ _ _ _ checked7290.1 (.cons _ _ _ _ _ checked7291.1 (.cons _ _ _ _ _ checked7292.1 (.cons _ _ _ _ _ checked7293.1 (.cons _ _ _ _ _ checked7294.1 (.cons _ _ _ _ _ checked7295.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7328 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2935 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7232.2,checked7233.2,checked7234.2,checked7235.2,checked7236.2,checked7237.2,checked7238.2,checked7239.2,checked7240.2,checked7241.2,checked7242.2,checked7243.2,checked7244.2,checked7245.2,checked7246.2,checked7247.2,checked7248.2,checked7249.2,checked7250.2,checked7251.2,checked7252.2,checked7253.2,checked7254.2,checked7255.2,checked7256.2,checked7257.2,checked7258.2,checked7259.2,checked7260.2,checked7261.2,checked7262.2,checked7263.2,checked7264.2,checked7265.2,checked7266.2,checked7267.2,checked7268.2,checked7269.2,checked7270.2,checked7271.2,checked7272.2,checked7273.2,checked7274.2,checked7275.2,checked7276.2,checked7277.2,checked7278.2,checked7279.2,checked7280.2,checked7281.2,checked7282.2,checked7283.2,checked7284.2,checked7285.2,checked7286.2,checked7287.2,checked7288.2,checked7289.2,checked7290.2,checked7291.2,checked7292.2,checked7293.2,checked7294.2,checked7295.2]
  decide
end ArtifactPairedPathRoundGroup113
