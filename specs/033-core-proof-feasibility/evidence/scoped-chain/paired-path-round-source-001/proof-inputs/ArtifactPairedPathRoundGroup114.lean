import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup114
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7296 : List WordIR.Op := [.shr 7391 31]
def bytes7296 : Bytes := ("    let r00001ce0: u32 = r00001cdf >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7296 : bytes7296=statementBytes 7392 (op7296.map lower) ∧ bytes7296.length=54 := by core033_kernel_decide
def op7297 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7297 : Bytes := ("    let r00001ce1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7297 : bytes7297=statementBytes 7393 (op7297.map lower) ∧ bytes7297.length=41 := by core033_kernel_decide
def op7298 : List WordIR.Op := [.bxor 7392 7393]
def bytes7298 : Bytes := ("    let r00001ce2: u32 = r00001ce0 ^ r00001ce1;\n" : String).toByteArray.data.toList
theorem checked7298 : bytes7298=statementBytes 7394 (op7298.map lower) ∧ bytes7298.length=48 := by core033_kernel_decide
def op7299 : List WordIR.Op := [.shr 6094 8]
def bytes7299 : Bytes := ("    let r00001ce3: u32 = r000017ce >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7299 : bytes7299=statementBytes 7395 (op7299.map lower) ∧ bytes7299.length=54 := by core033_kernel_decide
def op7300 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7300 : Bytes := ("    let r00001ce4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7300 : bytes7300=statementBytes 7396 (op7300.map lower) ∧ bytes7300.length=41 := by core033_kernel_decide
def op7301 : List WordIR.Op := [.bnot 7396]
def bytes7301 : Bytes := ("    let r00001ce5: u32 = !r00001ce4;\n" : String).toByteArray.data.toList
theorem checked7301 : bytes7301=statementBytes 7397 (op7301.map lower) ∧ bytes7301.length=37 := by core033_kernel_decide
def op7302 : List WordIR.Op := [.band 7395 7397]
def bytes7302 : Bytes := ("    let r00001ce6: u32 = r00001ce3 & r00001ce5;\n" : String).toByteArray.data.toList
theorem checked7302 : bytes7302=statementBytes 7398 (op7302.map lower) ∧ bytes7302.length=48 := by core033_kernel_decide
def op7303 : List WordIR.Op := [.shr 6094 8]
def bytes7303 : Bytes := ("    let r00001ce7: u32 = r000017ce >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7303 : bytes7303=statementBytes 7399 (op7303.map lower) ∧ bytes7303.length=54 := by core033_kernel_decide
def op7304 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7304 : Bytes := ("    let r00001ce8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7304 : bytes7304=statementBytes 7400 (op7304.map lower) ∧ bytes7304.length=41 := by core033_kernel_decide
def op7305 : List WordIR.Op := [.bnot 7400]
def bytes7305 : Bytes := ("    let r00001ce9: u32 = !r00001ce8;\n" : String).toByteArray.data.toList
theorem checked7305 : bytes7305=statementBytes 7401 (op7305.map lower) ∧ bytes7305.length=37 := by core033_kernel_decide
def op7306 : List WordIR.Op := [.bxor 7399 7401]
def bytes7306 : Bytes := ("    let r00001cea: u32 = r00001ce7 ^ r00001ce9;\n" : String).toByteArray.data.toList
theorem checked7306 : bytes7306=statementBytes 7402 (op7306.map lower) ∧ bytes7306.length=48 := by core033_kernel_decide
def op7307 : List WordIR.Op := [.shr 6094 8]
def bytes7307 : Bytes := ("    let r00001ceb: u32 = r000017ce >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7307 : bytes7307=statementBytes 7403 (op7307.map lower) ∧ bytes7307.length=54 := by core033_kernel_decide
def op7308 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7308 : Bytes := ("    let r00001cec: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7308 : bytes7308=statementBytes 7404 (op7308.map lower) ∧ bytes7308.length=41 := by core033_kernel_decide
def op7309 : List WordIR.Op := [.bnot 7404]
def bytes7309 : Bytes := ("    let r00001ced: u32 = !r00001cec;\n" : String).toByteArray.data.toList
theorem checked7309 : bytes7309=statementBytes 7405 (op7309.map lower) ∧ bytes7309.length=37 := by core033_kernel_decide
def op7310 : List WordIR.Op := [.badd 7403 7405]
def bytes7310 : Bytes := ("    let r00001cee: u32 = r00001ceb.wrapping_add(r00001ced);\n" : String).toByteArray.data.toList
theorem checked7310 : bytes7310=statementBytes 7406 (op7310.map lower) ∧ bytes7310.length=60 := by core033_kernel_decide
def op7311 : List WordIR.Op := [.bnot 7406]
def bytes7311 : Bytes := ("    let r00001cef: u32 = !r00001cee;\n" : String).toByteArray.data.toList
theorem checked7311 : bytes7311=statementBytes 7407 (op7311.map lower) ∧ bytes7311.length=37 := by core033_kernel_decide
def op7312 : List WordIR.Op := [.band 7402 7407]
def bytes7312 : Bytes := ("    let r00001cf0: u32 = r00001cea & r00001cef;\n" : String).toByteArray.data.toList
theorem checked7312 : bytes7312=statementBytes 7408 (op7312.map lower) ∧ bytes7312.length=48 := by core033_kernel_decide
def op7313 : List WordIR.Op := [.bxor 7398 7408]
def bytes7313 : Bytes := ("    let r00001cf1: u32 = r00001ce6 ^ r00001cf0;\n" : String).toByteArray.data.toList
theorem checked7313 : bytes7313=statementBytes 7409 (op7313.map lower) ∧ bytes7313.length=48 := by core033_kernel_decide
def op7314 : List WordIR.Op := [.shr 7409 31]
def bytes7314 : Bytes := ("    let r00001cf2: u32 = r00001cf1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7314 : bytes7314=statementBytes 7410 (op7314.map lower) ∧ bytes7314.length=54 := by core033_kernel_decide
def op7315 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7315 : Bytes := ("    let r00001cf3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7315 : bytes7315=statementBytes 7411 (op7315.map lower) ∧ bytes7315.length=41 := by core033_kernel_decide
def op7316 : List WordIR.Op := [.bxor 7410 7411]
def bytes7316 : Bytes := ("    let r00001cf4: u32 = r00001cf2 ^ r00001cf3;\n" : String).toByteArray.data.toList
theorem checked7316 : bytes7316=statementBytes 7412 (op7316.map lower) ∧ bytes7316.length=48 := by core033_kernel_decide
def op7317 : List WordIR.Op := [.shr 6147 8]
def bytes7317 : Bytes := ("    let r00001cf5: u32 = r00001803 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7317 : bytes7317=statementBytes 7413 (op7317.map lower) ∧ bytes7317.length=54 := by core033_kernel_decide
def op7318 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7318 : Bytes := ("    let r00001cf6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7318 : bytes7318=statementBytes 7414 (op7318.map lower) ∧ bytes7318.length=41 := by core033_kernel_decide
def op7319 : List WordIR.Op := [.bnot 7414]
def bytes7319 : Bytes := ("    let r00001cf7: u32 = !r00001cf6;\n" : String).toByteArray.data.toList
theorem checked7319 : bytes7319=statementBytes 7415 (op7319.map lower) ∧ bytes7319.length=37 := by core033_kernel_decide
def op7320 : List WordIR.Op := [.band 7413 7415]
def bytes7320 : Bytes := ("    let r00001cf8: u32 = r00001cf5 & r00001cf7;\n" : String).toByteArray.data.toList
theorem checked7320 : bytes7320=statementBytes 7416 (op7320.map lower) ∧ bytes7320.length=48 := by core033_kernel_decide
def op7321 : List WordIR.Op := [.shr 6147 8]
def bytes7321 : Bytes := ("    let r00001cf9: u32 = r00001803 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7321 : bytes7321=statementBytes 7417 (op7321.map lower) ∧ bytes7321.length=54 := by core033_kernel_decide
def op7322 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7322 : Bytes := ("    let r00001cfa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7322 : bytes7322=statementBytes 7418 (op7322.map lower) ∧ bytes7322.length=41 := by core033_kernel_decide
def op7323 : List WordIR.Op := [.bnot 7418]
def bytes7323 : Bytes := ("    let r00001cfb: u32 = !r00001cfa;\n" : String).toByteArray.data.toList
theorem checked7323 : bytes7323=statementBytes 7419 (op7323.map lower) ∧ bytes7323.length=37 := by core033_kernel_decide
def op7324 : List WordIR.Op := [.bxor 7417 7419]
def bytes7324 : Bytes := ("    let r00001cfc: u32 = r00001cf9 ^ r00001cfb;\n" : String).toByteArray.data.toList
theorem checked7324 : bytes7324=statementBytes 7420 (op7324.map lower) ∧ bytes7324.length=48 := by core033_kernel_decide
def op7325 : List WordIR.Op := [.shr 6147 8]
def bytes7325 : Bytes := ("    let r00001cfd: u32 = r00001803 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7325 : bytes7325=statementBytes 7421 (op7325.map lower) ∧ bytes7325.length=54 := by core033_kernel_decide
def op7326 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7326 : Bytes := ("    let r00001cfe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7326 : bytes7326=statementBytes 7422 (op7326.map lower) ∧ bytes7326.length=41 := by core033_kernel_decide
def op7327 : List WordIR.Op := [.bnot 7422]
def bytes7327 : Bytes := ("    let r00001cff: u32 = !r00001cfe;\n" : String).toByteArray.data.toList
theorem checked7327 : bytes7327=statementBytes 7423 (op7327.map lower) ∧ bytes7327.length=37 := by core033_kernel_decide
def op7328 : List WordIR.Op := [.badd 7421 7423]
def bytes7328 : Bytes := ("    let r00001d00: u32 = r00001cfd.wrapping_add(r00001cff);\n" : String).toByteArray.data.toList
theorem checked7328 : bytes7328=statementBytes 7424 (op7328.map lower) ∧ bytes7328.length=60 := by core033_kernel_decide
def op7329 : List WordIR.Op := [.bnot 7424]
def bytes7329 : Bytes := ("    let r00001d01: u32 = !r00001d00;\n" : String).toByteArray.data.toList
theorem checked7329 : bytes7329=statementBytes 7425 (op7329.map lower) ∧ bytes7329.length=37 := by core033_kernel_decide
def op7330 : List WordIR.Op := [.band 7420 7425]
def bytes7330 : Bytes := ("    let r00001d02: u32 = r00001cfc & r00001d01;\n" : String).toByteArray.data.toList
theorem checked7330 : bytes7330=statementBytes 7426 (op7330.map lower) ∧ bytes7330.length=48 := by core033_kernel_decide
def op7331 : List WordIR.Op := [.bxor 7416 7426]
def bytes7331 : Bytes := ("    let r00001d03: u32 = r00001cf8 ^ r00001d02;\n" : String).toByteArray.data.toList
theorem checked7331 : bytes7331=statementBytes 7427 (op7331.map lower) ∧ bytes7331.length=48 := by core033_kernel_decide
def op7332 : List WordIR.Op := [.shr 7427 31]
def bytes7332 : Bytes := ("    let r00001d04: u32 = r00001d03 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7332 : bytes7332=statementBytes 7428 (op7332.map lower) ∧ bytes7332.length=54 := by core033_kernel_decide
def op7333 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7333 : Bytes := ("    let r00001d05: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7333 : bytes7333=statementBytes 7429 (op7333.map lower) ∧ bytes7333.length=41 := by core033_kernel_decide
def op7334 : List WordIR.Op := [.bxor 7428 7429]
def bytes7334 : Bytes := ("    let r00001d06: u32 = r00001d04 ^ r00001d05;\n" : String).toByteArray.data.toList
theorem checked7334 : bytes7334=statementBytes 7430 (op7334.map lower) ∧ bytes7334.length=48 := by core033_kernel_decide
def op7335 : List WordIR.Op := [.shr 6200 8]
def bytes7335 : Bytes := ("    let r00001d07: u32 = r00001838 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7335 : bytes7335=statementBytes 7431 (op7335.map lower) ∧ bytes7335.length=54 := by core033_kernel_decide
def op7336 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7336 : Bytes := ("    let r00001d08: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7336 : bytes7336=statementBytes 7432 (op7336.map lower) ∧ bytes7336.length=41 := by core033_kernel_decide
def op7337 : List WordIR.Op := [.bnot 7432]
def bytes7337 : Bytes := ("    let r00001d09: u32 = !r00001d08;\n" : String).toByteArray.data.toList
theorem checked7337 : bytes7337=statementBytes 7433 (op7337.map lower) ∧ bytes7337.length=37 := by core033_kernel_decide
def op7338 : List WordIR.Op := [.band 7431 7433]
def bytes7338 : Bytes := ("    let r00001d0a: u32 = r00001d07 & r00001d09;\n" : String).toByteArray.data.toList
theorem checked7338 : bytes7338=statementBytes 7434 (op7338.map lower) ∧ bytes7338.length=48 := by core033_kernel_decide
def op7339 : List WordIR.Op := [.shr 6200 8]
def bytes7339 : Bytes := ("    let r00001d0b: u32 = r00001838 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7339 : bytes7339=statementBytes 7435 (op7339.map lower) ∧ bytes7339.length=54 := by core033_kernel_decide
def op7340 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7340 : Bytes := ("    let r00001d0c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7340 : bytes7340=statementBytes 7436 (op7340.map lower) ∧ bytes7340.length=41 := by core033_kernel_decide
def op7341 : List WordIR.Op := [.bnot 7436]
def bytes7341 : Bytes := ("    let r00001d0d: u32 = !r00001d0c;\n" : String).toByteArray.data.toList
theorem checked7341 : bytes7341=statementBytes 7437 (op7341.map lower) ∧ bytes7341.length=37 := by core033_kernel_decide
def op7342 : List WordIR.Op := [.bxor 7435 7437]
def bytes7342 : Bytes := ("    let r00001d0e: u32 = r00001d0b ^ r00001d0d;\n" : String).toByteArray.data.toList
theorem checked7342 : bytes7342=statementBytes 7438 (op7342.map lower) ∧ bytes7342.length=48 := by core033_kernel_decide
def op7343 : List WordIR.Op := [.shr 6200 8]
def bytes7343 : Bytes := ("    let r00001d0f: u32 = r00001838 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7343 : bytes7343=statementBytes 7439 (op7343.map lower) ∧ bytes7343.length=54 := by core033_kernel_decide
def op7344 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7344 : Bytes := ("    let r00001d10: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7344 : bytes7344=statementBytes 7440 (op7344.map lower) ∧ bytes7344.length=41 := by core033_kernel_decide
def op7345 : List WordIR.Op := [.bnot 7440]
def bytes7345 : Bytes := ("    let r00001d11: u32 = !r00001d10;\n" : String).toByteArray.data.toList
theorem checked7345 : bytes7345=statementBytes 7441 (op7345.map lower) ∧ bytes7345.length=37 := by core033_kernel_decide
def op7346 : List WordIR.Op := [.badd 7439 7441]
def bytes7346 : Bytes := ("    let r00001d12: u32 = r00001d0f.wrapping_add(r00001d11);\n" : String).toByteArray.data.toList
theorem checked7346 : bytes7346=statementBytes 7442 (op7346.map lower) ∧ bytes7346.length=60 := by core033_kernel_decide
def op7347 : List WordIR.Op := [.bnot 7442]
def bytes7347 : Bytes := ("    let r00001d13: u32 = !r00001d12;\n" : String).toByteArray.data.toList
theorem checked7347 : bytes7347=statementBytes 7443 (op7347.map lower) ∧ bytes7347.length=37 := by core033_kernel_decide
def op7348 : List WordIR.Op := [.band 7438 7443]
def bytes7348 : Bytes := ("    let r00001d14: u32 = r00001d0e & r00001d13;\n" : String).toByteArray.data.toList
theorem checked7348 : bytes7348=statementBytes 7444 (op7348.map lower) ∧ bytes7348.length=48 := by core033_kernel_decide
def op7349 : List WordIR.Op := [.bxor 7434 7444]
def bytes7349 : Bytes := ("    let r00001d15: u32 = r00001d0a ^ r00001d14;\n" : String).toByteArray.data.toList
theorem checked7349 : bytes7349=statementBytes 7445 (op7349.map lower) ∧ bytes7349.length=48 := by core033_kernel_decide
def op7350 : List WordIR.Op := [.shr 7445 31]
def bytes7350 : Bytes := ("    let r00001d16: u32 = r00001d15 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7350 : bytes7350=statementBytes 7446 (op7350.map lower) ∧ bytes7350.length=54 := by core033_kernel_decide
def op7351 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7351 : Bytes := ("    let r00001d17: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7351 : bytes7351=statementBytes 7447 (op7351.map lower) ∧ bytes7351.length=41 := by core033_kernel_decide
def op7352 : List WordIR.Op := [.bxor 7446 7447]
def bytes7352 : Bytes := ("    let r00001d18: u32 = r00001d16 ^ r00001d17;\n" : String).toByteArray.data.toList
theorem checked7352 : bytes7352=statementBytes 7448 (op7352.map lower) ∧ bytes7352.length=48 := by core033_kernel_decide
def op7353 : List WordIR.Op := [.rotr 6290 17]
def bytes7353 : Bytes := ("    let r00001d19: u32 = r00001892.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7353 : bytes7353=statementBytes 7449 (op7353.map lower) ∧ bytes7353.length=65 := by core033_kernel_decide
def op7354 : List WordIR.Op := [.rotr 6290 19]
def bytes7354 : Bytes := ("    let r00001d1a: u32 = r00001892.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7354 : bytes7354=statementBytes 7450 (op7354.map lower) ∧ bytes7354.length=65 := by core033_kernel_decide
def op7355 : List WordIR.Op := [.bxor 7449 7450]
def bytes7355 : Bytes := ("    let r00001d1b: u32 = r00001d19 ^ r00001d1a;\n" : String).toByteArray.data.toList
theorem checked7355 : bytes7355=statementBytes 7451 (op7355.map lower) ∧ bytes7355.length=48 := by core033_kernel_decide
def op7356 : List WordIR.Op := [.shr 6290 10]
def bytes7356 : Bytes := ("    let r00001d1c: u32 = r00001892 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7356 : bytes7356=statementBytes 7452 (op7356.map lower) ∧ bytes7356.length=54 := by core033_kernel_decide
def op7357 : List WordIR.Op := [.bxor 7451 7452]
def bytes7357 : Bytes := ("    let r00001d1d: u32 = r00001d1b ^ r00001d1c;\n" : String).toByteArray.data.toList
theorem checked7357 : bytes7357=statementBytes 7453 (op7357.map lower) ∧ bytes7357.length=48 := by core033_kernel_decide
def op7358 : List WordIR.Op := [.badd 7453 6260]
def bytes7358 : Bytes := ("    let r00001d1e: u32 = r00001d1d.wrapping_add(r00001874);\n" : String).toByteArray.data.toList
theorem checked7358 : bytes7358=statementBytes 7454 (op7358.map lower) ∧ bytes7358.length=60 := by core033_kernel_decide
def op7359 : List WordIR.Op := [.rotr 6212 7]
def bytes7359 : Bytes := ("    let r00001d1f: u32 = r00001844.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7359 : bytes7359=statementBytes 7455 (op7359.map lower) ∧ bytes7359.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7296,op7297,op7298,op7299,op7300,op7301,op7302,op7303,op7304,op7305,op7306,op7307,op7308,op7309,op7310,op7311,op7312,op7313,op7314,op7315,op7316,op7317,op7318,op7319,op7320,op7321,op7322,op7323,op7324,op7325,op7326,op7327,op7328,op7329,op7330,op7331,op7332,op7333,op7334,op7335,op7336,op7337,op7338,op7339,op7340,op7341,op7342,op7343,op7344,op7345,op7346,op7347,op7348,op7349,op7350,op7351,op7352,op7353,op7354,op7355,op7356,op7357,op7358,op7359]
def chunks : List Bytes := [bytes7296,bytes7297,bytes7298,bytes7299,bytes7300,bytes7301,bytes7302,bytes7303,bytes7304,bytes7305,bytes7306,bytes7307,bytes7308,bytes7309,bytes7310,bytes7311,bytes7312,bytes7313,bytes7314,bytes7315,bytes7316,bytes7317,bytes7318,bytes7319,bytes7320,bytes7321,bytes7322,bytes7323,bytes7324,bytes7325,bytes7326,bytes7327,bytes7328,bytes7329,bytes7330,bytes7331,bytes7332,bytes7333,bytes7334,bytes7335,bytes7336,bytes7337,bytes7338,bytes7339,bytes7340,bytes7341,bytes7342,bytes7343,bytes7344,bytes7345,bytes7346,bytes7347,bytes7348,bytes7349,bytes7350,bytes7351,bytes7352,bytes7353,bytes7354,bytes7355,bytes7356,bytes7357,bytes7358,bytes7359]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7392 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7296.1 (.cons _ _ _ _ _ checked7297.1 (.cons _ _ _ _ _ checked7298.1 (.cons _ _ _ _ _ checked7299.1 (.cons _ _ _ _ _ checked7300.1 (.cons _ _ _ _ _ checked7301.1 (.cons _ _ _ _ _ checked7302.1 (.cons _ _ _ _ _ checked7303.1 (.cons _ _ _ _ _ checked7304.1 (.cons _ _ _ _ _ checked7305.1 (.cons _ _ _ _ _ checked7306.1 (.cons _ _ _ _ _ checked7307.1 (.cons _ _ _ _ _ checked7308.1 (.cons _ _ _ _ _ checked7309.1 (.cons _ _ _ _ _ checked7310.1 (.cons _ _ _ _ _ checked7311.1 (.cons _ _ _ _ _ checked7312.1 (.cons _ _ _ _ _ checked7313.1 (.cons _ _ _ _ _ checked7314.1 (.cons _ _ _ _ _ checked7315.1 (.cons _ _ _ _ _ checked7316.1 (.cons _ _ _ _ _ checked7317.1 (.cons _ _ _ _ _ checked7318.1 (.cons _ _ _ _ _ checked7319.1 (.cons _ _ _ _ _ checked7320.1 (.cons _ _ _ _ _ checked7321.1 (.cons _ _ _ _ _ checked7322.1 (.cons _ _ _ _ _ checked7323.1 (.cons _ _ _ _ _ checked7324.1 (.cons _ _ _ _ _ checked7325.1 (.cons _ _ _ _ _ checked7326.1 (.cons _ _ _ _ _ checked7327.1 (.cons _ _ _ _ _ checked7328.1 (.cons _ _ _ _ _ checked7329.1 (.cons _ _ _ _ _ checked7330.1 (.cons _ _ _ _ _ checked7331.1 (.cons _ _ _ _ _ checked7332.1 (.cons _ _ _ _ _ checked7333.1 (.cons _ _ _ _ _ checked7334.1 (.cons _ _ _ _ _ checked7335.1 (.cons _ _ _ _ _ checked7336.1 (.cons _ _ _ _ _ checked7337.1 (.cons _ _ _ _ _ checked7338.1 (.cons _ _ _ _ _ checked7339.1 (.cons _ _ _ _ _ checked7340.1 (.cons _ _ _ _ _ checked7341.1 (.cons _ _ _ _ _ checked7342.1 (.cons _ _ _ _ _ checked7343.1 (.cons _ _ _ _ _ checked7344.1 (.cons _ _ _ _ _ checked7345.1 (.cons _ _ _ _ _ checked7346.1 (.cons _ _ _ _ _ checked7347.1 (.cons _ _ _ _ _ checked7348.1 (.cons _ _ _ _ _ checked7349.1 (.cons _ _ _ _ _ checked7350.1 (.cons _ _ _ _ _ checked7351.1 (.cons _ _ _ _ _ checked7352.1 (.cons _ _ _ _ _ checked7353.1 (.cons _ _ _ _ _ checked7354.1 (.cons _ _ _ _ _ checked7355.1 (.cons _ _ _ _ _ checked7356.1 (.cons _ _ _ _ _ checked7357.1 (.cons _ _ _ _ _ checked7358.1 (.cons _ _ _ _ _ checked7359.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7392 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3032 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7296.2,checked7297.2,checked7298.2,checked7299.2,checked7300.2,checked7301.2,checked7302.2,checked7303.2,checked7304.2,checked7305.2,checked7306.2,checked7307.2,checked7308.2,checked7309.2,checked7310.2,checked7311.2,checked7312.2,checked7313.2,checked7314.2,checked7315.2,checked7316.2,checked7317.2,checked7318.2,checked7319.2,checked7320.2,checked7321.2,checked7322.2,checked7323.2,checked7324.2,checked7325.2,checked7326.2,checked7327.2,checked7328.2,checked7329.2,checked7330.2,checked7331.2,checked7332.2,checked7333.2,checked7334.2,checked7335.2,checked7336.2,checked7337.2,checked7338.2,checked7339.2,checked7340.2,checked7341.2,checked7342.2,checked7343.2,checked7344.2,checked7345.2,checked7346.2,checked7347.2,checked7348.2,checked7349.2,checked7350.2,checked7351.2,checked7352.2,checked7353.2,checked7354.2,checked7355.2,checked7356.2,checked7357.2,checked7358.2,checked7359.2]
  decide
end ArtifactPairedPathRoundGroup114
