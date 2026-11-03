import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup131
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8384 : List WordIR.Op := [.rotr 8313 7]
def bytes8384 : Bytes := ("    let r00002136: u32 = r00002079.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8384 : bytes8384=statementBytes 8502 (op8384.map lower) ∧ bytes8384.length=65 := by core033_kernel_decide
def op8385 : List WordIR.Op := [.rotr 8313 18]
def bytes8385 : Bytes := ("    let r00002137: u32 = r00002079.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8385 : bytes8385=statementBytes 8503 (op8385.map lower) ∧ bytes8385.length=65 := by core033_kernel_decide
def op8386 : List WordIR.Op := [.bxor 8502 8503]
def bytes8386 : Bytes := ("    let r00002138: u32 = r00002136 ^ r00002137;\n" : String).toByteArray.data.toList
theorem checked8386 : bytes8386=statementBytes 8504 (op8386.map lower) ∧ bytes8386.length=48 := by core033_kernel_decide
def op8387 : List WordIR.Op := [.shr 8313 3]
def bytes8387 : Bytes := ("    let r00002139: u32 = r00002079 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8387 : bytes8387=statementBytes 8505 (op8387.map lower) ∧ bytes8387.length=54 := by core033_kernel_decide
def op8388 : List WordIR.Op := [.bxor 8504 8505]
def bytes8388 : Bytes := ("    let r0000213a: u32 = r00002138 ^ r00002139;\n" : String).toByteArray.data.toList
theorem checked8388 : bytes8388=statementBytes 8506 (op8388.map lower) ∧ bytes8388.length=48 := by core033_kernel_decide
def op8389 : List WordIR.Op := [.badd 8501 8506]
def bytes8389 : Bytes := ("    let r0000213b: u32 = r00002135.wrapping_add(r0000213a);\n" : String).toByteArray.data.toList
theorem checked8389 : bytes8389=statementBytes 8507 (op8389.map lower) ∧ bytes8389.length=60 := by core033_kernel_decide
def op8390 : List WordIR.Op := [.badd 8507 8300]
def bytes8390 : Bytes := ("    let r0000213c: u32 = r0000213b.wrapping_add(r0000206c);\n" : String).toByteArray.data.toList
theorem checked8390 : bytes8390=statementBytes 8508 (op8390.map lower) ∧ bytes8390.length=60 := by core033_kernel_decide
def op8391 : List WordIR.Op := [.rotr 8495 17]
def bytes8391 : Bytes := ("    let r0000213d: u32 = r0000212f.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8391 : bytes8391=statementBytes 8509 (op8391.map lower) ∧ bytes8391.length=65 := by core033_kernel_decide
def op8392 : List WordIR.Op := [.rotr 8495 19]
def bytes8392 : Bytes := ("    let r0000213e: u32 = r0000212f.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8392 : bytes8392=statementBytes 8510 (op8392.map lower) ∧ bytes8392.length=65 := by core033_kernel_decide
def op8393 : List WordIR.Op := [.bxor 8509 8510]
def bytes8393 : Bytes := ("    let r0000213f: u32 = r0000213d ^ r0000213e;\n" : String).toByteArray.data.toList
theorem checked8393 : bytes8393=statementBytes 8511 (op8393.map lower) ∧ bytes8393.length=48 := by core033_kernel_decide
def op8394 : List WordIR.Op := [.shr 8495 10]
def bytes8394 : Bytes := ("    let r00002140: u32 = r0000212f >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8394 : bytes8394=statementBytes 8512 (op8394.map lower) ∧ bytes8394.length=54 := by core033_kernel_decide
def op8395 : List WordIR.Op := [.bxor 8511 8512]
def bytes8395 : Bytes := ("    let r00002141: u32 = r0000213f ^ r00002140;\n" : String).toByteArray.data.toList
theorem checked8395 : bytes8395=statementBytes 8513 (op8395.map lower) ∧ bytes8395.length=48 := by core033_kernel_decide
def op8396 : List WordIR.Op := [.badd 8513 8430]
def bytes8396 : Bytes := ("    let r00002142: u32 = r00002141.wrapping_add(r000020ee);\n" : String).toByteArray.data.toList
theorem checked8396 : bytes8396=statementBytes 8514 (op8396.map lower) ∧ bytes8396.length=60 := by core033_kernel_decide
def op8397 : List WordIR.Op := [.rotr 8326 7]
def bytes8397 : Bytes := ("    let r00002143: u32 = r00002086.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8397 : bytes8397=statementBytes 8515 (op8397.map lower) ∧ bytes8397.length=65 := by core033_kernel_decide
def op8398 : List WordIR.Op := [.rotr 8326 18]
def bytes8398 : Bytes := ("    let r00002144: u32 = r00002086.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8398 : bytes8398=statementBytes 8516 (op8398.map lower) ∧ bytes8398.length=65 := by core033_kernel_decide
def op8399 : List WordIR.Op := [.bxor 8515 8516]
def bytes8399 : Bytes := ("    let r00002145: u32 = r00002143 ^ r00002144;\n" : String).toByteArray.data.toList
theorem checked8399 : bytes8399=statementBytes 8517 (op8399.map lower) ∧ bytes8399.length=48 := by core033_kernel_decide
def op8400 : List WordIR.Op := [.shr 8326 3]
def bytes8400 : Bytes := ("    let r00002146: u32 = r00002086 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8400 : bytes8400=statementBytes 8518 (op8400.map lower) ∧ bytes8400.length=54 := by core033_kernel_decide
def op8401 : List WordIR.Op := [.bxor 8517 8518]
def bytes8401 : Bytes := ("    let r00002147: u32 = r00002145 ^ r00002146;\n" : String).toByteArray.data.toList
theorem checked8401 : bytes8401=statementBytes 8519 (op8401.map lower) ∧ bytes8401.length=48 := by core033_kernel_decide
def op8402 : List WordIR.Op := [.badd 8514 8519]
def bytes8402 : Bytes := ("    let r00002148: u32 = r00002142.wrapping_add(r00002147);\n" : String).toByteArray.data.toList
theorem checked8402 : bytes8402=statementBytes 8520 (op8402.map lower) ∧ bytes8402.length=60 := by core033_kernel_decide
def op8403 : List WordIR.Op := [.badd 8520 8313]
def bytes8403 : Bytes := ("    let r00002149: u32 = r00002148.wrapping_add(r00002079);\n" : String).toByteArray.data.toList
theorem checked8403 : bytes8403=statementBytes 8521 (op8403.map lower) ∧ bytes8403.length=60 := by core033_kernel_decide
def op8404 : List WordIR.Op := [.rotr 8508 17]
def bytes8404 : Bytes := ("    let r0000214a: u32 = r0000213c.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8404 : bytes8404=statementBytes 8522 (op8404.map lower) ∧ bytes8404.length=65 := by core033_kernel_decide
def op8405 : List WordIR.Op := [.rotr 8508 19]
def bytes8405 : Bytes := ("    let r0000214b: u32 = r0000213c.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8405 : bytes8405=statementBytes 8523 (op8405.map lower) ∧ bytes8405.length=65 := by core033_kernel_decide
def op8406 : List WordIR.Op := [.bxor 8522 8523]
def bytes8406 : Bytes := ("    let r0000214c: u32 = r0000214a ^ r0000214b;\n" : String).toByteArray.data.toList
theorem checked8406 : bytes8406=statementBytes 8524 (op8406.map lower) ∧ bytes8406.length=48 := by core033_kernel_decide
def op8407 : List WordIR.Op := [.shr 8508 10]
def bytes8407 : Bytes := ("    let r0000214d: u32 = r0000213c >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8407 : bytes8407=statementBytes 8525 (op8407.map lower) ∧ bytes8407.length=54 := by core033_kernel_decide
def op8408 : List WordIR.Op := [.bxor 8524 8525]
def bytes8408 : Bytes := ("    let r0000214e: u32 = r0000214c ^ r0000214d;\n" : String).toByteArray.data.toList
theorem checked8408 : bytes8408=statementBytes 8526 (op8408.map lower) ∧ bytes8408.length=48 := by core033_kernel_decide
def op8409 : List WordIR.Op := [.badd 8526 8443]
def bytes8409 : Bytes := ("    let r0000214f: u32 = r0000214e.wrapping_add(r000020fb);\n" : String).toByteArray.data.toList
theorem checked8409 : bytes8409=statementBytes 8527 (op8409.map lower) ∧ bytes8409.length=60 := by core033_kernel_decide
def op8410 : List WordIR.Op := [.rotr 8339 7]
def bytes8410 : Bytes := ("    let r00002150: u32 = r00002093.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8410 : bytes8410=statementBytes 8528 (op8410.map lower) ∧ bytes8410.length=65 := by core033_kernel_decide
def op8411 : List WordIR.Op := [.rotr 8339 18]
def bytes8411 : Bytes := ("    let r00002151: u32 = r00002093.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8411 : bytes8411=statementBytes 8529 (op8411.map lower) ∧ bytes8411.length=65 := by core033_kernel_decide
def op8412 : List WordIR.Op := [.bxor 8528 8529]
def bytes8412 : Bytes := ("    let r00002152: u32 = r00002150 ^ r00002151;\n" : String).toByteArray.data.toList
theorem checked8412 : bytes8412=statementBytes 8530 (op8412.map lower) ∧ bytes8412.length=48 := by core033_kernel_decide
def op8413 : List WordIR.Op := [.shr 8339 3]
def bytes8413 : Bytes := ("    let r00002153: u32 = r00002093 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8413 : bytes8413=statementBytes 8531 (op8413.map lower) ∧ bytes8413.length=54 := by core033_kernel_decide
def op8414 : List WordIR.Op := [.bxor 8530 8531]
def bytes8414 : Bytes := ("    let r00002154: u32 = r00002152 ^ r00002153;\n" : String).toByteArray.data.toList
theorem checked8414 : bytes8414=statementBytes 8532 (op8414.map lower) ∧ bytes8414.length=48 := by core033_kernel_decide
def op8415 : List WordIR.Op := [.badd 8527 8532]
def bytes8415 : Bytes := ("    let r00002155: u32 = r0000214f.wrapping_add(r00002154);\n" : String).toByteArray.data.toList
theorem checked8415 : bytes8415=statementBytes 8533 (op8415.map lower) ∧ bytes8415.length=60 := by core033_kernel_decide
def op8416 : List WordIR.Op := [.badd 8533 8326]
def bytes8416 : Bytes := ("    let r00002156: u32 = r00002155.wrapping_add(r00002086);\n" : String).toByteArray.data.toList
theorem checked8416 : bytes8416=statementBytes 8534 (op8416.map lower) ∧ bytes8416.length=60 := by core033_kernel_decide
def op8417 : List WordIR.Op := [.rotr 8521 17]
def bytes8417 : Bytes := ("    let r00002157: u32 = r00002149.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8417 : bytes8417=statementBytes 8535 (op8417.map lower) ∧ bytes8417.length=65 := by core033_kernel_decide
def op8418 : List WordIR.Op := [.rotr 8521 19]
def bytes8418 : Bytes := ("    let r00002158: u32 = r00002149.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8418 : bytes8418=statementBytes 8536 (op8418.map lower) ∧ bytes8418.length=65 := by core033_kernel_decide
def op8419 : List WordIR.Op := [.bxor 8535 8536]
def bytes8419 : Bytes := ("    let r00002159: u32 = r00002157 ^ r00002158;\n" : String).toByteArray.data.toList
theorem checked8419 : bytes8419=statementBytes 8537 (op8419.map lower) ∧ bytes8419.length=48 := by core033_kernel_decide
def op8420 : List WordIR.Op := [.shr 8521 10]
def bytes8420 : Bytes := ("    let r0000215a: u32 = r00002149 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8420 : bytes8420=statementBytes 8538 (op8420.map lower) ∧ bytes8420.length=54 := by core033_kernel_decide
def op8421 : List WordIR.Op := [.bxor 8537 8538]
def bytes8421 : Bytes := ("    let r0000215b: u32 = r00002159 ^ r0000215a;\n" : String).toByteArray.data.toList
theorem checked8421 : bytes8421=statementBytes 8539 (op8421.map lower) ∧ bytes8421.length=48 := by core033_kernel_decide
def op8422 : List WordIR.Op := [.badd 8539 8456]
def bytes8422 : Bytes := ("    let r0000215c: u32 = r0000215b.wrapping_add(r00002108);\n" : String).toByteArray.data.toList
theorem checked8422 : bytes8422=statementBytes 8540 (op8422.map lower) ∧ bytes8422.length=60 := by core033_kernel_decide
def op8423 : List WordIR.Op := [.rotr 8352 7]
def bytes8423 : Bytes := ("    let r0000215d: u32 = r000020a0.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8423 : bytes8423=statementBytes 8541 (op8423.map lower) ∧ bytes8423.length=65 := by core033_kernel_decide
def op8424 : List WordIR.Op := [.rotr 8352 18]
def bytes8424 : Bytes := ("    let r0000215e: u32 = r000020a0.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8424 : bytes8424=statementBytes 8542 (op8424.map lower) ∧ bytes8424.length=65 := by core033_kernel_decide
def op8425 : List WordIR.Op := [.bxor 8541 8542]
def bytes8425 : Bytes := ("    let r0000215f: u32 = r0000215d ^ r0000215e;\n" : String).toByteArray.data.toList
theorem checked8425 : bytes8425=statementBytes 8543 (op8425.map lower) ∧ bytes8425.length=48 := by core033_kernel_decide
def op8426 : List WordIR.Op := [.shr 8352 3]
def bytes8426 : Bytes := ("    let r00002160: u32 = r000020a0 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8426 : bytes8426=statementBytes 8544 (op8426.map lower) ∧ bytes8426.length=54 := by core033_kernel_decide
def op8427 : List WordIR.Op := [.bxor 8543 8544]
def bytes8427 : Bytes := ("    let r00002161: u32 = r0000215f ^ r00002160;\n" : String).toByteArray.data.toList
theorem checked8427 : bytes8427=statementBytes 8545 (op8427.map lower) ∧ bytes8427.length=48 := by core033_kernel_decide
def op8428 : List WordIR.Op := [.badd 8540 8545]
def bytes8428 : Bytes := ("    let r00002162: u32 = r0000215c.wrapping_add(r00002161);\n" : String).toByteArray.data.toList
theorem checked8428 : bytes8428=statementBytes 8546 (op8428.map lower) ∧ bytes8428.length=60 := by core033_kernel_decide
def op8429 : List WordIR.Op := [.badd 8546 8339]
def bytes8429 : Bytes := ("    let r00002163: u32 = r00002162.wrapping_add(r00002093);\n" : String).toByteArray.data.toList
theorem checked8429 : bytes8429=statementBytes 8547 (op8429.map lower) ∧ bytes8429.length=60 := by core033_kernel_decide
def op8430 : List WordIR.Op := [.rotr 8534 17]
def bytes8430 : Bytes := ("    let r00002164: u32 = r00002156.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8430 : bytes8430=statementBytes 8548 (op8430.map lower) ∧ bytes8430.length=65 := by core033_kernel_decide
def op8431 : List WordIR.Op := [.rotr 8534 19]
def bytes8431 : Bytes := ("    let r00002165: u32 = r00002156.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8431 : bytes8431=statementBytes 8549 (op8431.map lower) ∧ bytes8431.length=65 := by core033_kernel_decide
def op8432 : List WordIR.Op := [.bxor 8548 8549]
def bytes8432 : Bytes := ("    let r00002166: u32 = r00002164 ^ r00002165;\n" : String).toByteArray.data.toList
theorem checked8432 : bytes8432=statementBytes 8550 (op8432.map lower) ∧ bytes8432.length=48 := by core033_kernel_decide
def op8433 : List WordIR.Op := [.shr 8534 10]
def bytes8433 : Bytes := ("    let r00002167: u32 = r00002156 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8433 : bytes8433=statementBytes 8551 (op8433.map lower) ∧ bytes8433.length=54 := by core033_kernel_decide
def op8434 : List WordIR.Op := [.bxor 8550 8551]
def bytes8434 : Bytes := ("    let r00002168: u32 = r00002166 ^ r00002167;\n" : String).toByteArray.data.toList
theorem checked8434 : bytes8434=statementBytes 8552 (op8434.map lower) ∧ bytes8434.length=48 := by core033_kernel_decide
def op8435 : List WordIR.Op := [.badd 8552 8469]
def bytes8435 : Bytes := ("    let r00002169: u32 = r00002168.wrapping_add(r00002115);\n" : String).toByteArray.data.toList
theorem checked8435 : bytes8435=statementBytes 8553 (op8435.map lower) ∧ bytes8435.length=60 := by core033_kernel_decide
def op8436 : List WordIR.Op := [.rotr 8365 7]
def bytes8436 : Bytes := ("    let r0000216a: u32 = r000020ad.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8436 : bytes8436=statementBytes 8554 (op8436.map lower) ∧ bytes8436.length=65 := by core033_kernel_decide
def op8437 : List WordIR.Op := [.rotr 8365 18]
def bytes8437 : Bytes := ("    let r0000216b: u32 = r000020ad.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8437 : bytes8437=statementBytes 8555 (op8437.map lower) ∧ bytes8437.length=65 := by core033_kernel_decide
def op8438 : List WordIR.Op := [.bxor 8554 8555]
def bytes8438 : Bytes := ("    let r0000216c: u32 = r0000216a ^ r0000216b;\n" : String).toByteArray.data.toList
theorem checked8438 : bytes8438=statementBytes 8556 (op8438.map lower) ∧ bytes8438.length=48 := by core033_kernel_decide
def op8439 : List WordIR.Op := [.shr 8365 3]
def bytes8439 : Bytes := ("    let r0000216d: u32 = r000020ad >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8439 : bytes8439=statementBytes 8557 (op8439.map lower) ∧ bytes8439.length=54 := by core033_kernel_decide
def op8440 : List WordIR.Op := [.bxor 8556 8557]
def bytes8440 : Bytes := ("    let r0000216e: u32 = r0000216c ^ r0000216d;\n" : String).toByteArray.data.toList
theorem checked8440 : bytes8440=statementBytes 8558 (op8440.map lower) ∧ bytes8440.length=48 := by core033_kernel_decide
def op8441 : List WordIR.Op := [.badd 8553 8558]
def bytes8441 : Bytes := ("    let r0000216f: u32 = r00002169.wrapping_add(r0000216e);\n" : String).toByteArray.data.toList
theorem checked8441 : bytes8441=statementBytes 8559 (op8441.map lower) ∧ bytes8441.length=60 := by core033_kernel_decide
def op8442 : List WordIR.Op := [.badd 8559 8352]
def bytes8442 : Bytes := ("    let r00002170: u32 = r0000216f.wrapping_add(r000020a0);\n" : String).toByteArray.data.toList
theorem checked8442 : bytes8442=statementBytes 8560 (op8442.map lower) ∧ bytes8442.length=60 := by core033_kernel_decide
def op8443 : List WordIR.Op := [.rotr 8547 17]
def bytes8443 : Bytes := ("    let r00002171: u32 = r00002163.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8443 : bytes8443=statementBytes 8561 (op8443.map lower) ∧ bytes8443.length=65 := by core033_kernel_decide
def op8444 : List WordIR.Op := [.rotr 8547 19]
def bytes8444 : Bytes := ("    let r00002172: u32 = r00002163.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8444 : bytes8444=statementBytes 8562 (op8444.map lower) ∧ bytes8444.length=65 := by core033_kernel_decide
def op8445 : List WordIR.Op := [.bxor 8561 8562]
def bytes8445 : Bytes := ("    let r00002173: u32 = r00002171 ^ r00002172;\n" : String).toByteArray.data.toList
theorem checked8445 : bytes8445=statementBytes 8563 (op8445.map lower) ∧ bytes8445.length=48 := by core033_kernel_decide
def op8446 : List WordIR.Op := [.shr 8547 10]
def bytes8446 : Bytes := ("    let r00002174: u32 = r00002163 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8446 : bytes8446=statementBytes 8564 (op8446.map lower) ∧ bytes8446.length=54 := by core033_kernel_decide
def op8447 : List WordIR.Op := [.bxor 8563 8564]
def bytes8447 : Bytes := ("    let r00002175: u32 = r00002173 ^ r00002174;\n" : String).toByteArray.data.toList
theorem checked8447 : bytes8447=statementBytes 8565 (op8447.map lower) ∧ bytes8447.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8384,op8385,op8386,op8387,op8388,op8389,op8390,op8391,op8392,op8393,op8394,op8395,op8396,op8397,op8398,op8399,op8400,op8401,op8402,op8403,op8404,op8405,op8406,op8407,op8408,op8409,op8410,op8411,op8412,op8413,op8414,op8415,op8416,op8417,op8418,op8419,op8420,op8421,op8422,op8423,op8424,op8425,op8426,op8427,op8428,op8429,op8430,op8431,op8432,op8433,op8434,op8435,op8436,op8437,op8438,op8439,op8440,op8441,op8442,op8443,op8444,op8445,op8446,op8447]
def chunks : List Bytes := [bytes8384,bytes8385,bytes8386,bytes8387,bytes8388,bytes8389,bytes8390,bytes8391,bytes8392,bytes8393,bytes8394,bytes8395,bytes8396,bytes8397,bytes8398,bytes8399,bytes8400,bytes8401,bytes8402,bytes8403,bytes8404,bytes8405,bytes8406,bytes8407,bytes8408,bytes8409,bytes8410,bytes8411,bytes8412,bytes8413,bytes8414,bytes8415,bytes8416,bytes8417,bytes8418,bytes8419,bytes8420,bytes8421,bytes8422,bytes8423,bytes8424,bytes8425,bytes8426,bytes8427,bytes8428,bytes8429,bytes8430,bytes8431,bytes8432,bytes8433,bytes8434,bytes8435,bytes8436,bytes8437,bytes8438,bytes8439,bytes8440,bytes8441,bytes8442,bytes8443,bytes8444,bytes8445,bytes8446,bytes8447]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8502 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8384.1 (.cons _ _ _ _ _ checked8385.1 (.cons _ _ _ _ _ checked8386.1 (.cons _ _ _ _ _ checked8387.1 (.cons _ _ _ _ _ checked8388.1 (.cons _ _ _ _ _ checked8389.1 (.cons _ _ _ _ _ checked8390.1 (.cons _ _ _ _ _ checked8391.1 (.cons _ _ _ _ _ checked8392.1 (.cons _ _ _ _ _ checked8393.1 (.cons _ _ _ _ _ checked8394.1 (.cons _ _ _ _ _ checked8395.1 (.cons _ _ _ _ _ checked8396.1 (.cons _ _ _ _ _ checked8397.1 (.cons _ _ _ _ _ checked8398.1 (.cons _ _ _ _ _ checked8399.1 (.cons _ _ _ _ _ checked8400.1 (.cons _ _ _ _ _ checked8401.1 (.cons _ _ _ _ _ checked8402.1 (.cons _ _ _ _ _ checked8403.1 (.cons _ _ _ _ _ checked8404.1 (.cons _ _ _ _ _ checked8405.1 (.cons _ _ _ _ _ checked8406.1 (.cons _ _ _ _ _ checked8407.1 (.cons _ _ _ _ _ checked8408.1 (.cons _ _ _ _ _ checked8409.1 (.cons _ _ _ _ _ checked8410.1 (.cons _ _ _ _ _ checked8411.1 (.cons _ _ _ _ _ checked8412.1 (.cons _ _ _ _ _ checked8413.1 (.cons _ _ _ _ _ checked8414.1 (.cons _ _ _ _ _ checked8415.1 (.cons _ _ _ _ _ checked8416.1 (.cons _ _ _ _ _ checked8417.1 (.cons _ _ _ _ _ checked8418.1 (.cons _ _ _ _ _ checked8419.1 (.cons _ _ _ _ _ checked8420.1 (.cons _ _ _ _ _ checked8421.1 (.cons _ _ _ _ _ checked8422.1 (.cons _ _ _ _ _ checked8423.1 (.cons _ _ _ _ _ checked8424.1 (.cons _ _ _ _ _ checked8425.1 (.cons _ _ _ _ _ checked8426.1 (.cons _ _ _ _ _ checked8427.1 (.cons _ _ _ _ _ checked8428.1 (.cons _ _ _ _ _ checked8429.1 (.cons _ _ _ _ _ checked8430.1 (.cons _ _ _ _ _ checked8431.1 (.cons _ _ _ _ _ checked8432.1 (.cons _ _ _ _ _ checked8433.1 (.cons _ _ _ _ _ checked8434.1 (.cons _ _ _ _ _ checked8435.1 (.cons _ _ _ _ _ checked8436.1 (.cons _ _ _ _ _ checked8437.1 (.cons _ _ _ _ _ checked8438.1 (.cons _ _ _ _ _ checked8439.1 (.cons _ _ _ _ _ checked8440.1 (.cons _ _ _ _ _ checked8441.1 (.cons _ _ _ _ _ checked8442.1 (.cons _ _ _ _ _ checked8443.1 (.cons _ _ _ _ _ checked8444.1 (.cons _ _ _ _ _ checked8445.1 (.cons _ _ _ _ _ checked8446.1 (.cons _ _ _ _ _ checked8447.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8502 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3640 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8384.2,checked8385.2,checked8386.2,checked8387.2,checked8388.2,checked8389.2,checked8390.2,checked8391.2,checked8392.2,checked8393.2,checked8394.2,checked8395.2,checked8396.2,checked8397.2,checked8398.2,checked8399.2,checked8400.2,checked8401.2,checked8402.2,checked8403.2,checked8404.2,checked8405.2,checked8406.2,checked8407.2,checked8408.2,checked8409.2,checked8410.2,checked8411.2,checked8412.2,checked8413.2,checked8414.2,checked8415.2,checked8416.2,checked8417.2,checked8418.2,checked8419.2,checked8420.2,checked8421.2,checked8422.2,checked8423.2,checked8424.2,checked8425.2,checked8426.2,checked8427.2,checked8428.2,checked8429.2,checked8430.2,checked8431.2,checked8432.2,checked8433.2,checked8434.2,checked8435.2,checked8436.2,checked8437.2,checked8438.2,checked8439.2,checked8440.2,checked8441.2,checked8442.2,checked8443.2,checked8444.2,checked8445.2,checked8446.2,checked8447.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup131
