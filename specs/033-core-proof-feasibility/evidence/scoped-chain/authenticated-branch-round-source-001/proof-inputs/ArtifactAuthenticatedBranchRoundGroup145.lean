import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup145
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9280 : List WordIR.Op := [.bxor 9396 9397]
def bytes9280 : Bytes := ("    let r000024b6: u32 = r000024b4 ^ r000024b5;\n" : String).toByteArray.data.toList
theorem checked9280 : bytes9280=statementBytes 9398 (op9280.map lower) ∧ bytes9280.length=48 := by core033_kernel_decide
def op9281 : List WordIR.Op := [.band 9348 9321]
def bytes9281 : Bytes := ("    let r000024b7: u32 = r00002484 & r00002469;\n" : String).toByteArray.data.toList
theorem checked9281 : bytes9281=statementBytes 9399 (op9281.map lower) ∧ bytes9281.length=48 := by core033_kernel_decide
def op9282 : List WordIR.Op := [.bxor 9398 9399]
def bytes9282 : Bytes := ("    let r000024b8: u32 = r000024b6 ^ r000024b7;\n" : String).toByteArray.data.toList
theorem checked9282 : bytes9282=statementBytes 9400 (op9282.map lower) ∧ bytes9282.length=48 := by core033_kernel_decide
def op9283 : List WordIR.Op := [.badd 9395 9400]
def bytes9283 : Bytes := ("    let r000024b9: u32 = r000024b3.wrapping_add(r000024b8);\n" : String).toByteArray.data.toList
theorem checked9283 : bytes9283=statementBytes 9401 (op9283.map lower) ∧ bytes9283.length=60 := by core033_kernel_decide
def op9284 : List WordIR.Op := [.badd 9390 9401]
def bytes9284 : Bytes := ("    let r000024ba: u32 = r000024ae.wrapping_add(r000024b9);\n" : String).toByteArray.data.toList
theorem checked9284 : bytes9284=statementBytes 9402 (op9284.map lower) ∧ bytes9284.length=60 := by core033_kernel_decide
def op9285 : List WordIR.Op := [.badd 9294 9390]
def bytes9285 : Bytes := ("    let r000024bb: u32 = r0000244e.wrapping_add(r000024ae);\n" : String).toByteArray.data.toList
theorem checked9285 : bytes9285=statementBytes 9403 (op9285.map lower) ∧ bytes9285.length=60 := by core033_kernel_decide
def op9286 : List WordIR.Op := [.rotr 9403 6]
def bytes9286 : Bytes := ("    let r000024bc: u32 = r000024bb.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9286 : bytes9286=statementBytes 9404 (op9286.map lower) ∧ bytes9286.length=65 := by core033_kernel_decide
def op9287 : List WordIR.Op := [.rotr 9403 11]
def bytes9287 : Bytes := ("    let r000024bd: u32 = r000024bb.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9287 : bytes9287=statementBytes 9405 (op9287.map lower) ∧ bytes9287.length=65 := by core033_kernel_decide
def op9288 : List WordIR.Op := [.bxor 9404 9405]
def bytes9288 : Bytes := ("    let r000024be: u32 = r000024bc ^ r000024bd;\n" : String).toByteArray.data.toList
theorem checked9288 : bytes9288=statementBytes 9406 (op9288.map lower) ∧ bytes9288.length=48 := by core033_kernel_decide
def op9289 : List WordIR.Op := [.rotr 9403 25]
def bytes9289 : Bytes := ("    let r000024bf: u32 = r000024bb.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9289 : bytes9289=statementBytes 9407 (op9289.map lower) ∧ bytes9289.length=65 := by core033_kernel_decide
def op9290 : List WordIR.Op := [.bxor 9406 9407]
def bytes9290 : Bytes := ("    let r000024c0: u32 = r000024be ^ r000024bf;\n" : String).toByteArray.data.toList
theorem checked9290 : bytes9290=statementBytes 9408 (op9290.map lower) ∧ bytes9290.length=48 := by core033_kernel_decide
def op9291 : List WordIR.Op := [.badd 9322 9408]
def bytes9291 : Bytes := ("    let r000024c1: u32 = r0000246a.wrapping_add(r000024c0);\n" : String).toByteArray.data.toList
theorem checked9291 : bytes9291=statementBytes 9409 (op9291.map lower) ∧ bytes9291.length=60 := by core033_kernel_decide
def op9292 : List WordIR.Op := [.band 9403 9376]
def bytes9292 : Bytes := ("    let r000024c2: u32 = r000024bb & r000024a0;\n" : String).toByteArray.data.toList
theorem checked9292 : bytes9292=statementBytes 9410 (op9292.map lower) ∧ bytes9292.length=48 := by core033_kernel_decide
def op9293 : List WordIR.Op := [.bnot 9403]
def bytes9293 : Bytes := ("    let r000024c3: u32 = !r000024bb;\n" : String).toByteArray.data.toList
theorem checked9293 : bytes9293=statementBytes 9411 (op9293.map lower) ∧ bytes9293.length=37 := by core033_kernel_decide
def op9294 : List WordIR.Op := [.band 9411 9349]
def bytes9294 : Bytes := ("    let r000024c4: u32 = r000024c3 & r00002485;\n" : String).toByteArray.data.toList
theorem checked9294 : bytes9294=statementBytes 9412 (op9294.map lower) ∧ bytes9294.length=48 := by core033_kernel_decide
def op9295 : List WordIR.Op := [.bxor 9410 9412]
def bytes9295 : Bytes := ("    let r000024c5: u32 = r000024c2 ^ r000024c4;\n" : String).toByteArray.data.toList
theorem checked9295 : bytes9295=statementBytes 9413 (op9295.map lower) ∧ bytes9295.length=48 := by core033_kernel_decide
def op9296 : List WordIR.Op := [.badd 9409 9413]
def bytes9296 : Bytes := ("    let r000024c6: u32 = r000024c1.wrapping_add(r000024c5);\n" : String).toByteArray.data.toList
theorem checked9296 : bytes9296=statementBytes 9414 (op9296.map lower) ∧ bytes9296.length=60 := by core033_kernel_decide
def op9297 : List WordIR.Op := [.literal (BitVec.ofNat 32 2554220882)]
def bytes9297 : Bytes := ("    let r000024c7: u32 = 0x983e5152_u32;\n" : String).toByteArray.data.toList
theorem checked9297 : bytes9297=statementBytes 9415 (op9297.map lower) ∧ bytes9297.length=41 := by core033_kernel_decide
def op9298 : List WordIR.Op := [.badd 9414 9415]
def bytes9298 : Bytes := ("    let r000024c8: u32 = r000024c6.wrapping_add(r000024c7);\n" : String).toByteArray.data.toList
theorem checked9298 : bytes9298=statementBytes 9416 (op9298.map lower) ∧ bytes9298.length=60 := by core033_kernel_decide
def op9299 : List WordIR.Op := [.badd 9416 8248]
def bytes9299 : Bytes := ("    let r000024c9: u32 = r000024c8.wrapping_add(r00002038);\n" : String).toByteArray.data.toList
theorem checked9299 : bytes9299=statementBytes 9417 (op9299.map lower) ∧ bytes9299.length=60 := by core033_kernel_decide
def op9300 : List WordIR.Op := [.rotr 9402 2]
def bytes9300 : Bytes := ("    let r000024ca: u32 = r000024ba.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9300 : bytes9300=statementBytes 9418 (op9300.map lower) ∧ bytes9300.length=65 := by core033_kernel_decide
def op9301 : List WordIR.Op := [.rotr 9402 13]
def bytes9301 : Bytes := ("    let r000024cb: u32 = r000024ba.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9301 : bytes9301=statementBytes 9419 (op9301.map lower) ∧ bytes9301.length=65 := by core033_kernel_decide
def op9302 : List WordIR.Op := [.bxor 9418 9419]
def bytes9302 : Bytes := ("    let r000024cc: u32 = r000024ca ^ r000024cb;\n" : String).toByteArray.data.toList
theorem checked9302 : bytes9302=statementBytes 9420 (op9302.map lower) ∧ bytes9302.length=48 := by core033_kernel_decide
def op9303 : List WordIR.Op := [.rotr 9402 22]
def bytes9303 : Bytes := ("    let r000024cd: u32 = r000024ba.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9303 : bytes9303=statementBytes 9421 (op9303.map lower) ∧ bytes9303.length=65 := by core033_kernel_decide
def op9304 : List WordIR.Op := [.bxor 9420 9421]
def bytes9304 : Bytes := ("    let r000024ce: u32 = r000024cc ^ r000024cd;\n" : String).toByteArray.data.toList
theorem checked9304 : bytes9304=statementBytes 9422 (op9304.map lower) ∧ bytes9304.length=48 := by core033_kernel_decide
def op9305 : List WordIR.Op := [.band 9402 9375]
def bytes9305 : Bytes := ("    let r000024cf: u32 = r000024ba & r0000249f;\n" : String).toByteArray.data.toList
theorem checked9305 : bytes9305=statementBytes 9423 (op9305.map lower) ∧ bytes9305.length=48 := by core033_kernel_decide
def op9306 : List WordIR.Op := [.band 9402 9348]
def bytes9306 : Bytes := ("    let r000024d0: u32 = r000024ba & r00002484;\n" : String).toByteArray.data.toList
theorem checked9306 : bytes9306=statementBytes 9424 (op9306.map lower) ∧ bytes9306.length=48 := by core033_kernel_decide
def op9307 : List WordIR.Op := [.bxor 9423 9424]
def bytes9307 : Bytes := ("    let r000024d1: u32 = r000024cf ^ r000024d0;\n" : String).toByteArray.data.toList
theorem checked9307 : bytes9307=statementBytes 9425 (op9307.map lower) ∧ bytes9307.length=48 := by core033_kernel_decide
def op9308 : List WordIR.Op := [.band 9375 9348]
def bytes9308 : Bytes := ("    let r000024d2: u32 = r0000249f & r00002484;\n" : String).toByteArray.data.toList
theorem checked9308 : bytes9308=statementBytes 9426 (op9308.map lower) ∧ bytes9308.length=48 := by core033_kernel_decide
def op9309 : List WordIR.Op := [.bxor 9425 9426]
def bytes9309 : Bytes := ("    let r000024d3: u32 = r000024d1 ^ r000024d2;\n" : String).toByteArray.data.toList
theorem checked9309 : bytes9309=statementBytes 9427 (op9309.map lower) ∧ bytes9309.length=48 := by core033_kernel_decide
def op9310 : List WordIR.Op := [.badd 9422 9427]
def bytes9310 : Bytes := ("    let r000024d4: u32 = r000024ce.wrapping_add(r000024d3);\n" : String).toByteArray.data.toList
theorem checked9310 : bytes9310=statementBytes 9428 (op9310.map lower) ∧ bytes9310.length=60 := by core033_kernel_decide
def op9311 : List WordIR.Op := [.badd 9417 9428]
def bytes9311 : Bytes := ("    let r000024d5: u32 = r000024c9.wrapping_add(r000024d4);\n" : String).toByteArray.data.toList
theorem checked9311 : bytes9311=statementBytes 9429 (op9311.map lower) ∧ bytes9311.length=60 := by core033_kernel_decide
def op9312 : List WordIR.Op := [.badd 9321 9417]
def bytes9312 : Bytes := ("    let r000024d6: u32 = r00002469.wrapping_add(r000024c9);\n" : String).toByteArray.data.toList
theorem checked9312 : bytes9312=statementBytes 9430 (op9312.map lower) ∧ bytes9312.length=60 := by core033_kernel_decide
def op9313 : List WordIR.Op := [.rotr 9430 6]
def bytes9313 : Bytes := ("    let r000024d7: u32 = r000024d6.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9313 : bytes9313=statementBytes 9431 (op9313.map lower) ∧ bytes9313.length=65 := by core033_kernel_decide
def op9314 : List WordIR.Op := [.rotr 9430 11]
def bytes9314 : Bytes := ("    let r000024d8: u32 = r000024d6.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9314 : bytes9314=statementBytes 9432 (op9314.map lower) ∧ bytes9314.length=65 := by core033_kernel_decide
def op9315 : List WordIR.Op := [.bxor 9431 9432]
def bytes9315 : Bytes := ("    let r000024d9: u32 = r000024d7 ^ r000024d8;\n" : String).toByteArray.data.toList
theorem checked9315 : bytes9315=statementBytes 9433 (op9315.map lower) ∧ bytes9315.length=48 := by core033_kernel_decide
def op9316 : List WordIR.Op := [.rotr 9430 25]
def bytes9316 : Bytes := ("    let r000024da: u32 = r000024d6.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9316 : bytes9316=statementBytes 9434 (op9316.map lower) ∧ bytes9316.length=65 := by core033_kernel_decide
def op9317 : List WordIR.Op := [.bxor 9433 9434]
def bytes9317 : Bytes := ("    let r000024db: u32 = r000024d9 ^ r000024da;\n" : String).toByteArray.data.toList
theorem checked9317 : bytes9317=statementBytes 9435 (op9317.map lower) ∧ bytes9317.length=48 := by core033_kernel_decide
def op9318 : List WordIR.Op := [.badd 9349 9435]
def bytes9318 : Bytes := ("    let r000024dc: u32 = r00002485.wrapping_add(r000024db);\n" : String).toByteArray.data.toList
theorem checked9318 : bytes9318=statementBytes 9436 (op9318.map lower) ∧ bytes9318.length=60 := by core033_kernel_decide
def op9319 : List WordIR.Op := [.band 9430 9403]
def bytes9319 : Bytes := ("    let r000024dd: u32 = r000024d6 & r000024bb;\n" : String).toByteArray.data.toList
theorem checked9319 : bytes9319=statementBytes 9437 (op9319.map lower) ∧ bytes9319.length=48 := by core033_kernel_decide
def op9320 : List WordIR.Op := [.bnot 9430]
def bytes9320 : Bytes := ("    let r000024de: u32 = !r000024d6;\n" : String).toByteArray.data.toList
theorem checked9320 : bytes9320=statementBytes 9438 (op9320.map lower) ∧ bytes9320.length=37 := by core033_kernel_decide
def op9321 : List WordIR.Op := [.band 9438 9376]
def bytes9321 : Bytes := ("    let r000024df: u32 = r000024de & r000024a0;\n" : String).toByteArray.data.toList
theorem checked9321 : bytes9321=statementBytes 9439 (op9321.map lower) ∧ bytes9321.length=48 := by core033_kernel_decide
def op9322 : List WordIR.Op := [.bxor 9437 9439]
def bytes9322 : Bytes := ("    let r000024e0: u32 = r000024dd ^ r000024df;\n" : String).toByteArray.data.toList
theorem checked9322 : bytes9322=statementBytes 9440 (op9322.map lower) ∧ bytes9322.length=48 := by core033_kernel_decide
def op9323 : List WordIR.Op := [.badd 9436 9440]
def bytes9323 : Bytes := ("    let r000024e1: u32 = r000024dc.wrapping_add(r000024e0);\n" : String).toByteArray.data.toList
theorem checked9323 : bytes9323=statementBytes 9441 (op9323.map lower) ∧ bytes9323.length=60 := by core033_kernel_decide
def op9324 : List WordIR.Op := [.literal (BitVec.ofNat 32 2821834349)]
def bytes9324 : Bytes := ("    let r000024e2: u32 = 0xa831c66d_u32;\n" : String).toByteArray.data.toList
theorem checked9324 : bytes9324=statementBytes 9442 (op9324.map lower) ∧ bytes9324.length=41 := by core033_kernel_decide
def op9325 : List WordIR.Op := [.badd 9441 9442]
def bytes9325 : Bytes := ("    let r000024e3: u32 = r000024e1.wrapping_add(r000024e2);\n" : String).toByteArray.data.toList
theorem checked9325 : bytes9325=statementBytes 9443 (op9325.map lower) ∧ bytes9325.length=60 := by core033_kernel_decide
def op9326 : List WordIR.Op := [.badd 9443 8261]
def bytes9326 : Bytes := ("    let r000024e4: u32 = r000024e3.wrapping_add(r00002045);\n" : String).toByteArray.data.toList
theorem checked9326 : bytes9326=statementBytes 9444 (op9326.map lower) ∧ bytes9326.length=60 := by core033_kernel_decide
def op9327 : List WordIR.Op := [.rotr 9429 2]
def bytes9327 : Bytes := ("    let r000024e5: u32 = r000024d5.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9327 : bytes9327=statementBytes 9445 (op9327.map lower) ∧ bytes9327.length=65 := by core033_kernel_decide
def op9328 : List WordIR.Op := [.rotr 9429 13]
def bytes9328 : Bytes := ("    let r000024e6: u32 = r000024d5.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9328 : bytes9328=statementBytes 9446 (op9328.map lower) ∧ bytes9328.length=65 := by core033_kernel_decide
def op9329 : List WordIR.Op := [.bxor 9445 9446]
def bytes9329 : Bytes := ("    let r000024e7: u32 = r000024e5 ^ r000024e6;\n" : String).toByteArray.data.toList
theorem checked9329 : bytes9329=statementBytes 9447 (op9329.map lower) ∧ bytes9329.length=48 := by core033_kernel_decide
def op9330 : List WordIR.Op := [.rotr 9429 22]
def bytes9330 : Bytes := ("    let r000024e8: u32 = r000024d5.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9330 : bytes9330=statementBytes 9448 (op9330.map lower) ∧ bytes9330.length=65 := by core033_kernel_decide
def op9331 : List WordIR.Op := [.bxor 9447 9448]
def bytes9331 : Bytes := ("    let r000024e9: u32 = r000024e7 ^ r000024e8;\n" : String).toByteArray.data.toList
theorem checked9331 : bytes9331=statementBytes 9449 (op9331.map lower) ∧ bytes9331.length=48 := by core033_kernel_decide
def op9332 : List WordIR.Op := [.band 9429 9402]
def bytes9332 : Bytes := ("    let r000024ea: u32 = r000024d5 & r000024ba;\n" : String).toByteArray.data.toList
theorem checked9332 : bytes9332=statementBytes 9450 (op9332.map lower) ∧ bytes9332.length=48 := by core033_kernel_decide
def op9333 : List WordIR.Op := [.band 9429 9375]
def bytes9333 : Bytes := ("    let r000024eb: u32 = r000024d5 & r0000249f;\n" : String).toByteArray.data.toList
theorem checked9333 : bytes9333=statementBytes 9451 (op9333.map lower) ∧ bytes9333.length=48 := by core033_kernel_decide
def op9334 : List WordIR.Op := [.bxor 9450 9451]
def bytes9334 : Bytes := ("    let r000024ec: u32 = r000024ea ^ r000024eb;\n" : String).toByteArray.data.toList
theorem checked9334 : bytes9334=statementBytes 9452 (op9334.map lower) ∧ bytes9334.length=48 := by core033_kernel_decide
def op9335 : List WordIR.Op := [.band 9402 9375]
def bytes9335 : Bytes := ("    let r000024ed: u32 = r000024ba & r0000249f;\n" : String).toByteArray.data.toList
theorem checked9335 : bytes9335=statementBytes 9453 (op9335.map lower) ∧ bytes9335.length=48 := by core033_kernel_decide
def op9336 : List WordIR.Op := [.bxor 9452 9453]
def bytes9336 : Bytes := ("    let r000024ee: u32 = r000024ec ^ r000024ed;\n" : String).toByteArray.data.toList
theorem checked9336 : bytes9336=statementBytes 9454 (op9336.map lower) ∧ bytes9336.length=48 := by core033_kernel_decide
def op9337 : List WordIR.Op := [.badd 9449 9454]
def bytes9337 : Bytes := ("    let r000024ef: u32 = r000024e9.wrapping_add(r000024ee);\n" : String).toByteArray.data.toList
theorem checked9337 : bytes9337=statementBytes 9455 (op9337.map lower) ∧ bytes9337.length=60 := by core033_kernel_decide
def op9338 : List WordIR.Op := [.badd 9444 9455]
def bytes9338 : Bytes := ("    let r000024f0: u32 = r000024e4.wrapping_add(r000024ef);\n" : String).toByteArray.data.toList
theorem checked9338 : bytes9338=statementBytes 9456 (op9338.map lower) ∧ bytes9338.length=60 := by core033_kernel_decide
def op9339 : List WordIR.Op := [.badd 9348 9444]
def bytes9339 : Bytes := ("    let r000024f1: u32 = r00002484.wrapping_add(r000024e4);\n" : String).toByteArray.data.toList
theorem checked9339 : bytes9339=statementBytes 9457 (op9339.map lower) ∧ bytes9339.length=60 := by core033_kernel_decide
def op9340 : List WordIR.Op := [.rotr 9457 6]
def bytes9340 : Bytes := ("    let r000024f2: u32 = r000024f1.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9340 : bytes9340=statementBytes 9458 (op9340.map lower) ∧ bytes9340.length=65 := by core033_kernel_decide
def op9341 : List WordIR.Op := [.rotr 9457 11]
def bytes9341 : Bytes := ("    let r000024f3: u32 = r000024f1.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9341 : bytes9341=statementBytes 9459 (op9341.map lower) ∧ bytes9341.length=65 := by core033_kernel_decide
def op9342 : List WordIR.Op := [.bxor 9458 9459]
def bytes9342 : Bytes := ("    let r000024f4: u32 = r000024f2 ^ r000024f3;\n" : String).toByteArray.data.toList
theorem checked9342 : bytes9342=statementBytes 9460 (op9342.map lower) ∧ bytes9342.length=48 := by core033_kernel_decide
def op9343 : List WordIR.Op := [.rotr 9457 25]
def bytes9343 : Bytes := ("    let r000024f5: u32 = r000024f1.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9343 : bytes9343=statementBytes 9461 (op9343.map lower) ∧ bytes9343.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9280,op9281,op9282,op9283,op9284,op9285,op9286,op9287,op9288,op9289,op9290,op9291,op9292,op9293,op9294,op9295,op9296,op9297,op9298,op9299,op9300,op9301,op9302,op9303,op9304,op9305,op9306,op9307,op9308,op9309,op9310,op9311,op9312,op9313,op9314,op9315,op9316,op9317,op9318,op9319,op9320,op9321,op9322,op9323,op9324,op9325,op9326,op9327,op9328,op9329,op9330,op9331,op9332,op9333,op9334,op9335,op9336,op9337,op9338,op9339,op9340,op9341,op9342,op9343]
def chunks : List Bytes := [bytes9280,bytes9281,bytes9282,bytes9283,bytes9284,bytes9285,bytes9286,bytes9287,bytes9288,bytes9289,bytes9290,bytes9291,bytes9292,bytes9293,bytes9294,bytes9295,bytes9296,bytes9297,bytes9298,bytes9299,bytes9300,bytes9301,bytes9302,bytes9303,bytes9304,bytes9305,bytes9306,bytes9307,bytes9308,bytes9309,bytes9310,bytes9311,bytes9312,bytes9313,bytes9314,bytes9315,bytes9316,bytes9317,bytes9318,bytes9319,bytes9320,bytes9321,bytes9322,bytes9323,bytes9324,bytes9325,bytes9326,bytes9327,bytes9328,bytes9329,bytes9330,bytes9331,bytes9332,bytes9333,bytes9334,bytes9335,bytes9336,bytes9337,bytes9338,bytes9339,bytes9340,bytes9341,bytes9342,bytes9343]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9398 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9280.1 (.cons _ _ _ _ _ checked9281.1 (.cons _ _ _ _ _ checked9282.1 (.cons _ _ _ _ _ checked9283.1 (.cons _ _ _ _ _ checked9284.1 (.cons _ _ _ _ _ checked9285.1 (.cons _ _ _ _ _ checked9286.1 (.cons _ _ _ _ _ checked9287.1 (.cons _ _ _ _ _ checked9288.1 (.cons _ _ _ _ _ checked9289.1 (.cons _ _ _ _ _ checked9290.1 (.cons _ _ _ _ _ checked9291.1 (.cons _ _ _ _ _ checked9292.1 (.cons _ _ _ _ _ checked9293.1 (.cons _ _ _ _ _ checked9294.1 (.cons _ _ _ _ _ checked9295.1 (.cons _ _ _ _ _ checked9296.1 (.cons _ _ _ _ _ checked9297.1 (.cons _ _ _ _ _ checked9298.1 (.cons _ _ _ _ _ checked9299.1 (.cons _ _ _ _ _ checked9300.1 (.cons _ _ _ _ _ checked9301.1 (.cons _ _ _ _ _ checked9302.1 (.cons _ _ _ _ _ checked9303.1 (.cons _ _ _ _ _ checked9304.1 (.cons _ _ _ _ _ checked9305.1 (.cons _ _ _ _ _ checked9306.1 (.cons _ _ _ _ _ checked9307.1 (.cons _ _ _ _ _ checked9308.1 (.cons _ _ _ _ _ checked9309.1 (.cons _ _ _ _ _ checked9310.1 (.cons _ _ _ _ _ checked9311.1 (.cons _ _ _ _ _ checked9312.1 (.cons _ _ _ _ _ checked9313.1 (.cons _ _ _ _ _ checked9314.1 (.cons _ _ _ _ _ checked9315.1 (.cons _ _ _ _ _ checked9316.1 (.cons _ _ _ _ _ checked9317.1 (.cons _ _ _ _ _ checked9318.1 (.cons _ _ _ _ _ checked9319.1 (.cons _ _ _ _ _ checked9320.1 (.cons _ _ _ _ _ checked9321.1 (.cons _ _ _ _ _ checked9322.1 (.cons _ _ _ _ _ checked9323.1 (.cons _ _ _ _ _ checked9324.1 (.cons _ _ _ _ _ checked9325.1 (.cons _ _ _ _ _ checked9326.1 (.cons _ _ _ _ _ checked9327.1 (.cons _ _ _ _ _ checked9328.1 (.cons _ _ _ _ _ checked9329.1 (.cons _ _ _ _ _ checked9330.1 (.cons _ _ _ _ _ checked9331.1 (.cons _ _ _ _ _ checked9332.1 (.cons _ _ _ _ _ checked9333.1 (.cons _ _ _ _ _ checked9334.1 (.cons _ _ _ _ _ checked9335.1 (.cons _ _ _ _ _ checked9336.1 (.cons _ _ _ _ _ checked9337.1 (.cons _ _ _ _ _ checked9338.1 (.cons _ _ _ _ _ checked9339.1 (.cons _ _ _ _ _ checked9340.1 (.cons _ _ _ _ _ checked9341.1 (.cons _ _ _ _ _ checked9342.1 (.cons _ _ _ _ _ checked9343.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9398 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3495 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9280.2,checked9281.2,checked9282.2,checked9283.2,checked9284.2,checked9285.2,checked9286.2,checked9287.2,checked9288.2,checked9289.2,checked9290.2,checked9291.2,checked9292.2,checked9293.2,checked9294.2,checked9295.2,checked9296.2,checked9297.2,checked9298.2,checked9299.2,checked9300.2,checked9301.2,checked9302.2,checked9303.2,checked9304.2,checked9305.2,checked9306.2,checked9307.2,checked9308.2,checked9309.2,checked9310.2,checked9311.2,checked9312.2,checked9313.2,checked9314.2,checked9315.2,checked9316.2,checked9317.2,checked9318.2,checked9319.2,checked9320.2,checked9321.2,checked9322.2,checked9323.2,checked9324.2,checked9325.2,checked9326.2,checked9327.2,checked9328.2,checked9329.2,checked9330.2,checked9331.2,checked9332.2,checked9333.2,checked9334.2,checked9335.2,checked9336.2,checked9337.2,checked9338.2,checked9339.2,checked9340.2,checked9341.2,checked9342.2,checked9343.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup145
