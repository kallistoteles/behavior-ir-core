import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup145
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9280 : List WordIR.Op := [.bnot 9322]
def bytes9280 : Bytes := ("    let r0000246b: u32 = !r0000246a;\n" : String).toByteArray.data.toList
theorem checked9280 : bytes9280=statementBytes 9323 (op9280.map lower) ∧ bytes9280.length=37 := by core033_kernel_decide
def op9281 : List WordIR.Op := [.bxor 9321 9323]
def bytes9281 : Bytes := ("    let r0000246c: u32 = r00002469 ^ r0000246b;\n" : String).toByteArray.data.toList
theorem checked9281 : bytes9281=statementBytes 9324 (op9281.map lower) ∧ bytes9281.length=48 := by core033_kernel_decide
def op9282 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9282 : Bytes := ("    let r0000246d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9282 : bytes9282=statementBytes 9325 (op9282.map lower) ∧ bytes9282.length=41 := by core033_kernel_decide
def op9283 : List WordIR.Op := [.bxor 96 9325]
def bytes9283 : Bytes := ("    let r0000246e: u32 = r00000060 ^ r0000246d;\n" : String).toByteArray.data.toList
theorem checked9283 : bytes9283=statementBytes 9326 (op9283.map lower) ∧ bytes9283.length=48 := by core033_kernel_decide
def op9284 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9284 : Bytes := ("    let r0000246f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9284 : bytes9284=statementBytes 9327 (op9284.map lower) ∧ bytes9284.length=41 := by core033_kernel_decide
def op9285 : List WordIR.Op := [.bnot 9327]
def bytes9285 : Bytes := ("    let r00002470: u32 = !r0000246f;\n" : String).toByteArray.data.toList
theorem checked9285 : bytes9285=statementBytes 9328 (op9285.map lower) ∧ bytes9285.length=37 := by core033_kernel_decide
def op9286 : List WordIR.Op := [.badd 9326 9328]
def bytes9286 : Bytes := ("    let r00002471: u32 = r0000246e.wrapping_add(r00002470);\n" : String).toByteArray.data.toList
theorem checked9286 : bytes9286=statementBytes 9329 (op9286.map lower) ∧ bytes9286.length=60 := by core033_kernel_decide
def op9287 : List WordIR.Op := [.bnot 9329]
def bytes9287 : Bytes := ("    let r00002472: u32 = !r00002471;\n" : String).toByteArray.data.toList
theorem checked9287 : bytes9287=statementBytes 9330 (op9287.map lower) ∧ bytes9287.length=37 := by core033_kernel_decide
def op9288 : List WordIR.Op := [.band 9324 9330]
def bytes9288 : Bytes := ("    let r00002473: u32 = r0000246c & r00002472;\n" : String).toByteArray.data.toList
theorem checked9288 : bytes9288=statementBytes 9331 (op9288.map lower) ∧ bytes9288.length=48 := by core033_kernel_decide
def op9289 : List WordIR.Op := [.bxor 9319 9331]
def bytes9289 : Bytes := ("    let r00002474: u32 = r00002467 ^ r00002473;\n" : String).toByteArray.data.toList
theorem checked9289 : bytes9289=statementBytes 9332 (op9289.map lower) ∧ bytes9289.length=48 := by core033_kernel_decide
def op9290 : List WordIR.Op := [.shr 9332 31]
def bytes9290 : Bytes := ("    let r00002475: u32 = r00002474 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked9290 : bytes9290=statementBytes 9333 (op9290.map lower) ∧ bytes9290.length=54 := by core033_kernel_decide
def op9291 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9291 : Bytes := ("    let r00002476: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9291 : bytes9291=statementBytes 9334 (op9291.map lower) ∧ bytes9291.length=41 := by core033_kernel_decide
def op9292 : List WordIR.Op := [.bxor 9333 9334]
def bytes9292 : Bytes := ("    let r00002477: u32 = r00002475 ^ r00002476;\n" : String).toByteArray.data.toList
theorem checked9292 : bytes9292=statementBytes 9335 (op9292.map lower) ∧ bytes9292.length=48 := by core033_kernel_decide
def op9293 : List WordIR.Op := [.bnot 9335]
def bytes9293 : Bytes := ("    let r00002478: u32 = !r00002477;\n" : String).toByteArray.data.toList
theorem checked9293 : bytes9293=statementBytes 9336 (op9293.map lower) ∧ bytes9293.length=37 := by core033_kernel_decide
def op9294 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9294 : Bytes := ("    let r00002479: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9294 : bytes9294=statementBytes 9337 (op9294.map lower) ∧ bytes9294.length=41 := by core033_kernel_decide
def op9295 : List WordIR.Op := [.badd 9336 9337]
def bytes9295 : Bytes := ("    let r0000247a: u32 = r00002478.wrapping_add(r00002479);\n" : String).toByteArray.data.toList
theorem checked9295 : bytes9295=statementBytes 9338 (op9295.map lower) ∧ bytes9295.length=60 := by core033_kernel_decide
def op9296 : List WordIR.Op := [.bnot 9338]
def bytes9296 : Bytes := ("    let r0000247b: u32 = !r0000247a;\n" : String).toByteArray.data.toList
theorem checked9296 : bytes9296=statementBytes 9339 (op9296.map lower) ∧ bytes9296.length=37 := by core033_kernel_decide
def op9297 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9297 : Bytes := ("    let r0000247c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9297 : bytes9297=statementBytes 9340 (op9297.map lower) ∧ bytes9297.length=41 := by core033_kernel_decide
def op9298 : List WordIR.Op := [.band 9339 9340]
def bytes9298 : Bytes := ("    let r0000247d: u32 = r0000247b & r0000247c;\n" : String).toByteArray.data.toList
theorem checked9298 : bytes9298=statementBytes 9341 (op9298.map lower) ∧ bytes9298.length=48 := by core033_kernel_decide
def op9299 : List WordIR.Op := [.bxor 9314 9341]
def bytes9299 : Bytes := ("    let r0000247e: u32 = r00002462 ^ r0000247d;\n" : String).toByteArray.data.toList
theorem checked9299 : bytes9299=statementBytes 9342 (op9299.map lower) ∧ bytes9299.length=48 := by core033_kernel_decide
def op9300 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9300 : Bytes := ("    let r0000247f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9300 : bytes9300=statementBytes 9343 (op9300.map lower) ∧ bytes9300.length=41 := by core033_kernel_decide
def op9301 : List WordIR.Op := [.bxor 96 9343]
def bytes9301 : Bytes := ("    let r00002480: u32 = r00000060 ^ r0000247f;\n" : String).toByteArray.data.toList
theorem checked9301 : bytes9301=statementBytes 9344 (op9301.map lower) ∧ bytes9301.length=48 := by core033_kernel_decide
def op9302 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9302 : Bytes := ("    let r00002481: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9302 : bytes9302=statementBytes 9345 (op9302.map lower) ∧ bytes9302.length=41 := by core033_kernel_decide
def op9303 : List WordIR.Op := [.bnot 9345]
def bytes9303 : Bytes := ("    let r00002482: u32 = !r00002481;\n" : String).toByteArray.data.toList
theorem checked9303 : bytes9303=statementBytes 9346 (op9303.map lower) ∧ bytes9303.length=37 := by core033_kernel_decide
def op9304 : List WordIR.Op := [.band 9344 9346]
def bytes9304 : Bytes := ("    let r00002483: u32 = r00002480 & r00002482;\n" : String).toByteArray.data.toList
theorem checked9304 : bytes9304=statementBytes 9347 (op9304.map lower) ∧ bytes9304.length=48 := by core033_kernel_decide
def op9305 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9305 : Bytes := ("    let r00002484: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9305 : bytes9305=statementBytes 9348 (op9305.map lower) ∧ bytes9305.length=41 := by core033_kernel_decide
def op9306 : List WordIR.Op := [.bxor 96 9348]
def bytes9306 : Bytes := ("    let r00002485: u32 = r00000060 ^ r00002484;\n" : String).toByteArray.data.toList
theorem checked9306 : bytes9306=statementBytes 9349 (op9306.map lower) ∧ bytes9306.length=48 := by core033_kernel_decide
def op9307 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9307 : Bytes := ("    let r00002486: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9307 : bytes9307=statementBytes 9350 (op9307.map lower) ∧ bytes9307.length=41 := by core033_kernel_decide
def op9308 : List WordIR.Op := [.bnot 9350]
def bytes9308 : Bytes := ("    let r00002487: u32 = !r00002486;\n" : String).toByteArray.data.toList
theorem checked9308 : bytes9308=statementBytes 9351 (op9308.map lower) ∧ bytes9308.length=37 := by core033_kernel_decide
def op9309 : List WordIR.Op := [.bxor 9349 9351]
def bytes9309 : Bytes := ("    let r00002488: u32 = r00002485 ^ r00002487;\n" : String).toByteArray.data.toList
theorem checked9309 : bytes9309=statementBytes 9352 (op9309.map lower) ∧ bytes9309.length=48 := by core033_kernel_decide
def op9310 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9310 : Bytes := ("    let r00002489: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9310 : bytes9310=statementBytes 9353 (op9310.map lower) ∧ bytes9310.length=41 := by core033_kernel_decide
def op9311 : List WordIR.Op := [.bxor 96 9353]
def bytes9311 : Bytes := ("    let r0000248a: u32 = r00000060 ^ r00002489;\n" : String).toByteArray.data.toList
theorem checked9311 : bytes9311=statementBytes 9354 (op9311.map lower) ∧ bytes9311.length=48 := by core033_kernel_decide
def op9312 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9312 : Bytes := ("    let r0000248b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9312 : bytes9312=statementBytes 9355 (op9312.map lower) ∧ bytes9312.length=41 := by core033_kernel_decide
def op9313 : List WordIR.Op := [.bnot 9355]
def bytes9313 : Bytes := ("    let r0000248c: u32 = !r0000248b;\n" : String).toByteArray.data.toList
theorem checked9313 : bytes9313=statementBytes 9356 (op9313.map lower) ∧ bytes9313.length=37 := by core033_kernel_decide
def op9314 : List WordIR.Op := [.badd 9354 9356]
def bytes9314 : Bytes := ("    let r0000248d: u32 = r0000248a.wrapping_add(r0000248c);\n" : String).toByteArray.data.toList
theorem checked9314 : bytes9314=statementBytes 9357 (op9314.map lower) ∧ bytes9314.length=60 := by core033_kernel_decide
def op9315 : List WordIR.Op := [.bnot 9357]
def bytes9315 : Bytes := ("    let r0000248e: u32 = !r0000248d;\n" : String).toByteArray.data.toList
theorem checked9315 : bytes9315=statementBytes 9358 (op9315.map lower) ∧ bytes9315.length=37 := by core033_kernel_decide
def op9316 : List WordIR.Op := [.band 9352 9358]
def bytes9316 : Bytes := ("    let r0000248f: u32 = r00002488 & r0000248e;\n" : String).toByteArray.data.toList
theorem checked9316 : bytes9316=statementBytes 9359 (op9316.map lower) ∧ bytes9316.length=48 := by core033_kernel_decide
def op9317 : List WordIR.Op := [.bxor 9347 9359]
def bytes9317 : Bytes := ("    let r00002490: u32 = r00002483 ^ r0000248f;\n" : String).toByteArray.data.toList
theorem checked9317 : bytes9317=statementBytes 9360 (op9317.map lower) ∧ bytes9317.length=48 := by core033_kernel_decide
def op9318 : List WordIR.Op := [.shr 9360 31]
def bytes9318 : Bytes := ("    let r00002491: u32 = r00002490 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked9318 : bytes9318=statementBytes 9361 (op9318.map lower) ∧ bytes9318.length=54 := by core033_kernel_decide
def op9319 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9319 : Bytes := ("    let r00002492: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9319 : bytes9319=statementBytes 9362 (op9319.map lower) ∧ bytes9319.length=41 := by core033_kernel_decide
def op9320 : List WordIR.Op := [.bxor 9361 9362]
def bytes9320 : Bytes := ("    let r00002493: u32 = r00002491 ^ r00002492;\n" : String).toByteArray.data.toList
theorem checked9320 : bytes9320=statementBytes 9363 (op9320.map lower) ∧ bytes9320.length=48 := by core033_kernel_decide
def op9321 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9321 : Bytes := ("    let r00002494: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9321 : bytes9321=statementBytes 9364 (op9321.map lower) ∧ bytes9321.length=41 := by core033_kernel_decide
def op9322 : List WordIR.Op := [.bxor 96 9364]
def bytes9322 : Bytes := ("    let r00002495: u32 = r00000060 ^ r00002494;\n" : String).toByteArray.data.toList
theorem checked9322 : bytes9322=statementBytes 9365 (op9322.map lower) ∧ bytes9322.length=48 := by core033_kernel_decide
def op9323 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9323 : Bytes := ("    let r00002496: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9323 : bytes9323=statementBytes 9366 (op9323.map lower) ∧ bytes9323.length=41 := by core033_kernel_decide
def op9324 : List WordIR.Op := [.bnot 9366]
def bytes9324 : Bytes := ("    let r00002497: u32 = !r00002496;\n" : String).toByteArray.data.toList
theorem checked9324 : bytes9324=statementBytes 9367 (op9324.map lower) ∧ bytes9324.length=37 := by core033_kernel_decide
def op9325 : List WordIR.Op := [.band 9365 9367]
def bytes9325 : Bytes := ("    let r00002498: u32 = r00002495 & r00002497;\n" : String).toByteArray.data.toList
theorem checked9325 : bytes9325=statementBytes 9368 (op9325.map lower) ∧ bytes9325.length=48 := by core033_kernel_decide
def op9326 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9326 : Bytes := ("    let r00002499: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9326 : bytes9326=statementBytes 9369 (op9326.map lower) ∧ bytes9326.length=41 := by core033_kernel_decide
def op9327 : List WordIR.Op := [.bxor 96 9369]
def bytes9327 : Bytes := ("    let r0000249a: u32 = r00000060 ^ r00002499;\n" : String).toByteArray.data.toList
theorem checked9327 : bytes9327=statementBytes 9370 (op9327.map lower) ∧ bytes9327.length=48 := by core033_kernel_decide
def op9328 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9328 : Bytes := ("    let r0000249b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9328 : bytes9328=statementBytes 9371 (op9328.map lower) ∧ bytes9328.length=41 := by core033_kernel_decide
def op9329 : List WordIR.Op := [.bnot 9371]
def bytes9329 : Bytes := ("    let r0000249c: u32 = !r0000249b;\n" : String).toByteArray.data.toList
theorem checked9329 : bytes9329=statementBytes 9372 (op9329.map lower) ∧ bytes9329.length=37 := by core033_kernel_decide
def op9330 : List WordIR.Op := [.bxor 9370 9372]
def bytes9330 : Bytes := ("    let r0000249d: u32 = r0000249a ^ r0000249c;\n" : String).toByteArray.data.toList
theorem checked9330 : bytes9330=statementBytes 9373 (op9330.map lower) ∧ bytes9330.length=48 := by core033_kernel_decide
def op9331 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9331 : Bytes := ("    let r0000249e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9331 : bytes9331=statementBytes 9374 (op9331.map lower) ∧ bytes9331.length=41 := by core033_kernel_decide
def op9332 : List WordIR.Op := [.bxor 96 9374]
def bytes9332 : Bytes := ("    let r0000249f: u32 = r00000060 ^ r0000249e;\n" : String).toByteArray.data.toList
theorem checked9332 : bytes9332=statementBytes 9375 (op9332.map lower) ∧ bytes9332.length=48 := by core033_kernel_decide
def op9333 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9333 : Bytes := ("    let r000024a0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9333 : bytes9333=statementBytes 9376 (op9333.map lower) ∧ bytes9333.length=41 := by core033_kernel_decide
def op9334 : List WordIR.Op := [.bnot 9376]
def bytes9334 : Bytes := ("    let r000024a1: u32 = !r000024a0;\n" : String).toByteArray.data.toList
theorem checked9334 : bytes9334=statementBytes 9377 (op9334.map lower) ∧ bytes9334.length=37 := by core033_kernel_decide
def op9335 : List WordIR.Op := [.badd 9375 9377]
def bytes9335 : Bytes := ("    let r000024a2: u32 = r0000249f.wrapping_add(r000024a1);\n" : String).toByteArray.data.toList
theorem checked9335 : bytes9335=statementBytes 9378 (op9335.map lower) ∧ bytes9335.length=60 := by core033_kernel_decide
def op9336 : List WordIR.Op := [.bnot 9378]
def bytes9336 : Bytes := ("    let r000024a3: u32 = !r000024a2;\n" : String).toByteArray.data.toList
theorem checked9336 : bytes9336=statementBytes 9379 (op9336.map lower) ∧ bytes9336.length=37 := by core033_kernel_decide
def op9337 : List WordIR.Op := [.band 9373 9379]
def bytes9337 : Bytes := ("    let r000024a4: u32 = r0000249d & r000024a3;\n" : String).toByteArray.data.toList
theorem checked9337 : bytes9337=statementBytes 9380 (op9337.map lower) ∧ bytes9337.length=48 := by core033_kernel_decide
def op9338 : List WordIR.Op := [.bxor 9368 9380]
def bytes9338 : Bytes := ("    let r000024a5: u32 = r00002498 ^ r000024a4;\n" : String).toByteArray.data.toList
theorem checked9338 : bytes9338=statementBytes 9381 (op9338.map lower) ∧ bytes9338.length=48 := by core033_kernel_decide
def op9339 : List WordIR.Op := [.shr 9381 31]
def bytes9339 : Bytes := ("    let r000024a6: u32 = r000024a5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked9339 : bytes9339=statementBytes 9382 (op9339.map lower) ∧ bytes9339.length=54 := by core033_kernel_decide
def op9340 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9340 : Bytes := ("    let r000024a7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9340 : bytes9340=statementBytes 9383 (op9340.map lower) ∧ bytes9340.length=41 := by core033_kernel_decide
def op9341 : List WordIR.Op := [.bxor 9382 9383]
def bytes9341 : Bytes := ("    let r000024a8: u32 = r000024a6 ^ r000024a7;\n" : String).toByteArray.data.toList
theorem checked9341 : bytes9341=statementBytes 9384 (op9341.map lower) ∧ bytes9341.length=48 := by core033_kernel_decide
def op9342 : List WordIR.Op := [.bxor 9363 9384]
def bytes9342 : Bytes := ("    let r000024a9: u32 = r00002493 ^ r000024a8;\n" : String).toByteArray.data.toList
theorem checked9342 : bytes9342=statementBytes 9385 (op9342.map lower) ∧ bytes9342.length=48 := by core033_kernel_decide
def op9343 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes9343 : Bytes := ("    let r000024aa: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked9343 : bytes9343=statementBytes 9386 (op9343.map lower) ∧ bytes9343.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9280,op9281,op9282,op9283,op9284,op9285,op9286,op9287,op9288,op9289,op9290,op9291,op9292,op9293,op9294,op9295,op9296,op9297,op9298,op9299,op9300,op9301,op9302,op9303,op9304,op9305,op9306,op9307,op9308,op9309,op9310,op9311,op9312,op9313,op9314,op9315,op9316,op9317,op9318,op9319,op9320,op9321,op9322,op9323,op9324,op9325,op9326,op9327,op9328,op9329,op9330,op9331,op9332,op9333,op9334,op9335,op9336,op9337,op9338,op9339,op9340,op9341,op9342,op9343]
def chunks : List Bytes := [bytes9280,bytes9281,bytes9282,bytes9283,bytes9284,bytes9285,bytes9286,bytes9287,bytes9288,bytes9289,bytes9290,bytes9291,bytes9292,bytes9293,bytes9294,bytes9295,bytes9296,bytes9297,bytes9298,bytes9299,bytes9300,bytes9301,bytes9302,bytes9303,bytes9304,bytes9305,bytes9306,bytes9307,bytes9308,bytes9309,bytes9310,bytes9311,bytes9312,bytes9313,bytes9314,bytes9315,bytes9316,bytes9317,bytes9318,bytes9319,bytes9320,bytes9321,bytes9322,bytes9323,bytes9324,bytes9325,bytes9326,bytes9327,bytes9328,bytes9329,bytes9330,bytes9331,bytes9332,bytes9333,bytes9334,bytes9335,bytes9336,bytes9337,bytes9338,bytes9339,bytes9340,bytes9341,bytes9342,bytes9343]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9323 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9280.1 (.cons _ _ _ _ _ checked9281.1 (.cons _ _ _ _ _ checked9282.1 (.cons _ _ _ _ _ checked9283.1 (.cons _ _ _ _ _ checked9284.1 (.cons _ _ _ _ _ checked9285.1 (.cons _ _ _ _ _ checked9286.1 (.cons _ _ _ _ _ checked9287.1 (.cons _ _ _ _ _ checked9288.1 (.cons _ _ _ _ _ checked9289.1 (.cons _ _ _ _ _ checked9290.1 (.cons _ _ _ _ _ checked9291.1 (.cons _ _ _ _ _ checked9292.1 (.cons _ _ _ _ _ checked9293.1 (.cons _ _ _ _ _ checked9294.1 (.cons _ _ _ _ _ checked9295.1 (.cons _ _ _ _ _ checked9296.1 (.cons _ _ _ _ _ checked9297.1 (.cons _ _ _ _ _ checked9298.1 (.cons _ _ _ _ _ checked9299.1 (.cons _ _ _ _ _ checked9300.1 (.cons _ _ _ _ _ checked9301.1 (.cons _ _ _ _ _ checked9302.1 (.cons _ _ _ _ _ checked9303.1 (.cons _ _ _ _ _ checked9304.1 (.cons _ _ _ _ _ checked9305.1 (.cons _ _ _ _ _ checked9306.1 (.cons _ _ _ _ _ checked9307.1 (.cons _ _ _ _ _ checked9308.1 (.cons _ _ _ _ _ checked9309.1 (.cons _ _ _ _ _ checked9310.1 (.cons _ _ _ _ _ checked9311.1 (.cons _ _ _ _ _ checked9312.1 (.cons _ _ _ _ _ checked9313.1 (.cons _ _ _ _ _ checked9314.1 (.cons _ _ _ _ _ checked9315.1 (.cons _ _ _ _ _ checked9316.1 (.cons _ _ _ _ _ checked9317.1 (.cons _ _ _ _ _ checked9318.1 (.cons _ _ _ _ _ checked9319.1 (.cons _ _ _ _ _ checked9320.1 (.cons _ _ _ _ _ checked9321.1 (.cons _ _ _ _ _ checked9322.1 (.cons _ _ _ _ _ checked9323.1 (.cons _ _ _ _ _ checked9324.1 (.cons _ _ _ _ _ checked9325.1 (.cons _ _ _ _ _ checked9326.1 (.cons _ _ _ _ _ checked9327.1 (.cons _ _ _ _ _ checked9328.1 (.cons _ _ _ _ _ checked9329.1 (.cons _ _ _ _ _ checked9330.1 (.cons _ _ _ _ _ checked9331.1 (.cons _ _ _ _ _ checked9332.1 (.cons _ _ _ _ _ checked9333.1 (.cons _ _ _ _ _ checked9334.1 (.cons _ _ _ _ _ checked9335.1 (.cons _ _ _ _ _ checked9336.1 (.cons _ _ _ _ _ checked9337.1 (.cons _ _ _ _ _ checked9338.1 (.cons _ _ _ _ _ checked9339.1 (.cons _ _ _ _ _ checked9340.1 (.cons _ _ _ _ _ checked9341.1 (.cons _ _ _ _ _ checked9342.1 (.cons _ _ _ _ _ checked9343.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9323 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2855 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9280.2,checked9281.2,checked9282.2,checked9283.2,checked9284.2,checked9285.2,checked9286.2,checked9287.2,checked9288.2,checked9289.2,checked9290.2,checked9291.2,checked9292.2,checked9293.2,checked9294.2,checked9295.2,checked9296.2,checked9297.2,checked9298.2,checked9299.2,checked9300.2,checked9301.2,checked9302.2,checked9303.2,checked9304.2,checked9305.2,checked9306.2,checked9307.2,checked9308.2,checked9309.2,checked9310.2,checked9311.2,checked9312.2,checked9313.2,checked9314.2,checked9315.2,checked9316.2,checked9317.2,checked9318.2,checked9319.2,checked9320.2,checked9321.2,checked9322.2,checked9323.2,checked9324.2,checked9325.2,checked9326.2,checked9327.2,checked9328.2,checked9329.2,checked9330.2,checked9331.2,checked9332.2,checked9333.2,checked9334.2,checked9335.2,checked9336.2,checked9337.2,checked9338.2,checked9339.2,checked9340.2,checked9341.2,checked9342.2,checked9343.2]
  decide
end ArtifactPathRoundDispatchGroup145
