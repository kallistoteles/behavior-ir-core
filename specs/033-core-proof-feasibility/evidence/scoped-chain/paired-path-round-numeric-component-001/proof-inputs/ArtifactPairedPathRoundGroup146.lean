import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup146
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9344 : List WordIR.Op := [.rotr 9421 22]
def bytes9344 : Bytes := ("    let r000024e0: u32 = r000024cd.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9344 : bytes9344=statementBytes 9440 (op9344.map lower) ∧ bytes9344.length=65 := by core033_kernel_decide
def op9345 : List WordIR.Op := [.bxor 9439 9440]
def bytes9345 : Bytes := ("    let r000024e1: u32 = r000024df ^ r000024e0;\n" : String).toByteArray.data.toList
theorem checked9345 : bytes9345=statementBytes 9441 (op9345.map lower) ∧ bytes9345.length=48 := by core033_kernel_decide
def op9346 : List WordIR.Op := [.band 9421 9394]
def bytes9346 : Bytes := ("    let r000024e2: u32 = r000024cd & r000024b2;\n" : String).toByteArray.data.toList
theorem checked9346 : bytes9346=statementBytes 9442 (op9346.map lower) ∧ bytes9346.length=48 := by core033_kernel_decide
def op9347 : List WordIR.Op := [.band 9421 9367]
def bytes9347 : Bytes := ("    let r000024e3: u32 = r000024cd & r00002497;\n" : String).toByteArray.data.toList
theorem checked9347 : bytes9347=statementBytes 9443 (op9347.map lower) ∧ bytes9347.length=48 := by core033_kernel_decide
def op9348 : List WordIR.Op := [.bxor 9442 9443]
def bytes9348 : Bytes := ("    let r000024e4: u32 = r000024e2 ^ r000024e3;\n" : String).toByteArray.data.toList
theorem checked9348 : bytes9348=statementBytes 9444 (op9348.map lower) ∧ bytes9348.length=48 := by core033_kernel_decide
def op9349 : List WordIR.Op := [.band 9394 9367]
def bytes9349 : Bytes := ("    let r000024e5: u32 = r000024b2 & r00002497;\n" : String).toByteArray.data.toList
theorem checked9349 : bytes9349=statementBytes 9445 (op9349.map lower) ∧ bytes9349.length=48 := by core033_kernel_decide
def op9350 : List WordIR.Op := [.bxor 9444 9445]
def bytes9350 : Bytes := ("    let r000024e6: u32 = r000024e4 ^ r000024e5;\n" : String).toByteArray.data.toList
theorem checked9350 : bytes9350=statementBytes 9446 (op9350.map lower) ∧ bytes9350.length=48 := by core033_kernel_decide
def op9351 : List WordIR.Op := [.badd 9441 9446]
def bytes9351 : Bytes := ("    let r000024e7: u32 = r000024e1.wrapping_add(r000024e6);\n" : String).toByteArray.data.toList
theorem checked9351 : bytes9351=statementBytes 9447 (op9351.map lower) ∧ bytes9351.length=60 := by core033_kernel_decide
def op9352 : List WordIR.Op := [.badd 9436 9447]
def bytes9352 : Bytes := ("    let r000024e8: u32 = r000024dc.wrapping_add(r000024e7);\n" : String).toByteArray.data.toList
theorem checked9352 : bytes9352=statementBytes 9448 (op9352.map lower) ∧ bytes9352.length=60 := by core033_kernel_decide
def op9353 : List WordIR.Op := [.badd 9340 9436]
def bytes9353 : Bytes := ("    let r000024e9: u32 = r0000247c.wrapping_add(r000024dc);\n" : String).toByteArray.data.toList
theorem checked9353 : bytes9353=statementBytes 9449 (op9353.map lower) ∧ bytes9353.length=60 := by core033_kernel_decide
def op9354 : List WordIR.Op := [.rotr 9449 6]
def bytes9354 : Bytes := ("    let r000024ea: u32 = r000024e9.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9354 : bytes9354=statementBytes 9450 (op9354.map lower) ∧ bytes9354.length=65 := by core033_kernel_decide
def op9355 : List WordIR.Op := [.rotr 9449 11]
def bytes9355 : Bytes := ("    let r000024eb: u32 = r000024e9.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9355 : bytes9355=statementBytes 9451 (op9355.map lower) ∧ bytes9355.length=65 := by core033_kernel_decide
def op9356 : List WordIR.Op := [.bxor 9450 9451]
def bytes9356 : Bytes := ("    let r000024ec: u32 = r000024ea ^ r000024eb;\n" : String).toByteArray.data.toList
theorem checked9356 : bytes9356=statementBytes 9452 (op9356.map lower) ∧ bytes9356.length=48 := by core033_kernel_decide
def op9357 : List WordIR.Op := [.rotr 9449 25]
def bytes9357 : Bytes := ("    let r000024ed: u32 = r000024e9.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9357 : bytes9357=statementBytes 9453 (op9357.map lower) ∧ bytes9357.length=65 := by core033_kernel_decide
def op9358 : List WordIR.Op := [.bxor 9452 9453]
def bytes9358 : Bytes := ("    let r000024ee: u32 = r000024ec ^ r000024ed;\n" : String).toByteArray.data.toList
theorem checked9358 : bytes9358=statementBytes 9454 (op9358.map lower) ∧ bytes9358.length=48 := by core033_kernel_decide
def op9359 : List WordIR.Op := [.badd 9368 9454]
def bytes9359 : Bytes := ("    let r000024ef: u32 = r00002498.wrapping_add(r000024ee);\n" : String).toByteArray.data.toList
theorem checked9359 : bytes9359=statementBytes 9455 (op9359.map lower) ∧ bytes9359.length=60 := by core033_kernel_decide
def op9360 : List WordIR.Op := [.band 9449 9422]
def bytes9360 : Bytes := ("    let r000024f0: u32 = r000024e9 & r000024ce;\n" : String).toByteArray.data.toList
theorem checked9360 : bytes9360=statementBytes 9456 (op9360.map lower) ∧ bytes9360.length=48 := by core033_kernel_decide
def op9361 : List WordIR.Op := [.bnot 9449]
def bytes9361 : Bytes := ("    let r000024f1: u32 = !r000024e9;\n" : String).toByteArray.data.toList
theorem checked9361 : bytes9361=statementBytes 9457 (op9361.map lower) ∧ bytes9361.length=37 := by core033_kernel_decide
def op9362 : List WordIR.Op := [.band 9457 9395]
def bytes9362 : Bytes := ("    let r000024f2: u32 = r000024f1 & r000024b3;\n" : String).toByteArray.data.toList
theorem checked9362 : bytes9362=statementBytes 9458 (op9362.map lower) ∧ bytes9362.length=48 := by core033_kernel_decide
def op9363 : List WordIR.Op := [.bxor 9456 9458]
def bytes9363 : Bytes := ("    let r000024f3: u32 = r000024f0 ^ r000024f2;\n" : String).toByteArray.data.toList
theorem checked9363 : bytes9363=statementBytes 9459 (op9363.map lower) ∧ bytes9363.length=48 := by core033_kernel_decide
def op9364 : List WordIR.Op := [.badd 9455 9459]
def bytes9364 : Bytes := ("    let r000024f4: u32 = r000024ef.wrapping_add(r000024f3);\n" : String).toByteArray.data.toList
theorem checked9364 : bytes9364=statementBytes 9460 (op9364.map lower) ∧ bytes9364.length=60 := by core033_kernel_decide
def op9365 : List WordIR.Op := [.literal (BitVec.ofNat 32 883997877)]
def bytes9365 : Bytes := ("    let r000024f5: u32 = 0x34b0bcb5_u32;\n" : String).toByteArray.data.toList
theorem checked9365 : bytes9365=statementBytes 9461 (op9365.map lower) ∧ bytes9365.length=41 := by core033_kernel_decide
def op9366 : List WordIR.Op := [.badd 9460 9461]
def bytes9366 : Bytes := ("    let r000024f6: u32 = r000024f4.wrapping_add(r000024f5);\n" : String).toByteArray.data.toList
theorem checked9366 : bytes9366=statementBytes 9462 (op9366.map lower) ∧ bytes9366.length=60 := by core033_kernel_decide
def op9367 : List WordIR.Op := [.badd 9462 7916]
def bytes9367 : Bytes := ("    let r000024f7: u32 = r000024f6.wrapping_add(r00001eec);\n" : String).toByteArray.data.toList
theorem checked9367 : bytes9367=statementBytes 9463 (op9367.map lower) ∧ bytes9367.length=60 := by core033_kernel_decide
def op9368 : List WordIR.Op := [.rotr 9448 2]
def bytes9368 : Bytes := ("    let r000024f8: u32 = r000024e8.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9368 : bytes9368=statementBytes 9464 (op9368.map lower) ∧ bytes9368.length=65 := by core033_kernel_decide
def op9369 : List WordIR.Op := [.rotr 9448 13]
def bytes9369 : Bytes := ("    let r000024f9: u32 = r000024e8.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9369 : bytes9369=statementBytes 9465 (op9369.map lower) ∧ bytes9369.length=65 := by core033_kernel_decide
def op9370 : List WordIR.Op := [.bxor 9464 9465]
def bytes9370 : Bytes := ("    let r000024fa: u32 = r000024f8 ^ r000024f9;\n" : String).toByteArray.data.toList
theorem checked9370 : bytes9370=statementBytes 9466 (op9370.map lower) ∧ bytes9370.length=48 := by core033_kernel_decide
def op9371 : List WordIR.Op := [.rotr 9448 22]
def bytes9371 : Bytes := ("    let r000024fb: u32 = r000024e8.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9371 : bytes9371=statementBytes 9467 (op9371.map lower) ∧ bytes9371.length=65 := by core033_kernel_decide
def op9372 : List WordIR.Op := [.bxor 9466 9467]
def bytes9372 : Bytes := ("    let r000024fc: u32 = r000024fa ^ r000024fb;\n" : String).toByteArray.data.toList
theorem checked9372 : bytes9372=statementBytes 9468 (op9372.map lower) ∧ bytes9372.length=48 := by core033_kernel_decide
def op9373 : List WordIR.Op := [.band 9448 9421]
def bytes9373 : Bytes := ("    let r000024fd: u32 = r000024e8 & r000024cd;\n" : String).toByteArray.data.toList
theorem checked9373 : bytes9373=statementBytes 9469 (op9373.map lower) ∧ bytes9373.length=48 := by core033_kernel_decide
def op9374 : List WordIR.Op := [.band 9448 9394]
def bytes9374 : Bytes := ("    let r000024fe: u32 = r000024e8 & r000024b2;\n" : String).toByteArray.data.toList
theorem checked9374 : bytes9374=statementBytes 9470 (op9374.map lower) ∧ bytes9374.length=48 := by core033_kernel_decide
def op9375 : List WordIR.Op := [.bxor 9469 9470]
def bytes9375 : Bytes := ("    let r000024ff: u32 = r000024fd ^ r000024fe;\n" : String).toByteArray.data.toList
theorem checked9375 : bytes9375=statementBytes 9471 (op9375.map lower) ∧ bytes9375.length=48 := by core033_kernel_decide
def op9376 : List WordIR.Op := [.band 9421 9394]
def bytes9376 : Bytes := ("    let r00002500: u32 = r000024cd & r000024b2;\n" : String).toByteArray.data.toList
theorem checked9376 : bytes9376=statementBytes 9472 (op9376.map lower) ∧ bytes9376.length=48 := by core033_kernel_decide
def op9377 : List WordIR.Op := [.bxor 9471 9472]
def bytes9377 : Bytes := ("    let r00002501: u32 = r000024ff ^ r00002500;\n" : String).toByteArray.data.toList
theorem checked9377 : bytes9377=statementBytes 9473 (op9377.map lower) ∧ bytes9377.length=48 := by core033_kernel_decide
def op9378 : List WordIR.Op := [.badd 9468 9473]
def bytes9378 : Bytes := ("    let r00002502: u32 = r000024fc.wrapping_add(r00002501);\n" : String).toByteArray.data.toList
theorem checked9378 : bytes9378=statementBytes 9474 (op9378.map lower) ∧ bytes9378.length=60 := by core033_kernel_decide
def op9379 : List WordIR.Op := [.badd 9463 9474]
def bytes9379 : Bytes := ("    let r00002503: u32 = r000024f7.wrapping_add(r00002502);\n" : String).toByteArray.data.toList
theorem checked9379 : bytes9379=statementBytes 9475 (op9379.map lower) ∧ bytes9379.length=60 := by core033_kernel_decide
def op9380 : List WordIR.Op := [.badd 9367 9463]
def bytes9380 : Bytes := ("    let r00002504: u32 = r00002497.wrapping_add(r000024f7);\n" : String).toByteArray.data.toList
theorem checked9380 : bytes9380=statementBytes 9476 (op9380.map lower) ∧ bytes9380.length=60 := by core033_kernel_decide
def op9381 : List WordIR.Op := [.rotr 9476 6]
def bytes9381 : Bytes := ("    let r00002505: u32 = r00002504.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9381 : bytes9381=statementBytes 9477 (op9381.map lower) ∧ bytes9381.length=65 := by core033_kernel_decide
def op9382 : List WordIR.Op := [.rotr 9476 11]
def bytes9382 : Bytes := ("    let r00002506: u32 = r00002504.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9382 : bytes9382=statementBytes 9478 (op9382.map lower) ∧ bytes9382.length=65 := by core033_kernel_decide
def op9383 : List WordIR.Op := [.bxor 9477 9478]
def bytes9383 : Bytes := ("    let r00002507: u32 = r00002505 ^ r00002506;\n" : String).toByteArray.data.toList
theorem checked9383 : bytes9383=statementBytes 9479 (op9383.map lower) ∧ bytes9383.length=48 := by core033_kernel_decide
def op9384 : List WordIR.Op := [.rotr 9476 25]
def bytes9384 : Bytes := ("    let r00002508: u32 = r00002504.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9384 : bytes9384=statementBytes 9480 (op9384.map lower) ∧ bytes9384.length=65 := by core033_kernel_decide
def op9385 : List WordIR.Op := [.bxor 9479 9480]
def bytes9385 : Bytes := ("    let r00002509: u32 = r00002507 ^ r00002508;\n" : String).toByteArray.data.toList
theorem checked9385 : bytes9385=statementBytes 9481 (op9385.map lower) ∧ bytes9385.length=48 := by core033_kernel_decide
def op9386 : List WordIR.Op := [.badd 9395 9481]
def bytes9386 : Bytes := ("    let r0000250a: u32 = r000024b3.wrapping_add(r00002509);\n" : String).toByteArray.data.toList
theorem checked9386 : bytes9386=statementBytes 9482 (op9386.map lower) ∧ bytes9386.length=60 := by core033_kernel_decide
def op9387 : List WordIR.Op := [.band 9476 9449]
def bytes9387 : Bytes := ("    let r0000250b: u32 = r00002504 & r000024e9;\n" : String).toByteArray.data.toList
theorem checked9387 : bytes9387=statementBytes 9483 (op9387.map lower) ∧ bytes9387.length=48 := by core033_kernel_decide
def op9388 : List WordIR.Op := [.bnot 9476]
def bytes9388 : Bytes := ("    let r0000250c: u32 = !r00002504;\n" : String).toByteArray.data.toList
theorem checked9388 : bytes9388=statementBytes 9484 (op9388.map lower) ∧ bytes9388.length=37 := by core033_kernel_decide
def op9389 : List WordIR.Op := [.band 9484 9422]
def bytes9389 : Bytes := ("    let r0000250d: u32 = r0000250c & r000024ce;\n" : String).toByteArray.data.toList
theorem checked9389 : bytes9389=statementBytes 9485 (op9389.map lower) ∧ bytes9389.length=48 := by core033_kernel_decide
def op9390 : List WordIR.Op := [.bxor 9483 9485]
def bytes9390 : Bytes := ("    let r0000250e: u32 = r0000250b ^ r0000250d;\n" : String).toByteArray.data.toList
theorem checked9390 : bytes9390=statementBytes 9486 (op9390.map lower) ∧ bytes9390.length=48 := by core033_kernel_decide
def op9391 : List WordIR.Op := [.badd 9482 9486]
def bytes9391 : Bytes := ("    let r0000250f: u32 = r0000250a.wrapping_add(r0000250e);\n" : String).toByteArray.data.toList
theorem checked9391 : bytes9391=statementBytes 9487 (op9391.map lower) ∧ bytes9391.length=60 := by core033_kernel_decide
def op9392 : List WordIR.Op := [.literal (BitVec.ofNat 32 958139571)]
def bytes9392 : Bytes := ("    let r00002510: u32 = 0x391c0cb3_u32;\n" : String).toByteArray.data.toList
theorem checked9392 : bytes9392=statementBytes 9488 (op9392.map lower) ∧ bytes9392.length=41 := by core033_kernel_decide
def op9393 : List WordIR.Op := [.badd 9487 9488]
def bytes9393 : Bytes := ("    let r00002511: u32 = r0000250f.wrapping_add(r00002510);\n" : String).toByteArray.data.toList
theorem checked9393 : bytes9393=statementBytes 9489 (op9393.map lower) ∧ bytes9393.length=60 := by core033_kernel_decide
def op9394 : List WordIR.Op := [.badd 9489 7929]
def bytes9394 : Bytes := ("    let r00002512: u32 = r00002511.wrapping_add(r00001ef9);\n" : String).toByteArray.data.toList
theorem checked9394 : bytes9394=statementBytes 9490 (op9394.map lower) ∧ bytes9394.length=60 := by core033_kernel_decide
def op9395 : List WordIR.Op := [.rotr 9475 2]
def bytes9395 : Bytes := ("    let r00002513: u32 = r00002503.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9395 : bytes9395=statementBytes 9491 (op9395.map lower) ∧ bytes9395.length=65 := by core033_kernel_decide
def op9396 : List WordIR.Op := [.rotr 9475 13]
def bytes9396 : Bytes := ("    let r00002514: u32 = r00002503.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9396 : bytes9396=statementBytes 9492 (op9396.map lower) ∧ bytes9396.length=65 := by core033_kernel_decide
def op9397 : List WordIR.Op := [.bxor 9491 9492]
def bytes9397 : Bytes := ("    let r00002515: u32 = r00002513 ^ r00002514;\n" : String).toByteArray.data.toList
theorem checked9397 : bytes9397=statementBytes 9493 (op9397.map lower) ∧ bytes9397.length=48 := by core033_kernel_decide
def op9398 : List WordIR.Op := [.rotr 9475 22]
def bytes9398 : Bytes := ("    let r00002516: u32 = r00002503.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9398 : bytes9398=statementBytes 9494 (op9398.map lower) ∧ bytes9398.length=65 := by core033_kernel_decide
def op9399 : List WordIR.Op := [.bxor 9493 9494]
def bytes9399 : Bytes := ("    let r00002517: u32 = r00002515 ^ r00002516;\n" : String).toByteArray.data.toList
theorem checked9399 : bytes9399=statementBytes 9495 (op9399.map lower) ∧ bytes9399.length=48 := by core033_kernel_decide
def op9400 : List WordIR.Op := [.band 9475 9448]
def bytes9400 : Bytes := ("    let r00002518: u32 = r00002503 & r000024e8;\n" : String).toByteArray.data.toList
theorem checked9400 : bytes9400=statementBytes 9496 (op9400.map lower) ∧ bytes9400.length=48 := by core033_kernel_decide
def op9401 : List WordIR.Op := [.band 9475 9421]
def bytes9401 : Bytes := ("    let r00002519: u32 = r00002503 & r000024cd;\n" : String).toByteArray.data.toList
theorem checked9401 : bytes9401=statementBytes 9497 (op9401.map lower) ∧ bytes9401.length=48 := by core033_kernel_decide
def op9402 : List WordIR.Op := [.bxor 9496 9497]
def bytes9402 : Bytes := ("    let r0000251a: u32 = r00002518 ^ r00002519;\n" : String).toByteArray.data.toList
theorem checked9402 : bytes9402=statementBytes 9498 (op9402.map lower) ∧ bytes9402.length=48 := by core033_kernel_decide
def op9403 : List WordIR.Op := [.band 9448 9421]
def bytes9403 : Bytes := ("    let r0000251b: u32 = r000024e8 & r000024cd;\n" : String).toByteArray.data.toList
theorem checked9403 : bytes9403=statementBytes 9499 (op9403.map lower) ∧ bytes9403.length=48 := by core033_kernel_decide
def op9404 : List WordIR.Op := [.bxor 9498 9499]
def bytes9404 : Bytes := ("    let r0000251c: u32 = r0000251a ^ r0000251b;\n" : String).toByteArray.data.toList
theorem checked9404 : bytes9404=statementBytes 9500 (op9404.map lower) ∧ bytes9404.length=48 := by core033_kernel_decide
def op9405 : List WordIR.Op := [.badd 9495 9500]
def bytes9405 : Bytes := ("    let r0000251d: u32 = r00002517.wrapping_add(r0000251c);\n" : String).toByteArray.data.toList
theorem checked9405 : bytes9405=statementBytes 9501 (op9405.map lower) ∧ bytes9405.length=60 := by core033_kernel_decide
def op9406 : List WordIR.Op := [.badd 9490 9501]
def bytes9406 : Bytes := ("    let r0000251e: u32 = r00002512.wrapping_add(r0000251d);\n" : String).toByteArray.data.toList
theorem checked9406 : bytes9406=statementBytes 9502 (op9406.map lower) ∧ bytes9406.length=60 := by core033_kernel_decide
def op9407 : List WordIR.Op := [.badd 9394 9490]
def bytes9407 : Bytes := ("    let r0000251f: u32 = r000024b2.wrapping_add(r00002512);\n" : String).toByteArray.data.toList
theorem checked9407 : bytes9407=statementBytes 9503 (op9407.map lower) ∧ bytes9407.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9344,op9345,op9346,op9347,op9348,op9349,op9350,op9351,op9352,op9353,op9354,op9355,op9356,op9357,op9358,op9359,op9360,op9361,op9362,op9363,op9364,op9365,op9366,op9367,op9368,op9369,op9370,op9371,op9372,op9373,op9374,op9375,op9376,op9377,op9378,op9379,op9380,op9381,op9382,op9383,op9384,op9385,op9386,op9387,op9388,op9389,op9390,op9391,op9392,op9393,op9394,op9395,op9396,op9397,op9398,op9399,op9400,op9401,op9402,op9403,op9404,op9405,op9406,op9407]
def chunks : List Bytes := [bytes9344,bytes9345,bytes9346,bytes9347,bytes9348,bytes9349,bytes9350,bytes9351,bytes9352,bytes9353,bytes9354,bytes9355,bytes9356,bytes9357,bytes9358,bytes9359,bytes9360,bytes9361,bytes9362,bytes9363,bytes9364,bytes9365,bytes9366,bytes9367,bytes9368,bytes9369,bytes9370,bytes9371,bytes9372,bytes9373,bytes9374,bytes9375,bytes9376,bytes9377,bytes9378,bytes9379,bytes9380,bytes9381,bytes9382,bytes9383,bytes9384,bytes9385,bytes9386,bytes9387,bytes9388,bytes9389,bytes9390,bytes9391,bytes9392,bytes9393,bytes9394,bytes9395,bytes9396,bytes9397,bytes9398,bytes9399,bytes9400,bytes9401,bytes9402,bytes9403,bytes9404,bytes9405,bytes9406,bytes9407]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9440 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9344.1 (.cons _ _ _ _ _ checked9345.1 (.cons _ _ _ _ _ checked9346.1 (.cons _ _ _ _ _ checked9347.1 (.cons _ _ _ _ _ checked9348.1 (.cons _ _ _ _ _ checked9349.1 (.cons _ _ _ _ _ checked9350.1 (.cons _ _ _ _ _ checked9351.1 (.cons _ _ _ _ _ checked9352.1 (.cons _ _ _ _ _ checked9353.1 (.cons _ _ _ _ _ checked9354.1 (.cons _ _ _ _ _ checked9355.1 (.cons _ _ _ _ _ checked9356.1 (.cons _ _ _ _ _ checked9357.1 (.cons _ _ _ _ _ checked9358.1 (.cons _ _ _ _ _ checked9359.1 (.cons _ _ _ _ _ checked9360.1 (.cons _ _ _ _ _ checked9361.1 (.cons _ _ _ _ _ checked9362.1 (.cons _ _ _ _ _ checked9363.1 (.cons _ _ _ _ _ checked9364.1 (.cons _ _ _ _ _ checked9365.1 (.cons _ _ _ _ _ checked9366.1 (.cons _ _ _ _ _ checked9367.1 (.cons _ _ _ _ _ checked9368.1 (.cons _ _ _ _ _ checked9369.1 (.cons _ _ _ _ _ checked9370.1 (.cons _ _ _ _ _ checked9371.1 (.cons _ _ _ _ _ checked9372.1 (.cons _ _ _ _ _ checked9373.1 (.cons _ _ _ _ _ checked9374.1 (.cons _ _ _ _ _ checked9375.1 (.cons _ _ _ _ _ checked9376.1 (.cons _ _ _ _ _ checked9377.1 (.cons _ _ _ _ _ checked9378.1 (.cons _ _ _ _ _ checked9379.1 (.cons _ _ _ _ _ checked9380.1 (.cons _ _ _ _ _ checked9381.1 (.cons _ _ _ _ _ checked9382.1 (.cons _ _ _ _ _ checked9383.1 (.cons _ _ _ _ _ checked9384.1 (.cons _ _ _ _ _ checked9385.1 (.cons _ _ _ _ _ checked9386.1 (.cons _ _ _ _ _ checked9387.1 (.cons _ _ _ _ _ checked9388.1 (.cons _ _ _ _ _ checked9389.1 (.cons _ _ _ _ _ checked9390.1 (.cons _ _ _ _ _ checked9391.1 (.cons _ _ _ _ _ checked9392.1 (.cons _ _ _ _ _ checked9393.1 (.cons _ _ _ _ _ checked9394.1 (.cons _ _ _ _ _ checked9395.1 (.cons _ _ _ _ _ checked9396.1 (.cons _ _ _ _ _ checked9397.1 (.cons _ _ _ _ _ checked9398.1 (.cons _ _ _ _ _ checked9399.1 (.cons _ _ _ _ _ checked9400.1 (.cons _ _ _ _ _ checked9401.1 (.cons _ _ _ _ _ checked9402.1 (.cons _ _ _ _ _ checked9403.1 (.cons _ _ _ _ _ checked9404.1 (.cons _ _ _ _ _ checked9405.1 (.cons _ _ _ _ _ checked9406.1 (.cons _ _ _ _ _ checked9407.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9440 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3461 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9344.2,checked9345.2,checked9346.2,checked9347.2,checked9348.2,checked9349.2,checked9350.2,checked9351.2,checked9352.2,checked9353.2,checked9354.2,checked9355.2,checked9356.2,checked9357.2,checked9358.2,checked9359.2,checked9360.2,checked9361.2,checked9362.2,checked9363.2,checked9364.2,checked9365.2,checked9366.2,checked9367.2,checked9368.2,checked9369.2,checked9370.2,checked9371.2,checked9372.2,checked9373.2,checked9374.2,checked9375.2,checked9376.2,checked9377.2,checked9378.2,checked9379.2,checked9380.2,checked9381.2,checked9382.2,checked9383.2,checked9384.2,checked9385.2,checked9386.2,checked9387.2,checked9388.2,checked9389.2,checked9390.2,checked9391.2,checked9392.2,checked9393.2,checked9394.2,checked9395.2,checked9396.2,checked9397.2,checked9398.2,checked9399.2,checked9400.2,checked9401.2,checked9402.2,checked9403.2,checked9404.2,checked9405.2,checked9406.2,checked9407.2]
  decide
end ArtifactPairedPathRoundGroup146
