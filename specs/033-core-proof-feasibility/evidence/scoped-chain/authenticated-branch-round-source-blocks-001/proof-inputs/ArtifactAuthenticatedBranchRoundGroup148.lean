import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup148
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9472 : List WordIR.Op := [.badd 9584 9589]
def bytes9472 : Bytes := ("    let r00002576: u32 = r00002570.wrapping_add(r00002575);\n" : String).toByteArray.data.toList
theorem checked9472 : bytes9472=statementBytes 9590 (op9472.map lower) ∧ bytes9472.length=60 := by core033_kernel_decide
def op9473 : List WordIR.Op := [.badd 9579 9590]
def bytes9473 : Bytes := ("    let r00002577: u32 = r0000256b.wrapping_add(r00002576);\n" : String).toByteArray.data.toList
theorem checked9473 : bytes9473=statementBytes 9591 (op9473.map lower) ∧ bytes9473.length=60 := by core033_kernel_decide
def op9474 : List WordIR.Op := [.badd 9483 9579]
def bytes9474 : Bytes := ("    let r00002578: u32 = r0000250b.wrapping_add(r0000256b);\n" : String).toByteArray.data.toList
theorem checked9474 : bytes9474=statementBytes 9592 (op9474.map lower) ∧ bytes9474.length=60 := by core033_kernel_decide
def op9475 : List WordIR.Op := [.rotr 9592 6]
def bytes9475 : Bytes := ("    let r00002579: u32 = r00002578.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9475 : bytes9475=statementBytes 9593 (op9475.map lower) ∧ bytes9475.length=65 := by core033_kernel_decide
def op9476 : List WordIR.Op := [.rotr 9592 11]
def bytes9476 : Bytes := ("    let r0000257a: u32 = r00002578.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9476 : bytes9476=statementBytes 9594 (op9476.map lower) ∧ bytes9476.length=65 := by core033_kernel_decide
def op9477 : List WordIR.Op := [.bxor 9593 9594]
def bytes9477 : Bytes := ("    let r0000257b: u32 = r00002579 ^ r0000257a;\n" : String).toByteArray.data.toList
theorem checked9477 : bytes9477=statementBytes 9595 (op9477.map lower) ∧ bytes9477.length=48 := by core033_kernel_decide
def op9478 : List WordIR.Op := [.rotr 9592 25]
def bytes9478 : Bytes := ("    let r0000257c: u32 = r00002578.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9478 : bytes9478=statementBytes 9596 (op9478.map lower) ∧ bytes9478.length=65 := by core033_kernel_decide
def op9479 : List WordIR.Op := [.bxor 9595 9596]
def bytes9479 : Bytes := ("    let r0000257d: u32 = r0000257b ^ r0000257c;\n" : String).toByteArray.data.toList
theorem checked9479 : bytes9479=statementBytes 9597 (op9479.map lower) ∧ bytes9479.length=48 := by core033_kernel_decide
def op9480 : List WordIR.Op := [.badd 9511 9597]
def bytes9480 : Bytes := ("    let r0000257e: u32 = r00002527.wrapping_add(r0000257d);\n" : String).toByteArray.data.toList
theorem checked9480 : bytes9480=statementBytes 9598 (op9480.map lower) ∧ bytes9480.length=60 := by core033_kernel_decide
def op9481 : List WordIR.Op := [.band 9592 9565]
def bytes9481 : Bytes := ("    let r0000257f: u32 = r00002578 & r0000255d;\n" : String).toByteArray.data.toList
theorem checked9481 : bytes9481=statementBytes 9599 (op9481.map lower) ∧ bytes9481.length=48 := by core033_kernel_decide
def op9482 : List WordIR.Op := [.bnot 9592]
def bytes9482 : Bytes := ("    let r00002580: u32 = !r00002578;\n" : String).toByteArray.data.toList
theorem checked9482 : bytes9482=statementBytes 9600 (op9482.map lower) ∧ bytes9482.length=37 := by core033_kernel_decide
def op9483 : List WordIR.Op := [.band 9600 9538]
def bytes9483 : Bytes := ("    let r00002581: u32 = r00002580 & r00002542;\n" : String).toByteArray.data.toList
theorem checked9483 : bytes9483=statementBytes 9601 (op9483.map lower) ∧ bytes9483.length=48 := by core033_kernel_decide
def op9484 : List WordIR.Op := [.bxor 9599 9601]
def bytes9484 : Bytes := ("    let r00002582: u32 = r0000257f ^ r00002581;\n" : String).toByteArray.data.toList
theorem checked9484 : bytes9484=statementBytes 9602 (op9484.map lower) ∧ bytes9484.length=48 := by core033_kernel_decide
def op9485 : List WordIR.Op := [.badd 9598 9602]
def bytes9485 : Bytes := ("    let r00002583: u32 = r0000257e.wrapping_add(r00002582);\n" : String).toByteArray.data.toList
theorem checked9485 : bytes9485=statementBytes 9603 (op9485.map lower) ∧ bytes9485.length=60 := by core033_kernel_decide
def op9486 : List WordIR.Op := [.literal (BitVec.ofNat 32 338241895)]
def bytes9486 : Bytes := ("    let r00002584: u32 = 0x14292967_u32;\n" : String).toByteArray.data.toList
theorem checked9486 : bytes9486=statementBytes 9604 (op9486.map lower) ∧ bytes9486.length=41 := by core033_kernel_decide
def op9487 : List WordIR.Op := [.badd 9603 9604]
def bytes9487 : Bytes := ("    let r00002585: u32 = r00002583.wrapping_add(r00002584);\n" : String).toByteArray.data.toList
theorem checked9487 : bytes9487=statementBytes 9605 (op9487.map lower) ∧ bytes9487.length=60 := by core033_kernel_decide
def op9488 : List WordIR.Op := [.badd 9605 8339]
def bytes9488 : Bytes := ("    let r00002586: u32 = r00002585.wrapping_add(r00002093);\n" : String).toByteArray.data.toList
theorem checked9488 : bytes9488=statementBytes 9606 (op9488.map lower) ∧ bytes9488.length=60 := by core033_kernel_decide
def op9489 : List WordIR.Op := [.rotr 9591 2]
def bytes9489 : Bytes := ("    let r00002587: u32 = r00002577.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9489 : bytes9489=statementBytes 9607 (op9489.map lower) ∧ bytes9489.length=65 := by core033_kernel_decide
def op9490 : List WordIR.Op := [.rotr 9591 13]
def bytes9490 : Bytes := ("    let r00002588: u32 = r00002577.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9490 : bytes9490=statementBytes 9608 (op9490.map lower) ∧ bytes9490.length=65 := by core033_kernel_decide
def op9491 : List WordIR.Op := [.bxor 9607 9608]
def bytes9491 : Bytes := ("    let r00002589: u32 = r00002587 ^ r00002588;\n" : String).toByteArray.data.toList
theorem checked9491 : bytes9491=statementBytes 9609 (op9491.map lower) ∧ bytes9491.length=48 := by core033_kernel_decide
def op9492 : List WordIR.Op := [.rotr 9591 22]
def bytes9492 : Bytes := ("    let r0000258a: u32 = r00002577.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9492 : bytes9492=statementBytes 9610 (op9492.map lower) ∧ bytes9492.length=65 := by core033_kernel_decide
def op9493 : List WordIR.Op := [.bxor 9609 9610]
def bytes9493 : Bytes := ("    let r0000258b: u32 = r00002589 ^ r0000258a;\n" : String).toByteArray.data.toList
theorem checked9493 : bytes9493=statementBytes 9611 (op9493.map lower) ∧ bytes9493.length=48 := by core033_kernel_decide
def op9494 : List WordIR.Op := [.band 9591 9564]
def bytes9494 : Bytes := ("    let r0000258c: u32 = r00002577 & r0000255c;\n" : String).toByteArray.data.toList
theorem checked9494 : bytes9494=statementBytes 9612 (op9494.map lower) ∧ bytes9494.length=48 := by core033_kernel_decide
def op9495 : List WordIR.Op := [.band 9591 9537]
def bytes9495 : Bytes := ("    let r0000258d: u32 = r00002577 & r00002541;\n" : String).toByteArray.data.toList
theorem checked9495 : bytes9495=statementBytes 9613 (op9495.map lower) ∧ bytes9495.length=48 := by core033_kernel_decide
def op9496 : List WordIR.Op := [.bxor 9612 9613]
def bytes9496 : Bytes := ("    let r0000258e: u32 = r0000258c ^ r0000258d;\n" : String).toByteArray.data.toList
theorem checked9496 : bytes9496=statementBytes 9614 (op9496.map lower) ∧ bytes9496.length=48 := by core033_kernel_decide
def op9497 : List WordIR.Op := [.band 9564 9537]
def bytes9497 : Bytes := ("    let r0000258f: u32 = r0000255c & r00002541;\n" : String).toByteArray.data.toList
theorem checked9497 : bytes9497=statementBytes 9615 (op9497.map lower) ∧ bytes9497.length=48 := by core033_kernel_decide
def op9498 : List WordIR.Op := [.bxor 9614 9615]
def bytes9498 : Bytes := ("    let r00002590: u32 = r0000258e ^ r0000258f;\n" : String).toByteArray.data.toList
theorem checked9498 : bytes9498=statementBytes 9616 (op9498.map lower) ∧ bytes9498.length=48 := by core033_kernel_decide
def op9499 : List WordIR.Op := [.badd 9611 9616]
def bytes9499 : Bytes := ("    let r00002591: u32 = r0000258b.wrapping_add(r00002590);\n" : String).toByteArray.data.toList
theorem checked9499 : bytes9499=statementBytes 9617 (op9499.map lower) ∧ bytes9499.length=60 := by core033_kernel_decide
def op9500 : List WordIR.Op := [.badd 9606 9617]
def bytes9500 : Bytes := ("    let r00002592: u32 = r00002586.wrapping_add(r00002591);\n" : String).toByteArray.data.toList
theorem checked9500 : bytes9500=statementBytes 9618 (op9500.map lower) ∧ bytes9500.length=60 := by core033_kernel_decide
def op9501 : List WordIR.Op := [.badd 9510 9606]
def bytes9501 : Bytes := ("    let r00002593: u32 = r00002526.wrapping_add(r00002586);\n" : String).toByteArray.data.toList
theorem checked9501 : bytes9501=statementBytes 9619 (op9501.map lower) ∧ bytes9501.length=60 := by core033_kernel_decide
def op9502 : List WordIR.Op := [.rotr 9619 6]
def bytes9502 : Bytes := ("    let r00002594: u32 = r00002593.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9502 : bytes9502=statementBytes 9620 (op9502.map lower) ∧ bytes9502.length=65 := by core033_kernel_decide
def op9503 : List WordIR.Op := [.rotr 9619 11]
def bytes9503 : Bytes := ("    let r00002595: u32 = r00002593.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9503 : bytes9503=statementBytes 9621 (op9503.map lower) ∧ bytes9503.length=65 := by core033_kernel_decide
def op9504 : List WordIR.Op := [.bxor 9620 9621]
def bytes9504 : Bytes := ("    let r00002596: u32 = r00002594 ^ r00002595;\n" : String).toByteArray.data.toList
theorem checked9504 : bytes9504=statementBytes 9622 (op9504.map lower) ∧ bytes9504.length=48 := by core033_kernel_decide
def op9505 : List WordIR.Op := [.rotr 9619 25]
def bytes9505 : Bytes := ("    let r00002597: u32 = r00002593.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9505 : bytes9505=statementBytes 9623 (op9505.map lower) ∧ bytes9505.length=65 := by core033_kernel_decide
def op9506 : List WordIR.Op := [.bxor 9622 9623]
def bytes9506 : Bytes := ("    let r00002598: u32 = r00002596 ^ r00002597;\n" : String).toByteArray.data.toList
theorem checked9506 : bytes9506=statementBytes 9624 (op9506.map lower) ∧ bytes9506.length=48 := by core033_kernel_decide
def op9507 : List WordIR.Op := [.badd 9538 9624]
def bytes9507 : Bytes := ("    let r00002599: u32 = r00002542.wrapping_add(r00002598);\n" : String).toByteArray.data.toList
theorem checked9507 : bytes9507=statementBytes 9625 (op9507.map lower) ∧ bytes9507.length=60 := by core033_kernel_decide
def op9508 : List WordIR.Op := [.band 9619 9592]
def bytes9508 : Bytes := ("    let r0000259a: u32 = r00002593 & r00002578;\n" : String).toByteArray.data.toList
theorem checked9508 : bytes9508=statementBytes 9626 (op9508.map lower) ∧ bytes9508.length=48 := by core033_kernel_decide
def op9509 : List WordIR.Op := [.bnot 9619]
def bytes9509 : Bytes := ("    let r0000259b: u32 = !r00002593;\n" : String).toByteArray.data.toList
theorem checked9509 : bytes9509=statementBytes 9627 (op9509.map lower) ∧ bytes9509.length=37 := by core033_kernel_decide
def op9510 : List WordIR.Op := [.band 9627 9565]
def bytes9510 : Bytes := ("    let r0000259c: u32 = r0000259b & r0000255d;\n" : String).toByteArray.data.toList
theorem checked9510 : bytes9510=statementBytes 9628 (op9510.map lower) ∧ bytes9510.length=48 := by core033_kernel_decide
def op9511 : List WordIR.Op := [.bxor 9626 9628]
def bytes9511 : Bytes := ("    let r0000259d: u32 = r0000259a ^ r0000259c;\n" : String).toByteArray.data.toList
theorem checked9511 : bytes9511=statementBytes 9629 (op9511.map lower) ∧ bytes9511.length=48 := by core033_kernel_decide
def op9512 : List WordIR.Op := [.badd 9625 9629]
def bytes9512 : Bytes := ("    let r0000259e: u32 = r00002599.wrapping_add(r0000259d);\n" : String).toByteArray.data.toList
theorem checked9512 : bytes9512=statementBytes 9630 (op9512.map lower) ∧ bytes9512.length=60 := by core033_kernel_decide
def op9513 : List WordIR.Op := [.literal (BitVec.ofNat 32 666307205)]
def bytes9513 : Bytes := ("    let r0000259f: u32 = 0x27b70a85_u32;\n" : String).toByteArray.data.toList
theorem checked9513 : bytes9513=statementBytes 9631 (op9513.map lower) ∧ bytes9513.length=41 := by core033_kernel_decide
def op9514 : List WordIR.Op := [.badd 9630 9631]
def bytes9514 : Bytes := ("    let r000025a0: u32 = r0000259e.wrapping_add(r0000259f);\n" : String).toByteArray.data.toList
theorem checked9514 : bytes9514=statementBytes 9632 (op9514.map lower) ∧ bytes9514.length=60 := by core033_kernel_decide
def op9515 : List WordIR.Op := [.badd 9632 8352]
def bytes9515 : Bytes := ("    let r000025a1: u32 = r000025a0.wrapping_add(r000020a0);\n" : String).toByteArray.data.toList
theorem checked9515 : bytes9515=statementBytes 9633 (op9515.map lower) ∧ bytes9515.length=60 := by core033_kernel_decide
def op9516 : List WordIR.Op := [.rotr 9618 2]
def bytes9516 : Bytes := ("    let r000025a2: u32 = r00002592.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9516 : bytes9516=statementBytes 9634 (op9516.map lower) ∧ bytes9516.length=65 := by core033_kernel_decide
def op9517 : List WordIR.Op := [.rotr 9618 13]
def bytes9517 : Bytes := ("    let r000025a3: u32 = r00002592.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9517 : bytes9517=statementBytes 9635 (op9517.map lower) ∧ bytes9517.length=65 := by core033_kernel_decide
def op9518 : List WordIR.Op := [.bxor 9634 9635]
def bytes9518 : Bytes := ("    let r000025a4: u32 = r000025a2 ^ r000025a3;\n" : String).toByteArray.data.toList
theorem checked9518 : bytes9518=statementBytes 9636 (op9518.map lower) ∧ bytes9518.length=48 := by core033_kernel_decide
def op9519 : List WordIR.Op := [.rotr 9618 22]
def bytes9519 : Bytes := ("    let r000025a5: u32 = r00002592.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9519 : bytes9519=statementBytes 9637 (op9519.map lower) ∧ bytes9519.length=65 := by core033_kernel_decide
def op9520 : List WordIR.Op := [.bxor 9636 9637]
def bytes9520 : Bytes := ("    let r000025a6: u32 = r000025a4 ^ r000025a5;\n" : String).toByteArray.data.toList
theorem checked9520 : bytes9520=statementBytes 9638 (op9520.map lower) ∧ bytes9520.length=48 := by core033_kernel_decide
def op9521 : List WordIR.Op := [.band 9618 9591]
def bytes9521 : Bytes := ("    let r000025a7: u32 = r00002592 & r00002577;\n" : String).toByteArray.data.toList
theorem checked9521 : bytes9521=statementBytes 9639 (op9521.map lower) ∧ bytes9521.length=48 := by core033_kernel_decide
def op9522 : List WordIR.Op := [.band 9618 9564]
def bytes9522 : Bytes := ("    let r000025a8: u32 = r00002592 & r0000255c;\n" : String).toByteArray.data.toList
theorem checked9522 : bytes9522=statementBytes 9640 (op9522.map lower) ∧ bytes9522.length=48 := by core033_kernel_decide
def op9523 : List WordIR.Op := [.bxor 9639 9640]
def bytes9523 : Bytes := ("    let r000025a9: u32 = r000025a7 ^ r000025a8;\n" : String).toByteArray.data.toList
theorem checked9523 : bytes9523=statementBytes 9641 (op9523.map lower) ∧ bytes9523.length=48 := by core033_kernel_decide
def op9524 : List WordIR.Op := [.band 9591 9564]
def bytes9524 : Bytes := ("    let r000025aa: u32 = r00002577 & r0000255c;\n" : String).toByteArray.data.toList
theorem checked9524 : bytes9524=statementBytes 9642 (op9524.map lower) ∧ bytes9524.length=48 := by core033_kernel_decide
def op9525 : List WordIR.Op := [.bxor 9641 9642]
def bytes9525 : Bytes := ("    let r000025ab: u32 = r000025a9 ^ r000025aa;\n" : String).toByteArray.data.toList
theorem checked9525 : bytes9525=statementBytes 9643 (op9525.map lower) ∧ bytes9525.length=48 := by core033_kernel_decide
def op9526 : List WordIR.Op := [.badd 9638 9643]
def bytes9526 : Bytes := ("    let r000025ac: u32 = r000025a6.wrapping_add(r000025ab);\n" : String).toByteArray.data.toList
theorem checked9526 : bytes9526=statementBytes 9644 (op9526.map lower) ∧ bytes9526.length=60 := by core033_kernel_decide
def op9527 : List WordIR.Op := [.badd 9633 9644]
def bytes9527 : Bytes := ("    let r000025ad: u32 = r000025a1.wrapping_add(r000025ac);\n" : String).toByteArray.data.toList
theorem checked9527 : bytes9527=statementBytes 9645 (op9527.map lower) ∧ bytes9527.length=60 := by core033_kernel_decide
def op9528 : List WordIR.Op := [.badd 9537 9633]
def bytes9528 : Bytes := ("    let r000025ae: u32 = r00002541.wrapping_add(r000025a1);\n" : String).toByteArray.data.toList
theorem checked9528 : bytes9528=statementBytes 9646 (op9528.map lower) ∧ bytes9528.length=60 := by core033_kernel_decide
def op9529 : List WordIR.Op := [.rotr 9646 6]
def bytes9529 : Bytes := ("    let r000025af: u32 = r000025ae.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9529 : bytes9529=statementBytes 9647 (op9529.map lower) ∧ bytes9529.length=65 := by core033_kernel_decide
def op9530 : List WordIR.Op := [.rotr 9646 11]
def bytes9530 : Bytes := ("    let r000025b0: u32 = r000025ae.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9530 : bytes9530=statementBytes 9648 (op9530.map lower) ∧ bytes9530.length=65 := by core033_kernel_decide
def op9531 : List WordIR.Op := [.bxor 9647 9648]
def bytes9531 : Bytes := ("    let r000025b1: u32 = r000025af ^ r000025b0;\n" : String).toByteArray.data.toList
theorem checked9531 : bytes9531=statementBytes 9649 (op9531.map lower) ∧ bytes9531.length=48 := by core033_kernel_decide
def op9532 : List WordIR.Op := [.rotr 9646 25]
def bytes9532 : Bytes := ("    let r000025b2: u32 = r000025ae.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9532 : bytes9532=statementBytes 9650 (op9532.map lower) ∧ bytes9532.length=65 := by core033_kernel_decide
def op9533 : List WordIR.Op := [.bxor 9649 9650]
def bytes9533 : Bytes := ("    let r000025b3: u32 = r000025b1 ^ r000025b2;\n" : String).toByteArray.data.toList
theorem checked9533 : bytes9533=statementBytes 9651 (op9533.map lower) ∧ bytes9533.length=48 := by core033_kernel_decide
def op9534 : List WordIR.Op := [.badd 9565 9651]
def bytes9534 : Bytes := ("    let r000025b4: u32 = r0000255d.wrapping_add(r000025b3);\n" : String).toByteArray.data.toList
theorem checked9534 : bytes9534=statementBytes 9652 (op9534.map lower) ∧ bytes9534.length=60 := by core033_kernel_decide
def op9535 : List WordIR.Op := [.band 9646 9619]
def bytes9535 : Bytes := ("    let r000025b5: u32 = r000025ae & r00002593;\n" : String).toByteArray.data.toList
theorem checked9535 : bytes9535=statementBytes 9653 (op9535.map lower) ∧ bytes9535.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9472,op9473,op9474,op9475,op9476,op9477,op9478,op9479,op9480,op9481,op9482,op9483,op9484,op9485,op9486,op9487,op9488,op9489,op9490,op9491,op9492,op9493,op9494,op9495,op9496,op9497,op9498,op9499,op9500,op9501,op9502,op9503,op9504,op9505,op9506,op9507,op9508,op9509,op9510,op9511,op9512,op9513,op9514,op9515,op9516,op9517,op9518,op9519,op9520,op9521,op9522,op9523,op9524,op9525,op9526,op9527,op9528,op9529,op9530,op9531,op9532,op9533,op9534,op9535]
def chunks : List Bytes := [bytes9472,bytes9473,bytes9474,bytes9475,bytes9476,bytes9477,bytes9478,bytes9479,bytes9480,bytes9481,bytes9482,bytes9483,bytes9484,bytes9485,bytes9486,bytes9487,bytes9488,bytes9489,bytes9490,bytes9491,bytes9492,bytes9493,bytes9494,bytes9495,bytes9496,bytes9497,bytes9498,bytes9499,bytes9500,bytes9501,bytes9502,bytes9503,bytes9504,bytes9505,bytes9506,bytes9507,bytes9508,bytes9509,bytes9510,bytes9511,bytes9512,bytes9513,bytes9514,bytes9515,bytes9516,bytes9517,bytes9518,bytes9519,bytes9520,bytes9521,bytes9522,bytes9523,bytes9524,bytes9525,bytes9526,bytes9527,bytes9528,bytes9529,bytes9530,bytes9531,bytes9532,bytes9533,bytes9534,bytes9535]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9590 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9472.1 (.cons _ _ _ _ _ checked9473.1 (.cons _ _ _ _ _ checked9474.1 (.cons _ _ _ _ _ checked9475.1 (.cons _ _ _ _ _ checked9476.1 (.cons _ _ _ _ _ checked9477.1 (.cons _ _ _ _ _ checked9478.1 (.cons _ _ _ _ _ checked9479.1 (.cons _ _ _ _ _ checked9480.1 (.cons _ _ _ _ _ checked9481.1 (.cons _ _ _ _ _ checked9482.1 (.cons _ _ _ _ _ checked9483.1 (.cons _ _ _ _ _ checked9484.1 (.cons _ _ _ _ _ checked9485.1 (.cons _ _ _ _ _ checked9486.1 (.cons _ _ _ _ _ checked9487.1 (.cons _ _ _ _ _ checked9488.1 (.cons _ _ _ _ _ checked9489.1 (.cons _ _ _ _ _ checked9490.1 (.cons _ _ _ _ _ checked9491.1 (.cons _ _ _ _ _ checked9492.1 (.cons _ _ _ _ _ checked9493.1 (.cons _ _ _ _ _ checked9494.1 (.cons _ _ _ _ _ checked9495.1 (.cons _ _ _ _ _ checked9496.1 (.cons _ _ _ _ _ checked9497.1 (.cons _ _ _ _ _ checked9498.1 (.cons _ _ _ _ _ checked9499.1 (.cons _ _ _ _ _ checked9500.1 (.cons _ _ _ _ _ checked9501.1 (.cons _ _ _ _ _ checked9502.1 (.cons _ _ _ _ _ checked9503.1 (.cons _ _ _ _ _ checked9504.1 (.cons _ _ _ _ _ checked9505.1 (.cons _ _ _ _ _ checked9506.1 (.cons _ _ _ _ _ checked9507.1 (.cons _ _ _ _ _ checked9508.1 (.cons _ _ _ _ _ checked9509.1 (.cons _ _ _ _ _ checked9510.1 (.cons _ _ _ _ _ checked9511.1 (.cons _ _ _ _ _ checked9512.1 (.cons _ _ _ _ _ checked9513.1 (.cons _ _ _ _ _ checked9514.1 (.cons _ _ _ _ _ checked9515.1 (.cons _ _ _ _ _ checked9516.1 (.cons _ _ _ _ _ checked9517.1 (.cons _ _ _ _ _ checked9518.1 (.cons _ _ _ _ _ checked9519.1 (.cons _ _ _ _ _ checked9520.1 (.cons _ _ _ _ _ checked9521.1 (.cons _ _ _ _ _ checked9522.1 (.cons _ _ _ _ _ checked9523.1 (.cons _ _ _ _ _ checked9524.1 (.cons _ _ _ _ _ checked9525.1 (.cons _ _ _ _ _ checked9526.1 (.cons _ _ _ _ _ checked9527.1 (.cons _ _ _ _ _ checked9528.1 (.cons _ _ _ _ _ checked9529.1 (.cons _ _ _ _ _ checked9530.1 (.cons _ _ _ _ _ checked9531.1 (.cons _ _ _ _ _ checked9532.1 (.cons _ _ _ _ _ checked9533.1 (.cons _ _ _ _ _ checked9534.1 (.cons _ _ _ _ _ checked9535.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9590 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3507 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9472.2,checked9473.2,checked9474.2,checked9475.2,checked9476.2,checked9477.2,checked9478.2,checked9479.2,checked9480.2,checked9481.2,checked9482.2,checked9483.2,checked9484.2,checked9485.2,checked9486.2,checked9487.2,checked9488.2,checked9489.2,checked9490.2,checked9491.2,checked9492.2,checked9493.2,checked9494.2,checked9495.2,checked9496.2,checked9497.2,checked9498.2,checked9499.2,checked9500.2,checked9501.2,checked9502.2,checked9503.2,checked9504.2,checked9505.2,checked9506.2,checked9507.2,checked9508.2,checked9509.2,checked9510.2,checked9511.2,checked9512.2,checked9513.2,checked9514.2,checked9515.2,checked9516.2,checked9517.2,checked9518.2,checked9519.2,checked9520.2,checked9521.2,checked9522.2,checked9523.2,checked9524.2,checked9525.2,checked9526.2,checked9527.2,checked9528.2,checked9529.2,checked9530.2,checked9531.2,checked9532.2,checked9533.2,checked9534.2,checked9535.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup148
