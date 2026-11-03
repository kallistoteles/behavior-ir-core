import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup131
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8384 : List WordIR.Op := [.badd 8426 6880]
def bytes8384 : Bytes := ("    let r000020eb: u32 = r000020ea.wrapping_add(r00001ae0);\n" : String).toByteArray.data.toList
theorem checked8384 : bytes8384=statementBytes 8427 (op8384.map lower) ∧ bytes8384.length=60 := by core033_kernel_decide
def op8385 : List WordIR.Op := [.rotr 8412 2]
def bytes8385 : Bytes := ("    let r000020ec: u32 = r000020dc.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8385 : bytes8385=statementBytes 8428 (op8385.map lower) ∧ bytes8385.length=65 := by core033_kernel_decide
def op8386 : List WordIR.Op := [.rotr 8412 13]
def bytes8386 : Bytes := ("    let r000020ed: u32 = r000020dc.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8386 : bytes8386=statementBytes 8429 (op8386.map lower) ∧ bytes8386.length=65 := by core033_kernel_decide
def op8387 : List WordIR.Op := [.bxor 8428 8429]
def bytes8387 : Bytes := ("    let r000020ee: u32 = r000020ec ^ r000020ed;\n" : String).toByteArray.data.toList
theorem checked8387 : bytes8387=statementBytes 8430 (op8387.map lower) ∧ bytes8387.length=48 := by core033_kernel_decide
def op8388 : List WordIR.Op := [.rotr 8412 22]
def bytes8388 : Bytes := ("    let r000020ef: u32 = r000020dc.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8388 : bytes8388=statementBytes 8431 (op8388.map lower) ∧ bytes8388.length=65 := by core033_kernel_decide
def op8389 : List WordIR.Op := [.bxor 8430 8431]
def bytes8389 : Bytes := ("    let r000020f0: u32 = r000020ee ^ r000020ef;\n" : String).toByteArray.data.toList
theorem checked8389 : bytes8389=statementBytes 8432 (op8389.map lower) ∧ bytes8389.length=48 := by core033_kernel_decide
def op8390 : List WordIR.Op := [.band 8412 8385]
def bytes8390 : Bytes := ("    let r000020f1: u32 = r000020dc & r000020c1;\n" : String).toByteArray.data.toList
theorem checked8390 : bytes8390=statementBytes 8433 (op8390.map lower) ∧ bytes8390.length=48 := by core033_kernel_decide
def op8391 : List WordIR.Op := [.band 8412 8358]
def bytes8391 : Bytes := ("    let r000020f2: u32 = r000020dc & r000020a6;\n" : String).toByteArray.data.toList
theorem checked8391 : bytes8391=statementBytes 8434 (op8391.map lower) ∧ bytes8391.length=48 := by core033_kernel_decide
def op8392 : List WordIR.Op := [.bxor 8433 8434]
def bytes8392 : Bytes := ("    let r000020f3: u32 = r000020f1 ^ r000020f2;\n" : String).toByteArray.data.toList
theorem checked8392 : bytes8392=statementBytes 8435 (op8392.map lower) ∧ bytes8392.length=48 := by core033_kernel_decide
def op8393 : List WordIR.Op := [.band 8385 8358]
def bytes8393 : Bytes := ("    let r000020f4: u32 = r000020c1 & r000020a6;\n" : String).toByteArray.data.toList
theorem checked8393 : bytes8393=statementBytes 8436 (op8393.map lower) ∧ bytes8393.length=48 := by core033_kernel_decide
def op8394 : List WordIR.Op := [.bxor 8435 8436]
def bytes8394 : Bytes := ("    let r000020f5: u32 = r000020f3 ^ r000020f4;\n" : String).toByteArray.data.toList
theorem checked8394 : bytes8394=statementBytes 8437 (op8394.map lower) ∧ bytes8394.length=48 := by core033_kernel_decide
def op8395 : List WordIR.Op := [.badd 8432 8437]
def bytes8395 : Bytes := ("    let r000020f6: u32 = r000020f0.wrapping_add(r000020f5);\n" : String).toByteArray.data.toList
theorem checked8395 : bytes8395=statementBytes 8438 (op8395.map lower) ∧ bytes8395.length=60 := by core033_kernel_decide
def op8396 : List WordIR.Op := [.badd 8427 8438]
def bytes8396 : Bytes := ("    let r000020f7: u32 = r000020eb.wrapping_add(r000020f6);\n" : String).toByteArray.data.toList
theorem checked8396 : bytes8396=statementBytes 8439 (op8396.map lower) ∧ bytes8396.length=60 := by core033_kernel_decide
def op8397 : List WordIR.Op := [.badd 8331 8427]
def bytes8397 : Bytes := ("    let r000020f8: u32 = r0000208b.wrapping_add(r000020eb);\n" : String).toByteArray.data.toList
theorem checked8397 : bytes8397=statementBytes 8440 (op8397.map lower) ∧ bytes8397.length=60 := by core033_kernel_decide
def op8398 : List WordIR.Op := [.rotr 8440 6]
def bytes8398 : Bytes := ("    let r000020f9: u32 = r000020f8.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8398 : bytes8398=statementBytes 8441 (op8398.map lower) ∧ bytes8398.length=65 := by core033_kernel_decide
def op8399 : List WordIR.Op := [.rotr 8440 11]
def bytes8399 : Bytes := ("    let r000020fa: u32 = r000020f8.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8399 : bytes8399=statementBytes 8442 (op8399.map lower) ∧ bytes8399.length=65 := by core033_kernel_decide
def op8400 : List WordIR.Op := [.bxor 8441 8442]
def bytes8400 : Bytes := ("    let r000020fb: u32 = r000020f9 ^ r000020fa;\n" : String).toByteArray.data.toList
theorem checked8400 : bytes8400=statementBytes 8443 (op8400.map lower) ∧ bytes8400.length=48 := by core033_kernel_decide
def op8401 : List WordIR.Op := [.rotr 8440 25]
def bytes8401 : Bytes := ("    let r000020fc: u32 = r000020f8.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8401 : bytes8401=statementBytes 8444 (op8401.map lower) ∧ bytes8401.length=65 := by core033_kernel_decide
def op8402 : List WordIR.Op := [.bxor 8443 8444]
def bytes8402 : Bytes := ("    let r000020fd: u32 = r000020fb ^ r000020fc;\n" : String).toByteArray.data.toList
theorem checked8402 : bytes8402=statementBytes 8445 (op8402.map lower) ∧ bytes8402.length=48 := by core033_kernel_decide
def op8403 : List WordIR.Op := [.badd 8359 8445]
def bytes8403 : Bytes := ("    let r000020fe: u32 = r000020a7.wrapping_add(r000020fd);\n" : String).toByteArray.data.toList
theorem checked8403 : bytes8403=statementBytes 8446 (op8403.map lower) ∧ bytes8403.length=60 := by core033_kernel_decide
def op8404 : List WordIR.Op := [.band 8440 8413]
def bytes8404 : Bytes := ("    let r000020ff: u32 = r000020f8 & r000020dd;\n" : String).toByteArray.data.toList
theorem checked8404 : bytes8404=statementBytes 8447 (op8404.map lower) ∧ bytes8404.length=48 := by core033_kernel_decide
def op8405 : List WordIR.Op := [.bnot 8440]
def bytes8405 : Bytes := ("    let r00002100: u32 = !r000020f8;\n" : String).toByteArray.data.toList
theorem checked8405 : bytes8405=statementBytes 8448 (op8405.map lower) ∧ bytes8405.length=37 := by core033_kernel_decide
def op8406 : List WordIR.Op := [.band 8448 8386]
def bytes8406 : Bytes := ("    let r00002101: u32 = r00002100 & r000020c2;\n" : String).toByteArray.data.toList
theorem checked8406 : bytes8406=statementBytes 8449 (op8406.map lower) ∧ bytes8406.length=48 := by core033_kernel_decide
def op8407 : List WordIR.Op := [.bxor 8447 8449]
def bytes8407 : Bytes := ("    let r00002102: u32 = r000020ff ^ r00002101;\n" : String).toByteArray.data.toList
theorem checked8407 : bytes8407=statementBytes 8450 (op8407.map lower) ∧ bytes8407.length=48 := by core033_kernel_decide
def op8408 : List WordIR.Op := [.badd 8446 8450]
def bytes8408 : Bytes := ("    let r00002103: u32 = r000020fe.wrapping_add(r00002102);\n" : String).toByteArray.data.toList
theorem checked8408 : bytes8408=statementBytes 8451 (op8408.map lower) ∧ bytes8408.length=60 := by core033_kernel_decide
def op8409 : List WordIR.Op := [.literal (BitVec.ofNat 32 958139571)]
def bytes8409 : Bytes := ("    let r00002104: u32 = 0x391c0cb3_u32;\n" : String).toByteArray.data.toList
theorem checked8409 : bytes8409=statementBytes 8452 (op8409.map lower) ∧ bytes8409.length=41 := by core033_kernel_decide
def op8410 : List WordIR.Op := [.badd 8451 8452]
def bytes8410 : Bytes := ("    let r00002105: u32 = r00002103.wrapping_add(r00002104);\n" : String).toByteArray.data.toList
theorem checked8410 : bytes8410=statementBytes 8453 (op8410.map lower) ∧ bytes8410.length=60 := by core033_kernel_decide
def op8411 : List WordIR.Op := [.badd 8453 6893]
def bytes8411 : Bytes := ("    let r00002106: u32 = r00002105.wrapping_add(r00001aed);\n" : String).toByteArray.data.toList
theorem checked8411 : bytes8411=statementBytes 8454 (op8411.map lower) ∧ bytes8411.length=60 := by core033_kernel_decide
def op8412 : List WordIR.Op := [.rotr 8439 2]
def bytes8412 : Bytes := ("    let r00002107: u32 = r000020f7.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8412 : bytes8412=statementBytes 8455 (op8412.map lower) ∧ bytes8412.length=65 := by core033_kernel_decide
def op8413 : List WordIR.Op := [.rotr 8439 13]
def bytes8413 : Bytes := ("    let r00002108: u32 = r000020f7.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8413 : bytes8413=statementBytes 8456 (op8413.map lower) ∧ bytes8413.length=65 := by core033_kernel_decide
def op8414 : List WordIR.Op := [.bxor 8455 8456]
def bytes8414 : Bytes := ("    let r00002109: u32 = r00002107 ^ r00002108;\n" : String).toByteArray.data.toList
theorem checked8414 : bytes8414=statementBytes 8457 (op8414.map lower) ∧ bytes8414.length=48 := by core033_kernel_decide
def op8415 : List WordIR.Op := [.rotr 8439 22]
def bytes8415 : Bytes := ("    let r0000210a: u32 = r000020f7.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8415 : bytes8415=statementBytes 8458 (op8415.map lower) ∧ bytes8415.length=65 := by core033_kernel_decide
def op8416 : List WordIR.Op := [.bxor 8457 8458]
def bytes8416 : Bytes := ("    let r0000210b: u32 = r00002109 ^ r0000210a;\n" : String).toByteArray.data.toList
theorem checked8416 : bytes8416=statementBytes 8459 (op8416.map lower) ∧ bytes8416.length=48 := by core033_kernel_decide
def op8417 : List WordIR.Op := [.band 8439 8412]
def bytes8417 : Bytes := ("    let r0000210c: u32 = r000020f7 & r000020dc;\n" : String).toByteArray.data.toList
theorem checked8417 : bytes8417=statementBytes 8460 (op8417.map lower) ∧ bytes8417.length=48 := by core033_kernel_decide
def op8418 : List WordIR.Op := [.band 8439 8385]
def bytes8418 : Bytes := ("    let r0000210d: u32 = r000020f7 & r000020c1;\n" : String).toByteArray.data.toList
theorem checked8418 : bytes8418=statementBytes 8461 (op8418.map lower) ∧ bytes8418.length=48 := by core033_kernel_decide
def op8419 : List WordIR.Op := [.bxor 8460 8461]
def bytes8419 : Bytes := ("    let r0000210e: u32 = r0000210c ^ r0000210d;\n" : String).toByteArray.data.toList
theorem checked8419 : bytes8419=statementBytes 8462 (op8419.map lower) ∧ bytes8419.length=48 := by core033_kernel_decide
def op8420 : List WordIR.Op := [.band 8412 8385]
def bytes8420 : Bytes := ("    let r0000210f: u32 = r000020dc & r000020c1;\n" : String).toByteArray.data.toList
theorem checked8420 : bytes8420=statementBytes 8463 (op8420.map lower) ∧ bytes8420.length=48 := by core033_kernel_decide
def op8421 : List WordIR.Op := [.bxor 8462 8463]
def bytes8421 : Bytes := ("    let r00002110: u32 = r0000210e ^ r0000210f;\n" : String).toByteArray.data.toList
theorem checked8421 : bytes8421=statementBytes 8464 (op8421.map lower) ∧ bytes8421.length=48 := by core033_kernel_decide
def op8422 : List WordIR.Op := [.badd 8459 8464]
def bytes8422 : Bytes := ("    let r00002111: u32 = r0000210b.wrapping_add(r00002110);\n" : String).toByteArray.data.toList
theorem checked8422 : bytes8422=statementBytes 8465 (op8422.map lower) ∧ bytes8422.length=60 := by core033_kernel_decide
def op8423 : List WordIR.Op := [.badd 8454 8465]
def bytes8423 : Bytes := ("    let r00002112: u32 = r00002106.wrapping_add(r00002111);\n" : String).toByteArray.data.toList
theorem checked8423 : bytes8423=statementBytes 8466 (op8423.map lower) ∧ bytes8423.length=60 := by core033_kernel_decide
def op8424 : List WordIR.Op := [.badd 8358 8454]
def bytes8424 : Bytes := ("    let r00002113: u32 = r000020a6.wrapping_add(r00002106);\n" : String).toByteArray.data.toList
theorem checked8424 : bytes8424=statementBytes 8467 (op8424.map lower) ∧ bytes8424.length=60 := by core033_kernel_decide
def op8425 : List WordIR.Op := [.rotr 8467 6]
def bytes8425 : Bytes := ("    let r00002114: u32 = r00002113.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8425 : bytes8425=statementBytes 8468 (op8425.map lower) ∧ bytes8425.length=65 := by core033_kernel_decide
def op8426 : List WordIR.Op := [.rotr 8467 11]
def bytes8426 : Bytes := ("    let r00002115: u32 = r00002113.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8426 : bytes8426=statementBytes 8469 (op8426.map lower) ∧ bytes8426.length=65 := by core033_kernel_decide
def op8427 : List WordIR.Op := [.bxor 8468 8469]
def bytes8427 : Bytes := ("    let r00002116: u32 = r00002114 ^ r00002115;\n" : String).toByteArray.data.toList
theorem checked8427 : bytes8427=statementBytes 8470 (op8427.map lower) ∧ bytes8427.length=48 := by core033_kernel_decide
def op8428 : List WordIR.Op := [.rotr 8467 25]
def bytes8428 : Bytes := ("    let r00002117: u32 = r00002113.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8428 : bytes8428=statementBytes 8471 (op8428.map lower) ∧ bytes8428.length=65 := by core033_kernel_decide
def op8429 : List WordIR.Op := [.bxor 8470 8471]
def bytes8429 : Bytes := ("    let r00002118: u32 = r00002116 ^ r00002117;\n" : String).toByteArray.data.toList
theorem checked8429 : bytes8429=statementBytes 8472 (op8429.map lower) ∧ bytes8429.length=48 := by core033_kernel_decide
def op8430 : List WordIR.Op := [.badd 8386 8472]
def bytes8430 : Bytes := ("    let r00002119: u32 = r000020c2.wrapping_add(r00002118);\n" : String).toByteArray.data.toList
theorem checked8430 : bytes8430=statementBytes 8473 (op8430.map lower) ∧ bytes8430.length=60 := by core033_kernel_decide
def op8431 : List WordIR.Op := [.band 8467 8440]
def bytes8431 : Bytes := ("    let r0000211a: u32 = r00002113 & r000020f8;\n" : String).toByteArray.data.toList
theorem checked8431 : bytes8431=statementBytes 8474 (op8431.map lower) ∧ bytes8431.length=48 := by core033_kernel_decide
def op8432 : List WordIR.Op := [.bnot 8467]
def bytes8432 : Bytes := ("    let r0000211b: u32 = !r00002113;\n" : String).toByteArray.data.toList
theorem checked8432 : bytes8432=statementBytes 8475 (op8432.map lower) ∧ bytes8432.length=37 := by core033_kernel_decide
def op8433 : List WordIR.Op := [.band 8475 8413]
def bytes8433 : Bytes := ("    let r0000211c: u32 = r0000211b & r000020dd;\n" : String).toByteArray.data.toList
theorem checked8433 : bytes8433=statementBytes 8476 (op8433.map lower) ∧ bytes8433.length=48 := by core033_kernel_decide
def op8434 : List WordIR.Op := [.bxor 8474 8476]
def bytes8434 : Bytes := ("    let r0000211d: u32 = r0000211a ^ r0000211c;\n" : String).toByteArray.data.toList
theorem checked8434 : bytes8434=statementBytes 8477 (op8434.map lower) ∧ bytes8434.length=48 := by core033_kernel_decide
def op8435 : List WordIR.Op := [.badd 8473 8477]
def bytes8435 : Bytes := ("    let r0000211e: u32 = r00002119.wrapping_add(r0000211d);\n" : String).toByteArray.data.toList
theorem checked8435 : bytes8435=statementBytes 8478 (op8435.map lower) ∧ bytes8435.length=60 := by core033_kernel_decide
def op8436 : List WordIR.Op := [.literal (BitVec.ofNat 32 1322822218)]
def bytes8436 : Bytes := ("    let r0000211f: u32 = 0x4ed8aa4a_u32;\n" : String).toByteArray.data.toList
theorem checked8436 : bytes8436=statementBytes 8479 (op8436.map lower) ∧ bytes8436.length=41 := by core033_kernel_decide
def op8437 : List WordIR.Op := [.badd 8478 8479]
def bytes8437 : Bytes := ("    let r00002120: u32 = r0000211e.wrapping_add(r0000211f);\n" : String).toByteArray.data.toList
theorem checked8437 : bytes8437=statementBytes 8480 (op8437.map lower) ∧ bytes8437.length=60 := by core033_kernel_decide
def op8438 : List WordIR.Op := [.badd 8480 6906]
def bytes8438 : Bytes := ("    let r00002121: u32 = r00002120.wrapping_add(r00001afa);\n" : String).toByteArray.data.toList
theorem checked8438 : bytes8438=statementBytes 8481 (op8438.map lower) ∧ bytes8438.length=60 := by core033_kernel_decide
def op8439 : List WordIR.Op := [.rotr 8466 2]
def bytes8439 : Bytes := ("    let r00002122: u32 = r00002112.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8439 : bytes8439=statementBytes 8482 (op8439.map lower) ∧ bytes8439.length=65 := by core033_kernel_decide
def op8440 : List WordIR.Op := [.rotr 8466 13]
def bytes8440 : Bytes := ("    let r00002123: u32 = r00002112.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8440 : bytes8440=statementBytes 8483 (op8440.map lower) ∧ bytes8440.length=65 := by core033_kernel_decide
def op8441 : List WordIR.Op := [.bxor 8482 8483]
def bytes8441 : Bytes := ("    let r00002124: u32 = r00002122 ^ r00002123;\n" : String).toByteArray.data.toList
theorem checked8441 : bytes8441=statementBytes 8484 (op8441.map lower) ∧ bytes8441.length=48 := by core033_kernel_decide
def op8442 : List WordIR.Op := [.rotr 8466 22]
def bytes8442 : Bytes := ("    let r00002125: u32 = r00002112.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8442 : bytes8442=statementBytes 8485 (op8442.map lower) ∧ bytes8442.length=65 := by core033_kernel_decide
def op8443 : List WordIR.Op := [.bxor 8484 8485]
def bytes8443 : Bytes := ("    let r00002126: u32 = r00002124 ^ r00002125;\n" : String).toByteArray.data.toList
theorem checked8443 : bytes8443=statementBytes 8486 (op8443.map lower) ∧ bytes8443.length=48 := by core033_kernel_decide
def op8444 : List WordIR.Op := [.band 8466 8439]
def bytes8444 : Bytes := ("    let r00002127: u32 = r00002112 & r000020f7;\n" : String).toByteArray.data.toList
theorem checked8444 : bytes8444=statementBytes 8487 (op8444.map lower) ∧ bytes8444.length=48 := by core033_kernel_decide
def op8445 : List WordIR.Op := [.band 8466 8412]
def bytes8445 : Bytes := ("    let r00002128: u32 = r00002112 & r000020dc;\n" : String).toByteArray.data.toList
theorem checked8445 : bytes8445=statementBytes 8488 (op8445.map lower) ∧ bytes8445.length=48 := by core033_kernel_decide
def op8446 : List WordIR.Op := [.bxor 8487 8488]
def bytes8446 : Bytes := ("    let r00002129: u32 = r00002127 ^ r00002128;\n" : String).toByteArray.data.toList
theorem checked8446 : bytes8446=statementBytes 8489 (op8446.map lower) ∧ bytes8446.length=48 := by core033_kernel_decide
def op8447 : List WordIR.Op := [.band 8439 8412]
def bytes8447 : Bytes := ("    let r0000212a: u32 = r000020f7 & r000020dc;\n" : String).toByteArray.data.toList
theorem checked8447 : bytes8447=statementBytes 8490 (op8447.map lower) ∧ bytes8447.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8384,op8385,op8386,op8387,op8388,op8389,op8390,op8391,op8392,op8393,op8394,op8395,op8396,op8397,op8398,op8399,op8400,op8401,op8402,op8403,op8404,op8405,op8406,op8407,op8408,op8409,op8410,op8411,op8412,op8413,op8414,op8415,op8416,op8417,op8418,op8419,op8420,op8421,op8422,op8423,op8424,op8425,op8426,op8427,op8428,op8429,op8430,op8431,op8432,op8433,op8434,op8435,op8436,op8437,op8438,op8439,op8440,op8441,op8442,op8443,op8444,op8445,op8446,op8447]
def chunks : List Bytes := [bytes8384,bytes8385,bytes8386,bytes8387,bytes8388,bytes8389,bytes8390,bytes8391,bytes8392,bytes8393,bytes8394,bytes8395,bytes8396,bytes8397,bytes8398,bytes8399,bytes8400,bytes8401,bytes8402,bytes8403,bytes8404,bytes8405,bytes8406,bytes8407,bytes8408,bytes8409,bytes8410,bytes8411,bytes8412,bytes8413,bytes8414,bytes8415,bytes8416,bytes8417,bytes8418,bytes8419,bytes8420,bytes8421,bytes8422,bytes8423,bytes8424,bytes8425,bytes8426,bytes8427,bytes8428,bytes8429,bytes8430,bytes8431,bytes8432,bytes8433,bytes8434,bytes8435,bytes8436,bytes8437,bytes8438,bytes8439,bytes8440,bytes8441,bytes8442,bytes8443,bytes8444,bytes8445,bytes8446,bytes8447]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8427 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8384.1 (.cons _ _ _ _ _ checked8385.1 (.cons _ _ _ _ _ checked8386.1 (.cons _ _ _ _ _ checked8387.1 (.cons _ _ _ _ _ checked8388.1 (.cons _ _ _ _ _ checked8389.1 (.cons _ _ _ _ _ checked8390.1 (.cons _ _ _ _ _ checked8391.1 (.cons _ _ _ _ _ checked8392.1 (.cons _ _ _ _ _ checked8393.1 (.cons _ _ _ _ _ checked8394.1 (.cons _ _ _ _ _ checked8395.1 (.cons _ _ _ _ _ checked8396.1 (.cons _ _ _ _ _ checked8397.1 (.cons _ _ _ _ _ checked8398.1 (.cons _ _ _ _ _ checked8399.1 (.cons _ _ _ _ _ checked8400.1 (.cons _ _ _ _ _ checked8401.1 (.cons _ _ _ _ _ checked8402.1 (.cons _ _ _ _ _ checked8403.1 (.cons _ _ _ _ _ checked8404.1 (.cons _ _ _ _ _ checked8405.1 (.cons _ _ _ _ _ checked8406.1 (.cons _ _ _ _ _ checked8407.1 (.cons _ _ _ _ _ checked8408.1 (.cons _ _ _ _ _ checked8409.1 (.cons _ _ _ _ _ checked8410.1 (.cons _ _ _ _ _ checked8411.1 (.cons _ _ _ _ _ checked8412.1 (.cons _ _ _ _ _ checked8413.1 (.cons _ _ _ _ _ checked8414.1 (.cons _ _ _ _ _ checked8415.1 (.cons _ _ _ _ _ checked8416.1 (.cons _ _ _ _ _ checked8417.1 (.cons _ _ _ _ _ checked8418.1 (.cons _ _ _ _ _ checked8419.1 (.cons _ _ _ _ _ checked8420.1 (.cons _ _ _ _ _ checked8421.1 (.cons _ _ _ _ _ checked8422.1 (.cons _ _ _ _ _ checked8423.1 (.cons _ _ _ _ _ checked8424.1 (.cons _ _ _ _ _ checked8425.1 (.cons _ _ _ _ _ checked8426.1 (.cons _ _ _ _ _ checked8427.1 (.cons _ _ _ _ _ checked8428.1 (.cons _ _ _ _ _ checked8429.1 (.cons _ _ _ _ _ checked8430.1 (.cons _ _ _ _ _ checked8431.1 (.cons _ _ _ _ _ checked8432.1 (.cons _ _ _ _ _ checked8433.1 (.cons _ _ _ _ _ checked8434.1 (.cons _ _ _ _ _ checked8435.1 (.cons _ _ _ _ _ checked8436.1 (.cons _ _ _ _ _ checked8437.1 (.cons _ _ _ _ _ checked8438.1 (.cons _ _ _ _ _ checked8439.1 (.cons _ _ _ _ _ checked8440.1 (.cons _ _ _ _ _ checked8441.1 (.cons _ _ _ _ _ checked8442.1 (.cons _ _ _ _ _ checked8443.1 (.cons _ _ _ _ _ checked8444.1 (.cons _ _ _ _ _ checked8445.1 (.cons _ _ _ _ _ checked8446.1 (.cons _ _ _ _ _ checked8447.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8427 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3471 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8384.2,checked8385.2,checked8386.2,checked8387.2,checked8388.2,checked8389.2,checked8390.2,checked8391.2,checked8392.2,checked8393.2,checked8394.2,checked8395.2,checked8396.2,checked8397.2,checked8398.2,checked8399.2,checked8400.2,checked8401.2,checked8402.2,checked8403.2,checked8404.2,checked8405.2,checked8406.2,checked8407.2,checked8408.2,checked8409.2,checked8410.2,checked8411.2,checked8412.2,checked8413.2,checked8414.2,checked8415.2,checked8416.2,checked8417.2,checked8418.2,checked8419.2,checked8420.2,checked8421.2,checked8422.2,checked8423.2,checked8424.2,checked8425.2,checked8426.2,checked8427.2,checked8428.2,checked8429.2,checked8430.2,checked8431.2,checked8432.2,checked8433.2,checked8434.2,checked8435.2,checked8436.2,checked8437.2,checked8438.2,checked8439.2,checked8440.2,checked8441.2,checked8442.2,checked8443.2,checked8444.2,checked8445.2,checked8446.2,checked8447.2]
  decide
end ArtifactFrameHashControllerGroup131
