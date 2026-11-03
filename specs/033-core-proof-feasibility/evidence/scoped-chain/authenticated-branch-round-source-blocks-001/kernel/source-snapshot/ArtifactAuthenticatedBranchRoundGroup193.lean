import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup193
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12352 : List WordIR.Op := [.bxor 693 12469]
def bytes12352 : Bytes := ("    let r000030b6: u32 = r000002b5 ^ r000030b5;\n" : String).toByteArray.data.toList
theorem checked12352 : bytes12352=statementBytes 12470 (op12352.map lower) ∧ bytes12352.length=48 := by core033_kernel_decide
def op12353 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12353 : Bytes := ("    let r000030b7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12353 : bytes12353=statementBytes 12471 (op12353.map lower) ∧ bytes12353.length=41 := by core033_kernel_decide
def op12354 : List WordIR.Op := [.bnot 12471]
def bytes12354 : Bytes := ("    let r000030b8: u32 = !r000030b7;\n" : String).toByteArray.data.toList
theorem checked12354 : bytes12354=statementBytes 12472 (op12354.map lower) ∧ bytes12354.length=37 := by core033_kernel_decide
def op12355 : List WordIR.Op := [.band 12470 12472]
def bytes12355 : Bytes := ("    let r000030b9: u32 = r000030b6 & r000030b8;\n" : String).toByteArray.data.toList
theorem checked12355 : bytes12355=statementBytes 12473 (op12355.map lower) ∧ bytes12355.length=48 := by core033_kernel_decide
def op12356 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12356 : Bytes := ("    let r000030ba: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12356 : bytes12356=statementBytes 12474 (op12356.map lower) ∧ bytes12356.length=41 := by core033_kernel_decide
def op12357 : List WordIR.Op := [.bxor 693 12474]
def bytes12357 : Bytes := ("    let r000030bb: u32 = r000002b5 ^ r000030ba;\n" : String).toByteArray.data.toList
theorem checked12357 : bytes12357=statementBytes 12475 (op12357.map lower) ∧ bytes12357.length=48 := by core033_kernel_decide
def op12358 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12358 : Bytes := ("    let r000030bc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12358 : bytes12358=statementBytes 12476 (op12358.map lower) ∧ bytes12358.length=41 := by core033_kernel_decide
def op12359 : List WordIR.Op := [.bnot 12476]
def bytes12359 : Bytes := ("    let r000030bd: u32 = !r000030bc;\n" : String).toByteArray.data.toList
theorem checked12359 : bytes12359=statementBytes 12477 (op12359.map lower) ∧ bytes12359.length=37 := by core033_kernel_decide
def op12360 : List WordIR.Op := [.bxor 12475 12477]
def bytes12360 : Bytes := ("    let r000030be: u32 = r000030bb ^ r000030bd;\n" : String).toByteArray.data.toList
theorem checked12360 : bytes12360=statementBytes 12478 (op12360.map lower) ∧ bytes12360.length=48 := by core033_kernel_decide
def op12361 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12361 : Bytes := ("    let r000030bf: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12361 : bytes12361=statementBytes 12479 (op12361.map lower) ∧ bytes12361.length=41 := by core033_kernel_decide
def op12362 : List WordIR.Op := [.bxor 693 12479]
def bytes12362 : Bytes := ("    let r000030c0: u32 = r000002b5 ^ r000030bf;\n" : String).toByteArray.data.toList
theorem checked12362 : bytes12362=statementBytes 12480 (op12362.map lower) ∧ bytes12362.length=48 := by core033_kernel_decide
def op12363 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12363 : Bytes := ("    let r000030c1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12363 : bytes12363=statementBytes 12481 (op12363.map lower) ∧ bytes12363.length=41 := by core033_kernel_decide
def op12364 : List WordIR.Op := [.bnot 12481]
def bytes12364 : Bytes := ("    let r000030c2: u32 = !r000030c1;\n" : String).toByteArray.data.toList
theorem checked12364 : bytes12364=statementBytes 12482 (op12364.map lower) ∧ bytes12364.length=37 := by core033_kernel_decide
def op12365 : List WordIR.Op := [.badd 12480 12482]
def bytes12365 : Bytes := ("    let r000030c3: u32 = r000030c0.wrapping_add(r000030c2);\n" : String).toByteArray.data.toList
theorem checked12365 : bytes12365=statementBytes 12483 (op12365.map lower) ∧ bytes12365.length=60 := by core033_kernel_decide
def op12366 : List WordIR.Op := [.bnot 12483]
def bytes12366 : Bytes := ("    let r000030c4: u32 = !r000030c3;\n" : String).toByteArray.data.toList
theorem checked12366 : bytes12366=statementBytes 12484 (op12366.map lower) ∧ bytes12366.length=37 := by core033_kernel_decide
def op12367 : List WordIR.Op := [.band 12478 12484]
def bytes12367 : Bytes := ("    let r000030c5: u32 = r000030be & r000030c4;\n" : String).toByteArray.data.toList
theorem checked12367 : bytes12367=statementBytes 12485 (op12367.map lower) ∧ bytes12367.length=48 := by core033_kernel_decide
def op12368 : List WordIR.Op := [.bxor 12473 12485]
def bytes12368 : Bytes := ("    let r000030c6: u32 = r000030b9 ^ r000030c5;\n" : String).toByteArray.data.toList
theorem checked12368 : bytes12368=statementBytes 12486 (op12368.map lower) ∧ bytes12368.length=48 := by core033_kernel_decide
def op12369 : List WordIR.Op := [.shr 12486 31]
def bytes12369 : Bytes := ("    let r000030c7: u32 = r000030c6 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12369 : bytes12369=statementBytes 12487 (op12369.map lower) ∧ bytes12369.length=54 := by core033_kernel_decide
def op12370 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12370 : Bytes := ("    let r000030c8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12370 : bytes12370=statementBytes 12488 (op12370.map lower) ∧ bytes12370.length=41 := by core033_kernel_decide
def op12371 : List WordIR.Op := [.bxor 12487 12488]
def bytes12371 : Bytes := ("    let r000030c9: u32 = r000030c7 ^ r000030c8;\n" : String).toByteArray.data.toList
theorem checked12371 : bytes12371=statementBytes 12489 (op12371.map lower) ∧ bytes12371.length=48 := by core033_kernel_decide
def op12372 : List WordIR.Op := [.bnot 12489]
def bytes12372 : Bytes := ("    let r000030ca: u32 = !r000030c9;\n" : String).toByteArray.data.toList
theorem checked12372 : bytes12372=statementBytes 12490 (op12372.map lower) ∧ bytes12372.length=37 := by core033_kernel_decide
def op12373 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12373 : Bytes := ("    let r000030cb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12373 : bytes12373=statementBytes 12491 (op12373.map lower) ∧ bytes12373.length=41 := by core033_kernel_decide
def op12374 : List WordIR.Op := [.badd 12490 12491]
def bytes12374 : Bytes := ("    let r000030cc: u32 = r000030ca.wrapping_add(r000030cb);\n" : String).toByteArray.data.toList
theorem checked12374 : bytes12374=statementBytes 12492 (op12374.map lower) ∧ bytes12374.length=60 := by core033_kernel_decide
def op12375 : List WordIR.Op := [.band 12492 10840]
def bytes12375 : Bytes := ("    let r000030cd: u32 = r000030cc & r00002a58;\n" : String).toByteArray.data.toList
theorem checked12375 : bytes12375=statementBytes 12493 (op12375.map lower) ∧ bytes12375.length=48 := by core033_kernel_decide
def op12376 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12376 : Bytes := ("    let r000030ce: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12376 : bytes12376=statementBytes 12494 (op12376.map lower) ∧ bytes12376.length=41 := by core033_kernel_decide
def op12377 : List WordIR.Op := [.bxor 693 12494]
def bytes12377 : Bytes := ("    let r000030cf: u32 = r000002b5 ^ r000030ce;\n" : String).toByteArray.data.toList
theorem checked12377 : bytes12377=statementBytes 12495 (op12377.map lower) ∧ bytes12377.length=48 := by core033_kernel_decide
def op12378 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12378 : Bytes := ("    let r000030d0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12378 : bytes12378=statementBytes 12496 (op12378.map lower) ∧ bytes12378.length=41 := by core033_kernel_decide
def op12379 : List WordIR.Op := [.bnot 12496]
def bytes12379 : Bytes := ("    let r000030d1: u32 = !r000030d0;\n" : String).toByteArray.data.toList
theorem checked12379 : bytes12379=statementBytes 12497 (op12379.map lower) ∧ bytes12379.length=37 := by core033_kernel_decide
def op12380 : List WordIR.Op := [.band 12495 12497]
def bytes12380 : Bytes := ("    let r000030d2: u32 = r000030cf & r000030d1;\n" : String).toByteArray.data.toList
theorem checked12380 : bytes12380=statementBytes 12498 (op12380.map lower) ∧ bytes12380.length=48 := by core033_kernel_decide
def op12381 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12381 : Bytes := ("    let r000030d3: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12381 : bytes12381=statementBytes 12499 (op12381.map lower) ∧ bytes12381.length=41 := by core033_kernel_decide
def op12382 : List WordIR.Op := [.bxor 693 12499]
def bytes12382 : Bytes := ("    let r000030d4: u32 = r000002b5 ^ r000030d3;\n" : String).toByteArray.data.toList
theorem checked12382 : bytes12382=statementBytes 12500 (op12382.map lower) ∧ bytes12382.length=48 := by core033_kernel_decide
def op12383 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12383 : Bytes := ("    let r000030d5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12383 : bytes12383=statementBytes 12501 (op12383.map lower) ∧ bytes12383.length=41 := by core033_kernel_decide
def op12384 : List WordIR.Op := [.bnot 12501]
def bytes12384 : Bytes := ("    let r000030d6: u32 = !r000030d5;\n" : String).toByteArray.data.toList
theorem checked12384 : bytes12384=statementBytes 12502 (op12384.map lower) ∧ bytes12384.length=37 := by core033_kernel_decide
def op12385 : List WordIR.Op := [.bxor 12500 12502]
def bytes12385 : Bytes := ("    let r000030d7: u32 = r000030d4 ^ r000030d6;\n" : String).toByteArray.data.toList
theorem checked12385 : bytes12385=statementBytes 12503 (op12385.map lower) ∧ bytes12385.length=48 := by core033_kernel_decide
def op12386 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12386 : Bytes := ("    let r000030d8: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12386 : bytes12386=statementBytes 12504 (op12386.map lower) ∧ bytes12386.length=41 := by core033_kernel_decide
def op12387 : List WordIR.Op := [.bxor 693 12504]
def bytes12387 : Bytes := ("    let r000030d9: u32 = r000002b5 ^ r000030d8;\n" : String).toByteArray.data.toList
theorem checked12387 : bytes12387=statementBytes 12505 (op12387.map lower) ∧ bytes12387.length=48 := by core033_kernel_decide
def op12388 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12388 : Bytes := ("    let r000030da: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12388 : bytes12388=statementBytes 12506 (op12388.map lower) ∧ bytes12388.length=41 := by core033_kernel_decide
def op12389 : List WordIR.Op := [.bnot 12506]
def bytes12389 : Bytes := ("    let r000030db: u32 = !r000030da;\n" : String).toByteArray.data.toList
theorem checked12389 : bytes12389=statementBytes 12507 (op12389.map lower) ∧ bytes12389.length=37 := by core033_kernel_decide
def op12390 : List WordIR.Op := [.badd 12505 12507]
def bytes12390 : Bytes := ("    let r000030dc: u32 = r000030d9.wrapping_add(r000030db);\n" : String).toByteArray.data.toList
theorem checked12390 : bytes12390=statementBytes 12508 (op12390.map lower) ∧ bytes12390.length=60 := by core033_kernel_decide
def op12391 : List WordIR.Op := [.bnot 12508]
def bytes12391 : Bytes := ("    let r000030dd: u32 = !r000030dc;\n" : String).toByteArray.data.toList
theorem checked12391 : bytes12391=statementBytes 12509 (op12391.map lower) ∧ bytes12391.length=37 := by core033_kernel_decide
def op12392 : List WordIR.Op := [.band 12503 12509]
def bytes12392 : Bytes := ("    let r000030de: u32 = r000030d7 & r000030dd;\n" : String).toByteArray.data.toList
theorem checked12392 : bytes12392=statementBytes 12510 (op12392.map lower) ∧ bytes12392.length=48 := by core033_kernel_decide
def op12393 : List WordIR.Op := [.bxor 12498 12510]
def bytes12393 : Bytes := ("    let r000030df: u32 = r000030d2 ^ r000030de;\n" : String).toByteArray.data.toList
theorem checked12393 : bytes12393=statementBytes 12511 (op12393.map lower) ∧ bytes12393.length=48 := by core033_kernel_decide
def op12394 : List WordIR.Op := [.shr 12511 31]
def bytes12394 : Bytes := ("    let r000030e0: u32 = r000030df >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12394 : bytes12394=statementBytes 12512 (op12394.map lower) ∧ bytes12394.length=54 := by core033_kernel_decide
def op12395 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12395 : Bytes := ("    let r000030e1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12395 : bytes12395=statementBytes 12513 (op12395.map lower) ∧ bytes12395.length=41 := by core033_kernel_decide
def op12396 : List WordIR.Op := [.bxor 12512 12513]
def bytes12396 : Bytes := ("    let r000030e2: u32 = r000030e0 ^ r000030e1;\n" : String).toByteArray.data.toList
theorem checked12396 : bytes12396=statementBytes 12514 (op12396.map lower) ∧ bytes12396.length=48 := by core033_kernel_decide
def op12397 : List WordIR.Op := [.bnot 12514]
def bytes12397 : Bytes := ("    let r000030e3: u32 = !r000030e2;\n" : String).toByteArray.data.toList
theorem checked12397 : bytes12397=statementBytes 12515 (op12397.map lower) ∧ bytes12397.length=37 := by core033_kernel_decide
def op12398 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12398 : Bytes := ("    let r000030e4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12398 : bytes12398=statementBytes 12516 (op12398.map lower) ∧ bytes12398.length=41 := by core033_kernel_decide
def op12399 : List WordIR.Op := [.badd 12515 12516]
def bytes12399 : Bytes := ("    let r000030e5: u32 = r000030e3.wrapping_add(r000030e4);\n" : String).toByteArray.data.toList
theorem checked12399 : bytes12399=statementBytes 12517 (op12399.map lower) ∧ bytes12399.length=60 := by core033_kernel_decide
def op12400 : List WordIR.Op := [.bnot 12517]
def bytes12400 : Bytes := ("    let r000030e6: u32 = !r000030e5;\n" : String).toByteArray.data.toList
theorem checked12400 : bytes12400=statementBytes 12518 (op12400.map lower) ∧ bytes12400.length=37 := by core033_kernel_decide
def op12401 : List WordIR.Op := [.band 12518 1519]
def bytes12401 : Bytes := ("    let r000030e7: u32 = r000030e6 & r000005ef;\n" : String).toByteArray.data.toList
theorem checked12401 : bytes12401=statementBytes 12519 (op12401.map lower) ∧ bytes12401.length=48 := by core033_kernel_decide
def op12402 : List WordIR.Op := [.bxor 12493 12519]
def bytes12402 : Bytes := ("    let r000030e8: u32 = r000030cd ^ r000030e7;\n" : String).toByteArray.data.toList
theorem checked12402 : bytes12402=statementBytes 12520 (op12402.map lower) ∧ bytes12402.length=48 := by core033_kernel_decide
def op12403 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12403 : Bytes := ("    let r000030e9: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12403 : bytes12403=statementBytes 12521 (op12403.map lower) ∧ bytes12403.length=41 := by core033_kernel_decide
def op12404 : List WordIR.Op := [.bxor 693 12521]
def bytes12404 : Bytes := ("    let r000030ea: u32 = r000002b5 ^ r000030e9;\n" : String).toByteArray.data.toList
theorem checked12404 : bytes12404=statementBytes 12522 (op12404.map lower) ∧ bytes12404.length=48 := by core033_kernel_decide
def op12405 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12405 : Bytes := ("    let r000030eb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12405 : bytes12405=statementBytes 12523 (op12405.map lower) ∧ bytes12405.length=41 := by core033_kernel_decide
def op12406 : List WordIR.Op := [.bnot 12523]
def bytes12406 : Bytes := ("    let r000030ec: u32 = !r000030eb;\n" : String).toByteArray.data.toList
theorem checked12406 : bytes12406=statementBytes 12524 (op12406.map lower) ∧ bytes12406.length=37 := by core033_kernel_decide
def op12407 : List WordIR.Op := [.band 12522 12524]
def bytes12407 : Bytes := ("    let r000030ed: u32 = r000030ea & r000030ec;\n" : String).toByteArray.data.toList
theorem checked12407 : bytes12407=statementBytes 12525 (op12407.map lower) ∧ bytes12407.length=48 := by core033_kernel_decide
def op12408 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12408 : Bytes := ("    let r000030ee: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12408 : bytes12408=statementBytes 12526 (op12408.map lower) ∧ bytes12408.length=41 := by core033_kernel_decide
def op12409 : List WordIR.Op := [.bxor 693 12526]
def bytes12409 : Bytes := ("    let r000030ef: u32 = r000002b5 ^ r000030ee;\n" : String).toByteArray.data.toList
theorem checked12409 : bytes12409=statementBytes 12527 (op12409.map lower) ∧ bytes12409.length=48 := by core033_kernel_decide
def op12410 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12410 : Bytes := ("    let r000030f0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12410 : bytes12410=statementBytes 12528 (op12410.map lower) ∧ bytes12410.length=41 := by core033_kernel_decide
def op12411 : List WordIR.Op := [.bnot 12528]
def bytes12411 : Bytes := ("    let r000030f1: u32 = !r000030f0;\n" : String).toByteArray.data.toList
theorem checked12411 : bytes12411=statementBytes 12529 (op12411.map lower) ∧ bytes12411.length=37 := by core033_kernel_decide
def op12412 : List WordIR.Op := [.bxor 12527 12529]
def bytes12412 : Bytes := ("    let r000030f2: u32 = r000030ef ^ r000030f1;\n" : String).toByteArray.data.toList
theorem checked12412 : bytes12412=statementBytes 12530 (op12412.map lower) ∧ bytes12412.length=48 := by core033_kernel_decide
def op12413 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12413 : Bytes := ("    let r000030f3: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12413 : bytes12413=statementBytes 12531 (op12413.map lower) ∧ bytes12413.length=41 := by core033_kernel_decide
def op12414 : List WordIR.Op := [.bxor 693 12531]
def bytes12414 : Bytes := ("    let r000030f4: u32 = r000002b5 ^ r000030f3;\n" : String).toByteArray.data.toList
theorem checked12414 : bytes12414=statementBytes 12532 (op12414.map lower) ∧ bytes12414.length=48 := by core033_kernel_decide
def op12415 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12415 : Bytes := ("    let r000030f5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12415 : bytes12415=statementBytes 12533 (op12415.map lower) ∧ bytes12415.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12352,op12353,op12354,op12355,op12356,op12357,op12358,op12359,op12360,op12361,op12362,op12363,op12364,op12365,op12366,op12367,op12368,op12369,op12370,op12371,op12372,op12373,op12374,op12375,op12376,op12377,op12378,op12379,op12380,op12381,op12382,op12383,op12384,op12385,op12386,op12387,op12388,op12389,op12390,op12391,op12392,op12393,op12394,op12395,op12396,op12397,op12398,op12399,op12400,op12401,op12402,op12403,op12404,op12405,op12406,op12407,op12408,op12409,op12410,op12411,op12412,op12413,op12414,op12415]
def chunks : List Bytes := [bytes12352,bytes12353,bytes12354,bytes12355,bytes12356,bytes12357,bytes12358,bytes12359,bytes12360,bytes12361,bytes12362,bytes12363,bytes12364,bytes12365,bytes12366,bytes12367,bytes12368,bytes12369,bytes12370,bytes12371,bytes12372,bytes12373,bytes12374,bytes12375,bytes12376,bytes12377,bytes12378,bytes12379,bytes12380,bytes12381,bytes12382,bytes12383,bytes12384,bytes12385,bytes12386,bytes12387,bytes12388,bytes12389,bytes12390,bytes12391,bytes12392,bytes12393,bytes12394,bytes12395,bytes12396,bytes12397,bytes12398,bytes12399,bytes12400,bytes12401,bytes12402,bytes12403,bytes12404,bytes12405,bytes12406,bytes12407,bytes12408,bytes12409,bytes12410,bytes12411,bytes12412,bytes12413,bytes12414,bytes12415]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12470 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12352.1 (.cons _ _ _ _ _ checked12353.1 (.cons _ _ _ _ _ checked12354.1 (.cons _ _ _ _ _ checked12355.1 (.cons _ _ _ _ _ checked12356.1 (.cons _ _ _ _ _ checked12357.1 (.cons _ _ _ _ _ checked12358.1 (.cons _ _ _ _ _ checked12359.1 (.cons _ _ _ _ _ checked12360.1 (.cons _ _ _ _ _ checked12361.1 (.cons _ _ _ _ _ checked12362.1 (.cons _ _ _ _ _ checked12363.1 (.cons _ _ _ _ _ checked12364.1 (.cons _ _ _ _ _ checked12365.1 (.cons _ _ _ _ _ checked12366.1 (.cons _ _ _ _ _ checked12367.1 (.cons _ _ _ _ _ checked12368.1 (.cons _ _ _ _ _ checked12369.1 (.cons _ _ _ _ _ checked12370.1 (.cons _ _ _ _ _ checked12371.1 (.cons _ _ _ _ _ checked12372.1 (.cons _ _ _ _ _ checked12373.1 (.cons _ _ _ _ _ checked12374.1 (.cons _ _ _ _ _ checked12375.1 (.cons _ _ _ _ _ checked12376.1 (.cons _ _ _ _ _ checked12377.1 (.cons _ _ _ _ _ checked12378.1 (.cons _ _ _ _ _ checked12379.1 (.cons _ _ _ _ _ checked12380.1 (.cons _ _ _ _ _ checked12381.1 (.cons _ _ _ _ _ checked12382.1 (.cons _ _ _ _ _ checked12383.1 (.cons _ _ _ _ _ checked12384.1 (.cons _ _ _ _ _ checked12385.1 (.cons _ _ _ _ _ checked12386.1 (.cons _ _ _ _ _ checked12387.1 (.cons _ _ _ _ _ checked12388.1 (.cons _ _ _ _ _ checked12389.1 (.cons _ _ _ _ _ checked12390.1 (.cons _ _ _ _ _ checked12391.1 (.cons _ _ _ _ _ checked12392.1 (.cons _ _ _ _ _ checked12393.1 (.cons _ _ _ _ _ checked12394.1 (.cons _ _ _ _ _ checked12395.1 (.cons _ _ _ _ _ checked12396.1 (.cons _ _ _ _ _ checked12397.1 (.cons _ _ _ _ _ checked12398.1 (.cons _ _ _ _ _ checked12399.1 (.cons _ _ _ _ _ checked12400.1 (.cons _ _ _ _ _ checked12401.1 (.cons _ _ _ _ _ checked12402.1 (.cons _ _ _ _ _ checked12403.1 (.cons _ _ _ _ _ checked12404.1 (.cons _ _ _ _ _ checked12405.1 (.cons _ _ _ _ _ checked12406.1 (.cons _ _ _ _ _ checked12407.1 (.cons _ _ _ _ _ checked12408.1 (.cons _ _ _ _ _ checked12409.1 (.cons _ _ _ _ _ checked12410.1 (.cons _ _ _ _ _ checked12411.1 (.cons _ _ _ _ _ checked12412.1 (.cons _ _ _ _ _ checked12413.1 (.cons _ _ _ _ _ checked12414.1 (.cons _ _ _ _ _ checked12415.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12470 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12352.2,checked12353.2,checked12354.2,checked12355.2,checked12356.2,checked12357.2,checked12358.2,checked12359.2,checked12360.2,checked12361.2,checked12362.2,checked12363.2,checked12364.2,checked12365.2,checked12366.2,checked12367.2,checked12368.2,checked12369.2,checked12370.2,checked12371.2,checked12372.2,checked12373.2,checked12374.2,checked12375.2,checked12376.2,checked12377.2,checked12378.2,checked12379.2,checked12380.2,checked12381.2,checked12382.2,checked12383.2,checked12384.2,checked12385.2,checked12386.2,checked12387.2,checked12388.2,checked12389.2,checked12390.2,checked12391.2,checked12392.2,checked12393.2,checked12394.2,checked12395.2,checked12396.2,checked12397.2,checked12398.2,checked12399.2,checked12400.2,checked12401.2,checked12402.2,checked12403.2,checked12404.2,checked12405.2,checked12406.2,checked12407.2,checked12408.2,checked12409.2,checked12410.2,checked12411.2,checked12412.2,checked12413.2,checked12414.2,checked12415.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup193
