import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup132
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8448 : List WordIR.Op := [.bxor 8489 8490]
def bytes8448 : Bytes := ("    let r0000212b: u32 = r00002129 ^ r0000212a;\n" : String).toByteArray.data.toList
theorem checked8448 : bytes8448=statementBytes 8491 (op8448.map lower) ∧ bytes8448.length=48 := by core033_kernel_decide
def op8449 : List WordIR.Op := [.badd 8486 8491]
def bytes8449 : Bytes := ("    let r0000212c: u32 = r00002126.wrapping_add(r0000212b);\n" : String).toByteArray.data.toList
theorem checked8449 : bytes8449=statementBytes 8492 (op8449.map lower) ∧ bytes8449.length=60 := by core033_kernel_decide
def op8450 : List WordIR.Op := [.badd 8481 8492]
def bytes8450 : Bytes := ("    let r0000212d: u32 = r00002121.wrapping_add(r0000212c);\n" : String).toByteArray.data.toList
theorem checked8450 : bytes8450=statementBytes 8493 (op8450.map lower) ∧ bytes8450.length=60 := by core033_kernel_decide
def op8451 : List WordIR.Op := [.badd 8385 8481]
def bytes8451 : Bytes := ("    let r0000212e: u32 = r000020c1.wrapping_add(r00002121);\n" : String).toByteArray.data.toList
theorem checked8451 : bytes8451=statementBytes 8494 (op8451.map lower) ∧ bytes8451.length=60 := by core033_kernel_decide
def op8452 : List WordIR.Op := [.rotr 8494 6]
def bytes8452 : Bytes := ("    let r0000212f: u32 = r0000212e.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8452 : bytes8452=statementBytes 8495 (op8452.map lower) ∧ bytes8452.length=65 := by core033_kernel_decide
def op8453 : List WordIR.Op := [.rotr 8494 11]
def bytes8453 : Bytes := ("    let r00002130: u32 = r0000212e.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8453 : bytes8453=statementBytes 8496 (op8453.map lower) ∧ bytes8453.length=65 := by core033_kernel_decide
def op8454 : List WordIR.Op := [.bxor 8495 8496]
def bytes8454 : Bytes := ("    let r00002131: u32 = r0000212f ^ r00002130;\n" : String).toByteArray.data.toList
theorem checked8454 : bytes8454=statementBytes 8497 (op8454.map lower) ∧ bytes8454.length=48 := by core033_kernel_decide
def op8455 : List WordIR.Op := [.rotr 8494 25]
def bytes8455 : Bytes := ("    let r00002132: u32 = r0000212e.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8455 : bytes8455=statementBytes 8498 (op8455.map lower) ∧ bytes8455.length=65 := by core033_kernel_decide
def op8456 : List WordIR.Op := [.bxor 8497 8498]
def bytes8456 : Bytes := ("    let r00002133: u32 = r00002131 ^ r00002132;\n" : String).toByteArray.data.toList
theorem checked8456 : bytes8456=statementBytes 8499 (op8456.map lower) ∧ bytes8456.length=48 := by core033_kernel_decide
def op8457 : List WordIR.Op := [.badd 8413 8499]
def bytes8457 : Bytes := ("    let r00002134: u32 = r000020dd.wrapping_add(r00002133);\n" : String).toByteArray.data.toList
theorem checked8457 : bytes8457=statementBytes 8500 (op8457.map lower) ∧ bytes8457.length=60 := by core033_kernel_decide
def op8458 : List WordIR.Op := [.band 8494 8467]
def bytes8458 : Bytes := ("    let r00002135: u32 = r0000212e & r00002113;\n" : String).toByteArray.data.toList
theorem checked8458 : bytes8458=statementBytes 8501 (op8458.map lower) ∧ bytes8458.length=48 := by core033_kernel_decide
def op8459 : List WordIR.Op := [.bnot 8494]
def bytes8459 : Bytes := ("    let r00002136: u32 = !r0000212e;\n" : String).toByteArray.data.toList
theorem checked8459 : bytes8459=statementBytes 8502 (op8459.map lower) ∧ bytes8459.length=37 := by core033_kernel_decide
def op8460 : List WordIR.Op := [.band 8502 8440]
def bytes8460 : Bytes := ("    let r00002137: u32 = r00002136 & r000020f8;\n" : String).toByteArray.data.toList
theorem checked8460 : bytes8460=statementBytes 8503 (op8460.map lower) ∧ bytes8460.length=48 := by core033_kernel_decide
def op8461 : List WordIR.Op := [.bxor 8501 8503]
def bytes8461 : Bytes := ("    let r00002138: u32 = r00002135 ^ r00002137;\n" : String).toByteArray.data.toList
theorem checked8461 : bytes8461=statementBytes 8504 (op8461.map lower) ∧ bytes8461.length=48 := by core033_kernel_decide
def op8462 : List WordIR.Op := [.badd 8500 8504]
def bytes8462 : Bytes := ("    let r00002139: u32 = r00002134.wrapping_add(r00002138);\n" : String).toByteArray.data.toList
theorem checked8462 : bytes8462=statementBytes 8505 (op8462.map lower) ∧ bytes8462.length=60 := by core033_kernel_decide
def op8463 : List WordIR.Op := [.literal (BitVec.ofNat 32 1537002063)]
def bytes8463 : Bytes := ("    let r0000213a: u32 = 0x5b9cca4f_u32;\n" : String).toByteArray.data.toList
theorem checked8463 : bytes8463=statementBytes 8506 (op8463.map lower) ∧ bytes8463.length=41 := by core033_kernel_decide
def op8464 : List WordIR.Op := [.badd 8505 8506]
def bytes8464 : Bytes := ("    let r0000213b: u32 = r00002139.wrapping_add(r0000213a);\n" : String).toByteArray.data.toList
theorem checked8464 : bytes8464=statementBytes 8507 (op8464.map lower) ∧ bytes8464.length=60 := by core033_kernel_decide
def op8465 : List WordIR.Op := [.badd 8507 6919]
def bytes8465 : Bytes := ("    let r0000213c: u32 = r0000213b.wrapping_add(r00001b07);\n" : String).toByteArray.data.toList
theorem checked8465 : bytes8465=statementBytes 8508 (op8465.map lower) ∧ bytes8465.length=60 := by core033_kernel_decide
def op8466 : List WordIR.Op := [.rotr 8493 2]
def bytes8466 : Bytes := ("    let r0000213d: u32 = r0000212d.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8466 : bytes8466=statementBytes 8509 (op8466.map lower) ∧ bytes8466.length=65 := by core033_kernel_decide
def op8467 : List WordIR.Op := [.rotr 8493 13]
def bytes8467 : Bytes := ("    let r0000213e: u32 = r0000212d.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8467 : bytes8467=statementBytes 8510 (op8467.map lower) ∧ bytes8467.length=65 := by core033_kernel_decide
def op8468 : List WordIR.Op := [.bxor 8509 8510]
def bytes8468 : Bytes := ("    let r0000213f: u32 = r0000213d ^ r0000213e;\n" : String).toByteArray.data.toList
theorem checked8468 : bytes8468=statementBytes 8511 (op8468.map lower) ∧ bytes8468.length=48 := by core033_kernel_decide
def op8469 : List WordIR.Op := [.rotr 8493 22]
def bytes8469 : Bytes := ("    let r00002140: u32 = r0000212d.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8469 : bytes8469=statementBytes 8512 (op8469.map lower) ∧ bytes8469.length=65 := by core033_kernel_decide
def op8470 : List WordIR.Op := [.bxor 8511 8512]
def bytes8470 : Bytes := ("    let r00002141: u32 = r0000213f ^ r00002140;\n" : String).toByteArray.data.toList
theorem checked8470 : bytes8470=statementBytes 8513 (op8470.map lower) ∧ bytes8470.length=48 := by core033_kernel_decide
def op8471 : List WordIR.Op := [.band 8493 8466]
def bytes8471 : Bytes := ("    let r00002142: u32 = r0000212d & r00002112;\n" : String).toByteArray.data.toList
theorem checked8471 : bytes8471=statementBytes 8514 (op8471.map lower) ∧ bytes8471.length=48 := by core033_kernel_decide
def op8472 : List WordIR.Op := [.band 8493 8439]
def bytes8472 : Bytes := ("    let r00002143: u32 = r0000212d & r000020f7;\n" : String).toByteArray.data.toList
theorem checked8472 : bytes8472=statementBytes 8515 (op8472.map lower) ∧ bytes8472.length=48 := by core033_kernel_decide
def op8473 : List WordIR.Op := [.bxor 8514 8515]
def bytes8473 : Bytes := ("    let r00002144: u32 = r00002142 ^ r00002143;\n" : String).toByteArray.data.toList
theorem checked8473 : bytes8473=statementBytes 8516 (op8473.map lower) ∧ bytes8473.length=48 := by core033_kernel_decide
def op8474 : List WordIR.Op := [.band 8466 8439]
def bytes8474 : Bytes := ("    let r00002145: u32 = r00002112 & r000020f7;\n" : String).toByteArray.data.toList
theorem checked8474 : bytes8474=statementBytes 8517 (op8474.map lower) ∧ bytes8474.length=48 := by core033_kernel_decide
def op8475 : List WordIR.Op := [.bxor 8516 8517]
def bytes8475 : Bytes := ("    let r00002146: u32 = r00002144 ^ r00002145;\n" : String).toByteArray.data.toList
theorem checked8475 : bytes8475=statementBytes 8518 (op8475.map lower) ∧ bytes8475.length=48 := by core033_kernel_decide
def op8476 : List WordIR.Op := [.badd 8513 8518]
def bytes8476 : Bytes := ("    let r00002147: u32 = r00002141.wrapping_add(r00002146);\n" : String).toByteArray.data.toList
theorem checked8476 : bytes8476=statementBytes 8519 (op8476.map lower) ∧ bytes8476.length=60 := by core033_kernel_decide
def op8477 : List WordIR.Op := [.badd 8508 8519]
def bytes8477 : Bytes := ("    let r00002148: u32 = r0000213c.wrapping_add(r00002147);\n" : String).toByteArray.data.toList
theorem checked8477 : bytes8477=statementBytes 8520 (op8477.map lower) ∧ bytes8477.length=60 := by core033_kernel_decide
def op8478 : List WordIR.Op := [.badd 8412 8508]
def bytes8478 : Bytes := ("    let r00002149: u32 = r000020dc.wrapping_add(r0000213c);\n" : String).toByteArray.data.toList
theorem checked8478 : bytes8478=statementBytes 8521 (op8478.map lower) ∧ bytes8478.length=60 := by core033_kernel_decide
def op8479 : List WordIR.Op := [.rotr 8521 6]
def bytes8479 : Bytes := ("    let r0000214a: u32 = r00002149.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8479 : bytes8479=statementBytes 8522 (op8479.map lower) ∧ bytes8479.length=65 := by core033_kernel_decide
def op8480 : List WordIR.Op := [.rotr 8521 11]
def bytes8480 : Bytes := ("    let r0000214b: u32 = r00002149.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8480 : bytes8480=statementBytes 8523 (op8480.map lower) ∧ bytes8480.length=65 := by core033_kernel_decide
def op8481 : List WordIR.Op := [.bxor 8522 8523]
def bytes8481 : Bytes := ("    let r0000214c: u32 = r0000214a ^ r0000214b;\n" : String).toByteArray.data.toList
theorem checked8481 : bytes8481=statementBytes 8524 (op8481.map lower) ∧ bytes8481.length=48 := by core033_kernel_decide
def op8482 : List WordIR.Op := [.rotr 8521 25]
def bytes8482 : Bytes := ("    let r0000214d: u32 = r00002149.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8482 : bytes8482=statementBytes 8525 (op8482.map lower) ∧ bytes8482.length=65 := by core033_kernel_decide
def op8483 : List WordIR.Op := [.bxor 8524 8525]
def bytes8483 : Bytes := ("    let r0000214e: u32 = r0000214c ^ r0000214d;\n" : String).toByteArray.data.toList
theorem checked8483 : bytes8483=statementBytes 8526 (op8483.map lower) ∧ bytes8483.length=48 := by core033_kernel_decide
def op8484 : List WordIR.Op := [.badd 8440 8526]
def bytes8484 : Bytes := ("    let r0000214f: u32 = r000020f8.wrapping_add(r0000214e);\n" : String).toByteArray.data.toList
theorem checked8484 : bytes8484=statementBytes 8527 (op8484.map lower) ∧ bytes8484.length=60 := by core033_kernel_decide
def op8485 : List WordIR.Op := [.band 8521 8494]
def bytes8485 : Bytes := ("    let r00002150: u32 = r00002149 & r0000212e;\n" : String).toByteArray.data.toList
theorem checked8485 : bytes8485=statementBytes 8528 (op8485.map lower) ∧ bytes8485.length=48 := by core033_kernel_decide
def op8486 : List WordIR.Op := [.bnot 8521]
def bytes8486 : Bytes := ("    let r00002151: u32 = !r00002149;\n" : String).toByteArray.data.toList
theorem checked8486 : bytes8486=statementBytes 8529 (op8486.map lower) ∧ bytes8486.length=37 := by core033_kernel_decide
def op8487 : List WordIR.Op := [.band 8529 8467]
def bytes8487 : Bytes := ("    let r00002152: u32 = r00002151 & r00002113;\n" : String).toByteArray.data.toList
theorem checked8487 : bytes8487=statementBytes 8530 (op8487.map lower) ∧ bytes8487.length=48 := by core033_kernel_decide
def op8488 : List WordIR.Op := [.bxor 8528 8530]
def bytes8488 : Bytes := ("    let r00002153: u32 = r00002150 ^ r00002152;\n" : String).toByteArray.data.toList
theorem checked8488 : bytes8488=statementBytes 8531 (op8488.map lower) ∧ bytes8488.length=48 := by core033_kernel_decide
def op8489 : List WordIR.Op := [.badd 8527 8531]
def bytes8489 : Bytes := ("    let r00002154: u32 = r0000214f.wrapping_add(r00002153);\n" : String).toByteArray.data.toList
theorem checked8489 : bytes8489=statementBytes 8532 (op8489.map lower) ∧ bytes8489.length=60 := by core033_kernel_decide
def op8490 : List WordIR.Op := [.literal (BitVec.ofNat 32 1747873779)]
def bytes8490 : Bytes := ("    let r00002155: u32 = 0x682e6ff3_u32;\n" : String).toByteArray.data.toList
theorem checked8490 : bytes8490=statementBytes 8533 (op8490.map lower) ∧ bytes8490.length=41 := by core033_kernel_decide
def op8491 : List WordIR.Op := [.badd 8532 8533]
def bytes8491 : Bytes := ("    let r00002156: u32 = r00002154.wrapping_add(r00002155);\n" : String).toByteArray.data.toList
theorem checked8491 : bytes8491=statementBytes 8534 (op8491.map lower) ∧ bytes8491.length=60 := by core033_kernel_decide
def op8492 : List WordIR.Op := [.badd 8534 6932]
def bytes8492 : Bytes := ("    let r00002157: u32 = r00002156.wrapping_add(r00001b14);\n" : String).toByteArray.data.toList
theorem checked8492 : bytes8492=statementBytes 8535 (op8492.map lower) ∧ bytes8492.length=60 := by core033_kernel_decide
def op8493 : List WordIR.Op := [.rotr 8520 2]
def bytes8493 : Bytes := ("    let r00002158: u32 = r00002148.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8493 : bytes8493=statementBytes 8536 (op8493.map lower) ∧ bytes8493.length=65 := by core033_kernel_decide
def op8494 : List WordIR.Op := [.rotr 8520 13]
def bytes8494 : Bytes := ("    let r00002159: u32 = r00002148.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8494 : bytes8494=statementBytes 8537 (op8494.map lower) ∧ bytes8494.length=65 := by core033_kernel_decide
def op8495 : List WordIR.Op := [.bxor 8536 8537]
def bytes8495 : Bytes := ("    let r0000215a: u32 = r00002158 ^ r00002159;\n" : String).toByteArray.data.toList
theorem checked8495 : bytes8495=statementBytes 8538 (op8495.map lower) ∧ bytes8495.length=48 := by core033_kernel_decide
def op8496 : List WordIR.Op := [.rotr 8520 22]
def bytes8496 : Bytes := ("    let r0000215b: u32 = r00002148.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8496 : bytes8496=statementBytes 8539 (op8496.map lower) ∧ bytes8496.length=65 := by core033_kernel_decide
def op8497 : List WordIR.Op := [.bxor 8538 8539]
def bytes8497 : Bytes := ("    let r0000215c: u32 = r0000215a ^ r0000215b;\n" : String).toByteArray.data.toList
theorem checked8497 : bytes8497=statementBytes 8540 (op8497.map lower) ∧ bytes8497.length=48 := by core033_kernel_decide
def op8498 : List WordIR.Op := [.band 8520 8493]
def bytes8498 : Bytes := ("    let r0000215d: u32 = r00002148 & r0000212d;\n" : String).toByteArray.data.toList
theorem checked8498 : bytes8498=statementBytes 8541 (op8498.map lower) ∧ bytes8498.length=48 := by core033_kernel_decide
def op8499 : List WordIR.Op := [.band 8520 8466]
def bytes8499 : Bytes := ("    let r0000215e: u32 = r00002148 & r00002112;\n" : String).toByteArray.data.toList
theorem checked8499 : bytes8499=statementBytes 8542 (op8499.map lower) ∧ bytes8499.length=48 := by core033_kernel_decide
def op8500 : List WordIR.Op := [.bxor 8541 8542]
def bytes8500 : Bytes := ("    let r0000215f: u32 = r0000215d ^ r0000215e;\n" : String).toByteArray.data.toList
theorem checked8500 : bytes8500=statementBytes 8543 (op8500.map lower) ∧ bytes8500.length=48 := by core033_kernel_decide
def op8501 : List WordIR.Op := [.band 8493 8466]
def bytes8501 : Bytes := ("    let r00002160: u32 = r0000212d & r00002112;\n" : String).toByteArray.data.toList
theorem checked8501 : bytes8501=statementBytes 8544 (op8501.map lower) ∧ bytes8501.length=48 := by core033_kernel_decide
def op8502 : List WordIR.Op := [.bxor 8543 8544]
def bytes8502 : Bytes := ("    let r00002161: u32 = r0000215f ^ r00002160;\n" : String).toByteArray.data.toList
theorem checked8502 : bytes8502=statementBytes 8545 (op8502.map lower) ∧ bytes8502.length=48 := by core033_kernel_decide
def op8503 : List WordIR.Op := [.badd 8540 8545]
def bytes8503 : Bytes := ("    let r00002162: u32 = r0000215c.wrapping_add(r00002161);\n" : String).toByteArray.data.toList
theorem checked8503 : bytes8503=statementBytes 8546 (op8503.map lower) ∧ bytes8503.length=60 := by core033_kernel_decide
def op8504 : List WordIR.Op := [.badd 8535 8546]
def bytes8504 : Bytes := ("    let r00002163: u32 = r00002157.wrapping_add(r00002162);\n" : String).toByteArray.data.toList
theorem checked8504 : bytes8504=statementBytes 8547 (op8504.map lower) ∧ bytes8504.length=60 := by core033_kernel_decide
def op8505 : List WordIR.Op := [.badd 8439 8535]
def bytes8505 : Bytes := ("    let r00002164: u32 = r000020f7.wrapping_add(r00002157);\n" : String).toByteArray.data.toList
theorem checked8505 : bytes8505=statementBytes 8548 (op8505.map lower) ∧ bytes8505.length=60 := by core033_kernel_decide
def op8506 : List WordIR.Op := [.rotr 8548 6]
def bytes8506 : Bytes := ("    let r00002165: u32 = r00002164.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8506 : bytes8506=statementBytes 8549 (op8506.map lower) ∧ bytes8506.length=65 := by core033_kernel_decide
def op8507 : List WordIR.Op := [.rotr 8548 11]
def bytes8507 : Bytes := ("    let r00002166: u32 = r00002164.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8507 : bytes8507=statementBytes 8550 (op8507.map lower) ∧ bytes8507.length=65 := by core033_kernel_decide
def op8508 : List WordIR.Op := [.bxor 8549 8550]
def bytes8508 : Bytes := ("    let r00002167: u32 = r00002165 ^ r00002166;\n" : String).toByteArray.data.toList
theorem checked8508 : bytes8508=statementBytes 8551 (op8508.map lower) ∧ bytes8508.length=48 := by core033_kernel_decide
def op8509 : List WordIR.Op := [.rotr 8548 25]
def bytes8509 : Bytes := ("    let r00002168: u32 = r00002164.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8509 : bytes8509=statementBytes 8552 (op8509.map lower) ∧ bytes8509.length=65 := by core033_kernel_decide
def op8510 : List WordIR.Op := [.bxor 8551 8552]
def bytes8510 : Bytes := ("    let r00002169: u32 = r00002167 ^ r00002168;\n" : String).toByteArray.data.toList
theorem checked8510 : bytes8510=statementBytes 8553 (op8510.map lower) ∧ bytes8510.length=48 := by core033_kernel_decide
def op8511 : List WordIR.Op := [.badd 8467 8553]
def bytes8511 : Bytes := ("    let r0000216a: u32 = r00002113.wrapping_add(r00002169);\n" : String).toByteArray.data.toList
theorem checked8511 : bytes8511=statementBytes 8554 (op8511.map lower) ∧ bytes8511.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8448,op8449,op8450,op8451,op8452,op8453,op8454,op8455,op8456,op8457,op8458,op8459,op8460,op8461,op8462,op8463,op8464,op8465,op8466,op8467,op8468,op8469,op8470,op8471,op8472,op8473,op8474,op8475,op8476,op8477,op8478,op8479,op8480,op8481,op8482,op8483,op8484,op8485,op8486,op8487,op8488,op8489,op8490,op8491,op8492,op8493,op8494,op8495,op8496,op8497,op8498,op8499,op8500,op8501,op8502,op8503,op8504,op8505,op8506,op8507,op8508,op8509,op8510,op8511]
def chunks : List Bytes := [bytes8448,bytes8449,bytes8450,bytes8451,bytes8452,bytes8453,bytes8454,bytes8455,bytes8456,bytes8457,bytes8458,bytes8459,bytes8460,bytes8461,bytes8462,bytes8463,bytes8464,bytes8465,bytes8466,bytes8467,bytes8468,bytes8469,bytes8470,bytes8471,bytes8472,bytes8473,bytes8474,bytes8475,bytes8476,bytes8477,bytes8478,bytes8479,bytes8480,bytes8481,bytes8482,bytes8483,bytes8484,bytes8485,bytes8486,bytes8487,bytes8488,bytes8489,bytes8490,bytes8491,bytes8492,bytes8493,bytes8494,bytes8495,bytes8496,bytes8497,bytes8498,bytes8499,bytes8500,bytes8501,bytes8502,bytes8503,bytes8504,bytes8505,bytes8506,bytes8507,bytes8508,bytes8509,bytes8510,bytes8511]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8491 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8448.1 (.cons _ _ _ _ _ checked8449.1 (.cons _ _ _ _ _ checked8450.1 (.cons _ _ _ _ _ checked8451.1 (.cons _ _ _ _ _ checked8452.1 (.cons _ _ _ _ _ checked8453.1 (.cons _ _ _ _ _ checked8454.1 (.cons _ _ _ _ _ checked8455.1 (.cons _ _ _ _ _ checked8456.1 (.cons _ _ _ _ _ checked8457.1 (.cons _ _ _ _ _ checked8458.1 (.cons _ _ _ _ _ checked8459.1 (.cons _ _ _ _ _ checked8460.1 (.cons _ _ _ _ _ checked8461.1 (.cons _ _ _ _ _ checked8462.1 (.cons _ _ _ _ _ checked8463.1 (.cons _ _ _ _ _ checked8464.1 (.cons _ _ _ _ _ checked8465.1 (.cons _ _ _ _ _ checked8466.1 (.cons _ _ _ _ _ checked8467.1 (.cons _ _ _ _ _ checked8468.1 (.cons _ _ _ _ _ checked8469.1 (.cons _ _ _ _ _ checked8470.1 (.cons _ _ _ _ _ checked8471.1 (.cons _ _ _ _ _ checked8472.1 (.cons _ _ _ _ _ checked8473.1 (.cons _ _ _ _ _ checked8474.1 (.cons _ _ _ _ _ checked8475.1 (.cons _ _ _ _ _ checked8476.1 (.cons _ _ _ _ _ checked8477.1 (.cons _ _ _ _ _ checked8478.1 (.cons _ _ _ _ _ checked8479.1 (.cons _ _ _ _ _ checked8480.1 (.cons _ _ _ _ _ checked8481.1 (.cons _ _ _ _ _ checked8482.1 (.cons _ _ _ _ _ checked8483.1 (.cons _ _ _ _ _ checked8484.1 (.cons _ _ _ _ _ checked8485.1 (.cons _ _ _ _ _ checked8486.1 (.cons _ _ _ _ _ checked8487.1 (.cons _ _ _ _ _ checked8488.1 (.cons _ _ _ _ _ checked8489.1 (.cons _ _ _ _ _ checked8490.1 (.cons _ _ _ _ _ checked8491.1 (.cons _ _ _ _ _ checked8492.1 (.cons _ _ _ _ _ checked8493.1 (.cons _ _ _ _ _ checked8494.1 (.cons _ _ _ _ _ checked8495.1 (.cons _ _ _ _ _ checked8496.1 (.cons _ _ _ _ _ checked8497.1 (.cons _ _ _ _ _ checked8498.1 (.cons _ _ _ _ _ checked8499.1 (.cons _ _ _ _ _ checked8500.1 (.cons _ _ _ _ _ checked8501.1 (.cons _ _ _ _ _ checked8502.1 (.cons _ _ _ _ _ checked8503.1 (.cons _ _ _ _ _ checked8504.1 (.cons _ _ _ _ _ checked8505.1 (.cons _ _ _ _ _ checked8506.1 (.cons _ _ _ _ _ checked8507.1 (.cons _ _ _ _ _ checked8508.1 (.cons _ _ _ _ _ checked8509.1 (.cons _ _ _ _ _ checked8510.1 (.cons _ _ _ _ _ checked8511.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8491 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3507 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8448.2,checked8449.2,checked8450.2,checked8451.2,checked8452.2,checked8453.2,checked8454.2,checked8455.2,checked8456.2,checked8457.2,checked8458.2,checked8459.2,checked8460.2,checked8461.2,checked8462.2,checked8463.2,checked8464.2,checked8465.2,checked8466.2,checked8467.2,checked8468.2,checked8469.2,checked8470.2,checked8471.2,checked8472.2,checked8473.2,checked8474.2,checked8475.2,checked8476.2,checked8477.2,checked8478.2,checked8479.2,checked8480.2,checked8481.2,checked8482.2,checked8483.2,checked8484.2,checked8485.2,checked8486.2,checked8487.2,checked8488.2,checked8489.2,checked8490.2,checked8491.2,checked8492.2,checked8493.2,checked8494.2,checked8495.2,checked8496.2,checked8497.2,checked8498.2,checked8499.2,checked8500.2,checked8501.2,checked8502.2,checked8503.2,checked8504.2,checked8505.2,checked8506.2,checked8507.2,checked8508.2,checked8509.2,checked8510.2,checked8511.2]
  decide
end ArtifactFrameHashControllerGroup132
