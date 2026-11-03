import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup132
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8448 : List WordIR.Op := [.badd 8565 8482]
def bytes8448 : Bytes := ("    let r00002176: u32 = r00002175.wrapping_add(r00002122);\n" : String).toByteArray.data.toList
theorem checked8448 : bytes8448=statementBytes 8566 (op8448.map lower) ∧ bytes8448.length=60 := by core033_kernel_decide
def op8449 : List WordIR.Op := [.rotr 8378 7]
def bytes8449 : Bytes := ("    let r00002177: u32 = r000020ba.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8449 : bytes8449=statementBytes 8567 (op8449.map lower) ∧ bytes8449.length=65 := by core033_kernel_decide
def op8450 : List WordIR.Op := [.rotr 8378 18]
def bytes8450 : Bytes := ("    let r00002178: u32 = r000020ba.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8450 : bytes8450=statementBytes 8568 (op8450.map lower) ∧ bytes8450.length=65 := by core033_kernel_decide
def op8451 : List WordIR.Op := [.bxor 8567 8568]
def bytes8451 : Bytes := ("    let r00002179: u32 = r00002177 ^ r00002178;\n" : String).toByteArray.data.toList
theorem checked8451 : bytes8451=statementBytes 8569 (op8451.map lower) ∧ bytes8451.length=48 := by core033_kernel_decide
def op8452 : List WordIR.Op := [.shr 8378 3]
def bytes8452 : Bytes := ("    let r0000217a: u32 = r000020ba >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8452 : bytes8452=statementBytes 8570 (op8452.map lower) ∧ bytes8452.length=54 := by core033_kernel_decide
def op8453 : List WordIR.Op := [.bxor 8569 8570]
def bytes8453 : Bytes := ("    let r0000217b: u32 = r00002179 ^ r0000217a;\n" : String).toByteArray.data.toList
theorem checked8453 : bytes8453=statementBytes 8571 (op8453.map lower) ∧ bytes8453.length=48 := by core033_kernel_decide
def op8454 : List WordIR.Op := [.badd 8566 8571]
def bytes8454 : Bytes := ("    let r0000217c: u32 = r00002176.wrapping_add(r0000217b);\n" : String).toByteArray.data.toList
theorem checked8454 : bytes8454=statementBytes 8572 (op8454.map lower) ∧ bytes8454.length=60 := by core033_kernel_decide
def op8455 : List WordIR.Op := [.badd 8572 8365]
def bytes8455 : Bytes := ("    let r0000217d: u32 = r0000217c.wrapping_add(r000020ad);\n" : String).toByteArray.data.toList
theorem checked8455 : bytes8455=statementBytes 8573 (op8455.map lower) ∧ bytes8455.length=60 := by core033_kernel_decide
def op8456 : List WordIR.Op := [.rotr 8560 17]
def bytes8456 : Bytes := ("    let r0000217e: u32 = r00002170.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8456 : bytes8456=statementBytes 8574 (op8456.map lower) ∧ bytes8456.length=65 := by core033_kernel_decide
def op8457 : List WordIR.Op := [.rotr 8560 19]
def bytes8457 : Bytes := ("    let r0000217f: u32 = r00002170.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8457 : bytes8457=statementBytes 8575 (op8457.map lower) ∧ bytes8457.length=65 := by core033_kernel_decide
def op8458 : List WordIR.Op := [.bxor 8574 8575]
def bytes8458 : Bytes := ("    let r00002180: u32 = r0000217e ^ r0000217f;\n" : String).toByteArray.data.toList
theorem checked8458 : bytes8458=statementBytes 8576 (op8458.map lower) ∧ bytes8458.length=48 := by core033_kernel_decide
def op8459 : List WordIR.Op := [.shr 8560 10]
def bytes8459 : Bytes := ("    let r00002181: u32 = r00002170 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8459 : bytes8459=statementBytes 8577 (op8459.map lower) ∧ bytes8459.length=54 := by core033_kernel_decide
def op8460 : List WordIR.Op := [.bxor 8576 8577]
def bytes8460 : Bytes := ("    let r00002182: u32 = r00002180 ^ r00002181;\n" : String).toByteArray.data.toList
theorem checked8460 : bytes8460=statementBytes 8578 (op8460.map lower) ∧ bytes8460.length=48 := by core033_kernel_decide
def op8461 : List WordIR.Op := [.badd 8578 8495]
def bytes8461 : Bytes := ("    let r00002183: u32 = r00002182.wrapping_add(r0000212f);\n" : String).toByteArray.data.toList
theorem checked8461 : bytes8461=statementBytes 8579 (op8461.map lower) ∧ bytes8461.length=60 := by core033_kernel_decide
def op8462 : List WordIR.Op := [.rotr 8391 7]
def bytes8462 : Bytes := ("    let r00002184: u32 = r000020c7.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8462 : bytes8462=statementBytes 8580 (op8462.map lower) ∧ bytes8462.length=65 := by core033_kernel_decide
def op8463 : List WordIR.Op := [.rotr 8391 18]
def bytes8463 : Bytes := ("    let r00002185: u32 = r000020c7.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8463 : bytes8463=statementBytes 8581 (op8463.map lower) ∧ bytes8463.length=65 := by core033_kernel_decide
def op8464 : List WordIR.Op := [.bxor 8580 8581]
def bytes8464 : Bytes := ("    let r00002186: u32 = r00002184 ^ r00002185;\n" : String).toByteArray.data.toList
theorem checked8464 : bytes8464=statementBytes 8582 (op8464.map lower) ∧ bytes8464.length=48 := by core033_kernel_decide
def op8465 : List WordIR.Op := [.shr 8391 3]
def bytes8465 : Bytes := ("    let r00002187: u32 = r000020c7 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8465 : bytes8465=statementBytes 8583 (op8465.map lower) ∧ bytes8465.length=54 := by core033_kernel_decide
def op8466 : List WordIR.Op := [.bxor 8582 8583]
def bytes8466 : Bytes := ("    let r00002188: u32 = r00002186 ^ r00002187;\n" : String).toByteArray.data.toList
theorem checked8466 : bytes8466=statementBytes 8584 (op8466.map lower) ∧ bytes8466.length=48 := by core033_kernel_decide
def op8467 : List WordIR.Op := [.badd 8579 8584]
def bytes8467 : Bytes := ("    let r00002189: u32 = r00002183.wrapping_add(r00002188);\n" : String).toByteArray.data.toList
theorem checked8467 : bytes8467=statementBytes 8585 (op8467.map lower) ∧ bytes8467.length=60 := by core033_kernel_decide
def op8468 : List WordIR.Op := [.badd 8585 8378]
def bytes8468 : Bytes := ("    let r0000218a: u32 = r00002189.wrapping_add(r000020ba);\n" : String).toByteArray.data.toList
theorem checked8468 : bytes8468=statementBytes 8586 (op8468.map lower) ∧ bytes8468.length=60 := by core033_kernel_decide
def op8469 : List WordIR.Op := [.rotr 8573 17]
def bytes8469 : Bytes := ("    let r0000218b: u32 = r0000217d.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8469 : bytes8469=statementBytes 8587 (op8469.map lower) ∧ bytes8469.length=65 := by core033_kernel_decide
def op8470 : List WordIR.Op := [.rotr 8573 19]
def bytes8470 : Bytes := ("    let r0000218c: u32 = r0000217d.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8470 : bytes8470=statementBytes 8588 (op8470.map lower) ∧ bytes8470.length=65 := by core033_kernel_decide
def op8471 : List WordIR.Op := [.bxor 8587 8588]
def bytes8471 : Bytes := ("    let r0000218d: u32 = r0000218b ^ r0000218c;\n" : String).toByteArray.data.toList
theorem checked8471 : bytes8471=statementBytes 8589 (op8471.map lower) ∧ bytes8471.length=48 := by core033_kernel_decide
def op8472 : List WordIR.Op := [.shr 8573 10]
def bytes8472 : Bytes := ("    let r0000218e: u32 = r0000217d >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8472 : bytes8472=statementBytes 8590 (op8472.map lower) ∧ bytes8472.length=54 := by core033_kernel_decide
def op8473 : List WordIR.Op := [.bxor 8589 8590]
def bytes8473 : Bytes := ("    let r0000218f: u32 = r0000218d ^ r0000218e;\n" : String).toByteArray.data.toList
theorem checked8473 : bytes8473=statementBytes 8591 (op8473.map lower) ∧ bytes8473.length=48 := by core033_kernel_decide
def op8474 : List WordIR.Op := [.badd 8591 8508]
def bytes8474 : Bytes := ("    let r00002190: u32 = r0000218f.wrapping_add(r0000213c);\n" : String).toByteArray.data.toList
theorem checked8474 : bytes8474=statementBytes 8592 (op8474.map lower) ∧ bytes8474.length=60 := by core033_kernel_decide
def op8475 : List WordIR.Op := [.rotr 8404 7]
def bytes8475 : Bytes := ("    let r00002191: u32 = r000020d4.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8475 : bytes8475=statementBytes 8593 (op8475.map lower) ∧ bytes8475.length=65 := by core033_kernel_decide
def op8476 : List WordIR.Op := [.rotr 8404 18]
def bytes8476 : Bytes := ("    let r00002192: u32 = r000020d4.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8476 : bytes8476=statementBytes 8594 (op8476.map lower) ∧ bytes8476.length=65 := by core033_kernel_decide
def op8477 : List WordIR.Op := [.bxor 8593 8594]
def bytes8477 : Bytes := ("    let r00002193: u32 = r00002191 ^ r00002192;\n" : String).toByteArray.data.toList
theorem checked8477 : bytes8477=statementBytes 8595 (op8477.map lower) ∧ bytes8477.length=48 := by core033_kernel_decide
def op8478 : List WordIR.Op := [.shr 8404 3]
def bytes8478 : Bytes := ("    let r00002194: u32 = r000020d4 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8478 : bytes8478=statementBytes 8596 (op8478.map lower) ∧ bytes8478.length=54 := by core033_kernel_decide
def op8479 : List WordIR.Op := [.bxor 8595 8596]
def bytes8479 : Bytes := ("    let r00002195: u32 = r00002193 ^ r00002194;\n" : String).toByteArray.data.toList
theorem checked8479 : bytes8479=statementBytes 8597 (op8479.map lower) ∧ bytes8479.length=48 := by core033_kernel_decide
def op8480 : List WordIR.Op := [.badd 8592 8597]
def bytes8480 : Bytes := ("    let r00002196: u32 = r00002190.wrapping_add(r00002195);\n" : String).toByteArray.data.toList
theorem checked8480 : bytes8480=statementBytes 8598 (op8480.map lower) ∧ bytes8480.length=60 := by core033_kernel_decide
def op8481 : List WordIR.Op := [.badd 8598 8391]
def bytes8481 : Bytes := ("    let r00002197: u32 = r00002196.wrapping_add(r000020c7);\n" : String).toByteArray.data.toList
theorem checked8481 : bytes8481=statementBytes 8599 (op8481.map lower) ∧ bytes8481.length=60 := by core033_kernel_decide
def op8482 : List WordIR.Op := [.rotr 8586 17]
def bytes8482 : Bytes := ("    let r00002198: u32 = r0000218a.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8482 : bytes8482=statementBytes 8600 (op8482.map lower) ∧ bytes8482.length=65 := by core033_kernel_decide
def op8483 : List WordIR.Op := [.rotr 8586 19]
def bytes8483 : Bytes := ("    let r00002199: u32 = r0000218a.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8483 : bytes8483=statementBytes 8601 (op8483.map lower) ∧ bytes8483.length=65 := by core033_kernel_decide
def op8484 : List WordIR.Op := [.bxor 8600 8601]
def bytes8484 : Bytes := ("    let r0000219a: u32 = r00002198 ^ r00002199;\n" : String).toByteArray.data.toList
theorem checked8484 : bytes8484=statementBytes 8602 (op8484.map lower) ∧ bytes8484.length=48 := by core033_kernel_decide
def op8485 : List WordIR.Op := [.shr 8586 10]
def bytes8485 : Bytes := ("    let r0000219b: u32 = r0000218a >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8485 : bytes8485=statementBytes 8603 (op8485.map lower) ∧ bytes8485.length=54 := by core033_kernel_decide
def op8486 : List WordIR.Op := [.bxor 8602 8603]
def bytes8486 : Bytes := ("    let r0000219c: u32 = r0000219a ^ r0000219b;\n" : String).toByteArray.data.toList
theorem checked8486 : bytes8486=statementBytes 8604 (op8486.map lower) ∧ bytes8486.length=48 := by core033_kernel_decide
def op8487 : List WordIR.Op := [.badd 8604 8521]
def bytes8487 : Bytes := ("    let r0000219d: u32 = r0000219c.wrapping_add(r00002149);\n" : String).toByteArray.data.toList
theorem checked8487 : bytes8487=statementBytes 8605 (op8487.map lower) ∧ bytes8487.length=60 := by core033_kernel_decide
def op8488 : List WordIR.Op := [.rotr 8417 7]
def bytes8488 : Bytes := ("    let r0000219e: u32 = r000020e1.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8488 : bytes8488=statementBytes 8606 (op8488.map lower) ∧ bytes8488.length=65 := by core033_kernel_decide
def op8489 : List WordIR.Op := [.rotr 8417 18]
def bytes8489 : Bytes := ("    let r0000219f: u32 = r000020e1.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8489 : bytes8489=statementBytes 8607 (op8489.map lower) ∧ bytes8489.length=65 := by core033_kernel_decide
def op8490 : List WordIR.Op := [.bxor 8606 8607]
def bytes8490 : Bytes := ("    let r000021a0: u32 = r0000219e ^ r0000219f;\n" : String).toByteArray.data.toList
theorem checked8490 : bytes8490=statementBytes 8608 (op8490.map lower) ∧ bytes8490.length=48 := by core033_kernel_decide
def op8491 : List WordIR.Op := [.shr 8417 3]
def bytes8491 : Bytes := ("    let r000021a1: u32 = r000020e1 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8491 : bytes8491=statementBytes 8609 (op8491.map lower) ∧ bytes8491.length=54 := by core033_kernel_decide
def op8492 : List WordIR.Op := [.bxor 8608 8609]
def bytes8492 : Bytes := ("    let r000021a2: u32 = r000021a0 ^ r000021a1;\n" : String).toByteArray.data.toList
theorem checked8492 : bytes8492=statementBytes 8610 (op8492.map lower) ∧ bytes8492.length=48 := by core033_kernel_decide
def op8493 : List WordIR.Op := [.badd 8605 8610]
def bytes8493 : Bytes := ("    let r000021a3: u32 = r0000219d.wrapping_add(r000021a2);\n" : String).toByteArray.data.toList
theorem checked8493 : bytes8493=statementBytes 8611 (op8493.map lower) ∧ bytes8493.length=60 := by core033_kernel_decide
def op8494 : List WordIR.Op := [.badd 8611 8404]
def bytes8494 : Bytes := ("    let r000021a4: u32 = r000021a3.wrapping_add(r000020d4);\n" : String).toByteArray.data.toList
theorem checked8494 : bytes8494=statementBytes 8612 (op8494.map lower) ∧ bytes8494.length=60 := by core033_kernel_decide
def op8495 : List WordIR.Op := [.rotr 8599 17]
def bytes8495 : Bytes := ("    let r000021a5: u32 = r00002197.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8495 : bytes8495=statementBytes 8613 (op8495.map lower) ∧ bytes8495.length=65 := by core033_kernel_decide
def op8496 : List WordIR.Op := [.rotr 8599 19]
def bytes8496 : Bytes := ("    let r000021a6: u32 = r00002197.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8496 : bytes8496=statementBytes 8614 (op8496.map lower) ∧ bytes8496.length=65 := by core033_kernel_decide
def op8497 : List WordIR.Op := [.bxor 8613 8614]
def bytes8497 : Bytes := ("    let r000021a7: u32 = r000021a5 ^ r000021a6;\n" : String).toByteArray.data.toList
theorem checked8497 : bytes8497=statementBytes 8615 (op8497.map lower) ∧ bytes8497.length=48 := by core033_kernel_decide
def op8498 : List WordIR.Op := [.shr 8599 10]
def bytes8498 : Bytes := ("    let r000021a8: u32 = r00002197 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8498 : bytes8498=statementBytes 8616 (op8498.map lower) ∧ bytes8498.length=54 := by core033_kernel_decide
def op8499 : List WordIR.Op := [.bxor 8615 8616]
def bytes8499 : Bytes := ("    let r000021a9: u32 = r000021a7 ^ r000021a8;\n" : String).toByteArray.data.toList
theorem checked8499 : bytes8499=statementBytes 8617 (op8499.map lower) ∧ bytes8499.length=48 := by core033_kernel_decide
def op8500 : List WordIR.Op := [.badd 8617 8534]
def bytes8500 : Bytes := ("    let r000021aa: u32 = r000021a9.wrapping_add(r00002156);\n" : String).toByteArray.data.toList
theorem checked8500 : bytes8500=statementBytes 8618 (op8500.map lower) ∧ bytes8500.length=60 := by core033_kernel_decide
def op8501 : List WordIR.Op := [.rotr 8430 7]
def bytes8501 : Bytes := ("    let r000021ab: u32 = r000020ee.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8501 : bytes8501=statementBytes 8619 (op8501.map lower) ∧ bytes8501.length=65 := by core033_kernel_decide
def op8502 : List WordIR.Op := [.rotr 8430 18]
def bytes8502 : Bytes := ("    let r000021ac: u32 = r000020ee.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8502 : bytes8502=statementBytes 8620 (op8502.map lower) ∧ bytes8502.length=65 := by core033_kernel_decide
def op8503 : List WordIR.Op := [.bxor 8619 8620]
def bytes8503 : Bytes := ("    let r000021ad: u32 = r000021ab ^ r000021ac;\n" : String).toByteArray.data.toList
theorem checked8503 : bytes8503=statementBytes 8621 (op8503.map lower) ∧ bytes8503.length=48 := by core033_kernel_decide
def op8504 : List WordIR.Op := [.shr 8430 3]
def bytes8504 : Bytes := ("    let r000021ae: u32 = r000020ee >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8504 : bytes8504=statementBytes 8622 (op8504.map lower) ∧ bytes8504.length=54 := by core033_kernel_decide
def op8505 : List WordIR.Op := [.bxor 8621 8622]
def bytes8505 : Bytes := ("    let r000021af: u32 = r000021ad ^ r000021ae;\n" : String).toByteArray.data.toList
theorem checked8505 : bytes8505=statementBytes 8623 (op8505.map lower) ∧ bytes8505.length=48 := by core033_kernel_decide
def op8506 : List WordIR.Op := [.badd 8618 8623]
def bytes8506 : Bytes := ("    let r000021b0: u32 = r000021aa.wrapping_add(r000021af);\n" : String).toByteArray.data.toList
theorem checked8506 : bytes8506=statementBytes 8624 (op8506.map lower) ∧ bytes8506.length=60 := by core033_kernel_decide
def op8507 : List WordIR.Op := [.badd 8624 8417]
def bytes8507 : Bytes := ("    let r000021b1: u32 = r000021b0.wrapping_add(r000020e1);\n" : String).toByteArray.data.toList
theorem checked8507 : bytes8507=statementBytes 8625 (op8507.map lower) ∧ bytes8507.length=60 := by core033_kernel_decide
def op8508 : List WordIR.Op := [.rotr 8612 17]
def bytes8508 : Bytes := ("    let r000021b2: u32 = r000021a4.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8508 : bytes8508=statementBytes 8626 (op8508.map lower) ∧ bytes8508.length=65 := by core033_kernel_decide
def op8509 : List WordIR.Op := [.rotr 8612 19]
def bytes8509 : Bytes := ("    let r000021b3: u32 = r000021a4.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8509 : bytes8509=statementBytes 8627 (op8509.map lower) ∧ bytes8509.length=65 := by core033_kernel_decide
def op8510 : List WordIR.Op := [.bxor 8626 8627]
def bytes8510 : Bytes := ("    let r000021b4: u32 = r000021b2 ^ r000021b3;\n" : String).toByteArray.data.toList
theorem checked8510 : bytes8510=statementBytes 8628 (op8510.map lower) ∧ bytes8510.length=48 := by core033_kernel_decide
def op8511 : List WordIR.Op := [.shr 8612 10]
def bytes8511 : Bytes := ("    let r000021b5: u32 = r000021a4 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8511 : bytes8511=statementBytes 8629 (op8511.map lower) ∧ bytes8511.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8448,op8449,op8450,op8451,op8452,op8453,op8454,op8455,op8456,op8457,op8458,op8459,op8460,op8461,op8462,op8463,op8464,op8465,op8466,op8467,op8468,op8469,op8470,op8471,op8472,op8473,op8474,op8475,op8476,op8477,op8478,op8479,op8480,op8481,op8482,op8483,op8484,op8485,op8486,op8487,op8488,op8489,op8490,op8491,op8492,op8493,op8494,op8495,op8496,op8497,op8498,op8499,op8500,op8501,op8502,op8503,op8504,op8505,op8506,op8507,op8508,op8509,op8510,op8511]
def chunks : List Bytes := [bytes8448,bytes8449,bytes8450,bytes8451,bytes8452,bytes8453,bytes8454,bytes8455,bytes8456,bytes8457,bytes8458,bytes8459,bytes8460,bytes8461,bytes8462,bytes8463,bytes8464,bytes8465,bytes8466,bytes8467,bytes8468,bytes8469,bytes8470,bytes8471,bytes8472,bytes8473,bytes8474,bytes8475,bytes8476,bytes8477,bytes8478,bytes8479,bytes8480,bytes8481,bytes8482,bytes8483,bytes8484,bytes8485,bytes8486,bytes8487,bytes8488,bytes8489,bytes8490,bytes8491,bytes8492,bytes8493,bytes8494,bytes8495,bytes8496,bytes8497,bytes8498,bytes8499,bytes8500,bytes8501,bytes8502,bytes8503,bytes8504,bytes8505,bytes8506,bytes8507,bytes8508,bytes8509,bytes8510,bytes8511]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8566 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8448.1 (.cons _ _ _ _ _ checked8449.1 (.cons _ _ _ _ _ checked8450.1 (.cons _ _ _ _ _ checked8451.1 (.cons _ _ _ _ _ checked8452.1 (.cons _ _ _ _ _ checked8453.1 (.cons _ _ _ _ _ checked8454.1 (.cons _ _ _ _ _ checked8455.1 (.cons _ _ _ _ _ checked8456.1 (.cons _ _ _ _ _ checked8457.1 (.cons _ _ _ _ _ checked8458.1 (.cons _ _ _ _ _ checked8459.1 (.cons _ _ _ _ _ checked8460.1 (.cons _ _ _ _ _ checked8461.1 (.cons _ _ _ _ _ checked8462.1 (.cons _ _ _ _ _ checked8463.1 (.cons _ _ _ _ _ checked8464.1 (.cons _ _ _ _ _ checked8465.1 (.cons _ _ _ _ _ checked8466.1 (.cons _ _ _ _ _ checked8467.1 (.cons _ _ _ _ _ checked8468.1 (.cons _ _ _ _ _ checked8469.1 (.cons _ _ _ _ _ checked8470.1 (.cons _ _ _ _ _ checked8471.1 (.cons _ _ _ _ _ checked8472.1 (.cons _ _ _ _ _ checked8473.1 (.cons _ _ _ _ _ checked8474.1 (.cons _ _ _ _ _ checked8475.1 (.cons _ _ _ _ _ checked8476.1 (.cons _ _ _ _ _ checked8477.1 (.cons _ _ _ _ _ checked8478.1 (.cons _ _ _ _ _ checked8479.1 (.cons _ _ _ _ _ checked8480.1 (.cons _ _ _ _ _ checked8481.1 (.cons _ _ _ _ _ checked8482.1 (.cons _ _ _ _ _ checked8483.1 (.cons _ _ _ _ _ checked8484.1 (.cons _ _ _ _ _ checked8485.1 (.cons _ _ _ _ _ checked8486.1 (.cons _ _ _ _ _ checked8487.1 (.cons _ _ _ _ _ checked8488.1 (.cons _ _ _ _ _ checked8489.1 (.cons _ _ _ _ _ checked8490.1 (.cons _ _ _ _ _ checked8491.1 (.cons _ _ _ _ _ checked8492.1 (.cons _ _ _ _ _ checked8493.1 (.cons _ _ _ _ _ checked8494.1 (.cons _ _ _ _ _ checked8495.1 (.cons _ _ _ _ _ checked8496.1 (.cons _ _ _ _ _ checked8497.1 (.cons _ _ _ _ _ checked8498.1 (.cons _ _ _ _ _ checked8499.1 (.cons _ _ _ _ _ checked8500.1 (.cons _ _ _ _ _ checked8501.1 (.cons _ _ _ _ _ checked8502.1 (.cons _ _ _ _ _ checked8503.1 (.cons _ _ _ _ _ checked8504.1 (.cons _ _ _ _ _ checked8505.1 (.cons _ _ _ _ _ checked8506.1 (.cons _ _ _ _ _ checked8507.1 (.cons _ _ _ _ _ checked8508.1 (.cons _ _ _ _ _ checked8509.1 (.cons _ _ _ _ _ checked8510.1 (.cons _ _ _ _ _ checked8511.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8566 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3652 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8448.2,checked8449.2,checked8450.2,checked8451.2,checked8452.2,checked8453.2,checked8454.2,checked8455.2,checked8456.2,checked8457.2,checked8458.2,checked8459.2,checked8460.2,checked8461.2,checked8462.2,checked8463.2,checked8464.2,checked8465.2,checked8466.2,checked8467.2,checked8468.2,checked8469.2,checked8470.2,checked8471.2,checked8472.2,checked8473.2,checked8474.2,checked8475.2,checked8476.2,checked8477.2,checked8478.2,checked8479.2,checked8480.2,checked8481.2,checked8482.2,checked8483.2,checked8484.2,checked8485.2,checked8486.2,checked8487.2,checked8488.2,checked8489.2,checked8490.2,checked8491.2,checked8492.2,checked8493.2,checked8494.2,checked8495.2,checked8496.2,checked8497.2,checked8498.2,checked8499.2,checked8500.2,checked8501.2,checked8502.2,checked8503.2,checked8504.2,checked8505.2,checked8506.2,checked8507.2,checked8508.2,checked8509.2,checked8510.2,checked8511.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup132
