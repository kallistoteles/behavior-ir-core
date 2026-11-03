import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup144
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9216 : List WordIR.Op := [.literal (BitVec.ofNat 32 1249150122)]
def bytes9216 : Bytes := ("    let r00002476: u32 = 0x4a7484aa_u32;\n" : String).toByteArray.data.toList
theorem checked9216 : bytes9216=statementBytes 9334 (op9216.map lower) ∧ bytes9216.length=41 := by core033_kernel_decide
def op9217 : List WordIR.Op := [.badd 9333 9334]
def bytes9217 : Bytes := ("    let r00002477: u32 = r00002475.wrapping_add(r00002476);\n" : String).toByteArray.data.toList
theorem checked9217 : bytes9217=statementBytes 9335 (op9217.map lower) ∧ bytes9217.length=60 := by core033_kernel_decide
def op9218 : List WordIR.Op := [.badd 9335 8209]
def bytes9218 : Bytes := ("    let r00002478: u32 = r00002477.wrapping_add(r00002011);\n" : String).toByteArray.data.toList
theorem checked9218 : bytes9218=statementBytes 9336 (op9218.map lower) ∧ bytes9218.length=60 := by core033_kernel_decide
def op9219 : List WordIR.Op := [.rotr 9321 2]
def bytes9219 : Bytes := ("    let r00002479: u32 = r00002469.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9219 : bytes9219=statementBytes 9337 (op9219.map lower) ∧ bytes9219.length=65 := by core033_kernel_decide
def op9220 : List WordIR.Op := [.rotr 9321 13]
def bytes9220 : Bytes := ("    let r0000247a: u32 = r00002469.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9220 : bytes9220=statementBytes 9338 (op9220.map lower) ∧ bytes9220.length=65 := by core033_kernel_decide
def op9221 : List WordIR.Op := [.bxor 9337 9338]
def bytes9221 : Bytes := ("    let r0000247b: u32 = r00002479 ^ r0000247a;\n" : String).toByteArray.data.toList
theorem checked9221 : bytes9221=statementBytes 9339 (op9221.map lower) ∧ bytes9221.length=48 := by core033_kernel_decide
def op9222 : List WordIR.Op := [.rotr 9321 22]
def bytes9222 : Bytes := ("    let r0000247c: u32 = r00002469.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9222 : bytes9222=statementBytes 9340 (op9222.map lower) ∧ bytes9222.length=65 := by core033_kernel_decide
def op9223 : List WordIR.Op := [.bxor 9339 9340]
def bytes9223 : Bytes := ("    let r0000247d: u32 = r0000247b ^ r0000247c;\n" : String).toByteArray.data.toList
theorem checked9223 : bytes9223=statementBytes 9341 (op9223.map lower) ∧ bytes9223.length=48 := by core033_kernel_decide
def op9224 : List WordIR.Op := [.band 9321 9294]
def bytes9224 : Bytes := ("    let r0000247e: u32 = r00002469 & r0000244e;\n" : String).toByteArray.data.toList
theorem checked9224 : bytes9224=statementBytes 9342 (op9224.map lower) ∧ bytes9224.length=48 := by core033_kernel_decide
def op9225 : List WordIR.Op := [.band 9321 9267]
def bytes9225 : Bytes := ("    let r0000247f: u32 = r00002469 & r00002433;\n" : String).toByteArray.data.toList
theorem checked9225 : bytes9225=statementBytes 9343 (op9225.map lower) ∧ bytes9225.length=48 := by core033_kernel_decide
def op9226 : List WordIR.Op := [.bxor 9342 9343]
def bytes9226 : Bytes := ("    let r00002480: u32 = r0000247e ^ r0000247f;\n" : String).toByteArray.data.toList
theorem checked9226 : bytes9226=statementBytes 9344 (op9226.map lower) ∧ bytes9226.length=48 := by core033_kernel_decide
def op9227 : List WordIR.Op := [.band 9294 9267]
def bytes9227 : Bytes := ("    let r00002481: u32 = r0000244e & r00002433;\n" : String).toByteArray.data.toList
theorem checked9227 : bytes9227=statementBytes 9345 (op9227.map lower) ∧ bytes9227.length=48 := by core033_kernel_decide
def op9228 : List WordIR.Op := [.bxor 9344 9345]
def bytes9228 : Bytes := ("    let r00002482: u32 = r00002480 ^ r00002481;\n" : String).toByteArray.data.toList
theorem checked9228 : bytes9228=statementBytes 9346 (op9228.map lower) ∧ bytes9228.length=48 := by core033_kernel_decide
def op9229 : List WordIR.Op := [.badd 9341 9346]
def bytes9229 : Bytes := ("    let r00002483: u32 = r0000247d.wrapping_add(r00002482);\n" : String).toByteArray.data.toList
theorem checked9229 : bytes9229=statementBytes 9347 (op9229.map lower) ∧ bytes9229.length=60 := by core033_kernel_decide
def op9230 : List WordIR.Op := [.badd 9336 9347]
def bytes9230 : Bytes := ("    let r00002484: u32 = r00002478.wrapping_add(r00002483);\n" : String).toByteArray.data.toList
theorem checked9230 : bytes9230=statementBytes 9348 (op9230.map lower) ∧ bytes9230.length=60 := by core033_kernel_decide
def op9231 : List WordIR.Op := [.badd 9240 9336]
def bytes9231 : Bytes := ("    let r00002485: u32 = r00002418.wrapping_add(r00002478);\n" : String).toByteArray.data.toList
theorem checked9231 : bytes9231=statementBytes 9349 (op9231.map lower) ∧ bytes9231.length=60 := by core033_kernel_decide
def op9232 : List WordIR.Op := [.rotr 9349 6]
def bytes9232 : Bytes := ("    let r00002486: u32 = r00002485.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9232 : bytes9232=statementBytes 9350 (op9232.map lower) ∧ bytes9232.length=65 := by core033_kernel_decide
def op9233 : List WordIR.Op := [.rotr 9349 11]
def bytes9233 : Bytes := ("    let r00002487: u32 = r00002485.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9233 : bytes9233=statementBytes 9351 (op9233.map lower) ∧ bytes9233.length=65 := by core033_kernel_decide
def op9234 : List WordIR.Op := [.bxor 9350 9351]
def bytes9234 : Bytes := ("    let r00002488: u32 = r00002486 ^ r00002487;\n" : String).toByteArray.data.toList
theorem checked9234 : bytes9234=statementBytes 9352 (op9234.map lower) ∧ bytes9234.length=48 := by core033_kernel_decide
def op9235 : List WordIR.Op := [.rotr 9349 25]
def bytes9235 : Bytes := ("    let r00002489: u32 = r00002485.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9235 : bytes9235=statementBytes 9353 (op9235.map lower) ∧ bytes9235.length=65 := by core033_kernel_decide
def op9236 : List WordIR.Op := [.bxor 9352 9353]
def bytes9236 : Bytes := ("    let r0000248a: u32 = r00002488 ^ r00002489;\n" : String).toByteArray.data.toList
theorem checked9236 : bytes9236=statementBytes 9354 (op9236.map lower) ∧ bytes9236.length=48 := by core033_kernel_decide
def op9237 : List WordIR.Op := [.badd 9268 9354]
def bytes9237 : Bytes := ("    let r0000248b: u32 = r00002434.wrapping_add(r0000248a);\n" : String).toByteArray.data.toList
theorem checked9237 : bytes9237=statementBytes 9355 (op9237.map lower) ∧ bytes9237.length=60 := by core033_kernel_decide
def op9238 : List WordIR.Op := [.band 9349 9322]
def bytes9238 : Bytes := ("    let r0000248c: u32 = r00002485 & r0000246a;\n" : String).toByteArray.data.toList
theorem checked9238 : bytes9238=statementBytes 9356 (op9238.map lower) ∧ bytes9238.length=48 := by core033_kernel_decide
def op9239 : List WordIR.Op := [.bnot 9349]
def bytes9239 : Bytes := ("    let r0000248d: u32 = !r00002485;\n" : String).toByteArray.data.toList
theorem checked9239 : bytes9239=statementBytes 9357 (op9239.map lower) ∧ bytes9239.length=37 := by core033_kernel_decide
def op9240 : List WordIR.Op := [.band 9357 9295]
def bytes9240 : Bytes := ("    let r0000248e: u32 = r0000248d & r0000244f;\n" : String).toByteArray.data.toList
theorem checked9240 : bytes9240=statementBytes 9358 (op9240.map lower) ∧ bytes9240.length=48 := by core033_kernel_decide
def op9241 : List WordIR.Op := [.bxor 9356 9358]
def bytes9241 : Bytes := ("    let r0000248f: u32 = r0000248c ^ r0000248e;\n" : String).toByteArray.data.toList
theorem checked9241 : bytes9241=statementBytes 9359 (op9241.map lower) ∧ bytes9241.length=48 := by core033_kernel_decide
def op9242 : List WordIR.Op := [.badd 9355 9359]
def bytes9242 : Bytes := ("    let r00002490: u32 = r0000248b.wrapping_add(r0000248f);\n" : String).toByteArray.data.toList
theorem checked9242 : bytes9242=statementBytes 9360 (op9242.map lower) ∧ bytes9242.length=60 := by core033_kernel_decide
def op9243 : List WordIR.Op := [.literal (BitVec.ofNat 32 1555081692)]
def bytes9243 : Bytes := ("    let r00002491: u32 = 0x5cb0a9dc_u32;\n" : String).toByteArray.data.toList
theorem checked9243 : bytes9243=statementBytes 9361 (op9243.map lower) ∧ bytes9243.length=41 := by core033_kernel_decide
def op9244 : List WordIR.Op := [.badd 9360 9361]
def bytes9244 : Bytes := ("    let r00002492: u32 = r00002490.wrapping_add(r00002491);\n" : String).toByteArray.data.toList
theorem checked9244 : bytes9244=statementBytes 9362 (op9244.map lower) ∧ bytes9244.length=60 := by core033_kernel_decide
def op9245 : List WordIR.Op := [.badd 9362 8222]
def bytes9245 : Bytes := ("    let r00002493: u32 = r00002492.wrapping_add(r0000201e);\n" : String).toByteArray.data.toList
theorem checked9245 : bytes9245=statementBytes 9363 (op9245.map lower) ∧ bytes9245.length=60 := by core033_kernel_decide
def op9246 : List WordIR.Op := [.rotr 9348 2]
def bytes9246 : Bytes := ("    let r00002494: u32 = r00002484.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9246 : bytes9246=statementBytes 9364 (op9246.map lower) ∧ bytes9246.length=65 := by core033_kernel_decide
def op9247 : List WordIR.Op := [.rotr 9348 13]
def bytes9247 : Bytes := ("    let r00002495: u32 = r00002484.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9247 : bytes9247=statementBytes 9365 (op9247.map lower) ∧ bytes9247.length=65 := by core033_kernel_decide
def op9248 : List WordIR.Op := [.bxor 9364 9365]
def bytes9248 : Bytes := ("    let r00002496: u32 = r00002494 ^ r00002495;\n" : String).toByteArray.data.toList
theorem checked9248 : bytes9248=statementBytes 9366 (op9248.map lower) ∧ bytes9248.length=48 := by core033_kernel_decide
def op9249 : List WordIR.Op := [.rotr 9348 22]
def bytes9249 : Bytes := ("    let r00002497: u32 = r00002484.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9249 : bytes9249=statementBytes 9367 (op9249.map lower) ∧ bytes9249.length=65 := by core033_kernel_decide
def op9250 : List WordIR.Op := [.bxor 9366 9367]
def bytes9250 : Bytes := ("    let r00002498: u32 = r00002496 ^ r00002497;\n" : String).toByteArray.data.toList
theorem checked9250 : bytes9250=statementBytes 9368 (op9250.map lower) ∧ bytes9250.length=48 := by core033_kernel_decide
def op9251 : List WordIR.Op := [.band 9348 9321]
def bytes9251 : Bytes := ("    let r00002499: u32 = r00002484 & r00002469;\n" : String).toByteArray.data.toList
theorem checked9251 : bytes9251=statementBytes 9369 (op9251.map lower) ∧ bytes9251.length=48 := by core033_kernel_decide
def op9252 : List WordIR.Op := [.band 9348 9294]
def bytes9252 : Bytes := ("    let r0000249a: u32 = r00002484 & r0000244e;\n" : String).toByteArray.data.toList
theorem checked9252 : bytes9252=statementBytes 9370 (op9252.map lower) ∧ bytes9252.length=48 := by core033_kernel_decide
def op9253 : List WordIR.Op := [.bxor 9369 9370]
def bytes9253 : Bytes := ("    let r0000249b: u32 = r00002499 ^ r0000249a;\n" : String).toByteArray.data.toList
theorem checked9253 : bytes9253=statementBytes 9371 (op9253.map lower) ∧ bytes9253.length=48 := by core033_kernel_decide
def op9254 : List WordIR.Op := [.band 9321 9294]
def bytes9254 : Bytes := ("    let r0000249c: u32 = r00002469 & r0000244e;\n" : String).toByteArray.data.toList
theorem checked9254 : bytes9254=statementBytes 9372 (op9254.map lower) ∧ bytes9254.length=48 := by core033_kernel_decide
def op9255 : List WordIR.Op := [.bxor 9371 9372]
def bytes9255 : Bytes := ("    let r0000249d: u32 = r0000249b ^ r0000249c;\n" : String).toByteArray.data.toList
theorem checked9255 : bytes9255=statementBytes 9373 (op9255.map lower) ∧ bytes9255.length=48 := by core033_kernel_decide
def op9256 : List WordIR.Op := [.badd 9368 9373]
def bytes9256 : Bytes := ("    let r0000249e: u32 = r00002498.wrapping_add(r0000249d);\n" : String).toByteArray.data.toList
theorem checked9256 : bytes9256=statementBytes 9374 (op9256.map lower) ∧ bytes9256.length=60 := by core033_kernel_decide
def op9257 : List WordIR.Op := [.badd 9363 9374]
def bytes9257 : Bytes := ("    let r0000249f: u32 = r00002493.wrapping_add(r0000249e);\n" : String).toByteArray.data.toList
theorem checked9257 : bytes9257=statementBytes 9375 (op9257.map lower) ∧ bytes9257.length=60 := by core033_kernel_decide
def op9258 : List WordIR.Op := [.badd 9267 9363]
def bytes9258 : Bytes := ("    let r000024a0: u32 = r00002433.wrapping_add(r00002493);\n" : String).toByteArray.data.toList
theorem checked9258 : bytes9258=statementBytes 9376 (op9258.map lower) ∧ bytes9258.length=60 := by core033_kernel_decide
def op9259 : List WordIR.Op := [.rotr 9376 6]
def bytes9259 : Bytes := ("    let r000024a1: u32 = r000024a0.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9259 : bytes9259=statementBytes 9377 (op9259.map lower) ∧ bytes9259.length=65 := by core033_kernel_decide
def op9260 : List WordIR.Op := [.rotr 9376 11]
def bytes9260 : Bytes := ("    let r000024a2: u32 = r000024a0.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9260 : bytes9260=statementBytes 9378 (op9260.map lower) ∧ bytes9260.length=65 := by core033_kernel_decide
def op9261 : List WordIR.Op := [.bxor 9377 9378]
def bytes9261 : Bytes := ("    let r000024a3: u32 = r000024a1 ^ r000024a2;\n" : String).toByteArray.data.toList
theorem checked9261 : bytes9261=statementBytes 9379 (op9261.map lower) ∧ bytes9261.length=48 := by core033_kernel_decide
def op9262 : List WordIR.Op := [.rotr 9376 25]
def bytes9262 : Bytes := ("    let r000024a4: u32 = r000024a0.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9262 : bytes9262=statementBytes 9380 (op9262.map lower) ∧ bytes9262.length=65 := by core033_kernel_decide
def op9263 : List WordIR.Op := [.bxor 9379 9380]
def bytes9263 : Bytes := ("    let r000024a5: u32 = r000024a3 ^ r000024a4;\n" : String).toByteArray.data.toList
theorem checked9263 : bytes9263=statementBytes 9381 (op9263.map lower) ∧ bytes9263.length=48 := by core033_kernel_decide
def op9264 : List WordIR.Op := [.badd 9295 9381]
def bytes9264 : Bytes := ("    let r000024a6: u32 = r0000244f.wrapping_add(r000024a5);\n" : String).toByteArray.data.toList
theorem checked9264 : bytes9264=statementBytes 9382 (op9264.map lower) ∧ bytes9264.length=60 := by core033_kernel_decide
def op9265 : List WordIR.Op := [.band 9376 9349]
def bytes9265 : Bytes := ("    let r000024a7: u32 = r000024a0 & r00002485;\n" : String).toByteArray.data.toList
theorem checked9265 : bytes9265=statementBytes 9383 (op9265.map lower) ∧ bytes9265.length=48 := by core033_kernel_decide
def op9266 : List WordIR.Op := [.bnot 9376]
def bytes9266 : Bytes := ("    let r000024a8: u32 = !r000024a0;\n" : String).toByteArray.data.toList
theorem checked9266 : bytes9266=statementBytes 9384 (op9266.map lower) ∧ bytes9266.length=37 := by core033_kernel_decide
def op9267 : List WordIR.Op := [.band 9384 9322]
def bytes9267 : Bytes := ("    let r000024a9: u32 = r000024a8 & r0000246a;\n" : String).toByteArray.data.toList
theorem checked9267 : bytes9267=statementBytes 9385 (op9267.map lower) ∧ bytes9267.length=48 := by core033_kernel_decide
def op9268 : List WordIR.Op := [.bxor 9383 9385]
def bytes9268 : Bytes := ("    let r000024aa: u32 = r000024a7 ^ r000024a9;\n" : String).toByteArray.data.toList
theorem checked9268 : bytes9268=statementBytes 9386 (op9268.map lower) ∧ bytes9268.length=48 := by core033_kernel_decide
def op9269 : List WordIR.Op := [.badd 9382 9386]
def bytes9269 : Bytes := ("    let r000024ab: u32 = r000024a6.wrapping_add(r000024aa);\n" : String).toByteArray.data.toList
theorem checked9269 : bytes9269=statementBytes 9387 (op9269.map lower) ∧ bytes9269.length=60 := by core033_kernel_decide
def op9270 : List WordIR.Op := [.literal (BitVec.ofNat 32 1996064986)]
def bytes9270 : Bytes := ("    let r000024ac: u32 = 0x76f988da_u32;\n" : String).toByteArray.data.toList
theorem checked9270 : bytes9270=statementBytes 9388 (op9270.map lower) ∧ bytes9270.length=41 := by core033_kernel_decide
def op9271 : List WordIR.Op := [.badd 9387 9388]
def bytes9271 : Bytes := ("    let r000024ad: u32 = r000024ab.wrapping_add(r000024ac);\n" : String).toByteArray.data.toList
theorem checked9271 : bytes9271=statementBytes 9389 (op9271.map lower) ∧ bytes9271.length=60 := by core033_kernel_decide
def op9272 : List WordIR.Op := [.badd 9389 8235]
def bytes9272 : Bytes := ("    let r000024ae: u32 = r000024ad.wrapping_add(r0000202b);\n" : String).toByteArray.data.toList
theorem checked9272 : bytes9272=statementBytes 9390 (op9272.map lower) ∧ bytes9272.length=60 := by core033_kernel_decide
def op9273 : List WordIR.Op := [.rotr 9375 2]
def bytes9273 : Bytes := ("    let r000024af: u32 = r0000249f.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9273 : bytes9273=statementBytes 9391 (op9273.map lower) ∧ bytes9273.length=65 := by core033_kernel_decide
def op9274 : List WordIR.Op := [.rotr 9375 13]
def bytes9274 : Bytes := ("    let r000024b0: u32 = r0000249f.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9274 : bytes9274=statementBytes 9392 (op9274.map lower) ∧ bytes9274.length=65 := by core033_kernel_decide
def op9275 : List WordIR.Op := [.bxor 9391 9392]
def bytes9275 : Bytes := ("    let r000024b1: u32 = r000024af ^ r000024b0;\n" : String).toByteArray.data.toList
theorem checked9275 : bytes9275=statementBytes 9393 (op9275.map lower) ∧ bytes9275.length=48 := by core033_kernel_decide
def op9276 : List WordIR.Op := [.rotr 9375 22]
def bytes9276 : Bytes := ("    let r000024b2: u32 = r0000249f.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9276 : bytes9276=statementBytes 9394 (op9276.map lower) ∧ bytes9276.length=65 := by core033_kernel_decide
def op9277 : List WordIR.Op := [.bxor 9393 9394]
def bytes9277 : Bytes := ("    let r000024b3: u32 = r000024b1 ^ r000024b2;\n" : String).toByteArray.data.toList
theorem checked9277 : bytes9277=statementBytes 9395 (op9277.map lower) ∧ bytes9277.length=48 := by core033_kernel_decide
def op9278 : List WordIR.Op := [.band 9375 9348]
def bytes9278 : Bytes := ("    let r000024b4: u32 = r0000249f & r00002484;\n" : String).toByteArray.data.toList
theorem checked9278 : bytes9278=statementBytes 9396 (op9278.map lower) ∧ bytes9278.length=48 := by core033_kernel_decide
def op9279 : List WordIR.Op := [.band 9375 9321]
def bytes9279 : Bytes := ("    let r000024b5: u32 = r0000249f & r00002469;\n" : String).toByteArray.data.toList
theorem checked9279 : bytes9279=statementBytes 9397 (op9279.map lower) ∧ bytes9279.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9216,op9217,op9218,op9219,op9220,op9221,op9222,op9223,op9224,op9225,op9226,op9227,op9228,op9229,op9230,op9231,op9232,op9233,op9234,op9235,op9236,op9237,op9238,op9239,op9240,op9241,op9242,op9243,op9244,op9245,op9246,op9247,op9248,op9249,op9250,op9251,op9252,op9253,op9254,op9255,op9256,op9257,op9258,op9259,op9260,op9261,op9262,op9263,op9264,op9265,op9266,op9267,op9268,op9269,op9270,op9271,op9272,op9273,op9274,op9275,op9276,op9277,op9278,op9279]
def chunks : List Bytes := [bytes9216,bytes9217,bytes9218,bytes9219,bytes9220,bytes9221,bytes9222,bytes9223,bytes9224,bytes9225,bytes9226,bytes9227,bytes9228,bytes9229,bytes9230,bytes9231,bytes9232,bytes9233,bytes9234,bytes9235,bytes9236,bytes9237,bytes9238,bytes9239,bytes9240,bytes9241,bytes9242,bytes9243,bytes9244,bytes9245,bytes9246,bytes9247,bytes9248,bytes9249,bytes9250,bytes9251,bytes9252,bytes9253,bytes9254,bytes9255,bytes9256,bytes9257,bytes9258,bytes9259,bytes9260,bytes9261,bytes9262,bytes9263,bytes9264,bytes9265,bytes9266,bytes9267,bytes9268,bytes9269,bytes9270,bytes9271,bytes9272,bytes9273,bytes9274,bytes9275,bytes9276,bytes9277,bytes9278,bytes9279]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9334 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9216.1 (.cons _ _ _ _ _ checked9217.1 (.cons _ _ _ _ _ checked9218.1 (.cons _ _ _ _ _ checked9219.1 (.cons _ _ _ _ _ checked9220.1 (.cons _ _ _ _ _ checked9221.1 (.cons _ _ _ _ _ checked9222.1 (.cons _ _ _ _ _ checked9223.1 (.cons _ _ _ _ _ checked9224.1 (.cons _ _ _ _ _ checked9225.1 (.cons _ _ _ _ _ checked9226.1 (.cons _ _ _ _ _ checked9227.1 (.cons _ _ _ _ _ checked9228.1 (.cons _ _ _ _ _ checked9229.1 (.cons _ _ _ _ _ checked9230.1 (.cons _ _ _ _ _ checked9231.1 (.cons _ _ _ _ _ checked9232.1 (.cons _ _ _ _ _ checked9233.1 (.cons _ _ _ _ _ checked9234.1 (.cons _ _ _ _ _ checked9235.1 (.cons _ _ _ _ _ checked9236.1 (.cons _ _ _ _ _ checked9237.1 (.cons _ _ _ _ _ checked9238.1 (.cons _ _ _ _ _ checked9239.1 (.cons _ _ _ _ _ checked9240.1 (.cons _ _ _ _ _ checked9241.1 (.cons _ _ _ _ _ checked9242.1 (.cons _ _ _ _ _ checked9243.1 (.cons _ _ _ _ _ checked9244.1 (.cons _ _ _ _ _ checked9245.1 (.cons _ _ _ _ _ checked9246.1 (.cons _ _ _ _ _ checked9247.1 (.cons _ _ _ _ _ checked9248.1 (.cons _ _ _ _ _ checked9249.1 (.cons _ _ _ _ _ checked9250.1 (.cons _ _ _ _ _ checked9251.1 (.cons _ _ _ _ _ checked9252.1 (.cons _ _ _ _ _ checked9253.1 (.cons _ _ _ _ _ checked9254.1 (.cons _ _ _ _ _ checked9255.1 (.cons _ _ _ _ _ checked9256.1 (.cons _ _ _ _ _ checked9257.1 (.cons _ _ _ _ _ checked9258.1 (.cons _ _ _ _ _ checked9259.1 (.cons _ _ _ _ _ checked9260.1 (.cons _ _ _ _ _ checked9261.1 (.cons _ _ _ _ _ checked9262.1 (.cons _ _ _ _ _ checked9263.1 (.cons _ _ _ _ _ checked9264.1 (.cons _ _ _ _ _ checked9265.1 (.cons _ _ _ _ _ checked9266.1 (.cons _ _ _ _ _ checked9267.1 (.cons _ _ _ _ _ checked9268.1 (.cons _ _ _ _ _ checked9269.1 (.cons _ _ _ _ _ checked9270.1 (.cons _ _ _ _ _ checked9271.1 (.cons _ _ _ _ _ checked9272.1 (.cons _ _ _ _ _ checked9273.1 (.cons _ _ _ _ _ checked9274.1 (.cons _ _ _ _ _ checked9275.1 (.cons _ _ _ _ _ checked9276.1 (.cons _ _ _ _ _ checked9277.1 (.cons _ _ _ _ _ checked9278.1 (.cons _ _ _ _ _ checked9279.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9334 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3476 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9216.2,checked9217.2,checked9218.2,checked9219.2,checked9220.2,checked9221.2,checked9222.2,checked9223.2,checked9224.2,checked9225.2,checked9226.2,checked9227.2,checked9228.2,checked9229.2,checked9230.2,checked9231.2,checked9232.2,checked9233.2,checked9234.2,checked9235.2,checked9236.2,checked9237.2,checked9238.2,checked9239.2,checked9240.2,checked9241.2,checked9242.2,checked9243.2,checked9244.2,checked9245.2,checked9246.2,checked9247.2,checked9248.2,checked9249.2,checked9250.2,checked9251.2,checked9252.2,checked9253.2,checked9254.2,checked9255.2,checked9256.2,checked9257.2,checked9258.2,checked9259.2,checked9260.2,checked9261.2,checked9262.2,checked9263.2,checked9264.2,checked9265.2,checked9266.2,checked9267.2,checked9268.2,checked9269.2,checked9270.2,checked9271.2,checked9272.2,checked9273.2,checked9274.2,checked9275.2,checked9276.2,checked9277.2,checked9278.2,checked9279.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup144
