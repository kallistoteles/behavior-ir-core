import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup130
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8320 : List WordIR.Op := [.rotr 8359 25]
def bytes8320 : Bytes := ("    let r000020ab: u32 = r000020a7.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8320 : bytes8320=statementBytes 8363 (op8320.map lower) ∧ bytes8320.length=65 := by core033_kernel_decide
def op8321 : List WordIR.Op := [.bxor 8362 8363]
def bytes8321 : Bytes := ("    let r000020ac: u32 = r000020aa ^ r000020ab;\n" : String).toByteArray.data.toList
theorem checked8321 : bytes8321=statementBytes 8364 (op8321.map lower) ∧ bytes8321.length=48 := by core033_kernel_decide
def op8322 : List WordIR.Op := [.badd 8278 8364]
def bytes8322 : Bytes := ("    let r000020ad: u32 = r00002056.wrapping_add(r000020ac);\n" : String).toByteArray.data.toList
theorem checked8322 : bytes8322=statementBytes 8365 (op8322.map lower) ∧ bytes8322.length=60 := by core033_kernel_decide
def op8323 : List WordIR.Op := [.band 8359 8332]
def bytes8323 : Bytes := ("    let r000020ae: u32 = r000020a7 & r0000208c;\n" : String).toByteArray.data.toList
theorem checked8323 : bytes8323=statementBytes 8366 (op8323.map lower) ∧ bytes8323.length=48 := by core033_kernel_decide
def op8324 : List WordIR.Op := [.bnot 8359]
def bytes8324 : Bytes := ("    let r000020af: u32 = !r000020a7;\n" : String).toByteArray.data.toList
theorem checked8324 : bytes8324=statementBytes 8367 (op8324.map lower) ∧ bytes8324.length=37 := by core033_kernel_decide
def op8325 : List WordIR.Op := [.band 8367 8305]
def bytes8325 : Bytes := ("    let r000020b0: u32 = r000020af & r00002071;\n" : String).toByteArray.data.toList
theorem checked8325 : bytes8325=statementBytes 8368 (op8325.map lower) ∧ bytes8325.length=48 := by core033_kernel_decide
def op8326 : List WordIR.Op := [.bxor 8366 8368]
def bytes8326 : Bytes := ("    let r000020b1: u32 = r000020ae ^ r000020b0;\n" : String).toByteArray.data.toList
theorem checked8326 : bytes8326=statementBytes 8369 (op8326.map lower) ∧ bytes8326.length=48 := by core033_kernel_decide
def op8327 : List WordIR.Op := [.badd 8365 8369]
def bytes8327 : Bytes := ("    let r000020b2: u32 = r000020ad.wrapping_add(r000020b1);\n" : String).toByteArray.data.toList
theorem checked8327 : bytes8327=statementBytes 8370 (op8327.map lower) ∧ bytes8327.length=60 := by core033_kernel_decide
def op8328 : List WordIR.Op := [.literal (BitVec.ofNat 32 506948616)]
def bytes8328 : Bytes := ("    let r000020b3: u32 = 0x1e376c08_u32;\n" : String).toByteArray.data.toList
theorem checked8328 : bytes8328=statementBytes 8371 (op8328.map lower) ∧ bytes8328.length=41 := by core033_kernel_decide
def op8329 : List WordIR.Op := [.badd 8370 8371]
def bytes8329 : Bytes := ("    let r000020b4: u32 = r000020b2.wrapping_add(r000020b3);\n" : String).toByteArray.data.toList
theorem checked8329 : bytes8329=statementBytes 8372 (op8329.map lower) ∧ bytes8329.length=60 := by core033_kernel_decide
def op8330 : List WordIR.Op := [.badd 8372 6854]
def bytes8330 : Bytes := ("    let r000020b5: u32 = r000020b4.wrapping_add(r00001ac6);\n" : String).toByteArray.data.toList
theorem checked8330 : bytes8330=statementBytes 8373 (op8330.map lower) ∧ bytes8330.length=60 := by core033_kernel_decide
def op8331 : List WordIR.Op := [.rotr 8358 2]
def bytes8331 : Bytes := ("    let r000020b6: u32 = r000020a6.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8331 : bytes8331=statementBytes 8374 (op8331.map lower) ∧ bytes8331.length=65 := by core033_kernel_decide
def op8332 : List WordIR.Op := [.rotr 8358 13]
def bytes8332 : Bytes := ("    let r000020b7: u32 = r000020a6.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8332 : bytes8332=statementBytes 8375 (op8332.map lower) ∧ bytes8332.length=65 := by core033_kernel_decide
def op8333 : List WordIR.Op := [.bxor 8374 8375]
def bytes8333 : Bytes := ("    let r000020b8: u32 = r000020b6 ^ r000020b7;\n" : String).toByteArray.data.toList
theorem checked8333 : bytes8333=statementBytes 8376 (op8333.map lower) ∧ bytes8333.length=48 := by core033_kernel_decide
def op8334 : List WordIR.Op := [.rotr 8358 22]
def bytes8334 : Bytes := ("    let r000020b9: u32 = r000020a6.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8334 : bytes8334=statementBytes 8377 (op8334.map lower) ∧ bytes8334.length=65 := by core033_kernel_decide
def op8335 : List WordIR.Op := [.bxor 8376 8377]
def bytes8335 : Bytes := ("    let r000020ba: u32 = r000020b8 ^ r000020b9;\n" : String).toByteArray.data.toList
theorem checked8335 : bytes8335=statementBytes 8378 (op8335.map lower) ∧ bytes8335.length=48 := by core033_kernel_decide
def op8336 : List WordIR.Op := [.band 8358 8331]
def bytes8336 : Bytes := ("    let r000020bb: u32 = r000020a6 & r0000208b;\n" : String).toByteArray.data.toList
theorem checked8336 : bytes8336=statementBytes 8379 (op8336.map lower) ∧ bytes8336.length=48 := by core033_kernel_decide
def op8337 : List WordIR.Op := [.band 8358 8304]
def bytes8337 : Bytes := ("    let r000020bc: u32 = r000020a6 & r00002070;\n" : String).toByteArray.data.toList
theorem checked8337 : bytes8337=statementBytes 8380 (op8337.map lower) ∧ bytes8337.length=48 := by core033_kernel_decide
def op8338 : List WordIR.Op := [.bxor 8379 8380]
def bytes8338 : Bytes := ("    let r000020bd: u32 = r000020bb ^ r000020bc;\n" : String).toByteArray.data.toList
theorem checked8338 : bytes8338=statementBytes 8381 (op8338.map lower) ∧ bytes8338.length=48 := by core033_kernel_decide
def op8339 : List WordIR.Op := [.band 8331 8304]
def bytes8339 : Bytes := ("    let r000020be: u32 = r0000208b & r00002070;\n" : String).toByteArray.data.toList
theorem checked8339 : bytes8339=statementBytes 8382 (op8339.map lower) ∧ bytes8339.length=48 := by core033_kernel_decide
def op8340 : List WordIR.Op := [.bxor 8381 8382]
def bytes8340 : Bytes := ("    let r000020bf: u32 = r000020bd ^ r000020be;\n" : String).toByteArray.data.toList
theorem checked8340 : bytes8340=statementBytes 8383 (op8340.map lower) ∧ bytes8340.length=48 := by core033_kernel_decide
def op8341 : List WordIR.Op := [.badd 8378 8383]
def bytes8341 : Bytes := ("    let r000020c0: u32 = r000020ba.wrapping_add(r000020bf);\n" : String).toByteArray.data.toList
theorem checked8341 : bytes8341=statementBytes 8384 (op8341.map lower) ∧ bytes8341.length=60 := by core033_kernel_decide
def op8342 : List WordIR.Op := [.badd 8373 8384]
def bytes8342 : Bytes := ("    let r000020c1: u32 = r000020b5.wrapping_add(r000020c0);\n" : String).toByteArray.data.toList
theorem checked8342 : bytes8342=statementBytes 8385 (op8342.map lower) ∧ bytes8342.length=60 := by core033_kernel_decide
def op8343 : List WordIR.Op := [.badd 8277 8373]
def bytes8343 : Bytes := ("    let r000020c2: u32 = r00002055.wrapping_add(r000020b5);\n" : String).toByteArray.data.toList
theorem checked8343 : bytes8343=statementBytes 8386 (op8343.map lower) ∧ bytes8343.length=60 := by core033_kernel_decide
def op8344 : List WordIR.Op := [.rotr 8386 6]
def bytes8344 : Bytes := ("    let r000020c3: u32 = r000020c2.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8344 : bytes8344=statementBytes 8387 (op8344.map lower) ∧ bytes8344.length=65 := by core033_kernel_decide
def op8345 : List WordIR.Op := [.rotr 8386 11]
def bytes8345 : Bytes := ("    let r000020c4: u32 = r000020c2.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8345 : bytes8345=statementBytes 8388 (op8345.map lower) ∧ bytes8345.length=65 := by core033_kernel_decide
def op8346 : List WordIR.Op := [.bxor 8387 8388]
def bytes8346 : Bytes := ("    let r000020c5: u32 = r000020c3 ^ r000020c4;\n" : String).toByteArray.data.toList
theorem checked8346 : bytes8346=statementBytes 8389 (op8346.map lower) ∧ bytes8346.length=48 := by core033_kernel_decide
def op8347 : List WordIR.Op := [.rotr 8386 25]
def bytes8347 : Bytes := ("    let r000020c6: u32 = r000020c2.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8347 : bytes8347=statementBytes 8390 (op8347.map lower) ∧ bytes8347.length=65 := by core033_kernel_decide
def op8348 : List WordIR.Op := [.bxor 8389 8390]
def bytes8348 : Bytes := ("    let r000020c7: u32 = r000020c5 ^ r000020c6;\n" : String).toByteArray.data.toList
theorem checked8348 : bytes8348=statementBytes 8391 (op8348.map lower) ∧ bytes8348.length=48 := by core033_kernel_decide
def op8349 : List WordIR.Op := [.badd 8305 8391]
def bytes8349 : Bytes := ("    let r000020c8: u32 = r00002071.wrapping_add(r000020c7);\n" : String).toByteArray.data.toList
theorem checked8349 : bytes8349=statementBytes 8392 (op8349.map lower) ∧ bytes8349.length=60 := by core033_kernel_decide
def op8350 : List WordIR.Op := [.band 8386 8359]
def bytes8350 : Bytes := ("    let r000020c9: u32 = r000020c2 & r000020a7;\n" : String).toByteArray.data.toList
theorem checked8350 : bytes8350=statementBytes 8393 (op8350.map lower) ∧ bytes8350.length=48 := by core033_kernel_decide
def op8351 : List WordIR.Op := [.bnot 8386]
def bytes8351 : Bytes := ("    let r000020ca: u32 = !r000020c2;\n" : String).toByteArray.data.toList
theorem checked8351 : bytes8351=statementBytes 8394 (op8351.map lower) ∧ bytes8351.length=37 := by core033_kernel_decide
def op8352 : List WordIR.Op := [.band 8394 8332]
def bytes8352 : Bytes := ("    let r000020cb: u32 = r000020ca & r0000208c;\n" : String).toByteArray.data.toList
theorem checked8352 : bytes8352=statementBytes 8395 (op8352.map lower) ∧ bytes8352.length=48 := by core033_kernel_decide
def op8353 : List WordIR.Op := [.bxor 8393 8395]
def bytes8353 : Bytes := ("    let r000020cc: u32 = r000020c9 ^ r000020cb;\n" : String).toByteArray.data.toList
theorem checked8353 : bytes8353=statementBytes 8396 (op8353.map lower) ∧ bytes8353.length=48 := by core033_kernel_decide
def op8354 : List WordIR.Op := [.badd 8392 8396]
def bytes8354 : Bytes := ("    let r000020cd: u32 = r000020c8.wrapping_add(r000020cc);\n" : String).toByteArray.data.toList
theorem checked8354 : bytes8354=statementBytes 8397 (op8354.map lower) ∧ bytes8354.length=60 := by core033_kernel_decide
def op8355 : List WordIR.Op := [.literal (BitVec.ofNat 32 659060556)]
def bytes8355 : Bytes := ("    let r000020ce: u32 = 0x2748774c_u32;\n" : String).toByteArray.data.toList
theorem checked8355 : bytes8355=statementBytes 8398 (op8355.map lower) ∧ bytes8355.length=41 := by core033_kernel_decide
def op8356 : List WordIR.Op := [.badd 8397 8398]
def bytes8356 : Bytes := ("    let r000020cf: u32 = r000020cd.wrapping_add(r000020ce);\n" : String).toByteArray.data.toList
theorem checked8356 : bytes8356=statementBytes 8399 (op8356.map lower) ∧ bytes8356.length=60 := by core033_kernel_decide
def op8357 : List WordIR.Op := [.badd 8399 6867]
def bytes8357 : Bytes := ("    let r000020d0: u32 = r000020cf.wrapping_add(r00001ad3);\n" : String).toByteArray.data.toList
theorem checked8357 : bytes8357=statementBytes 8400 (op8357.map lower) ∧ bytes8357.length=60 := by core033_kernel_decide
def op8358 : List WordIR.Op := [.rotr 8385 2]
def bytes8358 : Bytes := ("    let r000020d1: u32 = r000020c1.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8358 : bytes8358=statementBytes 8401 (op8358.map lower) ∧ bytes8358.length=65 := by core033_kernel_decide
def op8359 : List WordIR.Op := [.rotr 8385 13]
def bytes8359 : Bytes := ("    let r000020d2: u32 = r000020c1.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8359 : bytes8359=statementBytes 8402 (op8359.map lower) ∧ bytes8359.length=65 := by core033_kernel_decide
def op8360 : List WordIR.Op := [.bxor 8401 8402]
def bytes8360 : Bytes := ("    let r000020d3: u32 = r000020d1 ^ r000020d2;\n" : String).toByteArray.data.toList
theorem checked8360 : bytes8360=statementBytes 8403 (op8360.map lower) ∧ bytes8360.length=48 := by core033_kernel_decide
def op8361 : List WordIR.Op := [.rotr 8385 22]
def bytes8361 : Bytes := ("    let r000020d4: u32 = r000020c1.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8361 : bytes8361=statementBytes 8404 (op8361.map lower) ∧ bytes8361.length=65 := by core033_kernel_decide
def op8362 : List WordIR.Op := [.bxor 8403 8404]
def bytes8362 : Bytes := ("    let r000020d5: u32 = r000020d3 ^ r000020d4;\n" : String).toByteArray.data.toList
theorem checked8362 : bytes8362=statementBytes 8405 (op8362.map lower) ∧ bytes8362.length=48 := by core033_kernel_decide
def op8363 : List WordIR.Op := [.band 8385 8358]
def bytes8363 : Bytes := ("    let r000020d6: u32 = r000020c1 & r000020a6;\n" : String).toByteArray.data.toList
theorem checked8363 : bytes8363=statementBytes 8406 (op8363.map lower) ∧ bytes8363.length=48 := by core033_kernel_decide
def op8364 : List WordIR.Op := [.band 8385 8331]
def bytes8364 : Bytes := ("    let r000020d7: u32 = r000020c1 & r0000208b;\n" : String).toByteArray.data.toList
theorem checked8364 : bytes8364=statementBytes 8407 (op8364.map lower) ∧ bytes8364.length=48 := by core033_kernel_decide
def op8365 : List WordIR.Op := [.bxor 8406 8407]
def bytes8365 : Bytes := ("    let r000020d8: u32 = r000020d6 ^ r000020d7;\n" : String).toByteArray.data.toList
theorem checked8365 : bytes8365=statementBytes 8408 (op8365.map lower) ∧ bytes8365.length=48 := by core033_kernel_decide
def op8366 : List WordIR.Op := [.band 8358 8331]
def bytes8366 : Bytes := ("    let r000020d9: u32 = r000020a6 & r0000208b;\n" : String).toByteArray.data.toList
theorem checked8366 : bytes8366=statementBytes 8409 (op8366.map lower) ∧ bytes8366.length=48 := by core033_kernel_decide
def op8367 : List WordIR.Op := [.bxor 8408 8409]
def bytes8367 : Bytes := ("    let r000020da: u32 = r000020d8 ^ r000020d9;\n" : String).toByteArray.data.toList
theorem checked8367 : bytes8367=statementBytes 8410 (op8367.map lower) ∧ bytes8367.length=48 := by core033_kernel_decide
def op8368 : List WordIR.Op := [.badd 8405 8410]
def bytes8368 : Bytes := ("    let r000020db: u32 = r000020d5.wrapping_add(r000020da);\n" : String).toByteArray.data.toList
theorem checked8368 : bytes8368=statementBytes 8411 (op8368.map lower) ∧ bytes8368.length=60 := by core033_kernel_decide
def op8369 : List WordIR.Op := [.badd 8400 8411]
def bytes8369 : Bytes := ("    let r000020dc: u32 = r000020d0.wrapping_add(r000020db);\n" : String).toByteArray.data.toList
theorem checked8369 : bytes8369=statementBytes 8412 (op8369.map lower) ∧ bytes8369.length=60 := by core033_kernel_decide
def op8370 : List WordIR.Op := [.badd 8304 8400]
def bytes8370 : Bytes := ("    let r000020dd: u32 = r00002070.wrapping_add(r000020d0);\n" : String).toByteArray.data.toList
theorem checked8370 : bytes8370=statementBytes 8413 (op8370.map lower) ∧ bytes8370.length=60 := by core033_kernel_decide
def op8371 : List WordIR.Op := [.rotr 8413 6]
def bytes8371 : Bytes := ("    let r000020de: u32 = r000020dd.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8371 : bytes8371=statementBytes 8414 (op8371.map lower) ∧ bytes8371.length=65 := by core033_kernel_decide
def op8372 : List WordIR.Op := [.rotr 8413 11]
def bytes8372 : Bytes := ("    let r000020df: u32 = r000020dd.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8372 : bytes8372=statementBytes 8415 (op8372.map lower) ∧ bytes8372.length=65 := by core033_kernel_decide
def op8373 : List WordIR.Op := [.bxor 8414 8415]
def bytes8373 : Bytes := ("    let r000020e0: u32 = r000020de ^ r000020df;\n" : String).toByteArray.data.toList
theorem checked8373 : bytes8373=statementBytes 8416 (op8373.map lower) ∧ bytes8373.length=48 := by core033_kernel_decide
def op8374 : List WordIR.Op := [.rotr 8413 25]
def bytes8374 : Bytes := ("    let r000020e1: u32 = r000020dd.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8374 : bytes8374=statementBytes 8417 (op8374.map lower) ∧ bytes8374.length=65 := by core033_kernel_decide
def op8375 : List WordIR.Op := [.bxor 8416 8417]
def bytes8375 : Bytes := ("    let r000020e2: u32 = r000020e0 ^ r000020e1;\n" : String).toByteArray.data.toList
theorem checked8375 : bytes8375=statementBytes 8418 (op8375.map lower) ∧ bytes8375.length=48 := by core033_kernel_decide
def op8376 : List WordIR.Op := [.badd 8332 8418]
def bytes8376 : Bytes := ("    let r000020e3: u32 = r0000208c.wrapping_add(r000020e2);\n" : String).toByteArray.data.toList
theorem checked8376 : bytes8376=statementBytes 8419 (op8376.map lower) ∧ bytes8376.length=60 := by core033_kernel_decide
def op8377 : List WordIR.Op := [.band 8413 8386]
def bytes8377 : Bytes := ("    let r000020e4: u32 = r000020dd & r000020c2;\n" : String).toByteArray.data.toList
theorem checked8377 : bytes8377=statementBytes 8420 (op8377.map lower) ∧ bytes8377.length=48 := by core033_kernel_decide
def op8378 : List WordIR.Op := [.bnot 8413]
def bytes8378 : Bytes := ("    let r000020e5: u32 = !r000020dd;\n" : String).toByteArray.data.toList
theorem checked8378 : bytes8378=statementBytes 8421 (op8378.map lower) ∧ bytes8378.length=37 := by core033_kernel_decide
def op8379 : List WordIR.Op := [.band 8421 8359]
def bytes8379 : Bytes := ("    let r000020e6: u32 = r000020e5 & r000020a7;\n" : String).toByteArray.data.toList
theorem checked8379 : bytes8379=statementBytes 8422 (op8379.map lower) ∧ bytes8379.length=48 := by core033_kernel_decide
def op8380 : List WordIR.Op := [.bxor 8420 8422]
def bytes8380 : Bytes := ("    let r000020e7: u32 = r000020e4 ^ r000020e6;\n" : String).toByteArray.data.toList
theorem checked8380 : bytes8380=statementBytes 8423 (op8380.map lower) ∧ bytes8380.length=48 := by core033_kernel_decide
def op8381 : List WordIR.Op := [.badd 8419 8423]
def bytes8381 : Bytes := ("    let r000020e8: u32 = r000020e3.wrapping_add(r000020e7);\n" : String).toByteArray.data.toList
theorem checked8381 : bytes8381=statementBytes 8424 (op8381.map lower) ∧ bytes8381.length=60 := by core033_kernel_decide
def op8382 : List WordIR.Op := [.literal (BitVec.ofNat 32 883997877)]
def bytes8382 : Bytes := ("    let r000020e9: u32 = 0x34b0bcb5_u32;\n" : String).toByteArray.data.toList
theorem checked8382 : bytes8382=statementBytes 8425 (op8382.map lower) ∧ bytes8382.length=41 := by core033_kernel_decide
def op8383 : List WordIR.Op := [.badd 8424 8425]
def bytes8383 : Bytes := ("    let r000020ea: u32 = r000020e8.wrapping_add(r000020e9);\n" : String).toByteArray.data.toList
theorem checked8383 : bytes8383=statementBytes 8426 (op8383.map lower) ∧ bytes8383.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8320,op8321,op8322,op8323,op8324,op8325,op8326,op8327,op8328,op8329,op8330,op8331,op8332,op8333,op8334,op8335,op8336,op8337,op8338,op8339,op8340,op8341,op8342,op8343,op8344,op8345,op8346,op8347,op8348,op8349,op8350,op8351,op8352,op8353,op8354,op8355,op8356,op8357,op8358,op8359,op8360,op8361,op8362,op8363,op8364,op8365,op8366,op8367,op8368,op8369,op8370,op8371,op8372,op8373,op8374,op8375,op8376,op8377,op8378,op8379,op8380,op8381,op8382,op8383]
def chunks : List Bytes := [bytes8320,bytes8321,bytes8322,bytes8323,bytes8324,bytes8325,bytes8326,bytes8327,bytes8328,bytes8329,bytes8330,bytes8331,bytes8332,bytes8333,bytes8334,bytes8335,bytes8336,bytes8337,bytes8338,bytes8339,bytes8340,bytes8341,bytes8342,bytes8343,bytes8344,bytes8345,bytes8346,bytes8347,bytes8348,bytes8349,bytes8350,bytes8351,bytes8352,bytes8353,bytes8354,bytes8355,bytes8356,bytes8357,bytes8358,bytes8359,bytes8360,bytes8361,bytes8362,bytes8363,bytes8364,bytes8365,bytes8366,bytes8367,bytes8368,bytes8369,bytes8370,bytes8371,bytes8372,bytes8373,bytes8374,bytes8375,bytes8376,bytes8377,bytes8378,bytes8379,bytes8380,bytes8381,bytes8382,bytes8383]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8363 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8320.1 (.cons _ _ _ _ _ checked8321.1 (.cons _ _ _ _ _ checked8322.1 (.cons _ _ _ _ _ checked8323.1 (.cons _ _ _ _ _ checked8324.1 (.cons _ _ _ _ _ checked8325.1 (.cons _ _ _ _ _ checked8326.1 (.cons _ _ _ _ _ checked8327.1 (.cons _ _ _ _ _ checked8328.1 (.cons _ _ _ _ _ checked8329.1 (.cons _ _ _ _ _ checked8330.1 (.cons _ _ _ _ _ checked8331.1 (.cons _ _ _ _ _ checked8332.1 (.cons _ _ _ _ _ checked8333.1 (.cons _ _ _ _ _ checked8334.1 (.cons _ _ _ _ _ checked8335.1 (.cons _ _ _ _ _ checked8336.1 (.cons _ _ _ _ _ checked8337.1 (.cons _ _ _ _ _ checked8338.1 (.cons _ _ _ _ _ checked8339.1 (.cons _ _ _ _ _ checked8340.1 (.cons _ _ _ _ _ checked8341.1 (.cons _ _ _ _ _ checked8342.1 (.cons _ _ _ _ _ checked8343.1 (.cons _ _ _ _ _ checked8344.1 (.cons _ _ _ _ _ checked8345.1 (.cons _ _ _ _ _ checked8346.1 (.cons _ _ _ _ _ checked8347.1 (.cons _ _ _ _ _ checked8348.1 (.cons _ _ _ _ _ checked8349.1 (.cons _ _ _ _ _ checked8350.1 (.cons _ _ _ _ _ checked8351.1 (.cons _ _ _ _ _ checked8352.1 (.cons _ _ _ _ _ checked8353.1 (.cons _ _ _ _ _ checked8354.1 (.cons _ _ _ _ _ checked8355.1 (.cons _ _ _ _ _ checked8356.1 (.cons _ _ _ _ _ checked8357.1 (.cons _ _ _ _ _ checked8358.1 (.cons _ _ _ _ _ checked8359.1 (.cons _ _ _ _ _ checked8360.1 (.cons _ _ _ _ _ checked8361.1 (.cons _ _ _ _ _ checked8362.1 (.cons _ _ _ _ _ checked8363.1 (.cons _ _ _ _ _ checked8364.1 (.cons _ _ _ _ _ checked8365.1 (.cons _ _ _ _ _ checked8366.1 (.cons _ _ _ _ _ checked8367.1 (.cons _ _ _ _ _ checked8368.1 (.cons _ _ _ _ _ checked8369.1 (.cons _ _ _ _ _ checked8370.1 (.cons _ _ _ _ _ checked8371.1 (.cons _ _ _ _ _ checked8372.1 (.cons _ _ _ _ _ checked8373.1 (.cons _ _ _ _ _ checked8374.1 (.cons _ _ _ _ _ checked8375.1 (.cons _ _ _ _ _ checked8376.1 (.cons _ _ _ _ _ checked8377.1 (.cons _ _ _ _ _ checked8378.1 (.cons _ _ _ _ _ checked8379.1 (.cons _ _ _ _ _ checked8380.1 (.cons _ _ _ _ _ checked8381.1 (.cons _ _ _ _ _ checked8382.1 (.cons _ _ _ _ _ checked8383.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8363 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3443 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8320.2,checked8321.2,checked8322.2,checked8323.2,checked8324.2,checked8325.2,checked8326.2,checked8327.2,checked8328.2,checked8329.2,checked8330.2,checked8331.2,checked8332.2,checked8333.2,checked8334.2,checked8335.2,checked8336.2,checked8337.2,checked8338.2,checked8339.2,checked8340.2,checked8341.2,checked8342.2,checked8343.2,checked8344.2,checked8345.2,checked8346.2,checked8347.2,checked8348.2,checked8349.2,checked8350.2,checked8351.2,checked8352.2,checked8353.2,checked8354.2,checked8355.2,checked8356.2,checked8357.2,checked8358.2,checked8359.2,checked8360.2,checked8361.2,checked8362.2,checked8363.2,checked8364.2,checked8365.2,checked8366.2,checked8367.2,checked8368.2,checked8369.2,checked8370.2,checked8371.2,checked8372.2,checked8373.2,checked8374.2,checked8375.2,checked8376.2,checked8377.2,checked8378.2,checked8379.2,checked8380.2,checked8381.2,checked8382.2,checked8383.2]
  decide
end ArtifactFrameHashControllerGroup130
