import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup115
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7360 : List WordIR.Op := [.rotr 6212 18]
def bytes7360 : Bytes := ("    let r00001d20: u32 = r00001844.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7360 : bytes7360=statementBytes 7456 (op7360.map lower) ∧ bytes7360.length=65 := by core033_kernel_decide
def op7361 : List WordIR.Op := [.bxor 7455 7456]
def bytes7361 : Bytes := ("    let r00001d21: u32 = r00001d1f ^ r00001d20;\n" : String).toByteArray.data.toList
theorem checked7361 : bytes7361=statementBytes 7457 (op7361.map lower) ∧ bytes7361.length=48 := by core033_kernel_decide
def op7362 : List WordIR.Op := [.shr 6212 3]
def bytes7362 : Bytes := ("    let r00001d22: u32 = r00001844 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7362 : bytes7362=statementBytes 7458 (op7362.map lower) ∧ bytes7362.length=54 := by core033_kernel_decide
def op7363 : List WordIR.Op := [.bxor 7457 7458]
def bytes7363 : Bytes := ("    let r00001d23: u32 = r00001d21 ^ r00001d22;\n" : String).toByteArray.data.toList
theorem checked7363 : bytes7363=statementBytes 7459 (op7363.map lower) ∧ bytes7363.length=48 := by core033_kernel_decide
def op7364 : List WordIR.Op := [.badd 7454 7459]
def bytes7364 : Bytes := ("    let r00001d24: u32 = r00001d1e.wrapping_add(r00001d23);\n" : String).toByteArray.data.toList
theorem checked7364 : bytes7364=statementBytes 7460 (op7364.map lower) ∧ bytes7364.length=60 := by core033_kernel_decide
def op7365 : List WordIR.Op := [.badd 7460 6206]
def bytes7365 : Bytes := ("    let r00001d25: u32 = r00001d24.wrapping_add(r0000183e);\n" : String).toByteArray.data.toList
theorem checked7365 : bytes7365=statementBytes 7461 (op7365.map lower) ∧ bytes7365.length=60 := by core033_kernel_decide
def op7366 : List WordIR.Op := [.rotr 6296 17]
def bytes7366 : Bytes := ("    let r00001d26: u32 = r00001898.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7366 : bytes7366=statementBytes 7462 (op7366.map lower) ∧ bytes7366.length=65 := by core033_kernel_decide
def op7367 : List WordIR.Op := [.rotr 6296 19]
def bytes7367 : Bytes := ("    let r00001d27: u32 = r00001898.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7367 : bytes7367=statementBytes 7463 (op7367.map lower) ∧ bytes7367.length=65 := by core033_kernel_decide
def op7368 : List WordIR.Op := [.bxor 7462 7463]
def bytes7368 : Bytes := ("    let r00001d28: u32 = r00001d26 ^ r00001d27;\n" : String).toByteArray.data.toList
theorem checked7368 : bytes7368=statementBytes 7464 (op7368.map lower) ∧ bytes7368.length=48 := by core033_kernel_decide
def op7369 : List WordIR.Op := [.shr 6296 10]
def bytes7369 : Bytes := ("    let r00001d29: u32 = r00001898 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7369 : bytes7369=statementBytes 7465 (op7369.map lower) ∧ bytes7369.length=54 := by core033_kernel_decide
def op7370 : List WordIR.Op := [.bxor 7464 7465]
def bytes7370 : Bytes := ("    let r00001d2a: u32 = r00001d28 ^ r00001d29;\n" : String).toByteArray.data.toList
theorem checked7370 : bytes7370=statementBytes 7466 (op7370.map lower) ∧ bytes7370.length=48 := by core033_kernel_decide
def op7371 : List WordIR.Op := [.badd 7466 6266]
def bytes7371 : Bytes := ("    let r00001d2b: u32 = r00001d2a.wrapping_add(r0000187a);\n" : String).toByteArray.data.toList
theorem checked7371 : bytes7371=statementBytes 7467 (op7371.map lower) ∧ bytes7371.length=60 := by core033_kernel_decide
def op7372 : List WordIR.Op := [.rotr 6218 7]
def bytes7372 : Bytes := ("    let r00001d2c: u32 = r0000184a.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7372 : bytes7372=statementBytes 7468 (op7372.map lower) ∧ bytes7372.length=65 := by core033_kernel_decide
def op7373 : List WordIR.Op := [.rotr 6218 18]
def bytes7373 : Bytes := ("    let r00001d2d: u32 = r0000184a.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7373 : bytes7373=statementBytes 7469 (op7373.map lower) ∧ bytes7373.length=65 := by core033_kernel_decide
def op7374 : List WordIR.Op := [.bxor 7468 7469]
def bytes7374 : Bytes := ("    let r00001d2e: u32 = r00001d2c ^ r00001d2d;\n" : String).toByteArray.data.toList
theorem checked7374 : bytes7374=statementBytes 7470 (op7374.map lower) ∧ bytes7374.length=48 := by core033_kernel_decide
def op7375 : List WordIR.Op := [.shr 6218 3]
def bytes7375 : Bytes := ("    let r00001d2f: u32 = r0000184a >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7375 : bytes7375=statementBytes 7471 (op7375.map lower) ∧ bytes7375.length=54 := by core033_kernel_decide
def op7376 : List WordIR.Op := [.bxor 7470 7471]
def bytes7376 : Bytes := ("    let r00001d30: u32 = r00001d2e ^ r00001d2f;\n" : String).toByteArray.data.toList
theorem checked7376 : bytes7376=statementBytes 7472 (op7376.map lower) ∧ bytes7376.length=48 := by core033_kernel_decide
def op7377 : List WordIR.Op := [.badd 7467 7472]
def bytes7377 : Bytes := ("    let r00001d31: u32 = r00001d2b.wrapping_add(r00001d30);\n" : String).toByteArray.data.toList
theorem checked7377 : bytes7377=statementBytes 7473 (op7377.map lower) ∧ bytes7377.length=60 := by core033_kernel_decide
def op7378 : List WordIR.Op := [.badd 7473 6212]
def bytes7378 : Bytes := ("    let r00001d32: u32 = r00001d31.wrapping_add(r00001844);\n" : String).toByteArray.data.toList
theorem checked7378 : bytes7378=statementBytes 7474 (op7378.map lower) ∧ bytes7378.length=60 := by core033_kernel_decide
def op7379 : List WordIR.Op := [.rotr 7461 17]
def bytes7379 : Bytes := ("    let r00001d33: u32 = r00001d25.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7379 : bytes7379=statementBytes 7475 (op7379.map lower) ∧ bytes7379.length=65 := by core033_kernel_decide
def op7380 : List WordIR.Op := [.rotr 7461 19]
def bytes7380 : Bytes := ("    let r00001d34: u32 = r00001d25.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7380 : bytes7380=statementBytes 7476 (op7380.map lower) ∧ bytes7380.length=65 := by core033_kernel_decide
def op7381 : List WordIR.Op := [.bxor 7475 7476]
def bytes7381 : Bytes := ("    let r00001d35: u32 = r00001d33 ^ r00001d34;\n" : String).toByteArray.data.toList
theorem checked7381 : bytes7381=statementBytes 7477 (op7381.map lower) ∧ bytes7381.length=48 := by core033_kernel_decide
def op7382 : List WordIR.Op := [.shr 7461 10]
def bytes7382 : Bytes := ("    let r00001d36: u32 = r00001d25 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7382 : bytes7382=statementBytes 7478 (op7382.map lower) ∧ bytes7382.length=54 := by core033_kernel_decide
def op7383 : List WordIR.Op := [.bxor 7477 7478]
def bytes7383 : Bytes := ("    let r00001d37: u32 = r00001d35 ^ r00001d36;\n" : String).toByteArray.data.toList
theorem checked7383 : bytes7383=statementBytes 7479 (op7383.map lower) ∧ bytes7383.length=48 := by core033_kernel_decide
def op7384 : List WordIR.Op := [.badd 7479 6272]
def bytes7384 : Bytes := ("    let r00001d38: u32 = r00001d37.wrapping_add(r00001880);\n" : String).toByteArray.data.toList
theorem checked7384 : bytes7384=statementBytes 7480 (op7384.map lower) ∧ bytes7384.length=60 := by core033_kernel_decide
def op7385 : List WordIR.Op := [.rotr 6224 7]
def bytes7385 : Bytes := ("    let r00001d39: u32 = r00001850.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7385 : bytes7385=statementBytes 7481 (op7385.map lower) ∧ bytes7385.length=65 := by core033_kernel_decide
def op7386 : List WordIR.Op := [.rotr 6224 18]
def bytes7386 : Bytes := ("    let r00001d3a: u32 = r00001850.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7386 : bytes7386=statementBytes 7482 (op7386.map lower) ∧ bytes7386.length=65 := by core033_kernel_decide
def op7387 : List WordIR.Op := [.bxor 7481 7482]
def bytes7387 : Bytes := ("    let r00001d3b: u32 = r00001d39 ^ r00001d3a;\n" : String).toByteArray.data.toList
theorem checked7387 : bytes7387=statementBytes 7483 (op7387.map lower) ∧ bytes7387.length=48 := by core033_kernel_decide
def op7388 : List WordIR.Op := [.shr 6224 3]
def bytes7388 : Bytes := ("    let r00001d3c: u32 = r00001850 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7388 : bytes7388=statementBytes 7484 (op7388.map lower) ∧ bytes7388.length=54 := by core033_kernel_decide
def op7389 : List WordIR.Op := [.bxor 7483 7484]
def bytes7389 : Bytes := ("    let r00001d3d: u32 = r00001d3b ^ r00001d3c;\n" : String).toByteArray.data.toList
theorem checked7389 : bytes7389=statementBytes 7485 (op7389.map lower) ∧ bytes7389.length=48 := by core033_kernel_decide
def op7390 : List WordIR.Op := [.badd 7480 7485]
def bytes7390 : Bytes := ("    let r00001d3e: u32 = r00001d38.wrapping_add(r00001d3d);\n" : String).toByteArray.data.toList
theorem checked7390 : bytes7390=statementBytes 7486 (op7390.map lower) ∧ bytes7390.length=60 := by core033_kernel_decide
def op7391 : List WordIR.Op := [.badd 7486 6218]
def bytes7391 : Bytes := ("    let r00001d3f: u32 = r00001d3e.wrapping_add(r0000184a);\n" : String).toByteArray.data.toList
theorem checked7391 : bytes7391=statementBytes 7487 (op7391.map lower) ∧ bytes7391.length=60 := by core033_kernel_decide
def op7392 : List WordIR.Op := [.rotr 7474 17]
def bytes7392 : Bytes := ("    let r00001d40: u32 = r00001d32.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7392 : bytes7392=statementBytes 7488 (op7392.map lower) ∧ bytes7392.length=65 := by core033_kernel_decide
def op7393 : List WordIR.Op := [.rotr 7474 19]
def bytes7393 : Bytes := ("    let r00001d41: u32 = r00001d32.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7393 : bytes7393=statementBytes 7489 (op7393.map lower) ∧ bytes7393.length=65 := by core033_kernel_decide
def op7394 : List WordIR.Op := [.bxor 7488 7489]
def bytes7394 : Bytes := ("    let r00001d42: u32 = r00001d40 ^ r00001d41;\n" : String).toByteArray.data.toList
theorem checked7394 : bytes7394=statementBytes 7490 (op7394.map lower) ∧ bytes7394.length=48 := by core033_kernel_decide
def op7395 : List WordIR.Op := [.shr 7474 10]
def bytes7395 : Bytes := ("    let r00001d43: u32 = r00001d32 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7395 : bytes7395=statementBytes 7491 (op7395.map lower) ∧ bytes7395.length=54 := by core033_kernel_decide
def op7396 : List WordIR.Op := [.bxor 7490 7491]
def bytes7396 : Bytes := ("    let r00001d44: u32 = r00001d42 ^ r00001d43;\n" : String).toByteArray.data.toList
theorem checked7396 : bytes7396=statementBytes 7492 (op7396.map lower) ∧ bytes7396.length=48 := by core033_kernel_decide
def op7397 : List WordIR.Op := [.badd 7492 6278]
def bytes7397 : Bytes := ("    let r00001d45: u32 = r00001d44.wrapping_add(r00001886);\n" : String).toByteArray.data.toList
theorem checked7397 : bytes7397=statementBytes 7493 (op7397.map lower) ∧ bytes7397.length=60 := by core033_kernel_decide
def op7398 : List WordIR.Op := [.rotr 6230 7]
def bytes7398 : Bytes := ("    let r00001d46: u32 = r00001856.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7398 : bytes7398=statementBytes 7494 (op7398.map lower) ∧ bytes7398.length=65 := by core033_kernel_decide
def op7399 : List WordIR.Op := [.rotr 6230 18]
def bytes7399 : Bytes := ("    let r00001d47: u32 = r00001856.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7399 : bytes7399=statementBytes 7495 (op7399.map lower) ∧ bytes7399.length=65 := by core033_kernel_decide
def op7400 : List WordIR.Op := [.bxor 7494 7495]
def bytes7400 : Bytes := ("    let r00001d48: u32 = r00001d46 ^ r00001d47;\n" : String).toByteArray.data.toList
theorem checked7400 : bytes7400=statementBytes 7496 (op7400.map lower) ∧ bytes7400.length=48 := by core033_kernel_decide
def op7401 : List WordIR.Op := [.shr 6230 3]
def bytes7401 : Bytes := ("    let r00001d49: u32 = r00001856 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7401 : bytes7401=statementBytes 7497 (op7401.map lower) ∧ bytes7401.length=54 := by core033_kernel_decide
def op7402 : List WordIR.Op := [.bxor 7496 7497]
def bytes7402 : Bytes := ("    let r00001d4a: u32 = r00001d48 ^ r00001d49;\n" : String).toByteArray.data.toList
theorem checked7402 : bytes7402=statementBytes 7498 (op7402.map lower) ∧ bytes7402.length=48 := by core033_kernel_decide
def op7403 : List WordIR.Op := [.badd 7493 7498]
def bytes7403 : Bytes := ("    let r00001d4b: u32 = r00001d45.wrapping_add(r00001d4a);\n" : String).toByteArray.data.toList
theorem checked7403 : bytes7403=statementBytes 7499 (op7403.map lower) ∧ bytes7403.length=60 := by core033_kernel_decide
def op7404 : List WordIR.Op := [.badd 7499 6224]
def bytes7404 : Bytes := ("    let r00001d4c: u32 = r00001d4b.wrapping_add(r00001850);\n" : String).toByteArray.data.toList
theorem checked7404 : bytes7404=statementBytes 7500 (op7404.map lower) ∧ bytes7404.length=60 := by core033_kernel_decide
def op7405 : List WordIR.Op := [.rotr 7487 17]
def bytes7405 : Bytes := ("    let r00001d4d: u32 = r00001d3f.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7405 : bytes7405=statementBytes 7501 (op7405.map lower) ∧ bytes7405.length=65 := by core033_kernel_decide
def op7406 : List WordIR.Op := [.rotr 7487 19]
def bytes7406 : Bytes := ("    let r00001d4e: u32 = r00001d3f.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7406 : bytes7406=statementBytes 7502 (op7406.map lower) ∧ bytes7406.length=65 := by core033_kernel_decide
def op7407 : List WordIR.Op := [.bxor 7501 7502]
def bytes7407 : Bytes := ("    let r00001d4f: u32 = r00001d4d ^ r00001d4e;\n" : String).toByteArray.data.toList
theorem checked7407 : bytes7407=statementBytes 7503 (op7407.map lower) ∧ bytes7407.length=48 := by core033_kernel_decide
def op7408 : List WordIR.Op := [.shr 7487 10]
def bytes7408 : Bytes := ("    let r00001d50: u32 = r00001d3f >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7408 : bytes7408=statementBytes 7504 (op7408.map lower) ∧ bytes7408.length=54 := by core033_kernel_decide
def op7409 : List WordIR.Op := [.bxor 7503 7504]
def bytes7409 : Bytes := ("    let r00001d51: u32 = r00001d4f ^ r00001d50;\n" : String).toByteArray.data.toList
theorem checked7409 : bytes7409=statementBytes 7505 (op7409.map lower) ∧ bytes7409.length=48 := by core033_kernel_decide
def op7410 : List WordIR.Op := [.badd 7505 6284]
def bytes7410 : Bytes := ("    let r00001d52: u32 = r00001d51.wrapping_add(r0000188c);\n" : String).toByteArray.data.toList
theorem checked7410 : bytes7410=statementBytes 7506 (op7410.map lower) ∧ bytes7410.length=60 := by core033_kernel_decide
def op7411 : List WordIR.Op := [.rotr 6236 7]
def bytes7411 : Bytes := ("    let r00001d53: u32 = r0000185c.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7411 : bytes7411=statementBytes 7507 (op7411.map lower) ∧ bytes7411.length=65 := by core033_kernel_decide
def op7412 : List WordIR.Op := [.rotr 6236 18]
def bytes7412 : Bytes := ("    let r00001d54: u32 = r0000185c.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7412 : bytes7412=statementBytes 7508 (op7412.map lower) ∧ bytes7412.length=65 := by core033_kernel_decide
def op7413 : List WordIR.Op := [.bxor 7507 7508]
def bytes7413 : Bytes := ("    let r00001d55: u32 = r00001d53 ^ r00001d54;\n" : String).toByteArray.data.toList
theorem checked7413 : bytes7413=statementBytes 7509 (op7413.map lower) ∧ bytes7413.length=48 := by core033_kernel_decide
def op7414 : List WordIR.Op := [.shr 6236 3]
def bytes7414 : Bytes := ("    let r00001d56: u32 = r0000185c >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7414 : bytes7414=statementBytes 7510 (op7414.map lower) ∧ bytes7414.length=54 := by core033_kernel_decide
def op7415 : List WordIR.Op := [.bxor 7509 7510]
def bytes7415 : Bytes := ("    let r00001d57: u32 = r00001d55 ^ r00001d56;\n" : String).toByteArray.data.toList
theorem checked7415 : bytes7415=statementBytes 7511 (op7415.map lower) ∧ bytes7415.length=48 := by core033_kernel_decide
def op7416 : List WordIR.Op := [.badd 7506 7511]
def bytes7416 : Bytes := ("    let r00001d58: u32 = r00001d52.wrapping_add(r00001d57);\n" : String).toByteArray.data.toList
theorem checked7416 : bytes7416=statementBytes 7512 (op7416.map lower) ∧ bytes7416.length=60 := by core033_kernel_decide
def op7417 : List WordIR.Op := [.badd 7512 6230]
def bytes7417 : Bytes := ("    let r00001d59: u32 = r00001d58.wrapping_add(r00001856);\n" : String).toByteArray.data.toList
theorem checked7417 : bytes7417=statementBytes 7513 (op7417.map lower) ∧ bytes7417.length=60 := by core033_kernel_decide
def op7418 : List WordIR.Op := [.rotr 7500 17]
def bytes7418 : Bytes := ("    let r00001d5a: u32 = r00001d4c.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7418 : bytes7418=statementBytes 7514 (op7418.map lower) ∧ bytes7418.length=65 := by core033_kernel_decide
def op7419 : List WordIR.Op := [.rotr 7500 19]
def bytes7419 : Bytes := ("    let r00001d5b: u32 = r00001d4c.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7419 : bytes7419=statementBytes 7515 (op7419.map lower) ∧ bytes7419.length=65 := by core033_kernel_decide
def op7420 : List WordIR.Op := [.bxor 7514 7515]
def bytes7420 : Bytes := ("    let r00001d5c: u32 = r00001d5a ^ r00001d5b;\n" : String).toByteArray.data.toList
theorem checked7420 : bytes7420=statementBytes 7516 (op7420.map lower) ∧ bytes7420.length=48 := by core033_kernel_decide
def op7421 : List WordIR.Op := [.shr 7500 10]
def bytes7421 : Bytes := ("    let r00001d5d: u32 = r00001d4c >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7421 : bytes7421=statementBytes 7517 (op7421.map lower) ∧ bytes7421.length=54 := by core033_kernel_decide
def op7422 : List WordIR.Op := [.bxor 7516 7517]
def bytes7422 : Bytes := ("    let r00001d5e: u32 = r00001d5c ^ r00001d5d;\n" : String).toByteArray.data.toList
theorem checked7422 : bytes7422=statementBytes 7518 (op7422.map lower) ∧ bytes7422.length=48 := by core033_kernel_decide
def op7423 : List WordIR.Op := [.badd 7518 6290]
def bytes7423 : Bytes := ("    let r00001d5f: u32 = r00001d5e.wrapping_add(r00001892);\n" : String).toByteArray.data.toList
theorem checked7423 : bytes7423=statementBytes 7519 (op7423.map lower) ∧ bytes7423.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7360,op7361,op7362,op7363,op7364,op7365,op7366,op7367,op7368,op7369,op7370,op7371,op7372,op7373,op7374,op7375,op7376,op7377,op7378,op7379,op7380,op7381,op7382,op7383,op7384,op7385,op7386,op7387,op7388,op7389,op7390,op7391,op7392,op7393,op7394,op7395,op7396,op7397,op7398,op7399,op7400,op7401,op7402,op7403,op7404,op7405,op7406,op7407,op7408,op7409,op7410,op7411,op7412,op7413,op7414,op7415,op7416,op7417,op7418,op7419,op7420,op7421,op7422,op7423]
def chunks : List Bytes := [bytes7360,bytes7361,bytes7362,bytes7363,bytes7364,bytes7365,bytes7366,bytes7367,bytes7368,bytes7369,bytes7370,bytes7371,bytes7372,bytes7373,bytes7374,bytes7375,bytes7376,bytes7377,bytes7378,bytes7379,bytes7380,bytes7381,bytes7382,bytes7383,bytes7384,bytes7385,bytes7386,bytes7387,bytes7388,bytes7389,bytes7390,bytes7391,bytes7392,bytes7393,bytes7394,bytes7395,bytes7396,bytes7397,bytes7398,bytes7399,bytes7400,bytes7401,bytes7402,bytes7403,bytes7404,bytes7405,bytes7406,bytes7407,bytes7408,bytes7409,bytes7410,bytes7411,bytes7412,bytes7413,bytes7414,bytes7415,bytes7416,bytes7417,bytes7418,bytes7419,bytes7420,bytes7421,bytes7422,bytes7423]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7456 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7360.1 (.cons _ _ _ _ _ checked7361.1 (.cons _ _ _ _ _ checked7362.1 (.cons _ _ _ _ _ checked7363.1 (.cons _ _ _ _ _ checked7364.1 (.cons _ _ _ _ _ checked7365.1 (.cons _ _ _ _ _ checked7366.1 (.cons _ _ _ _ _ checked7367.1 (.cons _ _ _ _ _ checked7368.1 (.cons _ _ _ _ _ checked7369.1 (.cons _ _ _ _ _ checked7370.1 (.cons _ _ _ _ _ checked7371.1 (.cons _ _ _ _ _ checked7372.1 (.cons _ _ _ _ _ checked7373.1 (.cons _ _ _ _ _ checked7374.1 (.cons _ _ _ _ _ checked7375.1 (.cons _ _ _ _ _ checked7376.1 (.cons _ _ _ _ _ checked7377.1 (.cons _ _ _ _ _ checked7378.1 (.cons _ _ _ _ _ checked7379.1 (.cons _ _ _ _ _ checked7380.1 (.cons _ _ _ _ _ checked7381.1 (.cons _ _ _ _ _ checked7382.1 (.cons _ _ _ _ _ checked7383.1 (.cons _ _ _ _ _ checked7384.1 (.cons _ _ _ _ _ checked7385.1 (.cons _ _ _ _ _ checked7386.1 (.cons _ _ _ _ _ checked7387.1 (.cons _ _ _ _ _ checked7388.1 (.cons _ _ _ _ _ checked7389.1 (.cons _ _ _ _ _ checked7390.1 (.cons _ _ _ _ _ checked7391.1 (.cons _ _ _ _ _ checked7392.1 (.cons _ _ _ _ _ checked7393.1 (.cons _ _ _ _ _ checked7394.1 (.cons _ _ _ _ _ checked7395.1 (.cons _ _ _ _ _ checked7396.1 (.cons _ _ _ _ _ checked7397.1 (.cons _ _ _ _ _ checked7398.1 (.cons _ _ _ _ _ checked7399.1 (.cons _ _ _ _ _ checked7400.1 (.cons _ _ _ _ _ checked7401.1 (.cons _ _ _ _ _ checked7402.1 (.cons _ _ _ _ _ checked7403.1 (.cons _ _ _ _ _ checked7404.1 (.cons _ _ _ _ _ checked7405.1 (.cons _ _ _ _ _ checked7406.1 (.cons _ _ _ _ _ checked7407.1 (.cons _ _ _ _ _ checked7408.1 (.cons _ _ _ _ _ checked7409.1 (.cons _ _ _ _ _ checked7410.1 (.cons _ _ _ _ _ checked7411.1 (.cons _ _ _ _ _ checked7412.1 (.cons _ _ _ _ _ checked7413.1 (.cons _ _ _ _ _ checked7414.1 (.cons _ _ _ _ _ checked7415.1 (.cons _ _ _ _ _ checked7416.1 (.cons _ _ _ _ _ checked7417.1 (.cons _ _ _ _ _ checked7418.1 (.cons _ _ _ _ _ checked7419.1 (.cons _ _ _ _ _ checked7420.1 (.cons _ _ _ _ _ checked7421.1 (.cons _ _ _ _ _ checked7422.1 (.cons _ _ _ _ _ checked7423.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7456 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3635 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7360.2,checked7361.2,checked7362.2,checked7363.2,checked7364.2,checked7365.2,checked7366.2,checked7367.2,checked7368.2,checked7369.2,checked7370.2,checked7371.2,checked7372.2,checked7373.2,checked7374.2,checked7375.2,checked7376.2,checked7377.2,checked7378.2,checked7379.2,checked7380.2,checked7381.2,checked7382.2,checked7383.2,checked7384.2,checked7385.2,checked7386.2,checked7387.2,checked7388.2,checked7389.2,checked7390.2,checked7391.2,checked7392.2,checked7393.2,checked7394.2,checked7395.2,checked7396.2,checked7397.2,checked7398.2,checked7399.2,checked7400.2,checked7401.2,checked7402.2,checked7403.2,checked7404.2,checked7405.2,checked7406.2,checked7407.2,checked7408.2,checked7409.2,checked7410.2,checked7411.2,checked7412.2,checked7413.2,checked7414.2,checked7415.2,checked7416.2,checked7417.2,checked7418.2,checked7419.2,checked7420.2,checked7421.2,checked7422.2,checked7423.2]
  decide
end ArtifactPairedPathRoundGroup115
