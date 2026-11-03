import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup147
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9408 : List WordIR.Op := [.rotr 9510 2]
def bytes9408 : Bytes := ("    let r00002536: u32 = r00002526.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9408 : bytes9408=statementBytes 9526 (op9408.map lower) ∧ bytes9408.length=65 := by core033_kernel_decide
def op9409 : List WordIR.Op := [.rotr 9510 13]
def bytes9409 : Bytes := ("    let r00002537: u32 = r00002526.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9409 : bytes9409=statementBytes 9527 (op9409.map lower) ∧ bytes9409.length=65 := by core033_kernel_decide
def op9410 : List WordIR.Op := [.bxor 9526 9527]
def bytes9410 : Bytes := ("    let r00002538: u32 = r00002536 ^ r00002537;\n" : String).toByteArray.data.toList
theorem checked9410 : bytes9410=statementBytes 9528 (op9410.map lower) ∧ bytes9410.length=48 := by core033_kernel_decide
def op9411 : List WordIR.Op := [.rotr 9510 22]
def bytes9411 : Bytes := ("    let r00002539: u32 = r00002526.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9411 : bytes9411=statementBytes 9529 (op9411.map lower) ∧ bytes9411.length=65 := by core033_kernel_decide
def op9412 : List WordIR.Op := [.bxor 9528 9529]
def bytes9412 : Bytes := ("    let r0000253a: u32 = r00002538 ^ r00002539;\n" : String).toByteArray.data.toList
theorem checked9412 : bytes9412=statementBytes 9530 (op9412.map lower) ∧ bytes9412.length=48 := by core033_kernel_decide
def op9413 : List WordIR.Op := [.band 9510 9483]
def bytes9413 : Bytes := ("    let r0000253b: u32 = r00002526 & r0000250b;\n" : String).toByteArray.data.toList
theorem checked9413 : bytes9413=statementBytes 9531 (op9413.map lower) ∧ bytes9413.length=48 := by core033_kernel_decide
def op9414 : List WordIR.Op := [.band 9510 9456]
def bytes9414 : Bytes := ("    let r0000253c: u32 = r00002526 & r000024f0;\n" : String).toByteArray.data.toList
theorem checked9414 : bytes9414=statementBytes 9532 (op9414.map lower) ∧ bytes9414.length=48 := by core033_kernel_decide
def op9415 : List WordIR.Op := [.bxor 9531 9532]
def bytes9415 : Bytes := ("    let r0000253d: u32 = r0000253b ^ r0000253c;\n" : String).toByteArray.data.toList
theorem checked9415 : bytes9415=statementBytes 9533 (op9415.map lower) ∧ bytes9415.length=48 := by core033_kernel_decide
def op9416 : List WordIR.Op := [.band 9483 9456]
def bytes9416 : Bytes := ("    let r0000253e: u32 = r0000250b & r000024f0;\n" : String).toByteArray.data.toList
theorem checked9416 : bytes9416=statementBytes 9534 (op9416.map lower) ∧ bytes9416.length=48 := by core033_kernel_decide
def op9417 : List WordIR.Op := [.bxor 9533 9534]
def bytes9417 : Bytes := ("    let r0000253f: u32 = r0000253d ^ r0000253e;\n" : String).toByteArray.data.toList
theorem checked9417 : bytes9417=statementBytes 9535 (op9417.map lower) ∧ bytes9417.length=48 := by core033_kernel_decide
def op9418 : List WordIR.Op := [.badd 9530 9535]
def bytes9418 : Bytes := ("    let r00002540: u32 = r0000253a.wrapping_add(r0000253f);\n" : String).toByteArray.data.toList
theorem checked9418 : bytes9418=statementBytes 9536 (op9418.map lower) ∧ bytes9418.length=60 := by core033_kernel_decide
def op9419 : List WordIR.Op := [.badd 9525 9536]
def bytes9419 : Bytes := ("    let r00002541: u32 = r00002535.wrapping_add(r00002540);\n" : String).toByteArray.data.toList
theorem checked9419 : bytes9419=statementBytes 9537 (op9419.map lower) ∧ bytes9419.length=60 := by core033_kernel_decide
def op9420 : List WordIR.Op := [.badd 9429 9525]
def bytes9420 : Bytes := ("    let r00002542: u32 = r000024d5.wrapping_add(r00002535);\n" : String).toByteArray.data.toList
theorem checked9420 : bytes9420=statementBytes 9538 (op9420.map lower) ∧ bytes9420.length=60 := by core033_kernel_decide
def op9421 : List WordIR.Op := [.rotr 9538 6]
def bytes9421 : Bytes := ("    let r00002543: u32 = r00002542.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9421 : bytes9421=statementBytes 9539 (op9421.map lower) ∧ bytes9421.length=65 := by core033_kernel_decide
def op9422 : List WordIR.Op := [.rotr 9538 11]
def bytes9422 : Bytes := ("    let r00002544: u32 = r00002542.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9422 : bytes9422=statementBytes 9540 (op9422.map lower) ∧ bytes9422.length=65 := by core033_kernel_decide
def op9423 : List WordIR.Op := [.bxor 9539 9540]
def bytes9423 : Bytes := ("    let r00002545: u32 = r00002543 ^ r00002544;\n" : String).toByteArray.data.toList
theorem checked9423 : bytes9423=statementBytes 9541 (op9423.map lower) ∧ bytes9423.length=48 := by core033_kernel_decide
def op9424 : List WordIR.Op := [.rotr 9538 25]
def bytes9424 : Bytes := ("    let r00002546: u32 = r00002542.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9424 : bytes9424=statementBytes 9542 (op9424.map lower) ∧ bytes9424.length=65 := by core033_kernel_decide
def op9425 : List WordIR.Op := [.bxor 9541 9542]
def bytes9425 : Bytes := ("    let r00002547: u32 = r00002545 ^ r00002546;\n" : String).toByteArray.data.toList
theorem checked9425 : bytes9425=statementBytes 9543 (op9425.map lower) ∧ bytes9425.length=48 := by core033_kernel_decide
def op9426 : List WordIR.Op := [.badd 9457 9543]
def bytes9426 : Bytes := ("    let r00002548: u32 = r000024f1.wrapping_add(r00002547);\n" : String).toByteArray.data.toList
theorem checked9426 : bytes9426=statementBytes 9544 (op9426.map lower) ∧ bytes9426.length=60 := by core033_kernel_decide
def op9427 : List WordIR.Op := [.band 9538 9511]
def bytes9427 : Bytes := ("    let r00002549: u32 = r00002542 & r00002527;\n" : String).toByteArray.data.toList
theorem checked9427 : bytes9427=statementBytes 9545 (op9427.map lower) ∧ bytes9427.length=48 := by core033_kernel_decide
def op9428 : List WordIR.Op := [.bnot 9538]
def bytes9428 : Bytes := ("    let r0000254a: u32 = !r00002542;\n" : String).toByteArray.data.toList
theorem checked9428 : bytes9428=statementBytes 9546 (op9428.map lower) ∧ bytes9428.length=37 := by core033_kernel_decide
def op9429 : List WordIR.Op := [.band 9546 9484]
def bytes9429 : Bytes := ("    let r0000254b: u32 = r0000254a & r0000250c;\n" : String).toByteArray.data.toList
theorem checked9429 : bytes9429=statementBytes 9547 (op9429.map lower) ∧ bytes9429.length=48 := by core033_kernel_decide
def op9430 : List WordIR.Op := [.bxor 9545 9547]
def bytes9430 : Bytes := ("    let r0000254c: u32 = r00002549 ^ r0000254b;\n" : String).toByteArray.data.toList
theorem checked9430 : bytes9430=statementBytes 9548 (op9430.map lower) ∧ bytes9430.length=48 := by core033_kernel_decide
def op9431 : List WordIR.Op := [.badd 9544 9548]
def bytes9431 : Bytes := ("    let r0000254d: u32 = r00002548.wrapping_add(r0000254c);\n" : String).toByteArray.data.toList
theorem checked9431 : bytes9431=statementBytes 9549 (op9431.map lower) ∧ bytes9431.length=60 := by core033_kernel_decide
def op9432 : List WordIR.Op := [.literal (BitVec.ofNat 32 3584528711)]
def bytes9432 : Bytes := ("    let r0000254e: u32 = 0xd5a79147_u32;\n" : String).toByteArray.data.toList
theorem checked9432 : bytes9432=statementBytes 9550 (op9432.map lower) ∧ bytes9432.length=41 := by core033_kernel_decide
def op9433 : List WordIR.Op := [.badd 9549 9550]
def bytes9433 : Bytes := ("    let r0000254f: u32 = r0000254d.wrapping_add(r0000254e);\n" : String).toByteArray.data.toList
theorem checked9433 : bytes9433=statementBytes 9551 (op9433.map lower) ∧ bytes9433.length=60 := by core033_kernel_decide
def op9434 : List WordIR.Op := [.badd 9551 8313]
def bytes9434 : Bytes := ("    let r00002550: u32 = r0000254f.wrapping_add(r00002079);\n" : String).toByteArray.data.toList
theorem checked9434 : bytes9434=statementBytes 9552 (op9434.map lower) ∧ bytes9434.length=60 := by core033_kernel_decide
def op9435 : List WordIR.Op := [.rotr 9537 2]
def bytes9435 : Bytes := ("    let r00002551: u32 = r00002541.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9435 : bytes9435=statementBytes 9553 (op9435.map lower) ∧ bytes9435.length=65 := by core033_kernel_decide
def op9436 : List WordIR.Op := [.rotr 9537 13]
def bytes9436 : Bytes := ("    let r00002552: u32 = r00002541.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9436 : bytes9436=statementBytes 9554 (op9436.map lower) ∧ bytes9436.length=65 := by core033_kernel_decide
def op9437 : List WordIR.Op := [.bxor 9553 9554]
def bytes9437 : Bytes := ("    let r00002553: u32 = r00002551 ^ r00002552;\n" : String).toByteArray.data.toList
theorem checked9437 : bytes9437=statementBytes 9555 (op9437.map lower) ∧ bytes9437.length=48 := by core033_kernel_decide
def op9438 : List WordIR.Op := [.rotr 9537 22]
def bytes9438 : Bytes := ("    let r00002554: u32 = r00002541.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9438 : bytes9438=statementBytes 9556 (op9438.map lower) ∧ bytes9438.length=65 := by core033_kernel_decide
def op9439 : List WordIR.Op := [.bxor 9555 9556]
def bytes9439 : Bytes := ("    let r00002555: u32 = r00002553 ^ r00002554;\n" : String).toByteArray.data.toList
theorem checked9439 : bytes9439=statementBytes 9557 (op9439.map lower) ∧ bytes9439.length=48 := by core033_kernel_decide
def op9440 : List WordIR.Op := [.band 9537 9510]
def bytes9440 : Bytes := ("    let r00002556: u32 = r00002541 & r00002526;\n" : String).toByteArray.data.toList
theorem checked9440 : bytes9440=statementBytes 9558 (op9440.map lower) ∧ bytes9440.length=48 := by core033_kernel_decide
def op9441 : List WordIR.Op := [.band 9537 9483]
def bytes9441 : Bytes := ("    let r00002557: u32 = r00002541 & r0000250b;\n" : String).toByteArray.data.toList
theorem checked9441 : bytes9441=statementBytes 9559 (op9441.map lower) ∧ bytes9441.length=48 := by core033_kernel_decide
def op9442 : List WordIR.Op := [.bxor 9558 9559]
def bytes9442 : Bytes := ("    let r00002558: u32 = r00002556 ^ r00002557;\n" : String).toByteArray.data.toList
theorem checked9442 : bytes9442=statementBytes 9560 (op9442.map lower) ∧ bytes9442.length=48 := by core033_kernel_decide
def op9443 : List WordIR.Op := [.band 9510 9483]
def bytes9443 : Bytes := ("    let r00002559: u32 = r00002526 & r0000250b;\n" : String).toByteArray.data.toList
theorem checked9443 : bytes9443=statementBytes 9561 (op9443.map lower) ∧ bytes9443.length=48 := by core033_kernel_decide
def op9444 : List WordIR.Op := [.bxor 9560 9561]
def bytes9444 : Bytes := ("    let r0000255a: u32 = r00002558 ^ r00002559;\n" : String).toByteArray.data.toList
theorem checked9444 : bytes9444=statementBytes 9562 (op9444.map lower) ∧ bytes9444.length=48 := by core033_kernel_decide
def op9445 : List WordIR.Op := [.badd 9557 9562]
def bytes9445 : Bytes := ("    let r0000255b: u32 = r00002555.wrapping_add(r0000255a);\n" : String).toByteArray.data.toList
theorem checked9445 : bytes9445=statementBytes 9563 (op9445.map lower) ∧ bytes9445.length=60 := by core033_kernel_decide
def op9446 : List WordIR.Op := [.badd 9552 9563]
def bytes9446 : Bytes := ("    let r0000255c: u32 = r00002550.wrapping_add(r0000255b);\n" : String).toByteArray.data.toList
theorem checked9446 : bytes9446=statementBytes 9564 (op9446.map lower) ∧ bytes9446.length=60 := by core033_kernel_decide
def op9447 : List WordIR.Op := [.badd 9456 9552]
def bytes9447 : Bytes := ("    let r0000255d: u32 = r000024f0.wrapping_add(r00002550);\n" : String).toByteArray.data.toList
theorem checked9447 : bytes9447=statementBytes 9565 (op9447.map lower) ∧ bytes9447.length=60 := by core033_kernel_decide
def op9448 : List WordIR.Op := [.rotr 9565 6]
def bytes9448 : Bytes := ("    let r0000255e: u32 = r0000255d.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9448 : bytes9448=statementBytes 9566 (op9448.map lower) ∧ bytes9448.length=65 := by core033_kernel_decide
def op9449 : List WordIR.Op := [.rotr 9565 11]
def bytes9449 : Bytes := ("    let r0000255f: u32 = r0000255d.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9449 : bytes9449=statementBytes 9567 (op9449.map lower) ∧ bytes9449.length=65 := by core033_kernel_decide
def op9450 : List WordIR.Op := [.bxor 9566 9567]
def bytes9450 : Bytes := ("    let r00002560: u32 = r0000255e ^ r0000255f;\n" : String).toByteArray.data.toList
theorem checked9450 : bytes9450=statementBytes 9568 (op9450.map lower) ∧ bytes9450.length=48 := by core033_kernel_decide
def op9451 : List WordIR.Op := [.rotr 9565 25]
def bytes9451 : Bytes := ("    let r00002561: u32 = r0000255d.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9451 : bytes9451=statementBytes 9569 (op9451.map lower) ∧ bytes9451.length=65 := by core033_kernel_decide
def op9452 : List WordIR.Op := [.bxor 9568 9569]
def bytes9452 : Bytes := ("    let r00002562: u32 = r00002560 ^ r00002561;\n" : String).toByteArray.data.toList
theorem checked9452 : bytes9452=statementBytes 9570 (op9452.map lower) ∧ bytes9452.length=48 := by core033_kernel_decide
def op9453 : List WordIR.Op := [.badd 9484 9570]
def bytes9453 : Bytes := ("    let r00002563: u32 = r0000250c.wrapping_add(r00002562);\n" : String).toByteArray.data.toList
theorem checked9453 : bytes9453=statementBytes 9571 (op9453.map lower) ∧ bytes9453.length=60 := by core033_kernel_decide
def op9454 : List WordIR.Op := [.band 9565 9538]
def bytes9454 : Bytes := ("    let r00002564: u32 = r0000255d & r00002542;\n" : String).toByteArray.data.toList
theorem checked9454 : bytes9454=statementBytes 9572 (op9454.map lower) ∧ bytes9454.length=48 := by core033_kernel_decide
def op9455 : List WordIR.Op := [.bnot 9565]
def bytes9455 : Bytes := ("    let r00002565: u32 = !r0000255d;\n" : String).toByteArray.data.toList
theorem checked9455 : bytes9455=statementBytes 9573 (op9455.map lower) ∧ bytes9455.length=37 := by core033_kernel_decide
def op9456 : List WordIR.Op := [.band 9573 9511]
def bytes9456 : Bytes := ("    let r00002566: u32 = r00002565 & r00002527;\n" : String).toByteArray.data.toList
theorem checked9456 : bytes9456=statementBytes 9574 (op9456.map lower) ∧ bytes9456.length=48 := by core033_kernel_decide
def op9457 : List WordIR.Op := [.bxor 9572 9574]
def bytes9457 : Bytes := ("    let r00002567: u32 = r00002564 ^ r00002566;\n" : String).toByteArray.data.toList
theorem checked9457 : bytes9457=statementBytes 9575 (op9457.map lower) ∧ bytes9457.length=48 := by core033_kernel_decide
def op9458 : List WordIR.Op := [.badd 9571 9575]
def bytes9458 : Bytes := ("    let r00002568: u32 = r00002563.wrapping_add(r00002567);\n" : String).toByteArray.data.toList
theorem checked9458 : bytes9458=statementBytes 9576 (op9458.map lower) ∧ bytes9458.length=60 := by core033_kernel_decide
def op9459 : List WordIR.Op := [.literal (BitVec.ofNat 32 113926993)]
def bytes9459 : Bytes := ("    let r00002569: u32 = 0x06ca6351_u32;\n" : String).toByteArray.data.toList
theorem checked9459 : bytes9459=statementBytes 9577 (op9459.map lower) ∧ bytes9459.length=41 := by core033_kernel_decide
def op9460 : List WordIR.Op := [.badd 9576 9577]
def bytes9460 : Bytes := ("    let r0000256a: u32 = r00002568.wrapping_add(r00002569);\n" : String).toByteArray.data.toList
theorem checked9460 : bytes9460=statementBytes 9578 (op9460.map lower) ∧ bytes9460.length=60 := by core033_kernel_decide
def op9461 : List WordIR.Op := [.badd 9578 8326]
def bytes9461 : Bytes := ("    let r0000256b: u32 = r0000256a.wrapping_add(r00002086);\n" : String).toByteArray.data.toList
theorem checked9461 : bytes9461=statementBytes 9579 (op9461.map lower) ∧ bytes9461.length=60 := by core033_kernel_decide
def op9462 : List WordIR.Op := [.rotr 9564 2]
def bytes9462 : Bytes := ("    let r0000256c: u32 = r0000255c.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9462 : bytes9462=statementBytes 9580 (op9462.map lower) ∧ bytes9462.length=65 := by core033_kernel_decide
def op9463 : List WordIR.Op := [.rotr 9564 13]
def bytes9463 : Bytes := ("    let r0000256d: u32 = r0000255c.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9463 : bytes9463=statementBytes 9581 (op9463.map lower) ∧ bytes9463.length=65 := by core033_kernel_decide
def op9464 : List WordIR.Op := [.bxor 9580 9581]
def bytes9464 : Bytes := ("    let r0000256e: u32 = r0000256c ^ r0000256d;\n" : String).toByteArray.data.toList
theorem checked9464 : bytes9464=statementBytes 9582 (op9464.map lower) ∧ bytes9464.length=48 := by core033_kernel_decide
def op9465 : List WordIR.Op := [.rotr 9564 22]
def bytes9465 : Bytes := ("    let r0000256f: u32 = r0000255c.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9465 : bytes9465=statementBytes 9583 (op9465.map lower) ∧ bytes9465.length=65 := by core033_kernel_decide
def op9466 : List WordIR.Op := [.bxor 9582 9583]
def bytes9466 : Bytes := ("    let r00002570: u32 = r0000256e ^ r0000256f;\n" : String).toByteArray.data.toList
theorem checked9466 : bytes9466=statementBytes 9584 (op9466.map lower) ∧ bytes9466.length=48 := by core033_kernel_decide
def op9467 : List WordIR.Op := [.band 9564 9537]
def bytes9467 : Bytes := ("    let r00002571: u32 = r0000255c & r00002541;\n" : String).toByteArray.data.toList
theorem checked9467 : bytes9467=statementBytes 9585 (op9467.map lower) ∧ bytes9467.length=48 := by core033_kernel_decide
def op9468 : List WordIR.Op := [.band 9564 9510]
def bytes9468 : Bytes := ("    let r00002572: u32 = r0000255c & r00002526;\n" : String).toByteArray.data.toList
theorem checked9468 : bytes9468=statementBytes 9586 (op9468.map lower) ∧ bytes9468.length=48 := by core033_kernel_decide
def op9469 : List WordIR.Op := [.bxor 9585 9586]
def bytes9469 : Bytes := ("    let r00002573: u32 = r00002571 ^ r00002572;\n" : String).toByteArray.data.toList
theorem checked9469 : bytes9469=statementBytes 9587 (op9469.map lower) ∧ bytes9469.length=48 := by core033_kernel_decide
def op9470 : List WordIR.Op := [.band 9537 9510]
def bytes9470 : Bytes := ("    let r00002574: u32 = r00002541 & r00002526;\n" : String).toByteArray.data.toList
theorem checked9470 : bytes9470=statementBytes 9588 (op9470.map lower) ∧ bytes9470.length=48 := by core033_kernel_decide
def op9471 : List WordIR.Op := [.bxor 9587 9588]
def bytes9471 : Bytes := ("    let r00002575: u32 = r00002573 ^ r00002574;\n" : String).toByteArray.data.toList
theorem checked9471 : bytes9471=statementBytes 9589 (op9471.map lower) ∧ bytes9471.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9408,op9409,op9410,op9411,op9412,op9413,op9414,op9415,op9416,op9417,op9418,op9419,op9420,op9421,op9422,op9423,op9424,op9425,op9426,op9427,op9428,op9429,op9430,op9431,op9432,op9433,op9434,op9435,op9436,op9437,op9438,op9439,op9440,op9441,op9442,op9443,op9444,op9445,op9446,op9447,op9448,op9449,op9450,op9451,op9452,op9453,op9454,op9455,op9456,op9457,op9458,op9459,op9460,op9461,op9462,op9463,op9464,op9465,op9466,op9467,op9468,op9469,op9470,op9471]
def chunks : List Bytes := [bytes9408,bytes9409,bytes9410,bytes9411,bytes9412,bytes9413,bytes9414,bytes9415,bytes9416,bytes9417,bytes9418,bytes9419,bytes9420,bytes9421,bytes9422,bytes9423,bytes9424,bytes9425,bytes9426,bytes9427,bytes9428,bytes9429,bytes9430,bytes9431,bytes9432,bytes9433,bytes9434,bytes9435,bytes9436,bytes9437,bytes9438,bytes9439,bytes9440,bytes9441,bytes9442,bytes9443,bytes9444,bytes9445,bytes9446,bytes9447,bytes9448,bytes9449,bytes9450,bytes9451,bytes9452,bytes9453,bytes9454,bytes9455,bytes9456,bytes9457,bytes9458,bytes9459,bytes9460,bytes9461,bytes9462,bytes9463,bytes9464,bytes9465,bytes9466,bytes9467,bytes9468,bytes9469,bytes9470,bytes9471]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9526 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9408.1 (.cons _ _ _ _ _ checked9409.1 (.cons _ _ _ _ _ checked9410.1 (.cons _ _ _ _ _ checked9411.1 (.cons _ _ _ _ _ checked9412.1 (.cons _ _ _ _ _ checked9413.1 (.cons _ _ _ _ _ checked9414.1 (.cons _ _ _ _ _ checked9415.1 (.cons _ _ _ _ _ checked9416.1 (.cons _ _ _ _ _ checked9417.1 (.cons _ _ _ _ _ checked9418.1 (.cons _ _ _ _ _ checked9419.1 (.cons _ _ _ _ _ checked9420.1 (.cons _ _ _ _ _ checked9421.1 (.cons _ _ _ _ _ checked9422.1 (.cons _ _ _ _ _ checked9423.1 (.cons _ _ _ _ _ checked9424.1 (.cons _ _ _ _ _ checked9425.1 (.cons _ _ _ _ _ checked9426.1 (.cons _ _ _ _ _ checked9427.1 (.cons _ _ _ _ _ checked9428.1 (.cons _ _ _ _ _ checked9429.1 (.cons _ _ _ _ _ checked9430.1 (.cons _ _ _ _ _ checked9431.1 (.cons _ _ _ _ _ checked9432.1 (.cons _ _ _ _ _ checked9433.1 (.cons _ _ _ _ _ checked9434.1 (.cons _ _ _ _ _ checked9435.1 (.cons _ _ _ _ _ checked9436.1 (.cons _ _ _ _ _ checked9437.1 (.cons _ _ _ _ _ checked9438.1 (.cons _ _ _ _ _ checked9439.1 (.cons _ _ _ _ _ checked9440.1 (.cons _ _ _ _ _ checked9441.1 (.cons _ _ _ _ _ checked9442.1 (.cons _ _ _ _ _ checked9443.1 (.cons _ _ _ _ _ checked9444.1 (.cons _ _ _ _ _ checked9445.1 (.cons _ _ _ _ _ checked9446.1 (.cons _ _ _ _ _ checked9447.1 (.cons _ _ _ _ _ checked9448.1 (.cons _ _ _ _ _ checked9449.1 (.cons _ _ _ _ _ checked9450.1 (.cons _ _ _ _ _ checked9451.1 (.cons _ _ _ _ _ checked9452.1 (.cons _ _ _ _ _ checked9453.1 (.cons _ _ _ _ _ checked9454.1 (.cons _ _ _ _ _ checked9455.1 (.cons _ _ _ _ _ checked9456.1 (.cons _ _ _ _ _ checked9457.1 (.cons _ _ _ _ _ checked9458.1 (.cons _ _ _ _ _ checked9459.1 (.cons _ _ _ _ _ checked9460.1 (.cons _ _ _ _ _ checked9461.1 (.cons _ _ _ _ _ checked9462.1 (.cons _ _ _ _ _ checked9463.1 (.cons _ _ _ _ _ checked9464.1 (.cons _ _ _ _ _ checked9465.1 (.cons _ _ _ _ _ checked9466.1 (.cons _ _ _ _ _ checked9467.1 (.cons _ _ _ _ _ checked9468.1 (.cons _ _ _ _ _ checked9469.1 (.cons _ _ _ _ _ checked9470.1 (.cons _ _ _ _ _ checked9471.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9526 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3459 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9408.2,checked9409.2,checked9410.2,checked9411.2,checked9412.2,checked9413.2,checked9414.2,checked9415.2,checked9416.2,checked9417.2,checked9418.2,checked9419.2,checked9420.2,checked9421.2,checked9422.2,checked9423.2,checked9424.2,checked9425.2,checked9426.2,checked9427.2,checked9428.2,checked9429.2,checked9430.2,checked9431.2,checked9432.2,checked9433.2,checked9434.2,checked9435.2,checked9436.2,checked9437.2,checked9438.2,checked9439.2,checked9440.2,checked9441.2,checked9442.2,checked9443.2,checked9444.2,checked9445.2,checked9446.2,checked9447.2,checked9448.2,checked9449.2,checked9450.2,checked9451.2,checked9452.2,checked9453.2,checked9454.2,checked9455.2,checked9456.2,checked9457.2,checked9458.2,checked9459.2,checked9460.2,checked9461.2,checked9462.2,checked9463.2,checked9464.2,checked9465.2,checked9466.2,checked9467.2,checked9468.2,checked9469.2,checked9470.2,checked9471.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup147
