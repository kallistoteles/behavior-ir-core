import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup133
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8512 : List WordIR.Op := [.band 8557 8530]
def bytes8512 : Bytes := ("    let r000021a0: u32 = r0000216d & r00002152;\n" : String).toByteArray.data.toList
theorem checked8512 : bytes8512=statementBytes 8608 (op8512.map lower) ∧ bytes8512.length=48 := by core033_kernel_decide
def op8513 : List WordIR.Op := [.bxor 8607 8608]
def bytes8513 : Bytes := ("    let r000021a1: u32 = r0000219f ^ r000021a0;\n" : String).toByteArray.data.toList
theorem checked8513 : bytes8513=statementBytes 8609 (op8513.map lower) ∧ bytes8513.length=48 := by core033_kernel_decide
def op8514 : List WordIR.Op := [.badd 8604 8609]
def bytes8514 : Bytes := ("    let r000021a2: u32 = r0000219c.wrapping_add(r000021a1);\n" : String).toByteArray.data.toList
theorem checked8514 : bytes8514=statementBytes 8610 (op8514.map lower) ∧ bytes8514.length=60 := by core033_kernel_decide
def op8515 : List WordIR.Op := [.badd 8599 8610]
def bytes8515 : Bytes := ("    let r000021a3: u32 = r00002197.wrapping_add(r000021a2);\n" : String).toByteArray.data.toList
theorem checked8515 : bytes8515=statementBytes 8611 (op8515.map lower) ∧ bytes8515.length=60 := by core033_kernel_decide
def op8516 : List WordIR.Op := [.badd 8503 8599]
def bytes8516 : Bytes := ("    let r000021a4: u32 = r00002137.wrapping_add(r00002197);\n" : String).toByteArray.data.toList
theorem checked8516 : bytes8516=statementBytes 8612 (op8516.map lower) ∧ bytes8516.length=60 := by core033_kernel_decide
def op8517 : List WordIR.Op := [.rotr 8612 6]
def bytes8517 : Bytes := ("    let r000021a5: u32 = r000021a4.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8517 : bytes8517=statementBytes 8613 (op8517.map lower) ∧ bytes8517.length=65 := by core033_kernel_decide
def op8518 : List WordIR.Op := [.rotr 8612 11]
def bytes8518 : Bytes := ("    let r000021a6: u32 = r000021a4.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8518 : bytes8518=statementBytes 8614 (op8518.map lower) ∧ bytes8518.length=65 := by core033_kernel_decide
def op8519 : List WordIR.Op := [.bxor 8613 8614]
def bytes8519 : Bytes := ("    let r000021a7: u32 = r000021a5 ^ r000021a6;\n" : String).toByteArray.data.toList
theorem checked8519 : bytes8519=statementBytes 8615 (op8519.map lower) ∧ bytes8519.length=48 := by core033_kernel_decide
def op8520 : List WordIR.Op := [.rotr 8612 25]
def bytes8520 : Bytes := ("    let r000021a8: u32 = r000021a4.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8520 : bytes8520=statementBytes 8616 (op8520.map lower) ∧ bytes8520.length=65 := by core033_kernel_decide
def op8521 : List WordIR.Op := [.bxor 8615 8616]
def bytes8521 : Bytes := ("    let r000021a9: u32 = r000021a7 ^ r000021a8;\n" : String).toByteArray.data.toList
theorem checked8521 : bytes8521=statementBytes 8617 (op8521.map lower) ∧ bytes8521.length=48 := by core033_kernel_decide
def op8522 : List WordIR.Op := [.badd 8531 8617]
def bytes8522 : Bytes := ("    let r000021aa: u32 = r00002153.wrapping_add(r000021a9);\n" : String).toByteArray.data.toList
theorem checked8522 : bytes8522=statementBytes 8618 (op8522.map lower) ∧ bytes8522.length=60 := by core033_kernel_decide
def op8523 : List WordIR.Op := [.band 8612 8585]
def bytes8523 : Bytes := ("    let r000021ab: u32 = r000021a4 & r00002189;\n" : String).toByteArray.data.toList
theorem checked8523 : bytes8523=statementBytes 8619 (op8523.map lower) ∧ bytes8523.length=48 := by core033_kernel_decide
def op8524 : List WordIR.Op := [.bnot 8612]
def bytes8524 : Bytes := ("    let r000021ac: u32 = !r000021a4;\n" : String).toByteArray.data.toList
theorem checked8524 : bytes8524=statementBytes 8620 (op8524.map lower) ∧ bytes8524.length=37 := by core033_kernel_decide
def op8525 : List WordIR.Op := [.band 8620 8558]
def bytes8525 : Bytes := ("    let r000021ad: u32 = r000021ac & r0000216e;\n" : String).toByteArray.data.toList
theorem checked8525 : bytes8525=statementBytes 8621 (op8525.map lower) ∧ bytes8525.length=48 := by core033_kernel_decide
def op8526 : List WordIR.Op := [.bxor 8619 8621]
def bytes8526 : Bytes := ("    let r000021ae: u32 = r000021ab ^ r000021ad;\n" : String).toByteArray.data.toList
theorem checked8526 : bytes8526=statementBytes 8622 (op8526.map lower) ∧ bytes8526.length=48 := by core033_kernel_decide
def op8527 : List WordIR.Op := [.badd 8618 8622]
def bytes8527 : Bytes := ("    let r000021af: u32 = r000021aa.wrapping_add(r000021ae);\n" : String).toByteArray.data.toList
theorem checked8527 : bytes8527=statementBytes 8623 (op8527.map lower) ∧ bytes8527.length=60 := by core033_kernel_decide
def op8528 : List WordIR.Op := [.literal (BitVec.ofNat 32 770255983)]
def bytes8528 : Bytes := ("    let r000021b0: u32 = 0x2de92c6f_u32;\n" : String).toByteArray.data.toList
theorem checked8528 : bytes8528=statementBytes 8624 (op8528.map lower) ∧ bytes8528.length=41 := by core033_kernel_decide
def op8529 : List WordIR.Op := [.badd 8623 8624]
def bytes8529 : Bytes := ("    let r000021b1: u32 = r000021af.wrapping_add(r000021b0);\n" : String).toByteArray.data.toList
theorem checked8529 : bytes8529=statementBytes 8625 (op8529.map lower) ∧ bytes8529.length=60 := by core033_kernel_decide
def op8530 : List WordIR.Op := [.badd 8625 7513]
def bytes8530 : Bytes := ("    let r000021b2: u32 = r000021b1.wrapping_add(r00001d59);\n" : String).toByteArray.data.toList
theorem checked8530 : bytes8530=statementBytes 8626 (op8530.map lower) ∧ bytes8530.length=60 := by core033_kernel_decide
def op8531 : List WordIR.Op := [.rotr 8611 2]
def bytes8531 : Bytes := ("    let r000021b3: u32 = r000021a3.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8531 : bytes8531=statementBytes 8627 (op8531.map lower) ∧ bytes8531.length=65 := by core033_kernel_decide
def op8532 : List WordIR.Op := [.rotr 8611 13]
def bytes8532 : Bytes := ("    let r000021b4: u32 = r000021a3.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8532 : bytes8532=statementBytes 8628 (op8532.map lower) ∧ bytes8532.length=65 := by core033_kernel_decide
def op8533 : List WordIR.Op := [.bxor 8627 8628]
def bytes8533 : Bytes := ("    let r000021b5: u32 = r000021b3 ^ r000021b4;\n" : String).toByteArray.data.toList
theorem checked8533 : bytes8533=statementBytes 8629 (op8533.map lower) ∧ bytes8533.length=48 := by core033_kernel_decide
def op8534 : List WordIR.Op := [.rotr 8611 22]
def bytes8534 : Bytes := ("    let r000021b6: u32 = r000021a3.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8534 : bytes8534=statementBytes 8630 (op8534.map lower) ∧ bytes8534.length=65 := by core033_kernel_decide
def op8535 : List WordIR.Op := [.bxor 8629 8630]
def bytes8535 : Bytes := ("    let r000021b7: u32 = r000021b5 ^ r000021b6;\n" : String).toByteArray.data.toList
theorem checked8535 : bytes8535=statementBytes 8631 (op8535.map lower) ∧ bytes8535.length=48 := by core033_kernel_decide
def op8536 : List WordIR.Op := [.band 8611 8584]
def bytes8536 : Bytes := ("    let r000021b8: u32 = r000021a3 & r00002188;\n" : String).toByteArray.data.toList
theorem checked8536 : bytes8536=statementBytes 8632 (op8536.map lower) ∧ bytes8536.length=48 := by core033_kernel_decide
def op8537 : List WordIR.Op := [.band 8611 8557]
def bytes8537 : Bytes := ("    let r000021b9: u32 = r000021a3 & r0000216d;\n" : String).toByteArray.data.toList
theorem checked8537 : bytes8537=statementBytes 8633 (op8537.map lower) ∧ bytes8537.length=48 := by core033_kernel_decide
def op8538 : List WordIR.Op := [.bxor 8632 8633]
def bytes8538 : Bytes := ("    let r000021ba: u32 = r000021b8 ^ r000021b9;\n" : String).toByteArray.data.toList
theorem checked8538 : bytes8538=statementBytes 8634 (op8538.map lower) ∧ bytes8538.length=48 := by core033_kernel_decide
def op8539 : List WordIR.Op := [.band 8584 8557]
def bytes8539 : Bytes := ("    let r000021bb: u32 = r00002188 & r0000216d;\n" : String).toByteArray.data.toList
theorem checked8539 : bytes8539=statementBytes 8635 (op8539.map lower) ∧ bytes8539.length=48 := by core033_kernel_decide
def op8540 : List WordIR.Op := [.bxor 8634 8635]
def bytes8540 : Bytes := ("    let r000021bc: u32 = r000021ba ^ r000021bb;\n" : String).toByteArray.data.toList
theorem checked8540 : bytes8540=statementBytes 8636 (op8540.map lower) ∧ bytes8540.length=48 := by core033_kernel_decide
def op8541 : List WordIR.Op := [.badd 8631 8636]
def bytes8541 : Bytes := ("    let r000021bd: u32 = r000021b7.wrapping_add(r000021bc);\n" : String).toByteArray.data.toList
theorem checked8541 : bytes8541=statementBytes 8637 (op8541.map lower) ∧ bytes8541.length=60 := by core033_kernel_decide
def op8542 : List WordIR.Op := [.badd 8626 8637]
def bytes8542 : Bytes := ("    let r000021be: u32 = r000021b2.wrapping_add(r000021bd);\n" : String).toByteArray.data.toList
theorem checked8542 : bytes8542=statementBytes 8638 (op8542.map lower) ∧ bytes8542.length=60 := by core033_kernel_decide
def op8543 : List WordIR.Op := [.badd 8530 8626]
def bytes8543 : Bytes := ("    let r000021bf: u32 = r00002152.wrapping_add(r000021b2);\n" : String).toByteArray.data.toList
theorem checked8543 : bytes8543=statementBytes 8639 (op8543.map lower) ∧ bytes8543.length=60 := by core033_kernel_decide
def op8544 : List WordIR.Op := [.rotr 8639 6]
def bytes8544 : Bytes := ("    let r000021c0: u32 = r000021bf.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8544 : bytes8544=statementBytes 8640 (op8544.map lower) ∧ bytes8544.length=65 := by core033_kernel_decide
def op8545 : List WordIR.Op := [.rotr 8639 11]
def bytes8545 : Bytes := ("    let r000021c1: u32 = r000021bf.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8545 : bytes8545=statementBytes 8641 (op8545.map lower) ∧ bytes8545.length=65 := by core033_kernel_decide
def op8546 : List WordIR.Op := [.bxor 8640 8641]
def bytes8546 : Bytes := ("    let r000021c2: u32 = r000021c0 ^ r000021c1;\n" : String).toByteArray.data.toList
theorem checked8546 : bytes8546=statementBytes 8642 (op8546.map lower) ∧ bytes8546.length=48 := by core033_kernel_decide
def op8547 : List WordIR.Op := [.rotr 8639 25]
def bytes8547 : Bytes := ("    let r000021c3: u32 = r000021bf.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8547 : bytes8547=statementBytes 8643 (op8547.map lower) ∧ bytes8547.length=65 := by core033_kernel_decide
def op8548 : List WordIR.Op := [.bxor 8642 8643]
def bytes8548 : Bytes := ("    let r000021c4: u32 = r000021c2 ^ r000021c3;\n" : String).toByteArray.data.toList
theorem checked8548 : bytes8548=statementBytes 8644 (op8548.map lower) ∧ bytes8548.length=48 := by core033_kernel_decide
def op8549 : List WordIR.Op := [.badd 8558 8644]
def bytes8549 : Bytes := ("    let r000021c5: u32 = r0000216e.wrapping_add(r000021c4);\n" : String).toByteArray.data.toList
theorem checked8549 : bytes8549=statementBytes 8645 (op8549.map lower) ∧ bytes8549.length=60 := by core033_kernel_decide
def op8550 : List WordIR.Op := [.band 8639 8612]
def bytes8550 : Bytes := ("    let r000021c6: u32 = r000021bf & r000021a4;\n" : String).toByteArray.data.toList
theorem checked8550 : bytes8550=statementBytes 8646 (op8550.map lower) ∧ bytes8550.length=48 := by core033_kernel_decide
def op8551 : List WordIR.Op := [.bnot 8639]
def bytes8551 : Bytes := ("    let r000021c7: u32 = !r000021bf;\n" : String).toByteArray.data.toList
theorem checked8551 : bytes8551=statementBytes 8647 (op8551.map lower) ∧ bytes8551.length=37 := by core033_kernel_decide
def op8552 : List WordIR.Op := [.band 8647 8585]
def bytes8552 : Bytes := ("    let r000021c8: u32 = r000021c7 & r00002189;\n" : String).toByteArray.data.toList
theorem checked8552 : bytes8552=statementBytes 8648 (op8552.map lower) ∧ bytes8552.length=48 := by core033_kernel_decide
def op8553 : List WordIR.Op := [.bxor 8646 8648]
def bytes8553 : Bytes := ("    let r000021c9: u32 = r000021c6 ^ r000021c8;\n" : String).toByteArray.data.toList
theorem checked8553 : bytes8553=statementBytes 8649 (op8553.map lower) ∧ bytes8553.length=48 := by core033_kernel_decide
def op8554 : List WordIR.Op := [.badd 8645 8649]
def bytes8554 : Bytes := ("    let r000021ca: u32 = r000021c5.wrapping_add(r000021c9);\n" : String).toByteArray.data.toList
theorem checked8554 : bytes8554=statementBytes 8650 (op8554.map lower) ∧ bytes8554.length=60 := by core033_kernel_decide
def op8555 : List WordIR.Op := [.literal (BitVec.ofNat 32 1249150122)]
def bytes8555 : Bytes := ("    let r000021cb: u32 = 0x4a7484aa_u32;\n" : String).toByteArray.data.toList
theorem checked8555 : bytes8555=statementBytes 8651 (op8555.map lower) ∧ bytes8555.length=41 := by core033_kernel_decide
def op8556 : List WordIR.Op := [.badd 8650 8651]
def bytes8556 : Bytes := ("    let r000021cc: u32 = r000021ca.wrapping_add(r000021cb);\n" : String).toByteArray.data.toList
theorem checked8556 : bytes8556=statementBytes 8652 (op8556.map lower) ∧ bytes8556.length=60 := by core033_kernel_decide
def op8557 : List WordIR.Op := [.badd 8652 7526]
def bytes8557 : Bytes := ("    let r000021cd: u32 = r000021cc.wrapping_add(r00001d66);\n" : String).toByteArray.data.toList
theorem checked8557 : bytes8557=statementBytes 8653 (op8557.map lower) ∧ bytes8557.length=60 := by core033_kernel_decide
def op8558 : List WordIR.Op := [.rotr 8638 2]
def bytes8558 : Bytes := ("    let r000021ce: u32 = r000021be.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8558 : bytes8558=statementBytes 8654 (op8558.map lower) ∧ bytes8558.length=65 := by core033_kernel_decide
def op8559 : List WordIR.Op := [.rotr 8638 13]
def bytes8559 : Bytes := ("    let r000021cf: u32 = r000021be.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8559 : bytes8559=statementBytes 8655 (op8559.map lower) ∧ bytes8559.length=65 := by core033_kernel_decide
def op8560 : List WordIR.Op := [.bxor 8654 8655]
def bytes8560 : Bytes := ("    let r000021d0: u32 = r000021ce ^ r000021cf;\n" : String).toByteArray.data.toList
theorem checked8560 : bytes8560=statementBytes 8656 (op8560.map lower) ∧ bytes8560.length=48 := by core033_kernel_decide
def op8561 : List WordIR.Op := [.rotr 8638 22]
def bytes8561 : Bytes := ("    let r000021d1: u32 = r000021be.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8561 : bytes8561=statementBytes 8657 (op8561.map lower) ∧ bytes8561.length=65 := by core033_kernel_decide
def op8562 : List WordIR.Op := [.bxor 8656 8657]
def bytes8562 : Bytes := ("    let r000021d2: u32 = r000021d0 ^ r000021d1;\n" : String).toByteArray.data.toList
theorem checked8562 : bytes8562=statementBytes 8658 (op8562.map lower) ∧ bytes8562.length=48 := by core033_kernel_decide
def op8563 : List WordIR.Op := [.band 8638 8611]
def bytes8563 : Bytes := ("    let r000021d3: u32 = r000021be & r000021a3;\n" : String).toByteArray.data.toList
theorem checked8563 : bytes8563=statementBytes 8659 (op8563.map lower) ∧ bytes8563.length=48 := by core033_kernel_decide
def op8564 : List WordIR.Op := [.band 8638 8584]
def bytes8564 : Bytes := ("    let r000021d4: u32 = r000021be & r00002188;\n" : String).toByteArray.data.toList
theorem checked8564 : bytes8564=statementBytes 8660 (op8564.map lower) ∧ bytes8564.length=48 := by core033_kernel_decide
def op8565 : List WordIR.Op := [.bxor 8659 8660]
def bytes8565 : Bytes := ("    let r000021d5: u32 = r000021d3 ^ r000021d4;\n" : String).toByteArray.data.toList
theorem checked8565 : bytes8565=statementBytes 8661 (op8565.map lower) ∧ bytes8565.length=48 := by core033_kernel_decide
def op8566 : List WordIR.Op := [.band 8611 8584]
def bytes8566 : Bytes := ("    let r000021d6: u32 = r000021a3 & r00002188;\n" : String).toByteArray.data.toList
theorem checked8566 : bytes8566=statementBytes 8662 (op8566.map lower) ∧ bytes8566.length=48 := by core033_kernel_decide
def op8567 : List WordIR.Op := [.bxor 8661 8662]
def bytes8567 : Bytes := ("    let r000021d7: u32 = r000021d5 ^ r000021d6;\n" : String).toByteArray.data.toList
theorem checked8567 : bytes8567=statementBytes 8663 (op8567.map lower) ∧ bytes8567.length=48 := by core033_kernel_decide
def op8568 : List WordIR.Op := [.badd 8658 8663]
def bytes8568 : Bytes := ("    let r000021d8: u32 = r000021d2.wrapping_add(r000021d7);\n" : String).toByteArray.data.toList
theorem checked8568 : bytes8568=statementBytes 8664 (op8568.map lower) ∧ bytes8568.length=60 := by core033_kernel_decide
def op8569 : List WordIR.Op := [.badd 8653 8664]
def bytes8569 : Bytes := ("    let r000021d9: u32 = r000021cd.wrapping_add(r000021d8);\n" : String).toByteArray.data.toList
theorem checked8569 : bytes8569=statementBytes 8665 (op8569.map lower) ∧ bytes8569.length=60 := by core033_kernel_decide
def op8570 : List WordIR.Op := [.badd 8557 8653]
def bytes8570 : Bytes := ("    let r000021da: u32 = r0000216d.wrapping_add(r000021cd);\n" : String).toByteArray.data.toList
theorem checked8570 : bytes8570=statementBytes 8666 (op8570.map lower) ∧ bytes8570.length=60 := by core033_kernel_decide
def op8571 : List WordIR.Op := [.rotr 8666 6]
def bytes8571 : Bytes := ("    let r000021db: u32 = r000021da.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8571 : bytes8571=statementBytes 8667 (op8571.map lower) ∧ bytes8571.length=65 := by core033_kernel_decide
def op8572 : List WordIR.Op := [.rotr 8666 11]
def bytes8572 : Bytes := ("    let r000021dc: u32 = r000021da.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8572 : bytes8572=statementBytes 8668 (op8572.map lower) ∧ bytes8572.length=65 := by core033_kernel_decide
def op8573 : List WordIR.Op := [.bxor 8667 8668]
def bytes8573 : Bytes := ("    let r000021dd: u32 = r000021db ^ r000021dc;\n" : String).toByteArray.data.toList
theorem checked8573 : bytes8573=statementBytes 8669 (op8573.map lower) ∧ bytes8573.length=48 := by core033_kernel_decide
def op8574 : List WordIR.Op := [.rotr 8666 25]
def bytes8574 : Bytes := ("    let r000021de: u32 = r000021da.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8574 : bytes8574=statementBytes 8670 (op8574.map lower) ∧ bytes8574.length=65 := by core033_kernel_decide
def op8575 : List WordIR.Op := [.bxor 8669 8670]
def bytes8575 : Bytes := ("    let r000021df: u32 = r000021dd ^ r000021de;\n" : String).toByteArray.data.toList
theorem checked8575 : bytes8575=statementBytes 8671 (op8575.map lower) ∧ bytes8575.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8512,op8513,op8514,op8515,op8516,op8517,op8518,op8519,op8520,op8521,op8522,op8523,op8524,op8525,op8526,op8527,op8528,op8529,op8530,op8531,op8532,op8533,op8534,op8535,op8536,op8537,op8538,op8539,op8540,op8541,op8542,op8543,op8544,op8545,op8546,op8547,op8548,op8549,op8550,op8551,op8552,op8553,op8554,op8555,op8556,op8557,op8558,op8559,op8560,op8561,op8562,op8563,op8564,op8565,op8566,op8567,op8568,op8569,op8570,op8571,op8572,op8573,op8574,op8575]
def chunks : List Bytes := [bytes8512,bytes8513,bytes8514,bytes8515,bytes8516,bytes8517,bytes8518,bytes8519,bytes8520,bytes8521,bytes8522,bytes8523,bytes8524,bytes8525,bytes8526,bytes8527,bytes8528,bytes8529,bytes8530,bytes8531,bytes8532,bytes8533,bytes8534,bytes8535,bytes8536,bytes8537,bytes8538,bytes8539,bytes8540,bytes8541,bytes8542,bytes8543,bytes8544,bytes8545,bytes8546,bytes8547,bytes8548,bytes8549,bytes8550,bytes8551,bytes8552,bytes8553,bytes8554,bytes8555,bytes8556,bytes8557,bytes8558,bytes8559,bytes8560,bytes8561,bytes8562,bytes8563,bytes8564,bytes8565,bytes8566,bytes8567,bytes8568,bytes8569,bytes8570,bytes8571,bytes8572,bytes8573,bytes8574,bytes8575]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8608 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8512.1 (.cons _ _ _ _ _ checked8513.1 (.cons _ _ _ _ _ checked8514.1 (.cons _ _ _ _ _ checked8515.1 (.cons _ _ _ _ _ checked8516.1 (.cons _ _ _ _ _ checked8517.1 (.cons _ _ _ _ _ checked8518.1 (.cons _ _ _ _ _ checked8519.1 (.cons _ _ _ _ _ checked8520.1 (.cons _ _ _ _ _ checked8521.1 (.cons _ _ _ _ _ checked8522.1 (.cons _ _ _ _ _ checked8523.1 (.cons _ _ _ _ _ checked8524.1 (.cons _ _ _ _ _ checked8525.1 (.cons _ _ _ _ _ checked8526.1 (.cons _ _ _ _ _ checked8527.1 (.cons _ _ _ _ _ checked8528.1 (.cons _ _ _ _ _ checked8529.1 (.cons _ _ _ _ _ checked8530.1 (.cons _ _ _ _ _ checked8531.1 (.cons _ _ _ _ _ checked8532.1 (.cons _ _ _ _ _ checked8533.1 (.cons _ _ _ _ _ checked8534.1 (.cons _ _ _ _ _ checked8535.1 (.cons _ _ _ _ _ checked8536.1 (.cons _ _ _ _ _ checked8537.1 (.cons _ _ _ _ _ checked8538.1 (.cons _ _ _ _ _ checked8539.1 (.cons _ _ _ _ _ checked8540.1 (.cons _ _ _ _ _ checked8541.1 (.cons _ _ _ _ _ checked8542.1 (.cons _ _ _ _ _ checked8543.1 (.cons _ _ _ _ _ checked8544.1 (.cons _ _ _ _ _ checked8545.1 (.cons _ _ _ _ _ checked8546.1 (.cons _ _ _ _ _ checked8547.1 (.cons _ _ _ _ _ checked8548.1 (.cons _ _ _ _ _ checked8549.1 (.cons _ _ _ _ _ checked8550.1 (.cons _ _ _ _ _ checked8551.1 (.cons _ _ _ _ _ checked8552.1 (.cons _ _ _ _ _ checked8553.1 (.cons _ _ _ _ _ checked8554.1 (.cons _ _ _ _ _ checked8555.1 (.cons _ _ _ _ _ checked8556.1 (.cons _ _ _ _ _ checked8557.1 (.cons _ _ _ _ _ checked8558.1 (.cons _ _ _ _ _ checked8559.1 (.cons _ _ _ _ _ checked8560.1 (.cons _ _ _ _ _ checked8561.1 (.cons _ _ _ _ _ checked8562.1 (.cons _ _ _ _ _ checked8563.1 (.cons _ _ _ _ _ checked8564.1 (.cons _ _ _ _ _ checked8565.1 (.cons _ _ _ _ _ checked8566.1 (.cons _ _ _ _ _ checked8567.1 (.cons _ _ _ _ _ checked8568.1 (.cons _ _ _ _ _ checked8569.1 (.cons _ _ _ _ _ checked8570.1 (.cons _ _ _ _ _ checked8571.1 (.cons _ _ _ _ _ checked8572.1 (.cons _ _ _ _ _ checked8573.1 (.cons _ _ _ _ _ checked8574.1 (.cons _ _ _ _ _ checked8575.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8608 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3495 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8512.2,checked8513.2,checked8514.2,checked8515.2,checked8516.2,checked8517.2,checked8518.2,checked8519.2,checked8520.2,checked8521.2,checked8522.2,checked8523.2,checked8524.2,checked8525.2,checked8526.2,checked8527.2,checked8528.2,checked8529.2,checked8530.2,checked8531.2,checked8532.2,checked8533.2,checked8534.2,checked8535.2,checked8536.2,checked8537.2,checked8538.2,checked8539.2,checked8540.2,checked8541.2,checked8542.2,checked8543.2,checked8544.2,checked8545.2,checked8546.2,checked8547.2,checked8548.2,checked8549.2,checked8550.2,checked8551.2,checked8552.2,checked8553.2,checked8554.2,checked8555.2,checked8556.2,checked8557.2,checked8558.2,checked8559.2,checked8560.2,checked8561.2,checked8562.2,checked8563.2,checked8564.2,checked8565.2,checked8566.2,checked8567.2,checked8568.2,checked8569.2,checked8570.2,checked8571.2,checked8572.2,checked8573.2,checked8574.2,checked8575.2]
  decide
end ArtifactPairedPathRoundGroup133
