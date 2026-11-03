import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup148
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9472 : List WordIR.Op := [.band 9513 9514]
def bytes9472 : Bytes := ("    let r0000252b: u32 = r00002529 & r0000252a;\n" : String).toByteArray.data.toList
theorem checked9472 : bytes9472=statementBytes 9515 (op9472.map lower) ∧ bytes9472.length=48 := by core033_kernel_decide
def op9473 : List WordIR.Op := [.bxor 9509 9515]
def bytes9473 : Bytes := ("    let r0000252c: u32 = r00002525 ^ r0000252b;\n" : String).toByteArray.data.toList
theorem checked9473 : bytes9473=statementBytes 9516 (op9473.map lower) ∧ bytes9473.length=48 := by core033_kernel_decide
def op9474 : List WordIR.Op := [.bnot 9406]
def bytes9474 : Bytes := ("    let r0000252d: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9474 : bytes9474=statementBytes 9517 (op9474.map lower) ∧ bytes9474.length=37 := by core033_kernel_decide
def op9475 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9475 : Bytes := ("    let r0000252e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9475 : bytes9475=statementBytes 9518 (op9475.map lower) ∧ bytes9475.length=41 := by core033_kernel_decide
def op9476 : List WordIR.Op := [.badd 9517 9518]
def bytes9476 : Bytes := ("    let r0000252f: u32 = r0000252d.wrapping_add(r0000252e);\n" : String).toByteArray.data.toList
theorem checked9476 : bytes9476=statementBytes 9519 (op9476.map lower) ∧ bytes9476.length=60 := by core033_kernel_decide
def op9477 : List WordIR.Op := [.band 9519 10]
def bytes9477 : Bytes := ("    let r00002530: u32 = r0000252f & r0000000a;\n" : String).toByteArray.data.toList
theorem checked9477 : bytes9477=statementBytes 9520 (op9477.map lower) ∧ bytes9477.length=48 := by core033_kernel_decide
def op9478 : List WordIR.Op := [.bnot 9406]
def bytes9478 : Bytes := ("    let r00002531: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9478 : bytes9478=statementBytes 9521 (op9478.map lower) ∧ bytes9478.length=37 := by core033_kernel_decide
def op9479 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9479 : Bytes := ("    let r00002532: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9479 : bytes9479=statementBytes 9522 (op9479.map lower) ∧ bytes9479.length=41 := by core033_kernel_decide
def op9480 : List WordIR.Op := [.badd 9521 9522]
def bytes9480 : Bytes := ("    let r00002533: u32 = r00002531.wrapping_add(r00002532);\n" : String).toByteArray.data.toList
theorem checked9480 : bytes9480=statementBytes 9523 (op9480.map lower) ∧ bytes9480.length=60 := by core033_kernel_decide
def op9481 : List WordIR.Op := [.bnot 9523]
def bytes9481 : Bytes := ("    let r00002534: u32 = !r00002533;\n" : String).toByteArray.data.toList
theorem checked9481 : bytes9481=statementBytes 9524 (op9481.map lower) ∧ bytes9481.length=37 := by core033_kernel_decide
def op9482 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9482 : Bytes := ("    let r00002535: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9482 : bytes9482=statementBytes 9525 (op9482.map lower) ∧ bytes9482.length=41 := by core033_kernel_decide
def op9483 : List WordIR.Op := [.band 9524 9525]
def bytes9483 : Bytes := ("    let r00002536: u32 = r00002534 & r00002535;\n" : String).toByteArray.data.toList
theorem checked9483 : bytes9483=statementBytes 9526 (op9483.map lower) ∧ bytes9483.length=48 := by core033_kernel_decide
def op9484 : List WordIR.Op := [.bxor 9520 9526]
def bytes9484 : Bytes := ("    let r00002537: u32 = r00002530 ^ r00002536;\n" : String).toByteArray.data.toList
theorem checked9484 : bytes9484=statementBytes 9527 (op9484.map lower) ∧ bytes9484.length=48 := by core033_kernel_decide
def op9485 : List WordIR.Op := [.bnot 9406]
def bytes9485 : Bytes := ("    let r00002538: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9485 : bytes9485=statementBytes 9528 (op9485.map lower) ∧ bytes9485.length=37 := by core033_kernel_decide
def op9486 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9486 : Bytes := ("    let r00002539: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9486 : bytes9486=statementBytes 9529 (op9486.map lower) ∧ bytes9486.length=41 := by core033_kernel_decide
def op9487 : List WordIR.Op := [.badd 9528 9529]
def bytes9487 : Bytes := ("    let r0000253a: u32 = r00002538.wrapping_add(r00002539);\n" : String).toByteArray.data.toList
theorem checked9487 : bytes9487=statementBytes 9530 (op9487.map lower) ∧ bytes9487.length=60 := by core033_kernel_decide
def op9488 : List WordIR.Op := [.band 9530 11]
def bytes9488 : Bytes := ("    let r0000253b: u32 = r0000253a & r0000000b;\n" : String).toByteArray.data.toList
theorem checked9488 : bytes9488=statementBytes 9531 (op9488.map lower) ∧ bytes9488.length=48 := by core033_kernel_decide
def op9489 : List WordIR.Op := [.bnot 9406]
def bytes9489 : Bytes := ("    let r0000253c: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9489 : bytes9489=statementBytes 9532 (op9489.map lower) ∧ bytes9489.length=37 := by core033_kernel_decide
def op9490 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9490 : Bytes := ("    let r0000253d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9490 : bytes9490=statementBytes 9533 (op9490.map lower) ∧ bytes9490.length=41 := by core033_kernel_decide
def op9491 : List WordIR.Op := [.badd 9532 9533]
def bytes9491 : Bytes := ("    let r0000253e: u32 = r0000253c.wrapping_add(r0000253d);\n" : String).toByteArray.data.toList
theorem checked9491 : bytes9491=statementBytes 9534 (op9491.map lower) ∧ bytes9491.length=60 := by core033_kernel_decide
def op9492 : List WordIR.Op := [.bnot 9534]
def bytes9492 : Bytes := ("    let r0000253f: u32 = !r0000253e;\n" : String).toByteArray.data.toList
theorem checked9492 : bytes9492=statementBytes 9535 (op9492.map lower) ∧ bytes9492.length=37 := by core033_kernel_decide
def op9493 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9493 : Bytes := ("    let r00002540: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9493 : bytes9493=statementBytes 9536 (op9493.map lower) ∧ bytes9493.length=41 := by core033_kernel_decide
def op9494 : List WordIR.Op := [.band 9535 9536]
def bytes9494 : Bytes := ("    let r00002541: u32 = r0000253f & r00002540;\n" : String).toByteArray.data.toList
theorem checked9494 : bytes9494=statementBytes 9537 (op9494.map lower) ∧ bytes9494.length=48 := by core033_kernel_decide
def op9495 : List WordIR.Op := [.bxor 9531 9537]
def bytes9495 : Bytes := ("    let r00002542: u32 = r0000253b ^ r00002541;\n" : String).toByteArray.data.toList
theorem checked9495 : bytes9495=statementBytes 9538 (op9495.map lower) ∧ bytes9495.length=48 := by core033_kernel_decide
def op9496 : List WordIR.Op := [.bnot 9406]
def bytes9496 : Bytes := ("    let r00002543: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9496 : bytes9496=statementBytes 9539 (op9496.map lower) ∧ bytes9496.length=37 := by core033_kernel_decide
def op9497 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9497 : Bytes := ("    let r00002544: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9497 : bytes9497=statementBytes 9540 (op9497.map lower) ∧ bytes9497.length=41 := by core033_kernel_decide
def op9498 : List WordIR.Op := [.badd 9539 9540]
def bytes9498 : Bytes := ("    let r00002545: u32 = r00002543.wrapping_add(r00002544);\n" : String).toByteArray.data.toList
theorem checked9498 : bytes9498=statementBytes 9541 (op9498.map lower) ∧ bytes9498.length=60 := by core033_kernel_decide
def op9499 : List WordIR.Op := [.band 9541 12]
def bytes9499 : Bytes := ("    let r00002546: u32 = r00002545 & r0000000c;\n" : String).toByteArray.data.toList
theorem checked9499 : bytes9499=statementBytes 9542 (op9499.map lower) ∧ bytes9499.length=48 := by core033_kernel_decide
def op9500 : List WordIR.Op := [.bnot 9406]
def bytes9500 : Bytes := ("    let r00002547: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9500 : bytes9500=statementBytes 9543 (op9500.map lower) ∧ bytes9500.length=37 := by core033_kernel_decide
def op9501 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9501 : Bytes := ("    let r00002548: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9501 : bytes9501=statementBytes 9544 (op9501.map lower) ∧ bytes9501.length=41 := by core033_kernel_decide
def op9502 : List WordIR.Op := [.badd 9543 9544]
def bytes9502 : Bytes := ("    let r00002549: u32 = r00002547.wrapping_add(r00002548);\n" : String).toByteArray.data.toList
theorem checked9502 : bytes9502=statementBytes 9545 (op9502.map lower) ∧ bytes9502.length=60 := by core033_kernel_decide
def op9503 : List WordIR.Op := [.bnot 9545]
def bytes9503 : Bytes := ("    let r0000254a: u32 = !r00002549;\n" : String).toByteArray.data.toList
theorem checked9503 : bytes9503=statementBytes 9546 (op9503.map lower) ∧ bytes9503.length=37 := by core033_kernel_decide
def op9504 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9504 : Bytes := ("    let r0000254b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9504 : bytes9504=statementBytes 9547 (op9504.map lower) ∧ bytes9504.length=41 := by core033_kernel_decide
def op9505 : List WordIR.Op := [.band 9546 9547]
def bytes9505 : Bytes := ("    let r0000254c: u32 = r0000254a & r0000254b;\n" : String).toByteArray.data.toList
theorem checked9505 : bytes9505=statementBytes 9548 (op9505.map lower) ∧ bytes9505.length=48 := by core033_kernel_decide
def op9506 : List WordIR.Op := [.bxor 9542 9548]
def bytes9506 : Bytes := ("    let r0000254d: u32 = r00002546 ^ r0000254c;\n" : String).toByteArray.data.toList
theorem checked9506 : bytes9506=statementBytes 9549 (op9506.map lower) ∧ bytes9506.length=48 := by core033_kernel_decide
def op9507 : List WordIR.Op := [.bnot 9406]
def bytes9507 : Bytes := ("    let r0000254e: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9507 : bytes9507=statementBytes 9550 (op9507.map lower) ∧ bytes9507.length=37 := by core033_kernel_decide
def op9508 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9508 : Bytes := ("    let r0000254f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9508 : bytes9508=statementBytes 9551 (op9508.map lower) ∧ bytes9508.length=41 := by core033_kernel_decide
def op9509 : List WordIR.Op := [.badd 9550 9551]
def bytes9509 : Bytes := ("    let r00002550: u32 = r0000254e.wrapping_add(r0000254f);\n" : String).toByteArray.data.toList
theorem checked9509 : bytes9509=statementBytes 9552 (op9509.map lower) ∧ bytes9509.length=60 := by core033_kernel_decide
def op9510 : List WordIR.Op := [.band 9552 13]
def bytes9510 : Bytes := ("    let r00002551: u32 = r00002550 & r0000000d;\n" : String).toByteArray.data.toList
theorem checked9510 : bytes9510=statementBytes 9553 (op9510.map lower) ∧ bytes9510.length=48 := by core033_kernel_decide
def op9511 : List WordIR.Op := [.bnot 9406]
def bytes9511 : Bytes := ("    let r00002552: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9511 : bytes9511=statementBytes 9554 (op9511.map lower) ∧ bytes9511.length=37 := by core033_kernel_decide
def op9512 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9512 : Bytes := ("    let r00002553: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9512 : bytes9512=statementBytes 9555 (op9512.map lower) ∧ bytes9512.length=41 := by core033_kernel_decide
def op9513 : List WordIR.Op := [.badd 9554 9555]
def bytes9513 : Bytes := ("    let r00002554: u32 = r00002552.wrapping_add(r00002553);\n" : String).toByteArray.data.toList
theorem checked9513 : bytes9513=statementBytes 9556 (op9513.map lower) ∧ bytes9513.length=60 := by core033_kernel_decide
def op9514 : List WordIR.Op := [.bnot 9556]
def bytes9514 : Bytes := ("    let r00002555: u32 = !r00002554;\n" : String).toByteArray.data.toList
theorem checked9514 : bytes9514=statementBytes 9557 (op9514.map lower) ∧ bytes9514.length=37 := by core033_kernel_decide
def op9515 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9515 : Bytes := ("    let r00002556: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9515 : bytes9515=statementBytes 9558 (op9515.map lower) ∧ bytes9515.length=41 := by core033_kernel_decide
def op9516 : List WordIR.Op := [.band 9557 9558]
def bytes9516 : Bytes := ("    let r00002557: u32 = r00002555 & r00002556;\n" : String).toByteArray.data.toList
theorem checked9516 : bytes9516=statementBytes 9559 (op9516.map lower) ∧ bytes9516.length=48 := by core033_kernel_decide
def op9517 : List WordIR.Op := [.bxor 9553 9559]
def bytes9517 : Bytes := ("    let r00002558: u32 = r00002551 ^ r00002557;\n" : String).toByteArray.data.toList
theorem checked9517 : bytes9517=statementBytes 9560 (op9517.map lower) ∧ bytes9517.length=48 := by core033_kernel_decide
def op9518 : List WordIR.Op := [.bnot 9406]
def bytes9518 : Bytes := ("    let r00002559: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9518 : bytes9518=statementBytes 9561 (op9518.map lower) ∧ bytes9518.length=37 := by core033_kernel_decide
def op9519 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9519 : Bytes := ("    let r0000255a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9519 : bytes9519=statementBytes 9562 (op9519.map lower) ∧ bytes9519.length=41 := by core033_kernel_decide
def op9520 : List WordIR.Op := [.badd 9561 9562]
def bytes9520 : Bytes := ("    let r0000255b: u32 = r00002559.wrapping_add(r0000255a);\n" : String).toByteArray.data.toList
theorem checked9520 : bytes9520=statementBytes 9563 (op9520.map lower) ∧ bytes9520.length=60 := by core033_kernel_decide
def op9521 : List WordIR.Op := [.band 9563 14]
def bytes9521 : Bytes := ("    let r0000255c: u32 = r0000255b & r0000000e;\n" : String).toByteArray.data.toList
theorem checked9521 : bytes9521=statementBytes 9564 (op9521.map lower) ∧ bytes9521.length=48 := by core033_kernel_decide
def op9522 : List WordIR.Op := [.bnot 9406]
def bytes9522 : Bytes := ("    let r0000255d: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9522 : bytes9522=statementBytes 9565 (op9522.map lower) ∧ bytes9522.length=37 := by core033_kernel_decide
def op9523 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9523 : Bytes := ("    let r0000255e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9523 : bytes9523=statementBytes 9566 (op9523.map lower) ∧ bytes9523.length=41 := by core033_kernel_decide
def op9524 : List WordIR.Op := [.badd 9565 9566]
def bytes9524 : Bytes := ("    let r0000255f: u32 = r0000255d.wrapping_add(r0000255e);\n" : String).toByteArray.data.toList
theorem checked9524 : bytes9524=statementBytes 9567 (op9524.map lower) ∧ bytes9524.length=60 := by core033_kernel_decide
def op9525 : List WordIR.Op := [.bnot 9567]
def bytes9525 : Bytes := ("    let r00002560: u32 = !r0000255f;\n" : String).toByteArray.data.toList
theorem checked9525 : bytes9525=statementBytes 9568 (op9525.map lower) ∧ bytes9525.length=37 := by core033_kernel_decide
def op9526 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9526 : Bytes := ("    let r00002561: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9526 : bytes9526=statementBytes 9569 (op9526.map lower) ∧ bytes9526.length=41 := by core033_kernel_decide
def op9527 : List WordIR.Op := [.band 9568 9569]
def bytes9527 : Bytes := ("    let r00002562: u32 = r00002560 & r00002561;\n" : String).toByteArray.data.toList
theorem checked9527 : bytes9527=statementBytes 9570 (op9527.map lower) ∧ bytes9527.length=48 := by core033_kernel_decide
def op9528 : List WordIR.Op := [.bxor 9564 9570]
def bytes9528 : Bytes := ("    let r00002563: u32 = r0000255c ^ r00002562;\n" : String).toByteArray.data.toList
theorem checked9528 : bytes9528=statementBytes 9571 (op9528.map lower) ∧ bytes9528.length=48 := by core033_kernel_decide
def op9529 : List WordIR.Op := [.bnot 9406]
def bytes9529 : Bytes := ("    let r00002564: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9529 : bytes9529=statementBytes 9572 (op9529.map lower) ∧ bytes9529.length=37 := by core033_kernel_decide
def op9530 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9530 : Bytes := ("    let r00002565: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9530 : bytes9530=statementBytes 9573 (op9530.map lower) ∧ bytes9530.length=41 := by core033_kernel_decide
def op9531 : List WordIR.Op := [.badd 9572 9573]
def bytes9531 : Bytes := ("    let r00002566: u32 = r00002564.wrapping_add(r00002565);\n" : String).toByteArray.data.toList
theorem checked9531 : bytes9531=statementBytes 9574 (op9531.map lower) ∧ bytes9531.length=60 := by core033_kernel_decide
def op9532 : List WordIR.Op := [.band 9574 15]
def bytes9532 : Bytes := ("    let r00002567: u32 = r00002566 & r0000000f;\n" : String).toByteArray.data.toList
theorem checked9532 : bytes9532=statementBytes 9575 (op9532.map lower) ∧ bytes9532.length=48 := by core033_kernel_decide
def op9533 : List WordIR.Op := [.bnot 9406]
def bytes9533 : Bytes := ("    let r00002568: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9533 : bytes9533=statementBytes 9576 (op9533.map lower) ∧ bytes9533.length=37 := by core033_kernel_decide
def op9534 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9534 : Bytes := ("    let r00002569: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9534 : bytes9534=statementBytes 9577 (op9534.map lower) ∧ bytes9534.length=41 := by core033_kernel_decide
def op9535 : List WordIR.Op := [.badd 9576 9577]
def bytes9535 : Bytes := ("    let r0000256a: u32 = r00002568.wrapping_add(r00002569);\n" : String).toByteArray.data.toList
theorem checked9535 : bytes9535=statementBytes 9578 (op9535.map lower) ∧ bytes9535.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9472,op9473,op9474,op9475,op9476,op9477,op9478,op9479,op9480,op9481,op9482,op9483,op9484,op9485,op9486,op9487,op9488,op9489,op9490,op9491,op9492,op9493,op9494,op9495,op9496,op9497,op9498,op9499,op9500,op9501,op9502,op9503,op9504,op9505,op9506,op9507,op9508,op9509,op9510,op9511,op9512,op9513,op9514,op9515,op9516,op9517,op9518,op9519,op9520,op9521,op9522,op9523,op9524,op9525,op9526,op9527,op9528,op9529,op9530,op9531,op9532,op9533,op9534,op9535]
def chunks : List Bytes := [bytes9472,bytes9473,bytes9474,bytes9475,bytes9476,bytes9477,bytes9478,bytes9479,bytes9480,bytes9481,bytes9482,bytes9483,bytes9484,bytes9485,bytes9486,bytes9487,bytes9488,bytes9489,bytes9490,bytes9491,bytes9492,bytes9493,bytes9494,bytes9495,bytes9496,bytes9497,bytes9498,bytes9499,bytes9500,bytes9501,bytes9502,bytes9503,bytes9504,bytes9505,bytes9506,bytes9507,bytes9508,bytes9509,bytes9510,bytes9511,bytes9512,bytes9513,bytes9514,bytes9515,bytes9516,bytes9517,bytes9518,bytes9519,bytes9520,bytes9521,bytes9522,bytes9523,bytes9524,bytes9525,bytes9526,bytes9527,bytes9528,bytes9529,bytes9530,bytes9531,bytes9532,bytes9533,bytes9534,bytes9535]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9515 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9472.1 (.cons _ _ _ _ _ checked9473.1 (.cons _ _ _ _ _ checked9474.1 (.cons _ _ _ _ _ checked9475.1 (.cons _ _ _ _ _ checked9476.1 (.cons _ _ _ _ _ checked9477.1 (.cons _ _ _ _ _ checked9478.1 (.cons _ _ _ _ _ checked9479.1 (.cons _ _ _ _ _ checked9480.1 (.cons _ _ _ _ _ checked9481.1 (.cons _ _ _ _ _ checked9482.1 (.cons _ _ _ _ _ checked9483.1 (.cons _ _ _ _ _ checked9484.1 (.cons _ _ _ _ _ checked9485.1 (.cons _ _ _ _ _ checked9486.1 (.cons _ _ _ _ _ checked9487.1 (.cons _ _ _ _ _ checked9488.1 (.cons _ _ _ _ _ checked9489.1 (.cons _ _ _ _ _ checked9490.1 (.cons _ _ _ _ _ checked9491.1 (.cons _ _ _ _ _ checked9492.1 (.cons _ _ _ _ _ checked9493.1 (.cons _ _ _ _ _ checked9494.1 (.cons _ _ _ _ _ checked9495.1 (.cons _ _ _ _ _ checked9496.1 (.cons _ _ _ _ _ checked9497.1 (.cons _ _ _ _ _ checked9498.1 (.cons _ _ _ _ _ checked9499.1 (.cons _ _ _ _ _ checked9500.1 (.cons _ _ _ _ _ checked9501.1 (.cons _ _ _ _ _ checked9502.1 (.cons _ _ _ _ _ checked9503.1 (.cons _ _ _ _ _ checked9504.1 (.cons _ _ _ _ _ checked9505.1 (.cons _ _ _ _ _ checked9506.1 (.cons _ _ _ _ _ checked9507.1 (.cons _ _ _ _ _ checked9508.1 (.cons _ _ _ _ _ checked9509.1 (.cons _ _ _ _ _ checked9510.1 (.cons _ _ _ _ _ checked9511.1 (.cons _ _ _ _ _ checked9512.1 (.cons _ _ _ _ _ checked9513.1 (.cons _ _ _ _ _ checked9514.1 (.cons _ _ _ _ _ checked9515.1 (.cons _ _ _ _ _ checked9516.1 (.cons _ _ _ _ _ checked9517.1 (.cons _ _ _ _ _ checked9518.1 (.cons _ _ _ _ _ checked9519.1 (.cons _ _ _ _ _ checked9520.1 (.cons _ _ _ _ _ checked9521.1 (.cons _ _ _ _ _ checked9522.1 (.cons _ _ _ _ _ checked9523.1 (.cons _ _ _ _ _ checked9524.1 (.cons _ _ _ _ _ checked9525.1 (.cons _ _ _ _ _ checked9526.1 (.cons _ _ _ _ _ checked9527.1 (.cons _ _ _ _ _ checked9528.1 (.cons _ _ _ _ _ checked9529.1 (.cons _ _ _ _ _ checked9530.1 (.cons _ _ _ _ _ checked9531.1 (.cons _ _ _ _ _ checked9532.1 (.cons _ _ _ _ _ checked9533.1 (.cons _ _ _ _ _ checked9534.1 (.cons _ _ _ _ _ checked9535.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9515 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2910 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9472.2,checked9473.2,checked9474.2,checked9475.2,checked9476.2,checked9477.2,checked9478.2,checked9479.2,checked9480.2,checked9481.2,checked9482.2,checked9483.2,checked9484.2,checked9485.2,checked9486.2,checked9487.2,checked9488.2,checked9489.2,checked9490.2,checked9491.2,checked9492.2,checked9493.2,checked9494.2,checked9495.2,checked9496.2,checked9497.2,checked9498.2,checked9499.2,checked9500.2,checked9501.2,checked9502.2,checked9503.2,checked9504.2,checked9505.2,checked9506.2,checked9507.2,checked9508.2,checked9509.2,checked9510.2,checked9511.2,checked9512.2,checked9513.2,checked9514.2,checked9515.2,checked9516.2,checked9517.2,checked9518.2,checked9519.2,checked9520.2,checked9521.2,checked9522.2,checked9523.2,checked9524.2,checked9525.2,checked9526.2,checked9527.2,checked9528.2,checked9529.2,checked9530.2,checked9531.2,checked9532.2,checked9533.2,checked9534.2,checked9535.2]
  decide
end ArtifactPathRoundDispatchGroup148
