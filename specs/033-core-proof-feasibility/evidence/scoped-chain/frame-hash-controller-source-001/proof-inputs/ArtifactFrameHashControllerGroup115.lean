import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup115
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7360 : List WordIR.Op := [.rotr 7386 13]
def bytes7360 : Bytes := ("    let r00001ceb: u32 = r00001cda.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7360 : bytes7360=statementBytes 7403 (op7360.map lower) ∧ bytes7360.length=65 := by core033_kernel_decide
def op7361 : List WordIR.Op := [.bxor 7402 7403]
def bytes7361 : Bytes := ("    let r00001cec: u32 = r00001cea ^ r00001ceb;\n" : String).toByteArray.data.toList
theorem checked7361 : bytes7361=statementBytes 7404 (op7361.map lower) ∧ bytes7361.length=48 := by core033_kernel_decide
def op7362 : List WordIR.Op := [.rotr 7386 22]
def bytes7362 : Bytes := ("    let r00001ced: u32 = r00001cda.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7362 : bytes7362=statementBytes 7405 (op7362.map lower) ∧ bytes7362.length=65 := by core033_kernel_decide
def op7363 : List WordIR.Op := [.bxor 7404 7405]
def bytes7363 : Bytes := ("    let r00001cee: u32 = r00001cec ^ r00001ced;\n" : String).toByteArray.data.toList
theorem checked7363 : bytes7363=statementBytes 7406 (op7363.map lower) ∧ bytes7363.length=48 := by core033_kernel_decide
def op7364 : List WordIR.Op := [.band 7386 7359]
def bytes7364 : Bytes := ("    let r00001cef: u32 = r00001cda & r00001cbf;\n" : String).toByteArray.data.toList
theorem checked7364 : bytes7364=statementBytes 7407 (op7364.map lower) ∧ bytes7364.length=48 := by core033_kernel_decide
def op7365 : List WordIR.Op := [.band 7386 7332]
def bytes7365 : Bytes := ("    let r00001cf0: u32 = r00001cda & r00001ca4;\n" : String).toByteArray.data.toList
theorem checked7365 : bytes7365=statementBytes 7408 (op7365.map lower) ∧ bytes7365.length=48 := by core033_kernel_decide
def op7366 : List WordIR.Op := [.bxor 7407 7408]
def bytes7366 : Bytes := ("    let r00001cf1: u32 = r00001cef ^ r00001cf0;\n" : String).toByteArray.data.toList
theorem checked7366 : bytes7366=statementBytes 7409 (op7366.map lower) ∧ bytes7366.length=48 := by core033_kernel_decide
def op7367 : List WordIR.Op := [.band 7359 7332]
def bytes7367 : Bytes := ("    let r00001cf2: u32 = r00001cbf & r00001ca4;\n" : String).toByteArray.data.toList
theorem checked7367 : bytes7367=statementBytes 7410 (op7367.map lower) ∧ bytes7367.length=48 := by core033_kernel_decide
def op7368 : List WordIR.Op := [.bxor 7409 7410]
def bytes7368 : Bytes := ("    let r00001cf3: u32 = r00001cf1 ^ r00001cf2;\n" : String).toByteArray.data.toList
theorem checked7368 : bytes7368=statementBytes 7411 (op7368.map lower) ∧ bytes7368.length=48 := by core033_kernel_decide
def op7369 : List WordIR.Op := [.badd 7406 7411]
def bytes7369 : Bytes := ("    let r00001cf4: u32 = r00001cee.wrapping_add(r00001cf3);\n" : String).toByteArray.data.toList
theorem checked7369 : bytes7369=statementBytes 7412 (op7369.map lower) ∧ bytes7369.length=60 := by core033_kernel_decide
def op7370 : List WordIR.Op := [.badd 7401 7412]
def bytes7370 : Bytes := ("    let r00001cf5: u32 = r00001ce9.wrapping_add(r00001cf4);\n" : String).toByteArray.data.toList
theorem checked7370 : bytes7370=statementBytes 7413 (op7370.map lower) ∧ bytes7370.length=60 := by core033_kernel_decide
def op7371 : List WordIR.Op := [.badd 7305 7401]
def bytes7371 : Bytes := ("    let r00001cf6: u32 = r00001c89.wrapping_add(r00001ce9);\n" : String).toByteArray.data.toList
theorem checked7371 : bytes7371=statementBytes 7414 (op7371.map lower) ∧ bytes7371.length=60 := by core033_kernel_decide
def op7372 : List WordIR.Op := [.rotr 7414 6]
def bytes7372 : Bytes := ("    let r00001cf7: u32 = r00001cf6.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7372 : bytes7372=statementBytes 7415 (op7372.map lower) ∧ bytes7372.length=65 := by core033_kernel_decide
def op7373 : List WordIR.Op := [.rotr 7414 11]
def bytes7373 : Bytes := ("    let r00001cf8: u32 = r00001cf6.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7373 : bytes7373=statementBytes 7416 (op7373.map lower) ∧ bytes7373.length=65 := by core033_kernel_decide
def op7374 : List WordIR.Op := [.bxor 7415 7416]
def bytes7374 : Bytes := ("    let r00001cf9: u32 = r00001cf7 ^ r00001cf8;\n" : String).toByteArray.data.toList
theorem checked7374 : bytes7374=statementBytes 7417 (op7374.map lower) ∧ bytes7374.length=48 := by core033_kernel_decide
def op7375 : List WordIR.Op := [.rotr 7414 25]
def bytes7375 : Bytes := ("    let r00001cfa: u32 = r00001cf6.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7375 : bytes7375=statementBytes 7418 (op7375.map lower) ∧ bytes7375.length=65 := by core033_kernel_decide
def op7376 : List WordIR.Op := [.bxor 7417 7418]
def bytes7376 : Bytes := ("    let r00001cfb: u32 = r00001cf9 ^ r00001cfa;\n" : String).toByteArray.data.toList
theorem checked7376 : bytes7376=statementBytes 7419 (op7376.map lower) ∧ bytes7376.length=48 := by core033_kernel_decide
def op7377 : List WordIR.Op := [.badd 7333 7419]
def bytes7377 : Bytes := ("    let r00001cfc: u32 = r00001ca5.wrapping_add(r00001cfb);\n" : String).toByteArray.data.toList
theorem checked7377 : bytes7377=statementBytes 7420 (op7377.map lower) ∧ bytes7377.length=60 := by core033_kernel_decide
def op7378 : List WordIR.Op := [.band 7414 7387]
def bytes7378 : Bytes := ("    let r00001cfd: u32 = r00001cf6 & r00001cdb;\n" : String).toByteArray.data.toList
theorem checked7378 : bytes7378=statementBytes 7421 (op7378.map lower) ∧ bytes7378.length=48 := by core033_kernel_decide
def op7379 : List WordIR.Op := [.bnot 7414]
def bytes7379 : Bytes := ("    let r00001cfe: u32 = !r00001cf6;\n" : String).toByteArray.data.toList
theorem checked7379 : bytes7379=statementBytes 7422 (op7379.map lower) ∧ bytes7379.length=37 := by core033_kernel_decide
def op7380 : List WordIR.Op := [.band 7422 7360]
def bytes7380 : Bytes := ("    let r00001cff: u32 = r00001cfe & r00001cc0;\n" : String).toByteArray.data.toList
theorem checked7380 : bytes7380=statementBytes 7423 (op7380.map lower) ∧ bytes7380.length=48 := by core033_kernel_decide
def op7381 : List WordIR.Op := [.bxor 7421 7423]
def bytes7381 : Bytes := ("    let r00001d00: u32 = r00001cfd ^ r00001cff;\n" : String).toByteArray.data.toList
theorem checked7381 : bytes7381=statementBytes 7424 (op7381.map lower) ∧ bytes7381.length=48 := by core033_kernel_decide
def op7382 : List WordIR.Op := [.badd 7420 7424]
def bytes7382 : Bytes := ("    let r00001d01: u32 = r00001cfc.wrapping_add(r00001d00);\n" : String).toByteArray.data.toList
theorem checked7382 : bytes7382=statementBytes 7425 (op7382.map lower) ∧ bytes7382.length=60 := by core033_kernel_decide
def op7383 : List WordIR.Op := [.literal (BitVec.ofNat 32 2614888103)]
def bytes7383 : Bytes := ("    let r00001d02: u32 = 0x9bdc06a7_u32;\n" : String).toByteArray.data.toList
theorem checked7383 : bytes7383=statementBytes 7426 (op7383.map lower) ∧ bytes7383.length=41 := by core033_kernel_decide
def op7384 : List WordIR.Op := [.badd 7425 7426]
def bytes7384 : Bytes := ("    let r00001d03: u32 = r00001d01.wrapping_add(r00001d02);\n" : String).toByteArray.data.toList
theorem checked7384 : bytes7384=statementBytes 7427 (op7384.map lower) ∧ bytes7384.length=60 := by core033_kernel_decide
def op7385 : List WordIR.Op := [.badd 7427 5254]
def bytes7385 : Bytes := ("    let r00001d04: u32 = r00001d03.wrapping_add(r00001486);\n" : String).toByteArray.data.toList
theorem checked7385 : bytes7385=statementBytes 7428 (op7385.map lower) ∧ bytes7385.length=60 := by core033_kernel_decide
def op7386 : List WordIR.Op := [.rotr 7413 2]
def bytes7386 : Bytes := ("    let r00001d05: u32 = r00001cf5.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7386 : bytes7386=statementBytes 7429 (op7386.map lower) ∧ bytes7386.length=65 := by core033_kernel_decide
def op7387 : List WordIR.Op := [.rotr 7413 13]
def bytes7387 : Bytes := ("    let r00001d06: u32 = r00001cf5.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7387 : bytes7387=statementBytes 7430 (op7387.map lower) ∧ bytes7387.length=65 := by core033_kernel_decide
def op7388 : List WordIR.Op := [.bxor 7429 7430]
def bytes7388 : Bytes := ("    let r00001d07: u32 = r00001d05 ^ r00001d06;\n" : String).toByteArray.data.toList
theorem checked7388 : bytes7388=statementBytes 7431 (op7388.map lower) ∧ bytes7388.length=48 := by core033_kernel_decide
def op7389 : List WordIR.Op := [.rotr 7413 22]
def bytes7389 : Bytes := ("    let r00001d08: u32 = r00001cf5.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7389 : bytes7389=statementBytes 7432 (op7389.map lower) ∧ bytes7389.length=65 := by core033_kernel_decide
def op7390 : List WordIR.Op := [.bxor 7431 7432]
def bytes7390 : Bytes := ("    let r00001d09: u32 = r00001d07 ^ r00001d08;\n" : String).toByteArray.data.toList
theorem checked7390 : bytes7390=statementBytes 7433 (op7390.map lower) ∧ bytes7390.length=48 := by core033_kernel_decide
def op7391 : List WordIR.Op := [.band 7413 7386]
def bytes7391 : Bytes := ("    let r00001d0a: u32 = r00001cf5 & r00001cda;\n" : String).toByteArray.data.toList
theorem checked7391 : bytes7391=statementBytes 7434 (op7391.map lower) ∧ bytes7391.length=48 := by core033_kernel_decide
def op7392 : List WordIR.Op := [.band 7413 7359]
def bytes7392 : Bytes := ("    let r00001d0b: u32 = r00001cf5 & r00001cbf;\n" : String).toByteArray.data.toList
theorem checked7392 : bytes7392=statementBytes 7435 (op7392.map lower) ∧ bytes7392.length=48 := by core033_kernel_decide
def op7393 : List WordIR.Op := [.bxor 7434 7435]
def bytes7393 : Bytes := ("    let r00001d0c: u32 = r00001d0a ^ r00001d0b;\n" : String).toByteArray.data.toList
theorem checked7393 : bytes7393=statementBytes 7436 (op7393.map lower) ∧ bytes7393.length=48 := by core033_kernel_decide
def op7394 : List WordIR.Op := [.band 7386 7359]
def bytes7394 : Bytes := ("    let r00001d0d: u32 = r00001cda & r00001cbf;\n" : String).toByteArray.data.toList
theorem checked7394 : bytes7394=statementBytes 7437 (op7394.map lower) ∧ bytes7394.length=48 := by core033_kernel_decide
def op7395 : List WordIR.Op := [.bxor 7436 7437]
def bytes7395 : Bytes := ("    let r00001d0e: u32 = r00001d0c ^ r00001d0d;\n" : String).toByteArray.data.toList
theorem checked7395 : bytes7395=statementBytes 7438 (op7395.map lower) ∧ bytes7395.length=48 := by core033_kernel_decide
def op7396 : List WordIR.Op := [.badd 7433 7438]
def bytes7396 : Bytes := ("    let r00001d0f: u32 = r00001d09.wrapping_add(r00001d0e);\n" : String).toByteArray.data.toList
theorem checked7396 : bytes7396=statementBytes 7439 (op7396.map lower) ∧ bytes7396.length=60 := by core033_kernel_decide
def op7397 : List WordIR.Op := [.badd 7428 7439]
def bytes7397 : Bytes := ("    let r00001d10: u32 = r00001d04.wrapping_add(r00001d0f);\n" : String).toByteArray.data.toList
theorem checked7397 : bytes7397=statementBytes 7440 (op7397.map lower) ∧ bytes7397.length=60 := by core033_kernel_decide
def op7398 : List WordIR.Op := [.badd 7332 7428]
def bytes7398 : Bytes := ("    let r00001d11: u32 = r00001ca4.wrapping_add(r00001d04);\n" : String).toByteArray.data.toList
theorem checked7398 : bytes7398=statementBytes 7441 (op7398.map lower) ∧ bytes7398.length=60 := by core033_kernel_decide
def op7399 : List WordIR.Op := [.rotr 7441 6]
def bytes7399 : Bytes := ("    let r00001d12: u32 = r00001d11.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7399 : bytes7399=statementBytes 7442 (op7399.map lower) ∧ bytes7399.length=65 := by core033_kernel_decide
def op7400 : List WordIR.Op := [.rotr 7441 11]
def bytes7400 : Bytes := ("    let r00001d13: u32 = r00001d11.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7400 : bytes7400=statementBytes 7443 (op7400.map lower) ∧ bytes7400.length=65 := by core033_kernel_decide
def op7401 : List WordIR.Op := [.bxor 7442 7443]
def bytes7401 : Bytes := ("    let r00001d14: u32 = r00001d12 ^ r00001d13;\n" : String).toByteArray.data.toList
theorem checked7401 : bytes7401=statementBytes 7444 (op7401.map lower) ∧ bytes7401.length=48 := by core033_kernel_decide
def op7402 : List WordIR.Op := [.rotr 7441 25]
def bytes7402 : Bytes := ("    let r00001d15: u32 = r00001d11.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7402 : bytes7402=statementBytes 7445 (op7402.map lower) ∧ bytes7402.length=65 := by core033_kernel_decide
def op7403 : List WordIR.Op := [.bxor 7444 7445]
def bytes7403 : Bytes := ("    let r00001d16: u32 = r00001d14 ^ r00001d15;\n" : String).toByteArray.data.toList
theorem checked7403 : bytes7403=statementBytes 7446 (op7403.map lower) ∧ bytes7403.length=48 := by core033_kernel_decide
def op7404 : List WordIR.Op := [.badd 7360 7446]
def bytes7404 : Bytes := ("    let r00001d17: u32 = r00001cc0.wrapping_add(r00001d16);\n" : String).toByteArray.data.toList
theorem checked7404 : bytes7404=statementBytes 7447 (op7404.map lower) ∧ bytes7404.length=60 := by core033_kernel_decide
def op7405 : List WordIR.Op := [.band 7441 7414]
def bytes7405 : Bytes := ("    let r00001d18: u32 = r00001d11 & r00001cf6;\n" : String).toByteArray.data.toList
theorem checked7405 : bytes7405=statementBytes 7448 (op7405.map lower) ∧ bytes7405.length=48 := by core033_kernel_decide
def op7406 : List WordIR.Op := [.bnot 7441]
def bytes7406 : Bytes := ("    let r00001d19: u32 = !r00001d11;\n" : String).toByteArray.data.toList
theorem checked7406 : bytes7406=statementBytes 7449 (op7406.map lower) ∧ bytes7406.length=37 := by core033_kernel_decide
def op7407 : List WordIR.Op := [.band 7449 7387]
def bytes7407 : Bytes := ("    let r00001d1a: u32 = r00001d19 & r00001cdb;\n" : String).toByteArray.data.toList
theorem checked7407 : bytes7407=statementBytes 7450 (op7407.map lower) ∧ bytes7407.length=48 := by core033_kernel_decide
def op7408 : List WordIR.Op := [.bxor 7448 7450]
def bytes7408 : Bytes := ("    let r00001d1b: u32 = r00001d18 ^ r00001d1a;\n" : String).toByteArray.data.toList
theorem checked7408 : bytes7408=statementBytes 7451 (op7408.map lower) ∧ bytes7408.length=48 := by core033_kernel_decide
def op7409 : List WordIR.Op := [.badd 7447 7451]
def bytes7409 : Bytes := ("    let r00001d1c: u32 = r00001d17.wrapping_add(r00001d1b);\n" : String).toByteArray.data.toList
theorem checked7409 : bytes7409=statementBytes 7452 (op7409.map lower) ∧ bytes7409.length=60 := by core033_kernel_decide
def op7410 : List WordIR.Op := [.literal (BitVec.ofNat 32 3248222580)]
def bytes7410 : Bytes := ("    let r00001d1d: u32 = 0xc19bf174_u32;\n" : String).toByteArray.data.toList
theorem checked7410 : bytes7410=statementBytes 7453 (op7410.map lower) ∧ bytes7410.length=41 := by core033_kernel_decide
def op7411 : List WordIR.Op := [.badd 7452 7453]
def bytes7411 : Bytes := ("    let r00001d1e: u32 = r00001d1c.wrapping_add(r00001d1d);\n" : String).toByteArray.data.toList
theorem checked7411 : bytes7411=statementBytes 7454 (op7411.map lower) ∧ bytes7411.length=60 := by core033_kernel_decide
def op7412 : List WordIR.Op := [.badd 7454 5260]
def bytes7412 : Bytes := ("    let r00001d1f: u32 = r00001d1e.wrapping_add(r0000148c);\n" : String).toByteArray.data.toList
theorem checked7412 : bytes7412=statementBytes 7455 (op7412.map lower) ∧ bytes7412.length=60 := by core033_kernel_decide
def op7413 : List WordIR.Op := [.rotr 7440 2]
def bytes7413 : Bytes := ("    let r00001d20: u32 = r00001d10.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7413 : bytes7413=statementBytes 7456 (op7413.map lower) ∧ bytes7413.length=65 := by core033_kernel_decide
def op7414 : List WordIR.Op := [.rotr 7440 13]
def bytes7414 : Bytes := ("    let r00001d21: u32 = r00001d10.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7414 : bytes7414=statementBytes 7457 (op7414.map lower) ∧ bytes7414.length=65 := by core033_kernel_decide
def op7415 : List WordIR.Op := [.bxor 7456 7457]
def bytes7415 : Bytes := ("    let r00001d22: u32 = r00001d20 ^ r00001d21;\n" : String).toByteArray.data.toList
theorem checked7415 : bytes7415=statementBytes 7458 (op7415.map lower) ∧ bytes7415.length=48 := by core033_kernel_decide
def op7416 : List WordIR.Op := [.rotr 7440 22]
def bytes7416 : Bytes := ("    let r00001d23: u32 = r00001d10.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7416 : bytes7416=statementBytes 7459 (op7416.map lower) ∧ bytes7416.length=65 := by core033_kernel_decide
def op7417 : List WordIR.Op := [.bxor 7458 7459]
def bytes7417 : Bytes := ("    let r00001d24: u32 = r00001d22 ^ r00001d23;\n" : String).toByteArray.data.toList
theorem checked7417 : bytes7417=statementBytes 7460 (op7417.map lower) ∧ bytes7417.length=48 := by core033_kernel_decide
def op7418 : List WordIR.Op := [.band 7440 7413]
def bytes7418 : Bytes := ("    let r00001d25: u32 = r00001d10 & r00001cf5;\n" : String).toByteArray.data.toList
theorem checked7418 : bytes7418=statementBytes 7461 (op7418.map lower) ∧ bytes7418.length=48 := by core033_kernel_decide
def op7419 : List WordIR.Op := [.band 7440 7386]
def bytes7419 : Bytes := ("    let r00001d26: u32 = r00001d10 & r00001cda;\n" : String).toByteArray.data.toList
theorem checked7419 : bytes7419=statementBytes 7462 (op7419.map lower) ∧ bytes7419.length=48 := by core033_kernel_decide
def op7420 : List WordIR.Op := [.bxor 7461 7462]
def bytes7420 : Bytes := ("    let r00001d27: u32 = r00001d25 ^ r00001d26;\n" : String).toByteArray.data.toList
theorem checked7420 : bytes7420=statementBytes 7463 (op7420.map lower) ∧ bytes7420.length=48 := by core033_kernel_decide
def op7421 : List WordIR.Op := [.band 7413 7386]
def bytes7421 : Bytes := ("    let r00001d28: u32 = r00001cf5 & r00001cda;\n" : String).toByteArray.data.toList
theorem checked7421 : bytes7421=statementBytes 7464 (op7421.map lower) ∧ bytes7421.length=48 := by core033_kernel_decide
def op7422 : List WordIR.Op := [.bxor 7463 7464]
def bytes7422 : Bytes := ("    let r00001d29: u32 = r00001d27 ^ r00001d28;\n" : String).toByteArray.data.toList
theorem checked7422 : bytes7422=statementBytes 7465 (op7422.map lower) ∧ bytes7422.length=48 := by core033_kernel_decide
def op7423 : List WordIR.Op := [.badd 7460 7465]
def bytes7423 : Bytes := ("    let r00001d2a: u32 = r00001d24.wrapping_add(r00001d29);\n" : String).toByteArray.data.toList
theorem checked7423 : bytes7423=statementBytes 7466 (op7423.map lower) ∧ bytes7423.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7360,op7361,op7362,op7363,op7364,op7365,op7366,op7367,op7368,op7369,op7370,op7371,op7372,op7373,op7374,op7375,op7376,op7377,op7378,op7379,op7380,op7381,op7382,op7383,op7384,op7385,op7386,op7387,op7388,op7389,op7390,op7391,op7392,op7393,op7394,op7395,op7396,op7397,op7398,op7399,op7400,op7401,op7402,op7403,op7404,op7405,op7406,op7407,op7408,op7409,op7410,op7411,op7412,op7413,op7414,op7415,op7416,op7417,op7418,op7419,op7420,op7421,op7422,op7423]
def chunks : List Bytes := [bytes7360,bytes7361,bytes7362,bytes7363,bytes7364,bytes7365,bytes7366,bytes7367,bytes7368,bytes7369,bytes7370,bytes7371,bytes7372,bytes7373,bytes7374,bytes7375,bytes7376,bytes7377,bytes7378,bytes7379,bytes7380,bytes7381,bytes7382,bytes7383,bytes7384,bytes7385,bytes7386,bytes7387,bytes7388,bytes7389,bytes7390,bytes7391,bytes7392,bytes7393,bytes7394,bytes7395,bytes7396,bytes7397,bytes7398,bytes7399,bytes7400,bytes7401,bytes7402,bytes7403,bytes7404,bytes7405,bytes7406,bytes7407,bytes7408,bytes7409,bytes7410,bytes7411,bytes7412,bytes7413,bytes7414,bytes7415,bytes7416,bytes7417,bytes7418,bytes7419,bytes7420,bytes7421,bytes7422,bytes7423]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7403 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7360.1 (.cons _ _ _ _ _ checked7361.1 (.cons _ _ _ _ _ checked7362.1 (.cons _ _ _ _ _ checked7363.1 (.cons _ _ _ _ _ checked7364.1 (.cons _ _ _ _ _ checked7365.1 (.cons _ _ _ _ _ checked7366.1 (.cons _ _ _ _ _ checked7367.1 (.cons _ _ _ _ _ checked7368.1 (.cons _ _ _ _ _ checked7369.1 (.cons _ _ _ _ _ checked7370.1 (.cons _ _ _ _ _ checked7371.1 (.cons _ _ _ _ _ checked7372.1 (.cons _ _ _ _ _ checked7373.1 (.cons _ _ _ _ _ checked7374.1 (.cons _ _ _ _ _ checked7375.1 (.cons _ _ _ _ _ checked7376.1 (.cons _ _ _ _ _ checked7377.1 (.cons _ _ _ _ _ checked7378.1 (.cons _ _ _ _ _ checked7379.1 (.cons _ _ _ _ _ checked7380.1 (.cons _ _ _ _ _ checked7381.1 (.cons _ _ _ _ _ checked7382.1 (.cons _ _ _ _ _ checked7383.1 (.cons _ _ _ _ _ checked7384.1 (.cons _ _ _ _ _ checked7385.1 (.cons _ _ _ _ _ checked7386.1 (.cons _ _ _ _ _ checked7387.1 (.cons _ _ _ _ _ checked7388.1 (.cons _ _ _ _ _ checked7389.1 (.cons _ _ _ _ _ checked7390.1 (.cons _ _ _ _ _ checked7391.1 (.cons _ _ _ _ _ checked7392.1 (.cons _ _ _ _ _ checked7393.1 (.cons _ _ _ _ _ checked7394.1 (.cons _ _ _ _ _ checked7395.1 (.cons _ _ _ _ _ checked7396.1 (.cons _ _ _ _ _ checked7397.1 (.cons _ _ _ _ _ checked7398.1 (.cons _ _ _ _ _ checked7399.1 (.cons _ _ _ _ _ checked7400.1 (.cons _ _ _ _ _ checked7401.1 (.cons _ _ _ _ _ checked7402.1 (.cons _ _ _ _ _ checked7403.1 (.cons _ _ _ _ _ checked7404.1 (.cons _ _ _ _ _ checked7405.1 (.cons _ _ _ _ _ checked7406.1 (.cons _ _ _ _ _ checked7407.1 (.cons _ _ _ _ _ checked7408.1 (.cons _ _ _ _ _ checked7409.1 (.cons _ _ _ _ _ checked7410.1 (.cons _ _ _ _ _ checked7411.1 (.cons _ _ _ _ _ checked7412.1 (.cons _ _ _ _ _ checked7413.1 (.cons _ _ _ _ _ checked7414.1 (.cons _ _ _ _ _ checked7415.1 (.cons _ _ _ _ _ checked7416.1 (.cons _ _ _ _ _ checked7417.1 (.cons _ _ _ _ _ checked7418.1 (.cons _ _ _ _ _ checked7419.1 (.cons _ _ _ _ _ checked7420.1 (.cons _ _ _ _ _ checked7421.1 (.cons _ _ _ _ _ checked7422.1 (.cons _ _ _ _ _ checked7423.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7403 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3454 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7360.2,checked7361.2,checked7362.2,checked7363.2,checked7364.2,checked7365.2,checked7366.2,checked7367.2,checked7368.2,checked7369.2,checked7370.2,checked7371.2,checked7372.2,checked7373.2,checked7374.2,checked7375.2,checked7376.2,checked7377.2,checked7378.2,checked7379.2,checked7380.2,checked7381.2,checked7382.2,checked7383.2,checked7384.2,checked7385.2,checked7386.2,checked7387.2,checked7388.2,checked7389.2,checked7390.2,checked7391.2,checked7392.2,checked7393.2,checked7394.2,checked7395.2,checked7396.2,checked7397.2,checked7398.2,checked7399.2,checked7400.2,checked7401.2,checked7402.2,checked7403.2,checked7404.2,checked7405.2,checked7406.2,checked7407.2,checked7408.2,checked7409.2,checked7410.2,checked7411.2,checked7412.2,checked7413.2,checked7414.2,checked7415.2,checked7416.2,checked7417.2,checked7418.2,checked7419.2,checked7420.2,checked7421.2,checked7422.2,checked7423.2]
  decide
end ArtifactFrameHashControllerGroup115
